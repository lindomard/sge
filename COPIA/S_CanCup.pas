unit S_CanCup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,s_dm1,db,dbtables,func,lerarq, StdCtrls, Buttons,func_ecf;

type
  TFrm_CanCup = class(TForm)
    Label1: TLabel;
    CHAVEP: TEdit;
    NOMCLI: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    BitBtn3: TBitBtn;
    procedure CHAVEPKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure CHAVEPExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CanCup: TFrm_CanCup;
  mcancelou: Boolean;
implementation

uses func_excecoes;

{$R *.dfm}

procedure TFrm_CanCup.CHAVEPKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_CanCup.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CanCup.BitBtn1Click(Sender: TObject);
var
mcanped  :Boolean;
mdtv: String;
mdatanul: TDateTime;
begin
if valfloat(CHAVEP.Text)<=0 then
   begin
   MessageDlg('Favor digitar o número do Pedido',mtWarning,[mbok],0);
   CHAVEP.SetFocus;
   exit;
   end;

if not flcadp01(0,0,ls_numped,Trim(CHAVEP.Text),pvazio) then
   begin
   MessageDlg('Pedido não Encontrado!',mtWarning,[mbOk],0);
   exit;
   end;

if ((DM1.Tb_Ped01P1NUMCF.Value<=0) or (DM1.Tb_Ped01P1NUMCF.IsNull)) and (DM1.Tb_Ped01P1CUPOM.Value<2) then
   begin
   MessageDlg('Este pedido não tem Cupom Fiscal!',mtWarning,[mbOk],0);
   exit;
   end;
if flcadns(3,DM1.Tb_Ped01P1CODEMP.AsInteger,DM1.Tb_Ped01P1LOTSEQ.AsInteger,DM1.Tb_Ped01P1CHAVE.AsString,DM1.Tb_Ped01P1ORDEM.AsString) then
   begin
   if DM1.Tb_NsNSSITCUP.Value=9 then
      begin
      MessageDlg('Este Cupom ja foi Cancelado Anteriormente!',mtWarning,[mbOk],0);
      exit;
      end;
   end;


label2.Caption:='Número do Cupom: '+FormatFloat('000000',DM1.Tb_Ped01P1NUMCF.Value);
if DM1.Tb_Ped01P1NUMNF.Value>0 then
   begin
   label2.Caption:=Label2.Caption+' Número da Nota Fiscal: '+Formatfloat('000000',DM1.Tb_Ped01P1NUMNF.Value);
   end;
if fmensagem('Confirma o Cancelamento!',0,['1','2'],2)<>mrYes then
   exit;
mcanped:=True;

if DM1.Tb_Ped01P1NUMNF.Value>0 then
   begin
   if flcaddar(9,DM1.Tb_Ped01P1CODEMP.AsInteger,0,codecf,0,DM1.Tb_Ped01P1CHAVE.AsString,DM1.Tb_Ped01P1ORDEM.AsString,DM1.Tb_Ped01P1LOTSEQ.AsString,DM1.Tb_Ped01P1DATDOC.Value,'') then
      begin
      While not DM1.Tb_Dar.Eof do
         begin
         if DM1.Tb_DarCRSTATUS.Value>0 then
            mcanped:=false;
         DM1.Tb_dar.Next;
         end;
      end;
   if not mcanped then
      begin
      MessageDlg('Favor cancelar o recebimento primeiro!',mtWarning,[mbOk],0);
      exit;
      end;
   DM1.Tb_Dar.First;
   if fmensagem('Cancelar tambem a(s) nota(s) fiscal(is)?',0,['1','2'],2)<>mrYes then
      mcanped:=True
   else
      mcanped:=false;
   end;
if mcanped then
   begin
   While not DM1.Tb_Ped01.Eof do
      begin
      if flcaddar(9,DM1.Tb_Ped01P1CODEMP.AsInteger,0,codecf,0,DM1.Tb_Ped01P1CHAVE.AsString,DM1.Tb_Ped01P1ORDEM.AsString,DM1.Tb_Ped01P1LOTSEQ.AsString,DM1.Tb_Ped01P1DATDOC.AsDateTime,'') then
         begin
         While not DM1.Tb_Dar.Eof do
            begin
            if DM1.Tb_DarCRLOTE.Value>0 then
               begin
               DM1.Query1.Close;
               DM1.Query1.SQL.Clear;
               DM1.Query1.SQL.Add('Delete From FPCRDUP where '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADDAR',[]),'',' FPCODEMP=0'+InttoStr(codemp)+' and ')
                                 +' FPLOTE=0'+DM1.Tb_DarCRLOTE.AsString);
               try
                  DM1.Query1.ExecSQL;
                  fdm1StartCommit;
               except
                  ex_erroSql(01,133,'Frm_CanCup','CADNS');
                  end;
               DM1.Query1.Close;
               DM1.Query1.SQL.Clear;
               DM1.Query1.Sql.Add('Select FPCODLDR From FPCR where '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADDAR',[]),'',' FPCODEMP=0'+InttoStr(codemp)+' and ')
                                 +' FPLOTE=0'+DM1.Tb_DarCRLOTE.AsString);
               DM1.Query1.Open;
               While not DM1.Query1.Eof do
                  begin
                  DM1.Query2.Close;
                  DM1.Query2.SQL.Clear;
                  DM1.Query2.SQL.Add('Delete From CADLDR where '
                                    +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),'',' CODEMP='+IntToStr(codemp)+' and ')
                                    +' LOTSEQ=0'+Inttostr(ls_codldr)+' and '
                                    +' CODLDR=0'+DM1.Query1.Fields[0].AsString);
                  try
                     DM1.Query2.ExecSQL;
                     fdm1StartCommit;
                  except
                     ex_erroSql(02,152,'Frm_CanCup','CADNS');
                     end;
                  DM1.Query1.Next;
                  end;
               DM1.Query1.Close;
               DM1.Query1.SQL.Clear;
               DM1.Query1.SQL.Add('Delete From FPCR where '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADDAR',[]),'',' FPCODEMP=0'+InttoStr(codemp)+' and ')
                                 +' FPTIPO=2 and FPLOTE=0'+DM1.Tb_DarCRLOTE.AsString);
               try
                  DM1.Query1.ExecSQL;
                  fdm1StartCommit;
               except
                  ex_erroSql(01,166,'Frm_CanCup','CADNS');
                  end;
               DM1.Query1.Close;
               DM1.Query1.SQL.Clear;
               DM1.Query1.SQL.Add('Delete From CADCHQ where '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADCHQ',[]),'',' CHCODEMP=0'+IntToStr(codemp)+' and ')
                                 +' CHLOTE=0'+DM1.Tb_DarCRLOTE.AsString);
               try
                  DM1.Query1.ExecSQL;
                  fdm1StartCommit;
               except
                  ex_erroSql(01,211,'Frm_CanCup','CADNS');
                  end;
               end
            else if DM1.Tb_DarCRCODLDR.Value>0 then
               begin
               DM1.Query1.Close;
               DM1.Query1.SQL.Clear;
               DM1.Query1.SQL.Add('Delete From CADLDR where '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),'',' CODEMP='+IntToStr(codemp)+' and ')
                                 +' LOTSEQ=0'+IntTosTr(ls_codldr)+' and '
                                 +' CODLDR=0'+DM1.Tb_Ped01P1CODLDR.AsString);
               try
                  DM1.Query1.ExecSQL;
                  fdm1StartCommit;
               except
                  ex_erroSql(01,190,'Frm_CanCup','CADNS');
                  end;
               end;
            DM1.Tb_Dar.Edit;
            DM1.Tb_DarCRSTATUS.Value:=9;
            DM1.Tb_DarCRVALPAG.Value:=0;
            DM1.Tb_DarCRLOTE.Value  :=0;
            DM1.Tb_DarCRDTPAG.Value :=mdatanul;
            DM1.Tb_DarCRDTBX.Value  :=mdatanul;
            DM1.Tb_Dar.Post;
            DM1.Tb_Dar.Next;
            end;
         end;
      flcadp02(0,0,ls_numped,DM1.Tb_Ped01P1CHAVE.AsString,DM1.Tb_Ped01P1ORDEM.AsString);
      While not DM1.Tb_Ped02.Eof do
         begin
         if StrToInt('0'+copy(mpseg,4,2))>0  then  // controle do CADLGC
            begin
             if DM1.Tb_Ped02P2DTVCTO.IsNull then
                mdtv:=''
             else
                mdtv:=FormatDateTime(fdt, DM1.Tb_Ped02P2DTVCTO.Value);
             flbailgc(0,0,0,0,DM1.Tb_Ped02P2CODPRO.AsString,DM1.Tb_Ped02P2LOTE.Value,mdtv,'','',DM1.Tb_Ped02P2QTD.Value);
             flcadpro(1,0,codemp,DM1.Tb_Ped02P2CODPRO.AsString);
             CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Tb_Ped02P2LOTE.Value,'S_CanCup',0,DM1.Tb_ProPDSALDO.AsFloat,DM1.Tb_Ped02P2QTD.Value,' Chave do Pedido - '+dm1.Tb_Ped02P2CHAVE.AsString);
            end;
         flbaiest(0,0,0,0,DM1.Tb_Ped02P2CODPRO.AsString,'frm_cancup_217_',DM1.Tb_Ped02P2QTD.Value);
         DM1.Tb_Ped02.Next;
         end;
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Update CADNS set NSSITCUP=9,NSSTATUS=9 where '
                        +' NSCODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString
                        +' and NSLOTSEQ_CP=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                        +' and NSCHAVEP=0'+DM1.Tb_Ped01P1CHAVE.AsString
                        +' and NSORDEMP=0'+DM1.Tb_Ped01P1ORDEM.AsString);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,211,'Frm_CanCup','CADNS');
         end;

      DM1.Tb_Ped01.Edit;
      DM1.Tb_Ped01P1STATUS.Value:=9;
      DM1.Tb_Ped01P1USRMOD.Value:=codusr;
      DM1.Tb_Ped01P1HRMOD.Value :=FormatDateTime(fdt, pdatasis);
      DM1.Tb_Ped01P1NUMCF.Value :=0;
      DM1.Tb_Ped01P1CUPOM.Value :=0;
      DM1.Tb_Ped01.Post;
      DM1.Tb_Ped01.Next;
      end;
   end
else
   begin
   While not DM1.Tb_Ped01.Eof do
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Update CADNS set NSSITCUP=9 where '
                        +' NSCODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString
                        +' and NSLOTSEQ_CP=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                        +' and NSCHAVEP=0'+DM1.Tb_Ped01P1CHAVE.AsString
                        +' and NSORDEMP=0'+DM1.Tb_Ped01P1ORDEM.AsString);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,231,'Frm_CanCup','CADNS');
         end;
      DM1.Tb_Ped01.Edit;
      DM1.Tb_Ped01P1USRMOD.Value:=codusr;
      DM1.Tb_Ped01P1HRMOD.Value :=FormatDateTime(fdt, pdatasis);
      DM1.Tb_Ped01P1NUMCF.Value :=0;
      DM1.Tb_Ped01P1CUPOM.Value :=0;
      DM1.Tb_Ped01.Post;
      DM1.Tb_Ped01.Next;
      end;
   end;
iRetorno := Bematech_FI_CancelaCupom();
mcancelou:=True;
MessageDlg('Pedido Excluido!',mtInformation,[mbOk],0);
end;

procedure TFrm_CanCup.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
If key=113 then
   begin
   if fmensagem('Quer Realmente forçar o cancelamento',0,['1','2'],2)=mrYes then
      iRetorno := Bematech_FI_CancelaCupom();
   end;

end;

procedure TFrm_CanCup.BitBtn3Click(Sender: TObject);
begin
if fmensagem('Quer Realmente Cancelar So o Cupom Fiscal!',0,['1','2'],2)<>mrYes then
   exit;
iRetorno := Bematech_FI_CancelaCupom();
if iRetorno<>1 then
   MessageDlg('Erro ao tentar excluir o cupom fiscal!',mtError,[mbOk],0)
else
   MessageDlg('Cupom Fiscal Cancelado!',mtInformation,[mbOk],0);
end;

procedure TFrm_CanCup.CHAVEPExit(Sender: TObject);
begin
if valfloat(CHAVEP.Text)<=0 then
   begin
   CHAVEP.Text:='';
   exit;
   end;

if not flcadp01(0,0,ls_numped,Trim(CHAVEP.Text),pvazio) then
   begin
   MessageDlg('Pedido não Encontrado!',mtWarning,[mbOk],0);
   CHAVEP.SetFocus;
   end
else
   NOMCLI.Text:=DM1.Tb_Ped01nomcli.Value;   

end;

procedure TFrm_CanCup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

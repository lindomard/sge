unit S_CEleOk;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, S_SelEmp,
  Grids, DBGrids, StdCtrls, ComCtrls, Buttons, ExtCtrls, S_DM1,func,db,dbtables,lerarq,
  Mask,S_Tra,S_Usr,func2;

type
  TFrm_CEleOK = class(TForm)
    Panel1: TPanel;
    bbFechar: TBitBtn;
    panel_div: TPanel;
    Label5: TLabel;
    gb_dadosnf: TGroupBox;
    Label33: TLabel;
    CODTRA: TEdit;
    NOMTRA: TEdit;
    RGFRETEPC: TRadioGroup;
    Label34: TLabel;
    PLACAV: TEdit;
    Label35: TLabel;
    UFPV: TEdit;
    Label36: TLabel;
    QTDVOL: TEdit;
    Label37: TLabel;
    ESPECIE: TEdit;
    Label38: TLabel;
    PESOB: TEdit;
    Label39: TLabel;
    PESOL: TEdit;
    Label1: TLabel;
    PREVENT: TMaskEdit;
    Label9: TLabel;
    HPREVENT: TMaskEdit;
    Label43: TLabel;
    CODEMB: TEdit;
    NOMEMB: TEdit;
    DATEMB: TMaskEdit;
    HOREMB: TMaskEdit;
    BBEMITENF: TBitBtn;
    bbEmitirRot: TBitBtn;
    BBGRAVAR: TBitBtn;
    Label42: TLabel;
    CODCON: TEdit;
    NOMCON: TEdit;
    DATCON: TMaskEdit;
    HORCON: TMaskEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    CHAVE: TEdit;
    Label3: TLabel;
    DATAP: TEdit;
    Label4: TLabel;
    VALOR: TEdit;
    Label6: TLabel;
    razsoc: TEdit;
    Label7: TLabel;
    fantasia: TEdit;
    Label8: TLabel;
    endereco: TEdit;
    Label10: TLabel;
    bairro: TEdit;
    Label41: TLabel;
    CODSEP: TEdit;
    NOMSEP: TEdit;
    DATSEP: TMaskEdit;
    HORSEP: TMaskEdit;
    bbPreFat: TBitBtn;
    procedure QTDVOLExit(Sender: TObject);
    procedure ESPECIEExit(Sender: TObject);
    procedure PESOBExit(Sender: TObject);
    procedure PESOLExit(Sender: TObject);
    procedure CODTRAExit(Sender: TObject);
    procedure CODTRAKeyPress(Sender: TObject; var Key: Char);
    procedure PLACAVExit(Sender: TObject);
    procedure UFPVExit(Sender: TObject);
    procedure PREVENTExit(Sender: TObject);
    procedure HPREVENTExit(Sender: TObject);
    procedure CODEMBExit(Sender: TObject);
    procedure CODEMBKeyPress(Sender: TObject; var Key: Char);
    procedure DATEMBExit(Sender: TObject);
    procedure HOREMBExit(Sender: TObject);
    procedure CODCONExit(Sender: TObject);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure DATCONExit(Sender: TObject);
    procedure HORCONExit(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure QTDVOLChange(Sender: TObject);
    procedure CODSEPExit(Sender: TObject);
    procedure CODSEPKeyPress(Sender: TObject; var Key: Char);
    procedure DATSEPExit(Sender: TObject);
    procedure HORSEPExit(Sender: TObject);
    procedure bbFecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bbPreFatClick(Sender: TObject);
    procedure BBEMITENFClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
   function fEmitirNF(pCodemp: Integer): Boolean;

  public
    { Public declarations }
  end;

var
  Frm_CEleOK: TFrm_CEleOK;
  mEmpMin,mEmpMax: Boolean;
  mPreFatur: boolean=false;
  mNf: boolean=false;
  Form_SelEmp: TFrm_SelEmp;
   
implementation

uses S_CEle, S_DM4, S_ManNF, S_PVO, S_GerarDuplic,
  func_excecoes;


{$R *.DFM}

procedure TFrm_CEleOK.QTDVOLExit(Sender: TObject);
begin
QTDVOL.Text:=FloatToStr(FSonumero(QTDVOL.Text));
if ValFloat(QTDVOL.Text)<0 then
   QTDVOL.Text:='0';
if ValFloat(QTDVOL.Text)>999999999 then
   begin
   MessageDlg('Quantidade de Volumes não Suportada!',mtInformation,[mbok],0);
   QTDVOL.SetFocus;
   end;

end;

procedure TFrm_CEleOK.ESPECIEExit(Sender: TObject);
begin
if (length(ESPECIE.Text)>19) then
   ESPECIE.Text:=copy(ESPECIE.Text,1,20);

end;

procedure TFrm_CEleOK.PESOBExit(Sender: TObject);
begin
if ValFloat(PESOB.Text)<0 then
   PESOB.Text:='0.000';
PESOB.Text:=FormatFloat('0.000',ValFloat(PESOB.Text));
if ValFloat(PESOB.Text)>99999999 then
   begin
   MessageDlg('Peso não Suportado!',mtInformation,[mbOk],0);
   PESOB.SetFocus;
   end;

end;

procedure TFrm_CEleOK.PESOLExit(Sender: TObject);
begin
if ValFloat(PESOL.Text)<0 then
   PESOL.Text:='0.000';
PESOL.Text:=FormatFloat('0.000',ValFloat(PESOL.Text));
if ValFloat(PESOL.Text)>99999999 then
   begin
   MessageDlg('Peso não Suportado!',mtInformation,[mbOk],0);
   PESOL.SetFocus;
   end;

end;

procedure TFrm_CEleOK.CODTRAExit(Sender: TObject);
begin
if ValFloat(CODTRA.Text)>0 then
   begin
   if not flcadtra(1,0,CODTRA.Text) then
      begin
      MessageDlg('Transportadora não Cadastrada!',mtWarning,[mbOk],0);
      CODTRA.SetFocus;
      end
   else
      NOMTRA.Text:=DM1.Tb_TraTRRAZTRA.Value;
   end;

end;

procedure TFrm_CEleOK.CODTRAKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTRA.Text:=fChamaTra(0,'frm_CEleOK',Key);
   if trim(CODTRA.Text)<>'' then
      CODTRAExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_CEleOK.PLACAVExit(Sender: TObject);
begin
if (length(PLACAV.Text)>7) then
   PLACAV.Text:=copy(PLACAV.Text,1,8);

end;

procedure TFrm_CEleOK.UFPVExit(Sender: TObject);
begin
if (length(UFPV.Text)>1) then
   UFPV.Text:=copy(UFPV.Text,1,2);

end;

procedure TFrm_CEleOK.PREVENTExit(Sender: TObject);
begin
if Trim(PREVENT.Text)<>'/  /' then
   begin
   Try
      PREVENT.Text:=FormatDateTime(fdt2, StrToDate(PREVENT.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      PREVENT.SetFocus;
      end;
   end;

end;

procedure TFrm_CEleOK.HPREVENTExit(Sender: TObject);
begin
if Trim(HPREVENT.Text)<>':  :' then
   begin
   Try
      HPREVENT.Text:=FormatDateTime(fhr, StrToTime(HPREVENT.Text));
   except
      MessageDlg('Hora Invalida!',mtWarning,[mbOk],0);
      HPREVENT.SetFocus;
      end;
   end;

end;

procedure TFrm_CEleOK.CODEMBExit(Sender: TObject);
begin
CODEMB.Text:=FloatToStr(FSonumero(CODEMB.Text));
if ValFloat(CODEMB.Text)=0 then
   exit;
if not flcadusr(1,0,CODEMB.Text) then
   begin
   MessageDlg('Usuário não Cadastrado!',mtWarning,[mbOk],0);
   CODEMB.SetFocus;
   end
else
   NOMEMB.Text:=DM4.Tb_UsrNOMUSR.Value;

end;

procedure TFrm_CEleOK.CODEMBKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODEMB.Text:=fChamaUsr(0,'frm_CEleOK',Key);
   if trim(CODEMB.Text)<>'' then
   CODEMBExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_CEleOK.DATEMBExit(Sender: TObject);
begin
if Trim(DATEMB.Text)<>'/  /' then
   begin
   Try
      DATEMB.Text:=FormatDateTime(fdt2, StrToDate(DATEMB.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      DATEMB.SetFocus;
      end;
   end;

end;

procedure TFrm_CEleOK.HOREMBExit(Sender: TObject);
begin
if Trim(HOREMB.Text)<>':  :' then
   begin
   Try
      HOREMB.Text:=FormatDateTime(fhr, StrToTime(HOREMB.Text));
   except
      MessageDlg('Hora Invalida!',mtWarning,[mbOk],0);
      HOREMB.SetFocus;
      end;
   end;

end;

procedure TFrm_CEleOK.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum2(CODCON.Text);
if ValFloat(CODCON.Text)=0 then
   exit;
if not flcadusr(1,0,CODCON.Text) then
   begin
   MessageDlg('Usuário não Cadastrado!',mtWarning,[mbOk],0);
   CODCON.SetFocus;
   end
else
   NOMCON.Text:=DM4.Tb_UsrNOMUSR.Value;

end;

procedure TFrm_CEleOK.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text:=fChamaUsr(0,'frm_CEleOK',Key);
   if trim(CODCON.Text)<>'' then
      CODCONExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_CEleOK.DATCONExit(Sender: TObject);
begin
if Trim(DATCON.Text)<>'/  /' then
   begin
   Try
      DATCON.Text:=FormatDateTime(fdt2, StrToDate(DATCON.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      DATCON.SetFocus;
      end;
   end;

end;

procedure TFrm_CEleOK.HORCONExit(Sender: TObject);
begin
if Trim(HORCON.Text)<>':  :' then
   begin
   Try
      HORCON.Text:=FormatDateTime(fhr, StrToTime(HORCON.Text));
   except
      MessageDlg('Hora Invalida!',mtWarning,[mbOk],0);
      HORCON.SetFocus;
      end;
   end;

end;

procedure TFrm_CEleOK.BBGRAVARClick(Sender: TObject);
begin
bbGravar.Enabled:=false;
DM1.Query3.Close;
DM1.Query3.SQL.Clear;

DM1.Query3.Params.CreateParam(ftString,'P1LOTSEQ',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CHAVE',ptInput);

DM1.Query3.Params.CreateParam(ftString,'P1CODSEP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1DATASEP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1HORSEP',ptInput);

DM1.Query3.Params.CreateParam(ftString,'P1CODCON',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1DATCON',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1HORCON',ptInput);

DM1.Query3.Params.CreateParam(ftString,'P1PREVENT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1HPREVENT',ptInput);

DM1.Query3.Params.CreateParam(ftString,'P1CODTRA',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1QTDVOL',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1PESOL',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1PESOB',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1ESPECIE',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1FRETEPC',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1UFPV',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1PLACAV',ptInput);

DM1.Query3.Params.CreateParam(ftString,'P1CODSEP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1DATASEP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1HORSEP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CODEMB',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1DATAEMB',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1HOREMB',ptInput);

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
if DM1.Qr_Tid.Locate('TINOME','CADP01',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('P1CODEMP',Form_SelEmp.CLB_EMPRESAS);


//
DM1.Query3.SQL.add('Update CADP01 SET '
                  +' P1CODSEP =:P1CODSEP, '
                  +' P1DATASEP =:P1DATASEP, '
                  +' P1HORSEP =:P1HORSEP, '
                  +' P1CODCON =:P1CODCON, '
                  +' P1DATCON =:P1DATCON, '
                  +' P1HORCON =:P1HORCON, '
                  +' P1PREVENT=:P1PREVENT, '
                  +' P1HPREVENT=:P1HPREVENT, '
                  +' P1CODTRA =:P1CODTRA, ');
if (mEmpMin) and (mEmpMax) then
   begin
   DM1.Query3.SQL.Add('P1QTDVOL=decode(P1CODEMP,'+IntToStr(IIF(codemp>100,codemp-100,codemp+100))+',0,:P1QTDVOL), ');
   DM1.Query3.SQL.Add('P1PESOL =decode(P1CODEMP,'+IntToStr(IIF(codemp>100,codemp-100,codemp+100))+',0,:P1PESOL), ');
   DM1.Query3.SQL.Add('P1PESOB =decode(P1CODEMP,'+IntToStr(IIF(codemp>100,codemp-100,codemp+100))+',0,:P1PESOB), ');
   end
else
   begin
   DM1.Query3.SQL.Add(' P1QTDVOL =:P1QTDVOL, '
                     +' P1PESOL  =:P1PESOL, '
                     +' P1PESOB  =:P1PESOB, ');
   end;
DM1.Query3.SQL.Add(' P1ESPECIE=:P1ESPECIE, '
                  +' P1FRETEPC=:P1FRETEPC, '
                  +' P1UFPV   =:P1UFPV, '
                  +' P1PLACAV =:P1PLACAV, '
                  +' P1CODEMB =:P1CODEMB, '
                  +' P1DATAEMB=:P1DATAEMB, '
                  +' P1HOREMB =:P1HOREMB'
                  +' where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +' P1CHAVE=:P1CHAVE and P1LOTSEQ=:P1LOTSEQ ');

DM1.Query3.ParambyName('P1LOTSEQ').AsFloat     := DM1.Tb_Ped01P1LOTSEQ.Value;
DM1.Query3.ParambyName('P1CHAVE').AsFloat      := DM1.Tb_Ped01P1CHAVE.Value;
DM1.Query3.ParambyName('P1CODSEP').AsFloat     := fsonumero(CODSEP.Text);
DM1.Query3.ParambyName('P1DATASEP').AsString   := DATSEP.Text;
DM1.Query3.ParambyName('P1HORSEP').AsString    := HORSEP.Text;
DM1.Query3.ParambyName('P1CODCON').AsFloat     := fsonumero(CODCON.Text);
DM1.Query3.ParambyName('P1DATCON').AsString    :=DATCON.Text;
DM1.Query3.ParambyName('P1HORCON').AsString    := HORCON.Text;
DM1.Query3.ParambyName('P1QTDVOL').AsFloat       := ValFloat(QTDVOL.Text);
DM1.Query3.ParambyName('P1PESOL').AsFloat        := ValFloat(PESOL.Text);
DM1.Query3.ParambyName('P1PESOB').AsFloat        := ValFloat(PESOB.Text);
DM1.Query3.ParambyName('P1PREVENT').AsString   := PREVENT.Text;
DM1.Query3.ParambyName('P1HPREVENT').AsString     := HPREVENT.Text;
DM1.Query3.ParambyName('P1CODTRA').AsFloat       := ValInt(CODTRA.Text);
DM1.Query3.ParambyName('P1ESPECIE').AsString     := ESPECIE.Text;
DM1.Query3.ParambyName('P1FRETEPC').AsFloat      := RGFRETEPC.ItemIndex+1;
DM1.Query3.ParambyName('P1UFPV').AsString        := UFPV.Text;
DM1.Query3.ParambyName('P1PLACAV').AsString      := PLACAV.Text;
DM1.Query3.ParambyName('P1CODEMB').AsFloat       := ValInt(CODEMB.Text);
DM1.Query3.ParambyName('P1DATAEMB').AsString     := DATEMB.Text;
DM1.Query3.ParambyName('P1HOREMB').AsString      := HOREMB.Text;
try
   DM1.Query3.ExecSQL;
   fdm1StartCommit;
except
   end;

end;

procedure TFrm_CEleOK.QTDVOLChange(Sender: TObject);
begin
if BBGRAVAR.Enabled=false then
   BBGRAVAR.Enabled:=true;
end;

procedure TFrm_CEleOK.CODSEPExit(Sender: TObject);
begin
CODSEP.Text:=fdeixanum2(CODSEP.Text);
if ValFloat(CODSEP.Text)=0 then
   exit;
if not flcadusr(1,0,CODSEP.Text) then
   begin
   MessageDlg('Usuário não Cadastrado!',mtWarning,[mbOk],0);
   CODSEP.SetFocus;
   end
else
   NOMSEP.Text:=DM4.Tb_UsrNOMUSR.Value;

end;

procedure TFrm_CEleOK.CODSEPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODSEP.Text:=fChamaUsr(0,'frm_CEleOk',Key);
   if trim(CODSEP.Text)<>'' then
      CODSEPExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_CEleOK.DATSEPExit(Sender: TObject);
begin
if Trim(DATSEP.Text)<>'/  /' then
   begin
   Try
      DATSEP.Text:=FormatDateTime(fdt2, StrToDate(DATSEP.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      DATSEP.SetFocus;
      end;
   end;

end;

procedure TFrm_CEleOK.HORSEPExit(Sender: TObject);
begin
if Trim(HORSEP.Text)<>':  :' then
   begin
   Try
      HORSEP.Text:=FormatDateTime(fhr, StrToTime(HORSEP.Text));
   except
      MessageDlg('Hora Invalida!',mtWarning,[mbOk],0);
      HORSEP.SetFocus;
      end;
   end;

end;

procedure TFrm_CEleOK.bbFecharClick(Sender: TObject);
begin
if BBEMITENF.Enabled then
   begin
   if fmensagem('Não foi emitido Nota fiscal para este pedido quer sair assim mesmo?',0,['1','2'],2)<>mrYes  then
      begin
      BBEMITENF.SetFocus;
      exit;
      end;
   end
else if bbPreFat.Enabled then
   begin
   if fmensagem('Não foi emitido pre-fatura para este pedido quer sair assim mesmo?',0,['1','2'],2)<>mrYes  then
      begin
      bbPreFat.SetFocus;
      exit;
      end;
   end;
close;
end;

procedure TFrm_CEleOK.FormActivate(Sender: TObject);
begin
{
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
if DM1.Qr_Tid.Locate('TINOME','CADP01',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('P1CODEMP',Form_SelEmp.CLB_EMPRESAS);


DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select P1CODEMP,P1STATUS,P1CODTRA,P1FRETEPC,P1PLACAV,P1UFPV,'
                   +' P1ESPECIE, P1PREVENT, '
                   +' P1HPREVENT, P1CODSEP, P1DATASEP, P1HORSEP, P1CODCON, '
                   +' P1HORCON, P1CODEMB, P1DATAEMB, P1HOREMB, '
                   +' P1CODCLI, CRAZAO,CDENOM,CLOG,CBAIRRO, '
                   +' P1CONF,P1DATCON,P1DATAP,P1DATENT,sum(P1QTDVOL) AS P1QTDVOL, '
                   +' sum(P1PESOB) as P1PESOB, '
                   +' sum(P1PESOL) as P1PESOL, '
                   +'  sum(P1TOTALL) as P1TOTALL'
                   +'  from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' P1STATUS<'+mstatus_excluido+' ');
DM1.Query5.Sql.Add('  and P1LOTSEQ=0'+InttoStr(ls_numped));
DM1.Query5.Sql.Add(' and P1CHAVE='+fdeixanum(CHAVE.Text));

DM1.Query5.SQL.Add(' group by P1CODEMP,P1STATUS,P1CODTRA,P1FRETEPC,P1PLACAV,P1UFPV,'
                  +' P1ESPECIE, P1PREVENT, '
                  +' P1HPREVENT, P1CODSEP, P1DATASEP, P1HORSEP, P1CODCON, '
                  +' P1HORCON, P1CODEMB, P1DATAEMB, '
                  +' P1CODCLI, CRAZAO,CDENOM,CLOG,CBAIRRO, '
                  +' P1CONF,P1DATCON,P1DATAP,P1DATENT,P1HOREMB ');
try
   DM1.Query5.Open;
except
   DM1.Query5.sql.SavetoFile('c:\sql.txt');
   end;

//BBEMITENF.Enabled:=false;
//bbPreFat.Enabled :=false;
mPreFatur:=false;
mNf      :=false;


While not DM1.query5.Eof do
   begin
   if DM1.Query5.FieldByName('P1STATUS').AsInteger=2 then
      begin
      DM1.Query5.Next;
      Continue;
      end;
    if DM1.Query5.FieldByName('P1CODEMP').AsInteger<100 then
       mnf:=true
    else
       mPreFatur:=true;
   DM1.Query5.Next;
   end;
DM1.Query5.First;
CODTRA.Text        :='';
NOMTRA.Text        :='';
if DM1.Query5.FieldByName('P1CODTRA').AsFloat>0 then
   begin
   if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',DM1.Query5.FieldByName('P1CODTRA').AsString) then
      begin
      CODTRA.Text        :=DM1.Query5.FieldByName('P1CODTRA').AsString;
      NOMTRA.Text        :=DM1.Query1.Fields[0].AsString;
      end;
   end;
RGFRETEPC.ItemIndex:=DM1.Query5.FieldByName('P1FRETEPC').AsInteger-1;
PLACAV.Text        :=DM1.Query5.FieldByName('P1PLACAV').AsString;
UFPV.Text          :=DM1.Query5.FieldByName('P1UFPV').AsString;
QTDVOL.Text        :=DM1.Query5.FieldByName('P1QTDVOL').AsString;
ESPECIE.Text       :=DM1.Query5.FieldByName('P1ESPECIE').AsString;
PESOB.Text         :=FormatFloat('#,##0.00', DM1.Query5.FieldByName('P1PESOB').AsFloat);
PESOL.Text         :=FormatFloat('#,##0.00', DM1.Query5.FieldByName('P1PESOL').AsFloat);

if DM1.Query5.FieldByName('P1PREVENT').AsDateTime<=pdatanula then
   PREVENT.Text     :='/  /'
else
   PREVENT.Text     :=FormatDateTime(fdt2, DM1.Query5.FieldByName('P1PREVENT').AsDateTime);
HPREVENT.Text       :=DM1.Query5.FieldByName('P1HPREVENT').AsString;
CODSEP.Text        :='';
NOMSEP.Text        :='';
DATSEP.Text        :='/  /';
if DM1.Query5.FieldByName('P1CODSEP').AsFloat>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Query5.FieldByName('P1CODSEP').AsString) then
      begin
      CODSEP.Text:=DM1.Query5.FieldByName('P1CODSEP').AsString;
      NOMSEP.Text:=DM1.Query1.Fields[0].AsString;
      end
   end;
if DM1.Query5.FieldByName('P1DATASEP').AsDateTime>pdatanula then
   DATSEP.Text        :=FormatDateTime(fdt2, DM1.Query5.FieldByName('P1DATASEP').AsDateTime);
HORSEP.Text        :=DM1.Query5.FieldByName('P1HORSEP').AsString;
CODCON.Text        :='';
NOMCON.Text        :='';
if DM1.Query5.FieldByName('P1CODCON').AsFloat>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Query5.FieldByName('P1CODCON').AsString) then
      begin
      CODCON.Text:=DM1.Query5.FieldByName('P1CODCON').AsString;
      NOMCON.Text:=DM1.Query1.Fields[0].AsString;
      end
   end;
HORCON.Text        :=DM1.Query5.FieldByName('P1HORCON').AsString;
if DM1.Query5.FieldByName('P1DATCON').AsDateTime<=pdatanula then
   DATCON.Text        :='/  /'
else
   DATCON.Text        :=FormatDateTime(fdt2, DM1.Query5.FieldByName('P1DATCON').AsDateTime);
CODEMB.Text        :='';
NOMEMB.Text        :='';
if DM1.Query5.FieldByName('P1CODEMB').AsFloat>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Query5.FieldByName('P1CODEMB').AsString) then
      begin
      CODEMB.Text:=DM1.Query5.FieldByName('P1CODEMB').AsString;
      NOMEMB.Text:=DM1.Query1.Fields[0].AsString;
      end
   end;
if DM1.Query5.FieldByName('P1DATAEMB').AsDateTime<=pdatanula then
   DATEMB.Text     :='/  /'
else
   DATEMB.Text     :=FormatDateTime(fdt2, DM1.Query5.FieldByName('P1DATAEMB').AsDateTime);
HOREMB.Text        :=DM1.Query5.FieldByName('P1HOREMB').AsString;

if mNf or mPreFatur then
   begin
   BBEMITENF.Click;
//   BBEMITENF.Enabled:=true;
   end;
bbgravar.enabled:=false;
 }

end;

procedure TFrm_CEleOK.bbPreFatClick(Sender: TObject);
begin
bbPreFat.Enabled:=false;

if codemp>100 then
   begin
   fmensagem('Não é uma empresa válida para este tipo de operação!',1,['0'],0);
   exit;
   end;
if not flcadp01(0, codemp+100, ls_numped,CHAVE.Text,'') then
   begin
   fmensagem('Erro ao Localizar o Pedido: '+CHAVE.Text,0,['0'],0);
   exit;
   end;
fEmitirNF(codemp+100);
if BBEMITENF.Enabled=false then
   close;
end;

procedure TFrm_CEleOK.BBEMITENFClick(Sender: TObject);
var

mAguardando_processamento_ant :Boolean;

begin
mAguardando_processamento_ant := mAguardando_processamento;

BBEMITENF.Enabled:=false;
bbFechar.Enabled :=false;

if codemp>100 then
   begin
   fmensagem('Não é uma empresa válida para este tipo de operação!',1,['0'],0);
   BBEMITENF.Enabled:=true;
   bbFechar.Enabled :=true;
   mAguardando_processamento := mAguardando_processamento_ant;

   exit;

   end;
if mPreFatur then
   begin
   if not flcadp01(0,iif(codemp>100,codemp,codemp+100), ls_numped,CHAVE.Text,'') then
      begin
      fmensagem('Erro ao Localizar o Pedido: '+CHAVE.Text,0,['0'],0);
      BBEMITENF.Enabled:=true;
      bbFechar.Enabled :=true;
      mAguardando_processamento := mAguardando_processamento_ant;
      exit;
      end;
   fEmitirNF(DM1.Tb_Ped01P1CODEMP.AsInteger);
   end;
if mNf then
   begin
   if not flcadp01(0, iif(codemp>100,codemp-100,codemp), ls_numped,CHAVE.Text,'') then
      begin
      fmensagem('Erro ao Localizar o Pedido: '+CHAVE.Text,0,['0'],0);
      BBEMITENF.Enabled:=true;
      bbFechar.Enabled :=true;
      mAguardando_processamento := mAguardando_processamento_ant;
      exit;
     end;
   fEmitirNF(DM1.Tb_Ped01P1CODEMP.AsInteger);
   end;
mAguardando_processamento := mAguardando_processamento_ant;

//if bbPreFat.Enabled=false then
//   close;
end;


function TFrm_CeleOk.fEmitirNF(pCodemp: Integer): Boolean;
var
x: Integer;
mcodemp,mnumnf: Real;
mdupacum,mcomp: String;
pSerieNF,pModNF: string;
mannf_aceito, emitiu: Boolean;
mTotserv: Real;
begin
if DM1.Tb_Ped01P1TIPO.Asinteger=0 then
   begin
   fMensagem('Orçamento Favor Faturar!',0,['0'],0);
   exit;
   end;
if DM1.Tb_Ped01P1BLOQPEND.Value=2 then
   begin
   verteclado(0);
   Fmensagem('Este Pedido é Possui Restrições, verifique!',0,['0'],0);
   exit;
   end;


if (DM1.Tb_Ped01P1SITPED.Value = 1) and ( (DM1.Tb_Ped01P1DATHOR_ULTEVE.AsDateTime>pdatanula)
   and (trunc((now-DM1.Tb_Ped01P1DATHOR_ULTEVE.AsDateTime))*24*60<=1)) then
   begin
   mcinst2:=DM1.Tb_Ped01P1CODUSR.AsString+' - ';
   if DM1.Tb_Ped01P1CODUSR.AsInteger=1111 then
      mcinst2:=mcinst2+'Programador(Master)'
   else
      begin
      if flcadusr(0,0,DM1.Tb_Ped01P1CODUSR.AsString) then
         mcinst2:=mcinst2+DM4.Tb_UsrNOMUSR.AsString;
      end;
   mcinst := 'Este Pedido Sendo Alterado no Computador: '+DM1.Tb_Ped01P1COMP_ULTEVE.AsString
           + ' Pelo Usuário: '+mcinst2
           + ' Data/Hora: '+Formatdatetime('dd/mm/yyyy hh:nn:ss', DM1.Tb_Ped01P1DATHOR_ULTEVE.AsDateTime);


   fMensagem(mcinst,0,['0'],0);
   exit;
   end;

if DM1.Tb_Ped01P1STATUS.Value>1 then
   begin
   fmensagem('Este Pedido ja Foi Emitido Nota Fiscal',0,['0'],0);
   exit;
   end;
{
if DM1.Tb_Ped01P1STATUS.Value>1 then
   begin
   verteclado(0);
   if fmensagem('Este Pedido ja Foi Emitido Nota Fiscal. Quer Reemitir?',0,['1','2'],2)=mrYes then
      begin
      FPedEmiteNf(0,0,0,DM1.Tb_Ped01P1LOTSEQ.AsInteger,DM1.Tb_Ped01P1CHAVE.AsInteger,DM1.Tb_Ped01P1ORDEM.AsInteger,DM1.Tb_Ped01P1CODEMP.AsInteger,0,DM1.Tb_Ped01P1FORMACE.AsInteger,false,false,true,0,0); // Reemisao de Nota fiscal
      end;
   exit;
   end;
}

mtotServ:=0;
if DM1.Tb_Ped01P1DATAP.Value<>Date then
   begin
   while not DM1.Tb_Ped01.Eof do
     begin
     if DM1.Tb_Ped01P1STATUS.Value>1 then
        begin
        DM1.Tb_Ped01.next;
        Continue;
        end;
     if DM1.Tb_Ped01P1NUMNF.AsInteger>0 then
        begin
        DM1.Tb_Ped01.Next;
        Continue;
        end;
    fCarregarPO99(DM1.Tb_Ped01P1TABPV.Value,DM1.Tb_Ped01P1CODEMP.Value,
                    DM1.Tb_Ped01P1LOTSEQ.Value,iif(DM1.Tb_Ped01P1TABPV.AsString='PO'
                    ,DM1.Tb_Ped01P1CHAVE.Value, DM1.Tb_Ped01P1CODPV.Value));

     fgvencto(iif(DM1.Tb_Ped01P1TABPV.Value='PP',1,0),DM1.Tb_Ped01P1CODEMP.AsInteger,
               DM1.Tb_Ped01P1LOTSEQ.AsInteger,DM1.Tb_Ped01P1CHAVE.AsInteger,
                   DM1.Tb_Ped01P1ORDEM.AsInteger,DM1.Tb_Ped01P1PRAZO.AsInteger,DM1.Tb_Ped01P1CODPV.AsInteger,
                   DM1.Tb_Ped01P1PVDDESCF.AsInteger,DM1.Tb_Ped01P1PVDIASDESCF.AsInteger,
                   DM1.Tb_Ped01P1TOTALL.Value,DM1.Tb_Ped01P1COMIS.Value,DM1.Tb_Ped01P1COMV02.Value,
                   DM1.Tb_Ped01P1COMV03.Value,
                   DM1.Tb_Ped01P1COMV03.Value,
                   DM1.Tb_Ped01P1COMISS.Value,
                   DM1.Tb_Ped01P1COMIST.Value,DM1.Tb_Ped01P1SEMCOM.Value,
                   DM1.Tb_Ped01P1COMASSE.Value,
                   DM1.Tb_Ped01P1ICMSR.Value,
                   DM1.Tb_Ped01P1VALFRE.Value,
                   DM1.Tb_Ped01P1VALSEG.Value,
                   DM1.Tb_Ped01P1DESCFIN.Value,
                   DM1.Tb_Ped01P1TOTDI01.Value,
                   DM1.Tb_Ped01P1TOTDI02.Value,
                   DM1.Tb_Ped01P1TOTDI03.Value,
                   DM1.Tb_Ped01P1TOTDIVL.Value,
                   DM1.Tb_Ped01P1VALDES01.Value,
                   DM1.Tb_Ped01P1VALDES02.Value,
                   DM1.Tb_Ped01P1VLRDES.Value,
                   DM1.Tb_Ped01P1TARBAN.Value,
                   DM1.Tb_Ped01P1IPIINA.Value+DM1.Tb_Ped01P1IPIPOS.Value+DM1.Tb_Ped01P1IPINEG.Value,
                   DM1.Tb_Ped01P1TOTCGRU.Value,
                   DM1.Tb_Ped01P1TOTSGRU.Value,
                   DM1.Tb_Ped01P1TOTSERLIQ.Value,
                   DM1.Tb_Ped01P1VALENT.Value,
                   DM1.Tb_Ped01P1PRAZO_ENT.Value,
                   DM1.Tb_Ped01P1COMIS_EXTRA.Value,
                   DM1.Tb_Ped01submod.AsFloat,
                   date,
                   DM1.Tb_Ped01P1TABPV.Value);
     DM1.Tb_Ped01.Next;
     end;
  end;
DM1.Tb_Ped01.First;
emitiu:=true;
mdupacum:='';
While not DM1.Tb_Ped01.Eof do
   begin
   if DM1.Tb_Ped01P1STATUS.Value>1 then
      begin
      FPedEmiteNf(0,DM1.Tb_Ped01P1CODSER.AsInteger,0,
                  DM1.Tb_Ped01P1LOTSEQ.AsInteger,
                  DM1.Tb_Ped01P1CHAVE.AsInteger,
                  DM1.Tb_Ped01P1ORDEM.AsInteger,
                  DM1.Tb_Ped01P1CODEMP.AsInteger,
                  0,
                  DM1.Tb_Ped01P1FORMACE.AsInteger,false,false,true,1,0,0); // Reemisao de Nota fiscal
      DM1.Tb_Ped01.Next;
      Continue;
      end;
   mcomp     :='';
   emitiu    :=true;
   flcadpar01(0,DM1.Tb_Ped01P1CODEMP.AsInteger,'1');
// se for primeira serie
   pSerieNF:='';
   pModNF  :='';
   mnumnf:=fBuscarNUMNF(DM1.Tb_Ped01P1CODEMP.AsInteger,'SERIE'+IntToStr(DM1.Tb_Ped01P1CODSER.AsInteger+1),pSerieNF,pModNF,0);

   DM1.Tb_Ped01.Edit;
   DM1.Tb_Ped01P1NUMNF.Value :=mnumnf;
   DM1.Tb_Ped01P1DATANF.Value:=date;
   DM1.Tb_Ped01P1DATDOC.Value:=date;
   DM1.Tb_Ped01P1SERIE.Value :=pSerieNF;
   DM1.Tb_Ped01P1MODELO.Value:=pModNF;
   DM1.Tb_Ped01P1STATUS.Value:=2;
   DM1.Tb_Ped01P1EMIDOC.Value:=1;
   try
      DM1.Tb_Ped01.Post;
   except
      ex_erroSql_Novo(DM1.Tb_Ped01,893,'frm_celeok','CADP01');

      end;
   flcadp01V(0,DM1.Tb_Ped01P1CODEMP.AsInteger,
               DM1.Tb_Ped01P1LOTSEQ.AsInteger,
               DM1.Tb_Ped01P1CHAVE.AsString,
                  DM1.Tb_Ped01P1ORDEM.AsString);
   FPedEmiteNf(0,DM1.Tb_Ped01P1CODSER.AsInteger,0,
               DM1.Tb_Ped01P1LOTSEQ.AsInteger,
               DM1.Tb_Ped01P1CHAVE.AsInteger,
               DM1.Tb_Ped01P1ORDEM.AsInteger,
               DM1.Tb_Ped01P1CODEMP.AsInteger,0,
               DM1.Tb_Ped01P1FORMACE.AsInteger,false,false,true,1,0,0); // Reemisao de Nota fiscal

   DM1.Tb_Ped01.Next;
   end;

end;


procedure TFrm_CEleOK.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_PVO, Frm_PVO);
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_CEleOK.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_CEleOK.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=113 then
   begin
   if Form_SelEmp.WindowState=wsMinimized then
      Form_SelEmp.WindowState:=wsNormal
   else
      Form_SelEmp.Show;
   end
else
   begin
   if pTcAtalho_me<>0 then
      begin
      if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
         begin
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;
end;

end.

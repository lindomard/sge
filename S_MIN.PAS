unit S_min;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Grids, Mask, ComCtrls, func, S_DM1, Db,
  DBTables;

type
  TFrm_Min = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label2: TLabel;
    CBROTA: TCheckBox;
    Panel3: TPanel;
    NOMROT: TEdit;
    CODROT: TEdit;
    SG1: TStringGrid;
    LANCAR: TBitBtn;
    ALTERAR: TBitBtn;
    EXCLUIR: TBitBtn;
    HeaderControl1: THeaderControl;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Qr_Rot: TQuery;
    Qr_RotP1CHAVE: TFloatField;
    Qr_RotP1OBS: TMemoField;
    Qr_RotP2CODPRO: TFloatField;
    Qr_RotP2QTD: TFloatField;
    Qr_RotP2PRECO: TFloatField;
    Qr_RotPDNOME: TStringField;
    Qr_RotCNOME: TStringField;
    Qr_RotCCELULAR: TStringField;
    Qr_RotCFONERES: TStringField;
    Qr_RotCFONECOM: TStringField;
    Qr_RotCDTUREN: TDateTimeField;
    Qr_RotCPONTOR: TStringField;
    Qr_RotCTPLOG: TStringField;
    Qr_RotCLOG: TStringField;
    Qr_RotCNUM: TStringField;
    Qr_RotCCOMPL: TStringField;
    Qr_RotBNOME: TStringField;
    Qr_RotCCEP: TStringField;
    Qr_RotLNOME: TStringField;
    Qr_RotLUF: TStringField;
    Qr_RotRTNOME: TStringField;
    Qr_RotRTCEP: TStringField;
    Qr_RotRTCODROT: TFloatField;
    procedure CBROTAClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CODROTKeyPress(Sender: TObject; var Key: Char);
    procedure CODROTExit(Sender: TObject);
    procedure LANCARClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Min: TFrm_Min;
  mlin,mponteiro,moper: Integer;

implementation

uses S_Crota, S_Impres;

{$R *.DFM}

procedure TFrm_Min.CBROTAClick(Sender: TObject);
var
mqtd: Integer;
begin

if CBROTA.Checked then
   begin
   Panel3.Visible:=True;
   mqtd:=SG1.RowCount;
   for mlin:=0 to mqtd do
       begin
       SG1.Rows[mlin].Clear;
       end;
   mlin:=1;
   SG1.RowCount:=mlin;
   CODROT.SetFocus;
   end
else
   begin
   Panel3.Visible:=False;
   end;
end;

procedure TFrm_Min.FormActivate(Sender: TObject);
begin
CBROTA.Checked:=False;
Panel3.Visible:=False;
mlin:=0;
moper:=0;
mponteiro:=0;
end;

procedure TFrm_Min.CODROTKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['a'..'z']) or (key in ['A'..'Z']) then
   Begin
   Application.CreateForm(TFrm_CRota, Frm_CRota);
   Frm_Crota.ShowModal;
   CODROT.Text:=DM1.Tb_Rt1RTCODROT.AsString;
   Frm_Crota.Free;
   key:=#0;
   end
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Min.CODROTExit(Sender: TObject);
var
mqtd: Integer;
begin
if not LANCAR.Focused then
   abort;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select RTNOME,RTCODROT FROM CADRT1 where '
                  +' RTCODEMP=0'+IntToStr(codemp)
                  +' and RTCODROT=0'+IntToStr(StrToInt('0'+CODROT.Text)));
DM1.Query1.Open;
if DM1.Query1.Eof then
   begin
   ShowMessage('Rota Não Cadastrada!');
   CODROT.SetFocus;
   abort;
   end
else
   NOMROT.Text:=DM1.Query1.Fields[0].AsString;

for mqtd:=0 to mlin do
   begin
   if moper=0 then
      begin
      if StrToInt('0'+SG1.Cells[0,mqtd])=StrToInt('0'+CODROT.Text) then
         begin
         if MessageDlg('Rota Já Digitada!'+#13
               +'Deseja Alterá-la?',mtConfirmation,[mbYes,mbNo],0)<>mrYes then
            CODROT.SetFocus
         else
            begin
            ALTERAR.Click;
            end;
         end;
      end
         else
           if moper=1 then
              begin
              if (StrToInt('0'+SG1.Cells[0,mqtd])=StrToInt('0'+CODROT.Text)) and (mqtd<>mponteiro) then
                 begin
                 ShowMessage('Rota Já Digitada!');
                 CODROT.SetFocus;
                 abort;
                 end;
              end;
  end;
LANCAR.SetFocus;



end;

procedure TFrm_Min.LANCARClick(Sender: TObject);
begin
if moper=0 then
   begin
   SG1.Cells[0,mlin-1]:=CODROT.Text;
   SG1.Cells[1,mlin-1]:=NOMROT.Text;
   mlin:=mlin+1;
   SG1.RowCount:=mlin;
   end
else
   begin
   SG1.Cells[0,SG1.Row]:=CODROT.Text;
   SG1.Cells[1,SG1.Row]:=NOMROT.Text;
   end;
moper:=0;
SG1.Update;
CODROT.Clear;
NOMROT.Clear;
CODROT.SetFocus;
end;

procedure TFrm_Min.ALTERARClick(Sender: TObject);
begin

moper      :=1;
mponteiro  :=SG1.Row;
CODROT.Text:=Trim(SG1.Cells[0,SG1.Row]);
NOMROT.Text:=Trim(SG1.Cells[1,SG1.Row]);
CODROT.SetFocus;

end;

procedure TFrm_Min.EXCLUIRClick(Sender: TObject);
var
a: Integer;
begin
   a  :=SG1.Row;
   if Trim(SG1.Cells[0,a])='' then
      begin
      ShowMessage('Não ha nada Neste Registro. Selecione um Valido!');
      end
   else
      begin
      For mponteiro:=a to mlin do
         begin
         SG1.cells[0,mponteiro] :=SG1.Cells[0,mponteiro+1];
         SG1.Cells[1,mponteiro] :=SG1.Cells[1,mponteiro+1];
         end;
      SG1.Rows[mlin].Clear;
      mlin:=mlin-1;
      SG1.RowCount:=mlin;
      end;
   CODROT.SetFocus;


end;

procedure TFrm_Min.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Min.BitBtn1Click(Sender: TObject);
var
mqtd, mlin, mpag, mcodrot: Integer;
begin
if Trim(MDT1.Text)<>'/  /' then
   MDT1.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT1.Text));
if Trim(MDT2.Text)<>'/  /' then
   MDT2.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT2.Text));

Qr_Rot.Close;
Qr_Rot.SQL.Clear;
Qr_Rot.SQL.Add('Select P1CHAVE,P1OBS,P2CODPRO,P2QTD,P2PRECO,PDNOME,'
               +' CNOME,CCELULAR,CFONERES, CFONECOM, CDTUREN,'
               +' CPONTOR, CTPLOG,CLOG,CNUM,CCOMPL,BNOME,'
               +' CCEP, LNOME,LUF, RTNOME, RTCEP,CADRT2.RTCODROT '
               +' From CADP01,CADP02,CADPRO,CADASS,CADBAI,'
               +' CADLOC,CADRT2,CADRT1 '
               +' Where P1CODEMP='+IntToStr(codemp)
               +' and P2CHAVE=P1CHAVE'
               +' and PDCODBAR=P2CODPRO'
               +' and CCODASS=P1CODASS'
               +' and BCODBAI(+)=CCODBAI AND BCODLOC=CCODLOC'
               +' and LCODLOC=CCODLOC'
               +' and RTCEP=CCEP'
               +' and CADRT1.RTCODROT=CADRT2.RTCODROT');
if CBROTA.Checked then
   begin
   if SG1.RowCount>1 then
      begin
      mqtd:=SG1.RowCount;
      for mlin:=1 to  mqtd do
          begin
          if trim(SG1.Cells[0,mlin-1])='' then
             continue;
          if mlin=1 then
             Qr_Rot.SQL.Add('and (CADRT1.RTCODROT=0'+Trim(SG1.Cells[0,mlin-1]))
          else
             Qr_Rot.SQL.Add('or  CADRT1.RTCODROT=0'+Trim(SG1.Cells[0,mlin-1]));
          end;
      if mqtd>1 then
         Qr_Rot.SQL.Add(')');
      end;
   end;
if Trim(MDT1.Text)<>'/  /' then
   Qr_Rot.SQL.Add(' and P1DATAE>='+chr(39)+MDT1.Text+CHR(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Rot.SQL.Add(' and P1DATAE<='+chr(39)+MDT2.Text+CHR(39));
Qr_Rot.SQL.Add(' Order by CADRT1.RTNOME,CADRT1.RTCODROT,CADRT2.RTORDEM,CCEP');
Qr_Rot.Open;
if Qr_Rot.Eof then
   begin
   ShowMessage('Não ha nada a ser impresso com as condições.');
   abort;
   end;
Qr_Rot.First;
mlin:=0; mpag:=0; mcodrot:=0;

fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
While not Qr_Rot.Eof do
   begin
   if mlin=0 then
      begin
      mpag:=mpag+1;
      Frm_impres.RDprint1.ImpF(01,01,insere2(dm1.Tb_EmpRAZAO.Value,' ',50),mnormal);
      Frm_Impres.Rdprint1.ImpF(01,118,'Pagina.: '+FormatFloat('0000',mpag),mnormal);
      Frm_Impres.RDprint1.ImpF(02,01,'Minuta de Entregas por Rota. ',mnormal);
      if (trim(MDT1.Text)='/  /') and (Trim(MDT2.Text)='/  /') then
         Frm_Impres.RDprint1.ImpF(02,40,'Todas as datas. ',mnormal)
      else if (Trim(MDT1.Text)='/  /') and (Trim(MDT2.Text)<>'/  /') then
         Frm_Impres.RDprint1.impf(02,40,'Ate :'+MDT2.Text+'.',mnormal)
      else if (Trim(MDT2.Text)<>'/  /') and (Trim(MDT2.Text)='/  /') then
         Frm_Impres.Rdprint1.Impf(02,40,'A partir de '+MDT1.Text,mnormal)
      else
         Frm_Impres.Rdprint1.ImpF(02,40,'Periodo de '+MDT1.Text+' a '+MDT2.Text+'.',mnormal);
      Frm_Impres.RDprint1.ImpF(02,118,'Data: '+FormatDateTime('dd/mm/yyyy',date),mnormal);
      Frm_Impres.RDprint1.ImpF(03,01,insere('=','=',80),mreduz);
      mlin:=3;
      end;
   if mcodrot<>Qr_RotRTCODROT.AsInteger then
      begin
      mlin:=mlin+1;
      Frm_Impres.Rdprint1.Impf(mlin,01,'Rota..: '+FormatFloat('00000',Qr_RotRTCODROT.Value)+
                              ' '+Qr_RotRTNOME.Value,mneg);
      mcodrot:=Qr_RotRTCODROT.AsInteger;
      mlin:=mlin+1;
      Frm_Impres.Rdprint1.Impf(mlin,01,'CEP       Bairro                 Num.Ped Nome do Associado                        Telefone Residen Celular          Telefone Coml.',mreduz);
      end;
   mlin:=mlin+1;
   Frm_Impres.RDprint1.ImpF(mlin,01,insere2(Qr_RotRTCEP.Value,' ',9)+
                                           ' '+insere2(Qr_RotBNOME.Value,' ',22)+' '+
                                           formatFloat('0000000',Qr_RotP1CHAVE.Value)+' '+
                                           insere2(Qr_RotCNOME.Value,' ',40)+' '+
                                           insere2(Qr_RotCFONERES.Value,' ',16)+' '+
                                           insere2(Qr_RotCCELULAR.Value,' ',16)+' '+
                                           insere2(Qr_RotCFONECOM.Value,' ',16),mreduz);
   Qr_Rot.Next;
   if Qr_Rot.Eof then
      begin
      mlin:=mlin+1;
      Frm_Impres.RDprint1.ImpF(mlin,01,insere2('=','=',70)+'Fim=======',mnormal);
      if Frm_Impres.RDprint1.Setup then Frm_Impres.RDprint1.Fechar;
      end
   else  if mlin>58 then
      begin
      mlin:=mlin+1;
      Frm_Impres.RDprint1.ImpF(mlin,01,insere2('=','=',70)+'Continua..',mnormal);
      mlin:=0;
      Frm_Impres.RDprint1.Novapagina;
      end;
   end;
end;

end.

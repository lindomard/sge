unit S_Codbar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,db, dbtables, func, S_DM1, Grids, DBGrids,
  Buttons, S_Cli, S_Ven, S_For, S_Tra, S_Pro,lerarq,s_lerarq_geral;

type
  TFrm_CodBar = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CB_TIPO: TComboBox;
    Label2: TLabel;
    CODIGO: TEdit;
    NOME: TEdit;
    Qr_Bar: TQuery;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Src_Bar: TDataSource;
    Qr_BarCODIGO: TFloatField;
    Qr_BarNOME: TStringField;
    Qr_BarCODBAR: TFloatField;
    Label3: TLabel;
    GRADE: TEdit;
    Label4: TLabel;
    QTDP: TEdit;
    Label5: TLabel;
    INFAD: TEdit;
    Qr_BarGRADE: TStringField;
    Qr_BarINFAD: TStringField;
    Qr_Barcodbarc: TStringField;
    Label6: TLabel;
    APARTIR: TEdit;
    Qr_BarQTD: TFloatField;
    BitBtn1: TBitBtn;
    NOMPRO: TEdit;
    Label7: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure CB_TIPOExit(Sender: TObject);
    procedure CODIGOExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure GRADEExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Qr_BarCalcFields(DataSet: TDataSet);
    procedure QTDPKeyPress(Sender: TObject; var Key: Char);
    procedure CODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure APARTIRKeyPress(Sender: TObject; var Key: Char);
    procedure QTDPExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  function fcodbemi(ptipo: Integer): Boolean;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CodBar: TFrm_CodBar;
  mapartir, mqtd, mqtdp,mqtdr: Integer;

implementation

uses SR_CodBar,Sr_CodBar2;

{$R *.dfm}

procedure TFrm_CodBar.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CodBar.CB_TIPOExit(Sender: TObject);
begin
mqtd:=CB_TIPO.ItemIndex;
CB_TIPO.Text:=CB_TIPO.Items[mqtd];
if Trim(CB_TIPO.Text)='' then
   begin
   fMensagem('Tipo Inválido!',0,['0'],0);
   CB_TIPO.SetFocus;
   end;

if (StrToInt('0'+copy(mpseg,4,2))=02) and (CB_TIPO.Text='PR') then  // Grades cores tamanhos
   begin
   label3.Visible:=True;
   GRADE.Visible   :=True;
   end
else
   begin
   label3.Visible  :=False;
   GRADE.Visible   :=False;
   end;
end;

procedure TFrm_CodBar.CODIGOExit(Sender: TObject);
begin
if Trim(CODIGO.Text)='' then
   NOME.Text:='Todos...'
else
   begin
   if CB_TIPO.Text='BC' then
      flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODIGO.Text)
   else if CB_TIPO.Text='CL' then
      flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODIGO.Text)
   else if CB_TIPO.Text='FR' then
      flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODIGO.Text)
   else if CB_TIPO.Text='TR' then
      flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',CODIGO.Text)
   else if CB_TIPO.Text='VD' then
      flqr1('VNOME','V','CADVEN','N','VCODVEN',CODIGO.Text)
   else
      flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',CODIGO.Text);
   if DM1.Query1.Eof then
      begin
      fMensagem('Código não encontrado',0,['0'],0);
      CODIGO.SetFocus;
      end
   else
      begin
      NOME.Text:=DM1.Query1.Fields[0].AsString;
      NOMPRO.Text:=DM1.Query1.Fields[0].AsString;
      end;
   end;
end;

procedure TFrm_CodBar.BitBtn2Click(Sender: TObject);
begin
fcodbemi(0);
end;

procedure TFrm_CodBar.GRADEExit(Sender: TObject);
begin
if not flcadlgc(0,1,0,CODIGO.Text,GRADE.Text,'') then
   Begin
   fMensagem('Grade não Cadastrada',0,['0'],0);
   CODIGO.SetFocus;
   end;
end;

procedure TFrm_CodBar.FormActivate(Sender: TObject);
begin
GRADE.Text    :='';
GRADE.Visible :=False;
Label3.Visible:=False;
end;

procedure TFrm_CodBar.Qr_BarCalcFields(DataSet: TDataSet);
var
mnum: String;
a: Integer;
begin
mnum:='';
if not Qr_BarGRADE.IsNull then
   begin
   For a:=1 to length(Qr_BarGRADE.Value) do
      begin
      if Qr_BarGRADE.Value[a] in ['0'..'9'] then
         mnum:=mnum+Qr_BarGRADE.Value[a];
      end;
   end;
if (Qr_BarCODBAR.IsNull) or (Qr_BarCODBAR.Value=0) then
   Qr_Barcodbarc.Value:=FormatFloat('0000000000',Qr_BarCODIGO.Value)+
   FormatFloat('00',StrtoFloat('0'+mnum))
else
   Qr_Barcodbarc.Value:=FormatFloat('0000000000',Qr_BarCODBAR.Value)+
   FormatFloat('00',StrtoFloat('0'+mnum));

end;

procedure TFrm_CodBar.QTDPKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_CodBar.CODIGOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   if CB_TIPO.Text='FR' then
      begin
         CODIGO.Text:=fChamaFor(0,'frm_Codbar',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      key:=#0;
      end
   else if CB_TIPO.Text='TR' then
      begin
      CODIGO.Text:=fChamaTra(0,'frm_Codbar',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      key:='0';
      Frm_Tra.Free;
      end
   else if CB_TIPO.Text='VD' then
      begin
      CODIGO.Text :=fChamaVen(0,'frm_Codbar',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      key:=#0;
      end
  else if CB_TIPO.Text='CL' then
      begin
      CODIGO.Text:=fChamaCli(0,'Frm_CodBar','');
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      key:=#0;
      end
   else
      begin
      CODIGO.Text:=fChamaPro(0,'Frm_Tab_Aj',key);
      if fsonumero(CODIGO.Text)>0 then
         begin
         if GRADE.Visible then
            GRADE.SetFocus
         else
            QTDP.SetFocus;
         end;
      key:=#0;
      end;
   end;
end;

procedure TFrm_CodBar.APARTIRKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_CodBar.QTDPExit(Sender: TObject);
begin
if BitBtn3.Focused then
   exit;
if ValFloat(QTDP.Text)<1 then
   begin
   MessageDlg('A quantidade tem que ser um número maior que zero!',mtWarning,[mbOk],0);
   QTDP.setfocus;
   end;
end;

procedure TFrm_CodBar.BitBtn1Click(Sender: TObject);
begin
fcodbemi(1);

end;

function TFrm_CodBar.fcodbemi(ptipo: Integer): Boolean;
var
mordem: String;
minc: String;
x: Integer;
begin
mqtd:=1;
mqtdp:=StrtoInt('0'+QTDP.Text);
mapartir:=StrtoInt('0'+APARTIR.Text);
if mqtdp<1 then
   mqtdp:=1;
DM1.SG_ASSOC.StartTransaction;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('delete from CONTAGEM');
DM1.Query1.ExecSQL;
DM1.SG_ASSOC.Commit;

for x:=1 to mqtdp do
   begin
   DM1.SG_ASSOC.StartTransaction;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('insert into CONTAGEM (CTQTD) values ('+IntToStr(x)+')');
   DM1.Query1.ExecSQL;
   DM1.SG_ASSOC.Commit;
   end;

Qr_Bar.Close;
Qr_Bar.SQL.Clear;
minc:=' where ';
if CB_TIPO.Text='BC' then
   begin
   mordem:='';
   minc:=' where ';
   Qr_Bar.SQL.Add('Select BCCODBCO as CODIGO, '
                 +iif(Trim(NOMPRO.Text)='','BCBANCO ',chr(39)+NOMPRO.Text+chr(39))+' as NOME, '
                 +chr(39)+iif(Trim(GRADE.Text)='',' ',GRADE.Text)+chr(39)+' as GRADE, '
                 +chr(39)+iif(Trim(INFAD.Text)='',' ',INFAD.Text)+chr(39)+' as INFAD, '
                 +' BCCODBCO AS CODBAR, '
                 +' (BCCODBCO-BCCODBCO)+'+IntToStr(mqtd)+' as qtd '
                 +' from CADBCO,CONTAGEM ');
   mcinst2:=fRetInstMECadastro('CADBCO','BCCODEMP',codemp);
   if trim(mcinst2)<>'' then
      begin
      Qr_Bar.SQl.add(minc+mcinst2);
      minc:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      Qr_Bar.SQl.add(minc+' BCCODBCO=0'+Trim(CODIGO.Text));
   Qr_Bar.Sql.add(' order by BCCODBCO,BCBANCO,BCCODBCO');
//   Memo1.Text:=Qr_Bar.Text;
   end
else if CB_TIPO.Text='CL' then
   begin
   mordem:='';
   minc:=' where ';
   Qr_Bar.SQL.Add('Select CCODCLI as CODIGO, '
                 +iif(Trim(NOMPRO.Text)='','CRAZAO ',chr(39)+NOMPRO.Text+chr(39))+' as NOME, '
                 +chr(39)+iif(Trim(GRADE.Text)='',' ',GRADE.Text)+chr(39)+' as GRADE, '
                 +chr(39)+iif(Trim(INFAD.Text)='',' ',INFAD.Text)+chr(39)+' as INFAD, '
                 +' CCODCLI AS CODBAR, '
                 +' (CCODCLI-CCODCLI)+'+IntToStr(mqtd)+' as qtd '
                 +' from CADCLI,CONTAGEM ');

   mcinst2:=fRetInstMECadastro('CADCLI','CCODEMP',codemp);
   if trim(mcinst2)<>'' then
      begin
      Qr_Bar.SQl.add(minc+mcinst2);
      minc:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      Qr_Bar.SQl.add(minc+' CCODCLI=0'+Trim(CODIGO.Text));
   Qr_Bar.Sql.add(' order by CCODCLI,CRAZAO,CCODCLI');
   end
else if CB_TIPO.Text='FR' then
   begin
   mordem:='';
   minc:=' where ';
   Qr_Bar.SQL.Add('Select FCODFOR as CODIGO, '
                 +iif(Trim(NOMPRO.Text)='','FRAZAO ',chr(39)+NOMPRO.Text+chr(39))+' as NOME, '
                 +chr(39)+iif(Trim(GRADE.Text)='',' ',GRADE.Text)+chr(39)+' as GRADE, '
                 +chr(39)+iif(Trim(INFAD.Text)='',' ',INFAD.Text)+chr(39)+' as INFAD, '
                 +' FCODFOR AS CODBAR, '
                 +'(FCODFOR-FCODFOR)+'+IntToStr(mqtd)+' as qtd '
                 +' from CADFOR,CONTAGEM ');
   mcinst2:=fRetInstMECadastro('CADFOR','FCODEMP',codemp);
   if trim(mcinst2)<>'' then
      begin
      Qr_Bar.SQl.add(minc+mcinst2);
      minc:=' and ';
      end;

   if Trim(CODIGO.Text)<>'' then
      Qr_Bar.SQl.add(minc+' FCODFOR=0'+Trim(CODIGO.Text));
   Qr_Bar.Sql.add(' order by FCODFOR,FRAZAO,FCODFOR');
   end
else if CB_TIPO.Text='TR' then
   begin
   mordem:='';
   minc:=' where ';
   if mqtd>1 then
      Qr_Bar.SQL.add(' union ');
   Qr_Bar.SQL.Add('Select TRCODTRA as CODIGO, '
                 +iif(Trim(NOMPRO.Text)='','TRRAZTRA ',chr(39)+NOMPRO.Text+chr(39))+' as NOME, '
                 +chr(39)+iif(Trim(GRADE.Text)='',' ',GRADE.Text)+chr(39)+' as GRADE, '
                 +chr(39)+iif(Trim(INFAD.Text)='',' ',INFAD.Text)+chr(39)+' as INFAD, '
                 +' TRCODTRA AS CODBAR, '
                 +'(TRCODTRA-TRCODTRA)+'+IntToStr(mqtd)+' as qtd '
                 +' from CADTRA,CONTAGEM ');
   mcinst2:=fRetInstMECadastro('CADTRA','TRCODEMP',codemp);
   if trim(mcinst2)<>'' then
      begin
      Qr_Bar.SQl.add(minc+mcinst2);
      minc:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      Qr_Bar.SQl.add(minc+' TRCODTRA=0'+Trim(CODIGO.Text));
   Qr_Bar.Sql.add(' order by TRCODTRA,TRRAZTRA,TRCODTRA');
   end
else if CB_TIPO.Text='VD' then
   begin
   mordem:='';
   minc:=' where ';
   if mqtd>1 then
      Qr_Bar.SQL.add(' union ');
      Qr_Bar.SQL.Add('Select VCODVEN as CODIGO, '
                 +iif(Trim(NOMPRO.Text)='','VNOME ',chr(39)+NOMPRO.Text+chr(39))+' as NOME, '
                 +chr(39)+iif(Trim(GRADE.Text)='',' ',GRADE.Text)+chr(39)+' as GRADE, '
                 +chr(39)+iif(Trim(INFAD.Text)='',' ',INFAD.Text)+chr(39)+' as INFAD, '
                 +' VCODVEN AS CODBAR, '
                 +'(VCODVEN-VCODVEN)+'+IntToStr(mqtd)+' as qtd '
                 +' from CADVEN,CONTAGEM ');
   mcinst2:=fRetInstMECadastro('CADVEN','VCODEMP',codemp);
   if trim(mcinst2)<>'' then
      begin
      Qr_Bar.SQl.add(minc+mcinst2);
      minc:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      Qr_Bar.SQl.add(minc+' VCODVEN=0'+Trim(CODIGO.Text));
   Qr_Bar.Sql.add(' order by VCODVEN,VNOME,VCODVEN');
   end
else
   begin
   minc:=' where ';
   Qr_Bar.SQL.Add('Select PDCODPRO as CODIGO, '
                 +iif(Trim(NOMPRO.Text)='','PDNOME ',chr(39)+NOMPRO.Text+chr(39))+' as NOME, '
                 +chr(39)+iif(Trim(GRADE.Text)='',' ',GRADE.Text)+chr(39)+' as GRADE, '
                 +chr(39)+iif(Trim(INFAD.Text)='',' ',INFAD.Text)+chr(39)+' as INFAD, '
                  +' PDCODBAR AS CODBAR, '
                 +'(PDCODPRO-PDCODPRO)+'+IntToStr(mqtd)+' as qtd '
                 +' from CADPRO,CONTAGEM ');
   mcinst2:=fRetInstMECadastro('CADPRO','PDCODEMP',codemp);
   if trim(mcinst2)<>'' then
      begin
      Qr_Bar.SQl.add(minc+mcinst2);
      minc:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      Qr_Bar.SQl.add(minc+' PDCODPRO=0'+Trim(CODIGO.Text));
   Qr_Bar.Sql.add(' order by PDCODPRO,PDNOME,PDCODBAR');
   end;
//Qr_Bar.sql.savetofile(mpastatemp + 'SQLcodbar.txt');

try
   Qr_Bar.Open;
except
   Qr_Bar.sql.savetofile(mpastatemp + 'SQLcodbar.txt');
   end;
if Qr_Bar.Eof then
   begin
   fMensagem('Nada a ser impresso.',0,['0'],0);
   exit;
   end;
mqtdr:=Qr_Bar.RecordCount;
mqtd:=0;
if ptipo=0 then
   begin
   if Qr_CodBar=nil then
      Application.CreateForm(TQr_CodBar, Qr_Codbar)
   else
      begin
      Qr_CodBar.Free;
      Qr_CodBar:=nil;
      Application.CreateForm(TQr_CodBar, Qr_Codbar)
      end;
   verteclado(0);
   Qr_CodBar.PreviewModal;
   Qr_CodBar.Free;
   Qr_CodBar:=nil;
   end
else
   begin
   if Qr_CodBar2=nil then
      Application.CreateForm(TQr_CodBar2, Qr_CodBar2)
   else
      begin
      Qr_CodBar2.Free;
      Qr_CodBar2:=nil;
      Application.CreateForm(TQr_CodBar2, Qr_CodBar2);
      end;
   verteclado(0);
   Qr_CodBar2.PreviewModal;
   Qr_CodBar2.Free;
   Qr_CodBar2:=nil;
   end;

result:=True;

end;

procedure TFrm_CodBar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
  Action := caFree;end;

end.

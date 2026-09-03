unit S_MedVenPgt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,lerarq,func,S_DM5, Mask, DBCtrls, dbcgrids,
  DB, DBTables, Buttons,S_DM4,S_DM1,S_RCrec,S_Impres;

type
  TFrm_MedVenPgt = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Tb_Titulos: TQuery;
    Tb_Documentos: TQuery;
    Src_titulos: TDataSource;
    Src_Documentos: TDataSource;
    DBCtrlGrid1: TDBCtrlGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Tb_TitulosVALOR: TFloatField;
    Tb_TitulosDATA_DOC: TDateField;
    U_Titulos: TUpdateSQL;
    Tb_DocumentosVALOR: TFloatField;
    Tb_DocumentosDATA_DOC: TDateField;
    U_Documentos: TUpdateSQL;
    DBCtrlGrid2: TDBCtrlGrid;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    GroupBox4: TGroupBox;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    CODVEN: TEdit;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    CODCLI: TEdit;
    GroupBox5: TGroupBox;
    bbImportar: TBitBtn;
    StaticText9: TStaticText;
    QTDP: TEdit;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    INTERV: TEdit;
    bbInserir: TBitBtn;
    StaticText12: TStaticText;
    st_dtvcto: TStaticText;
    StaticText13: TStaticText;
    st_datadoc: TStaticText;
    StaticText14: TStaticText;
    QTDDIAS: TEdit;
    StaticText15: TStaticText;
    JURM: TEdit;
    st_valjur: TStaticText;
    bbSair: TBitBtn;
    st_tottit: TStaticText;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    st_totdoc: TStaticText;
    MDATAINI: TMaskEdit;
    spnCalcular: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    StaticText4: TStaticText;
    StaticText3: TStaticText;
    Panel5: TPanel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText18: TStaticText;
    st_tottit2: TStaticText;
    StaticText20: TStaticText;
    st_totdoc2: TStaticText;
    StaticText19: TStaticText;
    st_totjur: TStaticText;
    StaticText21: TStaticText;
    st_saldo: TStaticText;
    bbImprimir: TBitBtn;
    Panel6: TPanel;
    Label1: TLabel;
    OBS: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Tb_TitulosBeforePost(DataSet: TDataSet);
    procedure Tb_TitulosAfterPost(DataSet: TDataSet);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure bbImportarClick(Sender: TObject);
    procedure Tb_DocumentosAfterPost(DataSet: TDataSet);
    procedure Tb_DocumentosBeforePost(DataSet: TDataSet);
    procedure bbSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Tb_TitulosBeforeEdit(DataSet: TDataSet);
    procedure Tb_TitulosAfterCancel(DataSet: TDataSet);
    procedure Tb_TitulosBeforeDelete(DataSet: TDataSet);
    procedure Tb_DocumentosAfterCancel(DataSet: TDataSet);
    procedure Tb_DocumentosBeforeDelete(DataSet: TDataSet);
    procedure Tb_DocumentosBeforeEdit(DataSet: TDataSet);
    procedure DBCtrlGrid1Exit(Sender: TObject);
    procedure DBCtrlGrid2Exit(Sender: TObject);
    procedure JURMKeyPress(Sender: TObject; var Key: Char);
    procedure JURMExit(Sender: TObject);
    procedure bbInserirClick(Sender: TObject);
    procedure QTDPExit(Sender: TObject);
    procedure INTERVExit(Sender: TObject);
    procedure MDATAINIExit(Sender: TObject);
    procedure spnCalcularClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function fCalcular(pTipo: Integer): Boolean;
  public
    form_impres_MedVenPgt : tFrm_Impres;

    { Public declarations }
  end;

var
  Frm_MedVenPgt: TFrm_MedVenPgt;
  mtabtemp01: String;
  mtabtemp02: String;
  mtottit: Real;
  mPesoTit: Real;
  mPesoDoc: Real;
  mtotdoc: Real;
  mValor: Real;
  mqtdia_ant, mqtdd: Real;
  mdataRef:  TdateTime;
implementation


{$R *.dfm}

procedure TFrm_MedVenPgt.FormCreate(Sender: TObject);
begin
flcadpar01(0,codemp,'1');
JURM.Text:=FormatFloat(mcasas, DM4.Tb_Par01PJURM.Value);
mtottit   :=0;
mtotdoc   :=0;
mvalor    :=0;
mqtdia_ant:=0;
mqtdd     :=0;
mPesoTit  :=0;
mPesoDoc  :=0;
mdataRef:=StrToDate('01/01/1980');
st_tottit.Caption:=Formatfloat(mcasas, mtottit);
st_totdoc.Caption:=Formatfloat(mcasas, mtotdoc);

st_tottit2.Caption:=Formatfloat(mcasas, mtottit);
st_totdoc2.Caption:=Formatfloat(mcasas, mtotdoc);

mtabtemp01:=fProcTemp(12);
DM5.Query1.Close;
DM5.Query1.SQL.Clear;
DM5.Query1.SQL.Add('CREATE TABLE '+mtabtemp01+' ('
                     +'VALOR '+pTmpcFloat
                     +', DATA_DOC '+pTmpcData
                     +')');
try
   DM5.Query1.ExecSQL;
except
   end;
mtabtemp02:=fProcTemp(13);
DM5.Query1.Close;
DM5.Query1.SQL.Clear;
DM5.Query1.SQL.Add('CREATE TABLE '+mtabtemp02+' ('
                     +'VALOR '+pTmpcFloat
                     +', DATA_DOC '+pTmpcData
                     +')');
try
   DM5.Query1.ExecSQL;
except
   end;
Tb_Titulos.Close;
Tb_Titulos.SQL.Clear;
Tb_Titulos.SQL.Add('Select * from '+mtabtemp01);
Tb_Titulos.Open;
Tb_TitulosVALOR.DisplayFormat:=mcasas;
Tb_TitulosDATA_DOC.DisplayFormat:=fdt2;
Tb_TitulosDATA_DOC.EditMask     :=pEditMascData;


Tb_Documentos.Close;
Tb_Documentos.SQL.Clear;
Tb_Documentos.SQL.Add('Select * from '+mtabtemp02);
Tb_Documentos.Open;
Tb_DocumentosVALOR.DisplayFormat:=mcasas;
Tb_DocumentosDATA_DOC.DisplayFormat:=fdt2;
Tb_DocumentosDATA_DOC.EditMask     :=pEditMascData;

end;

procedure TFrm_MedVenPgt.Tb_TitulosBeforePost(DataSet: TDataSet);
begin
if (Tb_TitulosDATA_DOC.IsNull) or (Tb_TitulosVALOR.IsNull) then
   begin
   Tb_Titulos.Cancel;
   abort;
   end;
end;

procedure TFrm_MedVenPgt.Tb_TitulosAfterPost(DataSet: TDataSet);
begin

mqtdd   :=Tb_TitulosDATA_DOC.Value-mdataRef;
mPesoTit:=mPesoTit-(mvalor*mqtdia_ant);
mPesoTit:=mPesoTit+(Tb_TitulosVALOR.Value*mqtdd);
mtottit:=mtottit+Tb_TitulosVALOR.Value-mValor;
st_tottit.Caption:=Formatfloat(mcasas, mtottit);
st_tottit2.Caption:=Formatfloat(mcasas, mtottit);

mvalor:=mPesoTit/mtottit;
mValor:=round(mValor);
st_dtvcto.Caption:=FormatDatetime(fdt2, mdataRef+mValor);
if (mtotdoc>0) and (mtottit>0) then
   begin
   try
      mValor:=StrtoDate(st_datadoc.Caption)-StrtoDate(st_dtvcto.Caption);
   except
      mvalor:=0;
      end;
   if mvalor<>0 then
      begin
      mValor:=round(mvalor);
      QTDDIAS.Text :=FloatToStr(mValor);
      if (mvalor>0) and (valfloat(JURM.Text)<>0) then
         begin
         st_valjur.Caption:='Valor dos Juros: '+FormatFloat(mcasas, ( (mtottit*valFloat(JURM.Text)/100 )/30)*mValor);
         st_totjur.Caption:=FormatFloat(mcasas, ( (mtottit*valFloat(JURM.Text)/100 )/30)*mValor);
         end
      else
         begin
         st_valjur.Caption:='Valor dos Juros: '+Formatfloat(mcasas, 0);
         st_totjur.Caption:=FormatFloat(mcasas, 0);
         end;
      end;
   end;
fCalcular(0);
mvalor:=0;
Tb_Titulos.Append;

end;

procedure TFrm_MedVenPgt.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_MedVenPgt.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_MedVenPgt.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if not flqr1('VNOME','V','CADVEN','N','VCODVEN',CODVEN.Text) then
      begin
      MessageDlg('Vendedor não Cadastrado!',mtWarning,[mbOk],0);
      CODVEN.Text:='';
      end;
   end;

end;

procedure TFrm_MedVenPgt.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODCLI.Text) then
      begin
      MessageDlg('Cliente não Cadastrado!',mtWarning,[mbOk],0);
      CODCLI.Text:='';
      end;
   end;


end;

procedure TFrm_MedVenPgt.bbImportarClick(Sender: TObject);
begin
if (Trim(MDT1.Text)<>'/  /') and
   (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrtoDate(MDT1.text) then
      begin
      Messagedlg('Data Inicial Maior que final. Inválido!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
Application.CreateForm(tFrm_RCrec, Frm_RCrec);
Frm_RCRec.MDT1.Text  :=MDT1.Text;
Frm_RCRec.MDT2.Text  :=MDT2.Text;
Frm_RcRec.CODCLI.Text:=CODCLI.Text;
Frm_RcRec.CODVEN.Text:=CODVEN.Text;
if Trim(CODVEN.Text)<>'' then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',CODVEN.Text) then
      begin
      Frm_RCRec.lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      end;
   end;
if Trim(CODCLI.Text)<>'' then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODCLI.Text) then
      begin
      Frm_RCRec.lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      end;
   end;
Frm_RcRec.ShowModal;

if not Frm_RCRec.Qr_CRec.IsEmpty then
   begin
   Frm_RCRec.Qr_CRec.First;
   mtottit :=0;
   mPesoTit:=0;
   Tb_Titulos.Close;
   Tb_Titulos.Open;
   While not Frm_RCRec.Qr_CRec.Eof do
      begin
      Tb_Titulos.Append;
      Tb_TitulosVALOR.Value   :=Frm_RCRec.Qr_CRecCRVALOR.Value;
      Tb_TitulosDATA_DOC.Value:=Frm_RCRec.Qr_CRecCRDTVCTO.Value;
      Tb_Titulos.Post;
      Frm_RCRec.Qr_CRec.Next;
      end;
   end;
Frm_RcRec.Free;
end;

procedure TFrm_MedVenPgt.Tb_DocumentosAfterPost(DataSet: TDataSet);
begin
mqtdd   :=Tb_DocumentosDATA_DOC.Value-mdataRef;
mPesoDoc:=mPesoDoc-(mvalor*mqtdia_ant);
mPesoDoc:=mPesoDoc+(Tb_DocumentosVALOR.Value*mqtdd);

mtotdoc:=mtotdoc+Tb_DocumentosVALOR.Value-mValor;
st_totdoc.Caption:=Formatfloat(mcasas, mtotdoc);
st_totdoc2.Caption:=Formatfloat(mcasas, mtotdoc);

mvalor:=mPesoDoc/mtotdoc;
mValor:=round(mValor);
st_datadoc.Caption:=FormatDatetime(fdt2, mdataRef+mValor);
if (mtotdoc>0) and (mtottit>0) then
   begin
   try
      mValor:=StrtoDate(st_datadoc.Caption)-StrtoDate(st_dtvcto.Caption);
   except
      mvalor:=0;
      end;
   if mvalor<>0 then
      begin
      mValor:=round(mvalor);
      QTDDIAS.Text :=FloatToStr(mValor);
      if (mvalor>0) and (valfloat(JURM.Text)<>0) then
         begin
         st_valjur.Caption:='Valor dos Juros: '+FormatFloat(mcasas, ( (mtottit*valFloat(JURM.Text)/100 )/30)*mValor);
         st_totjur.Caption:=FormatFloat(mcasas, ( (mtottit*valFloat(JURM.Text)/100 )/30)*mValor);
         end
      else
         begin
         st_valjur.Caption:='Valor dos Juros: '+Formatfloat(mcasas, 0);
         st_totjur.Caption:=FormatFloat(mcasas, 0);
         end;
      end;
   end;
fCalcular(0);
mvalor:=0;
Tb_Documentos.Append;

end;

procedure TFrm_MedVenPgt.Tb_DocumentosBeforePost(DataSet: TDataSet);
begin
if (Tb_DocumentosDATA_DOC.IsNull) or (Tb_DocumentosVALOR.IsNull) then
   begin
   Tb_Documentos.Cancel;
   abort;
   end;

end;

procedure TFrm_MedVenPgt.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_MedVenPgt.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
Tb_Titulos.Close;
Tb_Documentos.Close;
fdeletaTemp(mtabtemp01);
fdeletaTemp(mtabtemp02);
//DeleteFile('C:\SGE\TEMP\'+mtabtemp01+'.db');
//DeleteFile('C:\SGE\TEMP\'+mtabtemp02+'.db');

end;

procedure TFrm_MedVenPgt.Tb_TitulosBeforeEdit(DataSet: TDataSet);
begin
mValor:=Tb_TitulosVALOR.Value;
mqtdia_ant:=Tb_TitulosDATA_DOC.Value-mdataRef;
end;

procedure TFrm_MedVenPgt.Tb_TitulosAfterCancel(DataSet: TDataSet);
begin
mValor    :=0;
mqtdia_ant:=0;
end;

procedure TFrm_MedVenPgt.Tb_TitulosBeforeDelete(DataSet: TDataSet);
begin
mqtdd:=Tb_TitulosDATA_DOC.Value-mdataRef;
mPesoTit:=mPesoTit-(Tb_TitulosVALOR.Value*mqtdd);
mtottit:=mtottit-Tb_TitulosVALOR.Value;
st_tottit.Caption:=Formatfloat(mcasas, mtottit);
st_tottit2.Caption:=Formatfloat(mcasas, mtottit);
mvalor:=mPesoTit/mtottit;
mValor:=round(mValor);
st_dtvcto.Caption:=FormatDatetime(fdt2, mdataRef+mValor);

if (mtotdoc>0) and (mtottit>0) then
   begin
   try
      mValor:=StrtoDate(st_datadoc.Caption)-StrtoDate(st_dtvcto.Caption);
   except
      mvalor:=0;
      end;
   if mvalor<>0 then
      begin
      mValor:=round(mvalor);
      QTDDIAS.Text :=FloatToStr(mValor);
      if (mvalor>0) and (valfloat(JURM.Text)<>0) then
         begin
         st_valjur.Caption:='Valor dos Juros: '+FormatFloat(mcasas, ( (mtottit*valFloat(JURM.Text)/100 )/30)*mValor);
         st_totjur.Caption:=FormatFloat(mcasas, ( (mtottit*valFloat(JURM.Text)/100 )/30)*mValor);

         end
      else
         begin
         st_valjur.Caption:='Valor dos Juros: '+Formatfloat(mcasas, 0);
         st_totjur.Caption:=FormatFloat(mcasas, 0);
         end;

      end;
   end;

fCalcular(0);

end;

procedure TFrm_MedVenPgt.Tb_DocumentosAfterCancel(DataSet: TDataSet);
begin
mValor    :=0;
mqtdia_ant:=0;

end;

procedure TFrm_MedVenPgt.Tb_DocumentosBeforeDelete(DataSet: TDataSet);
begin

mqtdd:=Tb_DocumentosDATA_DOC.Value-mdataRef;
mPesoDoc:=mPesoDoc-(Tb_DocumentosVALOR.Value*mqtdd);

mtotdoc:=mtotdoc-Tb_DocumentosVALOR.Value;
st_totdoc.Caption:=Formatfloat(mcasas, mtotdoc);
st_totdoc2.Caption:=Formatfloat(mcasas, mtotdoc);
mvalor:=mPesoDoc/mtotdoc;
mValor:=round(mValor);
st_datadoc.Caption:=FormatDatetime(fdt2, mdataRef+mValor);
if (mtotdoc>0) and (mtottit>0) then
   begin
   try
      mValor:=StrtoDate(st_datadoc.Caption)-StrtoDate(st_dtvcto.Caption);
   except
      mvalor:=0;
      end;
   if mvalor<>0 then
      begin
      mValor:=round(mvalor);
      QTDDIAS.Text :=FloatToStr(mValor);
      if (mvalor>0) and (valfloat(JURM.Text)<>0) then
         begin
         st_valjur.Caption:='Valor dos Juros: '+FormatFloat(mcasas, ( (mtottit*valFloat(JURM.Text)/100 )/30)*mValor);
         st_totjur.Caption:=FormatFloat(mcasas, ( (mtottit*valFloat(JURM.Text)/100 )/30)*mValor);
         end
      else
         begin
         st_valjur.Caption:='Valor dos Juros: '+Formatfloat(mcasas, 0);
         st_totjur.Caption:=FormatFloat(mcasas, 0);
         end;

      end;
   end;
fCalcular(0);

end;

procedure TFrm_MedVenPgt.Tb_DocumentosBeforeEdit(DataSet: TDataSet);
begin
mValor    :=Tb_DocumentosVALOR.Value;
mqtdia_ant:=Tb_DocumentosDATA_DOC.Value-mdataRef;

end;

procedure TFrm_MedVenPgt.DBCtrlGrid1Exit(Sender: TObject);
begin
if Tb_Titulos.State in [dsInsert, dsEdit] then
   begin
   if (Tb_TitulosVALOR.IsNull) or (Tb_TitulosDATA_DOC.IsNull) then
      Tb_Titulos.Cancel
   else
      Tb_Titulos.Post;
   end;
end;

procedure TFrm_MedVenPgt.DBCtrlGrid2Exit(Sender: TObject);
begin
if Tb_Documentos.State in [dsInsert, dsEdit] then
   begin
   if (Tb_DocumentosVALOR.IsNull) or (Tb_DocumentosDATA_DOC.IsNull) then
      Tb_Documentos.Cancel
   else
      Tb_Documentos.Post;
   end;

end;

procedure TFrm_MedVenPgt.JURMKeyPress(Sender: TObject; var Key: Char);
begin
if key in [',','.'] then key:=DecimalSeparator;
end;

procedure TFrm_MedVenPgt.JURMExit(Sender: TObject);
begin
JURM.Text:=FormatFloat(mcasas, ValFloat(JURM.Text));

if (mtotdoc>0) and (mtottit>0) then
   begin
   try
      mValor:=StrtoDate(st_datadoc.Caption)-StrtoDate(st_dtvcto.Caption);
   except
      mvalor:=0;
      end;
   if mvalor<>0 then
      begin
      mValor:=round(mvalor);
      QTDDIAS.Text :=FloatToStr(mValor);
      if (mvalor>0) and (valfloat(JURM.Text)<>0) then
         begin
         st_valjur.Caption:='Valor dos Juros: '+FormatFloat(mcasas, ( (mtottit*valFloat(JURM.Text)/100 )/30)*mValor);
         st_totjur.Caption:=FormatFloat(mcasas, ( (mtottit*valFloat(JURM.Text)/100 )/30)*mValor);
         end
      else
         begin
         st_valjur.Caption:='Valor dos Juros: '+Formatfloat(mcasas, 0);
         st_totjur.Caption:=FormatFloat(mcasas, 0);
         end;

      end;
   end;

fCalcular(0);
end;

procedure TFrm_MedVenPgt.bbInserirClick(Sender: TObject);
var
mvaldoc, mdif: Real;
mdatadoc: TDateTime;
mqtdp, x: Integer;
begin
if Tb_Titulos.RecordCount<=0 then
   begin
   MessageDlg('Favor Digitar Primeiro os Títulos!',mtWarning,[mbOk],0);
   exit;
   end;
if Trim(MDATAINI.Text)='/  /' then
   begin
   MessageDlg('Data Inicial tem que ser colocada!',mtWarning,[mbOk],0);
   MDATAINI.SetFocus;
   exit;
   end;
if ValInt(QTDP.Text)=0 then
   begin
   MessageDlg('Quantidade de prazos tem que ser colocado!',mtWarning,[mbOk],0);
   QTDP.SetFocus;
   exit;
   end;
if ValInt(INTERV.Text)=0 then
   begin
   MessageDlg('Intervalo tem que ser colocado!',mtWarning,[mbOk],0);
   INTERV.SetFocus;
   exit;
   end;
mqtdp:=valint(QTDP.Text);
mvaldoc:=mtottit/mqtdp;
mvaldoc:=Arredonda(mvaldoc,DM1.Tb_PargerPCASAS.AsInteger);
mdif   :=mvaldoc*mqtdp;
mdif   :=mtottit-mdif;
mdatadoc:=StrToDate(MDATAINI.Text);
mtotdoc :=0;
mPesoDoc:=0;

Tb_Documentos.Close;
Tb_Documentos.Open;
Tb_Documentos.Append;
Tb_DocumentosDATA_DOC.Value:=mdatadoc;
Tb_DocumentosVALOR.Value   :=mvaldoc+mdif;
Tb_Documentos.Post;
mdif:=0;
for x:=2 to mqtdp do
   begin
   Tb_Documentos.Append;
   mdatadoc:=mdatadoc+ValInt(INTERV.Text);
   Tb_DocumentosDATA_DOC.Value:=mdatadoc;
   Tb_DocumentosVALOR.Value   :=mvaldoc+mdif;
   Tb_Documentos.Post;
   end;
Tb_Documentos.Cancel;   

end;

procedure TFrm_MedVenPgt.QTDPExit(Sender: TObject);
begin
QTDP.Text:=fdeixanum2(QTDP.Text);
end;

procedure TFrm_MedVenPgt.INTERVExit(Sender: TObject);
begin
INTERV.Text:=fdeixanum2(INTERV.Text);
end;

procedure TFrm_MedVenPgt.MDATAINIExit(Sender: TObject);
begin
if Trim(MDATAINI.Text)<>'/  /' then
   begin
   Try
      MDATAINI.Text:=FormatDateTime(fdt2,StrtoDate(MDATAINI.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDATAINI.SetFocus;
      end;
   end;

end;

procedure TFrm_MedVenPgt.spnCalcularClick(Sender: TObject);
begin
mqtdd    :=0;
mPesoTit :=0;
mtottit   :=0;
Tb_Titulos.First;
While not Tb_Titulos.Eof do
   begin
   mqtdd   :=Tb_TitulosDATA_DOC.Value-mdataRef;
   mPesoTit:=mPesoTit+(Tb_TitulosVALOR.Value*mqtdd);
   mtottit:=mtottit+Tb_TitulosVALOR.Value;
   Tb_Titulos.Next;
   end;
st_tottit.Caption:=Formatfloat(mcasas, mtottit);
st_tottit2.Caption:=Formatfloat(mcasas, mtottit);
if (mPesoTit<>0) and (mtottit<>0) then
   mvalor:=mPesoTit/mtottit
else
   mvalor:=0;
mValor:=round(mValor);
if mvalor=0 then
   st_dtvcto.Caption:='/  /'
else
   st_dtvcto.Caption:=FormatDatetime(fdt2, mdataRef+mValor);


mqtdd    :=0;
mPesoDoc :=0;
mtotdoc  :=0;




Tb_Documentos.First;
While not Tb_Documentos.Eof do
   begin
   mqtdd:=Tb_DocumentosDATA_DOC.Value-mdataRef;
   mPesoDoc:=mPesoDoc+(Tb_DocumentosVALOR.Value*mqtdd);
   mtotdoc:=mtotdoc+Tb_DocumentosVALOR.Value;
   Tb_Documentos.Next;
   end;
st_totdoc.Caption:=Formatfloat(mcasas, mtotdoc);
st_totdoc2.Caption:=Formatfloat(mcasas, mtotdoc);

if (mPesoDoc<>0) and (mtotdoc<>0) then
   mvalor:=mPesoDoc/mtotdoc
else
   mvalor:=0;
mValor:=round(mValor);
if mvalor=0 then
   st_datadoc.Caption:='/  /'
else
   st_datadoc.Caption:=FormatDatetime(fdt2, mdataRef+mValor);

if (mtotdoc>0) and (mtottit>0) then
   begin
   try
      mValor:=StrtoDate(st_datadoc.Caption)-StrtoDate(st_dtvcto.Caption);
   except
      mvalor:=0;
      end;
   if mvalor<>0 then
      begin
      mValor:=round(mvalor);
      QTDDIAS.Text :=FloatToStr(mValor);
      if (mvalor>0) and (valfloat(JURM.Text)<>0) then
         begin
         st_valjur.Caption:='Valor dos Juros: '+FormatFloat(mcasas, ( (mtottit*valFloat(JURM.Text)/100 )/30)*mValor);
         st_totjur.Caption:=FormatFloat(mcasas, ( (mtottit*valFloat(JURM.Text)/100 )/30)*mValor);
         end
      else
         begin
         st_valjur.Caption:='Valor dos Juros: '+Formatfloat(mcasas, 0);
         st_totjur.Caption:=FormatFloat(mcasas, 0);
         end;
      end;
   end;

fCalcular(0);

end;

function TFrm_MedVenPgt.fCalcular(pTipo: Integer): Boolean;
begin
st_saldo.Caption:=Formatfloat(mcasas, (ValFloat(st_tottit.Caption)+ValFloat(st_totjur.Caption))
                                     -ValFloat(st_totdoc.Caption) );

result:=true;

end;

procedure TFrm_MedVenPgt.bbImprimirClick(Sender: TObject);

begin
if not Tb_Titulos.Active then
   begin
   fmensagem('Favor Digitar os dados!',0,['0'],0);
   Exit;
   end;
if not Tb_Documentos.Active then
   begin
   fmensagem('Favor Digitar os dados!',0,['0'],0);
   Exit;
   end;
if Tb_Titulos.IsEmpty then
   begin
   fmensagem('Favor Digitar os titulos!',0,['0'],0);
   Exit;
   end;
if Tb_Documentos.IsEmpty then
   begin
   fmensagem('Favor Digitar os documentos!',0,['0'],0);
   Exit;
   end;


Tb_Documentos.First;
Tb_Titulos.First;
testeform := TFrm_MedVenPgt(FindGlobalComponent('form_impres_MedVenPgt'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_MedVenPgt);

form_impres_MedVenPgt.fimpresajustaimp(2,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP

form_impres_MedVenPgt.mlin:=0;
form_impres_MedVenPgt.mpag:=0;






While not ((Tb_Titulos.Eof) and (Tb_Documentos.Eof)) do
   begin
   if form_impres_MedVenPgt.mlin=0 then
      begin
      form_impres_MedVenPgt.mpag:=form_impres_MedVenPgt.mpag+1;
      form_impres_MedVenPgt.RDprint1.ImpF(01,01,FormatDatetime(fdt2, date)+centra(DM1.Tb_EmpRAZAO_CAB.AsString,' ',78)+FormatDatetime(fhr, time),m12ccp);
      form_impres_MedVenPgt.RDprint1.ImpF(02,01,insere2('Relatorio das Medias de pagamentos e Vencimentos de titulos.',' ',80)+'Pagina: '+FormatFloat('0000',form_impres_MedVenPgt.mpag),m12ccp);
      form_impres_MedVenPgt.RDprint1.ImpF(03,01,insere2('=','=',96),m12ccp);
      form_impres_MedVenPgt.mlin:=3;
      if trim(OBS.Text)<>'' then
         begin
         form_impres_MedVenPgt.mlin:=form_impres_MedVenPgt.mlin+1;
         form_impres_MedVenPgt.RDprint1.ImpF(form_impres_MedVenPgt.mlin,01,centra(OBS.Text,' ',80),mneg);
         end;
      form_impres_MedVenPgt.mlin:=form_impres_MedVenPgt.mlin+1;
      form_impres_MedVenPgt.RDprint1.impf(form_impres_MedVenPgt.mlin,01,'+-------------------------+  +-------------------------+',m12ccp);
      form_impres_MedVenPgt.mlin:=form_impres_MedVenPgt.mlin+1;
      form_impres_MedVenPgt.RDprint1.impf(form_impres_MedVenPgt.mlin,01,'|    TITULOS DIGITADOS    |  |  DOCUMENTOS DIGITADOS   |',m12ccp);
      form_impres_MedVenPgt.mlin:=form_impres_MedVenPgt.mlin+1;
      form_impres_MedVenPgt.RDprint1.impf(form_impres_MedVenPgt.mlin,01,'+-------------------------+  +-------------------------+',m12ccp);
      end;
   form_impres_MedVenPgt.mlin:=form_impres_MedVenPgt.mlin+1;
   if not Tb_Titulos.eof then
      begin
      form_impres_MedVenPgt.RDprint1.ImpF(form_impres_MedVenPgt.mlin,01,'|'+insere(Formatfloat(mcasas, Tb_TitulosVALOR.Value),' ',14)
                                      +'|'+FormatDatetime(fdt2, Tb_TitulosDATA_DOC.Value)+'|',m12ccp);
      Tb_Titulos.Next;
      if Tb_Titulos.Eof then
         form_impres_MedVenPgt.RDprint1.ImpF(form_impres_MedVenPgt.mlin+1,01,'+--------------+----------+',m12ccp);
      end;


   if not Tb_Documentos.eof then
      begin
      form_impres_MedVenPgt.RDprint1.ImpF(form_impres_MedVenPgt.mlin,30,'|'
                              +insere(Formatfloat(mcasas, Tb_DocumentosVALOR.Value),' ',14)
                              +'|'+FormatDatetime(fdt2, Tb_DocumentosDATA_DOC.Value)+'|',m12ccp);
      Tb_Documentos.Next;
      if Tb_Documentos.Eof then
         form_impres_MedVenPgt.RDprint1.ImpF(form_impres_MedVenPgt.mlin+1,30,'+--------------+----------+',m12ccp);
      end;
   if (not Tb_Documentos.Eof) and (not Tb_Titulos.Eof) then
      begin
      if form_impres_MedVenPgt.mlin>57 then
         begin
         form_impres_MedVenPgt.mlin:=form_impres_MedVenPgt.mlin+1;
         if not Tb_Titulos.Eof then
            form_impres_MedVenPgt.RDprint1.ImpF(form_impres_MedVenPgt.mlin+1,01,'+--------------+----------+',m12ccp);
         if not Tb_Documentos.Eof then
            form_impres_MedVenPgt.RDprint1.ImpF(form_impres_MedVenPgt.mlin+1,30,'+--------------+----------+',m12ccp);
         form_impres_MedVenPgt.RDprint1.Novapagina;
         form_impres_MedVenPgt.mlin:=0;
         end;
      end;
   end;

form_impres_MedVenPgt.mlin:=3;
if trim(OBS.Text)<>'' then
   form_impres_MedVenPgt.mlin:=form_impres_MedVenPgt.mlin+1;
form_impres_MedVenPgt.mlin:=form_impres_MedVenPgt.mlin+1;
form_impres_MedVenPgt.RDprint1.impf(form_impres_MedVenPgt.mlin,58,'Media dos Vencimentos: '+st_dtvcto.Caption,m12ccp);
form_impres_MedVenPgt.mlin:=form_impres_MedVenPgt.mlin+1;
form_impres_MedVenPgt.RDprint1.impf(form_impres_MedVenPgt.mlin,58,'Media dos Pagamentos.: '+st_datadoc.Caption,m12ccp);
form_impres_MedVenPgt.mlin:=form_impres_MedVenPgt.mlin+2;
form_impres_MedVenPgt.RDprint1.impf(form_impres_MedVenPgt.mlin,58,'Total dos Titulos....: '+insere(st_tottit.Caption,' ',16),m12ccp);
form_impres_MedVenPgt.mlin:=form_impres_MedVenPgt.mlin+1;
form_impres_MedVenPgt.RDprint1.impf(form_impres_MedVenPgt.mlin,58,'Total dos Pagamentos.: '+insere(st_totdoc.Caption,' ',16),m12ccp);
form_impres_MedVenPgt.mlin:=form_impres_MedVenPgt.mlin+1;
form_impres_MedVenPgt.RDprint1.impf(form_impres_MedVenPgt.mlin,58,'Total dos Juros......: '+insere(st_totjur.Caption,' ',16),m12ccp);
form_impres_MedVenPgt.mlin:=form_impres_MedVenPgt.mlin+1;
form_impres_MedVenPgt.RDprint1.impf(form_impres_MedVenPgt.mlin,58,'Total Restante.......: '+insere(st_saldo.Caption,' ',16),m12ccp);

form_impres_MedVenPgt.mlin:=form_impres_MedVenPgt.mlin+2;
form_impres_MedVenPgt.RDprint1.impf(form_impres_MedVenPgt.mlin,58,'Dias Entre Datas.....: '+insere(QTDDIAS.Text,' ',16),m12ccp);
form_impres_MedVenPgt.mlin:=form_impres_MedVenPgt.mlin+1;
form_impres_MedVenPgt.RDprint1.impf(form_impres_MedVenPgt.mlin,58,'% de Juros ao Mes....: '+insere(JURM.Text,' ',16),m12ccp);
form_impres_MedVenPgt.mlin:=form_impres_MedVenPgt.mlin+1;
form_impres_MedVenPgt.RDprint1.impf(form_impres_MedVenPgt.mlin,58,st_valjur.Caption,m12ccp);
if form_impres_MedVenPgt.RDprint1.Setup then form_impres_MedVenPgt.RDprint1.Fechar;
form_impres_MedVenPgt.free;
form_impres_MedVenPgt:=nil;

{
+-------------------------+  +-------------------------+ Media dos Vencimentos: 10/09/2007
|    TITULOS DIGITADOS    |  |  DOCUMENTOS DIGITADOS   | Media dos Pagamentos.: 10/09/2007
+--------------+----------+  +--------------+----------+
|     VALOR    | DT.VCTO. |  |     VALOR    | DT.PGTO. | Total dos Titulos....: zzzzz.zzz.zz9,99
|zzz.zzz.zz9,99|10/09/2007|  |zzz.zzz.zz9,99|10/09/2007| Total dos documentos.: zzzzz.zzz.zz9,99
+--------------+----------+  +--------------+----------+ Total dos Juros......: zzzzz.zzz.zz9,99
                                                         Total Restante.......: zzzzz.zzz.zz9,99

                                                         Dias Entre Datas.....: z.zz9,99
                                                         % de Juros ao Mes....: z.zz9,99
                                                         Dias Entre Datas.....: z.zz9,99
                                                         Valor dos Juross.....: z.zz9,99





|     VALOR    | DT.VCTO. |  |     VALOR    | DT.PGTO. | Total dos Titulos....: zzzzz.zzz.zz9,99
|zzz.zzz.zz9,99|10/09/2007|  |zzz.zzz.zz9,99|10/09/2007| Total dos documentos.: zzzzz.zzz.zz9,99




+-------------------------+  +-------------------------+ Media dos Vencimentos: 10/09/2007
|    TITULOS DIGITADOS    |  |  DOCUMENTOS DIGITADOS   | Media dos Pagamentos.: 10/09/2007
+--------------+----------+  +--------------+----------+
|     VALOR    | DT.VCTO. |  |     VALOR    | DT.PGTO. | Total dos Titulos....: zzzzz.zzz.zz9,99
|zzz.zzz.zz9,99|10/09/2007|  |zzz.zzz.zz9,99|10/09/2007| Total dos documentos.: zzzzz.zzz.zz9,99
+--------------+----------+  +--------------+----------+ Total dos Juros......: zzzzz.zzz.zz9,99
                                                         Total Restante.......: zzzzz.zzz.zz9,99

                                                         Dias Entre Datas.....: z.zz9,99
                                                         % de Juros ao Mes....: z.zz9,99
                                                         Dias Entre Datas.....: z.zz9,99
                                                         Valor dos Juross.....: z.zz9,99
}

end;

procedure TFrm_MedVenPgt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

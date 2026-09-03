unit S_CobEle_Remessa_Pesq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, S_SelEmp,
  Dialogs, DB, Grids, DBGrids, DBTables, ExtCtrls, StdCtrls, Buttons, Mask,lerarq,func,S_DM1;

type
  TFrm_CobEle_Remessa_Pesq = class(TForm)
    GroupBox1: TGroupBox;
    periodo: TLabel;
    a: TLabel;
    codcliente: TLabel;
    lbl_cheio: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    CODBCO: TEdit;
    NOMBCO: TEdit;
    bbLocalizar: TBitBtn;
    Panel2: TPanel;
    bbFechar: TBitBtn;
    Qr_Dar: TQuery;
    DBGrid1: TDBGrid;
    Src_Dar: TDataSource;
    Qr_DarCRCODEMP: TFloatField;
    Qr_DarCRNUMERO: TFloatField;
    Qr_DarCRDESD: TStringField;
    Qr_DarCRNUMCUP: TFloatField;
    Qr_DarCRDATCUP: TDateTimeField;
    Qr_DarCRVALOR: TFloatField;
    Qr_DarCRDTEMIS: TDateTimeField;
    Qr_DarCRDTVCTO: TDateTimeField;
    Qr_DarCRDESCF: TFloatField;
    Qr_DarCRDTDESCF: TDateTimeField;
    Qr_DarCRJURD: TFloatField;
    Qr_DarCRDESCD: TFloatField;
    Qr_DarCRMULTA: TFloatField;
    Qr_DarCRQTDDM: TFloatField;
    Qr_DarCRNOSNUM: TStringField;
    Qr_DarCRTOTDI01: TFloatField;
    Qr_DarCRTOTDI02: TFloatField;
    Qr_DarCRTOTDI03: TFloatField;
    Qr_DarCRTOTDIVL: TFloatField;
    Qr_DarCRVALDES01: TFloatField;
    Qr_DarCRVALDES02: TFloatField;
    Qr_DarCRVLRDES: TFloatField;
    Qr_DarCRTARBAN: TFloatField;
    Qr_DarCRDNOSNUM: TStringField;
    Qr_DarCRACEITE: TStringField;
    Qr_DarCRESPECIE: TStringField;
    Qr_DarCRCODBAR: TStringField;
    Qr_DarCRCODDIG: TStringField;
    Qr_DarCRTBCOCOB: TFloatField;
    Qr_DarCRTOTCGRU: TFloatField;
    Qr_DarCRTOTSGRU: TFloatField;
    Qr_DarCRDUP: TFloatField;
    Qr_DarCRCODCLI: TFloatField;
    Qr_DarCRCODBCO: TFloatField;
    U_Dar: TUpdateSQL;
    Qr_DarOK: TStringField;
    Qr_DarCRAZAO: TStringField;
    Qr_DarCROBS: TMemoField;
    Label64: TLabel;
    cb_tipopesq: TComboBox;
    lbl_codcli: TLabel;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    Label1: TLabel;
    edt_numini: TEdit;
    Label2: TLabel;
    edt_numfin: TEdit;
    Qr_DarCRCHAVE_ID_ANO: TFloatField;
    Qr_DarCRCHAVE_ID: TFloatField;
    lblLegenda: TLabel;
    Qr_Darqtdrem: TFloatField;
    cb_todos: TCheckBox;
    cb_sem_outras_remessas: TCheckBox;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbFecharClick(Sender: TObject);
    procedure bbLocalizarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_numiniExit(Sender: TObject);
    procedure edt_numfinExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure cb_todosClick(Sender: TObject);
    procedure cb_sem_outras_remessasClick(Sender: TObject);
  private
    { Private declarations }

    procedure fLerDados(pDados: String);

  public

    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_CobEle_Remessa_Pesq: TFrm_CobEle_Remessa_Pesq;

implementation

uses s_CobEle_Remessa_Outras, func_excecoes;

{$R *.dfm}

procedure TFrm_CobEle_Remessa_Pesq.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2, StrtoDate(MDT1.text));
   except
      fmensagem('Favor digitar uma data Válida!',0,['0'],0);
      MDT1.SetFocus;
      end
   end;

end;

procedure TFrm_CobEle_Remessa_Pesq.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2, StrtoDate(MDT2.text));
   except
      fmensagem('Favor digitar uma data Válida!',0,['0'],0);
      MDT2.SetFocus;
      end
   end;

end;

procedure TFrm_CobEle_Remessa_Pesq.bbFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CobEle_Remessa_Pesq.bbLocalizarClick(Sender: TObject);
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      verteclado(0);
      fmensagem('Data inicial maior que final, inválido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
fLerDados('P');

end;

procedure TFrm_CobEle_Remessa_Pesq.fLerDados(pDados: String);
var
mcampo_data: string;

begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADCLI','CCODEMP','CRCODEMP','CCODCLI','CRCODCLI');
la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);

Qr_Dar.Close;
Qr_Dar.SQL.Clear;
Qr_Dar.SQL.Add('Select '+chr(39)+pdados+chr(39)+' as OK, ');
Qr_Dar.SQL.Add('       CRCODEMP, ');
Qr_Dar.SQL.Add('       CRNUMERO,');
Qr_Dar.SQL.Add('       CRDESD,');
Qr_Dar.SQL.Add('       CRNUMCUP,');
Qr_Dar.SQL.Add('       CRDATCUP,');
Qr_Dar.SQL.Add('       CRVALOR,');
Qr_Dar.SQL.Add('       CRDTEMIS,');
Qr_Dar.SQL.Add('       CRDTVCTO,');
Qr_Dar.SQL.Add('       CRDESCF,');
Qr_Dar.SQL.Add('       CRDTDESCF,');
Qr_Dar.SQL.Add('       CRJURD,');
Qr_Dar.SQL.Add('       CRDESCD,');
Qr_Dar.SQL.Add('       CRMULTA,');
Qr_Dar.SQL.Add('       CRQTDDM,');
Qr_Dar.SQL.Add('       CRNOSNUM,');
Qr_Dar.SQL.Add('       CRTOTDI01,');
Qr_Dar.SQL.Add('       CRTOTDI02,');
Qr_Dar.SQL.Add('       CRTOTDI03,');
Qr_Dar.SQL.Add('       CRTOTDIVL,');
Qr_Dar.SQL.Add('       CRVALDES01,');
Qr_Dar.SQL.Add('       CRVALDES02,');
Qr_Dar.SQL.Add('       CRVLRDES,');
Qr_Dar.SQL.Add('       CRTARBAN,');
Qr_Dar.SQL.Add('       CRDNOSNUM,');
Qr_Dar.SQL.Add('       CRACEITE,');
Qr_Dar.SQL.Add('       CRESPECIE,');
Qr_Dar.SQL.Add('       CRCODBAR,');
Qr_Dar.SQL.Add('       CRCODDIG,');
Qr_Dar.SQL.Add('       CRTBCOCOB,');
Qr_Dar.SQL.Add('       CRTOTCGRU,');
Qr_Dar.SQL.Add('       CRTOTSGRU,');
Qr_Dar.SQL.Add('       CRDUP,');
Qr_Dar.SQL.Add('       CRCODCLI,');
Qr_Dar.SQL.Add('       CRCODBCO,');
Qr_Dar.SQL.Add('       CROBS,');
Qr_Dar.SQL.Add('       CRCHAVE_ID_ANO,');
Qr_Dar.SQL.Add('       CRCHAVE_ID'
              +',nvl( (select count(*) from CADREMBCO OUTROS where OUTROS.RETIT_CHAVE_ID_ANO=CRCHAVE_ID_ANO '
              +' and OUTROS.RETIT_CHAVE_ID=CRCHAVE_ID '
              +' and OUTROS.RECODEMP_DUP=CRCODEMP ),0) as qtdrem ');



Qr_Dar.SQL.Add('       ,CRAZAO  from CADDAR '+iif(la_tabelas='','',',')+la_tabelas);
Qr_Dar.SQL.Add('       '+la_Join);
Qr_Dar.SQL.Add('       where '+iif(la_Empresas='','',la_Empresas+' and '));
Qr_Dar.SQL.Add('      '+        iif(la_instrucao='','',la_instrucao+' and '));
Qr_Dar.SQL.Add('      trim(CRNOSNUM) is not null ');
Qr_Dar.SQL.Add(' and CRSTATUS=0 ');
mcinst:=' and ';
if trim(la_Empresas)<>'' then
   begin
   Qr_Dar.SQL.Add(mcinst+la_Empresas);
   mcinst:=' and ';
   end;
if cb_tipopesq.itemindex=1 then
   mcampo_data:='CRDTVCTO'
else
   mcampo_data:='CRDTEMIS';


if Trim(MDT1.Text)<>'/  /' then
   begin
   Qr_Dar.SQL.Add(fFormatdatetimeParaConsulta(mcampo_data,true, StrtoDate(MDT1.Text) ));
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   Qr_Dar.SQL.Add(fFormatdatetimeParaConsulta(mcampo_data,false, StrtoDate(MDT2.Text) ));
   end;
mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
  begin
  Qr_Dar.sql.Add(mcinst+' CRCODCLI '+mcinst2);
  mcinst:=' and ';
  end;

if fsonumero(edt_numini.text)>0 then
   begin
   Qr_Dar.sql.Add(mcinst+' CRNUMERO>='+edt_numini.Text);
   mcinst:=' and ';
   end;


if fsonumero(edt_numfin.text)>0 then
   begin
   Qr_Dar.sql.Add(mcinst+' CRNUMERO<='+edt_numfin.Text);
   mcinst:=' and ';
   end;


if Trim(CODBCO.Text)<>'' then
   begin
   Qr_Dar.SQL.Add(mcinst+' CRCODBCO=0'+Trim(CODBCO.Text));
   mcinst:=' and ';
   end;
try
   Qr_Dar.Open;
except on e : exception do
    begin
    ex_erroSql_Novo(Qr_dar,270,'SGE','CADDAR');
    end;
    end;


end;

procedure TFrm_CobEle_Remessa_Pesq.DBGrid1CellClick(Column: TColumn);
begin
Qr_dar.Edit;
if trim(Qr_DarOK.AsString)='' then
   Qr_DarOK.Value:='P'
else
   Qr_DarOK.Value:=' ';
Qr_Dar.Post;

end;

procedure TFrm_CobEle_Remessa_Pesq.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=32 then
   begin
   Qr_dar.Edit;
   if trim(Qr_DarOK.AsString)='' then
      Qr_DarOK.Value:='P'
   else
      Qr_DarOK.Value:=' ';
   Qr_Dar.Post;
   end;


end;

procedure TFrm_CobEle_Remessa_Pesq.FormCreate(Sender: TObject);
begin
Qr_DarCRDATCUP.DisplayFormat  :=fdt2;
Qr_DarCRVALOR.DisplayFormat   :=mcasas;
Qr_DarCRDTEMIS.DisplayFormat  :=fdt2;
Qr_DarCRDTVCTO.DisplayFormat  :=fdt2;
Qr_DarCRDESCF.DisplayFormat   :=mcasas;
Qr_DarCRDTDESCF.DisplayFormat :=fdt2;
Qr_DarCRJURD.DisplayFormat    :=mcasas;
Qr_DarCRDESCD.DisplayFormat   :=mcasas;
Qr_DarCRMULTA.DisplayFormat   :=mcasas;
Qr_DarCRTOTDI01.DisplayFormat :=mcasas;
Qr_DarCRTOTDI02.DisplayFormat :=mcasas;
Qr_DarCRTOTDI03.DisplayFormat :=mcasas;
Qr_DarCRTOTDIVL.DisplayFormat :=mcasas;
Qr_DarCRVALDES01.DisplayFormat:=mcasas;
Qr_DarCRVALDES02.DisplayFormat:=mcasas;
Qr_DarCRTOTCGRU.DisplayFormat :=mcasas;
Qr_DarCRTOTSGRU.DisplayFormat :=mcasas;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
{if ce_empsel=2 then
   begin
   lbl_cheio.Caption   :=DM1.Tb_PargerPTEXTOAMBAS.Value;
   lbl_cheio.Font.Color:=DM1.Tb_PargerPCORTEXAMBAS.AsInteger;
   end
else if ce_empsel=1 then
   begin
   lbl_cheio.Caption   :=DM1.Tb_PargerPTEXTOALTO.Value;
   lbl_cheio.Font.Color:=DM1.Tb_PargerPCORTEXALTO.AsInteger;
   end
else
   begin}
   lbl_cheio.Caption   :=DM1.Tb_PargerPTEXTOBAIXO.Value;
   lbl_cheio.Font.Color:=DM1.Tb_PargerPCORTEXBAIXO.AsInteger;
//   end;

MDT1.Text:=FormatDateTime(fdt2, Date);
MDT2.Text:=FormatDateTime(fdt2, Date);
end;

procedure TFrm_CobEle_Remessa_Pesq.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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
if pTcAtalho_ce<>0 then
   begin
   if (Shift=pSfAtalho_ce) and (pTcAtalho_ce=key) then
      begin
      lbl_cheio.Visible:=true;
      lbl_cheio.Caption:='';
{      if ce_empsel=2 then
         begin
         lbl_cheio.Caption   :=DM1.Tb_PargerPTEXTOAMBAS.Value;
         lbl_cheio.Font.Color:=DM1.Tb_PargerPCORTEXAMBAS.AsInteger;
         end
      else if ce_empsel=1 then
         begin
         lbl_cheio.Caption   :=DM1.Tb_PargerPTEXTOALTO.Value;
         lbl_cheio.Font.Color:=DM1.Tb_PargerPCORTEXALTO.AsInteger;
         end
      else
         begin}
         lbl_cheio.Caption   :=DM1.Tb_PargerPTEXTOBAIXO.Value;
         lbl_cheio.Font.Color:=DM1.Tb_PargerPCORTEXBAIXO.AsInteger;
//         end;
      end;
   end;
end;

procedure TFrm_CobEle_Remessa_Pesq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if (FormState<>[fsModal]) then
      Action := caFree;
end;

procedure TFrm_CobEle_Remessa_Pesq.edt_numiniExit(Sender: TObject);
begin
edt_numini.text:=fdeixanum(edt_numini.text);
end;

procedure TFrm_CobEle_Remessa_Pesq.edt_numfinExit(Sender: TObject);
begin
edt_numfin.text:=fdeixanum(edt_numfin.text);
if (valint(edt_numini.text)>0) and (ValInt(edt_numfin.text)>0) then
   begin
   if (valint(edt_numini.text)>ValInt(edt_numfin.text)) then
      edt_numfin.text:=edt_numini.text;
   end;
end;

procedure TFrm_CobEle_Remessa_Pesq.CODCLIKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_RCliC',key);
   if trim(CODCLI.Text)<>'' then
      CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_CobEle_Remessa_Pesq.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODCLI.Text) then
   BEGIN
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.TEXT))
                                    +' - '+DM1.Query1.fields[0].AsString);
      codcli.text := '';
      codcli.SetFocus;
   END else
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      codcli.text := '';
      CODCLI.SetFocus;
      end;
   end;

end;

procedure TFrm_CobEle_Remessa_Pesq.lbx_codcliKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_CobEle_Remessa_Pesq.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if Qr_Darqtdrem.AsInteger>0 then
   begin
   DBGrid1.Canvas.Brush.Color := lblLegenda.Color;
   DBGrid1.Canvas.Font.Style := DBGrid1.Canvas.Font.Style + [fsBold];
   DBGrid1.Canvas.Font.Color := lblLegenda.Font.Color;
   DBGrid1.Canvas.FillRect(Rect);
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;


end;

procedure TFrm_CobEle_Remessa_Pesq.DBGrid1DblClick(Sender: TObject);
begin
if Qr_Darqtdrem.AsInteger>0 then
   begin
   Application.CreateForm(TFrm_CobEle_Remessa_Outras, Frm_CobEle_Remessa_Outras);
   if Frm_CobEle_Remessa_Outras.fLerdadosRemessa(Qr_DarCRCHAVE_ID.AsInteger,Qr_DarCRCHAVE_ID_ANO.AsInteger,Qr_DarCRCODEMP.AsInteger) then
      Frm_CobEle_Remessa_Outras.ShowModal;
   freeandnil(Frm_CobEle_Remessa_Outras);
   end;

end;

procedure TFrm_CobEle_Remessa_Pesq.cb_todosClick(Sender: TObject);
begin
fLerDados(iif(cb_todos.Checked=true,'P',' '));

end;

procedure TFrm_CobEle_Remessa_Pesq.cb_sem_outras_remessasClick(
  Sender: TObject);
   procedure fmarcarsemourasremessas;
   var
   bookmark: TBookmark;
   begin
   bookmark:=Qr_Dar.GetBookmark;
   Qr_Dar.DisableControls;
   Qr_Dar.First;
   While not Qr_Dar.eof do
      begin
      if Qr_Darqtdrem.AsInteger<=0 then
         begin
         Qr_Dar.Edit;
         Qr_DarOK.Value:='P';
         Qr_Dar.Post;
         end;
      Qr_Dar.next;
      end;
   Qr_Dar.GotoBookmark(bookmark);
   Qr_Dar.EnableControls;   

   end;
begin
fLerDados(' ');
if cb_sem_outras_remessas.Checked=true then
   begin
   fmarcarsemourasremessas;
   end;

end;

end.

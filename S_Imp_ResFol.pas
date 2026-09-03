unit S_Imp_ResFol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, DBTables,S_DM1,func,lerarq,
  Sr_FolRes,S_fun;

type
  TFrm_Imp_ResFol = class(TForm)
    Label1: TLabel;
    MES: TEdit;
    Label2: TLabel;
    ANO: TEdit;
    CODFUN: TEdit;
    Label3: TLabel;
    NOMFUN: TEdit;
    bb_Folha: TBitBtn;
    bb_Ferias: TBitBtn;
    bb_13pp: TBitBtn;
    bb_13unico: TBitBtn;
    bb_sp: TBitBtn;
    bb_recisao: TBitBtn;
    bbSair: TBitBtn;
    rg_tipo: TRadioGroup;
    CB_VISUAL: TCheckBox;
    Qr_LFol: TQuery;
    Qr_LFolLCCODEMP: TFloatField;
    Qr_LFolLCLOCAL: TFloatField;
    Qr_LFolLCMES: TFloatField;
    Qr_LFolLCANO: TFloatField;
    Qr_LFolLCCODFUN: TFloatField;
    Qr_LFolLCCODEVE: TFloatField;
    Qr_LFolLCQTD: TFloatField;
    Qr_LFolLCNAT: TFloatField;
    Qr_LFolLCTIPO: TFloatField;
    Qr_LFolLCVALOR: TFloatField;
    Qr_LFolLCINCINSS: TFloatField;
    Qr_LFolLCINCFGTS: TFloatField;
    Qr_LFolLCINCIR: TFloatField;
    Qr_LFolLCQTDPAD: TFloatField;
    Qr_LFolLCSOMA: TFloatField;
    Qr_LFolLCINCVT: TFloatField;
    Qr_LFolLCTOTAL: TFloatField;
    Qr_RFol: TQuery;
    Src_RFol: TDataSource;
    Qr_LFolvecimentos: TFloatField;
    Qr_LFoldescontos: TFloatField;
    Qr_LFolreferencia: TStringField;
    Qr_LFolnomeve: TStringField;
    Qr_RFolnomcar: TStringField;
    Label4: TLabel;
    CB_ORDEM: TComboBox;
    Qr_RFolNOMFUN: TStringField;
    Qr_RFolCODCAR: TFloatField;
    Qr_RFolCBO: TStringField;
    Qr_RFolRFCODEMP: TFloatField;
    Qr_RFolRFLOCAL: TFloatField;
    Qr_RFolRFMES: TFloatField;
    Qr_RFolRFANO: TFloatField;
    Qr_RFolRFCODFUN: TFloatField;
    Qr_RFolRFTOTVEN: TFloatField;
    Qr_RFolRFTOTDES: TFloatField;
    Qr_RFolRFBASEFGTS: TFloatField;
    Qr_RFolRFALFGTS: TFloatField;
    Qr_RFolRFVLRFGTS: TFloatField;
    Qr_RFolRFBASEIR: TFloatField;
    Qr_RFolRFALIR: TFloatField;
    Qr_RFolRFVLRIR: TFloatField;
    Qr_RFolRFBASEINSS: TFloatField;
    Qr_RFolRFALINSS: TFloatField;
    Qr_RFolRFVLRINSS: TFloatField;
    Qr_RFolRFBASEVT: TFloatField;
    Qr_RFolRFALVT: TFloatField;
    Qr_RFolRFSALBASE: TFloatField;
    Qr_RFolRFVLRVT: TFloatField;
    Qr_RFolRFDTAQI: TDateTimeField;
    Qr_RFolRFDTAQF: TDateTimeField;
    Qr_RFolRFDTFERI: TDateTimeField;
    Qr_RFolRFDTFERF: TDateTimeField;
    Qr_RFolRFQTDFNJ: TFloatField;
    procedure bbSairClick(Sender: TObject);
    procedure Qr_RFolCalcFields(DataSet: TDataSet);
    procedure bb_FolhaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Qr_LFolCalcFields(DataSet: TDataSet);
    procedure CODFUNExit(Sender: TObject);
    procedure CODFUNKeyPress(Sender: TObject; var Key: Char);
    procedure CB_ORDEMExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function fimp_folhaabre(ptipo: Integer): Boolean;
  public
    { Public declarations }
  end;

var
  Frm_Imp_ResFol: TFrm_Imp_ResFol;

implementation

uses S_DM2, S_C;

{$R *.dfm}

procedure TFrm_Imp_ResFol.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Imp_ResFol.Qr_RFolCalcFields(DataSet: TDataSet);
begin
if Qr_RFolcodcar.Value>0 then
   begin
   if flqr1('NOMCAR','','CADCAR','N','CODCAR',Qr_RFolcodcar.AsString) then
      begin
      Qr_RFolnomcar.Value:=DM1.Query1.Fields[0].AsString;
      end
   end;


end;
function TFrm_Imp_ResFol.fimp_folhaabre(ptipo: Integer): Boolean;
begin
Qr_RFol.Close;
Qr_RFol.Sql.Clear;
Qr_RFol.Sql.add('Select RFCODEMP,  RFLOCAL,  RFMES,  RFANO,  RFCODFUN, '
               +'  RFTOTVEN,  RFTOTDES,  RFBASEFGTS,  RFALFGTS,  RFVLRFGTS, '
               +'  RFBASEIR,  RFALIR,  RFVLRIR,  RFBASEINSS,  RFALINSS,'
               +'  RFVLRINSS,  RFBASEVT,  RFALVT,  RFSALBASE,'
               +'  RFVLRVT,  RFDTAQI,  RFDTAQF,  RFDTFERI,  RFDTFERF,'
               +'  RFQTDFNJ,  CADFUN.CFNOMFUN as nomfun,  '
               +'  CADFUN.CFCODCAR as codcar,   CFCBO    as CBO '
               +'  From CADRFOL,CADFUN where '
               +iif(DM1.Qr_TID.Locate('TINOME','CADFUN',[]),'',' RFCODEMP=0'+IntToStr(codemp)+' and '
                                                               +' RFCODEMP=CFCODEMP and ')
               +' RFCODFUN=CFCODFUN '
               +' and RFLOCAL=0'+IntToStr(ptipo)
               +' and RFMES=0'+Trim(MES.Text)
               +' and RFANO=0'+Trim(ANO.Text)
               +iif(Valfloat(CODFUN.Text)>0,' and RFCODFUN=0'+Trim(CODFUN.Text),''));
if CB_ORDEM.ItemIndex=0 then
   Qr_RFol.SQL.Add(' order by CFNOMFUN ')
else
   Qr_RFol.SQL.Add(' order by CFCODFUN');

Qr_RFol.Open;
if Qr_Rfol.Eof then
   begin
   Result:=False;
   exit;
   end;
result:=True;
end;
procedure TFrm_Imp_ResFol.bb_FolhaClick(Sender: TObject);
begin
if fimp_folhaabre(0) then
   begin
   Application.CreateForm(TQr_FolRes, Qr_FolRes);
   Qr_FolRes.CNPJ.Caption   :='CNPJ.: '+DM1.Tb_Empcnpj_masc.Value+' Inscrição Estadual.: '+DM1.Tb_EmpINSCRICAO.Value;
   Qr_FolRes.periodo.Caption:=Qr_FolRes.periodo.Caption+tabmes[Qr_RFolRFMES.AsInteger]+' de '+FormatFloat('0000',Qr_RFolRFANO.Value)+'.';
   if CB_VISUAL.Checked then
      begin
      verteclado(0);

      Qr_FolRes.PreviewModal;
      end
   else
      Qr_FolRes.Print;
   Qr_FolRes.Free;
   end;
end;

procedure TFrm_Imp_ResFol.FormCreate(Sender: TObject);
begin
mes.Text:=FormatDateTime('mm',pdatasis);
ano.Text:=FormatDateTime('yyyy',pdatasis);

end;

procedure TFrm_Imp_ResFol.Qr_LFolCalcFields(DataSet: TDataSet);
begin
if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE',Qr_LFolLCCODEVE.AsString) then
   begin
   Qr_LFolnomeve.Value:=Trim(DM1.Query1.Fields[0].AsString);
   end;
if Qr_LFolLCNAT.Value=0 then
   Qr_LFolvecimentos.Value:=Qr_LFolLCTOTAL.Value
else
   Qr_LFoldescontos.Value  :=Qr_LFolLCTOTAL.Value;
Qr_LFolreferencia.Value:=FormatFloat(mcasas, Qr_LFolLCQTD.Value);

end;

procedure TFrm_Imp_ResFol.CODFUNExit(Sender: TObject);
begin
CODFUN.Text:=fdeixanum2(CODFUN.Text);
if trim(CODFUN.Text)='' then
   exit;
if (bbSAIR.Focused) then
   begin
   exit;
   end;
if flcadfun(1,0,Trim(CODFUN.Text)) then
   NOMFUN.Text:=DM2.Tb_FunCFNOMFUN.AsString
else
   begin
   fmensagem('Funcionário não Cadastrado!',0,['0'],0);
   CODFUN.SetFocus;
   end;

end;

procedure TFrm_Imp_ResFol.CODFUNKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFUN.Text:=fChamafun(0,'frm_folman',key);
   CODFUNExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Imp_ResFol.CB_ORDEMExit(Sender: TObject);
begin
with CB_ORDEM do ItemIndex:=Items.IndexOf(CB_ORDEM.Text);
CB_ORDEM.text:=CB_ORDEM.Items.Strings[CB_ORDEM.ItemIndex];
if CB_ORDEM.Text='' then
   CB_ORDEM.ItemIndex:=0;
end;

procedure TFrm_Imp_ResFol.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

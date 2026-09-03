unit S_Imo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,S_dm1,db,dbtables,func,lerarq,s_dm2,S_Moe, RLReport, RLBarcode,
  ExtDlgs,s_lerarq_geral, ADODB,jpeg;

type
  TFrm_Imo = class(TFrm_C)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    db_dtcompra: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    db_dtvenda: TDBEdit;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    MDTCOMPRA: TMaskEdit;
    MDTVDA: TMaskEdit;
    tsRelatorio: TTabSheet;
    RLReport1: TRLReport;
    tsEtiquetas: TTabSheet;
    CB_FILTRO: TCheckBox;
    bbEtiqueta: TBitBtn;
    Label21: TLabel;
    QTDETI: TEdit;
    RLDetailGrid1: TRLDetailGrid;
    Src_Imob: TDataSource;
    Qr_Imo: TQuery;
    Qr_ImoIM1CODEMP: TFloatField;
    Qr_ImoIM1CODIMO: TFloatField;
    Qr_ImoIM1NOME: TStringField;
    Qr_ImoIM1MARCA: TStringField;
    Qr_ImoIM1MODELO: TStringField;
    Qr_ImoIM1SERIE: TStringField;
    Qr_ImoIM1DATAAQ: TDateTimeField;
    Qr_ImoIM1CODIND: TFloatField;
    Qr_ImoIM1GARANTIA: TFloatField;
    Qr_ImoIM1VALORCPR: TFloatField;
    Qr_ImoIM1PERCDEP: TFloatField;
    Qr_ImoIM1LOCAQ: TStringField;
    Qr_ImoIM1CONTAQ: TStringField;
    Qr_ImoIM1FONEC1: TStringField;
    Qr_ImoIM1OBS01: TStringField;
    Qr_ImoIM1OBS02: TStringField;
    Qr_ImoIM1OBS03: TStringField;
    Qr_ImoIM1OBS04: TStringField;
    Qr_ImoIM1STATUS: TFloatField;
    Qr_ImoIM1DATAVDA: TDateTimeField;
    Qr_ImoIM1VLRVEND: TFloatField;
    Qr_Imocodbarra: TStringField;
    GroupBox3: TGroupBox;
    logosis: TImage;
    sbnAdquirir: TSpeedButton;
    SBn_Excluir: TSpeedButton;
    opd1: TOpenPictureDialog;
    Src_Imo_Fig: TDataSource;
    Qr_ImoIM1FOTO: TBlobField;
    RLPanel2: TRLPanel;
    foto_imob: TRLImage;
    RLPanel1: TRLPanel;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBBarcode1: TRLDBBarcode;
    DBNavigator2: TDBNavigator;
    btn_sair: TBitBtn;
    Label22: TLabel;
    DBEdit6: TDBEdit;
    Qr_ImoIM1CODPRO: TStringField;
    DBE_nomepro: TDBEdit;
    tsImagem: TTabSheet;
    Tb_Imo_imagem: TADOQuery;
    Src_Dap_imagem: TDataSource;
    GroupBox5: TGroupBox;
    DBGrid3: TDBGrid;
    Panel5: TPanel;
    sbn_nova: TSpeedButton;
    sbn_alterar: TSpeedButton;
    sbnRenomear: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Tb_Imo_imagemII_ROWID: TStringField;
    Tb_Imo_imagemII_SEQ: TFloatField;
    Tb_Imo_imagemII_OBS: TStringField;
    Tb_Imo_imagemII_IMAGEM: TBlobField;
    Tb_Imo_imagemII_NOMEORI: TStringField;
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7Exit(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QTDETIExit(Sender: TObject);
    procedure bbEtiquetaClick(Sender: TObject);
    procedure Qr_ImoCalcFields(DataSet: TDataSet);
    procedure sbnAdquirirClick(Sender: TObject);
    procedure SBn_ExcluirClick(Sender: TObject);
    procedure Src_Imo_FigDataChange(Sender: TObject; Field: TField);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure btn_sairClick(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6Exit(Sender: TObject);
    procedure sbn_novaClick(Sender: TObject);
    procedure sbn_alterarClick(Sender: TObject);
    procedure sbnRenomearClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
        midimo_src: string;
        mcodimo_Ant: Real;
  public
    { Public declarations }
  end;

var
  Frm_Imo: TFrm_Imo;
  Imo_ori: String;
  mOper:   Integer;
  mImoAjustou:boolean=false;

implementation

uses func_excecoes, S_DM1_ADO, s_Imagem_WebCam, S_Fig_TelaCheia;

{$R *.dfm}

procedure TFrm_Imo.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key in [',','.'] then Key:=DecimalSeparator;
end;

procedure TFrm_Imo.INCLUIRClick(Sender: TObject);
begin
  inherited;
moper:=0;

db_dtcompra.Visible:=false;
db_dtvenda.Visible :=false;
MDTVDA.Visible     :=True;
MDTCOMPRA.Visible  :=True;
DM2.Tb_Imo01.Append;
mcodimo_Ant:=DM2.Tb_Imo01IM1CODIMO.AsFloat;
DBEdit1.Enabled:=True;
DBEdit2.SetFocus;

end;

procedure TFrm_Imo.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM2.Tb_Imo01IM1CODIMO.IsNull then
   begin
   MessageDlg('Não ha registro a ser alterado!',mtWarning,[mbOk],0);
   exit;
   end;
mcodimo_Ant:=DM2.Tb_Imo01IM1CODIMO.AsFloat;   
moper:=8;
if (DM2.Tb_Imo01IM1DATAAQ.Value<=pdatanula)
   or (DM2.Tb_Imo01IM1DATAAQ.IsNull) then
   MDTCOMPRA.Text:=FormatDatetime(fdt2, DM2.Tb_Imo01IM1DATAAQ.Value);

if (DM2.Tb_Imo01IM1DATAVDA.Value<=pdatanula) 
   or (DM2.Tb_Imo01IM1DATAVDA.IsNull) then
   MDTVDA.Text :=FormatDatetime(fdt2, DM2.Tb_Imo01IM1DATAVDA.Value);

db_dtcompra.Visible:=false;
db_dtvenda.Visible :=false;
MDTVDA.Visible     :=True;
MDTCOMPRA.Visible  :=True;

DM2.Tb_Imo01.Edit;
DBEdit2.SetFocus;
DBEdit1.Enabled:=False;

end;

procedure TFrm_Imo.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM2.Tb_Imo01IM1CODIMO.IsNull then
   begin
   MessageDlg('Não ha registro a ser Excluido!',mtWarning,[mbOk],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir Este Registro?',0,['1','2'],2)=mrYes then
   begin

    fGerarTabelas_Old(9 //status
                  ,0 //codigo novo valor chave
                  ,'IM1CODNOV' //nome do campo do novo valor (chave)
                  ,'IM1DATHOR_EVE' // nome do campo data e hora do evento
                  ,'IM1CODUSR_EVE' // nome do campo do usuario
                  ,'IM1STATUS_EVE' // nome do campo de status
                  ,'CADIMO01' // nome da tabela
                  ,' where IM1CODEMP='+DM2.Tb_Imo01IM1CODEMP.Asstring
                  +' and IM1CODIMO='+FloatToStr(mcodimo_Ant)
                  );
   DM2.Tb_Imo01.Delete;
   CANCELAR.Click;
   end;

end;


procedure TFrm_Imo.GRAVARClick(Sender: TObject);
begin
  inherited;
if (DM2.Tb_Imo01IM1NOME.Value='_') or (DM2.Tb_Imo01IM1NOME.IsNull) then
   begin
   MessageDlg('Nome Invalido!',mtWarning,[mbOk],0);
   PC1.ActivePageIndex:=0;
   DBEdit2.SetFocus;
   exit;
   end;

if moper=8 then
    fGerarTabelas_Old(8 //status
                  ,0 //codigo novo valor chave
                  ,'IM1CODNOV' //nome do campo do novo valor (chave)
                  ,'IM1DATHOR_EVE' // nome do campo data e hora do evento
                  ,'IM1CODUSR_EVE' // nome do campo do usuario
                  ,'IM1STATUS_EVE' // nome do campo de status
                  ,'CADIMO01' // nome da tabela
                  ,' where IM1CODEMP='+DM2.Tb_Imo01IM1CODEMP.Asstring
                  +' and IM1CODIMO='+FloatToStr(mcodimo_Ant)
                  );


db_dtcompra.Visible:=True;
db_dtvenda.Visible :=True;
MDTVDA.Visible     :=False;
MDTCOMPRA.Visible  :=False;
if Trim(MDTVDA.Text)<>'/  /' then
   DM2.Tb_Imo01IM1DATAVDA.Value:=StrToDate(MDTVDA.Text)
else
   DM2.Tb_Imo01IM1DATAVDA.Value:=pdatanula;

if Trim(MDTCOMPRA.Text)<>'/  /' then
   DM2.Tb_Imo01IM1DATAAQ.Value:=StrToDate(MDTCOMPRA.Text)
else
   DM2.Tb_Imo01IM1DATAAQ.Value:=pdatanula;

dm2.Tb_Imo01.Post;

if mImoAjustou then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   if logosis.Picture=nil then
      DM1.Query1.SQL.Add('Update CADIMO01  set IM1FOTO=null')
   else
      begin
      DM1.Query1.Params.CreateParam(ftString,'LOGO',ptinput);
      DM1.Query1.SQL.Add('Update CADIMO01  set IM1FOTO=:LOGO');
      DM1.Query1.ParamByName('LOGO').LoadFromFile(opd1.FileName,ftBlob);
      end;
   DM1.Query1.SQL.Add(' where IM1CODIMO=:CODIMO');
   DM1.Query1.SQL.Add(' and   IM1CODEMP=:CODEMP');
   DM1.Query1.ParamByName('CODIMO').AsFloat  :=DM2.Tb_Imo01IM1CODIMO.AsFloat;
   DM1.Query1.ParamByName('CODEMP').AsFloat  :=DM2.Tb_Imo01IM1CODEMP.AsFloat;
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro ao Atualizar o Logotipo!',0,['0'],0);
      end;
   end;

CANCELAR.Click;


end;

procedure TFrm_Imo.CANCELARClick(Sender: TObject);
begin
  inherited;
if DM2.Tb_Imo01.State in [dsInsert, DsEdit] then
   DM2.Tb_Imo01.Cancel;
db_dtcompra.Visible:=True;
db_dtvenda.Visible :=True;
MDTVDA.Visible     :=False;
MDTCOMPRA.Visible  :=False;
mImoAjustou        :=false;
moper:=0;


end;

procedure TFrm_Imo.DBEdit1Exit(Sender: TObject);
begin
  inherited;
if mcodimo_Ant<>DM2.Tb_Imo01IM1CODIMO.AsFloat then
   begin
   if flqr1('IM1NOME','IM1','CADIMO01','N','IM1CODIMO',DM2.Tb_Imo01IM1CODIMO.AsString) then
      begin
      MessageDlg('Este código ja esta cadastrado Nome: '+DM1.Query1.Fields[0].AsString,mtWarning,[MbOk],0);
      DBEdit1.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Imo.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if Imo_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   imo_ori := '';
   end;

end;

procedure TFrm_Imo.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if imo_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      imo_ori := '';
      end;
   abort;
   end;

end;

procedure TFrm_Imo.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(Tfrm_Moe, Frm_Moe);
   Frm_Moe.Edit1.Text:=key;
   Frm_Moe.Edit1.SelStart:=1;
   Frm_Moe.Edit1.SelLength:=1;
   Frm_Moe.PC1.ActivePageIndex:=1;
   Frm_Moe.mOrigem:='Frm_Imo';
   if Frm_Moe.ShowModal=mrOk then
      begin
      DM2.Tb_Imo01IM1CODIND.Value:=DM2.Tb_MoeMCODMOE.Value;
      end;
   Frm_Moe.Free;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Imo.DBEdit7Exit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;
if DM2.Tb_Imo01IM1CODIND.Value>0 then
   begin
   if not flqr1('MNOME','M','CADMOE','N','MCODMOE',DM2.Tb_Imo01IM1CODIND.AsString) then
      begin
      MessageDlg('Moeda não Cadastrada!',mtWarning,[mbOk],0);
      DBEdit7.SetFocus;
     end;
   end;

end;

procedure TFrm_Imo.BBnAtuClick(Sender: TObject);
begin
  inherited;
if imo_Ori='consulta' then
   begin
//   fcli01lerant(0);
   end
else
   begin
   If DM2.Tb_imo01.State in [dsInsert, dsEdit] then
      begin
      Case MessageDlg('O registro atual não está gravado!'+#13
                     +'Deseja gravar agora?',mtWarning,[mbYes,mbNo],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      end;
   end;
   flcadimo01(campo.ItemIndex,1,0,Trim(edit1.Text));
   INCLUIR.Enabled:=bbinc_true;
   ALTERAR.Enabled:=bbalt_true;
   GRAVAR.Enabled :=False;
   EXCLUIR.Enabled:=bbexc_true;
   CANCELAR.Enabled:=True;
   end;


end;

procedure TFrm_Imo.FormCreate(Sender: TObject);
begin
  inherited;
bbinc_true:=true;
bbalt_true:=true;
bbexc_true:=true;
tsRelatorio.TabVisible:=false;
PC1.Activepageindex:=0;

DBGrid1.DataSource:=DM2.Src_Imo01;
end;

procedure TFrm_Imo.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
If DM2.Tb_Imo01.State in [dsInsert, dsEdit] then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      else CanClose:=False;
      end;
   end;

if DM2.Tb_Imo01IM1NOME.Value='_' then
   DM2.Tb_Imo01.Delete;


end;

procedure TFrm_Imo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
Tb_Imo_imagem.Close;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Imo.QTDETIExit(Sender: TObject);
begin
  inherited;
QTDETI.Text:=fdeixanum2(QTDETI.Text);
if ValInt(QTDETI.Text)<1 then
   QTDETI.Text:='1';
end;

procedure TFrm_Imo.bbEtiquetaClick(Sender: TObject);
begin
  inherited;
Qr_Imo.Close;
Qr_Imo.SQL.Clear;
Qr_Imo.SQL.Add('Select * from CADIMO01 ');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADIMO01',[]) then
   begin
   Qr_Imo.SQL.add(mcinst+' and CM1CODEMP=0'+DM2.Tb_Imo01IM1CODEMP.AsString);
   mcinst:=' and ';
   end;


if CB_FILTRO.Checked then
   Qr_Imo.SQL.add(mcinst+ ' CM1CODIMO=0'+DM2.Tb_Imo01IM1CODIMO.AsString);
Qr_Imo.Open;

RLReport1.PreviewModal;

end;

procedure TFrm_Imo.Qr_ImoCalcFields(DataSet: TDataSet);
begin
  inherited;
Qr_Imocodbarra.Value:=FormatFloat('0000000000', Qr_ImoIM1CODIMO.Value);
end;

procedure TFrm_Imo.sbnAdquirirClick(Sender: TObject);
var
mtam: Integer;
begin
  inherited;

If Opd1.Execute then
   begin
   mtam:=length(Opd1.FileName);
   if UpperCase(copy(Opd1.FileName,mtam-3,4))<>'.JPG' then
      begin

      fmensagem('Nao é uma Figura Valida.',0,['0'],0);


      end
   else
      begin
      mImoAjustou:=true;
      logosis.Picture.LoadFromFile(Opd1.FileName);

      DM2.Tb_Imo01IM1FOTO.Value:='';
      DM2.Tb_Imo01IM1FOTO.LoadFromFile(Opd1.FileName);

      end;
   end;


end;

procedure TFrm_Imo.SBn_ExcluirClick(Sender: TObject);
begin
  inherited;
logosis.Picture:=nil;
DM2.Tb_Imo01IM1FOTO.Value:='';

mImoAjustou:=true;
end;

procedure TFrm_Imo.Src_Imo_FigDataChange(Sender: TObject; Field: TField);
var
mIdImo: string;

begin
  inherited;
if not (DM2.Tb_Imo01IM1FOTO.IsNull)  and  (DM2.Tb_Imo01IM1FOTO.Value<>'') then
   begin
   DM2.Tb_Imo01IM1FOTO.SaveToFile('C:\SGE\IMOBTMP.JPG');
   opd1.FileName:='C:\SGE\IMOBTMP.JPG';
   logosis.Picture.LoadFromFile(Opd1.FileName);
   end
else
   logosis.Picture:=nil;
if not (DM2.Tb_Imo01.State in [dsedit,dsinsert]) then
   begin
   if DM2.Tb_Imo01IM1CODIMO.isnull=false then
      begin
       if trim(DM2.Tb_Imo01IDIMO.AsString)='' then
          begin
          if not fLerGenerico01_campos('CADIMO01','ROWID',' IM1CODIMO='+DM2.Tb_Imo01IM1CODIMO.AsString
             +' and IM1CODEMP='+DM2.Tb_Imo01IM1CODEMP.AsString  ,mIdImo) then
             begin
             exit;
             end;
          end
       else
          mIdImo:=DM2.Tb_Imo01IDIMO.AsString;

       if (midimo_src<>mIdImo)  then
          begin
          if DM1_ADO.ADOConnection1.connected=false then
             begin
             DM1_ADO.ADOConnection1.Close;
             DM1_ADO.ADOConnection1.ConnectionString:='Provider=MSDAORA.1;Password=DEZENOVE;User ID='+Banco_usuario+';Data Source='+Banco_ServerName+';Persist Security Info=True';
             DM1_ADO.ADOConnection1.Open;
             end;

          Tb_Imo_imagem.close;
          Tb_Imo_imagem.Connection:=DM1_ADO.ADOConnection1;
          Tb_Imo_imagem.Parameters.ParamByName('ROWID').Value    :=mIdImo;
          Tb_Imo_imagem.open;
          midimo_src :=mIdImo;
          end;
      end;
   end;


end;

procedure TFrm_Imo.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
if Qr_ImoIM1FOTO.IsNull then
   begin
   foto_imob.Picture:=nil;
   foto_imob.Visible:=false;
   end
else
   begin
   Qr_ImoIM1FOTO.SaveToFile('C:\SGE\IMFT.JPG');
   foto_imob.Picture.LoadFromFile('C:\SGE\IMFT.JPG');
   foto_imob.Visible:=true;
   end;
end;

procedure TFrm_Imo.btn_sairClick(Sender: TObject);
begin
  inherited;
  if imo_ori = '' then close;
end;

procedure TFrm_Imo.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin

   DM2.Tb_Imo01IM1CODPRO.Value:=fChamaPro(0,'s_imo',key);
   key:=#0;
   DBEdit6Exit(Self);
   end;

end;

procedure TFrm_Imo.DBEdit6Exit(Sender: TObject);
begin
  inherited;
if fsonumero(DM2.Tb_Imo01IM1CODPRO.AsString)<>0 then
   begin
   if not flcadpro(1,0,0,DM2.Tb_Imo01IM1CODPRO.AsString) then
      begin
      fmensagem('Produto não Cadastrado!',0,['0'],0);
      DBEdit6.SetFocus;
      end;
   end;

end;

procedure TFrm_Imo.sbn_novaClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;

qr_cont_imagem: TQuery;
mChave: Integer;
mIdImo: String;
begin
  inherited;
if trim(DM2.Tb_Imo01IDIMO.AsString)='' then
   begin
   if not fLerGenerico01_campos('CADIMO01','ROWID',' IM1CODIMO='+DM2.Tb_Imo01IM1CODIMO.AsString
      +' and IM1CODEMP='+DM2.Tb_Imo01IM1CODEMP.AsString  ,mIdImo) then
      begin
      MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
      exit;
      end;
   end
else
   mIdImo:=DM2.Tb_Imo01IDIMO.AsString;

Application.CreateForm(tfrm_Imagem_WebCam, Frm_Imagem_WebCam);
Frm_Imagem_WebCam.ShowModal;
if frm_Imagem_WebCam.mAceitouImagem then
   begin
   imagestream:=TMemoryStream.Create;
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      begin
      with TJPEGImage.Create do
          begin
          Assign(frm_Imagem_WebCam.Image1.Picture.Graphic);
          SaveToStream(imagestream);  //  ToFile('c:\img.jpg');
          Free;
          end;
      end
   else
      begin
      imagestream.LoadFromFile(frm_Imagem_WebCam.mNomeArquivo);
      end;


   qr_cont_imagem:=TQuery.create(Nil);
   qr_cont_imagem.databaseName:='SG_ASSOC';
   qr_cont_imagem.Close;
   qr_cont_imagem.SQL.Clear;
   qr_cont_imagem.SQL.Add('Select max(II_SEQ) as cod from CADIMO01_IMAGEM '
                    +' where II_ROWID=:IDDAP ');
   qr_cont_imagem.ParamByName('IDDAP').AsString     :=mIdImo;
   qr_cont_imagem.open;
   mChave:=qr_cont_imagem.fieldbyName('cod').AsInteger+1;


   qr_cont_imagem.Close;
   qr_cont_imagem.SQL.Clear;
   qr_cont_imagem.SQL.Add('Insert into CADIMO01_IMAGEM ( '
                    +' II_ROWID  '
                    +',II_SEQ    '
                    +',II_OBS    '
                    +',II_IMAGEM '
                    +',II_NOMEORI '

                    +') values ('
                    +' :II_ROWID  '
                    +',:II_SEQ    '
                    +',:II_OBS    '
                    +',:II_IMAGEM '
                    +',:II_NOMEORI '

                    +')');


   qr_cont_imagem.ParamByName('II_ROWID').AsString      :=mIdImo;
   qr_cont_imagem.ParamByName('II_SEQ').AsInteger      :=mChave;
   if trim(frm_Imagem_WebCam.edt_obs.Text)='' then
      qr_cont_imagem.ParamByName('II_OBS').AsString    :='IMAGEM: '+IntToStr(mChave)
   else
      qr_cont_imagem.ParamByName('II_OBS').AsString    :=frm_Imagem_WebCam.edt_obs.Text;

   qr_cont_imagem.ParamByName('II_IMAGEM').LoadFromStream(imagestream, ftBlob);
   qr_cont_imagem.ParamByName('II_NOMEORI').AsString    :=Fnomearq_Pasta(0, frm_Imagem_WebCam.mnomearquivo);

   try
      qr_cont_imagem.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(qr_cont_imagem,2754,'frm_dar','CADIMO01_IMAGEM');
      end;
   FreeAndNil(qr_cont_imagem);
   FreeAndNil(imagestream);
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      FreeAndNil(jpg);

   end;
freeandnil(frm_imagem_WebCam);
mIdImo_src:='-1';

Src_Imo_FigDataChange(DM2.Tb_Imo01,DM2.Tb_Imo01IM1CODEMP);




end;

procedure TFrm_Imo.sbn_alterarClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;
query_ldr: TQuery;
mIdImo: String;
begin
  inherited;
if trim(DM2.Tb_Imo01IDIMO.AsString)='' then
   begin
   if not fLerGenerico01_campos('CADIMO01','ROWID',' IM1CODIMO='+DM2.Tb_Imo01IM1CODIMO.AsString
      +' and IM1CODEMP='+DM2.Tb_Imo01IM1CODEMP.AsString  ,mIdImo) then
      begin
      MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
      exit;
      end;
   end
else
   mIdImo:=DM2.Tb_Imo01IDIMO.AsString;

Application.CreateForm(tfrm_Imagem_WebCam, Frm_Imagem_WebCam);
Frm_Imagem_WebCam.ShowModal;
if frm_Imagem_WebCam.mAceitouImagem then
   begin
   imagestream:=TMemoryStream.Create;
   if fEImagem(frm_Imagem_WebCam.mnomearquivo) then
      begin
      with TJPEGImage.Create do
          begin
          Assign(frm_Imagem_WebCam.Image1.Picture.Graphic);
          SaveToStream(imagestream);  //  ToFile('c:\img.jpg');
          Free;
          end;
      end
   else
      begin
      imagestream.LoadFromFile(frm_Imagem_WebCam.mNomeArquivo);
      end;


   query_ldr:=TQuery.create(Nil);
   query_ldr.databaseName:='SG_ASSOC';

   query_ldr.Close;
   query_ldr.SQL.Clear;
   query_ldr.SQL.Add('Update CADIMO01_IMAGEM set '
                    +' II_OBS=:II_OBS '
                    +',II_IMAGEM=:II_IMAGEM '
                    +',II_NOMEORI=:II_NOMEORI '
                    +' where '
                    +' II_ROWID=:II_ROWID '
                    +' and II_SEQ=:II_SEQ'
                    );

   query_ldr.ParamByName('II_ROWID').AsString      :=mIdImo;
   query_ldr.ParamByName('II_SEQ').AsInteger      :=Tb_Imo_imagemII_SEQ.AsInteger;


   if (trim(frm_Imagem_WebCam.edt_obs.Text)<>'') then
      query_ldr.ParamByName('II_OBS').AsString:=trim(frm_Imagem_WebCam.edt_obs.Text)
   else if (trim(Tb_Imo_imagemII_OBS.AsString)='') then
      query_ldr.ParamByName('II_OBS').AsString    :='IMAGEM: '+Tb_Imo_imagemII_OBS.AsString
   else
      query_ldr.ParamByName('II_OBS').AsString    :=Tb_Imo_imagemII_OBS.AsString;








   query_ldr.ParamByName('II_IMAGEM').LoadFromStream(imagestream, ftBlob);
   query_ldr.ParamByName('II_NOMEORI').AsString    :=Fnomearq_Pasta(0, frm_Imagem_WebCam.mnomearquivo);

   try
      query_ldr.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(Query_ldr,838,'frm_imo','CADIMO01_IMAGEM');
      end;
   FreeAndNil(query_ldr);
   FreeAndNil(imagestream);
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      FreeAndNil(jpg);
   end;
freeandnil(frm_imagem_WebCam);
midImo_src:='-1';

Src_Imo_FigDataChange(DM2.Tb_Imo01,DM2.Tb_Imo01IM1CODEMP);



end;

procedure TFrm_Imo.sbnRenomearClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;
query_ldr: TQuery;
mNovoNome: String;
mIdImo: String;
begin
  inherited;
if trim(DM2.Tb_Imo01IDIMO.AsString)='' then
   begin
   if not fLerGenerico01_campos('CADIMO01','ROWID',' IM1CODIMO='+DM2.Tb_Imo01IM1CODIMO.AsString
      +' and IM1CODEMP='+DM2.Tb_Imo01IM1CODEMP.AsString  ,mIdImo) then
      begin
      MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
      exit;
      end;
   end
else
   mIdImo:=DM2.Tb_Imo01IDIMO.AsString;


mNovoNome:=InputBox('Nome Anterior '+Tb_Imo_imagemII_OBS.AsString , 'Informe o Novo Nome','');
if (trim(mNovoNome)<>'') and (mNovoNome<>Tb_Imo_imagemII_OBS.AsString) then
   begin
   query_ldr:=TQuery.create(Nil);
   query_ldr.databaseName:='SG_ASSOC';
   query_ldr.Close;
   query_ldr.SQL.Clear;
   query_ldr.SQL.Add('Update CADIMO01_IMAGEM set '
                    +' II_OBS=:II_OBS '
                    +' where '
                    +' II_ROWID=:II_ROWID '
                    +' and II_SEQ=:II_SEQ'
                    );

   query_ldr.ParamByName('II_ROWID').AsString      :=mIdImo;
   query_ldr.ParamByName('II_SEQ').AsInteger      :=Tb_Imo_imagemII_SEQ.AsInteger;

   query_ldr.ParamByName('II_OBS').AsString       :=mNovoNome;
   try
      query_ldr.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(Query_ldr,839,'frm_contrato','CADIMO01_IMAGEM');
      end;
   FreeAndNil(query_ldr);

   end;
midImo_src:='-1';

Src_Imo_FigDataChange(DM2.Tb_Imo01,DM2.Tb_Imo01IM1CODEMP);




end;

procedure TFrm_Imo.DBGrid3DblClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg:TJPEGImage;

begin
  inherited;


if not Tb_Imo_imagemII_IMAGEM.IsNull then
   begin
   imagestream:=TMemoryStream.Create;
   Tb_Imo_imagemII_IMAGEM.SaveToStream(imagestream);
   imagestream.Position := 0;

   if (trim(Tb_Imo_imagemII_NOMEORI.asstring)='') then
      begin
      jpg:=TJPEGImage.Create;
      jpg.LoadFromStream( imageStream );
      Application.Createform(TFrm_Fig_TelaCheia, Frm_Fig_TelaCheia);
      Frm_Fig_TelaCheia.Image1.Picture.Bitmap.Assign(jpg);
      Frm_Fig_TelaCheia.ShowModal;
      freeandnil(Frm_Fig_TelaCheia);
      freeandnil(jpg);
      end
   else
      begin
      try
         if trim(Tb_Imo_imagemII_NOMEORI.asstring)<>'' then
            begin
            imagestream.SaveToFile(mcamtmp+'\'+Tb_Imo_imagemII_NOMEORI.asstring);
            fExecutarArquivo(mcamtmp+'\'+Tb_Imo_imagemII_NOMEORI.asstring);
            fAdicionarTempDel(mcamtmp+'\'+Tb_Imo_imagemII_NOMEORI.asstring);
            end
         else
            begin
            messagedlg('nao foi possivel identificar o arquivo!',mterror,[mbOK],0);
            end;
      except
         messagedlg('Não foi possivel gerar o arquivo '+mcamtmp+'\'+Tb_Imo_imagemII_NOMEORI.asstring,mtError,[mbOk],0);
         end;
      end;
   freeandnil(imagestream);
   end;




end;

procedure TFrm_Imo.SpeedButton1Click(Sender: TObject);
var
query_ldr: TQuery;
mIdImo: String;
begin
  inherited;

if trim(DM2.Tb_Imo01IDIMO.AsString)='' then
   begin
   if not fLerGenerico01_campos('CADIMO01','ROWID',' IM1CODIMO='+DM2.Tb_Imo01IM1CODIMO.AsString
      +' and IM1CODEMP='+DM2.Tb_Imo01IM1CODEMP.AsString  ,mIdImo) then
      begin
      MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
      exit;
      end;
   end
else
   mIdImo:=DM2.Tb_Imo01IDIMO.AsString;

if Application.MessageBox(pchar( 'Quer Realmente excluir o registro '+Tb_Imo_imagemII_OBS.asstring),'confirmacao',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
query_ldr:=TQuery.create(Nil);
query_ldr.databaseName:='SG_ASSOC';
query_ldr.Close;
query_ldr.SQL.Clear;
query_ldr.SQL.Add('Delete  from CADIMO01_IMAGEM '
                 +' where II_ROWID=:II_ROWID '
                 +' and II_SEQ=:SEQ ');
query_ldr.ParamByName('II_ROWID').Asstring   :=mIdImo;
query_ldr.ParamByName('SEQ').AsInteger     :=Tb_Imo_imagemII_SEQ.AsInteger;
try
   query_ldr.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(Query_ldr,2757,'frm_contrato','CADIMO01_IMAGEM');
   end;
FreeAndNil(query_ldr);
midimo_src:='-1';

Src_Imo_FigDataChange(DM2.Tb_Imo01,DM2.Tb_Imo01IM1CODEMP);



end;

end.

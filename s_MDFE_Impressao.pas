unit s_MDFE_Impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, ComCtrls, DB, DBTables, RLBarcode, DBClient, ExtCtrls,
  StdCtrls,DelphiZXingQRCode,JPEG;

type
  TFrm_MDFE_Impressao = class(TForm)
    PageControl1: TPageControl;
    tsMDFEMod01: TTabSheet;
    rLDamDFE_mod01: TRLReport;
    RLmod01_cab01: TRLBand;
    RLImageMod01Logo: TRLImage;
    tb_MDFE: TQuery;
    tb_MDFEMDFE_VT_PLACA: TStringField;
    tb_MDFEMDFE_VT_TARA: TFloatField;
    tb_MDFEMDFE_VT_RENAVAN: TStringField;
    tb_MDFEMDFE_TOT_QNFE: TFloatField;
    tb_MDFEMDFE_TOT_VCARGA: TFloatField;
    tb_MDFEMDFE_TOT_QCARGA: TFloatField;
    tb_MDFEMDFE_NUMERO: TFloatField;
    tb_MDFEMDFE_VERSAO_XML: TStringField;
    tb_MDFEMDFE_MOD: TStringField;
    tb_MDFEMDFE_SERIE: TStringField;
    tb_MDFEMDFE_DHEMI: TDateTimeField;
    tb_MDFEMDFE_DHINIVIAGEM: TDateTimeField;
    tb_MDFEMDFE_MODAL: TStringField;
    tb_MDFEMDFE_ID: TFloatField;
    tb_MDFEMDFE_TPPROP: TStringField;
    tb_MDFEMDFE_DHINCLUSAO: TDateTimeField;
    tb_MDFEMDFE_TPAMB: TStringField;
    tb_MDFEMDFE_CHV_MDFE: TStringField;
    tb_MDFEMDFE_STATUS: TFloatField;
    Src_MDFE: TDataSource;
    RLImageMod01QrCode: TRLImage;
    rllblmod01_razsoc: TRLLabel;
    rllblmod01_endereco: TRLLabel;
    rllblmod01_cidade_cep: TRLLabel;
    rllblmod01_cnpj_ie_rntrc: TRLLabel;
    RLLabel1: TRLLabel;
    RLmod01_cab02: TRLBand;
    rllblmod01_cabmod: TRLLabel;
    rldbmod01_cabmod: TRLDBText;
    rllblMod01Serie: TRLLabel;
    rldbMod01Serie: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel3: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel4: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText4: TRLDBText;
    RLmod01_cab03: TRLBand;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText5: TRLDBText;
    tb_MDFEMDFE_TOT_QCTE: TFloatField;
    RLLabel10: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBBarcode2: TRLDBBarcode;
    RLmod01_cab04_norma: TRLBand;
    RLLabel12: TRLLabel;
    rllblmod01_prot_dathor: TRLLabel;
    RLLabel13: TRLLabel;
    rllblmod01_chv_mdfe_mask: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLmod01_cab04_contigencia: TRLBand;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    rllblmod01_obs_contigencia: TRLLabel;
    RLSDMod01_Veiculo_Condutor: TRLSubDetail;
    rlcabsdmod01_veiculo_condutor: TRLBand;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    cds_veiculo_condutor: TClientDataSet;
    cds_veiculo_condutorplaca: TStringField;
    cds_veiculo_condutorrntrc: TStringField;
    cds_veiculo_condutorcpf: TStringField;
    cds_veiculo_condutornome: TStringField;
    RLBand1: TRLBand;
    RLDBText8: TRLDBText;
    src_veiculo_condurtor: TDataSource;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    tb_MDFEMDFE_PROP_RNTRC: TStringField;
    Tb_CadVlPedagio: TQuery;
    src_CadVlPedagio: TDataSource;
    Tb_CadVlPedagioVP_ID: TFloatField;
    Tb_CadVlPedagioVP_CNPJ_FORNECEDOR: TStringField;
    Tb_CadVlPedagioVP_CNPJ_PAGADOR: TStringField;
    Tb_CadVlPedagioVP_CPF_PAGADOR: TStringField;
    Tb_CadVlPedagioVP_NUM_COMPROVANTE: TStringField;
    Tb_CadVlPedagioVP_VALOR_VALE: TFloatField;
    RLSDMod01_VlalePedagio: TRLSubDetail;
    RLBand2: TRLBand;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLBand3: TRLBand;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    Tb_CTEeNFe: TQuery;
    src_CTEeNFe: TDataSource;
    Tb_CTEeNFetipo_doc: TStringField;
    Tb_CTEeNFechv_acesso: TStringField;
    Tb_CTEeNFeunidade_carga: TStringField;
    Tb_CTEeNFeunidade_transporte: TStringField;
    Tb_CTEeNFechv_acesso_mask: TStringField;
    RLSubDetail1: TRLSubDetail;
    RLBand4: TRLBand;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    tsQrCode: TTabSheet;
    Label1: TLabel;
    edtText: TEdit;
    Label2: TLabel;
    cmbEncoding: TComboBox;
    Label3: TLabel;
    edtQuietZone: TEdit;
    PaintBox1: TPaintBox;
    Image1: TImage;
    tb_MDFEuf_carregamento: TStringField;
    tb_MDFEuf_descarregamento: TStringField;
    RLBand5: TRLBand;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLBand6: TRLBand;
    RLLabel31: TRLLabel;
    tb_MDFEMDFE_TPEMIS: TStringField;
    tb_MDFEMDFE_ENVIO_NPROT: TStringField;
    tb_MDFEMDFE_ENVIO_DTHOR: TDateTimeField;
    procedure RLmod01_cab04_contigenciaBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure Tb_CTEeNFeCalcFields(DataSet: TDataSet);
    procedure edtTextChange(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RLmod01_cab01BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rLDamDFE_mod01BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }


    QRCodeBitmap: TBitmap;


    procedure fCarregarVeiculoCondutor;

    procedure fLerCadNfeeCTE;



    procedure fLerCadvlPedagio;


    procedure QrCodeUpdate;


    procedure fLogoMarca;

  public
    { Public declarations }
    mId: Integer;
    procedure fLerCadMDFE;

  end;


const
mmodal: array[0..03] of string = ('Rodoviário tracao','Aéreo','Aquaviário','Ferroviário');
  
var
  Frm_MDFE_Impressao: TFrm_MDFE_Impressao;

implementation

uses S_DM1, Func, func_excecoes;

{$R *.dfm}

procedure TFrm_MDFE_Impressao.RLmod01_cab04_contigenciaBeforePrint(
  Sender: TObject; var PrintIt: Boolean);
begin

rllblmod01_obs_contigencia.Caption:='168 horas apos esta emissão '+FormatDateTime(fdathor, tb_MDFEMDFE_DHEMI.AsDateTime);


end;

procedure TFrm_MDFE_Impressao.fCarregarVeiculoCondutor;
var
query_condutor: TQuery;
x_cond: integer;
mcondutor: integer;
begin

query_condutor:=TQuery.create(nil);
query_condutor.databasename:=DM1.SG_ASSOC.DatabaseName;
query_condutor.sql.Add('select CC_CPF,CC_NOME from MDFE_CADCONDUTORES where '
                      +' CC_ID=:ID ');

query_condutor.ParamByName('ID').AsInteger:=mId;
try
   query_condutor.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_condutor,151,'_stru'+e.message,'user');
   exit;
   end;
   end;
if cds_veiculo_condutor.Active=false then
   begin
   cds_veiculo_condutor.CreateDataSet;
   cds_veiculo_condutor.Open;
   end
else
   cds_veiculo_condutor.EmptyDataSet;
mcondutor:=1;

While not query_condutor.Eof do
   begin
   cds_veiculo_condutor.append;
   if mcondutor=1 then
      begin
      cds_veiculo_condutorplaca.Value:=tb_MDFEMDFE_VT_PLACA.AsString;
      cds_veiculo_condutorrntrc.value:=tb_MDFEMDFE_PROP_RNTRC.AsString;
      end
   else
      begin
      cds_veiculo_condutorplaca.Value:='';
      cds_veiculo_condutorrntrc.value:='';
      end;
   cds_veiculo_condutorcpf.Value :=query_condutor.fieldbyname('CC_CPF').AsString;
   cds_veiculo_condutornome.Value:=query_condutor.fieldbyname('CC_NOME').AsString;
   cds_veiculo_condutor.Post;
   query_condutor.next;
   mcondutor:=mcondutor+1;
   end;
for x_cond:=mcondutor to 10 do
   begin
   cds_veiculo_condutor.append;
   if x_cond=1 then
      begin
      cds_veiculo_condutorplaca.Value:=tb_MDFEMDFE_VT_PLACA.AsString;
      cds_veiculo_condutorrntrc.value:=tb_MDFEMDFE_PROP_RNTRC.AsString;
      end
   else
      begin
      cds_veiculo_condutorplaca.Value:='';
      cds_veiculo_condutorrntrc.value:='';
      end;
   cds_veiculo_condutorcpf.Value :='';
   cds_veiculo_condutornome.Value:='';
   cds_veiculo_condutor.Post;
   end;





end;

procedure TFrm_MDFE_Impressao.fLerCadNfeeCTE;
begin

Tb_CTEeNFe.close;
Tb_CTEeNFe.sql.clear;
Tb_CTEeNFe.sql.Add('select '+QuotedStr('NFe')+' as tipo_doc '
                  +', MNF_CHV_NFE as chv_acesso '
                  +' from MDFE_CADMANIFESTO where MNF_ID=:ID ');
Tb_CTEeNFe.ParamByName('ID').AsInteger:=mId;
try
   Tb_CTEeNFe.open;
except on e : exception do
   begin
   ex_erroSql_Novo(Tb_CTEeNFe,25,'_stru'+e.message,'user');
   exit;
   end;
   end;

end;


procedure TFrm_MDFE_Impressao.fLerCadvlPedagio;
begin

Tb_CadVlPedagio.close;
Tb_CadVlPedagio.sql.clear;
Tb_CadVlPedagio.sql.Add('select VP_ID,VP_CNPJ_FORNECEDOR,VP_CNPJ_PAGADOR,VP_CPF_PAGADOR '
                  +',VP_NUM_COMPROVANTE,VP_VALOR_VALE '
                  +' from MDFE_CADVLPEDAGIO '
                  +' where VP_ID=:ID ');
Tb_CadVlPedagio.ParamByName('ID').AsInteger:=mId;
try
   Tb_CadVlPedagio.open;
except on e : exception do
   begin
   ex_erroSql_Novo(Tb_CadVlPedagio,285,'_stru'+e.message,'user');
   exit;
   end;
   end;


end;

procedure TFrm_MDFE_Impressao.Tb_CTEeNFeCalcFields(DataSet: TDataSet);



begin
Tb_CTEeNFechv_acesso_mask.Value:=Tb_CTEeNFetipo_doc.AsString+' - '
     +fRetornaChaveAcessoFormatada(Tb_CTEeNFechv_acesso.AsString);

Tb_CTEeNFeunidade_transporte.Value:=mModal[valint(tb_MDFEMDFE_MODAL.AsString)];
Tb_CTEeNFeunidade_carga.Value:='Container';
Tb_CTEeNFeunidade_carga.Value:='Outros';

end;

procedure TFrm_MDFE_Impressao.fLerCadMDFE;
begin
tb_MDFE.Close;
tb_MDFE.SQL.Clear;
tb_MDFE.sql.Add('Select MDFE_VT_PLACA,MDFE_VT_TARA,MDFE_VT_RENAVAN,MDFE_TOT_QNFE'
               +',MDFE_TOT_VCARGA,MDFE_TOT_QCARGA,MDFE_NUMERO,MDFE_VERSAO_XML,'
               +'MDFE_MOD,MDFE_SERIE,MDFE_DHEMI,MDFE_DHINIVIAGEM,MDFE_MODAL,MDFE_TOT_QCTE'
               +',MDFE_ID,MDFE_TPPROP,MDFE_DHINCLUSAO,MDFE_TPAMB,MDFE_CHV_MDFE'
               +',MDFE_STATUS,MDFE_VT_PLACA,MDFE_PROP_RNTRC'
               +',MDFE_TPEMIS,MDFE_ENVIO_NPROT,MDFE_ENVIO_DTHOR'
               +' from MDFE_CADMDFE where MDFE_ID=:ID ');
tb_MDFE.ParamByName('ID').AsInteger := mId;
try
   tb_MDFE.open;
except on e : exception do
   begin
   ex_erroSql_Novo(tb_MDFE,28,'_stru'+e.message,'user');
   exit;
   end;
   end;

fLerCadNfeeCTE;
fCarregarVeiculoCondutor;
fLerCadvlPedagio;
fLogoMarca;


rllblmod01_razsoc.Caption:=dm1.Tb_EmpRAZAO.AsString;
rllblmod01_endereco.Caption:=Trim(DM1.Tb_EmpENDERECO.Value+' '+Trim(DM1.Tb_EmpBAIRRO.Value));
rllblmod01_cidade_cep.Caption       :=Trim(DM1.Tb_EmpCIDADE.Value)+'-'+DM1.Tb_EmpUF.Value+' CEP: '+DM1.Tb_EmpCEP.Value;
rllblmod01_cnpj_ie_rntrc.Caption    :=DM1.Tb_Empcnpj_masc.AsString+' RNTRC '+tb_MDFEMDFE_PROP_RNTRC.AsString;



end;

procedure TFrm_MDFE_Impressao.QrCodeUpdate;
var
  QRCode: TDelphiZXingQRCode;
  Row, Column: Integer;
begin
  QRCode := TDelphiZXingQRCode.Create;
  try
    QRCode.Data := edtText.Text;
    QRCode.Encoding := TQRCodeEncoding(cmbEncoding.ItemIndex);
    QRCode.QuietZone := StrToIntDef(edtQuietZone.Text, 4);
    QRCodeBitmap.Height:=QRCode.Rows;

    QRCodeBitmap.Width:=QRCode.Columns;
//    QRCodeBitmap.row S  etSize(QRCode.Rows, QRCode.Columns);

//    QRCodeBitmap.SetSize(QRCode.Rows, QRCode.Columns);
    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack;
        end else
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
        end;
      end;
    end;
  finally
    QRCode.Free;
  end;
  PaintBox1.Repaint;
end;



procedure TFrm_MDFE_Impressao.edtTextChange(Sender: TObject);
begin
QrCodeUpdate;
end;

procedure TFrm_MDFE_Impressao.PaintBox1Paint(Sender: TObject);
var
  Scale: Double;
begin
  PaintBox1.Canvas.Brush.Color := clWhite;
  PaintBox1.Canvas.FillRect(Rect(0, 0, PaintBox1.Width, PaintBox1.Height));
  if ((QRCodeBitmap .Width > 0) and (QRCodeBitmap.Height > 0)) then
  begin
    if (PaintBox1.Width < PaintBox1.Height) then
    begin
      Scale := PaintBox1.Width / QRCodeBitmap.Width;
    end else
    begin
      Scale := PaintBox1.Height / QRCodeBitmap.Height;
    end;
    PaintBox1.Canvas.StretchDraw(Rect(0, 0, Trunc(Scale * QRCodeBitmap.Width), Trunc(Scale * QRCodeBitmap.Height)), QRCodeBitmap);
  end;



end;

procedure TFrm_MDFE_Impressao.FormCreate(Sender: TObject);
begin
  QRCodeBitmap := TBitmap.Create;
  QrCodeUpdate;


end;

procedure TFrm_MDFE_Impressao.RLmod01_cab01BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
stream_qrcode: TStream;

begin
if tb_MDFEMDFE_CHV_MDFE.AsString<>'' then
   begin
   edtText.Text := 'https://dfe-portal.svrs.rs.gov.br/mdfe/QRCode?chMDFe='+Tb_MDFEMDFE_CHV_MDFE.AsString+'&amp;tpAmb='+tb_MDFEMDFE_TPAMB.AsString;
   QrCodeUpdate;
   stream_qrcode:=TMemoryStream.Create;
   QRCodeBitmap.SaveToStream(stream_qrcode);
   stream_qrcode.Seek(0,soFromBeginning);
   RLImageMod01QrCode.Top:=6;;
   RLImageMod01QrCode.Height:=PaintBox1.Height;
   RLImageMod01QrCode.Height:=PaintBox1.Height+10;
   RLImageMod01QrCode.Picture.Bitmap.LoadFromStream(stream_qrcode);
   RLImageMod01QrCode.Height := PaintBox1.Height+20;
   freeandnil(stream_qrcode);
   end;



end;


procedure TFrm_MDFE_Impressao.fLogoMarca;
var
mjpeg : TJPEGImage;


begin


mjpeg:=TJPEGImage.Create;
if fLerImagemGravaStream('LOGO_NFE',mjpeg)=true then
   begin
   RLImageMod01Logo.Picture.Bitmap.Assign(mjpeg);
   RLImageMod01Logo.visible := True;
   end
else
   RLImageMod01Logo.visible := False;
freeandnil(mjpeg);

end;

procedure TFrm_MDFE_Impressao.rLDamDFE_mod01BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if  tb_MDFEMDFE_ENVIO_NPROT.AsString='' then
   rllblmod01_prot_dathor.Caption:='protocolo não encontrado'
else
   rllblmod01_prot_dathor.Caption:=tb_MDFEMDFE_ENVIO_NPROT.AsString
                                  +' - '+Formatdatetime(fdt2, tb_MDFEMDFE_ENVIO_DTHOR.AsDateTime)
                                  +' as '+Formatdatetime(fhr, tb_MDFEMDFE_ENVIO_DTHOR.AsDateTime);
if tb_MDFEMDFE_TPEMIS.AsString='1' then
   begin
   RLmod01_cab04_norma.Visible      :=true;
   RLmod01_cab04_contigencia.Visible:=false;
   end
else
   begin
   RLmod01_cab04_norma.Visible      :=false;
   RLmod01_cab04_contigencia.Visible:=true;
   end;


end;

end.

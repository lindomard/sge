unit S_VisNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, DBTables,S_DM1, DBCtrls,
  Buttons,func,lerarq, ComCtrls;

type
  TFrm_VisNF = class(TForm)
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Shape2: TShape;
    Cb_Saida: TCheckBox;
    Cb_Entrada: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Shape1: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Qr_nf02: TQuery;
    Src_NF02: TDataSource;
    DBGrid1: TDBGrid;
    Shape6: TShape;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Qr_Nf01: TQuery;
    Src_Nf01: TDataSource;
    RAZSOC: TDBText;
    ENDERECO: TDBText;
    CIDADE: TDBText;
    TELEFONE: TDBText;
    DBText1: TDBText;
    NUMNF: TDBText;
    SERIE: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText15: TDBText;
    DBText16: TDBText;
    Qr_nf02CODPROD: TFloatField;
    Qr_nf02CFOP: TFloatField;
    Qr_nf02QUANTIDADE: TFloatField;
    Qr_nf02ITEM: TFloatField;
    Qr_nf02VLPRODUTO: TFloatField;
    Qr_nf02ALIQ: TFloatField;
    Qr_nf02LOTE: TStringField;
    Qr_nf02DATAV: TDateTimeField;
    Qr_nf02PDESC01: TFloatField;
    Qr_nf02PDESC02: TFloatField;
    Qr_nf02PDESC03: TFloatField;
    Qr_nf02SITTRI: TStringField;
    Qr_nf02ALIQN: TFloatField;
    Qr_nf02ALIQNR: TFloatField;
    Qr_nf02BASEN: TFloatField;
    Qr_nf02ICMSN: TFloatField;
    Qr_nf02BASER: TFloatField;
    Qr_nf02ICMSR: TFloatField;
    Qr_nf02TABICM: TStringField;
    Qr_nf02LISTA: TFloatField;
    Qr_nf02TOTDES: TFloatField;
    Qr_nf02BASENR: TFloatField;
    Qr_nf02ICMSNR: TFloatField;
    Qr_nf02ISENTAS: TFloatField;
    Qr_nf02ALIPI: TFloatField;
    Qr_nf02VALIPI: TFloatField;
    Qr_nf02PMC: TFloatField;
    Qr_nf02DESCRICAO: TStringField;
    Qr_nf02UNID: TStringField;
    Qr_Nf01FORCLI: TFloatField;
    Qr_Nf01CODIGO: TFloatField;
    Qr_Nf01DATAPED: TDateTimeField;
    Qr_Nf01PDESC01: TFloatField;
    Qr_Nf01PDESC02: TFloatField;
    Qr_Nf01PDESC03: TFloatField;
    Qr_Nf01DESCVLR: TFloatField;
    Qr_Nf01TOTDES: TFloatField;
    Qr_Nf01TOTMER: TFloatField;
    Qr_Nf01TOTLIQ: TFloatField;
    Qr_Nf01STATUS: TFloatField;
    Qr_Nf01TOTPOS: TFloatField;
    Qr_Nf01TOTNEG: TFloatField;
    Qr_Nf01TOTINA: TFloatField;
    Qr_Nf01VALFRE: TFloatField;
    Qr_Nf01VALSEG: TFloatField;
    Qr_Nf01BASEN: TFloatField;
    Qr_Nf01BASER: TFloatField;
    Qr_Nf01ICMSN: TFloatField;
    Qr_Nf01ICMSR: TFloatField;
    Qr_Nf01BASENR: TFloatField;
    Qr_Nf01ICMSNR: TFloatField;
    Qr_Nf01ISENTAS: TFloatField;
    Qr_Nf01TOTOUT: TFloatField;
    Qr_Nf01TOTIPI: TFloatField;
    Qr_Nf01DATANF: TDateTimeField;
    Qr_Nf01NUMNF: TFloatField;
    Qr_Nf01SERIE: TStringField;
    Qr_Nf01SUBSER: TStringField;
    Qr_Nf01MODELO: TStringField;
    Qr_Nf01CODBCO: TFloatField;
    Qr_Nf01CODTRA: TFloatField;
    Qr_Nf01PERCIPIFRE: TFloatField;
    Qr_Nf01IPIFRETE: TFloatField;
    Qr_Nf01cnpj: TStringField;
    Qr_Nf01inscricao: TStringField;
    Qr_Nf01razao_emit: TStringField;
    Qr_Nf01endereco_emit: TStringField;
    Qr_Nf01cid_uf_emit: TStringField;
    Qr_Nf01fone_emit: TStringField;
    Qr_Nf01cfop_nota: TStringField;
    natop: TLabel;
    Qr_Nf01razao_dest: TStringField;
    Qr_Nf01cnpj_dest: TStringField;
    Qr_Nf01ie_dest: TStringField;
    Qr_Nf01cidade_dest: TStringField;
    DBText17: TDBText;
    Qr_Nf01numeronf: TStringField;
    Qr_nf02valortotal: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    Src_TotLista: TDataSource;
    Qr_TotLista: TQuery;
    Qr_TotListaPF2LISTA: TFloatField;
    Qr_TotListaTOTLIQ: TFloatField;
    Qr_TotListaBCICMS: TFloatField;
    Qr_TotListaICMS: TFloatField;
    Qr_TotListaBASER: TFloatField;
    Qr_TotListaICMSR: TFloatField;
    Qr_TotListaDESCONTO: TFloatField;
    Qr_TotListaTOTISEN: TFloatField;
    Qr_TotListaVLRIPI: TFloatField;
    Qr_TotListanomlista: TStringField;
    Qr_TotCFOP: TQuery;
    Src_CFOP: TDataSource;
    Qr_TotCFOPPF2CFO: TFloatField;
    Qr_TotCFOPTOTLIQ: TFloatField;
    Qr_TotCFOPBCICMS: TFloatField;
    Qr_TotCFOPICMS: TFloatField;
    Qr_TotCFOPBASER: TFloatField;
    Qr_TotCFOPICMSR: TFloatField;
    Qr_TotCFOPDESCONTO: TFloatField;
    Qr_TotCFOPTOTISEN: TFloatField;
    Qr_TotCFOPVLRIPI: TFloatField;
    Qr_TotSitTri: TQuery;
    Src_SitTri: TDataSource;
    Qr_TotSitTriPF2SIT: TStringField;
    Qr_TotAliq: TQuery;
    Src_TotAliq: TDataSource;
    Qr_TotSitTriTOTLIQ: TFloatField;
    Qr_TotSitTriBCICMS: TFloatField;
    Qr_TotSitTriICMS: TFloatField;
    Qr_TotSitTriBASER: TFloatField;
    Qr_TotSitTriICMSR: TFloatField;
    Qr_TotSitTriDESCONTO: TFloatField;
    Qr_TotSitTriTOTISEN: TFloatField;
    Qr_TotSitTriVLRIPI: TFloatField;
    Qr_TotAliqPF2ALIQ: TFloatField;
    Qr_TotAliqTOTLIQ: TFloatField;
    Qr_TotAliqBCICMS: TFloatField;
    Qr_TotAliqICMS: TFloatField;
    Qr_TotAliqBASER: TFloatField;
    Qr_TotAliqICMSR: TFloatField;
    Qr_TotAliqDESCONTO: TFloatField;
    Qr_TotAliqTOTISEN: TFloatField;
    Qr_TotAliqVLRIPI: TFloatField;
    TabSheet5: TTabSheet;
    DBGrid6: TDBGrid;
    Qr_Dup: TQuery;
    Qr_DupDTVENC: TDateTimeField;
    Qr_DupVALOR: TFloatField;
    Qr_DupDESCF: TFloatField;
    Qr_DupDTDESCF: TDateTimeField;
    Src_Dup: TDataSource;
    Qr_Dupdtdesc: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Qr_Nf01CalcFields(DataSet: TDataSet);
    procedure Qr_nf02CalcFields(DataSet: TDataSet);
    procedure Qr_TotListaCalcFields(DataSet: TDataSet);
    procedure Qr_DupCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_VisNF: TFrm_VisNF;

implementation

{$R *.dfm}

procedure TFrm_VisNF.FormCreate(Sender: TObject);
begin
Qr_Nf01PDESC01.DisplayFormat   :=mcasas;
Qr_Nf01PDESC02.DisplayFormat   :=mcasas;
Qr_Nf01PDESC03.DisplayFormat   :=mcasas;
Qr_Nf01DESCVLR.DisplayFormat   :=mcasas;
Qr_Nf01TOTDES.DisplayFormat    :=mcasas;
Qr_Nf01TOTLIQ.DisplayFormat    :=mcasas;
Qr_Nf01TOTPOS.DisplayFormat    :=mcasas;
Qr_Nf01TOTNEG.DisplayFormat    :=mcasas;
Qr_Nf01TOTINA.DisplayFormat    :=mcasas;
Qr_Nf01VALFRE.DisplayFormat    :=mcasas;
Qr_Nf01VALSEG.DisplayFormat    :=mcasas;
Qr_Nf01BASEN.DisplayFormat     :=mcasas;
Qr_Nf01BASER.DisplayFormat     :=mcasas;
Qr_Nf01ICMSN.DisplayFormat     :=mcasas;
Qr_Nf01ICMSR.DisplayFormat     :=mcasas;
Qr_Nf01BASENR.DisplayFormat    :=mcasas;
Qr_Nf01ICMSNR.DisplayFormat    :=mcasas;
Qr_Nf01ISENTAS.DisplayFormat   :=mcasas;
Qr_Nf01TOTOUT.DisplayFormat    :=mcasas;
Qr_Nf01TOTIPI.DisplayFormat    :=mcasas;
Qr_Nf01PERCIPIFRE.DisplayFormat:=mcasas;
Qr_Nf01IPIFRETE.DisplayFormat  :=mcasas;
Qr_Nf01DATAPED.DisplayFormat   :=fdt2;
Qr_Nf01DATANF.DisplayFormat    :=fdt2;
Qr_Nf01TOTMER.DisplayFormat    :=mcasas;


Qr_nf02QUANTIDADE.DisplayFormat:=mcasqtd;
Qr_nf02VLPRODUTO.DisplayFormat :=mcasaspu;
Qr_nf02ALIQ.DisplayFormat      :=mcasas;
Qr_nf02PDESC01.DisplayFormat   :=mcasas;
Qr_nf02PDESC02.DisplayFormat   :=mcasas;
Qr_nf02PDESC03.DisplayFormat   :=mcasas;
Qr_nf02ALIQN.DisplayFormat     :=mcasas;
Qr_nf02DATAV.DisplayFormat     :=fdt2;
Qr_nf02ALIQNR.DisplayFormat    :=mcasas;
Qr_nf02BASEN.DisplayFormat     :=mcasas;
Qr_nf02ICMSN.DisplayFormat     :=mcasas;
Qr_nf02BASER.DisplayFormat     :=mcasas;
Qr_nf02ICMSR.DisplayFormat     :=mcasas;
Qr_nf02TOTDES.DisplayFormat    :=mcasas;
Qr_nf02BASENR.DisplayFormat    :=mcasas;
Qr_nf02ICMSNR.DisplayFormat    :=mcasas;
Qr_nf02ISENTAS.DisplayFormat   :=mcasas;
Qr_nf02ALIPI.DisplayFormat     :=mcasas;
Qr_nf02VALIPI.DisplayFormat    :=mcasas;
Qr_nf02PMC.DisplayFormat       :=mcasas;
Qr_nf02valortotal.DisplayFormat:=mcasas;

Qr_TotListaTOTLIQ.DisplayFormat  :=mcasas;
Qr_TotListaBCICMS.DisplayFormat  :=mcasas;
Qr_TotListaICMS.DisplayFormat    :=mcasas;
Qr_TotListaBASER.DisplayFormat   :=mcasas;
Qr_TotListaICMSR.DisplayFormat   :=mcasas;
Qr_TotListaDESCONTO.DisplayFormat:=mcasas;
Qr_TotListaTOTISEN.DisplayFormat :=mcasas;
Qr_TotListaVLRIPI.DisplayFormat  :=mcasas;


Qr_TotCFOPTOTLIQ.DisplayFormat  :=mcasas;
Qr_TotCFOPBCICMS.DisplayFormat  :=mcasas;
Qr_TotCFOPICMS.DisplayFormat    :=mcasas;
Qr_TotCFOPBASER.DisplayFormat   :=mcasas;
Qr_TotCFOPICMSR.DisplayFormat   :=mcasas;
Qr_TotCFOPDESCONTO.DisplayFormat:=mcasas;
Qr_TotCFOPTOTISEN.DisplayFormat :=mcasas;
Qr_TotCFOPVLRIPI.DisplayFormat  :=mcasas;

Qr_TotSitTriTOTLIQ.DisplayFormat  :=mcasas;
Qr_TotSitTriBCICMS.DisplayFormat  :=mcasas;
Qr_TotSitTriICMS.DisplayFormat    :=mcasas;
Qr_TotSitTriBASER.DisplayFormat   :=mcasas;
Qr_TotSitTriICMSR.DisplayFormat   :=mcasas;
Qr_TotSitTriDESCONTO.DisplayFormat:=mcasas;
Qr_TotSitTriTOTISEN.DisplayFormat :=mcasas;
Qr_TotSitTriVLRIPI.DisplayFormat  :=mcasas;

Qr_TotAliqPF2ALIQ.DisplayFormat  :=mcasas;
Qr_TotAliqTOTLIQ.DisplayFormat   :=mcasas;
Qr_TotAliqBCICMS.DisplayFormat   :=mcasas;
Qr_TotAliqICMS.DisplayFormat     :=mcasas;
Qr_TotAliqBASER.DisplayFormat    :=mcasas;
Qr_TotAliqICMSR.DisplayFormat    :=mcasas;
Qr_TotAliqDESCONTO.DisplayFormat :=mcasas;
Qr_TotAliqTOTISEN.DisplayFormat  :=mcasas;
Qr_TotAliqVLRIPI.DisplayFormat   :=mcasas;




end;

procedure TFrm_VisNF.Qr_Nf01CalcFields(DataSet: TDataSet);
begin
Qr_Nf01numeronf.Value:=FormatFloat('000000',Qr_Nf01NUMNF.Value);
if Qr_Nf01FORCLI.Value=1 then
   begin
   Qr_Nf01razao_emit.Value   :=DM1.Tb_EmpRAZAO.Value;
   Qr_Nf01endereco_emit.Value:=Trim(DM1.Tb_EmpENDERECO.Value)+' '+DM1.Tb_EmpBAIRRO.Value;
   Qr_Nf01cid_uf_emit.Value  :=Trim(DM1.Tb_EmpCIDADE.Value)+'-'+DM1.Tb_EmpUF.Value;
   Qr_Nf01fone_emit.Value    :=DM1.Tb_EmpFONE.Value;
   Qr_Nf01inscricao.Value :=DM1.Tb_EmpINSCRICAO.Value;
   Qr_Nf01cnpj.Value         :=FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value);
   if flqr1('CRAZAO,CCNPJ,CIE,CLOG,CCIDADE,CUF,CBAIRRO,CFONERES','C','CADCLI','N','CCODCLI',Qr_Nf01CODIGO.AsString) then
      begin
      Qr_Nf01cnpj_dest.Value  :=FormatFloat('00"."000"."000/0000-00',DM1.Query1.FieldbyName('CCNPJ').AsFloat);
      Qr_Nf01razao_dest.Value :=DM1.Query1.FieldbyName('CRAZAO').AsString;
      Qr_Nf01ie_dest.Value    :=DM1.Query1.FieldbyName('CIE').AsString;
      Qr_Nf01cidade_dest.Value:=DM1.Query1.FieldbyName('CCIDADE').AsString+'-'+DM1.Query1.FieldbyName('CUF').AsString;
      end;

   end
else
   begin
   if flqr1('FRAZAO,FCGC,FIE,FNLOG,FCIDADE,FUF,FBAIRRO,FFONE','F','CADFOR','N','FCODFOR',Qr_Nf01CODIGO.AsString) then
      begin
      Qr_Nf01razao_emit.Value   :=DM1.Query1.FieldbyName('FRAZAO').AsString;
      Qr_Nf01endereco_emit.Value:=Trim(DM1.Query1.FieldbyName('FNLOG').AsString)+' '+DM1.Query1.FieldbyName('FBAIRRO').AsString;
      Qr_Nf01cid_uf_emit.Value  :=Trim(DM1.Query1.FieldbyName('FCIDADE').AsString)+'-'+DM1.Query1.FieldbyName('FUF').AsString;
      Qr_Nf01fone_emit.Value    :=DM1.Query1.FieldbyName('FFONE').AsString;
      Qr_Nf01inscricao.Value    :=DM1.Query1.FieldbyName('FIE').AsString;
      Qr_Nf01cnpj.Value         :=FormatFloat('00"."000"."000/0000-00',DM1.Query1.FieldbyName('FCGC').AsFloat);
      end;
   Qr_Nf01cnpj_dest.Value  :=FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value);
   Qr_Nf01razao_dest.Value :=DM1.Tb_EmpRAZAO.Value;
   Qr_Nf01ie_dest.Value    :=DM1.Tb_EmpINSCRICAO.Value;
   Qr_Nf01cidade_dest.Value:=DM1.Tb_EmpCIDADE.Value+'-'+DM1.Tb_EmpUF.Value;
   end;

end;

procedure TFrm_VisNF.Qr_nf02CalcFields(DataSet: TDataSet);
begin
Qr_nf02valortotal.Value:=Qr_nf02VLPRODUTO.Value*Qr_nf02QUANTIDADE.Value;
end;

procedure TFrm_VisNF.Qr_TotListaCalcFields(DataSet: TDataSet);
begin
if Qr_TotListaPF2LISTA.Value=2 then
   Qr_TotListanomlista.Value:='Lista Negativa'
else if Qr_TotListaPF2LISTA.Value=1 then
   Qr_TotListanomlista.Value:='Lista Positiva'
else
   Qr_TotListanomlista.Value:='Lista Inalterada'

end;

procedure TFrm_VisNF.Qr_DupCalcFields(DataSet: TDataSet);
begin
if Qr_DupDTDESCF.Value>pdatanula then
   Qr_Dupdtdesc.Value:=FormatDatetime(fdt2, Qr_DupDTDESCF.Value);
end;

procedure TFrm_VisNF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.

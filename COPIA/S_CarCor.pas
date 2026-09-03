unit S_CarCor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Grids, Buttons,S_DM1,db,dbtables,
  DBCtrls,func, RLRichFilter, RLHTMLFilter, RLFilters, RLPDFFilter;

type
  TFrm_CarCor = class(TForm)
    Panel1: TPanel;
    GB_01: TGroupBox;
    GB_02: TGroupBox;
    Label5: TLabel;
    Label4: TLabel;
    RAZSOC: TEdit;
    ENDERECO: TEdit;
    CIDADE: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    MDATCAR: TMaskEdit;
    Shape20: TShape;
    Label8: TLabel;
    NUMNF: TEdit;
    SERIENF: TEdit;
    Label9: TLabel;
    DTEMIS: TMaskEdit;
    Label10: TLabel;
    RG_EMISSAO: TRadioGroup;
    STG1: TStringGrid;
    Panel2: TPanel;
    Label1: TLabel;
    CHAVE: TEdit;
    bbIncluir: TBitBtn;
    bbPesquisar: TBitBtn;
    bbCancelar: TBitBtn;
    bbExcluir: TBitBtn;
    bbSair: TBitBtn;
    bbGravar: TBitBtn;
    bbImprimir: TBitBtn;
    Tb_CCOR01: TQuery;
    Tb_CCOR02: TQuery;
    U_CCOR01: TUpdateSQL;
    U_CCOR02: TUpdateSQL;
    Tb_CCOR01CC1CODEMP: TFloatField;
    Tb_CCOR01CC1CHAVE: TFloatField;
    Tb_CCOR01CC1DATA: TDateTimeField;
    Tb_CCOR01CC1RAZAO: TStringField;
    Tb_CCOR01CC1ENDERECO: TStringField;
    Tb_CCOR01CC1CIDADE: TStringField;
    Tb_CCOR01CC1NUMNF: TFloatField;
    Tb_CCOR01CC1SERIE: TStringField;
    Tb_CCOR01CC1DATANF: TDateTimeField;
    Tb_CCOR01CC1EMISSAO: TFloatField;
    Tb_CCOR02CC2CODEMP: TFloatField;
    Tb_CCOR02CC2CHAVE: TFloatField;
    Tb_CCOR02CC2ITEM: TFloatField;
    Tb_CCOR02CC2CORRETO: TMemoField;
    DBCORRETO: TDBMemo;
    Src_CCOR02: TDataSource;
    bbAlterar: TBitBtn;
    Modelo: TEdit;
    Label2: TLabel;
    Src_CCOR01: TDataSource;
    bbEmitir: TBitBtn;
    RLPDFFilter1: TRLPDFFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLRichFilter2: TRLRichFilter;
    Tb_CCOR02CC2DESCITEM: TStringField;
    Tb_CCOR01CC1MOTIVO: TMemoField;
    lbl_ordem: TLabel;
    edt_ordem: TLabel;
    Tb_CCOR01CC1ORDEMEVE: TFloatField;
    Tb_CCOR01CC1MODELO: TStringField;
    Tb_CCOR01CC1NFE_XML_CLIENTE: TMemoField;
    Tb_CCOR01CC1DATHOR_DIG: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure STG1DblClick(Sender: TObject);
    procedure bbIncluirClick(Sender: TObject);
    procedure STG1Click(Sender: TObject);
    procedure DBCORRETOExit(Sender: TObject);
    procedure bbGravarClick(Sender: TObject);
    procedure bbAlterarClick(Sender: TObject);
    procedure RAZSOCExit(Sender: TObject);
    procedure RAZSOCKeyPress(Sender: TObject; var Key: Char);
    procedure ENDERECOKeyPress(Sender: TObject; var Key: Char);
    procedure CIDADEKeyPress(Sender: TObject; var Key: Char);
    procedure NUMNFKeyPress(Sender: TObject; var Key: Char);
    procedure SERIENFKeyPress(Sender: TObject; var Key: Char);
    procedure ENDERECOExit(Sender: TObject);
    procedure CIDADEExit(Sender: TObject);
    procedure NUMNFExit(Sender: TObject);
    procedure SERIENFExit(Sender: TObject);
    procedure MDATCARExit(Sender: TObject);
    procedure DTEMISExit(Sender: TObject);
    procedure CHAVEExit(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure bbExcluirClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure DBCORRETOEnter(Sender: TObject);
    procedure bbPesquisarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure c(DataSet: TDataSet);
    procedure ModeloExit(Sender: TObject);
    procedure bbEmitirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function fCarCorLimpar(ptipo: Integer): Boolean;
    function fCarCorLerCar(pchave: Real): Boolean;

  public
    { Public declarations }
  end;

var
  Frm_CarCor: TFrm_CarCor;
  moper: Integer;
implementation

uses S_CarCor_Loc, S_CarCor2, Func2, S_DM4, S_NFE_Impressao,
  lerarq;

{$R *.dfm}

procedure TFrm_CarCor.FormCreate(Sender: TObject);
begin
fCarCorLimpar(0);
end;

procedure TFrm_CarCor.STG1DblClick(Sender: TObject);
var
mlin: Integer;
mcol: Integer;
begin
if bbGravar.Enabled then
   begin
   mlin:=STG1.Row;
   mcol:=STG1.Col;
   if mlin<1 then
      exit;
   if (mcol=0) or (mcol=03) or (mcol=06) then
      begin
      if STG1.Cells[mcol,mlin]='X' then
         begin
         STG1.Cells[mcol,mlin]:=' ';
         if Tb_CCOR02.Locate('CC2ITEM',ValFloat(STG1.Cells[mcol+1,mlin]),[]) then
            begin
            Tb_CCOR02.edit;
            Tb_CCOR02CC2CORRETO.Value:='';
            Tb_CCOR02.Post;
            end;
         GB_02.Caption:='Retificações a Serem Consideradas. Item '+STG1.Cells[mcol+1,mlin]+' '+STG1.Cells[mcol+2,mlin];
         end
      else
         begin
         STG1.Cells[mcol,mlin]:='X';
         if bbGravar.Enabled then
           DBCORRETO.ReadOnly  :=False;
         if not Tb_CCOR02.Locate('CC2ITEM',ValFloat(STG1.Cells[mcol+1,mlin]),[]) then
            Tb_CCOR02.Append
         else
            Tb_CCOR02.Edit;
         Tb_CCOR02CC2ITEM.Value:=ValFloat(STG1.Cells[mcol+1,mlin]);
         Tb_CCOR02CC2DESCITEM.Value:=STG1.Cells[mcol+2,mlin];
         GB_02.Caption:='Retificações a Serem Consideradas. Item '+STG1.Cells[mcol+1,mlin]+' '+STG1.Cells[mcol+2,mlin];
         DBCORRETO.SetFocus;
         end;
      end;
   end;
end;

procedure TFrm_CarCor.bbIncluirClick(Sender: TObject);
begin
bbPesquisar.Enabled :=False;
bbExcluir.Enabled   :=False;
bbIncluir.Enabled   :=False;
bbAlterar.Enabled   :=False;
bbGravar.Enabled    :=True;
bbImprimir.Enabled  :=False;
bbEmitir.Enabled    :=False;
GB_01.Enabled       :=True;
CHAVE.Enabled       :=False;
Tb_CCOR01.Close;
if DM1.Qr_TID.Locate('TINOME','CADNS',[]) then
   Tb_CCOR01.ParamByName('CODEMP').AsString:='%'
else
   Tb_CCOR01.ParamByName('CODEMP').AsFloat  :=codemp;
Tb_CCOR01.ParamByName('CHAVE').AsFloat      :=99999999999;
Tb_CCOR01.Open;

Tb_CCOR02.Close;
if DM1.Qr_TID.Locate('TINOME','CADNS',[]) then
   Tb_CCOR02.ParamByName('CODEMP').AsString:='%'
else
   Tb_CCOR02.ParamByName('CODEMP').AsFloat  :=codemp;
Tb_CCOR02.ParamByName('CHAVE').AsFloat      :=99999999999;
Tb_CCOR02.Open;
moper:=0;
CHAVE.Text:='';
fCarCorLimpar(0);
MDATCAR.Text:=FormatDateTime(fdt2, date);

NUMNF.SetFocus;

end;

procedure TFrm_CarCor.STG1Click(Sender: TObject);
var
mlin: Integer;
mcol: Integer;
begin
mlin:=STG1.Row;
mcol:=STG1.Col;
if mlin<1 then
   exit;
if mcol<3 then
   mcol:=0
else if mcol>5 then
   mcol:=6
else
   mcol:=3;
DBCORRETO.ReadOnly:=true;
if Tb_CCOR02.Active then
   begin
   if Tb_CCOR02.Locate('CC2ITEM',ValFloat(STG1.Cells[mcol+1,mlin]),[]) then
      begin
      GB_02.Caption:='Retificações a Serem Consideradas. Item '+STG1.Cells[mcol+1,mlin]+' '+STG1.Cells[mcol+2,mlin];
      if bbGravar.Enabled then
         DBCORRETO.ReadOnly:=False;
      end;
   end;

end;

procedure TFrm_CarCor.DBCORRETOExit(Sender: TObject);
begin
if Tb_CCOR02.State in [DsEdit, DsInsert] then
   begin
   Tb_CCOR02.Post;
   DBCORRETO.ReadOnly  :=True;
   end;
end;

function TFrm_CarCor.fCarCorLimpar(ptipo: Integer): Boolean;
var
mqtdlcol: Integer;
begin

mqtdlcol:=12;
STG1.Cells[2,00]:='    Especificação     ';
STG1.Cells[5,00]:='    Especificação     ';
STG1.Cells[8,00]:='    Especificação     ';

STG1.Cells[0,01]:=' ';
STG1.Cells[1,01]:='01';
STG1.Cells[2,01]:='Razão Social';

STG1.Cells[3,01]:=' ';
STG1.Cells[4,01]:=IntToStr(1+mqtdlcol);
STG1.Cells[5,01]:='Quantidade(Produto)';

STG1.Cells[6,01]:=' ';
STG1.Cells[7,01]:=IntToStr(1+(mqtdlcol*2));;
STG1.Cells[8,01]:='Nome do Transportador';

STG1.Cells[0,02]:=' ';
STG1.Cells[1,02]:='02';
STG1.Cells[2,02]:='Endereço';

STG1.Cells[3,02]:=' ';
STG1.Cells[4,02]:=IntToStr(2+mqtdlcol);
STG1.Cells[5,02]:='Descrição dos Produtos';

STG1.Cells[6,02]:=' ';
STG1.Cells[7,02]:=IntToStr(2+mqtdlcol*2);
STG1.Cells[8,02]:='Endereço do Transportador';


STG1.Cells[0,03]:=' ';
STG1.Cells[1,03]:='03';
STG1.Cells[2,03]:='Município';

STG1.Cells[3,03]:=' ';
STG1.Cells[4,03]:=IntToStr(3+mqtdlcol);
STG1.Cells[5,03]:='Preço Unitário';

STG1.Cells[6,03]:=' ';
STG1.Cells[7,03]:=IntToStr(3+mqtdlcol*2);
STG1.Cells[8,03]:='Termo de Isenção do IPI';

STG1.Cells[0,04]:=' ';
STG1.Cells[1,04]:='04';
STG1.Cells[2,04]:='Estado';

STG1.Cells[3,04]:=' ';
STG1.Cells[4,04]:=IntToStr(4+mqtdlcol);
STG1.Cells[5,04]:='Valor Total do Produto';

STG1.Cells[6,04]:=' ';
STG1.Cells[7,04]:=IntToStr(4+mqtdlcol*2);
STG1.Cells[8,04]:='Termo de Isenção do ICMS';

STG1.Cells[0,05]:=' ';
STG1.Cells[1,05]:='05';
STG1.Cells[2,05]:='No.de Inscrição no CNPJ';

STG1.Cells[3,05]:=' ';
STG1.Cells[4,05]:=IntToStr(5+mqtdlcol);
STG1.Cells[5,05]:='Classificação Fiscal';

STG1.Cells[6,05]:=' ';
STG1.Cells[7,05]:=IntToStr(5+mqtdlcol*2);
STG1.Cells[8,05]:='Peso - Bruto/Líquido';

STG1.Cells[0,06]:=' ';
STG1.Cells[1,06]:='06';
STG1.Cells[2,06]:='No.de Inscrição Estadual';

STG1.Cells[3,06]:=' ';
STG1.Cells[4,06]:=IntToStr(6+mqtdlcol);
STG1.Cells[5,06]:='Alíquota do IPI';

STG1.Cells[6,06]:=' ';
STG1.Cells[7,06]:=IntToStr(6+mqtdlcol*2);
STG1.Cells[8,06]:='Volumes - Marca/Num/Quant';

STG1.Cells[0,07]:=' ';
STG1.Cells[1,07]:='07';
STG1.Cells[2,07]:='Natureza da Operação';

STG1.Cells[3,07]:=' ';
STG1.Cells[4,07]:=IntToStr(7+mqtdlcol);
STG1.Cells[5,07]:='Valor do IPI';

STG1.Cells[6,07]:=' ';
STG1.Cells[7,07]:=IntToStr(7+mqtdlcol*2);
STG1.Cells[8,07]:='Rasuras';

STG1.Cells[0,08]:=' ';
STG1.Cells[1,08]:='08';
STG1.Cells[2,08]:='Código Fiscal da Operação(CFOP)';

STG1.Cells[3,08]:=' ';
STG1.Cells[4,08]:=IntToStr(8+mqtdlcol);
STG1.Cells[5,08]:='Base de Cálculo do IPI';

STG1.Cells[6,08]:=' ';
STG1.Cells[7,08]:=IntToStr(8+mqtdlcol*2);
STG1.Cells[8,08]:='No. errado da nota';

STG1.Cells[0,09]:=' ';
STG1.Cells[1,09]:='09';
STG1.Cells[2,09]:='Via de Transporte';

STG1.Cells[3,09]:=' ';
STG1.Cells[4,09]:=IntToStr(9+mqtdlcol);
STG1.Cells[5,09]:='Valor Total da Nota';

STG1.Cells[6,09]:=' ';
STG1.Cells[7,09]:=IntToStr(9+mqtdlcol*2);
STG1.Cells[8,09]:='Base de Cálc. ICMS Subst.';

STG1.Cells[0,10]:=' ';
STG1.Cells[1,10]:='10';
STG1.Cells[2,10]:='Data de Emissão';

STG1.Cells[3,10]:=' ';
STG1.Cells[4,10]:=IntToStr(10+mqtdlcol);
STG1.Cells[5,10]:='Alíquota do ICMS';

STG1.Cells[6,10]:=' ';
STG1.Cells[7,10]:=IntToStr(10+mqtdlcol*2);
STG1.Cells[8,10]:='Valor do ICMS Substituição';

STG1.Cells[0,11]:=' ';
STG1.Cells[1,11]:='11';
STG1.Cells[2,11]:='Data de Saída';

STG1.Cells[3,11]:=' ';
STG1.Cells[4,11]:=IntToStr(11+mqtdlcol);
STG1.Cells[5,11]:='Valor do ICMS';

STG1.Cells[6,11]:=' ';
STG1.Cells[7,11]:=IntToStr(11+mqtdlcol*2);
STG1.Cells[8,11]:='Valor Total dos Produtos';

STG1.Cells[0,12]:=' ';
STG1.Cells[1,12]:='12';
STG1.Cells[2,12]:='Unidade(Produto)';

STG1.Cells[3,12]:=' ';
STG1.Cells[4,12]:=IntToStr(12+mqtdlcol);
STG1.Cells[5,12]:='Base de Cálculo do ICMS';

STG1.Cells[6,12]:=' ';
STG1.Cells[7,12]:=IntToStr(12+mqtdlcol*2);
STG1.Cells[8,12]:='Outros';

CHAVE.Text   :='';
RAZSOC.Text  :='';
ENDERECO.Text:='';
CIDADE.Text  :='';
MDATCAR.Text :='/  /';
NUMNF.Text   :='';
SERIENF.Text :='';
DTEMIS.Text  :='/  /';


result:=True;
end;
procedure TFrm_CarCor.bbGravarClick(Sender: TObject);
var
machou: Boolean;
mchave: Real;
xMotivo: String;
Query_Temp: TQuery;
Query_Cor01: TQuery;
Query_Cor02: TQuery;


begin
if Trim(RAZSOC.Text)='' then
   begin
   FMensagem('Razão Social, campo Obrigatório!',0,['0'],0);
   RAZSOC.SetFocus;
   exit;
   end;
if Trim(MDATCAR.Text)='/  /' then
   begin
   FMensagem('Data da Carta de Correção, campo Obrigatório!',0,['0'],0);
   MDATCAR.SetFocus;
   exit;
   end;
if Trim(DTEMIS.Text)='/  /' then
   begin
   FMensagem('Data de Emissao da Carta de Correção, campo Obrigatório!',0,['0'],0);
   DTEMIS.SetFocus;
   exit;
   end;
machou:=False;
Tb_CCOR02.First;
While not Tb_CCOR02.Eof do
   begin
   if Trim(Tb_CCOR02CC2CORRETO.Value)<>'' then
      begin
      machou:=true;
      break;
      end;
   Tb_CCOR02.Next;
   end;
if not machou then
   begin
   FMensagem('Pelo menos um ítem tem que ser selecionado!',0,['0'],0);
   exit;
   end;

Tb_CCOR02.First;
xMotivo:='';
While not Tb_CCOR02.Eof do
   begin
   if Trim(Tb_CCOR02CC2CORRETO.Value)='' then
      begin
      Tb_CCOR02.Next;
      Continue;
      end;
      // retirado o codigo do evento em 01/1/2019 as 17:51 a pedido do frederico(boi)
//   xMotivo:=xMotivo+FormatFloat('00',Tb_CCOR02CC2ITEM.AsInteger)+' '+Tb_CCOR02CC2CORRETO.AsString+#13;
   xMotivo:=xMotivo+iif(xMotivo='','',' / ')+Tb_CCOR02CC2CORRETO.AsString;
//   xMotivo:=xMotivo+FormatFloat('00',Tb_CCOR02CC2ITEM.AsInteger)+' '+Tb_CCOR02CC2DESCITEM.AsString+#13;
   Tb_CCOR02.Next;
   end;
Query_Temp:=TQuery.Create(nil);
Query_Temp.DatabaseName:='SG_ASSOC';

Query_Cor02:=TQuery.Create(nil);
Query_Cor02.DatabaseName:='SG_ASSOC';

Query_Cor01:=TQuery.Create(nil);
Query_Cor01.DatabaseName:='SG_ASSOC';


Query_Cor01.Close;
Query_Cor01.SQL.Clear;
Query_Cor01.SQL.Add('Insert into CADCCOR01 ('
                  +'CC1CODEMP, '
                  +'CC1CHAVE, '
                  +'CC1DATA, '
                  +'CC1RAZAO, '
                  +'CC1ENDERECO, '
                  +'CC1CIDADE, '
                  +'CC1NUMNF, '
                  +'CC1SERIE, '
                  +'CC1DATANF, '
                  +'CC1EMISSAO, '
                  +'CC1MOTIVO '
                  +',CC1ORDEMEVE '
                  +',CC1MODELO '
                  +',CC1DATHOR_DIG '

                  +') values ('
                  +':CODEMP, '
                  +':CHAVE, '
                  +':DATA, '
                  +':RAZAO, '
                  +':ENDERECO, '
                  +':CIDADE, '
                  +':NUMNF, '
                  +':SERIE, '
                  +':DATANF, '
                  +':EMISSAO, '
                  +':MOTIVO '
                  +',:CC1ORDEMEVE '
                  +',:CC1MODELO '
                  +',:CC1DATHOR_DIG '

                  +' ) ');
if moper=0 then
   begin
   Query_Temp.Close;
   Query_Temp.SQL.clear;
   Query_Temp.SQL.add('Select max(CC1CHAVE) from CADCCOR01 ');
   Query_Temp.Open;
   mchave:=Query_Temp.Fields[0].AsInteger+1;
   end
else
   begin
   mchave:=ValFloat(CHAVE.Text);
   Query_Temp.Close;
   Query_Temp.SQL.Clear;
   Query_Temp.SQL.add('Delete from CADCCOR01 where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADNS',[]),'',' CC1CODEMP=0'+IntTostr(codemp)+' and ')
                     +' CC1CHAVE=0'+FloatTostr(mchave));
   Query_Temp.ExecSQL;
   fdm1StartCommit;
   Query_Temp.Close;
   Query_Temp.SQL.Clear;
   Query_Temp.SQL.add('Delete from CADCCOR02 where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADNS',[]),'',' CC2CODEMP=0'+IntTostr(codemp)+' and ')
                     +' CC2CHAVE=0'+FloatTostr(mchave));
   Query_Temp.ExecSQL;
   fdm1StartCommit;
   end;

Query_Cor01.ParamByName('CODEMP').AsInteger  :=codemp;
Query_Cor01.ParamByName('CHAVE').AsFloat     :=mchave;
Query_Cor01.ParamByName('DATA').AsDateTime   :=StrToDate(MDATCAR.Text);
Query_Cor01.ParamByName('RAZAO').AsString    :=RAZSOC.Text;
Query_Cor01.ParamByName('ENDERECO').AsString :=ENDERECO.Text;
Query_Cor01.ParamByName('CIDADE').AsString   :=CIDADE.Text;
Query_Cor01.ParamByName('NUMNF').AsFloat     :=ValFloat(numnf.Text);
Query_Cor01.ParamByName('SERIE').AsString    :=SERIENF.Text;
Query_Cor01.ParamByName('DATANF').AsDateTime :=StrToDate(DTEMIS.Text);
Query_Cor01.ParamByName('EMISSAO').AsInteger :=RG_EMISSAO.ItemIndex;
Query_Cor01.ParamByName('MOTIVO').AsMemo     :=xMotivo;
Query_Cor01.ParamByName('CC1ORDEMEVE').Value :=valint(edt_ordem.Caption);
Query_Cor01.ParamByName('CC1MODELO').Value   :=Modelo.Text;
Query_Cor01.ParamByName('CC1DATHOR_DIG').Value:=NOW;
Query_Cor01.ExecSQL;
fdm1StartCommit;


Query_Cor02.Close;
Query_Cor02.SQL.Clear;

Query_Cor02.SQL.Add('Insert into CADCCOR02 ('
                  +'CC2CODEMP, '
                  +'CC2CHAVE, '
                  +'CC2ITEM, '
                  +'CC2CORRETO, '
                  +'CC2DESCITEM '
                  +') values ('
                  +':CODEMP, '
                  +':CHAVE, '
                  +':ITEM, '
                  +':CORRETO, '
                  +':DESCITEM '
                  +' ) ');
Tb_CCOR02.First;
While not Tb_CCOR02.Eof do
   begin
   if Trim(Tb_CCOR02CC2CORRETO.Value)='' then
      begin
      Tb_CCOR02.Next;
      Continue;
      end;
   Query_Cor02.Close;
   Query_Cor02.ParamByName('CODEMP').AsFloat  :=codemp;
   Query_Cor02.ParamByName('CHAVE').AsFloat   :=mchave;
   Query_Cor02.ParamByName('ITEM').Asfloat    :=Tb_CCOR02CC2ITEM.Value;
   Query_Cor02.ParamByName('CORRETO').AsString:=Tb_CCOR02CC2CORRETO.Value;
   Query_Cor02.ParamByName('DESCITEM').AsString:=Tb_CCOR02CC2DESCITEM.Value;
   Query_Cor02.ExecSQL;
   fdm1StartCommit;
   Tb_CCOR02.Next;
   end;
CHAVE.Text:=FloatToStr(mchave);

bbPesquisar.Enabled :=True;
bbExcluir.Enabled   :=true;
bbIncluir.Enabled   :=True;
bbAlterar.Enabled   :=true;
bbGravar.Enabled    :=False;
bbImprimir.Enabled  :=true;
bbEmitir.Enabled    :=true;
CHAVE.Enabled       :=true;
GB_01.Enabled       :=false;
fCarCorLerCar(mchave);
FreeAndNil(Query_Temp);
FreeAndNil(Query_Cor01);
FreeAndNil(Query_Cor02);

end;

procedure TFrm_CarCor.bbAlterarClick(Sender: TObject);
begin
if not Tb_CCOR01CC1NFE_XML_CLIENTE.IsNull then
  begin
  fmensagem('Esta Carta já foi emitida. Não é possivel alteração.',0,['0'],0);
  exit;
  end;

moper:=1;
bbPesquisar.Enabled :=False;
bbExcluir.Enabled   :=False;
bbIncluir.Enabled   :=False;
bbAlterar.Enabled   :=False;
bbGravar.Enabled    :=true;
bbImprimir.Enabled  :=False;
bbEmitir.Enabled    :=false;
GB_01.Enabled       :=True;
CHAVE.Enabled       :=False;
RAZSOC.SetFocus;


end;

procedure TFrm_CarCor.RAZSOCExit(Sender: TObject);
begin
if (length(RAZSOC.Text)>59) then
   RAZSOC.Text:=copy(RAZSOC.Text,1,60);

end;

procedure TFrm_CarCor.RAZSOCKeyPress(Sender: TObject; var Key: Char);
begin
if (length(RAZSOC.Text)>59) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_CarCor.ENDERECOKeyPress(Sender: TObject; var Key: Char);
begin
if (length(ENDERECO.Text)>59) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_CarCor.CIDADEKeyPress(Sender: TObject; var Key: Char);
begin
if (length(CIDADE.Text)>59) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_CarCor.NUMNFKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#8
else if (length(NUMNF.Text)>7) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_CarCor.SERIENFKeyPress(Sender: TObject; var Key: Char);
begin
if (length(SERIENF.Text)>5) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_CarCor.ENDERECOExit(Sender: TObject);
begin

if (length(ENDERECO.Text)>119) then
   ENDERECO.Text:=copy(ENDERECO.Text,1,120);

end;

procedure TFrm_CarCor.CIDADEExit(Sender: TObject);
begin
if (length(CIDADE.Text)>59) then
   CIDADE.Text:=copy(CIDADE.Text,1,60);

end;

procedure TFrm_CarCor.NUMNFExit(Sender: TObject);
begin
if (length(NUMNF.Text)>7) then
  NUMNF.Text:=copy(NUMNF.Text,1,8);
ModeloExit(Self);
end;

procedure TFrm_CarCor.SERIENFExit(Sender: TObject);
begin
if (length(SERIENF.Text)>5) then
   SERIENF.Text:=copy(SERIENF.Text,1,6);

end;

procedure TFrm_CarCor.MDATCARExit(Sender: TObject);
begin
if Trim(MDATCAR.Text)<>'/  /' then
   begin
   Try
      MDATCAR.Text:=FormatDateTime(fdt, StrtoDate(MDATCAR.Text));
   except
      FMensagem('Data Invalida!',0,['0'],0);
      end;
   end;
end;

procedure TFrm_CarCor.DTEMISExit(Sender: TObject);
begin
if Trim(DTEMIS.Text)<>'/  /' then
   begin
   Try
      DTEMIS.Text:=FormatDateTime(fdt, StrtoDate(DTEMIS.Text));
   except
      FMensagem('Data Invalida!',0,['0'],0);
      end;
   end;

end;

procedure TFrm_CarCor.CHAVEExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
if ValFloat(CHAVE.Text)<=0 then
   begin
   CHAVE.Text:='';
   exit;
   end;
if not  fCarCorLerCar(ValFloat(CHAVE.Text)) then
   begin
   FMensagem('Chave não Encontrada!',0,['0'],0);
   CHAVE.SetFocus;
   bbAlterar.Enabled   :=False;
   bbPesquisar.Enabled :=False;
   bbExcluir.Enabled   :=False;
   bbIncluir.Enabled   :=False;
   bbGravar.Enabled    :=True;
   bbImprimir.Enabled  :=False;
   bbEmitir.Enabled    :=False;
   exit;
   end
else
   begin
   bbEmitir.Enabled    :=True;
   bbImprimir.Enabled  :=True;
   if not Tb_CCOR01CC1NFE_XML_CLIENTE.IsNull then
     begin
     bbAlterar.Enabled   :=True;
     bbAlterar.SetFocus;
     end;
   end;

bbPesquisar.Enabled :=True;
bbExcluir.Enabled   :=True;
bbIncluir.Enabled   :=True;
bbGravar.Enabled    :=False;
GB_01.Enabled       :=False;
end;

function TFrm_CarCor.fCarCorLerCar(pchave: Real): Boolean;
var
mlin, mcol: Integer;
mcalc: Real;
begin
Tb_CCOR01.Close;
if DM1.Qr_TID.Locate('TINOME','CADNS',[]) then
   Tb_CCOR01.ParamByName('CODEMP').AsString:='%'
else
   Tb_CCOR01.ParamByName('CODEMP').AsFloat  :=codemp;
Tb_CCOR01.ParamByName('CHAVE').AsFloat      :=pchave;
Tb_CCOR01.Open;
if Tb_CCOR01.Eof then
   begin
   Result:=False;
   exit;
   end;
Tb_CCOR02.Close;
if DM1.Qr_TID.Locate('TINOME','CADNS',[]) then
   Tb_CCOR02.ParamByName('CODEMP').AsString:='%'
else
   Tb_CCOR02.ParamByName('CODEMP').AsFloat  :=codemp;
Tb_CCOR02.ParamByName('CHAVE').AsFloat      :=pchave;
Tb_CCOR02.Open;
fCarCorLimpar(0);
CHAVE.Text          := Tb_CCOR01CC1CHAVE.AsString;
MDATCAR.Text        := FormatDateTime(fdt2, Tb_CCOR01CC1DATA.Value);
RAZSOC.Text         := Tb_CCOR01CC1RAZAO.Value;
ENDERECO.Text       := Tb_CCOR01CC1ENDERECO.Value;
CIDADE.Text         := Tb_CCOR01CC1CIDADE.Value;
NUMNF.Text          := Tb_CCOR01CC1NUMNF.AsString;
SERIENF.Text        := Tb_CCOR01CC1SERIE.Value;
Modelo.Text         := Tb_CCOR01CC1MODELO.Value;
edt_ordem.Caption   := Tb_CCOR01CC1ORDEMEVE.AsString;

DTEMIS.Text         := FormatDateTime(fdt2, Tb_CCOR01CC1DATANF.Value);
RG_EMISSAO.ItemIndex:= Tb_CCOR01CC1EMISSAO.AsInteger;
Tb_CCOR02.First;
While not Tb_CCOR02.Eof do
   begin
   if Tb_CCOR02CC2ITEM.Value>24 then
      begin
      mcol:=6;
      mlin:=Tb_CCOR02CC2ITEM.AsInteger-24;
      end
   else if Tb_CCOR02CC2ITEM.Value>12 then
      begin
      mcol:=3;
      mlin:=Tb_CCOR02CC2ITEM.AsInteger-12;
      end
   else
      begin
      mcol:=0;
      mlin:=Tb_CCOR02CC2ITEM.AsInteger;
      end;
   STG1.Cells[mcol,mlin]:='X';
   Tb_CCOR02.Next;
   end;
result:=True;
end;
procedure TFrm_CarCor.bbCancelarClick(Sender: TObject);
begin
fCarCorLimpar(0);
bbPesquisar.Enabled :=True;
bbExcluir.Enabled   :=False;
bbIncluir.Enabled   :=True;
bbAlterar.Enabled   :=False;
bbGravar.Enabled    :=False;
bbImprimir.Enabled  :=False;
bbEmitir.Enabled    :=False;
CHAVE.Enabled       :=True;
GB_01.Enabled       :=False;


end;

procedure TFrm_CarCor.bbExcluirClick(Sender: TObject);
var
mchave: Real;
begin
if fmensagem('Quer Realmente Excluir o Registro?',0,['1','2'],2)<>mrYes then
   exit;
mchave:=ValFloat(CHAVE.Text);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Delete from CADCCOR01 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADNS',[]),'',' CC1CODEMP=0'+IntTostr(codemp)+' and ')
                  +' CC1CHAVE=0'+FloatTostr(mchave));
DM1.Query1.ExecSQL;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Delete from CADCCOR02 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADNS',[]),'',' CC2CODEMP=0'+IntTostr(codemp)+' and ')
                  +' CC2CHAVE=0'+FloatTostr(mchave));
DM1.Query1.ExecSQL;
bbCancelar.Click;
FMensagem('Registro Excluido!',0,['0'],0);
end;

procedure TFrm_CarCor.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CarCor.bbImprimirClick(Sender: TObject);
var
query_Cons : tquery;
mmensagem: string;
begin

bbImprimir.Enabled:=false;
bbEmitir.Enabled  :=false;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADNS','CC1CODEMP','NSCODEMP','CC1NUMNF','NSNUMERO','CC1SERIE','NSSERIE','CC1MODELO','NSMODELO');



query_Cons := TQuery.Create(nil);
query_Cons.DatabaseName:='SG_ASSOC';
query_Cons.SQL.Clear;
query_Cons.SQL.Add('SeleCT CC1NFE_XML_CLIENTE,CC1NUMNF,CC1SERIE,CC1MODELO,NSCODEMP,NSCHAVEP'
                 +',NSLOTSEQ_CP FROM CADCCOR01 '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_instrucao='','',la_instrucao+' and ')
                    +' not CC1NFE_XML_CLIENTE is null '
                    +' and CC1CHAVE=0'+fdeixanum(CHAVE.Text));
try
   query_cons.open;
except
   Query_cons.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;
if not query_Cons.isempty then
   begin
   if not DirectoryExists('C:\SGE\DANFE') then
      CreateDir('C:\SGE\DANFE');
   Application.CreateForm(TFrm_NFE_Impressao,Frm_NFE_Impressao);
   try
   Frm_NFE_Impressao.fLerdadosXml_cce('',''
                        ,''
                        ,query_Cons.Fieldbyname('NSCHAVEP').AsInteger
                        ,query_Cons.Fieldbyname('NSLOTSEQ_CP').AsInteger
                        ,query_Cons.Fieldbyname('NSCODEMP').AsInteger,valint(CHAVE.text),mmensagem);

   FreeandNil(Frm_NFE_Impressao);
   except
      MessageDlg('Erro 909, ao tentar reemitir nfe',mtError,[mbOk],0);
      end;
   bbImprimir.Enabled:=true;
   bbEmitir.Enabled  :=true;
   end
else
   begin
   if Qr_carcor2=nil then
      Application.CreateForm(TQr_CarCor2, Qr_CarCor2)
   else
      begin
      Qr_CarCor2.free;
      Qr_CarCor2:=nil;
      Application.CreateForm(TQr_CarCor2, Qr_CarCor2);
      end;

   Qr_CarCor2.X01.Caption:=STG1.Cells[0,01];
   Qr_CarCor2.X13.Caption:=STG1.Cells[3,01];
   Qr_CarCor2.X25.Caption:=STG1.Cells[6,01];
   Qr_CarCor2.X02.Caption:=STG1.Cells[0,02];
   Qr_CarCor2.X14.Caption:=STG1.Cells[3,02];
   Qr_CarCor2.X26.Caption:=STG1.Cells[6,02];
   Qr_CarCor2.X03.Caption:=STG1.Cells[0,03];
   Qr_CarCor2.X15.Caption:=STG1.Cells[3,03];
   Qr_CarCor2.X27.Caption:=STG1.Cells[6,03];
   Qr_CarCor2.X04.Caption:=STG1.Cells[0,04];
   Qr_CarCor2.X16.Caption:=STG1.Cells[3,04];
   Qr_CarCor2.X28.Caption:=STG1.Cells[6,04];
   Qr_CarCor2.X05.Caption:=STG1.Cells[0,05];
   Qr_CarCor2.X17.Caption:=STG1.Cells[3,05];
   Qr_CarCor2.X29.Caption:=STG1.Cells[6,05];
   Qr_CarCor2.X06.Caption:=STG1.Cells[0,06];
   Qr_CarCor2.X18.Caption:=STG1.Cells[3,06];
   Qr_CarCor2.X30.Caption:=STG1.Cells[6,06];
   Qr_CarCor2.X07.Caption:=STG1.Cells[0,07];
   Qr_CarCor2.X19.Caption:=STG1.Cells[3,07];
   Qr_CarCor2.X31.Caption:=STG1.Cells[6,07];
   Qr_CarCor2.X08.Caption:=STG1.Cells[0,08];
   Qr_CarCor2.X20.Caption:=STG1.Cells[3,08];
   Qr_CarCor2.X32.Caption:=STG1.Cells[6,08];
   Qr_CarCor2.X09.Caption:=STG1.Cells[0,09];
   Qr_CarCor2.X21.Caption:=STG1.Cells[3,09];
   Qr_CarCor2.X33.Caption:=STG1.Cells[6,09];
   Qr_CarCor2.X10.Caption:=STG1.Cells[0,10];
   Qr_CarCor2.X22.Caption:=STG1.Cells[3,10];
   Qr_CarCor2.X34.Caption:=STG1.Cells[6,10];
   Qr_CarCor2.X11.Caption:=STG1.Cells[0,11];
   Qr_CarCor2.X23.Caption:=STG1.Cells[3,11];
   Qr_CarCor2.X35.Caption:=STG1.Cells[6,11];
   Qr_CarCor2.X12.Caption:=STG1.Cells[0,12];
   Qr_CarCor2.X24.Caption:=STG1.Cells[3,12];
   Qr_CarCor2.X36.Caption:=STG1.Cells[6,12];

   Qr_CarCor2.QRLbl_data.Caption:=DM1.Tb_EmpCIDADE.Value+', '+FormatDateTime('dd', Tb_CCOR01CC1DATA.Value)
                                +' de '+NMes(Tb_CCOR01CC1DATA.Value)+' de '
                                +FormatDateTime('yyyy', Tb_CCOR01CC1DATA.Value)+'.';
   if RG_EMISSAO.ItemIndex=0 then
      Qr_CarCor2.qr_denossa.Caption:='( X ) DE NOSSA EMISSÃO'
   else
      Qr_CarCor2.Qr_desua.Caption  :='( X ) DE SUA EMISSÃO';
   verteclado(0);
   Qr_CarCor2.RL_CARCOR2.PreviewModal;
   freeandnil(Qr_Carcor2);
   end;
bbImprimir.Enabled:=true;
bbEmitir.Enabled  :=true;

end;

procedure TFrm_CarCor.DBCORRETOEnter(Sender: TObject);
begin
if not DBCORRETO.ReadOnly then
   begin
   if not (Tb_CCOR02.State in [dsedit, dsInsert]) then
     Tb_CCOR02.Edit;  
   end;
end;

procedure TFrm_CarCor.bbPesquisarClick(Sender: TObject);
begin
if Frm_CarCor_Loc=nil then
   Application.CreateForm(TFrm_CarCor_loc, Frm_CarCor_Loc)
else
   begin
   Frm_CarCor_Loc.Free;
   Frm_CarCor_Loc:=nil;
   Application.CreateForm(TFrm_CarCor_loc, Frm_CarCor_Loc)
   end;
Frm_CarCor_Loc.ShowModal;
CHAVE.Text:=Frm_CarCor_Loc.Qr_CCor01CC1CHAVE.AsString;
Frm_CarCor_Loc.Free;
Frm_CarCor_Loc:=nil;
if ValInt(CHAVE.Text)>0 then
   begin
   if not  fCarCorLerCar(ValFloat(CHAVE.Text)) then
      begin
      FMensagem('Chave não Encontrada!',0,['0'],0);
      bbCancelar.Click;
      exit;
      end;
   bbPesquisar.Enabled :=True;
   bbExcluir.Enabled   :=True;
   bbIncluir.Enabled   :=True;
   bbAlterar.Enabled   :=True;
   bbGravar.Enabled    :=False;
   bbImprimir.Enabled  :=True;
   bbEmitir.Enabled    :=True;
   GB_01.Enabled       :=False;
   end;


end;

procedure TFrm_CarCor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_CarCor.c(DataSet: TDataSet);
begin
fdm1StartCommit;
end;

procedure TFrm_CarCor.ModeloExit(Sender: TObject);
var
query_temp: TQuery;
begin
if (valfloat(NUMNF.Text)<>0) then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add('Select NSNUMERO,NSMODELO,NSSERIE,NSDTEMIS,NSCODCLI '
                    +', CRAZAO, CLOG, CBAIRRO,CCIDADE,CUF from CADNS,CADCLI '
                    +' where '
                    +iif(DM1.Qr_TID.Locate('TINOME','CADNS',[]),'', ' NSCODEMP=0'+IntToStr(codemp)+' and ')
                    +' NSNUMERO=0'+trim(numnf.Text)
                    +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'', ' and CCODEMP=NSCODEMP ')
                    +' and CCODCLI=NSCODCLI ');
  if trim(Modelo.Text)<>'' then
    DM1.Query1.SQL.Add(' and NSMODELO='+chr(39)+Modelo.Text+chr(39));
  DM1.Query1.Open;
  if not DM1.query1.IsEmpty then
    begin
{    if DM1.Query1.FieldByName('NSMODELO').AsString='55' then
      begin
      if Now > DM1.Query1.FieldByName('NSDTEMIS').AsDateTime+30 then
        begin
        fmensagem(' A carta de correção eletronica so pode ser feita'+#13
                 +' no prazo de até 30 dias após a sua emissão!',0,['0'],0);
        NUMNF.SetFocus;
        Exit;
        end;
      end;
}
    RAZSOC.Text:=DM1.Query1.fieldbyName('CRAZAO').AsString;
    ENDERECO.Text:=DM1.Query1.fieldbyName('CLOG').AsString
                  +' '+DM1.Query1.fieldbyName('CBAIRRO').AsString;
    CIDADE.Text:=DM1.Query1.fieldbyName('CCIDADE').AsString
                  +' '+DM1.Query1.fieldbyName('CUF').AsString;
    SERIENF.Text:=DM1.Query1.fieldbyName('NSSERIE').AsString;
    DTEMIS.Text :=FormatDatetime(fdt2, DM1.Query1.fieldbyName('NSDTEMIS').AsDateTime);
    Modelo.Text :=DM1.Query1.fieldbyName('NSMODELO').AsString;

    query_temp:=TQuery.Create(nil);
    query_temp.DatabaseName:='SG_ASSOC';
    query_temp.SQL.Clear;
    query_temp.SQL.Add('Select max(CC1ORDEMEVE) as ordem from CADCCOR01 '
                      +' where CC1CODEMP=:CODEMP '
                      +' and CC1NUMNF=:NUMNF '
                      +' and CC1SERIE=:SERIE '
                      +' and CC1MODELO=:MODELO ');
    query_temp.ParamByName('CODEMP').Value:=codemp;
    query_temp.ParamByName('NUMNF').Value:=ValInt(NUMNF.Text);
    query_temp.ParamByName('SERIE').Value:=SERIENF.Text;
    query_temp.ParamByName('MODELO').Value:=Modelo.Text;
    query_temp.Open;

    edt_ordem.Caption:=IntTostr(query_temp.fieldbyName('ordem').AsInteger+1);
    FreeAndNil(query_temp);
    end
  else
    begin
    fmensagem(' Nota fiscal não encontrada!',0,['0'],0);
    NUMNF.SetFocus;
    Exit;
    end;
  end;
end;

procedure TFrm_CarCor.bbEmitirClick(Sender: TObject);
var
  xMotivo: String;
begin
if not Tb_CCOR01CC1NFE_XML_CLIENTE.IsNull then
   begin
   bbImprimirClick(self);
   exit;
   end;

if Tb_CCOR01CC1CODEMP.AsFloat < 100 then
  begin
  DM1.Tb_Ns.Close;
  DM1.Tb_Ns.SQL.Clear;
  DM1.Tb_Ns.SQL.Add(' select * from cadns ');
  DM1.Tb_Ns.SQL.Add(' where nscodemp='+Tb_CCOR01CC1CODEMP.AsString);
  DM1.Tb_Ns.SQL.Add(' and nsnumero='+Tb_CCOR01CC1NUMNF.AsString);
  DM1.Tb_Ns.SQL.Add(' and nsmodelo=55');
  DM1.Tb_Ns.SQL.Add(' and nsserie='+QuotedStr(Tb_CCOR01CC1SERIE.AsString));
  DM1.Tb_Ns.Open;
  if DM1.Tb_Ns.isempty then
     begin

     MessageDlg('Nota nao encontrada '+Tb_CCOR01CC1NUMNF.AsString+'/'+Tb_CCOR01CC1SERIE.asstring+'mod '+Tb_CCOR01CC1SERIE.asstring,mtWarning,[mbOk],0);
    exit;
     end;
  if (length(trim( Tb_CCOR01CC1MOTIVO.AsString))<15) then
      begin
      MessageDlg('Deve haver pelo menos 15 caracteres para justificativa da correção!',mtWarning,[mbOk],0);
      exit;
      end
  else  if (length(trim( Tb_CCOR01CC1MOTIVO.AsString))>1000) then
      begin
      MessageDlg('Nao pode haver mais que 1000 caracteres para justificativa da correção!',mtWarning,[mbOk],0);
      exit;
      end;

//  if Now <= DM1.Tb_NsNSDTEMIS.AsDateTime+30 Then
//    begin
    with DM1 do
      begin
      fGerarXMLNFECC(Tb_NsNSCODEMP.AsFloat,
                     Tb_NsNSNUMERO.AsFloat,
                     Tb_NsNSMODELO.AsFloat,
                     Tb_NsNSSERIE.AsString,
                     False,
                     Tb_NsNSNFE_CHAVEACESSO.AsString+Tb_NsNSNFE_DCHAVEACESSO.AsString,
                     '',Tb_CCOR01CC1MOTIVO.AsString,Tb_CCOR01CC1CHAVE.AsInteger,Tb_CCOR01CC1ORDEMEVE.AsInteger,Tb_CCOR01CC1DATHOR_DIG.AsDatetime );


      end;
    CHAVEExit(SELF);
{    end
  else
    begin
    fmensagem('O prazo maximo e de 30 dias apos a data de Emissão!',0,['0'],0);
    Exit;
    end;}
  end;
end;

procedure TFrm_CarCor.FormShow(Sender: TObject);
begin
Frm_CarCor.Height:=519;
end;

end.

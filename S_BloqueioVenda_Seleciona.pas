unit S_BloqueioVenda_Seleciona;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBTables, Grids, DBGrids,S_DM1,func;

type
  TFrm_BloqueioVenda_Seleciona = class(TForm)
    RG_TPPESQ: TRadioGroup;
    GroupBox1: TGroupBox;
    CONTEUDO: TEdit;
    Panel1: TPanel;
    cb_todos: TCheckBox;
    bbSair: TBitBtn;
    Qr_Consulta: TQuery;
    Src_Consulta: TDataSource;
    Qr_ConsultaOK: TStringField;
    U_Consulta: TUpdateSQL;
    bbIncluir: TBitBtn;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    ST_QTDREG: TStaticText;
    Label2: TLabel;
    ST_QTDSEL: TStaticText;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbSairClick(Sender: TObject);
    procedure bbIncluirClick(Sender: TObject);
    procedure Qr_ConsultaBeforeEdit(DataSet: TDataSet);
    procedure Qr_ConsultaAfterPost(DataSet: TDataSet);
    procedure cb_todosExit(Sender: TObject);
    procedure cb_todosEnter(Sender: TObject);
    procedure CONTEUDOChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function FTestaPosicaoTreeview(pNivel: Integer): Boolean;
  public
    { Public declarations }
    function fLerArq(pTipo: Integer): Boolean;
  end;

var
  Frm_BloqueioVenda_Seleciona: TFrm_BloqueioVenda_Seleciona;
  mQtdSel: Integer;
  mValAnt: String='';
  cb_todos_ant: TCheckBox;
implementation

uses S_BloqueioVenda, S_SelBloqueio;

{$R *.dfm}
function TFrm_BloqueioVenda_Seleciona.fLerArq(pTipo: Integer): Boolean;
var
x: Integer;
begin

if Ptipo=mGrupo_CodVen then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select count(*) from CADVEN ');
   Qr_Consulta.Close;
   Qr_Consulta.SQL.Clear;
   Qr_Consulta.Fields.Clear;
   Qr_Consulta.SQL.Add('Select '+chr(39)+' '+chr(39)+' as ok ');
   Qr_Consulta.SQL.Add(', VCODVEN ');
   Qr_Consulta.SQL.Add(', VNOME ');
   Qr_Consulta.SQL.Add(', VCIDADE');
   Qr_Consulta.SQL.Add(', VUF from CADVEN ');
   RG_TPPESQ.Items.Clear;
   RG_TPPESQ.Items.Add('Código');
   RG_TPPESQ.Items.Add('Nome do Vendedor');
   RG_TPPESQ.ItemIndex:=1;
   mcinst:=' where ';
   if not DM1.Qr_tid.Locate('TINOME','CADVEN',[]) then
      begin
      Qr_Consulta.SQL.Add(mcinst+' VCODEMP=0'+IntToStr(codemp));
      DM1.Query1.SQL.Add(mcinst+' VCODEMP=0'+IntToStr(codemp));
      mcinst:=' and ';
      end;
   if (mSel_CodVen<>0) and (mSel_CodVen<>-1) then
      begin
      Qr_Consulta.SQL.Add(mcinst+' VCODVEN=0'+FloatToStr(mSel_CodVen));
      mcinst:=' and ';
      end;
   Qr_Consulta.SQL.Add('Order by VNOME');
   Qr_Consulta.Open;
   (Qr_Consulta.FieldByName('VCODVEN') As TFloatField).DisplayLabel  :='Código';
   (Qr_Consulta.FieldByName('VNOME') As TStringField).DisplayLabel   :='Nome do Vendedor';
   (Qr_Consulta.FieldByName('VCIDADE') As TStringField).DisplayLabel :='Cidade';
   (Qr_Consulta.FieldByName('VUF') As TStringField).DisplayLabel     :='UF';
   DBGrid1.Columns[0].Font.Name:='Wingdings 2';
   for x:=0 to DBGrid1.Columns.Count-1 do
      begin
      DBGrid1.Columns[x].Title.Alignment:=taCenter;
      DBGrid1.Columns[x].Title.Font.Style:=[fsBold];
      end;
   DM1.Query1.Open;
   ST_QTDREG.Caption:=DM1.Query1.Fields[0].AsString;
   end
else if Ptipo=mGrupo_CodFor then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select count(*) from CADFOR ');
   Qr_Consulta.Close;
   Qr_Consulta.SQL.Clear;
   Qr_Consulta.Fields.Clear;
   Qr_Consulta.SQL.Add('Select '+chr(39)+' '+chr(39)+' as ok ');
   Qr_Consulta.SQL.Add(', FCODFOR ');
   Qr_Consulta.SQL.Add(', FRAZAO ');
   Qr_Consulta.SQL.Add(', FCGC  from CADFOR ');
   RG_TPPESQ.Items.Clear;
   RG_TPPESQ.Items.Add('Código');
   RG_TPPESQ.Items.Add('Razão Social');
   RG_TPPESQ.ItemIndex:=1;
   mcinst:=' where ';
   if not DM1.Qr_tid.Locate('TINOME','CADFOR',[]) then
      begin
      Qr_Consulta.SQL.Add(mcinst+' RCODEMP=0'+IntToStr(codemp));
      DM1.Query1.SQL.Add(mcinst+' RCODEMP=0'+IntToStr(codemp));
      mcinst:=' and ';
      end;
   if (mSel_CodFor<>0) and (mSel_CodFor<>-1) then
      begin
      Qr_Consulta.SQL.Add(mcinst+' FCODFOR=0'+FloatToStr(mSel_CodFor));
      mcinst:=' and ';
      end;
   Qr_Consulta.SQL.Add('Order by FRAZAO');
   Qr_Consulta.Open;
   (Qr_Consulta.FieldByName('FCODFOR') As TFloatField).DisplayLabel  :='Código';
   (Qr_Consulta.FieldByName('FRAZAO') As TStringField).DisplayLabel  :='Razão Social';
   (Qr_Consulta.FieldByName('FCGC') As TFloatField).DisplayLabel     :='CNPJ';
   DBGrid1.Columns[0].Font.Name:='Wingdings 2';
   for x:=0 to DBGrid1.Columns.Count-1 do
      begin
      DBGrid1.Columns[x].Title.Alignment:=taCenter;
      DBGrid1.Columns[x].Title.Font.Style:=[fsBold];
      end;
   DM1.Query1.Open;
   ST_QTDREG.Caption:=DM1.Query1.Fields[0].AsString;
   end
else if Ptipo=mGrupo_CodUF then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select count(*) from CADUF ');
   Qr_Consulta.Close;
   Qr_Consulta.SQL.Clear;
   Qr_Consulta.Fields.Clear;
   Qr_Consulta.SQL.Add('Select '+chr(39)+' '+chr(39)+' as ok ');
   Qr_Consulta.SQL.Add(', PUF ');
   Qr_Consulta.SQL.Add(', PNOM from CADUF ');
   RG_TPPESQ.Items.Clear;
   RG_TPPESQ.Items.Add('Código');
   RG_TPPESQ.Items.Add('Nome do Estado');
   RG_TPPESQ.ItemIndex:=1;
   mcinst:=' where ';
   if not DM1.Qr_tid.Locate('TINOME','CADUF',[]) then
      begin
      Qr_Consulta.SQL.Add(mcinst+' PCODEMP=0'+IntToStr(codemp));
      DM1.Query1.SQL.Add(mcinst+' PCODEMP=0'+IntToStr(codemp));
      mcinst:=' and ';
      end;
   if (Trim(mSel_CodUF)<>'') and (mSel_CodUF<>'-1') then
      begin
      Qr_Consulta.SQL.Add(mcinst+' PUF='+chr(39)+trim(mSel_CodUF)+chr(39));
      DM1.Query1.SQL.Add(mcinst+' PUF='+chr(39)+trim(mSel_CodUF)+chr(39));
      mcinst:=' and ';
      end;
   Qr_Consulta.SQL.Add('Order by PNOM');
   Qr_Consulta.Open;
   (Qr_Consulta.FieldByName('PUF') As TStringField).DisplayLabel :='Sigla';
   (Qr_Consulta.FieldByName('PNOM') As TStringField).DisplayLabel  :='Nome do Estado';
   DBGrid1.Columns[0].Font.Name:='Wingdings 2';
   for x:=0 to DBGrid1.Columns.Count-1 do
      begin
      DBGrid1.Columns[x].Title.Alignment:=taCenter;
      DBGrid1.Columns[x].Title.Font.Style:=[fsBold];
      end;
   DM1.Query1.Open;
   ST_QTDREG.Caption:=DM1.Query1.Fields[0].AsString;
   end
else if Ptipo=mGrupo_CodLoc then // cidade
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select count(*) from CADLOC ');


   Qr_Consulta.Close;
   Qr_Consulta.SQL.Clear;
   Qr_Consulta.Fields.Clear;
   Qr_Consulta.SQL.Add('Select '+chr(39)+' '+chr(39)+' as ok ');
   Qr_Consulta.SQL.Add(', LCODLOC ');
   Qr_Consulta.SQL.Add(', LNOME ');
   Qr_Consulta.SQL.Add(', LUF from CADLOC ');

   RG_TPPESQ.Items.Clear;
   RG_TPPESQ.Items.Add('Código');
   RG_TPPESQ.Items.Add('Nome da Cidade');
   RG_TPPESQ.Items.Add('UF');
   RG_TPPESQ.ItemIndex:=1;

   mcinst:=' where ';
   if not DM1.Qr_tid.Locate('TINOME','CADLOC',[]) then
      begin
      Qr_Consulta.SQL.Add(mcinst+' LCODEMP=0'+IntToStr(codemp));
      DM1.Query1.SQL.Add(mcinst+' LCODEMP=0'+IntToStr(codemp));
      mcinst:=' and ';
      end;
   if (mSel_CodLoc<>0) and (mSel_CodLoc<>-1) then
      begin
      Qr_Consulta.SQL.Add(mcinst+' LCODLOC=0'+FloatToStr(mSel_CodLoc));
      DM1.Query1.SQL.Add(mcinst+' LCODLOC=0'+FloatToStr(mSel_CodLoc));
      mcinst:=' and ';
      end;
   Qr_Consulta.SQL.Add('Order by LNOME');
   Qr_Consulta.Open;
   (Qr_Consulta.FieldByName('LCODLOC') As TFloatField).DisplayLabel :='Código';
   (Qr_Consulta.FieldByName('LNOME') As TStringField).DisplayLabel  :='Nome do Cidade';
   (Qr_Consulta.FieldByName('LUF') As TStringField).DisplayLabel   :='UF';
   DBGrid1.Columns[0].Font.Name:='Wingdings 2';
   for x:=0 to DBGrid1.Columns.Count-1 do
      begin
      DBGrid1.Columns[x].Title.Alignment:=taCenter;
      DBGrid1.Columns[x].Title.Font.Style:=[fsBold];
      end;
   DM1.Query1.Open;
   ST_QTDREG.Caption:=DM1.Query1.Fields[0].AsString;
   end
else if Ptipo=mGrupo_CodBai then // BAIRRO
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select count(*) from CADBAI ');


   Qr_Consulta.Close;
   Qr_Consulta.SQL.Clear;
   Qr_Consulta.Fields.Clear;
   Qr_Consulta.SQL.Add('Select '+chr(39)+' '+chr(39)+' as ok ');
   Qr_Consulta.SQL.Add(', BCODBAI ');
   Qr_Consulta.SQL.Add(', BNOME  from CADBAI ');
   RG_TPPESQ.Items.Clear;
   RG_TPPESQ.Items.Add('Código');
   RG_TPPESQ.Items.Add('Nome do Bairro');
   RG_TPPESQ.ItemIndex:=1;

   mcinst:=' where ';
   if not DM1.Qr_tid.Locate('TINOME','CADBAI',[]) then
      begin
      Qr_Consulta.SQL.Add(mcinst+' BCODEMP=0'+IntToStr(codemp));
      DM1.Query1.SQL.Add(mcinst+' BCODEMP=0'+IntToStr(codemp));
      mcinst:=' and ';
      end;
   if (mSel_CodBai<>0) and (mSel_CodBai<>-1) then
      begin
      Qr_Consulta.SQL.Add(mcinst+' BCODBAI=0'+FloatToStr(mSel_CodBai));
      DM1.Query1.SQL.Add(mcinst+' PDCODBAI=0'+FloatToStr(mSel_CodBai));
      mcinst:=' and ';
      end;
   Qr_Consulta.SQL.Add('Order by BNOME');
   Qr_Consulta.Open;
   (Qr_Consulta.FieldByName('BCODBAI') As TFloatField).DisplayLabel :='Código';
   (Qr_Consulta.FieldByName('BNOME') As TStringField).DisplayLabel  :='Nome do Bairro';
   DBGrid1.Columns[0].Font.Name:='Wingdings 2';
   for x:=0 to DBGrid1.Columns.Count-1 do
      begin
      DBGrid1.Columns[x].Title.Alignment:=taCenter;
      DBGrid1.Columns[x].Title.Font.Style:=[fsBold];
      end;
   DM1.Query1.Open;
   ST_QTDREG.Caption:=DM1.Query1.Fields[0].AsString;
   end
else if Ptipo=mGrupo_CodRcli then // ramo de clientes
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select count(*) from CADRCLI ');
   Qr_Consulta.Close;
   Qr_Consulta.SQL.Clear;
   Qr_Consulta.Fields.Clear;
   Qr_Consulta.SQL.Add('Select '+chr(39)+' '+chr(39)+' as ok ');
   Qr_Consulta.SQL.Add(', RCODRAM ');
   Qr_Consulta.SQL.Add(', RNOME from CADRCLI ');
   RG_TPPESQ.Items.Clear;
   RG_TPPESQ.Items.Add('Código');
   RG_TPPESQ.Items.Add('Nome do Ramo');
   RG_TPPESQ.ItemIndex:=1;

   mcinst:=' where ';
   if not DM1.Qr_tid.Locate('TINOME','CADRCLI',[]) then
      begin
      Qr_Consulta.SQL.Add(mcinst+' RCODEMP=0'+IntToStr(codemp));
      DM1.Query1.SQL.Add(mcinst+' RCODEMP=0'+IntToStr(codemp));
      mcinst:=' and ';
      end;
   if (mSel_CodRcli<>0) and (mSel_CodRcli<>-1) then
      begin
      Qr_Consulta.SQL.Add(mcinst+' RCODRAM=0'+FloatToStr(mSel_CodRcli));
      DM1.Query1.SQL.Add(mcinst+' RCODRAM=0'+FloatToStr(mSel_CodRcli));
      mcinst:=' and ';
      end;
   Qr_Consulta.SQL.Add('Order by RNOME');
   Qr_Consulta.Open;
   (Qr_Consulta.FieldByName('RCODRAM') As TFloatField).DisplayLabel :='Código';
   (Qr_Consulta.FieldByName('RNOME') As TStringField).DisplayLabel  :='Nome';
   DBGrid1.Columns[0].Font.Name:='Wingdings 2';
   for x:=0 to DBGrid1.Columns.Count-1 do
      begin
      DBGrid1.Columns[x].Title.Alignment:=taCenter;
      DBGrid1.Columns[x].Title.Font.Style:=[fsBold];
      end;
   DM1.Query1.Open;
   ST_QTDREG.Caption:=DM1.Query1.Fields[0].AsString;
   end
else if Ptipo=mGrupo_CodCli then // clientes
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select count(*) from CADCLI ');
   Qr_Consulta.Close;
   Qr_Consulta.SQL.Clear;
   Qr_Consulta.Fields.Clear;
   Qr_Consulta.SQL.Add('Select '+chr(39)+' '+chr(39)+' as ok ');
   Qr_Consulta.SQL.Add(', CCODCLI ');
   Qr_Consulta.SQL.Add(', CRAZAO ');
   Qr_Consulta.SQL.Add(', CBAIRRO ');
   Qr_Consulta.SQL.Add(', CCIDADE ');
   Qr_Consulta.SQL.Add(', CUF ');
   Qr_Consulta.SQL.Add(', CFONERES ');
   Qr_Consulta.SQL.Add(', CNOMVEN ');
   Qr_Consulta.SQL.Add('  from CADCLI ');
   RG_TPPESQ.Items.Clear;
   RG_TPPESQ.Items.Add('Código');
   RG_TPPESQ.Items.Add('Razão Social');
   RG_TPPESQ.Items.Add('Bairro');
   RG_TPPESQ.Items.Add('Código');
   RG_TPPESQ.Items.Add('Cidade');
   RG_TPPESQ.Items.Add('Estado');
   RG_TPPESQ.ItemIndex:=1;
   mcinst:=' where ';
   if not DM1.Qr_tid.Locate('TINOME','CADCLI',[]) then
      begin
      Qr_Consulta.SQL.Add(mcinst+' CCODEMP=0'+IntToStr(codemp));
      DM1.Query1.SQL.Add(mcinst+' CCODEMP=0'+IntToStr(codemp));
      mcinst:=' and ';
      end;
   if (trim(mSel_CodUF)<>'') and (trim(mSel_CodUF)<>'-1') then
      begin
      Qr_Consulta.SQL.Add(mcinst+' CUF='+chr(39)+trim(mSel_CodUF)+chr(39));
      DM1.Query1.SQL.Add(mcinst+' CUF='+chr(39)+trim(mSel_CodUF)+chr(39));
      mcinst:=' and ';
      end;
   Qr_Consulta.SQL.Add('Order by CRAZAO');
   Qr_Consulta.Open;
   (Qr_Consulta.FieldByName('CCODCLI') As TFloatField).DisplayLabel       :='Código';
   (Qr_Consulta.FieldByName('CRAZAO') As TStringField).DisplayLabel       :='Razão Social';
   (Qr_Consulta.FieldByName('CBAIRRO') As TStringField).DisplayLabel      :='Bairro';
   (Qr_Consulta.FieldByName('CCIDADE') As TStringField).DisplayLabel      :='Cidade';
   (Qr_Consulta.FieldByName('CUF') As TStringField).DisplayLabel          :='UF';
   (Qr_Consulta.FieldByName('CFONERES') As TStringField).DisplayLabel     :='Telefone';
   (Qr_Consulta.FieldByName('CNOMVEN') As TStringField).DisplayLabel :='Vendedor';
   DBGrid1.Columns[0].Font.Name:='Wingdings 2';
   for x:=0 to DBGrid1.Columns.Count-1 do
      begin
      DBGrid1.Columns[x].Title.Alignment:=taCenter;
      DBGrid1.Columns[x].Title.Font.Style:=[fsBold];
      end;
   DM1.Query1.Open;
   ST_QTDREG.Caption:=DM1.Query1.Fields[0].AsString;
   end
else if Ptipo=mGrupo_CodRPro then // ramo de Produtos
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select count(*) from CADRAM ');


   Qr_Consulta.Close;
   Qr_Consulta.SQL.Clear;
   Qr_Consulta.Fields.Clear;
   Qr_Consulta.SQL.Add('Select '+chr(39)+' '+chr(39)+' as ok ');
   Qr_Consulta.SQL.Add(', RCODRAM ');
   Qr_Consulta.SQL.Add(', RNOME from CADRAM ');
   RG_TPPESQ.Items.Clear;
   RG_TPPESQ.Items.Add('Código');
   RG_TPPESQ.Items.Add('Nome do Ramo');
   RG_TPPESQ.ItemIndex:=1;
   mcinst:=' where ';
   if not DM1.Qr_tid.Locate('TINOME','CADRAM',[]) then
      begin
      Qr_Consulta.SQL.Add(mcinst+' RCODEMP=0'+IntToStr(codemp));
      DM1.Query1.SQL.Add(mcinst+' RCODEMP=0'+IntToStr(codemp));
      mcinst:=' and ';
      end;
   if (mSel_CodRPro<>0) and (mSel_CodRPro<>-1) then
      begin
      Qr_Consulta.SQL.Add(mcinst+' RCODRAM=0'+FloatToStr(mSel_CodRPro));
      DM1.Query1.SQL.Add(mcinst+' RCODRAM=0'+FloatToStr(mSel_CodRPro));
      mcinst:=' and ';
      end;
   Qr_Consulta.SQL.Add('Order by RNOME');
   Qr_Consulta.Open;
   (Qr_Consulta.FieldByName('RCODRAM') As TFloatField).DisplayLabel :='Código';
   (Qr_Consulta.FieldByName('RNOME') As TStringField).DisplayLabel  :='Nome';
   DBGrid1.Columns[0].Font.Name:='Wingdings 2';
   for x:=0 to DBGrid1.Columns.Count-1 do
      begin
      DBGrid1.Columns[x].Title.Alignment:=taCenter;
      DBGrid1.Columns[x].Title.Font.Style:=[fsBold];
      end;
   DM1.Query1.Open;
   ST_QTDREG.Caption:=DM1.Query1.Fields[0].AsString;
   end

else if Ptipo=mGrupo_CodCPro then // Controle de Produtos
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select count(*) from CADCON ');


   Qr_Consulta.Close;
   Qr_Consulta.SQL.Clear;
   Qr_Consulta.Fields.Clear;
   Qr_Consulta.SQL.Add('Select '+chr(39)+' '+chr(39)+' as ok ');
   Qr_Consulta.SQL.Add(', CCODCON ');
   Qr_Consulta.SQL.Add(', CNOME from CADCON ');
   RG_TPPESQ.Items.Clear;
   RG_TPPESQ.Items.Add('Código');
   RG_TPPESQ.Items.Add('Nome do Controle');
   RG_TPPESQ.ItemIndex:=1;
   mcinst:=' where ';
   if not DM1.Qr_tid.Locate('TINOME','CADCON',[]) then
      begin
      Qr_Consulta.SQL.Add(mcinst+' CCODEMP=0'+IntToStr(codemp));
      DM1.Query1.SQL.Add(mcinst+' CCODEMP=0'+IntToStr(codemp));
      mcinst:=' and ';
      end;
   if (mSel_CodCPro<>0) and (mSel_CodCPro<>-1) then
      begin
      Qr_Consulta.SQL.Add(mcinst+' CCODCON=0'+FloatToStr(mSel_CodCPro));
      DM1.Query1.SQL.Add(mcinst+' CCODCON=0'+FloatToStr(mSel_CodCPro));
      mcinst:=' and ';
      end;
   Qr_Consulta.SQL.Add('Order by CNOME');
   Qr_Consulta.Open;
   (Qr_Consulta.FieldByName('CCODCON') As TFloatField).DisplayLabel :='Código';
   (Qr_Consulta.FieldByName('CNOME') As TStringField).DisplayLabel  :='Nome';
   DBGrid1.Columns[0].Font.Name:='Wingdings 2';
   for x:=0 to DBGrid1.Columns.Count-1 do
      begin
      DBGrid1.Columns[x].Title.Alignment:=taCenter;
      DBGrid1.Columns[x].Title.Font.Style:=[fsBold];
      end;
   DM1.Query1.Open;
   ST_QTDREG.Caption:=DM1.Query1.Fields[0].AsString;
   end

else if Ptipo=mGrupo_Codpro  then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select count(*) from CADPRO ');
   Qr_Consulta.Close;
   Qr_Consulta.SQL.Clear;
   Qr_Consulta.Fields.Clear;
   Qr_Consulta.SQL.Add('Select '+chr(39)+' '+chr(39)+' as ok ');
   Qr_Consulta.SQL.Add(', PDCODPRO ');
   Qr_Consulta.SQL.Add(', PDNOME ');
   Qr_Consulta.SQL.Add(', PDMARCA ');
   Qr_Consulta.SQL.Add(', PDCODFOR ');
   Qr_Consulta.SQL.Add(', PDNOMFOR');
   Qr_Consulta.SQL.Add(', PDPRECO1 from CADPRO ');

   RG_TPPESQ.Items.Clear;
   RG_TPPESQ.Items.Add('Código');
   RG_TPPESQ.Items.Add('Descrição');
   RG_TPPESQ.Items.Add('Nome do Fornecedor');
   RG_TPPESQ.ItemIndex:=1;
   mcinst:=' where ';
   if not DM1.Qr_tid.Locate('TINOME','CADPRO',[]) then
      begin
      Qr_Consulta.SQL.Add(mcinst+' PDCODEMP=0'+IntToStr(codemp));
      DM1.Query1.SQL.Add(mcinst+' PDCODEMP=0'+IntToStr(codemp));
      mcinst:=' and ';
      end;
   if (mSel_CodFor<>0) and (mSel_CodFor<>-1) then
      begin
      Qr_Consulta.SQL.Add(mcinst+' PDCODFOR=0'+FloatToStr(mSel_CodFor));
      DM1.Query1.SQL.Add(mcinst+' PDCODFOR=0'+FloatToStr(mSel_CodFor));
      mcinst:=' and ';
      end;
   if (mSel_CodRPro<>0) and (mSel_CodRPro<>-1) then
      begin
      Qr_Consulta.SQL.Add(mcinst+' PDCODRAM=0'+FloatToStr(mSel_CodRPro));
      DM1.Query1.SQL.Add(mcinst+' PDCODRAM=0'+FloatToStr(mSel_CodRPro));
      mcinst:=' and ';
      end;
   Qr_Consulta.SQL.Add('Order by PDNOME');
   Qr_Consulta.Open;
   (Qr_Consulta.FieldByName('PDCODPRO') As TFloatField).DisplayLabel :='Código';
   (Qr_Consulta.FieldByName('PDNOME') As TStringField).DisplayLabel  :='Descrição';
   (Qr_Consulta.FieldByName('PDMARCA') As TStringField).DisplayLabel :='Marca';
   (Qr_Consulta.FieldByName('PDCODFOR') As TFloatField).DisplayLabel :='Cód.Fornec.';
   (Qr_Consulta.FieldByName('PDNOMFOR') As TStringField).DisplayLabel:='Fornecedor';
   (Qr_Consulta.FieldByName('PDPRECO1') As TFloatField).DisplayLabel :='Preço Unitário';
   DBGrid1.Columns[0].Font.Name:='Wingdings 2';
   for x:=0 to DBGrid1.Columns.Count-1 do
      begin
      DBGrid1.Columns[x].Title.Alignment:=taCenter;
      DBGrid1.Columns[x].Title.Font.Style:=[fsBold];
      end;
   DM1.Query1.Open;
   ST_QTDREG.Caption:=DM1.Query1.Fields[0].AsString;
   end;
result:=true;
end;

procedure TFrm_BloqueioVenda_Seleciona.FormCreate(Sender: TObject);
begin
if (mNivel_Incluir>0) and (mNivel_Incluir <11) then
   fLerArq(mNivel_Incluir);
cb_todos_ant := TCheckBox.Create(Frm_BloqueioVenda_Seleciona);
mQtdSel:=0;

end;

procedure TFrm_BloqueioVenda_Seleciona.DBGrid1DblClick(Sender: TObject);
begin
Qr_Consulta.Edit;
if trim(Qr_Consulta.fieldbyName('OK').AsString)='' then
   Qr_Consulta.fieldbyName('OK').AsString:='P'
else
   Qr_Consulta.fieldbyName('OK').AsString:=' ';
Qr_Consulta.Post;
if StrToInt('0'+trim(ST_QTDREG.Caption))=StrToInt('0'+Trim(ST_QTDSEL.Caption)) then
   cb_todos.State:=cbChecked
else if StrToInt('0'+Trim(ST_QTDSEL.Caption))=0 then
   cb_todos.State:=cbUnchecked
else
   cb_todos.State:=cbGrayed;

end;

procedure TFrm_BloqueioVenda_Seleciona.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=32 then
   begin
   Qr_Consulta.Edit;
   if trim(Qr_Consulta.fieldbyName('OK').AsString)='' then
      Qr_Consulta.fieldbyName('OK').AsString:='P'
   else
      Qr_Consulta.fieldbyName('OK').AsString:=' ';
   Qr_Consulta.Post;
   if StrToInt('0'+trim(ST_QTDREG.Caption))=StrToInt('0'+Trim(ST_QTDSEL.Caption)) then
      cb_todos.State:=cbChecked
   else if StrToInt('0'+Trim(ST_QTDSEL.Caption))=0 then
      cb_todos.State:=cbUnchecked
   else
      cb_todos.State:=cbGrayed;
   end;

end;

procedure TFrm_BloqueioVenda_Seleciona.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_BloqueioVenda_Seleciona.bbIncluirClick(Sender: TObject);
var
mcodant: String;
mItem_Temp: Integer;
mNomeAdicionar: String;
begin
if StrtoInt('0'+ST_QTDSEL.Caption)<1 then
   begin
   MessageDlg('Favor Selecionar um Ítem a Ser Incluso!',mtWarning,[mbOK],0);
   exit;
   end;
Qr_Consulta.First;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select  BQCODRCLI ');
DM1.Query2.SQL.Add('       ,BQCODRPRO');
DM1.Query2.SQL.Add('       ,BQCODFOR');
DM1.Query2.SQL.Add('       ,BQCODVEN');
DM1.Query2.SQL.Add('       ,BQCODUF');
DM1.Query2.SQL.Add('       ,BQCODLOC');
DM1.Query2.SQL.Add('       ,BQCODBAI');
DM1.Query2.SQL.Add('       ,BQCODPRO');
DM1.Query2.SQL.Add('       ,BQCODCLI');
DM1.Query2.SQL.Add(' from CADBLQ where '+iif(DM1.Qr_Tid.Locate('TINOME','CADBLQ',[]),'',' BQCODEMP=0'+IntTostr(codemp)+' and '));
DM1.Query2.SQL.Add(' BQGRUBLQ=0'+FloatToStr(mNivelSel));
if mSel_CodVen<>0 then
   DM1.Query2.SQL.Add(' and BQCODVEN='+FloatToStr(mSel_CodVen));
if mSel_CodFor<>0 then
   DM1.Query2.SQL.Add(' and BQCODFOR='+FloatToStr(mSel_CodFor));
if trim(mSel_CodUF)<>'' then
   DM1.Query2.SQL.Add(' and BQCODUF='+chr(39)+mSel_CodUF+chr(39));
if mSel_CodLoc<>0 then
   DM1.Query2.SQL.Add(' and BQCODLOC='+FloatToStr(mSel_CodLoc));
if mSel_CodBai<>0 then
   DM1.Query2.SQL.Add(' and BQCODBAI='+FloatToStr(mSel_CodBai));
if mSel_CodRcli<>0 then
   DM1.Query2.SQL.Add(' and BQCODRCLI='+FloatToStr(mSel_CodRcli));
if mSel_CodCli<>0 then
   DM1.Query2.SQL.Add(' and BQCODCLI='+FloatToStr(mSel_CodCli));
if mSel_CodRPRO<>0 then
   DM1.Query2.SQL.Add(' and  BQCODRPRO='+FloatToStr(mSel_CodRPro));
if mSel_Codpro<>0 then
   DM1.Query2.SQL.Add(' and  BQCODPRO='+FloatToStr(mSel_Codpro));
DM1.Query2.Params.CreateParam(ftString,'CODIGO',ptInput);

if mNivel_Incluir=mGrupo_CodVen then
   begin
   mcodant:=FloatToStr(mSel_CodVen);
   DM1.Query2.SQL.Add(' and BQCODVEN=:CODIGO');
   if cb_todos.Checked then
      begin
      mSel_CodVen:=-1;
      DM1.Query2.ParamByName('CODIGO').AsFloat :=mSel_CodVen;
      DM1.Query2.Open;
      if DM1.Query2.Eof then
         begin
         FTestaPosicaoTreeview(mNivel_Incluir);
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild( Node_Temp, 'Todos');
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=2;
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=2;
         fCriarBloqueio(mNivel_Incluir,mUltNivel, codemp,mSel_CodRcli,mSel_CodRPro,mSel_CodFor,
                        mSel_CodVen,
                        mSel_CodLoc,mSel_CodBai,mSel_Codpro,
                        mSel_CodCli,mSel_CodCPro, mNivelSel,mSel_CodUF);

         end;
      end;
   end
else if mNivel_Incluir=mGrupo_CodFor then
   begin
   mcodant:=FloatToStr(mSel_CodFor);
   DM1.Query2.SQL.Add(' and BQCODFOR=:CODIGO');
   if cb_todos.Checked then
      begin
      mSel_CodFor:=-1;
      DM1.Query2.ParamByName('CODIGO').AsFloat :=mSel_CodFor;
      DM1.Query2.Open;
      if DM1.Query2.Eof then
         begin

         FTestaPosicaoTreeview(mNivel_Incluir);
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild( Node_Temp, 'Todos');
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=2;
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=2;
         fCriarBloqueio(mNivel_Incluir,mUltNivel, codemp,mSel_CodRcli,mSel_CodRPro,mSel_CodFor,
                        mSel_CodVen,
                        mSel_CodLoc,mSel_CodBai,mSel_Codpro,
                        mSel_CodCli,mSel_CodCPro,mNivelSel,mSel_CodUF);

         end;
      end;
   end

else if mNivel_Incluir=mGrupo_CodUF then
   begin
   mcodant:=mSel_CodUF;
   DM1.Query2.SQL.Add(' and BQCODUF=:CODIGO');
   if cb_todos.Checked then
      begin
      mSel_CodUF:='-1';
      DM1.Query2.ParamByName('CODIGO').AsString :=mSel_CodUF;
      DM1.Query2.Open;
      if DM1.Query2.Eof then
         begin
         FTestaPosicaoTreeview(mNivel_Incluir);
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild( Node_Temp, 'Todos');
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=2;
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=2;

         fCriarBloqueio(mNivel_Incluir,mUltNivel,codemp,mSel_CodRcli,mSel_CodRPro,mSel_CodFor,
                        mSel_CodVen,
                        mSel_CodLoc,mSel_CodBai,mSel_Codpro,
                        mSel_CodCli,mSel_CodCPro,mNivelSel,mSel_CodUF);

         end;
      end;
   end
else if mNivel_Incluir=mGrupo_CodLoc then
   begin
   mcodant:=FloatToStr(mSel_CodLoc);
   DM1.Query2.SQL.Add(' and BQCODLOC=:CODIGO');
   if cb_todos.Checked then
      begin
      mSel_CodLoc:=-1;
      DM1.Query2.ParamByName('CODIGO').AsFloat :=mSel_CodLoc;
      DM1.Query2.Open;
      if DM1.Query2.Eof then
         begin
         FTestaPosicaoTreeview(mNivel_Incluir);
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild( Node_Temp, 'Todas');
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=2;
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=2;
         fCriarBloqueio(mNivel_Incluir,mUltNivel, codemp,mSel_CodRcli,mSel_CodRPro,mSel_CodFor,
                        mSel_Codven,
                        mSel_CodLoc,mSel_CodBai,mSel_Codpro,
                        mSel_CodCli,mSel_CodCPro,mNivelSel,mSel_CodUF);

         end;
      end;
   end
else if mNivel_Incluir=mGrupo_CodBai  then
   begin
   mcodant:=FloatToStr(mSel_CodBai);
   DM1.Query2.SQL.Add(' and BQCODBAI=:CODIGO');
   if cb_todos.Checked then
      begin
      mSel_CodBai:=-1;
      DM1.Query2.ParamByName('CODIGO').AsFloat :=mSel_CodBai;
      DM1.Query2.Open;
      if DM1.Query2.Eof then
         begin
         FTestaPosicaoTreeview(mNivel_Incluir);
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild( Node_Temp, 'Todos');
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=2;
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=2;
         fCriarBloqueio(mNivel_Incluir,mUltNivel, codemp,mSel_CodRcli,mSel_CodRPro,mSel_CodFor,
                        mSel_Codven,
                        mSel_CodLoc,mSel_CodBai,mSel_Codpro,
                        mSel_CodCli,mSel_CodCPro,mNivelSel,mSel_CodUF);
         end;
      end;
   end
else if mNivel_Incluir=mGrupo_CodRcli then
   begin
   mcodant:=FloatToStr(mSel_CodRcli);
   DM1.Query2.SQL.Add(' and BQCODRCLI=:CODIGO');
   if cb_todos.Checked then
      begin
      mSel_CodRcli:=-1;
      DM1.Query2.ParamByName('CODIGO').AsFloat :=mSel_CodRcli;
      DM1.Query2.Open;
      if DM1.Query2.Eof then
         begin
         FTestaPosicaoTreeview(mNivel_Incluir);
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild( Node_Temp, 'Todos');
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=2;
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=2;
         fCriarBloqueio(mNivel_Incluir,mUltNivel, codemp,mSel_CodRcli,mSel_CodRPro,mSel_CodFor,
                        mSel_CodVen,
                        mSel_CodLoc,mSel_CodBai,mSel_Codpro,
                        mSel_CodCli,mSel_CodCPro,mNivelSel,mSel_CodUF);
         end;
      end;

   end
else if mNivel_Incluir=mGrupo_CodCli then
   begin
   mcodant:=FloatToStr(mSel_CodCli);
   DM1.Query2.SQL.Add(' and BQCODCLI=:CODIGO');
   if cb_todos.Checked then
      begin
      mSel_CodCli:=-1;
      DM1.Query2.ParamByName('CODIGO').AsFloat :=mSel_CodCli;
      DM1.Query2.Open;
      if DM1.Query2.Eof then
         begin
         FTestaPosicaoTreeview(mNivel_Incluir);
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild( Node_Temp, 'Todos');
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=2;
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=2;

         fCriarBloqueio(mNivel_Incluir,mUltNivel, codemp,mSel_CodRcli,mSel_CodRPro,mSel_CodFor,
                        msel_Codven,
                        mSel_CodLoc,mSel_CodBai,mSel_Codpro,
                        mSel_CodCli,mSel_CodCPro,mNivelSel,mSel_CodUF);
         end;
      end;

   end
else if mNivel_Incluir=mGrupo_CodRPro then
   begin
   mcodant:=FloatToStr(mSel_CodRPro);
   DM1.Query2.SQL.Add(' and BQCODRPRO=:CODIGO');
   if cb_todos.Checked then
      begin
      mSel_CodRPro:=-1;
      DM1.Query2.ParamByName('CODIGO').AsFloat :=mSel_CodRPro;
      DM1.Query2.Open;
      if DM1.Query2.Eof then
         begin
         FTestaPosicaoTreeview(mNivel_Incluir);
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild( Node_Temp, 'Todos');
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=2;
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=2;
         fCriarBloqueio(mNivel_Incluir,mUltNivel, codemp,mSel_CodRcli,mSel_CodRPro,mSel_CodFor,
                        mSel_Codven,
                        mSel_CodLoc,mSel_CodBai,mSel_Codpro,
                        mSel_CodCli,mSel_CodCPro,mNivelSel,mSel_CodUF);
         end;
      end;
   end
else if mNivel_Incluir=mGrupo_CodCPro then
   begin
   mcodant:=FloatToStr(mSel_CodCPro);
   DM1.Query2.SQL.Add(' and BQCODRPRO=:CODIGO');
   if cb_todos.Checked then
      begin
      mSel_CodCPro:=-1;
      DM1.Query2.ParamByName('CODIGO').AsFloat :=mSel_CodCPro;
      DM1.Query2.Open;
      if DM1.Query2.Eof then
         begin
         FTestaPosicaoTreeview(mNivel_Incluir);
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild( Node_Temp, 'Todos');
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=2;
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=2;
         fCriarBloqueio(mNivel_Incluir,mUltNivel, codemp,mSel_CodRcli,mSel_CodRPro,mSel_CodFor,
                        mSel_Codven,
                        mSel_CodLoc,mSel_CodBai,mSel_Codpro,
                        mSel_CodCli,mSel_CodCPro,mNivelSel,mSel_CodUF);
         end;
      end;
   end


else if mNivel_Incluir=mGrupo_Codpro then
   begin
   mcodant:=FloatToStr(mSel_Codpro);
   DM1.Query2.SQL.Add(' and BQCODPRO=:CODIGO');
   if cb_todos.Checked then
      begin
      mSel_Codpro:=-1;
      DM1.Query2.ParamByName('CODIGO').AsFloat :=mSel_Codpro;
      DM1.Query2.Open;
      if DM1.Query2.Eof then
         begin
         FTestaPosicaoTreeview(mNivel_Incluir);
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild( Node_Temp, 'Todos');
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=2;
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=2;

         fCriarBloqueio(mNivel_Incluir,mUltNivel, codemp,mSel_CodRcli,mSel_CodRPro,mSel_CodFor,
                        mSel_Codven,
                        mSel_CodLoc,mSel_CodBai,mSel_Codpro,
                        mSel_CodCli,mSel_CodCPro,mNivelSel,mSel_CodUF);
         end;
      end;
   end;

if not cb_todos.Checked then
   begin
   While not Qr_Consulta.Eof do
      begin
      if Qr_Consulta.FieldByName('OK').AsString<>'' then
         begin
         if mNivel_Incluir=mGrupo_CodVen  then
            begin
            mNomeAdicionar:=Qr_Consulta.fieldByName('VNOME').AsString+' '+Qr_Consulta.fieldByName('VCODVEN').AsString;
            mSel_CodVen   :=Qr_Consulta.fieldByName('VCODVEN').AsFloat;
            DM1.Query2.ParamByName('CODIGO').AsFloat :=mSel_CodVen;
            end
         else if mNivel_Incluir=mGrupo_CodFor  then
            begin
            mNomeAdicionar:=Qr_Consulta.fieldByName('FRAZAO').AsString+' '+Qr_Consulta.fieldByName('FCODFOR').AsString;
            mSel_CodFor   :=Qr_Consulta.fieldByName('FCODFOR').AsFloat;
            DM1.Query2.ParamByName('CODIGO').AsFloat :=mSel_CodFor;
            end
         else if mNivel_Incluir=mGrupo_CodUF then
            begin
            mNomeAdicionar:=Qr_Consulta.fieldByName('PNOM').AsString+' '+Qr_Consulta.fieldByName('PUF').AsString;
            mSel_CodUF    :=Qr_Consulta.fieldByName('PUF').AsString;
            DM1.Query2.ParamByName('CODIGO').AsString  :=mSel_CodUF;
            end
         else if mNivel_Incluir=mGrupo_CodLoc then
            begin
            mNomeAdicionar:=Qr_Consulta.fieldByName('LNOME').AsString+' '+Qr_Consulta.fieldByName('LCODLOC').AsString;
            mSel_CodLoc   :=Qr_Consulta.fieldByName('LCODLOC').AsFloat;
            DM1.Query2.ParamByName('CODIGO').AsFloat :=mSel_CodLoc;
            end
         else if mNivel_Incluir=mGrupo_CodBai then
            begin
            mNomeAdicionar:=Qr_Consulta.fieldByName('BNOME').AsString+' '+Qr_Consulta.fieldByName('BCODBAI').AsString;
            mSel_CodBai   :=Qr_Consulta.fieldByName('BCODBAI').AsFloat;
            DM1.Query2.ParamByName('CODIGO').AsFloat :=mSel_CodBai;
            end
         else if mNivel_Incluir=mGrupo_CodRcli then
            begin
            mNomeAdicionar:=Qr_Consulta.fieldByName('RNOME').AsString+' '+Qr_Consulta.fieldByName('RCODRAM').AsString;
            mSel_CodRcli  :=Qr_Consulta.fieldByName('RCODRAM').AsFloat;
            DM1.Query2.ParamByName('CODIGO').AsFloat :=mSel_CodRcli;
            end
         else if mNivel_Incluir=mGrupo_CodCli then
            begin
            mNomeAdicionar:=Qr_Consulta.fieldByName('CRAZAO').AsString+' '+Qr_Consulta.fieldByName('CCODCLI').AsString;
            mSel_CodCli   :=Qr_Consulta.fieldByName('CCODCLI').AsFloat;
            DM1.Query2.ParamByName('CODIGO').AsFloat :=mSel_CodCli;
            end
         else if mNivel_Incluir=mGrupo_CodRPro then
            begin
            mNomeAdicionar:=Qr_Consulta.fieldByName('RNOME').AsString+' '+Qr_Consulta.fieldByName('RCODRAM').AsString;
            mSel_CodRPro   :=Qr_Consulta.fieldByName('RCODRAM').AsFloat;
            DM1.Query2.ParamByName('CODIGO').AsFloat :=mSel_CodRPro;
            end
         else if mNivel_Incluir=mGrupo_Codpro then
            begin
            mNomeAdicionar:=Qr_Consulta.fieldByName('PDNOME').AsString+' '+Qr_Consulta.fieldByName('PDCODPRO').AsString;
            mSel_Codpro   :=Qr_Consulta.fieldByName('PDCODPRO').AsFloat;
            DM1.Query2.ParamByName('CODIGO').AsFloat :=mSel_Codpro;
            end;
         DM1.Query2.Open;
         if DM1.Query2.Eof then
            begin
            FTestaPosicaoTreeview(mNivel_Incluir);
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild( Node_Temp,  mNomeAdicionar);
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=2;
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=2;
            fCriarBloqueio(mNivel_Incluir,mUltNivel

            , codemp,mSel_CodRcli,mSel_CodRPro,mSel_CodFor,
                         mSel_Codven,
                         mSel_CodLoc,mSel_CodBai,mSel_Codpro,
                         mSel_CodCli,mSel_CodCPro,mNivelSel,mSel_CodUF);
            end;
         end;
      Qr_Consulta.Next;
    end;
   end;
if mNivel_Incluir=mGrupo_CodVen then
   mSel_CodVen:=StrtoFloat(mcodant)
else if mNivel_Incluir=mGrupo_CodFor then
   mSel_CodFor:=StrtoFloat(mcodant)
else if mNivel_Incluir=mGrupo_CodUF then
   mSel_CodUF :=mcodant
else if mNivel_Incluir=mGrupo_CodLoc then
   mSel_CodLoc:=StrToFloat(mcodant)
else if mNivel_Incluir=mGrupo_CodBai then
   mSel_CodBai:=StrToFloat(mcodant)
else if mNivel_Incluir=mGrupo_CodRcli then
   mSel_CodRcli:=StrToFloat(mcodant)
else if mNivel_Incluir=mGrupo_CodCli then
   mSel_CodCli:=StrToFloat(mcodant)
else if mNivel_Incluir=mGrupo_CodRPro then
   mSel_CodRPro:=StrToFloat(mcodant)
else if mNivel_Incluir=mGrupo_Codpro then
   mSel_Codpro:=StrToFloat(mcodant);
close;

end;

procedure TFrm_BloqueioVenda_Seleciona.Qr_ConsultaBeforeEdit(
  DataSet: TDataSet);
begin
mValAnt:=Qr_Consulta.fieldByName('OK').AsString;
end;

procedure TFrm_BloqueioVenda_Seleciona.Qr_ConsultaAfterPost(
  DataSet: TDataSet);
begin
if Qr_Consulta.FieldByName('OK').AsString<>mValAnt then
   begin
   if Qr_Consulta.FieldByName('OK').AsString='' then
      mQtdSel:=mQtdSel-1
   else
      mQtdSel:=mQtdSel+1;
   ST_QTDSEL.Caption:=IntToStr(mQtdSel);
   end;
end;

procedure TFrm_BloqueioVenda_Seleciona.cb_todosExit(Sender: TObject);
var
mValor_Atrib: String;
begin

if (cb_todos.State<>cb_todos_ant.State) then
   begin
   if cb_todos.Checked then
      mValor_Atrib:='P'
   else
      mValor_Atrib:='';
   Qr_Consulta.First;
   While not Qr_Consulta.Eof do
      begin
      if Qr_Consulta.FieldByName('OK').AsString<>mValor_Atrib then
         begin
         Qr_Consulta.Edit;
         Qr_Consulta.FieldByName('OK').AsString:=mValor_Atrib;
         Qr_Consulta.Post;
         end;
      Qr_Consulta.Next;
      end;
   end;

end;

procedure TFrm_BloqueioVenda_Seleciona.cb_todosEnter(Sender: TObject);
begin
cb_todos_ant.State :=cb_todos.State ;
end;
function TFrm_BloqueioVenda_Seleciona.FTestaPosicaoTreeview(pNivel: Integer): Boolean;

var
mNomeNivel: STring;
mItem_Temp: Integer;
begin
mNomeNivel:=NomeNivel[pNivel];
if Frm_BloqueioVenda.Tree_BloqueioVenda.Selected.Text<>mNomeNivel then
   begin
   Node_Temp :=  Frm_BloqueioVenda.Tree_BloqueioVenda.Selected;
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild( Node_Temp, mNomeNivel);
   mItem_Temp:=Frm_BloqueioVenda.Tree_BloqueioVenda.Selected.AbsoluteIndex;
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem_Temp].Expanded:=true;
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem_Temp+1].Selected:=True;
   mUltNivel:=pNivel;                // lindomar 1020
   end;
Node_Temp :=  Frm_BloqueioVenda.Tree_BloqueioVenda.Selected;
result:=true;
end;

procedure TFrm_BloqueioVenda_Seleciona.CONTEUDOChange(Sender: TObject);
begin
if mNivel_Incluir=mGrupo_CodVen then
   begin
   if RG_TPPESQ.ItemIndex=0 then
      Qr_Consulta.Locate('VCODVEN',fsonumero(CONTEUDO.Text),[loPartialkey,LoCaseInSensitive])
   else if RG_TPPESQ.ItemIndex=1 then
      Qr_Consulta.Locate('VNOME',CONTEUDO.Text,[loPartialkey,LoCaseInSensitive]);
   end
else if mNivel_Incluir=mGrupo_CodFor then
   begin
   if RG_TPPESQ.ItemIndex=0 then
      Qr_Consulta.Locate('FCODFOR',fsonumero(CONTEUDO.Text),[loPartialkey,LoCaseInSensitive])
   else if RG_TPPESQ.ItemIndex=1 then
      Qr_Consulta.Locate('FRAZAO',CONTEUDO.Text,[loPartialkey,LoCaseInSensitive]);
   end
else if mNivel_Incluir=mGrupo_CodUF then
   begin
   if RG_TPPESQ.ItemIndex=0 then
      Qr_Consulta.Locate('PUF',CONTEUDO.Text,[loPartialkey,LoCaseInSensitive])
   else if RG_TPPESQ.ItemIndex=1 then
      Qr_Consulta.Locate('PNOM',CONTEUDO.Text,[loPartialkey,LoCaseInSensitive]);
   end
else if mNivel_Incluir=mGrupo_CodLoc then
   begin
   if RG_TPPESQ.ItemIndex=0 then
      Qr_Consulta.Locate('LCODLOC',fsonumero(CONTEUDO.Text),[loPartialkey,LoCaseInSensitive])
   else if RG_TPPESQ.ItemIndex=1 then
      Qr_Consulta.Locate('LNOME',CONTEUDO.Text,[loPartialkey,LoCaseInSensitive])
   else if RG_TPPESQ.ItemIndex=2 then
      Qr_Consulta.Locate('LUF',CONTEUDO.Text,[loPartialkey,LoCaseInSensitive]);
   end
else if mNivel_Incluir=mGrupo_CodBai then
   begin
   if RG_TPPESQ.ItemIndex=0 then
      Qr_Consulta.Locate('BCODBAI',fsonumero(CONTEUDO.Text),[loPartialkey,LoCaseInSensitive])
   else if RG_TPPESQ.ItemIndex=1 then
      Qr_Consulta.Locate('BNOME',CONTEUDO.Text,[loPartialkey,LoCaseInSensitive]);
   end
else if mNivel_Incluir=mGrupo_CodRcli then
   begin
   if RG_TPPESQ.ItemIndex=0 then
      Qr_Consulta.Locate('RCODRAM',fsonumero(CONTEUDO.Text),[loPartialkey,LoCaseInSensitive])
   else if RG_TPPESQ.ItemIndex=1 then
      Qr_Consulta.Locate('RNOME',CONTEUDO.Text,[loPartialkey,LoCaseInSensitive]);
   end
else if mNivel_Incluir=mGrupo_CodCli then
   begin
   if RG_TPPESQ.ItemIndex=0 then
      Qr_Consulta.Locate('CCODCLI',fsonumero(CONTEUDO.Text),[loPartialkey,LoCaseInSensitive])
   else if RG_TPPESQ.ItemIndex=1 then
      Qr_Consulta.Locate('CRAZAO',CONTEUDO.Text,[loPartialkey,LoCaseInSensitive])
   else if RG_TPPESQ.ItemIndex=2 then
      Qr_Consulta.Locate('CBAIRRO',CONTEUDO.Text,[loPartialkey,LoCaseInSensitive])
   else if RG_TPPESQ.ItemIndex=3 then
      Qr_Consulta.Locate('CCIDADE',CONTEUDO.Text,[loPartialkey,LoCaseInSensitive])
   else if RG_TPPESQ.ItemIndex=4 then
      Qr_Consulta.Locate('CUF',CONTEUDO.Text,[loPartialkey,LoCaseInSensitive]);
   end
else if mNivel_Incluir=mGrupo_CodRPro then
   begin
   if RG_TPPESQ.ItemIndex=0 then
      Qr_Consulta.Locate('RCODRAM',fsonumero(CONTEUDO.Text),[loPartialkey,LoCaseInSensitive])
   else if RG_TPPESQ.ItemIndex=1 then
      Qr_Consulta.Locate('RNOME',CONTEUDO.Text,[loPartialkey,LoCaseInSensitive]);
   end
else if mNivel_Incluir=mGrupo_Codpro then
   begin
   if RG_TPPESQ.ItemIndex=0 then
      Qr_Consulta.Locate('PDCODPRO',fsonumero(CONTEUDO.Text),[loPartialkey,LoCaseInSensitive])
   else if RG_TPPESQ.ItemIndex=1 then
      Qr_Consulta.Locate('PDNOME',CONTEUDO.Text,[loPartialkey,LoCaseInSensitive])
   else if RG_TPPESQ.ItemIndex=2 then
      Qr_Consulta.Locate('PDNOMFOR',CONTEUDO.Text,[loPartialkey,LoCaseInSensitive]);
   end;

end;

procedure TFrm_BloqueioVenda_Seleciona.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.

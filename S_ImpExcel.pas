unit S_ImpExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DB, RxMemDS, DBGrids, ExtCtrls,
    ComCtrls, Spin, DBTables;

type
  Tfrm_ImpExcel = class(TForm)
    opd1: TOpenDialog;
    Qr_Temp: TRxMemoryData;
    Qr_TempItem: TIntegerField;
    Qr_TempDescricao: TStringField;
    Qr_TempQtde: TFloatField;
    Qr_TempMarca: TStringField;
    Qr_TempVlrUnit: TFloatField;
    Qr_TempVlrTotal: TFloatField;
    DataSource1: TDataSource;
    Qr_TempUnid: TStringField;
    PageControl1: TPageControl;
    tsDadosImp: TTabSheet;
    tsIrreg: TTabSheet;
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    btnSair: TBitBtn;
    Label9: TLabel;
    Memo1: TMemo;
    Panel2: TPanel;
    GB_ITENSIMPORT: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cb_item: TComboBox;
    cb_descricao: TComboBox;
    cb_qtde: TComboBox;
    cb_unidade: TComboBox;
    cb_marca: TComboBox;
    cb_unitario: TComboBox;
    cb_total: TComboBox;
    Panel4: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    nomarq: TEdit;
    bbPesq: TBitBtn;
    Panel5: TPanel;
    bbGerar: TBitBtn;
    bbLerarq: TBitBtn;
    btnImortar: TBitBtn;
    DBGrid1: TDBGrid;
    cb_descricao_complementar: TComboBox;
    Qr_TempDescricao_Complementar: TStringField;
    Label10: TLabel;
    Label11: TLabel;
    edt_linha_apartir: TSpinEdit;
    Query1: TQuery;
    Label12: TLabel;
    cb_lote_pregao: TComboBox;
    Qr_Templote_pregao: TStringField;
    sbn_salvarPadrao: TSpeedButton;
    sbnCancelar: TSpeedButton;
    Qr_Tempganhou: TStringField;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    cb_item_ganhou: TComboBox;
    Label14: TLabel;
    CB_IMPORTAR_QUANDO: TComboBox;
    Label15: TLabel;
    cb_pco_cpr: TComboBox;
    Qr_Temppcocpr: TFloatField;
    cb_excluir_anteriores: TCheckBox;
    procedure bbLerarqClick(Sender: TObject);
    procedure bbPesqClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure bbGerarClick(Sender: TObject);
    procedure btnImortarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure nomarqExit(Sender: TObject);
    procedure cb_itemChange(Sender: TObject);
    procedure GB_ITENSIMPORTExit(Sender: TObject);
    procedure sbnCancelarClick(Sender: TObject);
    procedure sbn_salvarPadraoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cb_lote_pregaoExit(Sender: TObject);
    procedure cb_itemExit(Sender: TObject);
    procedure cb_descricaoExit(Sender: TObject);
    procedure cb_qtdeExit(Sender: TObject);
    procedure cb_unidadeExit(Sender: TObject);
    procedure cb_marcaExit(Sender: TObject);
    procedure cb_unitarioExit(Sender: TObject);
    procedure cb_totalExit(Sender: TObject);
    procedure cb_descricao_complementarExit(Sender: TObject);
    procedure cb_item_ganhouExit(Sender: TObject);
    procedure CB_IMPORTAR_QUANDOExit(Sender: TObject);
    procedure CB_IMPORTAR_QUANDOChange(Sender: TObject);
    procedure cb_pco_cprExit(Sender: TObject);
  private
    { Private declarations }

    mPegouDoPadrao: Boolean ;

    function ValFloat(Texto:String): Real;
    function ValInt(Texto:String): Integer;
    function fDesifraColunas(ptipo: Integer): boolean;

    function fSalvarImpExcel(pNomeArq: String): boolean;


    function fBuscarImpExcel(pNomeArq: String): boolean;

    procedure fPegarPadrao;


  public
    { Public declarations }
    mchavelic_origem: Integer;

  end;
const

  mForm = 'frm_impExcel';
  mDifCol = 1;


var
  frm_ImpExcel: Tfrm_ImpExcel;
  mAlterouColuna: Boolean=False;
implementation

uses ComObj, Func, LerArq, S_Lic2, S_DM1, func_excecoes,
  funcoes_especificas, S_DM4;

{$R *.dfm}

function fLerExcel(AGrid: TStringGrid; mArqXml: String): Boolean;
var
Excel : Variant;
Linha,CN:Integer;
mQtdCol: Integer;
begin

Excel := CreateOleObject('Excel.Application');
Excel.Visible := false;
Excel.WorkBooks.Open(mArqXml);


AGrid.RowCount := 1;
AGrid.ColCount := 12;
for mqtdcol:=0 to 12 do
   AGrid.Cells[mqtdcol,0]:=IntTostr(mqtdcol+1);

CN := 1 ;
Linha:=2;

While Linha < 10000 Do
   begin

   AGrid.RowCount := CN;
   AGrid.Cells[0,CN] := Excel.WorkBooks[1].Sheets[1].Cells[LINHA,1] ;
   AGrid.Cells[1,CN] := Excel.WorkBooks[1].Sheets[1].Cells[LINHA,2] ;
   AGrid.Cells[2,CN] := Excel.WorkBooks[1].Sheets[1].Cells[LINHA,3] ;
   AGrid.Cells[3,CN] := Excel.WorkBooks[1].Sheets[1].Cells[LINHA,4] ;
   AGrid.Cells[4,CN] := Excel.WorkBooks[1].Sheets[1].Cells[LINHA,5] ;
   AGrid.Cells[5,CN] := Excel.WorkBooks[1].Sheets[1].Cells[LINHA,6] ;
   AGrid.Cells[6,CN] := Excel.WorkBooks[1].Sheets[1].Cells[LINHA,7] ;
   AGrid.Cells[7,CN] := Excel.WorkBooks[1].Sheets[1].Cells[LINHA,8] ;
   AGrid.Cells[9,CN] := Excel.WorkBooks[1].Sheets[1].Cells[LINHA,9] ;
   AGrid.Cells[10,CN] := Excel.WorkBooks[1].Sheets[1].Cells[LINHA,10] ;
   AGrid.Cells[11,CN] := Excel.WorkBooks[1].Sheets[1].Cells[LINHA,11] ;
   AGrid.Cells[12,CN] := Excel.WorkBooks[1].Sheets[1].Cells[LINHA,12] ;

   IF Length(AGrid.Cells[1,CN]) = 0 THEN
      begin
      Excel.quit ;
      break ;
      end ;
   CN := CN + 1 ;
   linha := linha + 1 ;
   end;

result:=true;
end;



procedure Tfrm_ImpExcel.bbLerarqClick(Sender: TObject);
var
x: Integer;
begin

if Trim(nomarq.Text) = '' then begin
   ShowMessage('Favor informar o Caminho onde se Encontra o Arquivo!');
   nomarq.SetFocus;
   Exit;
end;
for x:=0 to StringGrid1.RowCount-1 do
   StringGrid1.Rows[x].Clear;

StringGrid1.RowCount:=2;

if Xls_To_StringGrid(StringGrid1, nomarq.Text,mDifCol) then
   begin
   if not fBuscarImpExcel(Fnomearq_Pasta(0,nomarq.text)) then
      fDesifraColunas(0);
   end
else if fLerExcel(StringGrid1, nomarq.Text) then
   fDesifraColunas(0);

end;

procedure Tfrm_ImpExcel.bbPesqClick(Sender: TObject);
begin
if opd1.Execute then
   begin
   nomarq.Text:=opd1.FileName;
   if (uppercase(ExtractFileExt(nomarq.Text))<>'.XLS') and
      (uppercase(ExtractFileExt(nomarq.Text))<>'.XLSX') and
      (uppercase(ExtractFileExt(nomarq.Text))<>'.CSV') then
      begin
      fmensagem('o Arquivo tem que ser do tipo Xls(Planilha do Excel)',0,['0'],0);
      nomarq.Text;
      end;
   bbLerarqClick(self);
   bbGerarClick(self);

   end;
end;


function Tfrm_ImpExcel.ValFloat(Texto: String): Real;
var
  x: integer;
  maux: string;
  dec: boolean;
begin
maux:='';
Texto:=Trim(Texto);
dec:=false;
for x:=1 to Length(Texto) do
   If Texto[x] in ['0'..'9'] then
      maux:=maux+Texto[x]
   else if (Texto[x]='-') and (x=1) then
      maux:=maux+Texto[x]
   else if Texto[x]=DecimalSeparator then
      begin
      if not dec then
         begin
         maux:=maux+Texto[x];
         dec:=true;
         end;
      end;
if Trim(maux)='' then
   maux:='0';
Result:=StrToFloat(maux);
end;


function Tfrm_ImpExcel.ValInt(Texto: String): Integer;
var
  x: integer;
  maux: string;
begin
maux:='0';
Texto:=Trim(Texto);
for x:=1 to Length(Texto) do
   begin
   If Texto[x] in ['0'..'9'] then
      maux:=maux+Texto[x];
   end;
Result:=StrToInt(maux);
end;

procedure Tfrm_ImpExcel.btnSairClick(Sender: TObject);
begin
   Qr_Temp.Active := False;
   Close;
end;

procedure Tfrm_ImpExcel.bbGerarClick(Sender: TObject);
var
  xCont : Integer;
  mCampoTeste: String;
begin

if (StringGrid1.RowCount -1)  = 0 then
   begin
   fmensagem('Não existe Arquivos para Gerar!',0,['0'],0);
   bbPesq.SetFocus;
   Exit;
   end;


Qr_Temp.Close;
Qr_Temp.Active := True;
mLotePregao:='';


for xCont := edt_linha_apartir.Value to StringGrid1.RowCount - 1 do
   begin
   if (uppercase(StringGrid1.Cells[00+mDifCol,xCont])='LOTE') and (trim(StringGrid1.Cells[01+mDifCol,xCont])<>'') then
      begin
      mLotePregao:=trim(StringGrid1.Cells[01+mDifCol,xCont]);
      end;
   if trim(StringGrid1.Cells[cb_descricao.ItemIndex+mDifCol, xCont]) ='' then
      begin
      continue;
      end;


   Qr_Temp.Append;
//   Qr_Temp.Insert;
//  mCampoTeste :='esta no item ' + StringGrid1.Cells[cb_item.ItemIndex+mDifCol,xCont];


   case cb_item.ItemIndex of
       0..19 :


  //     if ENumero(StringGrid1.Cells[cb_item.ItemIndex+mDifCol,xCont]) then
                  begin
                  if (StringGrid1.Cells[cb_item.ItemIndex+mDifCol,xCont] <> 'Item') and (StringGrid1.Cells[cb_item.ItemIndex+mDifCol,xCont] <> '') then
                     begin
                     try
                        Qr_TempItem.AsInteger := ValInt(StringGrid1.Cells[cb_item.ItemIndex+mDifCol,xCont]);
                     except
                        end;   
                     end;
                  end;
            end;
   case cb_lote_pregao.ItemIndex of
       0..19 : if ENumero(StringGrid1.Cells[cb_lote_pregao.ItemIndex+mDifCol,xCont]) then
                  begin
                  if (uppercase(StringGrid1.Cells[cb_lote_pregao.ItemIndex+mDifCol,xCont]) <> 'LOTE') and (StringGrid1.Cells[cb_lote_pregao.ItemIndex+mDifCol,xCont] <> '') then
                     begin
                     Qr_Templote_pregao.AsString := insere(StringGrid1.Cells[cb_lote_pregao.ItemIndex+mDifCol,xCont],'0',2);
                     end;
                  end;
            end;

    case cb_descricao.ItemIndex of
        0..19 : if (StringGrid1.Cells[cb_descricao.ItemIndex+mDifCol,xCont] <> 'Especificações') and
                   (StringGrid1.Cells[cb_descricao.ItemIndex+mDifCol, xCont] <> '') then
                   begin
                   Qr_TempDescricao.AsString := StringGrid1.Cells[cb_descricao.ItemIndex+mDifCol,xCont];
                   end;

                end;

    case cb_item_ganhou.ItemIndex of
        0..19 : if (StringGrid1.Cells[cb_item_ganhou.ItemIndex+mDifCol,xCont] <> 'Ganhou') and
                   (StringGrid1.Cells[cb_item_ganhou.ItemIndex+mDifCol, xCont] <> '') then
                   begin
                   Qr_Tempganhou.AsString := StringGrid1.Cells[cb_item_ganhou.ItemIndex+mDifCol,xCont];
                   end;
                end;




    case cb_qtde.ItemIndex of
        0..19 : if (StringGrid1.Cells[cb_qtde.ItemIndex+mDifCol,xCont] <> 'Quant.') and
                   (StringGrid1.Cells[cb_qtde.ItemIndex+mDifCol, xCont] <> '') then
                   begin
                   Qr_TempQtde.AsFloat := ValFloat(StringGrid1.Cells[cb_qtde.ItemIndex+mDifCol,xCont]);
                   end;
    end;
    case cb_descricao_complementar.ItemIndex of
        0..19 : if (StringGrid1.Cells[cb_descricao_complementar.ItemIndex+mDifCol,xCont] <> 'Especificações') and
                   (StringGrid1.Cells[cb_descricao_complementar.ItemIndex+mDifCol, xCont] <> '') then
                   begin
                   Qr_TempDescricao_complementar.AsString := StringGrid1.Cells[cb_descricao_complementar.ItemIndex+mDifCol,xCont];
                   end;

                end;

    case cb_item_ganhou.ItemIndex of
        0..19 : if (StringGrid1.Cells[cb_item_ganhou.ItemIndex+mDifCol,xCont] <> 'Ganhou') and
                   (StringGrid1.Cells[cb_item_ganhou.ItemIndex+mDifCol, xCont] <> '') then
                   begin
                   Qr_Tempganhou.AsString := StringGrid1.Cells[cb_item_ganhou.ItemIndex+mDifCol,xCont];
                   end;
                end;


    case cb_unidade.ItemIndex of
        0..19 : if (StringGrid1.Cells[cb_unidade.ItemIndex+mDifCol,xCont] <> 'Und') and (StringGrid1.Cells[cb_unidade.ItemIndex+mDifCol, xCont] <> '') then
                    begin
                    Qr_TempUnid.AsString := StringGrid1.Cells[cb_unidade.ItemIndex+mDifCol,xCont];
                    end;

    end;
    case cb_marca.ItemIndex of
        0..19 : if (StringGrid1.Cells[cb_marca.ItemIndex+mDifCol,xCont] <> 'Marca') and (StringGrid1.Cells[cb_marca.ItemIndex+mDifCol, xCont] <> '') then
                   begin
                   Qr_TempMarca.AsString := StringGrid1.Cells[cb_marca.ItemIndex+mDifCol,xCont];
                   end;
    end;
    case cb_unitario.ItemIndex of
        0..19 : if (StringGrid1.Cells[cb_unitario.ItemIndex+mDifCol,xCont] <> 'V. Unit.') and
                    (StringGrid1.Cells[cb_unitario.ItemIndex+mDifCol, xCont] <> '') then
                   begin
                   Qr_TempVlrUnit.AsFloat := ValFloat(StringGrid1.Cells[cb_unitario.ItemIndex+mDifCol,xCont]);
                   end;

    end;

    case cb_total.ItemIndex of
        0..19 : if (StringGrid1.Cells[cb_total.ItemIndex+mDifCol,xCont] <> 'V. Total') and
                   (StringGrid1.Cells[cb_total.ItemIndex+mDifCol, xCont] <> '') then
                   begin
                   Qr_TempVlrTotal.AsFloat := ValFloat(StringGrid1.Cells[cb_total.ItemIndex+mDifCol,xCont]);
                   end;

    end;

    case cb_pco_cpr.ItemIndex of
        0..19 : if (StringGrid1.Cells[cb_pco_cpr.ItemIndex+mDifCol,xCont] <> 'Vl. Custo Total') and
                   (StringGrid1.Cells[cb_pco_cpr.ItemIndex+mDifCol, xCont] <> '') then
                   begin
                   Qr_Temppcocpr.AsFloat := ValFloat(StringGrid1.Cells[cb_pco_cpr.ItemIndex+mDifCol,xCont]);
                   end;

    end;

    Qr_Temp.Post;
    end;
end;

procedure Tfrm_ImpExcel.btnImortarClick(Sender: TObject);
var
mItem_Grav: Integer;

begin

if (not Qr_Temp.Active) or (Qr_Temp.IsEmpty) then
   begin
   fmensagem('Não ha Registros a Serem Importados!',0,['0'],0);
   exit;
   end;

   {-- Importar Dados para o SGE --}
{
if not DM1.Tb_LC1.Active then
   begin
   flcadlc1(0,'99999','');
   DM1.Tb_LC1.Insert
   end
else if not (DM1.Tb_LC1.State in [dsInsert,dsEdit]) then
   begin
   if DM1.Tb_LC1LC1_CHAVE.IsNull then
      DM1.Tb_LC1.Insert
   else
      DM1.Tb_LC1.Edit;
   end;
FAtualizaBanco(1,'CADLC1','LC1_CODEMP',DM1.Tb_LC1LC1_CODEMP.AsString
   ,['LC1_CHAVE'],[DM1.Tb_LC1LC1_CHAVE.AsString]
   ,DM1.Tb_LC1);
}


if cb_excluir_anteriores.Checked=true then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('delete from CADLC2 where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADLC2',[]),'',' LC2_CODEMP=0'+inttostr(codemp)+' and ')
                     +' LC2_CHAVE=0'+inttostr(mchavelic_origem));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(DM1.Query1,477,'SGE','CADLC2');
      end;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(LC2_ITEM) from CADLC2 where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADLC2',[]),'',' LC2_CODEMP=0'+inttostr(codemp)+' and ')
                  +' LC2_CHAVE=0'+inttostr(mchavelic_origem));
try
   DM1.Query1.open;
except
   end;
mProx_Item:=DM1.Query1.fields[0].asinteger+1;


DM1.Query5.Close;
DM1.Query5.sql.Clear;
DM1.Query5.sql.add('Insert into CADLC2 (');
DM1.Query5.sql.add(' LC2_CODEMP ');
DM1.Query5.sql.add(',LC2_ID_NEW ');
DM1.Query5.sql.add(',LC2_CHAVE ');
DM1.Query5.sql.add(',LC2_ITEM ');
DM1.Query5.sql.add(',LC2_CODPRO ');
DM1.Query5.sql.add(',LC2_QTD ');
DM1.Query5.sql.add(',LC2_UND ');
DM1.Query5.sql.add(',LC2_DESCCOMP');
DM1.Query5.sql.add(',LC2_NOM01');
DM1.Query5.sql.add(',LC2_NOM02');
DM1.Query5.sql.add(',LC2_NOM03');
DM1.Query5.sql.add(',LC2_NOM04');
DM1.Query5.sql.add(',LC2_NOM05');
DM1.Query5.sql.add(',LC2_NOM06');
DM1.Query5.sql.add(',LC2_NOM07');
DM1.Query5.sql.add(',LC2_NOM08');
DM1.Query5.sql.add(',LC2_NOM09');
DM1.Query5.sql.add(',LC2_NOM10');
DM1.Query5.sql.add(',LC2_MARCA');
DM1.Query5.sql.add(',LC2_RMS');
DM1.Query5.sql.add(',LC2_PCOAV');
DM1.Query5.sql.add(',LC2_PCOPZ');
DM1.Query5.sql.add(',LC2_LOTSEQ');
DM1.Query5.sql.add(',LC2_LOTEPREGAO');
DM1.Query5.sql.add(',LC2_QTDENV ');
DM1.Query5.sql.add(',LC2_GANHOU ');
DM1.Query5.sql.add(',LC2_PCOCPR ');
DM1.Query5.sql.add(') values (');
DM1.Query5.sql.add(' :LC2_CODEMP ');
DM1.Query5.sql.add(',CADLC2_SEQ.NEXTVAL ');
DM1.Query5.sql.add(',:LC2_CHAVE ');
DM1.Query5.sql.add(',:LC2_ITEM ');
DM1.Query5.sql.add(',:LC2_CODPRO ');
DM1.Query5.sql.add(',:LC2_QTD ');
DM1.Query5.sql.add(',:LC2_UND ');
DM1.Query5.sql.add(',:LC2_DESCCOMP');
DM1.Query5.sql.add(',:LC2_NOM01');
DM1.Query5.sql.add(',:LC2_NOM02');
DM1.Query5.sql.add(',:LC2_NOM03');
DM1.Query5.sql.add(',:LC2_NOM04');
DM1.Query5.sql.add(',:LC2_NOM05');
DM1.Query5.sql.add(',:LC2_NOM06');
DM1.Query5.sql.add(',:LC2_NOM07');
DM1.Query5.sql.add(',:LC2_NOM08');
DM1.Query5.sql.add(',:LC2_NOM09');
DM1.Query5.sql.add(',:LC2_NOM10');
DM1.Query5.sql.add(',:LC2_MARCA');
DM1.Query5.sql.add(',:LC2_RMS');
DM1.Query5.sql.add(',:LC2_PCOAV');
DM1.Query5.sql.add(',:LC2_PCOPZ');
DM1.Query5.sql.add(',:LC2_LOTSEQ');
DM1.Query5.sql.add(',:LC2_LOTEPREGAO');
DM1.Query5.sql.add(',:LC2_QTDENV ');
DM1.Query5.sql.add(',:LC2_GANHOU ');
DM1.Query5.sql.add(',:LC2_PCOCPR ');

DM1.Query5.sql.add(') ');



Memo1.Lines.Clear;
Qr_Temp.First;
if not Qr_Temp.IsEmpty then
   begin
   while not Qr_Temp.Eof do
      begin
      if ENumero(Qr_TempDescricao.Text) then
         begin
         Qr_Temp.Next;
         Continue;
         end;
      if ( (Qr_TempQtde.AsFloat <=0) or (Trim(Qr_TempDescricao.AsString) = '') ) then
         begin
         Qr_Temp.Next;
         Continue;
         end;
      if (CB_IMPORTAR_QUANDO.ItemIndex=0) and (trim(Qr_Tempganhou.AsString)='') then
         begin
         Qr_Temp.Next;
         Continue;
         end;


      DM1.Query5.Close;
      DM1.Query5.ParamByName('LC2_CODEMP').AsFloat:=codemp;
      DM1.Query5.ParamByName('LC2_CHAVE').AsFloat:=mchavelic_origem;
      if Qr_TempItem.AsInteger=0 then
         begin
         DM1.Query5.ParamByName('LC2_ITEM').AsInteger:=mProx_Item;
         mProx_Item:=mProx_Item+1;
         end
      else
         begin
         if Qr_TempItem.AsInteger<mProx_Item then
            begin
            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.add('Select count(*) from CADLC2 where '
                              +iif(DM1.Qr_TID.Locate('TINOME','CADLC2',[]),'',' LC2_CODEMP=0'+IntTostr(codemp)+' and ')
                              +' LC2_CHAVE=0'+inttostr(mchavelic_origem)
                              +' and LC2_LOTEPREGAO=:LOTEPREGAO '
                              +' and LC2_ITEM=:ITEM ');
            DM1.Query1.ParamByName('LOTEPREGAO').AsString:=Qr_Templote_pregao.AsString;
            DM1.Query1.ParamByName('ITEM').AsInteger     :=Qr_TempItem.AsInteger;
            try
               DM1.Query1.open;
            except
               end;
            if DM1.Query1.Fields[0].AsInteger>0 then
               begin
               Qr_Temp.Next;
               Continue;
               end;
            end
         else
            mProx_Item:=Qr_TempItem.AsInteger+1;
         DM1.Query5.ParamByName('LC2_ITEM').AsInteger:=Qr_TempItem.AsInteger;
         end;
      DM1.Query5.ParamByName('LC2_CODPRO').AsFloat:=0;
      DM1.Query5.ParamByName('LC2_QTD').AsFloat   :=Qr_TempQtde.AsFloat;
      DM1.Query5.ParamByName('LC2_UND').AsString  :=copy(Qr_TempUnid.AsString,1,3);

      DM1.Query5.ParamByName('LC2_PCOCPR').AsFloat := Qr_Temppcocpr.AsFloat;

      DM1.Query5.ParamByName('LC2_DESCCOMP').AsString  :=Qr_TempDescricao_Complementar.AsString;
      if Trim(Qr_TempDescricao.Text)='' then
         mcinst3:=' '
      else
         mcinst3:=fQuebraString(50,Qr_TempDescricao.AsString); // nome produto dividido em 60 letras
      mcinst3:=insere2(mcinst3,' ',500);

      DM1.Query5.ParamByName('LC2_NOM01').AsString:=copy(mcinst3,1,50);
      if length(mcinst3)>50 then
         DM1.Query5.ParamByName('LC2_NOM02').AsString:=copy(mcinst3,51,50);
      if length(mcinst3)>100 then
         DM1.Query5.ParamByName('LC2_NOM03').AsString:=copy(mcinst3,101,50);
      if length(mcinst3)>150 then
         DM1.Query5.ParamByName('LC2_NOM04').AsString:=copy(mcinst3,151,50);
      if length(mcinst3)>200 then
         DM1.Query5.ParamByName('LC2_NOM05').AsString:=copy(mcinst3,201,50);
      if length(mcinst3)>250 then
         DM1.Query5.ParamByName('LC2_NOM06').AsString:=copy(mcinst3,251,50);
      if length(mcinst3)>300 then
         DM1.Query5.ParamByName('LC2_NOM07').AsString:=copy(mcinst3,301,50);
      if length(mcinst3)>350 then
         DM1.Query5.ParamByName('LC2_NOM08').AsString:=copy(mcinst3,351,50);
      if length(mcinst3)>400 then
         DM1.Query5.ParamByName('LC2_NOM09').AsString:=copy(mcinst3,401,50);
      if length(mcinst3)>450 then
         DM1.Query5.ParamByName('LC2_NOM10').AsString:=copy(mcinst3,451,50);
      DM1.Query5.ParamByName('LC2_MARCA').AsString:=copy(Qr_TempMarca.AsString,1,15);
      DM1.Query5.ParamByName('LC2_RMS').AsString  :='';
      DM1.Query5.ParamByName('LC2_PCOAV').AsFloat :=Qr_TempVlrUnit.AsFloat;
      DM1.Query5.ParamByName('LC2_PCOPZ').AsFloat      :=0;
      DM1.Query5.ParamByName('LC2_LOTSEQ').AsFloat     :=ls_numlic;
      if fsonumero(Qr_Templote_pregao.AsString)=0 then
         DM1.Query5.ParamByName('LC2_LOTEPREGAO').AsString:='0'
      else
         DM1.Query5.ParamByName('LC2_LOTEPREGAO').AsString:=Qr_Templote_pregao.AsString;

      DM1.Query5.ParamByName('LC2_QTDENV').AsFloat     :=0;

      if length(trim(Qr_Tempganhou.AsString))>1 then
          DM1.Query5.ParamByName('LC2_GANHOU').AsString:='X'
       else
          DM1.Query5.ParamByName('LC2_GANHOU').AsString:='';

      try
         DM1.Query5.ExecSQL;
         fdm1StartCommit;
      except
         Memo1.Lines.Add(
         insere2(DM1.Query5.ParamByName('LC2_LOTEPREGAO').AsString,' ',06)
         +' '
         +insere(DM1.Query5.ParamByName('LC2_ITEM').AsString,'0',05)
         +' '
         +insere(DM1.Query5.ParamByName('LC2_CODPRO').AsString,' ',10)
         +' '
         +insere(Formatfloat(mcasqtd, DM1.Query5.ParamByName('LC2_QTD').AsFloat),' ',15)
         +' '
         +insere2(DM1.Query5.ParamByName('LC2_UND').AsString,' ',03)
         +' '
         +insere2(DM1.Query5.ParamByName('LC2_NOM01').AsString,' ',60)
         +' '
         +insere2(DM1.Query5.ParamByName('LC2_MARCA').AsString,' ',30)
         +' '
         +insere(Formatfloat(mcasaspu, DM1.Query5.ParamByName('LC2_PCOAV').AsFloat),' ',15)
         +' '
         +insere(Formatfloat(mcasas, DM1.Query5.ParamByName('LC2_QTD').AsFloat
                                    *DM1.Query5.ParamByName('LC2_PCOAV').AsFloat),' ',15)
         );

         end;
      Qr_Temp.Next;
      end;
   end;
fSalvarImpExcel(Fnomearq_Pasta(0,nomarq.Text));
Qr_Temp.Active := False;
frm_lic2.fLerlic02(0);

if Memo1.Lines.Count>1 then
   PageControl1.ActivePage:=tsIrreg
else
   btnSair.Click;
end;


function tFrm_ImpExcel.fDesifraColunas(ptipo: Integer): boolean;
var
mcol_item,mLinha_item, mqtd_col_preenc,linha,coluna,mqtd_linha,mqtd_col: Integer;

mColId_Item,mColId_Nome,mColId_Nome_Complementar,mColId_Qtd,mColId_Und,mColId_Marca: Integer;
x,mColId_PcoUnit,mColId_PcoTot,mColId_Ganhou,mcolId_pcocpr: Integer;
mColStr01,mColStr02,mColStr03: Integer;
lista : TStringList;
begin
if mPegouDoPadrao then
   begin
   result:=true;
   exit;
   end;


mqtd_linha:=StringGrid1.RowCount-1;
mqtd_col  :=StringGrid1.ColCount-1;
mcol_item :=0;
mqtd_col_preenc:=0;
mLinha_item:=-1;
mColStr01:=-1;
mColStr02:=-1;
mColStr03:=-1;
for linha:=0 to mqtd_linha do
  begin
  for coluna:=0 to mqtd_col do
     begin
     if StringGrid1.Cells[coluna+mDifCol,linha]<>'' then
        begin
        if coluna>mqtd_col_preenc then
           mqtd_col_preenc:=coluna
        end;
     end;
  if mqtd_col_preenc>mcol_item then
     begin
     mcol_item:=mqtd_col_preenc;
     mLinha_item:=Linha;
     end;
  end;
if mlinha_item=0 then
   mlinha_item:=1;

mColId_Item   :=-1;
mColId_Nome   :=-1;
mColId_Nome_Complementar :=-1;
mcolId_pcocpr :=-1;

mColId_Qtd    :=-1;
mColId_Und    :=-1;
mColId_Marca  :=-1;
mColId_PcoUnit:=-1;
mColId_PcoTot :=-1;
mColId_Ganhou :=-1;
if mLinha_item>0 then
   begin
   mLinha_item:=mLinha_item+1;
   for x:=0 to mqtd_col do // procura a coluna de itens
      begin
      try
         if (valint(StringGrid1.Cells[x+mDifCol,mLinha_item])>0) and
            (valint(StringGrid1.Cells[x+mDifCol,mLinha_item])+1= valint(StringGrid1.Cells[x,mLinha_item+1])) then
            begin
            mColId_Item:=x;
            break;
            end;
      except
         end;
      end;

   for x:=0 to mqtd_col do // procura a coluna de quantidade, preco unitario e valor total
      begin
      if mColId_Item=x then
         continue;
      if (mColId_Qtd<0) and (ENumero(StringGrid1.Cells[x+mDifCol,mLinha_item])) then
         begin
         mColId_Qtd:=x;
         Continue;
         end;
      if (mColId_PcoUnit<0) and (ENumero(StringGrid1.Cells[x+mDifCol,mLinha_item])) then
         begin
         mColId_PcoUnit:=x;
         Continue;
         end;
      if (mColId_PcoTot<0) and ((ENumero(StringGrid1.Cells[x+mDifCol,mLinha_item]))) then
         begin
         mColId_PcoTot:=x;
         Continue;
         end;
      if (mColId_Ganhou<0) and ((ENumero(StringGrid1.Cells[x+mDifCol,mLinha_item]))) then
         begin
         mColId_Ganhou:=x;
         Continue;
         end;

      if not ENumero(StringGrid1.Cells[x+mDifCol,mLinha_item]) then
         begin
         if mColStr01<0 then
            mColStr01:=x
         else if mColStr02<0 then
            mColStr02:=x
         else if mColStr03<0 then
            mColStr03:=x;
         end;

//      if (mcolid_item>=0) and (mColId_PcoUnit>=0) and (mColId_PcoTot>=0) then
//         break;
      end;
   end;
if (mColStr01>=0) and (mColStr02>=0) and (mColStr03>=0) and (mlinha_item>0) then
   begin
   lista := TStringList.Create;
   lista.Add(FormatFloat('0000', length(StringGrid1.Cells[mcolStr01+mDifCol,mLinha_item])));
   lista.Add(FormatFloat('0000', length(StringGrid1.Cells[mcolStr02+mDifCol,mLinha_item])));
   lista.Add(FormatFloat('0000', length(StringGrid1.Cells[mcolStr03+mDifCol,mLinha_item])));
   lista.Sort; //neste ponto a lista fica ordenada
   if (length(StringGrid1.Cells[mcolStr01+mDifCol,mLinha_item]))=valint(lista[00]) then
      mcolid_und:=mColStr01
   else if (length(StringGrid1.Cells[mcolStr02+mDifCol,mLinha_item]))=valint(lista[00]) then
      mcolid_und:=mColStr02
   else
      mcolid_und:=mColStr03;

   if (length(StringGrid1.Cells[mcolStr01+mDifCol,mLinha_item]))=valint(lista[01]) then
      mColId_Marca:=mColStr01
   else if (length(StringGrid1.Cells[mcolStr02+mDifCol,mLinha_item]))=valint(lista[01]) then
      mColId_Marca:=mColStr02
   else
      mColId_Marca:=mColStr03;

   if (length(StringGrid1.Cells[mcolStr01+mDifCol,mLinha_item]))=valint(lista[02]) then
      mColId_Nome:=mColStr01
   else if (length(StringGrid1.Cells[mcolStr02+mDifCol,mLinha_item]))=valint(lista[02]) then
      mColId_Nome:=mColStr02
   else
      mColId_Nome:=mColStr03;
   lista.Free;
   end;
cb_item.ItemIndex         :=iif(mColId_Item<0,cb_item.Items.Count-1,mColId_Item);
cb_descricao.ItemIndex    :=iif(mColId_Nome<0,cb_descricao.Items.Count-1,mColId_Nome);
cb_descricao_Complementar.ItemIndex    :=iif(mColId_Nome_Complementar<0,cb_descricao_Complementar.Items.Count-1,mColId_Nome_Complementar);

cb_qtde.ItemIndex         :=iif(mColId_Qtd<0,cb_qtde.Items.Count-1,mColId_Qtd);
cb_unitario.ItemIndex     :=iif(mColId_PcoUnit<0,cb_unitario.Items.Count-1,mColId_PcoUnit);
cb_unidade.ItemIndex      :=iif(mColId_Und<0,cb_unidade.Items.Count-1,mColId_Und);
cb_marca.ItemIndex        :=iif(mColId_Marca<0,cb_marca.Items.Count-1,mColId_Marca);
cb_total.ItemIndex        :=iif(mColId_PcoTot<0,cb_total.Items.Count-1,mColId_PcoTot);
cb_item_ganhou.ItemIndex        :=iif(mColId_ganhou<0,cb_total.Items.Count-1,mColId_ganhou);
cb_pco_cpr.ItemIndex        :=iif(mColId_pcocpr<0,cb_pco_cpr.Items.Count-1,mColId_pcocpr);

//ShowMessage('Linha Inicial: '+IntToStr(mLinha_item));
result:=true;
end;
procedure Tfrm_ImpExcel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure Tfrm_ImpExcel.nomarqExit(Sender: TObject);
begin
if uppercase(copy(nomarq.Text,length(nomarq.Text)-2,3))='XLS' then
   begin
   if FileExists(nomarq.Text) then
      begin
      bbLerarqClick(self);
      bbGerarClick(self);
      end;
   end;
end;

procedure Tfrm_ImpExcel.cb_itemChange(Sender: TObject);
begin
  mAlterouColuna:=true;

end;

procedure Tfrm_ImpExcel.GB_ITENSIMPORTExit(Sender: TObject);
begin
if mAlterouColuna then
   begin
   bbGerarClick(self);
   mAlterouColuna:=false;
   end;
end;


function Tfrm_ImpExcel.fSalvarImpExcel(pNomeArq: String): boolean;
var
query_salvar:  tQuery;
mid: integer;
x_col: Integer;
   procedure pfechartudo;
   begin
   query_salvar.close;
   freeandnil(query_salvar);
   end;
   function fIncluirDetalhes(pIndex: Integer): boolean;
   begin
   query_salvar.close;
   x_col:=x_col+1;
   query_salvar.ParamByName('IEDID').AsInteger:=mid;
   query_salvar.ParamByName('IEDCELULA').AsInteger:=x_col;
   query_salvar.ParamByName('IEDCOLUNA').AsInteger:=pIndex;
   try
      query_salvar.ExecSQL;
      fdm1StartCommit;
      result:=true;
    except on e : exception do
      begin
      ex_erroSql_Novo(query_salvar,743,'SGE','CADIMPEXCEL_CAB');
      result:=false;
      end;
      end;

   end;
begin

query_salvar:=tQuery.create(nil);
query_salvar.databasename:=DM1.SG_ASSOC.databasename;
query_salvar.sql.add('Select IEID from CADIMPEXCEL_CAB where IENOMEREL='+QuotedStr(pNomeArq));
try
   query_salvar.open
except on e : exception do
   begin
   ex_erroSql_Novo(query_salvar,743,'SGE','CADIMPEXCEL_CAB');
   end;
   end;
if Query_salvar.isempty then
   begin
   mId:=fBuscareTestarID('CADIMPEXCEL_CAB');
   end
else
   mid:=query_salvar.fieldbyname('IEID').asinteger;


fIncluirDadosnoBanco_String('CADIMPEXCEL_CAB',' T1.IENOMEREL = SS.IENOMEREL ', 'INSERT (T1.IENOMEREL, T1.IEID) values (SS.IENOMEREL, SS.IEID)',
                    'UPDATE SET  T1.IEID=SS.IEID ', 'select '+quotedstr(pnomearq)+' as IENOMEREL , '+InttoStr(mid)+' as IEID  from dual ','impexsel787');




Query_salvar.close;
Query_salvar.sql.Clear;
Query_salvar.sql.Add('Delete from  CADIMPEXCEL_DET WHERE IEDID='+Inttostr(mid));
try
   query_salvar.execsql;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_salvar,770,'SGE','CADIMPEXCEL_DET');
   end;
   end;
query_salvar.close;
query_salvar.sql.clear;
query_salvar.sql.add('Insert into CADIMPEXCEL_DET ('
                    +'IEDID'
                    +',IEDCELULA'
                    +',IEDCOLUNA'
                    +') VALUES ('
                    +':IEDID'
                    +',:IEDCELULA'
                    +',:IEDCOLUNA'
                    +') ');
x_col:=0;
if not fIncluirDetalhes(cb_item.ItemIndex) then
   begin
   pfechartudo;
   exit;
   end;
if not fIncluirDetalhes(cb_descricao.ItemIndex) then
   begin
   pfechartudo;
   exit;
   end;
if not fIncluirDetalhes(cb_qtde.ItemIndex) then
   begin
   pfechartudo;
   exit;
   end;

if not fIncluirDetalhes(cb_unidade.ItemIndex) then
   begin
   pfechartudo;
   exit;
   end;

if not fIncluirDetalhes(cb_marca.ItemIndex) then
   begin
   pfechartudo;
   exit;
   end;

if not fIncluirDetalhes(cb_unitario.ItemIndex) then
   begin
   pfechartudo;
   exit;
   end;

if not fIncluirDetalhes(cb_total.ItemIndex) then
   begin
   pfechartudo;
   exit;
   end;

if not fIncluirDetalhes(cb_descricao_complementar.ItemIndex) then
   begin
   pfechartudo;
   exit;
   end;

if not fIncluirDetalhes(cb_item_ganhou.ItemIndex) then
   begin
   pfechartudo;
   exit;
   end;

if not fIncluirDetalhes(cb_pco_cpr.ItemIndex) then
   begin
   pfechartudo;
   exit;
   end;

pfechartudo;


end;



function Tfrm_ImpExcel.fBuscarImpExcel(pNomeArq: String): boolean;
var
query_salvar:  tQuery;
mid: integer;
x_col: Integer;
  procedure pfechartudo;
  begin
  query_salvar.close;
  freeandnil(query_salvar);
  end;
begin
if mPegouDoPadrao then
   begin
   result:=true;
   exit;
   end;


query_salvar:=tQuery.create(nil);
query_salvar.databasename:=DM1.SG_ASSOC.databasename;
query_salvar.sql.add('Select IEID from CADIMPEXCEL_CAB where IENOMEREL='+QuotedStr(pNomeArq));
try
   query_salvar.open
except on e : exception do
   begin
   ex_erroSql_Novo(query_salvar,743,'SGE','CADIMPEXCEL_CAB');
   pfechartudo;
   exit;
   end;
   end;
if query_salvar.IsEmpty then
   result:=false
else
   begin
   result:=true;
   mid:=query_salvar.FieldByName('IEID').asinteger;
   query_salvar.close;
   query_salvar.sql.clear;

   query_salvar.SQL.add('select * from CADIMPEXCEL_DET where IEDID='+Inttostr(mid)
                       +' order by IEDCELULA ');

   try
      query_salvar.open
   except on e : exception do
      begin
      ex_erroSql_Novo(query_salvar,743,'SGE','CADIMPEXCEL_CAB');
      pfechartudo;
      exit;
      end;
      end;
   While not query_salvar.Eof do
      begin
      if query_salvar.fieldbyname('IEDCELULA').AsInteger=1 then
         cb_item.ItemIndex:=query_salvar.fieldbyname('IEDCOLUNA').AsInteger
      else if query_salvar.fieldbyname('IEDCELULA').AsInteger=2 then
         cb_descricao.ItemIndex:=query_salvar.fieldbyname('IEDCOLUNA').AsInteger
      else if query_salvar.fieldbyname('IEDCELULA').AsInteger=3 then
         cb_qtde.ItemIndex:=query_salvar.fieldbyname('IEDCOLUNA').AsInteger
      else if query_salvar.fieldbyname('IEDCELULA').AsInteger=4 then
         cb_unidade.ItemIndex:=query_salvar.fieldbyname('IEDCOLUNA').AsInteger
      else if query_salvar.fieldbyname('IEDCELULA').AsInteger=5 then
         cb_marca.ItemIndex:=query_salvar.fieldbyname('IEDCOLUNA').AsInteger
      else if query_salvar.fieldbyname('IEDCELULA').AsInteger=6 then
         cb_unitario.ItemIndex:=query_salvar.fieldbyname('IEDCOLUNA').AsInteger
      else if query_salvar.fieldbyname('IEDCELULA').AsInteger=7 then
         cb_total.ItemIndex:=query_salvar.fieldbyname('IEDCOLUNA').AsInteger
      else if query_salvar.fieldbyname('IEDCELULA').AsInteger=8 then
         cb_descricao_complementar.ItemIndex:=query_salvar.fieldbyname('IEDCOLUNA').AsInteger
      else if query_salvar.fieldbyname('IEDCELULA').AsInteger=9 then
         cb_item_ganhou.ItemIndex:=query_salvar.fieldbyname('IEDCOLUNA').AsInteger
      else if query_salvar.fieldbyname('IEDCELULA').AsInteger=10 then
         cb_pco_cpr.ItemIndex:=query_salvar.fieldbyname('IEDCOLUNA').AsInteger;


      query_salvar.Next;
      end;
   end;
pfechartudo;
end;

procedure Tfrm_ImpExcel.sbnCancelarClick(Sender: TObject);
begin
fDeletaPadroes(0,mform,'');

end;

procedure Tfrm_ImpExcel.sbn_salvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(0,mform,'');
fGravaPadroes(0,cb_lote_pregao.Name ,'text',  mForm,cb_lote_pregao.Text);
fGravaPadroes(0,cb_item.Name ,'text',  mForm,cb_item.Text);
fGravaPadroes(0,cb_descricao.Name ,'text',  mForm,cb_descricao.Text);
fGravaPadroes(0,cb_qtde.Name ,'text',  mForm,cb_qtde.Text);
fGravaPadroes(0,cb_unidade.Name ,'text',  mForm,cb_unidade.Text);
fGravaPadroes(0,cb_marca.Name ,'text',  mForm,cb_marca.Text);
fGravaPadroes(0,cb_unitario.Name ,'text',  mForm,cb_unitario.Text);
fGravaPadroes(0,cb_total.Name ,'text',  mForm,cb_total.Text);
fGravaPadroes(0,cb_descricao_complementar.Name ,'text',  mForm,cb_descricao_complementar.Text);
fGravaPadroes(0,edt_linha_apartir.Name ,'text',  mForm,edt_linha_apartir.Text);
fGravaPadroes(0,cb_item_ganhou.Name ,'text',  mForm,cb_item_ganhou.Text);
fGravaPadroes(0,cb_pco_cpr.Name ,'text',  mForm,cb_pco_cpr.Text);
fGravaPadroes(0,CB_IMPORTAR_QUANDO.Name ,'text',  mForm,CB_IMPORTAR_QUANDO.Text);




end;

procedure Tfrm_ImpExcel.fPegarPadrao;
begin

if flfilpad(0,mForm,'') then
   begin
   mPegouDoPadrao:=true;

   if DM4.Tb_FilPad2.Locate('FPCOMP',cb_lote_pregao.Name,[]) then
      begin
      cb_lote_pregao.Text := DM4.Tb_FilPad2FPVALOR.AsString;
      cb_lote_pregaoExit(self);

      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP',cb_pco_cpr.Name,[]) then
      begin
      cb_pco_cpr.Text := DM4.Tb_FilPad2FPVALOR.AsString;
      cb_pco_cprExit(self);

      end;

   if DM4.Tb_FilPad2.Locate('FPCOMP',cb_item.Name,[]) then
      begin
      cb_item.Text := DM4.Tb_FilPad2FPVALOR.AsString;
      cb_itemExit(self);
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP',cb_descricao.Name,[]) then
      begin
      cb_descricao.Text := DM4.Tb_FilPad2FPVALOR.AsString;
      cb_descricaoExit(self);
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP',cb_qtde.Name,[]) then
      begin
      cb_qtde.Text := DM4.Tb_FilPad2FPVALOR.AsString;
      cb_qtdeExit(self);
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP',cb_unidade.Name,[]) then
      begin
      cb_unidade.Text := DM4.Tb_FilPad2FPVALOR.AsString;
      cb_unidadeExit(self);
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP',cb_marca.Name,[]) then
      begin
      cb_marca.Text := DM4.Tb_FilPad2FPVALOR.AsString;
      cb_marcaExit(self);
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP',cb_unitario.Name,[]) then
      begin
      cb_unitario.Text := DM4.Tb_FilPad2FPVALOR.AsString;
      cb_unitarioExit(self);
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP',cb_total.Name,[]) then
      begin
      cb_total.Text := DM4.Tb_FilPad2FPVALOR.AsString;
      cb_totalExit(self);
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP',cb_descricao_complementar.Name,[]) then
      begin
      cb_descricao_complementar.Text := DM4.Tb_FilPad2FPVALOR.AsString;
      cb_descricao_complementarExit(self);
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP',edt_linha_apartir.Name,[]) then
      begin
      edt_linha_apartir.Text := DM4.Tb_FilPad2FPVALOR.AsString;
      end;

   if DM4.Tb_FilPad2.Locate('FPCOMP',cb_item_ganhou.Name,[]) then
      begin
      cb_item_ganhou.Text := DM4.Tb_FilPad2FPVALOR.AsString;
      cb_item_ganhouExit(self);
      end;

   if DM4.Tb_FilPad2.Locate('FPCOMP',CB_IMPORTAR_QUANDO.Name,[]) then
      begin
      CB_IMPORTAR_QUANDO.Text := DM4.Tb_FilPad2FPVALOR.AsString;
      CB_IMPORTAR_QUANDOExit(self);
      end;



   end;


end;

procedure Tfrm_ImpExcel.FormCreate(Sender: TObject);
begin

mPegouDoPadrao:=false;
fPegarPadrao;

end;

procedure Tfrm_ImpExcel.cb_lote_pregaoExit(Sender: TObject);
begin
cb_lote_pregao.ItemIndex := cb_lote_pregao.Items.IndexOf(cb_lote_pregao.Text);
end;

procedure Tfrm_ImpExcel.cb_itemExit(Sender: TObject);
begin
cb_item.ItemIndex := cb_item.Items.IndexOf(cb_item.Text);
end;

procedure Tfrm_ImpExcel.cb_descricaoExit(Sender: TObject);
begin
cb_descricao.ItemIndex := cb_descricao.Items.IndexOf(cb_descricao.Text);
end;

procedure Tfrm_ImpExcel.cb_qtdeExit(Sender: TObject);
begin
cb_qtde.ItemIndex := cb_qtde.Items.IndexOf(cb_qtde.Text);
end;

procedure Tfrm_ImpExcel.cb_unidadeExit(Sender: TObject);
begin
cb_unidade.ItemIndex := cb_unidade.Items.IndexOf(cb_unidade.Text);
end;

procedure Tfrm_ImpExcel.cb_marcaExit(Sender: TObject);
begin
cb_marca.ItemIndex := cb_marca.Items.IndexOf(cb_marca.Text);
end;

procedure Tfrm_ImpExcel.cb_unitarioExit(Sender: TObject);
begin
cb_unitario.ItemIndex := cb_unitario.Items.IndexOf(cb_unitario.Text);
end;

procedure Tfrm_ImpExcel.cb_totalExit(Sender: TObject);
begin
cb_total.ItemIndex := cb_total.Items.IndexOf(cb_total.Text);
end;

procedure Tfrm_ImpExcel.cb_descricao_complementarExit(Sender: TObject);
begin
cb_descricao_complementar.ItemIndex := cb_descricao_complementar.Items.IndexOf(cb_descricao_complementar.Text);
end;

procedure Tfrm_ImpExcel.cb_item_ganhouExit(Sender: TObject);
begin
cb_item_ganhou.ItemIndex := cb_item_ganhou.Items.IndexOf(cb_item_ganhou.Text);
end;

procedure Tfrm_ImpExcel.CB_IMPORTAR_QUANDOExit(Sender: TObject);
begin
CB_IMPORTAR_QUANDO.ItemIndex := CB_IMPORTAR_QUANDO.Items.IndexOf(CB_IMPORTAR_QUANDO.Text);

end;

procedure Tfrm_ImpExcel.CB_IMPORTAR_QUANDOChange(Sender: TObject);
begin
  mAlterouColuna:=true;

end;

procedure Tfrm_ImpExcel.cb_pco_cprExit(Sender: TObject);
begin
cb_pco_cpr.ItemIndex := cb_pco_cpr.Items.IndexOf(cb_pco_cpr.Text);

end;

end.

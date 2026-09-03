unit s_combo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, DBTables, DB, Grids,
  DBGrids, Mask, DBCtrls, ToolEdit, RXDBCtrl;

type
  TFrm_combo = class(TForm)
    PageControl1: TPageControl;
    tsCombo: TTabSheet;
    tsRelatorio: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    cb_combos: TComboBox;
    BBnAlterar: TBitBtn;
    BBnFechar: TBitBtn;
    BBnEncerrar: TBitBtn;
    gb_cabecalho: TGroupBox;
    src_combo01: TDataSource;
    DBGrid_COMBO02: TDBGrid;
    qr_combo01: TQuery;
    U_combo01: TUpdateSQL;
    qr_combo01CB01_ID: TFloatField;
    qr_combo01CB01_CODEMP: TFloatField;
    qr_combo01CB01_NOME: TStringField;
    Label2: TLabel;
    Label3: TLabel;
    DBE_CB01_ID: TDBEdit;
    Label4: TLabel;
    DBE_CB01_NOME: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    src_combo02: TDataSource;
    qr_combo02: TQuery;
    u_combo02: TUpdateSQL;
    qr_combo02CB02_ID: TFloatField;
    qr_combo02CB02_ID_CB01: TFloatField;
    qr_combo02CB02_CODPRO: TFloatField;
    qr_combo02CB02_QTD: TFloatField;
    qr_combo02CB02_PCO_UNIT: TFloatField;
    qr_combo02PDUND: TStringField;
    qr_combo02PDNOME: TStringField;
    qr_combo02PDMARCA: TStringField;
    DBDE_CB01_DATIN: TDBDateEdit;
    DBD_CB01_DATFIN: TDBDateEdit;
    qr_combo01CB01_DATINI: TDateTimeField;
    qr_combo01CB01_DATFIN: TDateTimeField;
    qr_combo01CB01_CODUSR_INC: TFloatField;
    qr_combo01CB01_CODUSR_UEVE: TFloatField;
    qr_combo01CB01_DATHOR_INC: TDateTimeField;
    qr_combo01CB01_DATHOR_UEVE: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBnFecharClick(Sender: TObject);
    procedure gb_cabecalhoEnter(Sender: TObject);
    procedure gb_cabecalhoExit(Sender: TObject);
    procedure qr_combo01BeforePost(DataSet: TDataSet);
    procedure DBGrid_COMBO02DrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BBnAlterarClick(Sender: TObject);
    procedure DBGrid_COMBO02Exit(Sender: TObject);
    procedure qr_combo02BeforePost(DataSet: TDataSet);
    procedure c(DataSet: TDataSet);
    procedure DBGrid_COMBO02ColExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cb_combosExit(Sender: TObject);
    procedure BBnEncerrarClick(Sender: TObject);
    procedure cb_combosEnter(Sender: TObject);
    procedure DBGrid_COMBO02KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }

    procedure fCarregarCombo;
    procedure fLerCombo(pNomeCombo: String);



    procedure fLerCombo02(pId: Integer);



    procedure fAtualizarBotoes;


  public
    { Public declarations }
  end;

var
  Frm_combo: TFrm_combo;

implementation

uses S_DM1, lerarq, Func, func_excecoes, s_lerarq_geral;

{$R *.dfm}

procedure TFrm_combo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_combo.BBnFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrm_combo.gb_cabecalhoEnter(Sender: TObject);
begin
if not (qr_combo01.State in [DsInsert,DsEdit]) then
   begin
   qr_combo01.Edit;
   end;
end;

procedure TFrm_combo.gb_cabecalhoExit(Sender: TObject);
begin
if (qr_combo01.State in [DsInsert,DsEdit]) then
   begin
   if trim(qr_combo01CB01_NOME.AsString)<>'' then
      qr_combo01.post
    else
      qr_combo01.Cancel;

   end;

end;

procedure TFrm_combo.qr_combo01BeforePost(DataSet: TDataSet);
begin
if trim(qr_combo01CB01_NOME.AsString)='' then
   abort
else
   begin
   if qr_combo01CB01_CODUSR_INC.AsInteger<=0 then
      qr_combo01CB01_CODUSR_INC.Value:=codusr;
   if qr_combo01CB01_DATHOR_INC.AsDateTime <= pDataNula  then
      qr_combo01CB01_DATHOR_INC.Value:=Now;
   qr_combo01CB01_DATHOR_UEVE.Value:=Now;
   qr_combo01CB01_CODUSR_UEVE.Value:=codusr;


   end;

end;

procedure TFrm_combo.DBGrid_COMBO02DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if (DataCol>1) and (DataCol<5) then
   begin
   DBGrid_COMBO02.Canvas.Brush.Color:=clOlive;
   DBGrid_COMBO02.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;

end;

procedure TFrm_combo.BBnAlterarClick(Sender: TObject);
begin
gb_cabecalho.Enabled:=true;
BBnEncerrar.Enabled:=True;
BBnAlterar.Enabled:=false;
DBGrid_COMBO02.ReadOnly:=false;


end;

procedure TFrm_combo.DBGrid_COMBO02Exit(Sender: TObject);
begin
if qr_combo02.State in [dsEdit,dsInsert ] then
   qr_combo02.post;
end;

procedure TFrm_combo.qr_combo02BeforePost(DataSet: TDataSet);
begin
if trim(qr_combo02PDNOME.AsString)='' then
   abort
else
   begin
   if qr_combo02CB02_ID.AsInteger<=0 then
      qr_combo02CB02_ID.AsInteger := fBuscarProximoId('CADCOMBO01_SEQ');
   if qr_combo02CB02_ID_CB01.AsInteger<=0 then
      qr_combo02CB02_ID_CB01.AsInteger := qr_combo01CB01_ID.AsInteger;

   end;

end;

procedure TFrm_combo.c(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
except
   MessageDlg('Ja Existe um Registro igual a Este Click em Cancelar!',mtInformation,[mbOk],0);
   end;

end;

procedure TFrm_combo.DBGrid_COMBO02ColExit(Sender: TObject);
begin
if qr_combo02.State in [dsEdit,dsInsert] then
   begin
   if DBGrid_COMBO02.SelectedField=qr_combo02CB02_CODPRO then
      begin
      if qr_combo02CB02_CODPRO.AsFloat<=0 then
         abort
      else
         begin
         if not flcadpro(1,0,0,fdeixanum(qr_combo02CB02_CODPRO.AsString)) then
            begin
            FMensagem('Produto não Cadastrado!',0,['0'],0);
            DBGrid_COMBO02.SelectedField:=qr_combo02CB02_CODPRO;
            DBGrid_COMBO02.SetFocus;
            abort;
            exit;
            end;
         qr_combo02PDUND.AsString := DM1.Tb_ProPDUND.AsString;
         qr_combo02PDNOME.AsString := DM1.Tb_ProPDNOME.AsString;
         qr_combo02PDMARCA.AsString := DM1.Tb_ProPDMARCA.AsString;
         if qr_combo02CB02_PCO_UNIT.AsFloat<=0 then
            qr_combo02CB02_PCO_UNIT.AsFloat := DM1.Tb_ProPDPRECO1.AsFloat;
         end;
      end;
   end;

end;

procedure TFrm_combo.FormCreate(Sender: TObject);
begin
tsRelatorio.TabVisible:=false;

qr_combo02CB02_PCO_UNIT.DisplayFormat := mcasaspu;
fCarregarCombo;

end;


procedure TFrm_combo.fCarregarCombo;
var
query_combo: tQuery;
begin

query_combo :=tQuery.create(nil);
query_combo.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_combo.sql.add('select CB01_NOME from CADCOMBO01 WHERE cb01_codemp='+inttostr(codemp)+'  order by CB01_NOME ');
try
   Query_combo.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(Query_combo,226,'SGE','CADCOMBO01');
   end;
   end;
cb_combos.Items.clear;
cb_combos.clear;
While not query_combo.eof do
   begin
   cb_combos.Items.Add(query_combo.fieldbyname('CB01_NOME').AsString);
   query_combo.Next;
   end;
query_combo.close;
freeandnil(query_combo);

end;

procedure TFrm_combo.cb_combosExit(Sender: TObject);
begin
if trim(cb_combos.Text)<>'' then
   begin
   fLerCombo(cb_combos.text);
   end;
end;


procedure TFrm_combo.fLerCombo(pNomeCombo: String);
begin
qr_combo01.close;
qr_combo01.SQL.clear;
qr_combo01.SQL.add('select * from CADCOMBO01 where CB01_CODEMP='+IntToStr(codemp)
                  +' and CB01_NOME='+QuotedStr(pNomeCombo));
try
   qr_combo01.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(qr_combo01,264,'SGE','CADCOMBO01');
   end;
   end;
if qr_combo01.IsEmpty then
   begin
   if Application.MessageBox(pchar('Combo '+pNomeCombo+' não encontrado. Posso Criar?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)=mrYes then
      begin
      qr_combo01.Append;
      qr_combo01CB01_ID.AsInteger := fBuscarProximoId('CADCOMBO01_SEQ');
      qr_combo01CB01_NOME.Value  :=pNomeCombo;
      qr_combo01CB01_CODEMP.Value:=codemp;
      BBnAlterar.enabled := true;
      fLerCombo02(qr_combo01CB01_ID.AsInteger);
      end
   else
      cb_combos.SetFocus;
   end
else
   begin
   fLerCombo02(qr_combo01CB01_ID.AsInteger);
   BBnAlterar.enabled := true;
   end;
end;

procedure TFrm_combo.fLerCombo02(pId: Integer);
begin
Qr_combo02.close;
qr_combo02.SQL.clear;
qr_combo02.sql.add('SELECT CB02_ID,CB02_ID_CB01,CB02_CODPRO,PDUND,CB02_QTD,'
                  +' PDNOME,PDMARCA,CB02_PCO_UNIT FROM CADCOMBO02,CADPRO '
                  +' WHERE PDCODPRO=CB02_CODPRO ');

if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   qr_combo02.SQL.Add('and PDCODEMP=0'+IntTostr(codemp));

qr_combo02.sql.add(' and CB02_ID_CB01='+IntToStr(pid));
try
   qr_combo02.open;
except on e : exception do
   begin
   ex_erroSql_Novo(qr_combo02,321,'SGE','CADCOMBO02');
   end;
   end;

end;



procedure TFrm_combo.BBnEncerrarClick(Sender: TObject);
begin
if qr_combo02.State in [dsEdit,dsinsert] then
   qr_combo02.Post;
BBnEncerrar.Enabled:=false;
if trim(cb_combos.Text)<>'' then
   BBnAlterar.Enabled:=true;

gb_cabecalho.Enabled:=false;
DBGrid_COMBO02.ReadOnly:=true;

end;


procedure TFrm_combo.fAtualizarBotoes;
begin

BBnEncerrar.Enabled:=false;
end;
procedure TFrm_combo.cb_combosEnter(Sender: TObject);
begin
if BBnEncerrar.enabled then
   bbnEncerrarClick(Self);
end;

procedure TFrm_combo.DBGrid_COMBO02KeyPress(Sender: TObject;
  var Key: Char);
begin
if BBnEncerrar.Enabled then
   begin
   if DBGrid_COMBO02.SelectedField=qr_combo02CB02_CODPRO then
      begin
      if not (qr_combo02.State in [dsEdit, DsInsert]) then
         begin
         if qr_combo02CB02_CODPRO.IsNull then
            qr_combo02.Insert
         else
            qr_combo02.Edit;
         end;
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
          begin
          qr_combo02CB02_CODPRO.Value:=valfloat(fChamaPro(0,'Frm_PcoLot',key));
          key:=#0;
          end
      end;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

end.

unit S_APcusAcabado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, DB,
  DBTables, DBCtrls,s_lerarq_geral;

type
  TFrm_APcusAcabado = class(TForm)
    gb_produtos: TGroupBox;
    Label1: TLabel;
    codpro: TEdit;
    codgru: TEdit;
    Label2: TLabel;
    cb_estoque: TCheckBox;
    cb_formulas: TCheckBox;
    bb_capturar: TBitBtn;
    bb_atualizar: TBitBtn;
    bb_close: TBitBtn;
    pnl_0: TPanel;
    db_01: TDBGrid;
    progress_01: TProgressBar;
    qr_01: TQuery;
    ds_01: TDataSource;
    cb_omitir_pro: TCheckBox;
    cb_omitir_gru: TCheckBox;
    List_prod: TListBox;
    List_gru: TListBox;
    qr_01PDCODPRO: TFloatField;
    qr_01PDNOME: TStringField;
    qr_01PDUND: TStringField;
    qr_01PDNOMGRU: TStringField;
    qr_01PDSALDO: TFloatField;
    qr_01PDPRECO1: TFloatField;
    qr_01PDPRECO2: TFloatField;
    qr_01PDPRECO3: TFloatField;
    qr_01PDPRECOC: TFloatField;
    qr_01PDQTDGRML: TFloatField;
    qr_01CUSTO_FORMULA: TFloatField;
    qr_01PDPCOFAB: TFloatField;
    qr_01CUSTO_DESP: TFloatField;
    qr_01REGISTROS: TFloatField;
    origem: TLabel;
    qr_01PRECO_VENDA1: TFloatField;
    qr_01PRECO_VENDA2: TFloatField;
    qr_01PRECO_VENDA3: TFloatField;
    CB_PRECO_VENDA: TCheckBox;
    procedure bb_closeClick(Sender: TObject);
    procedure bb_capturarClick(Sender: TObject);
    procedure codgruExit(Sender: TObject);
    procedure List_prodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure List_gruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure codproKeyPress(Sender: TObject; var Key: Char);
    procedure codgruKeyPress(Sender: TObject; var Key: Char);
    procedure qr_01CalcFields(DataSet: TDataSet);
    procedure bb_atualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure codproExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
     mBloquearMensagem: boolean;

  end;

var
  Frm_APcusAcabado: TFrm_APcusAcabado;

implementation

uses Func, S_DM1, S_GPro, flerarq, lerarq, S_Pcus, Math;

{$R *.dfm}

procedure TFrm_APcusAcabado.bb_closeClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_APcusAcabado.bb_capturarClick(Sender: TObject);
begin
qr_01.close;
qr_01.SQL.Clear;
qr_01.SQL.add(' select                                                 '
             +' PDCODPRO , PDNOME, PDUND, PDNOMGRU, PDSALDO, PDPCOFAB, '
             +' PDPRECO1, PDPRECO2, PDPRECO3, PDPRECOC, PDQTDGRML,     '
             +' (select count(*) from cadcomp where cpcodpro=pdcodpro) '
             +' as registros ');

qr_01.SQL.add(' from cadpro where pdstatus<9 ');
qr_01.SQL.add('  '+codemp2('PDCODEMP',codemp));
//qr_01.SQL.add(' and pdnivel=4 '+codemp2('PDCODEMP',codemp));

if DM1.Tb_PargerPINDUSTRIA.AsString='4' then
  begin
  qr_01.SQL.add(' and PDQTDGRML>0 and (select count(*) from cadcomp where cpcodpro=pdcodpro) >0 ');
  end;

if cb_estoque.Checked=True then
  begin
  qr_01.SQL.add(' and pdsaldo>0 ');
  end;
if list_prod.Items.Count>0 then
  begin
  if cb_omitir_pro.Checked=False then
    Qr_01.SQL.Add(funcao_OR_ListBox(List_prod,'PDCODPRO',0))
  else
    Qr_01.SQL.Add(funcao_OR_ListBox(List_prod,'PDCODPRO',1));
  end;
if list_gru.Items.Count>0 then
  begin
  if cb_omitir_gru.Checked=False then
    Qr_01.SQL.Add(funcao_OR_ListBox(List_gru,'PDCODGRU',0))
  else
    Qr_01.SQL.Add(funcao_OR_ListBox(List_gru,'PDCODGRU',1));
  end;
Qr_01.SQL.Add('order by ');
Qr_01.SQL.Add('    PDNOME');
//  Qr_01.SQL.SaveToFile(mpastatemp +'sql01.txt');

try
  Qr_01.Open;
except
  error:=SALVA_NOME('c:\sge\errosql\','ex');
  Qr_01.SQL.SaveToFile(error);
  fmensagem(error,0,['0'],0);
  end;
end;

procedure TFrm_APcusAcabado.codgruExit(Sender: TObject);
begin
codgru.Text:=fdeixanum2(codgru.Text);
if codgru.Text<>'' then
  begin
  List_gru:=Coloca_ListBox('cadgru','grcodgru',codgru.text,'grnome',List_gru,DM1.Query3);
  if origem.Caption='Frm_APcusAcabado' then
    codgru.setfocus;
  codgru.Clear;
  end;
end;

procedure TFrm_APcusAcabado.List_prodKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
  begin
  if List_prod.ItemIndex>=0 then
    begin
    List_prod.Items.Delete(List_prod.ItemIndex);
    end;
  end;
end;

procedure TFrm_APcusAcabado.List_gruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  begin
  if List_gru.ItemIndex>=0 then
    begin
    List_gru.Items.Delete(List_gru.ItemIndex);
    end;
  end;
end;

procedure TFrm_APcusAcabado.codproKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  codpro.Text:=fChamaPro(2,'APcusAcabado',key);
  codproExit(self);
  if origem.Caption='Frm_APcusAcabado' then
    codpro.setfocus;
  codpro.Clear;
  key:=#0;
  end;
end;

procedure TFrm_APcusAcabado.codgruKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  codgru.Text:=fChamaGPro(0,'APcusAcabado',key);
  codgruExit(self);
  if origem.Caption='Frm_APcusAcabado' then
    codgru.setfocus;
  codgru.Clear;
  key:=#0;
  end;
end;

procedure TFrm_APcusAcabado.qr_01CalcFields(DataSet: TDataSet);
var
Form_PCus2: TFrm_Pcus;
begin
if (testeform=nil)  then
  Application.CreateForm(TFrm_Pcus,Form_PCus2);

if cb_formulas.Checked=True then
  begin
  qr_01CUSTO_FORMULA.AsFloat:=form_pcus2.fPcusCaptura(qr_01PDCODPRO.AsFloat,qr_01PDQTDGRML.AsFloat);
  end
else
  begin
  qr_01CUSTO_FORMULA.AsFloat:=qr_01PDPCOFAB.AsFloat;
  end;

qr_01PDPRECO1.DisplayFormat     :=mcasaspu;
qr_01PDPRECO2.DisplayFormat     :=mcasaspu;
qr_01PDPRECO3.DisplayFormat     :=mcasaspu;
qr_01PDPRECOC.DisplayFormat     :=mcasccus;
qr_01CUSTO_FORMULA.DisplayFormat:=mcasccus;
qr_01CUSTO_DESP.DisplayFormat   :=mcasccus;

testeform := TFrm_APcusAcabado(FindGlobalComponent('Form_Pcus2'));
Form_PCus2.CODPRO.Text:=qr_01PDCODPRO.AsString;
Form_PCus2.CODPROExit(SELF);
Form_PCus2.NPCOCOM.Text:=FloatToStr(ValFloat(qr_01CUSTO_FORMULA.AsString));
Form_PCus2.NPCOCOMExit(self);
qr_01CUSTO_DESP.AsFloat :=ValFloat(Form_Pcus2.st_custoCalc.Caption);
qr_01PRECO_VENDA1.AsFloat:=ValFloat(Form_Pcus2.edt_npven1.Text);
qr_01PRECO_VENDA2.AsFloat:=ValFloat(Form_Pcus2.edt_npven2.Text);
qr_01PRECO_VENDA3.AsFloat:=ValFloat(Form_Pcus2.edt_npven3.Text);

Form_PCus2.Free;
Form_PCus2:=nil;

end;

procedure TFrm_APcusAcabado.bb_atualizarClick(Sender: TObject);
begin
If qr_01.Active=False then
  begin
  bb_capturarClick(self);
  end;
progress_01.Position:=0;
qr_01.First;
progress_01.Max:=qr_01.RecordCount;
while not qr_01.Eof  do
  begin
//  if (qr_01CUSTO_DESP.AsFloat<>qr_01PDPRECOC.AsFloat) then
    begin
    dm1.Query6.Close;
    dm1.Query6.SQL.Clear;
    dm1.Query6.SQL.Add(' UPDATE CADPRO SET PDPRECOC='+chr(39)+qr_01CUSTO_DESP.AsString+chr(39));
    dm1.Query6.SQL.Add(' , PDPCOFAB='+chr(39)+qr_01CUSTO_FORMULA.AsString+chr(39));
    if CB_PRECO_VENDA.Checked then
      begin
      dm1.Query6.SQL.Add(' , PDPRECO1='+chr(39)+qr_01PRECO_VENDA1.AsString+chr(39));
      dm1.Query6.SQL.Add(' , PDPRECOA1='+chr(39)+qr_01PDPRECO1.AsString+chr(39));
      dm1.Query6.SQL.Add(' , PDDTUATP1='+chr(39)+DateToStr(Now)+chr(39));
      dm1.Query6.SQL.Add(' , PDUSRALT1='+chr(39)+IntToStr(codusr)+chr(39));
      dm1.Query6.SQL.Add(' , PDPRECO2='+chr(39)+qr_01PRECO_VENDA2.AsString+chr(39));
      dm1.Query6.SQL.Add(' , PDPRECOA3='+chr(39)+qr_01PDPRECO2.AsString+chr(39));
      dm1.Query6.SQL.Add(' , PDDTUATP2='+chr(39)+DateToStr(Now)+chr(39));
      dm1.Query6.SQL.Add(' , PDUSRALT2='+chr(39)+IntToStr(codusr)+chr(39));
      dm1.Query6.SQL.Add(' , PDPRECO3='+chr(39)+qr_01PRECO_VENDA3.AsString+chr(39));
      dm1.Query6.SQL.Add(' , PDPRECOA3='+chr(39)+qr_01PDPRECO3.AsString+chr(39));
      dm1.Query6.SQL.Add(' , PDDTUATP3='+chr(39)+DateToStr(Now)+chr(39));
      dm1.Query6.SQL.Add(' , PDUSRALT3='+chr(39)+IntToStr(codusr)+chr(39));
      end;
    dm1.Query6.SQL.Add(' WHERE PDCODPRO='+qr_01PDCODPRO.AsString);
    dm1.Query6.ExecSQL;
    end;
  qr_01.Next;
  progress_01.Position:=progress_01.Position+1;
  end;
if mBloquearMensagem=false then
   begin
   if origem.Caption='Frm_APcusAcabado' then
     begin
     fmensagem('Concluido!!!',0,['0'],0);
     progress_01.Position:=0;
     bb_capturarClick(self);
     end;
  end;
{if codusr<>1111 then
  begin
  fmensagem('Em Desenvolvimento!!!',0,['0'],0);
  end
else
  begin
  if Frm_Pcus=nil then
    Application.CreateForm(TFrm_Pcus,Frm_Pcus);
  Frm_Pcus.CODPRO.Text:=qr_01PDCODPRO.AsString;
  fcalccus(0);
  end;}
end;

procedure TFrm_APcusAcabado.FormCreate(Sender: TObject);
begin
codpro.Clear;
List_prod.Items.Clear;
cb_omitir_pro.Checked:=False;
codgru.Clear;
List_gru.Items.Clear;
cb_omitir_gru.Checked:=False;
cb_estoque.Checked:=False;
cb_formulas.Checked:=False;
mBloquearMensagem:=false;

end;

procedure TFrm_APcusAcabado.FormActivate(Sender: TObject);
begin
origem.Caption:='Frm_APcusAcabado';
end;

procedure TFrm_APcusAcabado.codproExit(Sender: TObject);
begin
codpro.Text:=fdeixanum2(codpro.Text);
if codpro.Text<>'' then
  begin
  List_prod:=Coloca_ListBox('cadpro','pdcodpro',codpro.text,'pdnome',List_prod,DM1.Query3);
  if origem.Caption='Frm_APcusAcabado' then
    codpro.setfocus;
  codpro.Clear;
  end;
end;

procedure TFrm_APcusAcabado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

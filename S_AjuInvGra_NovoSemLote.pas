unit S_AjuInvGra_NovoSemLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, DBTables, Grids, DBGrids, Mask,
  ToolEdit;

type
  TFrm_AjuInvGra_NovoSemLote = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    lbl_existentes: TLabel;
    lbl_selecionados: TLabel;
    Label3: TLabel;
    edt_inventario_novo: TEdit;
    bbGerarNovo: TBitBtn;
    bbSair: TBitBtn;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    cb_gerar: TCheckBox;
    Qr_InvGra01: TQuery;
    Qr_InvGra01IGNOMEINV: TStringField;
    Qr_InvGra01QUANT: TFloatField;
    Qr_InvGra01VALOR: TFloatField;
    Qr_InvGra01ITEM: TFloatField;
    Qr_InvGra01IGDATAEMI: TDateTimeField;
    Qr_InvGra01IGFILIAL: TFloatField;
    Qr_InvGra01nomefilial: TStringField;
    Qr_InvGra01IGCODTIP: TFloatField;
    Src_InvGra01: TDataSource;
    Qr_InvGra01GERAR: TStringField;
    U_InvGra01: TUpdateSQL;
    Label4: TLabel;
    edt_datainv: TDateEdit;
    procedure bbSairClick(Sender: TObject);
    procedure Qr_InvGra01BeforeEdit(DataSet: TDataSet);
    procedure Qr_InvGra01AfterPost(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure cb_gerarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbGerarNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    mQtdTot: Integer;
    mQtdSel: Integer;
    mant_gerar: string;


    procedure Lerinvgra(pSel: String);


    procedure ExibirTotais;



  public
    { Public declarations }
  end;

var
  Frm_AjuInvGra_NovoSemLote: TFrm_AjuInvGra_NovoSemLote;

implementation

uses Func, S_DM1, lerarq, func_excecoes;

{$R *.dfm}

procedure TFrm_AjuInvGra_NovoSemLote.bbSairClick(Sender: TObject);
begin
close;
end;


procedure TFrm_AjuInvGra_NovoSemLote.Lerinvgra(pSel: String);
begin

Qr_InvGra01.Close;
Qr_InvGra01.SQL.Clear;
Qr_InvGra01.SQL.Add('Select  '+QuotedStr(pSel)+' as GERAR, IGNOMEINV,IGDATAEMI, sum(IGQTD) AS QUANT '
                   +' ,sum( round(IGQTD*IGPRECO,2)) AS VALOR '
                   +',IGFILIAL,max(IGCODTIP) as IGCODTIP  '
                   +',(select max(CFNOME) from CADPRO_FILIAL where CFFILIAL=IGFILIAL) as nomefilial '
                   +'        ,count(*) as ITEM '
                   +'        from INVGRA_GD  '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' where IGCODEMP=0'+IntToStr(codemp))
                   +' group by IGNOMEINV,IGDATAEMI,IGFILIAL ');
Qr_InvGra01.Open;

if Qr_InvGra01.isempty=false then
   begin
   Qr_InvGra01.DisableControls;
   mQtdTot:=0;
   mQtdSel:=0;

   While not Qr_InvGra01.Eof do
      begin
      mQtdTot:=mQtdTot+1;
      if Qr_InvGra01GERAR.AsString='X' then
         mQtdSel:=mQtdSel+1;
      Qr_InvGra01.Next;
      end;
   ExibirTotais;
   Qr_InvGra01.EnableControls;

   end;
end;

procedure TFrm_AjuInvGra_NovoSemLote.ExibirTotais;
begin
lbl_existentes.Caption  :=Inttostr(mQtdTot);
lbl_selecionados.Caption:=Inttostr(mQtdsel);
bbGerarNovo.Enabled:=mQtdSel>0;
if mQtdSel=0 then
   edt_datainv.Clear;

end;

procedure TFrm_AjuInvGra_NovoSemLote.Qr_InvGra01BeforeEdit(
  DataSet: TDataSet);
begin
mant_gerar:=Qr_InvGra01GERAR.AsString;

end;

procedure TFrm_AjuInvGra_NovoSemLote.Qr_InvGra01AfterPost(
  DataSet: TDataSet);
begin
if mant_gerar<>Qr_InvGra01GERAR.AsString then
   begin
   if mant_gerar='X' then
      begin
      mQtdSel:=mQtdSel-1;
      end
   else
      begin
      mQtdSel:=mQtdSel+1;
      if edt_datainv.Date<=pdatanula then
         edt_datainv.Date:=Qr_InvGra01IGDATAEMI.AsDateTime;
      end;
   ExibirTotais;
   end;

end;

procedure TFrm_AjuInvGra_NovoSemLote.DBGrid1DblClick(Sender: TObject);
begin
if Qr_InvGra01IGNOMEINV.IsNull=false then
   begin
   Qr_InvGra01.Edit;
   if Qr_InvGra01GERAR.AsString='X' then
      Qr_InvGra01GERAR.AsString:=' '
   else
      Qr_InvGra01GERAR.AsString:='X';
   Qr_InvGra01.Post;
   end;
end;

procedure TFrm_AjuInvGra_NovoSemLote.cb_gerarClick(Sender: TObject);
begin
Lerinvgra(iif(cb_gerar.Checked=true,'X',' '));

end;

procedure TFrm_AjuInvGra_NovoSemLote.FormShow(Sender: TObject);
var
x_inv: integer;
begin
Lerinvgra(iif(cb_gerar.Checked=true,'X',' '));
edt_inventario_novo.Text:='NOVO INVENTARIO';
if fLerGenerico_query('INVGRA','count(*) as qtd','IGNOMEINV='+QuotedStr(edt_inventario_novo.Text),query_consulta) then
   begin
   x_inv:=0;
   While true do
      begin
      if query_consulta.fieldbyname('qtd').Asinteger=0 then
         break;
      edt_inventario_novo.Text:='NOVO INVENTARIO'+IntToStr(x_inv);
      if not fLerGenerico_query('INVGRA','count(*) as qtd','IGNOMEINV='+QuotedStr(edt_inventario_novo.Text),query_consulta) then
         break;
      x_inv:=x_inv+1;   
      end;
   end;


end;

procedure TFrm_AjuInvGra_NovoSemLote.bbGerarNovoClick(Sender: TObject);
var
query_temp: tquery;
mcompsql: string;
begin
if trim(edt_inventario_novo.Text)='' then
   begin
   MessageDlg('Favor colocar um nome para o inventario!',mtWarning,[mbOk],0);
   exit;
   end;

query_temp:=TQuery.Create(nil);
query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_temp.Close;
query_temp.SQL.clear;
query_temp.SQL.Add('select UNIQUE IGNOMEINV,IGDATAEMI from INVGRA where '
                  +' IGCODEMP=:CODEMP and IGNOMEINV=:NOMEINV ');
query_temp.ParamByName('CODEMP').AsInteger:=codemp;
query_temp.ParamByName('NOMEINV').AsString:=edt_inventario_novo.Text;
query_temp.Open;
if not query_temp.IsEmpty then
  begin
  MessageDlg('Inventario '+edt_inventario_novo.Text+' ja existente data '+FormatDateTime(fdt2, query_temp.fieldbyname('IGDATAEMI').AsDateTime ),mtInformation,[mbOk],0);
  query_temp.Close; 
  FreeAndNil(query_temp);
  Exit;
  end;


query_temp.close;
query_temp.SQL.Clear;
query_temp.SQL.Add('Insert into INVGRA ('
                 +'IGCODEMP '
                 +',IGNOMEINV '
                 +',IGSIT '
                 +',IGCODTIP '
                 +',IGDATAEMI '
                 +',IGPRECO '
                 +',IGCODPRO '

                 +',IGQTD '
                 +',IGFILIAL '

                 +') select '

                 +' max(IGCODEMP) as IGCODEMP '
                 +',:IGNOMEINV '
                 +',max(IGSIT) as IGSIT '
                 +',max(IGCODTIP) as IGCODTIP '
                 +',:IGDATAEMI '
                 +',max(IGPRECO) as IGPRECO '
                 +',IGCODPRO '

                 +',sum(IGQTD) '
                 +',IGFILIAL '
                 +' from INVGRA_GD where (');
query_temp.ParamByName('IGDATAEMI').AsDateTime:=edt_datainv.Date;
query_temp.ParamByName('IGNOMEINV').AsString  :=edt_inventario_novo.text;

Qr_InvGra01.First;
mcompsql:='';
While not Qr_InvGra01.eof do
   begin
   if Qr_InvGra01GERAR.AsString='X' then
      begin
      query_temp.SQL.add(mcompsql+' IGNOMEINV='+QuotedStr(Qr_InvGra01IGNOMEINV.AsString));
      mcompsql:=' or ';
      end;
   Qr_InvGra01.Next;
   end;
query_temp.SQL.Add(')');
query_temp.SQL.Add(' group by IGCODPRO,IGFILIAL ');


try
   query_temp.ExecSQL;
   MessageDlg('Concluido!',mtInformation,[mbOk],0);
except on e : exception do
   begin
   ex_erroSql_Novo(query_temp,265,'func Erro:'+e.Message ,'INVGRA_D');
   MessageDlg('Erro ao Gerar Novo Inventario!',mterror,[mbOk],0);
   end;
   end;

// ex_erroSql_Novo(query_temp,265,'func Erro:' ,'INVGRA_D');

query_temp.close;
freeandnil(query_temp);

close;

end;

procedure TFrm_AjuInvGra_NovoSemLote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.


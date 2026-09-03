unit S_CQPedEnt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGrids, Mask, StdCtrls, ToolEdit, DBTables;

type
  TFrm_CQPedEnt = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    CHAVEP: TEdit;
    Label2: TLabel;
    DATAP: TDateEdit;
    Label3: TLabel;
    FORN: TEdit;
    Label4: TLabel;
    ENDFOR: TEdit;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    NUMNF: TEdit;
    Label6: TLabel;
    DATANF: TDateEdit;
    Label7: TLabel;
    CHAVE_ACESSO: TMaskEdit;
    Label8: TLabel;
    TRANSP: TEdit;
    Query1: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure CHAVEPExit(Sender: TObject);
    procedure CHAVEPEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    oldChave: String;
  public
    { Public declarations }
  end;

var
  Frm_CQPedEnt: TFrm_CQPedEnt;

implementation

uses Func, S_DM1;

{$R *.dfm}

procedure TFrm_CQPedEnt.FormCreate(Sender: TObject);
begin
DM1.Tb_CADCONQ.Close;
DATAP.Date        :=Now;
FORN.Text         :='';
ENDFOR.Text       :='';
TRANSP.Text       :='';
NUMNF.Text        :='';
DATANF.Date       :=Now;
CHAVE_ACESSO.Text :='';
end;

procedure TFrm_CQPedEnt.CHAVEPExit(Sender: TObject);
var
  X: Integer;
  CQPedEnt: TCQPedCompra;
begin
if oldChave = CHAVEP.Text then
  Exit;

DATAP.Date        :=Now;
FORN.Text         :='';
ENDFOR.Text       :='';
TRANSP.Text       :='';
NUMNF.Text        :='';
DATANF.Date       :=Now;
CHAVE_ACESSO.Text :='';

CHAVEP.Text:=fdeixanum(CHAVEP.Text);

if StrToInt(CHAVEP.Text)<=0 then
  exit;

Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' select * from cadpf1, cadfor where pf1codfor=fcodfor and pf1chave='+CHAVEP.Text);
Query1.Open;
if not Query1.IsEmpty then
  begin
  if Query1.FieldByName('PF1STATUS').AsInteger<>1 then
    begin
    ShowMessage('Pedido ainda não confirmado!!!');
    Exit;
    end;
  DATAP.Date        :=Query1.FieldByName('PF1DATA').AsDateTime;
  FORN.Text         :=FormatFloat('000000',Query1.FieldByName('PF1CODFOR').AsFloat)+' - '+Query1.FieldByName('FRAZAO').AsString;
  ENDFOR.Text       :=Query1.FieldByName('FNLOG').AsString+' '
                     +Query1.FieldByName('FNUM').AsString+' '
                     +Query1.FieldByName('FCOMPL').AsString+' '
                     +Query1.FieldByName('FBAIRRO').AsString+' '
                     +Query1.FieldByName('FCIDADE').AsString+' '
                     +Query1.FieldByName('FUF').AsString;
  if Query1.FieldByName('PF1CODTRA').AsFloat>0 then
    begin
    DM1.Query1.Close;
    DM1.Query1.SQL.Clear;
    DM1.Query1.SQL.Add('select * from CADTRA where TRCODTRA='+Query1.FieldByName('PF1CODTRA').AsString);
    DM1.Query1.Open;
    TRANSP.Text       :=FormatFloat('000000',DM1.Query1.FieldByName('TRCODTRA').AsFloat)+' - '+DM1.Query1.FieldByName('TRRAZTRA').AsString;
    end
  else
    begin
    TRANSP.Text       :='NÃO ENCONTRADO';
    end;
  NUMNF.Text        :=Query1.FieldByName('PF1NUMNF').AsString;
  DATANF.Date       :=Query1.FieldByName('PF1DATANF').AsDateTime;
  CHAVE_ACESSO.Text :=Copy(Query1.FieldByName('PF1_NFE_CHAVE').AsString,1,4)
                      +'-'+Copy(Query1.FieldByName('PF1_NFE_CHAVE').AsString,5,4)
                      +'-'+Copy(Query1.FieldByName('PF1_NFE_CHAVE').AsString,9,4)
                      +'-'+Copy(Query1.FieldByName('PF1_NFE_CHAVE').AsString,13,4)
                      +'-'+Copy(Query1.FieldByName('PF1_NFE_CHAVE').AsString,17,4)
                      +'-'+Copy(Query1.FieldByName('PF1_NFE_CHAVE').AsString,21,4)
                      +'-'+Copy(Query1.FieldByName('PF1_NFE_CHAVE').AsString,25,4)
                      +'-'+Copy(Query1.FieldByName('PF1_NFE_CHAVE').AsString,29,4)
                      +'-'+Copy(Query1.FieldByName('PF1_NFE_CHAVE').AsString,33,4)
                      +'-'+Copy(Query1.FieldByName('PF1_NFE_CHAVE').AsString,37,4)
                      +'-'+Copy(Query1.FieldByName('PF1_NFE_CHAVE').AsString,41,4);


  end
else
  begin
  ShowMessage('Chave não encontrada!!!');
  CHAVEP.SetFocus;
  Exit;           
  end;
DM1.Tb_CADCONQ.Close;
DM1.Tb_CADCONQ.SQL.Clear;
DM1.Tb_CADCONQ.SQL.Add(' select * from CADCONQ where CQ_CODEMP='+IntToStr(codemp)
                      +' and CQ_TIPO=0 and CQ_CHAVE='+CHAVEP.Text);
DM1.Tb_CADCONQ.Open;
if DM1.Tb_CADCONQ.IsEmpty then
  begin
  CQPedEnt := CarregaCQPedCompra;
  for X:=0 to 9 do
    begin
    DM1.Tb_CADCONQ.Append;
    DM1.Tb_CADCONQCQ_CODEMP.AsInteger:=codemp;
    DM1.Tb_CADCONQCQ_CHAVE.AsString  := CHAVEP.Text;
    DM1.Tb_CADCONQCQ_TIPO.AsInteger  :=0;
    DM1.Tb_CADCONQCQ_NOME.AsString   :=CQPedEnt[x];
    DM1.Tb_CADCONQCQ_OK.AsInteger    :=1;
    DM1.Tb_CADCONQ.Post;
    end;
  end;
end;

procedure TFrm_CQPedEnt.CHAVEPEnter(Sender: TObject);
begin
oldChave:=CHAVEP.Text;
end;

procedure TFrm_CQPedEnt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_CQPedEnt.DBGrid1DblClick(Sender: TObject);
begin
DM1.Tb_CADCONQ.Edit;
if DM1.Tb_CADCONQCQ_OK.AsInteger = 0 then
  DM1.Tb_CADCONQCQ_OK.AsFloat:=1
else
  DM1.Tb_CADCONQCQ_OK.AsFloat:=0;
DM1.Tb_CADCONQ.Post;
end;

end.

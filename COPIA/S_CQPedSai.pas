unit S_CQPedSai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Mask, StdCtrls, ToolEdit, Grids, DBGrids;

type
  TFrm_CQPedSai = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    CHAVEP: TEdit;
    DATAP: TDateEdit;
    FORN: TEdit;
    ENDFOR: TEdit;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    NUMNF: TEdit;
    DATANF: TDateEdit;
    CHAVE_ACESSO: TMaskEdit;
    TRANSP: TEdit;
    Query1: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CHAVEPEnter(Sender: TObject);
    procedure CHAVEPExit(Sender: TObject);
  private
    { Private declarations }
    oldChave: String;
  public
    { Public declarations }
  end;

var
  Frm_CQPedSai: TFrm_CQPedSai;

implementation

uses S_DM1, Func, lerarq;

{$R *.dfm}

procedure TFrm_CQPedSai.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_CQPedSai.DBGrid1DblClick(Sender: TObject);
begin
DM1.Tb_CADCONQ.Edit;
if DM1.Tb_CADCONQCQ_OK.AsInteger = 0 then
  DM1.Tb_CADCONQCQ_OK.AsFloat:=1
else
  DM1.Tb_CADCONQCQ_OK.AsFloat:=0;
DM1.Tb_CADCONQ.Post;
end;

procedure TFrm_CQPedSai.FormCreate(Sender: TObject);
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

procedure TFrm_CQPedSai.CHAVEPEnter(Sender: TObject);
begin
oldChave:=CHAVEP.Text;
end;

procedure TFrm_CQPedSai.CHAVEPExit(Sender: TObject);
var
  X: Integer;
  CQPedVen: TCQPedVenda;
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
Query1.SQL.Add(' select * from cadp01, cadcli where p1codcli=ccodcli and p1chave='+CHAVEP.Text);
Query1.Open;
if not Query1.IsEmpty then
  begin
  if Query1.FieldByName('P1EMIDOC').AsInteger<>1 then
    begin
    ShowMessage('Pedido ainda não confirmado!!!');
    Exit;
    end;
  DATAP.Date        :=Query1.FieldByName('P1DATAP').AsDateTime;
  FORN.Text         :=FormatFloat('000000',Query1.FieldByName('P1CODCLI').AsFloat)+' - '+Query1.FieldByName('CRAZAO').AsString;
  ENDFOR.Text       :=Query1.FieldByName('CLOG').AsString+' '
                     +Query1.FieldByName('CNUM').AsString+' '
                     +Query1.FieldByName('CCOMPL').AsString+' '
                     +Query1.FieldByName('CBAIRRO').AsString+' '
                     +Query1.FieldByName('CCIDADE').AsString+' '
                     +Query1.FieldByName('CUF').AsString;
  if Query1.FieldByName('P1CODTRA').AsFloat>0 then
    begin
    DM1.Query1.Close;
    DM1.Query1.SQL.Clear;
    DM1.Query1.SQL.Add('select * from CADTRA where TRCODTRA='+Query1.FieldByName('P1CODTRA').AsString);
    DM1.Query1.Open;
    TRANSP.Text       :=FormatFloat('000000',DM1.Query1.FieldByName('TRCODTRA').AsFloat)+' - '+DM1.Query1.FieldByName('TRRAZTRA').AsString;
    end
  else
    begin
    TRANSP.Text       :='NÃO ENCONTRADO';
    end;
  if flcadns(3,Query1.FieldByName('P1CODEMP').AsInteger,
               Query1.FieldByName('P1LOTSEQ').AsInteger,
               Query1.FieldByName('P1CHAVE').AsString,
               Query1.FieldByName('P1ORDEM').AsString,'') then


    begin
    NUMNF.Text        :=DM1.Tb_NsNSNUMERO.AsString;
    DATANF.Date       :=DM1.Tb_NsNSDTEMIS.AsDateTime;
    CHAVE_ACESSO.Text :=Copy(DM1.Tb_NsNSNFE_CHAVEACESSO.AsString,1,4)
                        +'-'+Copy(DM1.Tb_NsNSNFE_CHAVEACESSO.AsString,5,4)
                        +'-'+Copy(DM1.Tb_NsNSNFE_CHAVEACESSO.AsString,9,4)
                        +'-'+Copy(DM1.Tb_NsNSNFE_CHAVEACESSO.AsString,13,4)
                        +'-'+Copy(DM1.Tb_NsNSNFE_CHAVEACESSO.AsString,17,4)
                        +'-'+Copy(DM1.Tb_NsNSNFE_CHAVEACESSO.AsString,21,4)
                        +'-'+Copy(DM1.Tb_NsNSNFE_CHAVEACESSO.AsString,25,4)
                        +'-'+Copy(DM1.Tb_NsNSNFE_CHAVEACESSO.AsString,29,4)
                        +'-'+Copy(DM1.Tb_NsNSNFE_CHAVEACESSO.AsString,33,4)
                        +'-'+Copy(DM1.Tb_NsNSNFE_CHAVEACESSO.AsString,37,4)
                        +'-'+Copy(DM1.Tb_NsNSNFE_CHAVEACESSO.AsString
                                 +DM1.Tb_NsNSNFE_DCHAVEACESSO.AsString,41,4);
    end;
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
                      +' and CQ_TIPO=1 and CQ_CHAVE='+CHAVEP.Text);
DM1.Tb_CADCONQ.Open;
if DM1.Tb_CADCONQ.IsEmpty then
  begin
  CQPedVen := CarregaCQPedVenda;
  for X:=0 to 7 do
    begin
    DM1.Tb_CADCONQ.Append;
    DM1.Tb_CADCONQCQ_CODEMP.AsInteger:=codemp;
    DM1.Tb_CADCONQCQ_CHAVE.AsString  := CHAVEP.Text;
    DM1.Tb_CADCONQCQ_TIPO.AsInteger  :=1;
    DM1.Tb_CADCONQCQ_NOME.AsString   :=CQPedVen[x];
    DM1.Tb_CADCONQCQ_OK.AsInteger    :=1;
    DM1.Tb_CADCONQ.Post;
    end;
  end;

end;

end.

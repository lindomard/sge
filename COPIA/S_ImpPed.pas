unit S_ImpPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls,S_DM1,db,dbtables,func,lerarq,s_Cli,
  Grids,S_DM5;

type
  TFrm_ImpPed = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    Label2: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label3: TLabel;
    APLICAR: TBitBtn;
    BBSAIR: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    SELECAO: TBitBtn;
    CANCELAR: TBitBtn;
    FATURAR: TBitBtn;
    STG1: TStringGrid;
    Qr_Ped: TQuery;
    Qr_PedPDNOME: TStringField;
    Qr_PedPDUND: TStringField;
    Qr_PedPDPRECO1: TFloatField;
    Qr_PedP2CODPRO: TFloatField;
    Qr_PedP2LOTE: TStringField;
    Qr_PedP2DTVCTO: TDateTimeField;
    Qr_PedPDSIT: TStringField;
    Qr_PedPDLISTA: TFloatField;
    Qr_PedPDTABICM: TStringField;
    Qr_PedPDCODFOR: TFloatField;
    Qr_PedQUANT: TFloatField;
    Label4: TLabel;
    CHAVEI: TEdit;
    Label5: TLabel;
    CHAVEF: TEdit;
    procedure BBSAIRClick(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure APLICARClick(Sender: TObject);
    procedure CODCLIEnter(Sender: TObject);
    procedure STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SELECAOClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure FATURARClick(Sender: TObject);
    procedure STG1DblClick(Sender: TObject);
    procedure CHAVEIExit(Sender: TObject);
    procedure CHAVEFExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ImpPed: TFrm_ImpPed;
  mqtd: Integer;
  mTabTemp: String;
  mimportou  : Boolean=False;

implementation

uses S_DM4, S_Producao;

{$R *.dfm}

procedure TFrm_ImpPed.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ImpPed.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_ImpPed',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_ImpPed.CODCLIExit(Sender: TObject);
begin
if ValFloat(CODCLI.Text)<=0 then
   CODCLI.Text:='';
if Trim(CODCLI.Text)='' then
   NOMCLI.Text:='Todos...'
else
   begin
   if not flcadcli(1,0,CODCLI.Text) then
      begin
      MessageDlg('Cliente não Cadastrado!',mtWarning,[mbOk],0);
      CODCLI.SetFocus;
      exit;
      end
   else
      NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
   end;
end;

procedure TFrm_ImpPed.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2, StrToDate(MDT1.Text));
   except
      MessageDlg('Data Inválida!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      end;
   end;
end;

procedure TFrm_ImpPed.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2, StrToDate(MDT2.Text));
   except
      MessageDlg('Data Inválida!',mtWarning,[mbOk],0);
      MDT2.SetFocus;
      exit;
      end;
   end;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrTodate(MDT2.Text) then
      begin
      MessageDlg('Data Final Maior que inicial. Invalido!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_ImpPed.FormCreate(Sender: TObject);
begin
mimportou:=False;
STG1.RowCount:=2;
STG1.Rows[1].Clear;
STG1.Cells[0,0]:='Sel';
STG1.Cells[1,0]:='Chave';
STG1.Cells[2,0]:='Ordem';
STG1.Cells[3,0]:='Data';
STG1.Cells[4,0]:='Cliente';
STG1.Cells[5,0]:='Valor';
STG1.Cells[6,0]:='Tipo Ped';
STG1.Cells[7,0]:='Situação';
STG1.Cells[8,0]:='Empresa';
STG1.Cells[9,0]:='Lote Seq';


end;

procedure TFrm_ImpPed.APLICARClick(Sender: TObject);
begin

if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      fmensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

if (Trim(CHAVEI.Text)<>'') and (Trim(CHAVEF.Text)<>'') then
   begin
   if fsonumero(CHAVEI.Text)>fsonumero(CHAVEF.Text) then
      begin
      fmensagem('Chave inicial maior que final, Invalido!',0,['0'],0);
      CHAVEI.SetFocus;
      exit;
      end;
   end;

DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.SQL.Add('Select P1LOTSEQ,P1CHAVE,P1ORDEM,P1DATAP,P1CODCLI,P1TOTALL,P1TIPO,'
              +'       P1EMIDOC,P1CODEMP,CRAZAO '
              +'       from CADP01,CADCLI where '
              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntTostr(codemp)+' and ')
              +' P1STATUS<'+mstatus_excluido
              +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=0'+IntTostr(codemp)+' ')
              +' and CCODCLI=P1CODCLI ');
if Trim(CODCLI.Text)<>'' then
   DM1.Query4.SQL.Add(' and P1CODCLI=0'+Trim(CODCLI.Text));
if Trim(MDT1.Text)<>'/  /' then
   DM1.Query4.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));

if Trim(MDT2.Text)<>'/  /' then
   DM1.Query4.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
if trim(CHAVEI.Text)<>'' then
   DM1.Query4.SQL.Add(' and P1CHAVE>=0'+CHAVEI.Text);
if trim(CHAVEF.Text)<>'' then
   DM1.Query4.SQL.Add(' and P1CHAVE<=0'+CHAVEF.Text);

DM1.Query4.SQL.Add(' order by P1DATAP,P1CHAVE,P1ORDEM');
DM1.Query4.Open;
if DM1.Query4.Eof then
   begin
   MessageDlg('Nada encontrado na condição Acima!',mtWarning,[mbOk],0);
   exit;
   end;
mqtd:=2;
While not DM1.Query4.Eof do
   begin
   STG1.RowCount:=mqtd;
   STG1.Cells[0,mqtd-1]:=' ';
   STG1.Cells[1,mqtd-1]:=Formatfloat('000000',DM1.Query4.FieldbyName('P1CHAVE').Asfloat);
   STG1.Cells[2,mqtd-1]:=Formatfloat('00',DM1.Query4.FieldbyName('P1ORDEM').Asfloat);
   STG1.Cells[3,mqtd-1]:=FormatDateTime(fdt2,DM1.Query4.FieldbyName('P1DATAP').AsDateTime);
   STG1.Cells[4,mqtd-1]:=DM1.Query4.FieldbyName('CRAZAO').AsString;
   STG1.Cells[5,mqtd-1]:=FormatFloat(mcasas, DM1.Query4.FieldbyName('P1TOTALL').AsFloat);
   STG1.Cells[6,mqtd-1]:=tab_tped[DM1.Query4.FieldbyName('P1TIPO').asinteger];
   if DM1.Query4.FieldbyName('P1EMIDOC').AsInteger=1 then
      STG1.Cells[7,mqtd-1]:='Emitiu Doc'
   else
      STG1.Cells[7,mqtd-1]:='Pendente';
   STG1.Cells[8,mqtd-1]:=DM1.Query4.FieldbyName('P1CODEMP').AsString;
   STG1.Cells[9,mqtd-1]:=DM1.Query4.FieldbyName('P1LOTSEQ').AsString;
   mqtd:=mqtd+1;
   STG1.Rows[mqtd].Clear;
   STG1.RowCount:=mqtd;
   DM1.Query4.Next;
   end;
FATURAR.Enabled:=True;
SELECAO.Enabled:=True;
end;

procedure TFrm_ImpPed.CODCLIEnter(Sender: TObject);
begin
FATURAR.Enabled:=False;
SELECAO.Enabled:=False;

end;

procedure TFrm_ImpPed.STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin

if (aCol=5) or (acol=8)  then
   begin
//Pega o texto da célula
  Texto := STG1.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG1.Canvas.TextWidth(Texto);
  AlturaTexto := STG1.Canvas.TextHeight(Texto);

// Direita
    X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG1.Canvas.TextRect(Rect, X, Y, Texto);
  end;


end;

procedure TFrm_ImpPed.SELECAOClick(Sender: TObject);
var
x:Integer;
begin
for x:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[1,x])='' then
      Continue;
   STG1.Cells[0,x]:='X';
   end;

end;

procedure TFrm_ImpPed.CANCELARClick(Sender: TObject);
var
x:Integer;
begin
for x:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[1,x])='' then
      Continue;
   STG1.Cells[0,x]:=' ';
   end;

end;

procedure TFrm_ImpPed.FATURARClick(Sender: TObject);
var
x: Integer;
mtemfat: Boolean;
mcomp: String;
begin
mtemfat:=False;
for x:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[1,x])='' then
      Continue;
   if Trim(STG1.Cells[0,x])='X' then
      begin
      mtemfat:=True;
      break;
      end;
   end;
if not mtemfat then
   begin
   MessageDlg('Para importar que selecionar pelo menos um pedido!',mtWarning,[mbOk],0);
   exit;
   end;
if fmensagem('Confirma a Importação!',0,['1','2'],2)<>MrYes then
   exit;
mTabTemp:=fProcTemp(13);
DM5.Query1.Close;
DM5.Query1.Sql.Clear;
DM5.Query1.SQL.Add('Create Table '+mtabTemp+'('
                  +' TMP_CODEMP '+pTmpcFloat
                  +',TMP_LOTSEQ '+pTmpcFloat
                  +',TMP_CHAVE '+pTmpcFloat
                  +',TMP_ORDEM '+pTmpcFloat+')');
try
   DM5.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro ao Criar a Tabela: '+mtabTemp,mtWarning,[mbOk],0);
   exit;
   end;

for x:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[1,x])='' then
      Continue;
   if Trim(STG1.Cells[0,x])<>'X' then
      Continue;
   DM5.Query1.Close;
   DM5.Query1.SQL.Clear;
   DM5.Query1.SQL.Add('Insert into '+mtabTemp+'('
                  +' TMP_CODEMP '
                  +',TMP_LOTSEQ '
                  +',TMP_CHAVE '
                  +',TMP_ORDEM '
                  +' ) Values ( '
                  +Trim(STG1.Cells[8,x])
                  +','+Trim(STG1.Cells[9,x])
                  +','+Trim(STG1.Cells[1,x])
                  +','+Trim(STG1.Cells[2,x])
                  +')');
   try
      DM5.Query1.ExecSQL;
      fdm1StartCommit;
   except
      MessageDlg('Erro ao Atualiar a Tabela: '+mtabTemp,mtWarning,[mbOk],0);
      exit;
      end;
   end;

DM5.Query2.Close;
DM5.Query2.SQL.Clear;
DM5.Query2.SQL.Add('Select PDNOME,PDUND,PDPRECO1,P2CODPRO,');
if ValInt(copy(mpseg,4,2))=2 then
   DM5.Query2.SQL.Add('P2LOTE,')
else
   DM5.Query2.SQL.Add('max(P2LOTE) as P2LOTE,');
DM5.Query2.SQL.Add(' PDSIT,PDLISTA,PDTABICM,'
              +' PDCODFOR, sum(P2QTD) as QUANT from ');
DM5.Query2.SQL.Add(' ":SG_ASSOC:CADP02" ');
DM5.Query2.SQL.Add(',":SG_ASSOC:CADP01" ');
DM5.Query2.SQL.Add(',":SG_ASSOC:CADPRO" ');
DM5.Query2.SQL.Add(', '+mTabTemp+' where ');
if not DM1.Qr_tID.Locate('TINOME','CADPED',[]) then
   DM5.Query2.SQL.Add(' P2CODEMP=TMP_CODEMP and ');
DM5.Query2.SQL.Add(' P2LOTSEQ=TMP_LOTSEQ ');
DM5.Query2.SQL.Add(' and P2CHAVE=TMP_CHAVE ');
DM5.Query2.SQL.Add(' and P2ORDEM=TMP_ORDEM ');
if not DM1.Qr_tID.Locate('TINOME','CADPED',[]) then
   DM5.Query2.Sql.add(' and P1CODEMP=P2CODEMP ');
DM5.Query2.Sql.add(' and P2LOTSEQ=P1LOTSEQ and P1CHAVE=P2CHAVE and P1ORDEM=P2ORDEM ');
if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   DM5.Query2.Sql.add(' and PDCODEMP=P2CODEMP ');
DM5.Query2.Sql.add(' and PDCODPRO=P2CODPRO '
                  +' and P1STATUS<'+mstatus_excluido+' ');
DM5.Query2.SQL.Add(' GROUP BY PDNOME,PDUND,PDPRECO1,P2CODPRO,');
if ValInt(copy(mpseg,4,2))=2 then
   DM5.Query2.SQL.Add('P2LOTE,');
DM5.Query2.SQL.Add(' PDSIT,PDLISTA,PDTABICM,PDCODFOR');
try
   DM5.Query2.Open;
except
   DM5.query2.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   MessageDlg('Houve Erros ao ler Tabela de Pedidos!',mtError,[mbOk],0);
   end;
if DM5.Query2.Eof then
   begin
   fdeletaTemp(mTabTemp);
   MessageDlg('Não Foi Encontrado nada ha ser importado!',mtWarning,[mbOk],0);
   exit;
   end;

While not DM5.Query2.Eof do
   begin
   if StrToInt('0'+copy(mpseg,4,2))=02 then  // grade cores tamanho
      mcomp:=Trim(DM5.query2.fieldbyName('P2LOTE').AsString)
   else
      mcomp:='';
{
   if not flcadcomp(0,-1,DM5.query2.fieldbyName('P2CODPRO).AsString,mcomp,'') then
      begin
      MessageDlg('o Produto: '+DM5.query2.fieldbyName('P2CODPRO').AsString+' Nome: '+DM5.query2.fieldbyName('PDNOME').AsString+#13
                +'não possui Formula de Fabricação, criar formula primeiro!',mtWarning,[mbOk],0);
      exit;
      end;
}
   DM5.query2.Next;
   end;


mqtd:=1;
DM5.Query2.First;
While not DM5.Query2.Eof do
   begin
   if DM5.Query2.FieldByName('QUANT').AsFloat<=0 then
      begin
      Qr_Ped.Next;
      Continue;
      end;
   if StrToInt('0'+copy(mpseg,4,2))=02 then  // grade cores tamanho
      mcomp:=Trim(DM5.Query2.FieldByName('P2LOTE').AsString)
   else
      mcomp:='';

   mqtd:=Frm_Producao.STG_PP.RowCount;
   Frm_Producao.STG_PP.RowCount:=mqtd+1;
   Frm_Producao.STG_PP.Rows[mqtd+1].Clear;
   Frm_Producao.STG_PP.Rows[mqtd].Clear;
   Frm_Producao.STG_PP.Cells[00,mqtd-1]:=DM5.Query2.FieldByName('P2CODPRO').AsString;
   Frm_Producao.STG_PP.Cells[01,mqtd-1]:=mcomp;
   Frm_Producao.STG_PP.Cells[02,mqtd-1]:=FormatFloat(mcasqtd,DM5.Query2.FieldByName('QUANT').AsFloat);
   Frm_Producao.STG_PP.Cells[03,mqtd-1]:=DM5.Query2.FieldByName('PDUND').AsString;
   Frm_Producao.STG_PP.Cells[04,mqtd-1]:=DM5.Query2.FieldByName('PDNOME').AsString;
   Frm_Producao.STG_PP.Cells[05,mqtd-1]:=FormatFloat(mcasaspu, DM5.Query2.FieldByName('PDPRECO1').AsFloat);
   Frm_Producao.STG_PP.Cells[06,mqtd-1]:=FormatFloat(mcasas, (DM5.Query2.FieldByName('QUANT').AsFloat*DM5.Query2.FieldByName('PDPRECO1').AsFloat));
   Frm_Producao.STG_PP.Cells[07,mqtd-1]:=FormatFloat(mcasqtd,DM5.Query2.FieldByName('QUANT').AsFloat);
   mqtd:=mqtd+1;
   DM5.Query2.Next;
   end;
mimportou:=True;
DM5.Query2.Close;
DM5.Query1.Close;
fdeletaTemp(mTabTemp);

close;
end;

procedure TFrm_ImpPed.STG1DblClick(Sender: TObject);
var
mlin: Integer;
begin
mlin:=STG1.Row;
if mlin<1 then
   exit;
if STG1.Cells[0,mlin]='X' then
   STG1.Cells[0,mlin]:=' '
else
   STG1.Cells[0,mlin]:='X';

end;

procedure TFrm_ImpPed.CHAVEIExit(Sender: TObject);
begin
CHAVEI.Text:=fdeixanum2(CHAVEI.Text);
if trim(CHAVEF.Text)='' then
   CHAVEF.Text:=CHAVEI.Text;

end;

procedure TFrm_ImpPed.CHAVEFExit(Sender: TObject);
begin
CHAVEF.Text:=fdeixanum2(CHAVEF.Text);

end;

procedure TFrm_ImpPed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

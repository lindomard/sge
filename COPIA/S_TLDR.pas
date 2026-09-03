unit S_TLDR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons,S_Bco,S_Dpto,S_CCU, Grids,func,
  lerarq,db,dbtables;

type
  TFrm_TLDR = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    RG_TPCONTA: TRadioGroup;
    GroupBox2: TGroupBox;
    CODBCO: TEdit;
    Label4: TLabel;
    CODBCO_DEST: TEdit;
    NOMBCO_DEST: TEdit;
    NOMBCO: TEdit;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    CODCCU: TEdit;
    SP2: TSpeedButton;
    NOMCCU: TEdit;
    NOMDEP: TEdit;
    CODDEP: TEdit;
    SP1: TSpeedButton;
    Label6: TLabel;
    lbl_prevista: TLabel;
    MDATAP: TMaskEdit;
    lbl_real: TLabel;
    MDATAREAL: TMaskEdit;
    lbl_ref: TLabel;
    MDATAR: TMaskEdit;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CODDEP_ANT: TEdit;
    SpeedButton1: TSpeedButton;
    NOMDEP_ANT: TEdit;
    NOMCCU_ANT: TEdit;
    SpeedButton2: TSpeedButton;
    CODCCU_ANT: TEdit;
    Label10: TLabel;
    GroupBox4: TGroupBox;
    bbSel: TBitBtn;
    bbTransf: TBitBtn;
    BitBtn2: TBitBtn;
    STG1: TStringGrid;
    Panel1: TPanel;
    bbSelecionar: TBitBtn;
    bbCancelar: TBitBtn;
    NATDC: TEdit;
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure SP1Click(Sender: TObject);
    procedure SP2Click(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure MDATAPExit(Sender: TObject);
    procedure MDATAREALExit(Sender: TObject);
    procedure MDATARExit(Sender: TObject);
    procedure CODBCO_DESTKeyPress(Sender: TObject; var Key: Char);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCO_DESTExit(Sender: TObject);
    procedure CODDEPExit(Sender: TObject);
    procedure CODCCUExit(Sender: TObject);
    procedure CODCCU_ANTExit(Sender: TObject);
    procedure CODDEP_ANTExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSelClick(Sender: TObject);
    procedure bbSelecionarClick(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure bbTransfClick(Sender: TObject);
    procedure RG_TPCONTAExit(Sender: TObject);
    procedure STG1DblClick(Sender: TObject);
    procedure STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_TLDR: TFrm_TLDR;

implementation

uses S_DM1, S_Agde,S_LDR;

{$R *.dfm}

procedure TFrm_TLDR.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_TLDR',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_TLDR.SP1Click(Sender: TObject);
begin
   CODDEP.Text:=fChamaDeptoCX(0,'frm_TLDR','');
if trim(CODDEP.Text)<>'' then
   CODDEPExit(Self);
end;

procedure TFrm_TLDR.SP2Click(Sender: TObject);
begin
CODCCU.Text:=fChamaCCU(0,'frm_TLDR','');
if trim(CODCCU.Text)<>'' then
   CODCCUExit(Self);
end;

procedure TFrm_TLDR.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      mdt1.SetFocus;
      end;
   end;


end;

procedure TFrm_TLDR.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      mdt2.SetFocus;
      end;
   end;


end;

procedure TFrm_TLDR.MDATAPExit(Sender: TObject);
begin
if Trim(MDATAP.Text)<>'/  /' then
   begin
   Try
      MDATAP.Text:=FormatDateTime(fdt2,StrtoDate(MDATAP.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDATAP.SetFocus;
      end;
   end;


end;

procedure TFrm_TLDR.MDATAREALExit(Sender: TObject);
begin
if Trim(MDATAREAL.Text)<>'/  /' then
   begin
   Try
      MDATAREAL.Text:=FormatDateTime(fdt2,StrtoDate(MDATAREAL.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDATAREAL.SetFocus;
      end;
   end;

end;

procedure TFrm_TLDR.MDATARExit(Sender: TObject);
begin
if Trim(MDATAR.Text)<>'/  /' then
   begin
   Try
      MDATAR.Text:=FormatDateTime(fdt2,StrtoDate(MDATAR.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDATAR.SetFocus;
      end;
   end;

end;

procedure TFrm_TLDR.CODBCO_DESTKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO_DEST.Text:=fChamaBco(0,'frm_TLDR',Key);
   if trim(CODBCO_DEST.Text)<>'' then
      CODBCO_DESTExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_TLDR.CODBCOExit(Sender: TObject);
begin
if Trim(CODBCO.Text)<>'' Then
   begin
   if not flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODBCO.Text) then
      begin
      MessageDlg('Banco Não Cadastrado!',mtWarning,[mbOk],0);
      CODBCO.SetFocus;
      end
   else
      NOMBCO.Text:=DM1.Query1.Fields[0].AsString;
   end
else
   NOMBCO.Text:='Todos...';

end;

procedure TFrm_TLDR.CODBCO_DESTExit(Sender: TObject);
begin
if Trim(CODBCO_DEST.Text)<>'' Then
   begin
   if not flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODBCO_DEST.Text) then
      begin
      MessageDlg('Banco Não Cadastrado!',mtWarning,[mbOk],0);
      CODBCO_DEST.SetFocus;
      end
   else
      NOMBCO_DEST.Text:=DM1.Query1.Fields[0].AsString;
   end
else
   NOMBCO_DEST.Text:='Todos...';

end;

procedure TFrm_TLDR.CODDEPExit(Sender: TObject);
begin
CODDEP.Text:=Trim(CODDEP.Text);
if Trim(CODDEP.Text)<>'' Then
   begin
   if not flqr1('DNOME','D','CADDEP','C','DCODDEP',CODDEP.Text) then
      begin
      MessageDlg('Departamento Não Cadastrado!',mtWarning,[mbOk],0);
      CODDEP.SetFocus;
      end
   else
      NOMDEP.Text:=DM1.Query1.Fields[0].AsString;
   end
else
   NOMDEP.Text:='';

end;

procedure TFrm_TLDR.CODCCUExit(Sender: TObject);
begin
CODCCU.Text:=Trim(CODCCU.Text);

if Trim(CODCCU.Text)<>'' Then
   begin
   if not flqr1('CCNOME,CCNAT','CC','CADCCU','C','CCCODCCU',CODCCU.Text) then
      begin
      MessageDlg('Centro de Custo Não Cadastrado!',mtWarning,[mbOk],0);
      CODCCU.SetFocus;
      end
   else
      begin
      NOMCCU.Text:=DM1.Query1.Fields[0].AsString;
      NATDC.Text :=DM1.Query1.Fields[1].AsString;
      end;
   end
else
   begin
   NOMCCU.Text:='';
   NATDC.Text:='';
   end;

end;

procedure TFrm_TLDR.CODCCU_ANTExit(Sender: TObject);
begin
CODCCU_ANT.Text:=Trim(CODCCU_ANT.Text);

if Trim(CODCCU_ANT.Text)<>'' Then
   begin
   if not flqr1('CCNOME','CC','CADCCU','C','CCCODCCU',CODCCU_ANT.Text) then
      begin
      MessageDlg('Centro de Custo Não Cadastrado!',mtWarning,[mbOk],0);
      CODCCU_ANT.SetFocus;
      end
   else
      NOMCCU_ANT.Text:=DM1.Query1.Fields[0].AsString;
   end
else
   NOMCCU_ANT.Text:='Todos...';


end;

procedure TFrm_TLDR.CODDEP_ANTExit(Sender: TObject);
begin
CODDEP_ANT.Text:=Trim(CODDEP_ANT.Text);
if Trim(CODDEP_ANT.Text)<>'' Then
   begin
   if not flqr1('DNOME','D','CADDEP','C','DCODDEP',CODDEP_ANT.Text) then
      begin
      MessageDlg('Departamento Não Cadastrado!',mtWarning,[mbOk],0);
      CODDEP_ANT.SetFocus;
      end
   else
      NOMDEP_ANT.Text:=DM1.Query1.Fields[0].AsString;
   end
else
   NOMDEP_ANT.Text:='Todos...';

end;

procedure TFrm_TLDR.SpeedButton1Click(Sender: TObject);
begin
CODDEP_ANT.Text:=fChamaDeptoCX(0,'frm_TLDR','');
if trim(CODDEP_ANT.Text)<>'' then
   CODDEP_ANTExit(Self);
end;

procedure TFrm_TLDR.SpeedButton2Click(Sender: TObject);
begin
CODCCU_ANT.Text:=fChamaCCU(0,'frm_TLDR','');
if trim(CODCCU_ANT.Text)<>'' then
   CODCCU_ANTExit(Self);
end;

procedure TFrm_TLDR.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_TLDR.FormCreate(Sender: TObject);
begin
STG1.RowCount:=2;
stg1.Cells[00,00]:='Sel';
stg1.Cells[01,00]:='Dt.Ref.';
stg1.Cells[02,00]:='Dt.Prev.';
stg1.Cells[03,00]:='Dt.Real';
stg1.Cells[04,00]:='Vlr.Previsto';
stg1.Cells[05,00]:='Valor Real';
stg1.Cells[06,00]:='Nat.';
stg1.Cells[07,00]:='Sacado/Emitente';
stg1.Cells[08,00]:='Descrição do Movimento';
stg1.Cells[09,00]:='Cod.Bco.';
stg1.Cells[10,00]:='Nome Banco';
stg1.Cells[11,00]:='Depto.';
stg1.Cells[12,00]:='Centro C.';
stg1.Cells[13,00]:='Código';
stg1.Cells[14,00]:='Empresa';
stg1.Cells[15,00]:='Num.Doc.';
stg1.Cells[16,00]:='Tp.';
stg1.Cells[17,00]:='Lot.Seq.';
STG1.Rows[1].Clear;

stg1.ColWidths[00]:=20;
stg1.ColWidths[01]:=65; // DT. REF
stg1.ColWidths[02]:=65; // DT. PREV
stg1.ColWidths[03]:=65; // DT. REAL
stg1.ColWidths[04]:=90; // VLR PREV
stg1.ColWidths[05]:=90; // VLR REAL
stg1.ColWidths[06]:=10; // NAT
stg1.ColWidths[07]:=250; // SACADO
stg1.ColWidths[08]:=250; // DESCRICAO MOVIMENTO
stg1.ColWidths[09]:=40; // 'Cod.Bco.';
stg1.ColWidths[10]:=180; //'Nome Banco';
stg1.ColWidths[11]:=40; //'Depto.';
stg1.ColWidths[12]:=40; //'Centro C.';
stg1.ColWidths[13]:=65; // 'Código';
stg1.ColWidths[14]:=40; //'Empresa';
stg1.ColWidths[15]:=120; //'Num.Doc.';
stg1.ColWidths[16]:=20; // 'Tp.';
stg1.ColWidths[17]:=65; // 'Tp.';




end;

procedure TFrm_TLDR.bbSelClick(Sender: TObject);
var
x: Integer;
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      MessageDlg('Data Inicial maior que Final, Invalido!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Show;
Frm_Agde.Label1.Caption:='Selecionando as Contas aguarde...';
Frm_Agde.Update;

DM1.Tb_LDR.Close;
DM1.Tb_LDR.SQL.Clear;
DM1.Tb_LDR.SQL.Add('Select * FROM CADLDR where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntToStr(Codemp)+' and ')
                  +' (not CODCC is null or CODCC<>'+chr(39)+' '+chr(39)+')'
                  +' and (not CODDEP is null or CODDEP<>'+chr(39)+' '+chr(39)+')'
                  +' and (not CODBCO is null or CODBCO<>0)'
                  +' and (not CODIGO is null or CODIGO<>0)');
if Trim(MDT1.Text)<>'/  /' then
   begin
   if RG_TPCONTA.ItemIndex=0 then
      DM1.Tb_LDR.SQL.Add(' and DATAREAL>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39))
   else
      DM1.Tb_LDR.SQL.Add(' and DATADP>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   end;

if Trim(MDT2.Text)<>'/  /' then
   begin
   if RG_TPCONTA.ItemIndex=0 then
      DM1.Tb_LDR.SQL.Add(' and DATAREAL<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39))
   else
      DM1.Tb_LDR.SQL.Add(' and DATADP<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
   end;

if (CODBCO.Text)<>'' then
   begin
   DM1.Tb_LDR.SQL.Add(' and CODBCO=0'+Trim(CODBCO.Text));
   end;
if (CODDEP.Text)<>'' then
   begin
   DM1.Tb_LDR.SQL.Add(' and CODDEP='+chr(39)+CODDEP.Text+chr(39));
   end;
if (CODCCU.Text)<>'' then
   begin
   DM1.Tb_LDR.SQL.Add(' and CODDEP='+chr(39)+CODCCU.Text+chr(39));
   end;
DM1.Tb_LDR.SQL.Add(' order by DATADP');
DM1.Tb_LDR.Open;
verteclado(0);
STG1.RowCount:=2;
STG1.Rows[01].Clear;
if DM1.Tb_Ldr.Eof then
   bbTransf.Enabled:=False
else
   bbTransf.Enabled:=true;


x:=0;
While not DM1.Tb_LDR.Eof do
   begin
   x:=x+1;
   STG1.RowCount:=x+1;
   STG1.Rows[x+1].Clear;
   stg1.Cells[00,x]:=' ';
   stg1.Cells[01,x]:=FormatDateTime(fdt2, DM1.Tb_LDRDATAREF.Value);
   stg1.Cells[02,x]:=FormatDateTime(fdt2, DM1.Tb_LDRDATADP.Value);
   stg1.Cells[03,x]:=FormatDateTime(fdt2, DM1.Tb_LDRDATAREAL.Value);
   stg1.Cells[04,x]:=FormatFloat(mcasas, DM1.Tb_LDRVALORP.Value);
   stg1.Cells[05,x]:=FormatFloat(mcasas, DM1.Tb_LDRVALORR.Value);
   stg1.Cells[06,x]:=DM1.Tb_LDRNATDC.Value;
   stg1.Cells[07,x]:=DM1.Tb_LDRnome.Value;
   stg1.Cells[08,x]:=DM1.Tb_LDRDESCMV.Value;
   stg1.Cells[09,x]:=FormatFloat('00000', DM1.Tb_LDRCODBCO.Value);
   stg1.Cells[10,x]:=DM1.Tb_LDRnombco.Value;
   stg1.Cells[11,x]:=DM1.Tb_LDRCODDEP.Value;
   stg1.Cells[12,x]:=DM1.Tb_LDRCODCC.Value;
   stg1.Cells[13,x]:=DM1.Tb_LDRCODLDR.AsString;
   stg1.Cells[14,x]:=DM1.Tb_LDRCODEMP.AsString;
   stg1.Cells[15,x]:=DM1.Tb_LDRNUMDOC.Value;
   stg1.Cells[16,x]:=DM1.Tb_LDRTIPO.Value;
   stg1.Cells[17,x]:=DM1.Tb_LDRLOTSEQ.AsString;
   DM1.Tb_LDR.Next;
   end;

Frm_Agde.Free;
end;

procedure TFrm_TLDR.bbSelecionarClick(Sender: TObject);
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

procedure TFrm_TLDR.bbCancelarClick(Sender: TObject);
var
x:Integer;
begin
for x:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[1,x])='X' then
      Continue;
   STG1.Cells[0,x]:=' ';
   end;

end;

procedure TFrm_TLDR.bbTransfClick(Sender: TObject);
var
mtot, x: Integer;
begin
if ValFloat(CODBCO_DEST.Text)<=0 then
   begin
   MessageDlg('Banco destino é obrigatório!',mtWarning,[mbOk],0);
   CODBCO_DEST.SetFocus;
   exit;
   end;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftstring,'CODBCO',ptinput);
DM1.Query2.SQL.Add('Update CADLDR set CODBCO=:CODBCO ');
if Trim(MDATAP.Text)<>'/  /' then
   begin
   DM1.Query2.Params.CreateParam(ftstring,'DATAP',ptinput);
   DM1.Query2.SQL.Add(', DATADP=:DATAP');
   end;
if Trim(MDATAREAL.Text)<>'/  /' then
   begin
   DM1.Query2.Params.CreateParam(ftstring,'DATAREAL',ptinput);
   DM1.Query2.SQL.Add(', DATAREAL=:DATAREAL');
   end;
if Trim(MDATAR.Text)<>'/  /' then
   begin
   DM1.Query2.Params.CreateParam(ftstring,'DATAREF',ptinput);
   DM1.Query2.SQL.Add(', DATAREF=:DATAREF');
   end;
if Trim(CODDEP.Text)<>'' then
   begin
   DM1.Query2.Params.CreateParam(ftstring,'CODDEP',ptinput);
   DM1.Query2.SQL.Add(', CODDEP=:CODDEP');
   end;
if Trim(CODCCU.Text)<>'' then
   begin
   DM1.Query2.Params.CreateParam(ftstring,'CODCC',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'NATDC',ptinput);
   DM1.Query2.SQL.Add(', CODCC=:CODCC '
                     +', NATDC=:NATDC ');
   end;
DM1.Query2.Params.CreateParam(ftstring,'CODEMP',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'CODLDR',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'LOTSEQ',ptinput);
DM1.Query2.SQL.Add(' where CODEMP=:CODEMP '
                  +' and LOTSEQ=:LOTSEQ '
                  +' and CODLDR=:CODLDR ');

Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Efetuando as Transferencias, aguarde...';
Frm_Agde.gb_progres.Visible:=True;
Frm_agde.Show;
mtot:=STG1.RowCount;

if Trim(MDATAP.Text)<>'/  /' then
   DM1.Query2.ParamByName('DATAP').AsDateTime:=StrToDate(MDATAP.Text);
if Trim(MDATAREAL.Text)<>'/  /' then
   DM1.Query2.ParamByName('DATAREAL').AsDateTime:=StrToDate(MDATAREAL.Text);
if Trim(MDATAR.Text)<>'/  /' then
   DM1.Query2.ParamByName('DATAREF').AsDateTime   :=StrToDate(MDATAR.Text);
if Trim(CODDEP.Text)<>'' then
   DM1.Query2.ParamByName('CODDEP').AsString    :=CODDEP.Text;
if Trim(CODCCU.Text)<>'' then
   begin
   DM1.Query2.ParamByName('CODCC').AsString     :=CODCCU.Text;
   DM1.Query2.ParamByName('NATDC').AsString     :=NATDC.Text;
   end;

for x:=1 to STG1.RowCount do
   begin
   Frm_Agde.Gauge1.Progress:=x*100 div mtot;
   verteclado(0);
   if Trim(STG1.Cells[0,x])<>'X' then
      Continue;
   fldr01gant(8,ValInt(STG1.cells[14,x]),ValFloat(STG1.cells[13,x]));
   DM1.Query2.Close;
   DM1.Query2.ParamByName('CODEMP').AsFloat:=ValFloat(STG1.cells[14,x]);
   DM1.Query2.ParamByName('CODLDR').AsFloat:=ValFloat(STG1.cells[13,x]);
   DM1.Query2.ParamByName('LOTSEQ').AsFloat:=ValFloat(STG1.cells[17,x]);
   DM1.Query2.ParamByName('CODBCO').AsFloat:=ValFloat(CODBCO_DEST.Text);
   DM1.Query2.ExecSQL;
   end;
Frm_Agde.Label1.Caption:='Concluido!';
verteclado(0);
STG1.RowCount:=2;
STG1.Rows[1].Clear;
bbTransf.Enabled:=False;
end;

procedure TFrm_TLDR.RG_TPCONTAExit(Sender: TObject);
begin
if RG_TPCONTA.ItemIndex=0 then
   begin
   lbl_real.Visible :=True;
   MDATAREAL.Visible:=True;
   end
else
   begin
   MDATAREAL.Text   :='/  /';
   lbl_real.Visible :=False;
   MDATAREAL.Visible:=False;
   end;
end;

procedure TFrm_TLDR.STG1DblClick(Sender: TObject);
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

procedure TFrm_TLDR.STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin

if (arow>0) and ((aCol=4) or (aCol=5) or (aCol=9) or (aCol=15))  then
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

procedure TFrm_TLDR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.

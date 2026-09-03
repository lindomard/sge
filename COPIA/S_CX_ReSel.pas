unit S_CX_ReSel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls,S_DM1,S_Bco, S_Dpto, S_CCu, Buttons,S_Cli,S_For,
  S_Ven,lerarq,func, ExtCtrls, Grids,S_Agde;

type
  TFrm_CX_ReSel = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    CODBCO: TEdit;
    NOMBCO: TEdit;
    NOMDEP: TEdit;
    CODDEP: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    CODCCU: TEdit;
    NOMCCU: TEdit;
    CODIGO: TEdit;
    CB_TIPO: TComboBox;
    Label5: TLabel;
    NOME: TEdit;
    MDT2: TMaskEdit;
    Label7: TLabel;
    MDT1: TMaskEdit;
    Label6: TLabel;
    bbAtualizar: TBitBtn;
    bbSair: TBitBtn;
    Label1: TLabel;
    MDATAREAL: TMaskEdit;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    bbConfirmar: TBitBtn;
    STG1: TStringGrid;
    bbSelecionar: TBitBtn;
    bbCancelar: TBitBtn;
    Label8: TLabel;
    Label9: TLabel;
    SP1: TSpeedButton;
    SP2: TSpeedButton;
    Label10: TLabel;
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure CODDEPExit(Sender: TObject);
    procedure CODCCUExit(Sender: TObject);
    procedure CODIGOExit(Sender: TObject);
    procedure CODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure MDATAREALExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure STG1DblClick(Sender: TObject);
    procedure bbSelecionarClick(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure bbConfirmarClick(Sender: TObject);
    procedure SP1Click(Sender: TObject);
    procedure SP2Click(Sender: TObject);
    procedure STG1GetEditMask(Sender: TObject; ACol, ARow: Integer;
      var Value: String);
    procedure STG1KeyPress(Sender: TObject; var Key: Char);
    procedure STG1Exit(Sender: TObject);
    procedure STG1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CX_ReSel: TFrm_CX_ReSel;
  mEditar:Boolean=false;
implementation

uses S_Tra, DB,S_Ldr, S_DM4;

{$R *.dfm}

procedure TFrm_CX_ReSel.CODBCOExit(Sender: TObject);
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

procedure TFrm_CX_ReSel.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_CX_ReSel',Key);
   if  trim(CODBCO.Text)<>'' then
       CODBCOExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_CX_ReSel.CODDEPExit(Sender: TObject);
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
   NOMDEP.Text:='Todos...';

end;

procedure TFrm_CX_ReSel.CODCCUExit(Sender: TObject);
begin
CODCCU.Text:=Trim(CODCCU.Text);

if Trim(CODCCU.Text)<>'' Then
   begin
   if not flqr1('CCNOME','CC','CADCCU','C','CCCODCCU',CODCCU.Text) then
      begin
      MessageDlg('Centro de Custo Não Cadastrado!',mtWarning,[mbOk],0);
      CODCCU.SetFocus;
      end
   else
      NOMCCU.Text:=DM1.Query1.Fields[0].AsString;
   end
else
   NOMCCU.Text:='Todos...';


end;

procedure TFrm_CX_ReSel.CODIGOExit(Sender: TObject);
begin
if Trim(CODIGO.Text)<>'' Then
   begin
   if CB_TIPO.Text='TR' then
      flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',CODIGO.Text)
   else if CB_TIPO.Text='FR' then
      flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODIGO.Text)
   else if CB_TIPO.Text='VD' then
      flqr1('VNOME','V','CADVEN','N','VCODVEN',CODIGO.Text)
   else
      flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODIGO.Text);
   if DM1.Query1.Eof then
      begin
      MessageDlg('Código Não Cadastrado!',mtWarning,[mbOk],0);
      CODIGO.SetFocus;
      end
   else
      NOME.Text:=DM1.Query1.Fields[0].AsString;
   end
else
   NOME.Text:='Todos...';

end;

procedure TFrm_CX_ReSel.CODIGOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
    if CB_TIPO.Text='FR' then
      begin
      CODIGO.Text:=fChamaFor(0,'frm_CX_ReSel',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      end
   else if CB_TIPO.Text='TR' then
      begin
      CODIGO.Text:=fChamaTra(0,'frm_CX_ReSel',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      end
   else if CB_TIPO.Text='VD' then
      begin
      CODIGO.Text :=fChamaVen(0,'frm_CX_ReSel',Key);
      end
   else
      begin
      CODIGO.Text:=fChamaCli(0,'Frm_CX_RelSel',key);
      key:=#0;
      end;
   key:=#0;
   end;

end;

procedure TFrm_CX_ReSel.MDT1Exit(Sender: TObject);
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

procedure TFrm_CX_ReSel.MDT2Exit(Sender: TObject);
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

procedure TFrm_CX_ReSel.bbAtualizarClick(Sender: TObject);
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

if (DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime>StrToDate(MDATAREAL.Text)) then
   begin
   fmensagem('Registro Não pode ser Alterado. Caixa Bloqueado para Movimento até: '
            +FormatDateTime(fdt2, DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime),0,['0'],0);
   exit;         
   end;


Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Show;
Frm_Agde.Label1.Caption:='Selecionando as Contas Previstas! aguarde...';
Frm_Agde.Update;

DM1.Tb_LDR.Close;
DM1.Tb_LDR.SQL.Clear;
DM1.Tb_LDR.SQL.Add('Select * FROM CADLDR where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntToStr(Codemp)+' and ')
                  +' (not CODCC is null or CODCC<>'+chr(39)+' '+chr(39)+')'
                  +' and (not CODDEP is null or CODDEP<>'+chr(39)+' '+chr(39)+')'
                  +' and (not CODBCO is null or CODBCO<>0)'
                  +' and (not CODIGO is null or CODIGO<>0)'
                  +' and ((DATAREAL is null) or (DATAREAL<='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+'))'
                  +iif(Trim(CB_TIPO.Text)<>'Todos','  and TIPO='+chr(39)+Trim(CB_TIPO.Text)+chr(39),'')
                  +iif(Trim(CODIGO.Text)<>'','  and CODIGO=0'+Trim(CODIGO.Text),''));
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
   DM1.Tb_LDR.SQL.Add(' and CODCC='+chr(39)+CODCCU.Text+chr(39));
   end;
if trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Tb_LDR.SQL.Add(' and DATADP>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT1.Text))+chr(39));
   end;
if trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Tb_LDR.SQL.Add(' and DATADP<='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT2.Text))+chr(39));
   end;

DM1.Tb_LDR.SQL.Add(' order by DATADP');
DM1.Tb_LDR.Open;
verteclado(0);
x:=0;
While not DM1.Tb_LDR.Eof do
   begin
   x:=x+1;
   STG1.RowCount:=x+1;
   STG1.Rows[x+1].Clear;
   stg1.Cells[00,x]:=' ';
   stg1.Cells[01,x]:=FormatDateTime(fdt2, DM1.Tb_LDRDATADP.Value);
   stg1.Cells[02,x]:=MDATAREAL.Text;
   stg1.Cells[03,x]:=FormatFloat(mcasas, DM1.Tb_LDRVALORP.Value);
   stg1.Cells[04,x]:=FormatFloat(mcasas, DM1.Tb_LDRVALORP.Value);
   stg1.Cells[05,x]:=DM1.Tb_LDRNUMDOC.Value;
   if Trim(DM1.Tb_LDRNUMDOC2.Value)<>'' then
      stg1.Cells[06,x]:=DM1.Tb_LDRNUMDOC2.Value
   else
      stg1.Cells[06,x]:=DM1.Tb_LDRNUMDOC.Value;
   stg1.Cells[07,x]:='X';
   stg1.Cells[08,x]:=DM1.Tb_LDRNATDC.Value;

   stg1.Cells[09,x]:=DM1.Tb_LDRTIPO.Value;
   stg1.Cells[10,x]:=DM1.Tb_LDRnome.Value;
   stg1.Cells[11,x]:=DM1.Tb_LDRDESCMV.Value;
   stg1.Cells[12,x]:=DM1.Tb_LDRCODBCO.AsString;
   stg1.Cells[13,x]:=DM1.Tb_LDRnombco.Value;
   stg1.Cells[14,x]:=DM1.Tb_LDRCODDEP.Value;
   stg1.Cells[15,x]:=DM1.Tb_LDRCODCC.Value;
   stg1.Cells[16,x]:=FormatDateTime(fdt2, DM1.Tb_LDRDATAREF.Value);

   stg1.Cells[17,x]:=DM1.Tb_LDRCODLDR.AsString;
   stg1.Cells[18,x]:=DM1.Tb_LDRCODEMP.AsString;
   stg1.Cells[19,x]:=DM1.Tb_LDRLOTSEQ.AsString;
   stg1.Cells[20,x]:=DM1.Tb_LDRORIGEM.AsString;

   DM1.Tb_LDR.Next;
   end;
if x>0 then
   meditar:=true;

Frm_Agde.Free;

end;

procedure TFrm_CX_ReSel.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CX_ReSel.MDATAREALExit(Sender: TObject);
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

procedure TFrm_CX_ReSel.FormCreate(Sender: TObject);
begin
meditar:=false;

//STG1.Cols[0].
STG1.RowCount:=2;
stg1.Cells[00,00]:='Sel';
STG1.ColWidths[00]:=30;
stg1.Cells[01,00]:='Dt.Prev.';
STG1.ColWidths[01]:=60;
stg1.Cells[02,00]:='Dt.Real.';
STG1.ColWidths[02]:=60;
stg1.Cells[03,00]:='Vlr.Previsto';
STG1.ColWidths[03]:=80;
stg1.Cells[04,00]:='Valor Real.';
STG1.ColWidths[04]:=80;
stg1.Cells[05,00]:='Num.Doc.';
STG1.ColWidths[05]:=80;
stg1.Cells[06,00]:='Doc.Rec.';
STG1.ColWidths[06]:=80;
stg1.Cells[07,00]:='Comp.';
STG1.ColWidths[07]:=30;
stg1.Cells[08,00]:='Nat.';
STG1.ColWidths[08]:=30;
stg1.Cells[09,00]:='Tp.';
STG1.ColWidths[09]:=30;
stg1.Cells[10,00]:='Sacado/Emitente';
STG1.ColWidths[10]:=200;
stg1.Cells[11,00]:='Descrição do Movimento';
STG1.ColWidths[11]:=200;
stg1.Cells[12,00]:='Cod.Bco.';
STG1.ColWidths[12]:=60;
stg1.Cells[13,00]:='Nome Banco';
STG1.ColWidths[13]:=200;
stg1.Cells[14,00]:='Depto.';
STG1.ColWidths[14]:=50;
stg1.Cells[15,00]:='Centro C.';
STG1.ColWidths[15]:=50;
stg1.Cells[16,00]:='Dt.Ref.';
STG1.ColWidths[16]:=60;
stg1.Cells[17,00]:='Código';
STG1.ColWidths[17]:=60;
stg1.Cells[18,00]:='Empresa';
STG1.ColWidths[18]:=60;
stg1.Cells[19,00]:='Lote Seq';
STG1.ColWidths[19]:=60;
stg1.Cells[20,00]:='Origem';
STG1.ColWidths[20]:=50;

STG1.Rows[1].Clear;
MDATAREAL.Text:=FormatDateTime(fdt2, pdatasis);
if DM4.Tb_ParGer02PG2DTBLOQCX.asDateTime>pDataNula then
   Frm_CX_ReSel.Caption:=Frm_ldr.Caption+'. Manipulação Bloqueada até: '+FormatDateTime(fdt2,DM4.Tb_ParGer02PG2DTBLOQCX.asDateTime)+'.';

end;

procedure TFrm_CX_ReSel.STG1DblClick(Sender: TObject);
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

procedure TFrm_CX_ReSel.bbSelecionarClick(Sender: TObject);
var
x:Integer;
begin
for x:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[1,x])='' then
      Continue;
   if ValInt(STG1.cells[20,x])=0 then
      STG1.Cells[0,x]:='X';
   end;

end;

procedure TFrm_CX_ReSel.bbCancelarClick(Sender: TObject);
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

procedure TFrm_CX_ReSel.STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin



if (arow>0) then
   begin
   if ((aCol=3) or (aCol=4)) then
      begin
    //Pega o texto da célula
      Texto := STG1.Cells[ACol, ARow];
    //Calcura largura e altura (em pontos) do texto
      LarguraTexto := STG1.Canvas.TextWidth(Texto);
      AlturaTexto := STG1.Canvas.TextHeight(Texto);
      if ValFloat(STG1.Cells[20,arow])>0 then
          begin
          STG1.Canvas.Brush.Color:=clRed;
          end;

    // Direita
       X := Rect.Right - LarguraTexto - 2;
    // Calcula a posição vertical do início do texto para
    //    que seja impresso no centro (verticalmente) da célula
      Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
       AlturaTexto div 2;
    //   Pinta o texto
      STG1.Canvas.TextRect(Rect, X, Y, Texto);
      end
   else
      begin
    //Pega o texto da célula
      Texto := STG1.Cells[ACol, ARow];
    //Calcura largura e altura (em pontos) do texto
      LarguraTexto := STG1.Canvas.TextWidth(Texto);
      AlturaTexto := STG1.Canvas.TextHeight(Texto);
      if ValFloat(STG1.Cells[20,arow])>0 then
         STG1.Canvas.Brush.Color:=clRed;

     STG1.Canvas.TextRect(Rect, Rect.Left, rect.Top,STG1.Cells[acol,arow]);
{
    // Direita
      X := Rect.Right - LarguraTexto - 2;
    // Calcula a posição vertical do início do texto para
    //    que seja impresso no centro (verticalmente) da célula
      Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
       AlturaTexto div 2;
    //   Pinta o texto
      STG1.Canvas.TextRect(Rect, X, Y, Texto);
}      end;

   end;


end;

procedure TFrm_CX_ReSel.bbConfirmarClick(Sender: TObject);
var
x: Integer;
mlid, mqtd: Integer;
begin
if (Trim(MDATAREAL.Text)='/  /')  then
   begin
   MessageDlg('Data da realização campo Obrigatório!',mtWarning,[mbOk],0);
   MDATAREAL.SetFocus;
   exit;
   end;
mlid:=0;
mqtd:=STG1.RowCount-1;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Show;
Frm_Agde.Label1.Caption:='Realizando os Movimentos Selecionados! aguarde...';
Frm_Agde.gb_progres.Visible:=true;
Frm_Agde.Update;
verteclado(0);
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftString,'VALORR',ptInput);
DM1.Query2.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query2.Params.CreateParam(ftString,'CODLDR',ptInput);
DM1.Query2.Params.CreateParam(ftString,'LOTSEQ',ptInput);
DM1.Query2.Params.CreateParam(ftString,'DATAREAL',ptInput);
DM1.Query2.Params.CreateParam(ftString,'USRALT',ptInput);
DM1.Query2.Params.CreateParam(ftString,'DTALT',ptInput);
DM1.Query2.Params.CreateParam(ftString,'HRALT',ptInput);
DM1.Query2.Params.CreateParam(ftString,'NUMDOC2',ptInput);
DM1.Query2.Params.CreateParam(ftString,'CODBCO',ptInput);
DM1.Query2.Params.CreateParam(ftString,'NOMBCO',ptInput);

DM1.Query2.SQL.Add('Update CADLDR set VALORR=:VALORR, '
                  +' DATAREAL=:DATAREAL, '
                  +' DTALT   =:DTALT, '
                  +' HRALT   =:HRALT, '
                  +' USRALT  =:USRALT, '
                  +' NUMDOC2 =:NUMDOC2, '
                  +' CODBCO  =:CODBCO, '
                  +' NOMBCO  =:NOMBCO '
                  +' where CODEMP=:CODEMP '
                  +' and   LOTSEQ=:LOTSEQ '
                  +' and   CODLDR=:CODLDR ');


for x:=1 to STG1.RowCount do
   begin
   mlid:=mlid+1;
   Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
   verteclado(0);
   if Trim(STG1.Cells[0,x])<>'X' then
      Continue;
   fldr01gant(8,ValInt(STG1.cells[14,x]),ValFloat(STG1.cells[13,x]));
   DM1.Query2.Close;
   DM1.Query2.ParamByName('CODEMP').AsString    :=Trim(STG1.Cells[18,x]);
   DM1.Query2.ParamByName('CODLDR').AsString    :=Trim(STG1.Cells[17,x]);
   DM1.Query2.ParamByName('LOTSEQ').AsString    :=Trim(STG1.Cells[19,x]);
   DM1.Query2.ParamByName('DATAREAL').AsDateTime:=StrToDate(STG1.Cells[02,x]);

   DM1.Query2.ParamByName('USRALT').AsFloat     :=codusr;
   DM1.Query2.ParamByName('DTALT').AsDateTime   :=date;
   DM1.Query2.ParamByName('HRALT').AsString     :=FormatDateTime(fhr, time);

   DM1.Query2.ParamByName('NUMDOC2').AsString   :=Trim(STG1.Cells[06,x]);
   DM1.Query2.ParamByName('VALORR').AsFloat     :=ValFloat(stg1.Cells[04,x]);
   DM1.Query2.ParamByName('CODBCO').AsFloat     :=ValFloat(stg1.Cells[12,x]);
   DM1.Query2.ParamByName('NOMBCO').AsString    :=stg1.Cells[13,x];
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query2.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      MessageDlg('Erro 548 ao realizar contas !',mtWarning,[mbOk],0);
      end;
   end;
Frm_Agde.Free;
STG1.RowCount:=2;
STG1.Rows[1].Clear;
if x>0 then
   meditar:=false;

MessageDlg('Concluido!',mtInformation,[mbOk],0);
end;

procedure TFrm_CX_ReSel.SP1Click(Sender: TObject);
begin
CODDEP.Text:=fChamaDeptoCX(0,'frm_CX_ReSel','');
if  trim(CODDEP.Text)<>'' then
    CODDEPExit(Self);
end;

procedure TFrm_CX_ReSel.SP2Click(Sender: TObject);
begin
CODCCU.Text:=fChamaCCU(0,'frm_CX_ReSel','');
if  trim(CODDEP.Text)<>'' then
    CODDEPExit(Self);
end;

procedure TFrm_CX_ReSel.STG1GetEditMask(Sender: TObject; ACol,
  ARow: Integer; var Value: String);
begin
if arow>0 then
   begin
   if acol=2 then
       Value :=  '00/00/0000;1 ';
   end;

end;

procedure TFrm_CX_ReSel.STG1KeyPress(Sender: TObject; var Key: Char);
begin
if not meditar then
   key:=#0
else if (STG1.Col<>2) or (valint(STG1.Cells[20,STG1.Row])>0) or (trim(STG1.Cells[00,STG1.Row])='') then
   begin
   MessageDlg('Esta Coluna Não Pode Ser Alterada!',mtWarning,[mbOk],0);
   key:=#0;
   exit;
   end

end;

procedure TFrm_CX_ReSel.STG1Exit(Sender: TObject);
var
Arow, Acol: Integer;
begin
Arow:=STG1.Row;
Acol:=STG1.Col;
if Trim(STG1.cells[00,STG1.Row])='' then
   exit;
if (STG1.Row>0) and (Trim(STG1.cells[00,STG1.Row])<>'') then
   begin
   if (STG1.col=2) then
      begin
      Try
         STG1.Cells[Acol,ARow]:=FormatdateTime(fdt2, StrToDate(STG1.Cells[Acol,ARow]));
      except
         MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
         STG1.SetFocus;
         abort;
         end;
      end;
   end

end;

procedure TFrm_CX_ReSel.STG1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
mlin, mcol: Integer;
begin
mlin:=STG1.Row;
mcol:=STG1.Col;
if trim(STG1.Cells[mcol,mlin])='' then
   exit;
if STG1.col=2 then
   begin
   Try
      STG1.Cells[mcol,mlin]:=FormatdateTime(fdt2, StrToDate(STG1.Cells[mcol,mlin]));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      abort;
      end;
   end;


end;

procedure TFrm_CX_ReSel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.

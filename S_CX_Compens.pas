unit S_CX_Compens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls,S_DM1,S_Bco, S_Dpto, S_CCu, Buttons,S_Cli,S_For,
  S_Ven,lerarq,func, ExtCtrls, Grids,S_Agde,S_Usr, S_SelEmp;

type
  TFrm_CX_Compens = class(TForm)
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
    BitBtn1: TBitBtn;
    bbSair: TBitBtn;
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
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure CODDEPExit(Sender: TObject);
    procedure CODCCUExit(Sender: TObject);
    procedure CODIGOExit(Sender: TObject);
    procedure CODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure STG1DblClick(Sender: TObject);
    procedure bbSelecionarClick(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure bbConfirmarClick(Sender: TObject);
    procedure SP1Click(Sender: TObject);
    procedure SP2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_CX_Compens: TFrm_CX_Compens;

implementation

uses S_Tra, DB,S_Ldr, S_C, S_DM4;

{$R *.dfm}

procedure TFrm_CX_Compens.CODBCOExit(Sender: TObject);
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

procedure TFrm_CX_Compens.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_CX_Compens',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_CX_Compens.CODDEPExit(Sender: TObject);
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

procedure TFrm_CX_Compens.CODCCUExit(Sender: TObject);
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

procedure TFrm_CX_Compens.CODIGOExit(Sender: TObject);
begin
if Trim(CODIGO.Text)<>'' Then
   begin
   if CB_TIPO.Text='US' then
      flqr1('NOMUSR','','CADUSR','N','CODUSR',CODIGO.Text)
   else if CB_TIPO.Text='TR' then
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

procedure TFrm_CX_Compens.CODIGOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
    if CB_TIPO.Text='FR' then
      begin
      CODIGO.Text:=fChamaFor(0,'frm_CX_Compens',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      end
   else if CB_TIPO.Text='TR' then
      begin
      CODIGO.Text:=fChamaTra(0,'frm_CX_Compens',Key);
      if trim(CODIGO.Text)<>''then
         CODIGOExit(Self);
      end
   else if CB_TIPO.Text='VD' then
      begin
      CODIGO.Text :=fChamaVen(0,'frm_CX_Compens',Key);
      if trim(CODIGO.Text)<>''then
         CODIGOExit(Self);
      end
   else if CB_TIPO.Text='US' then
      begin
      DM1.Tb_LDRCODIGO.Value:=ValFloat(fChamaUsr(0,'frm_CX_Compens',Key));
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      end

   else
      begin
      CODIGO.Text:=fChamaCli(0,'Frm_CX_Compens',key);
      key:=#0;
      end;
   key:=#0;
   end;

end;

procedure TFrm_CX_Compens.MDT1Exit(Sender: TObject);
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

procedure TFrm_CX_Compens.MDT2Exit(Sender: TObject);
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

procedure TFrm_CX_Compens.BitBtn1Click(Sender: TObject);
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
Frm_Agde.Label1.Caption:='Selecionando as Contas Previstas! aguarde...';
Frm_Agde.Update;
la_tabelas  :='';

la_Empresas:=fEmpresas_Selecionadas('CADLDR','CODEMP',Form_SelEmp.CLB_EMPRESAS);

DM1.Tb_LDR.Close;
DM1.Tb_LDR.SQL.Clear;
DM1.Tb_LDR.SQL.Add('Select * FROM CADLDR where STATUS<>9 '+iif(trim(la_Empresas)='','',' and '+la_Empresas)
                  +iif(Trim(CB_TIPO.Text)<>'Todos','  and TIPO='+chr(39)+Trim(CB_TIPO.Text)+chr(39),'')
                  +iif(Trim(CODIGO.Text)<>'','  and CODIGO=0'+Trim(CODIGO.Text),'')
                  +' and DATAREAL>'+chr(39)+formatdatetime(fdt, pdatanula)+chr(39)+' and not DATAREAL is null ' );
if Trim(MDT1.Text)<>'/  /' then
   DM1.Tb_Ldr.SQL.Add(' and DATAREAL>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Tb_Ldr.SQL.Add(' and DATAREAL<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
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
DM1.Tb_LDR.SQL.Add(' order by DATAREAL');
DM1.Tb_LDR.Open;
verteclado(0);
x:=0;
While not DM1.Tb_LDR.Eof do
   begin
   x:=x+1;
   STG1.RowCount:=x+1;
   STG1.Rows[x+1].Clear;
   if DM1.Tb_LDRCOMPENS.Value=0 then
      stg1.Cells[00,x]:='X'
   else
      stg1.Cells[00,x]:=' ';
   stg1.Cells[01,x]:=FormatDateTime(fdt2, DM1.Tb_LDRDATAREF.Value);
   stg1.Cells[02,x]:=FormatDateTime(fdt2, DM1.Tb_LDRDATADP.Value);
   stg1.Cells[03,x]:=FormatFloat(mcasas, DM1.Tb_LDRVALORP.Value);
   stg1.Cells[04,x]:=DM1.Tb_LDRNATDC.Value;
   stg1.Cells[05,x]:=DM1.Tb_LDRNUMDOC.Value;
   stg1.Cells[06,x]:=DM1.Tb_LDRTIPO.Value;
   stg1.Cells[07,x]:=DM1.Tb_LDRnome.Value;
   stg1.Cells[08,x]:=DM1.Tb_LDRDESCMV.Value;
   stg1.Cells[09,x]:=FormatFloat('00000', DM1.Tb_LDRCODBCO.Value);
   stg1.Cells[10,x]:=DM1.Tb_LDRnombco.Value;
   stg1.Cells[11,x]:=DM1.Tb_LDRCODDEP.Value;
   stg1.Cells[12,x]:=DM1.Tb_LDRCODCC.Value;
   stg1.Cells[13,x]:=DM1.Tb_LDRCODLDR.AsString;
   stg1.Cells[14,x]:=DM1.Tb_LDRCODEMP.AsString;
   stg1.Cells[15,x]:=stg1.Cells[00,x];
   stg1.Cells[16,x]:=DM1.Tb_LDRLOTSEQ.AsString;
   DM1.Tb_LDR.Next;
   end;

Frm_Agde.Free;

end;

procedure TFrm_CX_Compens.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CX_Compens.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

//STG1.Cols[0].
STG1.RowCount:=2;
stg1.Cells[00,00]:='Comp';
stg1.Cells[01,00]:='Dt.Ref.';
stg1.Cells[02,00]:='Dt.Prev.';
stg1.Cells[03,00]:='Vlr.Previsto';
stg1.Cells[04,00]:='Nat.';
stg1.Cells[05,00]:='Num.Doc.';
stg1.Cells[06,00]:='Tp.';
stg1.Cells[07,00]:='Sacado/Emitente';
stg1.Cells[08,00]:='Descrição do Movimento';
stg1.Cells[09,00]:='Cod.Bco.';
stg1.Cells[10,00]:='Nome Banco';
stg1.Cells[11,00]:='Depto.';
stg1.Cells[12,00]:='Centro C.';
stg1.Cells[13,00]:='Código';
stg1.Cells[14,00]:='Empresa';
stg1.Cells[15,00]:=' ';
stg1.Cells[16,00]:='Lot.Seq.';
STG1.Rows[1].Clear;
end;

procedure TFrm_CX_Compens.STG1DblClick(Sender: TObject);
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

procedure TFrm_CX_Compens.bbSelecionarClick(Sender: TObject);
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

procedure TFrm_CX_Compens.bbCancelarClick(Sender: TObject);
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

procedure TFrm_CX_Compens.STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var  
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin

if (arow>0) and (aCol=3) then
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

procedure TFrm_CX_Compens.bbConfirmarClick(Sender: TObject);
var
x: Integer;
mlid, mqtd: Integer;
begin
mlid:=0;
mqtd:=STG1.RowCount-1;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Show;
Frm_Agde.Label1.Caption:='Gravando no Banco de dados as alterações! aguarde...';
Frm_Agde.gb_progres.Visible:=true;
Frm_Agde.Update;
verteclado(0);
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query2.Params.CreateParam(ftString,'LOTSEQ',ptInput);
DM1.Query2.Params.CreateParam(ftString,'CODLDR',ptInput);
DM1.Query2.Params.CreateParam(ftString,'COMPENS',ptInput);
DM1.Query2.Params.CreateParam(ftString,'USRALT',ptInput);
DM1.Query2.Params.CreateParam(ftString,'DTCOMP',ptInput);
DM1.Query2.Params.CreateParam(ftString,'DTALT',ptInput);
DM1.Query2.Params.CreateParam(ftString,'HRALT',ptInput);
DM1.Query2.SQL.Add('Update CADLDR set COMPENS=:COMPENS, '
                  +' DTCOMP  =:DTCOMP, '
                  +' DTALT   =:DTALT, '
                  +' HRALT   =:HRALT, '
                  +' USRALT  =:USRALT '
                  +' where CODEMP=:CODEMP '
                  +' and   LOTSEQ=:LOTSEQ '
                  +' and   CODLDR=:CODLDR ');


for x:=1 to STG1.RowCount do
   begin
   mlid:=mlid+1;
   Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
   verteclado(0);
   if Trim(STG1.Cells[0,x])=Trim(STG1.Cells[15,x])  then
      Continue;
   fldr01gant(8,ValInt(STG1.cells[14,x]),ValFloat(STG1.cells[13,x]));
   DM1.Query2.Close;
   if Trim(STG1.Cells[0,x])='X'   then
      begin
      DM1.Query2.ParamByName('COMPENS').AsFloat :=0;
      DM1.Query2.ParamByName('DTCOMP').AsDateTime   :=date;
      end
   else
      begin
      DM1.Query2.ParamByName('COMPENS').AsFloat :=1;
      DM1.Query2.ParamByName('DTCOMP').AsDateTime   :=pdatanula;
   end;
   DM1.Query2.ParamByName('CODEMP').AsString    :=Trim(STG1.Cells[14,x]);
   DM1.Query2.ParamByName('LOTSEQ').AsString    :=Trim(STG1.Cells[16,x]);
   DM1.Query2.ParamByName('CODLDR').AsString    :=Trim(STG1.Cells[13,x]);
   DM1.Query2.ParamByName('USRALT').AsFloat     :=codusr;
   DM1.Query2.ParamByName('DTALT').AsDateTime   :=date;
   DM1.Query2.ParamByName('HRALT').AsString     :=FormatDateTime(fhr, time);
   DM1.Query2.ExecSQL;
   end;
Frm_Agde.Free;
STG1.RowCount:=2;
STG1.Rows[1].Clear;
MessageDlg('Concluido!',mtInformation,[mbOk],0);
end;

procedure TFrm_CX_Compens.SP1Click(Sender: TObject);
begin
CODDEP.Text:=fChamaDeptoCX(0,'frm_CX_Compens','');
if trim(CODDEP.Text)<>'' then
   CODDEPExit(Self);
end;

procedure TFrm_CX_Compens.SP2Click(Sender: TObject);
begin
CODCCU.Text:=fChamaCCU(0,'fRM_CX_Compens','');
if trim(CODCCU.Text)<>'' then
    CODCCUExit(Self);
end;

procedure TFrm_CX_Compens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_CX_Compens.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if Form_SelEmp.WindowState=wsMinimized then
      Form_SelEmp.WindowState:=wsNormal
   else
      Form_SelEmp.Show;
   end
else
   begin
   if pTcAtalho_me<>0 then
      begin
      if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
         begin
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;
end;

end.

unit S_TrocaMer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Buttons,S_DM1,db,dbtables,func,S_Pro,lerarq,s_lerarq_geral;

type
  TFrm_TrocaMer = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    STGSEMDEV: TStringGrid;
    STGSEMREM: TStringGrid;
    STGTRO: TStringGrid;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    CODENV: TEdit;
    Label2: TLabel;
    GRADEENV: TEdit;
    Label4: TLabel;
    UNDENV: TEdit;
    Label5: TLabel;
    DESCENV: TEdit;
    Label6: TLabel;
    CODREC: TEdit;
    Label7: TLabel;
    GRADEREC: TEdit;
    UNDREC: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    DESCREC: TEdit;
    ITEM_GRAVAR: TBitBtn;
    ITEM_EDITAR: TBitBtn;
    ITEM_CANCELAR: TBitBtn;
    bbExcItem: TBitBtn;
    bbSair: TBitBtn;
    Label8: TLabel;
    QUANTIDADE: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure STGSEMDEVDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure STGSEMREMDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure STGTRODrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure CODENVKeyPress(Sender: TObject; var Key: Char);
    procedure CODENVExit(Sender: TObject);
    procedure GRADEENVExit(Sender: TObject);
    procedure CODRECKeyPress(Sender: TObject; var Key: Char);
    procedure CODRECExit(Sender: TObject);
    procedure GRADERECExit(Sender: TObject);
    procedure QUANTIDADEExit(Sender: TObject);
    procedure ITEM_GRAVARClick(Sender: TObject);
    procedure ITEM_EDITARClick(Sender: TObject);
    procedure ITEM_CANCELARClick(Sender: TObject);
    procedure bbExcItemClick(Sender: TObject);
    procedure STGSEMDEVDblClick(Sender: TObject);
    procedure STGSEMREMDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function fRdevAtualiza(ptipo: Integer): Boolean;
  public
    { Public declarations }
  end;

var
  Frm_TrocaMer: TFrm_TrocaMer;
  mAchou: Boolean;
  mop   : Integer=0;
implementation

{$R *.dfm}

procedure TFrm_TrocaMer.FormActivate(Sender: TObject);
var
mqtd: Integer;
begin
fRdevAtualiza(0);
STGTRO.RowCount:=2;
STGTRO.Rows[1].Clear;
STGTRO.Cells[0,0]:='Código Enviado' ;
STGTRO.Cells[1,0]:='Grade';
STGTRO.Cells[2,0]:='Código Devolvido';
STGTRO.Cells[3,0]:='Grade';
STGTRO.Cells[4,0]:='Quantidade';
Frm_RDev.Tb_TrocaMer.First;
While not Frm_RDev.Tb_TrocaMer.Eof do
   begin
   mqtd:=STGTRO.RowCount;
   mqtd:=mqtd-1;
   STGTRO.Cells[0,mqtd]:=Frm_RDev.Tb_TrocaMerCODANT.AsString;
   STGTRO.Cells[1,mqtd]:=Frm_RDev.Tb_TrocaMerGRADEANT.Value;
   STGTRO.Cells[2,mqtd]:=Frm_RDev.Tb_TrocaMerCODNOV.AsString;
   STGTRO.Cells[3,mqtd]:=Frm_RDev.Tb_TrocaMerGRADEANT.Value;
   STGTRO.Cells[4,mqtd]:=FormatFloat(mcasqtd, Frm_RDev.Tb_TrocaMerQTD.Value);
   STGTRO.RowCount:=mqtd+2;
   STGTRO.Rows[mqtd+1].Clear;
   Frm_RDev.Tb_TrocaMer.Next;
   end;
end;

function TFrm_TrocaMer.fRdevAtualiza(ptipo: Integer): Boolean;
var
mqtd: Integer;
begin
STGSEMDEV.RowCount:=2;
STGSEMDEV.Rows[1].Clear;
STGSEMDEV.Cells[0,0]:='Código';
STGSEMDEV.Cells[1,0]:='Grade';
STGSEMDEV.Cells[2,0]:='Quantidade';
STGSEMDEV.Cells[3,0]:='Und';
STGSEMDEV.Cells[4,0]:='Descrição';
STGSEMDEV.Cells[5,0]:='Pço.Unitário';
STGSEMDEV.Cells[6,0]:='Valor Total';

STGSEMREM.RowCount:=2;
STGSEMREM.Rows[1].Clear;
STGSEMREM.Cells[0,0]:='Código';
STGSEMREM.Cells[1,0]:='Grade';
STGSEMREM.Cells[2,0]:='Quantidade';
STGSEMREM.Cells[3,0]:='Und';
STGSEMREM.Cells[4,0]:='Descrição';
STGSEMREM.Cells[5,0]:='Pço.Unitário';
STGSEMREM.Cells[6,0]:='Valor Total';

Frm_RDev.Qr_Ped.First;
While not Frm_RDev.Qr_Ped.Eof do
   begin
   if Frm_RDev.Qr_Pedsaldo.Value<0 then
      begin
      mqtd:=STGSEMREM.RowCount;
      mqtd:=mqtd-1;
      STGSEMREM.Cells[0,mqtd]:=Frm_RDev.Qr_PedCODPRO.AsString;
      STGSEMREM.Cells[1,mqtd]:=Frm_RDev.Qr_PedLOTE.Value;
      STGSEMREM.Cells[2,mqtd]:=FormatFloat(mcasqtd, Frm_RDev.Qr_Pedsaldo.Value*-1);
      STGSEMREM.Cells[3,mqtd]:=Frm_RDev.Qr_PedUNID.AsString;
      STGSEMREM.Cells[4,mqtd]:=Frm_RDev.Qr_PedNOMPRO.AsString;
      STGSEMREM.Cells[5,mqtd]:=Formatfloat(mcasaspu, Frm_RDev.Qr_PedPRECO.Value);
      STGSEMREM.Cells[6,mqtd]:=Formatfloat(mcasas,  (Frm_RDev.Qr_Pedsaldo.Value*-1)*Frm_RDev.Qr_PedPRECO.Value);
      STGSEMREM.RowCount:=mqtd+2;
      STGSEMREM.Rows[mqtd+1].Clear;
      end
   else if Frm_RDev.Qr_Pedsaldo.Value>0 then
      begin
      mqtd:=STGSEMDEV.RowCount;
      mqtd:=mqtd-1;
      STGSEMDEV.Cells[0,mqtd]:=Frm_RDev.Qr_PedCODPRO.AsString;
      STGSEMDEV.Cells[1,mqtd]:=Frm_RDev.Qr_PedLOTE.Value;
      STGSEMDEV.Cells[2,mqtd]:=FormatFloat(mcasqtd, Frm_RDev.Qr_Pedsaldo.Value);
      STGSEMDEV.Cells[3,mqtd]:=Frm_RDev.Qr_PedUNID.AsString;
      STGSEMDEV.Cells[4,mqtd]:=Frm_RDev.Qr_PedNOMPRO.AsString;
      STGSEMDEV.Cells[5,mqtd]:=Formatfloat(mcasaspu, Frm_RDev.Qr_PedPRECO.Value);
      STGSEMDEV.Cells[6,mqtd]:=Formatfloat(mcasas,  (Frm_RDev.Qr_Pedsaldo.Value)*Frm_RDev.Qr_PedPRECO.Value);
      STGSEMDEV.RowCount:=mqtd+2;
      STGSEMDEV.Rows[mqtd+1].Clear;
      end;
   Frm_RDev.Qr_Ped.Next;
   end;
end;
procedure TFrm_TrocaMer.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_TrocaMer.STGSEMDEVDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin

if ((aCol=2) or (Acol=5) or (Acol=6) ) then
   begin

//Pega o texto da célula
  Texto := STGSEMDEV.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STGSEMDEV.Canvas.TextWidth(Texto);
  AlturaTexto := STGSEMDEV.Canvas.TextHeight(Texto);

// Direita
    X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STGSEMDEV.Canvas.TextRect(Rect, X, Y, Texto);
  end;


end;

procedure TFrm_TrocaMer.STGSEMREMDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin

if ((aCol=2) or (Acol=5) or (Acol=6) ) then
   begin

//Pega o texto da célula
  Texto := STGSEMREM.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STGSEMREM.Canvas.TextWidth(Texto);
  AlturaTexto := STGSEMREM.Canvas.TextHeight(Texto);

// Direita
    X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STGSEMREM.Canvas.TextRect(Rect, X, Y, Texto);
  end;


end;

procedure TFrm_TrocaMer.STGTRODrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin

if ((aCol=2) or (Acol=5) or (Acol=6) ) then
   begin

//Pega o texto da célula
  Texto := STGTRO.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STGTRO.Canvas.TextWidth(Texto);
  AlturaTexto := STGTRO.Canvas.TextHeight(Texto);

// Direita
    X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STGTRO.Canvas.TextRect(Rect, X, Y, Texto);
  end;


end;

procedure TFrm_TrocaMer.CODENVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODENV.Text:=fChamaPro(0,'Frm_TrocaMer',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_TrocaMer.CODENVExit(Sender: TObject);
begin
if not (GRADEENV.Focused) then
   exit;
CODENV.Text:=fdeixanum(CODENV.Text);
if not flcadpro(1,0,0,Trim(CODENV.Text)) then
   begin
   FMensagem('Produto não cadastrado!',0,['0'],0);
   CODENV.setfocus;
   exit;
   end
else
   begin
   UNDENV.Text :=DM1.Tb_ProPDUND.Value;
   DESCENV.Text:=DM1.Tb_ProPDNOME.Value;
   end;

end;

procedure TFrm_TrocaMer.GRADEENVExit(Sender: TObject);
var
y: Integer;
begin
if (ITEM_CANCELAR.Focused) or (bbSair.Focused) OR (CODENV.Focused) then
   exit;

if not flcadlgc(0,1,0,Trim(CODENV.Text),GRADEENV.Text,'') then
   begin
   fMensagem('Grade Não cadastrada!',0,['0'],0);
   CODENV.SetFocus;
   exit;
   end;
mAchou:=False;
for y:=1 To STGSEMDEV.RowCount do
   begin
   if Trim(STGSEMDEV.Cells[0,y])='' then
      Continue;
   if (ValFloat(STGSEMDEV.Cells[0,y])=ValFloat(CODENV.Text)) and
      (Trim(STGSEMDEV.Cells[1,y])    =Trim(GRADEENV.Text)) then
      begin
      mAchou:=True;
      break;
      end;
   end;
if not mAchou then
   begin
   fMensagem('Não ha remessa para Este Produto!',0,['0'],0);
   CODENV.SetFocus;
   exit;
   end;
if (Trim(CODREC.Text)='') and (Trim(GRADEREC.Text)='') then
   begin
   for y:=1 to STGSEMREM.RowCount do
      begin
      if Trim(STGSEMREM.Cells[0,y])='' then
         Continue;
      if (ValFloat(STGSEMREM.Cells[0,y])=ValFloat(CODENV.Text)) then
         begin
         CODREC.Text  :=STGSEMREM.Cells[0,y];
         GRADEREC.Text:=STGSEMREM.Cells[1,y];
         if flcadpro(1,0,0,Trim(CODENV.Text)) then
            begin
            UNDREC.Text :=DM1.Tb_ProPDUND.Value;
            DESCREC.Text:=DM1.Tb_ProPDNOME.Value;
            if ValFloat(QUANTIDADE.Text)<=0 then
               begin
               QUANTIDADE.Text:=STGSEMREM.Cells[2,y];
               end;
            end;
         end;
      end;
   end;

end;

procedure TFrm_TrocaMer.CODRECKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODREC.Text:=fChamaPro(0,'Frm_TrocaMer',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_TrocaMer.CODRECExit(Sender: TObject);
begin
if (ITEM_CANCELAR.Focused) or (bbSair.Focused) or (GRADEENV.Focused) then
   exit;

CODREC.Text:=fdeixanum(CODREC.Text);
if not flcadpro(1,0,0,Trim(CODREC.Text)) then
   begin
   fMensagem('Produto não cadastrado!',0,['0'],0);
   CODREC.setfocus;
   exit;
   end
else
   begin
   UNDREC.Text :=DM1.Tb_ProPDUND.Value;
   DESCREC.Text:=DM1.Tb_ProPDNOME.Value;
   end;

end;

procedure TFrm_TrocaMer.GRADERECExit(Sender: TObject);
var
y: Integer;
begin
if (ITEM_CANCELAR.Focused) or (bbSair.Focused) or (CODREC.Focused) then
   exit;
if not flcadlgc(0,1,0,Trim(CODREC.Text),GRADEREC.Text,'') then
   begin
   fMensagem('Grade Nao cadastrada!',0,['0'],0);
   CODREC.SetFocus;
   exit;
   end;
mAchou:=False;
for y:=1 To STGSEMREM.RowCount do
   begin
   if Trim(STGSEMREM.Cells[0,y])='' then
      Continue;
   if (ValFloat(STGSEMREM.Cells[0,y])=ValFloat(CODREC.Text)) and
      (Trim(STGSEMREM.Cells[1,y])    =Trim(GRADEREC.Text)) then
      begin
      mAchou:=True;
      break;
      end;
   end;
if not mAchou then
   begin
   fMensagem('Não ha devolução para Este Produto!',0,['0'],0);
   CODREC.SetFocus;
   exit;
   end;


end;

procedure TFrm_TrocaMer.QUANTIDADEExit(Sender: TObject);
var
y: Integer;
mqtd: Real;
begin
if (ITEM_CANCELAR.Focused) or (bbSair.Focused) then
   exit;
QUANTIDADE.Text:=FormatFloat(mcasqtd, ValFloat(QUANTIDADE.Text));
mAchou:=False;
mqtd:=0;
for y:=1 To STGSEMREM.RowCount do
   begin
   if Trim(STGSEMREM.Cells[0,y])='' then
      Continue;
   if (ValFloat(STGSEMREM.Cells[0,y])=ValFloat(CODREC.Text)) and
      (Trim(STGSEMREM.Cells[1,y])    =Trim(GRADEREC.Text)) then
      begin
      mqtd:=mqtd+ValFloat(STGSEMREM.Cells[2,y]);
      end;
   end;
if (mop=1) and (ValFloat(STGTRO.Cells[0,STGTRO.row])=ValFloat(CODENV.Text)) and
   (Trim(STGTRO.Cells[1,STGTRO.row])=Trim(GRADEENV.Text))
   and (ValFloat(STGTRO.Cells[2,STGTRO.row])=ValFloat(CODREC.Text)) and
   (Trim(STGTRO.Cells[3,STGTRO.row])=Trim(GRADEREC.Text) ) then
   begin
   mqtd:=mqtd+ValFloat(STGTRO.Cells[4,STGTRO.Row]);
   end;
if ValFloat(QUANTIDADE.Text)>mqtd then
   begin
   fMensagem('So houve devolução de '+FormatFloat(mcasqtd, mqtd)+'. Inválido! ',0,['0'],0);
   QUANTIDADE.SetFocus;
   exit;
   end;



end;

procedure TFrm_TrocaMer.ITEM_GRAVARClick(Sender: TObject);
var
mqtd: Integer;
mquant: Real;
y: Integer;
begin
if not flcadlgc(0,1,0,Trim(CODENV.Text),GRADEENV.Text,'') then
   begin
   fMensagem('Grade enviada Não cadastrada!',0,['0'],0);
   CODENV.SetFocus;
   exit;
   end;
if not flcadlgc(0,1,0,Trim(CODREC.Text),GRADEREC.Text,'') then
   begin
   fMensagem('Grade Recebida Não cadastrada!',0,['0'],0);
   CODREC.SetFocus;
   exit;
   end;
if ValFloat(QUANTIDADE.Text)<=0 then
   begin
   fMensagem('Quantidade tem que ser um valor positivo!',0,['0'],0);
   QUANTIDADE.SetFocus;
   end;

mqtd:=0;
mquant:=0;
for y:=1 To STGSEMREM.RowCount do
   begin
   if Trim(STGSEMREM.Cells[0,y])='' then
      Continue;
   if (ValFloat(STGSEMREM.Cells[0,y])=ValFloat(CODREC.Text)) and
      (Trim(STGSEMREM.Cells[1,y])    =Trim(GRADEREC.Text)) then
      begin
      mquant:=mquant+ValFloat(STGSEMREM.Cells[2,y]);
      end;
   end;
if (mop=1) and (ValFloat(STGTRO.Cells[0,STGTRO.row])=ValFloat(CODENV.Text)) and
   (Trim(STGTRO.Cells[1,STGTRO.row])=Trim(GRADEENV.Text))
   and (ValFloat(STGTRO.Cells[2,STGTRO.row])=ValFloat(CODREC.Text)) and
   (Trim(STGTRO.Cells[3,STGTRO.row])=Trim(GRADEREC.Text) ) then
   begin
   mquant:=mquant+ValFloat(STGTRO.Cells[4,STGTRO.Row]);
   end;


if ValFloat(QUANTIDADE.Text)>mquant then
   begin
   fMensagem('So houve devolução de '+FormatFloat(mcasqtd, mquant)+'. Inválido! ',0,['0'],0);
   QUANTIDADE.SetFocus;
   exit;
   end;

if mop>0 then
   begin
   mqtd:=STGTRO.Row;
   mqtd:=mqtd+1;
   end
else
   begin
   mqtd:=STGTRO.RowCount;
   STGTRO.RowCount:=mqtd+1;
   STGTRO.Rows[mqtd+1].Clear;
   STGTRO.Rows[mqtd].Clear;
   end;
if mop=1 then
   begin
   Frm_RDev.Tb_TrocaMer.First;
   if Frm_RDev.Tb_TrocaMer.Locate('CODANT;GRADEANT;CODNOV;GRADENOV;QTD',
                                 vararrayof([fdeixanum(STGTRO.Cells[0,mqtd-1])
                                            ,STGTRO.cells[1,mqtd-1]
                                           ,fdeixanum(STGTRO.Cells[2,mqtd-1])
                                            ,STGTRO.cells[3,mqtd-1]
                                            ,ValFloat(STGTRO.Cells[4,mqtd-1])]),[]) then
      begin
      Frm_RDev.Tb_TrocaMer.Delete;
      end
   else
      begin
      fMensagem('Não foi encontrado o Registro de troca!',0,['0'],0);
      end;
   end;
STGTRO.Cells[00,mqtd-1]:=CODENV.Text;
STGTRO.Cells[01,mqtd-1]:=GRADEENV.Text;
STGTRO.Cells[02,mqtd-1]:=CODREC.Text;
STGTRO.Cells[03,mqtd-1]:=GRADEREC.Text;
STGTRO.Cells[04,mqtd-1]:=QUANTIDADE.Text;
Frm_RDev.Tb_TrocaMer.Append;
Frm_RDev.Tb_TrocaMerCODANT.Value  :=ValFloat(CODENV.Text);
Frm_RDev.Tb_TrocaMerGRADEANT.Value:=Trim(GRADEENV.Text);
Frm_RDev.Tb_TrocaMerCODNOV.Value  :=ValFloat(CODREC.Text);
Frm_RDev.Tb_TrocaMerGRADENOV.Value:=Trim(GRADEREC.Text);
Frm_RDev.Tb_TrocaMerQTD.Value     :=ValFloat(QUANTIDADE.Text);
Frm_RDev.Tb_TrocaMer.Post;
fRdevAtualiza(0);
if mqtd>4 then
   STGTRO.TopRow:=mqtd-3;
ITEM_CANCELAR.Click;
CODENV.SetFocus;



end;

procedure TFrm_TrocaMer.ITEM_EDITARClick(Sender: TObject);
begin

if (Trim(STGTRO.Cells[00,STGTRO.Row])='') or (STGTRO.Row=0) then
   begin
   fMensagem('Selecione um ítem para altera-lo!',0,['0'],0);
   end;
mop:=1;
CODENV.Text    :=STGTRO.Cells[00,STGTRO.Row];
GRADEENV.Text  :=STGTRO.Cells[01,STGTRO.Row];
CODREC.Text    :=STGTRO.Cells[02,STGTRO.Row];
GRADEREC.Text  :=STGTRO.Cells[03,STGTRO.Row];
QUANTIDADE.Text:=STGTRO.Cells[04,STGTRO.Row];

if flcadpro(1,0,0,Trim(CODENV.Text)) then
   begin
   UNDENV.Text :=DM1.Tb_ProPDUND.Value;
   DESCENV.Text:=DM1.Tb_ProPDNOME.Value;
   end;
if flcadpro(1,0,0,Trim(CODREC.Text)) then
   begin
   UNDREC.Text :=DM1.Tb_ProPDUND.Value;
   DESCREC.Text:=DM1.Tb_ProPDNOME.Value;
   end;
CODENV.Setfocus;

end;

procedure TFrm_TrocaMer.ITEM_CANCELARClick(Sender: TObject);
begin
CODENV.Text  :='';
GRADEENV.Text:='';
CODREC.Text  :='';
GRADEREC.Text:='';
QUANTIDADE.Text:='';
UNDENV.Text    :='';
DESCENV.Text   :='';
UNDREC.Text    :='';
DESCREC.Text   :='';
mop:=0;
end;

procedure TFrm_TrocaMer.bbExcItemClick(Sender: TObject);
var
x: Integer;
begin

if (STGTRO.Cells[0,STGTRO.Row]='') then
   exit;
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;
Frm_RDev.Tb_TrocaMer.First;
if Frm_RDev.Tb_TrocaMer.Locate('CODANT;GRADEANT;CODNOV;GRADENOV;QTD',
                              vararrayof([fdeixanum(STGTRO.Cells[0,STGTRO.Row])
                                       ,STGTRO.cells[1,STGTRO.Row]
                                        ,fdeixanum(STGTRO.Cells[2,STGTRO.Row])
                                         ,STGTRO.cells[3,STGTRO.Row]
                                         ,ValFloat(STGTRO.Cells[4,STGTRO.Row])]),[]) then
   begin
   Frm_RDev.Tb_TrocaMer.Delete;
   end
else
   begin
   fMensagem('Não foi encontrado o Registro de troca!',0,['0'],0);
   end;

if STGTRO.RowCount=2 then
   STGTRO.Rows[1].Clear
else
   begin
   for x:=STGTRO.Row to STGTRO.RowCount-2 do
      begin
      STGTRO.Cells[00,x]:=STGTRO.Cells[00,x+1];
      STGTRO.Cells[01,x]:=STGTRO.Cells[01,x+1];
      STGTRO.Cells[02,x]:=STGTRO.Cells[02,x+1];
      STGTRO.Cells[03,x]:=STGTRO.Cells[03,x+1];
      STGTRO.Cells[04,x]:=STGTRO.Cells[04,x+1];
      end;
   STGTRO.RowCount:=STGTRO.RowCount-1;
   end;
fRdevAtualiza(0);

end;

procedure TFrm_TrocaMer.STGSEMDEVDblClick(Sender: TObject);
begin
if fsonumero(STGSEMDEV.cells[00,STGSEMDEV.row])>0 then
   begin
   CODENV.Text:=STGSEMDEV.cells[00,STGSEMDEV.row];
   if trim(STGSEMDEV.cells[01,STGSEMDEV.row])<>'' then
      GRADEENV.Text:=STGSEMDEV.cells[01,STGSEMDEV.row];
   end;
if GRADEENV.Visible then
   GRADEENV.Setfocus
else
   CODENV.SetFocus;

CODENVExit(self);

end;

procedure TFrm_TrocaMer.STGSEMREMDblClick(Sender: TObject);
begin
if fsonumero(STGSEMREM.cells[00,STGSEMREM.row])>0 then
   begin
   CODREC.Text:=STGSEMREM.cells[00,STGSEMREM.row];
   if trim(STGSEMREM.cells[01,STGSEMREM.row])<>'' then
      GRADEREC.Text:=STGSEMREM.cells[01,STGSEMREM.row];
   end;
if GRADEREC.Visible then
   GRADEREC.Setfocus
else
   CODREC.SetFocus;

CODRECExit(self);

end;

procedure TFrm_TrocaMer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.

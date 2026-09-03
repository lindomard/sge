unit S_LCpr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls, Menus, Buttons,S_PFor01, S_DM1,
  S_For,S_FPagCr, s_impres,s_lerarq_geral;

type
  TFrm_LCpr = class(TForm)
    cab: TPanel;
    CODFOR: TEdit;
    Label1: TLabel;
    STG_ITEM: TStringGrid;
    Label2: TLabel;
    Label3: TLabel;
    CODPRO: TEdit;
    NOMPRO: TEdit;
    GRADE: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    QUANTIDADE: TEdit;
    NOMFOR: TEdit;
    cb_leitor: TCheckBox;
    PopupMenu1: TPopupMenu;
    GravaItem1: TMenuItem;
    DeletaItem1: TMenuItem;
    Panel1: TPanel;
    bb_confirmar: TBitBtn;
    bb_sair: TBitBtn;
    Label6: TLabel;
    CFOP: TEdit;
    Label7: TLabel;
    CFOPP: TEdit;
    nomcfo: TEdit;
    UFFOR: TEdit;
    PCOUNIT: TEdit;
    lbl_grade: TLabel;
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROExit(Sender: TObject);
    procedure GravaItem1Click(Sender: TObject);
    procedure bb_sairClick(Sender: TObject);
    procedure DeletaItem1Click(Sender: TObject);
    procedure QUANTIDADEExit(Sender: TObject);
    procedure bb_confirmarClick(Sender: TObject);
    procedure CFOPPKeyPress(Sender: TObject; var Key: Char);
    procedure CFOPPExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure GRADEExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  function Verificar_StringGrid(STG: TStringGrid; Coluna: Integer; Valor: String; Coluna2: Integer; Valor2: String):Integer;

var
  Frm_LCpr: TFrm_LCpr;
  n_linha: Integer = 0;

implementation

uses Func, lerarq, Math;

{$R *.dfm}

function Verificar_StringGrid(STG: TStringGrid; Coluna: Integer; Valor: String; Coluna2: Integer; Valor2: String):Integer;
var
 linha: Integer;
begin
Result:=-1;
for linha:=0 to STG.RowCount - 1 do
  begin
  if Coluna2=-1 then
    begin
    if STG.Cells[Coluna,linha]=Valor then
      begin
      Result:=linha;
      Exit;
      end;
    end
  else
    begin
    if (STG.Cells[Coluna,linha]=Valor) and (STG.Cells[Coluna2,linha]=Valor2)then
      begin
      Result:=linha;
      Exit;
      end;
    end;
  end;
end;

procedure TFrm_LCpr.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum(CODFOR.Text);
if not flcadfor(1,1,CODFOR.Text) then
   begin
   Fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
   CODFOR.SetFocus;
   exit;
   end;

NOMFOR.Text:=DM1.Tb_ForFRAZAO.Value;
UFFOR.Text :=DM1.Tb_ForFUF.Value;
end;

procedure TFrm_LCpr.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  CODFOR.Text:=fChamaFor(0,'frm_pfor0',key);
  if valfloat(CODFOR.Text)<>0 then
    CODFORExit(Self);
  key:=#0;
  end;
end;

procedure TFrm_LCpr.CODPROExit(Sender: TObject);
begin
if fsonumero(CODPRO.Text)>0 then
  begin
  if cb_leitor.checked then
    begin
    if (Valint(copy(mpseg,4,2))=2) and (Valint(copy(DM1.Tb_PargerPSEGMENTO.Value,4,2))>0)
       or (DM1.Tb_PargerPPCOGRA.Value=1) then  // Grades cores tamanhos
      begin
      if (DM1.Tb_PargerPPCOGRA.Value=1) then
        begin
        if (Length(CODPRO.Text)>9) then
          begin
          GRADE.Text  :=UpperCase(copy(CODPRO.Text,5,length(CODPRO.Text)-4));
          CODPRO.Text:=copy(CODPRO.Text,1,4);
          end;
        end
      else
        begin
        GRADE.Text:=copy(Trim(CODPRO.Text),length(Trim(CODPRO.Text))-1,2);
        CODPRO.Text:=copy(Trim(CODPRO.Text),1,length(Trim(CODPRO.Text))-2);
        end;
      end;
    end;
  flcadpro(IIF(cb_leitor.Checked,3,1),0,0,fdeixanum(CODPRO.Text));
  if DM1.Tb_Pro.IsEmpty then
    flcadpro(1,0,0,fdeixanum(CODPRO.Text));
  if not DM1.Tb_ProPDCODPRO.IsNull then
    begin
    CODPRO.Text    :=DM1.Tb_ProPDCODPRO.AsString;
    NOMPRO.Text    :=DM1.Tb_ProPDNOME.AsString;
    PCOUNIT.Text   :=FormatFloat(mcasaspu,IIF(DM1.Tb_ProPDUCPR.AsFloat>0,DM1.Tb_ProPDUCPR.AsFloat,1));
    CFOP.Text      :=CFOPP.Text;
    if cb_leitor.Checked=True then
      begin
      QUANTIDADE.Text:='1';
      GRADEExit(Self);
      GravaItem1Click(Self);
      end
    else
      begin
      if GRADE.Visible then
        GRADE.SetFocus
      else
        QUANTIDADE.SetFocus;
      end;
    end
  else
    begin
    fmensagem('Produto não encontrado',0,['0'],0);
    GRADE.Clear;
    CODPRO.SetFocus;
    end;
  end;
end;

procedure TFrm_LCpr.GravaItem1Click(Sender: TObject);
var
  OP: Integer;
begin
OP:=0;
n_linha:=Verificar_StringGrid(STG_ITEM,0,DM1.Tb_ProPDCODPRO.AsString,IIF(GRADE.Visible,2,-1),GRADE.Text);
if n_linha=-1 then
  begin
  n_linha:=0;
  if Trim(STG_ITEM.Cells[0,n_linha])='' then
    begin
    n_linha:=STG_ITEM.RowCount-1;
    end
  else
    begin
    n_linha:=STG_ITEM.RowCount;
    OP:=1;
    end;
  end;
STG_ITEM.Cells[0,n_linha]:=DM1.Tb_ProPDCODPRO.AsString;
STG_ITEM.Cells[1,n_linha]:=DM1.Tb_ProPDNOME.AsString;
STG_ITEM.Cells[2,n_linha]:=GRADE.Text;
STG_ITEM.Cells[3,n_linha]:=FloatToStr(ValFloat(STG_ITEM.Cells[3,n_linha])+ValFloat(QUANTIDADE.Text));
STG_ITEM.Cells[4,n_linha]:=PCOUNIT.Text;
STG_ITEM.Cells[5,n_linha]:=CFOP.Text;
if OP=1 then
  STG_ITEM.RowCount:=STG_ITEM.RowCount + 1;
CODPRO.Text:='';
NOMPRO.Text:='';
GRADE.Text:='';
QUANTIDADE.Text:='';
PCOUNIT.Text:='';
CODPRO.SetFocus;
CFOP.Text:='';
end;

procedure TFrm_LCpr.bb_sairClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_LCpr.DeletaItem1Click(Sender: TObject);
begin
n_linha:=STG_ITEM.Row;
if ValFloat(STG_ITEM.Cells[3,n_linha])>1 then
  begin
  STG_ITEM.Cells[3,n_linha]:=FloatToStr(ValFloat(STG_ITEM.Cells[3,n_linha])-1);
  end
else
  begin
  while n_linha < STG_ITEM.RowCount do
    begin
    STG_ITEM.Cells[0,n_linha]:=STG_ITEM.Cells[0,n_linha+1];
    STG_ITEM.Cells[1,n_linha]:=STG_ITEM.Cells[1,n_linha+1];
    STG_ITEM.Cells[2,n_linha]:=STG_ITEM.Cells[2,n_linha+1];
    STG_ITEM.Cells[3,n_linha]:=STG_ITEM.Cells[3,n_linha+1];
    STG_ITEM.Cells[4,n_linha]:=STG_ITEM.Cells[4,n_linha+1];
    STG_ITEM.Cells[5,n_linha]:=STG_ITEM.Cells[5,n_linha+1];    
    n_linha:=n_linha+1;
    end;
  STG_ITEM.RowCount:=STG_ITEM.RowCount-1;
  end;
end;

procedure TFrm_LCpr.QUANTIDADEExit(Sender: TObject);
begin
if not flcadcfo(1,1,CFOP.Text) then
   begin
   Fmensagem('CFOP não Cadastrado!',0,['0'],0);
   CFOP.SetFocus;
   exit;
   end;
GravaItem1Click(Self);
end;

procedure TFrm_LCpr.bb_confirmarClick(Sender: TObject);
begin
if (Frm_PFor01=nil)  then
   begin
   Application.createform(TFrm_PFor01,Frm_PFor01);
   Frm_PFor01.top:=0;
   end;

if Frm_PFor01.WindowState=WsMinimized then
   Frm_PFor01.WindowState:=WsNormal
else
   Frm_PFor01.Show;

with Frm_PFor01 do
  begin
  if DM1.Tb_EmpBLOQ.Value=1 then
     begin
     Fmensagem('Esta Empresa esta com os movimentos de vendas suspensos!',0,['0'],0);
     exit;
     end;
  if mOrigem_PF=4 then
     begin
     Fmensagem('Para Inclusão Favor Utilizar Cadastro=>Pedido de Compra=>Manutenção!',0,['0'],0);
     exit;
     end;
  moper:=4;
  BBLIMPAR.Click;

  DATAP.Text  :=FormatDateTime(fdt2, pdatasis);
  DATAENT.Text:=FormatDateTime(fdt2, pdatasis);
  DATAE.Text  :=FormatDateTime(fdt2, pdatasis);

  txt_MODO.Text    :='Inclusao';
  txt_fase.Text    :='Digitando';
  txt_Situacao.Text:='Digitando';

  BBINCLUIR.Enabled  :=False;
  BBLOCALIZAR.Enabled:=False;
  bbImportar.Enabled :=False;
  BBALTERAR.Enabled  :=False;
  BBEXCLUIR.Enabled  :=False;
  BBGRAVAR.Enabled   :=True;
  BBIMPRIMIR.Enabled :=False;
  bbVerNota.Enabled  :=False;
  bbExportar.Enabled  :=False;

  BBCALCULAR.Enabled :=True;
  BBCONFIRMAR.Enabled:=False;
  panel3.Enabled     :=True;
  panel5.Enabled     :=True;
  GroupBox2.Enabled  :=True;
  panel6.Enabled     :=True;
  panel7.Enabled     :=True;
  DATAP.SetFocus;
  moper:=0;

  Frm_PFor01.CODFOR.Text:=Frm_LCpr.CODFOR.text;
  Frm_PFor01.CODFORExit(Self);

  n_linha:=0;

  while n_linha < STG_ITEM.RowCount do
    begin
    Frm_PFor01.CODPRO.Text:=STG_ITEM.Cells[0,n_linha];
    Frm_PFor01.CODPROExit(Self);
    Frm_PFor01.LOTE.Text:=STG_ITEM.Cells[2,n_linha];
    Frm_PFor01.LOTEExit(Self);
    Frm_PFor01.QTD.Text:=STG_ITEM.Cells[3,n_linha];
    Frm_PFor01.QTDExit(Self);
    Frm_PFor01.PCOUNI.Text:=STG_ITEM.Cells[4,n_linha];
    Frm_PFor01.PCOUNIExit(Self);
    Frm_PFor01.CFOP.Text:=STG_ITEM.Cells[5,n_linha];
    Frm_PFor01.ITEM_GRAVARClick(Self);
    n_linha:=n_linha+1;
    end;
  end;
Close;
end;

procedure TFrm_LCpr.CFOPPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  CFOPP.Text:=fChamacfop(0,'frm_lcpr',key);
  key:=#0;
  end;
end;

procedure TFrm_LCpr.CFOPPExit(Sender: TObject);
begin
CFOPP.Text:=FormatFloat('0000',ValFloat(CFOPP.Text));
if ValFloat(CFOPP.Text)>4999 then
   begin
   if flcadcfo(1,1,CFOP.Text) then
      begin
      if DM1.Tb_CfoCFCFOENT.Value>0 then
         CFOPP.Text:=FormatFloat('0000',DM1.Tb_CfoCFCFOENT.Value);
      end;
   end;
CFOPP.Text:=FormatFloat('0000',ValFloat(CFOPP.Text));
if not flcadcfo(1,1,CFOPP.Text) then
   begin
   Fmensagem('CFOP não Cadastrado!',0,['0'],0);
   CFOPP.SetFocus;
   exit;
   end;
NOMCFO.Text:=DM1.Tb_CfoCFNOME.Value;
if UFFOR.Text=DM1.Tb_EmpUF.Value then
   begin
   if (CFOPP.Text[1]<>'1') and (CFOPP.Text[1]<>'5') then
      begin
      Fmensagem('CFOP de Entrada para o Mesmo estado o primeiro digito é 1'+#13
                +'favor corrigir!',0,['0'],0);
      CFOPP.SetFocus;
      exit;
      end;
   end
else
   begin
   if (CFOPP.Text[1]<>'2') and (CFOPP.Text[1]<>'6') then
      begin
      Fmensagem('CFOP de Entrada de Outro estado o primeiro digito é 2'+#13
                +'favor corrigir!',0,['0'],0);
      CFOPP.SetFocus;
      exit;
      end;
   end;
end;

procedure TFrm_LCpr.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if(key in ['A'..'Z']) or (key in ['a'..'z']) then
  begin
  CODPRO.Text:=fChamaPro(2,'frm_pfor01',key);
  if valfloat(CODPRO.Text)<>0 then
   CODPROExit(Self);
  Key:=#0;
  end;
end;

procedure TFrm_LCpr.GRADEExit(Sender: TObject);
begin
if valint(copy(mpseg,4,2))=2 then
  begin
  if not flcadlgc(0,1,0,CODPRO.Text,GRADE.Text,'') then
    begin
    fmensagem('Grade não Encontrada!',0,['0'],0);
    CODPRO.SetFocus;
    exit;
    end;
  end;
end;

procedure TFrm_LCpr.FormActivate(Sender: TObject);
begin
if (Valint(copy(mpseg,4,2))=2) and (Valint(copy(DM1.Tb_PargerPSEGMENTO.Value,4,2))>0)
   or (DM1.Tb_PargerPPCOGRA.Value=1) then  // Grades cores tamanhos
  begin
  GRADE.Visible:=True;
  lbl_grade.Visible:=True;
  NOMPRO.Width:=209;
  end
else
  begin
  GRADE.Visible:=False;
  lbl_grade.Visible:=False;
  NOMPRO.Width:=251;
  end;
end;

end.

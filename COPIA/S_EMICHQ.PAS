unit S_EmiChq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Buttons, S_DM1,Func,S_Impres,lerarq,Rdprint,S_Bco;

type
  TFrm_EmiChq = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    CBxVisado: TCheckBox;
    CBxCruzado: TCheckBox;
    CODBCO: TEdit;
    NOMINAL: TEdit;
    NUMCHQ: TEdit;
    SERCHQ: TEdit;
    VALCHQ: TEdit;
    UTIL1: TEdit;
    UTIL2: TEdit;
    UTIL3: TEdit;
    UTIL4: TEdit;
    UTIL5: TEdit;
    UTIL6: TEdit;
    UTIL7: TEdit;
    UTIL8: TEdit;
    UTIL9: TEdit;
    MDTDEP: TMaskEdit;
    ASSINADO: TEdit;
    BBnImpChq: TBitBtn;
    BBnImpCop: TBitBtn;
    BBnFechar: TBitBtn;
    NOMBCO: TEdit;
    CB_COMP_AST: TCheckBox;
    procedure NUMCHQKeyPress(Sender: TObject; var Key: Char);
    procedure VALCHQKeyPress(Sender: TObject; var Key: Char);
    procedure BBnFecharClick(Sender: TObject);
    procedure BBnImpChqClick(Sender: TObject);
    procedure BBnImpCopClick(Sender: TObject);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure VALCHQExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres: TFrm_Impres;
  end;

var
  Frm_EmiChq: TFrm_EmiChq;
  mlin: Integer;
implementation

{$R *.DFM}

procedure TFrm_EmiChq.NUMCHQKeyPress(Sender: TObject; var Key: Char);
begin
   if not (Key in ['0'..'9']) and (key<>#8) then Key:=#0;
end;

procedure TFrm_EmiChq.VALCHQKeyPress(Sender: TObject; var Key: Char);
begin
   if Key in ['.',','] then Key:=DecimalSeparator
   else if not (Key in ['0'..'9']) and (key<>#8) then Key:=#0;
end;

procedure TFrm_EmiChq.BBnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TFrm_EmiChq.BBnImpChqClick(Sender: TObject);
var
  mlinext1, mlinext2: string;
  mvalchq: real;
begin
   // Impressão do Cheque
if not flcadbco(1,0,0,Trim(CODBCO.Text)) then
   begin
   fmensagem('Código de Banco Inexistente!',0,['0'],0);
   CODBCO.SetFocus;
   Exit;
end;
mvalchq:=StrToFloat('0'+ValReal(VALCHQ.Text));
if mvalchq<=0 then
   begin
   fmensagem('Informe o Valor do Cheque!',0,['0'],0);
   VALCHQ.SetFocus;
   Exit;
   end;
if (DM1.Tb_BcoBCCH_QTDLC.Value<=0) or (DM1.Tb_BcoBCCH_QTDLC.IsNull) then
   begin
   fmensagem('Tabulação não Encontrada! Entre em cadastro bancos e tabule',0,['0'],0);
   exit;
   end;
mlinext1:=UpperCase(Extenso(mvalchq));
mlinext2:=copy(mlinext1,DM1.Tb_BcoBCCH_EXL1T.AsInteger+1,DM1.Tb_BcoBCCH_EXL2T.AsInteger);
mlinext1:=copy(mlinext1,01,DM1.Tb_BcoBCCH_EXL1T.AsInteger);
if CB_COMP_AST.Checked then
   begin
   mlinext1:=insere2(mlinext1,'*',DM1.Tb_BcoBCCH_EXL1T.AsInteger);
   mlinext2:=insere2(mlinext2,'*',DM1.Tb_BcoBCCH_EXL2T.AsInteger);
   if DM1.Tb_BcoBCCH_NOMTAM.AsInteger>0 then
      begin
      if trim(NOMINAL.Text)<>'' then
         NOMINAL.Text:=Insere2(NOMINAL.Text,'*',DM1.Tb_BcoBCCH_NOMTAM.AsInteger);
      end;
   end;

testeform := TFrm_EmiChq(FindGlobalComponent('form_impres'));
if (testeform=nil)  then
   Application.createform(TFrm_impres,Form_impres);


Form_impres.RDprint1.TamanhoQteLinhas:=DM1.Tb_BcoBCCH_QTDLC.AsInteger;
if DM1.Tb_BcoBCCH_QTDLP.Value=0 then
   Form_impres.RDprint1.TamanhoQteLPP:=Oito
else
   Form_impres.RDprint1.TamanhoQteLPP:=Seis;
Form_impres.RDprint1.FonteTamanhoPadrao:=S17cpp;
Form_impres.RDprint1.TamanhoQteColunas:=200;


Form_impres.Rdprint1.Abrir;
Form_impres.Rdprint1.Imp(DM1.Tb_BcoBCCH_VL.AsInteger,DM1.Tb_BcoBCCH_VC.AsInteger,
             FormatFloat('#,##0.00',mvalchq));
Form_impres.Rdprint1.Imp(DM1.Tb_BcoBCCH_EXL1L.AsInteger,DM1.Tb_BcoBCCH_EXL1C.AsInteger,
             mlinext1);
Form_impres.Rdprint1.Imp(DM1.Tb_BcoBCCH_EXL2L.AsInteger,DM1.Tb_BcoBCCH_EXL2C.AsInteger,
             mlinext2);
Form_impres.Rdprint1.Imp(DM1.Tb_BcoBCCH_NOML.AsInteger,DM1.Tb_BcoBCCH_NOMC.AsInteger,
             NOMINAL.Text);
Form_impres.Rdprint1.Imp(DM1.Tb_BcoBCCH_CIDL.AsInteger,DM1.Tb_BcoBCCH_CIDC.AsInteger,
             Trim(DM1.Tb_EmpCIDADE.Value)+'-'+DM1.Tb_EmpUF.Value);
Form_impres.Rdprint1.Imp(DM1.Tb_BcoBCCH_DIAL.AsInteger,DM1.Tb_BcoBCCH_DIAC.AsInteger,
             FormatDateTime('dd',Date));
Form_impres.Rdprint1.Imp(DM1.Tb_BcoBCCH_MESL.AsInteger,DM1.Tb_BcoBCCH_MESC.AsInteger,
             FormatDateTime('mmmm',Date));
Form_impres.Rdprint1.Imp(DM1.Tb_BcoBCCH_ANOL.AsInteger,DM1.Tb_BcoBCCH_ANOC.AsInteger,
             FormatDateTime(DM1.Tb_BcoBCCH_FORM.AsString,Date));
{Form_impres.Rdprint1.Imp(DM1.Tb_BcoBCCH_ANOL.AsInteger,DM1.Tb_BcoBCCH_ANOC.AsInteger,
             FormatDateTime('yy',Date));}
mlin:=DM1.Tb_BcoBCCH_ANOL.AsInteger;
if Trim(MDTDEP.Text)<>'/  /' then
   begin
   Form_impres.Rdprint1.Imp(DM1.Tb_BcoBCCH_BOMPL.AsInteger,DM1.Tb_BcoBCCH_BOMPC.AsInteger,
                'BOM P/ '+Trim(MDTDEP.Text));
   mlin:=DM1.Tb_BcoBCCH_BOMPL.AsInteger+4;
   end;
if Form_impres.Rdprint1.Setup then
   Form_impres.Rdprint1.Fechar;
form_impres.free;
form_impres:=nil;

end;

procedure TFrm_EmiChq.BBnImpCopClick(Sender: TObject);
var
  mlinext1, mlinext2: string;
  mvalchq: real;
  mlin: integer;
begin
// Impressão da Cópia
if not flcadbco(1,0,0,Trim(CODBCO.Text)) then
   begin
   fmensagem('Código de Banco Inexistente!',0,['0'],0);
   CODBCO.SetFocus;
   Exit;
   end;
mvalchq:=StrToFloat('0'+ValReal(VALCHQ.Text));
if mvalchq<=0 then
   begin
   fmensagem('Informe o Valor do Cheque!',0,['0'],0);
   VALCHQ.SetFocus;
   Exit;
   end;
if (DM1.Tb_BcoBCCH_QTDLC.Value<=0) or (DM1.Tb_BcoBCCH_QTDLC.IsNull) then
   begin
   fmensagem('Tabulação não Encontrada! Entre em cadastro bancos e tabule',0,['0'],0);
   exit;
   end;
testeform := TFrm_EmiChq(FindGlobalComponent('form_impres'));
if (testeform=nil)  then
   Application.createform(TFrm_impres,Form_impres);


mlinext1:=UpperCase(Extenso(mvalchq));
mlinext2:=copy(mlinext1,DM1.Tb_BcoBCCH_EXL1T.AsInteger+1,DM1.Tb_BcoBCCH_EXL2T.AsInteger);
mlinext1:=copy(mlinext1,01,DM1.Tb_BcoBCCH_EXL1T.AsInteger);
Form_impres.RDprint1.TamanhoQteLinhas:=66;
if DM1.Tb_BcoBCCH_QTDLP.Value=0 then
   Form_impres.RDprint1.TamanhoQteLPP:=Oito
else
   Form_impres.RDprint1.TamanhoQteLPP:=Seis;
Form_impres.RDprint1.FonteTamanhoPadrao:=S17cpp;
Form_impres.RDprint1.TamanhoQteColunas:=200;
Form_impres.Rdprint1.Abrir;
Form_impres.Rdprint1.Imp(DM1.Tb_BcoBCCH_VL.AsInteger,DM1.Tb_BcoBCCH_VC.AsInteger,
             FormatFloat('#,##0.00',mvalchq));
Form_impres.Rdprint1.Imp(DM1.Tb_BcoBCCH_EXL1L.AsInteger,DM1.Tb_BcoBCCH_EXL1C.AsInteger,
             mlinext1);
Form_impres.Rdprint1.Imp(DM1.Tb_BcoBCCH_EXL2L.AsInteger,DM1.Tb_BcoBCCH_EXL2C.AsInteger,
             mlinext2);
Form_impres.Rdprint1.Imp(DM1.Tb_BcoBCCH_NOML.AsInteger,DM1.Tb_BcoBCCH_NOMC.AsInteger,
             NOMINAL.Text);
Form_impres.Rdprint1.Imp(DM1.Tb_BcoBCCH_CIDL.AsInteger,DM1.Tb_BcoBCCH_CIDC.AsInteger,
             Trim(DM1.Tb_EmpCIDADE.Value)+'-'+DM1.Tb_EmpUF.Value);
Form_impres.Rdprint1.Imp(DM1.Tb_BcoBCCH_DIAL.AsInteger,DM1.Tb_BcoBCCH_DIAC.AsInteger,
             FormatDateTime('dd',Date));
Form_impres.Rdprint1.Imp(DM1.Tb_BcoBCCH_MESL.AsInteger,DM1.Tb_BcoBCCH_MESC.AsInteger,
            FormatDateTime('mmmm',Date));
Form_impres.Rdprint1.Imp(DM1.Tb_BcoBCCH_ANOL.AsInteger,DM1.Tb_BcoBCCH_ANOC.AsInteger,
             FormatDateTime('yy',Date));
mlin:=DM1.Tb_BcoBCCH_ANOL.AsInteger;
if Trim(MDTDEP.Text)<>'/  /' then
   begin
   Form_impres.Rdprint1.Imp(DM1.Tb_BcoBCCH_BOMPL.AsInteger,DM1.Tb_BcoBCCH_BOMPC.AsInteger,
                'BOM P/ '+Trim(MDTDEP.Text));
   mlin:=DM1.Tb_BcoBCCH_BOMPL.AsInteger+4;
   end;
mlin:=mlin+4;
Form_impres.Rdprint1.Imp(mlin,01,'Copia do Cheque Numero..: '
            +FormatFloat('000000',StrToInt('0'+NUMCHQ.Text))
            +'  Serie..: '+SERCHQ.Text);
mlin:=mlin+2;
Form_impres.Rdprint1.Imp(mlin,01,'Banco......: '
            +FormatFloat('000',StrToInt('0'+CODBCO.Text))
            +' - '+DM1.Tb_BcoBCBANCO.Value);
mlin:=mlin+1;
Form_impres.Rdprint1.Imp(mlin,01,'Utilizado..: '+UTIL1.Text);
mlin:=mlin+1;
Form_impres.Rdprint1.Imp(mlin,14,UTIL2.Text);
mlin:=mlin+1;
Form_impres.Rdprint1.Imp(mlin,14,UTIL3.Text);
mlin:=mlin+1;
Form_impres.Rdprint1.Imp(mlin,14,UTIL4.Text);
mlin:=mlin+1;
Form_impres.Rdprint1.Imp(mlin,14,UTIL5.Text);
mlin:=mlin+1;
Form_impres.Rdprint1.Imp(mlin,14,UTIL6.Text);
mlin:=mlin+1;
Form_impres.Rdprint1.Imp(mlin,14,UTIL7.Text);
mlin:=mlin+1;
Form_impres.Rdprint1.Imp(mlin,14,UTIL8.Text);
mlin:=mlin+1;
Form_impres.Rdprint1.Imp(mlin,14,UTIL9.Text);
mlin:=mlin+2;
Form_impres.Rdprint1.Imp(mlin,01,'Assinado...: '+ASSINADO.Text);
mlin:=mlin+1;
Form_impres.Rdprint1.Imp(mlin,01,'Visado ['+IIF(CBxVisado.Checked,'X',' ')+']'
            +'        Cruzado ['+IIF(CBxCruzado.Checked,'X',' ')+']');
if Form_impres.Rdprint1.Setup then
   Form_impres.Rdprint1.Fechar;
form_impres.free;
form_impres:=nil;
end;

procedure TFrm_EmiChq.CODBCOExit(Sender: TObject);
begin
if not flcadbco(1,0,0,Trim(CODBCO.Text)) then
   begin
   fmensagem('Banco não Cadastrado!',0,['0'],0);
   CODBCO.SetFocus;
   exit;
   end;
NOMBCO.Text:=DM1.Tb_BcoBCBANCO.Value;
end;

procedure TFrm_EmiChq.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_EmiChq',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(self);
   key:=#0;
   end;
end;

procedure TFrm_EmiChq.VALCHQExit(Sender: TObject);
begin
VALCHQ.Text:=FormatFloat(mcasas, ValFloat(VALCHQ.Text));
if ValFloat(VALCHQ.Text)>999999999 then
   begin
   fmensagem('Valor muito Grande para este Campo!',0,['0'],0);
   VALCHQ.SetFocus;
   end;
end;

procedure TFrm_EmiChq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

end.

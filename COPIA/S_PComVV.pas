unit S_PComVV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, Grids, func, db, dbtables, S_DM1,
  CheckLst, S_SelEmp;

type
  TFrm_PComVV = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    STG_PED: TStringGrid;
    SAIR: TBitBtn;
    SELECIONAR: TBitBtn;
    DESMARCAR: TBitBtn;
    Qr_Ped: TQuery;
    Qr_PedP1CODEMP: TFloatField;
    Qr_PedP1CHAVE: TFloatField;
    Qr_PedP1ORDEM: TFloatField;
    Qr_PedP1TOTALL: TFloatField;
    Qr_PedP1COMIS: TFloatField;
    Qr_PedP1TIPO: TFloatField;
    Qr_PedP1ICMSR: TFloatField;
    Qr_PedP1VALFRE: TFloatField;
    Qr_PedP1SEMCOM: TFloatField;
    Qr_PedP1VLRACRE: TFloatField;
    Qr_PedP1COMIST: TFloatField;
    Qr_PedP1COMISS: TFloatField;
    Qr_PedP1CODVEN: TFloatField;
    Qr_PedP1CODV02: TFloatField;
    Qr_PedP1CODV03: TFloatField;
    Qr_PedP1COMV02: TFloatField;
    Qr_PedP1COMV03: TFloatField;
    Qr_PedP1CODCLI: TFloatField;
    Qr_PedCRAZAO: TStringField;
    Qr_PedP1LOTSEQ: TFloatField;
    Qr_PedP1DATDOC: TDateTimeField;
    Qr_PedP1COMASSE: TFloatField;
    Qr_PedP1CODASSE: TFloatField;
    Qr_PedP1DESCFIN: TFloatField;
    mdt1: TMaskEdit;
    Label2: TLabel;
    mdt2: TMaskEdit;
    lbl_codcli: TLabel;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    Label3: TLabel;
    chave_ini: TEdit;
    Label4: TLabel;
    chave_fin: TEdit;
    Label5: TLabel;
    edt_valor: TEdit;
    Label12: TLabel;
    RG_TIPOPED: TCheckListBox;
    CB_DATAENTPEDIDO: TCheckBox;
    Qr_Pedvalores_adicionais: TFloatField;
    procedure SAIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SELECIONARClick(Sender: TObject);
    procedure DESMARCARClick(Sender: TObject);
    procedure STG_PEDDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure STG_PEDDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure mdt1Exit(Sender: TObject);
    procedure mdt2Exit(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chave_iniExit(Sender: TObject);
    procedure chave_finExit(Sender: TObject);
    procedure edt_valorExit(Sender: TObject);
    procedure edt_valorKeyPress(Sender: TObject; var Key: Char);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    Form_SelEmp: TFrm_SelEmp;
    mDataPesq: string;
    mDeduzirAcrescimosRateado: boolean;
    { Public declarations }
  end;

var
  Frm_PComVV  : TFrm_PComVV;
  mcolc_sel    : Integer=00;
  mcolc_chave  : Integer=01;
  mcolc_ordem  : Integer=02;
  mcolc_tipdoc : Integer=03;
  mcolc_dtemis : Integer=04;
  mcolc_nomsac : Integer=05;
  mcolc_valor  : Integer=06;
  mcolc_comis  : Integer=07;
  mcolc_codemp : Integer=08;
  mcolc_valfre : Integer=09;
  mcolc_icmsret: Integer=10;
  mcolc_semcom : Integer=11;
  mcolc_valacre: Integer=12;
  mcolc_comtlv : Integer=13;
  mcolc_comsup : Integer=14;
  mcolc_codcli : Integer=15;
  mcolc_lotseq : Integer=16;
  mcolc_comasse: Integer=17;
  mcolc_descfin: Integer=18;


implementation

uses S_ComVV, lerarq, func_excecoes;

{$R *.dfm}

procedure TFrm_PComVV.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_PComVV.FormCreate(Sender: TObject);
var
x: Integer;
begin
    mDataPesq:='P1DATDOC';

STG_PED.RowCount:=2;
STG_PED.Cells[mcolc_sel,0]    :='Sel';
STG_PED.Cells[mcolc_chave,0]  :='Chave';
STG_PED.Cells[mcolc_ordem,0]  :='Ordem';
STG_PED.Cells[mcolc_tipdoc,0] :='Tipo Doc';
STG_PED.Cells[mcolc_dtemis,0] :='Dt.Emissão';
STG_PED.Cells[mcolc_nomsac,0] :='Sacado';
STG_PED.Cells[mcolc_valor,0]  :='Valor';
STG_PED.Cells[mcolc_comis,0]  :='Comissao';
STG_PED.Cells[mcolc_codemp,0] :='Empresa';
STG_PED.Cells[mcolc_valfre,0] :='Valor Frete';
STG_PED.Cells[mcolc_icmsret,0]:='Icms Retido';
STG_PED.Cells[mcolc_semcom,0] :='Sem Comissão';
STG_PED.Cells[mcolc_valacre,0]:='Vrl.Acres';
STG_PED.Cells[mcolc_comtlv,0] :='Comis.Telev';
STG_PED.Cells[mcolc_comsup,0] :='Comis.Super';
STG_PED.Cells[mcolc_codcli,0] :='Cód.Cliente';
STG_PED.Cells[mcolc_lotseq,0] :='Lot.Seq';
STG_PED.Cells[mcolc_comasse,0]:='Comis.Assessor';

STG_PED.Rows[1].Clear;
RG_TIPOPED.Items.Clear;
for x:=1 to high(tab_tped) do
   begin
   RG_TIPOPED.Items.Add(tab_tped[x]);
   end;
RG_TIPOPED.Checked[0]:=true;

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

end;

procedure TFrm_PComVV.BitBtn1Click(Sender: TObject);
var
x: integer;
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

Qr_Ped.Close;
Qr_Ped.SQL.Clear;
Qr_Ped.SQL.add('Select P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM,P1DATDOC, '
              +'           P1TOTALL,P1COMIS,P1TIPO, '
              +'           P1ICMSR, '
              +'           P1VALFRE, '
              +'           P1SEMCOM, '
              +'           P1VLRACRE, '
              +'           P1COMIST, '
              +'           P1COMISS, '
              +'           P1COMASSE, '
              +'           P1CODVEN,P1CODV02,P1CODV03,P1CODASSE, '
              +'           P1COMV02,P1COMV03, '
              +'           P1CODCLI,CRAZAO '
              +'           ,P1DESCFIN ');
if mDeduzirAcrescimosRateado then
   begin
   Qr_Ped.sql.add(',nvl( (select sum(P1AE_VALOR) as Total from CADP01_ADDEXT '
                 +'  where  P1AE_CHAVE=P1CHAVE '
                 +'     and P1AE_LOTSEQ=P1LOTSEQ),0) as valores_adicionais  ');

   end
else
   begin
   Qr_Ped.sql.add(', 0 as valores_adicionais ');
   end;

Qr_Ped.sql.add('           from CADP01,CADCLI,CADVEN  where '
              +'    (P1TIPO<>0) '
              +' and P1STATUS<9 AND P1EMIDOC>0 and  '
              +iif(la_Empresas='','',la_Empresas+' and ')
              +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'','CCODEMP=P1CODEMP and ')
              +' CCODCLI=P1CODCLI and '
              +iif(DM1.Qr_Tid.Locate('TINOME','CADVEN',[]),'','VCODEMP=P1CODEMP and ')
              +' VCODVEN=P1CODVEN ');
if pComVOrigem=5 then
   begin
   Qr_Ped.SQL.Add(' and (  (P1CODVEN=0'+Frm_ComVV.CODVEN.Text+') ');
   Qr_Ped.SQL.Add('     or (P1CODV02=0'+Frm_ComVV.CODVEN.Text+') ');
   Qr_Ped.SQL.Add('     or (P1CODV03=0'+Frm_ComVV.CODVEN.Text+') )');


   qr_ped.SQL.Add(' AND NOT EXISTS (SELECT CL2CHAVE FROM CADCL02,CADCL01  WHERE CL1CHAVE=CL2CHAVE AND CL1CODEMP=CL2CODEMP '
           +' AND NVL(CL1LOTSEQ,0)=CL2LOTSEQ  AND CL2CODEMPD=P1CODEMP  AND CL2LOTSEQ_DC=P1LOTSEQ '
           +'  AND CL2CHAVEP=P1CHAVE AND CL1CODIGO=P1CODVEN ');
   qr_ped.SQL.Add(' AND CL1CODIGO='+Frm_ComVV.CODVEN.Text+' ) ');

   end
else if pComVOrigem=6 then
   Qr_Ped.SQL.Add(' and VCODSUP=0'+Frm_Comvv.CODVEN.Text+' and (P1LOTCS=0 or P1LOTCS is null)')
else if pComVOrigem=7 then
   Qr_Ped.SQL.Add(' and P1CODTLV=0'+Frm_ComVV.CODVEN.Text+' and (P1LOTCT=0 or P1LOTCT is null)')
else if pComVOrigem=8 then
   Qr_Ped.SQL.Add(' and P1CODASSE=0'+Frm_ComVV.CODVEN.Text+' and (P1LOTCASSE=0 or P1LOTCASSE is null)');







if trim(mdt1.text)<>'/  /' then
   begin
   if CB_DATAENTPEDIDO.Checked then
      Qr_Ped.SQL.Add(fFormatdatetimeParaConsulta('P1DATENT',true,strtodate(mdt1.text)))
   else
      Qr_Ped.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   end;

if trim(mdt2.text)<>'/  /' then begin
   if CB_DATAENTPEDIDO.Checked then
      Qr_Ped.SQL.Add(fFormatdatetimeParaConsulta('P1DATENT',true,strtodate(mdt1.text)))
   else
      Qr_Ped.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));
   end;
mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   Qr_Ped.sql.Add(' and CCODCLI '+mcinst2);
if fSonumero(chave_ini.Text)<>0 then
   Qr_Ped.SQL.add(' and P1CHAVE>='+fdeixanum2(chave_ini.Text));
if fSonumero(chave_fin.Text)<>0 then
   Qr_Ped.SQL.add(' and P1CHAVE<='+fdeixanum2(chave_fin.Text));
if ValFloat(edt_valor.Text)<>0 then
   Qr_Ped.SQL.add(' and P1TOTALL='+mudavp(edt_valor.Text));

mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   Qr_Ped.SQL.Add(' and P1TIPO '+mcinst2);

Qr_Ped.SQL.Add(' order by P1DATAP,P1CHAVE');
//Qr_Ped.Sql.SavetoFile('c:\sql.txt');

try
   Qr_Ped.Open;
except
   ex_erroSql_Novo(QR_ped,259,'SGE','CADVER');
//   Qr_Ped.Sql.SavetoFile('c:\sql.txt');
   end;

x:=2;
STG_PED.RowCount:=x;
STG_PED.Rows[x-1].Clear;
While not Qr_Ped.Eof do
   begin
   STG_PED.Cells[mcolc_sel,x-1]     :=' ';
   STG_PED.Cells[mcolc_chave,x-1]   :=Qr_PedP1CHAVE.AsString;
   STG_PED.Cells[mcolc_ordem,x-1]   :=Qr_PedP1ORDEM.AsString;
   STG_PED.Cells[mcolc_tipdoc,x-1]  :=Formatfloat('0',Qr_pedp1tipo.Value);
   STG_PED.Cells[mcolc_dtemis,x-1]  :=FormatDateTime(fdt2,Qr_PedP1DATDOC.Value);
   STG_PED.Cells[mcolc_nomsac,x-1]  :=Qr_PedCRAZAO.AsString;
   STG_PED.Cells[mcolc_valor,x-1]   :=FormatFloat(mcasas,Qr_PedP1TOTALL.Value);
   if Qr_PedP1CODV02.AsFloat=ValFloat(Frm_ComVV.CODVEN.Text) then
      STG_PED.Cells[mcolc_comis,x-1]:=FormatFloat(mcasas,Qr_PedP1COMV02.Value)
   else if Qr_PedP1CODV03.AsFloat=ValFloat(Frm_ComVV.CODVEN.Text) then
      STG_PED.Cells[mcolc_comis,x-1]:=FormatFloat(mcasas,Qr_PedP1COMV03.Value)
   else if Qr_PedP1CODVEN.AsFloat=ValFloat(Frm_ComVV.CODVEN.Text) then
      STG_PED.Cells[mcolc_comis,x-1]:=FormatFloat(mcasas,Qr_PedP1COMIS.Value);
   STG_PED.Cells[mcolc_codemp,x-1]  :=Qr_PedP1CODEMP.AsString;
   STG_PED.Cells[mcolc_valfre,x-1]  :=Formatfloat(mcasas, Qr_PedP1VALFRE.Value);
   STG_PED.Cells[mcolc_icmsret,x-1] :=Formatfloat(mcasas, Qr_PedP1ICMSR.Value);
   STG_PED.Cells[mcolc_semcom,x-1]  :=Formatfloat(mcasas, Qr_PedP1SEMCOM.AsFloat + Qr_Pedvalores_adicionais.AsFloat);
   STG_PED.Cells[mcolc_valacre,x-1] :=Formatfloat(mcasas, Qr_PedP1VLRACRE.Value);
   STG_PED.Cells[mcolc_comtlv,x-1]  :=Formatfloat(mcasas, Qr_PedP1COMIST.Value);
   STG_PED.Cells[mcolc_comsup,x-1]  :=Formatfloat(mcasas, Qr_PedP1COMISS.Value);
   STG_PED.Cells[mcolc_codcli,x-1]  :=Formatfloat(mcasas, Qr_PedP1CODCLI.Value);
   STG_PED.Cells[mcolc_lotseq,x-1]  :=Qr_PedP1LOTSEQ.AsString;
   STG_PED.Cells[mcolc_comasse,x-1] :=Formatfloat(mcasas, Qr_PedP1COMASSE.Value);
   STG_PED.Cells[mcolc_descfin,x-1] :=Formatfloat(mcasas, Qr_PedP1DESCFIN.Value);
   x:=x+1;
   STG_PED.RowCount:=x;
   STG_PED.Rows[x-1].Clear;
   Qr_Ped.Next;
   end;

end;

procedure TFrm_PComVV.SELECIONARClick(Sender: TObject);
var
x:Integer;
begin
for x:=1 to STG_PED.RowCount do
   begin
   if Trim(STG_PED.Cells[1,x])='' then
      Continue;
   STG_PED.Cells[0,x]:='X';
   end;
end;

procedure TFrm_PComVV.DESMARCARClick(Sender: TObject);
var
x:Integer;
begin
for x:=1 to STG_PED.RowCount do
   begin
   if Trim(STG_PED.Cells[1,x])='' then
      Continue;
   STG_PED.Cells[0,x]:=' ';
   end;
end;

procedure TFrm_PComVV.STG_PEDDblClick(Sender: TObject);
var
mlin: Integer;
begin
mlin:=STG_PED.Row;
if mlin<1 then
   exit;
if STG_PED.Cells[0,mlin]='X' then
   STG_PED.Cells[0,mlin]:=' '
else
   STG_PED.Cells[0,mlin]:='X';

end;

procedure TFrm_PComVV.FormActivate(Sender: TObject);
begin
BitBtn1.Click;
BitBtn1.SetFocus;

end;

procedure TFrm_PComVV.STG_PEDDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;

begin
if (arow>0) and (aCol>5) then
   begin

//Pega o texto da célula
  Texto := STG_PED.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG_PED.Canvas.TextWidth(Texto);
  AlturaTexto := STG_PED.Canvas.TextHeight(Texto);

// Direita
    X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG_PED.Canvas.TextRect(Rect, X, Y, Texto);
  end;


end;

procedure TFrm_PComVV.mdt1Exit(Sender: TObject);
begin
if trim(mdt1.text)<>'/  /' then
   begin
   try
      mdt1.Text:=FormatDateTime(fdt2, StrtoDate(mdt1.text));
   except
      fMensagem('Favor Digitar uma Data Válido!',0,['0'],0);
      mdt1.SetFocus;
      exit;
      end;
   end;
end;

procedure TFrm_PComVV.mdt2Exit(Sender: TObject);
begin

if trim(mdt2.text)<>'/  /' then
   begin
   try
      mdt2.Text:=FormatDateTime(fdt2, StrtoDate(mdt2.text));
   except
      fMensagem('Favor Digitar uma Data Válido!',0,['0'],0);
      mdt2.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_PComVV.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODCLI.Text) then
   BEGIN
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.TEXT))
                                    +' - '+DM1.Query1.fields[0].AsString);
      codcli.text := '';
      codcli.SetFocus;
   END else
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      codcli.text := '';
      CODCLI.SetFocus;
      end;
   end;


end;

procedure TFrm_PComVV.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_RCliC',key);
   if trim(CODCLI.Text)<>'' then
      CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_PComVV.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_PComVV.chave_iniExit(Sender: TObject);
begin
chave_ini.Text:=fDeixanum2(chave_ini.Text);
end;

procedure TFrm_PComVV.chave_finExit(Sender: TObject);
begin
chave_fin.Text:=fDeixanum2(chave_fin.Text);
end;

procedure TFrm_PComVV.edt_valorExit(Sender: TObject);
begin
edt_valor.Text:=FormatFloat(mcasas, ValFloat(edt_valor.Text));
end;

procedure TFrm_PComVV.edt_valorKeyPress(Sender: TObject; var Key: Char);
begin
if key in [',','.'] then key:=DecimalSeparator;

end;

procedure TFrm_PComVV.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_PComVV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_PComVV.FormKeyDown(Sender: TObject; var Key: Word;
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

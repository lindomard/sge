unit S_VPro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Mask, StdCtrls,S_For, func, db,dbtables,S_DM1,S_Impres, Buttons,
  Gauges,lerarq, Grids,S_Pro,S_Usr,S_DM4,S_TipPro,S_Ven, S_SelEmp,s_lerarq_geral;

type
  TFrm_VPro = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    CODFOR: TEdit;
    NOMFOR: TEdit;
    Label2: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label3: TLabel;
    RG_EST: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Qr_Pro: TQuery;
    Gauge1: TGauge;
    CB_Exc: TCheckBox;
    RG_CUPOM: TRadioGroup;
    Label4: TLabel;
    PEDI: TEdit;
    Label5: TLabel;
    PEDF: TEdit;
    RG_PED: TRadioGroup;
    Qr_Ped: TQuery;
    Qr_PedQUANT: TFloatField;
    Qr_PedP1CHAVE: TFloatField;
    Qr_PedP1SITCPR: TFloatField;
    Qr_PedP1CODEMP: TFloatField;
    GroupBox1: TGroupBox;
    Panel3: TPanel;
    BitBtn6: TBitBtn;
    ITEM_CANCELAR: TBitBtn;
    ITEM_EDITAR: TBitBtn;
    ITEM_GRAVAR: TBitBtn;
    Label8: TLabel;
    CODPRO: TEdit;
    Label16: TLabel;
    NOMPRO: TEdit;
    STG1: TStringGrid;
    Label6: TLabel;
    NOMVEN: TEdit;
    CODVEN: TEdit;
    Label7: TLabel;
    NOMTIP: TEdit;
    CODTIP: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Qr_ProQTD: TFloatField;
    Qr_ProP2CODPRO: TFloatField;
    Qr_ProPDNOME: TStringField;
    Qr_ProPDMARCA: TStringField;
    Qr_ProPDUND: TStringField;
    Qr_ProCESALDO: TFloatField;
    Qr_PedP1ORDEM: TFloatField;
    Qr_PedP1LOTSEQ: TFloatField;
    CB_SEMCOMP: TCheckBox;
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORExit(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROExit(Sender: TObject);
    procedure ITEM_GRAVARClick(Sender: TObject);
    procedure ITEM_CANCELARClick(Sender: TObject);
    procedure ITEM_EDITARClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure PEDIExit(Sender: TObject);
    procedure PEDFExit(Sender: TObject);
    procedure CODTIPExit(Sender: TObject);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
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
  Frm_VPro: TFrm_VPro;
  mqtd: Integer=0;
  mop: Integer=0;

implementation

{$R *.DFM}

procedure TFrm_VPro.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_VPro',Key);
if trim(CODFOR.Text)<>'' then
   CODFORExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_VPro.CODFORExit(Sender: TObject);
begin
if Trim(CODFOR.Text)='' then
   NOMFOR.Text:='Todos...'
else
   begin
   if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODFOR.Text) then
      Begin
      fMensagem('Fornecedor nao cadastrado!',0,['0'],0);
      exit;
      end
   else
      NOMFOR.Text:=DM1.Query1.Fields[0].AsString;
   end;
end;

procedure TFrm_VPro.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)='/  /' then
   abort;
Try
  MDT1.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT1.Text));
except
  ShowMessage('Data Invalida');
  mdt1.SetFocus;
  end;

end;

procedure TFrm_VPro.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)='/  /' then
   abort;
Try
  MDT2.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT2.Text));
except
  ShowMessage('Data Invalida');
  mdt2.SetFocus;
  end;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      ShowMessage('Invalido! Data Final Maior que data Inicial');
      MDT1.SetFocus;
      end;
   end;


end;

procedure TFrm_VPro.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_VPro.BitBtn1Click(Sender: TObject);
var
x,mtot, mlidos, mlin, mpag: Integer;
mvendas, mest: Real;
minc: String;
begin
PEDI.Text:=FloattoStr(valfloat(PEDI.Text));
PEDF.Text:=FloattoStr(valfloat(PEDF.Text));
if valfloat(PEDI.Text)>valfloat(PEDF.Text) then
   PEDF.Text:=PEDI.Text;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
fInnerJoin(0,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADEST' ,'CECODEMP','P2CODEMP' ,'CECODPRO' ,'P2CODPRO');


minc:=' where ';
Qr_Ped.Close;
Qr_Ped.Sql.Clear;
Qr_Ped.SQL.Add('Select SUM(P2QTD) as QUANT,P1LOTSEQ,P1CHAVE,P1ORDEM,P1SITCPR,P1CODEMP '
              +'       from CADP02,CADP01 '+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
              +'      '+        iif(la_instrucao='','',' and ')+la_instrucao
              +'      '+iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
              +'      '+' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ORDEM ');
if RG_PED.ItemIndex<>2 then
   Qr_Ped.SQL.add('      and P1SITCPR=0'+IntToStr(RG_PED.ItemIndex));
if Trim(CODFOR.Text)<>'' then
   begin
   if CB_Exc.Checked then
      begin
      Qr_Ped.SQL.Add(' and  PDCODFOR<>'+Trim(CODFOR.Text));
      end
   else
      begin
      Qr_Ped.SQL.Add(' and  PDCODFOR=0'+Trim(CODFOR.Text));
      end;
   end;
if valfloat(PEDI.Text)>0 then
   Qr_Ped.sql.add(' and P1CHAVE>=0'+Trim(PEDI.Text));
if valfloat(PEDF.Text)>0 then
   Qr_Ped.sql.add(' and P1CHAVE<=0'+Trim(PEDF.Text));
if valfloat(CODVEN.Text)>0 then
   Qr_Ped.SQL.add(' and P1CODVEN=0'+Trim(CODVEN.Text));
if not CB_SEMCOMP.Checked then
   Qr_Ped.sql.Add(' and P1SEMCOMP='+QuotedStr('0'));
if Trim(CODTIP.Text)<>'' then
   Qr_Ped.SQL.Add(' and PDCODTIP=0'+Trim(CODTIP.Text));

if RG_EST.ItemIndex=1 then
   Qr_Ped.SQL.Add(' and CESALDO<>0 ')
else if RG_EST.ItemIndex=2 then
   Qr_Ped.SQl.Add(' and CESALDO=0');
if Trim(MDT1.Text)<>'/  /' then
   Qr_Ped.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));

if Trim(MDT2.Text)<>'/  /' then
   Qr_Ped.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));

if RG_CUPOM.ItemIndex<>2 then
   Qr_Ped.sql.Add('and P1EMIDOC=0'+IntToStr(RG_CUPOM.ItemIndex));
minc:=' and ( ';
for x:=1 to STG1.RowCount-1 do
   begin
   if valfloat(STG1.Cells[0,x])<=0 then
      Continue;
   Qr_Ped.SQL.Add(minc+'P2CODPRO='+Trim(STG1.Cells[0,x]));
   minc:=' or ';
   end;
if minc=' or ' then
   Qr_Ped.SQL.add(')');
Qr_Ped.SQL.Add(' group by P1LOTSEQ,P1CHAVE,P1ORDEM,P1SITCPR,P1CODEMP ');
Qr_Ped.Open;


minc:=' where ';
Qr_Pro.Close;
Qr_Pro.Sql.Clear;
Qr_Pro.SQL.Add('Select SUM(P2QTD) as QTD,P2CODPRO,PDNOME,PDMARCA,PDUND,CESALDO '
              +'       from CADP02,CADP01 '+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
              +'      '+        iif(la_instrucao='','',' and ')+la_instrucao
              +'      '+iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
              +'      '+' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ORDEM ');
if RG_PED.ItemIndex<>2 then
   Qr_Pro.SQL.add('      and P1SITCPR=0'+IntToStr(RG_PED.ItemIndex));

if Trim(CODFOR.Text)<>'' then
   begin
   if CB_Exc.Checked then
      begin
      Qr_Pro.SQL.Add(' and  PDCODFOR<>'+Trim(CODFOR.Text));
      end
   else
      begin
      Qr_Pro.SQL.Add(' and  PDCODFOR=0'+Trim(CODFOR.Text));
      end;
   end;
if valfloat(PEDI.Text)>0 then
   Qr_Pro.sql.add(' and P1CHAVE>=0'+Trim(PEDI.Text));
if valfloat(PEDF.Text)>0 then
   Qr_Pro.sql.add(' and P1CHAVE<=0'+Trim(PEDF.Text));
if valfloat(CODVEN.Text)>0 then
   Qr_Pro.SQL.add(' and P1CODVEN=0'+Trim(CODVEN.Text));

if not CB_SEMCOMP.Checked then
   Qr_Pro.sql.Add(' and P1SEMCOMP='+QuotedStr('0'));

if Trim(CODTIP.Text)<>'' then
   Qr_Pro.SQL.Add(' and PDCODTIP=0'+Trim(CODTIP.Text));

if RG_EST.ItemIndex=1 then
   Qr_Pro.SQL.Add(' and CESALDO<>0 ')
else if RG_EST.ItemIndex=2 then
   Qr_Pro.SQl.Add(' and CESALDO=0');
if Trim(MDT1.Text)<>'/  /' then
   Qr_Pro.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));

if Trim(MDT2.Text)<>'/  /' then
   Qr_Pro.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
if RG_CUPOM.ItemIndex<>2 then
   Qr_Pro.sql.Add('and P1EMIDOC=0'+IntToStr(RG_CUPOM.ItemIndex));
minc:=' and ( ';
for x:=1 to STG1.RowCount-1 do
   begin
   if valfloat(STG1.Cells[0,x])<=0 then
      Continue;
   Qr_Pro.SQL.Add(minc+'P2CODPRO='+Trim(STG1.Cells[0,x]));
   minc:=' or ';
   end;
if minc=' or ' then
   Qr_Pro.SQL.add(')');

Qr_Pro.SQL.Add(' group by P2CODPRO,PDNOME,PDMARCA,PDUND,CESALDO '
              +' ORDER BY PDNOME ');
Qr_Pro.Open;
if Qr_Pro.Eof then
   begin
   ShowMessage('Nao ha nada a ser Impresso!');
   exit;
   end;

mtot:=Qr_Pro.RecordCount;
mlidos:=0;
Gauge1.Progress:=mlidos*100 div mtot;
Frm_Impres.Rdprint1.Abrir;
mlin:=0;
mpag:=0;
While not Qr_Pro.Eof do
   begin
   mlidos:=mlidos+1;
   Gauge1.Progress:=mlidos*100 div mtot;
   if mlin=0 then
      begin
      mpag:=mpag+1;
      Frm_Impres.Rdprint1.Impf(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      Frm_Impres.Rdprint1.Impf(01,64,'Pagina: '+FormatFloat('0000',mpag),mnormal);
      Frm_Impres.Rdprint1.Impf(02,01,'Relatorio de Produtos.',mnormal);
      Frm_Impres.Rdprint1.IMpf(02,64,'Data: '+FormatDateTime('dd/mm/yyyy',date),mnormal);
      Frm_Impres.Rdprint1.Impf(03,01,insere2('=','=',80),mnormal);
      mlin:=3;
      if ValFloat(CODFOR.Text)>0 then
         begin
         mlin:=mlin+1;
         Frm_Impres.Rdprint1.Impf(mlin,01,Centra('Fornecedor.: '+Trim(CODFOR.Text)+'-'+Trim(NOMFOR.Text),' ',60),mneg);
         end;
      if ValFloat(CODVEN.Text)>0 then
         begin
         mlin:=mlin+1;
         Frm_Impres.Rdprint1.Impf(mlin,01,Centra('Vendedor.: '+Trim(CODVEN.Text)+'-'+Trim(NOMVEN.Text),' ',60),mneg);
         end;

      if (Trim(mdt1.Text)<>'/  /') and (Trim(mdt2.Text)<>'/  /') then
         begin
         mlin:=mlin+1;
         if (Trim(mdt1.Text)='/  /') and (Trim(mdt2.Text)<>'/  /') then
            Frm_Impres.Rdprint1.impf(mlin,01,Centra('Produtos Vendidos Ate '+MDT2.Text,' ',60),mneg)
         else if (Trim(mdt1.Text)<>'/  /') and (Trim(mdt2.Text)='/  /') then
            Frm_Impres.Rdprint1.impf(mlin,01,Centra('Produtos Vendidos a Partir de '+MDT1.Text,' ',60),mneg)
         else
            Frm_Impres.Rdprint1.impf(mlin,01,Centra('Produtos Vendidos no Periodo de '+MDT1.Text+' a '+MDT2.Text,' ',60),mneg);
         end;
      mlin:=mlin+1;
      Frm_Impres.Rdprint1.Impf(mlin,01,'+---+-------+-------+----------------------------------------+-----------------+',mnormal);
      mlin:=mlin+1;

      Frm_Impres.Rdprint1.Impf(mlin,01,'|UND|Vendas |Estoque|Descricao                               |                 |',mnormal);
// +---+-------+-------+----------------------------------------+-----------------+
// |UND|Vendas |Estoque|Descricao                               |                 |',mnormal);
//                    1234567890123456789012345678901234567890:12345678901234567:
   end;
   mlin:=mlin+1;
   Frm_Impres.Rdprint1.Impf(mlin,01,'|'+insere2(Qr_ProPDUND.Value,' ',3)
                                   +'| '+insere(Qr_ProQTD.AsString,' ',5)
                                   +' |  '+insere(Qr_ProCESALDO.AsString,' ',5)
                                   +'|'+insere2(Qr_ProPDNOME.Value,' ',40)
                                   +'|'+insere2(Qr_ProPDMARCA.Value,' ',17)+'|',mnormal);
  Qr_Pro.Next;
  if mlin>60 then
     begin
     mlin:=mlin+1;
     Frm_Impres.Rdprint1.Impf(mlin,01,'+Continua...+-------+----------------------------------------+-----------------+',mnormal);
     Frm_Impres.RDprint1.Novapagina;
     mlin:=0;
     end;
  end;
if mpag=0 then
   Frm_Impres.Rdprint1.Impf(01,10,'Nao ha registros para impressao',mneg)
else
   begin
   mlin:=mlin+1;
   Frm_Impres.Rdprint1.Impf(mlin,01,'+Fim+-------+-------+----------------------------------------+-----------------+',mnormal);
   end;
if Frm_Impres.Rdprint1.Setup then Frm_Impres.Rdprint1.Fechar;

if (valfloat(CODVEN.Text)<=0) and (ValFloat(STG1.Cells[0,1])<=0) then
   begin
   if not Qr_Ped.IsEmpty then
      begin
      if fmensagem('Posso confirmar a compra dos Pedidos,',0,['1','2'],2)=mrYes then
         begin
         While not Qr_Ped.Eof do
            begin
            DM1.SG_ASSOC.StartTransaction;
            DM1.Query1.Close;
            DM1.Query1.sql.Clear;
            DM1.Query1.Sql.add('Update CADP01 set P1SITCPR=1 where '
                              +' P1CODEMP=0'+Qr_PedP1CODEMP.AsString
                              +' and P1LOTSEQ=0'+Qr_PedP1LOTSEQ.AsString
                              +' and P1CHAVE=0'+Qr_PedP1CHAVE.AsString
                              +' and P1ORDEM=0'+Qr_PedP1ORDEM.AsString);
            DM1.Query1.ExecSQL;
            DM1.SG_ASSOC.Commit;
            Qr_Ped.Next;
            end;
         fMensagem('Compras Confirmadas!',0,['0'],0);
         end;
      end;
   end;
end;
procedure TFrm_VPro.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
MDT1.Text:=FormatDateTime(fdt2,date);
MDT2.Text:=FormatDateTime(fdt2,date);
STG1.RowCount:=2;
STG1.Rows[1].Clear;
STG1.Cells[0,0]:='Código';
STG1.Cells[1,0]:='Descrição';
end;

procedure TFrm_VPro.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'Frm_VPro',key);
if trim(CODPRO.Text)<>'' then
   CODPROExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_VPro.CODPROExit(Sender: TObject);
begin
if (Trim(CODPRO.Text)='')  then
   exit;
CODPRO.Text:=FloatTostr(valfloat(CODPRO.Text));
if flcadpro (1,0,0,CODPRO.Text) then
   NOMPRO.Text:=DM1.Tb_ProPDNOME.Value+' '+DM1.Tb_ProPDNOMFOR.Value
else
   begin
   fMensagem('Produto não Cadastrado!',0,['0'],0);
   CODPRO.SetFocus;
   exit;
   end;
end;

procedure TFrm_VPro.ITEM_GRAVARClick(Sender: TObject);
begin
if not flcadpro(1,0,0,CODPRO.Text) then
   begin
   fMensagem('Produto não Cadastrado!',0,['0'],0);
   CODPRO.SetFocus;
   exit;
   end;
if mop>0 then
   begin
   mqtd:=STG1.row;
   mqtd:=mqtd+1;
   end
else
   begin
   mqtd:=STG1.RowCount;
   STG1.RowCount:=mqtd+1;
   STG1.Rows[mqtd].Clear;
   STG1.Rows[mqtd+1].Clear;
   end;

STG1.Cells[00,mqtd-1]:=CODPRO.Text;
STG1.Cells[01,mqtd-1]:=NOMPRO.Text;
ITEM_CANCELAR.Click;
mop:=0;
CODPRO.SetFocus;



end;

procedure TFrm_VPro.ITEM_CANCELARClick(Sender: TObject);
begin
mop:=0;
CODPRO.Text:='';
NOMPRO.Text:='';
end;

procedure TFrm_VPro.ITEM_EDITARClick(Sender: TObject);
begin
if Trim(STG1.Cells[00,STG1.Row])='' then
   begin
   fMensagem('Não ha nada a ser editado!',0,['0'],0);
   exit;
   end;
mop:=1;
CODPRO.Text   :=STG1.Cells[00,STG1.Row];
NOMPRO.Text   :=STG1.Cells[01,STG1.Row];
CODPRO.SetFocus;
end;

procedure TFrm_VPro.BitBtn6Click(Sender: TObject);
var
x: Integer;
begin
mqtd:=STG1.Row;

if (STG1.Cells[0,1]='') or (STG1.Cells[0,mqtd]='') then
   exit;
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;
if STG1.RowCount=2 then
   STG1.Rows[1].Clear
else
   begin
   for x:=STG1.Row to STG1.RowCount-2 do
      begin
      STG1.Cells[00,x]:=STG1.Cells[00,x+1];
      STG1.Cells[01,x]:=STG1.Cells[01,x+1];
      end;
   STG1.Rows[STG1.RowCount].Clear;
   STG1.Rows[STG1.RowCount-1].Clear;
   STG1.RowCount:=STG1.RowCount-1;
   end;
end;

procedure TFrm_VPro.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text :=fChamaVen(0,'frm_VPro',Key);
   if trim(CODVEN.Text)<>'' then
      CODVENExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_VPro.CODVENExit(Sender: TObject);
begin

if ValFloat(CODVEN.Text)<=0 then
   CODVEN.Text:=''
else
   CODVEN.Text:=FloatToStr(valfloat(CODVEN.Text));

if Trim(CODVEN.Text)='' then
   NOMVEN.Text:='Todos...'
else
   begin
   if not flqr1('VNOME','V','CADVEN','N','VCODVEN',CODVEN.Text) then
      Begin
      fMensagem('Vendedor não Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      exit;
      end
   else
      NOMVEN.Text:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_VPro.PEDIExit(Sender: TObject);
begin
if valfloat(PEDI.Text)<=0 then
   PEDI.Text:=''
else
   PEDI.Text:=FloatToStr(valfloat(PEDI.Text));

end;

procedure TFrm_VPro.PEDFExit(Sender: TObject);
begin
if valfloat(PEDF.Text)<=0 then
   PEDF.Text:=''
else
   PEDF.Text:=FloatToStr(valfloat(PEDF.Text));

end;

procedure TFrm_VPro.CODTIPExit(Sender: TObject);
begin
if Trim(CODTIP.Text)='' then
   NOMTIP.Text:='Todos...'
else
   begin
   if not flqr1('TNOME','T','CADTP','N','TCODTIP',CODTIP.Text) then
      Begin
      fMensagem('Fornecedor não cadastrado!',0,['0'],0);
      exit;
      end
   else
      NOMTIP.Text:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_VPro.CODTIPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTIP.Text:=fChamaTipPro(0,'frm_VPro',Key);
   if trim(CODTIP.Text)<>'' then
      CODTIPExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_VPro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_VPro.FormKeyDown(Sender: TObject; var Key: Word;
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

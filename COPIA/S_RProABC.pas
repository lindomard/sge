unit S_RProABC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, db, dbtables,func, S_DM1, Buttons, S_Impres,
  S_Ven,S_Sup,S_Cli,lerarq, S_SelEmp;

type
  TFrm_RProABC = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label4: TLabel;
    RG_ORDEM: TRadioGroup;
    Qr_For: TQuery;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RG_TIPOPED: TRadioGroup;
    Qr_ForNOME: TStringField;
    Qr_ForCODIGO: TFloatField;
    Qr_ForTOTAL: TFloatField;
    Qr_ForICMSR: TFloatField;
    GB_PRECO: TGroupBox;
    cb_tipopco: TComboBox;
    CB_ICMS_RET: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    form_Impres_RProABC: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_RProABC: TFrm_RProABC;
  fRProabc_Origem: Integer;

implementation


{$R *.dfm}

procedure TFrm_RProABC.BitBtn1Click(Sender: TObject);
var
  mperiodo:String;
  mordem,mpag, mlin: Integer;
  mordemp: Array [0..3] of string;
  mtoti,mtotsc,mtotb: Real;
  mtotg, mperc: Real;
  mPco: String;
begin
if cb_tipopco.ItemIndex=7 then
  begin
  if CB_ICMS_RET.Checked then
    mPco:='(P2TOTLIQ+P2ICMSR)'
  else
    mPco:='(P2TOTLIQ)';
  end
else if cb_tipopco.ItemIndex=6 then
  begin
  mPco:='(P2PCOCUS)';
  end
else if cb_tipopco.ItemIndex=5 then
  begin
  mPco:='(P2PCOFPG)';
  end
else if cb_tipopco.ItemIndex=4 then
  begin
  mPco:='(PDPCOFAB)';
  end
else if cb_tipopco.ItemIndex=3 then
  begin
  mPco:='(PDPRECOC)';
  end
else if cb_tipopco.ItemIndex=2then
  begin
  mPco:='(PDPRECO3)';
  end
else if cb_tipopco.ItemIndex=1 then
  begin
  mPco:='(PDPRECO2)';
  end
else if cb_tipopco.ItemIndex<=0 then
  begin
  mPco:='(PDPRECO1)';
  end;

mordemp[0]:='RNOME';
mordemp[1]:='PDCODRAM';
mordemp[2]:='total';
mordemp[3]:='total desc';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
if fRProabc_Origem=0 then
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
//   fInnerJoin(0,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
   end
else
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin(0,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');
   end;

if fRProabc_Origem=0 then
  begin
  Qr_For.Close;
  Qr_For.SQl.Clear;
  Qr_For.SQl.Add(' Select PDNOMRAM AS NOME, PDCODRAM AS CODIGO, ');
  if cb_tipopco.ItemIndex=7 then
    begin
    Qr_For.SQl.Add('        sum'+mPco+' as Total,    ');
    end
  else
    begin
    Qr_For.SQl.Add('        sum(DECODE(P1TIPO_ENTSAI,1,P2QTD*-1,P2QTD)*'+mPco+') as Total,    ');
    end;
  Qr_For.SQl.Add('        sum(P2ICMSR) as ICMSR             ');
  Qr_For.SQl.Add(' from   CADP01,CADP02,CADPRO'+iif(la_tabelas='','',',')+la_tabelas
                +'        '+la_Join
                +'        where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                +'        '+        iif(la_instrucao='','',' and ')+la_instrucao
                +'        '+iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
//                +'      '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),' and PDCODEMP=P2CODEMP ','')
//                +iif(fEmpresas_Selecionadas('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS)='','',' and ')
//                +fEmpresas_Selecionadas('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS)
                 +iif(MEmpresa('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS)='','',' and '+MEmpresa('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS))
                +'        '+' and P2LOTSEQ=P1LOTSEQ and  P2CHAVE=P1CHAVE and P2ORDEM=P1ORDEM '
                +'        and P1EMIDOC=1 and P1TIPO>0 and PDCODPRO=P2CODPRO');
  if RG_TIPOPED.ItemIndex<25 then
      Qr_For.SQl.Add('       and P1TIPO=0'+IntToStr(RG_TIPOPED.ItemIndex+1));
  if Trim(MDT1.Text)<>'/  /' then
     Qr_For.Sql.Add(' and P1DATDOC>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
  if Trim(MDT2.Text)<>'/  /' then
     Qr_For.Sql.Add(' and P1DATDOC<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));
  Qr_For.Sql.Add('   Group by PDCODRAM, PDNOMRAM');
  Qr_For.Sql.Add('   Order by PDNOMRAM ');
   try
     Qr_For.Open;
   except
     showmessage('Erro ao gerar o Relatorio');
     Qr_For.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
     Abort;
     end;

{  Qr_For.SQl.Add('Select RNOME AS NOME, PDCODRAM AS CODIGO, sum(P2TOTLIQ-P2DESCRAT) as total');
  Qr_For.SQl.Add('       sum(P2ICMSR) as ICMSR ');
  Qr_For.SQl.Add('from CADP01,CADP02'+iif(la_tabelas='','',',')+la_tabelas
                +'       '+la_Join
                +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                +'      '+        iif(la_instrucao='','',' and ')+la_instrucao
                +'      '+iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                +'      '+' and P2LOTSEQ=P1LOTSEQ and  P2CHAVE=P1CHAVE and P2ORDEM=P1ORDEM '
                +'       and P1EMIDOC=1 '
                +'       and P1TIPO=0'+IntToStr(RG_TIPOPED.ItemIndex+1));
  if Trim(MDT1.Text)<>'/  /' then
     Qr_For.Sql.Add(' and P1DATDOC>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
  if Trim(MDT2.Text)<>'/  /' then
     Qr_For.Sql.Add(' and P1DATDOC<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));
  Qr_For.SQL.Add(' Group by RNOME,PDCODRAM');
  Qr_For.SQL.Add(' order by '+mordemp[RG_ORDEM.itemindex]);
  Qr_For.Open;}
  end
else
   begin
   Qr_For.Close;
   Qr_For.SQl.Clear;
   Qr_For.SQl.Add('Select RNOME AS NOME, PDCODRAM AS CODIGO,  sum((PF2QTDP*PF2PU)-PF2TOTDES ) as total,');
   Qr_For.SQl.Add('       sum(PF1ICMSR) as ICMSR from CADPF1,CADPF2,CADRAM '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where PF1STATUS=1 AND PDCODRAM=RCODRAM '+iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                 +'      and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
   if Trim(MDT1.Text)<>'/  /' then
      Qr_For.Sql.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      Qr_For.Sql.Add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));
//   Qr_for.SQL.Add(' and substr(to_char(pf2cfo),-3,3)<>'+chr(39)+'902'+chr(39));

   Qr_For.SQL.Add(' Group by RNOME,PDCODRAM');
   Qr_For.SQL.Add(' order by '+mordemp[RG_ORDEM.itemindex]);
   try
     Qr_For.Open;
   except
     showmessage('Erro ao gerar o Relatorio');
     Qr_For.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
     Abort;
     end;
   end;
if Qr_For.Eof then
   begin
   MessageDlg('Nada a ser impresso na condição solicitada',mtWarning,[mbok],0);
   exit
   end;
testeform := TFrm_RProABC(FindGlobalComponent('form_Impres_RProABC'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_Impres_RProABC);

form_Impres_RProABC.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mtoti :=0;
mtotsc:=0;
mtotb :=0;
mpag:=0;
mlin:=0;
mtotg:=0;
While not Qr_For.Eof do
   begin
   mtotg:=mtotg+Qr_ForTOTAL.Value;;
   Qr_For.Next;
   end;
Qr_For.First;
While not Qr_For.Eof do
   begin
   if mlin=0 then
      begin
      mpag:=mpag+1;
      form_Impres_RProABC.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      form_Impres_RProABC.Rdprint1.Impf(01,64,'Pagina: '+FormatFloat('0000',mpag),mnormal);
      if fRProabc_Origem=0 then
         form_Impres_RProABC.RDprint1.ImpF(02,01,'Vendas por Ramo de Produto.',mnormal)
      else
         form_Impres_RProABC.RDprint1.ImpF(02,01,'Compras por Ramo de Produto.',mnormal);

      form_Impres_RProABC.RDprint1.ImpF(02,64,'Data: '+FormatDateTime(fdt2,pdatasis),mnormal);
      form_Impres_RProABC.RDprint1.ImpF(03,01,insere2('-','-',80),mnormal);
      form_Impres_RProABC.RDprint1.ImpF(04,01,Centra(fperiodo(0,mdt1.Text,mdt2.Text),' ',80),mneg);
      mlin:=4;
      mlin:=mlin+1;
      form_Impres_RProABC.RDprint1.ImpF(mlin,01,Centra('Totais sem Impostos e Fretes.',' ',80),mneg);
      mlin:=mlin+1;
      form_Impres_RProABC.RDprint1.ImpF(mlin,01,'+-----+------+----------------------------------------+-------------+----------+',mnormal);
      mlin:=mlin+1;
      form_Impres_RProABC.RDprint1.ImpF(mlin,01,'|Ordem|Código|Nome do Ramo                            |    Total    |Percentual|',mnormal);
      end;
   mordem:=mordem+1;
   mlin:=mlin+1;
   mperc:=((Qr_ForTOTAL.Value)*100)/mtotg;
   form_Impres_RProABC.RDprint1.ImpF(mlin,01,'|'+FormatFloat('00000',mordem)
                           +'|'+FormatFloat('000000',Qr_ForCODIGO.Value)
                           +'|'+insere2(Qr_ForNOME.Value,' ',40)+'|'
                           +insere(FormatFloat(mcasas, Qr_ForTOTAL.Value),' ',13)+'|  '
                           +insere(FormatFloat(mcasas, mperc),' ',6)+'% |',mnormal);
   mtotb :=mtotb +Qr_ForTOTAL.Value;
   Qr_For.Next;
   if Qr_For.Eof then
      begin
      mlin:=mlin+1;
      form_Impres_RProABC.RDprint1.ImpF(mlin,01,'|     '
                           +'|      '
                           +'|'+insere2('Total','.',40)+'|'
                           +insere(FormatFloat(mcasas, mtotb),' ',13)+'|  '
                           +insere('100.00',' ',6)+'% |',mnormal);
      mlin:=mlin+1;
      form_Impres_RProABC.RDprint1.ImpF(mlin,01,'+Fim.-+------+----------------------------------------+-------------+----------+',mnormal);
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_Impres_RProABC.RDprint1.ImpF(mlin,01,'+Continua...-+----------------------------------------+-------------+----------+',mnormal);
      form_Impres_RProABC.RDprint1.Novapagina;
      mlin:=0;
      end;
   end;
if form_Impres_RProABC.RDprint1.Setup then form_Impres_RProABC.RDprint1.Fechar;
form_Impres_RProABC.free;
form_Impres_RProABC:=nil;

end;

procedure TFrm_RProABC.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      MessageDlg('Data Invalida!',mtError,[mbok],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
end;

procedure TFrm_RProABC.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      MessageDlg('Data Invalida!',mtError,[mbok],0);
      MDT2.SetFocus;
      exit;
      end;
   end;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrTodate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      MessageDlg('Data inicial maior que final. Invalido!',mtError,[mbok],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_RProABC.FormCreate(Sender: TObject);
var
x: Integer;
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

if fRProabc_Origem=0 then
   begin
   Frm_RProABC.Caption:='ABC das Vendas por Ramo de Produto';
   RG_TIPOPED.Items.Clear;
   for x:=1 to high(tab_tped) do
      begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
      end;
   RG_TIPOPED.Visible:=true;
   GB_PRECO.Visible:=true;
   end
else
   begin
   Frm_RProABC.Caption:='ABC das Compras por Ramo de Produto';
   RG_TIPOPED.Visible:=False;
   GB_PRECO.Visible:=false;   
   end;

if pbanco=0 then
   begin
   RG_ORDEM.Items.add('V&alor Crescente');
   RG_ORDEM.Items.add('Va&lor Decrescente');
   end;
RG_ORDEM.itemIndex:=0;
RG_TIPOPED.ItemIndex:=0;
end;

procedure TFrm_RProABC.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_RProABC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_RProABC.FormKeyDown(Sender: TObject; var Key: Word;
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

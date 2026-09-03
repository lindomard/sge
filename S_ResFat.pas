unit S_ResFat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons,S_DM1,func,lerarq, Grids, S_SelEmp,
  DBGrids, DB,S_Impres, DBTables,S_PedCli, ToolEdit;

type
  TFrm_ResFat = class(TForm)
    Label1: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Qr_Exc: TQuery;
    Qr_ExcCODIGO: TFloatField;
    Qr_ExcORDEM: TFloatField;
    Qr_ExcCODCLI: TFloatField;
    Qr_ExcCODEMP: TFloatField;
    Qr_ExcNOME: TStringField;
    Qr_ExcCODUSR: TFloatField;
    Qr_ExcDATAMOV: TDateTimeField;
    Qr_ExcHORAMOV: TStringField;
    Qr_ExcTIPOMOV: TFloatField;
    Qr_Excnomusr: TStringField;
    cb_avisar: TCheckBox;
    CB_QTDESTOQUE: TCheckBox;
    Qr_ExcQUANTIDADE: TFloatField;
    edt_datasaldo: TDateEdit;
    lbl_saldo: TLabel;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbSairClick(Sender: TObject);
    procedure Qr_ExcCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function fResFatImpTotal(pTipo,PSubTipo: Integer): Boolean;
    function fResFatImpCab(pTipo,pSubTipo: Integer): Boolean;
  public
    { Public declarations }
    form_impres_resfat: Tfrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_ResFat: TFrm_ResFat;
  mlin,mpag: Integer;
  mImpCab: Boolean;
  mTipo_ant: Integer;
  mtotdoc, mtotdin: Real;
  mtotqtd, mtotvb,mtotvr: Real;
  mtotgqtd, mtotgvb,mtotgvr: Real;
  mpercAcreDes: Real;
  mImprimiu: Boolean;
  mQtdRem,mVlrRem: Real;
  mQtdDev,mQtdVen: Real;
implementation

uses S_DM2;

{$R *.dfm}

procedure TFrm_ResFat.MDT1Exit(Sender: TObject);
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
if StrToDate(MDT1.Text)=Date then
   begin
   lbl_saldo.visible:=false;
   edt_datasaldo.Visible:=false;
   end
else
   begin
   lbl_saldo.visible:=true;
   edt_datasaldo.Visible:=true;
   end;


end;

procedure TFrm_ResFat.MDT2Exit(Sender: TObject);
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

procedure TFrm_ResFat.bbImprimirClick(Sender: TObject);
var
  dia, mes, ano: string;
  SALDO: STRING;
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

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

if cb_avisar.Checked then
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.SQL.add('Select count(*) from CADP01 '
                     +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                     +la_Empresas
                     +iif(la_Empresas='','',' and ')
                     +' P1STATUS<9 and P1EMIDOC<>1 '
                     +' and ((P1TIPO>0 and P1TIPO<4) or (P1TIPO=6 OR P1TIPO=16 OR P1TIPO=17))' );
   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
   DM1.Query1.Open;
   if DM1.Query1.Fields[0].AsInteger>0 then
      begin
      if DM1.Query1.Fields[0].AsInteger<2 then
         mcinst:='Existe 01 Pedido Pendente, quer Continuar Mesmo Assim?'
      else
         mcinst:='Existem '+DM1.Query1.Fields[0].AsString+' Pedidos Pendentes, quer continuar Mesmo Assim?';
      if fmensagem(pchar(mcinst),0,['1','2'],2)<>mrYes then
         exit;
      end;
   end;


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADCLI' ,'CCODEMP','P1CODEMP' ,'CCODCLI' ,'P1CODCLI');

mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);



DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.SQL.Add('Select P1TIPO,P1CHAVE,P1ORDEM,P1CODCLI,0 as P1CUPACRE,0 as P1CUPDES, max(P1TIPO_ENTSAI) AS P1TIPO_ENTSAI,'
                  +' sum(P2TOTLIQ) as P1TOTALL'
                  +',sum(P2TOTDES) as P1TOTDES '
                  +',sum(P2TOTLIQ+P2TOTDES) as P1TOTALB'
                  +',P1OBS1 '
                  +',P1OBS2 '
                  +',P1OBS3 '
                  +',CRAZAO '
                  +','+mcinst4+' as P2QTD '
                  +' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                  +la_Empresas
                  +iif(la_Empresas='','',' and ')
                  +' P1STATUS<'+mstatus_excluido
                  +' and ((P1TIPO>0 and P1TIPO<4) or (P1TIPO=6 OR P1TIPO=16 OR P1TIPO=17))' );
if Trim(MDT1.Text)<>'/  /' then
   DM1.Query3.SQL.add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query3.SQL.add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT2.Text)));
DM1.Query3.SQL.Add(' group by  P1TIPO,P1CHAVE,P1ORDEM,P1CODCLI,'
                  +' P1OBS1,P1OBS2,P1OBS3,CRAZAO ');
DM1.Query3.Open;
//DM1.Query3.sql.savetofile(mpastatemp + 'SQLlll.txt');
mImprimiu:=false;

// Selecionar Formas de Pagamentos

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin3(1,'CADPFP','PFPCODEMP','P1CODEMP','PFPLOTSEQ','P1LOTSEQ','PFPCHAVE','P1CHAVE');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADBCO' ,'BCCODEMP','PFPCODEMP' ,'BCCODBCO' ,'PFPBANCO');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin1(0,'CADFP' ,'FPCODIGO' ,'PFPFORMA');

DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.SQL.Add('Select max(P1DATAP) AS P1DATAP,'
                  +'max(P1DATDOC) as P1DATDOC,P1CHAVE,BCBANCO,FPDESC,FPNUM,'
                  +' PFPFORMA,PFPDATA,PFPNUMDOC, '
                  +'PFPBANCO,PFPSERIE,PFPVALOR,PFPCC,PFPAGENCIA,PFPEMITENTE'
                  +' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                  +la_Empresas
                  +iif(la_Empresas='','',' and ')
                  +' P1STATUS<'+mstatus_excluido
                  +' and ((P1TIPO>0 and P1TIPO<4) or (P1TIPO=6 OR P1TIPO=16 OR P1TIPO=17))' );
if Trim(MDT1.Text)<>'/  /' then
   DM1.Query4.SQL.add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query4.SQL.add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
DM1.Query4.SQL.Add(' group by FPDESC,FPNUM,P1CHAVE,PFPDATA,PFPNUMDOC '
                  +' ,BCBANCO,'
                  +' PFPFORMA,'
                  +' PFPBANCO,PFPSERIE,PFPVALOR,PFPCC,PFPAGENCIA,PFPEMITENTE '
                  +' ORDER BY FPDESC,P1CHAVE,PFPNUMDOC ');
DM1.Query4.Open;
//DM1.Query4.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
mImpCab:=True;
mpag:=0;
mlin:=0;
testeform := TFrm_ResFat(FindGlobalComponent('form_impres_resfat'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_resfat);

form_impres_resfat.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mTipo_ant:=9;
mtotdoc:=0;
mtotdin:=0;
mtotqtd:=0;
mtotvb :=0;
mtotvr :=0;
mtotgqtd:=0;
mtotgvb :=0;
mtotgvr :=0;


While not DM1.Query4.eof do
   begin
   if DM1.Query4.fieldByName('FPNUM').AsInteger=0 then
      mtotdin:=mtotdin+DM1.Query4.fieldByName('PFPVALOR').AsFloat
   else
      mtotdoc:=mtotdoc+DM1.Query4.fieldByName('PFPVALOR').AsFloat;
   DM1.Query4.Next;
   end;
DM1.Query4.First;
if not DM1.Query3.Eof then
   begin
   mTipo_ant:=DM1.Query3.fieldByName('P1TIPO').AsInteger;
   fResFatImpCab(0,0);
   mImpCab:=false;
   end;

While not DM1.Query3.Eof do
   begin
   mImprimiu:=true;
   if mImpCab then
      begin
      mTipo_ant:=DM1.Query3.fieldByName('P1TIPO').AsInteger;
      fResFatImpCab(0,0);
      mImpCab:=false;
      end;
   if mTipo_ant<>DM1.Query3.FieldByName('P1TIPO').AsInteger then
      begin
      fResFatImpTotal(0,0);
      if mlin>50 then
         begin
         mTipo_ant:=DM1.Query3.fieldByName('P1TIPO').AsInteger;
         fResFatImpCab(0,1);
         end
      else
         begin
         mTipo_ant:=DM1.Query3.fieldByName('P1TIPO').AsInteger;
         mlin:=mlin+1;
         form_impres_resfat.RDprint1.ImpF(mlin,01, tab_tped[mtipo_ant],mneg);
         end;
      end;
   mlin:=mlin+1;
   if DM1.Query3.fieldbyName('P1CUPACRE').AsFloat>0 then
      begin
//      mpercAcreDes:=(DM1.Query3.fieldbyName('P1CUPACRE').AsFloat*100)/DM1.Query3.fieldbyName('P1TOTALL').AsFloat;
      mpercAcreDes:=DM1.Query3.fieldbyName('P1CUPACRE').AsFloat;
      end
   else if (DM1.Query3.fieldbyName('P1CUPDES').AsFloat)+(DM1.Query3.fieldbyName('P1TOTDES').AsFloat)>0 then
      begin
//      mpercAcreDes:=(DM1.Query3.fieldbyName('P1CUPDES').AsFloat*100)/DM1.Query3.fieldbyName('P1TOTALL').AsFloat;
      mpercAcreDes:=DM1.Query3.fieldbyName('P1CUPDES').AsFloat
                   +DM1.Query3.fieldbyName('P1TOTDES').AsFloat;
      mpercAcreDes:=mpercAcreDes*-1;
      end
   else
      mpercAcreDes:=0;

   form_impres_resfat.RDprint1.ImpF(mlin,01,insere(DM1.Query3.fieldbyName('P1CHAVE').AsString,'0',06)
                           +' '+insere2(DM1.Query3.fieldbyName('CRAZAO').AsString,' ',40)
                           +insere(Formatfloat(mcasqtd, DM1.Query3.fieldbyName('P2QTD').AsFloat),' ',10)
                           +insere(Formatfloat(mcasas, DM1.Query3.fieldbyName('P1TOTALB').AsFloat),' ',14)
                           +insere(Formatfloat(mcasas, mpercAcreDes),' ',11)
                           +insere(Formatfloat(mcasas, (DM1.Query3.fieldbyName('P1TOTALL').AsFloat
                                                       +DM1.Query3.fieldbyName('P1CUPACRE').AsFloat
                                                       -DM1.Query3.fieldbyName('P1CUPDES').AsFloat)),' ',14),m12ccp);
{
   if (trim(DM1.Query3.fieldbyname('P1OBS1').AsString)<>'') or
      (trim(DM1.Query3.fieldbyname('P1OBS2').AsString)<>'') or
      (trim(DM1.Query3.fieldbyname('P1OBS3').AsString)<>'') then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.impf(mlin,01,'Observações.:',mneg);
      if (trim(DM1.Query3.fieldbyname('P1OBS1').AsString)<>'') then
         begin
         form_impres_resfat.RDprint1.impf(mlin,16,DM1.Query3.fieldbyname('P1OBS1').AsString,m12ccp);
         mlin:=mlin+1;
         end;
      if (trim(DM1.Query3.fieldbyname('P1OBS2').AsString)<>'') then
         begin
         form_impres_resfat.RDprint1.impf(mlin,16,DM1.Query3.fieldbyname('P1OBS2').AsString,m12ccp);
         mlin:=mlin+1;
         end;
      if (trim(DM1.Query3.fieldbyname('P1OBS3').AsString)<>'') then
         begin
         form_impres_resfat.RDprint1.impf(mlin,16,DM1.Query3.fieldbyname('P1OBS3').AsString,m12ccp);
         mlin:=mlin+1;
         end;
      end;
}
   if DM1.Query3.FieldbyName('P1TIPO_ENTSAI').Asinteger=1 then
      mtotqtd:=mtotqtd-DM1.Query3.fieldbyName('P2QTD').AsFloat
   else
      mtotqtd:=mtotqtd+DM1.Query3.fieldbyName('P2QTD').AsFloat;


   mtotvb :=mtotvb +DM1.Query3.fieldbyName('P1TOTALB').AsFloat;
   mtotvr :=mtotvr+(DM1.Query3.fieldbyName('P1TOTALL').AsFloat
                   +DM1.Query3.fieldbyName('P1CUPACRE').AsFloat
                   -DM1.Query3.fieldbyName('P1CUPDES').AsFloat);
   if DM1.Query3.FieldbyName('P1TIPO_ENTSAI').Asinteger=1 then
      mtotgqtd:=mtotgqtd-DM1.Query3.fieldbyName('P2QTD').AsFloat
   else
      mtotgqtd:=mtotgqtd+DM1.Query3.fieldbyName('P2QTD').AsFloat;
   mtotgvb :=mtotgvb +DM1.Query3.fieldbyName('P1TOTALB').AsFloat;
   mtotgvr :=mtotgvr+(DM1.Query3.fieldbyName('P1TOTALL').AsFloat
                   +DM1.Query3.fieldbyName('P1CUPACRE').AsFloat
                   -DM1.Query3.fieldbyName('P1CUPDES').AsFloat);


   DM1.Query3.Next;
   if DM1.Query3.Eof then
      begin
      fResFatImpTotal(0,1);
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.Impf(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      mImpCab:=true;
      end;
{

DM1.Query3.SQL.Add('Select P1TIPO,P1CHAVE,P1ORDEM,P1CODCLI,P1CUPACRE,P1CUPDES,'
                  +'(P1TOTALL) AS P1TOTALL,'
                  +',CRAZAO '
                  +',sum(P2QTD) as P2QTD '

                                                                  Valor  Desconto/         Valor
Chave  Cliente                                 Quantidade         Bruto  Acrescimo      Recebido
123456 1234567890123456789012345678901234567890zzz.zz9,99 zz.zzz.zz9,99 zzz.zz9,99 zz.zzz.zz9,99

 }
  end;
mtotqtd:=0;
mtotvb :=0;
mtotgqtd:=0;
mtotgvb :=0;

if not DM1.Query4.Eof then
   begin
   mTipo_ant:=DM1.Query4.fieldByName('PFPFORMA').AsInteger;
   if mImpCab then
      fResFatImpCab(1,0)
   else if mlin>55 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      fResFatImpCab(0,0)
      end
   else
      fResFatImpCab(1,1);
   mImpCab:=false;
   end;

mImpCab:=false;
While not DM1.Query4.eof do
   begin
   mImprimiu:=true;
   if mImpCab then
      begin
      mTipo_ant:=DM1.Query4.fieldByName('PFPFORMA').AsInteger;
      fResFatImpCab(1,0);
      mImpCab:=false;
      end;
   if mTipo_ant<>DM1.Query4.FieldByName('PFPFORMA').AsInteger then
      begin
      fResFatImpTotal(1,0);
      if mlin>50 then
         begin
         mTipo_ant:=DM1.Query4.fieldByName('PFPFORMA').AsInteger;
         fResFatImpCab(1,1);
         end
      else
         begin
         mTipo_ant:=DM1.Query4.fieldByName('PFPFORMA').AsInteger;
         mlin:=mlin+1;
         form_impres_resfat.RDprint1.ImpF(mlin,01, DM1.Query4.fieldByName('FPDESC').AsString,mneg);
         end;
      end;
   mpercAcreDes:=0; // sera utilizada agora para calcular o prazo
   mpercAcreDes:=DM1.Query4.fieldByName('PFPDATA').AsDateTime-DM1.Query4.fieldByName('P1DATAP').AsDateTime;
   mlin:=mlin+1;
   mtotgqtd:=mtotgqtd+DM1.Query4.fieldByName('PFPVALOR').AsFloat;
   mtotgvb :=mtotgvb +DM1.Query4.fieldByName('PFPVALOR').AsFloat;
   mtotqtd :=mtotqtd +DM1.Query4.fieldByName('PFPVALOR').AsFloat;
   mtotvb  :=mtotvb  +DM1.Query4.fieldByName('PFPVALOR').AsFloat;

   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(DM1.Query4.fieldByName('P1CHAVE').AsString+'/'+Trim(DM1.Query4.fieldByName('PFPNUMDOC').AsString),' ',15)
                           +' '+FormatDatetime(fdt2, DM1.Query4.fieldByName('PFPDATA').AsDateTime)
                           +insere(FormatFloat('0', mpercAcreDes),' ',06)
                           +' '+insere2(DM1.Query4.fieldByName('BCBANCO').AsString,' ',48)
                           +insere(FormatFloat(mcasas, DM1.Query4.fieldByName('PFPVALOR').AsFloat),' ',15),m12ccp);
   DM1.Query4.Next;
   if DM1.Query4.Eof then
      begin
      fResFatImpTotal(1,1);
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.Impf(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      mImpCab:=true;
      end;
   end;
// INICIO DA FASE II DE IMPRESSAO-Entradas

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin3(1,'CADPF2','PF2CODEMP','PF1CODEMP','PF2LOTSEQ','PF1LOTSEQ','PF2CHAVE','PF1CHAVE');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADFOR' ,'FCODEMP','PF1CODEMP' ,'FCODFOR' ,'PF1CODFOR');


DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.SQL.Add('Select PF1CHAVE,PF1NUMPED_ORI,PF1PAG_ORI,PF1CODFOR,'
                  +'(PF1TOTLIQ) AS PF1TOTLIQ'
                  +' ,PF1OBS AS P1OBS1 '
                  +' ,'+chr(39)+mcinst+chr(39)+' P1OBS2 '
                  +' ,'+chr(39)+mcinst+chr(39)+' P1OBS3 '
                  +',FRAZAO '
                  +',sum(PF2QTDP) as PF2QTDP '
                  +' from CADPF1 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                  +la_Empresas
                  +iif(la_Empresas='','',' and ')
                  +' PF1STATUS<8' );
if Trim(MDT1.Text)<>'/  /' then
   DM1.Query3.SQL.add(' and PF1DATA>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query3.SQL.add(' and PF1DATA<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
DM1.Query3.SQL.Add(' group by  PF1CHAVE,PF1NUMPED_ORI,PF1PAG_ORI,PF1CODFOR,PF1TOTLIQ,PF1OBS,FRAZAO ');
DM1.Query3.SQL.Add(' union ');

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADCLI' ,'CCODEMP','P1CODEMP' ,'CCODCLI' ,'P1CODCLI');
mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);


DM1.Query3.SQL.Add('Select P1CHAVE as PF1CHAVE, P1NPEDORI AS PF1NUMPED_ORI,'
                  +' min(P1ORDEM) AS PF1PAG_ORI,'
                  +' P1CODCLI as  PF1CODFOR,'
                  +'(P1TOTALL) AS PF1TOTLIQ'
                  +' ,P1OBS1 '
                  +' ,P1OBS2 '
                  +' ,P1OBS3 '
                  +',CRAZAO AS FRAZAO '
                  +','+mcinst4+' as PF2QTDP '
                  +' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                  +la_Empresas
                  +iif(la_Empresas='','',' and ')
                  +' P1STATUS<'+mstatus_excluido+' and P1TIPO=18 ' );
if Trim(MDT1.Text)<>'/  /' then
   DM1.Query3.SQL.add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query3.SQL.add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
DM1.Query3.SQL.Add(' group by  P1CHAVE,P1NPEDORI,P1CODCLI,P1TOTALL,P1OBS1,P1OBS2,P1OBS3,CRAZAO');
//DM1.Query3.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));



DM1.Query3.Open;

// Selecionar Formas de Pagamentos
mTipo_ant:=9;
mtotqtd:=0;
mtotgqtd:=0;
if not DM1.Query3.Eof then
   begin
   if mImpCab then
      fResFatImpCab(2,0)
   else if mlin>55 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      fResFatImpCab(2,0)
      end
   else
      fResFatImpCab(2,1);
   mImpCab:=false;
   end;

While not DM1.Query3.Eof do
   begin
   mImprimiu:=true;
   if mImpCab then
      begin
      fResFatImpCab(2,0);
      mImpCab:=false;
      end;
   mlin:=mlin+1;

   form_impres_resfat.RDprint1.ImpF(mlin,01,insere(DM1.Query3.fieldbyName('PF1CHAVE').AsString,'0',06)
                           +' '+insere(DM1.Query3.fieldbyName('PF1NUMPED_ORI').AsString,'0',06)
                           +'/'+insere(DM1.Query3.fieldbyName('PF1PAG_ORI').AsString,'0',02)
                           +insere(' ',' ',03)
                           +' '+insere2(DM1.Query3.fieldbyName('FRAZAO').AsString,' ',61)
                           +insere(Formatfloat(mcasqtd, DM1.Query3.fieldbyName('PF2QTDP').AsFloat),' ',15),m12ccp);
   mtotqtd:=mtotqtd+DM1.Query3.fieldbyName('PF2QTDP').AsFloat;
   mtotgqtd:=mtotgqtd+DM1.Query3.fieldbyName('PF2QTDP').AsFloat;
{
   if (trim(DM1.Query3.fieldbyname('P1OBS1').AsString)<>'') or
      (trim(DM1.Query3.fieldbyname('P1OBS2').AsString)<>'') or
      (trim(DM1.Query3.fieldbyname('P1OBS3').AsString)<>'') then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.impf(mlin,01,'Observações.:',mneg);
      if (trim(DM1.Query3.fieldbyname('P1OBS1').AsString)<>'') then
         begin
         form_impres_resfat.RDprint1.impf(mlin,16,DM1.Query3.fieldbyname('P1OBS1').AsString,m12ccp);
         mlin:=mlin+1;
         end;
      if (trim(DM1.Query3.fieldbyname('P1OBS2').AsString)<>'') then
         begin
         form_impres_resfat.RDprint1.impf(mlin,16,DM1.Query3.fieldbyname('P1OBS2').AsString,m12ccp);
         mlin:=mlin+1;
         end;
      if (trim(DM1.Query3.fieldbyname('P1OBS3').AsString)<>'') then
         begin
         form_impres_resfat.RDprint1.impf(mlin,16,DM1.Query3.fieldbyname('P1OBS3').AsString,m12ccp);
         mlin:=mlin+1;
         end;
      end;
}

   DM1.Query3.Next;
   if DM1.Query3.Eof then
      begin
      fResFatImpTotal(2,0);
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.Impf(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      mImpCab:=true;
      end;
   end;
// TERMINO DA FASE II DE IMPRESSAO-entradas

// INICIO DA FASE II DE IMPRESSAO-Saidas

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADCLI' ,'CCODEMP','P1CODEMP' ,'CCODCLI' ,'P1CODCLI');

mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);

DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.SQL.Add('Select P1TIPO,P1CHAVE,P1ORDEM,P1CODCLI,P1CUPACRE,P1CUPDES,'
                  +'(P1TOTALL) AS P1TOTALL'
                  +',P1OBS1 '
                  +',P1OBS2 '
                  +',P1OBS3 '
                  +',CRAZAO '
                  +','+mcinst4+' as P2QTD '
                  +' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                  +la_Empresas
                  +iif(la_Empresas='','',' and ')
                  +' P1STATUS<'+mstatus_excluido
                  +' and (P1TIPO=5)' );
if Trim(MDT1.Text)<>'/  /' then
   DM1.Query3.SQL.add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query3.SQL.add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
DM1.Query3.SQL.Add(' group by  P1TIPO,P1CHAVE,P1ORDEM,P1CODCLI,P1CUPACRE,P1CUPDES,P1TOTALL,P1OBS1,P1OBS2,P1OBS3,CRAZAO ');
DM1.Query3.Open;

// Selecionar Formas de Pagamentos
mTipo_ant:=9;
mtotqtd:=0;
if not DM1.Query3.Eof then
   begin
   if mImpCab then
      fResFatImpCab(3,0)
   else if mlin>53 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      fResFatImpCab(3,0)
      end
   else
      fResFatImpCab(3,1);
   mImpCab:=false;
   end;


While not DM1.Query3.Eof do
   begin
   mImprimiu:=true;
   if mImpCab then
      begin
      fResFatImpCab(3,0);
      mImpCab:=false;
      end;
   mlin:=mlin+1;

   form_impres_resfat.RDprint1.ImpF(mlin,01,insere(DM1.Query3.fieldbyName('P1CHAVE').AsString,'0',06)
                           +'/'+insere(DM1.Query3.fieldbyName('P1ORDEM').AsString,'0',02)
                           +insere(' ',' ',11)
                           +' '+insere2(DM1.Query3.fieldbyName('CRAZAO').AsString,' ',61)
                           +insere(Formatfloat(mcasqtd, DM1.Query3.fieldbyName('P2QTD').AsFloat),' ',14),m12ccp);
   mtotqtd:=mtotqtd+DM1.Query3.fieldbyName('P2QTD').AsFloat;
   mtotgqtd:=mtotgqtd-DM1.Query3.fieldbyName('P2QTD').AsFloat;
{
   if (trim(DM1.Query3.fieldbyname('P1OBS1').AsString)<>'') or
      (trim(DM1.Query3.fieldbyname('P1OBS2').AsString)<>'') or
      (trim(DM1.Query3.fieldbyname('P1OBS3').AsString)<>'') then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.impf(mlin,01,'Observações.:',mneg);
      if (trim(DM1.Query3.fieldbyname('P1OBS1').AsString)<>'') then
         begin
         form_impres_resfat.RDprint1.impf(mlin,16,DM1.Query3.fieldbyname('P1OBS1').AsString,m12ccp);
         mlin:=mlin+1;
         end;
      if (trim(DM1.Query3.fieldbyname('P1OBS2').AsString)<>'') then
         begin
         form_impres_resfat.RDprint1.impf(mlin,16,DM1.Query3.fieldbyname('P1OBS2').AsString,m12ccp);
         mlin:=mlin+1;
         end;
      if (trim(DM1.Query3.fieldbyname('P1OBS3').AsString)<>'') then
         begin
         form_impres_resfat.RDprint1.impf(mlin,16,DM1.Query3.fieldbyname('P1OBS3').AsString,m12ccp);
         mlin:=mlin+1;
         end;
      end;

}
   DM1.Query3.Next;

   if DM1.Query3.Eof then
      begin
      fResFatImpTotal(3,1);
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.Impf(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      mImpCab:=true;
      end;
   end;
// TERMINO DA FASE II DE IMPRESSAO-saidas

// outros movimentos inicio - ajuste de estoque]

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

la_Empresas:=fEmpresas_Selecionadas('CADAJU','AJCODEMP',Form_SelEmp.CLB_EMPRESAS);

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.SQL.Add('Select AJSEQ,AJTIPOM,AJQTD,AJESTMOV,AJMOTIVO'
                  +' from CADAJU '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                  +la_Empresas
                  +iif(la_Empresas='','',' and ')
                  +' AJTIPOM<3 ' );
if Trim(MDT1.Text)<>'/  /' then
   DM1.Query3.SQL.add(' and AJDATA>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query3.SQL.add(' and AJDATA<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
DM1.Query3.SQL.Add(' order by  AJSEQ ');
DM1.Query3.Open;


// Selecionar Formas de Pagamentos
mTipo_ant:=9;
mtotqtd:=0;
if not DM1.Query3.Eof then
   begin
   if mImpCab then
      fResFatImpCab(4,0)
   else if mlin>53 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      fResFatImpCab(4,0)
      end
   else
      fResFatImpCab(4,1);
   mImpCab:=false;
   end;

mtotqtd:=0;
While not DM1.Query3.Eof do
   begin
   mImprimiu:=true;
   if mImpCab then
      begin
      fResFatImpCab(4,0);
      mImpCab:=false;
      end;
   mlin:=mlin+1;
   if DM1.Query3.fieldbyName('AJTIPOM').AsInteger=0 then
      mpercAcreDes:=DM1.Query3.fieldbyName('AJQTD').AsFloat
   else
      mpercAcreDes:=DM1.Query3.fieldbyName('AJQTD').AsFloat*-1;

   form_impres_resfat.RDprint1.ImpF(mlin,01,insere(DM1.Query3.fieldbyName('AJSEQ').AsString,'0',06)
                           +' '+iif(DM1.Query3.fieldbyName('AJTIPOM').AsInteger=0,'Entrada ','Saida   ')
                           +' '+insere2(DM1.Query3.fieldbyName('AJMOTIVO').AsString,' ',66)
                           +insere(Formatfloat(mcasqtd, mpercAcreDes),' ',14),m12ccp);
   mtotqtd:=mtotqtd+mpercAcreDes;
   DM1.Query3.Next;
   if DM1.Query3.Eof then
      begin
      fResFatImpTotal(4,1);
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.Impf(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      mImpCab:=true;
      end;
   end;

// outros movidmentos termino - ajuste de estoque



// INICIO DA FASE REMESSA PARA CONSIGNAÇÕES

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADCLI' ,'CCODEMP','P1CODEMP' ,'CCODCLI' ,'P1CODCLI');

mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);

DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.SQL.Add('Select P1TIPO,P1CHAVE,P1ORDEM,P1CODCLI,P1CUPACRE,P1CUPDES,'
                  +'(P1TOTALL) AS P1TOTALL'
                  +',CRAZAO '
                  +',P1OBS1 '
                  +',P1OBS2 '
                  +',P1OBS3 '
                  +','+mcinst4+' as P2QTD '
                  +' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                  +la_Empresas
                  +iif(la_Empresas='','',' and ')
                  +' P1STATUS<'+mstatus_excluido
                  +' and (P1TIPO=11)' );
if Trim(MDT1.Text)<>'/  /' then
   DM1.Query3.SQL.add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query3.SQL.add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
DM1.Query3.SQL.Add(' group by  P1TIPO,P1CHAVE,P1ORDEM,P1CODCLI,P1CUPACRE,P1CUPDES,P1TOTALL,P1OBS1,P1OBS2,P1OBS3,CRAZAO ');
DM1.Query3.Open;
mTipo_ant:=9;
mtotqtd:=0;
mtotgqtd:=0;
mtotvb  :=0;
if not DM1.Query3.Eof then
   begin
   if mImpCab then
      fResFatImpCab(5,0)
   else if mlin>53 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      fResFatImpCab(5,0)
      end
   else
      fResFatImpCab(5,1);
   mImpCab:=false;
   end;


While not DM1.Query3.Eof do
   begin
   mImprimiu:=true;
   if mImpCab then
      begin
      fResFatImpCab(5,0);
      mImpCab:=false;
      end;
   mlin:=mlin+1;

   form_impres_resfat.RDprint1.ImpF(mlin,01,insere(DM1.Query3.fieldbyName('P1CHAVE').AsString,'0',06)
                           +'/'+insere(DM1.Query3.fieldbyName('P1ORDEM').AsString,'0',02)
                           +insere(' ',' ',11)
                           +' '+insere2(DM1.Query3.fieldbyName('CRAZAO').AsString,' ',46)
                           +insere(Formatfloat(mcasqtd, DM1.Query3.fieldbyName('P2QTD').AsFloat),' ',14)
                           +insere(Formatfloat(mcasas, DM1.Query3.fieldbyName('P1TOTALL').AsFloat),' ',15),m12ccp);
   mtotqtd:=mtotqtd+DM1.Query3.fieldbyName('P2QTD').AsFloat;
   mtotvb :=mtotvb+DM1.Query3.fieldbyName('P1TOTALL').AsFloat;
   mtotgqtd:=mtotgqtd-DM1.Query3.fieldbyName('P2QTD').AsFloat;
{
   if (trim(DM1.Query3.fieldbyname('P1OBS1').AsString)<>'') or
      (trim(DM1.Query3.fieldbyname('P1OBS2').AsString)<>'') or
      (trim(DM1.Query3.fieldbyname('P1OBS3').AsString)<>'') then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.impf(mlin,01,'Observações.:',mneg);
      if (trim(DM1.Query3.fieldbyname('P1OBS1').AsString)<>'') then
         begin
         form_impres_resfat.RDprint1.impf(mlin,16,DM1.Query3.fieldbyname('P1OBS1').AsString,m12ccp);
         mlin:=mlin+1;
         end;
      if (trim(DM1.Query3.fieldbyname('P1OBS2').AsString)<>'') then
         begin
         form_impres_resfat.RDprint1.impf(mlin,16,DM1.Query3.fieldbyname('P1OBS2').AsString,m12ccp);
         mlin:=mlin+1;
         end;
      if (trim(DM1.Query3.fieldbyname('P1OBS3').AsString)<>'') then
         begin
         form_impres_resfat.RDprint1.impf(mlin,16,DM1.Query3.fieldbyname('P1OBS3').AsString,m12ccp);
         mlin:=mlin+1;
         end;
      end;

 }
   DM1.Query3.Next;

   if DM1.Query3.Eof then
      begin
      fResFatImpTotal(5,1);
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.Impf(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      mImpCab:=true;
      end;
   end;
// TERMINO DA FASE RESMESSA PARA CONSIGNAÇÃO
// INICIO DA FASE VENDAS REMESSA PARA CONSIGNAÇÕES

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

la_Empresas:=fEmpresas_Selecionadas('CADACRE01','AR1CODEMP',Form_SelEmp.CLB_EMPRESAS);

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADACRE02','AR2CODEMP','AR1CODEMP','AR2CHAVE','AR1CHAVE');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADCLI' ,'CCODEMP','AR1CODEMP' ,'CCODCLI' ,'AR1CODCLI');


DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.SQL.Add('Select AR1CHAVE,AR2CHAVEPED,AR2ORDEM,AR1DATA,AR2DATA,AR2QTD,'
                  +'AR2VLR,AR1QTDENV,AR1VLRENV,'
                  +'AR1QTDFAT,AR1VLRFAT, '
                  +'AR1QTDDEV,AR1VLRDEV,'
                  +'CRAZAO '
                  +' from CADACRE01 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                  +la_Empresas
                  +iif(la_Empresas='','',' and ')
                  +' AR1TIPO=0'
                  +' and (AR2TIPOMOV=2)' );
if Trim(MDT1.Text)<>'/  /' then
   DM1.Query3.SQL.add(' and AR1DATA>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query3.SQL.add(' and AR1DATA<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
DM1.Query3.SQL.Add(' order by AR2DATA');
DM1.Query3.Open;
mTipo_ant:=9;
mtotqtd:=0;
mtotgqtd:=0;
mtotvb  :=0;
mQtdRem :=0;
mVlrRem :=0;
mQtdDev :=0;
mQtdVen :=0;

if not DM1.Query3.Eof then
   begin
   if mImpCab then
      fResFatImpCab(7,0)
   else if mlin>53 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      fResFatImpCab(7,0)
      end
   else
      fResFatImpCab(7,1);
   mImpCab:=false;
   end;


While not DM1.Query3.Eof do
   begin
   mImprimiu:=true;
   if mImpCab then
      begin
      fResFatImpCab(7,0);
      mImpCab:=false;
      end;
   mlin:=mlin+1;
   mpercAcreDes:=DM1.Query3.fieldbyName('AR1DATA').AsDateTime
                -DM1.Query3.fieldbyName('AR2DATA').AsDateTime;

   form_impres_resfat.RDprint1.ImpF(mlin,01,insere(DM1.Query3.fieldbyName('AR1CHAVE').AsString,'0',05)
                           +' '
                           +insere(DM1.Query3.fieldbyName('AR2CHAVEPED').AsString,'0',05)
                           +'/'+insere(DM1.Query3.fieldbyName('AR2ORDEM').AsString,'0',02)
                           +' '+FormatDatetime(fdt3,DM1.Query3.fieldbyName('AR2DATA').AsDateTime)
                           +' '+insere(FormatFloat('0',mpercAcreDes),' ',05)

                           +' '+insere2(DM1.Query3.fieldbyName('CRAZAO').AsString,' ',40)
                           +insere(Formatfloat(mcasqtd, DM1.Query3.fieldbyName('AR2QTD').AsFloat),' ',13)
                           +insere(Formatfloat(mcasas, DM1.Query3.fieldbyName('AR2VLR').AsFloat),' ',13),m12ccp);
   mQtdRem:=mQtdRem+DM1.Query3.fieldbyName('AR2QTD').AsFloat;
   mVlrRem:=mVlrRem+DM1.Query3.fieldbyName('AR2VLR').AsFloat;

//Cód.  Remessa  Data     Dias  Cliente                                    Quantidade        Valor
//12345 12345/01 10/09/20 12345 1234567890123456789012345678901234567890zz.zzz.zz9,90zz.zzz.zz9,99

   DM1.Query3.Next;

   if DM1.Query3.Eof then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:=fEmpresas_Selecionadas('CADACRE01','AR1CODEMP',Form_SelEmp.CLB_EMPRESAS);
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Select sum(AR1QTDENV) AS AR1QTDENV, '
                        +' sum(AR1VLRENV) AS AR1VLRENV, '
                        +' sum(AR1QTDFAT) AS AR1QTDFAT, '
                        +' sum(AR1VLRFAT) AS AR1VLRFAT, '
                        +' sum(AR1QTDDEV) AS AR1QTDDEV, '
                        +' sum(AR1VLRDEV) AS AR1VLRDEV '
                        +' from CADACRE01 '+iif(la_tabelas='','',',')+la_tabelas
                        +'       '+la_Join
                        +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                        +la_Empresas
                        +iif(la_Empresas='','',' and ')
                        +' AR1TIPO=0' );
      if Trim(MDT1.Text)<>'/  /' then
         DM1.Query2.SQL.add(' and AR1DATA>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
      if Trim(MDT2.Text)<>'/  /' then
         DM1.Query2.SQL.add(' and AR1DATA<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
      DM1.Query2.Open;
      mQtdRem :=DM1.Query2.fieldbyName('AR1QTDENV').AsFloat;
      mVlrRem :=DM1.Query2.fieldbyName('AR1VLRENV').AsFloat;
      mQtdDev :=DM1.Query2.fieldbyName('AR1QTDDEV').AsFloat;
      mQtdVen :=DM1.Query2.fieldbyName('AR1QTDFAT').AsFloat;
      fResFatImpTotal(7,1);
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.Impf(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      mImpCab:=true;
      end;
   end;
// TERMINO DA FASE ACERTOS DE CONSIGNADOS



//************************** REMESSA PARA VENDAS INICIO



// INICIO DA FASE REMESSA PARA CONSIGNAÇÕES

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADCLI' ,'CCODEMP','P1CODEMP' ,'CCODCLI' ,'P1CODCLI');
mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);


DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.SQL.Add('Select P1TIPO,P1CHAVE,P1ORDEM,P1CODCLI,P1CUPACRE,P1CUPDES,'
                  +'(P1TOTALL) AS P1TOTALL'
                  +',CRAZAO '
                  +',P1OBS1 '
                  +',P1OBS2 '
                  +',P1OBS3 '
                  +','+mcinst4+' as P2QTD '
                  +' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                  +la_Empresas
                  +iif(la_Empresas='','',' and ')
                  +' P1STATUS<'+mstatus_excluido
                  +' and (P1TIPO=7)' );
if Trim(MDT1.Text)<>'/  /' then
   DM1.Query3.SQL.add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query3.SQL.add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
DM1.Query3.SQL.Add(' group by  P1TIPO,P1CHAVE,P1ORDEM,P1CODCLI,P1CUPACRE,P1CUPDES,'
                  +'P1TOTALL,P1OBS1,P1OBS2,P1OBS3,CRAZAO ');
DM1.Query3.Open;
mTipo_ant:=9;
mtotqtd:=0;
mtotgqtd:=0;
mtotvb  :=0;
if not DM1.Query3.Eof then
   begin
   if mImpCab then
      fResFatImpCab(9,0)
   else if mlin>53 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      fResFatImpCab(9,0)
      end
   else
      fResFatImpCab(9,1);
   mImpCab:=false;
   end;


While not DM1.Query3.Eof do
   begin
   mImprimiu:=true;
   if mImpCab then
      begin
      fResFatImpCab(9,0);
      mImpCab:=false;
      end;
   mlin:=mlin+1;

   form_impres_resfat.RDprint1.ImpF(mlin,01,insere(DM1.Query3.fieldbyName('P1CHAVE').AsString,'0',06)
                           +'/'+insere(DM1.Query3.fieldbyName('P1ORDEM').AsString,'0',02)
                           +insere(' ',' ',11)
                           +' '+insere2(DM1.Query3.fieldbyName('CRAZAO').AsString,' ',46)
                           +insere(Formatfloat(mcasqtd, DM1.Query3.fieldbyName('P2QTD').AsFloat),' ',14)
                           +insere(Formatfloat(mcasas, DM1.Query3.fieldbyName('P1TOTALL').AsFloat),' ',15),m12ccp);
   mtotqtd:=mtotqtd+DM1.Query3.fieldbyName('P2QTD').AsFloat;
   mtotvb :=mtotvb+DM1.Query3.fieldbyName('P1TOTALL').AsFloat;
   mtotgqtd:=mtotgqtd-DM1.Query3.fieldbyName('P2QTD').AsFloat;

   DM1.Query3.Next;

   if DM1.Query3.Eof then
      begin
      fResFatImpTotal(9,1);
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.Impf(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      mImpCab:=true;
      end;
   end;
// TERMINO DA FASE RESMESSA PARA CONSIGNAÇÃO
// INICIO DA FASE VENDAS REMESSA PARA CONSIGNAÇÕES

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADACRE01','AR1CODEMP',Form_SelEmp.CLB_EMPRESAS);
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADACRE02','AR2CODEMP','AR1CODEMP','AR2CHAVE','AR1CHAVE');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADCLI' ,'CCODEMP','AR1CODEMP' ,'CCODCLI' ,'AR1CODCLI');
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.SQL.Add('Select AR1CHAVE,AR2CHAVEPED,AR2ORDEM,AR1DATA,AR2DATA,AR2QTD,'
                  +'AR2VLR,AR1QTDENV,AR1VLRENV,'
                  +'AR1QTDFAT,AR1VLRFAT, '
                  +'AR1QTDDEV,AR1VLRDEV,'
                  +'CRAZAO '
                  +' from CADACRE01 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                  +la_Empresas
                  +iif(la_Empresas='','',' and ')
                  +' AR1TIPO=1'
                  +' and (AR2TIPOMOV=0)' );
if Trim(MDT1.Text)<>'/  /' then
   DM1.Query3.SQL.add(' and AR1DATA>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query3.SQL.add(' and AR1DATA<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
DM1.Query3.SQL.Add(' order by AR2DATA');
DM1.Query3.Open;
mTipo_ant:=9;
mtotqtd:=0;
mtotgqtd:=0;
mtotvb  :=0;
mQtdRem :=0;
mVlrRem :=0;
mQtdDev :=0;
mQtdVen :=0;

if not DM1.Query3.Eof then
   begin
   if mImpCab then
      fResFatImpCab(10,0)
   else if mlin>53 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      fResFatImpCab(10,0)
      end
   else
      fResFatImpCab(10,1);
   mImpCab:=false;
   end;


While not DM1.Query3.Eof do
   begin
   mImprimiu:=true;
   if mImpCab then
      begin
      fResFatImpCab(10,0);
      mImpCab:=false;
      end;
   mlin:=mlin+1;
   mpercAcreDes:=DM1.Query3.fieldbyName('AR1DATA').AsDateTime
                -DM1.Query3.fieldbyName('AR2DATA').AsDateTime;

   form_impres_resfat.RDprint1.ImpF(mlin,01,insere(DM1.Query3.fieldbyName('AR1CHAVE').AsString,'0',05)
                           +' '
                           +insere(DM1.Query3.fieldbyName('AR2CHAVEPED').AsString,'0',05)
                           +'/'+insere(DM1.Query3.fieldbyName('AR2ORDEM').AsString,'0',02)
                           +' '+FormatDatetime(fdt3,DM1.Query3.fieldbyName('AR2DATA').AsDateTime)
                           +' '+insere(FormatFloat('0',mpercAcreDes),' ',05)

                           +' '+insere2(DM1.Query3.fieldbyName('CRAZAO').AsString,' ',40)
                           +insere(Formatfloat(mcasqtd, DM1.Query3.fieldbyName('AR2QTD').AsFloat),' ',13)
                           +insere(Formatfloat(mcasas, DM1.Query3.fieldbyName('AR2VLR').AsFloat),' ',13),m12ccp);
   mQtdRem:=mQtdRem+DM1.Query3.fieldbyName('AR2QTD').AsFloat;
   mVlrRem:=mVlrRem+DM1.Query3.fieldbyName('AR2VLR').AsFloat;

//Cód.  Remessa  Data     Dias  Cliente                                    Quantidade        Valor
//12345 12345/01 10/09/20 12345 1234567890123456789012345678901234567890zz.zzz.zz9,90zz.zzz.zz9,99

   DM1.Query3.Next;

   if DM1.Query3.Eof then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:=fEmpresas_Selecionadas('CADACRE01','AR1CODEMP',Form_SelEmp.CLB_EMPRESAS);
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Select sum(AR1QTDENV) AS AR1QTDENV, '
                        +' sum(AR1VLRENV) AS AR1VLRENV, '
                        +' sum(AR1QTDFAT) AS AR1QTDFAT, '
                        +' sum(AR1VLRFAT) AS AR1VLRFAT, '
                        +' sum(AR1QTDDEV) AS AR1QTDDEV, '
                        +' sum(AR1VLRDEV) AS AR1VLRDEV '
                        +' from CADACRE01 '+iif(la_tabelas='','',',')+la_tabelas
                        +'       '+la_Join
                        +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                        +la_Empresas
                        +iif(la_Empresas='','',' and ')
                        +' AR1TIPO=1' );
      if Trim(MDT1.Text)<>'/  /' then
         DM1.Query2.SQL.add(' and AR1DATA>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
      if Trim(MDT2.Text)<>'/  /' then
         DM1.Query2.SQL.add(' and AR1DATA<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
      DM1.Query2.Open;
      mQtdRem :=DM1.Query2.fieldbyName('AR1QTDENV').AsFloat;
      mVlrRem :=DM1.Query2.fieldbyName('AR1VLRENV').AsFloat;
      mQtdDev :=DM1.Query2.fieldbyName('AR1QTDDEV').AsFloat;
      mQtdVen :=DM1.Query2.fieldbyName('AR1QTDFAT').AsFloat;
      fResFatImpTotal(10,1);
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.Impf(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      mImpCab:=true;
      end;
   end;
// TERMINO DA FASE ACERTOS DE CONSIGNADOS


//************************** REMESSA PARA VENDAS TERMINO


// INICIO DA FASE MOVIMENTOS EXCLUIDOS

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADAJU','AJCODEMP',Form_SelEmp.CLB_EMPRESAS);
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

//fInnerJoin(1,'CADACRE02','AR2CODEMP','AR1CODEMP','AR2CHAVE','AR1CHAVE');
//if pbanco=0 then
//   la_instrucao:=la_instrucao+' and ';
//fInnerJoin(0,'CADCLI' ,'CCODEMP','AR1CODEMP' ,'CCODCLI' ,'AR1CODCLI');


mcinst:='Ajuste de Estoque';
Qr_Exc.Close;
Qr_Exc.SQL.Clear;
Qr_Exc.SQL.Add('Select AJSEQ AS CODIGO, '
               +' (AJSEQ-AJSEQ) AS ORDEM, '
               +' (AJSEQ-AJSEQ) AS CODCLI,'
               +' AJCODEMP AS CODEMP, '
               +chr(39)+mcinst+chr(39)+ ' AS NOME,'
               +' AJUSREXC AS CODUSR, '
               +' AJDATEXC AS DATAMOV,'
               +' AJHOREXC AS HORAMOV, '
               +' AJQTD    AS QUANTIDADE, '
               +' AJTIPOM  AS TIPOMOV '
               +' from OLD_CADAJU '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
               +la_Empresas
               +iif(la_Empresas='','',' and ')
               +' AJQTD<>0' );
if Trim(MDT1.Text)<>'/  /' then
   Qr_Exc.SQL.add(' and AJDATEXC>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Exc.SQL.add(' and AJDATEXC<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
mcinst:='Pedido de Cliente';
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin5(1,'OLD_CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM','P2CODNOV','P1CODNOV');

Qr_Exc.SQL.Add(' union ');

mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);


Qr_Exc.SQL.Add('Select P1CHAVE       AS CODIGO, '
                  +' P1ORDEM             AS ORDEM, '
                  +' P1CODCLI            AS CODCLI,'
                  +' P1CODEMP            AS CODEMP, '
                  +chr(39)+mcinst+chr(39)+ ' AS NOME,'
                  +' P1USRMOD            AS CODUSR, '
                  +' P1DTMOD             AS DATAMOV,'
                  +' P1HRMOD             AS HORAMOV '
                  +','+mcinst4+' as P2QTD, '
                  +' 0  AS TIPOMOV '


                  +' from OLD_CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                  +la_Empresas
                  +iif(la_Empresas='','',' and ')
                  +' P1STATUS>='+mstatus_excluido+'' );
if Trim(MDT1.Text)<>'/  /' then
   Qr_Exc.SQL.add(' and P1DTMOD>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Exc.SQL.add(' and P1DTMOD<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));

Qr_Exc.SQL.add(' group by P1CHAVE,P1ORDEM,P1CODCLI,P1CODEMP,P1USRMOD,P1DTMOD,P1HRMOD');
try
   Qr_Exc.Open;
except
   Qr_Exc.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;
mTipo_ant:=9;
mtotqtd:=0;
mtotgqtd:=0;
mtotvb  :=0;
mQtdRem :=0;
mVlrRem :=0;
mQtdDev :=0;
mQtdVen :=0;
mlin:=mlin+1;

if not Qr_Exc.Eof then
   begin
   if mImpCab then
      fResFatImpCab(8,0)
   else if mlin>53 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      fResFatImpCab(8,0)
      end
   else
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
      fResFatImpCab(8,1)
      end;
   mImpCab:=false;
   end;


While not Qr_Exc.Eof do
   begin
   mImprimiu:=true;
   if mImpCab then
      begin
      fResFatImpCab(8,0);
      mImpCab:=false;
      end;
   mlin:=mlin+1;

   form_impres_resfat.RDprint1.ImpF(mlin,01,insere(Qr_ExcCODIGO.AsString,'0',05)
                           +' '
                           +insere2(Qr_ExcNOME.AsString,' ',28)
                           +' '+insere2(Qr_Excnomusr.AsString,' ',30)
                           +insere(Formatfloat(mcasqtd, Qr_ExcQUANTIDADE.AsFloat),' ',11)
                           +' '+FormatDatetime(fdt2,Qr_ExcDATAMOV.Value)
                           +' '+insere2(Qr_ExcHORAMOV.Value,' ',08),m12ccp);
   Qr_Exc.Next;

   if Qr_Exc.Eof then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.Impf(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      mImpCab:=true;
      end;
   end;
// TERMINO DA FASE ACERTOS DE CONSIGNADOS



if lbl_saldo.Visible then
   begin
   dia:=FormatDateTime('dd',edt_datasaldo.Date);
   mes:=FormatDateTime('mm',edt_datasaldo.Date);
   ano:=FormatDateTime('yyyy',edt_datasaldo.Date);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('SELECT SUM(CED_QTDDIA'+DIA+') as saldo FROM CADEDIA WHERE CED_ANO='+ANO+' AND CED_MES='+mes);
   DM1.Query1.Open;
   SALDO:=DM1.Query1.FieldByName('saldo').AsString;
   end
else
   begin
   if CB_QTDESTOQUE.Checked then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      if ValInt(copy(mpseg,4,2))>0 then
         begin
         DM1.Query1.SQL.Add('Select sum(CLQTD) as SALDO from CADLGC '
                        +fla_EmpBaixaAlta(0,'CADEST',' where ',codemp,'CLCODEMP',''));
         end
      else
         begin
         DM1.Query1.SQL.Add('Select sum(CESALDO) as SALDO from CADEST '
                           +fla_EmpBaixaAlta(0,'CADEST',' where ',codemp,'CECODEMP',''));
         end;
      DM1.Query1.OPen;
      SALDO:=DM1.Query1.FieldByName('SALDO').AsString;
      end;
   end;
mlin:=mlin+1;
//  form_impres_resfat.RDprint1.Impf(mlin,01,Centra('Estoque: '+FormatFloat(mcasqtd, DM1.Query1.fieldbyName('SALDO').AsFloat)+' em: '+FormatDateTime(fdt2, date)+' as '+FormatDatetime(fhr, time),' ',96),m12ccp);
form_impres_resfat.RDprint1.Impf(mlin,01,Centra('Estoque: '+FormatFloat(mcasqtd, ValFloat(SALDO))+' em: '+FormatDateTime(fdt2, edt_datasaldo.Date),' ',96),m12ccp);
//  end;



if not mImprimiu then
   form_impres_resfat.RDprint1.ImpF(13,01,centra('NAO HA REGISTRO A SER IMPRESSO!',' ',60),mexp);
if form_impres_resfat.RDprint1.Setup then form_impres_resfat.RDprint1.Fechar;
form_impres_resfat.Free;
form_impres_resfat:=nil;

{
tab_tped[00]:='Orçamento';
tab_tped[01]:='Venda Normal';
tab_tped[02]:='Simples Remessa';
tab_tped[03]:='Devolucação a Fornecedor';
tab_tped[04]:='Remessa p/Troca';
tab_tped[05]:='Transferencia de Mercadorias';
tab_tped[06]:='Remessa p/Beneficiamento';
tab_tped[07]:='Remessa p/Venda(Vda.Fora do Estab.)';
tab_tped[08]:='Devolução Cliente(Entrada) Normal';
tab_tped[09]:='Emprestimo de Mercadorias';
tab_tped[10]:='Nota Complementar';
tab_tped[11]:='Remessa Para Consignações';
tab_tped[12]:='Devolução Mercadoria Consignações';
tab_tped[13]:='Devolução Remessa p/Venda(Vda.Fora do Estab.)';
tab_tped[14]:='Venda Mercadoria Consignada';
tab_tped[15]:='Venda Remessa p/Venda(Vda.Fora do Estabel.)';
tab_tped[16]:='Venda Normal(Troca de Mercadorias)';
tab_tped[17]:='Devolução de Cliente(Troca de Mercadorias)';
}


end;

procedure TFrm_ResFat.FormCreate(Sender: TObject);
begin
edt_datasaldo.Date:=now;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

MDT1.Text:=FormatDatetime(fdt2, date);
MDT1Exit(self);
MDT2.Text:=FormatDatetime(fdt2, date);
DM1.Qr_FP.Close;
DM1.Qr_FP.SQL.Clear;
DM1.Qr_FP.SQL.Add('Select * from CADFP order by FPDESC');
DM1.Qr_FP.Open;

end;

procedure TFrm_ResFat.FormKeyDown(Sender: TObject; var Key: Word;
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

if key=117 then
   begin
   Application.CreateForm(TFrm_PedCli, Frm_PedCli);
   Frm_PedCli.ShowModal;
   Frm_PedCli.Free;
   end;


end;

procedure TFrm_ResFat.bbSairClick(Sender: TObject);
begin
close;
end;

function tFrm_ResFat.fResFatImpTotal(pTipo,pSubTipo: Integer): Boolean;
begin
if ptipo=0 then
   begin
   if mlin>55 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      fResFatImpCab(ptipo,0);
      end;
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',47)+'---------- -------------            -------------',m12ccp);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',47)+insere(FormatFloat(mcasqtd, mtotqtd),' ',10)
                           +insere(FormatFloat(mcasas, mtotvb),' ',14)
                           +insere(' ',' ',11)
                           +insere(FormatFloat(mcasas, mtotvr),' ',14),m12ccp);
   mtotvb:=0;
   mtotvr:=0;
   mtotqtd:=0;
   if PSubTipo=1 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',47)+'---------- -------------            -------------',m12ccp);
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',47)+insere(FormatFloat(mcasqtd, mtotgqtd),' ',10)
                              +insere(FormatFloat(mcasas, mtotgvb),' ',14)
                              +insere(' ',' ',11)
                              +insere(FormatFloat(mcasas, mtotgvr),' ',14),m12ccp);
      mtotgvb:=0;
      mtotgvr:=0;
      mtotgqtd:=0;
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',60)+'Valor em dinheiro...: '+Insere(FormatFloat(mcasas, mtotdin),' ',14),m12ccp);
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',60)+'Valor em documentos.: '+Insere(FormatFloat(mcasas, mtotdoc),' ',14),m12ccp);
      end;
   end
else if ptipo=1 then
   begin
   if mlin>55 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      fResFatImpCab(ptipo,0);
      end;
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',82)+'--------------',m12ccp);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',82)+insere(FormatFloat(mcasas, mtotqtd),' ',14),m12ccp);
   mtotqtd:=0;
   if PSubTipo=1 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',82)+'--------------',m12ccp);
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',82)+insere(FormatFloat(mcasas, mtotgqtd),' ',14),m12ccp);
      mtotgqtd:=0;
      end;
   end
else if ptipo=2 then
   begin
   if mlin>55 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      fResFatImpCab(ptipo,0);
      end;
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',82)+'--------------',m12ccp);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',82)+insere(FormatFloat(mcasqtd, mtotqtd),' ',14),m12ccp);
   mtotqtd:=0;
   if PSubTipo=1 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',82)+'--------------',m12ccp);
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',82)+insere(FormatFloat(mcasqtd, mtotgqtd),' ',14),m12ccp);
      mtotgqtd:=0;
      end;
   end
else if ptipo=3 then
   begin
   if mlin>55 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      fResFatImpCab(ptipo,0);
      end;
   if mtotqtd>0 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',82)+'--------------',m12ccp);
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',82)+insere(FormatFloat(mcasqtd, mtotqtd),' ',14),m12ccp);
      mtotqtd:=0;
      end;
   if mtotgqtd>0 then
      begin
      if PSubTipo=1 then
         begin
         mlin:=mlin+1;
         form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',82)+'--------------',m12ccp);
         mlin:=mlin+1;
         form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',82)+insere(FormatFloat(mcasqtd, mtotgqtd),' ',14),m12ccp);
         mtotgqtd:=0;
         end;
      end;
   end
else if ptipo=4 then
   begin
   if mlin>55 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      fResFatImpCab(ptipo,0);
      end;
//   if mtotqtd<>0 then
//      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',82)+'--------------',m12ccp);
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',82)+insere(FormatFloat(mcasqtd, mtotqtd),' ',14),m12ccp);
      mtotqtd:=0;
//      end;
   end
else if ptipo=5 then
   begin
   if mlin>55 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      fResFatImpCab(ptipo,0);
      end;
   if mtotqtd>0 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',67)+'-------------- --------------',m12ccp);
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',67)+insere(FormatFloat(mcasqtd, mtotqtd),' ',14)
                              +insere(FormatFloat(mcasas, mtotvb),' ',15),m12ccp);
      mtotqtd:=0;
      mtotvb :=0;
      end;
   end
else if ptipo=6 then
   begin
   if mlin>55 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      fResFatImpCab(ptipo,0);
      end;
   if mtotqtd>0 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',67)+'-------------- --------------',m12ccp);
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',67)+insere(FormatFloat(mcasqtd, mtotqtd),' ',14)
                              +insere(FormatFloat(mcasas, mtotvb),' ',15),m12ccp);
      mtotqtd:=0;
      mtotvb :=0;
      end;
   end
else if ptipo=7 then
   begin
   if mlin>55 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      fResFatImpCab(ptipo,0);
      end;
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',70)+'------------- ------------',m12ccp);
   mlin:=mlin+1;
   try
      mpercAcreDes:=(mqtdven*100)/mQtdRem;
   except
      mpercAcreDes:=0;
      end;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere('Qtd.Consignada:',' ',70)+insere(FormatFloat(mcasqtd, mQtdRem),' ',13)
                           +insere(Formatfloat(mcasas, mVlrRem),' ',13)
                           ,m12ccp);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere('Qtd.devolvida.:',' ',70)+insere(FormatFloat(mcasqtd, mQtdDev),' ',13)
                           ,m12ccp);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere('Qtd.vendida...:',' ',70)+insere(FormatFloat(mcasqtd, mQtdVen),' ',13)
                           +' '+insere2(Formatfloat(mcasas, mpercAcreDes)+'%',' ',13)
                           ,m12ccp);
   mVlrRem:=0;
   mQtdRem:=0;
   mQtdDev:=0;
   mQtdVen:=0;
   end
else if ptipo=8 then
   begin
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
   form_impres_resfat.RDprint1.Novapagina;
   mlin:=0;
   end
else if ptipo=9 then
   begin
   if mlin>55 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      fResFatImpCab(ptipo,0);
      end;
   if mtotqtd>0 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',67)+'-------------- --------------',m12ccp);
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',67)+insere(FormatFloat(mcasqtd, mtotqtd),' ',14)
                              +insere(FormatFloat(mcasas, mtotvb),' ',15),m12ccp);
      mtotqtd:=0;
      mtotvb :=0;
      end;
   end
else if ptipo=10 then
   begin
   if mlin>55 then
      begin
      mlin:=mlin+1;
      form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
      form_impres_resfat.RDprint1.Novapagina;
      mlin:=0;
      fResFatImpCab(ptipo,0);
      end;
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(' ',' ',70)+'------------- ------------',m12ccp);
   mlin:=mlin+1;
   try
      mpercAcreDes:=(mqtdven*100)/mQtdRem;
   except
      mpercAcreDes:=0;
      end;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere('Qtd.Remessa....',' ',70)+insere(FormatFloat(mcasqtd, mQtdRem),' ',13)
                           +insere(Formatfloat(mcasas, mVlrRem),' ',13)
                           ,m12ccp);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere('Qtd.devolvida.:',' ',70)+insere(FormatFloat(mcasqtd, mQtdDev),' ',13)
                           ,m12ccp);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere('Qtd.vendida...:',' ',70)+insere(FormatFloat(mcasqtd, mQtdVen),' ',13)
                           +' '+insere2(Formatfloat(mcasas, mpercAcreDes)+'%',' ',13)
                           ,m12ccp);
   mVlrRem:=0;
   mQtdRem:=0;
   mQtdDev:=0;
   mQtdVen:=0;
   end;


result:=true;
end;

function TFrm_ResFat.fResFatImpCab(pTipo,pSubTipo: Integer): Boolean;
{
Parametros
ptipo=0 Cabecalho de vendas e Trocas
     =1 Documentos de vendas e trocas
     =2 Cabecalho de Transferencias entradas
     =3 Cabecalho de transferencas saidas
     =4 Cabecalho de Outras Movimentações Ajustes
     =5 Cabecalho de Remessa para consignações
pSubtipo=0 Imprime todo o cabecalho
        =1 so o cabecalho final

}
begin
if pSubTipo=0 then
   begin
   mpag:=mpag+1;
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(DM1.Tb_EmpRAZAO_CAB.Value,' ',60)+'Página:     '+Formatfloat('0000', mpag),mnormal);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2(DM1.Tb_EmpFANTASIA_CAB.Value,' ',60)+'Data: '+FormatDateTime(fdt, date),mnormal);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('Resumo do Caixa: '+fperiodo(0,MDT1.Text,MDT2.Text),' ',60)+'Hora: '+FormatDateTime(fhr, Time),mnormal);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
   end;
if ptipo=0 then
   begin
   mlin:=mlin+2;
   form_impres_resfat.RDprint1.ImpF(mlin,01,'Vendas e trocas',mneg);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,'                                                                  Valor  Desconto/         Valor',m12ccp);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,'Chave  Cliente                                 Quantidade         Bruto  Acrescimo      Recebido',m12ccp);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01, tab_tped[mtipo_ant],mneg);
   end
else if ptipo=1 then
   begin
   mlin:=mlin+2;
   form_impres_resfat.RDprint1.ImpF(mlin,01,'Documentos das Vendas e trocas',mneg);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,'Numero doc.     Dt. Vencto  Prazo Banco                                                    Valor',m12ccp);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
   mlin:=mlin+1;
   if not DM1.Qr_FP.Locate('FPCODIGO',mtipo_ant,[]) then
      DM1.Qr_FP.First;
   form_impres_resfat.RDprint1.ImpF(mlin,01, DM1.Qr_FPFPDESC.Value,mneg);
   end
else if ptipo=2 then
   begin
   mlin:=mlin+2;
   form_impres_resfat.RDprint1.ImpF(mlin,01,'Transferencias de Produtos',mneg);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,'Codigo     Ref. a   Origem/Destino                                                    Quantidade',m12ccp);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01, 'Entrada',mneg);
   end
else if ptipo=3 then
   begin
   mlin:=mlin+2;
   form_impres_resfat.RDprint1.ImpF(mlin,01,'Transferencias de Produtos',mneg);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,'Codigo     Ref. a   Origem/Destino                                                    Quantidade',m12ccp);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01, 'Saida',mneg);
   end
else if ptipo=4 then
   begin
   mlin:=mlin+2;
   form_impres_resfat.RDprint1.ImpF(mlin,01,'Outras Movimentações',mneg);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,'Codigo Tipo    Operação                                                               Quantidade',m12ccp);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
   end
else if ptipo=5 then
   begin
   mlin:=mlin+2;
   form_impres_resfat.RDprint1.ImpF(mlin,01,'Consignados Cadastrados',mneg);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,'Codigo               Cliente                                           Quantidade          Valor',m12ccp);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
   end
else if ptipo=6 then
   begin
   mlin:=mlin+2;
   form_impres_resfat.RDprint1.ImpF(mlin,01,'Consignados Acertados',mneg);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,'Codigo               Cliente                                           Quantidade          Valor',m12ccp);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
   end
else if ptipo=7 then
   begin
   mlin:=mlin+2;
   form_impres_resfat.RDprint1.ImpF(mlin,01,'Consignados Acertados',mneg);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,'Cód.  Remessa  Data     Dias  Cliente                                    Quantidade        Valor',m12ccp);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
   end
else if ptipo=8 then
   begin
   mlin:=mlin+2;
   form_impres_resfat.RDprint1.ImpF(mlin,01,'Movimentos Excluidos',mneg);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,'Código Operação                     Usuario                       Quantidade       Data     Hora',m12ccp);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
   end
else if ptipo=9 then
   begin
   mlin:=mlin+2;
   form_impres_resfat.RDprint1.ImpF(mlin,01,'Remessa p/Vendas Cadastrados',mneg);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,'Codigo               Cliente                                           Quantidade          Valor',m12ccp);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
   end
else if ptipo=10 then
   begin
   mlin:=mlin+2;
   form_impres_resfat.RDprint1.ImpF(mlin,01,'Remessa para Vendas Acertados',mneg);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,'Cód.  Remessa  Data     Dias  Cliente                                    Quantidade        Valor',m12ccp);
   mlin:=mlin+1;
   form_impres_resfat.RDprint1.ImpF(mlin,01,insere2('-','-',96),m12ccp);
   end;

//Código Operação                     Usuario                                        Data     Hora
//123456 1234567890123456789012345678 1234567980123456789012346578901234567890 17/05/2005 12:00:05

result:=true;
end;

procedure TFrm_ResFat.Qr_ExcCalcFields(DataSet: TDataSet);
begin
if Qr_ExcCODUSR.Value>0 then
  begin
  if Qr_ExcCODUSR.Value=1111 then
     Qr_Excnomusr.Value:='Programador'
  else if flqr1('NOMUSR','','CADUSR','N','CODUSR',Qr_ExcCODUSR.AsString) then
     begin
     Qr_Excnomusr.Value:=DM1.Query1.Fields[0].AsString;
     end;
  end;
end;

procedure TFrm_ResFat.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.

unit S_ExtBco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, Buttons,
  S_Bco, S_Dpto, S_CCu, s_DM2,S_Cli,S_For,S_Tra,S_Ven,lerarq,func, DB,
  DBTables,S_Impres,func2, S_SelEmp;


type
  TFrm_ExtBco = class(TForm)
    CODIGO: TEdit;
    NOME: TEdit;
    CB_TIPO: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    MDT1: TMaskEdit;
    Label7: TLabel;
    MDT2: TMaskEdit;
    RG_NAT: TRadioGroup;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Qr_LDR: TQuery;
    Qr_LDRnome: TStringField;
    Qr_LDRDATADP: TDateTimeField;
    Qr_LDRDATAREAL: TDateTimeField;
    Qr_LDRDATAREF: TDateTimeField;
    Qr_LDRCODBCO: TFloatField;
    Qr_LDRCODDEP: TStringField;
    Qr_LDRCODCC: TStringField;
    Qr_LDRVALORP: TFloatField;
    Qr_LDRVALORR: TFloatField;
    Qr_LDRCODLDR: TFloatField;
    Qr_LDRNATDC: TStringField;
    Qr_LDRDESCMV: TStringField;
    Qr_LDRNUMDOC: TStringField;
    Qr_LDRNUMDOC2: TStringField;
    Qr_LDRTIPO: TStringField;
    Qr_LDRCODIGO: TFloatField;
    Qr_LDRCOMPENS: TFloatField;
    RG_TPPESQ: TRadioGroup;
    RG_ESTADO: TRadioGroup;
    StaticText2: TStaticText;
    CODBCO: TEdit;
    OMITIR_BCO: TCheckBox;
    lbx_codbco: TListBox;
    StaticText3: TStaticText;
    CODCCU: TEdit;
    sbn_codccu: TSpeedButton;
    OMITIR_CCU: TCheckBox;
    lbx_codccu: TListBox;
    StaticText1: TStaticText;
    CODDEP: TEdit;
    OMITIR_DEP: TCheckBox;
    sbn_coddep: TSpeedButton;
    lbx_coddep: TListBox;
    GB_MASTER: TGroupBox;
    CB_SALDO: TCheckBox;
    procedure CB_TIPOExit(Sender: TObject);
    procedure CODIGOExit(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Qr_LDRCalcFields(DataSet: TDataSet);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODCCUExit(Sender: TObject);
    procedure sbn_codccuClick(Sender: TObject);
    procedure lbx_codccuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODDEPExit(Sender: TObject);
    procedure sbn_coddepClick(Sender: TObject);
    procedure lbx_coddepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CB_SALDOClick(Sender: TObject);
  private
    { Private declarations }
    function FBuscaSaldo(pTipoLan: Integer): Real;
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;

  public
    { Public declarations }
    form_Impres_ExtBco: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_ExtBco: TFrm_ExtBco;
  mDataPesq: String;
implementation

uses S_DM1, S_DM4;

{$R *.dfm}

procedure TFrm_ExtBco.CB_TIPOExit(Sender: TObject);
begin
CB_TIPO.Text:=CB_TIPO.items.Strings[CB_TIPO.itemindex];

end;

procedure TFrm_ExtBco.CODIGOExit(Sender: TObject);
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
      FMensagem('Código Não Cadastrado!',0,['0'],0);
      CODIGO.SetFocus;
      end
   else
      NOME.Text:=DM1.Query1.Fields[0].AsString;
   end
else
   NOME.Text:='Todos...';

end;

procedure TFrm_ExtBco.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      FMensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_ExtBco.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      FMensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_ExtBco.CODIGOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
    if CB_TIPO.Text='FR' then
      begin
      CODIGO.Text:=fchamafor(0,'frm_bco',key);
      if fsonumero(CODIGO.Text)>0 then
         begin
         CODIGOExit(self);
         end;
      end
   else if CB_TIPO.Text='TR' then
      begin
      CODIGO.Text:=fchamaTra(0,'frm_bco',key);
      if fsonumero(CODIGO.Text)>0 then
         begin
         CODIGOExit(self);
         end;

      end
   else if CB_TIPO.Text='VD' then
      begin
      CODIGO.Text:=fchamaven(0,'frm_bco',key);
      if fsonumero(CODIGO.Text)>0 then
         begin
         CODIGOExit(self);
         end;

      end
   else
      begin
      CODIGO.Text:=fChamaCli(0,'Frm_ExtBco',key);
      key:=#0;
      end;
   key:=' ';
   end;

end;

procedure TFrm_ExtBco.bbImprimirClick(Sender: TObject);
var
msaldor, msaldora: Real;
msaldob, msaldoba: Real;
mtotcred, mtotdeb: Real;
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      FMensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

la_tabelas  :='';

la_Empresas:=fEmpresas_Selecionadas('CADLDR','CODEMP',Form_SelEmp.CLB_EMPRESAS);

if RG_TPPESQ.ItemIndex=0 then
   mDataPesq:='DATAREF'
else if RG_TPPESQ.ItemIndex=1 then
   mDataPesq:='DATADP'
else
   mDataPesq:='DATAREAL';




Qr_Ldr.Close;
Qr_Ldr.SQL.Clear;
Qr_Ldr.SQL.Add('Select DATADP,DATAREAL,DATAREF,CODBCO,CODDEP,CODCC, '
              +'       VALORP,VALORR,CODLDR,NATDC,DESCMV,NUMDOC,NUMDOC2,TIPO,CODIGO,COMPENS '
              +' from CADLDR where STATUS<>9 '
              +iif(Trim(la_Empresas)='','',' and '+la_Empresas)
              +iif(RG_NAT.ItemIndex=2,'  and NATDC<>'+chr(39)+'D'+chr(39),'')
              +iif(RG_NAT.ItemIndex=1,'  and NATDC='+chr(39)+'D'+chr(39),''));
if RG_ESTADO.ItemIndex=0 then
   Qr_LDR.SQL.Add(' and (not DATAREAL is null and DATAREAL>'+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')')
else if RG_ESTADO.ItemIndex=1 then
   Qr_LDR.SQL.Add(' and (DATAREAL is null or DATAREAL<='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')');

mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and CODBCO '+mcinst2);

mcinst2:=fItensListBox(1,lbx_codccu,OMITIR_CCU);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and CODCC '+mcinst2);

mcinst2:=fItensListBox(1,lbx_coddep,OMITIR_DEP);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and CODDEP '+mcinst2);
if trim(MDT1.Text)<>'/  /' then
   begin
   Qr_Ldr.SQL.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
   end;
if trim(MDT2.Text)<>'/  /' then
   begin
   Qr_Ldr.SQL.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));
   end;
if Trim(CODIGO.Text)<>'' then
   begin
   Qr_Ldr.SQL.Add(' and TIPO='+chr(39)+CB_TIPO.Text+chr(39)
                 +' and CODIGO=0'+CODIGO.Text);
   end;
if RG_TPPESQ.ItemIndex=0 then
   Qr_Ldr.SQL.Add(' Order by DATAREF,CODLDR')
else if RG_TPPESQ.ItemIndex=1 then
   Qr_Ldr.SQL.Add(' Order by DATADP,CODLDR')
else
   Qr_Ldr.SQL.Add(' Order by DATAREAL,CODLDR');
Qr_Ldr.Open;
if Qr_Ldr.Eof then
   begin
   FMensagem('Nada a Ser Impresso na Condicao Acima!',0,['0'],0);
   exit;
   end;


msaldor:=0;
msaldora:=FBuscaSaldo(1); // compensados
msaldob:=0;
msaldoba:=FBuscaSaldo(0);

msaldor:=msaldora;
msaldob:=msaldoba;
testeform := TFrm_ExtBco(FindGlobalComponent('form_Impres_ExtBco'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres,form_Impres_ExtBco);

form_Impres_ExtBco.mpag:=0;
form_Impres_ExtBco.mlin:=0;
mtotcred:=0;
mtotdeb :=0;

form_Impres_ExtBco.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
While not Qr_LDR.Eof do
   begin
   if form_Impres_ExtBco.mlin=0 then
      begin
      form_Impres_ExtBco.mpag:=form_Impres_ExtBco.mpag+1;
      form_Impres_ExtBco.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO_CAB.Value,mreduz);
      form_Impres_ExtBco.RDprint1.ImpF(01,120,'Pagina:     '+FormatFloat('0000',form_Impres_ExtBco.mpag),mreduz);
      form_Impres_ExtBco.RDprint1.ImpF(02,01,'Extrato Bancario. '+fperiodo(0,MDT1.Text,MDT2.Text)+'.',mreduz);
      form_Impres_ExtBco.RDprint1.ImpF(02,120,'Data: '+FormatDateTime(fdt2, date),mreduz);
      form_Impres_ExtBco.mlin:=2;
      if lbx_codbco.Count>0 then
         FImprimeTitulo('Banco',lbx_codbco,OMITIR_BCO);
      if lbx_codccu.Count>0 then
         FImprimeTitulo('Centro de Custo',lbx_codccu,OMITIR_CCU);
      if lbx_coddep.Count>0 then
         FImprimeTitulo('Departamento',lbx_coddep,OMITIR_DEP);

      form_Impres_ExtBco.mlin:=form_Impres_ExtBco.mlin+1;
      form_Impres_ExtBco.RDprint1.ImpF(form_Impres_ExtBco.mlin,01,'Código Data Rea No.Doc.    C       Entradas         Saidas     Saldo Real Saldo Bancario Tp-Codigo Descricao do Movimento',mreduz);
//      form_Impres_ExtBco.RDprint1.ImpF(form_Impres_ExtBco.mlin,01,'Código Data Rea No.Doc.    C       Entradas         Saidas                Saldo Bancario Tp-Codigo Descricao do Movimento',mreduz);
      if form_Impres_ExtBco.mpag=1 then
         begin
         form_Impres_ExtBco.mlin:=form_Impres_ExtBco.mlin+1;
       if msaldor>0 then
          form_Impres_ExtBco.RDprint1.ImpF(form_Impres_ExtBco.mlin,01,insere2(' ',' ',30)+FormatFloat(mcasas, msaldor)+insere2(' ',' ',15)+' Saldo anterior real',mreduz)
       else
          form_Impres_ExtBco.RDprint1.ImpF(form_Impres_ExtBco.mlin,01,insere2(' ',' ',45)+FormatFloat(mcasas, msaldor)+' Saldo anterior real',mreduz);
       form_Impres_ExtBco.mlin:=form_Impres_ExtBco.mlin+1;
         if msaldob>0 then
            form_Impres_ExtBco.RDprint1.ImpF(form_Impres_ExtBco.mlin,01,insere2(' ',' ',30)+FormatFloat(mcasas, msaldob)+insere2(' ',' ',15)+' Saldo anterior bancario',mreduz)
         else
            form_Impres_ExtBco.RDprint1.ImpF(form_Impres_ExtBco.mlin,01,insere2(' ',' ',45)+FormatFloat(mcasas, msaldob)+' Saldo anterior bancario',mreduz)
         end;
      end;
   form_Impres_ExtBco.mlin:=form_Impres_ExtBco.mlin+1;
   if Qr_LDRNATDC.Value='D' then
      begin
      if CB_SALDO.Checked then
         begin
         if Qr_LDRCOMPENS.Value=0 then
            msaldor:=msaldor-Qr_LDRVALORR.Value;
         end
      else
         msaldor:=msaldor-Qr_LDRVALORR.Value;

      mtotdeb:=mtotdeb+Qr_LDRVALORR.Value;
      if Qr_LDRCOMPENS.Value=0 then
         msaldob:=msaldob-Qr_LDRVALORR.Value;
      end
   else
      begin
      mtotcred:=mtotcred+Qr_LDRVALORR.Value;
      if CB_SALDO.Checked then 
         begin
         if Qr_LDRCOMPENS.Value=0 then
            msaldor:=msaldor+Qr_LDRVALORR.Value;
         end
      else
         msaldor:=msaldor+Qr_LDRVALORR.Value;

      if Qr_LDRCOMPENS.Value=0 then
        msaldob:=msaldob+Qr_LDRVALORR.Value;
      end;

   form_Impres_ExtBco.RDprint1.ImpF(form_Impres_ExtBco.mlin,01,FormatFloat('000000',Qr_LDRCODLDR.Value)
                           +' '+FormatDateTime(fdt3, Qr_LDRDATAREAL.Value)
                           +' '+insere2(Qr_LDRNUMDOC.Value,' ',10)+' '
                           +iif(Qr_LDRCOMPENS.Value=0,'S','N')+' '
                           +iif(Qr_LDRNATDC.Value='C',
                           insere( FormatFloat(mcasas, Qr_LDRVALORR.Value) ,' ',14)+' '+insere(' ',' ',14),
                           insere(' ',' ',14)+' '+insere(FormatFloat(mcasas, Qr_LDRVALORR.Value),' ',14))
//                           +' '+insere( ' ',' ',14)// +' '+insere(' ',' ',14)
                           +' '+insere(FormatFloat(mcasas, msaldor),' ',14)
                           +' '+insere(FormatFloat(mcasas, msaldob),' ',14)
                           +' '
                           +insere2(Qr_LDRTIPO.Value,' ',2)+'-'+FormatFloat('000000',Qr_LDRCODIGO.Value)
                           +' '+insere2(Qr_LDRDESCMV.Value,' ',37),mreduz);
   Qr_LDR.Next;
   if Qr_Ldr.Eof then
      begin
      form_Impres_ExtBco.mlin:=form_Impres_ExtBco.mlin+1;
      form_Impres_ExtBco.RDprint1.ImpF(form_Impres_ExtBco.mlin,01,insere2(' ',' ',6)
                           +' '+insere2('Totais','.',19)
                           +':'
                           +insere(FormatFloat(mcasas, mtotcred),' ',14)+' '
                           +insere(FormatFloat(mcasas, mtotdeb),' ',14)
                           +' Saldo: '+insere(FormatFloat(mcasas, mtotcred-mtotdeb),' ',14)
                           ,mreduz);
      form_Impres_ExtBco.mlin:=form_Impres_ExtBco.mlin+1;
      form_Impres_ExtBco.RDprint1.ImpF(form_Impres_ExtBco.mlin,01,insere2(' ',' ',6)
                           +' '+insere2('Saldo bancario','.',19)
                           +':'
                           +iif(msaldob<=0,insere(' ',' ',15),'')
                           +insere(FormatFloat(mcasas, msaldob),' ',14),mreduz);
      form_Impres_ExtBco.mlin:=form_Impres_ExtBco.mlin+1;
      form_Impres_ExtBco.RDprint1.ImpF(form_Impres_ExtBco.mlin,01,insere2(' ',' ',6)
                           +' '+insere2('Saldo atual real','.',19)
                           +':'
                           +iif(msaldor<=0,insere(' ',' ',14),'')
                           +insere(FormatFloat(mcasas, msaldor),' ',14),mreduz);
      form_Impres_ExtBco.mlin:=form_Impres_ExtBco.mlin+1;
      form_Impres_ExtBco.RdPrint1.Impf(form_Impres_ExtBco.mlin,01,insere2('Fim.','-',136),mreduz);
      form_Impres_ExtBco.mlin:=form_Impres_ExtBco.mlin+1;
      form_Impres_ExtBco.rdPrint1.Impf(form_Impres_ExtBco.mlin,01,'Relatorio Emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time),mreduz);
      if form_Impres_ExtBco.Rdprint1.Setup then form_Impres_ExtBco.Rdprint1.Fechar;
      form_Impres_ExtBco.free;
      form_Impres_ExtBco:=nil;
      end
   else if form_Impres_ExtBco.mlin>57 then
      begin
      form_Impres_ExtBco.mlin:=form_Impres_ExtBco.mlin+1;
      form_Impres_ExtBco.RdPrint1.Impf(form_Impres_ExtBco.mlin,01,insere2('-','-',136),mreduz);
      form_Impres_ExtBco.Rdprint1.Novapagina;
      form_Impres_ExtBco.mlin:=0;
      end;
   end;
{
Código Data Rea No.Doc.    C       Entradas         Saidas     Saldo Real Saldo Bancario Tp-Codigo Descricao do Movimento
123456 30/09/20 1234567890 S ZZZ.ZZZ.ZZ9,99 ZZZ.ZZZ.ZZ9,99 ZZZ.ZZZ.ZZ9,99 ZZZ.ZZZ.ZZ9,99 CL-123456 1234567890123456789012345678901234567
}
end;

procedure TFrm_ExtBco.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
if codusr=1111 then
   GB_MASTER.Visible:=true;

if flfilpad(0,'_EXTBCO','CB_SALDO') then
   CB_SALDO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='TRUE';


end;

procedure TFrm_ExtBco.Qr_LDRCalcFields(DataSet: TDataSet);
begin
if not Qr_LDRCODIGO.IsNull then
   begin
   if Qr_LDRTIPO.Value='FR' then
      begin
      flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Qr_LDRCODIGO.AsString);
      end
   else if Qr_LDRTIPO.Value='VD' then
      begin
      flqr1('VNOME','V','CADVEN','N','VCODVEN',Qr_LDRCODIGO.AsString);
      end
   else if Qr_LDRTIPO.Value='TR' then
      begin
      flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',Qr_LDRCODIGO.AsString);
      end
   else
      begin
      flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Qr_LDRCODIGO.AsString);
      end;
   Qr_LDRnome.Value:=DM1.Query1.Fields[0].AsString;
   end;


end;

procedure TFrm_ExtBco.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ExtBco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;



function TFrm_ExtBco.FBuscaSaldo(pTipoLan: Integer): Real;
{
0-Todos
1-Compensados
2-Nao Compensados
}
var
mSaldoIni,mLimCred: Real;

begin

la_Empresas:=fEmpresas_Selecionadas('CADLDR','CODEMP',Form_SelEmp.CLB_EMPRESAS);

mSaldoIni:=0;


if Trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('select NATDC,SUM(VALORR) AS VALOR');
   DM1.Query1.SQL.Add(' from CADLDR '
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' STATUS<9 ');
   mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and CODBCO '+mcinst2);
   mLimCred:=0;
   if pTipoLan=1 then
      DM1.Query1.Sql.add(' and COMPENS=0')
   else if pTipoLan=2 then
      DM1.Query1.Sql.add(' and COMPENS=1');

   if lbx_codbco.Items.Count>0 then
      begin
      la_Empresas:=fEmpresas_Selecionadas('CADBCO','BCCODEMP',Form_SelEmp.CLB_EMPRESAS);
      DM1.Query2.Close;
      DM1.Query2.Sql.Clear;
      DM1.Query2.Sql.Add('Select bclimite from CADBCO where '
                        +iif(la_Empresas='','',la_Empresas+' and '));
      mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
      if trim(mcinst2)<>'' then
         DM1.Query2.SQL.Add(' BCCODBCO '+mcinst2);

      DM1.Query2.Open;
      mLimCred:=DM1.Query2.Fields[0].AsFloat;

      end;
   mcinst2:=fItensListBox(1,lbx_codccu,OMITIR_CCU);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and CODCC '+mcinst2);
   mcinst2:=fItensListBox(1,lbx_coddep,OMITIR_DEP);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and CODDEP '+mcinst2);
   if trim(MDT1.Text)<>'/  /' then
//      DM1.Query1.SQL.Add(' and DTSALDO<'+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
      DM1.Query1.SQL.Add(' and '+mDataPesq+'<'+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
//   if trim(MDT2.Text)<>'/  /' then
//      DM1.Query1.SQL.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));
   mcinst4:='';


   if Trim(CODIGO.Text)<>'' then
      begin
      DM1.Query1.SQL.Add(' and TIPO='+chr(39)+CB_TIPO.Text+chr(39)
                 +' and CODIGO=0'+CODIGO.Text);
      end;
   if RG_NAT.ItemIndex=1 then
      DM1.Query1.SQL.Add(' and NATDC='+chr(39)+'D'+chr(39))
   else if RG_NAT.ItemIndex=2 then
      DM1.Query1.SQL.Add(' and NATDC<>'+chr(39)+'D'+chr(39));
   if RG_ESTADO.ItemIndex=0 then
      DM1.Query1.SQL.Add(' and DATAREAL>'+chr(39)+FormatDateTime(fdt,pdatanula)+chr(39))
   else if RG_ESTADO.ItemIndex=1 then
      DM1.Query1.SQL.Add(' and DATAREAL<='+chr(39)+FormatDateTime(fdt,pdatanula)+chr(39));
//   if RG_TPPESQ.ItemIndex=2 then
//      DM1.Query1.SQL.Add(' and DATAREAL>'+chr(39)+FormatDateTime(fdt,pdatanula)+chr(39));

   if RG_TPPESQ.ItemIndex=2 then
      begin
      if trim(MDT2.Text)<>'/  /' then
         begin
         DM1.Query1.SQL.Add(' and DATAREAL>'+chr(39)+FormatDateTime(fdt,pdatanula)+chr(39)
                        +' and (DTSALDO is null or DTSALDO<'+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39)+'  or (DTSALDO>DATAREAL) )');
         end
      else
         begin
         DM1.Query1.SQL.Add(' and DATAREAL>'+chr(39)+FormatDateTime(fdt,pdatanula)+chr(39));
         end;

      end;


   DM1.Query1.SQL.Add(' Group by NATDC');

//   DM1.Query1.SQL.SaveToFile(mpastatemp + 'SQL03.TXT');

   try
      DM1.Query1.Open;
   except
      DM1.Query1.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      end;
   While not DM1.Query1.Eof do
      begin
      if DM1.Query1.Fields[0].AsString='D' then
         mSaldoIni:=mSaldoIni-DM1.Query1.Fields[1].AsFloat
      else
         mSaldoIni:=mSaldoIni+DM1.Query1.Fields[1].AsFloat;
      DM1.query1.Next;
      end;
   end;
result:=mSaldoIni;
end;

procedure TFrm_ExtBco.CODBCOExit(Sender: TObject);
begin
CODBCO.Text:=fdeixanum2(CODBCO.Text);
if Trim(CODBCO.Text)<>'' then
   begin
   if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODBCO.Text) then
      begin
      lbx_codbco.Items.Add(FormatFloat('0000000',StrToFloat(CODBCO.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codbco.text := '';
      codbco.SetFocus;
      end
   else
      begin
      fmensagem('Banco não Cadastrado!',0,['0'],0);
      codbco.text := '';
      CODBCO.SetFocus;
      end;
   end;


end;

procedure TFrm_ExtBco.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_RcPREeal',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_ExtBco.lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

function tFrm_ExtBco.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      form_Impres_ExtBco.mlin:=form_Impres_ExtBco.mlin+1;
      form_Impres_ExtBco.RDprint1.ImpF(form_Impres_ExtBco.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',80),mneg);
      end;
   end;
result:=true;

end;


procedure TFrm_ExtBco.CODCCUExit(Sender: TObject);
begin
if Trim(CODCCU.Text)<>'' then
   begin
   if flqr1('CCNAT,CCNOME','CC','CADCCU','C','CCCODCCU',CODCCU.Text) then
      begin
      lbx_codccu.Items.Add(CODCCU.TEXT
                                    +'-'+DM1.Query1.Fields[0].AsString);
      CODCCU.text := '';
      CODCCU.SetFocus;
      end
   else
      begin
      fmensagem('Centro de Custo não Cadastrado!',0,['0'],0);
      CODCCU.text := '';
      CODCCU.SetFocus;
      end;
   end;



end;

procedure TFrm_ExtBco.sbn_codccuClick(Sender: TObject);
begin
CODCCU.Text:=fChamaCCU(0,'frm_rcprel','');
if trim(codccu.Text)<>'' then
   CODCCUExit(self);

end;

procedure TFrm_ExtBco.lbx_codccuKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codccu.ItemIndex>=0 then
      lbx_codccu.Items.Delete(lbx_codccu.ItemIndex);


end;

procedure TFrm_ExtBco.CODDEPExit(Sender: TObject);
begin
if Trim(CODDEP.Text)<>'' then
   begin
   if flqr1('DNOME','D','CADDEP','C','DCODDEP',CODDEP.Text) then
      begin
      lbx_coddep.Items.Add(CODDEP.TEXT
                                    +'-'+DM1.Query1.Fields[0].AsString);
      CODDEP.text := '';
      CODDEP.SetFocus;
      end
   else
      begin
      fmensagem('Departamento não Cadastrado!',0,['0'],0);
      CODDEP.text := '';
      CODDEP.SetFocus;
      end;
   end;


end;

procedure TFrm_ExtBco.sbn_coddepClick(Sender: TObject);
begin
CODDEP.Text :=fChamaDeptoCX(0,'frm_RcPReal','');
if trim(CODDEP.Text)<>'' then
   CODDEPExit(Self);

end;

procedure TFrm_ExtBco.lbx_coddepKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_coddep.ItemIndex>=0 then
      lbx_coddep.Items.Delete(lbx_coddep.ItemIndex);

end;

procedure TFrm_ExtBco.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_ExtBco.CB_SALDOClick(Sender: TObject);
begin
fDeletaPadroes(0,'_EXTBCO','');
fGravaPadroes(0,'CB_SALDO'          ,'checked' ,'_EXTBCO',iif(CB_SALDO.Checked,'TRUE','FALSE'));

end;

end.

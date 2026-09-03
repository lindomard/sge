unit S_RelOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, Buttons,S_DM1,db,dbtables,func,lerarq,S_cli,
  S_Fun,S_DM2,S_Impres;

type
  TFrm_RelOS = class(TForm)
    Label1: TLabel;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    Label4: TLabel;
    CHAVEI: TEdit;
    Label5: TLabel;
    CHAVEF: TEdit;
    RG_OPER: TRadioGroup;
    RG_ORDEM: TRadioGroup;
    Label6: TLabel;
    CODTEC: TEdit;
    NOMTEC: TEdit;
    RG_TPESQ: TRadioGroup;
    RG_MODELO: TRadioGroup;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    RG_STATUS: TRadioGroup;
    procedure bbSairClick(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODTECKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CHAVEIExit(Sender: TObject);
    procedure CHAVEFExit(Sender: TObject);
    procedure CODTECExit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure RG_MODELOClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function fRelosModelo01(ptipo: Integer): Boolean;
    function fRelosModelo02(ptipo: Integer): Boolean;
    function fRelosModelo03(ptipo: Integer): Boolean;
    function fRelosTestaCab(ptipo: Integer): Boolean;
  public
    { Public declarations }
    form_impres_RelOS: TFrm_Impres;
  end;

var
  Frm_RelOS: TFrm_RelOS;
  mdataant:tdatetime;
  mordem: String;

implementation

{$R *.dfm}

procedure TFrm_RelOS.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RelOS.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_Ped',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RelOS.CODTECKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin

   if frm_fun=nil then
      Application.CreateForm(Tfrm_Fun, Frm_Fun)
   else
      begin
      Frm_Fun.free;
      Frm_Fun:=nil;
      Application.CreateForm(Tfrm_Fun, Frm_Fun)
      end;

   Frm_Fun.Edit1.Text:=key;
   Frm_Fun.BBnAtu.Click;
   Frm_Fun.Edit1.SelStart:=1;
   Frm_Fun.Edit1.SelLength:=1;
   Frm_Fun.PC1.ActivePage:=Frm_Fun.tsTab;
   Frm_Fun.fun_ori:='Frm_ManOs';
   if Frm_Fun.ShowModal=mrok then
      begin
      CODTEC.Text :=DM2.Tb_FunCFCODFUN.AsString;
      CODTECExit(self);
      end;
   Frm_Fun.Free;
   Frm_Fun:=nil;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_RelOS.CODCLIExit(Sender: TObject);
begin
if ValFloat(CODCLI.Text)<=0 then
   CODCLI.Text:='';
if not (bbSair.Focused) and (trim(CODCLI.Text)='') then
   exit;
if CODCLI.Text='' then
   NOMCLI.Text:='Todos...'
else
   begin
   if not flcadcli(1,0,CODCLI.Text) then
      begin
      MessageDlg('Cliente não Cadastrado!',mtWarning,[mbOk],0);
      CODCLI.SetFocus;
      exit;
      end
   else
      NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
   end;


end;

procedure TFrm_RelOS.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2, StrToDate(MDT1.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_RelOS.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2, StrToDate(MDT2.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDT2.SetFocus;
      end;
   end;

end;

procedure TFrm_RelOS.CHAVEIExit(Sender: TObject);
begin
if ValFloat(CHAVEi.Text)<=0 then
   CHAVEI.Text:=''
else
   CHAVEI.Text:=fdeixanum(CHAVEI.Text);

end;

procedure TFrm_RelOS.CHAVEFExit(Sender: TObject);
begin
if ValFloat(CHAVEF.Text)<=0 then
   CHAVEF.Text:=''
else
   CHAVEF.Text:=fdeixanum(CHAVEF.Text);

end;

procedure TFrm_RelOS.CODTECExit(Sender: TObject);
begin
CODTEC.Text:=fdeixanum(CODTEC.Text);
if ValFloat(CODTEC.Text)<=0 then
   CODTEC.Text:='';
if flcadfun(1,0,CODTEC.Text) then
   begin
   NOMTEC.Text  :=DM2.Tb_FunCFNOMFUN.Value;
   end
else
   begin
   MessageDlg('Funcionário não Cadastrado!',mtWarning,[mbOk],0);
   CODTEC.SetFocus;
   end;

end;

function TFrm_RelOs.fRelosModelo01(ptipo: Integer):Boolean;
var
mqtdser,mtotser,mtotdes: Real;
mlinha: String;
begin
DM1.Query3.Close;
DM1.Query3.SQL.clear;
DM1.Query3.SQL.add('Select OS1CODCLI,OS1NOMSOL,');
DM1.Query3.SQL.add('       OS1CODEMP,OS1CHAVE,OS1LOTSEQ,OS1DATA ');
DM1.Query3.SQL.add('       ,OS1OBS01,OS1OBS02,OS1OBS03,OS1OBS04');

DM1.Query3.SQL.add('       ,CRAZAO');
DM1.Query3.SQL.add('       ,CLOG,CBAIRRO,CCIDADE,CUF,CCEP');
DM1.Query3.SQL.add('       ,CCNPJ,CIE,CCPF,CRG,CFONECOM,CFAX');
DM1.Query3.SQL.add('       from CADOS01,CADCLI where '
               +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' OS1CODEMP=0'+IntToStr(codemp)+' and ')
               +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' CCODEMP=OS1CODEMP and ')
               +' CCODCLI=OS1CODCLI ');
if Trim(CODCLI.Text)<>'' then
   DM1.Query3.SQL.Add(' and OS1CODCLI=0'+Trim(CODCLI.Text));
if Trim(MDT1.Text)<>'/  /' then
   DM1.Query3.Sql.Add(' and OS1DATA>='+chr(39)+FormatDateTime(fdt, StrTodate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query3.SQL.Add(' and OS1DATA<='+chr(39)+FormatDateTime(fdt, StrTodate(MDT2.Text))+chr(39));
if Trim(CHAVEI.Text)<>'' then
   DM1.Query3.SQL.Add(' and OS1CHAVE>=0'+Trim(CHAVEI.Text));
if Trim(CHAVEF.Text)<>'' then
   DM1.Query3.SQL.Add(' and OS1CHAVE<=0'+Trim(CHAVEF.Text));
if Trim(CODTEC.Text)<>'' then
   DM1.Query3.SQL.Add(' and OS1CODTEC=0'+Trim(CODTEC.Text));
if RG_OPER.ItemIndex<3 then
   DM1.Query3.SQL.Add(' and OS1OPER=0'+InttoStr(RG_OPER.ItemIndex));
if RG_STATUS.ItemIndex=0  then
   DM1.Query3.SQL.Add(' and OS1STATUS<2')
else if RG_STATUS.ItemIndex=1  then
   DM1.Query3.SQL.Add(' and OS1STATUS=2');

//else if RG_FATUR.ItemIndex=2  then
//   DM1.Query3.SQL.Add(' and ((OS1CHAVEPED is null) or (OS1CHAVEPED=0))');
DM1.Query3.SQL.Add(' and OS1STATUS<>9');
if RG_ORDEM.ItemIndex=0 then
   DM1.Query3.SQL.Add(' order by OS1DATA,OS1CHAVE')
else if RG_ORDEM.ItemIndex=1 then
   DM1.Query3.SQL.Add(' order by OS1DATA desc,OS1CHAVE desc');
DM1.Query3.Open;
if DM1.Query3.Eof then
   begin
   verteclado(0);
   MessageDlg('Nada a ser impresso na condição Solicitada!',mtWarning,[mbOk],0);
   result:=false;
   exit;
   end;
testeform := TFrm_RelOS(FindGlobalComponent('form_impres_RelOS'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_RelOS);

form_impres_RelOS.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_RelOS.mlin:=0;
form_impres_RelOS.mpag:=0;
While not DM1.Query3.Eof do
   begin
   if form_impres_RelOS.mlin=0 then
      fRelosTestaCab(0);
   form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
   form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,Centra('OS Numero: '+DM1.Query3.FieldbyName('OS1CHAVE').AsString+' Data: '+FormatDatetime(fdt2, DM1.Query3.FieldbyName('OS1DATA').AsDateTime),' ',80),mneg);
   form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
   form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'+'+insere('-','-',130)+'+',mreduz);
   form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
   form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'|'+insere2('Cliente.: '+DM1.Query3.FieldbyName('OS1CODCLI').AsString+'-'+DM1.Query3.FieldbyName('CRAZAO').AsString     ,' ',60)  +' Solicitante: '+insere2(DM1.Query3.FieldbyName('OS1NOMSOL').AsString,' ',56)  +'|',mreduz);

   form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
   form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'|'+insere2('Endereco: '+Trim(DM1.Query3.FieldbyName('CLOG').AsString)+' '+DM1.Query3.FieldbyName('CBAIRRO').AsString,' ',60)          +' Cidade.....: '+insere2(DM1.Query3.FieldbyName('CCIDADE').AsString+'-'+DM1.Query3.FieldbyName('CUF').AsString,' ',42)+' CEP:' +insere2(DM1.Query3.FieldbyName('CCEP').AsString,' ',9)+'|',mreduz);
   form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
   if DM1.Query3.FieldbyName('CCNPJ').AsFloat>0 then
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'|'+insere2('CNPJ....: '+FormatFloat('00"."000"."000/0000-00',DM1.Query3.FieldbyName('CCNPJ').AsFloat),' ',30)+' Ins.Est: '+insere2(DM1.Query3.FieldbyName('CIE').AsString,' ',20)
                                    +' Telefone...: '+insere2(DM1.Query3.FieldbyName('CFONECOM').AsString,' ',22)
                                     +' Fax........: '+insere2(DM1.Query3.FieldbyName('CFAX').AsString,' ',20)+'|',mreduz)
   else
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'|'+insere2('CPF.....: '+FormatFloat('000"."000"."000-00',DM1.Query3.FieldbyName('CCPF').AsFloat),' ',26)+' Reg.Geral..: '+insere2(DM1.Query3.FieldbyName('CRG').AsString,' ',20)
                                     +' Telefone...: '+insere2(DM1.Query3.FieldbyName('CFONECOM').AsString,' ',22)
                                    +' Fax........: '+insere2(DM1.Query3.FieldbyName('CFAX').AsString,' ',20)+'|',mreduz);
   form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
   form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'+'+insere('-','-',130)+'+',mreduz);

   DM1.Query4.Close;
   DM1.Query4.SQL.Clear;
   DM1.Query4.SQL.add('Select OS5CODEMP, '
                  +'        OS5LOTSEQ, '
                  +'        OS5CHAVE, '
                  +'        OS5ITEM, '
                  +'        OS5CODPRO, '
                  +'        OS5QTD, '
                  +'        OS5PU, '
                  +'        OS5DESC01, '
                  +'        OS5TOTDES, '
                  +'        PDNOME,PDUND from CADOS05,CADPRO '
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' OS5CODEMP=0'+DM1.Query3.FieldbyName('OS1CODEMP').AsString+' and ')
                  +' OS5LOTSEQ=0'+DM1.Query3.FieldbyName('OS1LOTSEQ').AsString
                  +' and OS5CHAVE=0'+DM1.Query3.FieldbyName('OS1CHAVE').AsString
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=OS5CODEMP ')
                  +' and PDCODPRO=OS5CODPRO'
                  +' order by OS5ITEM ');
   DM1.Query4.Open;
   if not DM1.Query4.Eof then
      begin
      mqtdser:=0;
      mtotser:=0;
      mtotdes:=0;
      if fRelosTestaCab(1) then
         fRelosTestaCab(2);
{
+-----+------------+---------------+-----------------------------------------------+---------------+---------------+---------------+
|Item | Quantidade |     Código    | Descricao dos Servicos                        | Valor Unitario|      Desconto |  Valor Total  |
|1234 |123456789012|123456789012345|12345678901234567890123456798012345678901234567|123456789012345|123456789012345|123456789012345|
}

      While not DM1.Query4.Eof do
         begin
         DM1.Query5.Close;
         DM1.Query5.SQL.Clear;
         DM1.Query5.SQL.add('Select OS5DCODEMP, '
                  +'        OS5DLOTSEQ, '
                  +'        OS5DCHAVE, '
                  +'        OS5DITEM, '
                  +'        OS5DCODPRO, '
                  +'        OS5DLINHA, '
                  +'        OS5DDESC from CADOS05D '
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' OS5DCODEMP=0'+DM1.Query3.FieldbyName('OS1CODEMP').AsString+' and ')
                  +' OS5DLOTSEQ=0'+DM1.Query3.FieldbyName('OS1LOTSEQ').AsString
                  +' and OS5DCHAVE=0'+DM1.Query3.FieldbyName('OS1CHAVE').AsString
                  +' order by OS5DITEM,OS5DLINHA ');
         DM1.Query5.Open;
         fRelosTestaCab(1);
         form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
         mlinha:='|'+insere(FormatFloat('###0', DM1.Query4.fieldbyName('OS5ITEM').AsFloat),' ',05)
             +'|'+insere(FormatFloat(mcasqtd, DM1.Query4.fieldbyName('OS5QTD').AsFloat),' ',11)
             +' |'+Centra(DM1.Query4.fieldbyName('OS5CODPRO').AsString,' ',14)+'| ';
         mqtdser:=mqtdser+DM1.Query4.fieldbyName('OS5QTD').AsFloat;
         mtotdes:=mtotdes+DM1.Query4.fieldbyName('OS5TOTDES').AsFloat;
         mtotser:=mtotser+(DM1.Query4.fieldbyName('OS5PU').AsFloat
                           *DM1.Query4.fieldbyName('OS5QTD').AsFloat)
                           -DM1.Query4.fieldbyName('OS5TOTDES').AsFloat;
         if not DM1.Query5.Eof then
            begin
            form_impres_RelOS.mlin:=form_impres_RelOS.mlin-1;
            while not DM1.Query5.Eof do
               begin
               mlinha:=mlinha+insere2(DM1.Query5.fieldbyName('OS5DDESC').AsString,' ',46);
               DM1.Query5.Next;
               if DM1.Query5.Eof then
                  begin
                  mlinha:=mlinha+'|'+insere(FormatFloat(mcasas, DM1.Query4.fieldbyName('OS5PU').AsFloat),' ',14);
                  mlinha:=mlinha+' |'+insere(FormatFloat(mcasas, DM1.Query4.fieldbyName('OS5TOTDES').AsFloat),' ',14)
                      +' |'+insere(FormatFloat(mcasas, (DM1.Query4.fieldbyName('OS5PU').AsFloat
                                                        *DM1.Query4.fieldbyName('OS5QTD').AsFloat)
                                                        -DM1.Query4.fieldbyName('OS5TOTDES').AsFloat),' ',14)+' |';
                  end
               else
                  mlinha:=mlinha+'|               |               |               |';
               fRelosTestaCab(1);
               form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
               form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,mlinha,mreduz);
               mlinha:='|     |            |               | '
               end;
            end
         else
            begin
            mlinha:=mlinha+insere2(DM1.Query4.fieldbyName('PDNOME').AsString,' ',46);
            mlinha:=mlinha+'|'+insere(FormatFloat(mcasas, DM1.Query4.fieldbyName('OS5PU').AsFloat),' ',14);
            mlinha:=mlinha+' |'+insere(FormatFloat(mcasas, DM1.Query4.fieldbyName('OS5TOTDES').AsFloat),' ',14)
                          +' |'+insere(FormatFloat(mcasas, (DM1.Query4.fieldbyName('OS5PU').AsFloat
                                                        *DM1.Query4.fieldbyName('OS5QTD').AsFloat)
                                                        -DM1.Query4.fieldbyName('OS5TOTDES').AsFloat),' ',14)+' |';
            form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,mlinha,mreduz);
            end;
         DM1.Query4.Next;
         end;
      mlinha:='|     |            |               | ';
      mlinha:=mlinha+insere2('-Total da OS','.',46);
      mlinha:=mlinha+'|'+insere2(' ',' ',14);
      mlinha:=mlinha+' |'+insere(FormatFloat(mcasas, mtotdes),' ',14)
                    +' |'+insere(FormatFloat(mcasas, mtotser),' ',14)+' |';
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,mlinha,mreduz);
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'+-----+------------+---------------+-----------------------------------------------+---------------+---------------+---------------+',mreduz);
      end;

{
+-----+------------+---------------+-----------------------------------------------+---------------+---------------+---------------+
|Item | Quantidade |     Código    | Descricao dos Servicos                        | Valor Unitario|      Desconto |  Valor Total  |
|1234 |123456789012|123456789012345|12345678901234567890123456798012345678901234567|123456789012345|123456789012345|123456789012345|
}

   if (trim(DM1.Query3.fieldbyname('OS1OBS01').asstring)<>'') or
      (trim(DM1.Query3.fieldbyname('OS1OBS02').asstring)<>'') or
      (trim(DM1.Query3.fieldbyname('OS1OBS03').asstring)<>'') or
      (trim(DM1.Query3.fieldbyname('OS1OBS04').asstring)<>'') then
      begin
      fRelosTestaCab(1);
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,centra('Observacoes',' ',132),mreduz);
      if (trim(DM1.Query3.fieldbyname('OS1OBS01').asstring)<>'') then
         begin
         fRelosTestaCab(1);
         form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
         form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,centra(DM1.Query3.fieldbyname('OS1OBS01').asstring,' ',132),mreduz);
         end;

      if (trim(DM1.Query3.fieldbyname('OS1OBS02').asstring)<>'') then
         begin
         fRelosTestaCab(1);
         form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
         form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,centra(DM1.Query3.fieldbyname('OS1OBS02').asstring,' ',132),mreduz);
         end;
      if (trim(DM1.Query3.fieldbyname('OS1OBS03').asstring)<>'') then
         begin
         fRelosTestaCab(1);
         form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
         form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,centra(DM1.Query3.fieldbyname('OS1OBS03').asstring,' ',132),mreduz);
         end;
      if (trim(DM1.Query3.fieldbyname('OS1OBS04').asstring)<>'') then
         begin
         fRelosTestaCab(1);
         form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
         form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,centra(DM1.Query3.fieldbyname('OS1OBS04').asstring,' ',132),mreduz);
         end;



      end;



   DM1.Query3.Next;
   if DM1.Query3.Eof then
      begin
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,insere2('Fim.','-',132),mreduz);
      end
   else
      fRelosTestaCab(0);
   form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
   end;

if form_impres_RelOS.RDprint1.Setup then form_impres_RelOS.RDprint1.Fechar;
form_impres_RelOS.free;
form_impres_RelOS:=nil;
result:=true;
end;
function TFrm_RelOs.fRelosModelo02(ptipo: Integer):Boolean;
var
mtotserd,mtotserg: Real;
begin
if RG_ORDEM.ItemIndex=2 then
   mordem:='OS1DATADEV'
else if RG_ORDEM.ItemIndex=1 then
   mordem:='OS1DATAENT'
else
   mordem:='OS1DATA';
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADFUN','CFCODEMP','OS1CODEMP','CFCODFUN','OS1CODTEC');

DM1.Query3.Close;
DM1.Query3.SQL.clear;
DM1.Query3.SQL.add('Select OS1CODCLI,OS1NOMSOL,');
DM1.Query3.SQL.add('       OS1CODEMP,OS1CHAVE,OS1LOTSEQ,OS1DATA,OS1TOTAL,OS1OPER ');
DM1.Query3.SQL.add('       ,OS1CODTEC,OS1DATAENT,OS1HORAENT,OS1DATADEV,OS1HORADEV,CRAZAO');
DM1.Query3.SQL.add('       ,CLOG,CBAIRRO,CCIDADE,CUF,CCEP');
DM1.Query3.SQL.add('       ,CCNPJ,CIE,CCPF,CRG,CFONECOM,CFAX,CFNOMFUN');
DM1.Query3.SQL.add('       from CADOS01,CADCLI'
                  +iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +' where '
               +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' OS1CODEMP=0'+IntToStr(codemp)+' and ')
               +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' CCODEMP=OS1CODEMP and ')
               +' CCODCLI=OS1CODCLI '
               +iif(la_instrucao='','',' and '+la_instrucao));
if Trim(CODCLI.Text)<>'' then
   DM1.Query3.SQL.Add(' and OS1CODCLI=0'+Trim(CODCLI.Text));
if Trim(MDT1.Text)<>'/  /' then
   DM1.Query3.Sql.Add(' and OS1DATA>='+chr(39)+FormatDateTime(fdt, StrTodate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query3.SQL.Add(' and OS1DATA<='+chr(39)+FormatDateTime(fdt, StrTodate(MDT2.Text))+chr(39));
if Trim(CHAVEI.Text)<>'' then
   DM1.Query3.SQL.Add(' and OS1CHAVE>=0'+Trim(CHAVEI.Text));
if Trim(CHAVEF.Text)<>'' then
   DM1.Query3.SQL.Add(' and OS1CHAVE<=0'+Trim(CHAVEF.Text));
if Trim(CODTEC.Text)<>'' then
   DM1.Query3.SQL.Add(' and OS1CODTEC=0'+Trim(CODTEC.Text));
if RG_OPER.ItemIndex<3 then
   DM1.Query3.SQL.Add(' and OS1OPER=0'+InttoStr(RG_OPER.ItemIndex));

if RG_STATUS.ItemIndex=0  then
   DM1.Query3.SQL.Add(' and OS1STATUS<2')
else if RG_STATUS.ItemIndex=1  then
   DM1.Query3.SQL.Add(' and OS1STATUS=2');

DM1.Query3.SQL.Add(' and OS1STATUS<>9');
DM1.Query3.SQL.Add(' order by '+mordem+',OS1CHAVE');
DM1.Query3.Open;
if DM1.Query3.Eof then
   begin
   verteclado(0);
   MessageDlg('Nada a ser impresso na condição Solicitada!',mtWarning,[mbOk],0);
   result:=false;
   exit;
   end;
mtotserd:=0;
mtotserg:=0;
testeform := TFrm_RelOS(FindGlobalComponent('form_impres_RelOS'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_RelOS);

form_impres_RelOS.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_RelOS.mlin:=0;
form_impres_RelOS.mpag:=0;
mdataant:=DM1.Query3.FieldbyName(mordem).AsDateTime;
While not DM1.Query3.Eof do
   begin
   if form_impres_RelOS.mlin=0 then
      begin
      fRelosTestaCab(3);
      end;
   if mdataant<>DM1.Query3.FieldbyName(mordem).AsDateTime then
      begin
      mdataant:=DM1.Query3.FieldbyName(mordem).AsDateTime;
      fRelosTestaCab(4);
      end;
   form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
   if DM1.Query3.FieldbyName('OS1OPER').AsFloat=2 then
      mcinst:=insere2('Garantia',' ',12)
   else if DM1.Query3.FieldbyName('OS1OPER').AsFloat=1 then
      mcinst:=insere2('Contrato',' ',12)
   else
      begin
      mcinst:=insere(Formatfloat(mcasas, DM1.Query3.FieldbyName('OS1TOTAL').AsFloat),' ',12);
      mtotserd:=mtotserd+DM1.Query3.FieldbyName('OS1TOTAL').AsFloat;
      mtotserg:=mtotserg+DM1.Query3.FieldbyName('OS1TOTAL').AsFloat;
      end;
   form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'|'+FormatFloat('000000',DM1.Query3.FieldbyName('OS1CHAVE').AsFloat)+'|'
                           +insere2(DM1.Query3.FieldbyName('CRAZAO').AsString,' ',35)+'|'
                           +insere2(DM1.Query3.FieldbyName('CFONECOM').AsString,' ',16)+'|'
                           +insere2(DM1.Query3.FieldbyName('CFNOMFUN').AsString,' ',24)+'|'
                           +FormatDatetime('dd/mm', DM1.Query3.FieldbyName('OS1DATAENT').AsdateTime)+' '
                           +insere2(DM1.Query3.FieldbyName('OS1HORAENT').AsString,' ',05)+'|'
                           +FormatDatetime('dd/mm', DM1.Query3.FieldbyName('OS1DATADEV').AsdateTime)+' '
                           +insere2(DM1.Query3.FieldbyName('OS1HORADEV').AsString,' ',05)+'|'
                           +'    |    |'
                           +mcinst+'|',mreduz);

{
|Numero|                                   |                |                        |           |           |Pendencia|            |
|da OS.|Cliente                            |  Fone Contato  |Tecnico                 |  Entrada  |  Saida    | Sim| Nao|       Valor|
|123456|12345678901234567980123456789012345|1234567890123456|123456789012345678901234|13/05 14:10|13/05 14:10|    |    |123456789012|
+------+-----------------------------------+----------------+------------------------+-----------+-----------+----+----+------------+
 }
   DM1.Query3.Next;
   if DM1.Query3.Eof then
      begin
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'+Fim.--+-----------------------------------+----------------+------------------------+-----------+-----------+----+----+------------+',mreduz);
      end
   else
      fRelosTestaCab(3);
   end;
if form_impres_RelOS.RDprint1.Setup then form_impres_RelOS.RDprint1.Fechar;
form_impres_RelOS.free;
form_impres_RelOS:=nil;
result:=true;
end;

function TFrm_RelOs.fRelosTestaCab(ptipo: Integer): Boolean;
begin
result:=true;
if form_impres_RelOS.mlin>58 then
   begin
   form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
   if ptipo=0 then
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,insere2('-','-',132),mreduz)
   else if ptipo=3 then
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'+------+-----------------------------------+----------------+------------------------+-----------+-----------+----+----+------------+',mreduz)
   else
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'+-----+------------+---------------+-----------------------------------------------+---------------+---------------+---------------+',mreduz);
   form_impres_RelOS.RDprint1.Novapagina;
   form_impres_RelOS.mlin:=0;
   end;
if form_impres_RelOS.mlin=0 then
   begin
   form_impres_RelOS.mlin:=form_impres_RelOS.fImprimirCabecalho(80,'Relatorio de Ordem de Servico.');
   form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
   form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'+'+insere2('-','-',78)+'+',mnormal);
   form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
   form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,Centra(fperiodo(0,MDT1.Text,MDT2.Text),' ',80),mneg);
   if Trim(CODCLI.Text)<>'' then
      begin
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,Centra('Somente do Cliente: '+CODCLI.Text+'-'+NOMCLI.Text,' ',80),mneg);
      end;
   if Trim(CODTEC.Text)<>'' then
      begin
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,Centra('Somente do Tecnico: '+CODTEC.Text+'-'+NOMTEC.Text,' ',80),mneg);
      end;
   if RG_OPER.ItemIndex<>0 then
      begin
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      if RG_OPER.ItemIndex=0 then
         form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,Centra('Somente das OS A Pagar/Pagar',' ',80),mneg)
      else if RG_OPER.ItemIndex=1 then
         form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,Centra('Somente Garantia',' ',80),mneg)
      else if RG_OPER.ItemIndex=2 then
         form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,Centra('Somente Contratos',' ',80),mneg)
      end;
   if (Trim(CHAVEI.Text)<>'') or (trim(CHAVEF.Text)<>'')  then
      begin
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      if (Trim(CHAVEI.Text)='') and (Trim(CHAVEF.Text)<>'') then
         form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,Centra('Ate a Chave '+CHAVEF.Text,' ',80),mneg)
      else if (Trim(CHAVEI.Text)<>'') and (Trim(CHAVEF.Text)='') then
         form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,Centra('A Partir da Chave '+CHAVEI.Text,' ',80),mneg)
      else
         form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,Centra('da Chave '+CHAVEI.Text+' ate a Chave '+CHAVEF.Text,' ',80),mneg);
      end;
   if ptipo=1 then
      begin
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'+-----+------------+---------------+-----------------------------------------------+---------------+---------------+---------------+',mreduz);
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'|Item | Quantidade |     Código    | Descricao dos Servicos                        | Valor Unitario|      Desconto |  Valor Total  |',mreduz);
      end
   else if ptipo=3 then
      begin
      mdataant:=DM1.Query3.FieldbyName(mordem).AsDateTime;
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,Centra('Data: '+FormatDateTime(fdt2, mdataant)+' '+DiaSemana(mdataant),' ',80),mneg);
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'+------+-----------------------------------+----------------+------------------------+-----------+-----------+----+----+------------+',mreduz);
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'|Numero|                                   |                |                        |           |           |Pendencia|            |',mreduz);
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'|da OS.|Cliente                            |  Fone Contato  |Tecnico                 |  Entrada  |  Saida    | Sim| Nao|       Valor|',mreduz);
      end;
   result:=false;
   end
else if ptipo=2 then
   begin
   form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
   form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'+-----+------------+---------------+-----------------------------------------------+---------------+---------------+---------------+',mreduz);
   form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
   form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'|Item | Quantidade |     Código    | Descricao dos Servicos                        | Valor Unitario|      Desconto |  Valor Total  |',mreduz);
   end
else if ptipo=4 then
   begin
   form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
   form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'+------+-----------------------------------+----------------+------------------------+-----------+-----------+----+----+------------+',mreduz);
   form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
   form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,Centra('Data: '+FormatDateTime(fdt2, mdataant)+' '+DiaSemana(mdataant),' ',80),mneg);
   form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
   form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'+------+-----------------------------------+----------------+------------------------+-----------+-----------+----+----+------------+',mreduz);
   form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
   form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'|Numero|                                   |                |                        |           |           |Pendencia|            |',mreduz);
   form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
   form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'|da OS.|Cliente                            |  Fone Contato  |Tecnico                 |  Entrada  |  Saida    | Sim| Nao|       Valor|',mreduz);
   end;
end;

procedure TFrm_RelOS.bbImprimirClick(Sender: TObject);
begin
if RG_MODELO.ItemIndex=1 then
   fRelosModelo02(0)
else if RG_MODELO.ItemIndex=2 then
   fRelosModelo03(0)
else
   fRelosModelo01(0);


end;

procedure TFrm_RelOS.RG_MODELOClick(Sender: TObject);
begin
if RG_MODELO.ItemIndex=1 then
   RG_ORDEM.Visible:=false
else
   RG_ORDEM.Visible:=true;

end;

function TFrm_RelOs.fRelosModelo03(ptipo: Integer):Boolean;
var
mtotserc,mtotserg: Real;
mtotmerc,mtotmerg: Real;
codcli_ant: Real;

begin
mordem:='CRAZAO,OS1CODCLI,';
if RG_ORDEM.ItemIndex=2 then
   mordem:=mordem+'OS1DATADEV'
else if RG_ORDEM.ItemIndex=1 then
   mordem:=mordem+'OS1DATAENT'
else
   mordem:=mordem+'OS1DATA';
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADFUN','CFCODEMP','OS1CODEMP','CFCODFUN','OS1CODTEC');

DM1.Query3.Close;
DM1.Query3.SQL.clear;
DM1.Query3.SQL.add('Select OS1CODCLI,OS1NOMSOL,');
DM1.Query3.SQL.add('       OS1CODEMP,OS1CHAVE,OS1LOTSEQ,OS1DATA,OS1TOTAL,OS1OPER ');
DM1.Query3.SQL.add('       ,OS1TOTSER,OS1TOTPEC,OS1CHAVEPED ');
DM1.Query3.SQL.add('       ,OS1CODTEC,OS1DATAENT,OS1HORAENT,OS1DATADEV,OS1HORADEV,CRAZAO');
DM1.Query3.SQL.add('       ,CLOG,CBAIRRO,CCIDADE,CUF,CCEP');
DM1.Query3.SQL.add('       ,CCNPJ,CIE,CCPF,CRG,CFONECOM,CFAX,CFNOMFUN');
DM1.Query3.SQL.add('       from CADOS01,CADCLI'
                  +iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +' where '
               +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' OS1CODEMP=0'+IntToStr(codemp)+' and ')
               +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' CCODEMP=OS1CODEMP and ')
               +' CCODCLI=OS1CODCLI '
               +iif(la_instrucao='','',' and '+la_instrucao));
if Trim(CODCLI.Text)<>'' then
   DM1.Query3.SQL.Add(' and OS1CODCLI=0'+Trim(CODCLI.Text));
if Trim(MDT1.Text)<>'/  /' then
   DM1.Query3.Sql.Add(' and OS1DATA>='+chr(39)+FormatDateTime(fdt, StrTodate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query3.SQL.Add(' and OS1DATA<='+chr(39)+FormatDateTime(fdt, StrTodate(MDT2.Text))+chr(39));
if Trim(CHAVEI.Text)<>'' then
   DM1.Query3.SQL.Add(' and OS1CHAVE>=0'+Trim(CHAVEI.Text));
if Trim(CHAVEF.Text)<>'' then
   DM1.Query3.SQL.Add(' and OS1CHAVE<=0'+Trim(CHAVEF.Text));
if Trim(CODTEC.Text)<>'' then
   DM1.Query3.SQL.Add(' and OS1CODTEC=0'+Trim(CODTEC.Text));
if RG_OPER.ItemIndex<3 then
   DM1.Query3.SQL.Add(' and OS1OPER=0'+InttoStr(RG_OPER.ItemIndex));

if RG_STATUS.ItemIndex=0  then
   DM1.Query3.SQL.Add(' and OS1STATUS<2')
else if RG_STATUS.ItemIndex=1  then
   DM1.Query3.SQL.Add(' and OS1STATUS=2');
DM1.Query3.SQL.Add(' and OS1STATUS<>9');
DM1.Query3.SQL.Add(' order by '+mordem+',OS1CHAVE');
DM1.Query3.Open;
if DM1.Query3.Eof then
   begin
   verteclado(0);
   MessageDlg('Nada a ser impresso na condição Solicitada!',mtWarning,[mbOk],0);
   result:=false;
   exit;
   end;
mtotserc:=0;
mtotserg:=0;
mtotmerc:=0;
mtotmerg:=0;
codcli_ant:=DM1.Query3.fieldbyName('OS1CODCLI').AsFloat;
testeform := TFrm_RelOS(FindGlobalComponent('form_impres_RelOS'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_RelOS);
form_impres_RelOS.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_RelOS.mlin:=0;
form_impres_RelOS.mpag:=0;
While not DM1.Query3.Eof do
   begin
   if form_impres_RelOS.mlin=0 then
      begin
      form_impres_RelOS.mlin:=form_impres_RelOS.fImprimirCabecalho(80,'Relatorio de Ordem de Servico.');
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'+'+insere2('-','-',78)+'+',mnormal);
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,Centra(fperiodo(0,MDT1.Text,MDT2.Text),' ',80),mneg);
      if Trim(CODCLI.Text)<>'' then
         begin
         form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
         form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,Centra('Somente do Cliente: '+CODCLI.Text+'-'+NOMCLI.Text,' ',80),mneg);
         end;
      if Trim(CODTEC.Text)<>'' then
         begin
         form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
         form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,Centra('Somente do Tecnico: '+CODTEC.Text+'-'+NOMTEC.Text,' ',80),mneg);
         end;
      if RG_OPER.ItemIndex<>0 then
         begin
         form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
         if RG_OPER.ItemIndex=0 then
            form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,Centra('Somente das OS A Pagar/Pagar',' ',80),mneg)
         else if RG_OPER.ItemIndex=1 then
            form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,Centra('Somente Garantia',' ',80),mneg)
         else if RG_OPER.ItemIndex=2 then
            form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,Centra('Somente Contratos',' ',80),mneg)
         end;
      if (Trim(CHAVEI.Text)<>'') or (trim(CHAVEF.Text)<>'')  then
         begin
         form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
         if (Trim(CHAVEI.Text)='') and (Trim(CHAVEF.Text)<>'') then
            form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,Centra('Ate a Chave '+CHAVEF.Text,' ',80),mneg)
         else if (Trim(CHAVEI.Text)<>'') and (Trim(CHAVEF.Text)='') then
            form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,Centra('A Partir da Chave '+CHAVEI.Text,' ',80),mneg)
         else
            form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,Centra('da Chave '+CHAVEI.Text+' ate a Chave '+CHAVEF.Text,' ',80),mneg);
         end;
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'+---------+------------+------------------------------------------------+--------+----------------+----------------+----------------+',mreduz);
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'| Chave Os| Data Os    | Cliente                                        | Ch.Ped.| Total Serviços | Total em Peças |    Total da OS |',mreduz);
      end;
   form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
   if codcli_ant<>DM1.Query3.fieldbyName('OS1CODCLI').AsFloat then
      begin
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'| '
                           +insere2(' ',' ',7)+' | '
                           +insere2(' ',' ',10)+' | '
                           +insere2('-Total do Cliente','.',46)+' | '
                           +insere2(' ',' ',6)+' | '
                           +insere(Formatfloat(mcasas, mtotserc),' ',14)+' | '
                           +insere(Formatfloat(mcasas, mtotmerc),' ',14)+' | '
                           +insere(Formatfloat(mcasas, mtotserc+mtotmerc),' ',14)+' |',
                           mreduz);
      mtotmerc:=0;
      mtotserc:=0;
      codcli_ant:=DM1.Query3.fieldbyName('OS1CODCLI').AsFloat;
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      end;
   mtotserc:=mtotserc+DM1.Query3.FieldbyName('OS1TOTSER').AsFloat;
   mtotserg:=mtotserg+DM1.Query3.FieldbyName('OS1TOTSER').AsFloat;
   mtotmerc:=mtotmerc+DM1.Query3.FieldbyName('OS1TOTPEC').AsFloat;
   mtotmerg:=mtotmerg+DM1.Query3.FieldbyName('OS1TOTPEC').AsFloat;

   form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'| '
                           +insere(DM1.Query3.FieldbyName('OS1CHAVE').AsString,' ',7)+' | '
                           +FormatDatetime(fdt2, DM1.Query3.FieldbyName('OS1DATAENT').AsdateTime)+' | '
                           +insere2(DM1.Query3.FieldbyName('CRAZAO').AsString,' ',46)+' | '
                           +insere(DM1.Query3.FieldbyName('OS1CHAVEPED').AsString,' ',6)+' | '
                           +insere(Formatfloat(mcasas, DM1.Query3.FieldbyName('OS1TOTSER').AsFloat),' ',14)+' | '
                           +insere(Formatfloat(mcasas, DM1.Query3.FieldbyName('OS1TOTPEC').AsFloat),' ',14)+' | '
                           +insere(Formatfloat(mcasas, DM1.Query3.FieldbyName('OS1TOTAL').AsFloat),' ',14)+' |',
                           mreduz);
{
| Chave Os| Data Os    | Cliente                                        | Ch.Ped.| Total Serviços | Total em Peças |    Total da OS |
+---------+------------+------------------------------------------------+--------+----------------+----------------+----------------+
| 1234567 | 13/05/2005 | 1234567890123456789012345679801234567890123456 | 123456 | ZZZ.ZZZ.ZZ9,99 | ZZZ.ZZZ.ZZ9,99 | ZZZ.ZZZ.ZZ9,99 |
}
   DM1.Query3.Next;
   if DM1.Query3.Eof then
      begin
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'| '
                           +insere2(' ',' ',7)+' | '
                           +insere2(' ',' ',10)+' | '
                           +insere2('-Total do Cliente','.',46)+' | '
                           +insere2(' ',' ',6)+' | '
                           +insere(Formatfloat(mcasas, mtotserc),' ',14)+' | '
                           +insere(Formatfloat(mcasas, mtotmerc),' ',14)+' | '
                           +insere(Formatfloat(mcasas, mtotserc+mtotmerc),' ',14)+' |',
                           mreduz);
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'| '
                           +insere2(' ',' ',7)+' | '
                           +insere2(' ',' ',10)+' | '
                           +insere2('-Total do Geral','.',46)+' | '
                           +insere2(' ',' ',6)+' | '
                           +insere(Formatfloat(mcasas, mtotserg),' ',14)+' | '
                           +insere(Formatfloat(mcasas, mtotmerg),' ',14)+' | '
                           +insere(Formatfloat(mcasas, mtotserg+mtotmerg),' ',14)+' |',
                           mreduz);
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'+Fim,-----+------------+------------------------------------------------+--------+----------------+----------------+----------------+',mreduz);
      end
   else if form_impres_RelOS.mlin>57 then
      begin
      form_impres_RelOS.mlin:=form_impres_RelOS.mlin+1;
      form_impres_RelOS.RDprint1.ImpF(form_impres_RelOS.mlin,01,'+Continua...-----------+------------------------------------------------+--------+----------------+----------------+----------------+',mreduz);
      form_impres_RelOS.mlin:=0;
      form_impres_RelOS.RDprint1.Novapagina;
      end;
   end;
if form_impres_RelOS.RDprint1.Setup then form_impres_RelOS.RDprint1.Fechar;
form_impres_RelOS.free;
form_impres_RelOS:=nil;
result:=true;
end;


procedure TFrm_RelOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

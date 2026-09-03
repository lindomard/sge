unit S_NFe_ConsCad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons,dbtables,db, S_Agde_nfe,s_nfe_agde,
  ComCtrls;

type
  TFrm_NFe_ConsCad = class(TForm)
    Label1: TLabel;
    cb_uf: TComboBox;
    bbconsultar: TBitBtn;
    Label2: TLabel;
    edt_cnpj: TMaskEdit;
    Label3: TLabel;
    edt_ie: TEdit;
    Label4: TLabel;
    edt_cpf: TMaskEdit;
    bbLimpar: TBitBtn;
    bbSair: TBitBtn;
    gb_digitados: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    edt_cnpj_dig: TMaskEdit;
    edt_ie_dig: TEdit;
    edt_cpf_dig: TMaskEdit;
    PageControl1: TPageControl;
    tsResultado: TTabSheet;
    TsXML: TTabSheet;
    GroupBox1: TGroupBox;
    lbl_resultado: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    lbl_obscli: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    edt_dBaixa: TEdit;
    edt_enc_cnpj: TMaskEdit;
    edt_enc_ie: TEdit;
    edt_enc_cpf: TMaskEdit;
    edt_razsoc: TEdit;
    edt_status: TEdit;
    edt_status_descricao: TEdit;
    edt_endereco: TEdit;
    edt_ender_nro: TEdit;
    edt_ender_complemento: TEdit;
    edt_bairro: TEdit;
    edt_cidade: TEdit;
    edt_uf: TEdit;
    cb_csit: TComboBox;
    edt_regapur: TEdit;
    edt_fantasia: TEdit;
    edt_codibge: TEdit;
    edt_cep: TEdit;
    edt_dtiniativ: TEdit;
    edt_cnae: TEdit;
    bbAceitar: TBitBtn;
    bbSairIncluir: TBitBtn;
    cb_indCredNFe: TComboBox;
    cb_indCredCTe: TComboBox;
    edt_dUltSit: TEdit;
    edt_IEUnica: TEdit;
    edt_IEAtual: TEdit;
    RichEdit_memo: TRichEdit;
    procedure bbconsultarClick(Sender: TObject);
    procedure bbLimparClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbAceitarClick(Sender: TObject);
    procedure bbSairIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edt_cnpjExit(Sender: TObject);
    procedure edt_cpfExit(Sender: TObject);
  private
    { Private declarations }

    function fConsultarCad(pUF,pCNPJ,pIE,pCPF: String;pValidaXML: Boolean): Boolean; // 0-Ok 1-Erro Xml 2-Cancelamento negado 3 nota nao encontrada

    procedure fCarregardados(pXml: String);


  public
    { Public declarations }
      mTipoOper: Integer; // 0-Nada 1-Aceitar
      mOrigemInfo: Integer; // 0-Normal 1-Verificacao
    function FLimpar(ptipo: Integer): Boolean;

  end;

var
  Frm_NFe_ConsCad: TFrm_NFe_ConsCad;
  form_nfe_agde: TFrm_Nfe_agde;

implementation

uses S_DM1, Func, S_DM4, S_Sintegra_Advert, Func2, lerarq, s_Nfe_Aguarde;

{$R *.dfm}

procedure TFrm_NFe_ConsCad.bbconsultarClick(Sender: TObject);
begin
with cb_uf do ItemIndex:=Items.IndexOf(cb_uf.Text);
if cb_uf.ItemIndex<0 then
   begin
   MessageDlg('UF tem que ser colocado!',mtWarning,[mbOk],0);
   cb_uf.SetFocus;
   exit;
   end;
if (fsonumero(edt_cnpj.Text)=0) and (fsonumero(edt_ie.Text)=0) and (fsonumero(edt_cpf.Text)=0) then
   begin
   MessageDlg('CNPJ ou Inscricao Estadual ou CPF tem que ser colocado!',mtWarning,[mbOk],0);
   edt_cnpj.SetFocus;
   exit;
   end;
if (fsonumero(edt_cnpj.Text)<>0) then
   begin
   if not FCGC(fsonumero(edt_cnpj.Text)) then
      begin
      MessageDlg('CNPJ não Confere, favor digitar um válido!',mtWarning,[mbOk],0);
      edt_cnpj.SetFocus;
      exit;
      end;
   end;
if (fsonumero(edt_cpf.Text)<>0) then
   begin
   if not Fcpf(fdeixanum(edt_cpf.Text)) then
      begin
      MessageDlg('CPF não Confere, favor digitar um válido!',mtWarning,[mbOk],0);
      edt_cpf.SetFocus;
      exit;
      end;
   end;
FLimpar(2);

lbl_resultado.Caption:='Pesquisando Aguarde...';

if not fConsultarCad(cb_uf.Text,edt_cnpj.Text,edt_ie.text, edt_cpf.Text,false) then
   lbl_resultado.Caption:= 'Registro Não Encontrado! '+ edt_status_descricao.Text;

if (Frm_NFe_ConsCad.edt_status.Text='111') or
   (Frm_NFe_ConsCad.edt_status.Text='112') then
   begin
   if mOrigemInfo=0 then
      begin
      bbAceitar.Visible    :=false;
      bbSairIncluir.Visible:=false;
      if DM1.Tb_Cli.State in [dsEdit,dsInsert] then
         bbAceitar.Visible:=true
      else
         begin
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add('Select CRAZAO,CCODCLI from CADCLI where '
                        +iif(DM1.Qr_tid.Locate('TINOME','CADCLI',[]),'','  CCODEMP=0'+IntToStr(codemp)+' and '));
         if fSonumero(edt_enc_cnpj.Text)>0 then
            begin
            DM1.Query1.SQL.add(' CCNPJ=:CNPJ ');
            DM1.Query1.ParamByName('CNPJ').Value:=fsonumero(edt_enc_cnpj.Text);
            end
         else if fSonumero(edt_enc_cpf.Text)>0 then
            begin
            DM1.Query1.SQL.add(' CCPF=:CPF ');
            DM1.Query1.ParamByName('CPF').Value:=fsonumero(edt_enc_cpf.Text);
            end;
         try
            DM1.Query1.Open;
         except
            DM1.Query1.sql.savetofile('c:\sqlerro.txt');
            end;
         if DM1.Query1.IsEmpty then
            begin
            bbSairIncluir.Visible:=true;
            lbl_obscli.Visible:=false;
            end
         else
            begin
            lbl_obscli.Caption:='Cliente encontrado na base de dados '+dm1.Query1.fieldbyname('CRAZAO').asstring+' Código '+dm1.Query1.fieldbyname('CCODCLI').AsString;
            lbl_obscli.Visible:=true;
            bbSairIncluir.Visible:=false;
            end;
         end;
      end
   else
      bbAceitar.Visible    :=true;

   end;


{
and (fsonumero(edt_ie.Text)=0) and (fsonumero(edt_cpf.Text)=0) then



<?xml version="1.0" encoding="UTF-8" ?>
<consCad xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" Versao="2.00" xmlns="http://www.portalfiscal.inf.br/nfe">
 <infCons>
  <xServ>CONS-CAD</xServ>
 <IE>14312431243143124312</IE>
 <UF>SP</UF>
 <CNPJ>13412431243124</CNPJ>
 <CPF/>
 </infCons>
 </consCad>
}
end;

procedure TFrm_NFe_ConsCad.bbLimparClick(Sender: TObject);
begin
FLimpar(0);
end;

function tFrm_NFe_ConsCad.FLimpar(ptipo: Integer): Boolean;
//0-limpa tudo 1-Limpa dados Consulta 2-Dados Encontrado
begin
if ptipo<>2 then
   begin
   cb_uf.Text:=DM1.Tb_EmpUF.AsString;
   edt_cnpj.Clear;
   edt_ie.Clear;
   edt_cpf.Clear;
   end;
if ptipo<>1 then
   begin
   edt_enc_cnpj.Clear;
   edt_enc_ie.Clear;
   edt_enc_cpf.Clear;
   edt_enc_cnpj.Clear;
   edt_razsoc.Clear;
   edt_fantasia.Clear;
   edt_endereco.Clear;
   edt_ender_nro.Clear;
   edt_ender_complemento.Clear;
   edt_bairro.Clear;
   edt_cidade.Clear;
   edt_uf.Clear;
   edt_codibge.Clear;
   edt_cep.Clear;
   edt_dtiniativ.Clear;
   cb_csit.ItemIndex:=1;
   edt_regapur.Clear;
   edt_cnae.Clear;
   edt_status.Clear;
   edt_status_descricao.Clear;
   cb_indCredNFe.Clear;
   cb_indCredCTe.Clear;
   edt_dUltSit.Clear;
   edt_dBaixa.Clear;
   edt_IEUnica.Clear;
   edt_IEAtual.Clear;


   end;
result:=true;
end;


function TFrm_NFE_ConsCad.fConsultarCad(pUF,pCNPJ,pIE,pCPF: String;pValidaXML: Boolean): Boolean; // 0-Ok 1-Erro Xml 2-Cancelamento negado 3 nota nao encontrada
var
mPastaEnvio_NFE, mPastaRetorno_NFE,mArqRetorno: String;
mNomeArq_Xml: String;
f_xml: TextFile;
mChaveId: String;
mRetorno: Boolean;

mLinha_lid: String;
mPosIgual,x : Integer;
mErroXml  : Boolean;
mXmlString: TStrings;
Form_Nfe_Aguarde:TFrm_Nfe_Aguarde;
mmensagem: string;
pEletronica: boolean;

begin
mRetorno:=true;

if not fTestarServidor_NFE(codemp,'SERIE1',mmensagem,pEletronica) then
   begin
   result:=false;
   exit;
   end;

{

mXmlString:= TStringList.Create;
mXmlString.Add('<?xml version="1.0" encoding="UTF-8"?>');
}

if valint(fdeixanum(DM4.Tb_ParGer02PG2VERSAOXML.AsString))>=20 then
   begin
{
//   if (cb_uf.Text='MG') then
//   if (cb_uf.Text='GO') or (cb_uf.Text='MG') then
//      Writeln(f_xml,'<ConsCad xmlns="http://www.portalfiscal.inf.br/nfe" versao="1.01">')
//   else
   mXmlString.Add('<ConsCad xmlns="http://www.portalfiscal.inf.br/nfe" versao="'+DM4.Tb_ParGer02PG2VERSAOXML.AsString+'">');
//<consCad xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" Versao="2.00" xmlns="http://www.portalfiscal.inf.br/nfe">
//   mXmlString.Add('<consCad xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" Versao="2.00" xmlns="http://www.portalfiscal.inf.br/nfe">');

   mXmlString.Add('<infCons>');
//   mXmlString.Add('<infCons Id="ConsCad " versao="2.00">');

}
   mXmlString:= TStringList.Create;
   mXmlString.Add('<?xml version="1.0" encoding="utf-8"?>');
//   mXmlString.Add('<nfeDadosMsg>');

//   mXmlString.Add('<ns1:nfeDadosMsg xmlns:ns1="http://www.portalfiscal.inf.br/nfe/wsdl/NfeConsulta2">');
//   mXmlString.Add('<ns1:nfeDadosMsg xmlns:ns1="http://www.portalfiscal.inf.br/nfe/wsdl/NfeConsulta2">');

   mXmlString.Add('<ConsCad versao="2.00" xmlns="http://www.portalfiscal.inf.br/nfe">');
   mXmlString.Add('<infCons>');
   mXmlString.Add(fGeraXMLString(0,'xServ','CONS-CAD'));
   mXmlString.Add(fGeraXMLString(0,'UF',CB_UF.text));
   if fsonumero(edt_ie.text)>0 then
      mXmlString.Add(fGeraXMLString(0,'IE',fdeixanum(edt_ie.text)));
//   else
//      mXmlString.Add(fGeraXMLString(0,'IE','00000000000'));
   if fsonumero(edt_cnpj.text)<>0 then
      mXmlString.Add(fGeraXMLString(0,'CNPJ',insere(fdeixanum(edt_cnpj.text),'0',14)));
//   else
//      mXmlString.Add(fGeraXMLString(0,'CNPJ',''));

   if fSonumero(edt_cpf.text)<>0 then
      mXmlString.Add(fGeraXMLString(0,'CPF',insere(fdeixanum(edt_cpf.text),'0',11)));
//   else
//      mXmlString.Add(fGeraXMLString(0,'CPF','00000000000'));

   mXmlString.Add('</infCons>');
   mXmlString.Add('</ConsCad>');
//   mXmlString.Add('</nfeDadosMsg>');
//   mXmlString.Add('</ns1:nfeDadosMsg>');
   end
else
   begin
   mXmlString.Add('<ConsCad xmlns="http://www.portalfiscal.inf.br/nfe" versao="1.01">');
   mXmlString.Add('<infCons>');
   end;
{

mXmlString.Add(fGeraXMLString(0,'xServ','CONS-CAD'));
mXmlString.Add(fGeraXMLString(0,'UF',CB_UF.text));



if fsonumero(edt_ie.text)>0 then
   mXmlString.Add(fGeraXMLString(0,'IE',fdeixanum(edt_ie.text)))
else
   mXmlString.Add(fGeraXMLString(0,'IE','0000'));


if fsonumero(edt_cnpj.text)<>0 then
   mXmlString.Add(fGeraXMLString(0,'CNPJ',insere(fdeixanum(edt_cnpj.text),'0',14)))
else
   mXmlString.Add(fGeraXMLString(0,'CNPJ','000000'));

if fSonumero(edt_cpf.text)<>0 then
   mXmlString.Add(fGeraXMLString(0,'CPF',insere(fdeixanum(edt_cpf.text),'0',11)))
else
   mXmlString.Add(fGeraXMLString(0,'CPF','000000'));




if fSonumero(edt_cpf.text)=0 then
   Writeln(f_xml,fGeraXMLString(0,'CPF',''))
else
   Writeln(f_xml,fGeraXMLString(0,'CPF',insere(fdeixanum(edt_cpf.text),'0',11)));

mXmlString.Add('</infCons>');
mXmlString.Add('</ConsCad>');
}

if DM1.Tb_PargerPFORPEDPAD.AsInteger<>3 then
   begin

   if mNFEVersao='2.0' then
      begin
      if length(trim(DM4.Tb_ParGer02PG2NFEPASTAMASTER.AsString))<2 then
         mPastaEnvio_NFE:='C:\INTERSYS_NFE\NFE'
      else
         mPastaEnvio_NFE:=DM4.Tb_ParGer02PG2NFEPASTAMASTER.AsString;
      mPastaEnvio_NFE:=mPastaEnvio_NFE+'\'+insere(DM1.Tb_EmpCGC.AsString,'0',14);
      if PValidaXML then
         begin
         mPastaEnvio_NFE:=mPastaEnvio_NFE+'\VALIDARXML';
         mNomeArq_Xml:=FormatDateTime('ddmmhhnnss',now)+'-Cons-Cad'
         end
      else
         mNomeArq_Xml:=FormatDateTime('ddmmhhnnss',now)+'-Cons-Cad';
   //   if DM4.Tb_ParGer02PG2NFETPEMIS.AsInteger=3 then
   //      mPastaEnvio_NFE:=mPastaEnvio_NFE+'\SCAN';
      if not DirExists(mPastaEnvio_NFE) then
         CreateDir(mPastaEnvio_NFE);
      mPastaRetorno_NFE:=mPastaEnvio_NFE+'\RETORNO';
      if not DirExists(mPastaRetorno_NFE) then
         CreateDir(mPastaRetorno_NFE);
      mPastaEnvio_NFE:=mPastaEnvio_NFE+'\ENVIO';
      if not DirExists(mPastaEnvio_NFE) then
         CreateDir(mPastaEnvio_NFE);
      mPastaEnvio_NFE:=mPastaEnvio_NFE+'\';
      mPastaRetorno_NFE:=mPastaRetorno_NFE+'\';
      end
   else if PValidaXML then
      begin
      if (trim(dm4.Tb_ParGer02PG2VALXMLENVIO.AsString)='') then
          mPastaEnvio_NFE:='C:\SGE\NFE'
       else
          mPastaEnvio_NFE:=DM4.Tb_ParGer02PG2VALXMLENVIO.AsString;
       if not DirExists(mPastaEnvio_NFE) then
          CreateDir(mPastaEnvio_NFE);
       if mPastaEnvio_NFE[length(mPastaEnvio_NFE)]<>'\' then
          mPastaEnvio_NFE:=mPastaEnvio_NFE+'\';

       if (trim(dm4.Tb_ParGer02PG2VALXMLRETORNO.AsString)='') then
          mPastaRetorno_NFE:='C:\SGE\NFE'
       else
          mPastaRetorno_NFE:=DM4.Tb_ParGer02PG2VALXMLRETORNO.AsString;
       if not DirExists(mPastaRetorno_NFE) then
          CreateDir(mPastaRetorno_NFE);
       if mPastaRetorno_NFE[length(mPastaRetorno_NFE)]<>'\' then
          mPastaRetorno_NFE:=mPastaRetorno_NFE+'\';
       mNomeArq_Xml:=FormatDateTime('ddmmhhnnss',now)+'-Cons-Cad'
       end
   else
      begin
      if (trim(dm4.Tb_ParGer02PG2PASTAENVIO.AsString)='') then
          mPastaEnvio_NFE:='C:\SGE\NFE'
       else
          mPastaEnvio_NFE:=DM4.Tb_ParGer02PG2PASTAENVIO.AsString;
       if not DirExists(mPastaEnvio_NFE) then
          CreateDir(mPastaEnvio_NFE);
       if mPastaEnvio_NFE[length(mPastaEnvio_NFE)]<>'\' then
          mPastaEnvio_NFE:=mPastaEnvio_NFE+'\';

       if (trim(dm4.Tb_ParGer02PG2PASTARETORNO.AsString)='') then
          mPastaRetorno_NFE:='C:\SGE\NFE'
       else
          mPastaRetorno_NFE:=DM4.Tb_ParGer02PG2PASTARETORNO.AsString;
       if not DirExists(mPastaRetorno_NFE) then
          CreateDir(mPastaRetorno_NFE);
       if mPastaRetorno_NFE[length(mPastaRetorno_NFE)]<>'\' then
          mPastaRetorno_NFE:=mPastaRetorno_NFE+'\';
       mNomeArq_Xml:=FormatDateTime('ddmmhhnnss',now)+'-Cons-Cad'
       end;


   if FileExists(mPastaEnvio_NFE+mNomeArq_Xml+'.$$$') then
      begin
      if not DeleteFile(pchar(mPastaEnvio_NFE+mNomeArq_Xml+'.$$$')) then
         begin
         fmensagem('Erro 12169 Nao Foi Possivel Gerar o arquivo XML',0,['0'],0);
         Result:=false;
         exit;
         end;
      end;
   assignfile(f_xml,mPastaEnvio_NFE+mNomeArq_Xml+'.$$$');
   rewrite(f_xml);
   for x:=0 to mXmlString.Count-1 do
      begin
      Writeln(f_xml,mxmlstring[x]);
      end;
   CloseFile(f_xml);
{   copyfile(pchar(mPastaEnvio_NFE+mNomeArq_Xml+'.$$$')
          ,pchar('C:\SGE\'+mNomeArq_Xml+'.xml'),false);
}
   RenameFile(pchar(mPastaEnvio_NFE+mNomeArq_Xml+'.$$$')
          ,pchar(mPastaEnvio_NFE+mNomeArq_Xml+'.xml'));

   mArqRetorno:=pchar(mPastaRetorno_NFE+mNomeArq_Xml+'.ret');
   if FileExists(mArqRetorno) then
      DeleteFile(pchar(mArqRetorno));


   Application.CreateForm(TFrm_Agde_Nfe, Frm_Agde_nfe);
   mNomeArqRet:=mArqRetorno;
   Frm_Agde_nfe.lbl_cliente.Caption    :='';
   Frm_Agde_nfe.lbl_cidade_uf.Caption  :='';
   Frm_Agde_nfe.lbl_valornumero.Caption:='Consultando Cadastro';
   Frm_Agde_nfe.lbl_arqenv.Caption:='Arquivo Enviado: '+mPastaEnvio_NFE+mNomeArq_Xml+'.xml';
   Frm_Agde_nfe.lbl_arqesperado.Caption:='Arquivo Esperado: '+mArqRetorno;


   Frm_Agde_nfe.Animate1.Active:=true;
   mArquivoRetornou:=false;
   Frm_Agde_nfe.ShowModal;
   if not mArquivoRetornou then
      begin
      Frm_Agde_nfe.free;
      Frm_Agde_nfe:=nil;
      mRetorno:=false;
      end
   else
      begin
      AssignFile(f_xml,mArqRetorno);
      Reset(f_xml);
      while not eof(f_xml) do
         begin
         readln(f_xml,mlinha_lid);
         for x:=1 to length(mlinha_lid) do
            begin
            if mlinha_lid[x]='=' then
               begin
               mposigual:=x;
               break;
               end;
            end;
         mposigual:=mposigual+1;
         if UpperCase(copy(mlinha_lid,1,length('[VALIDACAO]')))='[VALIDACAO]' then
            begin
            mcinst4:=trim(copy(mlinha_lid,mposigual,length(mlinha_lid)-(mposigual-1)));
            if mcinst4='OK' then
               begin
               mErroXml:=false;
               mRetorno:=true;
               end
            else
               begin
               mErroXml:=true;
               mRetorno:=false;
               end
            end
         else if UpperCase(copy(mlinha_lid,1,08))='[STATUS]' then
            edt_status.Text:=trim(copy(mlinha_lid,mposigual,length(mlinha_lid)-(mposigual-1)))
         else if UpperCase(copy(mlinha_lid,1,18))='[STATUS DESCRICAO]' then
            edt_status_descricao.Text:=trim(copy(mlinha_lid,mposigual,length(mlinha_lid)-(mposigual-1)))
         else if UpperCase(copy(mlinha_lid,1,11))='[INSCRICAO]' then
            edt_enc_ie.Text:=trim(copy(mlinha_lid,mposigual,length(mlinha_lid)-(mposigual-1)))
         else if UpperCase(copy(mlinha_lid,1,06))='[CNPJ]' then
            edt_enc_cnpj.Text:=FormatFloat(pDFCNPJ, fSonumero(trim(copy(mlinha_lid,mposigual,length(mlinha_lid)-(mposigual-1)))))
         else if UpperCase(copy(mlinha_lid,1,05))='[CPF]' then
            edt_enc_cpf.Text:=FormatFloat(pDFCNPF, fSonumero(trim(copy(mlinha_lid,mposigual,length(mlinha_lid)-(mposigual-1)))))
         else if UpperCase(copy(mlinha_lid,1,08))='[CIDADE]' then
            edt_cidade.Text:=trim(copy(mlinha_lid,mposigual,length(mlinha_lid)-(mposigual-1)))
         else if UpperCase(copy(mlinha_lid,1,04))='[UF]' then
            edt_uf.Text:=trim(copy(mlinha_lid,mposigual,length(mlinha_lid)-(mposigual-1)))
         else if UpperCase(copy(mlinha_lid,1,14))='[COD.SITUACAO]' then
            cb_csit.ItemIndex:=valint(trim(copy(mlinha_lid,mposigual,length(mlinha_lid)-(mposigual-1))))
         else if UpperCase(copy(mlinha_lid,1,14))='[RAZAO SOCIAL]' then
            edt_razsoc.Text:=trim(copy(mlinha_lid,mposigual,length(mlinha_lid)-(mposigual-1)))
         else if UpperCase(copy(mlinha_lid,1,17))='[REGIME APURACAO]' then
            edt_regapur.Text:=trim(copy(mlinha_lid,mposigual,length(mlinha_lid)-(mposigual-1)))
         else if UpperCase(copy(mlinha_lid,1,06))='[CNAE]' then
            edt_cnae.Text:=trim(copy(mlinha_lid,mposigual,length(mlinha_lid)-(mposigual-1)))
         else if UpperCase(copy(mlinha_lid,1,13))='[DT.INI.ATIV]' then
            edt_dtiniativ.Text:=trim(copy(mlinha_lid,mposigual,length(mlinha_lid)-(mposigual-1)))
         else if UpperCase(copy(mlinha_lid,1,12))='[LOGRADOURO]' then
            edt_endereco.Text:=trim(copy(mlinha_lid,mposigual,length(mlinha_lid)-(mposigual-1)))
         else if UpperCase(copy(mlinha_lid,1,08))='[NUMERO]' then
            edt_ender_nro.Text:=trim(copy(mlinha_lid,mposigual,length(mlinha_lid)-(mposigual-1)))
         else if UpperCase(copy(mlinha_lid,1,13))='[COMPLEMENTO]' then
            edt_ender_complemento.Text:=trim(copy(mlinha_lid,mposigual,length(mlinha_lid)-(mposigual-1)))
         else if UpperCase(copy(mlinha_lid,1,08))='[BAIRRO]' then
            edt_bairro.Text:=trim(copy(mlinha_lid,mposigual,length(mlinha_lid)-(mposigual-1)))
         else if UpperCase(copy(mlinha_lid,1,08))='[CIDADE]' then
            edt_cidade.Text:=trim(copy(mlinha_lid,mposigual,length(mlinha_lid)-(mposigual-1)))
         else if UpperCase(copy(mlinha_lid,1,17))='[COD.CIDADE IBGE]' then
            edt_codibge.Text:=trim(copy(mlinha_lid,mposigual,length(mlinha_lid)-(mposigual-1)))
         else if UpperCase(copy(mlinha_lid,1,10))='[FANTASIA]' then
            edt_fantasia.Text:=trim(copy(mlinha_lid,mposigual,length(mlinha_lid)-(mposigual-1)))
         else if UpperCase(copy(mlinha_lid,1,05))='[CEP]' then
            edt_cep.Text:=trim(copy(mlinha_lid,mposigual,length(mlinha_lid)-(mposigual-1)));

         end;
      closefile(f_xml);

      Frm_Agde_nfe.free;
      Frm_Agde_nfe:=nil;
      if (PValidaXML) and (mErroXml)  then
         begin
         Application.CreateForm(TFrm_Sintegra_Advert, Frm_Sintegra_Advert);
         Frm_Sintegra_Advert.tsXml.TabVisible:=true;
         Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.LoadFromFile(mArqRetorno);
         Frm_Sintegra_Advert.Memo_Xml.Lines.LoadFromFile('C:\SGE\'+mNomeArq_Xml+'.xml');
         Deletefile(pchar('C:\SGE\'+mNomeArq_Xml+'.xml'));
         Frm_Sintegra_Advert.ShowModal;
         Frm_Sintegra_Advert.Free;
         Frm_Sintegra_Advert:=nil;
         result:=false;
         exit;
         end
      else
         Deletefile(pchar('C:\SGE\'+mNomeArq_Xml+'.xml'));


      if PValidaXML then
         begin
         mcinst4:='C:\SGE\NFE\VALXML'+FormatDateTime('yyyymm',date);
         if not DirectoryExists(mcinst4) then
            begin
            if not DirectoryExists('C:\SGE\NFE') then
               createdir('C:\SGE\NFE');
            CreateDir(mcinst4);
            end;
         mcinst4:=mcinst4+'\INUTILIZADAS';
         if not DirectoryExists(mcinst4) then
            CreateDir(mcinst4);

         if CopyFile(pchar(mArqRetorno),pchar(mcinst4+'\'+Fnomearq_Pasta(0,mArqRetorno)),false) then
            DeleteFile(pchar(marqRetorno));
         end
      else
         begin
         mcinst4:='C:\SGE\NFE\MES'+FormatDateTime('yyyymm',date);
         if not DirectoryExists(mcinst4) then
            begin
            if not DirectoryExists('C:\SGE\NFE') then
               createdir('C:\SGE\NFE');
            CreateDir(mcinst4);
            end;
         end;

   //lindomar
      end;
   if edt_status.Text='259'  then
      begin
      lbl_resultado.Caption:=edt_status.Text+' - '+edt_status_descricao.Text;
      FLimpar(2);
      end
   else
      begin
      // 111 E 112 E RESULTADO OK
      if edt_status.Text='260' then
         edt_enc_cnpj.Text:='';
      lbl_resultado.Caption:='Registros Encontrado +'+edt_status.Text+' - '+edt_status_descricao.Text;
      end;
   end
else if fdadosconfig_geral('VERSAO_GERENCIADOR_NFE')='a partir maio/2017' then
   begin
   Application.createform(TFrm_Nfe_Aguarde, Form_Nfe_Aguarde);
   form_nfe_aguarde.mNFEretorno.mentra_operacao:=Nfe_Consulta_Cadastro;
   form_nfe_aguarde.mNFEretorno.mentra_evento   :=Nfe_Consulta_Cadastro;
   form_nfe_aguarde.mNFEretorno.mentra_chave   :=0;
   form_nfe_aguarde.mNFEretorno.mentra_codemp  :=0;
   form_nfe_aguarde.mNFEretorno.mentra_lotseq  :=0;
   form_nfe_aguarde.mNFEretorno.mentra_numnf   :=0;
   form_nfe_aguarde.mNFEretorno.mentra_serie   :='';
   form_nfe_aguarde.mNFEretorno.mentra_modelo  :='';



// lindomar
   form_nfe_aguarde.mNFEretorno.mentra_cnpj_emitente    :=DM1.Tb_Empcnpj_masc.AsString;
   form_nfe_aguarde.mNFEretorno.mentra_chave_acesso  :='';
   form_nfe_aguarde.mNFEretorno.mentra_xml           :=mXmlString.Text;
   form_nfe_aguarde.Timer_processar.Enabled := true;
   Form_Nfe_Aguarde.ShowModal;
{
   if (codusr=1111) and (NomeComputador='LINDOMAR-PC') then
      begin
      if Application.MessageBox('Quer salvar o xml ao inves de concluir?','Confirmacao',MB_YESNO+MB_DEFBUTTON2)=mrYes then
         begin
         mXmlString.SaveToFile('c:\inutilizar.xml');
         MessageDlg('Arquivo salvo como c:\inutilizar.xml',mtWarning,[mbOk],0);
         exit;
         end;
      end;
}
   if form_nfe_aguarde.mNFEretorno.msaida_cstat=0 then
      begin
      Application.CreateForm(TFrm_Sintegra_Advert, Frm_Sintegra_Advert);
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Clear;
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add(form_nfe_aguarde.mNFEretorno.msaida_ret_observacao);
      Frm_Sintegra_Advert.Memo_xml.Lines.Clear;
      Frm_Sintegra_Advert.Memo_xml.Lines.Add(mXmlString.Text);
      Frm_Sintegra_Advert.tsXml.TabVisible:=true;
      Frm_Sintegra_Advert.TabSheet1.TabVisible:=true;
      Frm_Sintegra_Advert.Memo_xmlRet.Lines.Text:=form_nfe_aguarde.mNFEretorno.msaida_xml_Resposta;
      Frm_Sintegra_Advert.ShowModal;
      result:=false;
      end
   else if (form_nfe_aguarde.mNFEretorno.msaida_cstat<>111) AND
           (form_nfe_aguarde.mNFEretorno.msaida_cstat<>112) then
      begin
      Application.CreateForm(TFrm_Sintegra_Advert, Frm_Sintegra_Advert);
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Clear;
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add('Status: '+Inttostr(form_nfe_aguarde.mNFEretorno.msaida_cstat)+#13
                                                   +'Motivo: '+form_nfe_aguarde.mNFEretorno.msaida_cstat_motivo+#13
                                                   +form_nfe_aguarde.mNFEretorno.msaida_ret_observacao);
      Frm_Sintegra_Advert.Memo_xmlRet.Lines.Add(form_nfe_aguarde.mNFEretorno.msaida_xml_Resposta);

      Frm_Sintegra_Advert.Memo_xml.Lines.Clear;
      Frm_Sintegra_Advert.Memo_xml.Lines.Add(mXmlString.Text);
      Frm_Sintegra_Advert.tsXml.TabVisible:=true;
      if form_nfe_aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor>pdatanula then
         begin
         if form_nfe_aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor<now then
            begin
            Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('Certificado Digital vencido em: '
                                                           +formatdatetime(fdathor, form_nfe_aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor))
            end
         else if form_nfe_aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor<now+30 then
            begin
            Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('O Seu Certificado Digital ira vencer em: '
                                                           +formatdatetime(fdathor, form_nfe_aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor));
            end;
         end;
      Frm_Sintegra_Advert.PageControl1.ActivePageIndex:=0;
      Frm_Sintegra_Advert.ShowModal;
      freeandnil(Frm_Sintegra_Advert);
      if (form_nfe_aguarde.mNFEretorno.msaida_cstat=111) or
         (form_nfe_aguarde.mNFEretorno.msaida_cstat=112) then
         result:=true
      else
         result:=false;
      end
   else
      begin

      mnfe_Num_Protolo      :=form_nfe_aguarde.mNFEretorno.msaida_num_protocolo;
      mnfe_nrecibo          :=form_nfe_aguarde.mNFEretorno.msaida_num_recibo;
      mnfe_mensagem_retorno :=form_nfe_aguarde.mNFEretorno.msaida_ret_observacao;
      mnfe_dh_valcertificado:=form_nfe_aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor;
      mNfe_dathorEve        :=form_nfe_aguarde.mNFEretorno.msaida_dathorEve;
      mnfe_stat_Prot        :=inttostr(form_nfe_aguarde.mNFEretorno.msaida_cstat);
      mnfe_stat_Prot_Desc   :=form_nfe_aguarde.mNFEretorno.msaida_cstat_motivo;

      Frm_NFe_ConsCad.edt_status.Text:=mnfe_stat_Prot;


      ftestaremostrarcertificado(form_nfe_aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor);

      fcarregardados(form_nfe_aguarde.mNFEretorno.msaida_xml_protocolado);

      result:=true;
      end;
   freeandnil(Frm_Sintegra_Advert);
   freeandnil(form_nfe_aguarde);
   exit;
   end
else
   begin
   Application.CreateForm(TFrm_nfe_Agde, form_nfe_agde);
   form_nfe_agde.lbl_cliente.Caption    :='';
   form_nfe_agde.lbl_cidade_uf.Caption  :='';

   if fsonumero(edt_cnpj.text)<>0 then
      form_nfe_agde.lbl_funcao.Caption:='CONSULTA CADASTRO. CNPJ: '+edt_cnpj.text;

   if fSonumero(edt_cpf.text)<>0 then
      form_nfe_agde.lbl_funcao.Caption:='CONSULTA CADASTRO. CPF: '+edt_cpf.text;

   DM1.Query1.close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('SELECT * FROM CADPAR_NF where PNF_CODEMP=:CODEMP '
                     +' AND PNF_CHAVE=:CHAVE ');
   DM1.Query1.ParamByName('CODEMP').Value:=codemp;
   if DM4.Tb_ParGer02PG2NFETPEMIS.AsInteger=3 then
      DM1.Query1.ParamByName('CHAVE').Value :='SCAN'
   else
      DM1.Query1.ParamByName('CHAVE').Value :='SERIE1';

   DM1.Query1.Open;

   form_nfe_agde.mnfe_servidor01:=DM1.Query1.fieldbyName('PNF_SERVIDOR01').AsInteger;
   form_nfe_agde.mnfe_servidor02:=DM1.Query1.fieldbyName('PNF_SERVIDOR02').AsInteger;
   form_nfe_agde.mnfe_servidor03:=DM1.Query1.fieldbyName('PNF_SERVIDOR03').AsInteger;
   form_nfe_agde.mnfe_Tipo_Servico:=8; // consulta cadastro
   form_nfe_agde.MNfe_tpemis:=DM4.Tb_ParGer02PG2NFETPEMIS.AsInteger;


   form_nfe_agde.fNfe_EnviarArquivo2(mXmlString);
   form_nfe_agde.ShowModal;
   mnfe_mensagem_retorno := form_nfe_agde.mnfe_mensagem_retorno;
   if Form_nfe_Agde.mErroProcessamento then
      begin
      Application.CreateForm(TFrm_Sintegra_Advert, Frm_Sintegra_Advert);
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Clear;
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add(form_nfe_agde.mnfe_mensagem_retorno);
      Frm_Sintegra_Advert.Memo_xml.Lines.Clear;
      Frm_Sintegra_Advert.Memo_xml.Lines.Add(mXmlString.Text);
//      Frm_Sintegra_Advert.TreeView1.Items:=form_nfe_agde.TreeView1.Items;
//      Frm_Sintegra_Advert.TreeView1.FullExpand;
//       :=Form_nfe_Agde.TreeView1;
//      Frm_Sintegra_Advert.tsXml.TabVisible:=false;
      if (mnfe_dh_valcertificado<=date) then
           Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('Certificado Digital vencido em: '
                                                        +FormatDateTime(fdathor, mnfe_dh_valcertificado))
      else if (mnfe_dh_valcertificado<=date+30) then
           Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('O Seu Certificado Digital ira vencer em: '
                                                        +FormatDateTime(fdathor, mnfe_dh_valcertificado));

      Frm_Sintegra_Advert.ShowModal;
      Frm_Sintegra_Advert.Free;
      Frm_Sintegra_Advert:=nil;
      end
   else
      begin
//      form_nfe_agde.vXMLRetorno.SaveToFile('c:\conscad.xml');
      end;
    if (mnfe_dh_valcertificado-30)<=date+30 then
       begin
       if not flfilpad(-2,'VCTO_CERT_DIG',FormatDateTime(fdt2, date)) then
          begin
          if fmensagem('O seu Certificado Digital irá vencer em: '+FormatDateTime(fdathor, mnfe_dh_valcertificado)
                    +'. Restam '+IntToStr(Round(mnfe_dh_valcertificado-date))+' dia(s) para vencer. Avisar Novamente?'
                    ,0,['1','2'],1)=mrNo then
              begin
              fGravaPadroes(-2,FormatDateTime(fdt2, date) ,'aviso'
             ,'VCTO_CERT_DIG'
              ,'SIM');
              end;
          end;
       end;
   freeandnil(form_nfe_agde);
   FreeandNil(mXmlString);
   exit;
   end;


result:=mRetorno;
end;

procedure tFrm_Nfe_ConsCad.fCarregardados(pXml: String);
begin
FLimpar(1);
try
   edt_enc_cnpj.Text  := getConteudoTAG(pXml,'CNPJ','');
   edt_enc_ie.Text    := getConteudoTAG(pXml,'IE','');
   edt_enc_cpf.Text  := getConteudoTAG(pXml,'CPF','');
   edt_razsoc.Text  := getConteudoTAG(pXml,'xNome','');
   edt_fantasia.Text  := getConteudoTAG(pXml,'xFant','');
   edt_endereco.Text  := getConteudoTAG(pXml,'xLgr','');
   edt_ender_nro.Text  := getConteudoTAG(pXml,'nro','');
   edt_ender_complemento.Text  := getConteudoTAG(pXml,'xCpl','');
   edt_bairro.Text  := getConteudoTAG(pXml,'xBairro','');
   edt_cidade.Text  := getConteudoTAG(pXml,'xMun','');
   edt_uf.Text  := getConteudoTAG(pXml,'UF','');
   edt_codibge.Text  := getConteudoTAG(pXml,'cMun','');
   edt_cep.Text  := getConteudoTAG(pXml,'CEP','');
   edt_dtiniativ.Text  := formatdatetime(fdt2,  fSairDataHoraXml('D',getConteudoTAG(pXml,'dIniAtiv','')));
   edt_dUltSit.Text  := formatdatetime(fdt2,  fSairDataHoraXml('D',getConteudoTAG(pXml,'dUltSit','')));

   edt_dBaixa.Text  := formatdatetime(fdt2,  fSairDataHoraXml('D',getConteudoTAG(pXml,'dBaixa','')));
   edt_IEUnica.Text  := getConteudoTAG(pXml,'IEUnica','');
   edt_IEAtual.Text  := getConteudoTAG(pXml,'IEAtual','');

   cb_csit.itemindex     := valint(getConteudoTAG(pXml,'cSit',''));
   edt_regapur.Text  := getConteudoTAG(pXml,'xRegApur','');
   edt_cnae.Text  := getConteudoTAG(pXml,'CNAE','');
   edt_status.Text  := getConteudoTAG(pXml,'cStat','');
   edt_status_descricao.Text  := getConteudoTAG(pXml,'xMotivo','');
   cb_indCredNFe.itemindex    := valint(getConteudoTAG(pXml,'indCredNFe',''));
   cb_indCredCTe.itemindex    := valint(getConteudoTAG(pXml,'indCredCTe',''));
except
   end;


end;

procedure TFrm_NFe_ConsCad.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_NFe_ConsCad.bbAceitarClick(Sender: TObject);
begin
mTipoOper:=1;
close;
end;

procedure TFrm_NFe_ConsCad.bbSairIncluirClick(Sender: TObject);
begin
mTipoOper:=2;
close;

end;

procedure TFrm_NFe_ConsCad.FormCreate(Sender: TObject);
begin
mOrigemInfo:=0;
edt_cnpj.EditMask:=pEditMascCNPJ;
edt_enc_cnpj.EditMask:=pEditMascCNPJ;
edt_cpf.EditMask:=pEditMascCNPF;


end;

procedure TFrm_NFe_ConsCad.edt_cnpjExit(Sender: TObject);
begin
edt_cnpj.Text:=FormatFloat(pDFCNPJ, fsonumero(edt_cnpj.Text));
end;

procedure TFrm_NFe_ConsCad.edt_cpfExit(Sender: TObject);
begin
edt_cpf.Text:=FormatFloat(pDFCNPF, fsonumero(edt_cpf.Text));

end;




end.

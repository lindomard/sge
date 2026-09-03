unit S_Download_XML_NFE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, SqlExpr, ComCtrls,db,dbtables;

type
  TFrm_Download_XML_NFE = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    edt_nfe_chave: TMaskEdit;
    bbBaixar: TBitBtn;
    bbSair: TBitBtn;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    cb_ambiente: TComboBox;
    Label2: TLabel;
    bbSalvarComo: TBitBtn;
    SaveDialog1: TSaveDialog;
    RichEdit1: TMemo;
    bbConsultar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbBaixarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbSalvarComoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbConsultarClick(Sender: TObject);
  private
    { Private declarations }
     function fXMLDownload: String;

  public
    { Public declarations }
    mNomeArqXML_Salvo: string;
    mAcionarAutomaticamente: Boolean;

  end;


var
  Frm_Download_XML_NFE: TFrm_Download_XML_NFE;

implementation

uses func, S_DM1,  LerArq, s_nfe_Agde, S_Sintegra_Advert,
  S_NFE_Manifestacao, func_excecoes, Func2, s_Nfe_Aguarde, S_DM4;

{$R *.dfm}

procedure TFrm_Download_XML_NFE.bbBaixarClick(Sender: TObject);
var
  mRetorno: Integer;
  x_Down: Integer;
  form_manifestacao: TFrm_NFE_Manifestacao;
begin
RichEdit1.Lines.Clear;

for x_Down := 1 to 2 do
   begin
   mRetorno:=valint(fXMLDownload);
   if mRetorno=633 then
      begin
      Application.CreateForm(TFrm_NFE_Manifestacao, form_manifestacao);
      form_manifestacao.fManifestacao('210200',fdeixanum(edt_nfe_chave.Text));
      FreeAndNil(form_manifestacao);
//      RichEdit1.Lines.Clear;
      end
   else
      Break;
   end;
if bbSalvarComo.Enabled then
   bbSalvarComoClick(self);
end;

procedure TFrm_Download_XML_NFE.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Download_XML_NFE.bbSalvarComoClick(Sender: TObject);
var
mLinhas_strings: TStrings;
begin
SaveDialog1.FileName:=ExtractFilePath(Application.ExeName)+'NFE_'+fdeixanum(edt_nfe_chave.Text)+'.XML';
if SaveDialog1.Execute then
   begin
   mNomeArqXML_Salvo:=SaveDialog1.FileName;
   mLinhas_strings:=TStringList.Create();
   mLinhas_strings.Text:=fBuscarsonfe(RichEdit1.Lines.Text);
   mLinhas_strings.SaveToFile(mNomeArqXML_Salvo);
//   RichEdit1.Lines.SaveToFile(mNomeArqXML_Salvo);
   if mAcionarAutomaticamente=true then
      close
   else   
      MessageDlg('Arquivo Salvo Como '+SaveDialog1.FileName,mtInformation,[MBoK],0);
   end;
end;

procedure TFrm_Download_XML_NFE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Download_XML_NFE.FormCreate(Sender: TObject);
begin
edt_nfe_chave.editMask:= pEditMascChave_Acesso;
mNomeArqXML_Salvo:='';
mAcionarAutomaticamente:=false;

end;

function TFrm_Download_XML_NFE.fXMLDownload: String;
var
mRetorno: String;
Query_Emp: tQuery;
mNumNFE: string;
mXmlString: TStrings;
form_nfe_agde:TFrm_nfe_Agde;
mStatus_Retorno_01: Integer;
mStatus_Retorno_02: Integer;
mPos_Status: Integer;
mTexto_temp_01: String;
mTexto_temp_02: String;
Form_Nfe_Aguarde: TFrm_Nfe_Aguarde;

begin

Query_Emp:=TQuery.Create(nil);
Query_Emp.DatabaseName:='SG_ASSOC';


Query_Emp:=TQuery.Create(nil);
Query_Emp.DatabaseName:='SG_ASSOC';
Query_Emp.SQL.Add( 'Select CODEMP AS EMP_CODEMP,CODLOC AS EMP_CODLOC,RAZAO AS EMP_RAZAO,FANTASIA AS EMP_FANTASIA,CGC AS EMP_CNPJ, '
                  +'       EMP_OPTSIMPLES AS EMP_CRT,INSCRICAO AS EMP_INSCRICAO, LOCEMP.LNOME AS EMP_CIDADE, '
                  +'       LOCEMP.LUF AS EMP_UF ,CEP AS EMP_CEP, '
                  +'       ENDERECO AS EMP_LOGRADOURO,NUMERO AS EMP_NUMERO,BAIRRO AS EMP_BAIRRO, '
                  +'       LOCEMP.LUF AS UF_EMP,LCODMUN_IBGE AS LCODIBGE '
                  +'       ,FONE AS EMP_FONE,INSCMUNIC AS EMP_INSMUN, EMP_CNAE '
                  +'       from CADEMP  paf_cademp, CADLOC LOCEMP '
                  +'       WHERE (LOCEMP.LCODLOC=CODLOC '
                  +'      and LOCEMP.LCODEMP=CODEMP) '
                  +'          and CODEMP=:CODEMP ');
Query_Emp.ParamByName('CODEMP').Value:=codemp;
try
   Query_Emp.Open;
except ON E: Exception do
   if not fVerificaRedeAtiva(true) then
      begin
      result:='';
      exit;
      end
   else
      begin
      try
         Query_Emp.Open;
      except
         ex_erroSql_Novo(Query_Emp,4836,'_lerarq','CADEMP');
         end;
      end;
   end;


mNumNFE:=fdeixanum(edt_nfe_chave.Text);
if length(mNumNFE)<>44 then
   begin
   MessageDlg('Chave da NFE é invalida!',mtWarning,[mbOk],0);
   result:='';
   exit;
   end
else
   begin
   if copy(mNumNFE,44,1)<>fCalcDigNFEMod11(copy(mNumNFE,1,43)) then
      begin
      MessageDlg('Chave da NFE '+edt_nfe_chave.Text+' é invalida!',mtWarning,[mbOk],0);
      result:='';
      exit;
      end;
   end;





mXmlString:=TStringList.Create;
mXmlString.Clear;

mXmlString.Add('<?xml version="1.0" encoding="UTF-8"?>');
//mXmlString.Add('<downloadNFe>');
mXmlString.Add('<downloadNFe xmlns="http://www.portalfiscal.inf.br/nfe" versao="1.00">');
mXmlString.Add('<tpAmb>'+IntToStr(cb_ambiente.ItemIndex+1)+'</tpAmb>');
mXmlString.Add('<xServ>DOWNLOAD NFE</xServ>');
mXmlString.Add('<CNPJ>'+FormatFloat('00000000000000',fSonumero(Query_Emp.FieldbyName('EMP_CNPJ').AsString))+'</CNPJ>');
mXmlString.Add('<chNFe>'+fdeixanum(edt_nfe_chave.Text)+'</chNFe>');
mXmlString.Add('</downloadNFe>');


//RichEdit1.Lines.Clear;




if fdadosconfig_geral('VERSAO_GERENCIADOR_NFE')='a partir maio/2017' then
   begin
   Application.createform(TFrm_Nfe_Aguarde, Form_Nfe_Aguarde);
   form_nfe_aguarde.mNFEretorno.mentra_chave_acesso  := fdeixanum(edt_nfe_chave.Text);
   form_nfe_aguarde.Memo_evento.Lines.Add('Download Nfe de entrada. Chave de Acesso '+form_nfe_aguarde.mNFEretorno.mentra_chave_acesso);

   form_nfe_aguarde.mNFEretorno.mentra_operacao:=Nfe_downloadnfe_entrada;
   form_nfe_aguarde.mNFEretorno.mentra_Evento  :=Nfe_downloadnfe_entrada;

   form_nfe_aguarde.mNFEretorno.mentra_chave          :=0;
   form_nfe_aguarde.mNFEretorno.mentra_chave_carcor   :=0;
   form_nfe_aguarde.mNFEretorno.mentra_codemp         :=0;
   form_nfe_aguarde.mNFEretorno.mentra_lotseq         :=0;
   form_nfe_aguarde.mNFEretorno.mentra_numnf          :=0;
   form_nfe_aguarde.mNFEretorno.mentra_serie          :='';
   form_nfe_aguarde.mNFEretorno.mentra_modelo         :='';


   form_nfe_aguarde.mNFEretorno.mentra_cnpj_emitente    :=DM1.Tb_Empcnpj_masc.AsString;
   form_nfe_aguarde.mNFEretorno.mentra_xml           :=mXmlString.Text;
   form_nfe_aguarde.Timer_processar.Enabled := true;
   Form_Nfe_Aguarde.ShowModal;

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
      end
   else if form_nfe_aguarde.mErroProcessamento then
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
      end
   else
      begin
      mnfe_Num_Protolo      :=form_nfe_aguarde.mNFEretorno.msaida_num_protocolo;
      mnfe_nrecibo          :=form_nfe_aguarde.mNFEretorno.msaida_num_recibo;
      mnfe_mensagem_retorno :=form_nfe_aguarde.mNFEretorno.msaida_ret_observacao;
      mnfe_dh_valcertificado:=form_nfe_aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor;
      mNfe_dathorEve        :=form_nfe_aguarde.mNFEretorno.msaida_dathorEve;
      mnfe_stat_Prot        := inttostr(form_nfe_aguarde.mNFEretorno.msaida_cstat);
      mnfe_stat_Prot_Desc   :=form_nfe_aguarde.mNFEretorno.msaida_cstat_motivo;


      RichEdit1.Lines.Clear;
      RichEdit1.Lines.Add(Form_Nfe_Aguarde.mNFEretorno.msaida_xml_protocolado);

      mStatus_Retorno_01   :=valint(mnfe_stat_Prot);
      mStatus_Retorno_02   :=valint(mnfe_stat_Prot);
      if mStatus_Retorno_02=140 then
         mStatus_Retorno_01:=139;
      end;
   freeandnil(Frm_Sintegra_Advert);
   freeandnil(form_nfe_aguarde);
   end
else
   begin
   Application.CreateForm(TFrm_nfe_Agde, form_nfe_agde);
   Form_nfe_agde.lbl_cliente.Caption    :='';
   form_nfe_agde.lbl_cidade_uf.Caption  :='';
   form_nfe_agde.lbl_funcao.Caption:='DOWNLOAD NFE '+edt_nfe_chave.Text;
   form_nfe_agde.mnfe_chaveAcesso  := fdeixanum(edt_nfe_chave.Text);
   form_nfe_agde.mnfe_chave_ped    := 0;
   form_nfe_agde.mnfe_codemp_ped   := 0;
   form_nfe_agde.mnfe_chave_ano_ped:= 0;

   Form_nfe_Agde.mnfe_numnf       :=0;
   Form_nfe_Agde.mnfe_Serie       :='';
   Form_nfe_Agde.mnfe_Modelo      :='';
   form_nfe_agde.mnfe_servidor01:=fRede_LerParger('PNF_SERVIDOR01');
   form_nfe_agde.mnfe_servidor02:=fRede_LerParger('PNF_SERVIDOR02');
   form_nfe_agde.mnfe_servidor03:=fRede_LerParger('PNF_SERVIDOR03');
   form_nfe_agde.mnfe_Tipo_Servico:=10;
   form_nfe_agde.MNfe_tpemis   :=1;
   form_nfe_agde.mnfe_ambiente :=1;
   form_nfe_agde.mNfe_cnpj     :=insere(fdeixanum(DM1.Tb_EmpCGC.AsString),'0',14);
   form_nfe_agde.fNfe_EnviarArquivo2(mXmlString);
   //mXmlString.SaveToFile('c:\download.xml');
   mStatus_Retorno_01:=0;
   mStatus_Retorno_02:=0;

   form_nfe_agde.ShowModal;
   if Form_nfe_Agde.mErroProcessamento then
      begin
      Application.CreateForm(TFrm_Sintegra_Advert, Frm_Sintegra_Advert);
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Clear;
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add(form_nfe_agde.mnfe_mensagem_retorno);
      Frm_Sintegra_Advert.Memo_xml.Lines.Clear;
      Frm_Sintegra_Advert.Memo_xml.Lines.Add(mXmlString.Text);
   //   Frm_Sintegra_Advert.TreeView1.Items:=form_nfe_agde.TreeView1.Items;
   //   Frm_Sintegra_Advert.TreeView1.FullExpand;
      Frm_Sintegra_Advert.tsXml.TabVisible:=true;
      RichEdit1.Lines.Add(mXmlString.Text);
      mTexto_temp_01:=mXmlString.text;
      mPos_status:=Pos('cStat',mTexto_temp_01);
      if mpos_Status>0 then
         begin
         mStatus_Retorno_01:=valint(copy(mTexto_temp_01,mpos_Status+6,3));

         mTexto_temp_02:=copy(mTexto_temp_01,mpos_Status+15,(length(mTexto_temp_01)-mPos_Status+15));
         if Pos('cStat',mTexto_temp_02)>0 then
            begin
            mPos_Status:=Pos('cStat',mTexto_temp_02);
            end
         else
            mTexto_temp_02:=mTexto_temp_01;
         mStatus_Retorno_02:=valint(copy(mTexto_temp_02,mpos_Status+6,3))
         end
      else
         begin
         mStatus_Retorno_01:=0;
         mStatus_Retorno_02:=0;
         end;

      if mStatus_Retorno_02<>633 then // se nao Manifestada
         begin
         if (mnfe_dh_valcertificado<=date) and (mnfe_dh_valcertificado>pDataNula) then
              Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('Certificado Digital vencido em: '
                                                           +FormatDateTime(fdathor, mnfe_dh_valcertificado))
         else if (mnfe_dh_valcertificado<=date+30) and (mnfe_dh_valcertificado>pDataNula) then
              Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('O Seu Certificado Digital ira vencer em: '
                                                          +FormatDateTime(fdathor, mnfe_dh_valcertificado));
         Frm_Sintegra_Advert.ShowModal;
         end;
      freeandnil(frm_sintegra_advert);
      end
   else
      begin

      mTexto_temp_01:=form_nfe_agde.streStream.DataString;
      mPos_status:=Pos('cStat',mTexto_temp_01);
      if mpos_Status>0 then
         begin
         mStatus_Retorno_01:=valint(copy(mTexto_temp_01,mpos_Status+6,3));

         mTexto_temp_02:=copy(mTexto_temp_01,mpos_Status+15,(length(mTexto_temp_01)-mPos_Status+15));
         if Pos('cStat',mTexto_temp_02)>0 then
            begin
            mPos_Status:=Pos('cStat',mTexto_temp_02);
            end
         else
            mTexto_temp_02:=mTexto_temp_01;
         mStatus_Retorno_02:=valint(copy(mTexto_temp_02,mpos_Status+6,3))
         end
      else
         begin
         mStatus_Retorno_01:=0;
         mStatus_Retorno_02:=0;
         end;


      Application.CreateForm(TFrm_Sintegra_Advert, Frm_Sintegra_Advert);
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Clear;
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add(form_nfe_agde.mnfe_mensagem_retorno);
      Frm_Sintegra_Advert.Memo_xml.Lines.Clear;
      Frm_Sintegra_Advert.Memo_xml.Lines.Add(mXmlString.Text);
   //   Frm_Sintegra_Advert.TreeView1.Items:=form_nfe_agde.TreeView1.Items;
   //   Frm_Sintegra_Advert.TreeView1.FullExpand;
      Frm_Sintegra_Advert.Memo_Xml.Lines.Add(form_nfe_agde.streStream.DataString );

      RichEdit1.Lines.Add(form_nfe_agde.streStream.DataString );

      if mStatus_Retorno_02<>633 then // se nao Manifestada
         begin
         if ((mnfe_dh_valcertificado-30)<=date+30) and (mnfe_dh_valcertificado>pDataNula) then
            begin
            if (mnfe_dh_valcertificado<=date) and (mnfe_dh_valcertificado>pDataNula) then
               Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('Certificado Digital vencido em: '
                                                          +FormatDateTime(fdathor, mnfe_dh_valcertificado))
            else if (mnfe_dh_valcertificado<=date+30) and (mnfe_dh_valcertificado>pDataNula) then
               Frm_Sintegra_Advert.Memo_NFSNaoEnc.lines.Add('O Seu Certificado Digital ira vencer em: '
                                                          +FormatDateTime(fdathor, mnfe_dh_valcertificado));
            Frm_Sintegra_Advert.ShowModal;
            FreeAndNil(Frm_Sintegra_Advert);
       //   RichEdit1.Lines.Text:=form_nfe_agde.vXMLRetorno.ToString;
            if ((mnfe_dh_valcertificado-30)<=date+30) and (mnfe_dh_valcertificado>pDataNula) then
               begin
               if not flfilpad(-2,'VCTO_CERT_DIG',FormatDateTime(fdt2, date)) then
                  begin
                  if Application.MessageBox(pchar('O seu Certificado Digital irá vencer em: '+FormatDateTime(fdathor, mnfe_dh_valcertificado)
                       +'. Restam '+IntToStr(Round(mnfe_dh_valcertificado-date))+' dia(s) para vencer. Avisar Novamente?')
                       ,'',MB_YESNO+MB_DEFBUTTON2)=mrNo then
                     begin
                     fGravaPadroes(-2,FormatDateTime(fdt2, date) ,'aviso'
                     ,'VCTO_CERT_DIG'
                     ,'SIM');
                     end;
                  end;
                end;
             end;
         end;
      Freeandnil(Frm_Sintegra_Advert);

      end;
    end;
if (mStatus_Retorno_01=139) and (mStatus_Retorno_02=140) then     // 139-Pedido de Download processado 140-Download disponibilizado
   begin
   bbSalvarComo.Enabled:=true;
   end
else
   bbSalvarComo.Enabled:=false;



result:=inttostr(mStatus_Retorno_02);
end;

procedure TFrm_Download_XML_NFE.FormShow(Sender: TObject);
begin
if mAcionarAutomaticamente then
   bbBaixarClick(self);

end;

procedure TFrm_Download_XML_NFE.bbConsultarClick(Sender: TObject);
var
  form_manifestacao: TFrm_NFE_Manifestacao;
begin
Application.CreateForm(TFrm_NFE_Manifestacao, form_manifestacao);
form_manifestacao.ShowModal;
FreeAndNil(form_manifestacao);

end;

end.

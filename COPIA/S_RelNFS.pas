unit S_RelNFS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons,S_DM1,db,dbtables,func,S_Impres,S_Cli,S_Uf,
  lerarq, ExtCtrls;

type
  TFrm_RelNFS = class(TForm)
    Label2: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label3: TLabel;
    CB_Ana: TCheckBox;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Qr_NFS: TQuery;
    Qr_NFSNSNUMERO: TFloatField;
    Qr_NFSNSSERIE: TStringField;
    Qr_NFSNSDTEMIS: TDateTimeField;
    Qr_NFSNSCODCLI: TFloatField;
    Qr_NFSNSCFO1: TStringField;
    Qr_NFSNSCFO2: TStringField;
    Qr_NFSNSTOTNOTA: TFloatField;
    Qr_NFSNSBASEN: TFloatField;
    Qr_NFSNSICMSN: TFloatField;
    Qr_NFSBASERET: TFloatField;
    Qr_NFSICMSRET: TFloatField;
    Qr_NFSNSTOTISEN: TFloatField;
    Qr_NFSNSTOTOUT: TFloatField;
    Qr_NFSCRAZAO: TStringField;
    Qr_NFSCUF: TStringField;
    Qr_NFSNSSTATUS: TFloatField;
    Qr_PedMer: TQuery;
    Qr_PedMerP2CHAVE: TFloatField;
    Qr_PedMerP2ORDEM: TFloatField;
    Qr_PedMerP2CODPRO: TFloatField;
    Qr_PedMerP2PRECO: TFloatField;
    Qr_PedMerP2QTD: TFloatField;
    Qr_PedMerP2BASEN: TFloatField;
    Qr_PedMerP2ICMSN: TFloatField;
    Qr_PedMerP2BASER: TFloatField;
    Qr_PedMerP2ICMSR: TFloatField;
    Qr_PedMerP2TOTDES: TFloatField;
    Qr_PedMerP2TOTLIQ: TFloatField;
    Qr_PedMerPDNOME: TStringField;
    Qr_PedMerPDMARCA: TStringField;
    Qr_PedMerPDUND: TStringField;
    Qr_NFSNSCODEMP: TFloatField;
    Qr_NFSNSCHAVEP: TFloatField;
    Qr_NFSNSORDEMP: TFloatField;
    Qr_NFSNSLOTSEQ_CP: TFloatField;
    Qr_PedSer: TQuery;
    Qr_PedSerP2SCHAVE: TFloatField;
    Qr_PedSerP2SORDEM: TFloatField;
    Qr_PedSerP2SCODPRO: TFloatField;
    Qr_PedSerP2SPRECO: TFloatField;
    Qr_PedSerP2SQTD: TFloatField;
    Qr_PedSerP2SBCISSQN: TFloatField;
    Qr_PedSerP2SVISSQN: TFloatField;
    Qr_PedSerP2STOTDES: TFloatField;
    Qr_PedSerPDNOME: TStringField;
    Qr_PedSerPDMARCA: TStringField;
    Qr_PedSerPDUND: TStringField;
    CB_CLIENTES: TCheckBox;
    CB_PRODUTOS: TCheckBox;
    Label5: TLabel;
    QTDCLI: TEdit;
    Label6: TLabel;
    QTDPRO: TEdit;
    Qr_Compras_Cli: TQuery;
    Qr_Compras_CliNOME: TStringField;
    Qr_Compras_CliCODIGO: TFloatField;
    Qr_Compras_CliTOTAL: TFloatField;
    Qr_Compras_CliSEMCOM: TFloatField;
    Qr_Compras_CliFRETE: TFloatField;
    Qr_Compras_CliICMSR: TFloatField;
    Qr_Compras_CliCNPJ: TFloatField;
    Qr_Vendas_Pro: TQuery;
    Qr_Vendas_ProPDNOME: TStringField;
    Qr_Vendas_ProP2CODPRO: TFloatField;
    Qr_Vendas_ProPDCLAS: TStringField;
    Qr_Vendas_ProTOTAL: TFloatField;
    RG_NFCANC: TRadioGroup;
    Label7: TLabel;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    Label1: TLabel;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    Label12: TLabel;
    CODUF: TEdit;
    lbx_coduf: TListBox;
    OMITIR_UF: TCheckBox;
    Qr_NFSoutras: TFloatField;
    Qr_NFSNSTOTNOR: TFloatField;
    RG_IE: TRadioGroup;
    rg_notas: TRadioGroup;
    RG_LOCAL_OPERACAO: TRadioGroup;
    rg_ecf: TRadioGroup;
    Opd1: TOpenDialog;
    bbComparar: TBitBtn;
    Label4: TLabel;
    cb_protocolo: TComboBox;
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure QTDCLIExit(Sender: TObject);
    procedure QTDPROExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODVENExit(Sender: TObject);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODUFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODUFExit(Sender: TObject);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Qr_NFSCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure bbCompararClick(Sender: TObject);
  private
    { Private declarations }
    function frelnfscab(ptipo: Integer): Boolean;
    function frelnfstot(ptipo: Integer): Boolean;
    function frelnfsimpDet(ptipo: Integer): Boolean;
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
    function fAbrirBanco: Boolean;


  public
    { Public declarations }
    form_impres_relnfs: TFrm_Impres;
  end;

var
  Frm_RelNFS: TFrm_RelNFS;
  mlin,mpag: Integer;
  mdataant: TDateTime;
  mtotnf, mtotbc,mtoticms, mtotbcr,mtoticmsr,mtotise,mtotout: Real;
  mtotdnf, mtotdbc,mtotdicms, mtotdbcr,mtotdicmsr,mtotdise,mtotdout: Real;
  mqtdcli, mqtdpro, mtotcli,mtotpro,mQtdReg,mQtdReg_Canc: Integer;
implementation

uses S_RelNFS_Comparar, func_excecoes;


{$R *.dfm}

procedure TFrm_RelNFS.bbSairClick(Sender: TObject);
begin
close;
end;

function TFrm_RelNFS.fAbrirBanco: Boolean;
begin
result:=true;

if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      FMensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
      MDT1.SetFocus;
      result:=false;
      exit;
      end;
   end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :=' NSCODEMP=0'+IntToStr(codemp);
fInnerJoin(1,'CADCLI','CCODEMP','NSCODEMP','CCODCLI','NSCODCLI');
if lbx_codven.Items.Count>0 then
   begin
   if pbanco=0 then
     la_instrucao:=la_instrucao+' and ';

   fInnerJoin4(1,'CADP01','P1CODEMP','NSCODEMP','P1LOTSEQ','NSLOTSEQ_CP','P1CHAVE','NSCHAVEP','P1ORDEM','NSORDEMP');
   end;


Qr_NFS.Close;
Qr_NFS.SQL.Clear;

Qr_NFS.SQL.Add(' Select NSNUMERO,NSSERIE,NSDTEMIS,NSCODCLI,NSCFO1,NSCFO2, '
              +' case when nscfo1<5000 then NSTOTNOTA*(-1) else NSTOTNOTA end NSTOTNOTA,'
              +' case when nscfo1<5000 then NSBASEN*(-1) else NSBASEN end NSBASEN,'
              +' case when nscfo1<5000 then NSICMSN*(-1) else NSICMSN end NSICMSN,'
              +' case when nscfo1<5000 then BASERET*(-1) else BASERET end BASERET,'
              +' case when nscfo1<5000 then ICMSRET*(-1) else ICMSRET end ICMSRET,'
              +' case when nscfo1<5000 then NSTOTISEN*(-1) else NSTOTISEN end NSTOTISEN,'
              +' case when nscfo1<5000 then NSTOTNOR*(-1) else NSTOTNOR end NSTOTNOR,'
              +' case when nscfo1<5000 then NSTOTOUT*(-1) else NSTOTOUT end NSTOTOUT,'
              +' NSSTATUS,NSCHAVEP,NSORDEMP,NSCODEMP, NSLOTSEQ_CP, CRAZAO,CUF  '
              +'  from (                                                  ');
Qr_NFS.SQL.Add('Select NSNUMERO,NSSERIE,NSDTEMIS,NSCODCLI,NSCFO1,NSCFO2,'
              +' NSTOTNOTA,NSBASEN,NSICMSN,(NSBASERP+NSBASERI+NSBASERN) AS BASERET,'
              +' (NSICMSRP+NSICMSRN+NSICMSRI) AS ICMSRET,NSTOTISEN,NSTOTNOR, '
              +' NSTOTOUT,NSSTATUS,NSCHAVEP,NSLOTSEQ_CP,NSORDEMP,NSCODEMP,CRAZAO,CUF '
              +' from CADNS '+iif(la_tabelas='','',',')+la_tabelas
                   +'       '+la_Join
                   +'       where  '+la_empresas+iif(la_Empresas='','',' and ')
                   +'      '+la_instrucao+iif(la_instrucao='','',' and ')
                   +' NSSTATUS<>99 and NSNUMERO>0');

if Trim(MDT1.Text)<>'/  /' then
   Qr_NFS.SQL.Add(fFormatdatetimeParaConsulta('NSDTEMIS',true, StrtoDate(MDT1.Text)));
if Trim(MDT2.Text)<>'/  /' then
   Qr_NFS.SQL.Add(fFormatdatetimeParaConsulta('NSDTEMIS',false, StrtoDate(MDT2.Text)));

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then Qr_NFS.SQL.Add(' and NSCODCLI '+mcinst2);

mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then Qr_NFS.SQL.Add(' and CUF '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then Qr_NFS.SQL.Add(' and P1CODVEN '+mcinst2);


if rg_ecf.ItemIndex=1 then
   Qr_NFS.SQL.Add(' and NSNUMCUP>0')
else if rg_ecf.ItemIndex=2 then
   Qr_NFS.SQL.Add(' and NSNUMCUP=0');



if RG_NFCANC.ItemIndex =2 then // CANCELADAS
   Qr_NFS.SQL.Add(' and (NSSTATUS=9 or NSNFCE_SITUACAO=9) ')
else if RG_NFCANC.ItemIndex=1 then // NORMAIS
   Qr_NFS.SQL.Add(' and (NSSTATUS=0 and NSNFCE_SITUACAO=0)')
else if RG_NFCANC.ItemIndex=3 then // INUTILIZADA
   Qr_NFS.SQL.Add(' and (NSSTATUS=8 or NSNFCE_SITUACAO=8)')
else if RG_NFCANC.ItemIndex=4 then // DENEGADA
   Qr_NFS.SQL.Add(' and (NSSTATUS=7 or NSNFCE_SITUACAO=7)');



if rg_notas.ItemIndex=1 then
   Qr_NFS.SQL.Add(' and nscfo1<5000 ')
else if rg_notas.ItemIndex=2 then
   Qr_NFS.SQL.Add(' and nscfo1>4999 ');

if RG_LOCAL_OPERACAO.ItemIndex=1 then
   Qr_NFS.SQL.Add(' and (substr(nscfo1,1,1)=1 or substr(nscfo1,1,1)=5)' )
else if RG_LOCAL_OPERACAO.ItemIndex=2 then
   Qr_NFS.SQL.Add(' and (substr(nscfo1,1,1)=2 or substr(nscfo1,1,1)=6)' )
else if RG_LOCAL_OPERACAO.ItemIndex=3 then
   Qr_NFS.SQL.Add(' and (substr(nscfo1,1,1)=3 or substr(nscfo1,1,1)=7)' );

if cb_protocolo.Text=mnfe_comprotocolo then
   qr_nfs.sql.Add(' and length(nvl(nsnfe_numprot,'+QuotedStr(' ')+'))>2) ')
else if cb_protocolo.Text=mnfe_semprotocolo then
   qr_nfs.sql.Add(' and length(nvl(nsnfe_numprot,'+QuotedStr(' ')+'))<2) ');



if RG_IE.ItemIndex=1 then
  begin
  Qr_NFS.SQl.Add(' and length(CIE)<=5 ');
  end
else if RG_IE.ItemIndex=0 then
  begin
  Qr_NFS.SQl.Add(' and length(CIE)>5 ');
  end;


Qr_NFS.SQL.Add(' Order by NSDTEMIS,NSNUMERO ');
Qr_NFS.SQL.Add(' ) ');

try
   Qr_NFS.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(Qr_NFS,285,'SGE '+e.message,'CADVER');
   exit;
   end;
   end;
if Qr_NFS.Eof then
   begin
   result:=false;
   FMensagem('Nada ha ser impresso!',0,['0'],0);
   exit;
   end;

end;


procedure TFrm_RelNFS.bbImprimirClick(Sender: TObject);
begin
if not fAbrirBanco then
   exit;
mlin:=0;
mpag:=0;
mtotnf :=0; mtotbc:=0; mtoticms:=0; mtotbcr:=0; mtoticmsr:=0;mtotise:=0;mtotout:=0;
mtotdnf:=0; mtotdbc:=0;mtotdicms:=0;mtotdbcr:=0;mtotdicmsr:=0;mtotdise:=0;mtotdout:=0;
mqtdcli:=valint(QTDCLI.Text);
mqtdpro:=valint(QTDPRO.Text);
mtotcli:=0;
mtotpro:=0;
mQtdReg:=0;
mQtdReg_Canc:=0;

testeform := TFrm_RelNFS(FindGlobalComponent('form_impres_relnfs'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_relnfs);

form_impres_relnfs.fimpresajustaimp(3,160,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mdataant:=Qr_NFSNSDTEMIS.Value;

While not Qr_NFS.Eof do
   begin
   if mlin=0 then
      frelnfscab(0);
   if Qr_NFSNSDTEMIS.Value<>mdataant then
      frelnfstot(0);
   mlin:=mlin+1;
   mQtdReg:=mQtdReg+1;
   form_impres_relnfs.RDprint1.ImpF(mlin,01,FormatFloat('000000', Qr_NFSNSNUMERO.Value)
                           +' '+Insere2(Qr_NFSNSSERIE.Value,' ',3)
                           +' '+FormatDateTime(fdt2, Qr_NFSNSDTEMIS.Value)
                           +' '+FormatFloat('000000',Qr_NFSNSCODCLI.Value)
                           +'-'+insere2(Qr_NFSCRAZAO.Value,' ',30)
                           +' '+Insere2(Qr_NFSCUF.Value,' ',2)
                           +iif(Qr_NFSNSSTATUS.Value=9,' Nota Fiscal Cancelada',
                           ' '+insere2( copy(Qr_NFSNSCFO1.Value,1,1)+'.'+copy(Qr_NFSNSCFO1.Value,2,3), ' ',5)
                           +' '+insere2( copy(Qr_NFSNSCFO2.Value,1,1)+'.'+copy(Qr_NFSNSCFO2.Value,2,3), ' ',5)
                           +insere(FormatFloat(mcasas, Qr_NFSNSTOTNOTA.Value),' ',14)
                           +insere(FormatFloat(mcasas, Qr_NFSNSBASEN.Value),' ',12)
                           +insere(FormatFloat(mcasas, Qr_NFSNSICMSN.Value),' ',12)
                           +insere(FormatFloat(mcasas, Qr_NFSBASERET.Value),' ',13)
                           +insere(FormatFloat(mcasas, Qr_NFSICMSRET.Value),' ',12)
                           +insere(FormatFloat(mcasas, Qr_NFSNSTOTISEN.Value),' ',11)
                           +insere(FormatFloat(mcasas, Qr_NFSoutras.Value),' ',12)),M20ccp);
   if Qr_NFSNSSTATUS.Value<>9 then
      begin
      mtotnf    :=mtotnf    +Qr_NFSNSTOTNOTA.Value;
      mtotbc    :=mtotbc    +Qr_NFSNSBASEN.Value;
      mtoticms  :=mtoticms  +Qr_NFSNSICMSN.Value;
      mtotbcr   :=mtotbcr   +Qr_NFSBASERET.Value;
      mtoticmsr :=mtoticmsr +Qr_NFSICMSRET.Value;
      mtotise   :=mtotise   +Qr_NFSNSTOTISEN.Value;
      mtotout   :=mtotout   +Qr_NFSoutras.Value;

      mtotdnf   :=mtotdnf   +Qr_NFSNSTOTNOTA.Value;
      mtotdbc   :=mtotdbc   +Qr_NFSNSBASEN.Value;
      mtotdicms :=mtotdicms +Qr_NFSNSICMSN.Value;
      mtotdbcr  :=mtotdbcr  +Qr_NFSBASERET.Value;
      mtotdicmsr:=mtotdicmsr+Qr_NFSICMSRET.Value;
      mtotdise  :=mtotdise  +Qr_NFSNSTOTISEN.Value;
      mtotdout  :=mtotdout  +Qr_NFSoutras.Value;
      end
   else
      mQtdReg_Canc:=mQtdReg_Canc+1;
   if CB_Ana.Checked then
      frelnfsimpDet(0);
   Qr_NFS.Next;
   if Qr_NFS.Eof then
      begin
      frelnfstot(0);
      frelnfstot(1);
      end
   else if mlin>57 then
      begin
      mlin:=mlin+1;
      form_impres_relnfs.RDprint1.ImpF(mlin,01,insere2('Continua...','.',80),mnormal);
      form_impres_relnfs.RDprint1.Novapagina;
      mlin:=0;
      end;
   end;
if CB_CLIENTES.Checked then
   begin
   Qr_Compras_Cli.Close;
   Qr_Compras_Cli.SQL.Clear;
   Qr_Compras_Cli.SQL.Add('Select CRAZAO AS NOME, CCNPJ as CNPJ ,P1CODCLI AS CODIGO, '
                         +'       sum(p1totall) as total, '
                         +'       sum(p1semcom) as semcom, '
                         +'       sum(P1VALFRE) as frete,'
                         +'       sum(P1ICMSR) as ICMSR from CADP01,CADCLI '
                         +'       where '
                         +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntToStr(codemp)+' and ')
                         +' P1STATUS<>9 '
                         +' and P1EMIDOC=1 '
                         +' and P1TIPO<>0 and P1TIPO<>8 '
                         +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=P1CODEMP ')
                         +' and CCODCLI=P1CODCLI ');
   if Trim(MDT1.Text)<>'/  /' then
      Qr_Compras_Cli.SQL.Add(' and P1DATDOC>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text) )+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      Qr_Compras_Cli.SQL.Add(' and P1DATDOC<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text) )+chr(39));
   Qr_Compras_Cli.SQL.Add(' Group by CRAZAO,P1CODCLI,CCNPJ '
                         +iif(pbanco=0,' order by TOTAL desc ',''));
   Qr_Compras_Cli.Open;
   if not Qr_Compras_Cli.Eof then
      begin
      mlin:=0;
      form_impres_relnfs.RDprint1.Novapagina;
      end;

   While not Qr_Compras_Cli.Eof do
      begin
      mtotcli:=mtotcli+1;
      if mqtdcli>0 then
         begin
         if mtotcli>mqtdcli then
            begin
            mlin:=mlin+1;
            form_impres_relnfs.RDprint1.ImpF(mlin,01,insere2('Fim.','.',80),mnormal);
            mlin:=mlin+1;
            form_impres_relnfs.RDprint1.impf(mlin,01,'Relatorio Emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time),m20ccp);
            break;
            end;
         end;
      if mlin=0 then
         begin
         mpag:=mpag+1;
         form_impres_relnfs.RDprint1.ImpF(01,01,insere2(DM1.Tb_EmpRAZAO.Value,' ',60)+' Data: '+FormatDateTime(fdt2, Date),mnormal);
         form_impres_relnfs.RDprint1.ImpF(02,01,insere2('Relacao de clientes com maiores compras.' ,' ',60)+' Pagina: '+FormatFloat('0000',mpag),mnormal);
         form_impres_relnfs.RDprint1.ImpF(03,01,Centra(fperiodo(0,MDT1.Text,MDT2.Text),' ',80),mnormal);
         form_impres_relnfs.RDprint1.ImpF(04,01,insere2('-','-',80),mnormal);
         form_impres_relnfs.RDprint1.ImpF(05,01,'Codig Cliente                                  C.N.P.J                     Valor',mnormal);
         mlin:=5;
         end;
      mlin:=mlin+1;
      form_impres_relnfs.RDprint1.ImpF(mlin,01,insere(FormatFloat('00000',Qr_Compras_CliCODIGO.Value),' ',5)
                              +' '+insere2(Qr_Compras_CliNOME.Value,' ',40)
                              +' '+FormatFloat('00"."000"."000/0000-00',Qr_Compras_CliCNPJ.Value)
                              +insere(FormatFloat(mcasas, Qr_Compras_CliTOTAL.Value),' ',15),mnormal);
      Qr_Compras_Cli.Next;
      if Qr_Compras_Cli.Eof then
         begin
         mlin:=mlin+1;
         form_impres_relnfs.RDprint1.ImpF(mlin,01,insere2('Fim.','-',80),mnormal);
         mlin:=mlin+1;
         form_impres_relnfs.RDprint1.impf(mlin,01,'Relatorio Emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time),m20ccp);
         end
      else if mlin>58 then
         begin
         mlin:=mlin+1;
         form_impres_relnfs.RDprint1.ImpF(mlin,01,insere2('Continua...','-',80),mnormal);
         form_impres_relnfs.RDprint1.Novapagina;
         mlin:=0;
         end
      end;
   end;

// produtos mais vendidos
if CB_PRODUTOS.Checked then
   begin
   Qr_Vendas_Pro.Close;
   Qr_Vendas_Pro.SQL.Clear;
   Qr_Vendas_Pro.SQL.Add('Select PDNOME, P2CODPRO,PDCLAS,sum(P2TOTLIQ)  as total '
                        +'        from CADP01,CADP02,CADPRO '
                        +'        where '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntToStr(codemp)+' and P2CODEMP=P1CODEMP and ')
                        +' P2LOTSEQ=P1LOTSEQ '
                        +' and P2CHAVE=P1CHAVE '
                        +' and P2ORDEM=P1ORDEM '
                        +' and P1STATUS<>9 '
                        +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' and PDCODEMP=P2CODEMP ')
                        +' and PDCODPRO=P2CODPRO ');
   if Trim(MDT1.Text)<>'/  /' then
      Qr_Vendas_Pro.SQL.Add(' and P1DATDOC>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text) )+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      Qr_Vendas_Pro.SQL.Add(' and P1DATDOC<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text) )+chr(39));
   Qr_Vendas_Pro.SQL.Add(' group by  PDNOME, P2CODPRO,PDCLAS'
                        +iif(pbanco=0,' order by TOTAL desc ',''));
   Qr_Vendas_Pro.Open;
   if not Qr_Vendas_Pro.Eof then
      begin
      mlin:=0;
      form_impres_relnfs.RDprint1.Novapagina;
      end;

   While not Qr_Vendas_Pro.Eof do
      begin
      mtotpro:=mtotpro+1;
      if mqtdpro>0 then
         begin
         if mtotpro>mqtdpro then
            begin
            mlin:=mlin+1;
            form_impres_relnfs.RDprint1.ImpF(mlin,01,insere2('Fim.','.',80),mnormal);
            mlin:=mlin+1;
            form_impres_relnfs.RDprint1.impf(mlin,01,'Relatorio Emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time),m20ccp);
            break;
            end;
         end;
      if mlin=0 then
         begin
         mpag:=mpag+1;
         form_impres_relnfs.RDprint1.ImpF(01,01,insere2(DM1.Tb_EmpRAZAO.Value,' ',60)+' Data: '+FormatDateTime(fdt2, Date),mnormal);
         form_impres_relnfs.RDprint1.ImpF(02,01,insere2('Relacao de produtos mais vendidos.', ' ',60)+' Pagina: '+FormatFloat('0000',mpag),mnormal);
         form_impres_relnfs.RDprint1.ImpF(03,01,Centra(fperiodo(0,MDT1.Text,MDT2.Text),' ',80),mnormal);
         form_impres_relnfs.RDprint1.ImpF(04,01,insere2('-','-',80),mnormal);
         form_impres_relnfs.RDprint1.ImpF(05,01,'Produto                                         Classificacao Fiscal       Valor',mnormal);
         mlin:=5;
         end;
      mlin:=mlin+1;
      form_impres_relnfs.RDprint1.ImpF(mlin,01,insere(FormatFloat('000000',Qr_Vendas_ProP2CODPRO.Value),' ',6)
                              +'-'+insere2(Qr_Vendas_ProPDNOME.Value,' ',40)
                              +' '+insere(Qr_Vendas_ProPDCLAS.Value,' ',20)
                              +insere(FormatFloat(mcasas, Qr_Vendas_ProTOTAL.Value),' ',12),mnormal);

      Qr_Vendas_Pro.Next;
      if Qr_Vendas_Pro.Eof then
         begin


         mlin:=mlin+1;
         form_impres_relnfs.RDprint1.ImpF(mlin,01,insere2('Fim.','-',80),mnormal);
         mlin:=mlin+1;
         form_impres_relnfs.RDprint1.impf(mlin,01,'Relatorio Emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time),m20ccp);
         end
      else if mlin>58 then
         begin
         mlin:=mlin+1;
         form_impres_relnfs.RDprint1.ImpF(mlin,01,insere2('Continua...','-',80),mnormal);
         form_impres_relnfs.RDprint1.Novapagina;
         mlin:=0;
         end
      end;
   end;

if form_impres_relnfs.RDprint1.Setup then form_impres_relnfs.RDprint1.Fechar;
form_impres_relnfs.free;
form_impres_relnfs:=nil;

end;

procedure TFrm_RelNFS.MDT1Exit(Sender: TObject);
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

procedure TFrm_RelNFS.MDT2Exit(Sender: TObject);
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

function TFrm_RelNFS.frelnfscab(ptipo: Integer): Boolean;
begin
mlin:=1;
mpag:=mpag+1;
form_impres_relnfs.fImprimirCabecalho(136,'Relatorio de Notas Fiscais. '+fperiodo(0,MDT1.Text,MDT2.Text)+'.');
mlin:=mlin+1;
form_impres_relnfs.Rdprint1.Impf(mlin,01,insere2('-','-',80),mnormal);
if lbx_codven.Count>0 then
   FImprimeTitulo('Vendedor',lbx_codven,OMITIR_VEN);
if lbx_codcli.Count>0 then
   FImprimeTitulo('Cliente',lbx_codcli,OMITIR_CLI);
if lbx_coduf.Count>0 then
   FImprimeTitulo('Estado',lbx_coduf,OMITIR_UF);


if cb_protocolo.Text=mnfe_comprotocolo then
   begin
   mlin:=mlin+1;
   form_impres_relnfs.RDprint1.ImpF(mlin,01,centra('Somente Notas com Protocolo de Uso',' ',160),m20ccp);
   end
else if cb_protocolo.Text=mnfe_semprotocolo then
   begin
   mlin:=mlin+1;
   form_impres_relnfs.RDprint1.ImpF(mlin,01,centra('Somente Notas Sem Protocolo de Uso',' ',160),m20ccp);
   end;

mlin:=mlin+1;
form_impres_relnfs.RDprint1.ImpF(mlin,01,'Numero Se-   Data de  Sacado                                 UF CFOP  CFOP     Total da      Base de    Valor do    Base Icms    Valor do    Isentas      Outras',m20ccp);
mlin:=mlin+1;
form_impres_relnfs.RDprint1.ImpF(mlin,01,'       rie   Emissao                                             1     2           Nota   Calc. Icms        Icms    Subs.Trib  Icms Subst',m20ccp);
result:=true;
end;

function TFrm_RelNFS.frelnfstot(ptipo: Integer): Boolean;
begin
mlin:=mlin+1;
if ptipo=0 then
   begin
   form_impres_relnfs.RDprint1.ImpF(mlin,01,Insere2('- Totalizacao do dia '+FormatDateTime(fdt2, mdataant),' ',74)
                           +insere(FormatFloat(mcasas, mtotdnf),' ',14)
                           +insere(FormatFloat(mcasas, mtotdbc),' ',12)
                           +insere(FormatFloat(mcasas, mtotdicms),' ',12)
                           +insere(FormatFloat(mcasas, mtotdbcr),' ',13)
                           +insere(FormatFloat(mcasas, mtotdicmsr),' ',12)
                           +insere(FormatFloat(mcasas, mtotdise),' ',11)
                           +insere(FormatFloat(mcasas, mtotdout),' ',12),M20ccp);


   mtotdnf   :=0;
   mtotdbc   :=0;
   mtotdicms :=0;
   mtotdbcr  :=0;
   mtotdicmsr:=0;
   mtotdise  :=0;
   mtotdout  :=0;
   if not Qr_NFS.Eof then
      mdataant:=Qr_NFSNSDTEMIS.Value;
   end
else if ptipo=1 then
   begin
   form_impres_relnfs.RDprint1.ImpF(mlin,01,Insere2('- Totalizacao dos Valores',' ',74)
                           +insere(FormatFloat(mcasas, mtotnf),' ',14)
                           +insere(FormatFloat(mcasas, mtotbc),' ',12)
                           +insere(FormatFloat(mcasas, mtoticms),' ',12)
                           +insere(FormatFloat(mcasas, mtotbcr),' ',13)
                           +insere(FormatFloat(mcasas, mtoticmsr),' ',12)
                           +insere(FormatFloat(mcasas, mtotise),' ',11)
                           +insere(FormatFloat(mcasas, mtotout),' ',12),M20ccp);
   mlin:=mlin+1;
   form_impres_relnfs.RDprint1.ImpF(mlin,01,'- Foram Impressos '+IntToStr(mQtdReg)+' Notas Fiscais '
   +iif(mQtdReg_Canc>0,' Sendo '+IntToStr(mQtdReg_Canc)+' canceladas',''),m20ccp);


   mlin:=mlin+1;
   form_impres_relnfs.RDprint1.ImpF(mlin,01,
   insere2('Recebido por:____________________________________________________',' ',80)
   +insere('Conferido por:____________________________________________________',' ',80),m20ccp);


   end;
result:=true;
end;

function TFrm_RelNFS.frelnfsimpDet(ptipo: Integer): Boolean;
begin
Qr_PedMer.Close;
Qr_PedMer.SQL.Clear;
Qr_PedMer.SQL.Add('Select P2CHAVE,P2ORDEM,P2CODPRO, '
                 +' P2PRECO,P2QTD,P2BASEN,P2ICMSN, '
                 +' P2BASER,P2ICMSR,P2TOTDES,P2TOTLIQ,PDNOME,PDMARCA,PDUND '
                 +' from CADP02,CADPRO where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+Qr_NFSNSCODEMP.AsString+' and ')
                 +' P2LOTSEQ   =0'+Qr_NFSNSLOTSEQ_CP.AsString
                 +' and P2CHAVE=0'+Qr_NFSNSCHAVEP.AsString
                 +' and P2ORDEM=0'+Qr_NFSNSORDEMP.AsString
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=0'+Qr_NFSNSCODEMP.AsString)
                 +' and PDCODPRO=P2CODPRO');
Qr_PedMer.open;
if not Qr_PedMer.Eof then
   begin
   mlin:=mlin+1;
   form_impres_relnfs.RDprint1.ImpF(mlin,01,'Codigo            Quantidade UND Descricao dos Produtos                   Preco Unitario    Valor Total  Tot.Descontos  Valor Liquido',mreduz);
   While not Qr_PedMer.Eof do
      begin
      mlin:=mlin+1;
      if mlin>58 then
         begin
         form_impres_relnfs.RDprint1.ImpF(mlin,01,insere2('Continua...','.',80),mnormal);
         form_impres_relnfs.RDprint1.Novapagina;
         frelnfscab(0);
         mlin:=mlin+1;
         end;

      form_impres_relnfs.RDprint1.impf(mlin,01,insere(Qr_PedMerP2CODPRO.AsString,' ',13)
                              +' '+insere(FormatFloat(mcasqtd, Qr_PedMerP2QTD.Value),' ',14)
                              +' '+insere2(Qr_PedMerPDUND.Value,' ',3)
                              +' '+insere2(Qr_PedMerPDNOME.Value,' ',40)
                              +insere(FormatFloat(mcasaspu, Qr_PedMerP2PRECO.Value),' ',15)
                              +insere(FormatFloat(mcasaspu, (Qr_PedMerP2PRECO.Value*Qr_PedMerP2QTD.Value)),' ',15)
                              +insere(FormatFloat(mcasaspu, Qr_PedMerP2TOTDES.Value),' ',15)
                              +insere(FormatFloat(mcasaspu, Qr_PedMerP2TOTLIQ.Value),' ',15),mreduz);
      Qr_PedMer.Next;
      end;
   end;

if ValInt(copy(mpseg,7,2))=1 then  // Prestação de servicos
   begin
   Qr_PedSer.Close;
   Qr_PedSer.SQL.Clear;
   Qr_PedSer.SQL.Add('Select P2SCHAVE,P2SORDEM,P2SCODPRO, '
                    +' P2SPRECO,P2SQTD,P2SBCISSQN,P2SVISSQN, '
                    +' P2STOTDES,PDNOME,PDMARCA,PDUND '
                    +' from CADP02S,CADPRO where '
                    +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2SCODEMP=0'+Qr_NFSNSCODEMP.AsString+' and ')
                    +' P2SLOTSEQ   =0'+Qr_NFSNSLOTSEQ_CP.AsString
                    +' and P2SCHAVE=0'+Qr_NFSNSCHAVEP.AsString
                    +' and P2SORDEM=0'+Qr_NFSNSORDEMP.AsString
                    +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=0'+Qr_NFSNSCODEMP.AsString)
                    +' and PDCODPRO=P2SCODPRO');
   Qr_PedSer.Open;
   end;


if not Qr_PedSer.Eof then
   begin
   mlin:=mlin+1;
   form_impres_relnfs.RDprint1.ImpF(mlin,01,'Codigo            Quantidade UND Descricao dos Serviços                   Preco Unitario    Valor Total  Tot.Descontos  Valor Liquido',mreduz);
   While not Qr_PedSer.Eof do
      begin
      mlin:=mlin+1;
      if mlin>58 then
         begin
         form_impres_relnfs.RDprint1.ImpF(mlin,01,insere2('Continua...','.',80),mnormal);
         form_impres_relnfs.RDprint1.Novapagina;
         frelnfscab(0);
         mlin:=mlin+1;
         end;

      form_impres_relnfs.RDprint1.impf(mlin,01,insere(Qr_PedSerP2SCODPRO.AsString,' ',13)
                              +' '+insere(FormatFloat(mcasqtd, Qr_PedSerP2SQTD.Value),' ',14)
                              +' '+insere2(Qr_PedSerPDUND.Value,' ',3)
                              +' '+insere2(Qr_PedSerPDNOME.Value,' ',40)
                              +insere(FormatFloat(mcasaspu, Qr_PedSerP2SPRECO.Value),' ',15)
                              +insere(FormatFloat(mcasaspu, (Qr_PedSerP2SPRECO.Value*Qr_PedSerP2SQTD.Value)),' ',15)
                              +insere(FormatFloat(mcasaspu, Qr_PedSerP2STOTDES.Value),' ',15)
                              +insere(FormatFloat(mcasaspu, (Qr_PedSerP2SPRECO.Value*Qr_PedSerP2SQTD.Value)-Qr_PedSerP2STOTDES.Value),' ',15),mreduz);
      Qr_PedSer.Next;
      end;
   end;


   {
Codigo            Quantidade UND Descricao dos Produtos                   Preco Unitario    Valor Total  Tot.Descontos  Valor Liquido
1234567890123 12345678901234 UND 1234567890123456789012345678901234567890 ZZZ.ZZZ.ZZ9,99 ZZZ.ZZZ.ZZ9,99 ZZZ.ZZZ.ZZ9,99 ZZZ.ZZZ.ZZ9,99


Codigo            Quantidade UND Descricao dos Produtos                   Preco Unitario    Valor Total  Tot.Descontos  Valor Liquido
1234567890123 12345678901234 UND 1234567890123456789012345678901234567890 ZZZ.ZZZ.ZZ9,99 ZZZ.ZZZ.ZZ9,99 ZZZ.ZZZ.ZZ9,99 ZZZ.ZZZ.ZZ9,99
}
result:=true;
end;

procedure TFrm_RelNFS.QTDCLIExit(Sender: TObject);
begin
QTDCLI.Text:=fdeixanum(QTDCLI.Text);

end;

procedure TFrm_RelNFS.QTDPROExit(Sender: TObject);
begin
QTDPRO.Text:=fdeixanum(QTDPRO.Text);

end;

procedure TFrm_RelNFS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_RelNFS.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not flcadcli(1,0,CODCLI.Text) then
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.Text := '';
      CODCLI.SetFocus;
      end
   else
      Lbx_codcli.Items.Add(FormatFloat('0000000',DM1.Tb_CliCCODCLI.Value)
                                    +' - '+DM1.Tb_CliCRAZAO.Value);
      codcli.text := '';
      CODCLI.SetFocus;
   end;

end;

procedure TFrm_RelNFS.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_CABC',key);
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_RelNFS.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if Lbx_codcli.ItemIndex>=0 then
      Lbx_codcli.Items.Delete(Lbx_codcli.ItemIndex);

end;

procedure TFrm_RelNFS.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if not flcadven(1,0,CODVEN.Text) then
      begin
      fmensagem('Vendedor nao Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      BEGIN
      Lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_VenVCODVEN.ASSTRING))
                                    +' - '+DM1.Tb_VenVNOME.Value);

      codven.text := '';
      if CODVEN.Enabled then
         codven.SetFocus;
      end;
   end;

end;

procedure TFrm_RelNFS.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_RelNFS.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text :=fChamaVen(0,'frm_CABC',Key);
   CODVENExit(Self);
   if CODVEN.Enabled then
      codven.SetFocus;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_RelNFS.CODUFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=114 then
   begin
   mcinst2:=fChamaUF(0,'frm_cabc','');
   if trim(mcinst2)<>'' then
      begin
      lbx_coduf.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'-'+DM1.Tb_UFPNOM.AsString);
      CODUFExit(self);
      coduf.SetFocus;
      end;
   end;

end;

procedure TFrm_RelNFS.CODUFExit(Sender: TObject);
begin
//CODUF.Text:=fdeixanum2(CODUF.Text);
if Trim(CODUF.Text)<>'' then
   begin
   if not flqr1('PNOM','P','CADUF','C','PUF',Trim(CODUF.Text)) then
      begin
      fmensagem('Estado não cadastrado!',0,['0'],0);
      CODUF.SetFocus;
      end
   else
      begin
      lbx_coduf.Items.Add(CODUF.Text
                                    +'-'+DM1.Query1.Fields[0].AsString);
      CODUF.text := '';
      CODUF.SetFocus;
      end;
   end;


end;

procedure TFrm_RelNFS.lbx_codufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);

end;

function tFrm_RelNFS.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      mlin:=mlin+1;
      form_impres_relnfs.RDprint1.ImpF(mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',80),mneg);
      end;
   end;
result:=true;

end;

procedure TFrm_RelNFS.Qr_NFSCalcFields(DataSet: TDataSet);
begin
if Qr_NFSNSTOTNOR.AsFloat=0 then
   Qr_NFSoutras.AsFloat:=0
else
   begin
   Qr_NFSoutras.AsFloat:=Qr_NFSNSTOTNOR.AsFloat-Qr_NFSNSBASEN.AsFloat;
   if Qr_NFSoutras.AsFloat<0 then
      Qr_NFSoutras.Value:=0;
   end;
end;

procedure TFrm_RelNFS.FormCreate(Sender: TObject);
begin
if codusr<>1111 then
   bbComparar.Visible:=false;

if ValInt(FormatDateTime('dd', pdatasis))>27 then
   MDT1.Text:=FormatDateTime(fdt2, pdatasis)
else
   MDT1.Text:=FormatDateTime(fdt2, fdatafinal(1,pdatasis-28));
MDT1.Text:=FormatDateTime(fdt2, StrtodAte('01/'+FormatDatetime('mm/yyyy',StrtoDate(MDT1.text))));
MDT2.Text   :=FormatDatetime(fdt2, fultdiames(StrtoDate(MDT1.Text)));
   
end;

procedure TFrm_RelNFS.bbCompararClick(Sender: TObject);
var
x_grid: Integer;
begin
if Opd1.Execute then
   begin
   Application.CreateForm(TFrm_RelNFS_Comparar, Frm_RelNFS_Comparar);
   if Frm_RelNFS_Comparar.fLerPlanilha(Opd1.FileName) then
      begin
      fAbrirBanco;
      Qr_NFS.First;
      if not Frm_RelNFS_Comparar.mem_nfs.Active then
         begin
         Frm_RelNFS_Comparar.mem_nfs.EmptyTable;
         Frm_RelNFS_Comparar.mem_nfs.Close;
         end;
      Frm_RelNFS_Comparar.mem_nfs.Open;
      While not Qr_NFS.Eof do
         begin
         if Frm_RelNFS_Comparar.mem_nfs.locate('ger_numeronf',Qr_NFSNSNUMERO.AsInteger,[]) then
            Frm_RelNFS_Comparar.mem_nfs.Edit
         else
            begin
            Frm_RelNFS_Comparar.mem_nfs.Append;
            Frm_RelNFS_Comparar.mem_nfsger_numeronf.Value:=Qr_NFSNSNUMERO.AsInteger;
            Frm_RelNFS_Comparar.mem_nfsns_valor.Value    :=0;
            Frm_RelNFS_Comparar.mem_nfspla_valor.Value   :=0;

            end;
         Frm_RelNFS_Comparar.mem_nfsns_valor.Value :=Frm_RelNFS_Comparar.mem_nfsns_valor.Value+Qr_NFSNSTOTNOTA.AsFloat;
         Frm_RelNFS_Comparar.mem_nfsger_difer.Value :=Frm_RelNFS_Comparar.mem_nfsns_valor.AsFloat
                                                     -Frm_RelNFS_Comparar.mem_nfspla_valor.AsFloat;
         Frm_RelNFS_Comparar.mem_nfs.Post;
         Qr_NFS.Next;
         end;
      for x_grid:=0 to Frm_RelNFS_Comparar.StringGrid1.RowCount do
         begin
         if fsonumero(Frm_RelNFS_Comparar.StringGrid1.Cells[0,x_grid])>0 then
            begin
            if Frm_RelNFS_Comparar.mem_nfs.locate('ger_numeronf',fsonumero(Frm_RelNFS_Comparar.StringGrid1.Cells[0,x_grid]),[]) then
               Frm_RelNFS_Comparar.mem_nfs.Edit
            else
               begin
               Frm_RelNFS_Comparar.mem_nfs.Append;
               Frm_RelNFS_Comparar.mem_nfsger_numeronf.Value:=valint(Frm_RelNFS_Comparar.StringGrid1.Cells[0,x_grid]);
               Frm_RelNFS_Comparar.mem_nfsns_valor.Value    :=0;
               Frm_RelNFS_Comparar.mem_nfspla_valor.Value   :=0;
               end;
            Frm_RelNFS_Comparar.mem_nfspla_valor.Value:=Frm_RelNFS_Comparar.mem_nfspla_valor.Value
                                                    +valfloat(Frm_RelNFS_Comparar.StringGrid1.Cells[1,x_grid]);
            Frm_RelNFS_Comparar.mem_nfsger_difer.Value :=Frm_RelNFS_Comparar.mem_nfsns_valor.AsFloat
                                                     -Frm_RelNFS_Comparar.mem_nfspla_valor.AsFloat;
            Frm_RelNFS_Comparar.mem_nfs.Post;
            end;
         end;
      Frm_RelNFS_Comparar.ShowModal;
      end;
   freeandnil(Frm_RelNFS_Comparar);
   end;
end;

end.

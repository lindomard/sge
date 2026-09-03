unit s_Cancelar_Fechamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM1,db,dbtables,func, StdCtrls, Mask, DBCtrls, Grids, DBGrids,
  Buttons,S_VerPro,lerarq,S_DM2;

type
  TFrm_Cancelar_Fechamento = class(TForm)
    GroupBox2: TGroupBox;
    bbSair: TBitBtn;
    bbEmitirCupom: TBitBtn;
    bbReemitir: TBitBtn;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    gb_formas: TGroupBox;
    DBGrid2: TDBGrid;
    Src_Ped: TDataSource;
    GroupBox4: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    CB_PESQ: TComboBox;
    CONTEUDO: TEdit;
    bbatucons: TBitBtn;
    procedure bbSairClick(Sender: TObject);
    procedure bbReemitirClick(Sender: TObject);
    procedure bbEmitirCupomClick(Sender: TObject);
    procedure Src_PedDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure bbatuconsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
Function FReecupomAjustaEstoque(ptipo: Integer; pcodemp,plotseq,pchave,pordem: Real ): Boolean;
function fReecupomExecutaTrocaEmpresa(pCodemp,pLotSeq,pChave,pOrdem: Real): Boolean;
function fReecupomCancelaEmpresAnterior(pCodemp,pLotSeq,pChave,pOrdem: Real): Boolean;

var
  Frm_Cancelar_Fechamento: TFrm_Cancelar_Fechamento;
  mCodEmp: Real;
  mLotseq: Real;
  mChave: Real;
  mOrdem: Real;


implementation

uses S_Fpgto, S_Receb, S_DadCli, S_DadChq;

{$R *.dfm}

procedure TFrm_Cancelar_Fechamento.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Cancelar_Fechamento.bbReemitirClick(Sender: TObject);
begin
if DM2.Tb_Ped01P1CHAVE.isNull then
   begin
   verteclado(0);
   fmensagem('Favor Selecionar uma Chave válida!',0,['0'],0);
   exit;
   end;
//if not flcadp01(9,DM2.Tb_Ped01P1CODEMP.AsInteger,DM2.Tb_Ped01P1LOTSEQ.AsInteger,DM2.Tb_Ped01P1CHAVE.AsString,DM2.Tb_Ped01P1ORDEM.AsString) then
if not flcadp01(9,DM2.Tb_Ped01P1CODEMP.AsInteger,DM2.Tb_Ped01P1LOTSEQ.AsInteger,DM2.Tb_Ped01P1CHAVE.AsString,'') then
   begin
   verteclado(0);
   fmensagem('Erro ao ler o arquivo de Pedido!',0,['0'],0);
   exit;
   end;

DM2.Tb_Ped02.Close;
DM2.Tb_ped02.Sql.Clear;
DM2.Tb_Ped02.SQL.add('Select P2CODEMP,P2LOTSEQ,P2CHAVE,P2ORDEM, '
                    +'       P2CODPRO,P2ITEM,P2QTD,P2PRECO, '
                    +'       P2SIT,P2BASEN,P2ICMSN,P2TOTDES,P2ALIQ,P2CFO, '
                    +'       P2LOTE,P2DTVCTO,P2TOTLIQ,PDNOME,PDUND,PDFRACAO,PDMARCA,PDCODBAR, '
                    +'       P2DESC1, P2DESC2,P2VALDES '
                    +'  from CADP02,CADPRO where '
                    +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+DM2.Tb_Ped01P1CODEMP.AsString+' and ')
                    +fla_EmpBaixaAlta(0,'CADPRO',' ', DM2.Tb_Ped01P1CODEMP.asinteger,'PDCODEMP','and ')
                    +' PDCODPRO=P2CODPRO'
                    +' and P2LOTSEQ=0'+DM2.Tb_Ped01P1LOTSEQ.AsString
                    +' and P2CHAVE=0'+DM2.Tb_Ped01P1CHAVE.AsString);
DM2.Tb_Ped02.Open;

Application.CreateForm(TFrm_VerPro, Frm_VerPro);

Frm_VerPro.ShowModal;
Frm_VerPro.Free;
Frm_VerPro:=nil;

end;

procedure TFrm_Cancelar_Fechamento.bbEmitirCupomClick(Sender: TObject);
var
pmens: String;
query_ldr: TQuery;
query_exe: TQuery;
begin
bbEmitirCupom.Enabled:=false;
if DM2.Tb_Ped01P1CHAVE.isNull then
   begin
   verteclado(0);
   fmensagem('Favor Selecionar uma Chave válida!',0,['0'],0);
   bbEmitirCupom.Enabled:=true;
   exit;
   end;
if DM1.Qr_PedFP.Active then
   begin
  DM1.Qr_PedFP.First;
   While not DM1.Qr_PedFP.Eof do
      begin
      if DM1.Qr_PedFPPFPVINCULO.AsInteger=7 then
         begin
         verteclado(0);
         fmensagem('Forma de Pagamento Tipo DEVOLUÇÃO, não é válido!',0,['0'],0);
         bbEmitirCupom.Enabled:=true;
         exit;
         end;
     DM1.Qr_PedFP.Next;
      end;
   end;
verteclado(0);
pmens:='Confirma a Emissão do Cupom no Valor de '+FormatFloat('#,##0.00',DM2.Tb_Ped01P1TOTALL.Value)+#13
      +'do Cliente.: '+Trim(DM2.Tb_Ped01nomcli.Value)+'?';
if fmensagem(pchar(pmens),0,['1','2'],2)<>mrYes then
   begin
   bbEmitirCupom.Enabled:=true;
   exit;
   end;

Frm_DadCli.CODCLI.Text   :='';
Frm_DadCli.CNPJ.Text     :='';
Frm_DadCli.CNPF.Text     :='';
Frm_DadCli.RAZSOC.Text   :='';
Frm_DadCli.DENOM.Text    :='';
Frm_DadCli.TELEFONE.Text :='';
Frm_DadCli.FAX.Text      :='';
Frm_DadCli.ENDERECO.Text :='';
Frm_DadCli.BAIRRO.Text   :='';
Frm_DadCli.CIDADE.Text   :='';
Frm_DadCli.UF.Text       :='';
Frm_DadCli.CEP.Text      :='';
Frm_DadCli.RG.Text       :='';

Frm_DadCli.IE.Text       :='';
Frm_DadCli.EDT_LIMCRED.Clear;


if DM2.Tb_Ped01P1CODCLI.Value<3 then
   begin
   if fLCadCSF(0,DM2.Tb_Ped01P1CODEMP.AsInteger,DM2.Tb_Ped01P1LOTSEQ.AsFloat,DM2.Tb_Ped01P1CHAVE.AsFloat) then
      begin
      Frm_DadCli.RAZSOC.Text   :=DM1.Tb_CSFCFRAZAO.Value;
      end
   else
      begin
      Frm_DadCli.RAZSOC.Text   :='';
      end;
   Frm_DadCli.CODCLI.Text   :=DM2.Tb_Ped01P1CODCLI.AsString;
   Frm_DadCli.CNPJ.Text     :='';
   Frm_DadCli.CNPF.Text     :='';
   Frm_DadCli.DENOM.Text    :='';
   Frm_DadCli.TELEFONE.Text :='';
   Frm_DadCli.FAX.Text      :='';
   Frm_DadCli.ENDERECO.Text :='';
   Frm_DadCli.BAIRRO.Text   :='';
   Frm_DadCli.CIDADE.Text   :='';
   Frm_DadCli.UF.Text       :='';
   Frm_DadCli.CEP.Text      :='';
   Frm_DadCli.RG.Text       :='';
   Frm_DadCli.IE.Text       :='';
   Frm_DadCli.EDT_LIMCRED.Clear;
   Frm_DadCli.ShowModal;
   end
else
   begin
   if flCadcli(1,DM2.Tb_Ped01P1CODCLI.AsString) then
      begin
      Frm_DadCli.CODCLI.Text   :=DM1.Tb_CliCCODCLI.AsString;
      Frm_DadCli.CNPJ.Text     :=Formatfloat(fdfcnpj, DM1.Tb_CliCCNPJ.AsFloat);
      Frm_DadCli.CNPF.Text     :=Formatfloat(fdfcnpf, DM1.Tb_CliCCPF.AsFloat);
      Frm_DadCli.RAZSOC.Text   :=DM1.Tb_CliCRAZAO.AsString;
      Frm_DadCli.DENOM.Text    :=DM1.Tb_CliCDENOM.AsString;
      Frm_DadCli.TELEFONE.Text :=DM1.Tb_CliCFONE01.AsString;
      Frm_DadCli.FAX.Text      :=DM1.Tb_CliCFAX.AsString;
      Frm_DadCli.ENDERECO.Text :=DM1.Tb_CliCLOG.AsString;
      Frm_DadCli.BAIRRO.Text   :=DM1.Tb_CliCBAIRRO.AsString;
      Frm_DadCli.CIDADE.Text   :=DM1.Tb_CliCCIDADE.AsString;
      Frm_DadCli.UF.Text       :=DM1.Tb_CliCUF.AsString;
      Frm_DadCli.CEP.Text      :=DM1.Tb_CliCCEP.AsString;
      Frm_DadCli.RG.Text       :=DM1.Tb_CliCRG.AsString;
      Frm_DadCli.IE.Text       :=DM1.Tb_CliCIE.AsString;
      Frm_DadCli.EDT_LIMCRED.Text:=Formatfloat(mcasas, DM1.Tb_CliCLCRED.AsFloat);
      end;
   end;
query_ldr:=TQuery.create(nil);
query_ldr.DatabaseName:=DM1.DTBASE1.DatabaseName;
query_ldr.Close;
query_ldr.sql.clear;
query_ldr.sql.Add('SELECT CRCODEMP,FPCODLDR AS CODLDR,FPCRDUP.FPLOTE AS LOTE,FPVALDUP FROM CADDAR,FPCRDUP,FPCR  '
                 +' WHERE CRNPED=:CHAVE  '
                 +' and CRLOTSEQ_CP=:LOTSEQ '
                 +' and CRCODEMP=:CODEMP '
                 +' AND FPCRDUP.FPDUP_CODEMP=CRCODEMP '
                 +' AND FPCRDUP.FPNUMERO=CRNUMERO '
                 +' AND FPCRDUP.FPDESD=CRDESD '
                 +' AND FPCRDUP.FPTIPO=CRDUP '
                 +' AND FPCR.FPCODEMP=CRCODEMP '
                 +' AND FPCR.FPLOTE=FPCRDUP.FPLOTE ');
query_ldr.ParamByName('CHAVE').AsInteger:=DM2.Tb_Ped01P1CHAVE.AsInteger;
query_ldr.ParamByName('LOTSEQ').AsInteger:=DM2.Tb_Ped01P1LOTSEQ.AsInteger;
query_ldr.ParamByName('CODEMP').AsInteger:=DM2.Tb_Ped01P1CODEMP.AsInteger;
try
   query_ldr.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_ldr,241,'frm_fptro: '+e.Message,'CADDAR');
   freeandnil(query_ldr);
   exit;
   END;
   end;


Application.Createform(TFrm_Fpgto, Frm_Fpgto);
Application.CreateForm(TFrm_DadChq, Frm_DadChq);

mFpgtoOrigem:=3;

Frm_Fpgto.TOTPED.Text:=insere(FormatFloat(mCasas, DM2.Tb_Ped01P1TOTALL.Value),' ',mEspaco);
Frm_Fpgto.edt_outacres.Text:=insere(FormatFloat(mCasas, DM2.Tb_Ped01P1VALFRE.Value+DM2.Tb_Ped01P1TARBAN.AsFloat+DM2.Tb_Ped01P1VALSEG.AsFloat),' ',mEspaco);
Frm_Fpgto.ACRE.Text            :=insere(FormatFloat(mCasas, DM2.Tb_Ped01P1CUPACRE.Value),' ',mEspaco);
Frm_Fpgto.DESC.Text            :=insere(FormatFloat(mCasas, DM2.Tb_Ped01P1CUPDES.Value),' ',mEspaco);
Frm_Fpgto.VLRREC.Text:=insere(FormatFloat(mCasas, DM2.Tb_Ped01P1TOTALL.Value+DM2.Tb_Ped01P1CUPACRE.Value-DM2.Tb_Ped01P1CUPDES.Value ),' ',mEspaco);

//Frm_Fpgto.ACRE.Enabled         :=False;
//Frm_Fpgto.DESC.Enabled         :=False;
Frm_Fpgto.VALDIN.Text          :='';
Frm_Fpgto.VALCHQ.Text          :='';
Frm_Fpgto.VALOUT.Text          :='';
Frm_Fpgto.VALCARVIS.Text       :='';
Frm_Fpgto.VALCARTECBAN.Text    :='';
Frm_Fpgto.VALCARAMEX.Text      :='';
Frm_Fpgto.VALCARRED.Text       :='';
Frm_Fpgto.VALCARHIPER.Text     :='';
Frm_Fpgto.VALCON.Text          :='';
Frm_Fpgto.VALCHQ_RED.Text      :='';


Frm_Fpgto.CB_REDE.ItemIndex    :=2;
Frm_Fpgto. CB_TPPESSOA.Checked :=False;
Frm_Fpgto.lbl_cnpf.Caption     :='CPF';
Frm_Fpgto.CNPJ_CNPF.Text       :='';
Frm_Fpgto.mdtDep.Text          :=FormatDatetime(fdt2, Date);
Frm_Fpgto.CODBCO.Text          :='';
Frm_Fpgto.CODAGE.Text          :='';
Frm_Fpgto.DIGAGE.Text          :='';
Frm_Fpgto.NUMCC.Text           :='';
Frm_Fpgto.DIGCC.Text           :='';
Frm_Fpgto.NUMCHQ.Text          :='';
Frm_Fpgto.DIGCHQ.Text          :='';
Frm_Fpgto.VALOR.Text           :=FormatFloat(mCasas,0);




DM1.Tb_ECF_FP.First;

if not DM1.Tb_ECF_FP.Locate('FPECODECF;FPEVINC',vararrayof([Log_CodEcf,0]),[LoPartialKey,LoCaseInSensitive]) then
   begin
   Frm_Fpgto.lbl_dinheiro.Enabled:=false;
   Frm_Fpgto.VALDIN.Enabled      :=false;
   Frm_Fpgto.lbl_convenio.Enabled:=false;
   Frm_Fpgto.VALCON.Enabled      :=false;
   end;
if not DM1.Tb_ECF_FP.Locate('FPECODECF;FPEVINC',vararrayof([Log_CodEcf,1]),[LoPartialKey,LoCaseInSensitive]) then
   begin
   Frm_Fpgto.lbl_cheques.Enabled :=false;
   Frm_Fpgto.VALCHQ.Enabled      :=false;
   end;
if not DM1.Tb_ECF_FP.Locate('FPECODECF;FPEVINC',vararrayof([Log_CodEcf,12]),[LoPartialKey,LoCaseInSensitive]) then
   begin
   Frm_Fpgto.lbl_valout.Enabled :=false;
   Frm_Fpgto.VALOUT.Enabled      :=false;
   end;

if not DM1.Tb_ECF_FP.Locate('FPECODECF;FPEVINC',vararrayof([Log_CodEcf,2]),[LoPartialKey,LoCaseInSensitive]) then
   begin
   Frm_Fpgto.lbl_cheques_red.Enabled :=false;
   Frm_Fpgto.VALCHQ_RED.Enabled      :=false;
   end;
if not DM1.Tb_ECF_FP.Locate('FPECODECF;FPEVINC',vararrayof([Log_CodEcf,3]),[LoPartialKey,LoCaseInSensitive]) then
   begin
   Frm_Fpgto.lbl_visanet.Enabled    :=false;
   Frm_Fpgto.VALCARVIS.Enabled      :=false;
   end;
if not DM1.Tb_ECF_FP.Locate('FPECODECF;FPEVINC',vararrayof([Log_CodEcf,6]),[LoPartialKey,LoCaseInSensitive]) then
   begin
   Frm_Fpgto.lbl_TecBan.Enabled     :=false;
   Frm_Fpgto.VALCARTECBAN.Enabled   :=false;
   end;
if not DM1.Tb_ECF_FP.Locate('FPECODECF;FPEVINC',vararrayof([Log_CodEcf,4]),[LoPartialKey,LoCaseInSensitive]) then
   begin
   Frm_Fpgto.lbl_amex.Enabled        :=false;
   Frm_Fpgto.VALCARAMEX.Enabled      :=false;
   end;
if not DM1.Tb_ECF_FP.Locate('FPECODECF;FPEVINC',vararrayof([Log_CodEcf,5]),[LoPartialKey,LoCaseInSensitive]) then
   begin
   Frm_Fpgto.lbl_redecard.Enabled     :=false;
   Frm_Fpgto.VALCARRED.Enabled        :=false;
   end;

if not DM1.Tb_ECF_FP.Locate('FPECODECF;FPEVINC',vararrayof([Log_CodEcf,16]),[LoPartialKey,LoCaseInSensitive]) then
   begin
   Frm_Fpgto.lbl_hipercard.Enabled     :=false;
   Frm_Fpgto.VALCARHIPER.Enabled       :=false;
   end;

if not DM1.Tb_ECF_FP.Locate('FPECODECF;FPEVINC',vararrayof([Log_CodEcf,8]),[LoPartialKey,LoCaseInSensitive]) then
   begin
   Frm_Fpgto.lbl_convenio.Enabled     :=false;
   Frm_Fpgto.VALCON.Enabled        :=false;
   end;
mPFecharFpto:=False;
verteclado(0);
fTravaTeclado(1);


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select CRNUMERO,CRDESD,CRDUP,CRCODLDR,CRCODEMP,CRLOTSEQ_FC,CRCODECF,CRDTEMIS '
                  +' from CADDAR where '
                  +' CRCODEMP=0'+DM2.Tb_Ped01P1CODEMP.AsString
                  +' and CRLOTSEQ_CP=0'+DM2.Tb_Ped01P1LOTSEQ.AsString
                  +' and CRNPED=0'+DM2.Tb_Ped01P1CHAVE.AsString);
DM1.Query1.Open;
While not DM1.Query1.Eof do
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select FPLOTE,FPJUROS,FPDESC,FPCODEMP from FPCRDUP where '
                     +' FPCODEMP=0'+DM2.Tb_Ped01P1CODEMP.AsString
                     +' and FPDUP_CODEMP=0'+DM1.Query1.FieldByName('CRCODEMP').AsString
                     +' and FPCODECF=0'+DM1.Query1.FieldByName('CRCODECF').AsString
                     +' and FPNUMERO=0'+DM1.Query1.FieldByName('CRNUMERO').AsString
                     +' and FPDESD='+chr(39)+DM1.Query1.FieldByName('CRDESD').AsString+chr(39)
                     +' and FPTIPO=0'+DM1.Query1.FieldByName('CRDUP').AsString
                     +' and FPDTEMIS='+chr(39)+DM1.Query1.FieldByName('CRDTEMIS').AsString+chr(39));
   DM1.Query2.Open;

   Frm_Fpgto.DESC.Text :=Formatfloat(mcasas, ValFloat(Frm_Fpgto.DESC.Text) +DM1.Query2.FieldbyName('FPDESC').AsFloat);
   Frm_Fpgto.ACRE.Text :=Formatfloat(mcasas, ValFloat(Frm_Fpgto.ACRE.Text)+DM1.Query2.FieldbyName('FPJUROS').Asfloat);
   While not DM1.Query2.Eof do
      begin
      if (DM1.Tb_ParGerPPEDFPGTO.AsInteger=0) then
         begin
         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.SQL.Add('Select FPVINCULO,FPVALOR from FPCR where '
                           +' FPCODEMP=0'+DM1.Query2.FieldbyName('FPCODEMP').AsString
                           +' and FPLOTE=0'+DM1.Query2.FieldbyName('FPLOTE').AsString);
         DM1.Query3.Open;
         While not DM1.Query3.Eof do
            begin
            if DM1.Query3.FieldbyName('FPVINCULO').AsInteger=0 then
               Frm_Fpgto.VALDIN.Text:=Formatfloat(mcasas, ValFloat(Frm_Fpgto.VALDIN.Text)+DM1.Query3.FieldbyName('FPVALOR').AsFloat)
            else if DM1.Query3.FieldbyName('FPVINCULO').AsInteger=1 then
               Frm_Fpgto.VALCHQ.Text:=Formatfloat(mcasas, ValFloat(Frm_Fpgto.VALCHQ.Text)+DM1.Query3.FieldbyName('FPVALOR').AsFloat)
            else if DM1.Query3.FieldbyName('FPVINCULO').AsInteger=14 then
               Frm_Fpgto.VALCHQ.Text:=Formatfloat(mcasas, ValFloat(Frm_Fpgto.VALCHQ.Text)+DM1.Query3.FieldbyName('FPVALOR').AsFloat)
            else if DM1.Query3.FieldbyName('FPVINCULO').AsInteger=2 then
               Frm_Fpgto.VALCHQ_RED.Text:=Formatfloat(mcasas, ValFloat(Frm_Fpgto.VALCHQ_RED.Text)+DM1.Query3.FieldbyName('FPVALOR').AsFloat)
            else if DM1.Query3.FieldbyName('FPVINCULO').AsInteger=3 then
               Frm_Fpgto.VALCARVIS.Text:=Formatfloat(mcasas, ValFloat(Frm_Fpgto.VALCARVIS.Text)+DM1.Query3.FieldbyName('FPVALOR').AsFloat)
            else if DM1.Query3.FieldbyName('FPVINCULO').AsInteger=4 then
               Frm_Fpgto.VALCARAMEX.Text:=Formatfloat(mcasas, ValFloat(Frm_Fpgto.VALCARAMEX.Text)+DM1.Query3.FieldbyName('FPVALOR').AsFloat)
            else if DM1.Query3.FieldbyName('FPVINCULO').AsInteger=5 then
               Frm_Fpgto.VALCARRED.Text:=Formatfloat(mcasas, ValFloat(Frm_Fpgto.VALCARRED.Text)+DM1.Query3.FieldbyName('FPVALOR').AsFloat)
            else if DM1.Query3.FieldbyName('FPVINCULO').AsInteger=6 then
               Frm_Fpgto.VALCARTECBAN.Text:=Formatfloat(mcasas, ValFloat(Frm_Fpgto.VALCARTECBAN.Text)+DM1.Query3.FieldbyName('FPVALOR').AsFloat)
            else if DM1.Query3.FieldbyName('FPVINCULO').AsInteger=17 then
               Frm_Fpgto.VALCARHIPER.Text:=Formatfloat(mcasas, ValFloat(Frm_Fpgto.VALCARHIPER.Text)+DM1.Query3.FieldbyName('FPVALOR').AsFloat)
            else if DM1.Query3.FieldbyName('FPVINCULO').AsInteger=8 then
               Frm_Fpgto.VALCON.Text:=Formatfloat(mcasas, ValFloat(Frm_Fpgto.VALCON.Text)+DM1.Query3.FieldbyName('FPVALOR').AsFloat)
            else if DM1.Query3.FieldbyName('FPVINCULO').AsInteger=12 then
               Frm_Fpgto.VALOUT.Text:=Formatfloat(mcasas, ValFloat(Frm_Fpgto.VALOUT.Text)+DM1.Query3.FieldbyName('FPVALOR').AsFloat);
            DM1.Query3.Next;
            end;
         end;
      DM1.Query2.Next;
      end;
   DM1.Query1.Next;
   end;


mCodEmp:=iif(DM2.Tb_Ped01P1CODEMP.Value>100,DM2.Tb_Ped01P1CODEMP.Value-100,DM2.Tb_Ped01P1CODEMP.Value+100);
mLotseq:=DM2.Tb_Ped01P1LOTSEQ.Value;
mChave :=DM2.Tb_Ped01P1CHAVE.Value;
mOrdem :=DM2.Tb_Ped01P1ORDEM.Value;

//FReecupomAjustaEstoque(0,DM2.Tb_Ped01P1CODEMP.Value,DM2.Tb_Ped01P1LOTSEQ.Value,DM2.Tb_Ped01P1CHAVE.Value,DM2.Tb_Ped01P1ORDEM.Value);
//FReecupomAjustaEstoque(DM1.Tb_Ped01P1TIPO.Asinteger,DM2.Tb_Ped01P1CODEMP.Value,DM2.Tb_Ped01P1LOTSEQ.Value,DM2.Tb_Ped01P1CHAVE.Value,0);
fReecupomExecutaTrocaEmpresa(DM2.Tb_Ped01P1CODEMP.Value,DM2.Tb_Ped01P1LOTSEQ.Value,DM2.Tb_Ped01P1CHAVE.Value,DM2.Tb_Ped01P1ORDEM.AsInteger);



DM2.Tb_Ped01.Close;
DM2.Tb_Ped01.SQL.Clear;
DM2.Tb_Ped01.SQL.Add('Select P1CODEMP,P1LOTSEQ,P1CHAVE,');
DM2.Tb_Ped01.SQL.Add('P1TIPO,P1STATUS,P1NUMCF,P1CUPOM,P1CODECF,P1DATACF,');
DM2.Tb_Ped01.SQL.Add('P1DATAP,P1CODCLI,CRAZAO,CCIDADE,CUF,P1CODVEN,');
DM2.Tb_Ped01.SQL.Add('min(P1FORMACE) as P1FORMACE, ');
DM2.Tb_Ped01.SQL.Add('min(P1EMITENTE) as P1EMITENTE, ');
DM2.Tb_Ped01.SQL.Add('min(P1ORDEM) as P1ORDEM,');
DM2.Tb_Ped01.SQL.Add('max(P1NUMNF) as P1NUMNF,');
DM2.Tb_Ped01.SQL.Add('max(P1MODELO) as P1MODELO,');
DM2.Tb_Ped01.SQL.Add('max(P1DATANF) as P1DATANF,');
DM2.Tb_Ped01.SQL.Add('max(P1EMIDOC) as P1EMIDOC,');
DM2.Tb_Ped01.SQL.Add('max(P1DATDOC) as P1DATDOC,');
DM2.Tb_Ped01.SQL.Add('max(P1QTDMAN) as P1QTDMAN,');
DM2.Tb_Ped01.SQL.Add('max(P1SITPED) as P1SITPED, ');
DM2.Tb_Ped01.SQL.Add('max(P1OBS1)   as P1OBS1,');
DM2.Tb_Ped01.SQL.Add('max(P1OBS2)   as P1OBS2,');
DM2.Tb_Ped01.SQL.Add('max(P1OBS3)   as P1OBS3,');
DM2.Tb_Ped01.SQL.Add('sum(P1TOTALL) as P1TOTALL, ');
//DM2.Tb_Ped01.SQL.Add('sum(P1TOTALL+P1ICMSR) as P1TOTALL, ');
DM2.Tb_Ped01.SQL.Add('sum(P1TOTVALAPROXTRIB) as P1TOTVALAPROXTRIB, ');
DM2.Tb_Ped01.SQL.Add('sum(P1TOTALB) as P1TOTALB, ');
DM2.Tb_Ped01.SQL.Add('sum(P1VLRACRE) as P1VLRACRE,');
DM2.Tb_Ped01.SQL.Add('sum(P1VALFRE) as P1VALFRE,');
DM2.Tb_Ped01.SQL.Add('sum(P1TARBAN) as P1TARBAN,');
DM2.Tb_Ped01.SQL.Add('sum(P1TOTDES) as P1TOTDES,');
DM2.Tb_Ped01.SQL.Add('sum(P1BASEN) as  P1BASEN,');
DM2.Tb_Ped01.SQL.Add('sum(P1ICMSN) as P1ICMSN,');
DM2.Tb_Ped01.SQL.Add('sum(P1REPAS) as P1REPAS,');
DM2.Tb_Ped01.SQL.Add('sum(P1BASER) as P1BASER,');
DM2.Tb_Ped01.SQL.Add('sum(P1ICMSR) as P1ICMSR,');
DM2.Tb_Ped01.SQL.Add('sum(P1BASENP) as P1BASENP,');
DM2.Tb_Ped01.SQL.Add('sum(P1BASENN) as P1BASENN,');
DM2.Tb_Ped01.SQL.Add('sum(P1BASENI) as P1BASENI,');
DM2.Tb_Ped01.SQL.Add('sum(P1ICMSNP) as P1ICMSNP,');
DM2.Tb_Ped01.SQL.Add('sum(P1ICMSNN) as P1ICMSNN,');
DM2.Tb_Ped01.SQL.Add('sum(P1ICMSNI) as P1ICMSNI,');
DM2.Tb_Ped01.SQL.Add('sum(P1BASERP) as P1BASERP,');
DM2.Tb_Ped01.SQL.Add('sum(P1BASERN) as P1BASERN,');
DM2.Tb_Ped01.SQL.Add('sum(P1BASERI) as P1BASERI,');
DM2.Tb_Ped01.SQL.Add('sum(P1ICMSRI) as P1ICMSRI,');
DM2.Tb_Ped01.SQL.Add('sum(P1ICMSRP) as P1ICMSRP,');
DM2.Tb_Ped01.SQL.Add('sum(P1BASENRP) as P1BASENRP,');
DM2.Tb_Ped01.SQL.Add('sum(P1ICMSNRP) as P1ICMSNRP,');
DM2.Tb_Ped01.SQL.Add('sum(P1BASENRI) as P1BASENRI,');
DM2.Tb_Ped01.SQL.Add('sum(P1ICMSNRI) as P1ICMSNRI,');
DM2.Tb_Ped01.SQL.Add('sum(P1BASENRN) as P1BASENRN,');
DM2.Tb_Ped01.SQL.Add('sum(P1ICMSNRN) as P1ICMSNRN,');
DM2.Tb_Ped01.SQL.Add('sum(P1ICMS_BCFRE) as P1ICMS_BCFRE,');
DM2.Tb_Ped01.SQL.Add('sum(P1ICMS_ALFRE) as P1ICMS_ALFRE,');
DM2.Tb_Ped01.SQL.Add('sum(P1ICMS_VLFRE) as P1ICMS_VLFRE,');
DM2.Tb_Ped01.SQL.Add('sum(P1ICMS_BCSEG) as P1ICMS_BCSEG,');
DM2.Tb_Ped01.SQL.Add('sum(P1ICMS_ALSEG) as P1ICMS_ALSEG,');
DM2.Tb_Ped01.SQL.Add('sum(P1ICMS_VLSEG) as P1ICMS_VLSEG,');
DM2.Tb_Ped01.SQL.Add('sum(P1ICMS_BCOUTD) as P1ICMS_BCOUTD,');
DM2.Tb_Ped01.SQL.Add('sum(P1ICMS_ALOUTD) as P1ICMS_ALOUTD,');
DM2.Tb_Ped01.SQL.Add('sum(P1ICMS_VLOUTD) as P1ICMS_VLOUTD,');
DM2.Tb_Ped01.SQL.Add('sum(P1ICMS_BCIPI)  as P1ICMS_BCIPI,');
DM2.Tb_Ped01.SQL.Add('sum(P1ICMS_ALIPI)  as P1ICMS_ALIPI,');
DM2.Tb_Ped01.SQL.Add('sum(P1ICMS_VLIPI)  as P1ICMS_VLIPI,');
DM2.Tb_Ped01.SQL.Add('sum(P1IPIINA)      as P1IPIINA,');
DM2.Tb_Ped01.SQL.Add('sum(P1IPIPOS)      as P1IPIPOS,');
DM2.Tb_Ped01.SQL.Add('sum(P1IPINEG)      as P1IPINEG,');
DM2.Tb_Ped01.SQL.Add('sum(P1TOTTRI)      as P1TOTTRI,');
DM2.Tb_Ped01.SQL.Add('sum(P1TOTRET)      as P1TOTRET,');
DM2.Tb_Ped01.SQL.Add('sum(P1TOTISE)      as P1TOTISE,');
DM2.Tb_Ped01.SQL.Add('sum(P1TOTOUT)      as P1TOTOUT,');
DM2.Tb_Ped01.SQL.Add('sum(P1VALSEG)      as P1VALSEG,');
DM2.Tb_Ped01.SQL.Add('sum(P1TOTPOS)      as P1TOTPOS,');
DM2.Tb_Ped01.SQL.Add('sum(P1TOTNEG)      as P1TOTNEG,');
DM2.Tb_Ped01.SQL.Add('sum(P1TOTINA)      as P1TOTINA,');
//DM2.Tb_Ped01.SQL.Add('sum(P1PISCOFN)     as P1PISCOFN,');
//DM2.Tb_Ped01.SQL.Add('sum(P1PISCOFR)     as P1PISCOFR,');
DM2.Tb_Ped01.SQL.Add('sum(P1COMIS)       as P1COMIS,');
DM2.Tb_Ped01.SQL.Add('sum(P1COMV02)      as P1COMV02,');
DM2.Tb_Ped01.SQL.Add('sum(P1COMV03)      as P1COMV03,');
DM2.Tb_Ped01.SQL.Add('sum(P1COMV04)      as P1COMV04,');
DM2.Tb_Ped01.SQL.Add('sum(P1COMIST)      as P1COMIST,');
DM2.Tb_Ped01.SQL.Add('sum(P1COMISS)      as P1COMISS,');
DM2.Tb_Ped01.SQL.Add('sum(P1BCISSQN)     as P1BCISSQN,');
DM2.Tb_Ped01.SQL.Add('sum(P1VISSQN)      as P1VISSQN,');
DM2.Tb_Ped01.SQL.Add('sum(P1COMASSE)     as P1COMASSE,');
DM2.Tb_Ped01.SQL.Add('sum(P1TOTDI01)     as P1TOTDI01,');
DM2.Tb_Ped01.SQL.Add('sum(P1TOTDI02)     as P1TOTDI02,');
DM2.Tb_Ped01.SQL.Add('sum(P1TOTDI03)     as P1TOTDI03,');
DM2.Tb_Ped01.SQL.Add('sum(P1VALDES01)    as P1VALDES01,');
DM2.Tb_Ped01.SQL.Add('sum(P1VALDES02)    as P1VALDES02,');
DM2.Tb_Ped01.SQL.Add('sum(P1TOTDIVL)     as P1TOTDIVL,');
DM2.Tb_Ped01.SQL.Add('sum(P1TOTUCPR)     as P1TOTUCPR,');
DM2.Tb_Ped01.SQL.Add('sum(P1VLRDES)      as P1VLRDES,');
DM2.Tb_Ped01.SQL.Add('sum(P1PAVDES)      as P1PAVDES,');
DM2.Tb_Ped01.SQL.Add('sum(P1SEMCOM)      as P1SEMCOM,');
DM2.Tb_Ped01.SQL.Add('max(P1SEMCOMP)      as P1SEMCOMP,');
DM2.Tb_Ped01.SQL.Add('sum(P1DESCFIN)     as P1DESCFIN,');
DM2.Tb_Ped01.SQL.Add('sum(P1CUPACRE)     as P1CUPACRE,');
DM2.Tb_Ped01.SQL.Add('sum(P1DESPACES)     as P1DESPACES,');

DM2.Tb_Ped01.SQL.Add('sum(P1CUPDES)      as P1CUPDES,');
DM2.Tb_Ped01.SQL.Add('sum(P1ACRECONV)    as P1ACRECONV,');
DM2.Tb_Ped01.SQL.Add('sum(P1ACREGER)     as P1ACREGER,');
DM2.Tb_Ped01.SQL.Add('sum(P1TOTCGRU)     as P1TOTCGRU,');
DM2.Tb_Ped01.SQL.Add('sum(P1TOTSGRU)     as P1TOTSGRU,');
DM2.Tb_Ped01.SQL.Add('sum(P1COMIS_EXTRA) as P1COMIS_EXTRA');
DM2.Tb_Ped01.SQL.Add(',max(P1PRAZO) as P1PRAZO');
DM2.Tb_Ped01.SQL.Add(',max(P1PRAZO) as P1PVDESCF');
DM2.Tb_Ped01.SQL.Add(',max(P1PVDIASDESCF) as P1PVDIASDESCF');
DM2.Tb_Ped01.SQL.Add(',sum(P1TOTSERLIQ) as P1TOTSERLIQ');
DM2.Tb_Ped01.SQL.Add(',sum(P1VALENT) as P1VALENT');
DM2.Tb_Ped01.SQL.Add(',max(P1PRAZO_ENT) as P1PRAZO_ENT');
DM2.Tb_Ped01.SQL.Add(',max(P1TABPV) as P1TABPV');
DM2.Tb_Ped01.SQL.Add(',max(P1CODPV) as P1CODPV');
DM2.Tb_Ped01.SQL.Add(',max(P1HORADIG) as P1HORADIG');
DM2.Tb_Ped01.SQL.Add(',max(P1SUBMOD) as P1SUBMOD');
DM2.Tb_Ped01.SQL.Add(',max(P1DATHOR_ULTEVE) P1DATHOR_ULTEVE ');
DM2.Tb_Ped01.SQL.Add(',max(P1CODUSR_ULTEVE) P1CODUSR_ULTEVE ');
DM2.Tb_Ped01.SQL.Add(',max(P1COMP_ULTEVE) P1COMP_ULTEVE');

DM2.Tb_Ped01.SQL.Add(',max(P1CODBLOQ) as P1CODBLOQ');
DM2.Tb_Ped01.SQL.Add(',max(P1CODBLOQ_LIB) as P1CODBLOQ_LIB');
DM2.Tb_Ped01.SQL.Add(',max(P1BLOQPEND) as P1BLOQPEND');


DM2.Tb_Ped01.SQL.Add(' from CADP01,CADCLI  where P1CODEMP=0'+FloatToStr(mCodEmp)
                    +' and P1LOTSEQ=0'+FloatToStr(mLotseq)
                    +' and P1CHAVE=0'+FloatToStr(mChave)
                    +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=P1CODEMP')
                    +' and CCODCLI=P1CODCLI '
                    +' group by P1CODEMP,P1LOTSEQ,P1CHAVE,'
                    +'P1TIPO,P1STATUS,P1NUMCF,P1CUPOM,P1CODECF,P1DATACF,'
                    +'P1DATAP,P1CODCLI,CRAZAO,CCIDADE,CUF,P1CODVEN'
                    +' order by P1CHAVE DESC ');
try
  DM2.Tb_Ped01.Open;
except
  DM2.Tb_Ped01.SQL.SaveToFile('c:\sql.txt');
  end;


mFpgtoOrigem:=3;
mped1_codemp:=DM2.Tb_Ped01P1CODEMP.AsFloat;
mPed1_datap :=DM2.Tb_Ped01P1DATAP.Value;


if Frm_Receb.fRecebEmitirCupom(0,DM2.Tb_Ped01P1CODEMP.AsFloat,DM2.Tb_Ped01P1LOTSEQ.AsFloat,
                  DM2.Tb_Ped01P1CHAVE.AsFloat,0,true) then

   begin
   DM2.Tb_Ped01.First;
   fReecupomCancelaEmpresAnterior(iif(DM2.Tb_Ped01P1CODEMP.AsFloat>100,DM2.Tb_Ped01P1CODEMP.AsFloat-100,DM2.Tb_Ped01P1CODEMP.AsFloat+100),
                                   DM2.Tb_Ped01P1LOTSEQ.AsFloat,
                                   DM2.Tb_Ped01P1CHAVE.AsFloat,DM2.Tb_Ped01P1ORDEM.AsInteger );

   query_exe:=TQuery.create(nil);
   query_exe.DatabaseName:=DM1.DTBASE1.DatabaseName;
   query_exe.Close;
   query_exe.sql.clear;
   query_exe.sql.Add('Delete from CADLDR where CODLDR=:CODLDR and CODEMP=:CODEMP');
   query_exe.ParamByName('CODLDR').AsInteger:= query_ldr.fieldbyname('CODLDR').AsInteger;
   query_exe.ParamByName('CODEMP').AsInteger:= query_ldr.fieldbyname('CRCODEMP').AsInteger;
   try
      query_exe.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_exe,591,'frm_fptro: '+e.Message,'CADLDR');
      freeandnil(query_exe);
      exit;
      END;
      end;
   freeandnil(query_exe);




{
   FReecupomAjustaEstoque(0,DM2.Tb_Ped01P1CODEMP.AsFloat,
                            DM2.Tb_Ped01P1LOTSEQ.AsFloat,
                            DM2.Tb_Ped01P1CHAVE.AsFloat,
                            0);
}   end
else
   begin
   DM2.Tb_Ped01.First;
   fReecupomExecutaTrocaEmpresa(DM2.Tb_Ped01P1CODEMP.Value,DM2.Tb_Ped01P1LOTSEQ.Value,DM2.Tb_Ped01P1CHAVE.Value,DM2.Tb_Ped01P1ORDEM.AsInteger);
   end;


freeandnil(query_ldr);

mFpgtoOrigem:=1;

Frm_Fpgto.free;
Frm_Fpgto:=nil;
Frm_DadChq.free;
Frm_DadChq:=nil;
bbEmitirCupom.Enabled:=true;
close;

end;


Function FReecupomAjustaEstoque(ptipo: Integer; pcodemp,plotseq,pchave,pordem: Real ): Boolean;
var
mdtv: String;
begin
DM2.Tb_Ped01.First;
While not DM2.Tb_Ped01.Eof do
   begin
   DM2.Tb_Ped02.Close;
   DM2.Tb_ped02.Sql.Clear;
   DM2.Tb_Ped02.SQL.add('Select P2CODEMP,P2LOTSEQ,P2CHAVE,P2ORDEM, '
                       +'       P2CODPRO,P2ITEM,P2QTD,P2PRECO, '
                       +'       P2SIT,P2BASEN,P2ICMSN,P2TOTDES,P2ALIQ,P2CFO, '
                       +'       P2LOTE,P2DTVCTO,P2TOTLIQ,PDNOME,PDUND,PDFRACAO,PDMARCA,PDCODBAR, '
                       +'       P2DESC1, P2DESC2,P2VALDES '
                       +'  from CADP02,CADPRO where '
                       +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+DM2.Tb_Ped01P1CODEMP.AsString+' and ')
                       +fla_EmpBaixaAlta(0,'CADPRO',' ',DM2.Tb_Ped01P1CODEMP.asinteger,'PDCODEMP','and ')
                       +' PDCODPRO=P2CODPRO'
                       +' and P2LOTSEQ=0'+DM2.Tb_Ped01P1LOTSEQ.AsString
                       +' and P2CHAVE=0'+DM2.Tb_Ped01P1CHAVE.AsString
                       +' and P2ORDEM=0'+DM2.Tb_Ped01P1ORDEM.AsString);
   DM2.Tb_Ped02.Open;
   While not DM2.Tb_Ped02.Eof do
      begin
     fBaixarMercadorias(iif(DM2.Tb_Ped02P2CODEMP.AsInteger>100,DM1.Tb_Ped02P2CODEMP.AsInteger-100,DM1.Tb_Ped02P2CODEMP.AsInteger+100)
                     ,1
                     ,DM2.Tb_Ped02P2ITEM.AsInteger
                     ,00 // docori
                     ,log_codusr
                     ,0 //pcontesp
                     ,Log_TipoProdPad
                     ,DM2.Tb_Ped02P2CHAVE.AsFloat
                     ,DM2.Tb_Ped02P2LOTSEQ.AsFloat
                     ,DM2.Tb_Ped02P2QTD.AsFloat
                     ,DM2.Tb_Ped02P2CODPRO.AsString
                     ,'S'
                     ,'N'
                     ,''
                     ,0
                     ,'' // lote re
                     ,'Reecupom' // obs
                     );

      DM2.Tb_Ped02.Next;
      end;
   DM2.Tb_Ped01.Next;
   end;
DM2.Tb_Ped01.First;
Result:=True;


end;


procedure TFrm_Cancelar_Fechamento.Src_PedDataChange(Sender: TObject; Field: TField);
begin
{
if DM1.Tb_ParGerPPEDFPGTO.AsInteger>0 then
   begin
   if (notDM1.Qr_PedFP.Active) or (DM1.DM1.Qr_PedFPPFPCHAVE.AsFloat<>DM2.Tb_Ped01P1CHAVE.AsFloat) then
       begin
      DM1.Qr_PedFP.SQL.Clear;
      DM1.Qr_PedFP.SQL.Add('Select min(PFPCODEMP) as  PFPCODEMP,'
                   +'       min(PFPLOTSEQ) as  PFPLOTSEQ, '
                   +'       min(PFPCHAVE)  as  PFPCHAVE, '
                   +'       sum(PFPVALOR) aS PFPVALOR, '
                   +'       sum(DECODE(PFPDUPLIC,NULL,PFPVALOR,0,PFPVALOR,PFPDUPLIC)) as PFPDUPLIC, '
                   +'       PFPSEQ, '
                   +'       PFPVINCULO, '
                   +'       PFPFORMA, '
                   +'       PFPNOMFOR, '
                   +'       PFPDATA as PFPDATA,'
                   +'       PFPNUMDOC, '
                   +'       PFPBANCO, '
                   +'       PFPSERIE, '
                   +'       PFPCC, '
                   +'       PFPCOMP, '
                   +'       PFPAGENCIA, '
                   +'       PFPEMITENTE, '
                   +'       PFPCNPF, '
                   +'       PFPRG, '
                   +'       PFPDTNAS as PFPDTNAS '
                   +'       ,PFPFPGTO '
                   +' ,PFPDEV_CODEMP'
                   +' ,PFPDEV_CODECF'
                   +' ,PFPDEV_NUMERO'
                   +' ,PFPDEV_DESD '
                   +' ,PFPDEV_DTEMIS'
                   +' ,PFPDEV_DUP '

                   +'       from CADPFP where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' PFPCODEMP=0'+DM2.Tb_Ped01P1CODEMP.AsString+' and ')
                   +' PFPLOTSEQ=0'+DM2.Tb_Ped01P1LOTSEQ.AsString
                   +' and PFPCHAVE=0'+DM2.Tb_Ped01P1CHAVE.AsString
                   +' group by PFPSEQ, '
                   +'       PFPVINCULO, '
                   +'       PFPFORMA, '
                   +'       PFPNOMFOR, '
                   +'       PFPDATA, '
                   +'       PFPNUMDOC, '
                   +'       PFPBANCO, '
                   +'       PFPSERIE, '
                   +'       PFPCC, '
                   +'       PFPCOMP, '
                   +'       PFPAGENCIA, '
                   +'       PFPEMITENTE, '
                   +'       PFPCNPF, '
                   +'       PFPRG, '
                   +'       PFPDTNAS '
                   +'       ,PFPFPGTO '
                   +' ,PFPDEV_CODEMP'
                   +' ,PFPDEV_CODECF'
                   +' ,PFPDEV_NUMERO'
                   +' ,PFPDEV_DESD '
                   +' ,PFPDEV_DTEMIS'
                   +' ,PFPDEV_DUP ' );
     DM1.Qr_PedFP.SQL.Add(' order by PFPCHAVE,PFPSEQ');
      try
        DM1.Qr_PedFP.Open;
      except
         MessageDlg(FTestarCampos(DM1.DM1.Qr_PedFP,['CADPFP']),mtWarning,[mbOk],0);
         end;
      end;
  end;

}
end;

procedure TFrm_Cancelar_Fechamento.FormCreate(Sender: TObject);
begin
if DM1.Tb_ParGerPPEDFPGTO.AsInteger>0 then
   gb_formas.Visible:=true;

end;


function fReecupomCancelaEmpresAnterior(pCodemp,pLotSeq,pChave,pOrdem: Real): Boolean;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select CRNUMERO,CRDESD,CRDUP,CRCODLDR,CRCODEMP,CRLOTSEQ_FC,CRCODECF,CRDTEMIS '
                  +' from CADDAR where '
                  +' CRCODEMP=0'+FloatToStr(pCodemp)
                  +' and CRLOTSEQ_CP=0'+FloatToStr(pLotseq)
                  +' and CRNPED=0'+FloatToStr(pChave)
                  +' and CRORDEM=0'+FloatToStr(pOrdem));
DM1.Query1.Open;
While not DM1.Query1.Eof do
   begin

   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select FPLOTE,FPJUROS,FPDESC,FPCODEMP from FPCRDUP where '
                     +' FPCODEMP=0'+FloatToStr(pCodemp)
                     +' and FPDUP_CODEMP=0'+DM1.Query1.FieldByName('CRCODEMP').AsString
                     +' and FPCODECF=0'+DM1.Query1.FieldByName('CRCODECF').AsString
                     +' and FPNUMERO=0'+DM1.Query1.FieldByName('CRNUMERO').AsString
                     +' and FPDESD='+chr(39)+DM1.Query1.FieldByName('CRDESD').AsString+chr(39)
                     +' and FPTIPO=0'+DM1.Query1.FieldByName('CRDUP').AsString
                     +' and FPDTEMIS='+chr(39)+DM1.Query1.FieldByName('CRDTEMIS').AsString+chr(39));
   DM1.Query2.Open;



   While not DM1.Query2.Eof do
      begin
      DM1.Query4.close;
      DM1.Query4.Sql.Clear;
      DM1.Query4.Sql.Add('Select FPLOTE,FPCODEMP,FPCODLDR,FPLOTSEQ_FC from FPCR where '
                        +' FPCODEMP=0'+DM1.Query2.fieldbyName('FPCODEMP').AsString
                        +' and FPLOTE=0'+DM1.Query2.FieldByName('FPLOTE').AsString);
      DM1.query4.Open;
      While not DM1.Query4.eof do
         begin
         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.SQL.Add('Delete from CADLDR where '
                     +' CODEMP=0'+DM1.Query4.FieldByName('FPCODEMP').AsString
                     +' and LOTSEQ=0'+DM1.Query4.FieldByName('FPLOTSEQ_FC').AsString
                     +' and CODLDR=0'+DM1.Query4.FieldByName('FPCODLDR').AsString);
         Try
            DM1.Query3.ExecSQL;
            fdm1StartCommit;
         except
            verteclado(0);
            fmensagem('Erro 250 ao excluir o CADLDR!',0,['0'],0);
            end;
         DM1.Query4.Next;
         end;

      DM1.Query3.Close;
      DM1.Query3.SQL.Clear;
      DM1.Query3.SQL.Add('Delete from FPCR where '
                        +' FPCODEMP=0'+DM1.Query2.FieldbyName('FPCODEMP').AsString
                        +' and FPLOTE=0'+DM1.Query2.FieldbyName('FPLOTE').AsString);
      Try
         DM1.Query3.ExecSQL;
         fdm1StartCommit;
      except
         verteclado(0);
         fmensagem('Erro 301!',0,['0'],0);
         end;
      DM1.Query3.Close;
      DM1.Query3.SQL.Clear;
      DM1.Query3.SQL.Add('Delete from CADCHQ where '
                        +' CHCODEMP=0'+DM1.Query2.FieldbyName('FPCODEMP').AsString
                        +' and CHLOTE=0'+DM1.Query2.FieldbyName('FPLOTE').AsString);
      Try
         DM1.Query3.ExecSQL;
         fdm1StartCommit;
      except
         verteclado(0);
         fmensagem('Erro 312!',0,['0'],0);
         end;
      DM1.Query2.Next;
      end;

   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Delete from FPCRDUP where '
                     +' FPCODEMP=0'+FloatToStr(pCodemp)
                     +' and FPDUP_CODEMP=0'+DM1.Query1.FieldByName('CRCODEMP').AsString
                     +' and FPCODECF=0'+DM1.Query1.FieldByName('CRCODECF').AsString
                     +' and FPNUMERO=0'+DM1.Query1.FieldByName('CRNUMERO').AsString
                     +' and FPDESD='+chr(39)+DM1.Query1.FieldByName('CRDESD').AsString+chr(39)
                     +' and FPTIPO=0'+DM1.Query1.FieldByName('CRDUP').AsString
                     +' and FPDTEMIS='+chr(39)+DM1.Query1.FieldByName('CRDTEMIS').AsString+chr(39));
   Try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      verteclado(0);
      fmensagem('Erro 328!',0,['0'],0);
      end;
   DM1.Query1.Next;
   end;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from CADDAR where '
                  +' CRCODEMP=0'+FloatToStr(pcodemp)
                  +' and CRLOTSEQ_CP=0'+FloatToStr(plotseq)
                  +' and CRNPED=0'+FloatToStr(pChave)
                  +' and CRORDEM=0'+FloatToStr(pOrdem));
Try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   verteclado(0);
   fmensagem('Erro 342!',0,['0'],0);
   end;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from CADNS where '
                  +' NSCODEMP=0'+FloatToStr(pcodemp)
                  +' and NSLOTSEQ_CP=0'+FloatToStr(pLotseq)
                  +' and NSCHAVEP=0'+FloatToStr(pChave)
                  +' and NSORDEMP=0'+FloatToStr(pOrdem)
                  +' and NSNFCF=1');
Try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   verteclado(0);
   fmensagem('Erro 355!',0,['0'],0);
   end;

end;


function fReecupomExecutaTrocaEmpresa(pCodemp,pLotSeq,pChave,pOrdem: Real): Boolean;
var
query_cons: TQuery;
query_exe: TQuery;

begin

query_cons:=TQuery.Create(nil);
query_cons.DatabaseName:='DTBASE1';
query_exe:=TQuery.Create(nil);
query_exe.DatabaseName:='DTBASE1';

query_cons.Close;
query_cons.SQL.clear;
query_cons.SQL.Add('Select CRNUMERO,CRVALOR,CRCODLDR,CRLOTE from CADDAR where '
                  +' CRNPED=:CHAVE '
                  +' and CRORDEM=:ORDEM '
                  +' and CRCODEMP=:CODEMP '
                  +' and CRLOTSEQ_CP=:LOTSEQ ');
query_cons.ParamByName('CODEMP').Value:=pcodemp;
query_cons.ParamByName('ORDEM').Value:=pOrdem;
query_cons.ParamByName('CHAVE').Value:=pChave;
query_cons.ParamByName('LOTSEQ').Value:=pLotSeq;
query_cons.Open;

query_exe.Close;
query_exe.SQL.Clear;
Query_Exe.SQL.Add('Update CADLDR set CODEMP=:CODEMP_NOV where '
                 +' CODLDR=:CODLDR and CODEMP=:CODEMP ');
Query_cons.First;
{
While not Query_cons.Eof do
   begin
   Query_Exe.Close;
   Query_Exe.ParamByName('CODEMP_NOV').Value:=IIF(pcodemp>100,pcodemp-100,100+pcodemp);
   Query_Exe.ParamByName('CODLDR').Value    :=query_cons.fieldbyName('CRCODLDR').asfloat;
   Query_Exe.ParamByName('CODEMP').Value    :=pcodemp;
   query_exe.execsql;
   fdm1StartCommit;
   Query_Cons.Next;
   end;
// fpcr
}
{
query_exe.Close;
query_exe.SQL.Clear;
Query_Exe.SQL.Add('Update FPCR set FPCODEMP=:CODEMP_NOV where '
                 +' FPLOTE=:LOTE and FPCODEMP=:CODEMP ');
Query_cons.First;

While not Query_cons.Eof do
   begin
   Query_Exe.Close;
   Query_Exe.ParamByName('CODEMP_NOV').Value:=IIF(pcodemp>100,pcodemp-100,100+pcodemp);
   Query_Exe.ParamByName('LOTE').Value      :=query_cons.fieldbyName('CRLOTE').asfloat;
   Query_Exe.ParamByName('CODEMP').Value    :=pcodemp;
   query_exe.execsql;
   fdm1StartCommit;
   Query_Cons.Next;
   end;


// fpcrdup


query_exe.Close;
query_exe.SQL.Clear;
Query_Exe.SQL.Add('Update FPCRDUP set FPCODEMP=:CODEMP_NOV where '
                 +' FPLOTE=:LOTE and FPCODEMP=:CODEMP ');
Query_cons.First;

While not Query_cons.Eof do
   begin
   Query_Exe.Close;
   Query_Exe.ParamByName('CODEMP_NOV').Value:=IIF(pcodemp>100,pcodemp-100,100+pcodemp);
   Query_Exe.ParamByName('LOTE').Value      :=query_cons.fieldbyName('CRLOTE').asfloat;
   Query_Exe.ParamByName('CODEMP').Value    :=pcodemp;
   query_exe.execsql;
   fdm1StartCommit;
   Query_Cons.Next;
   end;

// CADCHQ


query_exe.Close;
query_exe.SQL.Clear;
Query_Exe.SQL.Add('Update CADCHQ set CHCODEMP=:CODEMP_NOV where '
                 +' CHLOTE=:LOTE and CHCODEMP=:CODEMP ');
Query_cons.First;

While not Query_cons.Eof do
   begin
   Query_Exe.Close;
   Query_Exe.ParamByName('CODEMP_NOV').Value:=IIF(pcodemp>100,pcodemp-100,100+pcodemp);
   Query_Exe.ParamByName('LOTE').Value      :=query_cons.fieldbyName('CRLOTE').asfloat;
   Query_Exe.ParamByName('CODEMP').Value    :=pcodemp;
   query_exe.execsql;
   fdm1StartCommit;
   Query_Cons.Next;
   end;


// CADNS





query_exe.Close;
query_exe.SQL.Clear;
Query_Exe.SQL.Add('Update CADNS set NSCODEMP=:CODEMP_NOV where '
                  +' NSCHAVEP=:CHAVE '
                  +' and NSORDEMP=:ORDEM '
                  +' and NSCODEMP=:CODEMP '
                  +' and NSLOTSEQ_CP=:LOTSEQ ');
Query_Exe.ParamByName('CODEMP_NOV').Value:=IIF(pcodemp>100,pcodemp-100,100+pcodemp);
query_exe.ParamByName('CODEMP').Value:=pcodemp;
query_exe.ParamByName('ORDEM').Value:=pOrdem;
query_exe.ParamByName('CHAVE').Value:=pChave;
query_exe.ParamByName('LOTSEQ').Value:=pLotSeq;
query_exe.ExecSql;
fdm1startcommit;

}





DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADP02 set P2CODEMP=0'+IntToStr(iif(pcodemp>100,pcodemp-100,100+pcodemp))
                  +' where P2CODEMP=0'+Floattostr(pcodemp)
                  +' and P2LOTSEQ=0'+FloatToStr(plotseq)
                  +' and P2CHAVE=0'+FloattoStr(pchave)
                  +' and P2ORDEM=0'+FloattoStr(pordem));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   verteclado(0);
   fmensagem('Erro 545 ao Atualizar o Arquivo de Pedidos 02!',0,['0'],0);
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADP02S set P2SCODEMP=0'+IntToStr(iif(pcodemp>100,pcodemp-100,100+pcodemp))
                  +' where P2SCODEMP=0'+Floattostr(pcodemp)
                  +' and P2SLOTSEQ=0'+FloatToStr(plotseq)
                  +' and P2SCHAVE=0'+FloattoStr(pchave)
                  +' and P2SORDEM=0'+FloattoStr(pordem));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   verteclado(0);
   fmensagem('Erro 545 ao Atualizar o Arquivo de Pedidos 02!',0,['0'],0);
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADP01V set P1VCODEMP=0'+IntToStr(iif(pcodemp>100,pcodemp-100,100+pcodemp))
                  +' where P1VCODEMP=0'+FloatToStr(pcodemp)
                  +' and P1VLOTSEQ=0'+FloatToStr(plotseq)
                  +' and P1VCHAVE=0'+FloatToStr(pchave)
                  +' and P1VORDEM=0'+FloatToStr(pordem));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   verteclado(0);
   fmensagem('Erro 5585 ao Atualizar o Arquivo de Pedidos 02!',0,['0'],0);
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADP02D set P2DCODEMP=0'+IntToStr(iif(pcodemp>100,pcodemp-100,100+pcodemp))
                  +' where P2DCODEMP=0'+FloatToStr(pcodemp)
                  +' and P2DLOTSEQ=0'+FloatTostr(plotseq)
                  +' and P2DCHAVE=0'+FloatToStr(pchave)
                  +' and P2DORDEM=0'+FloatToStr(pordem));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   verteclado(0);
   fmensagem('Erro 573 ao Atualizar o Arquivo de Pedidos 02d!',0,['0'],0);
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADPFP set PFPCODEMP=0'+IntToStr(iif(pcodemp>100,pcodemp-100,100+pcodemp))
                  +' where PFPCODEMP=0'+FloatToStr(pcodemp)
                  +' and PFPLOTSEQ=0'+FloatTostr(plotseq)
                  +' and PFPCHAVE=0'+FloatToStr(pchave)
//                  +' and PFPORDEM=0'+FloatToStr(pOrdem)
                  );
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   verteclado(0);
   fmensagem('Erro 6893 ao Atualizar o Arquivo de Pedidos CADPFP!',0,['0'],0);
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete CADCSF where CFCODEMP=0'+IntToStr(iif(pcodemp>100,pcodemp-100,100+pcodemp))
                  +' and CFCHAVEP=0'+FloatToStr(pchave));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   verteclado(0);
   fmensagem('Erro 582 ao Atualizar o Arquivo de Cupom Fiscal!',0,['0'],0);
   end;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADCSF set CFCODEMP=0'+IntToStr(iif(pcodemp>100,pcodemp-100,100+pcodemp))
                  +' where CFCODEMP=0'+FloatToStr(pcodemp)
                  +' and CFCHAVEP=0'+FloatToStr(pchave));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   verteclado(0);
   fmensagem('Erro 596 ao Atualizar o Arquivo de Cupom Fiscal!',0,['0'],0);
   end;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADCON02 set C02CODEMP_PED=0'+IntToStr(iif(pcodemp>100,pcodemp-100,100+pcodemp))
                      +' where C02CODEMP_PED=0'+FloatToStr(Pcodemp)
                      +' and C02LOTSEQ_PED=0'+FloattoStr(Plotseq)
                      +' and C02CHAVE_PED=0'+FloatToStr(Pchave));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   verteclado(0);
   fmensagem('Erro ao Atualizar o arquivo de conhecimento!',0,['0'],0);
   end;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADCON03 set C03CODEMP_PED=0'+IntToStr(iif(pcodemp>100,pcodemp-100,100+pcodemp))
                      +' where C03CODEMP_PED=0'+FloatToStr(Pcodemp)
                      +' and C03LOTSEQ_PED=0'+FloattoStr(Plotseq)
                      +' and C03CHAVE_PED=0'+FloatToStr(Pchave));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   verteclado(0);
   fmensagem('Erro ao Atualizar o arquivo de conhecimento!',0,['0'],0);
   end;

{
query_exe.Close;
query_exe.SQL.clear;
query_exe.SQL.Add('Update CADDAR set CRCODEMP=0'+IntToStr(iif(pcodemp>100,pcodemp-100,100+pcodemp))
                  +' WHERE CRNPED=:CHAVE '
                  +' and CRORDEM=:ORDEM '
                  +' and CRCODEMP=:CODEMP '
                  +' and CRLOTSEQ_CP=:LOTSEQ ');
query_exe.ParamByName('CODEMP').Value:=pcodemp;
query_exe.ParamByName('ORDEM').Value:=pOrdem;
query_exe.ParamByName('CHAVE').Value:=pChave;
query_exe.ParamByName('LOTSEQ').Value:=pLotSeq;
try
   query_exe.ExecSQL;
   fdm1StartCommit;
except
   verteclado(0);
   fmensagem('Erro ao Atualizar o arquivo de conhecimento!',0,['0'],0);
   end;


}

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADP01 set P1CODEMP=0'+IntToStr(iif(pcodemp>100,pcodemp-100,100+pcodemp))
                  +' where P1CODEMP=0'+Floattostr(pcodemp)
                  +' and P1LOTSEQ=0'+FloatToStr(plotseq)
                  +' and P1CHAVE=0'+FloattoStr(pchave)
                  +' and P1ORDEM=0'+FloattoStr(pOrdem));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   verteclado(0);
   fmensagem('Erro 758 ao Atualizar o Arquivo de Pedidos 01!',0,['0'],0);
   end;



result:=true;


end;

procedure TFrm_Cancelar_Fechamento.bbatuconsClick(Sender: TObject);
begin
if trim(CONTEUDO.Text)<>'' then
   begin
   if CB_PESQ.ItemIndex=0 then
      DM2.Tb_Ped01.Locate('P1CHAVE',fsonumero(CONTEUDO.Text),[LoPartialKey,LoCaseInsensitive])
   else if CB_PESQ.ItemIndex=1 then
      DM2.Tb_Ped01.Locate('P1ORDEM',fsonumero(CONTEUDO.Text),[LoPartialKey,LoCaseInsensitive])
   else if CB_PESQ.ItemIndex=2 then
      begin
      try
         mcinst4:=FormatDatetime(fdt2, StrtoDate(CONTEUDO.Text));
         DM2.Tb_Ped01.Locate('P1DATAP',StrtoDate(CONTEUDO.Text),[LoPartialKey,LoCaseInsensitive]);
      except
         fmensagem('Favor Digitar uma data valida no formato dd/mm/yyyy inclusive com as barras',0,['0'],0);
         end;
      end
   else if CB_PESQ.ItemIndex=3 then
      DM2.Tb_Ped01.Locate('P1CODCCLI',fsonumero(CONTEUDO.Text),[LoPartialKey,LoCaseInsensitive])
   else if CB_PESQ.ItemIndex=4 then
      DM2.Tb_Ped01.Locate('CRAZAO',CONTEUDO.Text,[LoPartialKey,LoCaseInsensitive])
   else if CB_PESQ.ItemIndex=5 then
      DM2.Tb_Ped01.Locate('P1TOTALL',ValFloat(CONTEUDO.Text),[LoPartialKey,LoCaseInsensitive]);
   end;

end;

end.

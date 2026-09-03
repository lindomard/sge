unit S_Ped_TrocaMer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB, DBTables,
  RxMemDS, CurrEdit, Mask, ToolEdit, Menus, S_Ped_02,S_PedCli, S_SelEmp,s_lerarq_geral;

type
  TFrm_Ped_TrocaMer = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edt_chaveped: TEdit;
    sbn_pesqped: TSpeedButton;
    Label2: TLabel;
    edt_datap: TEdit;
    Label3: TLabel;
    edt_totall: TEdit;
    Label4: TLabel;
    edt_razao: TEdit;
    Label5: TLabel;
    memo_endereco: TMemo;
    gb_mercadorias: TGroupBox;
    gb_substituicoes: TGroupBox;
    Panel_rodape: TPanel;
    bbEfetuar: TBitBtn;
    bbTrocasAnt: TBitBtn;
    bbSair: TBitBtn;
    Qr_Ped_Ori: TQuery;
    DBGrid_ped_ori: TDBGrid;
    DBGrid_sub: TDBGrid;
    Src_Ped_Ori: TDataSource;
    mem_ped_sub: TRxMemoryData;
    Src_Ped_Sub: TDataSource;
    mem_ped_subSUB_ITEM: TFloatField;
    mem_ped_subSUB_CODPRO: TFloatField;
    mem_ped_subSUB_LOTE: TStringField;
    mem_ped_subSUB_DTVCTO: TDateTimeField;
    mem_ped_subSUB_PRECO_UNI: TFloatField;
    mem_ped_subSUB_DESC01: TFloatField;
    mem_ped_subSUB_DESC02: TFloatField;
    mem_ped_subSUB_DESC03: TFloatField;
    mem_ped_subSUB_DESCFIN: TFloatField;
    mem_ped_subSUB_QTD: TFloatField;
    mem_ped_subSUB_TOTAL: TFloatField;
    Qr_Ped_OriP2ITEM: TFloatField;
    Qr_Ped_OriP2CODPRO: TFloatField;
    Qr_Ped_OriP2LOTE: TStringField;
    Qr_Ped_OriP2DTVCTO: TDateTimeField;
    Qr_Ped_OriP2PRECO: TFloatField;
    Qr_Ped_OriP2QTD: TFloatField;
    Qr_Ped_OriP2DESC1: TFloatField;
    Qr_Ped_OriP2DESC2: TFloatField;
    Qr_Ped_OriP2DESC3: TFloatField;
    Qr_Ped_OriP2PDESCF: TFloatField;
    Qr_Ped_OriP2TOTLIQ: TFloatField;
    Qr_Ped_OriPDNOME: TStringField;
    Qr_Ped_OriPDMARCA: TStringField;
    Qr_Ped_OriPDUND: TStringField;
    Panel1: TPanel;
    lbl_codpro: TStaticText;
    lbl_lote: TStaticText;
    lbl_dtvcto: TStaticText;
    lbl_descricao: TStaticText;
    lbl_quantidade: TStaticText;
    lbl_desc1: TStaticText;
    lbl_desc2: TStaticText;
    lbl_desc3: TStaticText;
    lbl_descfin: TStaticText;
    lbl_precounitario: TStaticText;
    lbl_total: TStaticText;
    lbl_und: TStaticText;
    Qr_Ped_OriP2CODEMP: TFloatField;
    Qr_Ped_OriP2CHAVE: TFloatField;
    Qr_Ped_OriP2ORDEM: TFloatField;
    bbAplicar: TBitBtn;
    Qr_Ped01: TQuery;
    Qr_Ped01TOTLIQ: TFloatField;
    Qr_Ped01P1CODCLI: TFloatField;
    Qr_Ped01P1CODVEN: TFloatField;
    Qr_Ped01P1DATAP: TDateTimeField;
    Qr_Ped01P1CHAVE: TFloatField;
    Qr_Ped01P1LOTSEQ: TFloatField;
    Qr_Ped01CRAZAO: TStringField;
    Qr_Ped01CDENOM: TStringField;
    Qr_Ped01CLOG: TStringField;
    Qr_Ped01CBAIRRO: TStringField;
    Qr_Ped01CCIDADE: TStringField;
    Qr_Ped01CUF: TStringField;
    Qr_Ped_OriP2LOTSEQ: TFloatField;
    edt_codproduto: TComboEdit;
    edt_lote: TComboEdit;
    edt_descricao: TEdit;
    edt_und: TEdit;
    edt_quantidade: TCurrencyEdit;
    edt_desc1: TCurrencyEdit;
    edt_desc2: TCurrencyEdit;
    edt_desc3: TCurrencyEdit;
    edt_descfin: TCurrencyEdit;
    edt_precounitario: TCurrencyEdit;
    edt_total: TCurrencyEdit;
    edt_dtvcto: TMaskEdit;
    bbGravarItem: TBitBtn;
    mem_ped_subSUB_NOMPRO: TStringField;
    mem_ped_subSUB_MARCAPRO: TStringField;
    mem_ped_subSUB_UNDPRO: TStringField;
    pop_grid: TPopupMenu;
    ExluirItem1: TMenuItem;
    mem_ped_subSUB_CODPRO_ORI: TFloatField;
    mem_ped_subSUB_LOTE_ORI: TStringField;
    mem_ped_subSUB_DTVCTO_ORI: TDateTimeField;
    mem_ped_subSUB_PRECO_ORI: TFloatField;
    mem_ped_subSUB_QTD_ORI: TFloatField;
    bbCancelar: TBitBtn;
    Qr_Ped01P1SITPED: TFloatField;
    Qr_Ped01P1STATUS: TFloatField;
    Qr_Ped01P1EMIDOC: TFloatField;
    procedure sbn_pesqpedClick(Sender: TObject);
    procedure edt_chavepedExit(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure Src_Ped_OriDataChange(Sender: TObject; Field: TField);
    procedure mem_ped_subFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edt_codprodutoExit(Sender: TObject);
    procedure edt_precounitarioExit(Sender: TObject);
    procedure edt_codprodutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_loteExit(Sender: TObject);
    procedure edt_loteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_quantidadeExit(Sender: TObject);
    procedure edt_desc1Exit(Sender: TObject);
    procedure edt_totalEnter(Sender: TObject);
    procedure bbGravarItemClick(Sender: TObject);
    procedure DBGrid_subDblClick(Sender: TObject);
    procedure ExluirItem1Click(Sender: TObject);
    procedure edt_quantidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbEfetuarClick(Sender: TObject);
    procedure bbTrocasAntClick(Sender: TObject);
    procedure edt_chavepedEnter(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function fAtualiza(pTipo: Integer): Boolean;
    function fPreparaItens(pTipo: Integer): Boolean;

  public
    { Public declarations }
     mTro_Chave_Ped: Real;
     mTro_Codemp_ped: Real;
     mTro_Lotseq_ped: Real;

     mFiltro_Codpro: Real;
     mFiltro_Lote  :String;
     mOper_Item_TrocaMer: Integer;

     mPosReg_Prod_TrocaMer: TBookmark;
     Pedido_02_TrocaMer: Tfrm_ped_02;
     Form_PedCli_Ped_TrocaMer: TFrm_PedCli;
     Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_Ped_TrocaMer: TFrm_Ped_TrocaMer;

implementation

uses  Func, S_DM1, lerarq, S_DM4, func_excecoes, Func2,
  S_ConsLot, S_Ped_TrocaMer_Efetivadas;

{$R *.dfm}

procedure TFrm_Ped_TrocaMer.sbn_pesqpedClick(Sender: TObject);
begin
if Form_PedCli_Ped_TrocaMer=nil then
   Application.CreateForm(TFrm_PedCli, Form_PedCli_Ped_TrocaMer)
else
   begin
   Form_PedCli_Ped_TrocaMer.Free;
   Form_PedCli_Ped_TrocaMer := nil;
   Application.CreateForm(TFrm_PedCli, Form_PedCli_Ped_TrocaMer);
   end;
Form_PedCli_Ped_TrocaMer.ori_pedcli:='frm_ped_trocamer';
Form_PedCli_Ped_TrocaMer.ShowModal;
mTro_Chave_Ped := ValFloat(Form_PedCli_Ped_TrocaMer.chave.Text);
if mTro_Chave_Ped=0 then
   exit;

edt_chaveped.Text          := Form_PedCli_Ped_TrocaMer.chave.Text;
mTro_Codemp_ped            := Form_PedCli_Ped_TrocaMer.Tb_PedP1CODEMP.AsFloat;
mTro_Lotseq_ped            := Form_PedCli_Ped_TrocaMer.Tb_PedP1LOTSEQ.AsFloat;
Form_PedCli_Ped_TrocaMer.Free;
Form_PedCli_Ped_TrocaMer:=nil;
edt_chavepedExit(Self);
end;

procedure TFrm_Ped_TrocaMer.edt_chavepedExit(Sender: TObject);
begin
edt_chaveped.Text:=fdeixanum2(edt_chaveped.Text);
if trim(edt_chaveped.Text)='' then
   exit;
if DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');

Qr_Ped01.close;
Qr_Ped01.SQL.Clear;
Qr_Ped01.SQL.Add('Select sum(P1TOTALL) as TOTLIQ '
                  +',P1CODCLI,P1CODVEN,P1DATAP '
                  +',P1CHAVE,P1LOTSEQ,max(P1SITPED) as P1SITPED '
                  +',max(P1STATUS) as P1STATUS '
                  +',max(P1EMIDOC) as P1EMIDOC '
                  +',CRAZAO,CDENOM,CLOG,CBAIRRO,CCIDADE,CUF '
                  +' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                  +' P1STATUS<9 '
                  );
Qr_Ped01.SQL.add(' and P1CHAVE=0'+edt_chaveped.Text);

Qr_Ped01.SQL.add(fla_EmpBaixaAlta(0,'CADPED',' and ',codemp, 'P1CODEMP',''));


Qr_Ped01.SQL.Add('Group by P1CODCLI,P1CODVEN,P1DATAP '
                  +',P1CHAVE,P1LOTSEQ '
                  +',CRAZAO,CDENOM,CLOG,CBAIRRO,CCIDADE,CUF ');
try
   Qr_Ped01.Open;
except
   Qr_Ped01.SQL.savetofile('c:\sql.txt');
   exit;
   end;
if Qr_Ped01.IsEmpty then
   begin
   fmensagem('Pedido não Encontrado!',0,['0'],0);
   exit;
   end;

if Qr_Ped01P1EMIDOC.Value > 0 then
   begin
   fMensagem('Pedido ja foi Emitido Documento, Nao Pode Ser Alterado!',0,['0'],0);
   exit;
   end;

if Qr_Ped01P1SITPED.AsInteger>0 then
   begin
   mcinst := 'Este Pedido pode Estar Sendo Alterado em Outra Estação,'+#13
            +'Caso não Esteja entre na opção: SISTEMA->DESBLOQUEIA PEDIDO '+#13
            +'e desbloqueia o mesmo';
            fMensagem(mcinst,0,['0'],0);
            exit;
   end;


edt_datap.Text :=FormatDatetime(fdt2, Qr_Ped01.fieldbyName('P1DATAP').AsDateTime);
edt_totall.Text:=FormatFloat(mcasas, Qr_Ped01.fieldbyName('TOTLIQ').AsFloat);
edt_razao.Text :=Qr_Ped01.fieldbyName('CRAZAO').AsString+' - '
                 +Qr_Ped01.fieldbyName('CDENOM').AsString;

memo_endereco.Lines.Clear;
memo_endereco.Lines.Add(Qr_Ped01.fieldbyName('CLOG').AsString+' '
                 +Qr_Ped01.fieldbyName('CBAIRRO').AsString
                 +' '+Qr_Ped01.fieldbyName('CCIDADE').AsString
                 +'-'+Qr_Ped01.fieldbyName('CUF').AsString);
bbAplicar.Enabled:=true;

end;

procedure TFrm_Ped_TrocaMer.bbAplicarClick(Sender: TObject);
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');

if DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('P2CODEMP',Form_SelEmp.CLB_EMPRESAS);

Qr_Ped_Ori.Close;
Qr_Ped_Ori.SQL.Clear;
Qr_Ped_Ori.SQL.Add('Select P2LOTSEQ,P2ITEM,P2CODEMP,P2CHAVE,P2ORDEM,P2ITEM,P2CODPRO,P2LOTE,P2DTVCTO,P2PRECO,P2QTD,P2DESC1 '
                  +' ,P2DESC2,P2DESC3,P2PDESCF,P2TOTLIQ,PDNOME,PDMARCA,PDUND '
                  +'  from CADP02'+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                  +' P2STATUS<9 '
                  );

Qr_Ped_Ori.SQL.add(fla_EmpBaixaAlta(0,'CADPED',' and ',codemp,'P2CODEMP',''));

Qr_Ped_Ori.SQL.Add(' and P2LOTSEQ=0'+Qr_Ped01P1LOTSEQ.AsString);
Qr_Ped_Ori.SQL.Add(' and P2CHAVE=0'+Qr_Ped01P1CHAVE.AsString);
try
   Qr_Ped_Ori.Open;
except
   Qr_Ped_Ori.SQL.savetofile('c:\sql.txt');
   end;

if not Qr_Ped_Ori.IsEmpty then
   begin
   Pedido_02_TrocaMer.mPd_Oper_Ped:=3;
   Pedido_02_TrocaMer.mPd_LotSeq:=Qr_Ped01P1LOTSEQ.AsInteger;
   Pedido_02_TrocaMer.mPd_Chave :=Qr_Ped01P1CHAVE.AsInteger;
   Pedido_02_TrocaMer.btn_localizarClick(self);
   Pedido_02_TrocaMer.mPd_FaturandoPedido:=true;
   Pedido_02_TrocaMer.btn_alterarClick(self);
   Pedido_02_TrocaMer.mPd_FaturandoPedido:=false;
   bbEfetuar.Enabled:=true;
   bbCancelar.Enabled:=true;
   end;
mem_ped_sub.Close;
mem_ped_sub.Open;

end;

procedure TFrm_Ped_TrocaMer.Src_Ped_OriDataChange(Sender: TObject;
  Field: TField);
begin
if not Qr_Ped_OriP2CODPRO.IsNull then
   begin
   if (not mem_ped_sub.Active) or (mem_ped_subSUB_CODPRO.AsFloat<>Qr_Ped_OriP2CODPRO.AsFloat) then
      begin
      fAtualiza(0);
      end;
   end;
end;
function TFrm_Ped_TrocaMer.fAtualiza(pTipo: Integer): Boolean;
begin
{
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADPRO','PDCODEMP','P2TRO_CODEMP','PDCODPRO','P2TRO_CODPRO');

DM4.Qr_Ped02_Trocas.Close;
DM4.Qr_Ped02_Trocas.SQL.clear;
DM4.Qr_Ped02_Trocas.SQL.Add('Select P2TRO_CODEMP '
                          +', P2TRO_QTD_ENTRA '
                          +', P2TRO_QTD_SAIDA '
                          +', P2TRO_PCOUNI_ENTRA '
                          +', P2TRO_PCOUNI_SAIDA '
                          +', P2TRO_DTVCTO_ENTRA '
                          +', P2TRO_DTVCTO_SAIDA '
                          +',P2TRO_ITEM '
                          +',P2TRO_CODPRO_ENTRA '
                          +',P2TRO_CODPRO_SAIDA '
                          +',P2TRO_LOTE_ENTRA '
                          +',P2TRO_LOTE_SAIDA '
                          +',PDNOME,PDUND '
                  +'  from CADP02_TROCAS'+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                  +fla_EmpBaixaAlta(0,codemp,'P2TRO_CODEMP','')
                  );
DM4.Qr_Ped02_Trocas.SQL.Add(' and P2TRO_LOTSEQ=0'+Qr_Ped_OriP2LOTSEQ.AsString);
DM4.Qr_Ped02_Trocas.SQL.Add(' and P2TRO_CHAVE=0'+Qr_Ped_OriP2CHAVE.AsString);

DM4.Qr_Ped02_Trocas.SQL.Add(' and P2TRO_CODPRO_ENTRA=:CODPRO'+Qr_Ped_OriP2CHAVE.AsString);

try
   DM4.Qr_Ped02_Trocas.open;
   result:=true;
except
   DM4.Qr_Ped02_Trocas.SQL.SaveToFile('C:\SQL.TXT');
   result:=false;
   end;

}
  if not mem_ped_sub.Active then
     mem_ped_sub.open;

  mFiltro_Codpro:=Qr_Ped_OriP2CODPRO.Value;
  mFiltro_Lote  :=Qr_Ped_OriP2LOTE.AsString;

  mem_ped_sub.Filtered:=true;
  mem_ped_sub.Refresh;
  


end;

procedure TFrm_Ped_TrocaMer.mem_ped_subFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
if (mFiltro_Codpro=mem_ped_subSUB_CODPRO_ORI.AsFloat)
   and (mFiltro_Lote=mem_ped_subSUB_LOTE_ORI.AsString) then
   Accept:=true
else
   Accept:=false;

end;

procedure TFrm_Ped_TrocaMer.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Ped_TrocaMer.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
if Pedido_02_TrocaMer=nil then
   Application.CreateForm(TFrm_Ped_02, Pedido_02_TrocaMer);

Qr_Ped_OriP2PRECO.DisplayFormat:=mcasaspu;
Qr_Ped_OriP2QTD.DisplayFormat  :=mcasqtd;
Qr_Ped_OriP2DESC1.DisplayFormat:=mcasas;
Qr_Ped_OriP2DESC2.DisplayFormat:=mcasas;
Qr_Ped_OriP2DESC3.DisplayFormat:=mcasas;

Qr_Ped_OriP2PDESCF.DisplayFormat:=mcasas;
Qr_Ped_OriP2TOTLIQ.DisplayFormat:=mcasas;

mem_ped_subSUB_PRECO_UNI.DisplayFormat:=mcasaspu;
mem_ped_subSUB_QTD.DisplayFormat  :=mcasqtd;
mem_ped_subSUB_DESC01.DisplayFormat:=mcasas;
mem_ped_subSUB_DESC02.DisplayFormat:=mcasas;
mem_ped_subSUB_DESC03.DisplayFormat:=mcasas;

mem_ped_subSUB_DESCFIN.DisplayFormat:=mcasas;
mem_ped_subSUB_TOTAL.DisplayFormat:=mcasas;
fPreparaItens(0);

end;

procedure TFrm_Ped_TrocaMer.edt_codprodutoExit(Sender: TObject);
begin
//pTipo: Integer = 0-Inclusao 1-Alteraçao
//pValRest = 0-Valida Restricoes 1-Nao valida
//plibProm=0-Promocao somente de acordo com parametros estabelicidos
//         1-libera promocao idenpendente de parametros minimos
// pLocal=0-codpro 1-Lote 2-Dtvcto 3-Gravando;

if (Trim(edt_codproduto.Text) ='') and ( (edt_lote.visible and edt_lote.focused)
   or ( ((not edt_lote.visible) or (edt_lote.TabStop=false)) and (edt_quantidade.focused)) )   then
   begin
   edt_codproduto.Setfocus;
   exit;
   end;
if Pedido_02_TrocaMer.mpd_ant_codpro>0 then
   begin
   if ((Pedido_02_TrocaMer.mpd_ant_codpro<>fsonumero(edt_codproduto.Text)) and (Log_TipoLote=1)) then
      begin
      edt_lote.Text:='';
      edt_dtvcto.Text:='/  /';
      end;
   end;



if Trim(edt_codproduto.Text) <> '' then
   begin
   if (Valint(copy(mpseg,4,2))=2) and (Valint(copy(DM1.Tb_PargerPSEGMENTO.Value,4,2))>0)
      or (DM1.Tb_PargerPPCOGRA.Value=1) then  // Grades cores tamanhos
      begin
      if (DM1.Tb_PargerPPCOGRA.Value=1) then
         begin
         if (Length(edt_codproduto.Text)>9) then
            begin
            edt_lote.Text  :=UpperCase(copy(edt_codproduto.Text,5,length(edt_codproduto.Text)-4));
            edt_codproduto.Text:=copy(edt_codproduto.Text,1,4);
            end;
         end
      else
         begin
         edt_lote.Text:=copy(Trim(edt_codproduto.Text),length(Trim(edt_codproduto.Text))-1,2);
         edt_codproduto.Text:=copy(Trim(edt_codproduto.Text),1,length(Trim(edt_codproduto.Text))-2);
         end;
      end;



   if not Pedido_02_TrocaMer.fDadosPro(0,Pedido_02_TrocaMer.mPd_Oper_item,0,IIF(Pedido_02_TrocaMer.cb_leitor.checked = True,1,0),0,0,Pedido_02_TrocaMer.mpd_pvppori,Pedido_02_TrocaMer.cb_tipopreco.ItemIndex
                   ,Pedido_02_TrocaMer.CB_TPP.ItemIndex, edt_codproduto.Text,
                    edt_lote.Text,Pedido_02_TrocaMer.cb_tabelavenda.Text,
                    Pedido_02_TrocaMer.edt_codvenda.Text,'1',pDatanula,
                    edt_quantidade.Value,ValFloat(Pedido_02_TrocaMer.edt_codvendedor02.text),
                    valFloat(Pedido_02_TrocaMer.edt_codvendedor03.Text),0,True, Pedido_02_TrocaMer.cb_sepamb.Checked) then
      begin
      edt_codproduto.SetFocus;
      end
   else
      begin
      edt_descricao.Text       := pRet_NomePro;
      edt_und.Text             := pRet_UndPro;
      edt_codproduto.Text      := FloatToStr(pRet_Codpro);

      if fSonumero(edt_codproduto.Text)=0 then
         begin
         edt_codproduto.SetFocus;
         exit;
         end;

      if (Pedido_02_TrocaMer.mPd_Venda_Devol=1) and (not Pedido_02_TrocaMer.CB_PEDORI.Checked) and (not Pedido_02_TrocaMer.Tb_DevCli.IsEmpty) then
          begin
          if Trim(edt_lote.Text)='' then
             begin
             if Pedido_02_TrocaMer.Tb_DevCli.Locate('P2CODPRO',edt_codproduto.Text,[]) then
                begin
                pRet_Preco_Unit:=Pedido_02_TrocaMer.Tb_DevCliP2PRECO.AsFloat;
                pRet_DescI01   :=Pedido_02_TrocaMer.Tb_DevCliP2DESC1.AsFloat;
                pRet_DescI02   :=Pedido_02_TrocaMer.Tb_DevCliP2DESC2.AsFloat;
                pRet_DescI03   :=Pedido_02_TrocaMer.Tb_DevCliP2DESC3.AsFloat;
                pRet_DescFin   :=Pedido_02_TrocaMer.Tb_DevCliP2PDESCF.AsFloat;
                pRet_PComV01   :=Pedido_02_TrocaMer.Tb_DevCliP2PCOMIS.AsFloat;
                pRet_PComV02   :=Pedido_02_TrocaMer.Tb_DevCliP2PCOM02.AsFloat;
                pRet_PComV03   :=Pedido_02_TrocaMer.Tb_DevCliP2PCOM03.AsFloat;
                pRet_PComV04   :=0;
                if trim(Pedido_02_TrocaMer.Tb_DevCliP2LOTE.AsString)<>'' then
                   edt_lote.Text:=Pedido_02_TrocaMer.Tb_DevCliP2LOTE.AsString;
                if Pedido_02_TrocaMer.Tb_DevCliP2DTVCTO.AsDateTime>pdatanula then
                   edt_dtvcto.Text:=FormatDatetime(fdt2, Pedido_02_TrocaMer.Tb_DevCliP2DTVCTO.AsDateTime);
                end
             else
                begin
                fmensagem('Produto não Encontrado no Pedido de Origem!',0,['0'],0);
                edt_codproduto.SetFocus;
                exit;
                end
             end
          else if Pedido_02_TrocaMer.Tb_DevCli.Locate('P2CODPRO;P2LOTE',
                    VarArrayOf([edt_codproduto.Text,edt_lote.Text]),[]) then
             begin
             pRet_Preco_Unit:=Pedido_02_TrocaMer.Tb_DevCliP2PRECO.AsFloat;
             pRet_DescI01   :=Pedido_02_TrocaMer.Tb_DevCliP2DESC1.AsFloat;
             pRet_DescI02   :=Pedido_02_TrocaMer.Tb_DevCliP2DESC2.AsFloat;
             pRet_DescI03   :=Pedido_02_TrocaMer.Tb_DevCliP2DESC3.AsFloat;
             pRet_DescFin   :=Pedido_02_TrocaMer.Tb_DevCliP2PDESCF.AsFloat;
             pRet_PComV01   :=Pedido_02_TrocaMer.Tb_DevCliP2PCOMIS.AsFloat;
             pRet_PComV02   :=Pedido_02_TrocaMer.Tb_DevCliP2PCOM02.AsFloat;
             pRet_PComV03   :=Pedido_02_TrocaMer.Tb_DevCliP2PCOM03.AsFloat;
             pRet_PComV04   :=0;
             if Pedido_02_TrocaMer.Tb_DevCliP2DTVCTO.AsDateTime>pdatanula then
                edt_dtvcto.Text:=FormatDatetime(fdt2, Pedido_02_TrocaMer.Tb_DevCliP2DTVCTO.AsDateTime);
             end
          else
             begin
             fmensagem('Produto não Encontrado no Pedido de Origem!',0,['0'],0);
             Pedido_02_TrocaMer.edt_codproduto.SetFocus;
             exit;
             end;
          Pedido_02_TrocaMer.fMaiorDevol(1,edt_codproduto.Text,edt_lote.Text,edt_dtvcto.Text);
          end;
      if (mOper_Item_TrocaMer=1) and (mem_ped_subSUB_CODPRO.AsFloat<>pRet_CodPro) then
         edt_precounitario.Value  := pRet_Preco_Unit
      else if ((Pedido_02_TrocaMer.cb_tipopreco.ItemIndex=2) or
            (Pedido_02_TrocaMer.cb_tipopedido.ItemIndex=7))  and
            ((Pedido_02_TrocaMer.mpd_ant_codpro<>0) and (Pedido_02_TrocaMer.mpd_ant_codpro<>pRet_codpro)) then
         edt_precounitario.Value  := pRet_Preco_Unit
      else if Pedido_02_TrocaMer.cb_tipopreco.itemindex<>2 then
         edt_precounitario.Value  := pRet_Preco_Unit
      else if Pedido_02_TrocaMer.edt_precounitario.Value=0 then
         edt_precounitario.Value  := pRet_Preco_Unit;
      edt_codproduto.Text      := FloatToStr(pRet_Codpro);
      if (Pedido_02_TrocaMer.cb_tipopreco.ItemIndex=3) then
         begin
         if ((Pedido_02_TrocaMer.mpd_ant_codpro=0) or (Pedido_02_TrocaMer.mpd_ant_codpro<>pRet_codpro)) then
            begin
            edt_desc1.Value          := pRet_DescI01;
            edt_desc2.Value          := pRet_DescI02;
            edt_desc3.Value          := pRet_DescI03;
            edt_descfin.Value        := pRet_DescFin;
//            edt_comissao.Value       := pRet_PComV01;
            end;
         edt_precounitarioExit(self);
         end
      else
         begin
         edt_desc1.Value          := pRet_DescI01;
         edt_desc2.Value          := pRet_DescI02;
         edt_desc3.Value          := pRet_DescI03;
         edt_descfin.Value        := pRet_DescFin;
//         edt_comissao.Value       := pRet_PComV01;
         end;
      end;
   end;

end;

procedure TFrm_Ped_TrocaMer.edt_precounitarioExit(Sender: TObject);
begin

// inicio
if (not DM1.Tb_Pro.Active) or
   (valfloat(edt_codproduto.Text)<>DM1.Tb_ProPDCODPRO.AsFloat) then
   flcadpro(1,0,0,trim(edt_codproduto.Text));

if (Pedido_02_TrocaMer.cb_tipopreco.ItemIndex=3)  then
   edt_precounitario.Value:=Pedido_02_TrocaMer.fbuscarPreco_novo(0,fSonumero(edt_codproduto.Text),
   edt_lote.Text,Pedido_02_TrocaMer.cb_tipopreco.ItemIndex,Pedido_02_TrocaMer.CB_TPP.ItemIndex,edt_desc1.Value,
   edt_desc2.Value,edt_desc3.Value,true,
   Pedido_02_TrocaMer.cb_tabelavenda.Text,Pedido_02_TrocaMer.edt_codvenda.Text,
   edt_quantidade.Value);

 edt_total.Value := Arredonda(( edt_precounitario.Value * edt_quantidade.Value), DM1.Tb_PargerPCASAS.Asinteger) ;

if (Pedido_02_TrocaMer.mPd_Venda_Devol=1) and (not Pedido_02_TrocaMer.CB_PEDORI.Checked) and (Pedido_02_TrocaMer.Tb_DevCli.Active) then
   begin
   if (fSonumero(edt_codproduto.Text)<>mem_ped_subSUB_CODPRO.AsFloat) then
//   or   (edt_lote.Text<>QryItem_NotaP2LOTE.AsString) then
      begin
      Pedido_02_TrocaMer.Tb_DevCli.Locate('P2CODPRO',fSonumero(edt_codproduto.Text),[]);
      end;
   Pedido_02_TrocaMer.FCalculaItem(0 // tipo 0-Produtos 1-Servico
         ,Pedido_02_TrocaMer.cb_formace.ItemIndex // forma de conciliamento 0-quantidade 1-preco unitario
         ,DM1.Tb_ProPDLISTA.AsInteger // lista de produtos= 0-Inalterado 1-Positiva 2-negativo
         ,Pedido_02_TrocaMer.mPd_Venda_Devol // 0-para venda 1-devolucao
         ,Pedido_02_TrocaMer.cb_tipopreco.ItemIndex
         ,Pedido_02_TrocaMer.mPed0_CliConsFin // 0-nao 1-sim
         ,edt_quantidade.Value // Quantidade
         ,edt_precounitario.Value // preco unitario
         ,DM1.Tb_ProPDPMC.AsFloat // preco maximo consumidor
         ,DM1.Tb_ProPDPRECO1.AsFloat // preco de tabela da forma de pagamento
         ,DM1.Tb_Propcoven.AsFloat // preco de tabela da forma de pagamento
         ,ValFloat(Pedido_02_TrocaMer.edt_desconto01.Text)
         ,ValFloat(Pedido_02_TrocaMer.edt_desconto02.Text)
         ,edt_desc1.Value
         ,edt_desc2.Value
         ,edt_desc3.Value
         ,0 // desconto em valor do item
         ,DM1.Tb_ProPDIPI.AsFloat
         ,pRet_PComV01
         ,pRet_PComV02
         ,pRet_PComV03
         ,pRet_PComV04
         ,pRet_PComExtra // percentual de comissao extra
         ,pRet_DescFin
         ,valfloat(Pedido_02_TrocaMer.st_totliquido.Caption)
         ,valfloat(Pedido_02_TrocaMer.edt_valordesconto.Text)
         ,  Pedido_02_TrocaMer.mPd_TotDescRat+Pedido_02_TrocaMer.mPd_TotDescRat_101
         ,Pedido_02_TrocaMer.mPd_TotAcre+Pedido_02_TrocaMer.mPd_TotAcre_101
         ,Pedido_02_TrocaMer.mPd_TotAcreRat+Pedido_02_TrocaMer.mPd_TotAcreRat_101
         ,valfloat(Pedido_02_TrocaMer.edt_valorfrete.Text)
         ,Pedido_02_TrocaMer.mPd_TotFreteRat+Pedido_02_TrocaMer.mPd_TotFreteRat_101

         ,DM1.Tb_ProPDSIT.AsString
         ,DM1.Tb_ProPDSIT.AsString
         ,DM1.Tb_ProPDSIT.AsString
         ,DM1.Tb_ProPDTABICM.AsString
         ,DM1.Tb_ProPDREST.AsInteger
         ,DM1.Tb_ProPDRESTFOR.AsInteger
         ,DM1.Tb_ProPDRESTCON.AsInteger
         ,DM1.Tb_ProPDFRACAO.AsInteger
         ,iif(Pedido_02_TrocaMer.Tb_DevCliP2ALIQNR.AsFloat>0,Pedido_02_TrocaMer.Tb_DevCliP2ALIQNR.AsFloat,Pedido_02_TrocaMer.Tb_DevCliP2ALIQ.AsFloat) // aliquota do pedido de origem no caso de devolução
         ,Pedido_02_TrocaMer.Tb_DevCliP2REDUTICM.AsFloat // redutor de icmsa do pedido de origem no caso de devolução
         ,Pedido_02_TrocaMer.Tb_DevCliP2ALIPI.asfloat // ipi do pedido de origem no caso de devolução
         ,Pedido_02_TrocaMer.Tb_DevCliP2ST_ICMCRED.AsFloat // Situação Tributaria Icms Credito do pedido de origem no caso de devolução
         ,Pedido_02_TrocaMer.Tb_DevCliP2ST_ICMDEB.AsFloat // Icms Debito ST do pedido de origem no caso de devolução
         ,Pedido_02_TrocaMer.Tb_DevCliP2ST_IVA.AsFloat // IVA do pedido de origem no caso de devolução
         ,Pedido_02_TrocaMer.Tb_DevCliP2ST_REDUT.AsFloat // Redutor STdo pedido de origem no caso de devolução
         ,Pedido_02_TrocaMer.Tb_DevCliP2PCOMAX.AsFloat // PMC do pedido de origem no caso de devolução
         );
// termino

   end
else
   begin
   Pedido_02_TrocaMer.FCalculaItem(0 // tipo 0-Produtos 1-Servico
         ,Pedido_02_TrocaMer.cb_formace.ItemIndex // forma de conciliamento 0-quantidade 1-preco unitario
         ,DM1.Tb_ProPDLISTA.AsInteger // lista de produtos= 0-Inalterado 1-Positiva 2-negativo
         ,0 //Pedido_02_TrocaMer.mPd_Venda_Devol // 0-para venda 1-devolucao
         ,Pedido_02_TrocaMer.cb_tipopreco.ItemIndex
         ,Pedido_02_TrocaMer.mPed0_CliConsFin
         ,edt_quantidade.Value // quantidade
         ,edt_precounitario.Value // preco unitario
         ,DM1.Tb_ProPDPMC.AsFloat // preco maximo consumidor
         ,DM1.Tb_ProPDPRECO1.AsFloat // preco de tabela da forma de pagamento
         ,DM1.Tb_Propcoven.AsFloat // preco de tabela da forma de pagamento
         ,ValFloat(Pedido_02_TrocaMer.edt_desconto01.Text)
         ,ValFloat(Pedido_02_TrocaMer.edt_desconto02.Text)
         ,edt_desc1.Value
         ,edt_desc2.Value
         ,edt_desc3.Value
         ,0 // desconto em valor do item
         ,DM1.Tb_ProPDIPI.AsFloat
         ,pRet_PComV01
         ,pRet_PComV02
         ,pRet_PComV03
         ,pRet_PComV04
         ,pRet_PComExtra // percentual de comissao extra
         ,pRet_DescFin
         ,valfloat(Pedido_02_TrocaMer.st_totliquido.Caption)
         ,valfloat(Pedido_02_TrocaMer.edt_valordesconto.Text)
         ,  Pedido_02_TrocaMer.mPd_TotDescRat+Pedido_02_TrocaMer.mPd_TotDescRat_101
         ,Pedido_02_TrocaMer.mPd_TotAcre+Pedido_02_TrocaMer.mPd_TotAcre_101
         ,Pedido_02_TrocaMer.mPd_TotAcreRat+Pedido_02_TrocaMer.mPd_TotAcreRat_101
         ,valfloat(Pedido_02_TrocaMer.edt_valorfrete.Text)
         ,Pedido_02_TrocaMer.mPd_TotFreteRat+Pedido_02_TrocaMer.mPd_TotFreteRat_101

         ,DM1.Tb_ProPDSIT.AsString
         ,DM1.Tb_ProPDFIS_CST_ICMS_EST_CF.AsString
         ,DM1.Tb_ProPDFIS_ORIGEM.AsString
         ,DM1.Tb_ProPDTABICM.AsString
         ,DM1.Tb_ProPDREST.AsInteger
         ,DM1.Tb_ProPDRESTFOR.AsInteger
         ,DM1.Tb_ProPDRESTCON.AsInteger
         ,DM1.Tb_ProPDFRACAO.AsInteger
         ,0 // aliquota do pedido de origem no caso de devolução
         ,0 // redutor de icmsa do pedido de origem no caso de devolução
         ,0 // ipi do pedido de origem no caso de devolução
         ,0 // Situação Tributaria Icms Credito do pedido de origem no caso de devolução
         ,0 // Icms Debito ST do pedido de origem no caso de devolução
         ,0 // IVA do pedido de origem no caso de devolução
         ,0 // Redutor STdo pedido de origem no caso de devolução
         ,0 // PMC do pedido de origem no caso de devolução
         );
// termino
   end;


Pedido_02_TrocaMer.mRet0_DescM:=0;
if pRet_PCOFPG<>0 then
   begin
   Pedido_02_TrocaMer.mRet0_DescM:=Arredonda( (  (edt_quantidade.Value*pRet_PCOFPG) - edt_total.Value) ,4);
   Pedido_02_TrocaMer.mRet0_DescM:=Pedido_02_TrocaMer.mRet0_DescM+Pedido_02_TrocaMer.mRet0_TotDes;
   if Pedido_02_TrocaMer.mRet0_DescM<>0 then
      begin
      try
         Pedido_02_TrocaMer.mRet0_DescM:= (Pedido_02_TrocaMer.mRet0_DescM*100)/(edt_quantidade.Value*pRet_PCOFPG);
      except
         Pedido_02_TrocaMer.mRet0_DescM:=0;
         end;
      end
   else
      Pedido_02_TrocaMer.mRet0_DescM:=0;
   if Pedido_02_TrocaMer.cb_tipopreco.ItemIndex<>4 then
      begin
      if (DM4.Tb_Par01PDESCMP0.Value>0) and (DM1.Tb_PargerPTIPOVALDES.AsInteger<>1) then
         begin
         if Pedido_02_TrocaMer.mAceita_pergunta then
            begin
            if ( (Pedido_02_TrocaMer.mRet0_DescM-0.10)>DM4.Tb_Par01PDESCMP0.Value)
                and (not Pedido_02_TrocaMer.mPd_Venda_Devol=1) then
               begin
               Pedido_02_TrocaMer.mPd_CodResp_Senha:=fValidaSenha(iif(DM1.Tb_PargerPGRAVPEDBLOQ.asinteger=2,0,1),codusr,2,0,Pedido_02_TrocaMer.mPed_Cli_CodCli,0,0,0,'% Desconto maior que o permitido.'+#13
                                                                                    +'Desconto do Pedido: '+FormatFloat(mcasaspu, Pedido_02_TrocaMer.mRet0_DescM)+#13
                                                                                    +'Máximo Permitido: '+FormatFloat(mcasaspu, DM4.Tb_Par01PDESCMP0.Value)+#13
                                                                                    +'Para continuar digite a senha','');
               if Pedido_02_TrocaMer.mPd_CodResp_Senha=1 then
                  begin
                  edt_codproduto.SetFocus;
                  exit;
                  end;
               end;
            end;
         end;


      if (DM4.Tb_Par01PDESCMP0.Value>0) and (DM1.Tb_PargerPTIPOVALDES.AsInteger<>1) then
         begin
         if Pedido_02_TrocaMer.mAceita_pergunta then
            begin
             if ((Pedido_02_TrocaMer.mRet0_DescM-0.10)>DM4.Tb_Par01PDESCMP0.Value)
                 and (not Pedido_02_TrocaMer.mPd_Venda_Devol=1) then
                begin
                Pedido_02_TrocaMer.mPd_CodResp_Senha:=fValidaSenha(iif(DM1.Tb_PargerPGRAVPEDBLOQ.asinteger=2,0,1),codusr,2,0,Pedido_02_TrocaMer.mPed_Cli_CodCli,0,0,0,'% Desconto maior que o permitido.'+#13
                                                                                    +'Desconto do Pedido: '+FormatFloat(mcasaspu, Pedido_02_TrocaMer.mRet0_DescM)+#13
                                                                                    +'Máximo Permitido: '+FormatFloat(mcasaspu, DM4.Tb_Par01PDESCMP0.Value)+#13
                                                                                    +'Para continuar digite a senha','');
                if Pedido_02_TrocaMer.mPd_CodResp_Senha=1 then
                   begin
                   edt_codproduto.SetFocus;
                   exit;
                   end;
                end;
             end;
          end;
       end;
    end;
if (Pedido_02_TrocaMer.cb_tipopreco.ItemIndex=7) and (Arredonda(Pedido_02_TrocaMer.mRet0_DescM,2)<>Arredonda(edt_Desc1.Value,2))  then
   begin
   edt_desc1.Value:=0;
   edt_desc2.Value:=0;
   edt_desc3.Value:=0;
   end;
 if Pedido_02_TrocaMer.mpd_pvtc=7 then
    begin
     if (pRet_Promocao='') OR (pRet_PComV01=0)  then
        begin
        if flcadcomd2(Round(Pedido_02_TrocaMer.mRet0_DescM)) then
           begin
           pRet_PComV01:=DM1.Tb_ComDCDCOMIS.Value;
           if Pedido_02_TrocaMer.mPed_Ven_PCOMV02=0 then
              pRet_PComV02:=0
           else
              pRet_PComV02:=DM1.Tb_ComDCDCOMIS.Value;
           if Pedido_02_TrocaMer.mPed_Ven_PCOMV03=0 then
              pRet_PComV03:=0
           else
              pRet_PComV03:=DM1.Tb_ComDCDCOMIS.Value;

           if Pedido_02_TrocaMer.mPed_Ven_PCOMV04=0 then
              pRet_PComV04:=0
           else
              pRet_PComV04:=DM1.Tb_ComDCDCOMIS.Value;
           end
        else
           begin
           pRet_PComV01:=0;
           pRet_PComV02:=0;
           pRet_PComV03:=0;
           pRet_PComV04:=0;
           end;
        end;
    end;
if Pedido_02_TrocaMer.mpd_ajcomis=1 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select AJC_FATOR_INI,AJC_FATOR_TER, AJC_COMIS  from '
                     +' CADAJCOMIS  where ');
   DM1.Query1.SQL.add(fla_EmpBaixaAlta(0,'CADPV','',codemp,'AJC_CODEMP',' and '));
   DM1.Query1.SQL.Add(' AJC_FATOR_INI >='+mudavp(FloatToStr(Pedido_02_TrocaMer.mRet0_DescM*-1))
                     +' and AJC_FATOR_TER<='+mudavp(FloatToStr(Pedido_02_TrocaMer.mRet0_DescM*-1)));
   DM1.Query1.Open;

   if not DM1.Query1.IsEmpty then
      begin
      if pRet_PComV01<>0 then
         Pedido_02_TrocaMer.mRet0_vComv01:=
         Arredonda(
         pRet_PComV01+
         (pRet_PComV01*DM1.Query1.fieldbyName('AJC_COMIS').AsFloat/100)
         ,2);

      if pRet_PComExtra<>0 then
         pRet_PComExtra:=
         Arredonda(pRet_PComExtra+
         (pRet_PComExtra*DM1.Query1.fieldbyName('AJC_COMIS').AsFloat/100)
         ,2);


      if pRet_PComV02<>0 then
         pRet_PComV02:=
         Arredonda(pRet_PComV02+
         (pRet_PComV02*DM1.Query1.fieldbyName('AJC_COMIS').AsFloat/100)
         ,2);

      if pRet_PComV03<>0 then
         pRet_PComV03:=
         Arredonda(pRet_PComV03+
         (pRet_PComV03*DM1.Query1.fieldbyName('AJC_COMIS').AsFloat/100)
         ,2);
      end;
   end;
//edt_comissao.Value:=pRet_PComV01;


end;

procedure TFrm_Ped_TrocaMer.edt_codprodutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=27 then
   begin
   fPreparaItens(0);
   mOper_Item_TrocaMer:=0;
   end;

if (key=113) then
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      edt_codproduto.Text := fChamaPro(2,'Pedido_02_TrocaMer','')
   else if (valint(copy(mpseg,4,2))=2) then
      edt_codproduto.Text := fChamaPro(0,'Pedido_02_TrocaMer','')
   else
      edt_codproduto.Text:=fChamaPro(0,'Pedido_02_TrocaMer','');
   if trim(mla_lote)<>'' then
      edt_lote.Text := mla_lote;
   if (trim(mla_dtvcto)<>'/  /') or (trim(mla_dtvcto)<>'') then
      edt_dtvcto.Text := mla_dtvcto;

   edt_codprodutoExit(Self);
   end;

end;

procedure TFrm_Ped_TrocaMer.edt_codprodutoKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      edt_codproduto.Text := fChamaPro(2,'frm_pedidos02',key)
   else if (valint(copy(mpseg,4,2))=2) then
      edt_codproduto.Text := fChamaPro(0,'frm_pedidos02',key)
   else
      edt_codproduto.Text:=fChamaPro(0,'frm_pedidos02',key);
   if trim(mla_lote)<>'' then
      edt_lote.Text := mla_lote;
   if (trim(mla_dtvcto)<>'/  /') or (trim(mla_dtvcto)<>'') then
      edt_dtvcto.Text := mla_dtvcto;
   key:=#0;
   edt_codprodutoExit(Self);
   end
else
   begin
   if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
   end;

end;

procedure TFrm_Ped_TrocaMer.edt_loteExit(Sender: TObject);
begin

if valint(copy(mpseg,4,2))=2 then
   begin
   if not flcadlgc(0,1,0,edt_codproduto.Text,edt_lote.Text,'') then
      begin
      fmensagem('Grade não Encontrada!',0,['0'],0);
      edt_lote.SetFocus;
      exit;
      end;
   end;
if (trim(edt_lote.text)<>'') and (valint(copy(mpseg,4,2))=1) then
   begin
   if trim(edt_dtvcto.Text)='/  /' then
      mdtv:='ALL'
   else
      mdtv:=edt_dtvcto.Text;
   if flcadlgc(0,1,0,edt_codproduto.Text,edt_lote.Text,mdtv) then
      begin
      if (trim(edt_dtvcto.Text)='/  /') and (DM1.Tb_LGCCLDTVCTO.Asdatetime>pDatanula) then
         edt_dtvcto.Text:=FormatDateTime(fdt2, DM1.Tb_LGCCLDTVCTO.Value);
      end
   else
      begin
       if Pedido_02_TrocaMer.mPd_Venda_Devol=0 then
          begin
          fmensagem('Lote não Encontrado!',0,['0'],0);
          edt_lote.SetFocus;
          exit;
          end;
      end;

    if (Pedido_02_TrocaMer.mPd_Venda_Devol=1) and (not Pedido_02_TrocaMer.CB_PEDORI.Checked) and (not Pedido_02_TrocaMer.Tb_DevCli.IsEmpty) then
       edt_codprodutoexit(self);
   end;


end;

procedure TFrm_Ped_TrocaMer.edt_loteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=27 then
   begin
   fPreparaItens(0);
   mOper_Item_TrocaMer:=0;
   end;

if key = vk_F3 then begin
   if Frm_ConsLot=nil then
      Application.CreateForm(TFrm_ConsLot,Frm_ConsLot)
   else begin
       Frm_ConsLot.free;
       Frm_ConsLot:=nil;
       Application.CreateForm(TFrm_ConsLot,Frm_ConsLot);
   end;
      flcadlgc(0,0,0,edt_codproduto.Text,'','');
      Frm_Conslot.CODPRO.Text:=edt_codproduto.Text;
      Frm_ConsLot.NOMPRO.Text:=edt_descricao.Text;
      Frm_ConsLot.CODPRO.Enabled:=True;
      if valint(copy(mpseg,4,2))=2 then
         begin
         Frm_ConsLot.Caption:='Consulta no arquivo de Grades';
         Frm_ConsLot.DBGrid1.Columns[0].Visible:=false;
         Frm_ConsLot.DBGrid1.Columns[1].Title.Caption:='Grade';
         end;
      Frm_ConsLot.mConsLotOrigem:=1;
      Frm_ConsLot.ShowModal;
      if trim(Frm_ConsLot.plote)<>'' then
         begin
         edt_lote.Text:=Frm_ConsLot.pLote;
         end;
      FreeAndNil(Frm_Conslot);
   end;

end;

procedure TFrm_Ped_TrocaMer.edt_quantidadeExit(Sender: TObject);
var
  xQtde : Real;
begin

if (edt_quantidade.value=0) then
   begin
   if ((edt_lote.focused) or (edt_codproduto.focused))  then
      exit
   else
      begin
      if edt_precounitario.Focused then
         begin
         edt_quantidade.SetFocus;
         exit;
         end;

      end;

   end;
xQtde := 0;
xQtde := edt_quantidade.Value;
if Pedido_02_TrocaMer.mpd_QtdPed=0 then
   Pedido_02_TrocaMer.mpd_QtdPed := edt_quantidade.Value; // utilizada para contrele de pendencias de mercadorias


if (not DM1.Tb_Pro.Active) or (DM1.Tb_ProPDCODPRO.AsFloat<>valFloat(edt_codproduto.Text)) then
   flcadpro(1,0,0,fdeixanum(edt_codproduto.Text));
if not Pedido_02_TrocaMer.mpd_RestaurandoPedido then
   begin
   if not Pedido_02_TrocaMer.mPd_FaturandoPedido then
      begin
      if (DM1.Tb_ProPDFRACAO.Value<>1) then
         begin
         if Trunc(xQtde)<>xQtde then
            begin
            fMensagem('Não é permitido fracionar este produto!',0,['0'],0);
            edt_quantidade.SetFocus;
            exit;
            end;
         end;
      if (DM1.Tb_ProPDUNDVDA.AsFloat<>0) then
         begin
         if fsonumero(FloatToStr(xQtde/DM1.Tb_ProPDUNDVDA.Value))<>
            (xQtde/DM1.Tb_ProPDUNDVDA.Value) then
            begin
            fMensagem('Não é uma quantidade válida! multipla de '+floatToStr(DM1.Tb_ProPDUNDVDA.Value)+#13
                     +' Quantidade Proxima: '+FloatToStr(
                    round(xQtde/DM1.Tb_ProPDUNDVDA.Value)*DM1.Tb_ProPDUNDVDA.value)
                   ,0,['0'],0);
            abort;
            exit;
            end;
         end;
      end;
   // INICIO

   if (Pedido_02_TrocaMer.mPd_SaiNor) then
      begin
      if (trim(edt_codproduto.Text)<>'') and (xQtde>0) then
         begin
         if trim(edt_dtvcto.Text)='/  /' then
            mdtv:=''
         else
            mdtv:=edt_dtvcto.Text;
         if (valint(copy(mpseg,4,2))=1)  then
//         if (valint(copy(mpseg,4,2))=1) and (trim(mdtv)='') and (trim(edt_lote.text)='') then
//          mpd_Estoque := fRetornaEstoque(0,edt_codproduto.Text,edt_lote.Text,mdtv,
//                                   Pedido_02_TrocaMer.mPd_SaiNor,mPd_SaiCons,Pedido_02_TrocaMer.mPd_SaiTerc,mPd_SaiRVenda)
         if (valint(copy(mpseg,4,2))=1)  then
            Pedido_02_TrocaMer.mpd_Estoque := Pedido_02_TrocaMer.fRetornaEstoque(0,edt_codproduto.Text,'','',
                                     Pedido_02_TrocaMer.mPd_SaiNor,Pedido_02_TrocaMer.mPd_SaiCons,Pedido_02_TrocaMer.mPd_SaiTerc,Pedido_02_TrocaMer.mPd_SaiRVenda)
         else
            Pedido_02_TrocaMer.mpd_Estoque := Pedido_02_TrocaMer.fRetornaEstoque(valint(copy(mpseg,4,2)),edt_codproduto.Text,edt_lote.Text,mdtv,
                                      Pedido_02_TrocaMer.mPd_SaiNor,Pedido_02_TrocaMer.mPd_SaiCons,Pedido_02_TrocaMer.mPd_SaiTerc,Pedido_02_TrocaMer.mPd_SaiRVenda);

         if (Pedido_02_TrocaMer.mPd_Oper_item=1) then
            begin
            if mPosReg_Prod_TrocaMer<>nil then
               mem_ped_sub.GotoBookmark(mPosReg_Prod_TrocaMer);
            if mem_ped_subSUB_CODPRO.AsFloat=fsonumero(edt_codproduto.Text) then
               begin
               Pedido_02_TrocaMer.mpd_Estoque[0]:=Pedido_02_TrocaMer.mpd_Estoque[0]+mem_ped_subSUB_QTD.AsFloat;
               Pedido_02_TrocaMer.mpd_Estoque[1]:=Pedido_02_TrocaMer.mpd_Estoque[1]+mem_ped_subSUB_QTD.AsFloat;
               end;
            end;


         if (Pedido_02_TrocaMer.mpd_Estoque[0] < xQtde) then
            begin
            if Pedido_02_TrocaMer.mPed_Par_FatMz  then
               begin
{               FGravarPend(DM1.Tb_ProPDCODPRO.AsFloat,xQtde,Pedido_02_TrocaMer.mpd_Estoque[0],
                  edt_desc1.Value,
                  edt_desc2.Value,
                  edt_desc3.Value,
                  0,edt_precounitario.Value,edt_lote.Text);
}               end
            else
               begin
               if not Pedido_02_TrocaMer.mPd_FaturandoPedido then
                  begin
                  fmensagem('Quantidade Pedida Maior que Estoque. Estoque: '+FormatFloat(mcasas, Pedido_02_TrocaMer.mpd_Estoque[0])
                     +' Prateleira: '+FormatFloat(mcasas, Pedido_02_TrocaMer.mpd_Estoque[1])
                    +' Deposito: '+FormatFloat(mcasas, Pedido_02_TrocaMer.mpd_Estoque[2]),0,['0'],0);
                  end;

               edt_quantidade.Text:=FormatFloat(mcasqtd, Pedido_02_TrocaMer.mpd_Estoque[0]);
//               if not Pedido_02_TrocaMer.mPd_FaturandoPedido then
//                  begin
                  if Pedido_02_TrocaMer.mpd_Estoque[0]<=0 then
                     begin
                     if Pedido_02_TrocaMer.mpd_Estoque[0]<=0 then
                        Pedido_02_TrocaMer.mpd_Estoque[0]:=0;
                     Pedido_02_TrocaMer.FGravarPend(DM1.Tb_ProPDCODPRO.AsFloat,0,xQtde,Pedido_02_TrocaMer.mpd_Estoque[0],
                             edt_desc1.Value,
                           edt_desc2.Value,
                           edt_desc3.Value,
                           0,edt_precounitario.Value,edt_lote.Text);
                     if not Pedido_02_TrocaMer.mPd_FaturandoPedido then
                        edt_codproduto.Setfocus;
                     end
                  else if not Pedido_02_TrocaMer.mPd_FaturandoPedido then
                     edt_quantidade.SetFocus;
//                  end;
               Exit;
               end;
            end;
         if not Pedido_02_TrocaMer.mPed_Par_FatMz_LocMov then
            begin
            if (Pedido_02_TrocaMer.mpd_Estoque[1+Pedido_02_TrocaMer.cb_local.ItemIndex] < xQtde) then
               begin
               if not Pedido_02_TrocaMer.mPd_FaturandoPedido then
                  begin
                  fmensagem('Quantidade Pedida Maior que Estoque. Estoque: '+FormatFloat(mcasas, Pedido_02_TrocaMer.mpd_Estoque[0])
                        +' Prateleira: '+FormatFloat(mcasas, Pedido_02_TrocaMer.mpd_Estoque[1])
                        +' Deposito: '+FormatFloat(mcasas, Pedido_02_TrocaMer.mpd_Estoque[2]),0,['0'],0);
                  edt_quantidade.SetFocus;
                  end;
               edt_quantidade.Value:=0;
               Exit;
               end;
            end;
         end;
      end;
   if Pedido_02_TrocaMer.mPd_SaiNor then
      begin
      if (DM1.Tb_ProPDVDAMAXM.Value>0)   then
         begin
         DM1.Query1.Close;
         DM1.Query1.SQL.clear;
         DM1.Query1.SQL.Add('Select sum(P2QTD) as quant from '
                           +' CADP02,CADP01 where P1STATUS<>9 and '
                           +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+InttoStr(codemp)+' and P1CODEMP=P2CODEMP and ')
                           +' P2LOTSEQ=0'+IntToStr(Pedido_02_TrocaMer.mPd_LotSeq)+' and '
                           +' P1LOTSEQ=P2LOTSEQ '
                           +' and P1CHAVE=P2CHAVE and P1ORDEM=P2ORDEM '
                           +' and P2CODPRO=0'+DM1.Tb_ProPDCODPRO.AsString
                           +' and P1CODCLI=0'+floatToStr(Pedido_02_TrocaMer.mPed_Cli_CodCli)
                           +' and P1TIPO=1 '
                           +' and P1DATAP>='+chr(39)+FormatDateTime(fdt,StrToDate('01/'+FormatDateTime('mm/yyyy',pdatasis)))+chr(39)
                           +' and P1DATAP<='+chr(39)+FormatDateTime(fdt, fdatafinal(0,pdatasis))+chr(39));
         if Pedido_02_TrocaMer.mPd_Oper_Ped=1 then
            begin
            DM1.Query1.SQL.add(' and P1CHAVE<>0'+Trim(edt_chaveped.Text));
            end;
         dm1.Query1.Open;
         if (DM1.Query1.Fields[0].AsFloat+mem_ped_subSUB_QTD.AsFloat)>DM1.Tb_ProPDVDAMAXM.Value then
            begin
            if not Pedido_02_TrocaMer.mPd_FaturandoPedido then
               begin
               fmensagem('Quantidade Máxima no mes permitida: '+FormatFloat(mcasqtd, DM1.Tb_ProPDVDAMAXM.AsFloat)
                     +iif(DM1.Query1.Fields[0].AsFloat>0,' Ja  Atendida: '+FormatFloat(mcasqtd, DM1.Query1.Fields[0].AsFloat),'')
                     +'. Invalido!',0,['0'],0);
               end;
            edt_quantidade.Value:=DM1.Tb_ProPDVDAMAXM.AsFloat-DM1.Query1.Fields[0].AsFloat;
            abort;
            exit;
            end;
         end;
      if DM4.Tb_ParGer02PG2UTILCQ.AsInteger=1 then
         begin
         if (Pedido_02_TrocaMer.mpd_Estoque[0]-fQtdBlqSac(codemp,DM1.Tb_ProPDCODPRO.AsFloat
                                     ,edt_lote.Text))<=0 then
             begin
             if fmensagem('Produto bloqueado pelo Controle de Qualidade ou SAC ',0,['1','2'],2)=mrYes then
                begin
                end;
             end;

         end;
      end;
   end;


if (Pedido_02_TrocaMer.mPd_Venda_Devol=1) and (not Pedido_02_TrocaMer.CB_PEDORI.Checked)
   and (not Pedido_02_TrocaMer.Tb_DevCli.IsEmpty) then
   begin
   xQtde:=Pedido_02_TrocaMer.fMaiorDevol(0,edt_codproduto.Text,edt_lote.Text,edt_dtvcto.Text);


    if (mOper_Item_TrocaMer=1) then
       begin
       if mPosReg_Prod_TrocaMer<>nil then
          mem_ped_sub.GotoBookmark(mPosReg_Prod_TrocaMer);
       if mem_ped_subSUB_CODPRO.AsFloat=fsonumero(edt_codproduto.Text) then
          begin
          xQtde:=Pedido_02_TrocaMer.mpd_Estoque[0]+mem_ped_subSUB_QTD.AsFloat;
          end;
       end;

   if edt_quantidade.Value>xQtde then
      begin
      fMensagem('Quantidade Maxima Permitida para devolução: '
               +FormatFloat(mcasqtd, xqtde)
               ,0,['0'],0);
      edt_Quantidade.Value:=xqtde;
      edt_quantidade.SetFocus;
      exit;
      end;
   //termino se devolução
   end;



edt_total.Value := Arredonda(( edt_precounitario.Value * edt_quantidade.Value), DM1.Tb_PargerPCASAS.Asinteger) ;

//TERMINO
{
end else begin
   fmensagem('Quantidade informar não poder ser menor ou igual a 0!',0,['0'],0);
   edt_quantidade.SetFocus;
   Exit;
end;
}

end;

procedure TFrm_Ped_TrocaMer.edt_desc1Exit(Sender: TObject);
begin

// inicio
if (not DM1.Tb_Pro.Active) or
   (valfloat(edt_codproduto.Text)<>DM1.Tb_ProPDCODPRO.AsFloat) then
   flcadpro(1,0,0,trim(edt_codproduto.Text));

if (Pedido_02_TrocaMer.cb_tipopreco.ItemIndex=3) or (Pedido_02_TrocaMer.cb_tipopreco.ItemIndex=7)  then
   edt_precounitario.Value:=Pedido_02_TrocaMer.fbuscarPreco_novo(0,fSonumero(edt_codproduto.Text),
   edt_lote.Text,Pedido_02_TrocaMer.cb_tipopreco.ItemIndex,
   Pedido_02_TrocaMer.edt_tipopco.AsInteger,edt_desc1.Value,edt_desc2.Value,edt_desc3.Value,true,Pedido_02_TrocaMer.cb_tabelavenda.Text,Pedido_02_TrocaMer.edt_codvenda.Text,edt_quantidade.Value);

 edt_total.Value := Arredonda(( edt_precounitario.Value * edt_quantidade.Value), DM1.Tb_PargerPCASAS.Asinteger) ;

if (Pedido_02_TrocaMer.mPd_Venda_Devol=1) and (not Pedido_02_TrocaMer.CB_PEDORI.Checked) and (Pedido_02_TrocaMer.Tb_DevCli.Active) then
   begin
   if (fSonumero(edt_codproduto.Text)<>mem_ped_subSUB_CODPRO.AsFloat) then
//   or   (edt_lote.Text<>QryItem_NotaP2LOTE.AsString) then
      begin
      Pedido_02_TrocaMer.Tb_DevCli.Locate('P2CODPRO',fSonumero(edt_codproduto.Text),[]);
      end;
   Pedido_02_TrocaMer.FCalculaItem(0 // tipo 0-Produtos 1-Servico
         ,Pedido_02_TrocaMer.cb_formace.ItemIndex // forma de conciliamento 0-quantidade 1-preco unitario
         ,DM1.Tb_ProPDLISTA.AsInteger // lista de produtos= 0-Inalterado 1-Positiva 2-negativo
         ,Pedido_02_TrocaMer.mPd_Venda_Devol // 0-para venda 1-devolucao
         ,Pedido_02_TrocaMer.cb_tipopreco.ItemIndex
         ,Pedido_02_TrocaMer.mPed0_CliConsFin
         ,edt_quantidade.Value // quantidade
         ,edt_precounitario.Value // preco unitario
         ,DM1.Tb_ProPDPMC.AsFloat // preco maximo consumidor
         ,DM1.Tb_ProPDPRECO1.AsFloat // preco de tabela da forma de pagamento
         ,DM1.Tb_Propcoven.AsFloat // preco de tabela da forma de pagamento
         ,ValFloat(Pedido_02_TrocaMer.edt_desconto01.Text)
         ,ValFloat(Pedido_02_TrocaMer.edt_desconto02.Text)
         ,edt_desc1.Value
         ,edt_desc2.Value
         ,edt_desc3.Value
         ,0 // desconto em valor do item
         ,DM1.Tb_ProPDIPI.AsFloat
         ,pRet_PComV01
         ,pRet_PComV02
         ,pRet_PComV03
         ,pRet_PComV04
         ,pRet_PComExtra // percentual de comissao extra
         ,pRet_DescFin
         ,valfloat(Pedido_02_TrocaMer.st_totliquido.Caption)
         ,valfloat(Pedido_02_TrocaMer.edt_valordesconto.Text)
         ,  Pedido_02_TrocaMer.mPd_TotDescRat+Pedido_02_TrocaMer.mPd_TotDescRat_101
         ,Pedido_02_TrocaMer.mPd_TotAcre+Pedido_02_TrocaMer.mPd_TotAcre_101
         ,Pedido_02_TrocaMer.mPd_TotAcreRat+Pedido_02_TrocaMer.mPd_TotAcreRat_101
         ,valfloat(Pedido_02_TrocaMer.edt_valorfrete.Text)
         ,Pedido_02_TrocaMer.mPd_TotFreteRat+Pedido_02_TrocaMer.mPd_TotFreteRat_101

         ,DM1.Tb_ProPDSIT.AsString
         ,DM1.Tb_ProPDFIS_CST_ICMS_EST_CF.AsString
         ,DM1.Tb_ProPDFIS_ORIGEM.AsString
         ,DM1.Tb_ProPDTABICM.AsString
         ,DM1.Tb_ProPDREST.AsInteger
         ,DM1.Tb_ProPDRESTFOR.AsInteger
         ,DM1.Tb_ProPDRESTCON.AsInteger
         ,DM1.Tb_ProPDFRACAO.AsInteger
         ,iif(Pedido_02_TrocaMer.Tb_DevCliP2ALIQNR.AsFloat>0,Pedido_02_TrocaMer.Tb_DevCliP2ALIQNR.AsFloat,
          Pedido_02_TrocaMer.Tb_DevCliP2ALIQ.AsFloat) // aliquota do pedido de origem no caso de devolução
         ,Pedido_02_TrocaMer.Tb_DevCliP2REDUTICM.AsFloat // redutor de icmsa do pedido de origem no caso de devolução
         ,Pedido_02_TrocaMer.Tb_DevCliP2ALIPI.asfloat // ipi do pedido de origem no caso de devolução
         ,Pedido_02_TrocaMer.Tb_DevCliP2ST_ICMCRED.AsFloat // Situação Tributaria Icms Credito do pedido de origem no caso de devolução
         ,Pedido_02_TrocaMer.Tb_DevCliP2ST_ICMDEB.AsFloat // Icms Debito ST do pedido de origem no caso de devolução
         ,Pedido_02_TrocaMer.Tb_DevCliP2ST_IVA.AsFloat // IVA do pedido de origem no caso de devolução
         ,Pedido_02_TrocaMer.Tb_DevCliP2ST_REDUT.AsFloat // Redutor STdo pedido de origem no caso de devolução
         ,Pedido_02_TrocaMer.Tb_DevCliP2PCOMAX.AsFloat // PMC do pedido de origem no caso de devolução
         );
// termino

   end
else
   begin
   Pedido_02_TrocaMer.FCalculaItem(0 // tipo 0-Produtos 1-Servico
         ,Pedido_02_TrocaMer.cb_formace.ItemIndex // forma de conciliamento 0-quantidade 1-preco unitario
         ,DM1.Tb_ProPDLISTA.AsInteger // lista de produtos= 0-Inalterado 1-Positiva 2-negativo
         ,0 //Pedido_02_TrocaMer.mPd_Venda_Devol // 0-para venda 1-devolucao
         ,Pedido_02_TrocaMer.cb_tipopreco.ItemIndex
         ,Pedido_02_TrocaMer.mPed0_CliConsFin
         ,edt_quantidade.Value // quantidade
         ,edt_precounitario.Value // preco unitario
         ,DM1.Tb_ProPDPMC.AsFloat // preco maximo consumidor
         ,DM1.Tb_ProPDPRECO1.AsFloat // preco de tabela da forma de pagamento
         ,DM1.Tb_Propcoven.AsFloat // preco de tabela da forma de pagamento
         ,ValFloat(Pedido_02_TrocaMer.edt_desconto01.Text)
         ,ValFloat(Pedido_02_TrocaMer.edt_desconto02.Text)
         ,edt_desc1.Value
         ,edt_desc2.Value
         ,edt_desc3.Value
         ,0 // desconto em valor do item
         ,DM1.Tb_ProPDIPI.AsFloat
         ,pRet_PComV01
         ,pRet_PComV02
         ,pRet_PComV03
         ,pRet_PComV04
         ,pRet_PComExtra // percentual de comissao extra
         ,pRet_DescFin
         ,valfloat(Pedido_02_TrocaMer.st_totliquido.Caption)
         ,valfloat(Pedido_02_TrocaMer.edt_valordesconto.Text)
         ,  Pedido_02_TrocaMer.mPd_TotDescRat+Pedido_02_TrocaMer.mPd_TotDescRat_101
         ,Pedido_02_TrocaMer.mPd_TotAcre+Pedido_02_TrocaMer.mPd_TotAcre_101
         ,Pedido_02_TrocaMer.mPd_TotAcreRat+Pedido_02_TrocaMer.mPd_TotAcreRat_101
         ,valfloat(Pedido_02_TrocaMer.edt_valorfrete.Text)
         ,Pedido_02_TrocaMer.mPd_TotFreteRat+Pedido_02_TrocaMer.mPd_TotFreteRat_101

         ,DM1.Tb_ProPDSIT.AsString
         ,DM1.Tb_ProPDFIS_CST_ICMS_EST_CF.AsString
         ,DM1.Tb_ProPDFIS_ORIGEM.AsString         
         ,DM1.Tb_ProPDTABICM.AsString
         ,DM1.Tb_ProPDREST.AsInteger
         ,DM1.Tb_ProPDRESTFOR.AsInteger
         ,DM1.Tb_ProPDRESTCON.AsInteger
         ,DM1.Tb_ProPDFRACAO.AsInteger
         ,0 // aliquota do pedido de origem no caso de devolução
         ,0 // redutor de icmsa do pedido de origem no caso de devolução
         ,0 // ipi do pedido de origem no caso de devolução
         ,0 // Situação Tributaria Icms Credito do pedido de origem no caso de devolução
         ,0 // Icms Debito ST do pedido de origem no caso de devolução
         ,0 // IVA do pedido de origem no caso de devolução
         ,0 // Redutor STdo pedido de origem no caso de devolução
         ,0 // PMC do pedido de origem no caso de devolução
         );
// termino
   end;


Pedido_02_TrocaMer.mRet0_DescM:=0;
if pRet_PCOFPG<>0 then
   begin
   Pedido_02_TrocaMer.mRet0_DescM:=Arredonda( (  (edt_quantidade.Value*pRet_PCOFPG) - edt_total.Value) ,4);
   Pedido_02_TrocaMer.mRet0_DescM:=Pedido_02_TrocaMer.mRet0_DescM+Pedido_02_TrocaMer.mRet0_TotDes;
   if Pedido_02_TrocaMer.mRet0_DescM<>0 then
      begin
      try
         Pedido_02_TrocaMer.mRet0_DescM:= (Pedido_02_TrocaMer.mRet0_DescM*100)/(edt_quantidade.Value*pRet_PCOFPG);
      except
         Pedido_02_TrocaMer.mRet0_DescM:=0;
         end;
      end
   else
      Pedido_02_TrocaMer.mRet0_DescM:=0;
   if Pedido_02_TrocaMer.cb_tipopreco.ItemIndex<>4 then
      begin
      if (DM4.Tb_Par01PDESCMP0.Value>0) and (DM1.Tb_PargerPTIPOVALDES.AsInteger<>1) then
         begin
         if Pedido_02_TrocaMer.mAceita_pergunta then
            begin
            if ( (Pedido_02_TrocaMer.mRet0_DescM-0.10)>DM4.Tb_Par01PDESCMP0.Value)
                and (not Pedido_02_TrocaMer.mPd_Venda_Devol=1) then
               begin
               Pedido_02_TrocaMer.mPd_CodResp_Senha:=fValidaSenha(iif(DM1.Tb_PargerPGRAVPEDBLOQ.asinteger=2,0,1),codusr,2,0,Pedido_02_TrocaMer.mPed_Cli_CodCli,0,0,0,'% Desconto maior que o permitido.'+#13
                                                                                    +'Desconto do Pedido: '+FormatFloat(mcasaspu, Pedido_02_TrocaMer.mRet0_DescM)+#13
                                                                                    +'Máximo Permitido: '+FormatFloat(mcasaspu, DM4.Tb_Par01PDESCMP0.Value)+#13
                                                                                    +'Para continuar digite a senha','');
               if Pedido_02_TrocaMer.mPd_CodResp_Senha=1 then
                  begin
                  edt_codproduto.SetFocus;
                  exit;
                  end;
               end;
            end;
         end;


      if (DM4.Tb_Par01PDESCMP0.Value>0) and (DM1.Tb_PargerPTIPOVALDES.AsInteger<>1) then
         begin
         if Pedido_02_TrocaMer.mAceita_pergunta then
            begin
             if ((Pedido_02_TrocaMer.mRet0_DescM-0.10)>DM4.Tb_Par01PDESCMP0.Value)
                 and (not Pedido_02_TrocaMer.mPd_Venda_Devol=1) then
                begin
                Pedido_02_TrocaMer.mPd_CodResp_Senha:=fValidaSenha(iif(DM1.Tb_PargerPGRAVPEDBLOQ.asinteger=2,0,1),codusr,2,0,Pedido_02_TrocaMer.mPed_Cli_CodCli,0,0,0,'% Desconto maior que o permitido.'+#13
                                                                                    +'Desconto do Pedido: '+FormatFloat(mcasaspu, Pedido_02_TrocaMer.mRet0_DescM)+#13
                                                                                    +'Máximo Permitido: '+FormatFloat(mcasaspu, DM4.Tb_Par01PDESCMP0.Value)+#13
                                                                                    +'Para continuar digite a senha','');
                if Pedido_02_TrocaMer.mPd_CodResp_Senha=1 then
                   begin
                   edt_codproduto.SetFocus;
                   exit;
                   end;
                end;
             end;
          end;
       end;
    end;
 if Pedido_02_TrocaMer.mpd_pvtc=7 then
    begin
    if flcadcomd2(Round(Pedido_02_TrocaMer.mRet0_DescM)) then
       begin
       pRet_PComV01:=DM1.Tb_ComDCDCOMIS.Value;
       if Pedido_02_TrocaMer.mPed_Ven_PCOMV02=0 then
          pRet_PComV02:=0
       else
          pRet_PComV02:=DM1.Tb_ComDCDCOMIS.Value;
       if Pedido_02_TrocaMer.mPed_Ven_PCOMV03=0 then
          pRet_PComV03:=0
       else
          pRet_PComV03:=DM1.Tb_ComDCDCOMIS.Value;

       if Pedido_02_TrocaMer.mPed_Ven_PCOMV04=0 then
          pRet_PComV04:=0
       else
          pRet_PComV04:=DM1.Tb_ComDCDCOMIS.Value;
       end
    else
       begin
       pRet_PComV01:=0;
       pRet_PComV02:=0;
       pRet_PComV03:=0;
       pRet_PComV04:=0;
       end;
    end;
if Pedido_02_TrocaMer.mpd_ajcomis=1 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select AJC_FATOR_INI,AJC_FATOR_TER, AJC_COMIS  from '
                     +' CADAJCOMIS  where ');
   DM1.Query1.SQL.add(fla_EmpBaixaAlta(0,'CADAJCOMIS','',codemp,'AJC_CODEMP',' and '));
   DM1.Query1.SQL.Add(' AJC_FATOR_INI >='+mudavp(FloatToStr(Pedido_02_TrocaMer.mRet0_DescM*-1))
                     +' and AJC_FATOR_TER<='+mudavp(FloatToStr(Pedido_02_TrocaMer.mRet0_DescM*-1)));
   DM1.Query1.Open;

   if not DM1.Query1.IsEmpty then
      begin
      if pRet_PComV01<>0 then
         Pedido_02_TrocaMer.mRet0_vComv01:=
         Arredonda(
         pRet_PComV01+
         (pRet_PComV01*DM1.Query1.fieldbyName('AJC_COMIS').AsFloat/100)
         ,2);

      if pRet_PComExtra<>0 then
         pRet_PComExtra:=
         Arredonda(pRet_PComExtra+
         (pRet_PComExtra*DM1.Query1.fieldbyName('AJC_COMIS').AsFloat/100)
         ,2);


      if pRet_PComV02<>0 then
         pRet_PComV02:=
         Arredonda(pRet_PComV02+
         (pRet_PComV02*DM1.Query1.fieldbyName('AJC_COMIS').AsFloat/100)
         ,2);

      if pRet_PComV03<>0 then
         pRet_PComV03:=
         Arredonda(pRet_PComV03+
         (pRet_PComV03*DM1.Query1.fieldbyName('AJC_COMIS').AsFloat/100)
         ,2);   
      end;
   end;
//edt_comissao.Value:=pRet_PComV01;



end;

procedure TFrm_Ped_TrocaMer.edt_totalEnter(Sender: TObject);
begin

bbGravarItemClick(self);


end;

procedure TFrm_Ped_TrocaMer.bbGravarItemClick(Sender: TObject);
begin
if fsonumero(edt_codproduto.Text)=0 then
   exit;
edt_quantidadeExit(Self);
if edt_quantidade.Value<=0 then
   begin
   fmensagem('Quantidade Inválida!',0,['0'],0);
   edt_codproduto.SetFocus;
   exit;
   end;
if mOper_Item_TrocaMer=1 then
   begin
   if mPosReg_Prod_TrocaMer<>nil then
      begin
      mem_ped_sub.GotoBookmark(mPosReg_Prod_TrocaMer);
      end;
   mem_ped_sub.Edit;
   end
else
   mem_ped_sub.Insert;
mem_ped_subSUB_CODPRO_ORI.Value    :=Qr_Ped_OriP2CODPRO.AsFloat;
mem_ped_subSUB_LOTE_ORI.AsString   :=Qr_Ped_OriP2LOTE.AsString;
mem_ped_subSUB_PRECO_ORI.Value     :=Qr_Ped_OriP2PRECO.AsFloat;
mem_ped_subSUB_QTD_ORI.Value       :=Qr_Ped_OriP2QTD.AsFloat;

mem_ped_subSUB_CODPRO.Value:=fSonumero(edt_codproduto.Text);
mem_ped_subSUB_LOTE.Value  :=edt_lote.Text;
if trim(edt_dtvcto.Text)<>'/  /' then
  mem_ped_subSUB_DTVCTO.AsString :=edt_dtvcto.Text;
mem_ped_subSUB_QTD.Value       :=edt_quantidade.Value;
mem_ped_subSUB_PRECO_UNI.Value :=edt_precounitario.Value;
mem_ped_subSUB_DESC01.Value    :=edt_desc1.Value;
mem_ped_subSUB_DESC02.Value    :=edt_desc2.Value;
mem_ped_subSUB_DESC03.Value    :=edt_desc3.Value;
mem_ped_subSUB_DESCFIN.Value   :=edt_descfin.Value;
mem_ped_subSUB_UNDPRO.Value    :=edt_und.Text;
mem_ped_subSUB_NOMPRO.Value    :=edt_descricao.Text;
mem_ped_subSUB_TOTAL.Value     :=edt_total.Value;
mem_ped_sub.Post;
mOper_Item_TrocaMer:=0;


fPreparaItens(0);
edt_codproduto.setfocus;




end;

function tFrm_Ped_TrocaMer.fPreparaItens(pTipo: Integer): Boolean;
// ptipo=0 - zera variaveis
//       1 - Carrega Variaveis para edicao
begin
if ptipo=0 then
   begin
   edt_codproduto.Text:='';
   edt_lote.Text      :='';
   edt_dtvcto.Text    :='/  /';
   edt_descricao.Text :='';
   edt_und.Text       :='';
   edt_quantidade.Text:='';
   edt_desc1.Text     :='';
   edt_desc2.Text     :='';
   edt_desc3.Text     :='';
   edt_descfin.Text      :='';
   edt_precounitario.Text:='';
   edt_total.Text        :='';
   end
else if (not mem_ped_subSUB_CODPRO.IsNull) then
   begin
   edt_codproduto.Text    :=mem_ped_subSUB_CODPRO.AsString;
   edt_lote.Text          :=mem_ped_subSUB_LOTE.AsString;
   if mem_ped_subSUB_DTVCTO.AsDateTime<=pdatanula then
      edt_dtvcto.Text     :='/  /'
   else
      edt_dtvcto.Text     :=FormatDatetime(fdt2,  mem_ped_subSUB_DTVCTO.AsDateTime);
   edt_descricao.Text     :=mem_ped_subSUB_NOMPRO.AsString;
   edt_und.Text           :=mem_ped_subSUB_UNDPRO.AsString;
   edt_quantidade.Value   :=mem_ped_subSUB_QTD.Value;
   edt_desc1.Value        :=mem_ped_subSUB_DESC01.Value;
   edt_desc2.Value        :=mem_ped_subSUB_DESC02.Value;
   edt_desc3.Value        :=mem_ped_subSUB_DESC03.Value;
   edt_descfin.Value      :=mem_ped_subSUB_DESCFIN.Value;
   edt_precounitario.Value:=mem_ped_subSUB_PRECO_UNI.Value;
   edt_total.Value        :=mem_ped_subSUB_TOTAL.Value;
   mPosReg_Prod_TrocaMer  :=mem_ped_sub.GetBookmark;
   mOper_Item_TrocaMer    :=1;
   end;

result:=true;
end;
procedure TFrm_Ped_TrocaMer.DBGrid_subDblClick(Sender: TObject);
begin
if bbEfetuar.Enabled then
   begin
   if not mem_ped_subSUB_CODPRO.IsNull then
      begin
      fPreparaItens(1);
      edt_codproduto.Setfocus;
      end;
   end;
end;

procedure TFrm_Ped_TrocaMer.ExluirItem1Click(Sender: TObject);
begin
if bbEfetuar.Enabled then
   begin
   if not mem_ped_subSUB_CODPRO.IsNull then
      begin
      if fmensagem('Quer Realmente Excluir o Item: '+mem_ped_subSUB_NOMPRO.AsString
                  ,0,['1','2'],2)=mrYes then
         begin

         mem_ped_sub.Delete;
         fPreparaItens(0);
         mOper_Item_TrocaMer:=0;
         edt_codproduto.Setfocus;
         end;
      end;
   end;

end;

procedure TFrm_Ped_TrocaMer.edt_quantidadeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=27 then
   begin
   fPreparaItens(0);
   mOper_Item_TrocaMer:=0;
   end;

end;

procedure TFrm_Ped_TrocaMer.bbEfetuarClick(Sender: TObject);
var
mCodPro_Fat: Real;
begin
if not mem_ped_sub.Active then
   mem_ped_sub.Open;


if mem_ped_sub.IsEmpty then
   begin
   bbCancelarClick(self);
   exit;
   end;
DM1.Query3.close;
DM1.Query3.SQL.clear;
DM1.Query3.SQL.Add('Insert into CADP02_TROCAS ('
                  +' P2TRO_CODEMP '
                  +',P2TRO_LOTSEQ '
                  +',P2TRO_CHAVE '
                  +',P2TRO_ITEM '
                  +',P2TRO_CODPRO_ENTRA '
                  +',P2TRO_LOTE_ENTRA '
                  +',P2TRO_DTVCTO_ENTRA '
                  +',P2TRO_QTD_ENTRA '
                  +',P2TRO_PCOUNI_ENTRA '
                  +',P2TRO_CODPRO_SAIDA '
                  +',P2TRO_LOTE_SAIDA '
                  +',P2TRO_DTVCTO_SAIDA '
                  +',P2TRO_QTD_SAIDA '
                  +',P2TRO_PCOUNI_SAIDA '
                  +') values ('
                  +' :P2TRO_CODEMP '
                  +',:P2TRO_LOTSEQ '
                  +',:P2TRO_CHAVE '
                  +',:P2TRO_ITEM '
                  +',:P2TRO_CODPRO_ENTRA '
                  +',:P2TRO_LOTE_ENTRA '
                  +',:P2TRO_DTVCTO_ENTRA '
                  +',:P2TRO_QTD_ENTRA '
                  +',:P2TRO_PCOUNI_ENTRA '
                  +',:P2TRO_CODPRO_SAIDA '
                  +',:P2TRO_LOTE_SAIDA '
                  +',:P2TRO_DTVCTO_SAIDA '
                  +',:P2TRO_QTD_SAIDA '
                  +',:P2TRO_PCOUNI_SAIDA '
                  +')');
mem_ped_sub.First;

While not mem_ped_sub.Eof do
   begin
   DM1.Query3.ParamByName('P2TRO_CODEMP').AsFloat       :=Qr_Ped_OriP2CODEMP.AsFloat;
   DM1.Query3.ParamByName('P2TRO_LOTSEQ').AsFloat       :=Qr_Ped_OriP2LOTSEQ.AsFloat;
   DM1.Query3.ParamByName('P2TRO_CHAVE').AsFloat        :=Qr_Ped_OriP2CHAVE.AsFloat;
   DM1.Query3.ParamByName('P2TRO_ITEM').AsFloat         :=01;
   DM1.Query3.ParamByName('P2TRO_CODPRO_ENTRA').AsFloat :=mem_ped_subSUB_CODPRO_ORI.AsFloat;
   DM1.Query3.ParamByName('P2TRO_LOTE_ENTRA').AsString  :=mem_ped_subSUB_LOTE_ORI.AsString;
   DM1.Query3.ParamByName('P2TRO_DTVCTO_ENTRA').Value   :=mem_ped_subSUB_DTVCTO_ORI.Value;
   DM1.Query3.ParamByName('P2TRO_QTD_ENTRA').AsFloat    :=mem_ped_subSUB_QTD_ORI.AsFloat;
   DM1.Query3.ParamByName('P2TRO_PCOUNI_ENTRA').AsFloat :=mem_ped_subSUB_PRECO_ORI.AsFloat;
   DM1.Query3.ParamByName('P2TRO_CODPRO_SAIDA').AsFloat :=mem_ped_subSUB_CODPRO.AsFloat;
   DM1.Query3.ParamByName('P2TRO_LOTE_SAIDA').AsString  :=mem_ped_subSUB_LOTE.AsString;
   DM1.Query3.ParamByName('P2TRO_DTVCTO_SAIDA').Value   :=mem_ped_subSUB_DTVCTO.Value;
   DM1.Query3.ParamByName('P2TRO_QTD_SAIDA').AsFloat    :=mem_ped_subSUB_QTD.AsFloat;
   DM1.Query3.ParamByName('P2TRO_PCOUNI_SAIDA').AsFloat :=mem_ped_subSUB_PRECO_UNI.AsFloat;
   try
      DM1.Query3.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query3.Sql.savetofile('c:\sql.txt');
      end;
   mem_ped_sub.Next;
   end;
mem_ped_sub.First;
Pedido_02_TrocaMer.mPd_FaturandoPedido:=true;
fped01gant(8,DM4.Qr_ped01);
Pedido_02_TrocaMer.fexcluir(2,'');  // excluir os pedidos existentes


While not mem_ped_sub.Eof do
   begin
   if not Pedido_02_TrocaMer.QryItem_Nota.Locate('P2CODPRO;P2LOTE',vararrayof([mem_ped_subSUB_CODPRO_ORI.asfloat,mem_ped_subSUB_LOTE.AsString]),[]) then
      Pedido_02_TrocaMer.QryItem_Nota.Locate('P2CODPRO',mem_ped_subSUB_CODPRO_ORI.asfloat,[]);
   Pedido_02_TrocaMer.FPreparaEdicaoProd(0);
   Pedido_02_TrocaMer.mpd_ant_codpro:=mem_ped_subSUB_CODPRO_ORI.asfloat;
   Pedido_02_TrocaMer.edt_codproduto.Text:=mem_ped_subSUB_CODPRO.AsString;
   Pedido_02_TrocaMer.edt_lote.Text      :=mem_ped_subSUB_LOTE.AsString;
   if mem_ped_subSUB_DTVCTO_ORI.AsDateTime<=pdatanula then
      Pedido_02_TrocaMer.edt_dtvcto.Text :='/  /'
   else
      Pedido_02_TrocaMer.edt_dtvcto.Text:=FormatDateTime(fdt2, mem_ped_subSUB_DTVCTO_ORI.AsDateTime);
   Pedido_02_TrocaMer.edt_quantidade.Value:=mem_ped_subSUB_QTD.Value;
   Pedido_02_TrocaMer.edt_desc1.Value:=mem_ped_subSUB_DESC01.Value;
   Pedido_02_TrocaMer.edt_desc2.Value:=mem_ped_subSUB_DESC02.Value;
   Pedido_02_TrocaMer.edt_desc3.Value:=mem_ped_subSUB_DESC03.Value;
   Pedido_02_TrocaMer.edt_descfin.Value:=mem_ped_subSUB_DESCFIN.Value;
   Pedido_02_TrocaMer.edt_precounitario.Value:=mem_ped_subSUB_PRECO_UNI.Value;

   Pedido_02_TrocaMer.edt_precounitarioExit(self);
   Pedido_02_TrocaMer.bbGravarItemClick(self);
   mCodPro_Fat:=mem_ped_subSUB_CODPRO_ori.AsFloat;
   mem_ped_sub.Next;
   While (not mem_ped_sub.Eof) and (mCodPro_Fat=mem_ped_subSUB_CODPRO_ORI.AsFloat) do
      begin
      Pedido_02_TrocaMer.edt_codproduto.Text:=mem_ped_subSUB_CODPRO.AsString;
      Pedido_02_TrocaMer.edt_lote.Text      :=mem_ped_subSUB_LOTE.AsString;
      if mem_ped_subSUB_DTVCTO_ORI.AsDateTime<=pdatanula then
         Pedido_02_TrocaMer.edt_dtvcto.Text :='/  /'
      else
         Pedido_02_TrocaMer.edt_dtvcto.Text:=FormatDateTime(fdt2, mem_ped_subSUB_DTVCTO_ORI.AsDateTime);
      Pedido_02_TrocaMer.edt_quantidade.Value:=mem_ped_subSUB_QTD_ORI.Value;
      Pedido_02_TrocaMer.edt_desc1.Value:=mem_ped_subSUB_DESC01.Value;
      Pedido_02_TrocaMer.edt_desc2.Value:=mem_ped_subSUB_DESC02.Value;
      Pedido_02_TrocaMer.edt_desc3.Value:=mem_ped_subSUB_DESC03.Value;
      Pedido_02_TrocaMer.edt_descfin.Value:=mem_ped_subSUB_DESCFIN.Value;
      Pedido_02_TrocaMer.edt_precounitario.Value:=mem_ped_subSUB_PRECO_UNI.Value;
      Pedido_02_TrocaMer.edt_precounitarioExit(self);
      Pedido_02_TrocaMer.bbGravarItemClick(self);
      mem_ped_sub.Next;
      end;

   Pedido_02_TrocaMer.mPd_FaturandoPedido:=false;
   if (Pedido_02_TrocaMer.QryItem_Nota.RecordCount>0) then
      begin

      if (DM1.Tb_PargerPPEDFPGTO.AsInteger>0) then
         Pedido_02_TrocaMer.fGerarFormas_ped02(iif(Pedido_02_TrocaMer.cb_tabelavenda.Text='PP',1,0),0);
      Pedido_02_TrocaMer.fPd_GravarItens(1);

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.Add('DELETE FROM CADP02_TEMP WHERE ');
      DM1.query1.SQL.add('  P2TERM=:P2TERM');
      DM1.query1.SQL.add(' and P2DATHOR=:P2DATHOR');
      DM1.Query1.ParamByName('P2TERM').AsString   := Pedido_02_TrocaMer.mPd_NomeComputador;
      DM1.Query1.ParamByName('P2DATHOR').AsDateTime := Pedido_02_TrocaMer.mPd_DatHor_Eve;
      try
         DM1.Query1.ExecSQL;
         fDM1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query1,16937,'Pedido_02_TrocaMer','CADP01');
         end;
      Pedido_02_TrocaMer.QryItem_Nota.Close;
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.Add('DELETE FROM CADP01_TEMP WHERE ');
      DM1.query1.SQL.add('  P1TERM=:P1TERM');
      DM1.query1.SQL.add(' and P1DATHOR=:P1DATHOR');
      DM1.Query1.ParamByName('P1TERM').AsString   := Pedido_02_TrocaMer.mPd_NomeComputador;
      DM1.Query1.ParamByName('P1DATHOR').AsDateTime := Pedido_02_TrocaMer.mPd_DatHor_Eve;
      try
         DM1.Query1.ExecSQL;
         fDM1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query1,16937,'Pedido_02_TrocaMer','CADP01');
         end;

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.Add('DELETE FROM CADP02S_TEMP WHERE ');
      DM1.query1.SQL.add('  P2STERM=:P2TERM');
      DM1.query1.SQL.add(' and P2SDATHOR=:P2DATHOR');
      DM1.Query1.ParamByName('P2TERM').AsString   := Pedido_02_TrocaMer.mPd_NomeComputador;
      DM1.Query1.ParamByName('P2DATHOR').AsDateTime := Pedido_02_TrocaMer.mPd_DatHor_Eve;
      try
         DM1.Query1.ExecSQL;
         fDM1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query1,16937,'Pedido_02_TrocaMer','CADP01');
         end;

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.Add('DELETE FROM CADP02_MP_TEMP WHERE ');
      DM1.query1.SQL.add('  P2MP_TERM=:P2MP_TERM');
      DM1.query1.SQL.add(' and P2MP_DATHOR=:P2MP_DATHOR');
      DM1.Query1.ParamByName('P2MP_TERM').AsString   := Pedido_02_TrocaMer.mPd_NomeComputador;
      DM1.Query1.ParamByName('P2MP_DATHOR').AsDateTime := Pedido_02_TrocaMer.mPd_DatHor_Eve;
      try
         DM1.Query1.ExecSQL;
         fDM1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query1,16340,'Pedido_02_TrocaMer','CADP01');
         end;

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.Add('DELETE FROM CADPEN_TEMP WHERE ');
      DM1.query1.SQL.add('  PETERM=:P2TERM');
      DM1.query1.SQL.add(' and PEDATHOR=:P2DATHOR');
      DM1.Query1.ParamByName('P2TERM').AsString   := Pedido_02_TrocaMer.mPd_NomeComputador;
      DM1.Query1.ParamByName('P2DATHOR').AsDateTime := Pedido_02_TrocaMer.mPd_DatHor_Eve;
      try
         DM1.Query1.ExecSQL;
         fDM1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query1,16937,'Pedido_02_TrocaMer','CADP01');
         end;


      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.Add('DELETE FROM CADP01D_TEMP WHERE ');
      DM1.query1.SQL.add('  P1DTERM=:P2TERM');
      DM1.query1.SQL.add(' and P1DDATHOR=:P2DATHOR');
      DM1.Query1.ParamByName('P2TERM').AsString   := Pedido_02_TrocaMer.mPd_NomeComputador;
      DM1.Query1.ParamByName('P2DATHOR').AsDateTime := Pedido_02_TrocaMer.mPd_DatHor_Eve;
      try
         DM1.Query1.ExecSQL;
         fDM1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query1,16937,'Pedido_02_TrocaMer','CADP01');
         end;


      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.Add('DELETE FROM CADP02_MP_TEMP WHERE ');
      DM1.query1.SQL.add('  P2MP_TERM=:P2MP_TERM');
      DM1.query1.SQL.add(' and P2MP_DATHOR=:P2MP_DATHOR');
      DM1.Query1.ParamByName('P2MP_TERM').AsString   := Pedido_02_TrocaMer.mPd_NomeComputador;
      DM1.Query1.ParamByName('P2MP_DATHOR').AsDateTime := Pedido_02_TrocaMer.mPd_DatHor_Eve;
      try
         DM1.Query1.ExecSQL;
         fDM1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query1,19474,'Pedido_02_TrocaMer','CADP01');
         end;

      end;

   end;
bbCancelarClick(self);

end;

procedure TFrm_Ped_TrocaMer.bbTrocasAntClick(Sender: TObject);
begin
if Frm_Ped_TrocaMer_Efetivadas=nil then
   Application.CreateForm(TFrm_Ped_TrocaMer_Efetivadas,Frm_Ped_TrocaMer_Efetivadas)
else
   begin
   Frm_Ped_TrocaMer_Efetivadas.free;
   Frm_Ped_TrocaMer_Efetivadas:=nil;
   Application.CreateForm(TFrm_Ped_TrocaMer_Efetivadas,Frm_Ped_TrocaMer_Efetivadas);
   end;
Frm_Ped_TrocaMer_Efetivadas.edt_chaveped.Text:=edt_chaveped.Text;
Frm_Ped_TrocaMer_Efetivadas.edt_datap.Text   :=edt_datap.Text;
Frm_Ped_TrocaMer_Efetivadas.edt_totall.Text  :=edt_totall.Text;
Frm_Ped_TrocaMer_Efetivadas.edt_razao.Text   :=edt_razao.Text;
Frm_Ped_TrocaMer_Efetivadas.memo_endereco.Lines.Clear;
Frm_Ped_TrocaMer_Efetivadas.memo_endereco.Lines.Text:=memo_endereco.Text;

if DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('P2TRO_CODEMP',Form_SelEmp.CLB_EMPRESAS);
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADPRO','PDCODEMP','P2TRO_CODEMP','PDCODPRO','P2TRO_CODPRO_ENTRA');


Frm_Ped_TrocaMer_Efetivadas.Qr_Cotadas.Close;
Frm_Ped_TrocaMer_Efetivadas.Qr_Cotadas.SQL.Clear;
Frm_Ped_TrocaMer_Efetivadas.Qr_Cotadas.SQL.Add('Select P2TRO_CODEMP, '
                                              +'       P2TRO_LOTSEQ, '
                                              +'       P2TRO_CHAVE, '
                                              +'       P2TRO_ITEM, '
                                              +'       P2TRO_CODPRO_ENTRA, '
                                              +'       P2TRO_LOTE_ENTRA, '
                                              +'       P2TRO_DTVCTO_ENTRA, '
                                              +'       P2TRO_QTD_ENTRA, '
                                              +'       P2TRO_PCOUNI_ENTRA '
                                              +'       ,(P2TRO_PCOUNI_ENTRA*P2TRO_QTD_ENTRA) AS TOTALBRU '
                                              +' ,PDNOME,PDUND '
                  +'  from CADP02_TROCAS'+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                  +fla_EmpBaixaAlta(0,'CADPED','',codemp,'P2TRO_CODEMP',' AND ')
                  );
Frm_Ped_TrocaMer_Efetivadas.Qr_Cotadas.SQL.Add(' P2TRO_LOTSEQ=0'+Qr_Ped_OriP2LOTSEQ.AsString);
Frm_Ped_TrocaMer_Efetivadas.Qr_Cotadas.SQL.Add(' and P2TRO_CHAVE=0'+Qr_Ped_OriP2CHAVE.AsString);

Frm_Ped_TrocaMer_Efetivadas.Qr_Cotadas.SQL.Add(' Group by P2TRO_CODEMP, '
                                              +'       P2TRO_LOTSEQ, '
                                              +'       P2TRO_CHAVE, '
                                              +'       P2TRO_ITEM, '
                                              +'       P2TRO_CODPRO_ENTRA, '
                                              +'       P2TRO_LOTE_ENTRA, '
                                              +'       P2TRO_DTVCTO_ENTRA, '
                                              +'       P2TRO_QTD_ENTRA, '
                                              +'       P2TRO_PCOUNI_ENTRA '
                                              +' ,PDNOME,PDUND ');


try
   Frm_Ped_TrocaMer_Efetivadas.Qr_Cotadas.open;
except
   fMensagem('Campo Inexistente: '+FTestarCampos(Frm_Ped_TrocaMer_Efetivadas.Qr_Cotadas,['CADP02_TROCAS']),0,['0'],0);
   Frm_Ped_TrocaMer_Efetivadas.Qr_Cotadas.SQL.SaveToFile('C:\SQL.TXT');
   end;



Frm_Ped_TrocaMer_Efetivadas.ShowModal;
Frm_Ped_TrocaMer_Efetivadas.free;
Frm_Ped_TrocaMer_Efetivadas:=nil;




end;

procedure TFrm_Ped_TrocaMer.edt_chavepedEnter(Sender: TObject);
begin
if bbEfetuar.Enabled then
   begin
   if mem_ped_sub.Active then
      begin
      if mem_ped_sub.RecordCount>0 then
         begin
         Case fmensagem('A Troca atual não está gravado!'+#13
                        +'Deseja gravar agora?',0,['1','2','3'],0) of
             mrYes: bbEfetuar.Click;
             mrNo : bbCancelar.Click;
             else bbCancelar.Click;
             end;
          end
      else
          bbCancelar.Click;
      end;
   end;

end;

procedure TFrm_Ped_TrocaMer.bbCancelarClick(Sender: TObject);
begin
bbCancelar.Enabled:=false;
bbEfetuar.Enabled :=false;
bbAplicar.Enabled :=false;
Pedido_02_TrocaMer.mPd_FaturandoPedido:=true;
Pedido_02_TrocaMer.mAceita_pergunta   :=false;

Pedido_02_TrocaMer.btn_cancelarClick(self);
Pedido_02_TrocaMer.mPd_FaturandoPedido:=false;
Pedido_02_TrocaMer.mAceita_pergunta   :=true;

Qr_Ped_Ori.Close;
Qr_Ped01.Close;


edt_datap.Text :='/  /';
edt_totall.Text:='';
edt_razao.Text :='';
memo_endereco.Lines.Clear;

end;

procedure TFrm_Ped_TrocaMer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if Pedido_02_TrocaMer<>nil then
   begin
   Pedido_02_TrocaMer.free;
   Pedido_02_TrocaMer:=nil;
   end;
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;   

end;

procedure TFrm_Ped_TrocaMer.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if bbEfetuar.Enabled then
   begin
   if mem_ped_sub.Active then
      begin
      if mem_ped_sub.RecordCount>0 then
         begin
         Case fmensagem('A Troca atual não está gravado!'+#13
                        +'Deseja gravar agora?',0,['1','2','3'],0) of
             mrYes: bbEfetuar.Click;
             mrNo : bbCancelar.Click;
             else CanClose:=False;
             end;
          end
      else
          bbCancelar.Click;
      end;
   end;


end;

procedure TFrm_Ped_TrocaMer.FormKeyDown(Sender: TObject; var Key: Word;
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

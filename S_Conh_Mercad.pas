unit S_Conh_Mercad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask,Lerarq,func,S_Tra, Grids, DBGrids, S_SelEmp,
  ExtCtrls, AlinharEdit, DB, DBCtrls,S_PedCli, DBTables,S_Conh_MercCons,S_Conh_MercRelat;

type
  TFrm_Conh_Mercad = class(TForm)
    GroupBox1: TGroupBox;
    lbl_cod_conh: TLabel;
    CODCON: TEdit;
    sbConsultar: TSpeedButton;
    BBINCLUIR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBIMPRIMIR: TBitBtn;
    gb_dados_conhec: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    GB_PEDIDOS: TGroupBox;
    GB_ITENS: TGroupBox;
    Panel1: TPanel;
    dbg_pedidos: TDBGrid;
    st_chave: TStaticText;
    st_razao: TStaticText;
    st_pesob: TStaticText;
    st_qtdm3: TStaticText;
    st_vlrtot: TStaticText;
    st_fretecalc: TStaticText;
    st_fretedig: TStaticText;
    st_tipoent: TStaticText;
    C02_CHAVE: TEdit;
    C02_RAZSOC: TEdit;
    C02_PESOB: TEdit;
    C02_QTDM3: TEdit;
    C02_VLRTOT: TEdit;
    C02_FRETECALC: TEdit;
    C02_FRETEDIG: TEdit;
    C02_TIPO_ENT: TEdit;
    dbg_prod: TDBGrid;
    Panel2: TPanel;
    st_codpro: TStaticText;
    st_nompro: TStaticText;
    st_qtdent: TStaticText;
    st_qtdpen: TStaticText;
    st_valfre_calc: TStaticText;
    st_valfre_dig: TStaticText;
    st_und: TStaticText;
    BBSAIR: TBitBtn;
    bbCancelar: TBitBtn;
    Src_Con01: TDataSource;
    Src_Con02: TDataSource;
    db_QTDPED: TDBEdit;
    db_QTDITENS: TDBEdit;
    db_PESOB: TDBEdit;
    db_QTDM3: TDBEdit;
    db_VLRTOT: TDBEdit;
    db_VALFRE: TDBEdit;
    db_VALFRE_DIG: TDBEdit;
    db_DATCON: TDBEdit;
    db_DATFEC: TDBEdit;
    db_CODTRA: TDBEdit;
    db_NOMTRA: TDBEdit;
    Tb_Con03: TQuery;
    Tb_Con03C03CODEMP: TFloatField;
    Tb_Con03C03CODCON: TFloatField;
    Tb_Con03C03CODEMP_PED: TFloatField;
    Tb_Con03C03LOTSEQ_PED: TFloatField;
    Tb_Con03C03CHAVE_PED: TFloatField;
    Tb_Con03C03CODPRO: TFloatField;
    Tb_Con03C03QTDVEND: TFloatField;
    Tb_Con03C03QTDPEND: TFloatField;
    Tb_Con03C03QTDENT: TFloatField;
    Tb_Con03C03PESOB: TFloatField;
    Tb_Con03C03QTDM3: TFloatField;
    Tb_Con03C03VLRTOT: TFloatField;
    Tb_Con03C03VALFRE: TFloatField;
    Tb_Con03C03VALFRE_DIG: TFloatField;
    Tb_Con03C03SITENT: TFloatField;
    Tb_Con03C03CODUSR_INC: TFloatField;
    Tb_Con03C03CODUSR_ALT: TFloatField;
    Tb_Con03C03DTHR_ALT: TDateTimeField;
    Tb_Con03C03ESTADO: TFloatField;
    Tb_Con03C03ITEM: TFloatField;
    Tb_Con03PDNOME: TStringField;
    Tb_Con03PDMARCA: TStringField;
    Tb_Con03PDUND: TStringField;
    Tb_Con03PDPESOB: TFloatField;
    Tb_Con03PDQTDM3: TFloatField;
    Tb_Con03C03QTDMAN: TFloatField;
    Tb_Con03GRPERCFRE: TFloatField;
    U_Con03: TUpdateSQL;
    Src_Con03: TDataSource;
    Tb_Con03C03LOTE: TStringField;
    st_lote: TStaticText;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    procedure CODCONExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure Src_Con01DataChange(Sender: TObject; Field: TField);
    procedure Src_Con02DataChange(Sender: TObject; Field: TField);
    procedure BBSAIRClick(Sender: TObject);
    procedure db_CODTRAExit(Sender: TObject);
    procedure db_CODTRAKeyPress(Sender: TObject; var Key: Char);
    procedure C02_CHAVEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure C02_CHAVEExit(Sender: TObject);
    procedure C02_CHAVEEnter(Sender: TObject);
    procedure C02_TIPO_ENTEnter(Sender: TObject);
    procedure C02_TIPO_ENTExit(Sender: TObject);
    procedure GB_ITENSExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GB_PEDIDOSExit(Sender: TObject);
    procedure c(DataSet: TDataSet);
    procedure dbg_prodColExit(Sender: TObject);
    procedure Tb_Con03BeforeEdit(DataSet: TDataSet);
    procedure Tb_Con03BeforeInsert(DataSet: TDataSet);
    procedure db_DATCONExit(Sender: TObject);
    procedure dbg_pedidosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg_prodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Tb_Con03BeforeDelete(DataSet: TDataSet);
    procedure Tb_Con03BeforePost(DataSet: TDataSet);
    procedure Tb_Con03AfterInsert(DataSet: TDataSet);
    procedure sbConsultarClick(Sender: TObject);
    procedure db_CODTRAEnter(Sender: TObject);
    procedure BBIMPRIMIRClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function fCancelaConhecimento(ptipo: Integer): Boolean;
    function fAtualizaPed02(ptipo: Integer; pCodemp_Ped,pLotseq_ped,pChave,pCodpro,pItem,pQtd: Real;pLote:String ): Boolean;

    function fAjustarCon01(ptipo: Integer):Boolean;


  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
    mCodAtra_Ant: Real;
    mcodcon: Real;
    mOper_conh: Integer;
    mChavePed_ant: Real;
    mProcesso_pendente: Boolean;
    mOper_conh02: Integer;
    mOper_conh03: Integer;
    mCodpro_Ant: Real;
    mLote_Ant: String;

    ped_lotseq: Integer;

    mItem_Ant: Real;
    mQtdEnt_Ant: Real;
    mVlrTot_ant: Real;
    mFreteDig_ant: Real;
    mFreteCal_ant: Real;
    mPesob_ant: Real;
    mQtdm3_ant: Real;

    mItemPed: Integer;
    mQtdMaxItemPed: Real;
    mQtdVedaItemPed: Real;
    mQtdEntregueItemPed: Real;
    mQtdEntregandoItemPed: Real;
    mBloqueiaEvento03: Boolean;

    mPrecoUndItemPed: Real;
    mPercFreteItemPed: Real;
    mPesobItemPed: Real;
    mQtdM3ItemPed: Real;
    mCodVen_Ped,mLotSeq_Ped,mCodEmp_Ped,mCodcli_Ped: Real;
    Form_PedCli_Conh_Mercad: TFrm_PedCli;

    function flbloqueareg(pTipo: Integer): Boolean;
    function flcadcon03_local(ptipo,pcodemp: Integer; pCodCon,pCodEmp_Ped,pLotSeq_Ped,pChave_ped:Real): Boolean;

  end;

var
  Frm_Conh_Mercad: TFrm_Conh_Mercad;
implementation

uses S_DM1,S_DM6, func_excecoes;

{$R *.dfm}

procedure TFrm_Conh_Mercad.CODCONExit(Sender: TObject);
begin
if (BBINCLUIR.Focused) or (BBSAIR.Focused) then
   begin
   CODCON.Text:='';
   exit;
   end;
CODCON.Text:=fdeixanum2(CODCON.Text);
if trim(CODCON.Text)<>'' then
   begin
   if not flcadcon01(1,0,fsonumero(CODCON.Text)) then
      begin
      DM6.Tb_con02.Close;
      Tb_con03.Close;
      MessageDlg('Conhecimento não Encontrado!',mtWarning,[mbOk],0);
      CODCON.SetFocus;
      end
   else
      begin
      mcodcon:=fsonumero(CODCON.text);
      gb_dados_conhec.Enabled:=true;
      C02_CHAVE.Enabled      :=true;
//      C02_PESOB.Enabled      :=true;
//      C02_QTDM3.Enabled      :=true;
//      C02_FRETEDIG.Enabled   :=true;
      C02_TIPO_ENT.Enabled   :=true;

      BBINCLUIR.Enabled :=true;
      BBALTERAR.Enabled :=true;
      BBGRAVAR.Enabled  :=false;
      BBEXCLUIR.Enabled :=true;
      BBIMPRIMIR.Enabled:=true;
      end;
   end
end;

procedure TFrm_Conh_Mercad.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

mProcesso_pendente:=false;
mBloqueiaEvento03 :=true;



C02_CHAVE.Alignment       := TAlignment(1);
C02_PESOB.Alignment       := TAlignment(1);
C02_QTDM3.Alignment       := TAlignment(1);
C02_VLRTOT.Alignment      := TAlignment(1);
C02_FRETECALC.Alignment   := TAlignment(1);
C02_FRETEDIG.Alignment    := TAlignment(1);
Tb_Con03C03QTDVEND.DisplayFormat   :=mcasqtd;
Tb_Con03C03QTDENT.DisplayFormat    :=mcasqtd;
Tb_Con03C03QTDPEND.DisplayFormat   :=mcasqtd;
Tb_Con03C03QTDM3.DisplayFormat     :='#0.000';
Tb_Con03C03VLRTOT.DisplayFormat    :=mcasas;
Tb_Con03C03VALFRE.DisplayFormat    :=mcasas;
Tb_Con03C03VALFRE_DIG.DisplayFormat:=mcasas;

dbg_prod.ReadOnly:=true;
if DM6.Tb_Con01.Active then DM6.Tb_Con01.Close;
if DM6.Tb_Con02.Active then DM6.Tb_Con02.Close;
if Tb_Con03.Active then Tb_Con03.Close;

end;

procedure TFrm_Conh_Mercad.BBINCLUIRClick(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(C01CODCON) from CADCON01 ');
DM1.Query1.Open;
mcodcon:=DM1.query1.Fields[0].AsFloat+1;
if flcadcon01(1,0,mcodcon) then
   begin
   MessageDlg('Erro ao tentar criar um conhecimento novo. Tente Novamente!',mtInformation,[mbOk],0);
   exit;
   end;
mOper_conh:=0; // inclusao
CODCON.Enabled:=false;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Insert into CADCON01 (');
DM1.Query2.SQL.Add(' C01CODEMP');
DM1.Query2.SQL.Add(',C01CODCON');
DM1.Query2.SQL.Add(',C01DATCON ');
DM1.Query2.SQL.Add(',C01CODUSR_INC');
DM1.Query2.SQL.Add(',C01ESTADO');
DM1.Query2.SQL.Add(') Values (');
DM1.Query2.SQL.add(InttoStr(codemp));
DM1.Query2.SQL.add(','+FloattoStr(mcodcon));
DM1.Query2.SQL.add(','+chr(39)+FormatDatetime(fdt, date)+chr(39));
DM1.Query2.SQL.add(','+FloattoStr(codusr));
DM1.Query2.SQL.add(',1');
DM1.Query2.SQL.Add(')');
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro ao incluir o cadcon01',mtError,[mbOk],0);
   exit;
   end;

if not flcadcon01(1,0,mcodcon) then
   begin
   MessageDlg('Erro ao tentar localizar o conhecimento novo!',mtInformation,[mbOk],0);
   exit;
   end;
CODCON.Text:='';
gb_dados_conhec.Enabled:=true;
C02_CHAVE.Enabled      :=true;
DB_codTra.SetFocus;
DM6.Tb_Con01.Edit;
BBINCLUIR.Enabled :=false;
BBALTERAR.Enabled :=false;
BBGRAVAR.Enabled  :=true;
sbConsultar.Enabled:=false;
BBEXCLUIR.Enabled :=false;
BBIMPRIMIR.Enabled:=false;
//C02_PESOB.Enabled      :=true;
//C02_QTDM3.Enabled      :=true;
//C02_FRETEDIG.Enabled   :=true;
C02_TIPO_ENT.Enabled   :=true;
CODCON.Text:=FloatToStr(mcodcon);

end;

procedure TFrm_Conh_Mercad.BBALTERARClick(Sender: TObject);
begin
if DM6.Tb_Con01C01CODCON.IsNull then
   begin
   bbCancelar.Click;
   exit;
   end;

if not flcadcon01(1,0,fsonumero(CODCON.Text)) then
   begin
   MessageDlg('Este Conhecimento Foi Excluido, verifique!',mtInformation,[mbOk],0);
   CODCON.SetFocus;
   exit;
   end;
if DM6.Tb_Con01C01ESTADO.Value>0 then
   begin
   mcinst:='Este Conhecimento pode Estar Sendo Alterado em Outra Estação,'+#13
          +'Caso não Esteja entre na opção: SISTEMA->DESBLOQUEIA CONHECIMENTO '+#13
          +'e desbloqueia o mesmo';
   verteclado(0);
   MessageDlg(mcinst,mtWarning,[mbOk],0);
   exit;
   end;

if DM6.Tb_Con01C01DATFEC.AsDateTime>pdatanula then
   begin
   mcinst:='Este Conhecimento ja foi confirmado a entrega'+#13
          +'não pode ser alterado!';
   verteclado(0);
   MessageDlg(mcinst,mtWarning,[mbOk],0);
   exit;
   end;


DM6.Tb_Con01.Edit;
DM6.Tb_Con01C01QTDMAN.Value:=DM6.Tb_Con01C01QTDMAN.Value+1;
flbloqueareg(1);

CODCON.Enabled:=false;
mOper_conh:=1; // alteraçao
BBINCLUIR.Enabled :=false;
BBALTERAR.Enabled :=false;
BBGRAVAR.Enabled  :=true;
sbConsultar.Enabled:=false;
BBEXCLUIR.Enabled :=false;
BBIMPRIMIR.Enabled:=false;
gb_dados_conhec.Enabled:=true;
C02_CHAVE.Enabled      :=true;
//C02_PESOB.Enabled      :=true;
//C02_QTDM3.Enabled      :=true;
//C02_FRETEDIG.Enabled   :=true;

C02_TIPO_ENT.Enabled   :=true;
DB_codTra.SetFocus;
end;

procedure TFrm_Conh_Mercad.BBGRAVARClick(Sender: TObject);
begin
if mOper_conh=1 then // inclusao
   begin
   DM6.Tb_Con01C01CODUSR_ALT.Value:=codusr;
   DM6.Tb_Con01C01DTHR_ALT.Value  :=Now;
   end;


DM6.Tb_Con01C01ESTADO.Value:=0;
DM6.Tb_Con01.Post;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from CADCON03 where ');
if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
   DM1.Query2.SQL.Add(' C03CODEMP=0'+DM6.Tb_Con01C01CODEMP.AsString+' and ');
DM1.Query2.SQL.Add(' C03CODCON=0'+DM6.Tb_Con01C01CODCON.AsString);
DM1.Query2.SQL.Add(' AND C03QTDENT=0');
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 382 ao excluir o cadcon03',mtError,[mbOk],0);
   exit;
   end;
bbCancelar.Click;
end;

procedure TFrm_Conh_Mercad.BBEXCLUIRClick(Sender: TObject);
begin
if DM6.Tb_Con01C01CODCON.IsNull then
   begin
   bbCancelar.Click;
   exit;
   end;


if fmensagem('Quer Realmente Excluir o Conhecimento Selecionado?',0,['1','2'],2)<>mrYes then
   exit;


if not flcadcon01(1,0,fsonumero(CODCON.Text)) then
   begin
   MessageDlg('Este Conhecimento Foi Excluido, verifique!',mtInformation,[mbOk],0);
   CODCON.SetFocus;
   exit;
   end;
if DM6.Tb_Con01C01ESTADO.Value>0 then
   begin
   mcinst:='Este Conhecimento pode Estar Sendo Alterado em Outra Estação,'+#13
          +'Caso não Esteja entre na opção: SISTEMA->DESBLOQUEIA CONHECIMENTO '+#13
          +'e desbloqueia o mesmo';
   verteclado(0);
   MessageDlg(mcinst,mtWarning,[mbOk],0);
   exit;
   end;

if DM6.Tb_Con01C01DATFEC.AsDateTime>pdatanula then
   begin
   mcinst:='Este Conhecimento ja foi confirmado a entrega'+#13
          +'não pode ser alterado!';
   verteclado(0);
   MessageDlg(mcinst,mtWarning,[mbOk],0);
   exit;
   end;


BBINCLUIR.Enabled :=true;
BBALTERAR.Enabled :=true;
BBGRAVAR.Enabled  :=false;
BBEXCLUIR.Enabled :=true;
BBIMPRIMIR.Enabled:=true;
gb_dados_conhec.Enabled:=false;
C02_CHAVE.Enabled      :=false;
C02_PESOB.Enabled      :=false;
C02_QTDM3.Enabled      :=false;
C02_FRETEDIG.Enabled   :=false;
C02_TIPO_ENT.Enabled   :=false;
if not DM6.Tb_Con01C01CODCON.IsNull then
   begin
   if flcadcon03_local(0,DM6.Tb_Con01C01CODEMP.AsInteger,
                  DM6.Tb_Con01C01CODCON.Value,
                   0,0,0) then
      fCancelaConhecimento(0);
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Delete from CADCON03 where ');
   if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
      DM1.Query2.SQL.Add(' C03CODEMP=0'+DM6.Tb_Con01C01CODEMP.AsString+' and ');
   DM1.Query2.SQL.Add(' C03CODCON=0'+DM6.Tb_Con01C01CODCON.AsString);
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      MessageDlg('Erro 337 ao excluir o cadcon03',mtError,[mbOk],0);
      exit;
      end;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Delete from CADCON02 where ');
   if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
      DM1.Query2.SQL.Add(' C02CODEMP=0'+DM6.Tb_Con01C01CODEMP.AsString+' and ');
   DM1.Query2.SQL.Add(' C02CODCON=0'+DM6.Tb_Con01C01CODCON.AsString);
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      MessageDlg('Erro 346 ao excluir o cadcon02',mtError,[mbOk],0);
      exit;
      end;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Delete from CADCON01 where ');
   if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
      DM1.Query2.SQL.Add(' C01CODEMP=0'+DM6.Tb_Con01C01CODEMP.AsString+' and ');
   DM1.Query2.SQL.Add(' C01CODCON=0'+DM6.Tb_Con01C01CODCON.AsString);
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      MessageDlg('Erro 364 ao excluir o cadcon01',mtError,[mbOk],0);
      exit;
      end;
   end;
CODCON.Text:='';
BBCANCELAR.click;
DM6.Tb_Con01.close;
DM6.Tb_Con02.close;
Tb_Con03.Close;
end;

procedure TFrm_Conh_Mercad.bbCancelarClick(Sender: TObject);
begin
mProcesso_pendente:=false;
CODCON.Enabled:=true;
if DM6.Tb_Con01.State in [dsEdit,dsInsert] then
   begin
   if Tb_Con03.State in [dsEdit,dsInsert] then
      Tb_Con03.Cancel;
   if DM6.Tb_Con02.State in [dsEdit,dsInsert] then
      DM6.Tb_Con02.Cancel;
   DM6.Tb_Con01.Cancel;
   if mOper_conh=0 then // inclusao
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Delete from CADCON02 where ');
      if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
         DM1.Query2.SQL.Add(' C02CODEMP=0'+DM6.Tb_Con01C01CODEMP.AsString+' and ');
      DM1.Query2.SQL.Add(' C02CODCON=0'+DM6.Tb_Con01C01CODCON.AsString);
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         MessageDlg('Erro 318 ao excluir o cadcon02',mtError,[mbOk],0);
         exit;
         end;
      if flcadcon03_local(0,DM6.Tb_Con01C01CODEMP.AsInteger,
                DM6.Tb_Con01C01CODCON.Value,
                0,0,0) then
         fCancelaConhecimento(0);

      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Delete from CADCON03 where ');
      if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
         DM1.Query2.SQL.Add(' C03CODEMP=0'+DM6.Tb_Con01C01CODEMP.AsString+' and ');
      DM1.Query2.SQL.Add(' C03CODCON=0'+DM6.Tb_Con01C01CODCON.AsString);
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         MessageDlg('Erro 332 ao excluir o cadcon03',mtError,[mbOk],0);
         exit;
         end;

      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Delete from CADCON01 where ');
      if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
         DM1.Query2.SQL.Add(' C01CODEMP=0'+IntTosTr(codemp)+' and ');
      DM1.Query2.SQL.Add(' C01CODCON=0'+FloatToStr(mcodcon));
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         MessageDlg('Erro 304 ao excluir o cadcon01',mtError,[mbOk],0);
         exit;
         end;
      DM6.Tb_Con01.Close;
      DM6.Tb_Con02.Close;
      Tb_Con03.Close;
      end
   else
      begin
      flbloqueareg(0);
      end;
   end;
CODCON.Text :=DM6.Tb_Con01C01CODCON.AsString;
if trim(CODCON.text)='' then
   begin
   DM6.Tb_con01.Close;
   DM6.Tb_con02.Close;
   Tb_con03.Close;
   end;
BBINCLUIR.Enabled :=true;
BBALTERAR.Enabled :=true;
BBGRAVAR.Enabled  :=false;
BBEXCLUIR.Enabled :=true;
BBIMPRIMIR.Enabled:=true;
gb_dados_conhec.Enabled:=false;
C02_CHAVE.Enabled      :=false;
C02_PESOB.Enabled      :=false;
C02_QTDM3.Enabled      :=false;
C02_FRETEDIG.Enabled   :=false;
C02_TIPO_ENT.Enabled   :=false;
sbConsultar.Enabled    :=true;
C02_CHAVE.Text :='';
C02_RAZSOC.Text:='';
C02_PESOB.Text :='';
C02_QTDM3.Text :='';
C02_VLRTOT.Text :='';
C02_FRETECALC.Text :='';
C02_FRETEDIG.Text :='';
C02_TIPO_ENT.Text :='';
mOper_conh  :=0;
mOper_conh02:=0;
mOper_conh03:=0;
mBloqueiaEvento03 :=true;
mProcesso_pendente:=false;

end;

procedure TFrm_Conh_Mercad.Src_Con01DataChange(Sender: TObject;
  Field: TField);
begin
if not (DM6.Tb_Con01.State in [dsEdit,dsInsert]) then
   begin
   if DM6.Tb_Con01C01CODCON.Asfloat=0 then
      DM6.Tb_Con02.Close
   else
      begin
      if (not DM6.Tb_Con02.Active) or (DM6.Tb_Con01C01CODEMP.Asfloat<>DM6.Tb_Con02C02CODEMP.AsFloat)
          or (DM6.Tb_Con01C01CODCON.Asfloat<>DM6.Tb_Con02C02CODCON.AsFloat) then
         begin
         flcadcon02(0,DM6.Tb_Con01C01CODEMP.AsInteger,
                DM6.Tb_Con01C01CODCON.Value,
                0,0,0);
         end;
      end;
   end;

end;

procedure TFrm_Conh_Mercad.Src_Con02DataChange(Sender: TObject;
  Field: TField);
begin

if DM6.Tb_Con02C02CHAVE_PED.Isnull then
   Tb_Con03.Close
else
   begin
   if DM6.Tb_Con01C01CODCON.Asfloat>0 then
      begin
      if (not DM6.Tb_Con03.Active) or (DM6.Tb_Con02C02CODEMP.Asfloat<>DM6.Tb_Con03C03CODEMP.AsFloat)
          or (DM6.Tb_Con02C02CODEMP_PED.Asfloat<>DM6.Tb_Con03C03CODEMP_PED.AsFloat)
          or (DM6.Tb_Con02C02LOTSEQ_PED.Asfloat<>DM6.Tb_Con03C03LOTSEQ_PED.AsFloat)
          or (DM6.Tb_Con02C02CHAVE_PED.Asfloat<>DM6.Tb_Con03C03CHAVE_PED.AsFloat) then
          begin
          flcadcon03_local(0,DM6.Tb_Con01C01CODEMP.AsInteger,
                DM6.Tb_Con01C01CODCON.Value,
                DM6.Tb_Con02C02CODEMP_PED.Value,
                DM6.Tb_Con02C02LOTSEQ_PED.Value,
                DM6.Tb_Con02C02CHAVE_PED.Value);
         end;
      end;   
   end;
end;

procedure TFrm_Conh_Mercad.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Conh_Mercad.db_CODTRAExit(Sender: TObject);
begin
if DM6.Tb_Con01C01CODTRA.AsFloat<>0 then
   begin
   if not flcadtra(1,0,DM6.Tb_Con01C01CODTRA.AsString) then
      begin
      verteclado(0);
      MessageDlg('Transportadora não Cadastrada!',mtWarning,[mbOk],0);
      db_CODTRA.SetFocus;
      end
   else
      DM6.Tb_Con01TRRAZTRA.Value:=DM1.Tb_TraTRRAZTRA.Value;
   end;
if mCodAtra_Ant<>DM6.Tb_Con01C01CODTRA.Value then
   begin
   if not DM6.Tb_Con01.IsEmpty then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Update CADCON02 set C02CODTRA=0'+DM6.Tb_Con01C01CODTRA.AsString
                        +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' C02CODEMP=0'+DM6.Tb_Con01C01CODEMP.AsString+' and ')
                        +' C02CODCON=0'+DM6.Tb_Con01C01CODCON.AsString);
      try
         DM1.query1.execSql;
         fdm1StartCommit;
      except
         messageDlg('Erro 635 ao atualizar o cadcon02!',mtWarning,[mbOk],0);
         end;
      end;
   end;
end;

procedure TFrm_Conh_Mercad.db_CODTRAKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   DM6.Tb_Con01C01CODTRA.Value:=ValFloat(fChamaTra(0,'frm_Conh_Mercad',Key));
   key:=#0;
   end;

end;

procedure TFrm_Conh_Mercad.C02_CHAVEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=114 then
   begin
   Application.CreateForm(TFrm_PedCli, Form_PedCli_Conh_Mercad);
   Form_PedCli_Conh_Mercad.ori_pedcli:='frm_Conh_Mercad';
   Form_PedCli_Conh_Mercad.ShowModal;
   c02_chave.Text:=Form_PedCli_Conh_Mercad.chave.Text;
   Form_PedCli_Conh_Mercad.Tab_Mer.Visible:=false;
   Form_PedCli_Conh_Mercad.Tab_Ser.Visible:=false;
   Form_PedCli_Conh_Mercad.Free;
   Form_PedCli_Conh_Mercad:=nil;
   end;

end;

procedure TFrm_Conh_Mercad.C02_CHAVEExit(Sender: TObject);
begin
if not C02_TIPO_ENT.Focused then
   begin
   C02_CHAVE.Text:='';
   end;

C02_CHAVE.Text:=fdeixanum2(C02_CHAVE.Text);
if trim(C02_CHAVE.Text)<>'' then
   begin
   la_Empresas:=fEmpresas_Selecionadas('CAD01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select P1CODEMP,P1EMIDOC from CADP01 where '
                     +iif(la_Empresas='','',la_Empresas+' and ')
                     +' P1LOTSEQ=0'+FloatToStr(ls_numped)
                     +' and P1CHAVE=0'+C02_CHAVE.Text
                     +' and P1STATUS<'+mstatus_excluido+'');
   DM1.Query1.Open;
   if DM1.Query1.Eof then
      begin
      MessageDlg('Pedido não Encontrado!',mtWarning,[mbOk],0);
      C02_CHAVE.SetFocus;
      exit;
      end
   else if DM1.Query1.fieldbyName('P1EMIDOC').Asinteger=0 then
      begin
      MessageDlg('Pedido com Venda não Confirmada!!',mtWarning,[mbOk],0);
      C02_CHAVE.SetFocus;
      exit;
      end;

   mCodEmp_Ped:=DM1.Query1.Fields[0].AsFloat;



   DM1.Query5.Close;
   DM1.Query5.SQL.Clear;
   DM1.Query5.SQL.Add('Select P1CODEMP,P1LOTSEQ,P1CHAVE,P1CODCLI,P1CODVEN,CRAZAO,P1OBS1,P1OBS2,P1OBS3,'
                     +' P2LOTE AS P2LOTE,  sum(P2QTD) as P2QTD,sum(P2TOTLIQ) as P2TOTLIQ,');
   DM1.Query5.SQL.Add(' sum(P2DESCRAT) as P2DESCRAT, sum(P2ACRERAT) as P2ACRERAT, ');
   DM1.Query5.SQL.Add(' sum(NVL(P2QTD_ENTREGUE,0)) as P2QTD_ENTREGUE, ');
   DM1.Query5.SQL.Add(' sum(NVL(P2QTD_ENTREGANDO,0)) as P2QTD_ENTREGANDO, ');
   DM1.Query5.SQL.Add(' sum((P2QTD-NVL(P2QTDDEV,0))-(NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0)) )  as P2QTD_PENDENTE, ');

   DM1.Query5.SQL.Add(' sum( round( ( ((P2QTD-NVL(P2QTDDEV,0))-(NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0)))*  '
                     +' ((P2TOTLIQ-P2DESCRAT+P2ACRERAT)/P2QTD) ), '+DM1.Tb_PargerPCASAS.AsString+')) AS VALORMERC, ');
   DM1.Query5.SQL.Add('   sum( round( ( ((P2QTD-NVL(P2QTDDEV,0))-(NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0)))*  '
                     +' ((P2TOTLIQ-P2DESCRAT+P2ACRERAT)/((P2QTD-NVL(P2QTDDEV,0)))) * '
                     +'    DECODE(GRPERCFRE,NULL,0,GRPERCFRE/100))  , '+DM1.Tb_PargerPCASAS.AsString
                     +'     ))         AS VALFRE_CALC, ');
   DM1.Query5.SQL.Add('  sum( round( ( ((P2QTD-NVL(P2QTDDEV,0))-(NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0)))* PDPESOB),3)) AS PESOB,  ');
   DM1.Query5.SQL.Add('  sum( round( ( ((P2QTD-NVL(P2QTDDEV,0))-(NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0)))* PDQTDM3),3)) AS QTDM3  ');

   DM1.Query5.SQL.Add(' from CADP01,CADP02,CADCLI,CADPRO,CADGRU '
                     +' where '+
                     iif( DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+FloatToStr(mCodEmp_Ped)+' and P2CODEMP=P1CODEMP and ')
                     +' P1LOTSEQ=0'+inttoStr(ped_lotseq)+' and P2LOTSEQ=P1LOTSEQ '
                     +' and P1CHAVE=0'+Trim(C02_CHAVE.Text)
                     +' and P2CHAVE=P1CHAVE '
                     +' and P1STATUS<'+mstatus_excluido+' '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=P1CODEMP ')
                     +' and CCODCLI=P1CODCLI '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=P2CODEMP ')
                     +' and PDCODPRO=P2CODPRO '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and GRCODEMP(+)=PDCODEMP ')
                     +' and GRCODGRU(+)=PDCODGRU '
                     +' and ( (NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0))<(P2QTD-NVL(P2QTDDEV,0))) '
                     +' group by P1CODEMP,P1LOTSEQ,P1CHAVE,P1CODCLI,P1CODVEN,CRAZAO,P1OBS1,P1OBS2,P1OBS3,P2LOTE ');
   try
      DM1.Query5.Open
   except
      DM1.Query5.SQL.SaveToFile(mpastatemp +'sql_CONH.TXT');
      MessageDlg('Erro 480 ao selecionar o pedido!',mtError,[mbOk],0);
      exit;
      end;
   if DM1.Query5.Eof then
      begin
      MessageDlg('Não ha mercadoria a ser entregue deste pedido!',mtWarning,[mbOk],0);
      C02_CHAVE.SetFocus;
      exit;
      end;
   mCodVen_Ped:=DM1.Query5.fieldByName('P1CODVEN').Asfloat;
   mCodCli_Ped:=DM1.Query5.fieldByName('P1CODCLI').Asfloat;
   mLotSeq_Ped:=DM1.Query5.fieldByName('P1LOTSEQ').Asfloat;
   mCodEmp_Ped:=DM1.Query5.fieldByName('P1CODEMP').Asfloat;
   C02_RAZSOC.Text:=DM1.Query5.fieldbyName('CRAZAO').AsString;
   C02_PESOB.Text :=FormatFloat('#0.000', DM1.Query5.fieldbyName('PESOB').AsFloat);
   C02_QTDM3.Text :=FormatFloat('#0.000', DM1.Query5.fieldbyName('QTDM3').AsFloat);
   C02_VLRTOT.Text:=FormatFloat('#0.000', DM1.Query5.fieldbyName('VALORMERC').AsFloat);
   C02_FRETECALC.Text:=FormatFloat('#0.000', DM1.Query5.fieldbyName('VALFRE_CALC').AsFloat);
   C02_FRETEDIG.Text:=FormatFloat('#0.000', DM1.Query5.fieldbyName('VALFRE_CALC').AsFloat);
   if (mProcesso_pendente) and (mChavePed_ant<>fsonumero(C02_CHAVE.Text)) then
      begin
      fCancelaConhecimento(0);
      mProcesso_pendente:=false;
      end;

   if (mOper_conh02=0) or
      ((mOper_conh02=1) and  (mChavePed_ant<>fsonumero(C02_CHAVE.Text)) ) then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select count(*) from CADCON02 where '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' C02CODEMP=0'+IntToStr(codemp)+' and ')
                        +' C02CODCON=0'+FloatToStr(mcodcon)
//                        +' and C02CODEMP_PED=0'+DM1.Query5.fieldByName('P1CODEMP').AsString
                        +' and C02CODEMP_PED>0'
                        +' and C02LOTSEQ_PED=0'+DM1.Query5.fieldByName('P1LOTSEQ').AsString
                        +' and C02CHAVE_PED=0'+DM1.Query5.fieldByName('P1CHAVE').AsString);
      DM1.Query1.Open;
      if DM1.Query1.Fields[0].AsInteger>0 then
         begin
         MessageDlg('Esta chave ja esta relacionada nesta minuta!',mtWarning,[mbOk],0);
         C02_CHAVE.SetFocus;
         exit;
         end;
      end;

   if mOper_conh02=0 then // inclusao
      begin
      mProcesso_pendente:=true;
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.add('Insert into CADCON03 (');
      DM1.Query2.SQL.add(' C03CODEMP ');
      DM1.Query2.SQL.add(',C03CODCON ');
      DM1.Query2.SQL.add(',C03CODEMP_PED ');
      DM1.Query2.SQL.add(',C03LOTSEQ_PED ');
      DM1.Query2.SQL.add(',C03CHAVE_PED ');
      DM1.Query2.SQL.add(',C03CODPRO ');
      DM1.Query2.SQL.add(',C03LOTE ');
      DM1.Query2.SQL.add(',C03ITEM ');
      DM1.Query2.SQL.add(',C03QTDVEND ');
      DM1.Query2.SQL.add(',C03QTDPEND ');
      DM1.Query2.SQL.add(',C03QTDENT ');
      DM1.Query2.SQL.add(',C03PESOB ');
      DM1.Query2.SQL.add(',C03QTDM3 ');
      DM1.Query2.SQL.add(',C03VLRTOT ');
      DM1.Query2.SQL.add(',C03VALFRE ');
      DM1.Query2.SQL.add(',C03VALFRE_DIG ');
      DM1.Query2.SQL.add(',C03SITENT ');
      DM1.Query2.SQL.add(',C03CODUSR_INC ');
      DM1.Query2.SQL.add(',C03CODUSR_ALT ');
      DM1.Query2.SQL.add(',C03ESTADO ');
      DM1.Query2.SQL.add(',C03QTDMAN ');
      DM1.Query2.SQL.add(') Select ');
      DM1.Query2.SQL.add(IntToStr(codemp));
      DM1.Query2.SQL.add(','+FloatToStr(mcodcon));
      DM1.Query2.SQL.Add(',P1CODEMP,P1LOTSEQ ');
      DM1.Query2.SQL.Add(',P1CHAVE ');
      DM1.Query2.SQL.Add(',P2CODPRO ');
      DM1.Query2.SQL.Add(',P2LOTE ');
      DM1.Query2.SQL.Add(',P2ITEM ');
      DM1.Query2.SQL.Add(',P2QTD '); // QTD VENDIDA
      DM1.Query2.SQL.Add(',0  '); // QTD pENDENTE
   //   DM1.Query2.SQL.Add(',(P2QTD_ENTREGUE+P2QTD_ENTREGANDO) '); // QUANTIDADE
      DM1.Query2.SQL.Add(',((P2QTD-NVL(P2QTDDEV,0))-(NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0))) '); // QTD ENTREGUE
      DM1.Query2.SQL.Add(',(((P2QTD-NVL(P2QTDDEV,0))-(NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0)))*PDPESOB) AS PESOB ');
      DM1.Query2.SQL.Add(',(((P2QTD-NVL(P2QTDDEV,0))-(NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0)))*PDQTDM3) AS QTDM3 ');
      DM1.Query2.SQL.Add(', ( ((P2QTD-NVL(P2QTDDEV,0))-(NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0)))*  '
                     +' ((P2TOTLIQ-P2DESCRAT+P2ACRERAT)/(P2QTD-P2QTDDEV)) ) AS VALORMERC ');
      DM1.Query2.SQL.Add(',  ( ((P2QTD-NVL(P2QTDDEV,0))-(NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0)))*  '
                     +' ((P2TOTLIQ-P2DESCRAT+P2ACRERAT)/(P2QTD-NVL(P2QTDDEV,0))) * '
                     +'    DECODE(GRPERCFRE,NULL,0,GRPERCFRE/100))  AS VALFRE_CALC ');
      DM1.Query2.SQL.Add(',  ( ((P2QTD-NVL(P2QTDDEV,0))-(NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0)))*  '
                     +' ((P2TOTLIQ-P2DESCRAT+P2ACRERAT)/P2QTD) * '
                     +'    DECODE(GRPERCFRE,NULL,0,GRPERCFRE/100))  AS VALFRE_DIG ');
      DM1.Query2.sql.add(',0 as sitent ');
      DM1.Query2.sql.add(','+IntToStr(codusr)+' as codusr ');
      DM1.Query2.sql.add(',0 as usralt ');
      DM1.Query2.sql.add(',0 as estado ');
      DM1.Query2.sql.add(',0 as qtdman ');
      DM1.Query2.SQL.Add(' from CADP01,CADP02,CADCLI,CADPRO,CADGRU '
                     +' where '+
                     iif( DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+DM1.Query5.fieldByName('P1CODEMP').AsString
                     +' and P2CODEMP=P1CODEMP and ')
                     +' P1LOTSEQ=0'+DM1.Query5.fieldByName('P1LOTSEQ').AsString+' and P2LOTSEQ=P1LOTSEQ '
                     +' and P1CHAVE=0'+DM1.Query5.fieldByName('P1CHAVE').AsString
                     +' and P2CHAVE=P1CHAVE '
                     +' and P1STATUS<'+mstatus_excluido+' '
                     +' and ( (NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0))<(P2QTD-NVL(P2QTDDEV,0))) '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=P1CODEMP ')
                     +' and CCODCLI=P1CODCLI '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=P2CODEMP ')
                     +' and PDCODPRO=P2CODPRO '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and GRCODEMP(+)=PDCODEMP ')
                     +' and GRCODGRU(+)=PDCODGRU ');
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         DM1.Query2.SQL.SaveToFile(mpastatemp +'sql.TXT');
         end;

   // tabela 03
      DM1.Query3.close;
      DM1.Query3.Sql.Clear;
      DM1.Query3.SQL.add('Update CADP02 set P2QTD_ENTREGANDO=NVL(P2QTD_ENTREGANDO,0)+(P2QTD-NVL(P2QTDDEV,0))-(NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0)) '
                        +' where '
                        +iif( DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+DM1.Query5.fieldByName('P1CODEMP').AsString
                        +'and ')
                        +' P2LOTSEQ=0'+DM1.Query5.fieldByName('P1LOTSEQ').AsString
                        +' and P2CHAVE=0'+DM1.Query5.fieldByName('P1CHAVE').AsString);
      try
         DM1.Query3.execsql;
         fdm1StartCommit;
      except
         DM1.Query3.SQL.SaveToFile(mpastatemp +'sql.TXT');
         end;
      end;
   flcadcon03_local(0,DM6.Tb_Con01C01CODEMP.AsInteger,
                DM6.Tb_Con01C01CODCON.Value,
                DM1.Query5.FieldByName('P1CODEMP').Asfloat,
                DM1.Query5.FieldByName('P1LOTSEQ').Asfloat,
                DM1.Query5.FieldByName('P1CHAVE').Asfloat);
   C02_TIPO_ENT.Text:='T';

   end;
end;

procedure TFrm_Conh_Mercad.C02_CHAVEEnter(Sender: TObject);
begin
C02_CHAVE.SelectAll;
end;

procedure TFrm_Conh_Mercad.C02_TIPO_ENTEnter(Sender: TObject);
begin
C02_TIPO_ENT.SelectAll;

end;

procedure TFrm_Conh_Mercad.C02_TIPO_ENTExit(Sender: TObject);
begin
if C02_CHAVE.Focused then
   exit;
if not DM6.Tb_Con01C01CODCON.IsNull then
   begin
   if trim(C02_TIPO_ENT.Text)<>'' then
      begin
      C02_TIPO_ENT.Text:=UpperCase(C02_TIPO_ENT.Text);
      if (C02_TIPO_ENT.Text<>'T') and
         (C02_TIPO_ENT.Text<>'P') then
         begin
         MessageDlg('Valor Válido para este campo'+#13
                   +'T-Para Total P-Para Parcial!',mtwarning,[mbOk],0);
         C02_TIPO_ENT.SetFocus;
         end
      else
         begin
         if C02_TIPO_ENT.Text='P' then
            begin
            dbg_prod.ReadOnly     :=false;
            mBloqueiaEvento03     :=false;
            dbg_prod.SetFocus;
            end
         else
            begin
            if mOper_conh02=0 then
               DM6.Tb_Con02.Append
            else
               DM6.Tb_Con02.Edit;
            DM6.Tb_Con02C02CODEMP.Value      :=DM6.Tb_Con01C01CODEMP.Value;
            DM6.Tb_Con02C02CODCON.Value      :=DM6.Tb_Con01C01CODCON.Value;
            DM6.Tb_Con02C02CODEMP_PED.Value  :=mCodEmp_Ped;
            DM6.Tb_Con02C02LOTSEQ_PED.Value  :=mLotSeq_Ped;
            DM6.Tb_Con02C02CODVEN.Value      :=mCodVen_Ped;
            DM6.Tb_Con02C02CODTRA.Value      :=DM6.Tb_Con01C01CODTRA.Value;
            DM6.Tb_Con02C02CHAVE_PED.Value   :=fsonumero(C02_CHAVE.Text);
            DM6.Tb_Con02C02PESOB.Value       :=ValFloat(C02_PESOB.Text);
            DM6.Tb_Con02C02QTDM3.Value       :=ValFloat(C02_QTDM3.Text);
            DM6.Tb_Con02C02VLRTOT.Value      :=ValFloat(C02_VLRTOT.Text);
            DM6.Tb_Con02C02VALFRE.Value      :=ValFloat(C02_FRETECALC.Text);
            DM6.Tb_Con02C02VALFRE_DIG.Value  :=ValFloat(C02_FRETEDIG.Text);
            DM6.Tb_Con02C02SITENT.Value      :=0;
            DM6.Tb_Con02C02TIPO_ENTREGA.Value:=1;
            DM6.Tb_Con02C02OBSERVACAO.Value  :=' ';
            DM6.Tb_Con02C02OBS_CONHEC.Value  :=' ';
            DM6.Tb_Con02C02CODUSR_INC.Value  :=codusr;
            DM6.Tb_Con02C02ESTADO.Value      :=0;
            DM6.Tb_Con02C02DATCON.Value      :=DM6.Tb_Con01C01DATCON.Value;
            DM6.Tb_Con02C02QTDMAN.Value      :=0;
            DM6.Tb_Con02C02CODCLI.Value      :=mCodCli_Ped;
            DM6.Tb_Con02CRAZAO.Value         :=C02_RAZSOC.Text;
            fAjustarCon01(0);
            DM6.Tb_Con02.Post;
            C02_CHAVE.Text :='';
            C02_RAZSOC.Text:='';
            C02_PESOB.Text :='';
            C02_QTDM3.Text :='';
            C02_VLRTOT.Text :='';
            C02_FRETECALC.Text :='';
            C02_FRETEDIG.Text :='';
            C02_TIPO_ENT.Text :='';
            mProcesso_pendente:=false;
            C02_CHAVE.SetFocus;
            dbg_prod.ReadOnly:=true;
            end;
         end;
      end;
   end;
end;

procedure TFrm_Conh_Mercad.GB_ITENSExit(Sender: TObject);
begin
if (not DM6.Tb_Con01C01CODCON.IsNull) and (mProcesso_pendente) then
   begin
   if mOper_conh02=0 then
      DM6.Tb_Con02.Append
   else
      DM6.Tb_Con02.Edit;
   DM6.Tb_Con02C02CODEMP.Value      :=DM6.Tb_Con01C01CODEMP.Value;
   DM6.Tb_Con02C02CODCON.Value      :=DM6.Tb_Con01C01CODCON.Value;
   DM6.Tb_Con02C02CODEMP_PED.Value  :=mCodEmp_Ped;
   DM6.Tb_Con02C02LOTSEQ_PED.Value  :=mLotSeq_Ped;
   DM6.Tb_Con02C02CODVEN.Value      :=mCodVen_Ped;
   DM6.Tb_Con02C02CODTRA.Value      :=DM6.Tb_Con01C01CODTRA.Value;
   DM6.Tb_Con02C02CHAVE_PED.Value   :=fsonumero(C02_CHAVE.Text);
   DM6.Tb_Con02C02PESOB.Value       :=ValFloat(C02_PESOB.Text);
   DM6.Tb_Con02C02QTDM3.Value       :=ValFloat(C02_QTDM3.Text);
   DM6.Tb_Con02C02VLRTOT.Value      :=ValFloat(C02_VLRTOT.Text);
   DM6.Tb_Con02C02VALFRE.Value      :=ValFloat(C02_FRETECALC.Text);
   DM6.Tb_Con02C02VALFRE_DIG.Value  :=ValFloat(C02_FRETEDIG.Text);
   DM6.Tb_Con02C02SITENT.Value      :=0;
   DM6.Tb_Con02C02TIPO_ENTREGA.Value:=1;
   DM6.Tb_Con02C02OBSERVACAO.Value  :=' ';
   DM6.Tb_Con02C02OBS_CONHEC.Value  :=' ';
   DM6.Tb_Con02C02CODUSR_INC.Value  :=codusr;
   DM6.Tb_Con02C02ESTADO.Value      :=0;
   DM6.Tb_Con02C02DATCON.Value      :=DM6.Tb_Con01C01DATCON.Value;
   DM6.Tb_Con02C02QTDMAN.Value      :=0;
   DM6.Tb_Con02CRAZAO.Value         :=C02_RAZSOC.Text;
   DM6.Tb_Con02C02CODCLI.Value      :=mCodCli_Ped;
   fAjustarCon01(0);
   DM6.Tb_Con02.Post;
   C02_CHAVE.Text :='';
   C02_RAZSOC.Text:='';
   C02_PESOB.Text :='';
   C02_QTDM3.Text :='';
   C02_VLRTOT.Text :='';
   C02_FRETECALC.Text :='';
   C02_FRETEDIG.Text :='';
   C02_TIPO_ENT.Text :='';
   mProcesso_pendente:=false;
   mBloqueiaEvento03     :=true;
   if (not bbCancelar.Focused) and (not BBGRAVAR.Focused) and (not BBSAIR.Focused) then
      C02_CHAVE.SetFocus;
   end;
dbg_prod.ReadOnly     :=true;
end;

procedure TFrm_Conh_Mercad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

if DM6.Tb_Con01.Active then
   DM6.Tb_Con01.Close;
if DM6.Tb_Con02.Active then
   DM6.Tb_Con02.Close;
if Tb_Con03.Active then
   Tb_Con03.Close;


Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Conh_Mercad.GB_PEDIDOSExit(Sender: TObject);
begin
if (not dbg_prod.Focused) and (mProcesso_pendente) then
   begin
   fCancelaConhecimento(0);
   mProcesso_pendente:=false;
   end;
end;

function TFrm_Conh_Mercad.fCancelaConhecimento(ptipo: Integer): Boolean;
begin
result:=true;
Tb_Con03.First;
While not Tb_Con03.Eof do
   begin
   DM1.Query3.close;
   DM1.Query3.Sql.Clear;
   DM1.Query3.SQL.add('Update CADP02 set P2QTD_ENTREGANDO=NVL(P2QTD_ENTREGANDO,0)-0'+
                     mudavp(Tb_Con03C03QTDENT.AsString)
                     +' where '
//                     +iif( DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+Tb_Con03C03CODEMP_PED.AsString
                     +iif( DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P2CODEMP>0 '
                     +' and ')
                     +' P2LOTSEQ=0'+Tb_Con03C03LOTSEQ_PED.AsString
                     +' and P2CHAVE=0'+Tb_Con03C03CHAVE_PED.AsString
                     +' and P2CODPRO=0'+Tb_Con03C03CODPRO.AsString
                     +' and P2ITEM=0'+Tb_Con03C03ITEM.AsString);
   try
      DM1.Query3.execsql;
      fdm1StartCommit;
   except
      DM1.Query3.SQL.SaveToFile(mpastatemp +'sql.TXT');
      result:=false;
      exit;
      end;
   Tb_con03.Next;
   end;
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('Delete from CADCON03 where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' C03CODEMP=0'+Tb_Con03C03CODEMP.AsString+' and ')
                  +' C03CODCON=0'+Tb_Con03C03CODCON.AsString
//                  +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'','  and C03CODEMP_PED=0'+Tb_Con03C03CODEMP_PED.AsString)
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'','  and C03CODEMP_PED>0 ')
                  +' and C03LOTSEQ_PED=0'+Tb_Con03C03LOTSEQ_PED.AsString
                  +' and C03CHAVE_PED=0'+Tb_Con03C03CHAVE_PED.AsString);
try
   DM1.Query1.execsql;
   fdm1StartCommit;
except
   DM1.Query1.SQL.SaveToFile(mpastatemp +'sql.TXT');
   result:=false;
   exit;
   end;
flcadcon03_local(0,DM6.Tb_Con01C01CODEMP.AsInteger,
             DM6.Tb_Con01C01CODCON.Value,
             Tb_Con03C03CODEMP_PED.Asfloat,
             Tb_Con03C03LOTSEQ_PED.Asfloat,
             Tb_Con03C03CHAVE_PED.Asfloat);

end;
function TFrm_Conh_Mercad.fAtualizaPed02(ptipo: Integer; pCodemp_Ped,pLotseq_ped,pChave,pCodpro,pItem,pQtd: Real;pLote:String ): Boolean;
// ptipo 0-Adiciona 1-Subtrai
begin
DM1.Query3.close;
DM1.Query3.Sql.Clear;
DM1.Query3.SQL.add('Update CADP02 set P2QTD_ENTREGANDO=NVL(P2QTD_ENTREGANDO,0)'+iif(ptipo=0,'+','-')+'0'+
                  mudavp(FloatToStr(pqtd))
                  +' where '
                  +iif( DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+FloatToStr(pCodEmp_Ped)
                  +'and ')
                  +' P2LOTSEQ=0'+FloatToStr(pLotSeq_Ped)
                  +' and P2CHAVE=0'+FloatToStr(pChave)
                  +' and P2CODPRO=0'+FloatTostr(pCodpro)
                  +' and P2ITEM=0'+FloatToStr(pItem));
if (Trim(plote)='')  then
   DM1.Query3.Sql.add(' and (P2LOTE is null or P2LOTE='+chr(39)+' '+chr(39)+')')
else
   DM1.Query3.Sql.add(' and P2LOTE='+chr(39)+pLote+chr(39));
try
   DM1.Query3.execsql;
   fdm1StartCommit;
except
   DM1.Query3.SQL.SaveToFile(mpastatemp +'sql.TXT');
   result:=false;
   exit;
   end;
result:=true;
end;


function TFrm_Conh_Mercad.flcadcon03_local(ptipo,pcodemp: Integer; pCodCon,pCodEmp_Ped,pLotSeq_Ped,pChave_ped:Real): Boolean;
begin
frm_Conh_Mercad.Tb_Con03.Close;
frm_Conh_Mercad.Tb_Con03.SQL.Clear;
frm_Conh_Mercad.Tb_Con03.SQL.Add('Select C03CODEMP,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       C03CODCON,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       C03CODEMP_PED,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       C03LOTSEQ_PED,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       C03CHAVE_PED,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       C03CODPRO,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       C03QTDVEND,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       C03QTDENT,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       C03QTDPEND,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       C03PESOB,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       C03QTDM3,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       C03VLRTOT,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       C03VALFRE,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       C03VALFRE_DIG,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       C03SITENT,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       C03CODUSR_INC,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       C03CODUSR_ALT,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       C03DTHR_ALT,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       C03QTDMAN,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       C03ESTADO,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       C03ITEM,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       C03LOTE,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       PDNOME,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       PDMARCA,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       PDUND,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       PDPESOB,');
frm_Conh_Mercad.Tb_Con03.SQL.Add('       PDQTDM3,GRPERCFRE');
frm_Conh_Mercad.Tb_Con03.SQL.Add('from CADCON03,CADPRO,CADGRU where ');
if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   frm_Conh_Mercad.Tb_Con03.SQL.Add(' PDCODEMP=C03CODEMP and ');
frm_Conh_Mercad.Tb_Con03.SQL.Add('   PDCODPRO=C03CODPRO ');
if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   frm_Conh_Mercad.Tb_Con03.SQL.Add(' and C03CODEMP=0'+IntTostr(iif(pcodemp>0,pcodemp,codemp)));
if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   frm_Conh_Mercad.Tb_Con03.SQL.Add(' and GRCODEMP=PDCODEMP ');
frm_Conh_Mercad.Tb_Con03.SQL.Add(' and GRCODGRU(+)=PDCODGRU ');
if pCodCon<>0 then
   frm_Conh_Mercad.Tb_Con03.SQL.Add(' and C03CODCON=0'+FloatTostr(pCodCon));
if pChave_ped<>0 then
   begin
   frm_Conh_Mercad.Tb_Con03.SQL.Add(' and C03LOTSEQ_PED=0'+FloatTostr(pLotSeq_Ped));
   if pCodEmp_Ped<>0 then
      frm_Conh_Mercad.Tb_Con03.SQL.Add(' and C03CODEMP_PED>0');
   frm_Conh_Mercad.Tb_Con03.SQL.Add(' and C03CHAVE_PED=0'+FloatTostr(pChave_ped));
   end
else if pCodEmp_Ped<>0 then
   begin
   frm_Conh_Mercad.Tb_Con03.SQL.Add(' and C03CODEMP_PED>0');
   end;
frm_Conh_Mercad.Tb_con03.sql.SaveToFile(mpastatemp +'sql.txt');

frm_Conh_Mercad.Tb_con03.Open;
if frm_Conh_Mercad.Tb_con03.Eof then
   result:=false
else
   result:=true;
end;

procedure TFrm_Conh_Mercad.c(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   MessageDlg('Ja Existe um Registro igual a Este Click em Cancelar!',mtInformation,[mbOk],0);
   end;

end;

procedure TFrm_Conh_Mercad.dbg_prodColExit(Sender: TObject);
begin
if Tb_Con03.State in [dsEdit,dsInsert] then
   begin
   if dbg_prod.SelectedField=Tb_Con03C03CODPRO then
      begin
      if not flcadpro(1,0,0,Tb_Con03C03CODPRO.AsString) then
         begin
         MessageDlg('Produto não Encontrado!',mtWarning,[mbOk],0);
         dbg_prod.SelectedField:=Tb_Con03C03CODPRO;
         abort;
         end;
      DM1.Query3.close;
      DM1.Query3.Sql.Clear;
      DM1.Query3.SQL.add('Select P2QTD_ENTREGANDO,(P2QTD-NVL(P2QTDDEV,0)) AS P2QTDDEV ,NVL(P2QTD_ENTREGUE,0) AS P2QTD_ENTREGUE,P2ITEM,P2TOTLIQ,P2DESCRAT,P2ACRERAT,P2LOTE  from CADP02 '
                        +' where '
                        +iif( DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+FloatToStr(mCodEmp_ped)
                        +'and ')
                        +' P2LOTSEQ=0'+FloatToStr(mLotseq_ped)
                        +' and P2CHAVE=0'+C02_CHAVE.Text
                        +' and P2CODPRO=0'+Tb_Con03C03CODPRO.AsString);
      DM1.Query3.Open;
      if DM1.Query3.Eof then
         begin
         MessageDlg('Produto não Encontrado no Pedido!',mtWarning,[mbOk],0);
         dbg_prod.SelectedField:=Tb_Con03C03CODPRO;
         abort;
         end;
      if (st_lote.Visible) and (trim(Tb_Con03C03LOTE.AsString)='') then
         Tb_Con03C03LOTE.AsString:=DM1.Query3.FieldbyName('P2LOTE').Asstring;
      if not st_lote.Visible then
         begin
         mItemPed             :=0;
         mQtdMaxItemPed       :=0;
         mQtdVedaItemPed      :=0;
         mQtdEntregueItemPed  :=0;
         mQtdEntregandoItemPed:=0;

         While not DM1.query3.Eof do
            begin
            if DM1.Query3.FieldByName('P2QTD').AsFloat-
               DM1.Query3.FieldByName('P2QTDDEV').AsFloat -
               (DM1.Query3.FieldByName('P2QTD_ENTREGANDO').AsFloat
               +DM1.Query3.FieldByName('P2QTD_ENTREGUE').AsFloat)>0 then
               begin
               mItemPed:=DM1.query3.FieldbyName('P2ITEM').AsInteger;
               mQtdMaxItemPed:=(DM1.Query3.FieldByName('P2QTD').AsFloat-
                               DM1.Query3.FieldByName('P2QTDDEV').AsFloat) -
                              (DM1.Query3.FieldByName('P2QTD_ENTREGANDO').AsFloat
                              +DM1.Query3.FieldByName('P2QTD_ENTREGUE').AsFloat);
               mQtdVedaItemPed      :=DM1.Query3.FieldByName('P2QTD').AsFloat
                                     -DM1.Query3.FieldByName('P2QTDDEV').AsFloat;
               mQtdEntregueItemPed  :=DM1.Query3.FieldByName('P2QTD_ENTREGUE').AsFloat;
               mQtdEntregandoItemPed:=DM1.Query3.FieldByName('P2QTD_ENTREGANDO').AsFloat;
               break;
               end;
            DM1.query3.Next;
            end;
         DM1.query3.First;
         mPrecoUndItemPed:= (DM1.Query3.FieldByName('P2TOTLIQ').AsFloat-
                               DM1.Query3.FieldByName('P2DESCRAT').AsFloat+
                               DM1.Query3.FieldByName('P2ACRERAT').AsFloat)
                               /(DM1.Query3.FieldByName('P2QTD').AsFloat
                                 -DM1.Query3.FieldByName('P2QTDDEV').AsFloat);
         if flqr1('GRPERCFRE','GR','CADGRU','N','GRCODGRU',DM1.Tb_ProPDCODGRU.AsString) then
            mPercFreteItemPed:=DM1.Query1.Fields[0].AsFloat
         else
             mPercFreteItemPed:=0;
         mPesobItemPed:=DM1.Tb_ProPDPESOB.Value;
         mQtdM3ItemPed:=DM1.Tb_ProPDQTDM3.Value;
         if mOper_conh03=1 then
            begin
            if (Tb_Con03C03CODPRO.Value=mCodpro_Ant) and
               (trim(Tb_Con03C03LOTE.AsString)=Trim(mLote_Ant)) then
               begin
               mQtdMaxItemPed:=mQtdMaxItemPed+Tb_Con03C03QTDENT.Value;
               mQtdVedaItemPed      :=DM1.Query3.FieldByName('P2QTD').AsFloat-
                                      DM1.Query3.FieldByName('P2QTDDEV').AsFloat;
   //            mQtdEntregueItemPed  :=mQtdEntregueItemPed-Tb_Con03C03QTDENT.Value;
               mQtdEntregandoItemPed:=mQtdEntregandoItemPed-Tb_Con03C03QTDENT.Value;
               end;
            end
         else
            begin
            Tb_Con03C03QTDENT.Value :=mQtdMaxItemPed;
            Tb_Con03C03QTDPEND.Value:=0;
            end;
         Tb_Con03C03VLRTOT.Value    :=Tb_Con03C03QTDENT.Value*mPrecoUndItemPed;
         try
            Tb_Con03C03VALFRE.Value:=Tb_Con03C03VLRTOT.Value*mPercFreteItemPed/100;
         except
            Tb_Con03C03VALFRE.value:=0;
            end;
         Tb_Con03C03VALFRE_DIG.Value:=Tb_Con03C03VALFRE.Value;
         Tb_Con03PDPESOB.Value   :=Tb_Con03C03QTDENT.Value*mPesobItemPed;
         Tb_Con03PDQTDM3.Value   :=Tb_Con03C03QTDENT.Value*mQtdM3ItemPed;
         Tb_Con03PDNOME.Value    :=DM1.Tb_ProPDNOME.Value;
         Tb_Con03PDUND.Value     :=DM1.Tb_ProPDNOME.Value;
         end
      end
   else if dbg_prod.SelectedField=Tb_Con03C03LOTE then
      begin
      DM1.Query3.close;
      DM1.Query3.Sql.Clear;
      DM1.Query3.SQL.add('Select NVL(P2QTD_ENTREGANDO,0) AS  P2QTD_ENTREGANDO,P2QTD,P2QTDDEV,NVL(P2QTD_ENTREGUE,0) AS  P2QTD_ENTREGUE,P2ITEM,P2TOTLIQ,P2DESCRAT,P2ACRERAT  from CADP02 '
                        +' where '
                        +iif( DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+FloatToStr(mCodEmp_ped)
                        +'and ')
                        +' P2LOTSEQ=0'+FloatToStr(mLotseq_ped)
                        +' and P2CHAVE=0'+C02_CHAVE.Text
                        +' and P2CODPRO=0'+Tb_Con03C03CODPRO.AsString);
      if trim(Tb_Con03C03LOTE.AsString)='' then
         DM1.Query3.Sql.add(' and (P2LOTE is null or P2LOTE='+chr(39)+' '+chr(39)+')')
      else
         DM1.Query3.Sql.add(' and P2LOTE='+chr(39)+Tb_Con03C03LOTE.AsString+chr(39)+')');
      DM1.Query3.Open;
      if DM1.Query3.Eof then
         begin
         MessageDlg('Lote não Encontrado no Pedido!',mtWarning,[mbOk],0);
         dbg_prod.SelectedField:=Tb_Con03C03CODPRO;
         abort;
         end;
      mItemPed             :=0;
      mQtdMaxItemPed       :=0;
      mQtdVedaItemPed      :=0;
      mQtdEntregueItemPed  :=0;
      mQtdEntregandoItemPed:=0;

      While not DM1.query3.Eof do
         begin
         if (DM1.Query3.FieldByName('P2QTD').AsFloat-
            DM1.Query3.FieldByName('P2QTDDEV').AsFloat)
            -(DM1.Query3.FieldByName('P2QTD_ENTREGANDO').AsFloat
            +DM1.Query3.FieldByName('P2QTD_ENTREGUE').AsFloat)>0 then
            begin
            mItemPed:=DM1.query3.FieldbyName('P2ITEM').AsInteger;
            mQtdMaxItemPed:=DM1.Query3.FieldByName('P2QTD').AsFloat-
                           -DM1.Query3.FieldByName('P2QTDDEV').AsFloat
                           -(DM1.Query3.FieldByName('P2QTD_ENTREGANDO').AsFloat
                           +DM1.Query3.FieldByName('P2QTD_ENTREGUE').AsFloat);
            mQtdVedaItemPed      :=DM1.Query3.FieldByName('P2QTD').AsFloat
                                  -DM1.Query3.FieldByName('P2QTDDEV').AsFloat;
            mQtdEntregueItemPed  :=DM1.Query3.FieldByName('P2QTD_ENTREGUE').AsFloat;
            mQtdEntregandoItemPed:=DM1.Query3.FieldByName('P2QTD_ENTREGANDO').AsFloat;
            break;
            end;
         DM1.query3.Next;
         end;
      DM1.query3.First;
      mPrecoUndItemPed:= (DM1.Query3.FieldByName('P2TOTLIQ').AsFloat-
                            DM1.Query3.FieldByName('P2DESCRAT').AsFloat+
                            DM1.Query3.FieldByName('P2ACRERAT').AsFloat)
                            /(DM1.Query3.FieldByName('P2QTD').AsFloat-
                             DM1.Query3.FieldByName('P2QTDDEV').AsFloat);

      if flqr1('GRPERCFRE','GR','CADGRU','N','GRCODGRU',DM1.Tb_ProPDCODGRU.AsString) then
         mPercFreteItemPed:=DM1.Query1.Fields[0].AsFloat
      else
          mPercFreteItemPed:=0;
      mPesobItemPed:=DM1.Tb_ProPDPESOB.Value;
      mQtdM3ItemPed:=DM1.Tb_ProPDQTDM3.Value;
      if mOper_conh03=1 then
         begin
         if (Tb_Con03C03CODPRO.Value=mCodpro_Ant) and
            (trim(Tb_Con03C03LOTE.AsString)=Trim(mLote_Ant)) then
            begin
            mQtdMaxItemPed:=mQtdMaxItemPed+Tb_Con03C03QTDENT.Value;
            mQtdVedaItemPed      :=DM1.Query3.FieldByName('P2QTD').AsFloat-
                                   DM1.Query3.FieldByName('P2QTDDEV').AsFloat;
//            mQtdEntregueItemPed  :=mQtdEntregueItemPed-Tb_Con03C03QTDENT.Value;
            mQtdEntregandoItemPed:=mQtdEntregandoItemPed-Tb_Con03C03QTDENT.Value;
            end;
         end
      else
         begin
         Tb_Con03C03QTDENT.Value :=mQtdMaxItemPed;
         Tb_Con03C03QTDPEND.Value:=0;
         end;
      Tb_Con03C03VLRTOT.Value    :=Tb_Con03C03QTDENT.Value*mPrecoUndItemPed;
      try
         Tb_Con03C03VALFRE.Value:=Tb_Con03C03VLRTOT.Value*mPercFreteItemPed/100;
      except
         Tb_Con03C03VALFRE.value:=0;
         end;
      Tb_Con03C03VALFRE_DIG.Value:=Tb_Con03C03VALFRE.Value;
      Tb_Con03PDPESOB.Value   :=Tb_Con03C03QTDENT.Value*mPesobItemPed;
      Tb_Con03PDQTDM3.Value   :=Tb_Con03C03QTDENT.Value*mQtdM3ItemPed;
      Tb_Con03PDNOME.Value    :=DM1.Tb_ProPDNOME.Value;
      Tb_Con03PDUND.Value     :=DM1.Tb_ProPDNOME.Value;
      end
   else if dbg_prod.SelectedField=Tb_Con03C03QTDENT then
      begin
      if (mQtdMaxItemPed-mQtdEntregueItemPed-mQtdEntregandoItemPed
                               -Tb_Con03C03QTDENT.Value)<0 then
         begin
         MessageDlg('Quantidade Digitada Maior que Pendente. '+#13
                   +'Quantidade Pendente: '+FormatFloat(mcasqtd, mQtdMaxItemPed-mQtdEntregueItemPed-mQtdEntregandoItemPed)
                   ,mtWarning,[mbOk],0);
         dbg_prod.SelectedField:=Tb_Con03C03QTDENT;
         abort;
         end;

      if DM1.Tb_ProPDUNDVDA.Asfloat<>0 then
         begin
         if fsonumero(FloatToStr(Tb_Con03C03QTDENT.Value/DM1.Tb_ProPDUNDVDA.Value))<>
            (Tb_Con03C03QTDENT.Value/DM1.Tb_ProPDUNDVDA.Value) then
            begin
            messagedlg('Não é uma quantidade válida! multipla de '+floatToStr(DM1.Tb_ProPDUNDVDA.Value)+#13
                      +' Quantidade Proxima: '+FloatToStr(
                       round(Tb_Con03C03QTDENT.Value/DM1.Tb_ProPDUNDVDA.Value)*DM1.Tb_ProPDUNDVDA.value)
                      ,mtwarning,[mbOk],0);
            abort;
            exit;
            end;
         end;


      Tb_Con03C03QTDPEND.Value:=mQtdMaxItemPed-mQtdEntregueItemPed-mQtdEntregandoItemPed
                               -Tb_Con03C03QTDENT.Value;

      Tb_Con03C03VLRTOT.Value    :=Tb_Con03C03QTDENT.Value*mPrecoUndItemPed;
      try
         Tb_Con03C03VALFRE.Value:=Tb_Con03C03VLRTOT.Value*mPercFreteItemPed/100;
      except
         Tb_Con03C03VALFRE.value:=0;
         end;
      Tb_Con03C03VALFRE_DIG.Value:=Tb_Con03C03VALFRE.Value;
      Tb_Con03PDPESOB.Value   :=Tb_Con03C03QTDENT.Value*mPesobItemPed;
      Tb_Con03PDQTDM3.Value   :=Tb_Con03C03QTDENT.Value*mQtdM3ItemPed;
      end;
   end;
end;

procedure TFrm_Conh_Mercad.Tb_Con03BeforeEdit(DataSet: TDataSet);
begin
mOper_conh03:=1;
mCodpro_Ant  :=Tb_Con03C03CODPRO.Value;
mLote_Ant    :=trim(Tb_Con03C03LOTE.AsString);
mItem_Ant    :=Tb_Con03C03ITEM.Value;
mQtdEnt_Ant  :=Tb_Con03C03QTDENT.Value;
mFreteDig_ant:=Tb_Con03C03VALFRE_DIG.Value;
mFreteCal_ant:=Tb_Con03C03VALFRE.Value;
mPesob_ant   :=Tb_Con03C03PESOB.Value;
mQtdm3_ant   :=Tb_Con03C03QTDM3.Value;
mVlrTot_ant  :=Tb_Con03C03VLRTOT.Value;

mPercFreteItemPed:=0;
mPesobItemPed    :=0;
mQtdM3ItemPed    :=0;

if flcadpro(1,0,0,Tb_Con03C03CODPRO.AsString) then
   begin
   mPesobItemPed:=DM1.Tb_ProPDPESOB.Value;
   mQtdM3ItemPed:=DM1.Tb_ProPDQTDM3.Value;
   if flqr1('GRPERCFRE','GR','CADGRU','N','GRCODGRU',DM1.Tb_ProPDCODGRU.AsString) then
      mPercFreteItemPed:=DM1.Query1.Fields[0].AsFloat
   else
       mPercFreteItemPed:=0;
   end;
DM1.Query3.close;
DM1.Query3.Sql.Clear;
DM1.Query3.SQL.add('Select NVL(P2QTD_ENTREGANDO,0) AS  P2QTD_ENTREGANDO,P2QTD,P2QTDDEV,NVL(P2QTD_ENTREGUE,0)AS   P2QTD_ENTREGUE,P2ITEM,P2TOTLIQ,P2DESCRAT,P2ACRERAT  from CADP02 '
                  +' where '
                  +iif( DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+FloatToStr(mCodEmp_ped)
                  +'and ')
                  +' P2LOTSEQ=0'+FloatToStr(mLotseq_ped)
                  +' and P2CHAVE=0'+C02_CHAVE.Text
                  +' and P2CODPRO=0'+Tb_Con03C03CODPRO.AsString
                  +' and P2ITEM=0'+Tb_Con03C03ITEM.AsString);
DM1.Query3.Open;
if not DM1.Query3.Eof then
   begin
   mItemPed             :=0;
   mQtdMaxItemPed       :=0;
   mQtdVedaItemPed      :=0;
   mQtdEntregueItemPed  :=0;
   mQtdEntregandoItemPed:=0;
   While not DM1.query3.Eof do
      begin
      if  (DM1.Query3.FieldByName('P2QTD').AsFloat-DM1.Query3.FieldByName('P2QTDDEV').AsFloat)
          -(DM1.Query3.FieldByName('P2QTD_ENTREGANDO').AsFloat
         +DM1.Query3.FieldByName('P2QTD_ENTREGUE').AsFloat)>0 then
         begin
         mItemPed:=DM1.query3.FieldbyName('P2ITEM').AsInteger;
         mQtdMaxItemPed:=(DM1.Query3.FieldByName('P2QTD').AsFloat-DM1.Query3.FieldByName('P2QTDDEV').AsFloat)
                        -(DM1.Query3.FieldByName('P2QTD_ENTREGANDO').AsFloat
                        +DM1.Query3.FieldByName('P2QTD_ENTREGUE').AsFloat);
         mQtdVedaItemPed      :=DM1.Query3.FieldByName('P2QTD').AsFloat
                               -DM1.Query3.FieldByName('P2QTDDEV').AsFloat;
         mQtdEntregueItemPed  :=DM1.Query3.FieldByName('P2QTD_ENTREGUE').AsFloat;
         mQtdEntregandoItemPed:=DM1.Query3.FieldByName('P2QTD_ENTREGANDO').AsFloat;
         break;
         end;
      DM1.query3.Next
      end;
   DM1.query3.First;
   mQtdMaxItemPed:=mQtdMaxItemPed+Tb_Con03C03QTDENT.Value;
//   mQtdEntregueItemPed  :=mQtdEntregueItemPed-Tb_Con03C03QTDENT.Value;
   mQtdEntregandoItemPed:=mQtdEntregandoItemPed-Tb_Con03C03QTDENT.Value;
   mPrecoUndItemPed:= (DM1.Query3.FieldByName('P2TOTLIQ').AsFloat-
                      DM1.Query3.FieldByName('P2DESCRAT').AsFloat+
                      DM1.Query3.FieldByName('P2ACRERAT').AsFloat)
                      /(DM1.Query3.FieldByName('P2QTD').AsFloat-
                        DM1.Query3.FieldByName('P2QTDDEV').AsFloat);
   end;

end;

procedure TFrm_Conh_Mercad.Tb_Con03BeforeInsert(DataSet: TDataSet);
begin
mOper_conh03:=0;
mItem_Ant    :=0;
mCodpro_Ant  :=0;
mQtdEnt_Ant  :=0;
mFreteDig_ant:=0;
mFreteCal_ant:=0;
mPesob_ant   :=0;
mQtdm3_ant   :=0;
mVlrTot_ant  :=0;
mLote_Ant    :='';


end;

procedure TFrm_Conh_Mercad.db_DATCONExit(Sender: TObject);
begin
if (not DM6.Tb_Con02.IsEmpty) then
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.add('update CADCON02 set C02DATCON='+
                      chr(39)+FormatDateTime(fdt, DM6.Tb_Con01C01DATCON.AsDateTime)+chr(39)
                      +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' C02CODEMP=0'+DM6.Tb_Con01C01CODEMP.AsString+' and ')
                      +' C02CODCON=0'+DM6.Tb_Con01C01CODCON.AsString);
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
   end;
end;

procedure TFrm_Conh_Mercad.dbg_pedidosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (DM6.Tb_Con01.State in [dsEdit,dsInsert]) and
   (not DM6.Tb_Con02C02CODCON.IsNull) and (not mProcesso_pendente) then
   begin
   if (Shift=[ssctrl]) and (key=46) then
      begin
      if fmensagem(pchar('Quer Realmente Excluir o Pedido:'+DM6.Tb_Con02C02CHAVE_PED.AsString+#13
                                     +' do Conhecimento'),0,['1','2'],2)=mrYes then
         begin
         fAjustarCon01(1);
         fCancelaConhecimento(0);
         DM6.Tb_Con02.Delete;
         end;
      end;
   end;
if (key=117) and
   (DM6.Tb_Con01.State in [dsEdit,dsInsert]) and
   (not DM6.Tb_Con02C02CODCON.IsNull) and (not mProcesso_pendente) then
   begin
//   if (dbg_pedidos.SelectedField=DM6.Tb_Con02C02CHAVE_PED) and (C02_CHAVE.Enabled) then
//      begin
      C02_CHAVE.Text      :=DM6.Tb_Con02C02CHAVE_PED.AsString;
      C02_CHAVE.Enabled   :=false;

      C02_RAZSOC.Text     :=DM6.Tb_Con02CRAZAO.Value;
      C02_PESOB.Text      :=FormatFloat('0#.000', DM6.Tb_Con02C02PESOB.Value);
      C02_QTDM3.Text      :=FormatFloat('0#.000', DM6.Tb_Con02C02QTDM3.Value);
      C02_PESOB.Text      :=FormatFloat('0#.000', DM6.Tb_Con02C02PESOB.Value);
      C02_VLRTOT.Text     :=FormatFloat(mcasas, DM6.Tb_Con02C02VLRTOT.Value);
      C02_FRETECALC.Text  :=FormatFloat(mcasas, DM6.Tb_Con02C02VALFRE.Value);
      C02_FRETEDIG.Text   :=FormatFloat(mcasas, DM6.Tb_Con02C02VALFRE_DIG.Value);
      C02_TIPO_ENT.Text   :=DM6.Tb_Con02tipo_entrega.Value;
      mOper_conh02:=1;
      C02_TIPO_ENT.SetFocus;
{      C02_CHAVE.Text:=key;
      C02_CHAVE.SelStart:=1;
      C02_CHAVE.SelLength:=1;
}      end
{
   else if (dbg_pedidos.SelectedField=DM6.Tb_Con02tipo_entrega)  and (C02_TIPO_ENT.Enabled) then
      begin
      C02_CHAVE.Text      :=DM6.Tb_Con02C02CHAVE_PED.AsString;
      C02_RAZSOC.Text     :=DM6.Tb_Con02CRAZAO.Value;
      C02_PESOB.Text      :=FormatFloat('0#.000', DM6.Tb_Con02C02PESOB.Value);
      C02_QTDM3.Text      :=FormatFloat('0#.000', DM6.Tb_Con02C02QTDM3.Value);
      C02_PESOB.Text      :=FormatFloat('0#.000', DM6.Tb_Con02C02PESOB.Value);
      C02_VLRTOT.Text     :=FormatFloat(mcasas, DM6.Tb_Con02C02VLRTOT.Value);
      C02_FRETECALC.Text  :=FormatFloat(mcasas, DM6.Tb_Con02C02VALFRE.Value);
      C02_FRETEDIG.Text   :=FormatFloat(mcasas, DM6.Tb_Con02C02VALFRE_DIG.Value);
      C02_TIPO_ENT.Text   :=DM6.Tb_Con02tipo_entrega.Value;
      mOper_conh02:=1;
      C02_TIPO_ENT.SetFocus;
      C02_TIPO_ENT.Text:=key;
      C02_TIPO_ENT.SelStart:=1;
      C02_TIPO_ENT.SelLength:=1;
      end;
   end;
}
end;

procedure TFrm_Conh_Mercad.dbg_prodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

{
if (not Tb_Con03C03CODPRO.IsNull) and (mProcesso_pendente) then
   begin
   if (Shift=[ssctrl]) and (key=46) then
      begin
      if fmensagem(pchar('Quer Realmente Excluir o Produto:'+Tb_Con03C03CODPRO.AsString+#13
                                     +' do Conhecimento'),0,['1','2'],2)=mrYes then
         begin
         fAtualizaPed02(1,Tb_Con03C03CODEMP_PED.Value
                      ,Tb_Con03C03LOTSEQ_PED.Value
                      ,Tb_Con03C03CHAVE_PED.Value
                      ,Tb_Con03C03CODPRO.Value
                      ,Tb_Con03C03ITEM.Value
                      ,Tb_Con03C03QTDENT.Value
                      ,Tb_Con03C03LOTE.AsString);
         Tb_Con03.Delete;
         end;
      end;
   end;
}
end;

procedure TFrm_Conh_Mercad.Tb_Con03BeforeDelete(DataSet: TDataSet);
begin

if (not Tb_Con03C03CODPRO.IsNull) and (mProcesso_pendente) then
   begin
   fAtualizaPed02(1,Tb_Con03C03CODEMP_PED.Value
                      ,Tb_Con03C03LOTSEQ_PED.Value
                      ,Tb_Con03C03CHAVE_PED.Value
                      ,Tb_Con03C03CODPRO.Value
                      ,Tb_Con03C03ITEM.Value
                      ,Tb_Con03C03QTDENT.Value
                      ,Tb_Con03C03LOTE.AsString);
   end;


C02_PESOB.Text    :=FormatFloat('#0.000', ValFloat(C02_PESOB.Text)-Tb_Con03C03PESOB.Value);
C02_QTDM3.Text    :=FormatFloat('#0.000', ValFloat(C02_QTDM3.Text)-Tb_Con03C03QTDM3.Value);
C02_VLRTOT.Text   :=FormatFloat(mcasas,   ValFloat(C02_VLRTOT.Text)-Tb_Con03C03VLRTOT.Value);
C02_FRETECALC.Text:=FormatFloat(mcasas,   ValFloat(C02_FRETECALC.Text)-Tb_Con03C03VALFRE.Value);
C02_FRETEDIG.Text :=FormatFloat(mcasas,   ValFloat(C02_FRETEDIG.Text)-Tb_Con03C03VALFRE_DIG.Value);
end;

procedure TFrm_Conh_Mercad.Tb_Con03BeforePost(DataSet: TDataSet);
begin
if Tb_Con03C03CODPRO.isnull then
   begin
   Tb_con03.Cancel;
   abort;
   end;
if mOper_conh03=1 then
   begin
   if mCodpro_Ant<>Tb_Con03C03CODPRO.AsFloat then
      begin
      if not flcadpro(1,0,0,Tb_Con03C03CODPRO.AsString) then
         begin
         MessageDlg('Produto não Encontrado!',mtWarning,[mbOk],0);
         dbg_prod.SelectedField:=Tb_Con03C03CODPRO;
         dbg_prod.SetFocus;
         abort;
         end;
       end;
    end;
DM1.Query3.close;
DM1.Query3.Sql.Clear;
DM1.Query3.SQL.add('Select NVL(P2QTD_ENTREGANDO,0) AS  P2QTD_ENTREGANDO,P2QTD,P2QTDDEV,'
                  +' NVL(P2QTD_ENTREGUE,0) AS P2QTD_ENTREGUE,P2ITEM,P2TOTLIQ,P2DESCRAT,P2ACRERAT  from CADP02 '
                  +' where '
                  +iif( DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+FloatToStr(mCodEmp_ped)
                  +'and ')
                  +' P2LOTSEQ=0'+FloatToStr(mLotseq_ped)
                  +' and P2CHAVE=0'+C02_CHAVE.Text
                  +' and P2CODPRO=0'+Tb_Con03C03CODPRO.AsString);
if Trim(Tb_Con03C03LOTE.AsString)='' then
   DM1.Query3.Sql.add(' and (P2LOTE is null or P2LOTE='+chr(39)+' '+chr(39)+')')
else
   DM1.Query3.Sql.add(' and P2LOTE='+chr(39)+Tb_Con03C03LOTE.AsString+chr(39));
try
   DM1.Query3.Open;
except on e : exception do
  ex_erroSql_Novo(DM1.query3,111,'func Erro:'+e.Message ,'CADEST');
  end;
if DM1.Query3.Eof then
   begin
   MessageDlg('Produto não Encontrado no Pedido!',mtWarning,[mbOk],0);
   dbg_prod.SelectedField:=Tb_Con03C03CODPRO;
   dbg_prod.SetFocus;
   abort;
   end;
mItemPed             :=Tb_Con03C03ITEM.AsInteger;
mQtdVedaItemPed      :=Tb_Con03C03QTDVEND.AsFloat;

mQtdMaxItemPed       :=0;
mQtdVedaItemPed      :=0;
mQtdEntregueItemPed  :=0;
mQtdEntregandoItemPed:=0;
While not DM1.query3.Eof do
    begin
    if (DM1.Query3.FieldByName('P2QTD').AsFloat-DM1.Query3.FieldByName('P2QTDDEV').AsFloat)
       -     (DM1.Query3.FieldByName('P2QTD_ENTREGANDO').AsFloat
             +DM1.Query3.FieldByName('P2QTD_ENTREGUE').AsFloat)>0 then
       begin
       mItemPed:=DM1.query3.FieldbyName('P2ITEM').AsInteger;
       mQtdMaxItemPed:=(DM1.Query3.FieldByName('P2QTD').AsFloat-
                        DM1.Query3.FieldByName('P2QTDDEV').AsFloat) -
                      (DM1.Query3.FieldByName('P2QTD_ENTREGANDO').AsFloat
                        +DM1.Query3.FieldByName('P2QTD_ENTREGUE').AsFloat);
       mQtdVedaItemPed      :=(DM1.Query3.FieldByName('P2QTD').AsFloat-DM1.Query3.FieldByName('P2QTDDEV').AsFloat);
       mQtdEntregueItemPed  :=DM1.Query3.FieldByName('P2QTD_ENTREGUE').AsFloat;
       mQtdEntregandoItemPed:=DM1.Query3.FieldByName('P2QTD_ENTREGANDO').AsFloat;
       break;
       end;
    DM1.query3.Next;
    end;
DM1.query3.First;
mPrecoUndItemPed:= (DM1.Query3.FieldByName('P2TOTLIQ').AsFloat-
                    DM1.Query3.FieldByName('P2DESCRAT').AsFloat+
                    DM1.Query3.FieldByName('P2ACRERAT').AsFloat)
                    /(DM1.Query3.FieldByName('P2QTD').AsFloat
                     -DM1.Query3.FieldByName('P2QTDDEV').AsFloat);
if flqr1('GRPERCFRE','GR','CADGRU','N','GRCODGRU',DM1.Tb_ProPDCODGRU.AsString) then
   mPercFreteItemPed:=DM1.Query1.Fields[0].AsFloat
else
   mPercFreteItemPed:=0;
mPesobItemPed:=DM1.Tb_ProPDPESOB.Value;
mQtdM3ItemPed:=DM1.Tb_ProPDQTDM3.Value;
if mOper_conh03=1 then
   begin
   if (Tb_Con03C03CODPRO.Value=mCodpro_Ant) and
      (trim(Tb_Con03C03LOTE.AsString)=trim(mLote_Ant)) then
      begin
      mQtdMaxItemPed:=mQtdMaxItemPed+mQtdEnt_Ant;
//      mQtdEntregueItemPed  :=mQtdEntregueItemPed-mQtdEnt_Ant;
      mQtdEntregandoItemPed:=mQtdEntregandoItemPed-mQtdEnt_Ant;
      end;
   end
else
   begin
   Tb_Con03C03QTDENT.Value :=mQtdMaxItemPed;
   Tb_Con03C03QTDPEND.Value:=0;
   end;
{
if  mQtdMaxItemPed-(mQtdEntregueItemPed+mQtdEntregandoItemPed
                           +Tb_Con03C03QTDENT.Value)<0 then
}
if  Tb_Con03C03QTDENT.Value>mQtdMaxItemPed then

    begin
    MessageDlg('Quantidade Digitada Maior que Pendente. '+#13
//              +'Quantidade Pendente: '+FormatFloat(mcasqtd, mQtdMaxItemPed-mQtdEntregueItemPed-mQtdEntregandoItemPed)
              +'Quantidade Pendente: '+FormatFloat(mcasqtd, mQtdMaxItemPed)
              ,mtWarning,[mbOk],0);
    dbg_prod.SelectedField:=Tb_Con03C03QTDENT;
    dbg_prod.SetFocus;
    abort;
    end;
Tb_Con03C03ITEM.Value:=mItemPed;
Tb_Con03C03VLRTOT.Value    :=Arredonda( Tb_Con03C03QTDENT.Value*mPrecoUndItemPed ,DM1.Tb_PargerPCASAS.AsInteger);
if mOper_conh03=1 then
   begin
   if Tb_Con03C03VALFRE.value=Tb_Con03C03VALFRE_DIG.Value then
      begin
      try
         Tb_Con03C03VALFRE_DIG.Value:=Arredonda( Tb_Con03C03VLRTOT.Value*mPercFreteItemPed/100 ,DM1.Tb_PargerPCASAS.AsInteger);
      except
          Tb_Con03C03VALFRE_DIG.value:=0;
          end;
      end;
   end;
try
   Tb_Con03C03VALFRE.Value:=Arredonda( Tb_Con03C03VLRTOT.Value*mPercFreteItemPed/100 ,DM1.Tb_PargerPCASAS.AsInteger);
except
   Tb_Con03C03VALFRE.value:=0;
   end;

Tb_Con03PDPESOB.Value   :=Tb_Con03C03QTDENT.Value*mPesobItemPed;
Tb_Con03PDQTDM3.Value   :=Tb_Con03C03QTDENT.Value*mQtdM3ItemPed;
Tb_Con03PDNOME.Value    :=DM1.Tb_ProPDNOME.Value;
Tb_Con03PDUND.Value     :=DM1.Tb_ProPDNOME.Value;

C02_PESOB.Text    :=FormatFloat('#0.000', ValFloat(C02_PESOB.Text)
                   +(Tb_Con03C03PESOB.Value-mPesob_ant));
C02_QTDM3.Text    :=FormatFloat('#0.000', ValFloat(C02_QTDM3.Text)
                   +(Tb_Con03C03QTDM3.Value-mQtdm3_ant));
C02_VLRTOT.Text   :=FormatFloat(mcasas,   ValFloat(C02_VLRTOT.Text)
                   +(Tb_Con03C03VLRTOT.Value-mVlrTot_ant));
C02_FRETECALC.Text:=FormatFloat(mcasas,   ValFloat(C02_FRETECALC.Text)
                   +(Tb_Con03C03VALFRE.Value-mFreteCal_ant) );
C02_FRETEDIG.Text :=FormatFloat(mcasas,   ValFloat(C02_FRETEDIG.Text)
                   +(Tb_Con03C03VALFRE_DIG.Value-mFreteDig_ant));
if mOper_conh03=1 then
   begin
   fAtualizaPed02(1,tb_Con03C03CODEMP_PED.Value
                   ,Tb_Con03C03LOTSEQ_PED.Value
                   ,Tb_Con03C03CHAVE_PED.Value
                   ,mCodpro_Ant
                   ,mItem_Ant
                   ,mQtdEnt_Ant
                   ,mlote_ant);
   Tb_Con03C03QTDPEND.Value:=Tb_Con03C03QTDPEND.Value+mQtdEnt_Ant;
   end;
fAtualizaPed02(0,Tb_Con03C03CODEMP_PED.Value
                      ,Tb_Con03C03LOTSEQ_PED.Value
                      ,Tb_Con03C03CHAVE_PED.Value
                      ,Tb_Con03C03CODPRO.Value
                      ,Tb_Con03C03ITEM.Value
                      ,Tb_Con03C03QTDENT.Value
                      ,Tb_Con03C03LOTE.AsString);
Tb_Con03C03QTDPEND.Value:=Tb_Con03C03QTDPEND.Value-Tb_Con03C03QTDENT.Value;

end;

function TFrm_Conh_Mercad.fAjustarCon01(ptipo: Integer):Boolean;
//ptipo=0 inclusao de lancamento 1-exclusao
begin
if ptipo=1 then
   begin
   DM6.Tb_Con01C01PESOB.Value   :=DM6.Tb_Con01C01PESOB.Value
                                 -DM6.Tb_Con02C02PESOB.Value;
   DM6.Tb_Con01C01QTDM3.Value   :=DM6.Tb_Con01C01QTDM3.Value
                                 -DM6.Tb_Con02C02QTDM3.Value;
   DM6.Tb_Con01C01VLRTOT.Value  :=DM6.Tb_Con01C01VLRTOT.Value
                                 -DM6.Tb_Con02C02VLRTOT.Value;
   DM6.Tb_Con01C01VALFRE.Value   :=DM6.Tb_Con01C01VALFRE.Value
                                 -DM6.Tb_Con02C02VALFRE.Value;
   DM6.Tb_Con01C01VALFRE_DIG.Value:=DM6.Tb_Con01C01VALFRE_DIG.Value
                                 -DM6.Tb_Con02C02VALFRE_DIG.Value;
   DM6.Tb_Con01C01QTDPED.Value   :=DM6.Tb_Con01C01QTDPED.Value
                                 -1;
   DM6.Tb_Con01C01QTDITENS.Value:=DM6.Tb_Con01C01QTDITENS.Value-
                                  Tb_Con03.RecordCount;
   end
else
   begin
   DM6.Tb_Con01C01PESOB.Value   :=DM6.Tb_Con01C01PESOB.Value
                                 +DM6.Tb_Con02C02PESOB.Value;
   DM6.Tb_Con01C01QTDM3.Value   :=DM6.Tb_Con01C01QTDM3.Value
                                 +DM6.Tb_Con02C02QTDM3.Value;
   DM6.Tb_Con01C01VLRTOT.Value  :=DM6.Tb_Con01C01VLRTOT.Value
                                 +DM6.Tb_Con02C02VLRTOT.Value;
   DM6.Tb_Con01C01VALFRE.Value   :=DM6.Tb_Con01C01VALFRE.Value
                                 +DM6.Tb_Con02C02VALFRE.Value;
   DM6.Tb_Con01C01VALFRE_DIG.Value:=DM6.Tb_Con01C01VALFRE_DIG.Value
                                 +DM6.Tb_Con02C02VALFRE_DIG.Value;
   DM6.Tb_Con01C01QTDPED.Value   :=DM6.Tb_Con01C01QTDPED.Value
                                 +1;
   if Tb_con03.active then
      DM6.Tb_Con01C01QTDITENS.Value:=DM6.Tb_Con01C01QTDITENS.Value+
                                  Tb_Con03.RecordCount
   else
      DM6.Tb_Con01C01QTDITENS.Value:=0;

   end;
result:=true;

end;

procedure TFrm_Conh_Mercad.Tb_Con03AfterInsert(DataSet: TDataSet);
begin
Tb_Con03C03CODEMP.Value    :=codemp;
Tb_Con03C03CODCON.Value    :=mcodcon;
Tb_Con03C03CODEMP_PED.Value:=mCodEmp_Ped;
Tb_Con03C03LOTSEQ_PED.Value:=mLotSeq_Ped;
Tb_Con03C03CHAVE_PED.Value :=fsonumero(C02_CHAVE.Text);
Tb_Con03C03CODUSR_INC.Value:=codusr;
Tb_Con03C03DTHR_ALT.Value  :=Now;
Tb_Con03C03CODUSR_ALT.Value:=0;
Tb_Con03C03QTDMAN.Value    :=0;
end;
function TFrm_conh_Mercad.flbloqueareg(pTipo: Integer): Boolean;
// ptipo=0-Desbloqueia 1-Bloqueia

begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('UPDATE CADCON01 set C01ESTADO='+IntTostr(pTipo)
                   +' where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' C01CODEMP=0'+IntToStr(codemp)+' and ')
                   +' C01CODCON=0'+FloatToStr(mcodcon));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;
result:=true;
end;

procedure TFrm_Conh_Mercad.sbConsultarClick(Sender: TObject);
begin
Application.Createform(TFrm_Conh_MercCons, Frm_Conh_MercCons);
Frm_Conh_MercCons.ShowModal;
if trim(Frm_Conh_MercCons.CODCON01.Text)<>'' then
   begin
   CODCON.Text:=Frm_Conh_MercCons.CODCON01.Text;
   Frm_Conh_MercCons.Free;
   CODCONExit(self);
   end
else
   Frm_Conh_MercCons.Free;

end;

procedure TFrm_Conh_Mercad.db_CODTRAEnter(Sender: TObject);
begin
mCodAtra_Ant:=DM6.Tb_Con01C01CODTRA.AsFloat;
end;

procedure TFrm_Conh_Mercad.BBIMPRIMIRClick(Sender: TObject);
begin
Application.CreateForm(TFrm_Conh_MercRelat, Frm_Conh_MercRelat);
Frm_Conh_MercRelat.Qr_Conhec.Close;
Frm_Conh_MercRelat.Qr_Conhec.SQL.Clear;
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('Select C01CODCON,C01DATCON, ');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('       CCODCLI,CRAZAO,CLOG,CBAIRRO,CCIDADE,CUF,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('       CCEP,CFONE01,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('       C02CODTRA,C02CODVEN,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('       C02QTDM3,C02PESOB,C02OBSERVACAO,C02OBS_CONHEC,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('       C02TIPO_ENTREGA,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('       C02CODEMP_PED,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('       C02LOTSEQ_PED,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('       C02CHAVE_PED,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('       C03CODPRO,C03LOTE,C03QTDENT,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('       PDNOME,PDUND,TRRAZTRA,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('       TO_CHAR(C02CHAVE_PED) AS GRUPO');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('      , p1qtdvol,p1especie,p1pesol,p1pesob,p1numnf ');

Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' FROM CADCON01,');

Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' CADCON02,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' CADCON03,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' CADPRO,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' CADCLI,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' CADTRA,CADP01');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' where ');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(iif(DM1.Qr_Tid.Locate('TINOME','CADTRA',[]),'',' TRCODEMP(+)=C01CODEMP and '));
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' TRCODTRA(+)=C01CODTRA ');
if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
  Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and C02CODEMP=C01CODEMP ');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and C02CODCON=C01CODCON ');
if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
  Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and C03CODEMP=C02CODEMP ');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and C03CODCON=C02CODCON ');
if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
   Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and C03CODEMP_PED=C02CODEMP_PED ');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and C03LOTSEQ_PED=C02LOTSEQ_PED ');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and C03CHAVE_PED=C02CHAVE_PED ');
if not DM1.Qr_TID.Locate('TINOME','CADCLI',[]) then
   Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and CCODEMP(+)=C02CODEMP ');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and CCODCLI(+)=C02CODCLI ');
if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and PDCODEMP=C03CODEMP ');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and PDCODPRO=C03CODPRO ');
if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
   Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and C01CODEMP=0'+IntToStr(codemp));
if trim(CODCON.Text)<>'' then
   Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and C01CODCON=0'+CODCON.Text);

Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and P1CODEMP=C02CODEMP_PED and P1CHAVE=C02CHAVE_PED and P1lotseq=C02LOTSEQ_PED   ');


Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' order by C01CODCON,C02CHAVE_PED ');
try
   Frm_Conh_MercRelat.Qr_Conhec.Open;
except
   Frm_Conh_MercRelat.Qr_Conhec.SQL.sAVEtOFILE(mpastatemp +'sql.txt');
   end;
Frm_Conh_MercRelat.RLReport1.PreviewModal;
Frm_Conh_MercRelat.Free;

end;

procedure TFrm_Conh_Mercad.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM6.Tb_Con01.State in [dsEdit,dsInsert] then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes: BBGRAVAR.Click;
      mrNo : BBCANCELAR.Click;
      else CanClose:=False;
      end;
   end;

end;

procedure TFrm_Conh_Mercad.FormKeyDown(Sender: TObject; var Key: Word;
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

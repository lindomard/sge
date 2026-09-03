unit S_Min2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  db, dbtables, func, S_DM1, S_Impres, ExtCtrls, Mask, StdCtrls, DBCtrls,
  Buttons, Grids, DBGrids,lerarq,S_Tra,S_PedCli, AlinharEdit,variants, S_SelEmp;

type
  TFrm_Min2 = class(TForm)
    panel_dig: TPanel;
    panel_butoes: TPanel;
    panel_rodape: TPanel;
    panel_cabec: TPanel;
    Label1: TLabel;
    CHAVE: TEdit;
    Label2: TLabel;
    MDATA: TMaskEdit;
    Label3: TLabel;
    NOMENT: TEdit;
    Label4: TLabel;
    CNPF: TEdit;
    Label5: TLabel;
    RG: TEdit;
    BBINCLUIR: TBitBtn;
    BBLOCALIZAR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    BBIMPRIMIR: TBitBtn;
    BBSAIR: TBitBtn;
    DBNavigator1: TDBNavigator;
    bbItens_Alterar: TBitBtn;
    bbItens_excluir: TBitBtn;
    bbItens_Cancelar: TBitBtn;
    Tb_Min2: TQuery;
    Tb_Min2CM2CODEMP: TFloatField;
    Tb_Min2CM2CODMIN: TFloatField;
    Tb_Min2CM2SEQ: TFloatField;
    Tb_Min2CM2TIPO: TStringField;
    Tb_Min2CM2NUMERO: TFloatField;
    Tb_Min2CM2VALOR: TFloatField;
    Src_Min2: TDataSource;
    dbgriditens: TDBGrid;
    U_MIn2: TUpdateSQL;
    Tb_Min2CM2DTCONF: TDateTimeField;
    Tb_Min2CM2USRCONF: TFloatField;
    Label6: TLabel;
    CODTRA: TEdit;
    NOMTRA: TEdit;
    Tb_Min2CM2CLIFOR: TStringField;
    Tb_Min2CM2CODIGO: TFloatField;
    Tb_Min2CM2TIPDOC: TStringField;
    Tb_Min2CM2NUMDOC: TFloatField;
    Tb_Min2CM2OBS01: TStringField;
    Tb_Min2CM2OBS02: TStringField;
    Tb_Min2CM2OBS03: TStringField;
    Tb_Min2CM2LOTSEQ: TFloatField;
    Tb_Min2CM2LOTSEQ_CP: TFloatField;
    Tb_Min2CM2QTDVOL: TFloatField;
    Tb_Min2CM2PESOB: TFloatField;
    Tb_Min2CM2PESOL: TFloatField;
    Tb_Min2CM2PED_CODEMP: TFloatField;
    panel_cabitens: TPanel;
    st_chave: TStaticText;
    st_razao: TStaticText;
    st_pesob: TStaticText;
    st_codemp: TStaticText;
    st_vlrtot: TStaticText;
    st_fretecalc: TStaticText;
    st_qtduni: TStaticText;
    st_tipoent: TStaticText;
    MIN02_CHAVEPED: TEdit;
    MIN02_RAZSOC: TEdit;
    MIN02_PESOB: TEdit;
    MIN02_QTDVOL: TEdit;
    MIN02_VLRTOT: TEdit;
    MIN02_VALFRE: TEdit;
    MIN02_QTDUND: TEdit;
    C02_TIPO_ENT: TEdit;
    st_qtdvol: TStaticText;
    st_qtditens: TStaticText;
    StaticText1: TStaticText;
    MIN02_PED_CODEMP: TEdit;
    MIN02_PESOL: TEdit;
    MIN02_QTDITENS: TEdit;
    ST_TPPED: TStaticText;
    MIN02_TPPED: TEdit;
    Tb_Min2CM2QTDITENS: TFloatField;
    Tb_Min2CM2QTDUND: TFloatField;
    Tb_Min2CM2TIPOPED: TFloatField;
    Tb_Min2CM2CODCLI: TFloatField;
    Tb_Min2CM2VALFRE: TFloatField;
    Tb_Min2NOMCLI: TStringField;
    Tb_Min2CM2QTDPAG: TFloatField;
    RG_TIPOREL: TRadioGroup;
    bbSalvarPadrao: TBitBtn;
    Tb_Min2CM2CODBCO: TFloatField;
    Tb_Min2CM2DATANF: TDateTimeField;
    Tb_Min2CCIDADE: TStringField;
    Tb_Min2CUF: TStringField;
    Tb_Min2CFONE01: TStringField;
    Label7: TLabel;
    DTHORAINC: TMaskEdit;
    USRINC: TEdit;
    NOMUSRINC: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    HORAINC: TEdit;
    Label10: TLabel;
    USRALT: TEdit;
    NOMUSRALT: TEdit;
    Label11: TLabel;
    DTHORAALT: TMaskEdit;
    Label12: TLabel;
    HORAALT: TEdit;
    sbnBuscarPend: TSpeedButton;
    CB_BLOQ: TCheckBox;
    Tb_Min2CM2QTDTIT: TFloatField;
    procedure BBSAIRClick(Sender: TObject);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBLOCALIZARClick(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure BBLIMPARClick(Sender: TObject);
    procedure bbItens_AlterarClick(Sender: TObject);
    procedure bbItens_excluirClick(Sender: TObject);
    procedure bbItens_CancelarClick(Sender: TObject);
    procedure dbgriditensExit(Sender: TObject);
    procedure CHAVEExit(Sender: TObject);
    procedure BBIMPRIMIRClick(Sender: TObject);
    procedure dbgriditensEnter(Sender: TObject);
    procedure dbgriditensKeyPress(Sender: TObject; var Key: Char);
    procedure MDATAExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CODTRAKeyPress(Sender: TObject; var Key: Char);
    procedure CODTRAExit(Sender: TObject);
    procedure NOMENTExit(Sender: TObject);
    procedure CNPFExit(Sender: TObject);
    procedure RGExit(Sender: TObject);
    procedure MIN02_PED_CODEMPExit(Sender: TObject);
    procedure MIN02_CHAVEPEDExit(Sender: TObject);
    procedure Tb_Min2AfterInsert(DataSet: TDataSet);
    procedure MIN02_CHAVEPEDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgriditensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MIN02_CHAVEPEDEnter(Sender: TObject);
    procedure MIN02_PED_CODEMPEnter(Sender: TObject);
    procedure CODTRAEnter(Sender: TObject);
    procedure NOMENTEnter(Sender: TObject);
    procedure CNPFEnter(Sender: TObject);
    procedure RGEnter(Sender: TObject);
    procedure Tb_Min2BeforeDelete(DataSet: TDataSet);
    procedure bbSalvarPadraoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbnBuscarPendClick(Sender: TObject);
    procedure MIN02_QTDVOLExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function fLerMin2(pTipo: Integer): Boolean;
  public
    { Public declarations }
    form_pedcli_min2: Tfrm_pedcli;
    form_impres_min2: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;
var
  Frm_Min2: TFrm_Min2;
  mstatus,mitem: Integer;
  mtipmin: Integer;
  moperitens: Integer=0; // 0 inclusao 1-alteração
  m02tipdoc,m02clifor: String;
  m02codcli: real;
  m02qtdpag,m02numdoc: real;
  m02obs01,m02obs02,m02obs03 : string;
  mant_codemp, mant_chave: Real;

  mtotgeral: Real;
  mQtdPed: Integer;
  mQtdVol: Real;
  mchave    : Integer=0;

implementation

uses S_DM4, S_SelPed;

{$R *.DFM}

procedure TFrm_Min2.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Min2.BBINCLUIRClick(Sender: TObject);
begin
BBLIMPAR.click;
panel_dig.Enabled:=True;

MDATA.Text:=FormatDateTime(fdt2,date);

mStatus:=0;
CHAVE.Enabled:=False;
MIN02_CHAVEPED.Enabled  :=true;
MIN02_PED_CODEMP.Enabled:=true;
BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=true;
BBGRAVAR.Enabled   :=true;
BBIMPRIMIR.Enabled :=False;
moperitens:=0; // 0 inclusao 1-alteração

USRINC.Text   :=IntToStr(codusr);
if flqr1('NOMUSR','','CADUSR','N','CODUSR',IntToStr(codusr)) then
   NOMUSRINC.Text:=DM1.Query1.Fields[0].AsString
else
   NOMUSRINC.Text:='';
DTHORAINC.Text:=FormatDatetime(fdt2, Now);
HORAINC.Text  :=FormatDatetime(fhr, Now);
CODTRA.SetFocus;


end;

procedure TFrm_Min2.BBLOCALIZARClick(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(CM1CODMIN) from CADMIN1 '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADMIN',[]),'',' where CM1CODEMP=0'+IntToStr(codemp)));
DM1.Query1.Open;
CHAVE.Text:=FormatFloat('000000',DM1.Query1.Fields[0].AsInteger);
CHAVE.Update;
CHAVE.Enabled      :=True;
BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;
panel_dig.Enabled:=True;
CHAVE.SetFocus;
end;

procedure TFrm_Min2.BBALTERARClick(Sender: TObject);
begin
{Status do pedido 0-Somente digitado
                  1-Confirmado Entrada
}
MIN02_CHAVEPED.Enabled  :=true;
MIN02_PED_CODEMP.Enabled:=true;
BBINCLUIR.Enabled       :=False;
BBALTERAR.Enabled       :=False;
BBLOCALIZAR.Enabled     :=False;
BBEXCLUIR.Enabled       :=False;
BBIMPRIMIR.Enabled      :=False;
BBGRAVAR.Enabled        :=True;
panel_dig.Enabled       :=True;
CHAVE.Enabled          :=False;
USRALT.Text   :=IntToStr(codusr);
if flqr1('NOMUSR','','CADUSR','N','CODUSR',IntToStr(codusr)) then
   NOMUSRALT.Text:=DM1.Query1.Fields[0].AsString
else
   NOMUSRALT.Text:='';
DTHORAALT.Text:=FormatDatetime(fdt2, Now);
HORAALT.Text  :=FormatDatetime(fhr, Now);

MDATA.SetFocus;
mstatus:=1;

end;

procedure TFrm_Min2.BBEXCLUIRClick(Sender: TObject);
begin
if fmensagem('Quer Realmente Excluir?',0,['1','2'],2)=mrNo then
   abort;

Tb_Min2.First;
While not Tb_Min2.Eof do
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADP01 set P1MINUTA=0'
                     +' where P1CODEMP=0'+Tb_Min2CM2PED_CODEMP.AsString
                     +' and   P1LOTSEQ=0'+Tb_Min2CM2LOTSEQ_CP.AsString
                     +' and   P1CHAVE=0'+Tb_Min2CM2NUMERO.AsString
                     +' and  (P1MINUTA is null or P1MINUTA<>0'+DM1.Tb_Min2CM2CODMIN.AsString+')');
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADETIVOL set CEV_NUM_MINUTA=0');
   DM1.Query1.SQL.Add(' where CEV_PED_LOTSEQ=0'+Tb_Min2CM2LOTSEQ_CP.AsString
                     +' and   CEV_PED_CODEMP=0'+Tb_Min2CM2PED_CODEMP.AsString
                     +' and   CEV_PED_CHAVE=0'+Tb_Min2CM2NUMERO.AsString
                     +' and   (CEV_NUM_MINUTA is null or  CEV_NUM_MINUTA<>0 )'
                     );
   try

     DM1.Query1.ExecSQL;
     fdm1StartCommit;
   except

     end;



   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADP01 set P1MINUTA=0'
                     +' where P1CODEMP=0'+Tb_Min2CM2PED_CODEMP.AsString
                     +' and   P1LOTSEQ=0'+Tb_Min2CM2LOTSEQ_CP.AsString
                     +' and   P1CHAVE=0'+Tb_Min2CM2NUMERO.AsString
                     +' and  (P1MINUTA is null or  P1MINUTA<>0)');
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;

   Tb_Min2.Next;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete From CADMIN1 where CM1CODEMP=0'+IntToStr(codemp)
                  +' and CM1CODMIN=0'+Trim(CHAVE.Text));
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete From CADMIN2 where CM2CODEMP=0'+IntToStr(codemp)
                  +' and CM2CODMIN=0'+Trim(CHAVE.Text));
DM1.Query1.ExecSQL;
fdm1StartCommit;
BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;
BBLIMPAR.Click;
BBINCLUIR.SetFocus;
fMensagem('Minuta Excluida!',0,['0'],0);


end;

procedure TFrm_Min2.BBGRAVARClick(Sender: TObject);
var
mtotal: Real;
mitem: Integer;
mchave: Integer;
begin
if mstatus=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select Max(CM1CODMIN) from CADMIN1 '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADMIN',[]),'',' where CM1CODEMP='+IntToStr(codemp)));
   DM1.Query1.Open;
   mchave:=DM1.Query1.Fields[0].AsInteger+1;
   end
else if mstatus=1 then
   begin
{
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete From CADMIN1 where CM1CODEMP=0'+IntToStr(codemp)
                     +' and CM1CODMIN=0'+Trim(CHAVE.Text));
   DM1.Query1.ExecSQL;
}
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete From CADMIN2 where CM2CODEMP=0'+IntToStr(codemp)
                     +' and CM2CODMIN=0'+Trim(CHAVE.Text));
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
   mchave:=StrToInt('0'+CHAVE.Text);
   end;
if not flcadmin1(0,0,IntToStr(mchave),pvazio) then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Insert into CADMIN1 ('
                     +' CM1CODEMP, '
                     +' CM1CODMIN, '
                     +' CM1CODTRA, '
                     +' CM1LOTSEQ ) Values ('
                     +IntToStr(codemp)
                     +','+IntToStr(mchave)
                     +','+fdeixanum(CODTRA.Text)
                     +',0)');
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;
   if not flcadmin1(0,0,IntToStr(mchave),pvazio) then
      begin
      fmensagem('Erro ao Tentar Gerar Minutas!',0,['2'],0);
      exit;
      end
   end;
{
DM1.Tb_Min1.Edit;
DM1.Tb_Min1CM1CODEMP.Value:=codemp;
DM1.Tb_Min1CM1CODMIN.Value:=mchave;
DM1.Tb_Min1CM1CODTRA.Value:=ValFloat(CODTRA.Text);
DM1.Tb_Min1CM1LOTSEQ.Value:=0;
DM1.Tb_Min1.Post;
}
mtotal:=0;
Tb_Min2.First;
mitem:=1;
flcadmin2(1,0,IntTostr(mchave),IntToStr(mitem));
While not Tb_Min2.Eof do
   begin
   mtotal:=mtotal+Tb_Min2CM2VALOR.Value;
   DM1.Tb_Min2.Append;
   DM1.Tb_Min2CM2CODEMP.Value:=codemp;
   DM1.Tb_Min2CM2LOTSEQ.Value     :=Tb_Min2CM2LOTSEQ.Value;
   DM1.Tb_Min2CM2TIPO.Value  :=Tb_Min2CM2TIPO.Value;
   DM1.Tb_Min2CM2CODMIN.Value:=mchave;
   DM1.Tb_Min2CM2SEQ.Value   :=mitem;
   DM1.Tb_Min2CM2NUMERO.Value:=Tb_Min2CM2NUMERO.Value;
   DM1.Tb_Min2CM2PED_CODEMP.Value:=Tb_Min2CM2PED_CODEMP.Value;
   DM1.Tb_Min2CM2LOTSEQ_CP.Value :=Tb_Min2CM2LOTSEQ_CP.Value;
   DM1.Tb_Min2CM2VALOR.Value :=Tb_Min2CM2VALOR.Value;
   DM1.Tb_Min2CM2DTCONF.Value:=Tb_Min2CM2DTCONF.Value;
   DM1.Tb_Min2CM2USRCONF.Value:=Tb_Min2CM2USRCONF.Value;
   DM1.Tb_Min2CM2CLIFOR.Value :=Tb_Min2CM2CLIFOR.Value;
   DM1.Tb_Min2CM2CODIGO.Value :=Tb_Min2CM2CODIGO.Value;
   DM1.Tb_Min2CM2CODCLI.Value :=Tb_Min2CM2CODCLI.Value;
   DM1.Tb_Min2CM2TIPDOC.Value :=Tb_Min2CM2TIPDOC.Value;
   DM1.Tb_Min2CM2NUMDOC.Value :=Tb_Min2CM2NUMDOC.Value;
   DM1.Tb_Min2CM2QTDVOL.Value :=Tb_Min2CM2QTDVOL.Value;
   DM1.Tb_Min2CM2PESOB.Value  :=Tb_Min2CM2PESOB.Value;
   DM1.Tb_Min2CM2PESOL.Value  :=Tb_Min2CM2PESOL.Value;
   DM1.Tb_Min2CM2OBS01.Value  :=Tb_Min2CM2OBS01.Value;
   DM1.Tb_Min2CM2OBS02.Value  :=Tb_Min2CM2OBS02.Value;
   DM1.Tb_Min2CM2OBS03.Value  :=Tb_Min2CM2OBS03.Value;
   DM1.Tb_Min2CM2TIPOPED.Value:=Tb_Min2CM2TIPOPED.Value;
   DM1.Tb_Min2CM2VALFRE.Value  :=Tb_Min2CM2VALFRE.Value;
   DM1.Tb_Min2CM2QTDPAG.Value  :=Tb_Min2CM2QTDPAG.Value;
   DM1.Tb_Min2CM2QTDTIT.Value  :=Tb_Min2CM2QTDTIT.Value;
   DM1.Tb_Min2CM2QTDITENS.Value:=Tb_Min2CM2QTDITENS.Value;
   DM1.Tb_Min2CM2QTDUND.Value  :=Tb_Min2CM2QTDUND.Value;
   DM1.Tb_Min2CM2CODBCO.Value  :=Tb_Min2CM2CODBCO.Value;
   DM1.Tb_Min2CM2DATANF.Value  :=Tb_Min2CM2DATANF.Value;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADP01 set P1MINUTA=0'+DM1.Tb_Min2CM2CODMIN.AsString
                     +' ,P1CODTRA=0'+trim(CODTRA.Text) );
   if DM1.Tb_Min2CM2QTDVOL.AsInteger>0 then
      DM1.Query1.SQL.Add(',P1QTDVOL=0'+DM1.Tb_Min2CM2QTDVOL.AsString);
   DM1.Query1.SQL.Add(' where P1CODEMP=0'+DM1.Tb_Min2CM2PED_CODEMP.AsString
                     +' and   P1LOTSEQ=0'+DM1.Tb_Min2CM2LOTSEQ_CP.AsString
                     +' and   P1CHAVE=0'+DM1.Tb_Min2CM2NUMERO.AsString
                     +' and   (P1MINUTA is null or  P1MINUTA<>0'+DM1.Tb_Min2CM2CODMIN.AsString+')');
   try
     DM1.Query1.ExecSQL;
     fdm1StartCommit;
   except
     end;


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADETIVOL set CEV_NUM_MINUTA=0'+DM1.Tb_Min2CM2CODMIN.AsString);
   DM1.Query1.SQL.Add(' where CEV_PED_LOTSEQ=0'+DM1.Tb_Min2CM2LOTSEQ_CP.AsString
                     +' and   CEV_PED_CODEMP=0'+DM1.Tb_Min2CM2PED_CODEMP.AsString
                     +' and   CEV_PED_CHAVE=0'+DM1.Tb_Min2CM2NUMERO.AsString
                     +' and   (CEV_NUM_MINUTA is null or  CEV_NUM_MINUTA<>0'+DM1.Tb_Min2CM2CODMIN.AsString+')'
                     );
   try

     DM1.Query1.ExecSQL;
     fdm1StartCommit;
   except
     end;

                    ;
//   DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;
   DM1.Tb_Min2.Post;
   mitem:=mitem+1;
   Tb_Min2.Next;
   end;
DM1.Tb_Min1.Edit;
DM1.Tb_Min1CM1CODEMP.Value:=codemp;
DM1.Tb_Min1CM1CODMIN.Value:=mchave;
DM1.Tb_Min1CM1CODTRA.Value:=ValFloat(CODTRA.Text);
DM1.Tb_Min1CM1LOTSEQ.Value:=0;
DM1.Tb_Min1CM1DATA.Value  :=StrtoDate(MDATA.Text);
DM1.Tb_Min1M1NOMEENT.Value:=NOMENT.Text;
DM1.Tb_Min1CM1CNPF.Value  :=CNPF.Text;
DM1.Tb_Min1CM1RG.Value    :=RG.Text;
DM1.Tb_Min1CM1TOTAL.Value :=mtotal;
{
if mstatus=0 then
   begin
   DM1.Tb_Min1CM1DTHORAINC.AsDateTime:=now;
   DM1.Tb_Min1CM1USRINC.Value        :=codusr;
   end
else
   begin
//   DM1.Tb_Min1CM1DTHORAALT.AsString  :=FormatDateTime(fdt2+fhr, now);
   DM1.Tb_Min1CM1DTHORAALT.AsDateTime:=now;
   DM1.Tb_Min1CM1USRALT.Value        :=codusr;
   end;
}
if mstatus=0 then
   begin
   DM1.Tb_Min1CM1INCDTHORA.AsString :=FormatDatetime('dd/mm/yyyy mm:hh:ss', now);
   DM1.Tb_Min1CM1USRINC.Value         :=codusr;

   end
else
   begin
   DM1.Tb_Min1CM1ALTDTHORA.AsString :=FormatDatetime('dd/mm/yyyy mm:hh:ss', now);

//   DM1.Tb_Min1CM1ALTDTHORA.AsDateTime  :=now;
   DM1.Tb_Min1CM1USRALT.Value          :=codusr;
//   DM1.Tb_Min1CM1ALTDTHORA.AsString  :=FormatDateTime(fdt2+fhr, now);
   end;

DM1.Tb_MIN1.Post;
CHAVE.Text:=Formatfloat('0000000',mchave);
fMensagem('Chave da Minuta...: '+Formatfloat('000000',mchave),0,['0'],0);
BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;
CHAVEExit(Self);
//BBLIMPAR.Click;
end;

procedure TFrm_Min2.BBLIMPARClick(Sender: TObject);
begin
if (BBGRAVAR.Enabled)  and (not Tb_Min2.IsEmpty) then
   begin
   if fmensagem('Quer realmente cancelar a operacao?',0,['1','2'],0)<>mrYes then
      exit;
   end;

Tb_Min2.Close;
Tb_Min2.Sql.Clear;
Tb_Min2.Sql.Add('Select CM2CODEMP  ');
Tb_Min2.Sql.Add(',CM2LOTSEQ ');
Tb_Min2.Sql.Add(',CM2CODMIN ');
Tb_Min2.Sql.Add(',CM2SEQ ');
Tb_Min2.Sql.Add(',CM2TIPO ');
Tb_Min2.Sql.Add(',CM2LOTSEQ_CP ');
Tb_Min2.Sql.Add(',CM2NUMERO ');
Tb_Min2.Sql.Add(',CM2CLIFOR ');
Tb_Min2.Sql.Add(',CM2CODIGO ');
Tb_Min2.Sql.Add(',CM2TIPDOC ');
Tb_Min2.Sql.Add(',CM2NUMDOC  ');
Tb_Min2.Sql.Add(',CM2QTDVOL ');
Tb_Min2.Sql.Add(',CM2PESOB ');
Tb_Min2.Sql.Add(',CM2PESOL');
Tb_Min2.Sql.Add(',CM2VALOR ');
Tb_Min2.Sql.Add(',CM2OBS01');
Tb_Min2.Sql.Add(',CM2OBS02');
Tb_Min2.Sql.Add(',CM2OBS03');
Tb_Min2.Sql.Add(',CM2DTCONF');
Tb_Min2.Sql.Add(',CM2USRCONF');
Tb_Min2.Sql.Add(',CM2PED_CODEMP');
Tb_Min2.Sql.Add(',CM2QTDITENS');
Tb_Min2.Sql.Add(',CM2QTDUND ');
Tb_Min2.Sql.Add(',CM2TIPOPED ');
Tb_Min2.Sql.Add(',CM2CODCLI ');
Tb_Min2.Sql.Add(',CM2VALFRE');
Tb_Min2.Sql.Add(',CM2QTDPAG');
Tb_Min2.Sql.Add(',CM2QTDTIT');
Tb_Min2.Sql.Add(',CM2CODBCO');
Tb_Min2.Sql.Add(',CM2DATANF');
Tb_Min2.Sql.Add(',CRAZAO AS NOMCLI ');
Tb_Min2.Sql.Add(',CCIDADE ');
Tb_Min2.Sql.Add(',CUF ');
Tb_Min2.Sql.Add(',CFONE01 ');
Tb_Min2.Sql.Add(' from CADMIN2, CADCLI ');
Tb_Min2.Sql.Add(' where '+iif(DM1.Qr_Tid.Locate('TINOME','CADMIN',[]),'',' CM2CODEMP=0'+IntToStr(codemp)+' and '));
Tb_Min2.Sql.Add(' CM2LOTSEQ=0 '
               +' AND CM2CODMIN=0'+
               +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' CCODEMP=0'+IntTostr(codemp)+' and ')
               +' and CCODCLI=CM2CODCLI '
               +' order by CM2SEQ');
try
   Tb_Min2.Open;
except
   Tb_Min2.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;
if Valfloat(CHAVE.Text)<>0 then
   begin
   if flcadmin2(1,0,trim(chave.Text),'') then
      begin
      While not DM1.Tb_Min2.Eof do
         begin
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add('Update CADP01 set P1MINUTA=0'+DM1.Tb_Min2CM2CODMIN.AsString
                     +' ,P1CODTRA=0'+trim(CODTRA.Text) );
         if DM1.Tb_Min2CM2QTDVOL.AsInteger>0 then
            DM1.Query1.SQL.Add(',P1QTDVOL=0'+DM1.Tb_Min2CM2QTDVOL.AsString);
         DM1.Query1.SQL.Add(' where P1CODEMP=0'+DM1.Tb_Min2CM2PED_CODEMP.AsString
                           +' and   P1LOTSEQ=0'+DM1.Tb_Min2CM2LOTSEQ_CP.AsString
                           +' and   P1CHAVE=0'+DM1.Tb_Min2CM2NUMERO.AsString
                           +' and   (P1MINUTA is null or  P1MINUTA<>0'+DM1.Tb_Min2CM2CODMIN.AsString+')');
         try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            end;


         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add('Update CADETIVOL set CEV_NUM_MINUTA=0'+DM1.Tb_Min2CM2CODMIN.AsString);
         DM1.Query1.SQL.Add(' where CEV_PED_LOTSEQ=0'+DM1.Tb_Min2CM2LOTSEQ_CP.AsString
                           +' and   CEV_PED_CODEMP=0'+DM1.Tb_Min2CM2PED_CODEMP.AsString
                           +' and   CEV_PED_CHAVE=0'+DM1.Tb_Min2CM2NUMERO.AsString
                           +' and   CEV_NUM_MINUTA<>0'+DM1.Tb_Min2CM2CODMIN.AsString
                           );
         try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            end;
         DM1.Tb_Min2.Next;
         end;
      end;
   end;


CHAVE.Text    :='';
NOMENT.Text   :='';
CNPF.Text     :='';
RG.Text       :='';
CODTRA.Text   :='';
NOMTRA.Text   :='';
USRINC.Text   :='';
NOMUSRINC.Text:='';
DTHORAINC.Text:='';
HORAALT.Text  :='';
USRALT.Text   :='';
NOMUSRALT.Text:='';
DTHORAALT.Text:='';
HORAALT.Text  :='';

MDATA.Text :=FormatDateTime(fdt2,date);
MIN02_CHAVEPED.Enabled  :=false;
MIN02_PED_CODEMP.Enabled:=false;
BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;
panel_dig.Enabled:=False;
moperitens:=0; // 0 inclusao 1-alteração

end;

procedure TFrm_Min2.bbItens_AlterarClick(Sender: TObject);
begin
if Tb_Min2CM2NUMERO.IsNull then
   exit;
moperitens:=1; // 0 inclusao 1-alteração
mant_codemp:=Tb_Min2CM2PED_CODEMP.Value;
mant_chave :=Tb_Min2CM2NUMERO.Value;
MIN02_PED_CODEMP.Text :=Tb_Min2CM2PED_CODEMP.AsString;
MIN02_CHAVEPED.Text   :=Tb_Min2CM2NUMERO.AsString;
MIN02_RAZSOC.Text     :=Tb_Min2NOMCLI.AsString;
MIN02_QTDVOL.Text     :=FormatFloat('#0', Tb_Min2CM2QTDVOL.Value);
MIN02_PESOB.Text      :=FormatFloat('#0,000', Tb_Min2CM2PESOB.Value);
MIN02_PESOL.Text      :=FormatFloat('#0,000', Tb_Min2CM2PESOL.Value);
MIN02_VLRTOT.Text     :=FormatFloat(mcasas, Tb_Min2CM2VALOR.Value);
MIN02_VALFRE.Text     :=FormatFloat('#0,000', Tb_Min2CM2VALFRE.Value);
MIN02_QTDUND.Text     :=FormatFloat(mcasqtd, Tb_Min2CM2QTDUND.Value);
MIN02_QTDITENS.Text   :=FormatFloat('#0', Tb_Min2CM2QTDITENS.Value);
MIN02_TPPED.Text      :=Tb_Min2CM2TIPOPED.AsString;
MIN02_CHAVEPED.SetFocus;

end;

procedure TFrm_Min2.bbItens_excluirClick(Sender: TObject);
begin
if not Tb_Min2CM2NUMERO.IsNull then
   begin
   if fmensagem('Quer Realmente Excluir o Item?',0,['1','2'],2)=mrYES then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.ADD('update cadp01 set p1minuta=0 where p1chave='+Tb_Min2CM2NUMERO.AsString
                        +' and P1CODEMP='+Tb_Min2CM2PED_CODEMP.AsString+' and P1LOTSEQ='+Tb_Min2CM2LOTSEQ.AsString);
      DM1.Query1.ExecSQL;
      Tb_Min2.Delete;
      end;
   end;
moperitens:=0; // 0 inclusao 1-alteração

end;

procedure TFrm_Min2.bbItens_CancelarClick(Sender: TObject);
begin
moperitens:=0; // 0 inclusao 1-alteração
if Tb_Min2.State in [dsEdit,dsInsert] then Tb_Min2.Cancel;
mant_codemp:=0;
mant_chave :=0;

MIN02_PED_CODEMP.Text :='';
MIN02_CHAVEPED.Text   :='';
MIN02_RAZSOC.Text     :='';
MIN02_QTDVOL.Text     :='';
MIN02_PESOB.Text      :='';
MIN02_PESOL.Text      :='';
MIN02_VLRTOT.Text     :='';
MIN02_VALFRE.Text     :='';
MIN02_QTDUND.Text     :='';
MIN02_QTDITENS.Text   :='';
MIN02_TPPED.Text      :='';

dbgriditens.SetFocus;

end;

procedure TFrm_Min2.dbgriditensExit(Sender: TObject);
begin
{
if Tb_Min2.State in [DsInsert, DsEdit] then
   begin
   if Tb_Min2CM2NUMERO.Value<=0 then
      Tb_Min2.Cancel
   else
      Tb_Min2.Post;
   end;
}
end;

procedure TFrm_Min2.CHAVEExit(Sender: TObject);
begin

if fSonumero(CHAVE.Text)>0 then
   begin
   if not flcadmin1(0,0,CHAVE.Text,pvazio) then
      begin
      fMensagem('Minuta Não Encontrado!',0,['0'],0);
      CHAVE.SetFocus;
      exit;
      end
   else
      begin
      Tb_Min2.Close;
      Tb_Min2.Sql.Clear;
      Tb_Min2.Sql.Add('Select CM2CODEMP  ');
      Tb_Min2.Sql.Add(',CM2LOTSEQ ');
      Tb_Min2.Sql.Add(',CM2CODMIN ');
      Tb_Min2.Sql.Add(',CM2SEQ ');
      Tb_Min2.Sql.Add(',CM2TIPO ');
      Tb_Min2.Sql.Add(',CM2LOTSEQ_CP ');
      Tb_Min2.Sql.Add(',CM2NUMERO ');
      Tb_Min2.Sql.Add(',CM2CLIFOR ');
      Tb_Min2.Sql.Add(',CM2CODIGO ');
      Tb_Min2.Sql.Add(',CM2TIPDOC ');
      Tb_Min2.Sql.Add(',CM2NUMDOC  ');
      Tb_Min2.Sql.Add(',CM2QTDVOL ');
      Tb_Min2.Sql.Add(',CM2PESOB ');
      Tb_Min2.Sql.Add(',CM2PESOL');
      Tb_Min2.Sql.Add(',CM2VALOR ');
      Tb_Min2.Sql.Add(',CM2OBS01');
      Tb_Min2.Sql.Add(',CM2OBS02');
      Tb_Min2.Sql.Add(',CM2OBS03');
      Tb_Min2.Sql.Add(',CM2DTCONF');
      Tb_Min2.Sql.Add(',CM2USRCONF');
      Tb_Min2.Sql.Add(',CM2PED_CODEMP');
      Tb_Min2.Sql.Add(',CM2QTDITENS');
      Tb_Min2.Sql.Add(',CM2QTDUND ');
      Tb_Min2.Sql.Add(',CM2TIPOPED ');
      Tb_Min2.Sql.Add(',CM2CODCLI ');
      Tb_Min2.Sql.Add(',CM2VALFRE');
      Tb_Min2.Sql.Add(',CM2QTDPAG');
      Tb_Min2.Sql.Add(',CM2QTDTIT');
      Tb_Min2.Sql.Add(',CM2CODBCO');
      Tb_Min2.Sql.Add(',CM2DATANF');
      Tb_Min2.Sql.Add(',CRAZAO AS NOMCLI ');
      Tb_Min2.Sql.Add(',CCIDADE ');
      Tb_Min2.Sql.Add(',CUF ');
      Tb_Min2.Sql.Add(',CFONE01 ');
      Tb_Min2.Sql.Add(' from CADMIN2, CADCLI ');
      Tb_Min2.Sql.Add(' where '+iif(DM1.Qr_Tid.Locate('TINOME','CADMIN',[]),'',' CM2CODEMP=0'+IntToStr(codemp)+' and '));
      Tb_Min2.Sql.Add(' CM2LOTSEQ=0 '
                     +' AND CM2CODMIN=0'+Trim(CHAVE.Text)
                     +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' CCODEMP=0'+IntTostr(codemp)+' and ')
                     +' and CCODCLI=CM2CODIGO '
                     +' order by CRAZAO,CCIDADE,CUF,CFONE01,CM2CODCLI,CM2NUMERO,CM2SEQ');
   //   Tb_Min2.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      try
         Tb_Min2.Open;
      except
         Tb_Min2.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
         end;
      MDATA.Text:=FormatDateTime(fdt2,dm1.Tb_Min1CM1DATA.Value);
      CODTRA.Text:=DM1.Tb_Min1CM1CODTRA.AsString;
      if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',DM1.Tb_Min1CM1CODTRA.AsString) then
         NOMTRA.Text:=DM1.Query1.fields[0].AsString
      else
         NOMTRA.Text:='Não Cadastrado';

      NOMENT.Text:=DM1.Tb_Min1M1NOMEENT.Value;
      CNPF.Text  :=DM1.Tb_Min1CM1CNPF.Value;
      RG.Text    :=DM1.Tb_Min1CM1RG.Value;

      USRINC.Text   :=DM1.Tb_Min1CM1USRINC.AsString;
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_Min1CM1USRINC.AsString) then
         NOMUSRINC.Text:=DM1.Query1.Fields[0].AsString
      else
         NOMUSRINC.Text:='';
       if DM1.Tb_Min1CM1INCDTHORA.AsDateTime<=pdatanula then
          begin
          DTHORAINC.Text:='/  /';
          HORAINC.Text  :=':  :';
          end
       else
          begin
          DTHORAINC.Text:=FormatDatetime(fdt2, DM1.Tb_Min1CM1INCDTHORA.Value);
          HORAINC.Text  :=FormatDatetime(fhr, DM1.Tb_Min1CM1INCDTHORA.Value);
          end;


      USRALT.Text   :=DM1.Tb_Min1CM1USRALT.AsString;
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_Min1CM1USRALT.AsString) then
         NOMUSRALT.Text:=DM1.Query1.Fields[0].AsString
      else
         NOMUSRALT.Text:='';
       if DM1.Tb_Min1CM1ALTDTHORA.AsDateTime<=pdatanula then
          begin
          DTHORAALT.Text:='/  /';
          HORAALT.Text  :=':  :';
          end
       else
          begin
          DTHORAALT.Text:=FormatDatetime(fdt2, DM1.Tb_Min1CM1ALTDTHORA.Value);
          HORAALT.Text  :=FormatDatetime(fhr, DM1.Tb_Min1CM1ALTDTHORA.Value);
          end;



      Frm_Min2.Update;
      mstatus:=1;
      end;
   BBINCLUIR.Enabled  :=True;
   BBIMPRIMIR.Enabled :=True;
   BBALTERAR.Enabled  :=True;
   BBEXCLUIR.Enabled  :=True;
   panel_dig.Enabled     :=False;
   end;
end;

procedure TFrm_Min2.BBIMPRIMIRClick(Sender: TObject);
var
mobs,mlinha: String;
mtotout:Real;
mcodcli: Integer;

begin
testeform := TFrm_Min2(FindGlobalComponent('form_impres_min2'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_min2);

form_impres_min2.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
Tb_Min2.First;
form_impres_min2.mlin:=0;
form_impres_min2.mpag:=0;
if (RG_TIPOREL.ItemIndex=0)  then
//if (RG_TIPOREL.ItemIndex=0) or (RG_TIPOREL.ItemIndex=0) then
   begin
   While not Tb_Min2.Eof do
      begin
      if form_impres_min2.mlin=0 then
         begin
         form_impres_min2.mpag:=form_impres_min2.mpag+1;
         form_impres_min2.Rdprint1.Impf(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
         form_impres_min2.Rdprint1.Impf(01,105,'Pagina....: '+Formatfloat('0000',form_impres_min2.mpag),mnormal);
         form_impres_min2.Rdprint1.Impf(02,01,'Minuta de Entrega de Mercadorias. Numero: '+Trim(CHAVE.Text),mnormal);
         form_impres_min2.Rdprint1.Impf(02,105,'Data: '+FormatDateTime(fdt2,date),mnormal);
         form_impres_min2.Rdprint1.Impf(03,01,insere2('-','-',80),mnormal);
         form_impres_min2.mlin:=3;
         end;
      if Tb_Min2CM2CLIFOR.Value='CL' then
         flcadcli(1,0,Tb_Min2CM2CODIGO.AsString);
      form_impres_min2.mlin:=form_impres_min2.mlin+1;
      if Tb_Min2CM2TIPO.Value='TX' then
         begin
         form_impres_min2.RDprint1.ImpF(form_impres_min2.mlin,01,'TAXA DE CADASTRO  Numero: '+FormatFloat('000000',Tb_Min2CM2NUMERO.Value)
                                 +insere2(' ',' ',10)+'Valor: '+insere(FormatFloat('###,##0.00',Tb_Min2CM2VALOR.Value),' ',12),mneg);
         end
      else
         begin
         form_impres_min2.RDprint1.ImpF(form_impres_min2.mlin,01,'PEDIDO DE CLIENTE.  Numero NF: '+FormatFloat('000000',Tb_Min2CM2NUMDOC.Value)
                                 +insere2(' ',' ',8)+'Valor: '+insere(FormatFloat('###,##0.00',Tb_Min2CM2VALOR.Value),' ',12),mneg);
         end;
      form_impres_min2.mlin:=form_impres_min2.mlin+1;
      form_impres_min2.RDprint1.ImpF(form_impres_min2.mlin,01,FormatFloat('00000',DM1.Tb_CliCCODCLI.Value)+'-'+DM1.Tb_CliCRAZAO.Value+' '+DM1.Tb_CliCCEP.Value+' '+DM1.Tb_CliCCIDADE.Value,mnormal);
      form_impres_min2.mlin:=form_impres_min2.mlin+1;
      form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,Trim(DM1.Tb_CliCLOG.Value)+' '+DM1.Tb_Clicbairro.Value,mnormal);
      form_impres_min2.mlin:=form_impres_min2.mlin+1;
      form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,'Quantidade de volumes: '+FormatFloat('##0',Tb_Min2CM2QTDVOL.Value)
                                      +' Peso Liquido: '+FormatFloat('##0.000',Tb_Min2CM2PESOL.Value)
                                      +' Peso Bruto: '+FormatFloat('##0.000',Tb_Min2CM2PESOB.Value),mnormal);

      if Trim(Tb_Min2CM2OBS01.Value)<>'' then
         begin
         form_impres_min2.mlin:=form_impres_min2.mlin+1;
         form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,Tb_Min2CM2OBS01.Value,mreduz);
         end;
      if Trim(Tb_Min2CM2OBS02.Value)<>'' then
         begin
         form_impres_min2.mlin:=form_impres_min2.mlin+1;
         form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,Tb_Min2CM2OBS02.Value,mreduz);
         end;
      if Trim(Tb_Min2CM2OBS03.Value)<>'' then
         begin
         form_impres_min2.mlin:=form_impres_min2.mlin+1;
         form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,Tb_Min2CM2OBS03.Value,mreduz);
         end;
      form_impres_min2.mlin:=form_impres_min2.mlin+1;
      form_impres_min2.Rdprint1.impf(form_impres_min2.mlin,01,Centra('DOCUMENTOS DE CREDITOS',' ',80),mneg);
      form_impres_min2.mlin:=form_impres_min2.mlin+1;
      form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,'_____________________________________    _______________________________________',mnormal);
      form_impres_min2.mlin:=form_impres_min2.mlin+1;
      form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,'_____________________________________    _______________________________________',mnormal);
      form_impres_min2.mlin:=form_impres_min2.mlin+1;
      form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,'_____________________________________    _______________________________________',mnormal);
      form_impres_min2.mlin:=form_impres_min2.mlin+1;
      Tb_Min2.Next;
      if Tb_Min2.Eof then
         begin
         form_impres_min2.mlin:=form_impres_min2.mlin+1;
         form_impres_min2.Rdprint1.ImpF(form_impres_min2.mlin,01,Centra('DECLARACAO',' ',60),mneg);
         form_impres_min2.mlin:=form_impres_min2.mlin+1;
         mobs:='Eu '+Trim(NOMENT.Text)+' portador do CNPF No. '+Trim(CNPF.Text)+
           ' e da Carteira de Identidade No. '+Trim(RG.Text)+' Declaro ter '
           +'Recebido os documentos acima, bem como as Mercadorias dos pedidos '
           +'mencionados, e que deverei retornar com os valores acima citados ou'
           +' com os documentos e as mercadorias. ';
         mobs:=centratexto(mobs,0,80);
         form_impres_min2.mpag:=length(mobs);
         mcodcli:=0;
         While mcodcli<form_impres_min2.mpag do
            begin
            mlinha:=copy(mobs,mcodcli+1,80);
            form_impres_min2.RDprint1.ImpF(form_impres_min2.mlin,01,mlinha,mnormal);
            mcodcli:=mcodcli+80;
            form_impres_min2.mlin:=form_impres_min2.mlin+1;
            end;
         form_impres_min2.mlin:=form_impres_min2.mlin+1;
         mcodcli:=Length(NOMENT.Text);
         form_impres_min2.Rdprint1.impf(form_impres_min2.mlin,01,insere('_','_',mcodcli),mnormal);
         form_impres_min2.mlin:=form_impres_min2.mlin+1;
         form_impres_min2.RDprint1.ImpF(form_impres_min2.mlin,01,NOMENT.Text,mnormal);
         form_impres_min2.mlin:=form_impres_min2.mlin+1;
         form_impres_min2.RDprint1.ImpF(form_impres_min2.mlin,01,insere('Fim.','-',80),mnormal);
         if form_impres_min2.RDprint1.setup then form_impres_min2.Rdprint1.Fechar;
         form_impres_min2.free;
         form_impres_min2:=nil;
         end
      else if form_impres_min2.mlin>50 then
         begin
         form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,insere('Continua...','-',80),mnormal);
         form_impres_min2.Rdprint1.Novapagina;
         form_impres_min2.mlin:=0;
         end;
      end;
   end
else if RG_TIPOREL.ItemIndex>0 then
   begin
   mant_chave:=0;
   mtotgeral :=0;
   mQtdPed   :=0;
   mQtdVol   :=0;
   mtotOut   :=0;
   if (not DM1.Tb_Tra.Active) or (valfloat(CODTRA.Text)<>DM1.Tb_TraTRCODTRA.AsFloat) then
      flcadtra(1,0,CODTRA.Text);

   While not Tb_Min2.Eof do
      begin
      if form_impres_min2.mlin=0 then
         begin
         form_impres_min2.mpag:=form_impres_min2.mpag+1;
         form_impres_min2.Rdprint1.Impf(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
         form_impres_min2.Rdprint1.Impf(01,65,'Pagina....: '+Formatfloat('0000',form_impres_min2.mpag),mnormal);
         form_impres_min2.Rdprint1.Impf(02,01,'Minuta de Entrega de Mercadorias. Numero: '+Trim(CHAVE.Text),mnormal);
         form_impres_min2.Rdprint1.Impf(02,65,'Data: '+FormatDateTime(fdt2,date),mnormal);
         form_impres_min2.Rdprint1.Impf(03,01,insere2('-','-',80),mnormal);
         form_impres_min2.mlin:=4;
         form_impres_min2.RDprint1.ImpF(form_impres_min2.mlin,01,'Transportadora: ',mnormal);
         form_impres_min2.RDprint1.ImpF(form_impres_min2.mlin,18,CODTRA.Text+' - '+NOMTRA.Text,mneg);
         form_impres_min2.mlin:=form_impres_min2.mlin+1;
         form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,insere2('-','-',80),mnormal);
         if form_impres_min2.mpag=1 then
            begin
            if trim(DM1.Tb_TraTRPLACAV.Text)='' then
               mcinst3:='_______________________'
            else
               mcinst3:=DM1.Tb_TraTRUFPV.AsString+'-'+DM1.Tb_TraTRPLACAV.AsString;

            form_impres_min2.mlin:=form_impres_min2.mlin+2;
            form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,'VEICULO.....:___________________________________ PLACA..:'+mcinst3,mnormal);
            form_impres_min2.mlin:=form_impres_min2.mlin+2;
            form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,'Saida Data..:____/____/____                      HORAS..:___:____  KM:__________',mnormal);
            form_impres_min2.mlin:=form_impres_min2.mlin+2;
            form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,'Chegada Data:____/____/____                      HORAS..:___:____  KM:__________',mnormal);
            form_impres_min2.mlin:=form_impres_min2.mlin+1;
            form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,insere2('-','-',80),mnormal);
            end;
         form_impres_min2.mlin:=form_impres_min2.mlin+1;
         form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,'Pedido Cliente                              Cidade             UF Telefone            NF     Emissao      Valor Bco  Vol Assinatura',mreduz);
         form_impres_min2.mlin:=form_impres_min2.mlin+1;
         end;
      form_impres_min2.mlin:=form_impres_min2.mlin+1;
      if mant_chave<>Tb_Min2CM2NUMERO.Value then
         begin
         mcinst4:=insere(Tb_Min2CM2NUMERO.AsString,'0',6)+' '
                  +insere2(Formatfloat('00000',Tb_Min2CM2CODCLI.Value)+'-'+Tb_Min2NOMCLI.Value,' ',36)
                  +' '+insere2(Tb_Min2CCIDADE.Value,' ',18)
                  +' '+insere2(Tb_Min2CUF.Value,' ',02)
                  +' '+insere2(Tb_Min2CFONE01.Value,' ',15)
                  +' ';
         mant_chave:=Tb_Min2CM2NUMERO.Value;
         end
      else
         begin
         mcinst4:=insere(' ',' ',82);
         end;
      if Tb_Min2CM2TIPOPED.Value=1 then
         mtotgeral:=mtotgeral+Tb_Min2CM2VALOR.Value
      else
         mtotout:=mtotout+Tb_Min2CM2VALOR.value;

      mQtdPed  :=mQtdPed+1;
      mQtdVol  :=mQtdVol+Tb_Min2CM2QTDVOL.Value;

      mcinst4:=mcinst4+insere(Tb_Min2CM2NUMDOC.AsString,'0',6);
      if Tb_Min2CM2PED_CODEMP.AsFloat>100 then
         mcinst4:=mcinst4+'*'
      else
         mcinst4:=mcinst4+' ';
      mcinst4:=mcinst4+' '+FormatDateTime(fdt2, Tb_Min2CM2DATANF.Value);
      mcinst4:=mcinst4+insere(FormatFloat(mcasas, Tb_Min2CM2VALOR.value),' ',11);
      if (Tb_Min2CM2TIPOPED.Value=21) or
         (Tb_Min2CM2TIPOPED.Value=22) or
         (Tb_Min2CM2TIPOPED.Value=2) then
          mcinst4:=mcinst4+insere('P B',' ',4)
      else if Tb_Min2CM2CODBCO.AsFloat=0 then
          mcinst4:=mcinst4+insere(' C ',' ',4)
      else
         mcinst4:=mcinst4+insere(Formatfloat('000', Tb_Min2CM2CODBCO.value),' ',4);
      mcinst4:=mcinst4+insere(Tb_Min2CM2QTDVOL.asString+'/'+Tb_Min2CM2QTDTIT.AsString,' ',5);
      mcinst4:=mcinst4+' ____________';
      form_impres_min2.RDprint1.ImpF(form_impres_min2.mlin,01,mcinst4,mreduz);
      if RG_TIPOREL.ItemIndex=2 then
         form_impres_min2.mlin:=form_impres_min2.mlin+4;
      Tb_Min2.Next;
      if Tb_min2.Eof then
         begin
         form_impres_min2.mlin:=form_impres_min2.mlin+1;
         form_impres_min2.RDprint1.ImpF(form_impres_min2.mlin,01,'   Qtde. Pedidos.: '+FormatFloat('0000', mQtdPed)
                                 +' Totalizacaoes.> Vendas : '+insere(Formatfloat(mcasas, mtotgeral),' ',12)
                                 +' Outras: '+insere(Formatfloat(mcasas, mtotout),' ',12),m12ccp);
         form_impres_min2.mlin:=form_impres_min2.mlin+2;
         form_impres_min2.RDprint1.ImpF(form_impres_min2.mlin,01,insere('-','-',90)+'     ____/____/_____ Qtd. Vol.: '+FloatToStr(mQtdVol),mreduz);
         form_impres_min2.mlin:=form_impres_min2.mlin+1;
         form_impres_min2.RDprint1.ImpF(form_impres_min2.mlin,01,NOMTRA.Text,mnormal);
//         form_impres_min2.RDprint1.ImpF(form_impres_min2.mlin,01,centra(NOMTRA.Text,' ',53),mnormal);
         if trim(NOMENT.Text)<>'' then
            begin
//            form_impres_min2.mlin:=form_impres_min2.mlin+1;
//            form_impres_min2.RDprint1.ImpF(form_impres_min2.mlin,01,NOMENT.Text,mnormal);
            form_impres_min2.mlin:=form_impres_min2.mlin+1;
            form_impres_min2.RDprint1.ImpF(form_impres_min2.mlin,01,NOMUSRINC.Text,mnormal);

            end;
         if form_impres_min2.RDprint1.Setup then form_impres_min2.RDprint1.Fechar;
         form_impres_min2.free;
         form_impres_min2:=nil;

         exit;
         end;
      if mant_chave<>Tb_Min2CM2NUMERO.Value then
         begin
         form_impres_min2.mlin:=form_impres_min2.mlin+1;
         end;
      if form_impres_min2.mlin>57 then
         begin
         form_impres_min2.RDprint1.Novapagina;
         form_impres_min2.mlin:=0;
         end;
      end;
   end;

{
                                                                  123456789012345
123456 08095-123456789012345678901234567890 123456789012345678 GO (0062)3093-6601 123456* 24/09/2007ZZZ.ZZZ.ZZZ 234 0001 ____________


      if (mant_chave=0) or (Tb_min2cm then
         begin
         form_impres_min2.mlin:=form_impres_min2.mlin+1;
         mant_chave:=Tb_Min2CM2NUMERO.Value;
         end;


         mant_chave:=tb_


123456 08095-123456789012345678901234567890 123456789012345678 GO (0062)3093-6601 123456* 24/09/2007ZZZ.ZZZ.ZZZ 234 0001 ____________




VEICULO.....:___________________________________ PLACA..:_______________________
Saida Data..:____/____/____                      HORAS..:___:____  KM:__________
Chegada Data:____/____/____                      HORAS..:___:____  KM:__________

Pedido Cliente                              Cidade             UF Telefone            NF     Emissao      Valor Bco  Vol Assinatura
123456 08095-123456789012345678901234567890 123456789012345678 GO (0062)3093-6601 123456* 24/09/2007ZZZ.ZZZ.ZZZ 234 0001 ____________

         end;
      form_impres_min2.mlin:=form_impres_min2.mlin+1;
      if Tb_Min2CM2TIPO.Value='TX' then
         begin
         form_impres_min2.RDprint1.ImpF(form_impres_min2.mlin,01,'TAXA DE CADASTRO  Numero: '+FormatFloat('000000',Tb_Min2CM2NUMERO.Value)
                                 +insere2(' ',' ',10)+'Valor: '+insere(FormatFloat('###,##0.00',Tb_Min2CM2VALOR.Value),' ',12),mneg);
         end
      else
         begin
         form_impres_min2.RDprint1.ImpF(form_impres_min2.mlin,01,'PEDIDO DE CLIENTE.  Numero NF: '+FormatFloat('000000',Tb_Min2CM2NUMDOC.Value)
                                 +insere2(' ',' ',8)+'Valor: '+insere(FormatFloat('###,##0.00',Tb_Min2CM2VALOR.Value),' ',12),mneg);
         end;
      form_impres_min2.mlin:=form_impres_min2.mlin+1;
      form_impres_min2.RDprint1.ImpF(form_impres_min2.mlin,01,FormatFloat('00000',DM1.Tb_CliCCODCLI.Value)+'-'+DM1.Tb_CliCRAZAO.Value+' '+DM1.Tb_CliCCEP.Value+' '+DM1.Tb_CliCCIDADE.Value,mnormal);
      form_impres_min2.mlin:=form_impres_min2.mlin+1;
      form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,Trim(DM1.Tb_CliCLOG.Value)+' '+DM1.Tb_Clicbairro.Value,mnormal);
      form_impres_min2.mlin:=form_impres_min2.mlin+1;
      form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,'Quantidade de volumes: '+FormatFloat('##0',Tb_Min2CM2QTDVOL.Value)
                                      +' Peso Liquido: '+FormatFloat('##0.000',Tb_Min2CM2PESOL.Value)
                                      +' Peso Bruto: '+FormatFloat('##0.000',Tb_Min2CM2PESOB.Value),mnormal);

      if Trim(Tb_Min2CM2OBS01.Value)<>'' then
         begin
         form_impres_min2.mlin:=form_impres_min2.mlin+1;
         form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,Tb_Min2CM2OBS01.Value,mreduz);
         end;
      if Trim(Tb_Min2CM2OBS02.Value)<>'' then
         begin
         form_impres_min2.mlin:=form_impres_min2.mlin+1;
         form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,Tb_Min2CM2OBS02.Value,mreduz);
         end;
      if Trim(Tb_Min2CM2OBS03.Value)<>'' then
         begin
         form_impres_min2.mlin:=form_impres_min2.mlin+1;
         form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,Tb_Min2CM2OBS03.Value,mreduz);
         end;
      form_impres_min2.mlin:=form_impres_min2.mlin+1;
      form_impres_min2.Rdprint1.impf(form_impres_min2.mlin,01,Centra('DOCUMENTOS DE CREDITOS',' ',80),mneg);
      form_impres_min2.mlin:=form_impres_min2.mlin+1;
      form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,'_____________________________________    _______________________________________',mnormal);
      form_impres_min2.mlin:=form_impres_min2.mlin+1;
      form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,'_____________________________________    _______________________________________',mnormal);
      form_impres_min2.mlin:=form_impres_min2.mlin+1;
      form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,'_____________________________________    _______________________________________',mnormal);
      form_impres_min2.mlin:=form_impres_min2.mlin+1;
      Tb_Min2.Next;
      if Tb_Min2.Eof then
         begin
         form_impres_min2.mlin:=form_impres_min2.mlin+1;
         form_impres_min2.Rdprint1.ImpF(form_impres_min2.mlin,01,Centra('DECLARACAO',' ',60),mneg);
         form_impres_min2.mlin:=form_impres_min2.mlin+1;
         mobs:='Eu '+Trim(NOMENT.Text)+' portador do CNPF No. '+Trim(CNPF.Text)+
           ' e da Carteira de Identidade No. '+Trim(RG.Text)+' Declaro ter '
           +'Recebido os documentos acima, bem como as Mercadorias dos pedidos '
           +'mencionados, e que deverei retornar com os valores acima citados ou'
           +' com os documentos e as mercadorias. ';
         mobs:=centratexto(mobs,0,80);
         form_impres_min2.mpag:=length(mobs);
         mcodcli:=0;
         While mcodcli<form_impres_min2.mpag do
            begin
            mlinha:=copy(mobs,mcodcli+1,80);
            form_impres_min2.RDprint1.ImpF(form_impres_min2.mlin,01,mlinha,mnormal);
            mcodcli:=mcodcli+80;
            form_impres_min2.mlin:=form_impres_min2.mlin+1;
            end;
         form_impres_min2.mlin:=form_impres_min2.mlin+1;
         mcodcli:=Length(NOMENT.Text);
         form_impres_min2.Rdprint1.impf(form_impres_min2.mlin,01,insere('_','_',mcodcli),mnormal);
         form_impres_min2.mlin:=form_impres_min2.mlin+1;
         form_impres_min2.RDprint1.ImpF(form_impres_min2.mlin,01,NOMENT.Text,mnormal);
         form_impres_min2.mlin:=form_impres_min2.mlin+1;
         form_impres_min2.RDprint1.ImpF(form_impres_min2.mlin,01,insere('Fim.','-',80),mnormal);
         if form_impres_min2.RDprint1.setup then form_impres_min2.Rdprint1.Fechar;
         end
      else if form_impres_min2.mlin>50 then
         begin
         form_impres_min2.Rdprint1.Impf(form_impres_min2.mlin,01,insere('Continua...','-',80),mnormal);
         form_impres_min2.Rdprint1.Novapagina;
         form_impres_min2.mlin:=0;
         end;

      end;
   end;
}
end;

procedure TFrm_Min2.dbgriditensEnter(Sender: TObject);
begin
{
if Tb_Min2.RecordCount<=0 then
   Tb_Min2.Insert;
}
end;

procedure TFrm_Min2.dbgriditensKeyPress(Sender: TObject; var Key: Char);
begin
{
if dbgriditens.SelectedField=Tb_Min2CM2VALOR then
   key:=#0;
}
end;

procedure TFrm_Min2.MDATAExit(Sender: TObject);
begin
if BBLIMPAR.Focused then
   abort;
try
  mdata.Text:=FormatDatetime('dd/mm/yyyy',StrtoDate(mdata.Text));
except
  ShowMessage('Data Invalida!');
  MDATA.SetFocus;
  end;
end;
procedure TFrm_Min2.FormCreate(Sender: TObject);
begin
mtipmin:=0;
{
if DM1.Tb_PargerPCADCLITAXC.Value>0 then
   DBGrid1.Columns[0].Visible:=False;
}
Tb_Min2CM2VALOR.DisplayFormat:=mcasas;
Tb_Min2CM2VALFRE.DisplayFormat:=mcasas;
Tb_Min2CM2QTDVOL.DisplayFormat:='#0';

MIN02_PED_CODEMP.Alignment     := TAlignment(1);
MIN02_CHAVEPED.Alignment       := TAlignment(1);
MIN02_QTDVOL.Alignment         := TAlignment(1);
MIN02_PESOB.Alignment          := TAlignment(1);
MIN02_PESOL.Alignment          := TAlignment(1);
MIN02_VLRTOT.Alignment         := TAlignment(1);
MIN02_VALFRE.Alignment         := TAlignment(1);
MIN02_QTDUND.Alignment         := TAlignment(1);
MIN02_QTDITENS.Alignment       := TAlignment(1);
MIN02_TPPED.Alignment          := TAlignment(1);


DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_MIN2','RG_TIPOREL']),[]) then
   RG_TIPOREL.ItemIndex:=valint(DM4.Tb_FilPadFPVALOR.Value);

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

end;

procedure TFrm_Min2.CODTRAKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTRA.Text:=fChamaTra(0,'frm_Min2',Key);
   if Trim(CODTRA.Text)<>'' then
      CODTRAExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Min2.CODTRAExit(Sender: TObject);
begin
CODTRA.Text:=fdeixanum2(CODTRA.Text);
if ValFloat(CODTRA.Text)>0 then
   begin
   if not flcadtra(1,0,CODTRA.Text) then
      begin
      fMensagem('Transportadora não Cadastrada!',0,['0'],0);
      CODTRA.SetFocus;
      end
   else
      NOMTRA.Text:=DM1.Tb_TraTRRAZTRA.Value;
   end;

end;

procedure TFrm_Min2.NOMENTExit(Sender: TObject);
begin
if Length(NOMENT.Text)>40 then
   NOMENT.Text:=copy(NOMENT.Text,1,40);


end;

procedure TFrm_Min2.CNPFExit(Sender: TObject);
begin
if Length(CNPF.Text)>30 then
   CNPF.Text:=copy(CNPF.Text,1,30);

end;

procedure TFrm_Min2.RGExit(Sender: TObject);
begin
if Length(RG.Text)>30 then
   RG.Text:=copy(RG.Text,1,30);

end;

procedure TFrm_Min2.MIN02_PED_CODEMPExit(Sender: TObject);
begin
MIN02_PED_CODEMP.Text:=fdeixanum2(MIN02_PED_CODEMP.Text);
if trim(MIN02_PED_CODEMP.Text)='' then
   MIN02_PED_CODEMP.Text:='01';

end;

procedure TFrm_Min2.MIN02_CHAVEPEDExit(Sender: TObject);
begin
MIN02_CHAVEPED.Text:=fdeixanum2(MIN02_CHAVEPED.Text);
if (MIN02_CHAVEPED.Text='') and (MIN02_QTDVOL.Focused) then
   begin
   MIN02_CHAVEPED.setFocus;
   exit;
   end;


//   exit;
if MIN02_CHAVEPED.Text<>'' then
   begin
//   if MIN02_PED_CODEMP.Text='' then
//      MIN02_PED_CODEMP.Text:=InttoStr(codemp);

   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select sum(P1TOTALL) AS P1TOTALL ,'
                     +' sum(P1QTDVOL) AS P1QTDVOL, '
                     +' sum(P1PESOB) AS P1PESOB, '
                     +' sum(P1PESOL) AS P1PESOL, '
                     +' sum(P1VALFRE) AS P1VALFRE, '
                     +' max(P1BANCO)  AS P1BANCO, '
                     +' max(P1DATANF) AS P1DATANF, '
                     +' max(P1CODCLI) AS P1CODCLI, '
                     +' max(P1TIPO)   AS P1TIPO, '
                     +' min(P1NUMNF) as P1NUMNF,'
                     +' min(P1NUMCF) as P1NUMCF,'
                     +' max(P1OBS1) as P1OBS01,'
                     +' max(P1OBS2) as P1OBS02,'
                     +' max(P1OBS3) as P1OBS03,'
                     +' max(P1ORDEM) AS QTDPAG, '
                     +' max(P1LOTSEQ) AS P1LOTSEQ, '
                     +' max(P1DATCON) AS P1DATCON, '
                     +' max(P1CODCON) AS P1CODCON, '
                     +' max(P1MINUTA) AS P1MINUTA, '
                     +' max(P1CODEMP) AS P1CODEMP '
                     +' from CADP01 where '+iif(la_Empresas='','',la_empresas+' and ')
                     +' P1STATUS<'+mstatus_excluido+' '
                     +' and P1LOTSEQ=0'+FloatToStr(ls_numped)
                     +' and P1CHAVE=0'+MIN02_CHAVEPED.Text);
   try
      DM1.Query2.Open;
   except
      DM1.Query2.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      end;
   if (DM1.Query2.fieldByName('P1CODCLI').Asfloat<=0) and (DM1.Query2.FieldbyName('P1CODCLI').IsNull) then
      begin
      fMensagem('Pedido não encontrado!',0,['0'],0);
      MIN02_CHAVEPED.SetFocus;
      exit;
      end
   else
      begin
      MIN02_QTDVOL.Text :=FormatFloat('#0',DM1.Query2.FieldByName('P1QTDVOL').AsFloat);
      MIN02_PESOB.Text  :=FormatFloat('#0,000',DM1.Query2.FieldByName('P1PESOB').AsFloat);
      MIN02_PESOL.Text  :=FormatFloat('#0,000', DM1.Query2.FieldByName('P1PESOL').AsFloat);
      MIN02_VLRTOT.Text :=FormatFloat('#0,000', DM1.Query2.FieldByName('P1TOTALL').AsFloat);
      MIN02_VALFRE.Text :=FormatFloat('#0,000', DM1.Query2.FieldByName('P1VALFRE').AsFloat);
      MIN02_TPPED.Text  :=DM1.Query2.FieldbyName('P1TIPO').AsString;
      m02clifor         :='CL';
      m02codcli         :=DM1.Query2.FieldbyName('P1CODCLI').AsFloat;
      m02numdoc         :=DM1.Query2.FieldbyName('P1NUMNF').AsFloat;
      m02qtdpag         :=DM1.Query2.FieldbyName('QTDPAG').AsFloat;
      m02obs01          :=DM1.Query2.FieldbyName('P1OBS01').AsString;
      m02obs02          :=DM1.Query2.FieldbyName('P1OBS02').AsString;
      m02obs03          :=DM1.Query2.FieldbyName('P1OBS03').AsString;
      m02tipdoc         :='NF';
      if ((moperitens=1) and (  (mant_codemp<>Tb_Min2CM2PED_CODEMP.Value)
                         or (mant_chave<>Tb_Min2CM2NUMERO.Value) ))
         or (moperitens<>1) then
         begin
         if Tb_min2.Locate('CM2PED_CODEMP;CM2NUMERO',vararrayof([DM1.query2.FieldByName('P1CODEMP').aSfLOAT,valfloat(MIN02_CHAVEPED.Text)]),[]) then
            begin
            fmensagem('Chave já se Encontra Nesta Minuta!',0,['0'],0);
            MIN02_CHAVEPED.SetFocus;
            exit;
            end;
         end;
      end;
   end;
end;

procedure TFrm_Min2.Tb_Min2AfterInsert(DataSet: TDataSet);
begin
Tb_Min2CM2CODEMP.Value:=codemp;
Tb_Min2CM2CODMIN.Value:=2;
Tb_Min2CM2TIPO.Value  :='PD';
Tb_Min2CM2CLIFOR.Value:='CL';

mItem:=mitem+1;
Tb_Min2CM2SEQ.Value:=mitem;
end;

procedure TFrm_Min2.MIN02_CHAVEPEDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=114 then
   begin
   Application.CreateForm(Tfrm_pedcli, form_pedcli_min2);
   form_pedcli_min2.ori_pedcli:='frm_min2';
   form_pedcli_min2.ShowModal;
   if ValInt(form_pedcli_min2.chave.Text)>0 then
      begin
      MIN02_CHAVEPED.Text       :=form_pedcli_min2.Tb_PedP1CHAVE.AsString;
      MIN02_PED_CODEMP.Text     :=form_pedcli_min2.Tb_PedP1CODEMP.aSsTRING;
      MIN02_CHAVEPEDExit(self);
//      Tb_Min2CM2LOTSEQ_CP.Value :=form_pedcli_min2.Tb_PedP1LOTSEQ.Value;
      end;
   form_pedcli_min2.Free;
   form_pedcli_min2:=nil;
   end;


end;

procedure TFrm_Min2.dbgriditensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if BBGRAVAR.Enabled then
   begin
   if (Shift=[ssctrl]) and (key=46) then
      begin
      bbItens_excluir.Click;
      end;
   if (key=13) then
      bbItens_Alterar.Click;
   end;   

end;

procedure TFrm_Min2.MIN02_CHAVEPEDEnter(Sender: TObject);
begin
MIN02_CHAVEPED.SelectAll;
end;

procedure TFrm_Min2.MIN02_PED_CODEMPEnter(Sender: TObject);
begin
MIN02_PED_CODEMP.SelectAll;
end;

function TFrm_Min2.fLerMin2(pTipo: Integer): Boolean;
begin
Tb_Min2.Close;
Tb_Min2.SQL.Clear;
Tb_Min2.Sql.Add('Select CM2CODEMP  ');
Tb_Min2.Sql.Add(',CM2LOTSEQ ');
Tb_Min2.Sql.Add(',CM2CODMIN ');
Tb_Min2.Sql.Add(',CM2SEQ ');
Tb_Min2.Sql.Add(',CM2TIPO ');
Tb_Min2.Sql.Add(',CM2LOTSEQ_CP ');
Tb_Min2.Sql.Add(',CM2NUMERO ');
Tb_Min2.Sql.Add(',CM2CLIFOR ');
Tb_Min2.Sql.Add(',CM2CODIGO ');
Tb_Min2.Sql.Add(',CM2TIPDOC ');
Tb_Min2.Sql.Add(',CM2NUMDOC  ');
Tb_Min2.Sql.Add(',CM2QTDVOL ');
Tb_Min2.Sql.Add(',CM2PESOB ');
Tb_Min2.Sql.Add(',CM2PESOL');
Tb_Min2.Sql.Add(',CM2VALOR ');
Tb_Min2.Sql.Add(',CM2OBS01');
Tb_Min2.Sql.Add(',CM2OBS02');
Tb_Min2.Sql.Add(',CM2OBS03');
Tb_Min2.Sql.Add(',CM2DTCONF');
Tb_Min2.Sql.Add(',CM2USRCONF');
Tb_Min2.Sql.Add(',CM2PED_CODEMP');
Tb_Min2.Sql.Add(',CM2QTDITENS');
Tb_Min2.Sql.Add(',CM2QTDUND ');
Tb_Min2.Sql.Add(',CM2TIPOPED ');
Tb_Min2.Sql.Add(',CM2CODCLI ');
Tb_Min2.Sql.Add(',CM2VALFRE');
Tb_Min2.Sql.Add(',CM2QTDPAG');
Tb_Min2.Sql.Add(',CM2QTDTIT');
Tb_Min2.Sql.Add(',CM2CODBCO');
Tb_Min2.Sql.Add(',CM2DATANF');
Tb_Min2.Sql.Add(',CRAZAO AS NOMCLI ');
Tb_Min2.Sql.Add(',CCIDADE ');
Tb_Min2.Sql.Add(',CUF ');
Tb_Min2.Sql.Add(',CFONE01 ');
Tb_Min2.Sql.Add(' from CADMIN2, CADCLI ');
Tb_Min2.Sql.Add(' where '+iif(DM1.Qr_Tid.Locate('TINOME','CADMIN',[]),'',' CM2CODEMP=0'+IntToStr(codemp)+' and '));
Tb_Min2.Sql.Add(' CM2LOTSEQ=0 '
               +' AND CM2CODMIN=0'
               +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' CCODEMP=0'+IntTostr(codemp)+' and ')
               +' and CCODCLI=CM2CODCLI '
               +' order by CM2SEQ');
try
   Tb_min2.Open;
except
   Tb_min2.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;
result:=true;

end;

procedure TFrm_Min2.CODTRAEnter(Sender: TObject);
begin
CODTRA.SelectAll;
end;

procedure TFrm_Min2.NOMENTEnter(Sender: TObject);
begin
NOMENT.SelectAll;
end;

procedure TFrm_Min2.CNPFEnter(Sender: TObject);
begin
CNPF.SelectAll;
end;

procedure TFrm_Min2.RGEnter(Sender: TObject);
begin
RG.SelectAll;
end;

procedure TFrm_Min2.Tb_Min2BeforeDelete(DataSet: TDataSet);
begin
if moperitens=1 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADP01 set P1MINUTA=0'
                     +' where P1CODEMP=0'+Tb_Min2CM2PED_CODEMP.AsString
                     +' and   P1LOTSEQ=0'+Tb_Min2CM2LOTSEQ_CP.AsString
                     +' and   P1CHAVE=0'+Tb_Min2CM2NUMERO.AsString
                     +' and  (P1MINUTA is null or  P1MINUTA<>0)');
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADETIVOL set CEV_NUM_MINUTA=0');
   DM1.Query1.SQL.Add(' where CEV_PED_LOTSEQ=0'+Tb_Min2CM2LOTSEQ_CP.AsString
                     +' and   CEV_PED_CHAVE=0'+Tb_Min2CM2NUMERO.AsString
                     +' and   CEV_PED_CODEMP=0'+Tb_Min2CM2PED_CODEMP.AsString
                     +' and   (CEV_NUM_MINUTA is null or  CEV_NUM_MINUTA<>0 )'
                     );
   try

     DM1.Query1.ExecSQL;
     fdm1StartCommit;
   except
     end;



   end;
end;

procedure TFrm_Min2.bbSalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(codusr,'_MIN2','');
fGravaPadroes(codusr,'RG_TIPOREL'    ,'itemindex' ,'_MIN2',IntTostr(RG_TIPOREL.ItemIndex));
fmensagem('Gravado!',0,['0'],0);

end;

procedure TFrm_Min2.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Min2.sbnBuscarPendClick(Sender: TObject);
begin
if valfloat(CODTRA.Text)=0 then
   CODTRA.Text:='';
if trim(CODTRA.Text)='' then
   begin
   if fmensagem('Não Foi Selecionado uma transportadora '+#13
            +'Quer selecionar assim mesmo?',0,['1','2'],2)<>mrYes  then
   exit;
   end;
Application.CreateForm(TFrm_SelPed, Frm_SelPed);
Frm_SelPed.MDT1.Text    := FormatDatetime(fdt2, date-10);
Frm_SelPed.MDT2.Text    := '/  /';
Frm_SelPed.CODTRA.Text  :=CODTRA.text;
Frm_SelPed.nomtra.Text  :=NOMTRA.text;
Frm_SelPed.bbMarcarClick(SELF);
if Frm_SelPed.ShowMOdal=mrOk then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select Max(CM1CODMIN) from CADMIN1 '
                     +fla_EmpBaixaAlta(0,'CADMIN',' where ',codemp,'CM1CODEMP',''));


   DM1.Query1.Open;
   mchave:=DM1.Query1.Fields[0].AsInteger+1;
   if not DM1.Tb_Min2.Active then
      DM1.Tb_Min2.Open;
   mitem := 0;
   Frm_SelPed.CADP01.First;
   mtotgeral:=0;
   while not Frm_SelPed.cadp01.Eof do
      begin
      if Frm_SelPed.cadp01ok.AsString = 'X' then
         begin
         if Tb_min2.Locate('CM2PED_CODEMP;CM2NUMERO',vararrayof([valfloat(MIN02_PED_CODEMP.Text),valfloat(MIN02_CHAVEPED.Text)]),[]) then
            begin
            Frm_SelPed.cadp01.Next;
            Continue;
            end;
         Tb_min2.Insert;
         Tb_min2CM2CODEMP.Value     := codemp;
         Tb_min2CM2SEQ.Value        := mitem;
         Tb_min2CM2TIPO.Value       := 'PD';
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add('Select sum(P2QTD) AS QTDUND,COUNT(*) AS QTDITENS,max(P2ORDEM) AS QTDPAG '
                           +'                 from cadp02 where ');
         DM1.Query1.SQL.Add('     p2codemp ='+Frm_SelPed.CADP01P1CODEMP.AsString);
         DM1.Query1.SQL.Add(' and p2lotseq ='+Frm_SelPed.CADP01P1LOTSEQ.AsString);
         DM1.Query1.SQL.Add(' and p2chave  ='+Frm_SelPed.CADP01P1CHAVE.AsString);
         DM1.Query1.Open;


         DM1.Query2.Close;
         DM1.Query2.SQL.Clear;
         DM1.Query2.SQL.Add('Select count(*) as QTDTIT '
                           +'                 from caddar where ');
         DM1.Query2.SQL.Add('     crcodemp ='+Frm_SelPed.CADP01P1CODEMP.AsString);
         DM1.Query2.SQL.Add(' and crlotseq_cp ='+Frm_SelPed.CADP01P1LOTSEQ.AsString);
         DM1.Query2.SQL.Add(' and crnped  ='+Frm_SelPed.CADP01P1CHAVE.AsString);
         DM1.Query2.Open;


         Tb_min2CM2NUMERO.AsString   := Frm_SelPed.CADP01P1CHAVE.AsString;
         Tb_Min2CM2LOTSEQ_CP.AsString:= Frm_SelPed.CADP01P1LOTSEQ.AsString;
         Tb_Min2CM2PED_CODEMP.AsString   := Frm_SelPed.CADP01P1CODEMP.AsString;
         Tb_min2CM2VALOR.Value      := Frm_SelPed.cadp01P1TOTALL.Value;
         Tb_min2CM2DTCONF.Value     := Frm_SelPed.CADP01P1DATANF.Value;
         Tb_min2CM2USRCONF.Value    := codusr;
         Tb_min2CM2CLIFOR.Value     := 'CL';
         Tb_Min2CM2CODMIN.AsInteger := mchave;
         Tb_Min2CM2CODIGO.AsInteger := Frm_SelPed.CADP01P1CODCLI.AsInteger;
         Tb_Min2CM2CODCLI.AsInteger := Frm_SelPed.CADP01P1CODCLI.AsInteger;
         Tb_min2CM2TIPDOC.AsString  := 'NF';
         Tb_min2CM2QTDVOL.Value     := Frm_SelPed.cadp01P1QTDVOL.Value;
         Tb_min2CM2PESOB.Value      := Frm_SelPed.cadp01P1PESOB. Value;
         Tb_min2CM2PESOL.Value      := Frm_SelPed.cadp01P1PESOL.Value;
         Tb_Min2NOMCLI.Value        := Frm_SelPed.CADP01CRAZAO.Value;
         Tb_Min2CM2OBS01.Value      := Frm_SelPed.CADP01P1OBS1.Value;
         Tb_Min2CM2OBS02.Value      := Frm_SelPed.CADP01P1OBS2.Value;
         Tb_Min2CM2OBS03.Value      := Frm_SelPed.CADP01P1OBS3.Value;
         Tb_Min2CM2QTDUND.Value     := DM1.Query1.Fieldbyname('QTDUND').AsFloat;
         Tb_Min2CM2QTDITENS.Value   := DM1.Query1.Fieldbyname('QTDITENS').AsFloat;
         Tb_Min2CM2QTDPAG.Value     := DM1.Query1.Fieldbyname('QTDPAG').AsFloat;


         Tb_Min2CM2QTDTIT.Value     := DM1.Query2.Fieldbyname('QTDTIT').AsFloat;
         Tb_Min2CM2VALFRE.Value     := Frm_SelPed.CADP01P1VALFRE.Value;
         Tb_Min2CM2VALFRE.Value     := Frm_SelPed.CADP01P1VALFRE.Value;
         Tb_min2CM2NUMDOC.Value     := Frm_SelPed.CADP01P1NUMNF.Value;
         Tb_Min2CM2DATANF.Value     := Frm_SelPed.CADP01P1DATANF.Value;
         Tb_Min2CM2CODBCO.Value     := Frm_SelPed.CADP01P1BANCO.Value;

         mtotgeral:=mtotgeral+Frm_SelPed.CADP01P1TOTALL.Value;
         Tb_min2.Post;
         end;
      Frm_SelPed.CADP01.Next;
      end;
   Frm_SelPed.Free;
   end;


end;

procedure TFrm_Min2.MIN02_QTDVOLExit(Sender: TObject);
begin
MIN02_QTDVOL.Text:=fdeixanum2(MIN02_QTDVOL.Text);
if MIN02_CHAVEPED.Focused then
   exit;
if MIN02_QTDVOL.Text<>'' then
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select sum(P1TOTALL) AS P1TOTALL ,'
                     +' sum(P1QTDVOL) AS P1QTDVOL, '
                     +' sum(P1PESOB) AS P1PESOB, '
                     +' sum(P1PESOL) AS P1PESOL, '
                     +' sum(P1VALFRE) AS P1VALFRE, '
                     +' max(P1BANCO)  AS P1BANCO, '
                     +' max(P1DATANF) AS P1DATANF, '
                     +' max(P1CODCLI) AS P1CODCLI, '
                     +' max(P1TIPO)   AS P1TIPO, '
                     +' min(P1NUMNF) as P1NUMNF,'
                     +' min(P1NUMCF) as P1NUMCF,'
                     +' max(P1OBS1) as P1OBS01,'
                     +' max(P1OBS2) as P1OBS02,'
                     +' max(P1OBS3) as P1OBS03,'
                     +' max(P1ORDEM) AS QTDPAG, '
                     +' max(P1LOTSEQ) AS P1LOTSEQ, '
                     +' max(P1DATCON) AS P1DATCON, '
                     +' max(P1CODCON) AS P1CODCON, '
                     +' max(P1MINUTA) AS P1MINUTA, '
                     +' P1CODEMP'
                     +' from CADP01 where '+iif(la_Empresas='','',la_empresas+' and ')
                     +' P1STATUS<'+mstatus_excluido+' '
                     +' and P1LOTSEQ=0'+FloatToStr(ls_numped)
                     +' and P1CHAVE=0'+MIN02_CHAVEPED.Text
                     +' group by P1CODEMP ');
   try
      DM1.Query2.Open;
   except
      DM1.Query2.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      end;
   if (DM1.Query2.fieldByName('P1CODCLI').Asfloat<=0) and (DM1.Query2.FieldbyName('P1CODCLI').IsNull) then
      begin
      fMensagem('Pedido não encontrado!',0,['0'],0);
      MIN02_CHAVEPED.SetFocus;
      exit;
      end
   else
      begin
      if (DM1.Query2.FieldByName('P1MINUTA').AsFloat>0) and
         ((moperitens=0) or (DM1.Query2.FieldByName('P1MINUTA').AsFloat<>ValFloat(CHAVE.Text)) ) then
         begin
         fmensagem('Este Pedido ja se Encontra na Minuta: '+DM1.Query2.fieldbyName('P1MINUTA').AsString,0,['0'],0);
         MIN02_CHAVEPED.SetFocus;
         exit;
         end;
      While not DM1.Query2.Eof do
         begin
         MIN02_PESOB.Text  :=FormatFloat('#0,000',DM1.Query2.FieldByName('P1PESOB').AsFloat);
         MIN02_PESOL.Text  :=FormatFloat('#0,000', DM1.Query2.FieldByName('P1PESOL').AsFloat);
         MIN02_VLRTOT.Text :=FormatFloat('#0,000', DM1.Query2.FieldByName('P1TOTALL').AsFloat);
         MIN02_VALFRE.Text :=FormatFloat('#0,000', DM1.Query2.FieldByName('P1VALFRE').AsFloat);
         MIN02_TPPED.Text  :=DM1.Query2.FieldbyName('P1TIPO').AsString;
         m02clifor         :='CL';
         m02codcli         :=DM1.Query2.FieldbyName('P1CODCLI').AsFloat;
         m02numdoc         :=DM1.Query2.FieldbyName('P1NUMNF').AsFloat;
         m02qtdpag         :=DM1.Query2.FieldbyName('QTDPAG').AsFloat;
         m02obs01          :=DM1.Query2.FieldbyName('P1OBS01').AsString;
         m02obs02          :=DM1.Query2.FieldbyName('P1OBS02').AsString;
         m02obs03          :=DM1.Query2.FieldbyName('P1OBS03').AsString;
         m02tipdoc         :='NF';
         if ((moperitens=1) and (  (mant_codemp<>Tb_Min2CM2PED_CODEMP.Value)
                            or (mant_chave<>Tb_Min2CM2NUMERO.Value) ))
            or (moperitens<>1) then
            begin
            if Tb_min2.Locate('CM2PED_CODEMP;CM2NUMERO',vararrayof([DM1.query2.FieldByName('P1CODEMP').aSfLOAT,valfloat(MIN02_CHAVEPED.Text)]),[]) then
               begin
               fmensagem('Chave já se Encontra Nesta Minuta!',0,['0'],0);
               MIN02_CHAVEPED.SetFocus;
               exit;
               end;
            end;
         if not (Tb_Min2.State in [dsEdit,dsInsert]) then
           begin
            if moperitens=0 then
               begin
               tb_Min2.First;
               Tb_Min2.Insert;
               end
            else
               Tb_Min2.Edit;
            end;
         Tb_Min2CM2PED_CODEMP.Value:=DM1.Query2.FieldbyName('P1CODEMP').AsFloat;
         Tb_Min2CM2LOTSEQ_CP.Value :=DM1.Query2.FieldbyName('P1LOTSEQ').AsFloat;
         Tb_Min2CM2NUMERO.Value    :=valfloat(MIN02_CHAVEPED.Text);
         Tb_Min2CM2CODIGO.Value    :=DM1.Query2.FieldbyName('P1CODCLI').AsFloat;
         Tb_Min2CM2CODCLI.Value    :=DM1.Query2.FieldbyName('P1CODCLI').AsFloat;
         Tb_Min2CM2TIPOPED.Value   :=DM1.Query2.FieldbyName('P1TIPO').AsFloat;
         Tb_Min2CM2QTDVOL.Value    :=ValFloat(MIN02_QTDVOL.Text);
//         Tb_Min2CM2QTDVOL.Value    :=DM1.Query2.FieldbyName('P1QTDVOL').AsFloat;
         Tb_Min2CM2PESOB.Value     :=DM1.Query2.FieldbyName('P1PESOB').AsFloat;
         Tb_Min2CM2PESOL.Value     :=DM1.Query2.FieldbyName('P1PESOL').AsFloat;
         Tb_Min2CM2VALOR.Value     :=DM1.Query2.FieldbyName('P1TOTALL').AsFloat;
         Tb_Min2CM2OBS01.Value     :=DM1.Query2.FieldbyName('P1OBS01').AsString;
         Tb_Min2CM2OBS02.Value     :=DM1.Query2.FieldbyName('P1OBS02').AsString;
         Tb_Min2CM2OBS03.Value     :=DM1.Query2.FieldbyName('P1OBS03').AsString;
         Tb_Min2CM2DTCONF.Value    :=DM1.Query2.FieldbyName('P1DATCON').AsDateTime;
         Tb_Min2CM2USRCONF.Value   :=DM1.Query2.FieldbyName('P1CODCON').AsFloat;
         Tb_Min2CM2VALFRE.Value    :=DM1.Query2.FieldbyName('P1VALFRE').AsFloat;
         Tb_Min2CM2QTDPAG.Value    :=DM1.Query2.FieldbyName('QTDPAG').AsFloat;

         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.SQL.Add('Select count(*) as QTDTIT '
                           +'                 from caddar where ');
         DM1.Query3.SQL.Add('     crcodemp ='+DM1.Query2.FieldbyName('P1CODEMP').AsString);
         DM1.Query3.SQL.Add(' and crlotseq_cp ='+DM1.Query2.FieldbyName('P1LOTSEQ').AsString);
         DM1.Query3.SQL.Add(' and crnped  ='+MIN02_CHAVEPED.Text);
         DM1.Query3.Open;
         Tb_Min2CM2QTDTIT.Value    :=DM1.Query3.FieldbyName('QTDTIT').AsFloat;
         Tb_Min2CM2NUMDOC.Value    :=DM1.Query2.FieldbyName('P1NUMNF').AsFloat;
         Tb_Min2CM2CODBCO.Value    :=DM1.Query2.FieldbyName('P1BANCO').AsFloat;
         Tb_Min2CM2DATANF.Value    :=DM1.Query2.FieldbyName('P1DATANF').AsDateTime;
         if Tb_Min2CM2CLIFOR.Value='CL' then
             begin
             if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Tb_Min2CM2CODIGO.AsString) then
                Tb_Min2NOMCLI.Value:=DM1.Query1.Fields[0].AsString
             end;
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add('Select sum(P2QTD) AS QTDUND,COUNT(*) AS QTDITENS '
                        +' from CADP02 where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+dm1.qUERY2.FieldbyName('P1CODEMP').AsString+' and ')
                        +' P2LOTSEQ=0'+DM1.Query2.FieldbyName('P1LOTSEQ').AsString
                        +' and P2CHAVE=0'+MIN02_CHAVEPED.Text);
         try
            DM1.Query1.Open;
         except
            DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
            end;

         Tb_Min2CM2QTDITENS.Value    :=DM1.Query1.FieldbyName('QTDITENS').AsFloat;
         Tb_Min2CM2QTDUND.Value      :=DM1.Query1.FieldbyName('QTDUND').AsFloat;
         Tb_Min2.Post;
         MIN02_QTDVOL.Text     :='';
         DM1.Query2.Next;
         end;
      MIN02_CHAVEPED.Text   :='';
      MIN02_RAZSOC.Text     :='';
      MIN02_PESOB.Text      :='';
      MIN02_PESOL.Text      :='';
      MIN02_VLRTOT.Text     :='';
      MIN02_VALFRE.Text     :='';
      MIN02_QTDUND.Text     :='';
      MIN02_QTDITENS.Text   :='';
      MIN02_TPPED.Text      :='';
      moperitens:=0;
      MIN02_CHAVEPED.SetFocus;
      end;
   end;


end;

procedure TFrm_Min2.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
If (BBGRAVAR.Enabled) and (not Tb_Min2.IsEmpty) then
   begin
   verteclado(0);
   Case fMensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',1,['1','2','3'],0) of
      mrYes: begin
             BBGRAVAR.Click;
             exit;
             end;
      mrNo: begin
            BBLIMPAR.Click;
            exit;
            end
      else begin
           CanClose:=False;
           exit;
           end;
      end;
   end;


end;

procedure TFrm_Min2.FormKeyDown(Sender: TObject; var Key: Word;
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

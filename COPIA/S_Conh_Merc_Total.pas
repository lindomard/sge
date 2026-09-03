unit S_Conh_Merc_Total;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, S_SelEmp, S_PedCli,
  S_Conh_MercCons, func, S_DM6, lerarq, S_Tra, S_Conh_MercRelat;

type
  TFrm_Conh_Merc_Total = class(TForm)
    GBTOTAIS: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    GB_ITENS: TGroupBox;
    dbg_prod: TDBGrid;
    Panel2: TPanel;
    st_codpro: TStaticText;
    st_nompro: TStaticText;
    st_qtdent: TStaticText;
    st_qtdpen: TStaticText;
    st_valfre_calc: TStaticText;
    st_valfre_dig: TStaticText;
    st_und: TStaticText;
    Panel3: TPanel;
    Label5: TLabel;
    NOMTRA: TEdit;
    CODTRA: TEdit;
    endereco: TMemo;
    Label4: TLabel;
    Label2: TLabel;
    CODCLI: TEdit;
    MNOMCLI: TEdit;
    MDATAP: TEdit;
    Label3: TLabel;
    sbConsultar: TSpeedButton;
    CHAVE: TEdit;
    Label1: TLabel;
    BBINCLUIR: TBitBtn;
    bbImprimir: TBitBtn;
    BBSAIR: TBitBtn;
    Label6: TLabel;
    CODCON: TEdit;
    StaticText1: TStaticText;
    QTDITENS: TStaticText;
    VLRTOTAL: TStaticText;
    PESOB: TStaticText;
    VLRFRETE: TStaticText;
    QTDM3: TStaticText;
    VLRFRETE_DIG: TStaticText;
    procedure BBSAIRClick(Sender: TObject);
    procedure sbConsultarClick(Sender: TObject);
    procedure CHAVEExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CODTRAKeyPress(Sender: TObject; var Key: Char);
    procedure CODTRAExit(Sender: TObject);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBINCLUIRExit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function fAtualizaCon03(pTipo: Integer): Boolean;
  public
    { Public declarations }
     mcodcon,mCodEmp_Ped,mLotSeq_Ped,mCodVen_Ped: Real;
     Form_PedCli_Conh_Merc_Total: TFrm_Pedcli;
  end;

var
  Frm_Conh_Merc_Total: TFrm_Conh_Merc_Total;
  Form_SelEmp: TFrm_SelEmp;

implementation

uses S_DM1;

{$R *.dfm}

procedure TFrm_Conh_Merc_Total.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Conh_Merc_Total.sbConsultarClick(Sender: TObject);
begin
   Application.CreateForm(TFrm_PedCli, Form_PedCli_Conh_Merc_Total);
   Form_PedCli_Conh_Merc_Total.ori_pedcli:='frm_Conh_Mercad';
   Form_PedCli_Conh_Merc_Total.ShowModal;
   chave.Text:=Form_PedCli_Conh_Merc_Total.chave.Text;
   Form_PedCli_Conh_Merc_Total.Tab_Mer.Visible:=false;
   Form_PedCli_Conh_Merc_Total.Tab_Ser.Visible:=false;
   Form_PedCli_Conh_Merc_Total.Free;
   Form_PedCli_Conh_Merc_Total:=nil;

end;

procedure TFrm_Conh_Merc_Total.CHAVEExit(Sender: TObject);
begin
CHAVE.Text:=fdeixanum2(CHAVE.Text);
if bbSair.Focused then
   exit;
if trim(CHAVE.Text)='' then
   exit;
if bbimprimir.Focused then
   exit;

if DM1.Qr_Tid.Locate('TINOME','CADP01',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(P1CODEMP) AS P1CODEMP, '
                  +'       max(P1CODCLI) AS P1CODCLI, '
                  +'       max(P1CODVEN) AS P1CODVEN, '
                  +'       max(P1DATAP) AS P1DATAP, '
                  +'       max(CRAZAO) AS CRAZAO, '
                  +'       max(CLOG) AS CLOG,'
                  +'       max(CBAIRRO) AS CBAIRRO,'
                  +'       max(CCIDADE) AS CCIDADE,'
                  +'       max(CUF) AS CUF,'
                  +'       max(CCEP) AS CCEP, '
                  +'       max(P1CHAVE) AS P1CHAVE, '
                  +'       max(P1LOTSEQ) AS P1LOTSEQ, '
                  +'       max(P1EMIDOC) AS P1EMIDOC '
                  +' from CADP01,CADCLI where  '
                   +iif(la_Empresas='','',la_Empresas+' and ')
                   +' P1LOTSEQ=0'+FloatToStr(ls_numped)
                   +' and P1CHAVE=0'+CHAVE.Text
                   +' and P1STATUS<'+mstatus_excluido+' '
                   +iif(DM1.Qr_tid.locate('TINOME','CADCLI',[]),'',' and CCODEMP=P1CODEMP ')
                   +' and CCODCLI=P1CODCLI ');
try
   DM1.Query1.Open;
except
   DM1.Query1.Sql.SaveToFile('c:\sql.txt');
   end;
if DM1.Query1.Eof then
   begin
   MessageDlg('Pedido não Encontrado!',mtWarning,[mbOk],0);
   CHAVE.SetFocus;
   exit;
   end
else if DM1.Query1.fieldbyName('P1EMIDOC').Asinteger=0 then
   begin
   MessageDlg('Pedido com Venda não Confirmada!!',mtWarning,[mbOk],0);
   CHAVE.SetFocus;
   exit;
   end;

MDATAP.Text:=FormatDatetime(fdt2,DM1.Query1.FieldbyName('P1DATAP').AsDateTime);
CODCLI.Text:=DM1.Query1.FieldbyName('P1CODCLI').AsString;
MNOMCLI.Text:=DM1.Query1.FieldbyName('CRAZAO').AsString;
endereco.Text:=DM1.Query1.FieldbyName('CLOG').AsString
               +' '+DM1.Query1.FieldbyName('CBAIRRO').AsString
               +' '+DM1.Query1.FieldbyName('CCIDADE').AsString
               +'-'+DM1.Query1.FieldbyName('CUF').AsString;
       

mCodEmp_Ped:=DM1.Query1.FieldbyName('P1CODEMP').Asfloat;
mLotSeq_Ped:=DM1.Query1.FieldbyName('P1LOTSEQ').Asfloat;
mCodVen_Ped:=DM1.Query1.FieldbyName('P1CODVEN').Asfloat;

DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' Select C02CODCON, C02CODTRA from CADCON02 where C02CHAVE_PED='+CHAVE.Text);
DM1.Query1.SQL.Add(' and C02CODEMP_PED='+FloatToStr(mCodEmp_Ped));
DM1.Query1.SQL.Add(' and C02LOTSEQ_PED='+FloatToStr(mLotSeq_Ped));
DM1.Query1.SQL.Add(+iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' AND C02CODEMP=0'+IntToStr(codemp)));
DM1.Query1.Open;
if DM1.Query1.IsEmpty then
  begin
  BBINCLUIR.Enabled:=True;
  CODTRA.ReadOnly:=False;
  end
else
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' Select C02CODCON, C02CODTRA from CADCON02 where C02CHAVE_PED='+CHAVE.Text);
  DM1.Query1.SQL.Add(' and C02CODEMP_PED='+FloatToStr(mCodEmp_Ped));
  DM1.Query1.SQL.Add(' and C02LOTSEQ_PED='+FloatToStr(mLotSeq_Ped));
  DM1.Query1.SQL.Add(+iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' AND C02CODEMP=0'+IntToStr(codemp)));
  DM1.Query1.Open;
  CODCON.Text:=DM1.Query1.Fields[0].AsString;
  CODTRA.Text:=DM1.Query1.Fields[1].AsString;
  CODTRAExit(Self);
  CODTRA.ReadOnly:=True;
  BBINCLUIR.Enabled:=False;
  bbImprimir.Enabled:=True;
  end;

QTDITENS.Caption    :='0';
PESOB.Caption       :=formatFloat('#,##0.00', 0);
QTDM3.Caption       :=formatFloat('#,##0.00', 0);
VLRTOTAL.Caption    :=formatFloat(mcasas, 0);
VLRFRETE.Caption    :=formatFloat(mcasas, 0);
VLRFRETE_DIG.Caption:=formatFloat(mcasas, 0);
fAtualizaCon03(0);
While not DM6.Tb_Con03.Eof do
   begin
   QTDITENS.Caption    :=FloatToStr(ValInt(QTDITENS.Caption)+1);
   PESOB.Caption       :=formatFloat('#,##0.00', ValFloat(PESOB.Caption)+DM6.Tb_Con03C03PESOB.Value);
   QTDM3.Caption       :=formatFloat('#,##0.00', ValFloat(QTDM3.Caption)+DM6.Tb_Con03C03QTDM3.Value);
   VLRTOTAL.Caption    :=formatFloat(mcasas, ValFloat(VLRTOTAL.Caption)+DM6.Tb_Con03C03VLRTOT.Value);
   VLRFRETE.Caption    :=formatFloat(mcasas, ValFloat(VLRFRETE.Caption)+DM6.Tb_Con03C03VALFRE.Value);
   VLRFRETE_DIG.Caption:=formatFloat(mcasas, ValFloat(VLRFRETE_DIG.Caption)+DM6.Tb_Con03C03VALFRE_DIG.Value);
   DM6.Tb_Con03.Next;
   end;
DM6.Tb_Con03.First;

end;

procedure TFrm_Conh_Merc_Total.FormCreate(Sender: TObject);
begin
DM6.Tb_Con03.Close;
if not DM6.Tb_con01.Active then
   flcadcon01(1,0,9999999);
if not DM6.Tb_con02.Active then
   begin
   flcadcon02(0,121,999999,0,0,0);
   end;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_Conh_Merc_Total.CODTRAKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTRA.Text:=fChamaTra(0,'frm_Conh_Merc_Total',Key);
   if trim(CODTRA.Text)<>'' then
      CODTRAExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Conh_Merc_Total.CODTRAExit(Sender: TObject);
begin
CODTRA.Text:=fdeixanum2(CODTRA.Text);
if Trim(CODTRA.Text)<>'' then
   begin
   if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',CODTRA.Text) then
      begin
      NOMTRA.Text :=DM1.Query1.Fields[0].AsString;
      end
   else
      begin
      MessageDlg('Transportadora não Cadastrado!',mtWarning,[mbOk],0);
      CODTRA.text := '';
      CODTRA.SetFocus;
      end;
   end;



end;

procedure TFrm_Conh_Merc_Total.BBINCLUIRClick(Sender: TObject);
begin
BBINCLUIR.Enabled:=false;
if trim(CHAVE.Text)='' then
   begin
   MessageDlg('Favor Selecionar uma Chave válida!',mtWarning,[mbOk],0);
   CHAVE.SetFocus;
   exit;
   end;
if trim(CODTRA.Text)='' then
   begin
   MessageDlg('Favor Selecionar um(a) Transportador(a) válida!',mtWarning,[mbOk],0);
   CODTRA.SetFocus;
   exit;
   end;

if not fAtualizaCon03(0) then
   begin
   MessageDlg('Não ha mercadoria a ser entregue deste pedido,'+#13
             +'outro usuário ja digitou a mesma, ou o pedido foi excluido!',mtWarning,[mbOk],0);
   CHAVE.SetFocus;
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(C01CODCON) from CADCON01 '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' where C01CODEMP=0'+IntToStr(codemp)));
DM1.Query1.Open;
mcodcon:=DM1.query1.Fields[0].AsFloat+1;
if flcadcon01(1,0,mcodcon) then
   begin
   MessageDlg('Erro ao tentar criar um conhecimento novo. Tente Novamente!',mtInformation,[mbOk],0);
   exit;
   end;
CODCON.Text:=FloatToStr(mcodcon);
  
DM6.Tb_Con01.Append;
DM6.Tb_Con01C01CODCON.Value       :=mcodcon;
DM6.Tb_Con01C01CODEMP.Value       :=codemp;
DM6.Tb_Con01C01CODTRA.Value       :=fsonumero(CODTRA.Text);
DM6.Tb_Con01C01CODUSR_ALT.Value   :=0;
DM6.Tb_Con01C01CODUSR_INC.Value   :=codusr;
DM6.Tb_Con01C01DATCON.AsDateTime  :=Date;
DM6.Tb_Con01C01DTHR_ALT.AsDateTime:=Now;
DM6.Tb_Con01C01ESTADO.Value       :=0;
DM6.Tb_Con01C01PESOB.Value        :=ValFloat(PESOB.Caption);
DM6.Tb_Con01C01QTDITENS.Value     :=ValFloat(QTDITENS.Caption);
DM6.Tb_Con01C01QTDM3.Value        :=ValFloat(QTDM3.Caption);
DM6.Tb_Con01C01QTDMAN.Value       :=0;
DM6.Tb_Con01C01QTDPED.Value       :=1;
DM6.Tb_Con01C01VALFRE.Value       :=ValFloat(VLRFRETE.Caption);
DM6.Tb_Con01C01VALFRE_DIG.Value   :=ValFloat(VLRFRETE_DIG.Caption);
DM6.Tb_Con01C01VLRTOT.Value       :=ValFloat(VLRTOTAL.Caption);
DM6.Tb_Con01.Post;
DM6.Tb_Con02.Append;
DM6.Tb_Con02C02CODEMP.Value      :=DM6.Tb_Con01C01CODEMP.Value;
DM6.Tb_Con02C02CODCON.Value      :=DM6.Tb_Con01C01CODCON.Value;
DM6.Tb_Con02C02CODEMP_PED.Value  :=mCodEmp_Ped;
DM6.Tb_Con02C02LOTSEQ_PED.Value  :=mLotSeq_Ped;
DM6.Tb_Con02C02CODVEN.Value      :=mCodVen_Ped;
DM6.Tb_Con02C02CODTRA.Value      :=DM6.Tb_Con01C01CODTRA.Value;
DM6.Tb_Con02C02CHAVE_PED.Value   :=fsonumero(CHAVE.Text);
DM6.Tb_Con02C02PESOB.Value       :=ValFloat(PESOB.Caption);
DM6.Tb_Con02C02QTDM3.Value       :=ValFloat(QTDM3.Caption);
DM6.Tb_Con02C02VLRTOT.Value      :=ValFloat(VLRTOTAL.Caption);
DM6.Tb_Con02C02VALFRE.Value      :=ValFloat(VLRFRETE.Caption);
DM6.Tb_Con02C02VALFRE_DIG.Value  :=ValFloat(VLRFRETE_DIG.Caption);
DM6.Tb_Con02C02SITENT.Value      :=0;
DM6.Tb_Con02C02TIPO_ENTREGA.Value:=1;
DM6.Tb_Con02C02OBSERVACAO.Value  :=' ';
DM6.Tb_Con02C02OBS_CONHEC.Value  :=' ';
DM6.Tb_Con02C02CODUSR_INC.Value  :=codusr;
DM6.Tb_Con02C02ESTADO.Value      :=0;
DM6.Tb_Con02C02DATCON.AsDateTime :=DM6.Tb_Con01C01DATCON.Value;
DM6.Tb_Con02C02QTDMAN.Value      :=0;
DM6.Tb_Con02C02CODCLI.Value   :=fsonumero(CODCLI.Text);
DM6.Tb_Con02.Post;

DM1.Query3.close;
DM1.Query3.Sql.clear;
DM1.Query3.Sql.Add('Insert into CADCON03 ('
                  +' C03CODEMP '
                  +',C03CODCON '
                  +',C03CODEMP_PED '
                  +',C03LOTSEQ_PED '
                  +',C03CHAVE_PED '
                  +',C03CODPRO '
                  +',C03LOTE '
                  +',C03QTDVEND '
                  +',C03QTDENT '
                  +',C03QTDPEND '
                  +',C03PESOB '
                  +',C03QTDM3 '
                  +',C03VLRTOT '
                  +',C03VALFRE '
                  +',C03VALFRE_DIG '
                  +',C03SITENT '
                  +',C03CODUSR_INC '
                  +',C03CODUSR_ALT '
                  +',C03DTHR_ALT '
                  +',C03QTDMAN '
                  +',C03ESTADO '
                  +',C03ITEM )' );
DM1.Query3.sql.Add(' Select '+IntTostr(codemp)+' AS C03CODEMP '
                    +','+FloatToStr(mcodcon)+' AS C03CODCON '
                    +',P2CODEMP       AS C03CODEMP_PED '
                    +',P2LOTSEQ       AS C03LOTSEQ_PED '
                    +',P2CHAVE        AS C03CHAVE_PED '
                    +',P2CODPRO       AS C03CODPRO '
                    +',P2LOTE         AS C03LOTE '
                    +',(P2QTD-NVL(P2QTDDEV,0))          AS C03QTDVEND '
                    +',((P2QTD-NVL(P2QTDDEV,0))-(NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0))) AS C03QTDENT '
                    +',(P2QTD-P2QTD) AS C03QTDPEND '
                    +',round( ( ((P2QTD-NVL(P2QTDDEV,0))-(NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0)))* PDPESOB),3) AS C03PESOB  '
                    +',round( ( ((P2QTD-NVL(P2QTDDEV,0))-(NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0)))* PDQTDM3),3) AS C03QTDM3  '
                    +',round( ( ((P2QTD-NVL(P2QTDDEV,0))-(NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0)))*  '
                    +' ((P2TOTLIQ-P2DESCRAT+P2ACRERAT)/(P2QTD-NVL(P2QTDDEV,0))) ), '+DM1.Tb_PargerPCASAS.AsString+') AS C03VLRTOT '
                    +',round( ( ((P2QTD-NVL(P2QTDDEV,0))-(NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0)))*  '
                    +' ((P2TOTLIQ-P2DESCRAT+P2ACRERAT)/(P2QTD-NVL(P2QTDDEV.0))) * '
                    +'    DECODE(GRPERCFRE,NULL,0,GRPERCFRE/100))  , '+DM1.Tb_PargerPCASAS.AsString
                    +'     )         AS C03VALFRE '
                    +',round( ( ((P2QTD-NVL(P2QTDDEV,0))-(NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0)))*  '
                    +' ((P2TOTLIQ-P2DESCRAT+P2ACRERAT)/(P2QTD-NVL(P2QTDDEV,0))) * '
                    +'    DECODE(GRPERCFRE,NULL,0,GRPERCFRE/100))  , '+DM1.Tb_PargerPCASAS.AsString
                    +'     )         AS C03VALFRE_DIG '

                    +',(P2QTD-P2QTD) AS C03SITENT '
                    +','+IntToStr(codusr)+' as C03CODUSR_INC '
                    +',(P2QTD-P2QTD) AS C03CODUSR_ALT '
                    +',SYSDATE AS C03DTHR_ALT '
                    +',(P2QTD-P2QTD) AS C03QTDMAN '
                    +',(P2QTD-P2QTD) AS C03ESTADO '
                    +',P2ITEM        AS C03ITEM ');
DM1.Query3.Sql.Add(' from CADP02,CADPRO,CADGRU '
                     +' where '+
                     iif( DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+FloatToStr(mCodEmp_Ped)+' and ')
                     +' P2CHAVE=0'+Trim(CHAVE.Text)
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=P2CODEMP ')
                     +' and PDCODPRO=P2CODPRO '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and GRCODEMP(+)=PDCODEMP ')
                     +' and GRCODGRU(+)=PDCODGRU '
                     +' order by P2ITEM ');
try
   DM1.Query3.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query3.SQL.SaveToFile('C:\SQL.TXT');
   MessageDlg('Erro 382 ao selecionar o pedido!',mtError,[mbOk],0);
   exit;
   end;

DM1.Query3.close;
DM1.Query3.Sql.Clear;
DM1.Query3.SQL.add('Update CADP02 set P2QTD_ENTREGANDO=NVL(P2QTD_ENTREGANDO,0)+(P2QTD-NVL(P2QTDDEV,0))-(NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0)) '
                  +' where '
                  +iif( DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+FloatToStr(mCodEmp_Ped)
                  +'and ')
                  +' P2LOTSEQ=0'+FloatToStr(mLotSeq_Ped)
                  +' and P2CHAVE=0'+CHAVE.Text);
try
   DM1.Query3.execsql;
   fdm1StartCommit;
except
   DM1.Query3.SQL.SaveToFile('C:\SQL.TXT');
   end;
verteclado(0);
MessageDlg('Conhecimento Gravado!',mtInformation,[mbOk],0);
BBINCLUIR.Enabled:=False;
bbImprimir.Enabled:=true;
//lindomar

end;
function TFrm_Conh_Merc_Total.fAtualizaCon03(pTipo: Integer): Boolean;
begin
DM6.Tb_Con03.Close;
DM6.Tb_Con03.SQL.Clear;
DM6.Tb_Con03.sql.Add('Select '+IntToStr(codemp)+'  AS C03CODEMP '
                    +',(P2LOTSEQ-P2LOTSEQ)AS C03CODCON '
                    +',P2CODEMP       AS C03CODEMP_PED '
                    +',P2LOTSEQ       AS C03LOTSEQ_PED '
                    +',P2CHAVE        AS C03CHAVE_PED '
                    +',P2CODPRO       AS C03CODPRO '
                    +',P2LOTE         AS C03LOTE '
                    +',(P2QTD-NVL(P2QTDDEV,0))          AS C03QTDVEND '
                    +',((P2QTD-NVL(P2QTDDEV,0))-(NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0))) AS C03QTDENT '
                    +',(P2QTD-P2QTD) AS C03QTDPEND '
                    +',round( ( ((P2QTD-NVL(P2QTDDEV,0))-(P2QTD_ENTREGUE+NVL(P2QTD_ENTREGANDO,0)))* PDPESOB),3) AS C03PESOB  '
                    +',round( ( ((P2QTD-NVL(P2QTDDEV,0))-(P2QTD_ENTREGUE+NVL(P2QTD_ENTREGANDO,0)))* PDQTDM3),3) AS C03QTDM3  '
                    +',round( ( ((P2QTD-NVL(P2QTDDEV,0))-(NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0)))*  '
                    +' ((P2TOTLIQ-P2DESCRAT+P2ACRERAT)/(P2QTD-NVL(P2QTDDEV,0))) ), '+DM1.Tb_PargerPCASAS.AsString+') AS C03VLRTOT '
                    +',round( ( ((P2QTD-NVL(P2QTDDEV,0))-(NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0)))*  '
                    +' ((P2TOTLIQ-P2DESCRAT+P2ACRERAT)/(P2QTD-NVL(P2QTDDEV,0))) * '
                    +'    DECODE(GRPERCFRE,NULL,0,GRPERCFRE/100))  , '+DM1.Tb_PargerPCASAS.AsString
                    +'     )         AS C03VALFRE '

                    +',round( ( ((P2QTD-NVL(P2QTDDEV,0))-(NVL(P2QTD_ENTREGUE,0)+NVL(P2QTD_ENTREGANDO,0)))*  '
                    +' ((P2TOTLIQ-P2DESCRAT+P2ACRERAT)/(P2QTD-NVL(P2QTDDEV,0))) * '
                    +'    DECODE(GRPERCFRE,NULL,0,GRPERCFRE/100))  , '+DM1.Tb_PargerPCASAS.AsString
                    +'     )         AS C03VALFRE_DIG '

//                    +',(P2QTD-P2QTD) AS C03VALFRE_DIG '
                    +',(P2QTD-P2QTD) AS C03SITENT '
                    +','+IntToStr(codusr)+' as C03CODUSR_INC '
                    +',(P2QTD-P2QTD) AS C03CODUSR_ALT '
                    +',P2DTVCTO AS C03DTHR_ALT '
                    +',(P2QTD-P2QTD) AS C03QTDMAN '
                    +',(P2QTD-P2QTD) AS C03ESTADO '
                    +',P2ITEM        AS C03ITEM '
                    +',PDNOME        AS PDNOME '
                    +',PDMARCA       AS PDMARCA '
                    +',PDUND         AS PDUND '
                    +',PDPESOB       AS PDPESOB '
                    +',PDQTDM3       AS PDQTDM3 '
                    +',GRPERCFRE     AS GRPERCFRE');
DM6.Tb_Con03.Sql.Add(' from CADP02,CADPRO,CADGRU '
                     +' where '+
                     iif( DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+FloatToStr(mCodEmp_Ped)+' and ')
                     +' P2CHAVE=0'+Trim(CHAVE.Text)
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=P2CODEMP ')
                     +' and PDCODPRO=P2CODPRO '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and GRCODEMP(+)=PDCODEMP ')
                     +' and GRCODGRU(+)=PDCODGRU '
                     +' order by P2ITEM ');
try
   DM6.Tb_Con03.Open
except
   DM6.Tb_Con03.SQL.SaveToFile('C:\SQL.TXT');
   MessageDlg('Erro 480 ao selecionar o pedido!',mtError,[mbOk],0);
   result:=false;
   exit;
   end;
if DM6.Tb_Con03.Eof then
   result:=false
else
   result:=true;
end;



procedure TFrm_Conh_Merc_Total.BBINCLUIRExit(Sender: TObject);
begin
BBINCLUIR.Enabled:=true;
end;

procedure TFrm_Conh_Merc_Total.bbImprimirClick(Sender: TObject);
begin
if valfloat(CODCON.Text)=0 then
   exit;
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
   Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and C01CODCON>=0'+CODCON.Text);

Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and P1CODEMP=C02CODEMP_PED and P1CHAVE=C02CHAVE_PED and P1lotseq=C02LOTSEQ_PED   ');

Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' order by C01CODCON,C02CHAVE_PED ');
try
   Frm_Conh_MercRelat.Qr_Conhec.Open;
except
   Frm_Conh_MercRelat.Qr_Conhec.SQL.sAVEtOFILE('C:\sql.txt');
   end;
Frm_Conh_MercRelat.RLReport1.PreviewModal;
Frm_Conh_MercRelat.Free;

end;

procedure TFrm_Conh_Merc_Total.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Conh_Merc_Total.FormKeyDown(Sender: TObject; var Key: Word;
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

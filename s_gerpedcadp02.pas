unit s_gerpedcadp02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, S_Vendas_GravarPedido, Buttons, DBTables,
  DB, Grids, DBGrids;

type
  Tfrm_gerpedcadp02 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    Label1: TLabel;
    edt_codcli: TEdit;
    edt_nomcli: TEdit;
    Label2: TLabel;
    edt_codven: TEdit;
    edt_nomven: TEdit;
    Label3: TLabel;
    edt_codcondpag: TEdit;
    edt_nomcond: TEdit;
    Label4: TLabel;
    CB_EMIDOC: TComboBox;
    Memo1: TMemo;
    bbProcessar: TBitBtn;
    bbSair: TBitBtn;
    qr_ped: TQuery;
    DBGrid1: TDBGrid;
    src_ped: TDataSource;
    U_ped: TUpdateSQL;
    qr_pedMARCADO: TStringField;
    qr_pedMAXIMO: TFloatField;
    qr_pedMINIMO: TFloatField;
    qr_pedQTDMAX: TFloatField;
    qr_pedQTDMIN: TFloatField;
    qr_pedP2CHAVE: TFloatField;
    qr_pedP2LOTSEQ: TFloatField;
    qr_pedP2CODEMP: TFloatField;
    Panel3: TPanel;
    cb_todos: TCheckBox;
    qr_pedTOTPED: TFloatField;
    Label5: TLabel;
    edt_codfp: TEdit;
    edt_nomfp: TEdit;
    procedure edt_codcliKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codcliExit(Sender: TObject);
    procedure edt_codvenKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codvenExit(Sender: TObject);
    procedure edt_codcondpagKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codcondpagExit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure cb_todosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure bbProcessarClick(Sender: TObject);
    procedure edt_codfpExit(Sender: TObject);
    procedure edt_codfpKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

    mVenda_GP: TFrm_Vendas_GravarPedido;

    function fLerArquivo(pTodos: boolean): Boolean;

    function fProcessar: Boolean;

  public
    { Public declarations }
  end;

var
  frm_gerpedcadp02: Tfrm_gerpedcadp02;

implementation

uses Func, lerarq, S_DM1, func_excecoes, S_Agde;

{$R *.dfm}

procedure Tfrm_gerpedcadp02.edt_codcliKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%') then
   begin
   edt_codcli.Text:=fChamaCli(0,'_venda',key);
   edt_nomcli.Text:=DM1.Tb_CliCRAZAO.AsString;
   key:=#0;
   end;

end;

procedure Tfrm_gerpedcadp02.edt_codcliExit(Sender: TObject);
begin
if valfloat(edt_codcli.text)>0 then
   begin
   if not fLerGenerico_query('CADCLI','CRAZAO','CCODCLI=0'+fdeixanum(edt_codcli.text),query_consulta) then
      begin
      Messagedlg('Cliente '+edt_codcli.text+' não cadastrado!',mtWarning,[mbOk],0);
      edt_codcli.SetFocus;
      end
   else
      edt_nomcli.text:=query_consulta.fieldbyname('CRAZAO').asstring;

   end;

end;

procedure Tfrm_gerpedcadp02.edt_codvenKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%') then
   begin
   edt_codven.Text:=fChamaVen(0,'_venda',key);
   edt_codvenExit(Self);
   key:=#0;
   end;

end;

procedure Tfrm_gerpedcadp02.edt_codvenExit(Sender: TObject);
begin
edt_codven.Text:=fdeixanum(edt_codven.Text);
if Trim(edt_codven.Text)='' then
   exit;
if valfloat(edt_codven.text)>0 then
   begin
   if not fLerGenerico_query('CADVEN','VNOME','VCODVEN=0'+fdeixanum(edt_codven.text),query_consulta) then 
      begin
      Messagedlg('Vendedor '+edt_codven.text+' não cadastrado!',mtWarning,[mbOk],0);
      edt_codven.SetFocus;
      end
   else
      edt_nomven.text:=query_consulta.fieldbyname('VNOME').asstring;

   end;

end;

procedure Tfrm_gerpedcadp02.edt_codcondpagKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 113 then
   begin
   edt_codcondpag.Text:=fChamaPV(1,'Frm_Venda_Pre.','');
   edt_codCondPagExit(Self);
   end;

end;

procedure Tfrm_gerpedcadp02.edt_codcondpagExit(Sender: TObject);
begin
edt_codCondPag.Text:=trim(edt_codCondPag.Text);
if Trim(edt_codCondPag.Text)=''  then
    begin
    MessageDlg('Favor Digitar uma condição de pagamento válida!',mtWarning,[mbOk],0);
    edt_codCondPag.SetFocus;
    exit;
    end
else if (not flcadpv(1,0,copy(edt_codCondPag.Text,1,2),copy(edt_codCondPag.Text,3,length(edt_codcondpag.text)-2)))
   and (edt_codCondPag.Text<>'PO99') then
   begin
   if edt_codCondPag.Enabled then
      begin
      verteclado(0);
      MessageDlg('Condições de Pagamento Não Encontrada!',mtWarning,[mbOk],0);
      edt_codCondPag.SetFocus;
      exit;
      end;
   end
else
   begin
   mVenda_GP.mPed1_Tabela:='1';
   edt_codCondPag.Text:=DM1.Tb_PVPVCODTIP.asString+DM1.Tb_PVPVCODPV.AsString;
   edt_nomcond.Text:=DM1.Tb_PVPVNOME.AsString;
   mVenda_GP.mPed1_CodPV:=DM1.Tb_PVPVCODPV.AsInteger;
   mVenda_GP.mPed1_PvaCtd:=DM1.Tb_PVPVACTD.AsFloat;
   mVenda_GP.mPed1_TabPV:=DM1.Tb_PVPVCODTIP.asString;
   DM1.Tb_PV2.First;
   mVenda_GP.mPed1_Parcelas:=insere(DM1.Tb_PV2PV2PRAZO.AsString,'0',4);
   mVenda_GP.mPed1_PrzNovos_001:='P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
   mVenda_GP.mPed1_PrzNovos_101:='P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
   DM1.Tb_PV2.Next;
   while not DM1.Tb_PV2.Eof do
      begin
      mVenda_GP.mPed1_Parcelas:=mVenda_GP.mPed1_Parcelas+insere( DM1.Tb_PV2PV2PRAZO.AsString,'0',4);
      mVenda_GP.mPed1_PrzNovos_001:=mVenda_GP.mPed1_PrzNovos_001+'P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
      mVenda_GP.mPed1_PrzNovos_101:=mVenda_GP.mPed1_PrzNovos_101+'P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
      DM1.Tb_PV2.Next;
      end;
   mVenda_GP.mped1_QtdParc:=DM1.Tb_PV2.RecordCount;
   mVenda_GP.mPed1_AjustaFP :='S';
   mVenda_GP.mPed1_pvdescf     :=DM1.Tb_PVPVDESCF.AsFloat;
   mVenda_GP.mPed1_pvddescf    :=DM1.Tb_PVPVDESCF.AsInteger;
   mVenda_GP.mPed1_pvdiasdescf :=DM1.Tb_PVPVDIASDESCF.AsInteger;
   end;

end;

procedure Tfrm_gerpedcadp02.bbSairClick(Sender: TObject);
begin
close;
end;

function Tfrm_gerpedcadp02.fLerArquivo(pTodos: boolean): Boolean;

begin
Qr_Ped.Close;
Qr_Ped.sql.clear;
Qr_Ped.sql.Add('select '+QuotedStr(iif(pTodos,'X',' '))+' as marcado,p2chave,P2LOTSEQ,P2CODEMP'
              +'  ,max(P2CODPRO) AS MAXIMO, min(P2CODPRO) AS MINIMO,max(P2QTD) as qtdmax, min(p2qtd) as qtdmin '
              +',sum(p2totliq) as totped '
              +' from cadp02,cadp01 '
              +' where p1chave(+)=p2chave '
              +' and p1lotseq(+)=p2lotseq '
              +' and p1codemp(+)=p2codemp '
              +' and p1chave is null '
              +' group by p2chave,P2LOTSEQ,P2CODEMP '
              +'order by totped ');
try
   qr_ped.open;
   result:=true;

except on e : exception do
   begin
   ex_erroSql_Novo(qr_ped,216,'func Erro:'+e.Message ,'CADP02');
   result:=false;
   end;
   end;

end;

procedure Tfrm_gerpedcadp02.cb_todosClick(Sender: TObject);
begin
fLerArquivo(cb_todos.Checked);

end;

procedure Tfrm_gerpedcadp02.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_Vendas_GravarPedido, mVenda_GP);

cb_todosClick(self);
end;

procedure Tfrm_gerpedcadp02.DBGrid1DblClick(Sender: TObject);
begin
if qr_pedP2CHAVE.IsNull=false then
   begin
   qr_ped.Edit;
   qr_pedMARCADO.Value:=iif(qr_pedMARCADO.AsString='X',' ','X');
   qr_ped.Post;
   end;
end;

procedure Tfrm_gerpedcadp02.bbProcessarClick(Sender: TObject);
begin
if fsonumero(edt_codcli.text)=0 then
   begin
   MessageDlg('Código do cliente tem que ser colocado!',mtWarning,[mbOk],0);
   edt_codcli.setfocus;
   exit;
   end;

if fsonumero(edt_codven.text)=0 then
   begin
   MessageDlg('Código do vendedor tem que ser colocado!',mtWarning,[mbOk],0);
   edt_codven.setfocus;
   exit;
   end;
if trim(edt_nomcond.Text)='' then
   begin
   MessageDlg('Condicoes de pagamento tem que ser colocado!',mtWarning,[mbOk],0);
   edt_codcondpag.setfocus;
   exit;
   end;
if trim(edt_nomfp.Text)='' then
   begin
   MessageDlg('Forma de pagamento tem que ser colocado!',mtWarning,[mbOk],0);
   edt_codfp.setfocus;
   exit;
   end;
fProcessar;

end;

function Tfrm_gerpedcadp02.fProcessar: Boolean;
var
form_agde: TFrm_Agde;
query_exe:tquery;
mDadosParametros: tDadosParametros;
begin
Application.createform(TFrm_Agde, form_agde);
form_agde.Label1.caption:='Processando pedidos aguarde';
form_agde.gb_progres.Visible:=true;
mpqtd:=qr_ped.RecordCount;
mplid:=0;
form_agde.Show;
query_exe:=tquery.create(nil);
query_exe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
IF CB_EMIDOC.ItemIndex=1 then
   begin
   query_exe.SQL.add('update cadp01 SET P1EMIDOC=1,P1STATUS=2,P1CUPOM=1,P1NUMCF=P1CHAVE,P1DATACF=TO_DATE(SYSDATE),P1DATDOC=TO_DATE(SYSDATE) '
                    +' where P1CHAVE=:CHAVE AND P1LOTSEQ=:LOTSEQ AND P1CODEMP=:CODEMP ');
   end;

qr_ped.First;
mVenda_GP.mPed1_SitPed:=0;
mVenda_GP.mPed1_Emidoc:=CB_EMIDOC.ItemIndex;
mVenda_GP.mPed1_Codven:=ValInt(edt_codven.Text);
mVenda_GP.mPed1_Codcli:=ValInt(edt_codcli.Text);
mVenda_GP.mPed1_razsoc:=edt_nomcli.Text;
mVenda_GP.mPed1_NomFP := edt_nomfp.text;
mVenda_GP.mPed1_BaixaFP := iif(CB_EMIDOC.ItemIndex=0,'N','S');
mVenda_GP.mPed1_Tipo_Ped := 1;

mVenda_GP.mPed1_CodFP :=valint(edt_codfp.text);
While not Qr_ped.eof do
   begin
   mplid:=mplid+1;
   form_agde.Gauge1.Progress:=mplid*100 div mpqtd;
   if qr_pedMARCADO.AsString<>'X' then
      begin
      qr_ped.next;
      Continue;
      end;
   mVenda_GP.mPed1_Codemp:=qr_pedP2CODEMP.AsInteger;
   mVenda_GP.mPed1_Codemp_ini:=qr_pedP2CODEMP.AsInteger;
   mVenda_GP.mPed1_Codemp_fin:=qr_pedP2CODEMP.AsInteger;
   mVenda_GP.mped1_Chave     :=qr_pedP2CHAVE.AsInteger;
   mVenda_GP.mPed1_Chave_ano  :=qr_pedP2LOTSEQ.AsInteger;
   mVenda_GP.fGravarPed01(1,iif(mVenda_GP.mPed1_Codemp>100,100,0));
   mDadosParametros.pId_Ped02_new_ant_naoUtil :=0;




    mVenda_GP.fGravarItem(0 // produto
                        ,0
                        ,0 //p2Estoque
                        ,mVenda_GP.mPed1_CodFP
                        ,3 //apenas calcular
                        ,0 //pSituacao: Integer;
                        ,'0'
                        ,mVenda_GP.mPed1_NomFP
                        , mVenda_GP.mPed1_BaixaFP
                        ,0 //pQtd_Cal
                        ,0 // pPrecoUnit_Cal
                        ,0 //,pPrecoTab_Cal
                        ,0 // pPrecoUCPR_Cal
                        ,0 // pPrecoCus_Cal
                        ,0 // pPrecoMax_Cal,
                        ,-1 // mQtd_Ant
                        ,0 //mValSeg
                        ,0 //mValfre
                        ,0 // iif(mVenda_GP.mPed1_Codemp>100,ValFloat(edt_tarban_101.Text),ValFloat(edt_tarban1.Text))
                        ,0 //mOutDesp
                        ,0 //mDescValor
                        ,mDadosParametros
                        ,nil);

   IF CB_EMIDOC.ItemIndex=1 then
      begin
      query_exe.close;
      query_exe.parambyname('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
      query_exe.parambyname('LOTSEQ').AsInteger:=mVenda_GP.mPed1_Chave_ano;
      query_exe.parambyname('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp;
      try
         query_exe.execsql;
         fdm1startcommit;
         result:=true;

      except on e : exception do
         begin
         ex_erroSql_Novo(query_exe,3696,'func Erro:'+e.Message ,'CADP02');
         result:=false;
         end;
         end;
      end;

   qr_ped.next;
   end;
freeandnil(query_exe);
freeandnil(form_agde);
end;

procedure Tfrm_gerpedcadp02.edt_codfpExit(Sender: TObject);
var
Query_AjustaFP: TQuery;
Query_FP: TQuery;
begin
edt_codfp.Text:=fdeixanum(edt_codfp.Text);
if Trim(edt_codfp.Text)='' then
   exit;
if valfloat(edt_codfp.text)>0 then
   begin
   if not fLerGenerico_query('CADFP','FPDESC','FPCODIGO=0'+fdeixanum(edt_codfp.text),query_consulta) then
      begin
      Messagedlg('Forma de pagamento '+edt_codfp.text+' não cadastrado!',mtWarning,[mbOk],0);
      edt_codfp.SetFocus;
      end
   else
      edt_nomfp.text:=query_consulta.fieldbyname('FPDESC').asstring;

   end;


end;

procedure Tfrm_gerpedcadp02.edt_codfpKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%') then

   begin
   edt_codfp.Text:=fChamaFPag(0,'_venda',key);
   edt_codfpExit(Self);
   key:=#0;
   end;


end;

procedure Tfrm_gerpedcadp02.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
freeandnil(mVenda_GP);

end;

end.

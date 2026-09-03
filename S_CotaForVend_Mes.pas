unit S_CotaForVend_Mes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,s_DM4,lerarq, DBCtrls,func, Grids,
  DBGrids,S_Ven, ComCtrls,S_For;

type
  TFrm_CotaForVend_Mes = class(TForm)
    GroupBox1: TGroupBox;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tsAutomatico: TTabSheet;
    Label1: TLabel;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    Label2: TLabel;
    MES: TEdit;
    Label3: TLabel;
    ANO: TEdit;
    Label4: TLabel;
    VLRCOTA: TEdit;
    Label5: TLabel;
    QTDCOTA: TEdit;
    BBGRAVAR: TBitBtn;
    BBSAIR: TBitBtn;
    Label6: TLabel;
    CODVEN_AUT: TEdit;
    NOMVEN_AUT: TEdit;
    Label7: TLabel;
    MES_ORI: TEdit;
    Label8: TLabel;
    ANO_ORI: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Label9: TLabel;
    MES_DES: TEdit;
    Label10: TLabel;
    ANO_DES: TEdit;
    bbGerar: TBitBtn;
    bbSair2: TBitBtn;
    NOMFOR: TEdit;
    CODFOR: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    CODFOR_AUT: TEdit;
    NOMFOR_AUT: TEdit;
    procedure BBGRAVARClick(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure MESExit(Sender: TObject);
    procedure ANOExit(Sender: TObject);
    procedure VLRCOTAExit(Sender: TObject);
    procedure QTDCOTAExit(Sender: TObject);
    procedure VLRCOTAKeyPress(Sender: TObject; var Key: Char);
    procedure BBSAIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVEN_AUTExit(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure bbGerarClick(Sender: TObject);
    procedure CODVEN_AUTKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORExit(Sender: TObject);
    procedure CODFOR_AUTExit(Sender: TObject);
    procedure CODFOR_AUTKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function fAtualizaVend(pTipo: Integer): boolean;
  public
    { Public declarations }
  end;

var
  Frm_CotaForVend_Mes: TFrm_CotaForVend_Mes;

implementation

uses S_DM1, DB;

{$R *.dfm}

procedure TFrm_CotaForVend_Mes.BBGRAVARClick(Sender: TObject);
begin
if trim(CODVEN.Text)='' then
   begin
   fMensagem('Favor Digitar um Código de Vendedor Válido!',0,['0'],0);
   if CODVEN.Enabled then
      CODVEN.SetFocus;
   exit;
   end;
if trim(CODFOR.Text)='' then
   begin
   fMensagem('Favor Digitar um Código de Fornecedor Válido!',0,['0'],0);
   CODFOR.SetFocus;
   exit;
   end;

if not flqr1('VNOME','V','CADVEN','N','VCODVEN',CODVEN.Text) then
   begin
   fMensagem('Favor Digitar um Código de Vendedor Válido!',0,['0'],0);
   if CODVEN.Enabled then
      CODVEN.SetFocus;
   exit;
   end;
if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODFOR.Text) then
   begin
   fMensagem('Favor Digitar um Código de Fornecedor Válido!',0,['0'],0);
   CODFOR.SetFocus;
   exit;
   end;

if trim(MES.Text)='' then
   begin
   fMensagem('Favor Digitar um mês Válido!',0,['0'],0);
   MES.SetFocus;
   exit;
   end;

if trim(ANO.Text)='' then
   begin
   fMensagem('Favor Digitar um ano Válido!',0,['0'],0);
   ANO.SetFocus;
   exit;
   end;
if (DM4.Tb_CotaForVend_Mes.IsEmpty) or not (DM4.Tb_CotaForVend_Mes.Locate('CFV_ANO;CFV_MES',vararrayof([fsonumero(ano.Text),fsonumero(MES.Text)]),[])) then
   begin
   DM1.Query2.close;
   DM1.Query2.sql.clear;
   DM1.Query2.sql.Add('Insert into CADFORVEN_COTAMES ('
                     +' CFV_CODEMP '
                     +',CFV_CODVEN '
                     +',CFV_CODFOR '
                     +',CFV_ANO '
                     +',CFV_MES  '
                     +',CFV_COTAVLR '
                     +',CFV_COTAQTD '
                     +',CFV_REALVLR '
                     +',CFV_QTDVLR  '
                     +') values ('
                     +IntToStr(codemp)
                     +','+trim(CODVEN.Text)
                     +','+trim(CODFOR.Text)
                     +','+trim(ANO.Text)
                     +','+trim(MES.Text)
                     +','+mudavp(VLRCOTA.Text)
                     +','+mudavp(QTDCOTA.Text)
                     +',0'
                     +',0'
                     +')');
   try
      DM1.Query2.execsql;
      fdm1startcommit;
   except
     DM1.Query2.SQL.sAVETOFILE(mpastatemp +'sql02.TXT');

      end;
   end
else
   begin
   DM1.Query2.close;
   DM1.Query2.sql.clear;
   DM1.Query2.sql.Add('Update CADFORVEN_COTAMES set CFV_COTAVLR=0'+mudavp(VLRCOTA.Text)
                      +', CFV_COTAQTD=0'+mudavp(QTDCOTA.Text)
                      +' where '+iif(DM1.Qr_tid.Locate('TINOME','CADVEN',[]),'',' CFV_CODEMP=0'+InttoStr(codemp)+' and ')
                      +' CFV_CODVEN=0'+Trim(CODVEN.Text)
                      +' and CFV_ANO=0'+Trim(ANO.Text)
                      +' and CFV_MES=0'+Trim(MES.text));
   try
      DM1.Query2.execsql;
      fdm1startcommit;
   except
      DM1.Query2.SQL.sAVETOFILE(mpastatemp +'sql02.TXT');
      end;
   end;
flCadForVen_Cota(0,0,fsonumero(CODVEN.Text),fsonumero(CODFOR.Text),0,0);

fMensagem('Registro gravado!',0,['0'],0);
CODVEN.Text:='';
NOMVEN.Text:='';
CODFOR.Text:='';
NOMFOR.Text:='';

VLRCOTA.Text:='';
QTDCOTA.Text:='';
if CODVEN.Enabled then
   CODVEN.SetFocus;
end;

procedure TFrm_CotaForVend_Mes.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if trim(CODVEN.Text)<>'' then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',CODVEN.Text) then
      begin
      NOMVEN.Text:=DM1.Query1.fieldbyName('VNOME').Asstring;
      if trim(MES.Text)='' then
         begin
         MES.Text:=FormatDatetime('mm',date);
         ANO.Text:=FormatDatetime('yyyy',date);
         end;
      if ValInt(FormatDatetime('dd',date))>20 then
         MES.Text:=Inttostr(ValInt(MES.Text)+1);
      if valint(MES.Text)>12 then
         begin
         MES.Text:='01';
         ANO.Text:=Inttostr(ValInt(ANO.Text)+1);
         end;
      fAtualizaVend(0);
      end
   else
      begin
      NOMVEN.Text:='';
      fMensagem('Vendedor não Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end;
   end;

end;
function TFrm_CotaForVend_Mes.fAtualizaVend(pTipo: Integer): boolean;
begin
if trim(NOMVEN.Text)<>'' then
   begin
   if (not DM4.Tb_CotaForVend_Mes.Active) or (DM4.Tb_CotaForVend_Mes.IsEmpty)
      or (DM4.Tb_CotaForVend_MesCFV_CODVEN.AsFloat<>fsonumero(CODVEN.Text))
      or (DM4.Tb_CotaForVend_MesCFV_CODFOR.AsFloat<>fsonumero(CODFOR.Text)) then
      begin
      flCadForVen_Cota(0,0,fsonumero(CODVEN.Text),fsonumero(CODFOR.Text),0,0);
//      flCadVen_Cota(0,0,fsonumero(CODVEN.Text),ValInt(ANO.Text),ValInt(MES.Text));
      end;
   if not DM4.Tb_CotaForVend_Mes.IsEmpty then
      begin
      if (fsonumero(MES.Text)<>0) and (fsonumero(ANO.Text)<>0) then
         DM4.Tb_CotaForVend_Mes.Locate('CFV_ANO;CFV_MES',vararrayof([fsonumero(ano.Text),fsonumero(MES.Text)]),[])
      else if fsonumero(ANO.Text)<>0 then
         DM4.Tb_CotaForVend_Mes.Locate('CFV_ANO',fsonumero(ano.Text),[])
      else if fsonumero(MES.Text)<>0 then
         DM4.Tb_CotaForVend_Mes.Locate('CFV_MES',fsonumero(MES.Text),[]);
      end;
   end;
result:=true;
end;
procedure TFrm_CotaForVend_Mes.MESExit(Sender: TObject);
begin
MES.Text:=fdeixanum2(MES.Text);
if trim(MES.Text)<>'' then
   begin
   if (ValInt(MES.Text)<1) or (ValInt(MES.Text)>12) then
      begin
      fMensagem('Mes invalido!',0,['0'],0);
      MES.SetFocus;
      exit;
      end;
   end;
fAtualizaVend(0);

end;

procedure TFrm_CotaForVend_Mes.ANOExit(Sender: TObject);
begin
ANO.Text:=fdeixanum2(ANO.Text);
if fsonumero(ANO.Text)>9999 then
   begin
   fMensagem('Ano inválido',0,['0'],0);
   ANO.SetFocus;
   exit;
   end;
fAtualizaVend(0);

end;

procedure TFrm_CotaForVend_Mes.VLRCOTAExit(Sender: TObject);
begin
VLRCOTA.Text:=FormatFloat(mcasas,ValFloat(VLRCOTA.Text));
if ValFloat(VLRCOTA.Text)>999999999 then
   begin
   fMensagem('O Valor não pode ser maior que 999999999',0,['0'],0);
   VLRCOTA.SetFocus;
   end;


end;

procedure TFrm_CotaForVend_Mes.QTDCOTAExit(Sender: TObject);
begin
QTDCOTA.Text:=FormatFloat(mcasqtd,ValFloat(QTDCOTA.Text));
if ValFloat(QTDCOTA.Text)>999999999 then
   begin
   fMensagem('O Valor não pode ser maior que 999999999',0,['0'],0);
   QTDCOTA.SetFocus;
   end;

end;

procedure TFrm_CotaForVend_Mes.VLRCOTAKeyPress(Sender: TObject;
  var Key: Char);
begin
if key in [',','.'] then
   key:=DecimalSeparator
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_CotaForVend_Mes.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CotaForVend_Mes.FormCreate(Sender: TObject);
begin
DM4.Tb_CotaForVend_MesCFV_COTAQTD.displayFormat:=mcasQtd;
DM4.Tb_CotaForVend_MesCFV_COTAVLR.displayFormat:=mcasas;
end;

procedure TFrm_CotaForVend_Mes.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text :=fChamaVen(0,'frm_CotaForVendMes',Key);
   if trim(CODVEN.Text)<>'' then
      CODVENExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_CotaForVend_Mes.CODVEN_AUTExit(Sender: TObject);
begin

CODVEN_AUT.Text:=fdeixanum2(CODVEN_AUT.Text);
if trim(CODVEN_AUT.Text)='' then
   NOMVEN_AUT.Text:='Todos...'
else
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',CODVEN_AUT.Text) then
      begin
      NOMVEN_AUT .Text:=DM1.Query1.fieldbyName('VNOME').Asstring;
      fAtualizaVend(0);
      end
   else
      begin
      NOMVEN_AUT.Text:='';
      fMensagem('Vendedor não Cadastrado!',0,['0'],0);
      CODVEN_AUT.SetFocus;
      end;
   end;

end;

procedure TFrm_CotaForVend_Mes.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=tsAutomatico then
   begin
   if trim(MES_ORI.Text)='' then
      begin
      MES_ORI.Text:=FormatDatetime('mm',
           fdatafinal(-1,date));
      ANO_ORI.Text:=FormatDatetime('yyyy',
      fdatafinal(-1,date));
      end;
   if trim(MES_DES.Text)='' then
      begin
      MES_DES.Text:=FormatDatetime('mm',date);
      ANO_DES.Text:=FormatDatetime('yyyy',date);
      end;
   end;

end;

procedure TFrm_CotaForVend_Mes.bbGerarClick(Sender: TObject);
begin
if (valint(MES_ORI.Text)<1) or (valint(MES_ORI.Text)>12) then
   begin
   fmensagem('Mes Invalido!',0,['0'],0);
   MES_ORI.SetFocus;
   exit;
   end;

if (valint(MES_DES.Text)<1) or (valint(MES_DES.Text)>12) then
   begin
   fmensagem('Mes Invalido!',0,['0'],0);
   MES_DES.SetFocus;
   exit;
   end;
if ValInt(ANO_DES.Text)<ValInt(ANO_ORI.Text) then
   begin
   fmensagem('Ano Destino nao pode ser menor que origem!',0,['0'],0);
   exit;
   end;
if ValInt(MES_DES.Text)<ValInt(MES_ORI.Text) then
   begin
   if ValInt(ANO_DES.Text)<=ValInt(ANO_ORI.Text) then
      begin
      fmensagem('Mes Destino nao pode ser menor que origem!',0,['0'],0);
      exit;
      end;
   end;
DM1.Query1.Close;
DM1.query1.SQL.Clear;
DM1.Query1.SQL.add('Select count(*) from CADFORVEN_COTAMES where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADVEN',[]),'',' CFV_CODEMP=0'+Inttostr(codemp)+' and '));
if trim(CODVEN_AUT.Text)<>'' then
   DM1.Query1.SQL.add(' CFV_CODVEN=0'+trim(CODVEN_AUT.Text)+' and ');

if trim(CODFOR_AUT.Text)<>'' then
   DM1.Query1.SQL.add(' CFV_CODFOR=0'+trim(CODFOR_AUT.Text)+' and ');

DM1.Query1.SQL.add(' CFV_ANO=0'+trim(ANO_ORI.Text));
DM1.Query1.SQL.add(' and CFV_MES=0'+trim(MES_ORI.Text));
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger<1 then
   begin
   fmensagem('Nao foi encontrado nenhum registro de origem!',0,['0'],0);
   exit;
   end;
if fmensagem('Confirma a Geracao do arquivo de Cotas?',0,['1','2'],0)<>mryes then
   exit;

DM1.Query1.Close;
DM1.query1.SQL.Clear;
DM1.Query1.SQL.add('Delete from CADFORVEN_COTAMES where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADVEN',[]),'',' CFV_CODEMP=0'+Inttostr(codemp)+' and '));
if trim(CODVEN_AUT.Text)<>'' then
   DM1.Query1.SQL.add(' CFV_CODVEN=0'+trim(CODVEN_AUT.Text)+' and ');
if trim(CODFOR_AUT.Text)<>'' then
   DM1.Query1.SQL.add(' CFV_CODFOR=0'+trim(CODFOR_AUT.Text)+' and ');

DM1.Query1.SQL.add(' CFV_ANO=0'+trim(ANO_DES.Text));
DM1.Query1.SQL.add(' and CFV_MES=0'+trim(MES_DES.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.SQL.SaveToFile(mpastatemp +'sql.TXT');
   fmensagem('Erro ao excluir antigos!',0,['0'],0);
   exit;
   end;

DM1.Query2.close;
DM1.Query2.sql.clear;
DM1.Query2.sql.Add('Insert into CADFORVEN_COTAMES ('
                  +' CFV_CODEMP '
                  +',CFV_CODVEN '
                  +',CFV_CODFOR '
                  +',CFV_ANO '
                  +',CFV_MES  '
                  +',CFV_COTAVLR '
                  +',CFV_COTAQTD '
                  +',CFV_REALVLR '
                  +',CFV_QTDVLR  '
                  +') '
                  +' Select '
                  +' CFV_CODEMP '
                  +',CFV_CODVEN '
                  +',CFV_CODFOR '
                  +','+trim(ANO_DES.Text)+' as ANO '
                  +','+trim(MES_DES.Text)+' as MES '
                  +',CFV_COTAVLR '
                  +',CFV_COTAQTD '
                  +',CFV_REALVLR '
                  +',CFV_QTDVLR  '
                  +' from CADFORVEN_COTAMES where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADVEN',[]),'',' CFV_CODEMP=0'+Inttostr(codemp)+' and '));
if trim(CODVEN_AUT.Text)<>'' then
   DM1.Query2.SQL.add(' CFV_CODVEN=0'+trim(CODVEN_AUT.Text)+' and ');
if trim(CODFOR_AUT.Text)<>'' then
   DM1.Query2.SQL.add(' CFV_CODFOR=0'+trim(CODFOR_AUT.Text)+' and ');

DM1.Query2.SQL.add(' CFV_ANO=0'+trim(ANO_ORI.Text));
DM1.Query2.SQL.add(' and CFV_MES=0'+trim(MES_ORI.Text));
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query2.SQL.SaveToFile(mpastatemp +'sql.TXT');
   fmensagem('Erro ao Incluir os Registros!',0,['0'],0);
   exit;
   end;

fmensagem('Concluido!',0,['0'],0);

end;

procedure TFrm_CotaForVend_Mes.CODVEN_AUTKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN_AUT.Text :=fChamaVen(0,'frm_CotalForVend_Mes',Key);
   if trim(CODVEN.Text)<>'' then
      CODVEN_AUTExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_CotaForVend_Mes.CODFORKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_CotaForVend_Mes',Key);
   if trim(CODFOR.Text)<>'' then
     codforExit(self);
    key:=#0;
   end;


end;

procedure TFrm_CotaForVend_Mes.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if fsonumero(CODFOR.Text)<>0 then
   begin
   if not flqr1('FRAZAO,FRESTFOR','F','CADFOR','N','FCODFOR',CODFOR.Text) then
      begin
      fMensagem('Fornecedor não Cadastrado!',0,['0'],0);
      CODFOR.SetFocus;
      end
   else
      begin
      NOMFOR.Text:=DM1.Query1.Fields[0].AsString;
      fAtualizaVend(0);
      end;
   end;

end;

procedure TFrm_CotaForVend_Mes.CODFOR_AUTExit(Sender: TObject);
begin
CODFOR_AUT.Text:=fdeixanum2(CODFOR_AUT.Text);

if fsonumero(CODFOR_AUT.Text)=0 then
   NOMFOR_AUT.Text:='Todos...'
else
   begin
   if not flqr1('FRAZAO,FRESTFOR','F','CADFOR','N','FCODFOR',CODFOR_AUT.Text) then
      begin
      fMensagem('Fornecedor não Cadastrado!',0,['0'],0);
      CODFOR_AUT.SetFocus;
      end
   else
      begin
      NOMFOR_AUT.Text:=DM1.Query1.Fields[0].AsString;
      fAtualizaVend(0);
      end;
   end;

end;

procedure TFrm_CotaForVend_Mes.CODFOR_AUTKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR_AUT.Text:=fChamaFor(0,'frm_CotaForVernd_Mes',Key);
   if trim(CODFOR.Text)<>'' then
      CODFOR_AUTExit(self);
   key:=#0;
   end;


end;

procedure TFrm_CotaForVend_Mes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

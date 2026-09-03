unit S_Vend_CotaMes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,s_DM4,lerarq, DBCtrls,func, Grids,
  DBGrids,S_Ven, ComCtrls;

type
  TFrm_Vend_CotaMes = class(TForm)
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function fAtualizaVend(pTipo: Integer): boolean;
  public
    { Public declarations }
  end;

var
  Frm_Vend_CotaMes: TFrm_Vend_CotaMes;

implementation

uses S_DM1;

{$R *.dfm}

procedure TFrm_Vend_CotaMes.BBGRAVARClick(Sender: TObject);
begin
if trim(CODVEN.Text)='' then
   begin
   fMensagem('Favor Digitar um Código Válido!',0,['0'],0);
   CODVEN.SetFocus;
   exit;
   end;
if not flqr1('VNOME','V','CADVEN','N','VCODVEN',CODVEN.Text) then
   begin
   fMensagem('Favor Digitar um Código Válido!',0,['0'],0);
   if CODVEN.Enabled then
      CODVEN.SetFocus;
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
if (DM4.Tb_Ven_CotaMes.IsEmpty) or not (DM4.Tb_Ven_CotaMes.Locate('CVANO;CVMES',vararrayof([fsonumero(ano.Text),fsonumero(MES.Text)]),[])) then
   begin
   DM1.Query2.close;
   DM1.Query2.sql.clear;
   DM1.Query2.sql.Add('Insert into CADVEN_COTAMES ('
                     +' CVCODEMP '
                     +',CVCODVEN '
                     +',CVANO '
                     +',CVMES  '
                     +',CVCOTAVLR '
                     +',CVCOTAQTD '
                     +',CVREALVLR '
                     +',CVQTDVLR  '
                     +') values ('
                     +IntToStr(codemp)
                     +','+trim(CODVEN.Text)
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
     DM1.Query2.SQL.sAVETOFILE(mpastatemp +'sql.TXT');

      end;
   end
else
   begin
   DM1.Query2.close;
   DM1.Query2.sql.clear;
   DM1.Query2.sql.Add('Update CADVEN_COTAMES set CVCOTAVLR=0'+mudavp(VLRCOTA.Text)
                      +', CVCOTAQTD=0'+mudavp(QTDCOTA.Text)
                      +' where '+iif(DM1.Qr_tid.Locate('TINOME','CADVEN',[]),'',' CVCODEMP=0'+InttoStr(codemp)+' and ')
                      +' CVCODVEN=0'+Trim(CODVEN.Text)
                      +' and CVANO=0'+Trim(ANO.Text)
                      +' and CVMES=0'+Trim(MES.text));
   try
      DM1.Query2.execsql;
      fdm1startcommit;
   except
      end;
   end;
flCadVen_Cota(0,0,fsonumero(CODVEN.Text),0,0);
fMensagem('Registro gravado!',0,['0'],0);
CODVEN.Text:='';
NOMVEN.Text:='';
VLRCOTA.Text:='';
QTDCOTA.Text:='';
if CODVEN.Enabled then
   CODVEN.SetFocus;
end;

procedure TFrm_Vend_CotaMes.CODVENExit(Sender: TObject);
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
function TFrm_Vend_CotaMes.fAtualizaVend(pTipo: Integer): boolean;
begin
if trim(NOMVEN.Text)<>'' then
   begin
   if (not DM4.Tb_Ven_CotaMes.Active) or (DM4.Tb_Ven_CotaMes.IsEmpty)
      or (DM4.Tb_Ven_CotaMesCVCODVEN.AsFloat<>fsonumero(CODVEN.Text)) then
      begin
      flCadVen_Cota(0,0,fsonumero(CODVEN.Text),0,0);
//      flCadVen_Cota(0,0,fsonumero(CODVEN.Text),ValInt(ANO.Text),ValInt(MES.Text));
      end;
   if not DM4.Tb_Ven_CotaMes.IsEmpty then
      begin
      if (fsonumero(MES.Text)<>0) and (fsonumero(ANO.Text)<>0) then
         DM4.Tb_Ven_CotaMes.Locate('CVANO;CVMES',vararrayof([fsonumero(ano.Text),fsonumero(MES.Text)]),[])
      else if fsonumero(ANO.Text)<>0 then
         DM4.Tb_Ven_CotaMes.Locate('CVANO',fsonumero(ano.Text),[])
      else if fsonumero(MES.Text)<>0 then
         DM4.Tb_Ven_CotaMes.Locate('CVMES',fsonumero(MES.Text),[]);
      end;
   end;
result:=true;
end;
procedure TFrm_Vend_CotaMes.MESExit(Sender: TObject);
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

procedure TFrm_Vend_CotaMes.ANOExit(Sender: TObject);
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

procedure TFrm_Vend_CotaMes.VLRCOTAExit(Sender: TObject);
begin
VLRCOTA.Text:=FormatFloat(mcasas,ValFloat(VLRCOTA.Text));
if ValFloat(VLRCOTA.Text)>999999999 then
   begin
   fMensagem('O Valor não pode ser maior que 999999999',0,['0'],0);
   VLRCOTA.SetFocus;
   end;


end;

procedure TFrm_Vend_CotaMes.QTDCOTAExit(Sender: TObject);
begin
QTDCOTA.Text:=FormatFloat(mcasqtd,ValFloat(QTDCOTA.Text));
if ValFloat(QTDCOTA.Text)>999999999 then
   begin
   fMensagem('O Valor não pode ser maior que 999999999',0,['0'],0);
   QTDCOTA.SetFocus;
   end;

end;

procedure TFrm_Vend_CotaMes.VLRCOTAKeyPress(Sender: TObject;
  var Key: Char);
begin
if key in [',','.'] then
   key:=DecimalSeparator
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Vend_CotaMes.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Vend_CotaMes.FormCreate(Sender: TObject);
begin
DM4.Tb_Ven_CotaMesCVCOTAQTD.displayFormat:=mcasQtd;
DM4.Tb_Ven_CotaMesCVCOTAVLR.displayFormat:=mcasas;
end;

procedure TFrm_Vend_CotaMes.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text :=fChamaVen(0,'frm_Vend_CotaMes',Key);
   CODVENExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Vend_CotaMes.CODVEN_AUTExit(Sender: TObject);
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

procedure TFrm_Vend_CotaMes.PageControl1Change(Sender: TObject);
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

procedure TFrm_Vend_CotaMes.bbGerarClick(Sender: TObject);
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
DM1.Query1.SQL.add('Select count(*) from CADVEN_COTAMES where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADVEN',[]),'',' CVCODEMP=0'+Inttostr(codemp)+' and '));
if trim(CODVEN_AUT.Text)<>'' then
   DM1.Query1.SQL.add(' CVCODVEN=0'+trim(CODVEN_AUT.Text)+' and ');

DM1.Query1.SQL.add(' CVANO=0'+trim(ANO_ORI.Text));
DM1.Query1.SQL.add(' and CVMES=0'+trim(MES_ORI.Text));
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
DM1.Query1.SQL.add('Delete from CADVEN_COTAMES where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADVEN',[]),'',' CVCODEMP=0'+Inttostr(codemp)+' and '));
if trim(CODVEN_AUT.Text)<>'' then
   DM1.Query1.SQL.add(' CVCODVEN=0'+trim(CODVEN_AUT.Text)+' and ');

DM1.Query1.SQL.add(' CVANO=0'+trim(ANO_DES.Text));
DM1.Query1.SQL.add(' and CVMES=0'+trim(MES_DES.Text));
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
DM1.Query2.sql.Add('Insert into CADVEN_COTAMES ('
                  +' CVCODEMP '
                  +',CVCODVEN '
                  +',CVANO '
                  +',CVMES  '
                  +',CVCOTAVLR '
                  +',CVCOTAQTD '
                  +',CVREALVLR '
                  +',CVQTDVLR  '
                  +') '
                  +' Select '
                  +' CVCODEMP '
                  +',CVCODVEN '
                  +','+trim(ANO_DES.Text)+' as ANO '
                  +','+trim(MES_DES.Text)+' as MES '
                  +',CVCOTAVLR '
                  +',CVCOTAQTD '
                  +',CVREALVLR '
                  +',CVQTDVLR  '
                  +' from CADVEN_COTAMES where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADVEN',[]),'',' CVCODEMP=0'+Inttostr(codemp)+' and '));
if trim(CODVEN_AUT.Text)<>'' then
   DM1.Query2.SQL.add(' CVCODVEN=0'+trim(CODVEN_AUT.Text)+' and ');
DM1.Query2.SQL.add(' CVANO=0'+trim(ANO_ORI.Text));
DM1.Query2.SQL.add(' and CVMES=0'+trim(MES_ORI.Text));
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

procedure TFrm_Vend_CotaMes.CODVEN_AUTKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN_AUT.Text :=fChamaVen(0,'frm_Vend_CotaMes',Key);
   CODVEN_AUTExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Vend_CotaMes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.

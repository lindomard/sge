unit S_RelConProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask,func,db,dbtables,S_IMO,S_MPer,S_MPar,lerarq,S_Fun,S_DM2,
  S_DM4;

type
  TFrm_RelConProd = class(TForm)
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label3: TLabel;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    CODENC: TEdit;
    NOMENC: TEdit;
    CODMAQ: TEdit;
    NOMMAQ: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    CODMPER: TEdit;
    MOTPERDA: TMemo;
    StaticText5: TStaticText;
    CODMPAR: TEdit;
    MOTPARADA: TMemo;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure CODENCKeyPress(Sender: TObject; var Key: Char);
    procedure CODENCExit(Sender: TObject);
    procedure CODMAQExit(Sender: TObject);
    procedure CODMPERExit(Sender: TObject);
    procedure CODMPERKeyPress(Sender: TObject; var Key: Char);
    procedure CODMPARKeyPress(Sender: TObject; var Key: Char);
    procedure CODMPARExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RelConProd: TFrm_RelConProd;

implementation

uses Sr_ConProd, S_DM1;

{$R *.dfm}

procedure TFrm_RelConProd.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_RelConProd.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_RelConProd.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RelConProd.bbImprimirClick(Sender: TObject);
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      MessageDlg('Data Inicial maior que Final, Invalido!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
bbImprimir.Enabled:=false;
Application.CreateForm(TQr_ConProd, Qr_ConProd);

Qr_ConProd.Tb_ConProdCP1DATA.DisplayFormat   :=fdt2;
Qr_ConProd.Tb_ConProdCP1DATA.EditMask        :=pEditMascData;
Qr_ConProd.Tb_ConProdCP2PERDA.DisplayFormat  :='#,##0';
Qr_ConProd.Tb_ConProdCP2HORTRAB.DisplayFormat:='#,##0.000';
Qr_ConProd.Tb_ConProdperda.DisplayFormat     :='#,##0';
Qr_ConProd.Tb_ConProdpercPerda.DisplayFormat :='#,##0.00';
Qr_ConProd.Tb_ConProdtotperdas.DisplayFormat :='#,##0';

Qr_ConProd.lbl_fantasia_emp.Caption:=DM1.Tb_EmpFANTASIA.Value;
Qr_ConProd.lbl_razao_emp.Caption:=DM1.Tb_EmpRAZAO.Value;
Qr_ConProd.Tb_ConProd.Close;
Qr_ConProd.Tb_ConProd.Sql.Clear;
Qr_ConProd.Tb_ConProd.Sql.Add('Select CP1CODEMP, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1LOTSEQ, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1CHAVE, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1DATA, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1TURNO, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1REBARBAS, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1DATAINC, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1USRINC, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1DATAALT, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1USRALT, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1CODENC, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2ITEM, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2CODMAQ, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2FRASCO, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2COR, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2CICLO, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2CAVIDADE, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2PRODUCAO, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2PERDA, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2HORTRAB, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2DTHRIPAR, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2CODMPER, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2CODMPAR, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2PRENSISTA, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2DTHRIPAR, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2NOMPER, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2PROTRO, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2NOMPAR, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2DTHRTPAR from CADCP01,CADCP02 where '
                             +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP1CODEMP=0'+IntToStr(codemp)+' and '));
Qr_ConProd.Tb_ConProd.Sql.Add(' CP2CODEMP=CP1CODEMP ');
Qr_ConProd.Tb_ConProd.Sql.Add(' and CP2LOTSEQ=CP1LOTSEQ ');
Qr_ConProd.Tb_ConProd.Sql.Add('  and CP2CHAVE =CP1CHAVE  ');
if Trim(MDT1.Text)<>'/  /' then
   Qr_ConProd.Tb_ConProd.SQL.Add(' and CP1DATA>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_ConProd.Tb_ConProd.SQL.Add(' and CP1DATA<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
if CODENC.Text<>'' then
   Qr_ConProd.Tb_ConProd.SQL.Add(' and CP1CODENC=0'+Trim(CODENC.Text));
if CODMAQ.Text<>'' then
   Qr_ConProd.Tb_ConProd.SQL.Add(' and CP2CODMAQ=0'+Trim(CODMAQ.Text));
Qr_ConProd.Tb_ConProd.Sql.Add('  order by CP2LOTSEQ,CP2CHAVE,CP2ITEM  ');
try
   Qr_ConProd.Tb_ConProd.Open;
except
   Qr_ConProd.Tb_ConProd.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   MessageDlg('Erro ao Gerar o Relatorio!',mtWarning,[mbOk],0);
   bbImprimir.Enabled:=true;
   end;
cp_chaveant:=Qr_ConProd.Tb_ConProdCP1CHAVE.Value;
if trim(CODMPAR.Text)<>'' then
   Qr_ConProd.qr_titRel.Caption:=MOTPARADA.Text;
if CODMPER.Text<>'' then
   sr_codmper:=fsonumero(CODMPER.Text);
if CODMPAR.Text<>'' then
   sr_codmpar:=fsonumero(CODMPAR.Text);
verteclado(0);
Qr_ConProd.PreviewModal;
Qr_ConProd.Free;
bbImprimir.Enabled:=true;
end;

procedure TFrm_RelConProd.CODENCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin

   if frm_fun=nil then
      Application.CreateForm(Tfrm_Fun, Frm_Fun)
   else
      begin
      Frm_Fun.free;
      Frm_Fun:=nil;
      Application.CreateForm(Tfrm_Fun, Frm_Fun)
      end;

   Frm_Fun.Edit1.Text:=key;
   Frm_Fun.Edit1.SelStart:=1;
   Frm_Fun.Edit1.SelLength:=1;
   Frm_Fun.PC1.ActivePage:=Frm_Fun.tsTab;
   Frm_Fun.fun_ori:='Frm_Relconprod';
   if Frm_Fun.ShowModal=mrok then
      begin
      CODENC.Text:=DM2.Tb_FunCFCODFUN.AsString;
      CODENCExit(self);
      end;
   Frm_Fun.Free;
   Frm_Fun:=nil;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_RelConProd.CODENCExit(Sender: TObject);
begin
CODENC.Text:=fdeixanum2(CODENC.Text);
if trim(CODENC.Text)='' then
   NOMENC.Text:='todos...'
else
   begin
   if not flqr1('CFNOMFUN','CF','CADFUN','N','CFCODFUN',CODENC.Text) then
      begin
      MessageDlg('Funcionário não Cadastrado!',mtWarning,[mbOk],0);
      CODENC.SetFocus;
      exit;
      end
   else
      NOMENC.Text:=DM1.Query1.Fields[0].AsString;   
   end;

end;

procedure TFrm_RelConProd.CODMAQExit(Sender: TObject);
begin
CODMAQ.Text:=fdeixanum2(CODMAQ.Text);
if Trim(CODMAQ.Text)='' then
   NOMMAQ.Text:='Todas...'
else
   begin
   if flqr1('IM1NOME','IM1','CADIMO01','N','IM1CODIMO',CODMAQ.Text) then
      NOMMAQ.Text:=DM1.Query1.Fields[0].AsString
   else
      begin
      MessageDlg('Maquina não Cadastrada!',mtWarning,[mbOk],0);
      CODMAQ.SetFocus;
      end;
   end;

end;

procedure TFrm_RelConProd.CODMPERExit(Sender: TObject);
begin
CODMPER.Text:=fdeixanum2(CODMPER.Text);
if Trim(CODMPER.Text)='' then
   MOTPERDA.Text:='Todos...'
else
   begin
   if flqr1('CMPMOTIVO','CMP','CADMPER','N','CMPCODIGO',CODMPER.Text) then
      MOTPERDA.Text:=DM1.Query1.Fields[0].AsString
   else
      begin
      MessageDlg('Motivo não Cadastrado!',mtWarning,[mbOk],0);
      CODMPER.SetFocus;
      end;
   end;

end;

procedure TFrm_RelConProd.CODMPERKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(Tfrm_mPer, Frm_mPer);
   Frm_mPer.Edit1.Text:=key;
   Frm_mPer.Edit1.SelStart:=1;
   Frm_mPer.Edit1.SelLength:=1;
   Frm_mPer.PC1.ActivePageIndex:=1;
   mper_ori:='Frm_Relconprod';
   if Frm_mPer.ShowModal=mrok then
      begin
      CODMPER.Text:=DM4.Tb_MPerCMPCODIGO.AsString;
      end;
   Frm_mPer.Free;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RelConProd.CODMPARKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(Tfrm_mPar, Frm_mPar);
   Frm_mPar.Edit1.Text:=key;
   Frm_mPar.Edit1.SelStart:=1;
   Frm_mPar.Edit1.SelLength:=1;
   Frm_mPar.PC1.ActivePageIndex:=1;
   mpar_ori:='Frm_Relconprod';
   if Frm_mPar.ShowModal=mrok then
      begin
      CODMPAR.Text:=DM4.Tb_MParMPARCODIGO.AsString;
      end;
   Frm_mPar.Free;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RelConProd.CODMPARExit(Sender: TObject);
begin
CODMPAR.Text:=fdeixanum2(CODMPAR.Text);
if Trim(CODMPAR.Text)='' then
   MOTPARADA.Text:='Todos...'
else
   begin
   if flqr1('MPARMOTIVO','MPAR','CADMPAR','N','MPARCODIGO',CODMPAR.Text) then
      MOTPARADA.Text:=DM1.Query1.Fields[0].AsString
   else
      begin
      MessageDlg('Motivo não Cadastrado!',mtWarning,[mbOk],0);
      CODMPER.SetFocus;
      end;
   end;

end;

procedure TFrm_RelConProd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

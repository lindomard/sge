unit S_RFPR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, db, dbtables,func,S_DM1,S_Impres,
  Gauges,lerarq, S_SelEmp;

type
  TFrm_RFPR = class(TForm)
    Label1: TLabel;
    MDT1: TMaskEdit;
    Label2: TLabel;
    MDT2: TMaskEdit;
    SAIR: TBitBtn;
    IMPRIMIR: TBitBtn;
    Qr_FP: TQuery;
    Qr_FPFPFORMA: TFloatField;
    Qr_FPFPDESC: TStringField;
    Qr_FPTOTAL: TFloatField;
    Qr_FPFPTIPO: TFloatField;
    Label4: TLabel;
    NRI: TEdit;
    Label5: TLabel;
    NRF: TEdit;
    CB_INIBIRCHQP: TCheckBox;
    sb_SalvarPadrao: TSpeedButton;
    CB_DEVOL: TCheckBox;
    Label24: TLabel;
    edt_codbco: TEdit;
    lbx_codbco: TListBox;
    OMITIR_BCO: TCheckBox;
    Label6: TLabel;
    edt_codusr_cx: TEdit;
    lbx_codusr_cx: TListBox;
    OMITIR_USR_CX: TCheckBox;
    procedure SAIRClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure IMPRIMIRClick(Sender: TObject);
    procedure NRIExit(Sender: TObject);
    procedure NRFExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sb_SalvarPadraoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codbcoExit(Sender: TObject);
    procedure edt_codbcoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codusr_cxKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codusr_cxExit(Sender: TObject);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codusr_cxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_RFPR : TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp; 
  end;

var
  Frm_RFPR: TFrm_RFPR;
   mNomeView : String;

implementation

uses S_DM4;

{$R *.dfm}

procedure TFrm_RFPR.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RFPR.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT1.Text));
   except
      ShowMessage('Data Invalida!');
      MDT1.SetFocus;
      end
   end;

end;

procedure TFrm_RFPR.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT2.Text));
   except
      ShowMessage('Data Invalida!');
      MDT2.SetFocus;
      exit;
      end
   end;
if (Trim(MDT1.Text)<>'/  /') and (TRIM(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      ShowMessage('Data Final Menor que Data Inicial. Invalido!');
      MDT1.SetFocus;
      end;
   end;


end;

procedure TFrm_RFPR.IMPRIMIRClick(Sender: TObject);
var
mpag, mlin    : Integer;
La_empfpcr    : String;
la_empfpcrdup : String;
mtotal        : Real;
begin
Qr_Fp.Close;
Qr_Fp.SQl.Clear;
la_empfpcr:=fEmpresas_Selecionadas('FPCR','FPCR.FPCODEMP',Form_SelEmp.CLB_EMPRESAS);

Qr_Fp.Close;
Qr_Fp.Sql.Clear;
if CB_DEVOL.Checked then
   begin
   if trim(mNomeView)='' then
     mNomeView:=fProcTemp(22);
   Qr_Fp.SQl.Add('Create or replace view '+mNomeView+' as ');
   end;
Qr_Fp.SQl.Add('Select sum(FPCR.FPVALOR) AS TOTAL, FPCR.fptipo,FPCR.FPFORMA,CADFP.FPDESC ');
Qr_Fp.SQl.Add(' from FPCR, CADFP where '
            +iif(la_empfpcr='','',la_Empfpcr+' and '));
if Trim(MDT1.Text)<>'/  /' then
   Qr_Fp.Sql.add(' FPCR.FPDATA>='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT1.Text))+chr(39)+' and ');
if Trim(MDT2.Text)<>'/  /' then
   Qr_Fp.Sql.add(' FPCR.FPDATA<='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT2.Text))+chr(39)+' and ');
if ValInt(NRI.Text)>0 then
   begin
   Qr_Fp.SQL.add(' FPCR.FPNR>=0'+Trim(NRI.Text)+' and ');
   end;
if ValInt(NRF.Text)>0 then
   begin
   Qr_Fp.SQL.add(' FPCR.FPNR<=0'+Trim(NRF.Text)+' and ');
   end;




{
if ValInt(LOTEI.Text)>0 then
   begin
   Qr_Fp.SQL.add(' FPCR.FPLOTE>=0'+Trim(LOTEI.Text)+' and ');
   end;
if ValInt(LOTEF.Text)>0 then
   begin
   Qr_Fp.SQL.add(' FPCR.FPLOTE<=0'+Trim(LOTEF.Text)+' and ');
   end;
}
if CB_INIBIRCHQP.Checked then
   begin
   Qr_Fp.SQL.add(' FPCR.FPVINCULO<>14 and ');
   end;


//if Trim(CODCLI.Text)<>'' then
//   Qr_Fp.Sql.Add(' and FPCR.FPCODCLI=0'+Trim(CODCLI.Text));


Qr_Fp.Sql.Add('  (FPCODIGO=FPFORMA) ');
mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
   Qr_Fp.SQL.Add(' and FPCR.FPCAIXA '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codusr_cx,OMITIR_USR_CX);
if trim(mcinst2)<>'' then
   Qr_Fp.SQL.Add(' and FPCR.FPCODUSR_CX '+mcinst2);

if CB_DEVOL.Checked then
   Qr_Fp.SQL.add(' and FPCR.FPVINCULO<>7 ');

Qr_Fp.Sql.add('  Group by FPCR.FPFORMA,CADFP.FPDESC,FPCR.fptipo');
if CB_DEVOL.Checked then
   begin
   Qr_Fp.Sql.add(' union ');
   Qr_Fp.SQl.Add('Select sum(FPCR.FPVALOR*-1) AS TOTAL, 0 as fptipo, 0 as FPFORMA,'+chr(39)+' '+chr(39)+' as FPDESC ');
   Qr_Fp.SQl.Add(' from FPCR, CADFP where '
            +iif(la_empfpcr='','',la_Empfpcr+' and '));
   if Trim(MDT1.Text)<>'/  /' then
      Qr_Fp.Sql.add(' FPCR.FPDATA>='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT1.Text))+chr(39)+' and ');
   if Trim(MDT2.Text)<>'/  /' then
      Qr_Fp.Sql.add(' FPCR.FPDATA<='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT2.Text))+chr(39)+' and ');
   if ValInt(NRI.Text)>0 then
      begin
      Qr_Fp.SQL.add(' FPCR.FPNR>=0'+Trim(NRI.Text)+' and ');
      end;
   if ValInt(NRF.Text)>0 then
      begin
      Qr_Fp.SQL.add(' FPCR.FPNR<=0'+Trim(NRF.Text)+' and ');
      end;
{
if ValInt(LOTEI.Text)>0 then
   begin
   Qr_Fp.SQL.add(' FPCR.FPLOTE>=0'+Trim(LOTEI.Text)+' and ');
   end;
if ValInt(LOTEF.Text)>0 then
   begin
   Qr_Fp.SQL.add(' FPCR.FPLOTE<=0'+Trim(LOTEF.Text)+' and ');
   end;
}
   if CB_INIBIRCHQP.Checked then
      begin
      Qr_Fp.SQL.add(' FPCR.FPVINCULO<>14 and ');
      end;


//if Trim(CODCLI.Text)<>'' then
//   Qr_Fp.Sql.Add(' and FPCR.FPCODCLI=0'+Trim(CODCLI.Text));


   Qr_Fp.Sql.Add('  (FPCODIGO=FPFORMA) ');
   Qr_Fp.SQL.add(' and FPCR.FPVINCULO=7 ');

   mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
   if trim(mcinst2)<>'' then
      Qr_Fp.SQL.Add(' and FPCR.FPCAIXA '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codusr_cx,OMITIR_USR_CX);
   if trim(mcinst2)<>'' then
      Qr_Fp.SQL.Add(' and FPCR.FPCODUSR_CX '+mcinst2);

   Qr_Fp.Sql.add('  Group by FPCR.FPFORMA,CADFP.FPDESC,FPCR.fptipo');
   Qr_FP.ExecSQL;

   Qr_FP.Close;
   Qr_FP.SQL.Clear;
   Qr_Fp.SQl.Add('Select sum(TOTAL) AS TOTAL, fptipo, FPFORMA, max(FPDESC) as FPDESC ');
   Qr_Fp.SQl.Add(' from '+mNomeView);
   Qr_Fp.SQl.Add(' group by FPTIPO,FPFORMA');
   try
      Qr_FP.Open;
   except
      Qr_FP.SQL.SaveToFile('c:\sql.txt');
      exit;
      end;
   end
else
   begin
   Qr_Fp.Open;
   end;




//Qr_Fp.Sql.SaveToFile('c:\sql.txt');
{
Tb_ResFP.Open;

//Qr_Fp.SQl.add('select fpforma,fpdesc,FPCR.fptipo,sum(fpvalor) as TOTAL from FPCR,CADFP'
Qr_Fp.SQl.add('select fpforma,fpdesc,CADFP.fptipo,sum(fpvalor) as TOTAL from FPCR,CADFP'
             +' where '+iif(DM1.Qr_Tid.Locate('TINOME','CADDAR',[]),'',' FPCODEMP=0'+IntTostr(codemp)+' and ')
             +' FPCODIGO=FPFORMA ');
if Trim(MDT1.Text)<>'/  /' then
   Qr_Fp.SQL.Add(' and FPDATA>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Fp.SQL.Add(' and FPDATA<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39));
if ValInt(NRI.Text)>0 then
   begin
   Qr_Fp.SQL.add(' and FPCR.FPNR>=0'+Trim(NRI.Text));
   end;
if ValInt(NRF.Text)>0 then
   begin
   Qr_Fp.SQL.add(' and FPCR.FPNR<=0'+Trim(NRF.Text));
   end;
if CB_INIBIRCHQP.Checked then
   begin
   Qr_Fp.SQL.add(' and FPCR.FPVINCULO<>14 ');
   mcinst:=' and  ';
   end;


Qr_Fp.SQL.add(' Group by FPFORMA,FPDESC,CADFP.FPTIPO');

}
//Qr_Fp.Sql.SaveToFile('c:\sql.txt');

if Qr_Fp.Eof then
   begin
   fmensagem('Nada a ser impresso na condição solicitada ',0,['0'],0);
   exit;
   end;

mpag:=0;
mlin:=0;
testeform := TFrm_RFPR(FindGlobalComponent('form_impres_RFPR'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_RFPR);
form_impres_RFPR.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
While not Qr_Fp.Eof do
   begin
   if mlin=0 then
      begin
      form_impres_RFPR.fImprimirCabecalho(136,'Resumo de recebimento por Formas.');
      form_impres_RFPR.RDprint1.impf(03,01,centra(fperiodo(0,mdt1.text,mdt2.text),' ',80),mneg);
      form_impres_RFPR.RDprint1.impf(04,44,'+-----+----------------------+----------------+',mnormal);
      form_impres_RFPR.RDprint1.impf(05,44,'|Codig| Forma de Pagamento   |     Total      |',mnormal);
      mlin:=5;
      end;
   mlin:=mlin+1;
   form_impres_RFPR.Rdprint1.ImpF(mlin,44,'|'+centra(FormatFloat('00',Qr_FPFPFORMA.Value),' ',05)+'| '
                           +insere2(Qr_FPFPDESC.Value,' ',20)+' | '
                           +insere(FormatFloat(mcasas,Qr_FPTOTAL.Value),' ',14)+' |',mnormal);
   if Qr_FPFPTIPO.Value=1 then
      mtotal:=mtotal-Qr_FpTOTAL.Value
   else
      mtotal:=mtotal+Qr_FpTOTAL.Value;
   Qr_Fp.Next;
   if Qr_Fp.Eof then
      begin
      mlin:=mlin+1;
      form_impres_RFPR.Rdprint1.ImpF(mlin,44,'|     | '
                           +insere2('-Total','.',20)+' | '
                           +insere(FormatFloat(mcasas,mtotal),' ',14)+' |',mnormal);
      mlin:=mlin+1;
      form_impres_RFPR.RDprint1.impf(mlin,44,'+-----+----------------------+----------------+',mnormal);

      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_impres_RFPR.RDprint1.impf(mlin,17,'+-----+----------------------+----------------+',mnormal);
      form_impres_RFPR.RDprint1.Novapagina;
      end
   end;
if form_impres_RFPR.RDprint1.Setup then form_impres_RFPR.RDprint1.Fechar;
form_impres_RFPR.free;
form_impres_RFPR:=nil;
end;

procedure TFrm_RFPR.NRIExit(Sender: TObject);
begin
NRI.Text:=fdeixanum2(NRI.Text);

end;

procedure TFrm_RFPR.NRFExit(Sender: TObject);
begin
NRF.Text:=fdeixanum2(NRF.Text);

end;

procedure TFrm_RFPR.FormCreate(Sender: TObject);
begin
MDT1.Text:=FormatDateTime(fdt2, Date);
MDT2.Text:=FormatDateTime(fdt2, Date);

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;
DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RFFR','CB_INIBIRCHQP']),[]) then
   CB_INIBIRCHQP.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_INIBIRCHQP.Checked:=false;
end;

procedure TFrm_RFPR.sb_SalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(codusr,'_RFFR','');
fGravaPadroes(codusr,'CB_INIBIRCHQP'   ,'checked'   ,'_RFFR',iif(CB_INIBIRCHQP.Checked,'true','false'));

end;

procedure TFrm_RFPR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if trim(mNomeView)<>'' then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Drop VIEW '+mNomeView);
   try
     DM1.Query1.ExecSQL;
   Except
      DM1.query1.SQL.SaveToFile('c:\sql.txt');
      end;
   end;

Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_RFPR.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_RFPR.edt_codbcoExit(Sender: TObject);
begin
edt_codbco.Text:=fdeixanum2(edt_codbco.Text);
if Trim(edt_codbco.Text)<>'' then
   begin
   if not flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',edt_codbco.Text) then
      begin
      fmensagem('Usuario não cadastrado!',0,['0'],0);
      edt_codbco.SetFocus;
      end
   else
      begin
      lbx_codbco.Items.Add(FormatFloat('0000000',StrToFloat(edt_codbco.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      edt_codbco.text := '';
      edt_codbco.SetFocus;
      end;
   end;


end;

procedure TFrm_RFPR.edt_codbcoKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codbco.Text:=fChamaBco(0,'frm_RCRec',Key);
   edt_codbcoExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_RFPR.edt_codusr_cxKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codusr_cx.Text:=fChamaUsr(0,'frm_RCRec',Key);
   edt_codusr_cxExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_RFPR.edt_codusr_cxExit(Sender: TObject);
begin
edt_codusr_cx.Text:=fdeixanum2(edt_codusr_cx.Text);
if Trim(edt_codusr_cx.Text)<>'' then
   begin
   if not flqr1('NOMUSR','','CADUSR','N','CODUSR',edt_codusr_cx.Text) then
      begin
      fmensagem('Usuario não cadastrado!',0,['0'],0);
      edt_codusr_cx.SetFocus;
      end
   else
      begin
      lbx_codusr_cx.Items.Add(FormatFloat('0000000',StrToFloat(edt_codusr_cx.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      edt_codusr_cx.text := '';
      edt_codusr_cx.SetFocus;
      end;
   end;

end;

procedure TFrm_RFPR.lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);


end;

procedure TFrm_RFPR.lbx_codusr_cxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codusr_cx.ItemIndex>=0 then
      lbx_codusr_cx.Items.Delete(lbx_codusr_cx.ItemIndex);

end;

end.

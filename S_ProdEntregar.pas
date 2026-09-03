unit S_ProdEntregar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLXLSFilter, RLPDFFilter, RLHTMLFilter, RLFilters, RLRichFilter,
  RLDraftFilter, DB, DBTables, RLReport, StdCtrls, Buttons, ComCtrls, Mask, S_SelEmp
  ,s_lerarq_geral;

type
  TFrm_ProdEntregar = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    impressao: TSpeedButton;
    dtinicialf: TMaskEdit;
    dtfinalf: TMaskEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    StaticText4: TStaticText;
    codpro: TEdit;
    OMITIR_PRO: TCheckBox;
    lbx_codpro: TListBox;
    StaticText2: TStaticText;
    visualiza_imp: TComboBox;
    StaticText3: TStaticText;
    StaticText5: TStaticText;
    bbSair: TBitBtn;
    TabSheet2: TTabSheet;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand3: TRLBand;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    ds_cadp01: TDataSource;
    cadp01: TQuery;
    RLDraftFilter1: TRLDraftFilter;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    tipo_imp: TComboBox;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    codcli: TEdit;
    OMITIR_CLI: TCheckBox;
    lbx_codcli: TListBox;
    StaticText11: TStaticText;
    codven: TEdit;
    OMITIR_VEN: TCheckBox;
    lbx_codven: TListBox;
    StaticText12: TStaticText;
    codgru: TEdit;
    OMITIR_GRU: TCheckBox;
    lbx_codgru: TListBox;
    StaticText13: TStaticText;
    codram: TEdit;
    OMITIR_ram: TCheckBox;
    lbx_codram: TListBox;
    StaticText6: TStaticText;
    codtra: TEdit;
    OMITIR_TRA: TCheckBox;
    lbx_codtra: TListBox;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand4: TRLBand;
    RLDBText2: TRLDBText;
    RLLabel29: TRLLabel;
    cadp01GRUPO: TStringField;
    cadp01SUBGRUPO: TStringField;
    cadp01P2CODPRO: TFloatField;
    cadp01PDNOME: TStringField;
    cadp01PDUND: TStringField;
    cadp01QTDVENDA: TFloatField;
    cadp01QTDATUAL: TFloatField;
    cadp01QTFISICO: TFloatField;
    cadp01SEPARAR: TFloatField;
    cadp01ENTREGANDO: TFloatField;
    RLGroup2: TRLGroup;
    RLBand2: TRLBand;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    lbl_periodo: TRLLabel;
    RLBand5: TRLBand;
    RLLabel32: TRLLabel;
    RLDBText12: TRLDBText;
    procedure codcliExit(Sender: TObject);
    procedure codcliKeyPress(Sender: TObject; var Key: Char);
    procedure codvenExit(Sender: TObject);
    procedure codvenKeyPress(Sender: TObject; var Key: Char);
    procedure codproExit(Sender: TObject);
    procedure codproKeyPress(Sender: TObject; var Key: Char);
    procedure codproMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure codgruExit(Sender: TObject);
    procedure codgruKeyPress(Sender: TObject; var Key: Char);
    procedure codramExit(Sender: TObject);
    procedure codramKeyPress(Sender: TObject; var Key: Char);
    procedure codtraExit(Sender: TObject);
    procedure codtraKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codtraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure dtinicialfExit(Sender: TObject);
    procedure dtfinalfExit(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure impressaoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_ProdEntregar: TFrm_ProdEntregar;

implementation

uses lerarq, Func, S_DM1, S_GPro, S_Ven, S_Ram, S_Tra;

{$R *.dfm}

procedure TFrm_ProdEntregar.codcliExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODCLI.Text) then
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODCLI.text := '';
      CODCLI.SetFocus;
      end
   else
      begin
      fMensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.text := '';
      CODCLI.SetFocus;
      end;
   end;

end;

procedure TFrm_ProdEntregar.codcliKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_PLDR',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_ProdEntregar.codvenExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',CODVEN.Text) then
      begin
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODVEN.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      begin
      fMensagem('Vendedor não Cadastrado!',0,['0'],0);
      CODVEN.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end;
   end;

end;

procedure TFrm_ProdEntregar.codvenKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_ProdEntregar',Key);
   if trim(CODVEN.Text)<>'' then
      CODVENExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_ProdEntregar.codproExit(Sender: TObject);
begin
   if Trim(CODPRO.Text)<>'' then
   begin
   flcadpro(1,0,0,CODPRO.Text);
   if DM1.Tb_Pro.Eof then
      begin
      fMensagem('Produto nao Cadastrado!',0,['0'],0);
      CODpro.SetFocus;
      end else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro.text := '';
      end;
   end;

end;

procedure TFrm_ProdEntregar.codproKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'frm_medtpro',key);
   if valfloat(codpro.text)<>0 then
      lbx_codpro.Items.Add(FormatFloat('0000000',DM1.Tb_ProPDCODPRO.AsFloat)
                                    +' - '+DM1.Tb_ProPDNOME.asstring);
   codpro.text := '';
   codpro.SetFocus;
   key:=#0;
   end;

end;

procedure TFrm_ProdEntregar.codproMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
//   CODPRO.Hint := 'Informe Codigo do Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_ProdEntregar.codgruExit(Sender: TObject);
begin
   if Trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      fMensagem('Grupo Não Cadastrado!',0,['0'],0);
      CODGRU.SetFocus;
      exit;
      end else
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(CODGRU.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codgru.text := '';
      end;
   end;

end;

procedure TFrm_ProdEntregar.codgruKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.text:=fChamaGPro(0,'frm_medtpro',key);
   if valfloat(CODGRU.text)<>0 then
      lbx_codgru.Items.Add(FormatFloat('0000000',DM1.Tb_GproGRCODGRU.AsFloat)
                                    +' - '+DM1.Tb_GproGRNOME.AsString);
   CODGRU.text := '';
   key:=#0;
   end;


end;

procedure TFrm_ProdEntregar.codramExit(Sender: TObject);
begin
if ValFloat(CODRAM.Text)<=0 then
   begin
//       CODRAM.Text:='Todos...';
       EXIT;
   end;
if flqr1('RNOME','C','CADRAM','N','RCODRAM',trim(CODRAM.Text)) then
BEGIN
   lbx_codram.Items.Add(FormatFloat('0000000',StrToFloat(CODRAM.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codram.text := '';
END else
   begin
   fMensagem('Ramo não Cadastrado!',0,['0'],0);
   CODRAM.SetFocus;
   end;

end;

procedure TFrm_ProdEntregar.codramKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRAM.Text:=fChamaRamPro(0,'frm_medtpro',key);
   if valFloat(CODRAM.Text)<>0 then
      lbx_codram.Items.Add(FormatFloat('0000000',DM1.Tb_RamRCODRAM.AsFloat)
                                    +' - '+DM1.Tb_RamRNOME.AsString);
   CODRAM.text := '';
   key:=#0;
   end;

end;

procedure TFrm_ProdEntregar.codtraExit(Sender: TObject);
begin
codtra.Text:=fdeixanum2(codtra.Text);
if Trim(codtra.Text)<>'' then
   begin
   if flqr1('TRRAZTRA','C','CADTRA','N','TRCODTRA',codtra.Text) then
      begin
      lbx_codtra.Items.Add(FormatFloat('0000000',StrToFloat(codtra.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codtra.text := '';
      codtra.SetFocus;
      end
   else
      begin
      fMensagem('Trnasportador não Cadastrado!',0,['0'],0);
      codtra.text := '';
      codtra.SetFocus;
      end;
   end;

end;

procedure TFrm_ProdEntregar.codtraKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   lbx_codtra.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_TraTRCODTRA.AsString))
                                           +' - '+DM1.Tb_TraTRRAZTRA.AsString);
   codtra.text := '';
   codtra.SetFocus;
   key:=#0;
   end;

end;

procedure TFrm_ProdEntregar.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_ProdEntregar.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_ProdEntregar.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_ProdEntregar.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_ProdEntregar.lbx_codramKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);

end;

procedure TFrm_ProdEntregar.lbx_codtraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codtra.ItemIndex>=0 then
      lbx_codtra.Items.Delete(lbx_codtra.ItemIndex);

end;

procedure TFrm_ProdEntregar.FormCreate(Sender: TObject);
begin
    Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
    cadp01QTDATUAL.DisplayFormat  	:= mcasas;
    cadp01QTDVENDA.DisplayFormat  	:= mcasas;
    cadp01QTFISICO.DisplayFormat  	:= mcasas;
    cadp01SEPARAR.DisplayFormat  	:= mcasas;
    cadp01ENTREGANDO.DisplayFormat  	:= mcasas;
    dtinicialf.text:=FormatDatetime(fdt2, date);
    dtfinalf.text  :=FormatDatetime(fdt2, date);

    TabSheet2.TabVisible                := false;
    visualiza_imp.ItemIndex := 0;
    tipo_imp.ItemIndex      := 0;

end;

procedure TFrm_ProdEntregar.dtinicialfExit(Sender: TObject);
begin
     if dtinicialf.Text <> '  /  /    ' then
     begin
        try
          dtinicialf.Text:=FormatDatetime('dd/mm/yyyy',StrtoDate(dtinicialf.Text));
        except
          ShowMessage('Data Inicial Invalida!');
          dtinicialf.SetFocus;
        end;
     end;

end;

procedure TFrm_ProdEntregar.dtfinalfExit(Sender: TObject);
begin
     if dtfinalf.Text <> '  /  /    ' then
     begin
        try
          dtfinalf.Text:=FormatDatetime('dd/mm/yyyy',StrtoDate(dtfinalf.Text));
        except
          ShowMessage('Data Final Invalida!');
          dtfinalf.SetFocus;
        end;
     end;

end;

procedure TFrm_ProdEntregar.DateTimePicker1Change(Sender: TObject);
begin
    dtinicialf.Text := FormatDateTime('DD/MM/YYYY',DateTimePicker1.Date);
end;

procedure TFrm_ProdEntregar.DateTimePicker2Change(Sender: TObject);
begin
    dtfinalf.Text := FormatDateTime('DD/MM/YYYY',DateTimePicker2.Date);
end;

procedure TFrm_ProdEntregar.bbSairClick(Sender: TObject);
begin
    close;
end;

procedure TFrm_ProdEntregar.impressaoClick(Sender: TObject);
begin

    impressao.Enabled := false;

    la_tabelas  :='';
    la_Join     :='';
    la_instrucao:='';

    fInnerJoin4(1,'cadp02' ,'p2codemp','p1codemp' ,'p2lotseq' ,'p1lotseq','p2chave' ,'p1chave','p2ordem' ,'p1ordem');
    if pbanco=0 then la_instrucao:=la_instrucao+' and ';
    fInnerJoin(1,'cadpro' ,'pdcodemp','p1codemp' ,'pdcodpro','p2codpro');
    if pbanco=0 then la_instrucao:=la_instrucao+' and ';
    fInnerJoin(1,'cadcli' ,'ccodemp','p1codemp'  ,'ccodcli','p1codcli');
    if pbanco=0 then la_instrucao:=la_instrucao+' and ';
    fInnerJoin(0,'cadven' ,'vcodemp','p1codemp'  ,'vcodven','p1codven');
    if pbanco=0 then la_instrucao:=la_instrucao+' and ';
    fInnerJoin(0,'cadtra' ,'trcodemp','p1codemp' ,'trcodtra','p1codtra');
    if pbanco=0 then la_instrucao:=la_instrucao+' and ';
    fInnerJoin(1,'cadest' ,'cecodemp','p2codemp' ,'cecodpro','p2codpro');
    la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
    cadp01.close;
    cadp01.sql.Clear;
    cadp01.sql.add('select pdnomgru as grupo, pdnomram as subgrupo,p2codpro, pdnome, pdund,');
    cadp01.sql.add(' sum(p2qtd) as qtdvenda, sum(cesaldo) as qtdatual, sum(cesaldo+p2qtd-(p2qtd_entregue+p2qtd_entregando)) as qtfisico,');
    cadp01.sql.add(' sum(p2qtd-(p2qtd_entregue+p2qtd_entregando)) as separar, sum(p2qtd_entregando) as entregando ');
    cadp01.sql.add(' from cadp01 '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and '));

    cadp01.sql.add('     p1codemp <> 9999999');
    cadp01.sql.add(' and p1status<'+mstatus_excluido+'');

//// filtros

    if dtinicialf.Text <> '  /  /    ' then cadp01.sql.add(' and p1datap >= '+''''+dtinicialf.Text+'''');
    if dtfinalf.Text   <> '  /  /    ' then cadp01.sql.add(' and p1datap <= '+''''+dtfinalf.text+''''  );

    mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_cli);
    if trim(mcinst2) <> '' then  cadp01.sql.add(' and p1codcli '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codven,OMITIR_ven);
    if trim(mcinst2) <> '' then  cadp01.sql.add(' and p1codven '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_pro);
    if trim(mcinst2) <> '' then  cadp01.sql.add(' and p2codpro '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_gru);
    if trim(mcinst2) <> '' then  cadp01.sql.add(' and pdcodgru '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codram,OMITIR_ram);
    if trim(mcinst2) <> '' then  cadp01.sql.add(' and pdcodram '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codtra,OMITIR_TRA);
    if trim(mcinst2) <> '' then  cadp01.sql.add(' and p1codtra '+mcinst2);



    cadp01.sql.add(' group by pdnomgru,pdnomram,p2codpro,pdnome,pdund');




    cadp01.open;

    if cadp01.IsEmpty then
    begin
        showmessage('Não Existe Dados P/ Impressão');
        dtinicialf.SetFocus;
        impressao.Enabled := true;
        exit;
    end;

    lbl_periodo.Caption:=fperiodo(0,dtinicialf.Text,dtfinalf.Text);
    impressao.Enabled := true;

    if visualiza_imp.ItemIndex = 0 then
       begin
       RLReport1.PreviewModal
       end
    else
       RLReport1.Print;

    if tipo_imp.ItemIndex = 0 then
       RLReport1.DefaultFilter:=NIL
    else
       RLReport1.DefaultFilter:=RLDraftFilter1;

end;

procedure TFrm_ProdEntregar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_ProdEntregar.FormKeyDown(Sender: TObject; var Key: Word;
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

unit S_RFechaConh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, ExtCtrls, ComCtrls, DB, DBTables, RLXLSFilter,
  RLPDFFilter, RLHTMLFilter, RLFilters, RLRichFilter, RLDraftFilter,
  Gauges, Buttons, StdCtrls, Mask, S_SelEmp;

type
  TFrm_RFechaConh = class(TForm)
    DS_CADCON01: TDataSource;
    CADCON01: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
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
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDraftFilter1: TRLDraftFilter;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    db_vlrtot: TRLDBText;
    CADCON01C01CODEMP: TFloatField;
    CADCON01C01CODCON: TFloatField;
    CADCON01C01DATCON: TDateTimeField;
    CADCON01C01DATFEC: TDateTimeField;
    CADCON01C01QTDPED: TFloatField;
    CADCON01C01QTDITENS: TFloatField;
    CADCON01C01CODTRA: TFloatField;
    CADCON01C01PESOB: TFloatField;
    CADCON01C01QTDM3: TFloatField;
    CADCON01C01VLRTOT: TFloatField;
    CADCON01C01VALFRE: TFloatField;
    CADCON01C01VALFRE_DIG: TFloatField;
    CADCON01C01CODUSR_INC: TFloatField;
    CADCON01C01CODUSR_ALT: TFloatField;
    CADCON01C01DTHR_ALT: TDateTimeField;
    CADCON01C01QTDMAN: TFloatField;
    CADCON01C01ESTADO: TFloatField;
    CADCON01TRCODEMP: TFloatField;
    CADCON01TRCODTRA: TFloatField;
    CADCON01TRRAZTRA: TStringField;
    CADCON01TRFANTRA: TStringField;
    CADCON01TRTPLOG: TStringField;
    CADCON01TRNLOG: TStringField;
    CADCON01TRNUM: TStringField;
    CADCON01TRCOMPL: TStringField;
    CADCON01TRBAIRRO: TStringField;
    CADCON01TRCIDADE: TStringField;
    CADCON01TRUF: TStringField;
    CADCON01TRCODBAI: TFloatField;
    CADCON01TRCODLOC: TFloatField;
    CADCON01TRCEP: TStringField;
    CADCON01TRCNPJ: TFloatField;
    CADCON01TRIE: TStringField;
    CADCON01TRCNPF: TFloatField;
    CADCON01TRRG: TStringField;
    CADCON01TROBS: TStringField;
    CADCON01TRDTCAD: TDateTimeField;
    CADCON01TRSTATUS: TFloatField;
    CADCON01TRPLACAV: TStringField;
    CADCON01TRUFPV: TStringField;
    CADCON01TRFONE: TStringField;
    CADCON01TRFAX: TStringField;
    CADCON01TREMAIL: TStringField;
    CADCON01TRHOME: TStringField;
    db_valfre: TRLDBText;
    dtinicialf: TMaskEdit;
    dtfinalf: TMaskEdit;
    CODCONHE: TEdit;
    codtra: TEdit;
    impressao: TSpeedButton;
    RLBand3: TRLBand;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    dtinicialc: TMaskEdit;
    dtfinalc: TMaskEdit;
    ordem: TComboBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    StaticText4: TStaticText;
    OMITIR_TRA: TCheckBox;
    lbx_codtra: TListBox;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    visualiza_imp: TComboBox;
    StaticText3: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    tipo_imp: TComboBox;
    StaticText9: TStaticText;
    BitBtn1: TBitBtn;
    RLBand4: TRLBand;
    RLLabel25: TRLLabel;
    CADCON01valdif: TFloatField;
    lblt_und: TRLLabel;
    lblt_vlrtot: TRLLabel;
    RLDBText7: TRLDBText;
    lblt_valfre: TRLLabel;
    lblt_valdif: TRLLabel;
    RG_FILTRO: TRadioGroup;
    CADCON01datfec: TStringField;
    procedure dtinicialfExit(Sender: TObject);
    procedure dtfinalfExit(Sender: TObject);
    procedure impressaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtinicialcExit(Sender: TObject);
    procedure dtfinalcExit(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure DateTimePicker3Change(Sender: TObject);
    procedure DateTimePicker4Change(Sender: TObject);
    procedure codtraExit(Sender: TObject);
    procedure lbx_codtraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure codtraKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CADCON01CalcFields(DataSet: TDataSet);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
    end;

var
  Frm_RFechaConh: TFrm_RFechaConh;
  mtVlrTot, mtValFre, mtValDif: Real;
  mtUnd: Integer;
implementation

uses S_DM1, S_DM6, lerarq, Func, S_Tra, S_Emp;

{$R *.dfm}

procedure TFrm_RFechaConh.FormCreate(Sender: TObject);
begin
    Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
    CADCON01C01DATCON.DisplayFormat 	:= fdt2;
    CADCON01C01DATCON.DisplayFormat 	:= fdt2;
    CADCON01C01PESOB.DisplayFormat  	:= '#0.000';
    CADCON01C01QTDM3.DisplayFormat  	:= '#0.000';
    CADCON01C01VALFRE.DisplayFormat 	:= mcasas;
    CADCON01C01VALFRE_DIG.DisplayFormat := mcasas;
    CADCON01C01VLRTOT.DisplayFormat     := mcasas;
    CADCON01valdif.DisplayFormat        := mcasas;
    dtinicialf.Text :=FormatDateTime(fdt2, date);
    dtfinalf.Text   :=FormatDateTime(fdt2, date);

    TabSheet2.TabVisible                := false;
    ordem.ItemIndex         := 0;
    visualiza_imp.ItemIndex := 0;
    tipo_imp.ItemIndex      := 0;
end;

procedure TFrm_RFechaConh.dtinicialcExit(Sender: TObject);
begin
     if dtinicialc.Text <> '  /  /    ' then
     begin
        try
          dtinicialc.Text:=FormatDatetime('dd/mm/yyyy',StrtoDate(dtinicialc.Text));
        except
          ShowMessage('Data Inicial Invalida!');
          dtinicialc.SetFocus;
        end;
     end;

end;

procedure TFrm_RFechaConh.dtfinalcExit(Sender: TObject);
begin
     if dtfinalc.Text <> '  /  /    ' then
     begin
        try
          dtfinalc.Text:=FormatDatetime('dd/mm/yyyy',StrtoDate(dtfinalc.Text));
        except
          ShowMessage('Data Final Invalida!');
          dtfinalc.SetFocus;
        end;
     end;

end;

procedure TFrm_RFechaConh.dtinicialfExit(Sender: TObject);
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

procedure TFrm_RFechaConh.dtfinalfExit(Sender: TObject);
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

procedure TFrm_RFechaConh.impressaoClick(Sender: TObject);
begin

    impressao.Enabled := false;

    la_tabelas  :='';
    la_Join     :='';
    la_instrucao:='';

    fInnerJoin(1,'CADTRA' ,'TRCODEMP','C01CODEMP' ,'TRCODTRA' ,'C01CODTRA');

    if DM1.Qr_Tid.Locate('TINOME','CADCON01',[]) then
       la_Empresas:=''
    else
       la_Empresas:=fla_sqlmp('C01CODEMP',Form_SelEmp.CLB_EMPRESAS);


    cadcon01.close;
    cadcon01.sql.Clear;
    cadcon01.sql.add('select * from CADCON01 '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and '));

    cadcon01.sql.add(' c01codemp >=0');

//// filtros
    if dtinicialf.Text <> '  /  /    ' then cadcon01.sql.add(' and c01datfec >= '+''''+dtinicialf.Text+'''');
    if dtfinalf.Text   <> '  /  /    ' then cadcon01.sql.add(' and c01datfec <= '+''''+dtfinalf.text+''''  );
    if dtinicialc.Text <> '  /  /    ' then cadcon01.sql.add(' and c01datcon >= '+''''+dtinicialc.Text+'''');
    if dtfinalc.Text   <> '  /  /    ' then cadcon01.sql.add(' and c01datcon <= '+''''+dtfinalc.Text+''''  );
    if CODCONHE.Text   <> ''           then cadcon01.sql.add(' and c01codcon =  '+''''+CODCONHE.Text+''''  );

    mcinst2:=fItensListBox(0,lbx_codtra,OMITIR_TRA);
    if trim(mcinst2) <> '' then  cadcon01.sql.add(' and c01codtra '+mcinst2);

   if RG_FILTRO.ItemIndex=0 then
      cadcon01.sql.add(' and (C01DATFEC IS NULL OR C01DATFEC<='+chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+' )')
   else if RG_FILTRO.ItemIndex=1 then
      cadcon01.sql.add(' and C01DATFEC>'+chr(39)+FormatDatetime(fdt, pdatanula)+chr(39));


//// ordem
    if ordem.ItemIndex = 0 then cadcon01.sql.add(' order by c01datfec');
    if ordem.ItemIndex = 1 then cadcon01.sql.add(' order by c01datcon');
    if ordem.ItemIndex = 2 then cadcon01.sql.add(' order by c01codcon');
    if ordem.ItemIndex = 3 then cadcon01.sql.add(' order by c01codtra');


    cadcon01.open;

    if cadcon01.IsEmpty then
    begin
        showmessage('Não Existe Dados P/ Impressão');
        dtinicialf.SetFocus;
        impressao.Enabled := true;
        exit;
    end;

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

       
    impressao.Enabled := true;

end;

procedure TFrm_RFechaConh.DateTimePicker1Change(Sender: TObject);
begin

    dtinicialf.Text := FormatDateTime('DD/MM/YYYY',DateTimePicker1.Date);
end;

procedure TFrm_RFechaConh.DateTimePicker2Change(Sender: TObject);
begin
    dtfinalf.Text := FormatDateTime('DD/MM/YYYY',DateTimePicker2.Date);
end;

procedure TFrm_RFechaConh.DateTimePicker3Change(Sender: TObject);
begin
    dtinicialc.Text := FormatDateTime('DD/MM/YYYY',DateTimePicker3.Date);
end;

procedure TFrm_RFechaConh.DateTimePicker4Change(Sender: TObject);
begin
    dtfinalc.Text := FormatDateTime('DD/MM/YYYY',DateTimePicker4.Date);
end;

procedure TFrm_RFechaConh.codtraExit(Sender: TObject);
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
      MessageDlg('Trnasportador não Cadastrado!',mtWarning,[mbOk],0);
      codtra.text := '';
      codtra.SetFocus;
      end;
   end;

end;

procedure TFrm_RFechaConh.lbx_codtraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codtra.ItemIndex>=0 then
      lbx_codtra.Items.Delete(lbx_codtra.ItemIndex);

end;

procedure TFrm_RFechaConh.codtraKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_RFechaConh.BitBtn1Click(Sender: TObject);
begin
    close;
end;

procedure TFrm_RFechaConh.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_RFechaConh.CADCON01CalcFields(DataSet: TDataSet);
begin
CADCON01valdif.Value:=CADCON01C01VALFRE_DIG.Value-CADCON01C01VALFRE.Value;
if CADCON01C01DATFEC.AsDateTime>pdatanula then
   CADCON01datfec.Value:=FormatDatetime(fdt2, CADCON01C01DATFEC.Value)
else
   CADCON01datfec.Value:='';   
end;

procedure TFrm_RFechaConh.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  mtVlrTot:=0;
  mtValFre:=0;
  mtValDif:=0;
  mTUnd   :=0;
end;

procedure TFrm_RFechaConh.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  mtVlrTot:=mtVlrTot+CADCON01C01VLRTOT.Value;
  mtValFre:=mtValFre+CADCON01C01VALFRE.Value;
  mtValDif:=mtValDif+CADCON01valdif.Value;
  mtUnd:=mTUnd+1;
end;

procedure TFrm_RFechaConh.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  lblt_und.Caption   :=InttoStr(mtUnd);
  lblt_vlrtot.Caption:=FormatFloat(mcasas, mtVlrTot);
  lblt_valfre.Caption:=FormatFloat(mcasas, mtValFre);
  lblt_valdif.Caption:=FormatFloat(mcasas, mtValDif);

  mtVlrTot:=0;
  mtValFre:=0;
  mtValDif:=0;
  mTUnd   :=0;

end;

procedure TFrm_RFechaConh.FormKeyDown(Sender: TObject; var Key: Word;
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

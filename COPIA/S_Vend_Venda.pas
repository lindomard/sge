unit S_Vend_Venda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask,func,S_Ven, DB, DBTables, Grids, S_SelEmp,
  DBGrids, Buttons,lerarq;

type
  TFrm_Vend_Venda = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    gb_cab: TGroupBox;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    Label26: TLabel;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    Label1: TLabel;
    MMES: TEdit;
    Label4: TLabel;
    MANO: TEdit;
    Qr_TotVda: TQuery;
    Src_TotVda: TDataSource;
    DBGrid1: TDBGrid;
    ST_CABTOTVDA: TStaticText;
    ST_CABDEVOL: TStaticText;
    ST_CABTOTLIQ: TStaticText;
    ST_CABCOMISSAO: TStaticText;
    ST_CABCOTA: TStaticText;
    ST_CABPERC: TStaticText;
    ST_TOTVDA: TStaticText;
    ST_DEVOL: TStaticText;
    ST_TOTLIQ: TStaticText;
    ST_COMISSAO: TStaticText;
    ST_COTA: TStaticText;
    ST_PERC: TStaticText;
    bbSair: TBitBtn;
    BBATUALIZAR: TBitBtn;
    Qr_TotVdaCODVEN: TFloatField;
    Qr_TotVdaNOMEVEN: TStringField;
    Qr_TotVdaVLRCOMISSAO_EXTRA: TFloatField;
    Qr_TotVdaVLRCOMISSAO_EXTRA_DEV: TFloatField;
    Qr_TotVdaVCALCCOMISSAO: TFloatField;
    Qr_TotVdaVCALCCOMISSAO_DEV: TFloatField;
    Qr_TotVdaVCALCCOMISSAO_EXTRA: TFloatField;
    Qr_TotVdaVCALCCOMISSAO_DEV_EXTRA: TFloatField;
    Qr_TotVdaVLRTOTAL: TFloatField;
    Qr_TotVdaVLRTOTAL_DEV: TFloatField;
    Qr_TotVdaPED: TFloatField;
    Qr_TotVdaPED_DEV: TFloatField;
    Qr_TotVdaP1DATAP: TDateTimeField;
    ST_CABQTDPED: TStaticText;
    ST_QTDPED: TStaticText;
    ST_CABQTDPEDDEV: TStaticText;
    ST_QTDPEDDEV: TStaticText;
    Qr_TotVdavalorcomisliq: TFloatField;
    Qr_TotVdaqtddev: TFloatField;
    Qr_TotVdaqtdped: TFloatField;
    Qr_TotVdatotalliq: TFloatField;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure MMESExit(Sender: TObject);
    procedure MANOExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbSairClick(Sender: TObject);
    procedure BBATUALIZARClick(Sender: TObject);
    procedure Qr_TotVdaCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_Vend_Venda: TFrm_Vend_Venda;
  mDataPesq: String;

implementation

uses S_DM1, S_DM4;

{$R *.dfm}

procedure TFrm_Vend_Venda.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2, StrToDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_Vend_Venda.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2, StrToDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      end;
   end;

end;

procedure TFrm_Vend_Venda.MMESExit(Sender: TObject);
begin
fdeixanum2(MMES.Text);
if trim(MMES.Text)<>'' then
   begin
   if (valint(MMES.Text)<1) or (valint(MMES.Text)>12) then
      begin
      fmensagem('Mês Inválido!',0,['0'],0);
      MMES.SetFocus;
      end
   else
      begin
      if trim(MANO.Text)='' then
         begin
         MANO.Text:=formatDatetime('yyyy',Date);
         end;
      MANOExit(self);
      end;
   end;
end;

procedure TFrm_Vend_Venda.MANOExit(Sender: TObject);
begin
fdeixanum2(MANO.Text);
if MMES.Text<>'' then
   begin
   if ValInt(MANO.Text)<2000 then
      MANO.Text:=Inttostr(ValInt(MANO.Text)+2000);
   MDT1.Text:='01/'+FormatFloat('00',Valint(MMES.Text))+'/'+FormatFloat('0000',ValInt(MANO.Text));
   MDT2.Text:=FormatDatetime(fdt2, fultdiames(StrToDate(MDT1.Text)));
   end;
end;

procedure TFrm_Vend_Venda.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text :=fChamaVen(0,'frm_Vend_Venda',Key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Vend_Venda.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if trim(CODVEN.Text)='' then
   exit;
if not flqr1('VNOME','V','CADVEN','N','VCODVEN',CODVEN.Text) then
   begin
   fmensagem('Vendedor não Cadastrado!',0,['0'],0);
   if CODVEN.Enabled then
      CODVEN.SetFocus;
   end
else
   begin
   lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.Text))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   CODVEN.text := '';
   if CODVEN.Enabled then
      CODVEN.SetFocus;
   end;


end;

procedure TFrm_Vend_Venda.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_Vend_Venda.bbSairClick(Sender: TObject);
begin
close;

end;

procedure TFrm_Vend_Venda.BBATUALIZARClick(Sender: TObject);
begin
DM1.Query5.close;
ST_TOTVDA.Caption   :=FormatFloat(mcasas, 0);
ST_QTDPED.Caption   :='0';
ST_DEVOL.Caption    :=FormatFloat(mcasas, 0);
ST_QTDPEDDEV.Caption:='0';
ST_TOTLIQ.Caption   :=FormatFloat(mcasas, 0);
ST_COMISSAO.Caption :=FormatFloat(mcasas, 0);
ST_TOTVDA.Caption   :=FormatFloat(mcasas, 0);
ST_COTA.Caption     :=FormatFloat(mcasas, 0);
ST_PERC.Caption     :=FormatFloat(mcasas, 0);




if trim(MDT1.Text)='/  /' then
   begin
   fmensagem('Favor Digitar uma data válida!',0,['0'],0);
   exit;
   end;
if trim(MDT2.Text)='/  /' then
   begin
   fmensagem('Favor Digitar uma data válida!',0,['0'],0);
   exit;
   end;
if StrToDate(MDT1.Text)>StrToDate(MDT2.Text) then
   begin
   fmensagem('Data Inicial Maior que Final, Inválido!',0,['0'],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('Select sum(CVCOTAVLR) AS COTAVLR, sum(CVCOTAQTD) as COTAQTD '
                  +' from CADVEN_COTAMES ');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADVEN',[]) then
   begin
   DM1.query1.SQL.add(mcinst+' CVCODEMP=0'+IntTostr(codemp));
   mcinst:=' and ';
   end;
if trim(MDT1.Text)<>'/  /' then
   begin
   DM1.query1.SQL.add(mcinst+' CVANO>='+FormatDatetime('yyyy', StrToDate(MDT1.Text))
                     +' and CVMES>='+FormatDatetime('mm', StrToDate(MDT1.Text)));
   mcinst:=' and ';
   end;

if trim(MDT2.Text)<>'/  /' then
   begin
   DM1.query1.SQL.add(mcinst+' CVANO<='+FormatDatetime('yyyy', StrToDate(MDT2.Text))
                     +' and CVMES<='+FormatDatetime('mm', StrToDate(MDT2.Text)));
   mcinst:=' and ';
   end;
mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CVCODVEN '+mcinst2);

DM1.Query1.Open;
DM1.query1.SQL.SaveToFile('c:\sql.txt');
ST_COTA.Caption     :=FormatFloat(mcasas, DM1.query1.FieldbyName('COTAVLR').AsFloat);


if DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
mDataPesq:='P1DATAP';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
if (pbanco=0) and (trim(la_instrucao)<>'') then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin4(1,'cadp02' ,'p2codemp','p1codemp' ,'p2lotseq' ,'p1lotseq','p2chave' ,'p1chave','p2ordem' ,'p1ordem');

if (pbanco=0) and (trim(la_instrucao)<>'') then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADVEN' ,'VCODEMP','P1CODEMP' ,'VCODVEN' ,'P1CODVEN');


Qr_TotVda.close;
Qr_TotVda.SQL.Clear;
Qr_TotVda.sql.Add('select P1DATAP,p1codven as codven,vnome as nomeven, '
                 +'       Sum(decode(p1tipo '
                 +'       ,8,0 '
                 +'       ,12,0 '
                 +'       ,13,0 '
                 +'       ,19,0 '
                 +'       ,p2vcomis) '
                 +'       ) as VlrComissao, '
                 +' Sum(decode(p1tipo '
                 +'       ,8,p2vcomis '
                 +'       ,12,p2vcomis '
                 +'       ,13,p2vcomis '
                 +'       ,19,p2vcomis '
                 +'       ,0) '
                 +'       ) as VlrComissao_dev, '
                 +'  Sum(decode(p1tipo '
                 +'       ,8,0 '
                 +'       ,12,0 '
                 +'       ,13,0 '
                 +'       ,19,0 '
                 +'       ,P2VCOMIS_EXTRA) '
                 +'        ) as VlrComissao_extra, '
                 +' Sum(decode(p1tipo '
                 +'       ,8,P2VCOMIS_EXTRA '
                 +'       ,12,P2VCOMIS_EXTRA '
                 +'       ,13,P2VCOMIS_EXTRA '
                 +'       ,19,P2VCOMIS_EXTRA '
                 +'       ,0) '
                 +'       ) as VlrComissao_extra_dev, '
                 +' Sum(decode(p1tipo '
                 +'       ,8,0 '
                 +'       ,12,0 '
                 +'       ,13,0 '
                 +'       ,19,0 '
                 +'       ,  (( (P2QTD*P2PRECO)-P2TOTDES) *p2Pcomis/100) '
                 +'                   ) '
                 +'       )  as VCalcComissao, '
                 +' Sum(decode(p1tipo '
                 +'       ,8,  (( (P2QTD*P2PRECO)-P2TOTDES)*p2Pcomis/100) '
                 +'       ,12,(( (P2QTD*P2PRECO)-P2TOTDES)*p2Pcomis/100) '
                 +'       ,13,(( (P2QTD*P2PRECO)-P2TOTDES)*p2Pcomis/100) '
                 +'       ,19,(( (P2QTD*P2PRECO)-P2TOTDES)*p2Pcomis/100) '
                 +'       ,0) '
                 +'       ) as VCalcComissao_dev, '
                 +' Sum(decode(p1tipo '
                 +'       ,8,0 '
                 +'       ,12,0 '
                 +'       ,13,0 '
                 +'       ,19,0 '
                 +'       , (( (P2QTD*P2PRECO)-P2TOTDES)*P2PCOMIS_EXTRA/100) '
                 +'       ) '
                 +'       ) as VCalcComissao_extra, '
                 +' Sum(decode(p1tipo '
                 +'        ,8,(( (P2QTD*P2PRECO)-P2TOTDES)*P2PCOMIS_EXTRA/100) '
                 +'       ,12,(( (P2QTD*P2PRECO)-P2TOTDES)*P2PCOMIS_EXTRA/100) '
                 +'       ,13,(( (P2QTD*P2PRECO)-P2TOTDES)*P2PCOMIS_EXTRA/100) '
                 +'       ,19,(( (P2QTD*P2PRECO)-P2TOTDES)*P2PCOMIS_EXTRA/100) '
                 +'       ,0) '
                 +'       ) as VCalcComissao_dev_extra, '
                 +' Sum(decode(p1tipo '
                 +'        ,8,0 '
                 +'       ,12,0 '
                 +'       ,13,0 '
                 +'       ,19,0 '
                 +'       ,(p2qtd*p2preco) ) '
                 +'       )  as valorsdesc, '
                 +' Sum(decode(p1tipo '
                 +'       ,8,(p2qtd*p2preco) '
                 +'       ,12,(p2qtd*p2preco) '
                 +'       ,13,(p2qtd*p2preco) '
                 +'       ,19,(p2qtd*p2preco) '
                 +'       ,0 ) '
                 +'       )  as valorsdesc_dev, '
                 +' Sum(decode(p1tipo '
                 +'       ,8,0 '
                 +'       ,12,0 '
                 +'       ,13,0 '
                 +'       ,19,0 '
                 +'       ,(p2totliq-p2descrat) ) '
                 +'        ) as vlrtotal, '
                 +' Sum(decode(p1tipo '
                 +'       ,8,(p2totliq-p2descrat) '
                 +'        ,12,(p2totliq-p2descrat) '
                 +'       ,13,(p2totliq-p2descrat) '
                 +'       ,19,(p2totliq-p2descrat) '
                 +'       ,0 ) '
                 +'       ) as vlrtotal_dev, '
                 +' Sum(decode(p1tipo '
                 +'       ,8,0 '
                 +'       ,12,0 '
                 +'       ,13,0 '
                 +'       ,19,0 '
                 +'       ,1  ) '
                 +'        ) as ped, '
                 +' Sum(decode(p1tipo '
                 +'        ,8,1 '
                 +'       ,12,1 '
                 +'       ,13,1 '
                 +'       ,19,1 '
                 +'        ,0  ) '
                 +'       ) as ped_dev '
                 +' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=P1CODEMP and ')
                 +' P2LOTSEQ=P1LOTSEQ '
                 + ' and P2CHAVE=P1CHAVE and P1TIPO<>0 AND P1TIPO<>10 '
                 +iif(la_instrucao='','',' and '+la_instrucao)
                 +' and P1STATUS <9 ');
if trim(MDT1.Text)<>'/  /'then
   Qr_TotVda.SQL.Add(' and '+mDataPesq+'>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /'then
   Qr_TotVda.SQL.Add(' and '+mDataPesq+'<='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT2.Text))+chr(39));

Qr_TotVda.SQL.Add(' and P1EMIDOC<>0');

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   Qr_TotVda.SQL.Add(' and P1CODVEN '+mcinst2);
Qr_TotVda.Sql.Add(' Group by '+mDataPesq+',P1CODVEN,VNOME');
Qr_TotVda.Sql.SaveToFile('c:\sqlcomis.txt');

Qr_TotVda.Open;


DM1.Query5.close;
DM1.Query5.Sql.Clear;
DM1.Query5.Sql.Add(' select p1codven,P1DATAP, '
                  +' Sum (decode(p1tipo '
                  +' ,8,0 '
                  +' ,12,0 '
                  +' ,13,0 '
                  +' ,19,0 '
                  +'  ,1 ) ) as qtdped '
                  +', Sum (decode(p1tipo '
                  +' ,8,1 '
                  +' ,12,1 '
                  +' ,13,1 '
                  +' ,19,1 '
                  +'  ,0 ) ) as qtddev '
                  +' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +' P1TIPO<>0 AND P1TIPO<>10 '
                  +iif(la_instrucao='','',' and '+la_instrucao)
                  +' and P1STATUS <9 ');
if trim(MDT1.Text)<>'/  /'then
   DM1.Query5.SQL.Add(' and '+mDataPesq+'>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /'then
   DM1.Query5.SQL.Add(' and '+mDataPesq+'<='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT2.Text))+chr(39));

DM1.Query5.SQL.Add(' and P1EMIDOC<>0');

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   DM1.Query5.SQL.Add(' and P1CODVEN '+mcinst2);

DM1.Query5.SQL.add(' group by '
                  +' p1codven,P1DATAP ');

DM1.Query5.Open;
DM1.Query5.sql.SaveToFile('c:\sql02.txt');

Qr_TotVda.First;
While not Qr_TotVda.Eof do
   begin
   ST_TOTVDA.Caption   :=FormatFloat(mcasas, ValFloat(ST_TOTVDA.Caption)+Qr_TotVdaVLRTOTAL.Value);
   ST_QTDPED.Caption   :=FloatToStr(ValFloat(ST_QTDPED.Caption)+Qr_TotVdaqtdped.AsFloat);
   ST_DEVOL.Caption    :=FormatFloat(mcasas, ValFloat(ST_DEVOL.Caption)+Qr_TotVdaVLRTOTAL_DEV.Value);
   ST_QTDPEDDEV.Caption:=FloatToStr(ValFloat(ST_QTDPEDDEV.Caption)+Qr_TotVdaqtddev.AsFloat);
   ST_TOTLIQ.Caption   :=FormatFloat(mcasas, ValFloat(ST_TOTLIQ.Caption)+Qr_TotVdaVLRTOTAL.AsFloat-Qr_TotVdaVLRTOTAL_DEV.AsFloat);
   ST_COMISSAO.Caption :=FormatFloat(mcasas, ValFloat(ST_COMISSAO.Caption)+Qr_TotVdavalorcomisliq.Value);
   Qr_TotVda.Next;
   end;
if (ValFloat(ST_TOTLIQ.Caption)<>0) and (ValFloat(ST_COTA.Caption)<>0) then
   ST_PERC.Caption     :=FormatFloat(mcasas, (valFloat(ST_TOTLIQ.Caption)*100)/ValFloat(ST_COTA.Caption));

end;

procedure TFrm_Vend_Venda.Qr_TotVdaCalcFields(DataSet: TDataSet);
begin
Qr_TotVdatotalliq.Value     :=Qr_TotVdaVLRTOTAL.Value-Qr_TotVdaVLRTOTAL_DEV.Value;
Qr_TotVdavalorcomisliq.Value:=Qr_TotVdaVCALCCOMISSAO.Value-Qr_TotVdaVCALCCOMISSAO_DEV.Value;
Qr_TotVdaqtddev.Value:=0;
Qr_TotVdaqtdped.Value:=0;

if DM1.Query5.Active then
   begin
   if DM1.Query5.Locate('P1CODVEN;P1DATAP',VarArrayOf([Qr_TotVdaCODVEN.Value,Qr_totVdaP1DATAP.Value]),[]) then
//      DM4.Tb_Ven_CotaMes.Locate('CVANO;CVMES',vararrayof([fsonumero(ano.Text),fsonumero(MES.Text)]),[])
//   if DM1.Query5.Locate('P1CODVEN',Qr_TotVdaCODVEN.Value,[]) then
      begin
      Qr_TotVdaqtddev.Value:=DM1.Query5.fieldbyName('qtddev').AsFloat;
      Qr_TotVdaqtdped.Value:=DM1.Query5.fieldbyName('qtdped').AsFloat;
      end;
   end;

end;

procedure TFrm_Vend_Venda.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

Qr_TotVdaP1DATAP.DisplayFormat      :=fdt2;
Qr_TotVdaVLRTOTAL.DisplayFormat     :=mcasas;
Qr_TotVdaVLRTOTAL_DEV.DisplayFormat :=mcasas;
Qr_TotVdaqtddev.DisplayFormat       :=mcasqtd;
Qr_TotVdaqtdped.DisplayFormat       :=mcasqtd;
Qr_TotVdavalorcomisliq.DisplayFormat:=mcasas;
Qr_TotVdatotalliq.DisplayFormat     :=mcasas;

if (log_codven<>0) and (DM1.Tb_PargerPLOGUSRPED.AsInteger=1) then
   begin
   MMES.Text:=FormatDateTime('mm', date);
   MANO.Text:=FormatDateTime('yyyy', date);
   MANOExit(self);
   CODVEN.Text:=FloatToStr(log_codven);
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',CODVEN.Text) then
      begin
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.Text))
                                      +' - '+DM1.Query1.Fields[0].AsString);
      CODVEN.text := '';
      end;
   MDT1.Enabled      :=false;
   MDT2.Enabled      :=false;
   CODVEN.Enabled    :=False;
   lbx_codven.Enabled:=False;
   OMITIR_VEN.Enabled:=false;
   BBATUALIZAR.Click;
   end;

end;

procedure TFrm_Vend_Venda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Vend_Venda.FormActivate(Sender: TObject);
begin
SetWindowPos (Handle, HWND_TOPMOST, Left, Top, Width, Height, SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);

end;

procedure TFrm_Vend_Venda.FormKeyDown(Sender: TObject; var Key: Word;
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

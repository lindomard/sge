unit S_Rel_For;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, RLReport, Mask,func,lerarq, DB, DBTables,
  Buttons, RLFilters, RLXLSFilter, CheckLst;

type
  TFrm_Rel_For = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label5: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    Label2: TLabel;
    CODLOC: TEdit;
    lbx_codloc: TListBox;
    OMITIR_LOC: TCheckBox;
    Label10: TLabel;
    CODUF: TEdit;
    lbx_coduf: TListBox;
    OMITIR_UF: TCheckBox;
    Label1: TLabel;
    CB_CODBLOQ: TComboBox;
    Label3: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label4: TLabel;
    CB_INFQUALIF: TCheckBox;
    tsRelatorio: TTabSheet;
    RLReport1: TRLReport;
    rlband_cabger: TRLBand;
    RLDBText1: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    rlTitulo: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLBand_filtros: TRLBand;
    filtros: TRLMemo;
    Qr_For: TQuery;
    Label6: TLabel;
    CODGFOR: TEdit;
    lbx_codgfor: TListBox;
    OMITIR_GFOR: TCheckBox;
    bbImprimir: TBitBtn;
    Qr_ForFCODFOR: TFloatField;
    Qr_ForFRAZAO: TStringField;
    Qr_ForFDENOM: TStringField;
    Qr_ForFCIDADE: TStringField;
    Qr_ForFUF: TStringField;
    Qr_ForFIE: TStringField;
    Qr_ForFFONE: TStringField;
    Qr_ForFFAX: TStringField;
    Src_For: TDataSource;
    Qr_ForCIDADE_UF: TStringField;
    Qr_Forstatus: TStringField;
    Qr_ForFCODBLOQ: TFloatField;
    Qr_ForFDATHOR_BLOQ: TDateTimeField;
    Qr_ForFB_CODFOR: TFloatField;
    Qr_ForFB_BLOQUEIO: TFloatField;
    Qr_ForFB_MOTIVO: TStringField;
    Qr_ForFB_DATHOR: TDateTimeField;
    Qr_ForFB_SEQ: TFloatField;
    Qr_ForFB_CODUSR: TFloatField;
    Qr_Forstatus_bloq: TStringField;
    CB_BORDAS: TCheckBox;
    bbSair: TBitBtn;
    Qr_ForFMOTBLOQ: TStringField;
    rlRodape: TRLBand;
    rlobsger: TRLLabel;
    RLBand_rodpag: TRLBand;
    RLGroup1: TRLGroup;
    rlband_grupo01: TRLBand;
    Qr_ForNOMGRU: TStringField;
    RLDBText2: TRLDBText;
    rlCabDet: TRLBand;
    lbl_cadcod: TRLLabel;
    lbl_razsoc: TRLLabel;
    lbl_cidade: TRLLabel;
    lbl_cabfone: TRLLabel;
    lbl_cabstatus: TRLLabel;
    rlBand_Group: TRLGroup;
    RLBand_cabdet: TRLBand;
    lbl_detCodPro: TRLDBText;
    lbl_detrazsoc: TRLDBText;
    lbl_detcidade: TRLDBText;
    lbl_detcabfone: TRLDBText;
    lbl_detstatus: TRLDBText;
    RLBand_detstatus: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText4: TRLDBText;
    RLBand_detmot: TRLBand;
    RLDBMemo1: TRLDBMemo;
    Label7: TLabel;
    CB_SEPAR: TComboBox;
    RLXLSFilter1: TRLXLSFilter;
    Qr_ForFCGC: TStringField;
    StaticText10: TStaticText;
    CLBStatus: TCheckListBox;
    StaticText1: TStaticText;
    clbTipoFornecedor: TCheckListBox;
    StaticText2: TStaticText;
    clbtipoDesp: TCheckListBox;
    StaticText3: TStaticText;
    clb_crt: TCheckListBox;
    Qr_ForFCRT: TFloatField;
    Qr_ForFCRT_NOME: TStringField;
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODLOCExit(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODUFExit(Sender: TObject);
    procedure CODUFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODGFORExit(Sender: TObject);
    procedure CODGFORKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codgforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure Qr_ForCalcFields(DataSet: TDataSet);
    procedure CB_BORDASClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand_cabdetBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rlRodapeBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CLBStatusClick(Sender: TObject);
    procedure clbTipoFornecedorClick(Sender: TObject);
    procedure clbtipoDespClick(Sender: TObject);
    procedure clb_crtClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Rel_For: TFrm_Rel_For;
  mQtdFor,mQtdBloq: Integer;
implementation

uses S_DM1, Math;

{$R *.dfm}

procedure TFrm_Rel_For.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)='' then
   CODFOR.Text:=''
else
   begin
   if not flcadfor(1,0,CODFOR.Text) then
      begin
      fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
      CODFOR.TEXT := '';
      CODfor.SetFocus;
      end
   else
      begin
      Lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      codfor.text := '';
      CODFOR.SetFocus;
      end;
   end;


end;

procedure TFrm_Rel_For.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_FABC',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Rel_For.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_Rel_For.CODLOCExit(Sender: TObject);
begin
CODLOC.Text:=fdeixanum2(CODLOC.Text);
if Trim(CODLOC.Text)<>'' then
   begin
   if flqr1('LNOME,LUF','L','CADLOC','N','LCODLOC',CODLOC.Text) then
   BEGIN
      lbx_codloc.Items.Add(FormatFloat('0000000',StrToFloat(CODLOC.TEXT))
                                    +' - '+DM1.Query1.fields[0].AsString);
      CODLOC.text := '';
      CODLOC.SetFocus;
   END else
      begin
      fmensagem('Cidade não Cadastrada!',0,['0'],0);
      CODLOC.text := '';
      CODLOC.SetFocus;
      end;
   end;


end;

procedure TFrm_Rel_For.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_Tab_CLi',Key);
   CODLOCExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Rel_For.lbx_codlocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);

end;

procedure TFrm_Rel_For.CODUFExit(Sender: TObject);
begin
if Trim(CODUF.Text)<>'' then
   begin
   if not flcaduf(0,0,0,CODUF.Text) then
      begin
      fmensagem('Estado nao Cadastrado!',0,['0'],0);
      CODUF.SetFocus;
      end
   else
      lbx_coduf.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'-'+DM1.Tb_UFPNOM.AsString);
      coduf.text := '';
   end;


end;

procedure TFrm_Rel_For.CODUFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=114 then
   begin
   lbx_coduf.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'-'+DM1.Tb_UFPNOM.AsString);
   coduf.text := '';
   coduf.SetFocus;
   end;


end;

procedure TFrm_Rel_For.lbx_codufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);

end;

procedure TFrm_Rel_For.CODGFORExit(Sender: TObject);
begin
CODGFOR.Text:=fdeixanum2(CODGFOR.Text);
if Trim(CODGFOR.Text)<>'' then
   begin
   if flqr1('GFNOME','GF','CADGFOR','N','GFCODGRU',CODGFOR.Text) then
      begin
      lbx_codgfor.Items.Add(FormatFloat('0000000',StrToFloat(CODGFOR.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codgfor.ItemIndex:=lbx_codgfor.Items.Count-1;
      CODGFOR.text := '';
      CODGFOR.SetFocus;
      end
   else
      begin
      fmensagem('Grupo de Fornecedor não Cadastrado!',0,['0'],0);
      CODGFOR.text := '';
      CODGFOR.SetFocus;
      end;
   end;


end;

procedure TFrm_Rel_For.CODGFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGFOR.Text:=fChamaGFOR(0,'frm_Vend_RelGFor',Key);
   if trim(CODGFOR.Text)<>'' then
      CODGFORExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Rel_For.lbx_codgforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codgfor.ItemIndex>=0 then
      lbx_codgfor.Items.Delete(lbx_codgfor.ItemIndex);

end;

procedure TFrm_Rel_For.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_Rel_For.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_Rel_For.bbImprimirClick(Sender: TObject);
var
mCampoOrdem,mCampoGrupo: String;
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      fmensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

if CB_SEPAR.ItemIndex=0 then
   begin
   mCampoOrdem:='FBAIRRO,FCIDADE,FUF';
   mCampoGrupo:='FBAIRRO';
   end
else if CB_SEPAR.ItemIndex=1 then
   begin
   mCampoOrdem:='FCIDADE,FUF';
   mCampoGrupo:='FCIDADE ';
   end
else if CB_SEPAR.ItemIndex=2 then
   begin
   mCampoOrdem:='FUF';
   mCampoGrupo:='FUF';
   end
else if CB_SEPAR.ItemIndex=3 then
   begin
   fInnerJoin(0,'CADGFOR','GFCODEMP','FCODEMP','GFCODGRU','FCODGFOR');
   mCampoOrdem:='GFNOME,GFCODGRU';
   mCampoGrupo:='GFNOME';
   end
else if CB_SEPAR.ItemIndex=4 then
   begin
   mCampoOrdem:='FCRT_NOME';
   mCampoGrupo:='TO_CHAR(FCRT) || '+quotedstr(' ')+' || '
                 +' case when FCRT=0 then '+QuotedStr(clb_crt.Items[0])
              +'      when FCRT=1 then '+QuotedStr(clb_crt.Items[1])
              +'      when FCRT=2 then '+QuotedStr(clb_crt.Items[2])
              +'      when FCRT=3 then '+QuotedStr(clb_crt.Items[3])
              +'      else '+ quotedstr('indefinido') +' end ';
   end

else
   begin
   mCampoOrdem:='';
   mCampoGrupo:=chr(39)+insere2(' ',' ',40)+chr(39);
   end;



Qr_For.Close;
Qr_For.SQL.Clear;
Qr_For.SQL.Add('Select FCODFOR,FRAZAO,FDENOM,FCIDADE,FUF,FCGC,FIE '
              +',FCRT '
              +', case when FCRT=0 then '+QuotedStr(clb_crt.Items[0])
              +'      when FCRT=1 then '+QuotedStr(clb_crt.Items[1])
              +'      when FCRT=2 then '+QuotedStr(clb_crt.Items[2])
              +'      when FCRT=3 then '+QuotedStr(clb_crt.Items[3])
              +'      else '+ quotedstr('indefinido') +' end '
              +' as FCRT_NOME '


              +' ,FFONE,FFAX '
              +' , FCIDADE ||'+chr(39)+'-'+chr(39)+'|| FUF AS CIDADE_UF '
              +', FCODBLOQ , FMOTBLOQ, FDATHOR_BLOQ '
              +','+mCampoGrupo+' AS NOMGRU '
              );


if CB_INFQUALIF.Checked then
   begin
   if trim(la_instrucao)<>'' then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADFOR_BLOQ','FB_CODEMP','FCODEMP','FB_CODFOR','FCODFOR');
   Qr_For.SQL.Add(',FB_CODFOR, '
   +' FB_BLOQUEIO,FB_MOTIVO,FB_DATHOR '
   +',FB_SEQ,FB_CODUSR ');
   end
else
   begin
   Qr_For.SQL.Add(',0 as FB_CODFOR, '
   +' 0 as FB_BLOQUEIO,'+chr(39)+' '+chr(39)+' as FB_MOTIVO, SYSDATE AS FB_DATHOR '
   +',0 AS FB_SEQ,0 AS FB_CODUSR ');
   end;
Qr_For.SQL.Add(' from CADFOR '+iif(la_tabelas='','',',')+la_tabelas
                      +'       '+la_Join
                      +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                      +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                      +' FSTATUS<>999999 '
                      +iif(DM1.Qr_TID.locate('TINOME','CADFOR',[]),'',' and FCODEMP=0'+IntToStr(codemp))
                      );

mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   Qr_For.SQL.Add(' and FCODFOR '+mcinst2);

mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then
   Qr_For.SQL.Add(' and FUF '+mcinst2);

mcinst2:=fItenstCheckListBox(0,CLBStatus);
if trim(mcinst2)<>'' then
   begin
   Qr_For.SQL.Add(' and FSITFOR '+mcinst2)
   end;


mcinst2:=fItenstCheckListBox(0,clbTipoFornecedor);
if trim(mcinst2)<>'' then
   begin
   Qr_For.SQL.Add(' and FTIPOF '+mcinst2)
   end;

mcinst2:=fItenstCheckListBox(0,clb_crt);
if trim(mcinst2)<>'' then
   begin
   Qr_For.SQL.Add(' and FCRT '+mcinst2)
   end;


mcinst2:=fItenstCheckListBox(0,clbtipoDesp);
if trim(mcinst2)<>'' then
   begin
   Qr_For.SQL.Add(' and FTDESP '+mcinst2)
   end;

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   Qr_For.SQL.Add(' and FCODLOC '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codgfor,OMITIR_GFOR);
if trim(mcinst2)<>'' then
   Qr_For.SQL.Add(' and FCODGFOR '+mcinst2);
if CB_CODBLOQ.ItemIndex<>2 then
   Qr_For.SQL.add(' and FCODBLOQ=0'+IntToStr(CB_CODBLOQ.ItemIndex));


if trim(MDT1.Text)<>'/  /' then
   begin
   Qr_For.SQL.Add(' and FDATHOR_BLOQ>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   if CB_INFQUALIF.Checked then
      Qr_For.SQL.Add(' and FB_DATHOR>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   end;
if trim(MDT2.Text)<>'/  /' then
   begin
   Qr_for.SQL.Add(' and FDATHOR_BLOQ<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
   if CB_INFQUALIF.Checked then
      Qr_For.SQL.Add(' and FB_DATHOR<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   end;
Qr_For.SQL.Add(' order by ');

if trim(mCampoOrdem)<>'' then
   Qr_For.SQL.Add(mCampoOrdem+',');
Qr_For.sql.Add('   FRAZAO,FCODFOR,FB_SEQ');
try
   Qr_For.open;
except
   Qr_For.sql.savetofile(mpastatemp +'sql.txt');
   end;
if Qr_For.IsEmpty then
   begin
   fmensagem('Nada a ser Impresso na Condição Socilicatada!',0,['0'],0);
   exit;
   end;
If CB_INFQUALIF.Checked then
   begin
   RLBand_detmot.Visible   :=true;
   RLBand_detstatus.Visible:=true;
   RLBand_cabdet.BandType  :=btColumnHeader;
   end
else
   begin
   RLBand_detmot.Visible   :=false;
   RLBand_detstatus.Visible:=false;
   RLBand_cabdet.BandType  :=btDetail;
   end;
RLReport1.PreviewModal;
end;

procedure TFrm_Rel_For.Qr_ForCalcFields(DataSet: TDataSet);
begin
if Qr_ForFCODBLOQ.AsInteger=1 then
   Qr_Forstatus.Value:='Bloq em: '+FormatDatetime(fdt2, Qr_ForFDATHOR_BLOQ.AsDateTime)
else
   begin
   if Qr_ForFDATHOR_BLOQ.AsDateTime>pdatanula then
      Qr_Forstatus.Value:=Qr_Forstatus.Value+' Lib em: '+FormatDatetime(fdt2, Qr_ForFDATHOR_BLOQ.AsDateTime)
   else
      Qr_Forstatus.Value:='Sem Restrição.';
   end;

if Qr_ForFB_BLOQUEIO.AsInteger=1 then
   begin
   mcinst2:=' ';
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',Qr_ForFB_CODUSR.AsString) then
      mcinst2:='-'+DM1.Query1.Fields[0].AsString+' ';
   Qr_Forstatus_bloq.Value:='Bloqueado em '+FormatDatetime(fdathor, Qr_ForFB_DATHOR.AsDateTime)
                           +' por: '+Qr_ForFB_CODUSR.AsString+mcinst2;
   end
else
   begin
   if Qr_ForFB_DATHOR.AsDateTime<=pdatanula then
      Qr_Forstatus_bloq.Value:='Sem Restrições'
   else
      begin
      mcinst2:=' ';
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',Qr_ForFB_CODUSR.AsString) then
         mcinst2:='-'+DM1.Query1.Fields[0].AsString+' ';
      Qr_Forstatus_bloq.Value:='Liberado em '+FormatDatetime(fdathor, Qr_ForFB_DATHOR.AsDateTime)
                           +' por: '+Qr_ForFB_CODUSR.AsString+mcinst2;
      end;
   end;


end;

procedure TFrm_Rel_For.CB_BORDASClick(Sender: TObject);
begin
if CB_BORDAS.Checked then
   mboolean:=true
else
   mboolean:=false;

rlband_cabger.Borders.DrawTop       :=mboolean;
rlband_cabger.Borders.DrawBottom    :=mboolean;
rlband_cabger.Borders.DrawRight     :=mboolean;
rlband_cabger.Borders.DrawLeft      :=mboolean;

//RLBand_filtros.Borders.DrawBottom   :=mboolean;
RLBand_filtros.Borders.DrawRight    :=mboolean;
RLGroup1.Borders.DrawLeft           :=mboolean;
RLGroup1.Borders.DrawRight          :=mboolean;
RLGroup1.Borders.DrawTop            :=mboolean;

lbl_cadcod.Borders.DrawRight        :=mboolean;
lbl_razsoc.Borders.DrawRight        :=mboolean;
lbl_cidade.Borders.DrawRight        :=mboolean;
lbl_cabfone.Borders.DrawRight       :=mboolean;

lbl_detCodPro.Borders.DrawRight     :=mboolean;
lbl_detrazsoc.Borders.DrawRight     :=mboolean;
lbl_detcidade.Borders.DrawRight     :=mboolean;
lbl_detcabfone.Borders.DrawRight    :=mboolean;
RLBand_detstatus.Borders.DrawTop    :=mboolean;
RLBand_detstatus.Borders.DrawBottom :=mboolean;
RLBand_grupo01.Borders.DrawBottom   :=mboolean;
RLBand_rodpag.Borders.DrawTop       :=mboolean;
RLCabDet.Borders.DrawBottom         :=mboolean;


end;

procedure TFrm_Rel_For.FormCreate(Sender: TObject);
begin
la_Empresas:='';
CB_BORDASClick(self);


   CLBStatus.Checked[CLBStatus.Items.Count-1]:=true;
   CLBStatus.ItemIndex:=CLBStatus.Items.Count-1;
   CLBStatus:=Valida_CheckList(CLBStatus);


   clbTipoFornecedor.Checked[clbTipoFornecedor.Items.Count-1]:=true;
   clbTipoFornecedor.ItemIndex:=clbTipoFornecedor.Items.Count-1;
   clbTipoFornecedor:=Valida_CheckList(clbTipoFornecedor);


   clbtipoDesp.Checked[clbtipoDesp.Items.Count-1]:=true;
   clbtipoDesp.ItemIndex:=clbtipoDesp.Items.Count-1;
   clbtipoDesp:=Valida_CheckList(clbtipoDesp);

end;

procedure TFrm_Rel_For.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Rel_For.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mQtdFor :=0;
mQtdBloq:=0;
end;

procedure TFrm_Rel_For.RLBand_cabdetBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

mQtdFor :=mQtdFor+1;
if Qr_ForFCODBLOQ.AsInteger=1 then
   mQtdBloq:=mQtdBloq+1;

end;

procedure TFrm_Rel_For.rlRodapeBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlobsger.Caption:='Foram Impressos '+IntToStr(mQtdFor)+' sendo que '+IntToStr(mQtdBloq)+' possui restrição';
end;

procedure TFrm_Rel_For.FormShow(Sender: TObject);
begin
   PageControl1.ActivePage := TabSheet1;
   tsRelatorio.TabVisible  := False;
end;

procedure TFrm_Rel_For.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Rel_For.CLBStatusClick(Sender: TObject);
begin
CLBStatus:=Valida_CheckList(CLBStatus);

end;

procedure TFrm_Rel_For.clbTipoFornecedorClick(Sender: TObject);
begin
clbTipoFornecedor:=Valida_CheckList(clbTipoFornecedor);

end;

procedure TFrm_Rel_For.clbtipoDespClick(Sender: TObject);
begin
clbtipoDesp:=Valida_CheckList(clbtipoDesp);

end;

procedure TFrm_Rel_For.clb_crtClick(Sender: TObject);
begin
clb_crt:=Valida_CheckList(clb_crt);

end;

end.

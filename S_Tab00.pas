unit S_Tab00;
{
TCFILVEN
TCFILCLI
TCFILPRO
TCFILFOR
TCFILRED
TCFILEST

TCFILRAMCLI
TCFILRAMPRO
TCFILTPRO
TCFILGPRO
TCFILCPRO
TCFILLOC
TCFILBAI
TCFILGFOR
TCFILCONV
TCFILSUP
TCFILASS
TCFILREG
TCFILTRA
TCFILBCO
TCFILCC
TCFILDEP
TCFILUSR
TCFILCAR
TCFILFUN

}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, func, S_DM1, Grids, DBGrids, DB, StdCtrls, DBTables,
  Buttons, S_Tab00Oper, DBCtrls,S_Tab00Fil,S_DM2,S_Tab00Ord,S_Tab00Gru,S_Tab00SG,S_SQL,
  S_VisIns,S_Tab00div,S_Tab_IE,S_Tab00JC, S_SelEmp;

type
  TFrm_Tab00 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Qr_Rel: TQuery;
    Qr_RelTCCODEMP: TFloatField;
    Qr_RelTCDOC: TStringField;
    Qr_RelTCNOME: TStringField;
    Qr_RelTCOBS: TStringField;
    GroupBox1: TGroupBox;
    Src_Rel: TDataSource;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    RGTFONTE: TRadioGroup;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    NOMREL: TEdit;
    BBINCLUIR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBCANCELAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBSAIR: TBitBtn;
    BBALTERAR: TBitBtn;
    CB_MPAGGR: TCheckBox;
    CB_GRUPO: TCheckBox;
    CB_SGRUPO: TCheckBox;
    CB_AVPTPI: TCheckBox;
    CB_AVPIPF: TCheckBox;
    Qr_RelTCQTDLIN: TFloatField;
    Qr_RelTCQTDCOL: TFloatField;
    Qr_RelTCFPADRAO: TFloatField;
    Qr_RelTCQTDITEM: TFloatField;
    Qr_RelTCQTDLPP: TFloatField;
    Qr_RelTCNUMCOL: TFloatField;
    Qr_RelTCINTCOL: TFloatField;
    Qr_RelTCTPCOL: TFloatField;
    Qr_RelTCORDEM: TFloatField;
    Qr_RelTCMPAGGR: TFloatField;
    Qr_RelTCTPESQ: TFloatField;
    Qr_RelTCTPREL: TFloatField;
    Qr_RelTCIMPG: TFloatField;
    Qr_RelTCIMPSG: TFloatField;
    Qr_RelTCAVPTPI: TFloatField;
    Qr_RelTCAVPIPF: TFloatField;
    CB_VIS: TCheckBox;
    L_QTDITEM: TLabel;
    QTDITEM: TEdit;
    L_QTDSER: TLabel;
    QTDSER: TEdit;
    CB_IMPDA: TCheckBox;
    L_QTDLPP: TLabel;
    QTDLP: TEdit;
    L_QTDCOL: TLabel;
    QTDCOL: TEdit;
    L2_INTCOL: TLabel;
    INTCOL: TEdit;
    L1_INTCOL: TLabel;
    NUMCOL: TEdit;
    L_NUMCOL: TLabel;
    Qr_RelTCSTATUS: TFloatField;
    Qr_RelTCVIS: TFloatField;
    Qr_RelTCQTDSER: TFloatField;
    Qr_RelTCIMPDA: TFloatField;
    Label2: TLabel;
    CB_TAB01: TComboBox;
    GroupBox4: TGroupBox;
    CB_TAB02: TComboBox;
    CB_TAB03: TComboBox;
    CB_TAB04: TComboBox;
    CB_TAB05: TComboBox;
    Label3: TLabel;
    CB_MENU: TComboBox;
    CB_ENTREL: TCheckBox;
    CB_TPCOL: TCheckBox;
    CB_TAB02NUL: TCheckBox;
    CB_TAB03NUL: TCheckBox;
    CB_TAB04NUL: TCheckBox;
    CB_TAB05NUL: TCheckBox;
    GroupBox7: TGroupBox;
    DBText1: TDBText;
    GroupBox8: TGroupBox;
    CB_CONT_AP: TCheckBox;
    CB_CONT_R: TComboBox;
    CONT_M: TEdit;
    Label4: TLabel;
    Qr_RelTCTAB01: TStringField;
    Qr_RelTCTAB02: TStringField;
    Qr_RelTCTAB02N: TFloatField;
    Qr_RelTCTAB03: TStringField;
    Qr_RelTCTAB03N: TFloatField;
    Qr_RelTCTAB04: TStringField;
    Qr_RelTCTAB04N: TFloatField;
    Qr_RelTCTAB05: TStringField;
    Qr_RelTCTAB05N: TFloatField;
    Qr_RelTCORDEM2: TStringField;
    Qr_RelTCFILTRO: TStringField;
    Qr_RelTCCONT_M: TStringField;
    Qr_RelTCCONT_R: TStringField;
    Qr_RelTCCONT_AP: TFloatField;
    Qr_Relnomtab01: TStringField;
    Qr_Relnomtab02: TStringField;
    Qr_Relnomtab03: TStringField;
    Qr_Relnomtab04: TStringField;
    Qr_Relnomtab05: TStringField;
    Qr_Relgrupo: TStringField;
    Qr_RelTCBLOQ: TFloatField;
    Qr_RelTCAGRUPAR: TFloatField;
    GroupBox9: TGroupBox;
    CB_BLOQ: TCheckBox;
    CB_AGRUPAR: TCheckBox;
    Qr_Tab: TQuery;
    FILTROS: TBitBtn;
    ORDEM: TBitBtn;
    Qr_TabCANOMARQ: TStringField;
    Qr_TabCATITULO: TStringField;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    GroupBox5: TGroupBox;
    NOME: TEdit;
    Label5: TLabel;
    CB_MASC: TComboBox;
    Qr_RelTCMASC: TStringField;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    CB_PERIODO: TComboBox;
    Label7: TLabel;
    Qr_Relperiodo: TStringField;
    Qr_RelTCPERIODO: TStringField;
    Qr_RelTCDIMGRU: TFloatField;
    Qr_RelTCDIMSG: TFloatField;
    Label8: TLabel;
    DIMGRU: TEdit;
    Label9: TLabel;
    DIMSG: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Qr_RelTCTPFORM: TFloatField;
    CB_TPFORM: TCheckBox;
    BDIVIDIR: TBitBtn;
    Label12: TLabel;
    QTDDIV: TEdit;
    Label13: TLabel;
    Qr_RelTCQTDDIV: TFloatField;
    CB_TAB06: TComboBox;
    CB_TAB06NUL: TCheckBox;
    CB_TAB08: TComboBox;
    CB_TAB08NUL: TCheckBox;
    CB_TAB07: TComboBox;
    CB_TAB07NUL: TCheckBox;
    CB_TAB09: TComboBox;
    CB_TAB09NUL: TCheckBox;
    Qr_RelTCTAB06: TStringField;
    Qr_RelTCTAB06N: TFloatField;
    Qr_RelTCTAB07: TStringField;
    Qr_RelTCTAB07N: TFloatField;
    Qr_RelTCTAB08: TStringField;
    Qr_RelTCTAB08N: TFloatField;
    Qr_RelTCTAB09: TStringField;
    Qr_RelTCTAB09N: TFloatField;
    ESPECIAIS: TBitBtn;
    GroupBox6: TGroupBox;
    CB_FILVEN1: TCheckBox;
    CB_FILCLI1: TCheckBox;
    CB_FILFOR1: TCheckBox;
    CB_FILPRO1: TCheckBox;
    Bevel1: TBevel;
    Bevel2: TBevel;
    CB_FILRED1: TCheckBox;
    Qr_RelTCFILVEN: TFloatField;
    Qr_RelTCFILCLI: TFloatField;
    Qr_RelTCFILPRO: TFloatField;
    Qr_RelTCFILFOR: TFloatField;
    Qr_RelTCFILRED: TFloatField;
    CONCATENADOS: TBitBtn;
    GB_TPDET: TGroupBox;
    Label14: TLabel;
    DETNCOL: TEdit;
    CB_DETTPCOL: TCheckBox;
    Label15: TLabel;
    DETICOL: TEdit;
    Label16: TLabel;
    Qr_RelTCFVCAMPO: TStringField;
    Qr_RelTCFCCAMPO: TStringField;
    Qr_RelTCFPCAMPO: TStringField;
    Qr_RelTCFFCAMPO: TStringField;
    Qr_RelTCFRCAMPO: TStringField;
    Qr_RelTCDETNCOL: TFloatField;
    Qr_RelTCDETICOL: TFloatField;
    Qr_RelTCDETTPCOL: TFloatField;
    Qr_RelTCAVANCAROD: TFloatField;
    CB_AVANCAROD: TCheckBox;
    Qr_Relnomtab06: TStringField;
    Qr_Relnomtab07: TStringField;
    Qr_Relnomtab08: TStringField;
    Qr_Relnomtab09: TStringField;
    bbFiltrosEspeciais: TBitBtn;
    CB_FILEST1: TCheckBox;
    Qr_RelTCFILEST: TFloatField;
    Bevel3: TBevel;
    CB_FILGPRO: TCheckBox;
    CB_FILRAMPRO: TCheckBox;
    Qr_RelTCQTDVIA: TFloatField;
    Qr_RelTCFILRAMCLI: TFloatField;
    Qr_RelTCFILRAMPRO: TFloatField;
    Qr_RelTCFILTPRO: TFloatField;
    Qr_RelTCFILGPRO: TFloatField;
    Qr_RelTCFILCPRO: TFloatField;
    Qr_RelTCFILLOC: TFloatField;
    Qr_RelTCFILBAI: TFloatField;
    Qr_RelTCFILGFOR: TFloatField;
    Qr_RelTCFILCONV: TFloatField;
    Qr_RelTCFILSUP: TFloatField;
    Qr_RelTCFILASS: TFloatField;
    Qr_RelTCFILREG: TFloatField;
    Qr_RelTCFILTRA: TFloatField;
    Qr_RelTCFILBCO: TFloatField;
    Qr_RelTCFILCC: TFloatField;
    Qr_RelTCFILDEP: TFloatField;
    Qr_RelTCFILUSR: TFloatField;
    Qr_RelTCFILCAR: TFloatField;
    Qr_RelTCFILFUN: TFloatField;
    cb_salvar_sql: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure BBCANCELARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure QTDITEMKeyPress(Sender: TObject; var Key: Char);
    procedure BBALTERARClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Src_RelDataChange(Sender: TObject; Field: TField);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure NOMRELKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Qr_RelCalcFields(DataSet: TDataSet);
    procedure CB_TAB01Exit(Sender: TObject);
    procedure CB_TAB02Exit(Sender: TObject);
    procedure CB_TAB03Exit(Sender: TObject);
    procedure CB_TAB04Exit(Sender: TObject);
    procedure CB_TAB05Exit(Sender: TObject);
    procedure CB_MENUExit(Sender: TObject);
    procedure FILTROSClick(Sender: TObject);
    procedure ORDEMClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure NOMEChange(Sender: TObject);
    procedure CB_MASCExit(Sender: TObject);
    procedure CB_PERIODOEnter(Sender: TObject);
    procedure CB_PERIODOExit(Sender: TObject);
    procedure NUMCOLKeyPress(Sender: TObject; var Key: Char);
    procedure BDIVIDIRClick(Sender: TObject);
    procedure ESPECIAISClick(Sender: TObject);
    procedure CONCATENADOSClick(Sender: TObject);
    procedure INTCOLExit(Sender: TObject);
    procedure NUMCOLExit(Sender: TObject);
    procedure DETNCOLExit(Sender: TObject);
    procedure DETICOLExit(Sender: TObject);
    procedure CB_TAB06Exit(Sender: TObject);
    procedure CB_TAB07Exit(Sender: TObject);
    procedure CB_TAB08Exit(Sender: TObject);
    procedure CB_TAB09Exit(Sender: TObject);
    procedure bbFiltrosEspeciaisClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
   function ftab00filnc(pcampo: String): string;
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;
function flerarq2(ptipo: Integer):Boolean;
var
  Frm_Tab00: TFrm_Tab00;
  mpesq: String='CADTDV';
  moper_tab00: Integer=0;
implementation

uses S_TabM, S_Tab_FE, flerarq, lerarq, func_excecoes;

{$R *.dfm}

procedure TFrm_Tab00.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_Tab_FE, Frm_Tab_FE);
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
Qr_Rel.Close;
Qr_Rel.SQL.Clear;
Qr_Rel.SQL.Add('Select * from CTDVCA ');
if not DM1.Qr_Tid.Locate('TINOME','CADTDV',[]) then
   Qr_Rel.SQL.Add(' where TCCODEMP='+IntTostr(codemp));
Qr_Rel.SQL.Add(' Order by TCNOME');
Qr_Rel.Open;
if trim(Frm_TabM.NOMREL.Caption)<>'' then
   begin
   Qr_Rel.Locate('TCDOC;TCNOME',vararrayof([mreltab,Frm_TabM.NOMREL.Caption]),[]);
   end;
Qr_Tab.Open;
While not Qr_Tab.Eof do
   begin
   CB_TAB01.items.Add(Qr_TabCANOMARQ.Value);
   CB_TAB02.items.Add(Qr_TabCANOMARQ.Value);
   CB_TAB03.items.Add(Qr_TabCANOMARQ.Value);
   CB_TAB04.items.Add(Qr_TabCANOMARQ.Value);
   CB_TAB05.items.Add(Qr_TabCANOMARQ.Value);
   CB_TAB06.items.Add(Qr_TabCANOMARQ.Value);
   CB_TAB07.items.Add(Qr_TabCANOMARQ.Value);
   CB_TAB08.items.Add(Qr_TabCANOMARQ.Value);
   CB_TAB09.items.Add(Qr_TabCANOMARQ.Value);
   CB_MENU.items.Add(Qr_TabCANOMARQ.Value);
   Qr_Tab.Next;
   end;
CB_MENU.Items.Add('Graficos');
CB_MENU.Items.Add('Documentos');
CB_MENU.Items.Add('Gerenciais');
cb_salvar_sql.visible:=codusr=1111;
end;

procedure TFrm_Tab00.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Tab00.BBINCLUIRClick(Sender: TObject);
begin
moper_tab00:=0;
GroupBox2.Enabled:=True;
BBGRAVAR.Enabled:=True;
BBCANCELAR.Enabled:=True;
BBINCLUIR.Enabled:=False;
BBALTERAR.Enabled:=False;
BBEXCLUIR.Enabled :=False;
NOMREL.Enabled    :=True;
CB_TAB01.Text     :='';
CB_TAB02.Text     :='';
CB_TAB03.Text     :='';
CB_TAB04.Text     :='';
CB_TAB05.Text     :='';
CB_TAB06.Text     :='';
CB_TAB07.Text     :='';
CB_TAB08.Text     :='';
CB_TAB09.Text     :='';

CB_MENU.Text     :='';
CB_TAB02NUL.Checked:=False;
CB_TAB03NUL.Checked:=False;
CB_TAB04NUL.Checked:=False;
CB_TAB05NUL.Checked:=False;
CB_TAB06NUL.Checked:=False;
CB_TAB07NUL.Checked:=False;
CB_TAB08NUL.Checked:=False;
CB_TAB09NUL.Checked:=False;


Frm_Tab00Ord.STG_ORDEM.RowCount:=2;
Frm_Tab00Fil.STG_FILTRO.RowCount:=2;
NOMREL.Text:='';
RGTFONTE.ItemIndex   :=0;
CB_GRUPO.Checked    :=True;
CB_SGRUPO.Checked   :=True;
CB_AVANCAROD.Checked:=False;
QTDLP.Text:='66';
QTDCOL.Text:='80';
NUMCOL.Text:='1';
INTCOL.Text:='';
Memo1.Text:='';
CB_FILGPRO.Checked  :=False;
CB_FILRAMPRO.Checked:=False;
CB_FILVEN1.Checked:=False;
CB_FILCLI1.Checked:=False;
CB_FILPRO1.Checked:=False;
CB_FILFOR1.Checked:=False;
CB_FILRED1.Checked:=False;
CB_FILEST1.Checked:=False;


if NOMREL.Enabled then  NOMREL.SetFocus;
end;

procedure TFrm_Tab00.BBGRAVARClick(Sender: TObject);
var
x: Integer;
mtabmas,mtabseg: String;
menu,mtabant: String;
mfilven,mfilcli,mfilred,mfilfor,mfilpro,mfilest: String;
mfilgpro,mfilrampro: String;

mNomeProcTemp: String;
begin

if Trim(NOMREL.Text)='' then
   begin
   fmensagem('Nome do Relatório. Campo Obrigatório!',0,['0'],0);
   NOMREL.SetFocus;
   exit;
   end;
if Trim(QTDLP.Text)='' then
   begin
   fmensagem('Quantidade de Linhas Por Pagina. Campo Obrigatório!',0,['0'],0);
   QTDLP.SetFocus;
   exit;
   end;
if Trim(QTDCOL.Text)='' then
   begin
   fmensagem('Quantidade de Colunas. Campo Obrigatório!',0,['0'],0);
   QTDCOL.setfocus;
   exit;
   end;
if Trim(CB_TAB01.Text)='' then
   begin
   fmensagem('Tabela Mestre Campo Obrigatório!',0,['0'],0);
   CB_TAB01.setfocus;
   exit;
   end;
if Trim(CB_MENU.Text)='' then
   begin
   fmensagem('Menu Preferencial Campo Obrigatório!',0,['0'],0);
   CB_MENU.setfocus;
   exit;
   end;



if StrtoInt('0'+Trim(NUMCOL.Text))<1 then
   NUMCOL.Text:='1';
if (StrtoInt('0'+NUMCOL.Text)>1) and (StrToInt('0'+INTCOL.Text)<1) then
   begin
   fmensagem('Favor Digitar o Campo Imprimir apos...,'+#13
              +'Campo Obrigatório p/Quantidade de Colunas Acima de 1',0,['0'],0);
   INTCOL.SetFocus;
   exit;
   end;
flerarq2(0);
Frm_Tab00fil.STG_FILTRO.RowCount:=Frm_Tab00fil.STG_FILTRO.RowCount+1;


//  TABELA NOVE
if Trim(CB_TAB09.Text)<>'' then
   begin
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB01.Text),[]) then
      mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
   else
      mtabmas:=Trim(CB_TAB01.Text);
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB09.Text),[]) then
      mtabseg:=Trim(DM2.Tb_ArqCANOMARQ.Value)
   else
      mtabseg:=Trim(CB_TAB09.Text);
   DM1.Query1.Close;
   DM1.Query1.SQl.Clear;
   DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                     +' where TABMAS='+chr(39)+mtabmas+chr(39)
                     +' and TABSEG='+chr(39)+mtabseg+chr(39));
   DM1.Query1.Open;
   if DM1.Query1.Eof then
      begin
      if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB02.Text),[]) then
         mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
      else
         mtabmas:=Trim(CB_TAB02.Text);
      DM1.Query1.Close;
      DM1.Query1.SQl.Clear;
      DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                        +' where TABMAS='+chr(39)+mtabmas+chr(39)
                        +' and TABSEG='+chr(39)+mtabseg+chr(39));
      DM1.Query1.Open;
      if DM1.Query1.Eof then
         begin
         if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB03.Text),[]) then
            mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
         else
            mtabmas:=Trim(CB_TAB03.Text);
         DM1.Query1.Close;
         DM1.Query1.SQl.Clear;
         DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                           +' where TABMAS='+chr(39)+mtabmas+chr(39)
                           +' and TABSEG='+chr(39)+mtabseg+chr(39));
         DM1.Query1.Open;
         if DM1.Query1.Eof then
            begin
            if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB04.Text),[]) then
               mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
            else
               mtabmas:=Trim(CB_TAB04.Text);
            DM1.Query1.Close;
            DM1.Query1.SQl.Clear;
            DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                              +' where TABMAS='+chr(39)+mtabmas+chr(39)
                              +' and TABSEG='+chr(39)+mtabseg+chr(39));
            DM1.Query1.Open;
            if DM1.Query1.Eof then
               begin
               if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB05.Text),[]) then
                  mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
               else
                  mtabmas:=Trim(CB_TAB05.Text);
               DM1.Query1.Close;
               DM1.Query1.SQl.Clear;
               DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                                 +' where TABMAS='+chr(39)+mtabmas+chr(39)
                                 +' and TABSEG='+chr(39)+mtabseg+chr(39));
               DM1.Query1.Open;
               if DM1.Query1.Eof then
                  begin
                  if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB06.Text),[]) then
                     mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
                  else
                     mtabmas:=Trim(CB_TAB06.Text);
                  DM1.Query1.Close;
                  DM1.Query1.SQl.Clear;
                  DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                                    +' where TABMAS='+chr(39)+mtabmas+chr(39)
                                    +' and TABSEG='+chr(39)+mtabseg+chr(39));
                  DM1.Query1.Open;
                  if DM1.Query1.Eof then
                     begin
                     if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB07.Text),[]) then
                        mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
                     else
                        mtabmas:=Trim(CB_TAB07.Text);
                     DM1.Query1.Close;
                     DM1.Query1.SQl.Clear;
                     DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                                       +' where TABMAS='+chr(39)+mtabmas+chr(39)
                                       +' and TABSEG='+chr(39)+mtabseg+chr(39));
                     DM1.Query1.Open;
                     if DM1.Query1.Eof then
                        begin
                        if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB08.Text),[]) then
                           mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
                        else
                           mtabmas:=Trim(CB_TAB08.Text);
                        DM1.Query1.Close;
                        DM1.Query1.SQl.Clear;
                        DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                                          +' where TABMAS='+chr(39)+mtabmas+chr(39)
                                          +' and TABSEG='+chr(39)+mtabseg+chr(39));
                        DM1.Query1.Open;
                        if DM1.Query1.Eof then
                           begin
                           fmensagem('a oitava tabela segundaria não possui nenhum relacionamento'+#13
                                     +'com as tabela anteriores. Invalido!',0,['0'],0);
                           CB_TAB08.SetFocus;
                           exit;
                           end;
                        end;
                     end;
                  end;
               end;
            end;
         end;
      end;
   While not DM1.Query1.Eof do
      begin
      x:=Frm_Tab00fil.STG_FILTRO.RowCount;
      Frm_Tab00fil.STG_FILTRO.RowCount:=x+1;
      Frm_Tab00fil.STG_FILTRO.Rows[x].Clear;
//      x:=x-1;
      if DM2.Tb_Arq.Locate('CANOMCAM',trim(DM1.Query1.Fields[3].AsString),[]) then
         Frm_Tab00fil.STG_FILTRO.Cells[0,x]:=DM2.Tb_ArqCANOMREG.Value
      else
         Frm_Tab00fil.STG_FILTRO.Cells[0,x]:=DM1.Query1.Fields[3].AsString;
      Frm_Tab00fil.STG_FILTRO.Cells[1,x]:='=';
      if DM2.Tb_Arq.Locate('CANOMCAM',trim(DM1.Query1.Fields[2].Asstring),[]) then
         Frm_Tab00fil.STG_FILTRO.Cells[2,x]:=DM2.Tb_ArqCANOMREG.Value
      else
         Frm_Tab00fil.STG_FILTRO.Cells[2,x]:=DM1.Query1.Fields[2].AsString;
      Frm_Tab00fil.STG_FILTRO.Cells[3,x]:='A';
      Frm_Tab00fil.STG_FILTRO.Cells[4,x]:='A';
      Frm_Tab00fil.STG_FILTRO.Cells[5,x]:=mtabseg;
      Frm_Tab00fil.STG_FILTRO.Cells[6,x]:=mtabmas;
      DM1.Query1.Next;
      end;
   end;

//  FINAL TABELAS NOVE



//  TABELA OITO
if Trim(CB_TAB08.Text)<>'' then
   begin
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB01.Text),[]) then
      mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
   else
      mtabmas:=Trim(CB_TAB01.Text);
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB08.Text),[]) then
      mtabseg:=Trim(DM2.Tb_ArqCANOMARQ.Value)
   else
      mtabseg:=Trim(CB_TAB08.Text);
   DM1.Query1.Close;
   DM1.Query1.SQl.Clear;
   DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                     +' where TABMAS='+chr(39)+mtabmas+chr(39)
                     +' and TABSEG='+chr(39)+mtabseg+chr(39));
   DM1.Query1.Open;
   if DM1.Query1.Eof then
      begin
      if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB02.Text),[]) then
         mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
      else
         mtabmas:=Trim(CB_TAB02.Text);
      DM1.Query1.Close;
      DM1.Query1.SQl.Clear;
      DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                        +' where TABMAS='+chr(39)+mtabmas+chr(39)
                        +' and TABSEG='+chr(39)+mtabseg+chr(39));
      DM1.Query1.Open;
      if DM1.Query1.Eof then
         begin
         if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB03.Text),[]) then
            mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
         else
            mtabmas:=Trim(CB_TAB03.Text);
         DM1.Query1.Close;
         DM1.Query1.SQl.Clear;
         DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                           +' where TABMAS='+chr(39)+mtabmas+chr(39)
                           +' and TABSEG='+chr(39)+mtabseg+chr(39));
         DM1.Query1.Open;
         if DM1.Query1.Eof then
            begin
            if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB04.Text),[]) then
               mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
            else
               mtabmas:=Trim(CB_TAB04.Text);
            DM1.Query1.Close;
            DM1.Query1.SQl.Clear;
            DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                              +' where TABMAS='+chr(39)+mtabmas+chr(39)
                              +' and TABSEG='+chr(39)+mtabseg+chr(39));
            DM1.Query1.Open;
            if DM1.Query1.Eof then
               begin
               if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB05.Text),[]) then
                  mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
               else
                  mtabmas:=Trim(CB_TAB05.Text);
               DM1.Query1.Close;
               DM1.Query1.SQl.Clear;
               DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                                 +' where TABMAS='+chr(39)+mtabmas+chr(39)
                                 +' and TABSEG='+chr(39)+mtabseg+chr(39));
               DM1.Query1.Open;
               if DM1.Query1.Eof then
                  begin
                  if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB06.Text),[]) then
                     mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
                  else
                     mtabmas:=Trim(CB_TAB06.Text);
                  DM1.Query1.Close;
                  DM1.Query1.SQl.Clear;
                  DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                                    +' where TABMAS='+chr(39)+mtabmas+chr(39)
                                   +' and TABSEG='+chr(39)+mtabseg+chr(39));
                  DM1.Query1.Open;
                  if DM1.Query1.Eof then
                     begin
                     if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB07.Text),[]) then
                        mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
                     else
                        mtabmas:=Trim(CB_TAB07.Text);
                     DM1.Query1.Close;
                     DM1.Query1.SQl.Clear;
                     DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                                       +' where TABMAS='+chr(39)+mtabmas+chr(39)
                                       +' and TABSEG='+chr(39)+mtabseg+chr(39));
                     DM1.Query1.Open;
                     if DM1.Query1.Eof then
                        begin
                        fmensagem('a setima tabela segundaria não possui nenhum relacionamento'+#13
                                  +'com as tabela anteriores. Invalido!',0,['0'],0);
                        CB_TAB08.SetFocus;
                        exit;
                        end;
                     end;
                  end;
               end;
            end;
         end;
      end;
   While not DM1.Query1.Eof do
      begin
      x:=Frm_Tab00fil.STG_FILTRO.RowCount;
      Frm_Tab00fil.STG_FILTRO.RowCount:=x+1;
      Frm_Tab00fil.STG_FILTRO.Rows[x].Clear;
//      x:=x-1;
      if DM2.Tb_Arq.Locate('CANOMCAM',trim(DM1.Query1.Fields[3].AsString),[]) then
         Frm_Tab00fil.STG_FILTRO.Cells[0,x]:=DM2.Tb_ArqCANOMREG.Value
      else
         Frm_Tab00fil.STG_FILTRO.Cells[0,x]:=DM1.Query1.Fields[3].AsString;
      Frm_Tab00fil.STG_FILTRO.Cells[1,x]:='=';
      if DM2.Tb_Arq.Locate('CANOMCAM',trim(DM1.Query1.Fields[2].Asstring),[]) then
         Frm_Tab00fil.STG_FILTRO.Cells[2,x]:=DM2.Tb_ArqCANOMREG.Value
      else
         Frm_Tab00fil.STG_FILTRO.Cells[2,x]:=DM1.Query1.Fields[2].AsString;
      Frm_Tab00fil.STG_FILTRO.Cells[3,x]:='A';
      Frm_Tab00fil.STG_FILTRO.Cells[4,x]:='A';
      Frm_Tab00fil.STG_FILTRO.Cells[5,x]:=mtabseg;
      Frm_Tab00fil.STG_FILTRO.Cells[6,x]:=mtabmas;
      DM1.Query1.Next;
      end;
   end;

//  FINAL TABELAS OITO



//  TABELA SETE
if Trim(CB_TAB07.Text)<>'' then
   begin
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB01.Text),[]) then
      mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
   else
      mtabmas:=Trim(CB_TAB01.Text);
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB07.Text),[]) then
      mtabseg:=Trim(DM2.Tb_ArqCANOMARQ.Value)
   else
      mtabseg:=Trim(CB_TAB07.Text);
   DM1.Query1.Close;
   DM1.Query1.SQl.Clear;
   DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                     +' where TABMAS='+chr(39)+mtabmas+chr(39)
                     +' and TABSEG='+chr(39)+mtabseg+chr(39));
   DM1.Query1.Open;
   if DM1.Query1.Eof then
      begin
      if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB02.Text),[]) then
         mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
      else
         mtabmas:=Trim(CB_TAB02.Text);
      DM1.Query1.Close;
      DM1.Query1.SQl.Clear;
      DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                        +' where TABMAS='+chr(39)+mtabmas+chr(39)
                        +' and TABSEG='+chr(39)+mtabseg+chr(39));
      DM1.Query1.Open;
      if DM1.Query1.Eof then
         begin
         if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB03.Text),[]) then
            mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
         else
            mtabmas:=Trim(CB_TAB03.Text);
          DM1.Query1.Close;
          DM1.Query1.SQl.Clear;
          DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                           +' where TABMAS='+chr(39)+mtabmas+chr(39)
                           +' and TABSEG='+chr(39)+mtabseg+chr(39));
         DM1.Query1.Open;
         if DM1.Query1.Eof then
            begin
            if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB04.Text),[]) then
               mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
            else
               mtabmas:=Trim(CB_TAB04.Text);
            DM1.Query1.Close;
           DM1.Query1.SQl.Clear;
           DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                              +' where TABMAS='+chr(39)+mtabmas+chr(39)
                              +' and TABSEG='+chr(39)+mtabseg+chr(39));
            DM1.Query1.Open;
            if DM1.Query1.Eof then
               begin
               if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB05.Text),[]) then
                  mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
               else
                  mtabmas:=Trim(CB_TAB05.Text);
               DM1.Query1.Close;
               DM1.Query1.SQl.Clear;
               DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                                 +' where TABMAS='+chr(39)+mtabmas+chr(39)
                                +' and TABSEG='+chr(39)+mtabseg+chr(39));
               DM1.Query1.Open;
               if DM1.Query1.Eof then
                  begin
                  if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB06.Text),[]) then
                     mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
                  else
                     mtabmas:=Trim(CB_TAB06.Text);
                  DM1.Query1.Close;
                  DM1.Query1.SQl.Clear;
                  DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                                    +' where TABMAS='+chr(39)+mtabmas+chr(39)
                                    +' and TABSEG='+chr(39)+mtabseg+chr(39));
                  DM1.Query1.Open;
                  if DM1.Query1.Eof then
                     begin
                     fmensagem('a sexta tabela segundaria não possui nenhum relacionamento'+#13
                               +'com as tabela anteriores. Invalido!',0,['0'],0);
                     CB_TAB07.SetFocus;
                     exit;
                     end;
                  end;
               end;
            end;
         end;
      end;
   While not DM1.Query1.Eof do
      begin
      x:=Frm_Tab00fil.STG_FILTRO.RowCount;
      Frm_Tab00fil.STG_FILTRO.RowCount:=x+1;
      Frm_Tab00fil.STG_FILTRO.Rows[x].Clear;
//      x:=x-1;
      if DM2.Tb_Arq.Locate('CANOMCAM',trim(DM1.Query1.Fields[3].AsString),[]) then
         Frm_Tab00fil.STG_FILTRO.Cells[0,x]:=DM2.Tb_ArqCANOMREG.Value
      else
         Frm_Tab00fil.STG_FILTRO.Cells[0,x]:=DM1.Query1.Fields[3].AsString;
      Frm_Tab00fil.STG_FILTRO.Cells[1,x]:='=';
      if DM2.Tb_Arq.Locate('CANOMCAM',trim(DM1.Query1.Fields[2].Asstring),[]) then
         Frm_Tab00fil.STG_FILTRO.Cells[2,x]:=DM2.Tb_ArqCANOMREG.Value
      else
         Frm_Tab00fil.STG_FILTRO.Cells[2,x]:=DM1.Query1.Fields[2].AsString;
      Frm_Tab00fil.STG_FILTRO.Cells[3,x]:='A';
      Frm_Tab00fil.STG_FILTRO.Cells[4,x]:='A';
      Frm_Tab00fil.STG_FILTRO.Cells[5,x]:=mtabseg;
      Frm_Tab00fil.STG_FILTRO.Cells[6,x]:=mtabmas;
      DM1.Query1.Next;
      end;
   end;

//  FINAL TABELAS SETE


//  TABELA SEIS
if Trim(CB_TAB06.Text)<>'' then
   begin
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB01.Text),[]) then
      mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
   else
      mtabmas:=Trim(CB_TAB01.Text);
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB06.Text),[]) then
      mtabseg:=Trim(DM2.Tb_ArqCANOMARQ.Value)
   else
      mtabseg:=Trim(CB_TAB06.Text);
   DM1.Query1.Close;
   DM1.Query1.SQl.Clear;
   DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                     +' where TABMAS='+chr(39)+mtabmas+chr(39)
                     +' and TABSEG='+chr(39)+mtabseg+chr(39));
   DM1.Query1.Open;
   if DM1.Query1.Eof then
      begin
      if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB02.Text),[]) then
         mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
      else
         mtabmas:=Trim(CB_TAB02.Text);
       DM1.Query1.Close;
       DM1.Query1.SQl.Clear;
       DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                        +' where TABMAS='+chr(39)+mtabmas+chr(39)
                        +' and TABSEG='+chr(39)+mtabseg+chr(39));
      DM1.Query1.Open;
      if DM1.Query1.Eof then
         begin
         if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB03.Text),[]) then
            mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
         else
            mtabmas:=Trim(CB_TAB03.Text);
         DM1.Query1.Close;
         DM1.Query1.SQl.Clear;
         DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                           +' where TABMAS='+chr(39)+mtabmas+chr(39)
                           +' and TABSEG='+chr(39)+mtabseg+chr(39));
         DM1.Query1.Open;
         if DM1.Query1.Eof then
            begin
            if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB04.Text),[]) then
               mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
            else
               mtabmas:=Trim(CB_TAB04.Text);
            DM1.Query1.Close;
            DM1.Query1.SQl.Clear;
            DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                              +' where TABMAS='+chr(39)+mtabmas+chr(39)
                             +' and TABSEG='+chr(39)+mtabseg+chr(39));
            DM1.Query1.Open;
            if DM1.Query1.Eof then
               begin
               if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB05.Text),[]) then
                  mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
               else
                  mtabmas:=Trim(CB_TAB05.Text);
               DM1.Query1.Close;
               DM1.Query1.SQl.Clear;
               DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                                 +' where TABMAS='+chr(39)+mtabmas+chr(39)
                                 +' and TABSEG='+chr(39)+mtabseg+chr(39));
               DM1.Query1.Open;
               if DM1.Query1.Eof then
                  begin
                  fmensagem('a quinta tabela segundaria não possui nenhum relacionamento'+#13
                            +'com as tabela anteriores. Invalido!',0,['0'],0);
                  CB_TAB06.SetFocus;
                  exit;
                  end;
               end;
            end;
         end;
      end;
   While not DM1.Query1.Eof do
      begin
      x:=Frm_Tab00fil.STG_FILTRO.RowCount;
      Frm_Tab00fil.STG_FILTRO.RowCount:=x+1;
      Frm_Tab00fil.STG_FILTRO.Rows[x].Clear;
//      x:=x-1;
      if DM2.Tb_Arq.Locate('CANOMCAM',trim(DM1.Query1.Fields[3].AsString),[]) then
         Frm_Tab00fil.STG_FILTRO.Cells[0,x]:=DM2.Tb_ArqCANOMREG.Value
      else
         Frm_Tab00fil.STG_FILTRO.Cells[0,x]:=DM1.Query1.Fields[3].AsString;
      Frm_Tab00fil.STG_FILTRO.Cells[1,x]:='=';
      if DM2.Tb_Arq.Locate('CANOMCAM',trim(DM1.Query1.Fields[2].Asstring),[]) then
         Frm_Tab00fil.STG_FILTRO.Cells[2,x]:=DM2.Tb_ArqCANOMREG.Value
      else
         Frm_Tab00fil.STG_FILTRO.Cells[2,x]:=DM1.Query1.Fields[2].AsString;
      Frm_Tab00fil.STG_FILTRO.Cells[3,x]:='A';
      Frm_Tab00fil.STG_FILTRO.Cells[4,x]:='A';
      Frm_Tab00fil.STG_FILTRO.Cells[5,x]:=mtabseg;
      Frm_Tab00fil.STG_FILTRO.Cells[6,x]:=mtabmas;
      DM1.Query1.Next;
      end;
   end;

//  FINAL TABELAS SEIS
if Trim(CB_TAB05.Text)<>'' then
   begin
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB01.Text),[]) then
      mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
   else
      mtabmas:=Trim(CB_TAB01.Text);
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB05.Text),[]) then
      mtabseg:=Trim(DM2.Tb_ArqCANOMARQ.Value)
   else
      mtabseg:=Trim(CB_TAB05.Text);
   DM1.Query1.Close;
   DM1.Query1.SQl.Clear;
   DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                     +' where TABMAS='+chr(39)+mtabmas+chr(39)
                     +' and TABSEG='+chr(39)+mtabseg+chr(39));
   DM1.Query1.Open;
   if DM1.Query1.Eof then
      begin
      if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB02.Text),[]) then
         mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
      else
         mtabmas:=Trim(CB_TAB02.Text);
      DM1.Query1.Close;
      DM1.Query1.SQl.Clear;
      DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                        +' where TABMAS='+chr(39)+mtabmas+chr(39)
                        +' and TABSEG='+chr(39)+mtabseg+chr(39));
      DM1.Query1.Open;
      if DM1.Query1.Eof then
         begin
         if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB03.Text),[]) then
            mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
         else
             mtabmas:=Trim(CB_TAB03.Text);
         DM1.Query1.Close;
         DM1.Query1.SQl.Clear;
         DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                           +' where TABMAS='+chr(39)+mtabmas+chr(39)
                           +' and TABSEG='+chr(39)+mtabseg+chr(39));
         DM1.Query1.Open;
         if DM1.Query1.Eof then
            begin
            if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB04.Text),[]) then
               mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
            else
               mtabmas:=Trim(CB_TAB04.Text);
            DM1.Query1.Close;
            DM1.Query1.SQl.Clear;
            DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                              +' where TABMAS='+chr(39)+mtabmas+chr(39)
                              +' and TABSEG='+chr(39)+mtabseg+chr(39));
            DM1.Query1.Open;
            if DM1.Query1.Eof then
               begin
               fmensagem('a quarta tabela segundaria não possui nenhum relacionamento'+#13
                         +'com as tabela anteriores. Invalido!',0,['0'],0);
               CB_TAB05.SetFocus;
               exit;
               end;
            end;
         end;
      end;
   While not DM1.Query1.Eof do
      begin
      x:=Frm_Tab00fil.STG_FILTRO.RowCount;
      Frm_Tab00fil.STG_FILTRO.RowCount:=x+1;
      Frm_Tab00fil.STG_FILTRO.Rows[x].Clear;
//      x:=x-1;     //lindomar
      if DM2.Tb_Arq.Locate('CANOMCAM',trim(DM1.Query1.Fields[3].AsString),[]) then
         Frm_Tab00fil.STG_FILTRO.Cells[0,x]:=DM2.Tb_ArqCANOMREG.Value
      else
         Frm_Tab00fil.STG_FILTRO.Cells[0,x]:=DM1.Query1.Fields[3].AsString;
      Frm_Tab00fil.STG_FILTRO.Cells[1,x]:='=';
      if DM2.Tb_Arq.Locate('CANOMCAM',trim(DM1.Query1.Fields[2].Asstring),[]) then
         Frm_Tab00fil.STG_FILTRO.Cells[2,x]:=DM2.Tb_ArqCANOMREG.Value
      else
         Frm_Tab00fil.STG_FILTRO.Cells[2,x]:=DM1.Query1.Fields[2].AsString;
      Frm_Tab00fil.STG_FILTRO.Cells[3,x]:='A';
      Frm_Tab00fil.STG_FILTRO.Cells[4,x]:='A';
      Frm_Tab00fil.STG_FILTRO.Cells[5,x]:=mtabseg;
      Frm_Tab00fil.STG_FILTRO.Cells[6,x]:=mtabmas;
      DM1.Query1.Next;
      end;
   end;
if Trim(CB_PERIODO.Text)<>'' then
   begin
   if not DM2.Tb_Arq.Locate('CANOMREG',trim(CB_PERIODO.Text),[]) then
      begin
      fmensagem('O campo pesquisar por data não existe',0,['0'],0);
      CB_PERIODO.SetFocus;
      exit;
      end;
   end;
if valfloat(QTDDIV.Text)>11 then
   begin
   fmensagem('É permitido no máximo 12 divisões',0,['0'],0);
   QTDDIV.SetFocus;
   exit;
   end;
if (ValFloat(QTDDIV.Text)>1) then
   begin
   if (Frm_Tab00Div.STG_DIV.RowCount<3) then
       begin
       fmensagem('Quando o Campo Dividir/somar é maior que 1 tem que ser '+#13
                 +'declarado os Campos a ser Divididos',0,['0'],0);
       BDIVIDIR.SetFocus;
       exit;
       end
   else if trim(CB_PERIODO.Text)='' then
       begin
       fmensagem('O Campo Pesquisar por Data tem que ser preenchido!',0,['0'],0);
       CB_PERIODO.SetFocus;
       exit;
       end;
   end;
if Trim(CB_TAB04.Text)<>'' then
   begin
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB01.Text),[]) then
      mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
   else
      mtabmas:=Trim(CB_TAB01.Text);
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB04.Text),[]) then
      mtabseg:=Trim(DM2.Tb_ArqCANOMARQ.Value)
   else
      mtabseg:=Trim(CB_TAB04.Text);
   DM1.Query1.Close;
   DM1.Query1.SQl.Clear;
   DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                     +' where TABMAS='+chr(39)+mtabmas+chr(39)
                     +' and TABSEG='+chr(39)+mtabseg+chr(39));
   DM1.Query1.Open;
   if DM1.Query1.Eof then
      begin
      if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB02.Text),[]) then
         mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
      else
          mtabmas:=Trim(CB_TAB02.Text);
      DM1.Query1.Close;
      DM1.Query1.SQl.Clear;
      DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                        +' where TABMAS='+chr(39)+mtabmas+chr(39)
                        +' and TABSEG='+chr(39)+mtabseg+chr(39));
      DM1.Query1.Open;
      if DM1.Query1.Eof then
         begin
         if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB03.Text),[]) then
            mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
         else
            mtabmas:=Trim(CB_TAB03.Text);
         DM1.Query1.Close;
         DM1.Query1.SQl.Clear;
         DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                           +' where TABMAS='+chr(39)+mtabmas+chr(39)
                           +' and TABSEG='+chr(39)+mtabseg+chr(39));
         DM1.Query1.Open;
         if DM1.Query1.Eof then
            begin
            fmensagem('a terceira tabela segundaria não possui nenhum relacionamento'+#13
                      +'com as tabela anteriores. Invalido!',0,['0'],0);
            CB_TAB04.SetFocus;
            exit;
            end;
         end;
      end;
   While not DM1.Query1.Eof do
      begin
      x:=Frm_Tab00fil.STG_FILTRO.RowCount;
      Frm_Tab00fil.STG_FILTRO.RowCount:=x+1;
      Frm_Tab00fil.STG_FILTRO.Rows[x].Clear;
//      x:=x-1;
      if DM2.Tb_Arq.Locate('CANOMCAM',trim(DM1.Query1.Fields[3].AsString),[]) then
         Frm_Tab00fil.STG_FILTRO.Cells[0,x]:=DM2.Tb_ArqCANOMREG.Value
      else
         Frm_Tab00fil.STG_FILTRO.Cells[0,x]:=DM1.Query1.Fields[3].AsString;
      Frm_Tab00fil.STG_FILTRO.Cells[1,x]:='=';
      if DM2.Tb_Arq.Locate('CANOMCAM',trim(DM1.Query1.Fields[2].Asstring),[]) then
         Frm_Tab00fil.STG_FILTRO.Cells[2,x]:=DM2.Tb_ArqCANOMREG.Value
      else
         Frm_Tab00fil.STG_FILTRO.Cells[2,x]:=DM1.Query1.Fields[2].AsString;
      Frm_Tab00fil.STG_FILTRO.Cells[3,x]:='A';
      Frm_Tab00fil.STG_FILTRO.Cells[4,x]:='A';
      Frm_Tab00fil.STG_FILTRO.Cells[5,x]:=mtabseg;
      Frm_Tab00fil.STG_FILTRO.Cells[6,x]:=mtabmas;
      DM1.Query1.Next;
      end;
   end;

if Trim(CB_TAB03.Text)<>'' then
   begin
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB01.Text),[]) then
      mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
   else
      mtabmas:=Trim(CB_TAB01.Text);
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB03.Text),[]) then
      mtabseg:=Trim(DM2.Tb_ArqCANOMARQ.Value)
   else
      mtabseg:=Trim(CB_TAB03.Text);
   DM1.Query1.Close;
   DM1.Query1.SQl.Clear;
   DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                     +' where TABMAS='+chr(39)+mtabmas+chr(39)
                     +' and TABSEG='+chr(39)+mtabseg+chr(39));
   DM1.Query1.Open;
   if DM1.Query1.Eof then
      begin
      if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB02.Text),[]) then
         mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
      else
         mtabmas:=Trim(CB_TAB02.Text);
      DM1.Query1.Close;
      DM1.Query1.SQl.Clear;
      DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                        +' where TABMAS='+chr(39)+mtabmas+chr(39)
                        +' and TABSEG='+chr(39)+mtabseg+chr(39));
      DM1.Query1.Open;
      if DM1.Query1.Eof then
         begin
         fmensagem('a Segunda tabela segundaria não possui nenhum relacionamento'+#13
                   +'com as tabela anteriores. Invalido!',0,['0'],0);
         CB_TAB03.SetFocus;
         exit;
         end;
      end;
   While not DM1.Query1.Eof do
      begin
      x:=Frm_Tab00fil.STG_FILTRO.RowCount;
      Frm_Tab00fil.STG_FILTRO.RowCount:=x+1;
      Frm_Tab00fil.STG_FILTRO.Rows[x].Clear;
//      x:=x-1;
      if DM2.Tb_Arq.Locate('CANOMCAM',trim(DM1.Query1.Fields[3].AsString),[]) then
         Frm_Tab00fil.STG_FILTRO.Cells[0,x]:=DM2.Tb_ArqCANOMREG.Value
      else
         Frm_Tab00fil.STG_FILTRO.Cells[0,x]:=DM1.Query1.Fields[3].AsString;
      Frm_Tab00fil.STG_FILTRO.Cells[1,x]:='=';
      if DM2.Tb_Arq.Locate('CANOMCAM',trim(DM1.Query1.Fields[2].Asstring),[]) then
         Frm_Tab00fil.STG_FILTRO.Cells[2,x]:=DM2.Tb_ArqCANOMREG.Value
      else
         Frm_Tab00fil.STG_FILTRO.Cells[2,x]:=DM1.Query1.Fields[2].AsString;
      Frm_Tab00fil.STG_FILTRO.Cells[3,x]:='A';
      Frm_Tab00fil.STG_FILTRO.Cells[4,x]:='A';
      Frm_Tab00fil.STG_FILTRO.Cells[5,x]:=mtabseg;
      Frm_Tab00fil.STG_FILTRO.Cells[6,x]:=mtabmas;
      DM1.Query1.Next;
      end;
   end;

if Trim(CB_TAB02.Text)<>'' then
   begin
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB01.Text),[]) then
      mtabmas:=Trim(DM2.Tb_ArqCANOMARQ.Value)
   else
      mtabmas:=Trim(CB_TAB01.Text);
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB02.Text),[]) then
      mtabseg:=Trim(DM2.Tb_ArqCANOMARQ.Value)
   else
      mtabseg:=Trim(CB_TAB02.Text);
   DM1.Query1.Close;
   DM1.Query1.SQl.Clear;
   DM1.Query1.SQL.Add('Select TABMAS,TABSEG,CAMMAS,CAMSEG from LIGACAO '
                     +' where TABMAS='+chr(39)+mtabmas+chr(39)
                     +' and TABSEG='+chr(39)+mtabseg+chr(39));
   DM1.Query1.Open;
   if DM1.Query1.Eof then
      begin
      fmensagem('a Primeira tabela segundaria não possui nenhum relacionamento'+#13
                +'com as tabela anteriores. Invalido!',0,['0'],0);
      CB_TAB02.SetFocus;
      exit;
      end;
   While not DM1.Query1.Eof do
      begin
      x:=Frm_Tab00fil.STG_FILTRO.RowCount;
      Frm_Tab00fil.STG_FILTRO.RowCount:=x+1;
      Frm_Tab00fil.STG_FILTRO.Rows[x].Clear;
//      x:=x-1;
      if DM2.Tb_Arq.Locate('CANOMCAM',trim(DM1.Query1.Fields[3].AsString),[]) then
         Frm_Tab00fil.STG_FILTRO.Cells[0,x]:=DM2.Tb_ArqCANOMREG.Value
      else
         Frm_Tab00fil.STG_FILTRO.Cells[0,x]:=DM1.Query1.Fields[3].AsString;
      Frm_Tab00fil.STG_FILTRO.Cells[1,x]:='=';
      if DM2.Tb_Arq.Locate('CANOMCAM',trim(DM1.Query1.Fields[2].Asstring),[]) then
         Frm_Tab00fil.STG_FILTRO.Cells[2,x]:=DM2.Tb_ArqCANOMREG.Value
      else
         Frm_Tab00fil.STG_FILTRO.Cells[2,x]:=DM1.Query1.Fields[2].AsString;
      Frm_Tab00fil.STG_FILTRO.Cells[3,x]:='A';
      Frm_Tab00fil.STG_FILTRO.Cells[4,x]:='A';
      Frm_Tab00fil.STG_FILTRO.Cells[5,x]:=mtabseg;
      Frm_Tab00fil.STG_FILTRO.Cells[6,x]:=mtabmas;
      DM1.Query1.Next;
      end;
   end;
mfilven:='';
mfilcli:='';
mfilred:='';
mfilfor:='';
mfilpro:='';
if (CB_FILVEN1.Checked)  then
   begin
   mfilven:=ftab00filnc('CADVEN');
   if trim(mfilven)='' then
      begin
      fmensagem('Não ha tabelas relacionadas a este campo INVALIDO!',0,['0'],0);
      CB_FILVEN1.SetFocus;
      exit;
      end;
   end;

if (CB_FILGPRO.Checked)   then
   begin
   mfilgpro:=ftab00filnc('CODGRU');
   if trim(mfilgpro)='' then
      begin
      fmensagem('Não ha tabelas relacionadas a este campo INVALIDO!',0,['0'],0);
      CB_FILGPRO.SetFocus;
      exit;
      end;
   end;
if (CB_FILRAMPRO.Checked)   then
   begin
   mfilrampro:=ftab00filnc('CODRAM');
   if trim(mfilrampro)='' then
      begin
      fmensagem('Não ha tabelas relacionadas a este campo INVALIDO!',0,['0'],0);
      CB_FILRAMPRO.SetFocus;
      exit;
      end;
   end;


if (CB_FILCLI1.Checked)   then
   begin
   mfilcli:=ftab00filnc('CODCLI');
   if trim(mfilcli)='' then
      begin
      fmensagem('Não ha tabelas relacionadas a este campo INVALIDO!',0,['0'],0);
      CB_FILCLI1.SetFocus;
      exit;
      end;
   end;
if (CB_FILRED1.Checked)  then
   begin
   mfilred:=ftab00filnc('CODRED');
   if trim(mfilred)='' then
      begin
      fmensagem('Não ha tabelas relacionadas a este campo INVALIDO!',0,['0'],0);
      CB_FILRED1.SetFocus;
      exit;
      end;
   end;
if (CB_FILEST1.Checked)  then
   begin
   mfilest:=ftab00filnc('CUF');
   if trim(mfilest)='' then
      begin
      fmensagem('Não ha tabelas relacionadas a este campo INVALIDO!',0,['0'],0);
      CB_FILEST1.SetFocus;
      exit;
      end;
   end;

if (CB_FILFOR1.Checked) then
   begin
   mfilfor:=ftab00filnc('CODFOR');
   if trim(mfilfor)='' then
      begin
      fmensagem('Não ha tabelas relacionadas a este campo INVALIDO!',0,['0'],0);
      CB_FILFOR1.SetFocus;
      exit;
      end;
   end;
if (CB_FILPRO1.Checked)  then
   begin
   mfilpro:=ftab00filnc('CODPRO');
   if trim(mfilpro)='' then
      begin
      fmensagem('Não ha tabelas relacionadas a este campo INVALIDO!',0,['0'],0);
      CB_FILPRO1.SetFocus;
      exit;
      end;
   end;



if moper_tab00=1 then
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.SQl.add('Delete from CTDVFT where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADTDV',[]),'','  TFCODEMP=0'+IntTostr(codemp)+' and ')
                     +' TFDOC='+chr(39)+Qr_RelTCDOC.Value+chr(39)
                     +' and TFNOME='+chr(39)+Qr_RelTCNOME.Value+chr(39)
                     +' and tftipo<7');
   DM1.Query1.ExecSQL;
   end;
if DM2.Tb_Arq.Locate('CANOMARQ',Trim(CB_MENU.Text),[]) then
   menu:=DM2.Tb_ArqCANOMARQ.Value
else
   menu:=Trim(CB_MENU.Text);


if menu<>Qr_RelTCDOC.Value then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CTDVOP set TODOC='+chr(39)+menu+chr(39)+' where ');
   if not DM1.Qr_Tid.Locate('TINOME',mpesq,[]) then
      DM1.Query1.sql.add(' TOCODEMP='+IntToStr(codemp)+' and ');
   DM1.Query1.SQL.add(' TODOC='+chr(39)+Qr_RelTCDOC.Value+chr(39)
                     +' and TONOME='+chr(39)+Qr_RelTCNOME.Value+chr(39));
   try
     DM1.Query1.ExecSQL;
   except
     dm1.Query1.Sql.SaveToFile(mpastatemp + 'SQL.txt');
     end;
   FDM1StarTcommit;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CTDVFT set TFDOC='+chr(39)+menu+chr(39)+' where ');
   if not DM1.Qr_Tid.Locate('TINOME',mpesq,[]) then
      DM1.Query1.sql.add(' TFCODEMP='+IntToStr(codemp)+' and ');
   DM1.Query1.SQL.add(' TFDOC='+chr(39)+Qr_RelTCDOC.Value+chr(39)
                     +' and TFNOME='+chr(39)+Qr_RelTCNOME.Value+chr(39));
   DM1.Query1.ExecSQL;
   fDM1StartCommit;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADTDV set TDOC='+chr(39)+menu+chr(39)+' where ');
   if not DM1.Qr_Tid.Locate('TINOME',mpesq,[]) then
      DM1.Query1.Sql.add(' TCODEMP='+IntToStr(codemp)+' and ');
   DM1.Query1.Sql.add(' TDOC='+chr(39)+Qr_RelTCDOC.Value+chr(39)
                     +' and TNOME='+chr(39)+Qr_RelTCNOME.Value+chr(39));
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
   end;

mtabant:=NOMREL.Text;
DM1.Query1.SQL.Clear;
DM1.Query1.Params.Clear;
DM1.Query1.Params.CreateParam(ftstring,'DOC',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'NOME',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'TCAMPO1',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'TAB01',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'CAMPO1',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'COND1',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'TCAMPO2',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'TAB02',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'CAMPO2',ptinput);
for x:=1 to Frm_Tab00Fil.STG_FILTRO.RowCount do
   begin
   if (Frm_Tab00fil.STG_FILTRO.Cells[0,x])='' then
      Continue;
   if not DM2.Tb_Arq.Locate('CANOMREG',trim(Frm_Tab00Fil.STG_FILTRO.Cells[0,x]),[]) then
      begin
      ShowMessage('nao encontrado '+ trim(Frm_Tab00Fil.STG_FILTRO.Cells[0,x]));
      Continue;
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Insert into CTDVFT ('
                     +' TFCODEMP,'
                     +' TFTIPO, '
                     +' TFCODIGO,'
                     +' TFDOC, '
                     +' TFNOME, '
                     +' TFTCAMPO1,'
                     +' TFTAB01,'
                     +' TFCAMPO1,'
                     +' TFCOND1, '
                     +' TFTCAMPO2, '
                     +' TFTAB02, '
                     +' TFCAMPO2 ) values ('
                     +IntToStr(codemp)+','
                     +iif(Frm_Tab00fil.STG_FILTRO.Cells[3,X]='A','0','2')+','
                     +IntToStr(x)+','
                     +':DOC,'
                     +':NOME,'
                     +':TCAMPO1,'
                     +':TAB01,'
                     +':CAMPO1,'
                     +':COND1,'
                     +':TCAMPO2,'
                     +':TAB02,'
                     +':CAMPO2)');
   DM1.Query1.ParamByName('DOC').AsString:=menu;
   DM1.Query1.ParamByName('NOME').AsString   :=NOMREL.Text;
   DM1.Query1.ParamByName('TCAMPO1').AsString :=Frm_Tab00Fil.STG_FILTRO.Cells[3,x];

{   if DM2.Tb_Arq.Locate('CANOMARQ',trim(Frm_Tab00Fil.STG_FILTRO.Cells[5,x]),[]) then
      begin
      DM1.Query1.ParamByName('TAB01').AsString:=DM2.Tb_ArqCANOMARQ.Value;
      end
   else
      DM1.Query1.ParamByName('TAB01').AsString:='';
}

   DM1.Query1.ParamByName('TAB01').AsString:=trim(Frm_Tab00Fil.STG_FILTRO.Cells[5,x]);


   if DM2.Tb_Arq.Locate('CANOMREG',trim(Frm_Tab00Fil.STG_FILTRO.Cells[0,x]),[]) then
      begin
      if Frm_Tab00fil.STG_FILTRO.Cells[3,X]='A' then
         begin
         if length(DM2.Tb_ArqCANOMCAM.Value)>5 then
            if copy(DM2.Tb_ArqCANOMCAM.Value,1,6)='CODEMP' then
               Frm_Tab00Fil.STG_FILTRO.Cells[1,x]:='=='
            else if length(DM2.Tb_ArqCANOMCAM.Value)>6 then
               if copy(DM2.Tb_ArqCANOMCAM.Value,2,6)='CODEMP' then
                  Frm_Tab00Fil.STG_FILTRO.Cells[1,x]:='=='
               else if length(DM2.Tb_ArqCANOMCAM.Value)>7 then
                  if copy(DM2.Tb_ArqCANOMCAM.Value,3,6)='CODEMP' then
                     Frm_Tab00Fil.STG_FILTRO.Cells[1,x]:='=='
                  else if length(DM2.Tb_ArqCANOMCAM.Value)>8 then
                     if copy(DM2.Tb_ArqCANOMCAM.Value,4,6)='CODEMP' then
                        Frm_Tab00Fil.STG_FILTRO.Cells[1,x]:='==';
         end;
      DM1.Query1.ParamByName('CAMPO1').AsString:=DM2.Tb_ArqCANOMCAM.Value;
      end
   else
      DM1.Query1.ParamByName('CAMPO1').AsString:='';
   DM1.Query1.ParamByName('COND1').AsString  :=Frm_Tab00Fil.STG_FILTRO.Cells[1,x];

   DM1.Query1.ParamByName('TCAMPO2').AsString:=Frm_Tab00Fil.STG_FILTRO.Cells[4,x];

{   if DM2.Tb_Arq.Locate('CANOMARQ',trim(Frm_Tab00Fil.STG_FILTRO.Cells[6,x]),[]) then
      begin
      DM1.Query1.ParamByName('TAB02').AsString:=DM2.Tb_ArqCANOMARQ.Value;
      end
   else
      DM1.Query1.ParamByName('TAB02').AsString:='';
}


   DM1.Query1.ParamByName('TAB02').AsString:=trim(Frm_Tab00Fil.STG_FILTRO.Cells[6,x]);

   if DM2.Tb_Arq.Locate('CANOMREG',trim(Frm_Tab00Fil.STG_FILTRO.Cells[2,x]),[]) then
      begin
      DM1.Query1.ParamByName('CAMPO2').AsString:=DM2.Tb_ArqCANOMCAM.Value;
      end
   else
      DM1.Query1.ParamByName('CAMPO2').AsString:=Frm_Tab00Fil.STG_FILTRO.Cells[2,x];
   DM1.Query1.ExecSQL;
   FDM1STARTCOMMIT;
   end;

for x:=1 to Frm_Tab00Ord.STG_ORDEM.RowCount do
   begin
   if (Frm_Tab00Ord.STG_ORDEM.Cells[0,x])='' then
      Continue;

   if not DM2.Tb_Arq.Locate('CANOMREG',trim(Frm_Tab00Ord.STG_ORDEM.Cells[0,x]),[]) then
      begin
      DM1.Query1.Close;
      DM1.Query1.sql.clear;
      DM1.Query1.sql.add('Select count(*) from CTDVOP where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADTDV',[]),'',' TOCODEMP=0'+IntToStr(codemp)+' and ')
                        +' TOTDET=99 '
                        +' and TODOC='+chr(39)+Qr_RelTCDOC.Value+chr(39)
                        +' and TONOME='+chr(39)+Qr_RelTCNOME.Value+chr(39)
                        +' and TOCOND01='+chr(39)+trim(Frm_Tab00Ord.STG_ORDEM.Cells[0,x])+chr(39));
      DM1.Query1.Open;
      if DM1.Query1.fields[0].AsInteger<=0 then
         Continue;
      end;
//lindomarporcausadojuncao

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Insert into CTDVFT ('
                     +' TFCODEMP,'
                     +' TFTIPO, '
                     +' TFCODIGO,'
                     +' TFDOC, '
                     +' TFNOME, '
                     +' TFTCAMPO1,'
                     +' TFTAB01,'
                     +' TFCAMPO1,'
                     +' TFCOND1, '
                     +' TFTCAMPO2, '
                     +' TFTAB02, '
                     +' TFCAMPO2 ) values ('
                     +IntToStr(codemp)+','
                     +'3'+','
                     +IntToStr(x)+','
                     +':DOC,'
                     +':NOME,'
                     +':TCAMPO1,'
                     +':TAB01,'
                     +':CAMPO1,'
                     +':COND1,'
                     +':TCAMPO2,'
                     +':TAB02,'
                     +':CAMPO2)');
   DM1.Query1.ParamByName('DOC').AsString:=menu;
   DM1.Query1.ParamByName('NOME').AsString   :=NOMREL.Text;
   DM1.Query1.ParamByName('TCAMPO1').AsString :='';

   mNomeProcTemp:=copy(trim(Frm_Tab00Ord.STG_ORDEM.Cells[0,x]),1,30);
{   sHOWMESSAGE(mNomeProcTemp);
   if DM2.Tb_Arq.Active=false then
      sHOWMESSAGE('nao aberto tbarq');
   if DM2.Tb_Arq.Locate('CANOMARQ','lindomar',[]) then
      sHOWMESSAGE('achou');
 }

//   if DM2.Tb_Arq.Locate('CANOMARQ',trim(Frm_Tab00Ord.STG_ORDEM.Cells[0,x]),[]) then
   if DM2.Tb_Arq.Locate('CANOMARQ',mNomeProcTemp,[]) then
      begin
      DM1.Query1.ParamByName('TAB01').AsString:=DM2.Tb_ArqCANOMARQ.Value;
      end
   else
      DM1.Query1.ParamByName('TAB01').AsString:='';
   if DM2.Tb_Arq.Locate('CANOMREG',trim(Frm_Tab00Ord.STG_ORDEM.Cells[0,x]),[]) then
      begin
      DM1.Query1.ParamByName('CAMPO1').AsString:=DM2.Tb_ArqCANOMCAM.Value;
      end
   else
      DM1.Query1.ParamByName('CAMPO1').AsString:=trim(Frm_Tab00Ord.STG_ORDEM.Cells[0,x]);
   if Frm_Tab00Ord.STG_ORDEM.Cells[2,x]='X' then
      DM1.Query1.ParamByName('COND1').AsString  := 'D'
   else
      DM1.Query1.ParamByName('COND1').AsString  := 'C';

   DM1.Query1.ParamByName('TCAMPO2').AsString:='';
   DM1.Query1.ParamByName('TAB02').AsString  :='';
   DM1.Query1.ParamByName('CAMPO2').AsString :='';
   DM1.Query1.ExecSQL;
   end;

for x:=1 to Frm_Tab00div.STG_DIV.RowCount do
   begin
   if (Frm_Tab00Div.STG_DIV.Cells[0,x])='' then
      Continue;
   if not DM2.Tb_Arq.Locate('CANOMREG',trim(Frm_Tab00div.STG_DIV.Cells[0,x]),[]) then
      Continue;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Insert into CTDVFT ('
                     +' TFCODEMP,'
                     +' TFTIPO, '
                     +' TFCODIGO,'
                     +' TFDOC, '
                     +' TFNOME, '
                     +' TFTCAMPO1,'
                     +' TFTAB01,'
                     +' TFCAMPO1,'
                     +' TFCOND1, '
                     +' TFTCAMPO2, '
                     +' TFTAB02, '
                     +' TFCAMPO2 ) values ('
                     +IntToStr(codemp)+','
                     +'6'+','
                     +IntToStr(x)+','
                     +':DOC,'
                     +':NOME,'
                     +':TCAMPO1,'
                     +':TAB01,'
                     +':CAMPO1,'
                     +':COND1,'
                     +':TCAMPO2,'
                     +':TAB02,'
                     +':CAMPO2)');
   DM1.Query1.ParamByName('CAMPO1').AsString:=DM2.Tb_ArqCANOMCAM.Value;
   DM1.Query1.ParamByName('DOC').AsString   :=menu;
   DM1.Query1.ParamByName('NOME').AsString  :=NOMREL.Text;

   DM1.Query1.ParamByName('TCAMPO1').AsString :='';
   DM1.Query1.ParamByName('TAB01').AsString:='';
   DM1.Query1.ParamByName('COND1').AsString  :='';
   DM1.Query1.ParamByName('TCAMPO2').AsString:='';
   DM1.Query1.ParamByName('TAB02').AsString  :='';
   DM1.Query1.ParamByName('CAMPO2').AsString :='';
   DM1.Query1.ExecSQL;
   end;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CTDVFE where '
                 +iif(DM1.Qr_Tid.Locate('TINOME','CADTDV',[]),'',' FECODEMP=0'+InttoStr(codemp)+' and ')
                 +' FEDOC='+chr(39)+Qr_RelTCDOC.Value+chr(39)
                 +' and FENOME='+chr(39)+Qr_RelTCNOME.Value+chr(39));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   fmensagem('Erro 1564 ao deletar CTDVFE',0,['0'],0);
   end;
if Trim(Frm_Tab_FE.Memo1.Text)<>'' then
   begin
   mcinst:='';
   for x:=0 to Frm_Tab_FE.Memo1.Lines.Count-1 do
      begin
      if Trim(Frm_Tab_FE.Memo1.Lines[x])='' then
         Continue;
      mcinst:=mcinst+' '+Frm_Tab_FE.Memo1.Lines[x];
      end;
   DM1.Query1.Close;
   DM1.query1.SQL.Clear;
   DM1.query1.Params.CreateParam(ftString,'CODEMP',ptInput);
   DM1.query1.Params.CreateParam(ftString,'DOC',ptInput);
   DM1.query1.Params.CreateParam(ftString,'NOME',ptInput);
   DM1.query1.Params.CreateParam(ftString,'TIPO',ptInput);
   DM1.query1.Params.CreateParam(ftString,'FILTRO',ptInput);
   DM1.Query1.SQL.add('Insert into CTDVFE ('
                     +' FECODEMP '
                     +',FEDOC '
                     +',FENOME '
                     +',FETIPO '
                     +',FEFILTRO) Values ('
                     +' :CODEMP '
                     +',:DOC '
                     +',:NOME '
                     +',:TIPO '
                     +',:FILTRO )');
   DM1.query1.ParamByName('CODEMP').AsFloat:=codemp;
   DM1.query1.ParamByName('DOC').AsString  :=Qr_RelTCDOC.Value;
   DM1.query1.ParamByName('NOME').AsString :=Qr_RelTCNOME.Value;
   DM1.query1.ParamByName('TIPO').AsInteger:=0;
   DM1.query1.ParamByName('FILTRO').AsString:=mcinst;
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 1595 ao criar CTDVFE',0,['0'],0);
      end;
   end;


// Grupos do relatorio
for x:=1 to Frm_Tab00Gru.STG_GRUPO.RowCount do
   begin
   if (Frm_Tab00Gru.STG_GRUPO.Cells[0,x])='' then
      Continue;
   if not DM2.Tb_Arq.Locate('CANOMREG',trim(Frm_Tab00Gru.STG_GRUPO.Cells[0,x]),[]) then
      Continue;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Insert into CTDVFT ('
                     +' TFCODEMP,'
                     +' TFTIPO, '
                     +' TFCODIGO,'
                     +' TFDOC, '
                     +' TFNOME, '
                     +' TFTCAMPO1,'
                     +' TFTAB01,'
                     +' TFCAMPO1,'
                     +' TFCOND1, '
                     +' TFTCAMPO2, '
                     +' TFTAB02, '
                     +' TFCAMPO2 ) values ('
                     +IntToStr(codemp)+','
                     +'4'+','
                     +IntToStr(x)+','
                     +':DOC,'
                     +':NOME,'
                     +':TCAMPO1,'
                     +':TAB01,'
                     +':CAMPO1,'
                     +':COND1,'
                     +':TCAMPO2,'
                     +':TAB02,'
                     +':CAMPO2)');
   DM1.Query1.ParamByName('DOC').AsString    :=menu;
   DM1.Query1.ParamByName('NOME').AsString   :=NOMREL.Text;
   DM1.Query1.ParamByName('TCAMPO1').AsString :='';
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(Frm_Tab00Gru.STG_GRUPO.Cells[1,x]),[]) then
      begin
      DM1.Query1.ParamByName('TAB01').AsString:=DM2.Tb_ArqCANOMARQ.Value;
      end
   else
      DM1.Query1.ParamByName('TAB01').AsString:='';
   if DM2.Tb_Arq.Locate('CANOMREG',trim(Frm_Tab00Gru.STG_GRUPO.Cells[0,x]),[]) then
      begin
      DM1.Query1.ParamByName('CAMPO1').AsString:=DM2.Tb_ArqCANOMCAM.Value;
      end
   else
      DM1.Query1.ParamByName('CAMPO1').AsString:='';
   DM1.Query1.ParamByName('COND1').AsString  :='';
   DM1.Query1.ParamByName('TCAMPO2').AsString:='';
   DM1.Query1.ParamByName('TAB02').AsString  :='';
   DM1.Query1.ParamByName('CAMPO2').AsString :='';
   DM1.Query1.ExecSQL;
   end;
// fim do grupo


// Sub Grupos do relatorio
for x:=1 to Frm_Tab00SG.STG_SG.RowCount do
   begin
   if (Frm_Tab00SG.STG_SG.Cells[0,x])='' then
      Continue;
   if not DM2.Tb_Arq.Locate('CANOMREG',trim(Frm_Tab00SG.STG_SG.Cells[0,x]),[]) then
      Continue;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Insert into CTDVFT ('
                     +' TFCODEMP,'
                     +' TFTIPO, '
                     +' TFCODIGO,'
                     +' TFDOC, '
                     +' TFNOME, '
                     +' TFTCAMPO1,'
                     +' TFTAB01,'
                     +' TFCAMPO1,'
                     +' TFCOND1, '
                     +' TFTCAMPO2, '
                     +' TFTAB02, '
                     +' TFCAMPO2 ) values ('
                     +IntToStr(codemp)+','
                     +'5'+','
                     +IntToStr(x)+','
                     +':DOC,'
                     +':NOME,'
                     +':TCAMPO1,'
                     +':TAB01,'
                     +':CAMPO1,'
                     +':COND1,'
                     +':TCAMPO2,'
                     +':TAB02,'
                     +':CAMPO2)');
   DM1.Query1.ParamByName('DOC').AsString    :=menu;
   DM1.Query1.ParamByName('NOME').AsString   :=NOMREL.Text;
   DM1.Query1.ParamByName('TCAMPO1').AsString :='';
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(Frm_Tab00SG.STG_SG.Cells[1,x]),[]) then
      begin
      DM1.Query1.ParamByName('TAB01').AsString:=DM2.Tb_ArqCANOMARQ.Value;
      end
   else
      DM1.Query1.ParamByName('TAB01').AsString:='';
   if DM2.Tb_Arq.Locate('CANOMREG',trim(Frm_Tab00SG.STG_SG.Cells[0,x]),[]) then
      begin
      DM1.Query1.ParamByName('CAMPO1').AsString:=DM2.Tb_ArqCANOMCAM.Value;
      end
   else
      DM1.Query1.ParamByName('CAMPO1').AsString:='';
   DM1.Query1.ParamByName('COND1').AsString  :='';
   DM1.Query1.ParamByName('TCAMPO2').AsString:='';
   DM1.Query1.ParamByName('TAB02').AsString  :='';
   DM1.Query1.ParamByName('CAMPO2').AsString :='';
   DM1.Query1.ExecSQL;
   end;
// fim do sub-grupo



DM1.Query1.params.Clear;
if moper_tab00=1 then
   begin
   fltdvca(0,0,Qr_RelTCDOC.Value,Qr_RelTCNOME.Value,mpesq);
   DM1.Tb_TDVCA.Edit;
   end
else
   begin
   if not DM1.Tb_TDVCA.Active then
      fltdvca(0,0,Qr_RelTCDOC.Value,Qr_RelTCNOME.Value,mpesq);
   DM1.Tb_TDVCA.Append;
   end;
DM1.Tb_TDVCATCCODEMP.Value:=codemp;
DM1.Tb_TDVCATCDOC.Value   :=menu;

DM1.Tb_TDVCATCNOME.Value  :=NOMREL.Text;
if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB01.Text),[]) then
   DM1.Tb_TDVCATCTAB01.Value:=DM2.Tb_ArqCANOMARQ.Value
else
   DM1.Tb_TDVCATCTAB01.Value:=CB_TAB01.Text;
if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB02.Text),[]) then
   DM1.Tb_TDVCATCTAB02.Value:=DM2.Tb_ArqCANOMARQ.Value
else
   DM1.Tb_TDVCATCTAB02.Value:=CB_TAB02.Text;
if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB03.Text),[]) then
   DM1.Tb_TDVCATCTAB03.Value:=DM2.Tb_ArqCANOMARQ.Value
else
   DM1.Tb_TDVCATCTAB03.Value:=CB_TAB03.Text;
if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB04.Text),[]) then
   DM1.Tb_TDVCATCTAB04.Value:=DM2.Tb_ArqCANOMARQ.Value
else
   DM1.Tb_TDVCATCTAB04.Value:=CB_TAB04.Text;
if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB05.Text),[]) then
   DM1.Tb_TDVCATCTAB05.Value:=DM2.Tb_ArqCANOMARQ.Value
else
   DM1.Tb_TDVCATCTAB05.Value:=CB_TAB05.Text;
if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB06.Text),[]) then
   DM1.Tb_TDVCATCTAB06.Value:=DM2.Tb_ArqCANOMARQ.Value
else
   DM1.Tb_TDVCATCTAB06.Value:=CB_TAB06.Text;
if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB07.Text),[]) then
   DM1.Tb_TDVCATCTAB07.Value:=DM2.Tb_ArqCANOMARQ.Value
else
   DM1.Tb_TDVCATCTAB07.Value:=CB_TAB07.Text;
if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB08.Text),[]) then
   DM1.Tb_TDVCATCTAB08.Value:=DM2.Tb_ArqCANOMARQ.Value
else
   DM1.Tb_TDVCATCTAB08.Value:=CB_TAB08.Text;
if DM2.Tb_Arq.Locate('CANOMARQ',trim(CB_TAB09.Text),[]) then
   DM1.Tb_TDVCATCTAB09.Value:=DM2.Tb_ArqCANOMARQ.Value
else
   DM1.Tb_TDVCATCTAB09.Value:=CB_TAB09.Text;




DM1.Tb_TDVCATCTAB02N.Value:=iif(CB_TAB02NUL.Checked,0,1);
DM1.Tb_TDVCATCTAB03N.Value:=iif(CB_TAB03NUL.Checked,0,1);
DM1.Tb_TDVCATCTAB04N.Value:=iif(CB_TAB04NUL.Checked,0,1);
DM1.Tb_TDVCATCTAB05N.Value:=iif(CB_TAB05NUL.Checked,0,1);
DM1.Tb_TDVCATCTAB06N.Value:=iif(CB_TAB06NUL.Checked,0,1);
DM1.Tb_TDVCATCTAB07N.Value:=iif(CB_TAB07NUL.Checked,0,1);
DM1.Tb_TDVCATCTAB08N.Value:=iif(CB_TAB08NUL.Checked,0,1);
DM1.Tb_TDVCATCTAB09N.Value:=iif(CB_TAB09NUL.Checked,0,1);

DM1.Tb_TDVCATCFPADRAO.Value:=RGTFONTE.Itemindex;
DM1.Tb_TDVCATCQTDLPP.Value :=iif(CB_ENTREL.Checked,1,0);
DM1.Tb_TDVCATCVIS.Value    :=iif(CB_VIS.Checked,0,1);
DM1.Tb_TDVCATCIMPDA.Value  :=iif(CB_IMPDA.Checked,1,0);
DM1.Tb_TDVCATCNUMCOL.Value :=StrToInt('0'+NUMCOL.Text);

if CB_FILGPRO.Checked then
   DM1.Tb_TDVCATCFILGPRO.Value:=1
else
   DM1.Tb_TDVCATCFILGPRO.Value:=0;

if CB_FILRAMPRO.Checked then
   DM1.Tb_TDVCATCFILRAMPRO.Value:=1
else
   DM1.Tb_TDVCATCFILRAMPRO.Value:=0;


if CB_FILVEN1.Checked then
   DM1.Tb_TDVCATCFILVEN.Value:=1
else
   DM1.Tb_TDVCATCFILVEN.Value:=0;

if CB_FILCLI1.Checked then
   DM1.Tb_TDVCATCFILCLI.Value:=1
else
   DM1.Tb_TDVCATCFILCLI.Value:=0;

if CB_FILPRO1.Checked then
   DM1.Tb_TDVCATCFILPRO.Value:=1
else
   DM1.Tb_TDVCATCFILPRO.Value:=0;
if CB_FILFOR1.Checked then
   DM1.Tb_TDVCATCFILFOR.Value:=1
else
   DM1.Tb_TDVCATCFILFOR.Value:=0;
if CB_FILRED1.Checked then
   DM1.Tb_TDVCATCFILRED.Value:=1
else
   DM1.Tb_TDVCATCFILRED.Value:=0;

if CB_FILEST1.Checked then
   DM1.Tb_TDVCATCFILEST.Value:=1
else
   DM1.Tb_TDVCATCFILEST.Value:=0;



DM1.Tb_TDVCATCTPCOL.Value  :=iif(CB_TPCOL.Checked,0,1);
DM1.Tb_TDVCATCINTCOL.Value :=StrtoInt('0'+INTCOL.Text);
DM1.Tb_TDVCATCQTDLIN.Value:=StrToInt('0'+QTDLP.Text);
DM1.Tb_TDVCATCQTDCOL.Value:=StrToInt('0'+QTDCOL.Text);
DM1.Tb_TDVCATCQTDSER.Value :=StrToFloat('0'+QTDSER.Text);
DM1.Tb_TDVCATCQTDITEM.Value:=StrToFloat('0'+QTDITEM.Text);
// DM1.Tb_TDVCATCFILTRO.Value :=FILTRO.Text;
// DM1.Tb_TDVCATCORDEM2.Value :=ORDEM.Text;
DM1.Tb_TDVCATCOBS.Value    :=Memo1.Text;
DM1.Tb_TDVCATCIMPG.Value   :=iif(CB_GRUPO.Checked,0,1);
DM1.Tb_TDVCATCMPAGGR.Value :=iif(CB_MPAGGR.Checked,1,0);
DM1.Tb_TDVCATCIMPSG.Value  :=iif(CB_SGRUPO.Checked,0,1);
DM1.Tb_TDVCATCAVANCAROD.Value:=iif(CB_SGRUPO.Checked,1,0);
DM1.Tb_TDVCATCAVPTPI.Value :=iif(CB_AVPTPI.Checked,0,1);
DM1.Tb_TDVCATCAVPIPF.Value :=iif(CB_AVPIPF.Checked,0,1);
DM1.Tb_TDVCATCBLOQ.Value   :=iif(CB_BLOQ.Checked,1,0);
DM1.Tb_TDVCATCAGRUPAR.Value:=iif(CB_AGRUPAR.Checked,1,0);
DM1.Tb_TDVCATCCONT_M.Value :=CONT_M.Text;
DM1.Tb_TDVCATCCONT_R.Value :=CB_CONT_R.Text;
DM1.Tb_TDVCATCCONT_AP.Value:=iif(CB_CONT_AP.Checked,0,1);
DM1.Tb_TDVCATCTPFORM.Value :=iif(CB_TPFORM.Checked,1,0);
DM1.Tb_TDVCATCMASC.Value   :=CB_MASC.Text;
DM1.Tb_TDVCATCDIMGRU.Value :=ValFloat(DIMGRU.Text);
DM1.Tb_TDVCATCDIMSG.Value  :=ValFloat(DIMSG.Text);
DM1.Tb_TDVCATCQTDDIV.Value :=ValFloat(QTDDIV.Text);
DM1.Tb_TDVCATCDETNCOL.Value:=fsonumero(DETNCOL.Text);
DM1.Tb_TDVCATCDETICOL.Value:=fsonumero(DETICOL.Text);
DM1.Tb_TDVCATCDETTPCOL.Value:=iif(CB_DETTPCOL.Checked,1,0);
DM1.Tb_TDVCATCFVCAMPO.Value:=mfilven;
DM1.Tb_TDVCATCFCCAMPO.Value:=mfilcli;
DM1.Tb_TDVCATCFFCAMPO.Value:=mfilfor;
DM1.Tb_TDVCATCFRCAMPO.Value:=mfilred;
DM1.Tb_TDVCATCFPCAMPO.Value:=mfilpro;
QTDDIV.Text       :=Qr_RelTCQTDDIV.AsString;

DM1.Tb_TDVCATCPERIODO.Value:='';
if Trim(CB_PERIODO.Text)<>'' then
   begin
   if DM2.Tb_Arq.Locate('CANOMREG',trim(CB_PERIODO.Text),[]) then
      begin
      DM1.Tb_TDVCATCPERIODO.Value:=DM2.Tb_ArqCANOMCAM.Value;
      end;
   end;

// DM1.Tb_TDVCATCORDEM.Value  :=RG_ORDEM.ItemIndex;
// DM1.Tb_TDVCATCTPESQ.Value  :=RG_TPESQ.ItemIndex;
//  DM1.Tb_TDVCATCTPREL.Value  :=RG_TPREL.ItemIndex;

DM1.Tb_TDVCA.Post;

Qr_Rel.Close;
Qr_Rel.SQL.Clear;
Qr_Rel.SQL.Add('Select * from CTDVCA ');
if not DM1.Qr_Tid.Locate('TINOME','CADTDV',[]) then
   Qr_Rel.SQL.Add(' Where TCCODEMP='+IntTostr(codemp));
Qr_Rel.SQL.Add(' Order by TCNOME');
Qr_Rel.Open;
Qr_Rel.Locate('TCDOC;TCNOME',vararrayof([mreltab,mtabant]),[]);

GroupBox2.Enabled:=False;
BBGRAVAR.Enabled:=False;
BBCANCELAR.Enabled:=False;
BBINCLUIR.Enabled :=True;
BBALTERAR.Enabled :=True;
BBEXCLUIR.Enabled :=True;
GroupBox2.Enabled :=False;

DBGrid1.SetFocus;
moper_tab00:=0;
Frm_Tab00Ord.STG_ORDEM.RowCount:=2;
Frm_Tab00Fil.STG_FILTRO.RowCount:=2;

end;

procedure TFrm_Tab00.DBGrid1Enter(Sender: TObject);
begin
{NOMREL.Text:=Qr_RelTCNOME.Value;
RGTFONTE.ItemIndex:=Qr_RelTCFPADRAO.Value;
RGENTREL.ItemIndex:=Qr_RelTCQTDLPP.Value;
QTDLP.Text        :=Qr_RelTCQTDLIN.AsString;
QTDCOL.Text       :=Qr_RelTCQTDCOL.AsString;
Memo1.Text        :=Qr_RelTCOBS.Text;
NUMCOL.Text       :=Qr_RelTCNUMCOL.AsString;
INTCOL.Text       :=Qr_RelTCINTCOL.AsString;
GroupBox2.Update;
GroupBox2.Enabled :=False;}
end;

procedure TFrm_Tab00.BBCANCELARClick(Sender: TObject);
begin
{NOMREL.Text:=Qr_RelTCNOME.Value;
RGTFONTE.ItemIndex:=Qr_RelTCFPADRAO.Value;
RGENTREL.ItemIndex:=Qr_RelTCQTDLPP.Value;
QTDLP.Text        :=Qr_RelTCQTDLIN.AsString;
QTDCOL.Text       :=Qr_RelTCQTDCOL.AsString;
Memo1.Text        :=Qr_RelTCOBS.Text;
NUMCOL.Text       :=Qr_RelTCNUMCOL.AsString;
INTCOL.Text       :=Qr_RelTCINTCOL.AsString;
GroupBox2.Enabled :=False;                  }
BBINCLUIR.Enabled:=True;
BBALTERAR.Enabled:=True;
BBGRAVAR.Enabled :=False;
BBCANCELAR.Enabled:=False;
BBEXCLUIR.Enabled :=True;
moper_tab00:=0;
end;

procedure TFrm_Tab00.BBEXCLUIRClick(Sender: TObject);
begin
{if Qr_RelTCSTATUS.Value=1 then
   begin
   fmensagem('Documento protegido. Operação cancelada');
   exit
   end;
   }
mpesq:=Qr_RelTCDOC.Value;
if fmensagem('Quer Realmente Excluir Este Registros?',0,['1','2'],2)=mrYes then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CTDVCA where ');
   if not DM1.Qr_Tid.Locate('TINOME',mpesq,[]) then
      DM1.Query1.sql.add(' TCCODEMP=0'+IntToStr(codemp)+' and ');
   DM1.Query1.Sql.add(' TCDOC='+chr(39)+Qr_RelTCDOC.Value+chr(39)
                     +' and TCNOME='+chr(39)+Qr_RelTCNOME.Value+chr(39));
   DM1.Query1.ExecSQL;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CTDVOP where ');
   if not DM1.Qr_Tid.Locate('TINOME',mpesq,[]) then
      DM1.Query1.sql.add(' TOCODEMP='+IntToStr(codemp)+' and ');
   DM1.Query1.SQL.add(' TODOC='+chr(39)+Qr_RelTCDOC.Value+chr(39)
                     +' and TONOME='+chr(39)+Qr_RelTCNOME.Value+chr(39));
   DM1.Query1.ExecSQL;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CTDVFT where ');
   if not DM1.Qr_Tid.Locate('TINOME',mpesq,[]) then
      DM1.Query1.sql.add(' TFCODEMP='+IntToStr(codemp)+' and ');
   DM1.Query1.SQL.add(' TFDOC='+chr(39)+Qr_RelTCDOC.Value+chr(39)
                     +' and TFNOME='+chr(39)+Qr_RelTCNOME.Value+chr(39));
   DM1.Query1.ExecSQL;




   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADTDV where ');
   if not DM1.Qr_Tid.Locate('TINOME',mpesq,[]) then
      DM1.Query1.Sql.add(' TCODEMP='+IntToStr(codemp)+' and ');
   DM1.Query1.Sql.add(' TDOC='+chr(39)+Qr_RelTCDOC.Value+chr(39)
                     +' and TNOME='+chr(39)+Qr_RelTCNOME.Value+chr(39));
   DM1.Query1.ExecSQL;
   end;
BBINCLUIR.Enabled:=True;
BBALTERAR.Enabled:=True;
BBGRAVAR.Enabled :=False;
BBCANCELAR.Enabled:=False;
BBEXCLUIR.Enabled :=True;
GroupBox2.Enabled :=False;
Qr_Rel.Close;
Qr_Rel.SQL.Clear;
Qr_Rel.SQL.Add('Select * from CTDVCA');

if not DM1.Qr_Tid.Locate('TINOME',mpesq,[]) then
   Qr_Rel.Sql.add(' where TCCODEMP='+IntTostr(codemp));
Qr_Rel.Open;
DBGrid1.SetFocus;
moper_tab00:=0;

end;

procedure TFrm_Tab00.QTDITEMKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_Tab00.BBALTERARClick(Sender: TObject);
begin
flerarq2(0);
mqtd:=2;
Frm_Tab00fil.STG_FILTRO.RowCount:=2;
Frm_Tab00Fil.STG_FILTRO.Cells[0,0]:='se Campo 01';
frm_Tab00Fil.STG_FILTRO.Cells[1,0]:='For ';
Frm_Tab00Fil.STG_FILTRO.Cells[2,0]:='a/que';
Frm_Tab00fil.STG_FILTRO.Rows[1].Clear;

DM2.Tb_TDVFE.Close;
DM2.Tb_TDVFE.SQL.Clear;
DM2.Tb_TDVFE.SQL.add('Select * from CTDVFE where '
                    +iif(DM1.Qr_Tid.Locate('TINOME','CADTDV',[]),'',' FECODEMP=0'+InttoStr(codemp)+' and ')
                    +' FEDOC='+chr(39)+Qr_RelTCDOC.Value+chr(39)
                    +' and FENOME='+chr(39)+Qr_RelTCNOME.Value+chr(39));
DM2.Tb_TDVFE.Open;
if DM2.Tb_TDVFE.Eof then
   Frm_Tab_FE.Memo1.Text:=''
else
   Frm_Tab_FE.Memo1.Text:=DM2.Tb_TDVFEFEFILTRO.Value;


fltdvft(0,0,Qr_RelTCDOC.Value,QR_RelTCNOME.Value,'2','CADTDV');

While not DM1.Tb_TDVft.Eof do
   begin
   mqtd:=Frm_Tab00Fil.STG_FILTRO.RowCount;
   if DM2.Tb_Arq.Locate('CANOMCAM',DM1.Tb_TDVFTTFCAMPO1.Value,[]) then
      Frm_Tab00Fil.STG_FILTRO.Cells[0,mqtd-1]:=DM2.Tb_ArqCANOMREG.Value
   else
      Frm_Tab00Fil.STG_FILTRO.Cells[0,mqtd-1]:=DM1.Tb_TDVFTTFCAMPO1.Value;
   Frm_Tab00Fil.STG_FILTRO.Cells[1,mqtd-1]:=DM1.Tb_TDVFTTFCOND1.Value;
   if DM2.Tb_Arq.Locate('CANOMCAM',DM1.Tb_TDVFTTFCAMPO2.Value,[]) then
      Frm_Tab00Fil.STG_FILTRO.Cells[2,mqtd-1]:=DM2.Tb_ArqCANOMREG.Value
   else
      Frm_Tab00Fil.STG_FILTRO.Cells[2,mqtd-1]:=DM1.Tb_TDVFTTFCAMPO2.Value;
   Frm_Tab00Fil.STG_FILTRO.Cells[3,mqtd-1]:=DM1.Tb_TDVFTTFTCAMPO1.Value;
   Frm_Tab00Fil.STG_FILTRO.Cells[4,mqtd-1]:=DM1.Tb_TDVFTTFTCAMPO2.Value;
   Frm_Tab00Fil.STG_FILTRO.Cells[5,mqtd-1]:=DM1.Tb_TDVFTTFTAB01.Value;
   Frm_Tab00Fil.STG_FILTRO.Cells[6,mqtd-1]:=DM1.Tb_TDVFTTFTAB02.Value;
   Frm_Tab00fil.STG_FILTRO.RowCount:=mqtd+1;
   Frm_Tab00fil.STG_FILTRO.Rows[mqtd].Clear;
   DM1.Tb_TDVFT.Next;
   end;

Frm_Tab00Ord.STG_ORDEM.RowCount:=2;
Frm_Tab00Ord.STG_ORDEM.Cells[0,0]:='Descrição do Campo';
Frm_Tab00Ord.STG_ORDEM.Cells[1,0]:='Nome do Campo';
Frm_Tab00Ord.STG_ORDEM.Cells[2,0]:='Decrescente';
Frm_Tab00Ord.STG_ORDEM.Rows[1].Clear;
fltdvft(0,0,Qr_RelTCDOC.Value,QR_RelTCNOME.Value,'3','CADTDV');

While not DM1.Tb_TDVft.Eof do
   begin
   mqtd:=Frm_Tab00Ord.STG_ORDEM.RowCount;
   Frm_Tab00Ord.STG_ORDEM.RowCount:=mqtd+1;
   if DM2.Tb_Arq.Locate('CANOMCAM',DM1.Tb_TDVFTTFCAMPO1.Value,[]) then
      Frm_Tab00Ord.STG_ORDEM.Cells[0,mqtd-1]:=DM2.Tb_ArqCANOMREG.Value
   else
      Frm_Tab00Ord.STG_ORDEM.Cells[0,mqtd-1]:=DM1.Tb_TDVFTTFCAMPO1.Value;
   Frm_Tab00Ord.STG_ORDEM.Cells[1,mqtd-1] :=DM1.Tb_TDVFTTFTAB01.Value;
   if DM1.Tb_TDVFTTFCOND1.Value='D' then
      Frm_Tab00Ord.STG_ORDEM.Cells[2,mqtd-1]:='X'
   else
      Frm_Tab00Ord.STG_ORDEM.Cells[2,mqtd-1]:=' ';
   DM1.Tb_TDVFT.Next;
   end;

Frm_Tab00Gru.STG_GRUPO.RowCount:=2;
Frm_Tab00Gru.STG_GRUPO.Cells[0,0]:='Grupos';
Frm_Tab00Gru.STG_GRUPO.Rows[1].Clear;
fltdvft(0,0,Qr_RelTCDOC.Value,QR_RelTCNOME.Value,'4','CADTDV');

While not DM1.Tb_TDVft.Eof do
   begin
   mqtd:=Frm_Tab00Gru.STG_GRUPO.RowCount;
   Frm_Tab00Gru.STG_GRUPO.RowCount:=mqtd+1;
   if DM2.Tb_Arq.Locate('CANOMCAM',DM1.Tb_TDVFTTFCAMPO1.Value,[]) then
      Frm_Tab00Gru.STG_GRUPO.Cells[0,mqtd-1]:=DM2.Tb_ArqCANOMREG.Value
   else
      Frm_Tab00Gru.STG_GRUPO.Cells[0,mqtd-1]:=DM1.Tb_TDVFTTFCAMPO1.Value;
   Frm_Tab00Gru.STG_GRUPO.Cells[1,mqtd-1] :=DM1.Tb_TDVFTTFTAB01.Value;
   DM1.Tb_TDVFT.Next;
   end;


Frm_Tab00SG.STG_SG.RowCount:=2;
Frm_Tab00SG.STG_SG.Cells[0,0]:='Sub_Grupos';
Frm_Tab00SG.STG_SG.Rows[1].Clear;
fltdvft(0,0,Qr_RelTCDOC.Value,QR_RelTCNOME.Value,'5','CADTDV');

While not DM1.Tb_TDVft.Eof do
   begin
   mqtd:=Frm_Tab00SG.STG_SG.RowCount;
   Frm_Tab00SG.STG_SG.RowCount:=mqtd+1;
   if DM2.Tb_Arq.Locate('CANOMCAM',DM1.Tb_TDVFTTFCAMPO1.Value,[]) then
      Frm_Tab00SG.STG_SG.Cells[0,mqtd-1]:=DM2.Tb_ArqCANOMREG.Value
   else
      Frm_Tab00SG.STG_SG.Cells[0,mqtd-1]:=DM1.Tb_TDVFTTFCAMPO1.Value;
   Frm_Tab00SG.STG_SG.Cells[1,mqtd-1] :=DM1.Tb_TDVFTTFTAB01.Value;
   DM1.Tb_TDVFT.Next;
   end;

Frm_Tab00Div.STG_DIV.RowCount:=2;
Frm_Tab00Div.STG_DIV.Cells[0,0]:='Divisoes';
Frm_Tab00Div.STG_DIV.Rows[1].Clear;
if DM2.Tb_Arq.Locate('CANOMARQ',CB_MENU.Text,[]) then
   mcinst      :=DM2.Tb_ArqCANOMARQ.Value
else
   mcinst      :=CB_MENU.Text;
fltdvft(0,0,mcinst,QR_RelTCNOME.Value,'6','CADTDV');

While not DM1.Tb_TDVft.Eof do
   begin
   mqtd:=Frm_Tab00Div.STG_DIV.RowCount;
   Frm_Tab00Div.STG_DIV.RowCount:=mqtd+1;
   if DM2.Tb_Arq.Locate('CANOMCAM',DM1.Tb_TDVFTTFCAMPO1.Value,[]) then
      Frm_Tab00div.STG_DIV.Cells[0,mqtd-1]:=DM2.Tb_ArqCANOMREG.Value
   else
      Frm_Tab00div.STG_DIV.Cells[0,mqtd-1]:=DM1.Tb_TDVFTTFCAMPO1.Value;
   Frm_Tab00Div.STG_DIV.Cells[1,mqtd-1] :=DM1.Tb_TDVFTTFTAB01.Value;
   DM1.Tb_TDVFT.Next;
   end;

moper_tab00:=1;
BBINCLUIR.Enabled:=False;
BBALTERAR.Enabled:=False;
BBGRAVAR.Enabled :=True;
BBCANCELAR.Enabled:=True;
BBEXCLUIR.Enabled :=False;
GroupBox2.Enabled :=True;
NOMREL.Enabled    :=False;
RGTFONTE.SetFocus;
end;

procedure TFrm_Tab00.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{NOMREL.Text:=Qr_RelTCNOME.Value;
RGTFONTE.ItemIndex:=Qr_RelTCFPADRAO.Value;
RGENTREL.ItemIndex:=Qr_RelTCQTDLPP.Value;
QTDLP.Text        :=Qr_RelTCQTDLIN.AsString;
QTDCOL.Text       :=Qr_RelTCQTDCOL.AsString;
Memo1.Text        :=Qr_RelTCOBS.Text;
NUMCOL.Text       :=Qr_RelTCNUMCOL.AsString;
INTCOL.Text       :=Qr_RelTCINTCOL.AsString;
GroupBox2.Update;}
end;

procedure TFrm_Tab00.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if not Qr_RelTCNOME.IsNull then
   begin
   Frm_TabM.Label2.Caption:='Relatório Selecionado: ';
   Frm_TabM.NOMREL.Caption:=Trim(Qr_RelTCNOME.Value);


   mreltab:=Qr_RelTCDOC.Value;
   fltdvca(0,0,Qr_RelTCDOC.Value,Qr_RelTCNOME.Value,mpesq)
   end;
Frm_Tab_Fe.Free;

Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Tab00.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
{NOMREL.Text:=Qr_RelTCNOME.Value;
RGTFONTE.ItemIndex:=Qr_RelTCFPADRAO.Value;
RGENTREL.ItemIndex:=Qr_RelTCQTDLPP.Value;
QTDLP.Text        :=Qr_RelTCQTDLIN.AsString;
QTDCOL.Text       :=Qr_RelTCQTDCOL.AsString;
Memo1.Text        :=Qr_RelTCOBS.Text;
NUMCOL.Text       :=Qr_RelTCNUMCOL.AsString;
INTCOL.Text       :=Qr_RelTCINTCOL.AsString;
RG_TPCOL.ItemIndex:=Qr_RelTCTPCOL.Value;
RG_ORDEM.ItemIndex:=Qr_RelTCORDEM.Value;
GroupBox2.Update}

end;

procedure TFrm_Tab00.Src_RelDataChange(Sender: TObject; Field: TField);
begin
NOMREL.Text        :=Qr_RelTCNOME.Value;
CB_TAB01.Text      :=Qr_Relnomtab01.Value;
CB_TAB02.Text      :=Qr_Relnomtab02.Value;
CB_TAB03.Text      :=Qr_Relnomtab03.Value;
CB_TAB04.Text      :=Qr_Relnomtab04.Value;
CB_TAB05.Text      :=Qr_Relnomtab05.Value;
CB_TAB06.Text      :=Qr_Relnomtab06.Value;
CB_TAB07.Text      :=Qr_Relnomtab07.Value;
CB_TAB08.Text      :=Qr_Relnomtab08.Value;
CB_TAB09.Text      :=Qr_Relnomtab09.Value;


CB_TAB02NUL.Checked:=Qr_RelTCTAB02N.Value=0;
CB_TAB03NUL.Checked:=Qr_RelTCTAB03N.Value=0;
CB_TAB04NUL.Checked:=Qr_RelTCTAB04N.Value=0;
CB_TAB05NUL.Checked:=Qr_RelTCTAB05N.Value=0;
CB_TAB06NUL.Checked:=Qr_RelTCTAB06N.Value=0;
CB_TAB07NUL.Checked:=Qr_RelTCTAB07N.Value=0;
CB_TAB08NUL.Checked:=Qr_RelTCTAB08N.Value=0;
CB_TAB09NUL.Checked:=Qr_RelTCTAB09N.Value=0;

CB_MENU.Text       :=Qr_Relgrupo.Value;
RGTFONTE.ItemIndex :=Qr_RelTCFPADRAO.AsInteger;
CB_ENTREL.Checked  :=Qr_RelTCQTDLPP.Value=1;
CB_VIS.Checked     :=Qr_RelTCVIS.Value=0;
CB_IMPDA.Checked  :=Qr_RelTCIMPDA.Value=1;
NUMCOL.Text       :=Qr_RelTCNUMCOL.AsString;
CB_FILGPRO.Checked:=false;
CB_FILRAMPRO.Checked:=false;
CB_FILVEN1.Checked:=false;
CB_FILCLI1.Checked:=false;
CB_FILPRO1.Checked:=false;
CB_FILFOR1.Checked:=false;
CB_FILRED1.Checked:=false;
CB_FILEST1.Checked:=false;

if Qr_RelTCFILGPRO.Value=1 then
   CB_FILGPRO.Checked:=True;
if Qr_RelTCFILRAMPRO.Value=1 then
   CB_FILRAMPRO.Checked:=True;

if Qr_RelTCFILVEN.Value=1 then
   CB_FILVEN1.Checked:=True;
if Qr_RelTCFILCLI.Value=1 then
   CB_FILCLI1.Checked:=True;
if Qr_RelTCFILPRO.Value=1 then
   CB_FILPRO1.Checked:=True;
if Qr_RelTCFILFOR.Value=1 then
   CB_FILFOR1.Checked:=True;
if Qr_RelTCFILRED.Value=1 then
   CB_FILRED1.Checked:=True;


if Qr_RelTCFILEST.Value=1 then
   CB_FILEST1.Checked:=True;



CB_TPCOL.Checked  :=Qr_RelTCTPCOL.Value=0;
INTCOL.Text       :=Qr_RelTCINTCOL.AsString;
QTDLP.Text        :=Qr_RelTCQTDLIN.AsString;
QTDCOL.Text       :=Qr_RelTCQTDCOL.AsString;
QTDITEM.Text      :=Qr_RelTCQTDITEM.AsString;
QTDSER.Text       :=Qr_RelTCQTDSER.AsString;
// FILTRO.Text       :=Qr_RelTCFILTRO.Value;
// ORDEM.Text        :=Qr_RelTCORDEM2.Value;
Memo1.Text        :=Qr_RelTCOBS.Text;
//RG_ORDEM.ItemIndex:=Qr_RelTCORDEM.AsInteger;
//RG_TPESQ.ItemIndex:=Qr_RelTCTPESQ.AsInteger;
//RG_TPREL.ItemIndex:=Qr_RelTCTPREL.AsInteger;
CB_GRUPO.Checked  :=Qr_RelTCIMPG.Value=0;
CB_MPAGGR.Checked :=Qr_RelTCMPAGGR.Value=1;
CB_SGRUPO.Checked :=Qr_RelTCIMPSG.Value=0;
CB_AVANCAROD.Checked:=Qr_RelTCAVANCAROD.Value=1;
CB_AVPTPI.Checked :=Qr_RelTCAVPTPI.Value=0;
CB_AVPIPF.Checked :=Qr_RelTCAVPIPF.Value=0;
CB_BLOQ.Checked   :=Qr_RelTCBLOQ.Value=1;
CB_AGRUPAR.Checked:=Qr_RelTCAGRUPAR.Value=1;
CB_CONT_R.Text    :=Qr_RelTCCONT_R.Value;
CB_CONT_AP.Checked:=Qr_RelTCCONT_AP.Value=0;
CB_TPFORM.Checked :=Qr_RelTCTPFORM.Value=1;
CB_PERIODO.Text   :=Qr_Relperiodo.Value;
CONT_M.Text       :=Qr_RelTCCONT_M.Value;
CB_MASC.Text      :=Qr_RelTCMASC.Value;
DIMGRU.Text       :=Qr_RelTCDIMGRU.AsString;
DIMSG.Text        :=Qr_RelTCDIMSG.AsString;
QTDDIV.Text       :=Qr_RelTCQTDDIV.AsString;
DETNCOL.Text      :=Qr_RelTCDETNCOL.AsString;
DETICOL.Text      :=Qr_RelTCDETICOL.AsString;
CB_DETTPCOL.Checked:=Qr_RelTCDETTPCOL.Value=1;

GroupBox2.Update;



end;

procedure TFrm_Tab00.DBGrid1DblClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Tab00.NOMRELKeyPress(Sender: TObject; var Key: Char);
begin
if (Length(NOMREL.Text)>19) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_Tab00.BitBtn1Click(Sender: TObject);
begin
flerarq2(0);

Application.Createform(TFrm_Tab00Oper, Frm_Tab00OPer);
Frm_Tab00Oper.ShowModal;
Frm_Tab00Oper.Free;
end;

procedure TFrm_Tab00.Qr_RelCalcFields(DataSet: TDataSet);
begin

flerarq2(1);


if Trim(Qr_RelTCTAB01.Value)<>'' then
   begin
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(Qr_RelTCTAB01.Value),[]) then
      Qr_Relnomtab01.Value:=DM2.Tb_ArqCANOMARQ.Value;
   end;
if Trim(Qr_RelTCTAB02.Value)<>'' then
   begin
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(Qr_RelTCTAB02.Value),[]) then
      Qr_Relnomtab02.Value:=DM2.Tb_ArqCANOMARQ.Value;
   end;

if Trim(Qr_RelTCTAB03.Value)<>'' then
   begin
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(Qr_RelTCTAB03.Value),[]) then
      Qr_Relnomtab03.Value:=DM2.Tb_ArqCANOMARQ.Value;
   end;
if Trim(Qr_RelTCTAB04.Value)<>'' then
   begin
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(Qr_RelTCTAB04.Value),[]) then
      Qr_Relnomtab04.Value:=DM2.Tb_ArqCANOMARQ.Value;
   end;
if Trim(Qr_RelTCTAB05.Value)<>'' then
   begin
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(Qr_RelTCTAB05.Value),[]) then
      Qr_Relnomtab05.Value:=DM2.Tb_ArqCANOMARQ.Value;
   end;

if Trim(Qr_RelTCTAB06.Value)<>'' then
   begin
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(Qr_RelTCTAB06.Value),[]) then
      Qr_Relnomtab06.Value:=DM2.Tb_ArqCANOMARQ.Value;
   end;
if Trim(Qr_RelTCTAB07.Value)<>'' then
   begin
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(Qr_RelTCTAB07.Value),[]) then
      Qr_Relnomtab07.Value:=DM2.Tb_ArqCANOMARQ.Value;
   end;

if Trim(Qr_RelTCTAB08.Value)<>'' then
   begin
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(Qr_RelTCTAB08.Value),[]) then
      Qr_Relnomtab08.Value:=DM2.Tb_ArqCANOMARQ.Value;
   end;

if Trim(Qr_RelTCTAB09.Value)<>'' then
   begin
   if DM2.Tb_Arq.Locate('CANOMARQ',trim(Qr_RelTCTAB09.Value),[]) then
      Qr_Relnomtab09.Value:=DM2.Tb_ArqCANOMARQ.Value;
   end;



if DM2.Tb_Arq.Locate('CANOMARQ',trim(Qr_RelTCDOC.Value),[]) then
   Qr_Relgrupo.Value:=DM2.Tb_ArqCANOMARQ.Value
else
   Qr_Relgrupo.Value:=Qr_RelTCDOC.Value;   
if DM2.Tb_Arq.Locate('CANOMCAM',trim(Qr_RelTCPERIODO.Value),[]) then
   Qr_Relperiodo.Value:=DM2.Tb_ArqCANOMREG.Value;


end;

procedure TFrm_Tab00.CB_TAB01Exit(Sender: TObject);
begin
if (BBCANCELAR.Focused) or (BBSAIR.Focused) then
   exit;
CB_TAB01.Text:=CB_TAB01.items.Strings[CB_TAB01.itemindex];
if trim(CB_TAB01.Text)='' then
   begin
   fmensagem('Tabela Mestre. Campo Obritatório!',0,['0'],0);
   cb_TAB01.SetFocus;
   end;
if Trim(CB_MENU.Text)='' then
   CB_MENU.Text:=CB_TAB01.Text;
CB_MENU.Update;
end;

procedure TFrm_Tab00.CB_TAB02Exit(Sender: TObject);
begin
if (BBCANCELAR.Focused) or (BBSAIR.Focused) then
   exit;
   
CB_TAB02.Text:=CB_TAB02.items.Strings[CB_TAB02.itemindex];
if (trim(CB_TAB02.Text)='') and (Trim(CB_TAB03.Text)<>'') then
   begin
   fmensagem('Excluir proxima tabela depois esta!',0,['0'],0);
   CB_TAB02.Text:=Qr_RelTCTAB02.Text;
   cb_TAB02.SetFocus;
   end
else if trim(CB_TAB01.Text)=Trim(CB_TAB02.Text) then
   begin
   fmensagem('Esta tabela não pode ser igual a tabela Mestre',0,['0'],0);
   CB_TAB02.SetFocus;
   end;

end;

procedure TFrm_Tab00.CB_TAB03Exit(Sender: TObject);
begin
if (BBCANCELAR.Focused) or (BBSAIR.Focused) then
   exit;
CB_TAB03.Text:=CB_TAB03.items.Strings[CB_TAB03.itemindex];
if (trim(CB_TAB03.Text)='') and (Trim(CB_TAB04.Text)<>'') then
   begin
   fmensagem('Excluir proxima tabela depois esta!',0,['0'],0);
   CB_TAB03.Text:=Qr_RelTCTAB03.Text;
   cb_TAB03.SetFocus;
   end
else if (trim(CB_TAB02.Text)=Trim(CB_TAB03.Text)) and (trim(CB_TAB03.Text)<>'') then
   begin
   fmensagem('Esta tabela não pode ser igual a tabela anterior',0,['0'],0);
   CB_TAB03.SetFocus;
   end;

end;

procedure TFrm_Tab00.CB_TAB04Exit(Sender: TObject);
begin
if (BBCANCELAR.Focused) or (BBSAIR.Focused) then
   exit;
CB_TAB04.Text:=CB_TAB04.items.Strings[CB_TAB04.itemindex];
if (trim(CB_TAB04.Text)='') and (Trim(CB_TAB05.Text)<>'') then
   begin
   fmensagem('Excluir proxima tabela depois esta!',0,['0'],0);
   CB_TAB04.Text:=Qr_RelTCTAB03.Text;
   cb_TAB04.SetFocus;
   end
else if (trim(CB_TAB03.Text)=Trim(CB_TAB04.Text)) and (trim(CB_TAB04.Text)<>'') then
   begin
   fmensagem('Esta tabela não pode ser igual a tabela anterior',0,['0'],0);
   CB_TAB04.SetFocus;
   end;


end;

procedure TFrm_Tab00.CB_TAB05Exit(Sender: TObject);
begin
if (BBCANCELAR.Focused) or (BBSAIR.Focused) then
   exit;
CB_TAB05.Text:=CB_TAB05.items.Strings[CB_TAB05.itemindex];

if (trim(CB_TAB05.Text)='') and (Trim(CB_TAB06.Text)<>'') then
   begin
   fmensagem('Excluir proxima tabela depois esta!',0,['0'],0);
   CB_TAB05.Text:=Qr_RelTCTAB05.Text;
   cb_TAB05.SetFocus;
   end
else  if (trim(CB_TAB04.Text)=Trim(CB_TAB05.Text)) and (trim(CB_TAB05.Text)<>'') then
   begin
   fmensagem('Esta tabela não pode ser igual a tabela anterior',0,['0'],0);
   CB_TAB05.SetFocus;
   end;

end;

procedure TFrm_Tab00.CB_MENUExit(Sender: TObject);
begin
if (BBCANCELAR.Focused) or (BBSAIR.Focused) then
   exit;
CB_MENU.Text:=CB_MENU.items.Strings[CB_MENU.itemindex];
if trim(CB_MENU.Text)='' then
   begin
   fmensagem('Menu Preferencial. Campo Obritatório!',0,['0'],0);
   CB_MENU.SetFocus;
   end;

end;

procedure TFrm_Tab00.FILTROSClick(Sender: TObject);
begin
flerarq2(0);
if Frm_Tab00fil.STG_FILTRO.RowCount<3 then
   begin
   mqtd:=2;
   Frm_Tab00fil.STG_FILTRO.RowCount:=2;
   Frm_Tab00Fil.STG_FILTRO.Cells[0,0]:='se Campo 01';
   Frm_Tab00Fil.STG_FILTRO.Cells[1,0]:='For ';
   Frm_Tab00Fil.STG_FILTRO.Cells[2,0]:='a/que';
   Frm_Tab00fil.STG_FILTRO.Rows[1].Clear;
   fltdvft(0,0,Qr_RelTCDOC.Value,QR_RelTCNOME.Value,'2','CADTDV');

   While not DM1.Tb_TDVft.Eof do
      begin
      mqtd:=Frm_Tab00Fil.STG_FILTRO.RowCount;
      if DM2.Tb_Arq.Locate('CANOMCAM',DM1.Tb_TDVFTTFCAMPO1.Value,[]) then
         Frm_Tab00Fil.STG_FILTRO.Cells[0,mqtd-1]:=DM2.Tb_ArqCANOMREG.Value
      else
         Frm_Tab00Fil.STG_FILTRO.Cells[0,mqtd-1]:=DM1.Tb_TDVFTTFCAMPO1.Value;
      Frm_Tab00Fil.STG_FILTRO.Cells[1,mqtd-1]:=DM1.Tb_TDVFTTFCOND1.Value;
      if DM2.Tb_Arq.Locate('CANOMCAM',DM1.Tb_TDVFTTFCAMPO2.Value,[]) then
         Frm_Tab00Fil.STG_FILTRO.Cells[2,mqtd-1]:=DM2.Tb_ArqCANOMREG.Value
      else
         Frm_Tab00Fil.STG_FILTRO.Cells[2,mqtd-1]:=DM1.Tb_TDVFTTFCAMPO2.Value;
      Frm_Tab00Fil.STG_FILTRO.Cells[3,mqtd-1]:=DM1.Tb_TDVFTTFTCAMPO1.Value;
      Frm_Tab00Fil.STG_FILTRO.Cells[4,mqtd-1]:=DM1.Tb_TDVFTTFTCAMPO2.Value;
      Frm_Tab00Fil.STG_FILTRO.Cells[5,mqtd-1]:=DM1.Tb_TDVFTTFTAB01.Value;
      Frm_Tab00Fil.STG_FILTRO.Cells[6,mqtd-1]:=DM1.Tb_TDVFTTFTAB02.Value;
      Frm_Tab00fil.STG_FILTRO.RowCount:=mqtd+1;
      Frm_Tab00fil.STG_FILTRO.Rows[mqtd].Clear;
      DM1.Tb_TDVFT.Next;
      end;

   end;
DM2.Tb_Arq.First;
While not DM2.Tb_Arq.Eof do
   begin
   Frm_Tab00Fil.CB_CAMPO01.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   Frm_Tab00Fil.CB_CAMPO02.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   DM2.Tb_Arq.Next;
   end;
Frm_Tab00Fil.Showmodal;
end;

procedure TFrm_Tab00.ORDEMClick(Sender: TObject);
begin

flerarq2(0);
if Frm_Tab00Ord.STG_ORDEM.RowCount<3 then
   begin
   Frm_Tab00Ord.STG_ORDEM.RowCount:=2;
   Frm_Tab00Ord.STG_ORDEM.Cells[0,0]:='Descrição do Campo';
   Frm_Tab00Ord.STG_ORDEM.Cells[1,0]:='Nome do Campo';
   Frm_Tab00Ord.STG_ORDEM.Cells[2,0]:='Decrescente';
   Frm_Tab00Ord.STG_ORDEM.Rows[1].Clear;
   if DM2.Tb_Arq.Locate('CANOMARQ',CB_MENU.Text,[]) then
      mcinst    :=DM2.Tb_ArqCANOMARQ.Value
   else
      mcinst     :=CB_MENU.Text;
   if moper_tab00=1 then
      fltdvft(0,0,mcinst,QR_RelTCNOME.Value,'3','CADTDV')
   else
      fltdvft(0,0,mcinst,NOMREL.Text,'3','CADTDV');

   While not DM1.Tb_TDVft.Eof do
      begin
      mqtd:=Frm_Tab00Ord.STG_ORDEM.RowCount;
      Frm_Tab00Ord.STG_ORDEM.RowCount:=mqtd+1;
      if DM2.Tb_Arq.Locate('CANOMCAM',DM1.Tb_TDVFTTFCAMPO1.Value,[]) then
         Frm_Tab00Ord.STG_ORDEM.Cells[0,mqtd-1]:=DM2.Tb_ArqCANOMREG.Value
      else
         Frm_Tab00Ord.STG_ORDEM.Cells[0,mqtd-1]:=DM1.Tb_TDVFTTFCAMPO1.Value;
      Frm_Tab00Ord.STG_ORDEM.Cells[1,mqtd-1] :=DM1.Tb_TDVFTTFTAB01.Value;
      DM1.Tb_TDVFT.Next;
      end;
   end;

DM2.Tb_Arq.First;
While not DM2.Tb_Arq.Eof do
   begin
   Frm_Tab00Ord.CB_ORDEM.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   DM2.Tb_Arq.Next;
   end;


fltdvop(0,0,Qr_RelTCDOC.Value,Qr_RelTCNOME.Value,'CADTDV','99','','0');


While not DM2.Tb_OP.Eof do
   begin
   Frm_Tab00Ord.CB_ORDEM.Items.Add(DM2.Tb_OPTOCOND01.Value);
   DM2.Tb_OP.Next;
   end;

Frm_Tab00Ord.ShowModal;

end;

procedure TFrm_Tab00.BitBtn2Click(Sender: TObject);
begin

Application.CreateForm(TFrm_VisIns, Frm_Visins);
Frm_SQL.STG_COND.RowCount:=1;
Frm_SQL.STG_COND.rows[0].Clear;
Frm_SQL.STG_COND.rows[1].Clear;
Frm_SQL.STG_CPO.RowCount:=1;
Frm_SQL.STG_CPO.Rows[0].Clear;
Frm_SQl.STG_CPO.Rows[1].Clear;

if Valfloat(QTDDIV.Text)>1 then
   begin
   fmontadiv('CADTDV',Qr_RelTCDOC.Value,Qr_RelTCNOME.Value,formatDatetime('mm',date),FormatDateTime('yyyy',date),2);
   end;
Frm_VisIns.Memo1.Text:=frpersql('CADTDV',Qr_RelTCDOC.Value,Qr_RelTCNOME.Value,'',4);

Frm_VisIns.ShowModal;
Frm_VisIns.Free;
end;

procedure TFrm_Tab00.BitBtn3Click(Sender: TObject);
begin
flerarq2(0);

if Frm_Tab00Gru.STG_GRUPO.RowCount<3 then
   begin
   Frm_Tab00Gru.STG_GRUPO.RowCount:=2;
   Frm_Tab00Gru.STG_GRUPO.Cells[0,0]:='Ordem do Relatorio';
   Frm_Tab00Gru.STG_GRUPO.Rows[1].Clear;
   if DM2.Tb_Arq.Locate('CANOMARQ',CB_MENU.Text,[]) then
      mcinst    :=DM2.Tb_ArqCANOMARQ.Value
   else
      mcinst    :=CB_MENU.Text;
   if moper_tab00=1 then
      fltdvft(0,0,mcinst,QR_RelTCNOME.Value,'4','CADTDV')
   else
      fltdvft(0,0,mcinst,NOMREL.Text,'4','CADTDV');
   While not DM1.Tb_TDVft.Eof do
      begin
      mqtd:=Frm_Tab00Gru.STG_GRUPO.RowCount;
      Frm_Tab00Gru.STG_GRUPO.RowCount:=mqtd+1;
      if DM2.Tb_Arq.Locate('CANOMCAM',DM1.Tb_TDVFTTFCAMPO1.Value,[]) then
         Frm_Tab00Gru.STG_GRUPO.Cells[0,mqtd-1]:=DM2.Tb_ArqCANOMREG.Value
      else
         Frm_Tab00Gru.STG_GRUPO.Cells[0,mqtd-1]:=DM1.Tb_TDVFTTFCAMPO1.Value;
      Frm_Tab00Gru.STG_GRUPO.Cells[1,mqtd-1] :=DM1.Tb_TDVFTTFTAB01.Value;
      DM1.Tb_TDVFT.Next;
      end;
   end;

DM2.Tb_Arq.First;
While not DM2.Tb_Arq.Eof do
   begin
   Frm_Tab00Gru.CB_GRUPO.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   DM2.Tb_Arq.Next;
   end;
Frm_Tab00Gru.ShowModal;

end;

procedure TFrm_Tab00.BitBtn4Click(Sender: TObject);
begin
flerarq2(0);

if Frm_Tab00SG.STG_SG.RowCount<3 then
   begin
   Frm_Tab00SG.STG_SG.RowCount:=2;
   Frm_Tab00SG.STG_SG.Cells[0,0]:='Ordem do Relatorio';
   Frm_Tab00SG.STG_SG.Rows[1].Clear;
   if DM2.Tb_Arq.Locate('CANOMARQ',CB_MENU.Text,[]) then
      mcinst  :=DM2.Tb_ArqCANOMARQ.Value
   else
      mcinst  :=CB_MENU.Text;
   if moper_tab00=1 then
      fltdvft(0,0,mcinst,QR_RelTCNOME.Value,'5','CADTDV')
   else
      fltdvft(0,0,Qr_RelTCDOC.Value,NOMREL.Text,'5','CADTDV');
   While not DM1.Tb_TDVft.Eof do
      begin
      mqtd:=Frm_Tab00SG.STG_SG.RowCount;
      Frm_Tab00SG.STG_SG.RowCount:=mqtd+1;
      if DM2.Tb_Arq.Locate('CANOMCAM',DM1.Tb_TDVFTTFCAMPO1.Value,[]) then
         Frm_Tab00SG.STG_SG.Cells[0,mqtd-1]:=DM2.Tb_ArqCANOMREG.Value
      else
         Frm_Tab00SG.STG_SG.Cells[0,mqtd-1]:=DM1.Tb_TDVFTTFCAMPO1.Value;
      Frm_Tab00SG.STG_SG.Cells[1,mqtd-1] :=DM1.Tb_TDVFTTFTAB01.Value;
      DM1.Tb_TDVFT.Next;
      end;
   end;
DM2.Tb_Arq.First;
While not DM2.Tb_Arq.Eof do
   begin
   Frm_Tab00SG.CB_SG.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   DM2.Tb_Arq.Next;
   end;
Frm_Tab00SG.ShowModal;

end;

procedure TFrm_Tab00.NOMEChange(Sender: TObject);
begin
Qr_Rel.Locate('TCNOME',NOME.Text,[locaseInsensitive,LoPartialKey]);
end;

procedure TFrm_Tab00.CB_MASCExit(Sender: TObject);
begin
CB_MASC.Text:=CB_MASC.items.Strings[CB_MASC.itemindex];
CB_MASC.Update;
end;

procedure TFrm_Tab00.CB_PERIODOEnter(Sender: TObject);
begin
flerarq2(0);
CB_PERIODO.Items.Clear;
While not DM2.Tb_Arq.Eof do
   begin
   if DM2.Tb_ArqCATIPO.Value<>'D' then
      begin
      DM2.Tb_Arq.Next;
      Continue;
      end;
   CB_PERIODO.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   DM2.Tb_Arq.Next;
   end;

end;

procedure TFrm_Tab00.CB_PERIODOExit(Sender: TObject);
begin
if (BBCANCELAR.Focused) or (BBSAIR.Focused) then
   exit;
CB_PERIODO.Text:=CB_PERIODO.items.Strings[CB_PERIODO.itemindex];
end;

procedure TFrm_Tab00.NUMCOLKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_Tab00.BDIVIDIRClick(Sender: TObject);
begin
if ValFloat(QTDDIV.Text)<1 then
   begin
   fmensagem('Para selecionar estes campos o campo Dividir '+#13
             +'Soma/Contagem tem que ser maior que zero',0,['0'],0);
   exit;
   end;
flerarq2(0);


if Frm_Tab00Div.STG_DIV.RowCount<3 then
   begin
   Frm_Tab00Div.STG_DIV.RowCount:=2;
   Frm_Tab00Div.STG_DIV.Cells[0,0]:='Ordem do Relatorio';
   Frm_Tab00Div.STG_DIV.Rows[1].Clear;
   if DM2.Tb_Arq.Locate('CANOMARQ',CB_MENU.Text,[]) then
      mcinst   :=DM2.Tb_ArqCANOMARQ.Value
   else
      mcinst   :=CB_MENU.Text;
   if moper_tab00=1 then
      DM1.Tb_TDVFT.ParamByName('NOME').AsString    :=Qr_RelTCNOME.Value
   else
      DM1.Tb_TDVFT.ParamByName('NOME').AsString    :=NOMREL.Text;
   if moper_tab00=1 then
      fltdvft(0,0,mcinst,QR_RelTCNOME.Value,'6','CADTDV')
   else
      fltdvft(0,0,mcinst,NOMREL.Text,'6','CADTDV');



   While not DM1.Tb_TDVft.Eof do
      begin
      mqtd:=Frm_Tab00Div.STG_DIV.RowCount;
      Frm_Tab00Div.STG_DIV.RowCount:=mqtd+1;
      if DM2.Tb_Arq.Locate('CANOMCAM',DM1.Tb_TDVFTTFCAMPO1.Value,[]) then
         Frm_Tab00div.STG_DIV.Cells[0,mqtd-1]:=DM2.Tb_ArqCANOMREG.Value
      else
         Frm_Tab00div.STG_DIV.Cells[0,mqtd-1]:=DM1.Tb_TDVFTTFCAMPO1.Value;
      Frm_Tab00Div.STG_DIV.Cells[1,mqtd-1] :=DM1.Tb_TDVFTTFTAB01.Value;
      DM1.Tb_TDVFT.Next;
      end;

   end;

Frm_Tab00Div.CB_DIV.Items.Clear;
DM2.Tb_Arq.First;
While not DM2.Tb_Arq.Eof do
   begin
   if DM2.Tb_ArqCATIPO.Value<>'N' then
      begin
      DM2.Tb_Arq.Next;
      continue;
      end;

   Frm_Tab00Div.CB_DIV.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   DM2.Tb_Arq.Next;
   end;
Frm_Tab00Div.ShowModal;

end;

function flerarq2(ptipo: Integer):Boolean;
begin
DM2.Tb_Arq.Close;
DM2.Tb_Arq.SQL.Clear;
if ptipo=0 then
   begin
   DM2.Tb_Arq.SQL.Add('Select * From CADARQ2 where '
                      +' (CANOMARQ='+chr(39)+Trim(Frm_Tab00.CB_TAB01.Text)+chr(39)+')');
   if Trim(Frm_Tab00.CB_TAB02.Text)<>'' then
      DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+Trim(Frm_Tab00.CB_TAB02.Text)+chr(39)+')');
   if Trim(Frm_Tab00.CB_TAB03.Text)<>'' then
      DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+Trim(Frm_Tab00.CB_TAB03.Text)+chr(39)+')');
   if Trim(Frm_Tab00.CB_TAB04.Text)<>'' then
      DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+Trim(Frm_Tab00.CB_TAB04.Text)+chr(39)+')');
   if Trim(Frm_Tab00.CB_TAB05.Text)<>'' then
      DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+Trim(Frm_Tab00.CB_TAB05.Text)+chr(39)+')');
   if Trim(Frm_Tab00.CB_TAB06.Text)<>'' then
      DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+Trim(Frm_Tab00.CB_TAB06.Text)+chr(39)+')');
   if Trim(Frm_Tab00.CB_TAB07.Text)<>'' then
      DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+Trim(Frm_Tab00.CB_TAB07.Text)+chr(39)+')');
   if Trim(Frm_Tab00.CB_TAB08.Text)<>'' then
      DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+Trim(Frm_Tab00.CB_TAB09.Text)+chr(39)+')');
   if Trim(Frm_Tab00.CB_TAB08.Text)<>'' then
      DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+Trim(Frm_Tab00.CB_TAB09.Text)+chr(39)+')');
   if Trim(Frm_Tab00.CB_MENU.Text)<>'' then
      DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+Trim(Frm_Tab00.CB_MENU.Text)+chr(39)+')');

   end
else
   begin
   DM2.Tb_Arq.SQL.Add('Select * From CADARQ2 where '
                      +' (CANOMARQ='+chr(39)+Frm_Tab00.Qr_RelTCTAB01.Value+CHR(39)+')');
   if (Frm_Tab00.Qr_RelTCTAB02.Value)<>'' then
      DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+Frm_Tab00.Qr_RelTCTAB02.Value+CHR(39)+')');
   if (Frm_Tab00.Qr_RelTCTAB03.Value)<>'' then
      DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+Frm_Tab00.Qr_RelTCTAB03.Value+CHR(39)+')');
   if (Frm_Tab00.Qr_RelTCTAB04.Value)<>'' then
      DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+Frm_Tab00.Qr_RelTCTAB04.Value+CHR(39)+')');
   if (Frm_Tab00.Qr_RelTCTAB05.Value)<>'' then
      DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+Frm_Tab00.Qr_RelTCTAB05.Value+CHR(39)+')');
   if (Frm_Tab00.Qr_RelTCTAB06.Value)<>'' then
      DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+Frm_Tab00.Qr_RelTCTAB06.Value+CHR(39)+')');
   if (Frm_Tab00.Qr_RelTCTAB07.Value)<>'' then
      DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+Frm_Tab00.Qr_RelTCTAB07.Value+CHR(39)+')');
   if (Frm_Tab00.Qr_RelTCTAB08.Value)<>'' then
      DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+Frm_Tab00.Qr_RelTCTAB08.Value+CHR(39)+')');
   if (Frm_Tab00.Qr_RelTCTAB09.Value)<>'' then
      DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+Frm_Tab00.Qr_RelTCTAB09.Value+CHR(39)+')');
   if (Frm_Tab00.Qr_RelTCDOC.Value)<>'' then
      DM2.Tb_Arq.SQL.Add(' or (CANOMARQ='+chr(39)+Frm_Tab00.Qr_RelTCDOC.Value+CHR(39)+')');

   end;
DM2.Tb_Arq.SQl.add('Order by CANOMCAM,CANOMARQ');
DM2.Tb_Arq.Open;

if DM2.Tb_Arq.Eof then
   Result:=False
else
   Result:=True;
end;
procedure TFrm_Tab00.ESPECIAISClick(Sender: TObject);
begin
flerarq2(0);

Application.Createform(TFrm_Tab_IE, Frm_Tab_IE);
Frm_Tab_IE.ShowModal;
Frm_Tab_IE.Free;

end;

function TFrm_Tab00.ftab00filnc(pcampo: String): string;
var
marq: String;
begin
if DM2.Tb_Arq.Locate('CANOMARQ',Trim(CB_TAB01.Text),[]) then
   marq:=DM2.Tb_ArqCANOMARQ.Value
else
   marq:=Trim(CB_TAB01.Text);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select CANOMCAM from CADARQ2 where CANOMARQ='+chr(39)+marq+chr(39)
                  +' and CANOMCAM like '+chr(39)+'%'+pcampo+chr(39));
DM1.Query1.Open;
if DM1.Query1.eof then
   begin
   if Trim(CB_TAB02.Text)<>'' then
      begin
      if DM2.Tb_Arq.Locate('CANOMARQ',Trim(CB_TAB02.Text),[]) then
         marq:=DM2.Tb_ArqCANOMARQ.Value
      else
         marq:=Trim(CB_TAB02.Text);
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select CANOMCAM from CADARQ2 where CANOMARQ='+chr(39)+marq+chr(39)
                        +' and CANOMCAM like '+chr(39)+'%'+pcampo+chr(39));
      DM1.Query1.Open;
      end;
   end;
if DM1.Query1.eof then
   begin
   if Trim(CB_TAB03.Text)<>'' then
      begin
      if DM2.Tb_Arq.Locate('CANOMARQ',Trim(CB_TAB03.Text),[]) then
         marq:=DM2.Tb_ArqCANOMARQ.Value
      else
         marq:=Trim(CB_TAB03.Text);
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select CANOMCAM from CADARQ2 where CANOMARQ='+chr(39)+marq+chr(39)
                        +' and CANOMCAM like '+chr(39)+'%'+pcampo+chr(39));
      DM1.Query1.Open;
      end;
   end;
if DM1.Query1.eof then
   begin
   if Trim(CB_TAB04.Text)<>'' then
      begin
      if DM2.Tb_Arq.Locate('CANOMARQ',Trim(CB_TAB04.Text),[]) then
         marq:=DM2.Tb_ArqCANOMARQ.Value
      else
         marq:=Trim(CB_TAB04.Text);
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select CANOMCAM from CADARQ2 where CANOMARQ='+chr(39)+marq+chr(39)
                        +' and CANOMCAM like '+chr(39)+'%'+pcampo+chr(39));
      DM1.Query1.Open;
      end;
   end;
if DM1.Query1.eof then
   begin
   if Trim(CB_TAB05.Text)<>'' then
      begin
      if DM2.Tb_Arq.Locate('CANOMARQ',Trim(CB_TAB05.Text),[]) then
         marq:=DM2.Tb_ArqCANOMARQ.Value
      else
         marq:=Trim(CB_TAB05.Text);
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select CANOMCAM from CADARQ2 where CANOMARQ='+chr(39)+marq+chr(39)
                        +' and CANOMCAM like '+chr(39)+'%'+pcampo+chr(39));
      DM1.Query1.Open;
      end;
   end;
if DM1.Query1.Eof then
   Result:=''
else
   Result:=DM1.Query1.Fields[0].AsString;
end;
procedure TFrm_Tab00.CONCATENADOSClick(Sender: TObject);
begin
flerarq2(0);
plocOri:=0;
parquso:= Qr_RelTCDOC.Value;
ptdvtab:='CADTDV';
if DM2.Tb_Arq.Locate('CANOMARQ',CB_MENU.Text,[]) then
   parquso :=DM2.Tb_ArqCANOMARQ.Value
else
   parquso :=CB_MENU.Text;
if moper_tab00=1 then
   pnomrel    :=Qr_RelTCNOME.Value
else
   pnomrel    :=NOMREL.Text;

Application.CreateForm(TFrm_Tab00JC, Frm_Tab00JC);
Frm_Tab00JC.ShowModal;
Frm_Tab00JC.Free;
end;

procedure TFrm_Tab00.INTCOLExit(Sender: TObject);
begin
INTCOL.Text:=fdeixanum(INTCOL.Text);
end;

procedure TFrm_Tab00.NUMCOLExit(Sender: TObject);
begin
NUMCOL.Text:=fdeixanum(NUMCOL.Text);
end;

procedure TFrm_Tab00.DETNCOLExit(Sender: TObject);
begin
DETNCOL.Text:=fdeixanum(DETNCOL.Text);
end;

procedure TFrm_Tab00.DETICOLExit(Sender: TObject);
begin
DETICOL.Text:=fdeixanum(DETICOL.Text);
end;

procedure TFrm_Tab00.CB_TAB06Exit(Sender: TObject);
begin
if (BBCANCELAR.Focused) or (BBSAIR.Focused) then
   exit;
CB_TAB06.Text:=CB_TAB06.items.Strings[CB_TAB06.itemindex];
if (trim(CB_TAB06.Text)='') and (Trim(CB_TAB07.Text)<>'') then
   begin
   fmensagem('Excluir proxima tabela depois esta!',0,['0'],0);
   CB_TAB06.Text:=Qr_RelTCTAB06.Text;
   cb_TAB06.SetFocus;
   end
else if (trim(CB_TAB05.Text)=Trim(CB_TAB06.Text)) and (trim(CB_TAB06.Text)<>'') then
   begin
   fmensagem('Esta tabela não pode ser igual a tabela anterior',0,['0'],0);
   CB_TAB06.SetFocus;
   end;

end;

procedure TFrm_Tab00.CB_TAB07Exit(Sender: TObject);
begin
if (BBCANCELAR.Focused) or (BBSAIR.Focused) then
   exit;
CB_TAB07.Text:=CB_TAB07.items.Strings[CB_TAB07.itemindex];
if (trim(CB_TAB07.Text)='') and (Trim(CB_TAB08.Text)<>'') then
   begin
   fmensagem('Excluir proxima tabela depois esta!',0,['0'],0);
   CB_TAB07.Text:=Qr_RelTCTAB07.Text;
   cb_TAB07.SetFocus;
   end
else if (trim(CB_TAB06.Text)=Trim(CB_TAB07.Text)) and (trim(CB_TAB07.Text)<>'') then
   begin
   fmensagem('Esta tabela não pode ser igual a tabela anterior',0,['0'],0);
   CB_TAB07.SetFocus;
   end;

end;

procedure TFrm_Tab00.CB_TAB08Exit(Sender: TObject);
begin
if (BBCANCELAR.Focused) or (BBSAIR.Focused) then
   exit;
CB_TAB08.Text:=CB_TAB08.items.Strings[CB_TAB08.itemindex];
if (trim(CB_TAB08.Text)='') and (Trim(CB_TAB09.Text)<>'') then
   begin
   fmensagem('Excluir proxima tabela depois esta!',0,['0'],0);
   CB_TAB08.Text:=Qr_RelTCTAB08.Text;
   cb_TAB08.SetFocus;
   end
else if (trim(CB_TAB07.Text)=Trim(CB_TAB08.Text)) and (trim(CB_TAB08.Text)<>'') then
   begin
   fmensagem('Esta tabela não pode ser igual a tabela anterior',0,['0'],0);
   CB_TAB08.SetFocus;
   end;

end;

procedure TFrm_Tab00.CB_TAB09Exit(Sender: TObject);
begin
if (BBCANCELAR.Focused) or (BBSAIR.Focused) then
   exit;
CB_TAB09.Text:=CB_TAB09.items.Strings[CB_TAB09.itemindex];
if (trim(CB_TAB08.Text)=Trim(CB_TAB09.Text)) and (trim(CB_TAB09.Text)<>'') then
   begin
   fmensagem('Esta tabela não pode ser igual a tabela anterior',0,['0'],0);
   CB_TAB09.SetFocus;
   end;

end;

procedure TFrm_Tab00.bbFiltrosEspeciaisClick(Sender: TObject);
begin
Frm_Tab_Fe.ShowModal;

end;

procedure TFrm_Tab00.FormKeyDown(Sender: TObject; var Key: Word;
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

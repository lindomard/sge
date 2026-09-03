unit S_TRelT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, func, S_DM1, Grids, DBGrids, DB, StdCtrls, DBTables,
  Buttons, S_Sdet,S_Tab00JC,S_Tab00Loc;

type
  TFrm_TrelT = class(TForm)
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
    RGENTREL: TRadioGroup;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    NOMREL: TEdit;
    BBINCLUIR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBCANCELAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBSAIR: TBitBtn;
    BBALTERAR: TBitBtn;
    RG_TPCOL: TRadioGroup;
    RG_ORDEM: TRadioGroup;
    CB_MPAGGR: TCheckBox;
    BitBtn1: TBitBtn;
    RG_TPESQ: TRadioGroup;
    CB_GRUPO: TCheckBox;
    CB_SGRUPO: TCheckBox;
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
    bbCriaJC: TBitBtn;
    CB_AVANCAROD: TCheckBox;
    Qr_RelTCTAB01: TStringField;
    Qr_RelTCTAB02: TStringField;
    Qr_RelTCTAB02N: TFloatField;
    Qr_RelTCTAB03: TStringField;
    Qr_RelTCTAB03N: TFloatField;
    Qr_RelTCTAB04: TStringField;
    Qr_RelTCTAB04N: TFloatField;
    Qr_RelTCTAB05: TStringField;
    Qr_RelTCTAB05N: TFloatField;
    Qr_RelTCTAB06: TStringField;
    Qr_RelTCTAB06N: TFloatField;
    Qr_RelTCTAB07: TStringField;
    Qr_RelTCTAB07N: TFloatField;
    Qr_RelTCTAB08: TStringField;
    Qr_RelTCTAB08N: TFloatField;
    Qr_RelTCTAB09: TStringField;
    Qr_RelTCTAB09N: TFloatField;
    Qr_RelTCORDEM2: TStringField;
    Qr_RelTCFILTRO: TStringField;
    Qr_RelTCCONT_M: TStringField;
    Qr_RelTCCONT_R: TStringField;
    Qr_RelTCCONT_AP: TFloatField;
    Qr_RelTCBLOQ: TFloatField;
    Qr_RelTCAGRUPAR: TFloatField;
    Qr_RelTCMASC: TStringField;
    Qr_RelTCPERIODO: TStringField;
    Qr_RelTCDIMGRU: TFloatField;
    Qr_RelTCDIMSG: TFloatField;
    Qr_RelTCTPFORM: TFloatField;
    Qr_RelTCQTDDIV: TFloatField;
    Qr_RelTCFILVEN: TFloatField;
    Qr_RelTCFVCAMPO: TStringField;
    Qr_RelTCFILCLI: TFloatField;
    Qr_RelTCFCCAMPO: TStringField;
    Qr_RelTCFILPRO: TFloatField;
    Qr_RelTCFPCAMPO: TStringField;
    Qr_RelTCFILFOR: TFloatField;
    Qr_RelTCFFCAMPO: TStringField;
    Qr_RelTCFILRED: TFloatField;
    Qr_RelTCFRCAMPO: TStringField;
    Qr_RelTCDETNCOL: TFloatField;
    Qr_RelTCDETICOL: TFloatField;
    Qr_RelTCDETTPCOL: TFloatField;
    Qr_RelTCAVANCAROD: TFloatField;
    Qr_RelTCQTDVIA: TFloatField;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RG_AVPTPI: TComboBox;
    Label5: TLabel;
    CB_TPREL: TComboBox;
    Label6: TLabel;
    RG_IMPDA: TComboBox;
    CB_TPFORM: TCheckBox;
    CB_QTDVIA: TComboBox;
    gprod: TGroupBox;
    Label7: TLabel;
    edt_codgru: TEdit;
    edt_nomgru: TEdit;
    Qr_RelTCFILEST: TFloatField;
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
    Qr_RelTCGPRO: TFloatField;
    CB_MODMATR: TCheckBox;
    Qr_RelTCMODIMP: TFloatField;
    Label8: TLabel;
    cb_cmet: TComboBox;
    cb_PercDesc: TCheckBox;
    Qr_RelTCIMPPD: TFloatField;
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
    procedure bbCriaJCClick(Sender: TObject);
    procedure RG_AVPTPIExit(Sender: TObject);
    procedure edt_codgruKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codgruExit(Sender: TObject);
    procedure CB_TPRELChange(Sender: TObject);
    procedure cb_cmetExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_TrelT: TFrm_TrelT;
  mpesq: String;
implementation

uses S_TPro, S_Oper, lerarq, S_GPro;

{$R *.dfm}

procedure TFrm_TrelT.FormCreate(Sender: TObject);
begin
mpesq:=mreltab;
if mreltab='NF' then
   begin
   mpesq:='CADTAB';
   BBINCLUIR.Enabled:=true;
   RG_IMPDA.ItemIndex:=0;
   L_QTDSER.Visible :=True;
   L_QTDITEM.Visible:=True;
   QTDSER.Visible   :=True;
   QTDITEM.Visible  :=True;
   RG_AVPTPI.Visible:=True;
   CB_AVPIPF.Visible:=True;
   RG_TPCOL.Visible :=False;
   RG_TPESQ.Visible :=False;
//   RG_TPREL.Visible :=False;
   CB_AVPIPF.Caption:='Não Exibir Grades/lotes Abaixo da descrição';

   CB_SGRUPO.Caption:='Emitir com impressora laser/jato de tinta';
   RG_ORDEM.Items.Add('&Descricao do Produto');
   RG_ORDEM.Items.Add('D&escricao 2 do Produto');
   RG_ORDEM.Items.Add('&Ordem Digitação');
   RG_ORDEM.Items.Add('Código do &Produto');
   RG_ORDEM.Items.Add('&Marca do Produto + Descricao');
   RG_ORDEM.Items.Add('&Lista(positiva/negativa/inalterado)+Descrição Produto');
   RG_ORDEM.Items.Add('&Seção + Descricao');

   RG_ORDEM.Items.Add('Grupo + Descricao (Tipo Relatorio Fortes Fixo)');
   RG_ORDEM.Items.Add('Sub-Grupo/Ramo + Descricao (Tipo Relatorio Fortes Fixo)');
   RG_ORDEM.Items.Add('Grupo + Descricao (relatorio tabulado)');

   RG_ORDEM.Visible :=True;

//   CB_GRUPO.Visible :=False;
//   CB_SGRUPO.Visible:=False;
   CB_MPAGGR.Visible:=False;

//   L_QTDLPP.Visible :=False;
//   QTDLP.Visible    :=False;
//   L_QTDCOL.Visible :=False;
//   QTDCOL.Visible   :=False;
   L_NUMCOL.Visible :=False;
   NUMCOL.Visible   :=False;
   L1_INTCOL.Visible:=False;
   L2_INTCOL.Visible:=False;
   INTCOL.Visible   :=False;
   end;
RG_ORDEM.ItemIndex:=0;
Qr_Rel.Close;
Qr_Rel.SQL.Clear;
Qr_Rel.SQL.Add('Select * from CTDVCA Where ');
if DM1.Qr_Tid.Locate('TINOME',mpesq,[]) then
   Qr_Rel.Sql.add(' TCDOC='+chr(39)+mreltab+chr(39))
else
   Qr_Rel.SQL.Add(' TCCODEMP='+IntTostr(codemp)
              +' and TCDOC='+chr(39)+mreltab+chr(39));
Qr_Rel.Open;
if Trim(Frm_TPro.Caption)<>'' then
   begin
   if not  Qr_Rel.Locate('TCDOC;TCNOME',vararrayof([mreltab,Frm_Tpro.NOMREL.Caption]),[]) then
      Qr_Rel.First;
   end;

end;

procedure TFrm_TrelT.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_TrelT.BBINCLUIRClick(Sender: TObject);
begin
GroupBox2.Enabled:=True;
BBGRAVAR.Enabled:=True;
BBCANCELAR.Enabled:=True;
BBINCLUIR.Enabled:=False;
BBALTERAR.Enabled:=False;
BBEXCLUIR.Enabled :=False;
NOMREL.Enabled    :=True;


NOMREL.Text:='';
RGTFONTE.ItemIndex:=0;
RGENTREL.ItemIndex:=0;
CB_GRUPO.Checked:=True;
CB_SGRUPO.Checked:=True;
CB_AVANCAROD.Checked:=False;
QTDLP.Text:='66';
QTDCOL.Text:='80';
NUMCOL.Text:='1';
INTCOL.Text:='';
Memo1.Text:='';
NOMREL.SetFocus;
end;

procedure TFrm_TrelT.BBGRAVARClick(Sender: TObject);
begin
if Trim(NOMREL.Text)='' then
   begin
   ShowMessage('Nome do Relatório. Campo Obrigatório!');
   NOMREL.SetFocus;
   exit;
   end;
if Trim(QTDLP.Text)='' then
   begin
   ShowMessage('Quantidade de Linhas Por Pagina. Campo Obrigatório!');
   QTDLP.SetFocus;
   exit;
   end;
if Trim(QTDCOL.Text)='' then
   begin
   ShowMessage('Quantidade de Colunas. Campo Obrigatório!');
   QTDCOL.setfocus;
   exit;
   end;
if mreltab='NF' then
   begin
   if StrToInt('0'+Trim(QTDITEM.Text))<=0 then
      begin
      ShowMessage('Quantidade de itens. Campo Obrigatório!');
      QTDITEM.setfocus;
      exit;
      end;
   if StrToInt('0'+Trim(QTDSER.Text))<=0 then
      begin
      ShowMessage('Quantidade de serviços. Campo Obrigatório!');
      QTDSER.setfocus;
      exit;
      end;
   end;

if StrtoInt('0'+Trim(NUMCOL.Text))<1 then
   NUMCOL.Text:='1';
if (StrtoInt('0'+NUMCOL.Text)>1) and (StrToInt('0'+INTCOL.Text)<1) then
   begin
   ShowMessage('Favor Digitar o Campo Imprimir apos...,'+#13
              +'Campo Obrigatório p/Quantidade de Colunas Acima de 1');
   INTCOL.SetFocus;
   exit;
   end;

if not fltdvca(0,0,mreltab,NOMREL.Text,'CADTAB') then
   DM1.Tb_TDVCA.Append
else
   DM1.Tb_TDVCA.Edit;
DM1.Tb_TDVCATCCODEMP.Value:=codemp;
DM1.Tb_TDVCATCDOC.Value   :=mreltab;
DM1.Tb_TDVCATCNOME.Value  :=NOMREL.Text;

if ((Qr_RelTCNOME.AsString='Lista de Separacao2') or
    (Qr_RelTCNOME.AsString='Vale de Mercadorias2') )
  and (Qr_RelTCTPREL.AsInteger=5) then
  begin
  DM1.Tb_TDVCATCGPRO.Value  :=ValInt2(edt_codgru.Text);
  end
else
  begin
  DM1.Tb_TDVCATCGPRO.Value  :=0;
  end;

DM1.Tb_TDVCATCQTDLIN.Value:=StrToInt('0'+QTDLP.Text);
DM1.Tb_TDVCATCQTDCOL.Value:=StrToInt('0'+QTDCOL.Text);
DM1.Tb_TDVCATCFPADRAO.Value:=RGTFONTE.Itemindex;
DM1.Tb_TDVCATCQTDLPP.Value :=RGENTREL.ItemIndex;
DM1.Tb_TDVCATCOBS.Value    :=Memo1.Text;
DM1.Tb_TDVCATCQTDITEM.Value:=0;
DM1.Tb_TDVCATCNUMCOL.Value :=StrToInt('0'+NUMCOL.Text);
DM1.Tb_TDVCATCINTCOL.Value :=StrtoInt('0'+INTCOL.Text);
DM1.Tb_TDVCATCTPCOL.Value  :=RG_TPCOL.ItemIndex;
DM1.Tb_TDVCATCORDEM.Value  :=RG_ORDEM.ItemIndex;
DM1.Tb_TDVCATCTPESQ.Value  :=RG_TPESQ.ItemIndex;
DM1.Tb_TDVCATCTPREL.Value  :=CB_TPREL.ItemIndex;
DM1.Tb_TDVCATCIMPG.Value   :=iif(CB_GRUPO.Checked,0,1);
DM1.Tb_TDVCATCIMPSG.Value  :=iif(CB_SGRUPO.Checked,0,1);
dm1.Tb_TDVCATCIMPPD.Value  :=iif(cb_PercDesc.Checked,1,0);
DM1.Tb_TDVCATCAVANCAROD.Value:=iif(CB_AVANCAROD.Checked,1,0);
DM1.Tb_TDVCATCAVPTPI.Value  :=RG_AVPTPI.ItemIndex;
DM1.Tb_TDVCATCIMPCMET.Value :=cb_cmet.ItemIndex;

DM1.Tb_TDVCATCAVPIPF.Value :=iif(CB_AVPIPF.Checked,0,1);
DM1.Tb_TDVCATCIMPDA.Value  :=RG_IMPDA.ItemIndex;
DM1.Tb_TDVCATCVIS.Value    :=iif(CB_VIS.Checked,0,1);
DM1.Tb_TDVCATCTPFORM.AsInteger:=iif(CB_TPFORM.Checked,0,1);
DM1.Tb_TDVCATCQTDSER.Value :=StrToFloat('0'+QTDSER.Text);
DM1.Tb_TDVCATCQTDITEM.Value:=StrToFloat('0'+QTDITEM.Text);
DM1.Tb_TDVCATCTPFORM.AsInteger:=IIF(CB_TPFORM.Checked,1,0);
if CB_QTDVIA.ItemIndex<0 then
   DM1.Tb_TDVCATCQTDVIA.Value :=1
else
   DM1.Tb_TDVCATCQTDVIA.Value :=CB_QTDVIA.ItemIndex;

if mreltab='NF' then
   DM1.Tb_TDVCATCSTATUS.Value:=1
else
   DM1.Tb_TDVCATCSTATUS.Value:=0;

if CB_MPAGGR.Checked then
   DM1.Tb_TDVCATCMPAGGR.Value:=1
else
   DM1.Tb_TDVCATCMPAGGR.Value:=0;
{
if (CB_MODMATR.Checked) and
   ((Qr_RelTCNOME.AsString='Lista de Separacao') or
   (Qr_RelTCNOME.AsString='Vale de Mercadorias') or
   (Qr_RelTCNOME.AsString='Lista de Separacao2') or
   (Qr_RelTCNOME.AsString='Vale de Mercadorias2')) and
   ((Qr_RelTCTPREL.AsInteger=4) or (Qr_RelTCTPREL.AsInteger=5))then
   DM1.Tb_TDVCATCMODIMP.Value:=1
else
   DM1.Tb_TDVCATCMODIMP.Value:=0;
 }

if (CB_MODMATR.Checked) then
   DM1.Tb_TDVCATCMODIMP.Value:=1
else
   DM1.Tb_TDVCATCMODIMP.Value:=0;


DM1.Tb_TDVCA.Post;
Qr_Rel.Close;
Qr_Rel.SQL.Clear;
Qr_Rel.SQL.Add('Select * from CTDVCA Where ');
if DM1.Qr_Tid.Locate('TINOME',mpesq,[]) then
   Qr_Rel.Sql.add(' TCDOC='+chr(39)+mreltab+chr(39))
else
   Qr_Rel.SQl.Add(' TCCODEMP='+IntTostr(codemp)
                 +' and TCDOC='+chr(39)+mreltab+chr(39));
Qr_Rel.Open;
if not  Qr_Rel.Locate('TCDOC;TCNOME',vararrayof([mreltab,Frm_Tpro.NOMREL.Caption]),[]) then
   Qr_Rel.First;

GroupBox2.Enabled:=False;
BBGRAVAR.Enabled:=False;
BBCANCELAR.Enabled:=False;
//if mreltab<>'NF' then
   BBINCLUIR.Enabled :=True;
BBALTERAR.Enabled :=True;
BBEXCLUIR.Enabled :=True;
GroupBox2.Enabled :=False;

DBGrid1.SetFocus;

end;

procedure TFrm_TrelT.DBGrid1Enter(Sender: TObject);
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

procedure TFrm_TrelT.BBCANCELARClick(Sender: TObject);
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
//if mreltab<>'NF' then
   BBINCLUIR.Enabled:=True;
BBALTERAR.Enabled:=True;
BBGRAVAR.Enabled :=False;
BBCANCELAR.Enabled:=False;
BBEXCLUIR.Enabled :=True;

end;

procedure TFrm_TrelT.BBEXCLUIRClick(Sender: TObject);
begin
if Qr_RelTCSTATUS.Value=1 then
   begin
   fMensagem('Documento protegido. Tome Cuidado!',0,['0'],0);
   end;
if fMensagem('Quer Realmente Excluir Este Registros?',0,['1','2'],2)=mrYes then
   begin
   if not fltdvca(0,0,mreltab,NOMREL.Text,'CADTAB') then
      begin
      DM1.Tb_TDVCA.Delete;
      MessageDlg('Registro Excluido!',mtInformation,[mbOk],0);
      end
   else
      MessageDlg('Registro Nao Encontrado.',mtWarning,[mbOk],0);
   end;
//if mreltab<>'NF' then
   BBINCLUIR.Enabled:=True;
BBALTERAR.Enabled:=True;
BBGRAVAR.Enabled :=False;
BBCANCELAR.Enabled:=False;
BBEXCLUIR.Enabled :=True;
GroupBox2.Enabled :=False;
Qr_Rel.Close;
Qr_Rel.SQL.Clear;
Qr_Rel.SQL.Add('Select * from CTDVCA Where ');
if DM1.Qr_Tid.Locate('TINOME',mpesq,[]) then
   Qr_Rel.SQL.add(' TCDOC='+chr(39)+mreltab+chr(39))
else
   Qr_Rel.Sql.add(' TCCODEMP='+IntTostr(codemp)
              +' and TCDOC='+chr(39)+mreltab+chr(39));
Qr_Rel.Open;
if not  Qr_Rel.Locate('TCDOC;TCNOME',vararrayof([mreltab,Frm_Tpro.NOMREL.Caption]),[]) then 
   Qr_Rel.First;

DBGrid1.SetFocus;


end;

procedure TFrm_TrelT.QTDITEMKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_TrelT.BBALTERARClick(Sender: TObject);
begin
BBINCLUIR.Enabled:=False;
BBALTERAR.Enabled:=False;
BBGRAVAR.Enabled :=True;
BBCANCELAR.Enabled:=True;
BBEXCLUIR.Enabled :=False;
GroupBox2.Enabled :=True;
NOMREL.Enabled    :=False;
RGTFONTE.SetFocus;
end;

procedure TFrm_TrelT.DBGrid1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_TrelT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if not Qr_RelTCNOME.IsNull then
   begin
   Frm_TPro.Label2.Caption:='Relatório Selecionado: ';
   Frm_Tpro.NOMREL.Caption:=Qr_RelTCNOME.Value;
   fltdvca(0,0,mreltab,NOMREL.Text,'CADTAB');
   end
else
   begin
   Frm_Tpro.label2.Caption:='';
   Frm_Tpro.NOMREL.Caption:='';
   end;
Frm_Tpro.NOMREL.Update;
Frm_TPro.Label2.Update;

if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_TrelT.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFrm_TrelT.Src_RelDataChange(Sender: TObject; Field: TField);
begin
NOMREL.Text:=Qr_RelTCNOME.Value;
RGTFONTE.ItemIndex:=Qr_RelTCFPADRAO.AsInteger;
RGENTREL.ItemIndex:=Qr_RelTCQTDLPP.AsInteger;
QTDLP.Text        :=Qr_RelTCQTDLIN.AsString;
QTDCOL.Text       :=Qr_RelTCQTDCOL.AsString;
Memo1.Text        :=Qr_RelTCOBS.Text;
NUMCOL.Text       :=Qr_RelTCNUMCOL.AsString;
INTCOL.Text       :=Qr_RelTCINTCOL.AsString;
RG_TPCOL.ItemIndex:=Qr_RelTCTPCOL.AsInteger;
RG_ORDEM.ItemIndex:=Qr_RelTCORDEM.AsInteger;
RG_TPESQ.ItemIndex:=Qr_RelTCTPESQ.AsInteger;
CB_TPREL.ItemIndex:=Qr_RelTCTPREL.AsInteger;
CB_TPRELChange(Self);
CB_MPAGGR.Checked :=Qr_RelTCMPAGGR.Value=1;
CB_GRUPO.Checked  :=Qr_RelTCIMPG.Value=0;
CB_SGRUPO.Checked :=Qr_RelTCIMPSG.Value=0;
cb_PercDesc.Checked:=iif(Qr_RelTCIMPPD.IsNull,0,Qr_RelTCIMPPD.AsInteger);
CB_AVANCAROD.Checked:=Qr_RelTCAVANCAROD.Value=1;
CB_MODMATR.Checked:=Qr_RelTCMODIMP.Value=1;
RG_AVPTPI.ItemIndex :=Qr_RelTCAVPTPI.AsInteger;
cb_cmet.ItemIndex   :=DM1.Tb_TDVCATCIMPCMET.AsInteger;

CB_AVPIPF.Checked :=Qr_RelTCAVPIPF.Value=0;
RG_IMPDA.ItemIndex:=Qr_RelTCIMPDA.AsInteger;
CB_VIS.Checked    :=Qr_RelTCVIS.Value=0;
QTDSER.Text       :=Qr_RelTCQTDSER.AsString;
QTDITEM.Text      :=Qr_RelTCQTDITEM.AsString;
CB_QTDVIA.ItemIndex:=Qr_RelTCQTDVIA.AsInteger;
edt_codgru.Text   :=Qr_RelTCGPRO.AsString;
if Qr_RelTCGPRO.AsInteger>0 then
  edt_codgruExit(Self)
else
  edt_nomgru.Text:='';

if ((Qr_RelTCNOME.AsString='Lista de Separacao2') or
    (Qr_RelTCNOME.AsString='Vale de Mercadorias2') )
  and (Qr_RelTCTPREL.AsInteger=5) then
  begin
  gprod.Visible:=True;
  end
else
  begin
  gprod.Visible:=False;
  end;

if (Qr_RelTCTPREL.AsInteger=3) then
  begin
  cb_PercDesc.Visible:=True;
  end
else
  begin
  cb_PercDesc.Visible:=False;
  cb_PercDesc.Checked:=False;
  end;


CB_TPFORM.Checked :=Qr_RelTCTPFORM.AsInteger=1;
GroupBox2.Update;

end;

procedure TFrm_TrelT.DBGrid1DblClick(Sender: TObject);
begin
close;
end;

procedure TFrm_TrelT.NOMRELKeyPress(Sender: TObject; var Key: Char);
begin
if (Length(NOMREL.Text)>19) and (key<>#8) then
   key:=#0; 
end;

procedure TFrm_TrelT.BitBtn1Click(Sender: TObject);
var
mitem: Integer;
begin
mlorigem:=1; // 0-Para Tabulacoes 1-Operadores
if Frm_SDet=nil then
   Application.CreateForm(TFrm_SDet, Frm_SDet)
else
   begin
   Frm_SDet.Free;
   Frm_SDet:=nil;
   Application.CreateForm(TFrm_SDet, Frm_SDet);
   end;
Frm_SDet.Showmodal;
if Frm_Sdet.ModalResult=MrOk Then
   begin
   mitem:=Frm_SDet.RG_ARQ.ItemIndex;
   mrelat:=marq[Frm_SDet.RG_ARQ.ItemIndex+1];
   marq2:=Frm_Sdet.RG_ARQ.Items[mitem];
   mreltab2:=mnom[Frm_SDet.RG_ARQ.ItemIndex+1];
   if mreltab2=mreltab then
      mreltab2:='';
   end
else
   begin
   Frm_SDet.Free;
   Frm_SDet:=nil;
   Abort;
   end;
if frm_Oper=nil then
   Application.Createform(TFrm_Oper, Frm_OPer)
else
   begin
   Frm_OPer.free;
   Frm_OPer:=nil;
   Application.Createform(TFrm_Oper, Frm_OPer)
   end;

Frm_Oper.ShowModal;
Frm_Oper.Free;
Frm_Oper:=nil;

end;

procedure TFrm_TrelT.bbCriaJCClick(Sender: TObject);
begin
if Qr_RelTCNOME.Value='Duplicata' then
   plocOri:=3
else
   begin
   if Frm_Tab00Loc=nil then
      Application.CreateForm(TFrm_Tab00Loc, Frm_Tab00Loc)
   else
      begin
      Frm_Tab00Loc.Free;
      Frm_Tab00Loc:=nil;
      Application.CreateForm(TFrm_Tab00Loc, Frm_Tab00Loc);
      end;
   plocOri:=0;
   if Frm_Tab00Loc.ModalResult=MrOk Then
      begin
      plocOri := Frm_Tab00Loc.RadioGroup1.ItemIndex;
      end
   else
      begin
      Frm_Tab00Loc.Free;
      exit;
      end;
   end;
parquso:='NF';
ptdvtab:='CADTAB';
pnomrel:=Qr_RelTCNOME.Value;

Frm_Tab00JC.ShowModal;
Frm_Tab00JC.Free;
Frm_Tab00Loc:=nil;
end;

procedure TFrm_TrelT.RG_AVPTPIExit(Sender: TObject);
begin
with RG_AVPTPI do ItemIndex:=Items.IndexOf(RG_AVPTPI.Text);
RG_AVPTPI.text:=RG_AVPTPI.Items.Strings[RG_AVPTPI.ItemIndex];

end;

procedure TFrm_TrelT.edt_codgruKeyPress(Sender: TObject; var Key: Char);
begin
if (Key in ['A'..'Z']) or (Key in ['a'..'z']) or (Key='%') then
  begin
  Application.CreateForm(TFrm_GPro,Frm_GPro);
  Frm_GPro.FormStyle:=fsNormal;
  Frm_GPro.edt_conteudo.Text:=Key;
  Frm_GPro.edt_conteudo.SelStart:=1;
  Frm_GPro.btn_atualizarClick(Self);
  gpro_ori:='Frm_TRelT';
  Key:=' ';
  Frm_GPro.ShowModal;
  edt_codgru.Text:=dm1.Tb_GproGRCODGRU.AsString;
  edt_codgru.Text:=trim(edt_codgru.Text);
  edt_nomgru.Text:=dm1.Tb_GproGRNOME.AsString;
  FreeAndNil(Frm_GPro);
  end;
end;

procedure TFrm_TrelT.edt_codgruExit(Sender: TObject);
begin
edt_codgru.Text:=inttostr(ValInt2(edt_codgru.Text));
if ValInt2(edt_codgru.Text)>0 then
  begin
  flcadGPro(1,0,edt_codgru.Text);
  if not DM1.Tb_Gpro.IsEmpty then
    begin
    edt_nomgru.Text:=DM1.Tb_GproGRNOME.AsString;
    end
  else
    begin
    fmensagem('Grupo de Produtos não cadastrados!!!',0,['0'],0);
    edt_codgru.SetFocus;
    end;
  end
else
  begin
  edt_nomgru.Text:='';
  end;
end;

procedure TFrm_TrelT.CB_TPRELChange(Sender: TObject);
begin
if (CB_TPREL.ItemIndex=4) or (CB_TPREL.ItemIndex=5) then
  CB_MODMATR.Visible:=True
else
  CB_MODMATR.Visible:=False;
end;

procedure TFrm_TrelT.cb_cmetExit(Sender: TObject);
begin
if cb_cmet.ItemIndex<0 then
   begin
   with cb_cmet do ItemIndex:=Items.IndexOf(cb_cmet.Text);
   end;
cb_cmet.text:=cb_cmet.Items.Strings[cb_cmet.ItemIndex];

end;

end.

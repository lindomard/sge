unit S_PVO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,func,db,dbtables,lerarq, Buttons, Grids,
  DBGrids, Mask, DBCtrls;

type
  TFrm_PVO = class(TForm)
    gb_acres: TGroupBox;
    Label1: TLabel;
    ACTD: TEdit;
    Label2: TLabel;
    ACT00: TEdit;
    ACT01: TEdit;
    Label3: TLabel;
    ACT99: TEdit;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    Tb_Po99_nov: TQuery;
    U_PO99: TUpdateSQL;
    gb_prazos: TGroupBox;
    Src_PO99: TDataSource;
    Tb_Po99_novPOCODEMP: TFloatField;
    Tb_Po99_novPOPRAZO: TFloatField;
    Label29: TLabel;
    CB_PVTPC: TComboBox;
    GB_COMIS: TGroupBox;
    Label8: TLabel;
    Label12: TLabel;
    Label19: TLabel;
    COM: TEdit;
    COM02: TEdit;
    COM03: TEdit;
    Label30: TLabel;
    CB_PVTPDC: TComboBox;
    DES: TEdit;
    Label31: TLabel;
    CB_PVTPD1: TComboBox;
    DES1: TEdit;
    Label32: TLabel;
    CB_PVTPD2: TComboBox;
    DES2: TEdit;
    Label33: TLabel;
    CB_PVTPD3: TComboBox;
    DES3: TEdit;
    gb_financeiro: TGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    CB_PVTPDESF: TComboBox;
    gb_intervalo: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit2: TEdit;
    CB_PVDDESCF: TComboBox;
    DESCF: TEdit;
    DIASDESCF: TEdit;
    CB_PVFINPRM: TCheckBox;
    PVDF01A: TEdit;
    PVDF01B: TEdit;
    PVDF01: TEdit;
    PVDF02A: TEdit;
    PVDF02B: TEdit;
    PVDF02: TEdit;
    PVDF03A: TEdit;
    PVDF03B: TEdit;
    PVDF03: TEdit;
    PVDF04A: TEdit;
    PVDF04B: TEdit;
    PVDF04: TEdit;
    gb_status: TGroupBox;
    Label17: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    PVD1S0: TEdit;
    PVD1S1: TEdit;
    PVD1S2: TEdit;
    PVD1S5: TEdit;
    PVD1S4: TEdit;
    PVD1S3: TEdit;
    PVD1S7: TEdit;
    PVD1S6: TEdit;
    PVD2S0: TEdit;
    PVD2S1: TEdit;
    PVD2S2: TEdit;
    PVD2S3: TEdit;
    PVD2S4: TEdit;
    PVD2S5: TEdit;
    PVD2S6: TEdit;
    PVD2S7: TEdit;
    PVD3S0: TEdit;
    PVD3S1: TEdit;
    PVD3S2: TEdit;
    PVD3S3: TEdit;
    PVD3S4: TEdit;
    PVD3S5: TEdit;
    PVD3S6: TEdit;
    PVD3S7: TEdit;
    PVDFS0: TEdit;
    PVDFS1: TEdit;
    PVDFS2: TEdit;
    PVDFS3: TEdit;
    PVDFS4: TEdit;
    PVDFS5: TEdit;
    PVDFS6: TEdit;
    PVDFS7: TEdit;
    PVCMS0: TEdit;
    PVCMS1: TEdit;
    PVCMS2: TEdit;
    PVCMS3: TEdit;
    PVCMS4: TEdit;
    PVCMS5: TEdit;
    PVCMS6: TEdit;
    PVCMS7: TEdit;
    Label15: TLabel;
    CB_TPP: TComboBox;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    PRAZO: TEdit;
    BBOK: TBitBtn;
    BitBtn2: TBitBtn;
    lbl_hint: TLabel;
    Label16: TLabel;
    PVCMV02S0: TEdit;
    PVCMV02S1: TEdit;
    PVCMV02S2: TEdit;
    PVCMV02S3: TEdit;
    PVCMV02S4: TEdit;
    PVCMV02S5: TEdit;
    PVCMV02S6: TEdit;
    PVCMV02S7: TEdit;
    CB_ACREDESREG: TCheckBox;
    CB_AJCOMIS: TCheckBox;
    lbl_PERCPPARC: TLabel;
    PERCPPARC: TEdit;
    procedure COMExit(Sender: TObject);
    procedure COMKeyPress(Sender: TObject; var Key: Char);
    procedure ACTDExit(Sender: TObject);
    procedure ACT00Exit(Sender: TObject);
    procedure ACT01Exit(Sender: TObject);
    procedure ACT99Exit(Sender: TObject);
    procedure DESExit(Sender: TObject);
    procedure DES1Exit(Sender: TObject);
    procedure DES2Exit(Sender: TObject);
    procedure DESCFExit(Sender: TObject);
    procedure DIASDESCFKeyPress(Sender: TObject; var Key: Char);
    procedure DIASDESCFExit(Sender: TObject);
    procedure BBOKClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure COM03Exit(Sender: TObject);
    procedure COM02Exit(Sender: TObject);
    procedure DES3Exit(Sender: TObject);
    procedure CB_PVTPCClick(Sender: TObject);
    procedure CB_PVTPCEnter(Sender: TObject);
    procedure CB_PVTPCExit(Sender: TObject);
    procedure CB_PVTPDCExit(Sender: TObject);
    procedure CB_PVTPDCEnter(Sender: TObject);
    procedure CB_PVTPD1Exit(Sender: TObject);
    procedure CB_PVTPD2Exit(Sender: TObject);
    procedure CB_PVTPDESFExit(Sender: TObject);
    procedure PVDF01AExit(Sender: TObject);
    procedure PVDF02AExit(Sender: TObject);
    procedure PVDF03AExit(Sender: TObject);
    procedure PVDF04AExit(Sender: TObject);
    procedure PVDF01BExit(Sender: TObject);
    procedure PVDF02BExit(Sender: TObject);
    procedure PVDF03BExit(Sender: TObject);
    procedure PVDF04BExit(Sender: TObject);
    procedure PVDF01Exit(Sender: TObject);
    procedure PVDF02Exit(Sender: TObject);
    procedure PVDF03Exit(Sender: TObject);
    procedure PVDF04Exit(Sender: TObject);
    procedure PVD1S0Exit(Sender: TObject);
    procedure PVD1S1Exit(Sender: TObject);
    procedure PVD1S2Exit(Sender: TObject);
    procedure PVD1S3Exit(Sender: TObject);
    procedure PVD1S4Exit(Sender: TObject);
    procedure PVD1S5Exit(Sender: TObject);
    procedure PVD1S6Exit(Sender: TObject);
    procedure PVD1S7Exit(Sender: TObject);
    procedure PVD2S0Exit(Sender: TObject);
    procedure PVD2S1Exit(Sender: TObject);
    procedure PVD2S2Exit(Sender: TObject);
    procedure PVD2S3Exit(Sender: TObject);
    procedure PVD2S4Exit(Sender: TObject);
    procedure PVD2S5Exit(Sender: TObject);
    procedure PVD2S6Exit(Sender: TObject);
    procedure PVD2S7Exit(Sender: TObject);
    procedure PVD3S0Exit(Sender: TObject);
    procedure PVD3S1Exit(Sender: TObject);
    procedure PVD3S2Exit(Sender: TObject);
    procedure PVD3S3Exit(Sender: TObject);
    procedure PVD3S4Exit(Sender: TObject);
    procedure PVD3S5Exit(Sender: TObject);
    procedure PVD3S6Exit(Sender: TObject);
    procedure PVD3S7Exit(Sender: TObject);
    procedure PVDFS0Exit(Sender: TObject);
    procedure PVDFS1Exit(Sender: TObject);
    procedure PVDFS2Exit(Sender: TObject);
    procedure PVDFS3Exit(Sender: TObject);
    procedure PVDFS4Exit(Sender: TObject);
    procedure PVDFS5Exit(Sender: TObject);
    procedure PVDFS6Exit(Sender: TObject);
    procedure PVDFS7Exit(Sender: TObject);
    procedure PVCMS0Exit(Sender: TObject);
    procedure PVCMS1Exit(Sender: TObject);
    procedure PVCMS2Exit(Sender: TObject);
    procedure PVCMS3Exit(Sender: TObject);
    procedure PVCMS4Exit(Sender: TObject);
    procedure PVCMS5Exit(Sender: TObject);
    procedure PVCMS6Exit(Sender: TObject);
    procedure PVCMS7Exit(Sender: TObject);
    procedure PVCMV02S0Exit(Sender: TObject);
    procedure PVCMV02S1Exit(Sender: TObject);
    procedure PVCMV02S2Exit(Sender: TObject);
    procedure PVCMV02S3Exit(Sender: TObject);
    procedure PVCMV02S4Exit(Sender: TObject);
    procedure PVCMV02S5Exit(Sender: TObject);
    procedure PVCMV02S6Exit(Sender: TObject);
    procedure PVCMV02S7Enter(Sender: TObject);
    procedure PERCPPARCExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
//    Function ImpNF(pvtabpv: String; pcodemp,plotseq,pchave: Real): Boolean;

      function fCarregarDM4(ptipo: Integer): Boolean;
  end;

var
  Frm_PVO: TFrm_PVO;

implementation

uses S_DM1, S_DM4;

{$R *.dfm}

procedure TFrm_PVO.COMExit(Sender: TObject);
begin
if (ValFloat(COM.Text)<0) or (ValFloat(COM.Text)>99) then
   begin
   fmensagem('% de comissão invalido!',0,['0'],0);
   COM.SetFocus;
   exit;
   end;
COM.Text:=FormatFloat(mcasas, ValFloat(COM.Text));
end;

procedure TFrm_PVO.COMKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then
   key:=DecimalSeparator
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_PVO.ACTDExit(Sender: TObject);
begin
if (ValFloat(ACTD.Text)<0)  then
   begin
   fmensagem('Percentual de acréscimo invalido!',0,['0'],0);
   ACTD.SetFocus;
   exit;
   end;
ACTD.Text:=FormatFloat(mcasas, ValFloat(ACTD.Text));
if ValFloat(ACTD.Text)>0 then
   begin
   ACT00.Enabled:=False;
   ACT01.Enabled:=False;
   ACT99.Enabled:=False;
   end
else
   begin
   ACT00.Enabled:=True;
   ACT01.Enabled:=True;
   ACT99.Enabled:=True;
   end;

end;

procedure TFrm_PVO.ACT00Exit(Sender: TObject);
begin
if (ValFloat(ACT00.Text)<0)  then
   begin
   fmensagem('Percentual de acréscimo invalido!',0,['0'],0);
   ACT00.SetFocus;
   exit;
   end;
ACT00.Text:=FormatFloat(mcasas, ValFloat(ACT00.Text));

end;

procedure TFrm_PVO.ACT01Exit(Sender: TObject);
begin
if (ValFloat(ACT01.Text)<0)  then
   begin
   fmensagem('Percentual de acréscimo invalido!',0,['0'],0);
   ACT01.SetFocus;
   exit;
   end;
ACT01.Text:=FormatFloat(mcasas, ValFloat(ACT01.Text));

end;

procedure TFrm_PVO.ACT99Exit(Sender: TObject);
begin
if (ValFloat(ACT99.Text)<0)  then
   begin
   MessageDlg('Percentual de acréscimo invalido!',mtWarning,[mbOk],0);
   ACT99.SetFocus;
   exit;
   end;
ACT99.Text:=FormatFloat(mcasas, ValFloat(ACT99.Text));

end;

procedure TFrm_PVO.DESExit(Sender: TObject);
begin
if (ValFloat(DES.Text)<0) or (ValFloat(DES.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   DES.SetFocus;
   exit;
   end;
DES.Text:=FormatFloat(mcasas, ValFloat(DES.Text));

end;

procedure TFrm_PVO.DES1Exit(Sender: TObject);
begin
if (ValFloat(DES1.Text)<0) or (ValFloat(DES1.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   DES1.SetFocus;
   exit;
   end;
DES1.Text:=FormatFloat(mcasas, ValFloat(DES1.Text));

end;

procedure TFrm_PVO.DES2Exit(Sender: TObject);
begin
if (ValFloat(DES2.Text)<0) or (ValFloat(DES2.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   DES2.SetFocus;
   exit;
   end;
DES2.Text:=FormatFloat(mcasas, ValFloat(DES2.Text));

end;

procedure TFrm_PVO.DESCFExit(Sender: TObject);
begin
if (ValFloat(DESCF.Text)<0) or (ValFloat(DESCF.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   DESCF.SetFocus;
   exit;
   end;
DESCF.Text:=FormatFloat(mcasas, ValFloat(DESCF.Text));

end;

procedure TFrm_PVO.DIASDESCFKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_PVO.DIASDESCFExit(Sender: TObject);
begin
DIASDESCF.Text:=FloatToStr(valfloat(DIASDESCF.Text));
end;

procedure TFrm_PVO.BBOKClick(Sender: TObject);
begin
if Tb_Po99_nov.Locate('POPRAZO','0'+Trim(PRAZO.Text),[]) then
   begin
   fmensagem('Este prazo ja existente!',0,['0'],0);
   PRAZO.SetFocus;
   exit;
   end;
Tb_Po99_nov.Append;
Tb_Po99_novPOPRAZO.Value:=ValFloat(PRAZO.Text);
Tb_Po99_nov.Post;
PRAZO.SetFocus;
PRAZO.Text:='';

end;

procedure TFrm_PVO.BitBtn2Click(Sender: TObject);
begin
Tb_Po99_nov.Delete;

end;

procedure TFrm_PVO.COM03Exit(Sender: TObject);
begin
if (ValFloat(COM03.Text)<0) or (ValFloat(COM03.Text)>99) then
   begin
   fmensagem('% de comissão invalido!',0,['0'],0);
   COM03.SetFocus;
   exit;
   end;
COM03.Text:=FormatFloat(mcasas, ValFloat(COM03.Text));

end;

procedure TFrm_PVO.COM02Exit(Sender: TObject);
begin
if (ValFloat(COM02.Text)<0) or (ValFloat(COM02.Text)>99) then
   begin
   fmensagem('% de comissão invalido!',0,['0'],0);
   COM02.SetFocus;
   exit;
   end;
COM02.Text:=FormatFloat(mcasas, ValFloat(COM02.Text));

end;

procedure TFrm_PVO.DES3Exit(Sender: TObject);
begin
if (ValFloat(DES3.Text)<0) or (ValFloat(DES3.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   DES3.SetFocus;
   exit;
   end;
DES3.Text:=FormatFloat(mcasas, ValFloat(DES3.Text));

end;

{
Function TFrm_PVO.ImpNF(pvtabpv: String; pcodemp,plotseq,pchave: Real): Boolean;
begin
if pvtabpv='PO' then
   begin
   Tb_Po99_nov.Close;
   Tb_Po99_nov.SQL.Clear;
   Tb_Po99_nov.SQL.add('Select POCODEMP as POCODEMP, '
                          +' POPRAZO as POPRAZO from CADPO99 '
                          +' where '
                          +iif(DM1.Qr_Tid.Locate('TINOME','CADPV',[]),'',' POCODEMP=0'+FloatToStr(pcodemp)+' and ')
                          +' POLOTSEQ=0'+FloatTostr(plotseq)
                          +' and POCHAVE=0'+FloatToStr(pchave)
                          +' order by POPRAZO');
   Tb_Po99_nov.Open;
   end
else
   begin
   Tb_Po99_nov.Close;
   Tb_Po99_nov.SQL.Clear;
   Tb_Po99_nov.SQL.add('Select PV2CODEMP as POCODEMP, '
                  +' PV2PRAZO as POPRAZO from CADPV2 '
                  +' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPV',[]),'',' PV2CODEMP=0'+IntToStr(codemp)+' and ')
                  +' PV2CODTIP='+chr(39)+pvtabpv+chr(39)
                  +' and PV2CODPV=0'+FloatToStr(pchave)
                  +' order by PV2PRAZO');
   Tb_Po99_nov.Open;
   end;
if Tb_Po99_nov.eof then
   result:=False
else
   result:=True;
end;
}
procedure TFrm_PVO.CB_PVTPCClick(Sender: TObject);
begin
with CB_PVTPC do ItemIndex:=items.IndexOf(CB_PVTPC.Text);
if trim(CB_PVTPC.Text)='' then
   CB_PVTPC.ItemIndex:=0;
if (CB_PVTPC.ItemIndex=1) or (CB_PVTPC.ItemIndex=6) then
   begin
   COM.Enabled       :=True;
   COM02.Enabled     :=True;
   COM03.Enabled     :=True;
   end
else
   begin
   COM.Enabled       :=False;
   COM02.Enabled     :=False;
   COM03.Enabled     :=False;
   end;

if CB_PVTPC.ItemIndex=8 then
   begin
   PVCMS0.Enabled:=true;
   PVCMS1.Enabled:=true;
   PVCMS2.Enabled:=true;
   PVCMS3.Enabled:=true;
   PVCMS4.Enabled:=true;
   PVCMS5.Enabled:=true;
   PVCMS6.Enabled:=true;
   PVCMS7.Enabled:=true;
   end
else
   begin
   PVCMS0.Enabled:=False;
   PVCMS1.Enabled:=False;
   PVCMS2.Enabled:=False;
   PVCMS3.Enabled:=False;
   PVCMS4.Enabled:=False;
   PVCMS5.Enabled:=False;
   PVCMS6.Enabled:=False;
   PVCMS7.Enabled:=False;
   end;


end;

procedure TFrm_PVO.CB_PVTPCEnter(Sender: TObject);
begin
lbl_hint.Visible:=true;
end;

procedure TFrm_PVO.CB_PVTPCExit(Sender: TObject);
begin
lbl_hint.Visible:=false;
end;

procedure TFrm_PVO.CB_PVTPDCExit(Sender: TObject);
begin
with CB_PVTPDC do ItemIndex:=items.IndexOf(CB_PVTPDC.Text);
if trim(CB_PVTPDC.Text)='' then
   CB_PVTPDC.ItemIndex:=0;
if CB_PVTPDC.ItemIndex=0 then
   DES.Enabled:=true
else
   DES.Enabled:=false;
lbl_hint.Visible:=false;
end;

procedure TFrm_PVO.CB_PVTPDCEnter(Sender: TObject);
begin
lbl_hint.Visible:=true;
end;

procedure TFrm_PVO.CB_PVTPD1Exit(Sender: TObject);
begin
with CB_PVTPD1 do ItemIndex:=items.IndexOf(CB_PVTPD1.Text);
if trim(CB_PVTPD1.Text)='' then
   CB_PVTPD1.ItemIndex:=0;

if CB_PVTPD1.ItemIndex=0 then
   begin
   DES1.Enabled:=True;
   end
else
   begin
   DES1.Enabled:=False;
   end;
if CB_PVTPD1.ItemIndex=4 then
   begin
   PVD1S0.Enabled:=true;
   PVD1S1.Enabled:=true;
   PVD1S2.Enabled:=true;
   PVD1S3.Enabled:=true;
   PVD1S4.Enabled:=true;
   PVD1S5.Enabled:=true;
   PVD1S6.Enabled:=true;
   PVD1S7.Enabled:=true;
   end
else
   begin
   PVD1S0.Enabled:=False;
   PVD1S1.Enabled:=False;
   PVD1S2.Enabled:=False;
   PVD1S3.Enabled:=False;
   PVD1S4.Enabled:=False;
   PVD1S5.Enabled:=False;
   PVD1S6.Enabled:=False;
   PVD1S7.Enabled:=False;
   end;

lbl_hint.Visible:=false;

end;

procedure TFrm_PVO.CB_PVTPD2Exit(Sender: TObject);
begin
with CB_PVTPD2 do ItemIndex:=items.IndexOf(CB_PVTPD2.Text);
if trim(CB_PVTPD2.Text)='' then
   CB_PVTPD2.ItemIndex:=0;

if CB_PVTPD2.ItemIndex=0 then
   DES2.Enabled:=True
else
   DES2.Enabled:=False;
if CB_PVTPD2.ItemIndex=3 then
   begin
   PVD2S0.Enabled:=true;
   PVD2S1.Enabled:=true;
   PVD2S2.Enabled:=true;
   PVD2S3.Enabled:=true;
   PVD2S4.Enabled:=true;
   PVD2S5.Enabled:=true;
   PVD2S6.Enabled:=true;
   PVD2S7.Enabled:=true;
   end
else
   begin
   PVD2S0.Enabled:=false;
   PVD2S1.Enabled:=false;
   PVD2S2.Enabled:=false;
   PVD2S3.Enabled:=false;
   PVD2S4.Enabled:=false;
   PVD2S5.Enabled:=false;
   PVD2S6.Enabled:=false;
   PVD2S7.Enabled:=false;
   end;

lbl_hint.Visible:=false;

end;

procedure TFrm_PVO.CB_PVTPDESFExit(Sender: TObject);
begin
with CB_PVTPD3 do ItemIndex:=items.IndexOf(CB_PVTPD3.Text);
if trim(CB_PVTPD3.Text)='' then
   CB_PVTPD3.ItemIndex:=0;

if CB_PVTPD3.ItemIndex=0 then
   DES3.Enabled:=True
else
   DES3.Enabled:=False;
if CB_PVTPD3.ItemIndex=3 then
   begin
   PVD3S0.Enabled:=true;
   PVD3S1.Enabled:=true;
   PVD3S2.Enabled:=true;
   PVD3S3.Enabled:=true;
   PVD3S4.Enabled:=true;
   PVD3S5.Enabled:=true;
   PVD3S6.Enabled:=true;
   PVD3S7.Enabled:=true;
   end
else
   begin
   PVD3S0.Enabled:=false;
   PVD3S1.Enabled:=false;
   PVD3S2.Enabled:=false;
   PVD3S3.Enabled:=false;
   PVD3S4.Enabled:=false;
   PVD3S5.Enabled:=false;
   PVD3S6.Enabled:=false;
   PVD3S7.Enabled:=false;
   end;

lbl_hint.Visible:=false;

end;

procedure TFrm_PVO.PVDF01AExit(Sender: TObject);
begin
if (ValFloat(PVDF01A.Text)<0) or (ValFloat(PVDF01A.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVDF01A.SetFocus;
   exit;
   end;
PVDF01A.Text:=FormatFloat(mcasas, ValFloat(PVDF01A.Text));

end;

procedure TFrm_PVO.PVDF02AExit(Sender: TObject);
begin
if (ValFloat(PVDF02A.Text)<0) or (ValFloat(PVDF02A.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVDF02A.SetFocus;
   exit;
   end;
PVDF02A.Text:=FormatFloat(mcasas, ValFloat(PVDF02A.Text));

end;

procedure TFrm_PVO.PVDF03AExit(Sender: TObject);
begin
if (ValFloat(PVDF03A.Text)<0) or (ValFloat(PVDF03A.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVDF03A.SetFocus;
   exit;
   end;
PVDF03A.Text:=FormatFloat(mcasas, ValFloat(PVDF03A.Text));

end;

procedure TFrm_PVO.PVDF04AExit(Sender: TObject);
begin
if (ValFloat(PVDF04A.Text)<0) or (ValFloat(PVDF04A.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVDF04A.SetFocus;
   exit;
   end;
PVDF04A.Text:=FormatFloat(mcasas, ValFloat(PVDF04A.Text));

end;

procedure TFrm_PVO.PVDF01BExit(Sender: TObject);
begin
if (ValFloat(PVDF01B.Text)<0) or (ValFloat(PVDF01B.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVDF01B.SetFocus;
   exit;
   end;
PVDF01B.Text:=FormatFloat(mcasas, ValFloat(PVDF01B.Text));
if ValFloat(PVDF01A.Text)>ValFloat(PVDF01B.Text) then
   begin
   fmensagem('Este Desconto nao pode ser maior que o primeiro!',0,['0'],0);
   PVDF01A.SetFocus;
   end;

end;

procedure TFrm_PVO.PVDF02BExit(Sender: TObject);
begin
if (ValFloat(PVDF02B.Text)<0) or (ValFloat(PVDF02B.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVDF02B.SetFocus;
   exit;
   end;
PVDF02B.Text:=FormatFloat(mcasas, ValFloat(PVDF02B.Text));
if ValFloat(PVDF02A.Text)>ValFloat(PVDF02B.Text) then
   begin
   fmensagem('Este Desconto nao pode ser maior que o primeiro!',0,['0'],0);
   PVDF02A.SetFocus;
   end;

end;

procedure TFrm_PVO.PVDF03BExit(Sender: TObject);
begin
if (ValFloat(PVDF03B.Text)<0) or (ValFloat(PVDF03B.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVDF03B.SetFocus;
   exit;
   end;
PVDF03B.Text:=FormatFloat(mcasas, ValFloat(PVDF03B.Text));
if ValFloat(PVDF03A.Text)>ValFloat(PVDF03B.Text) then
   begin
   fmensagem('Este Desconto nao pode ser maior que o primeiro!',0,['0'],0);
   PVDF03A.SetFocus;
   end;

end;

procedure TFrm_PVO.PVDF04BExit(Sender: TObject);
begin
if (ValFloat(PVDF04B.Text)<0) or (ValFloat(PVDF04B.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVDF04B.SetFocus;
   exit;
   end;
PVDF04B.Text:=FormatFloat(mcasas, ValFloat(PVDF04B.Text));
if ValFloat(PVDF04A.Text)>ValFloat(PVDF04B.Text) then
   begin
   fmensagem('Este Desconto nao pode ser maior que o primeiro!',0,['0'],0);
   PVDF04A.SetFocus;
   end;

end;

procedure TFrm_PVO.PVDF01Exit(Sender: TObject);
begin
if (ValFloat(PVDF01.Text)<0) or (ValFloat(PVDF01.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVDF01.SetFocus;
   exit;
   end;
PVDF01.Text:=FormatFloat(mcasas, ValFloat(PVDF01.Text));

end;

procedure TFrm_PVO.PVDF02Exit(Sender: TObject);
begin
if (ValFloat(PVDF02.Text)<0) or (ValFloat(PVDF02.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVDF02.SetFocus;
   exit;
   end;
PVDF02.Text:=FormatFloat(mcasas, ValFloat(PVDF02.Text));

end;

procedure TFrm_PVO.PVDF03Exit(Sender: TObject);
begin
if (ValFloat(PVDF03.Text)<0) or (ValFloat(PVDF03.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVDF03.SetFocus;
   exit;
   end;
PVDF03.Text:=FormatFloat(mcasas, ValFloat(PVDF03.Text));

end;

procedure TFrm_PVO.PVDF04Exit(Sender: TObject);
begin
if (ValFloat(PVDF04.Text)<0) or (ValFloat(PVDF04.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVDF04.SetFocus;
   exit;
   end;
PVDF04.Text:=FormatFloat(mcasas, ValFloat(PVDF04.Text));

end;

procedure TFrm_PVO.PVD1S0Exit(Sender: TObject);
begin
if (ValFloat(PVD1S0.Text)<0) or (ValFloat(PVD1S0.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD1S0.SetFocus;
   exit;
   end;
PVD1S0.Text:=FormatFloat(mcasas, ValFloat(PVD1S0.Text));

end;

procedure TFrm_PVO.PVD1S1Exit(Sender: TObject);
begin
if (ValFloat(PVD1S1.Text)<0) or (ValFloat(PVD1S1.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD1S1.SetFocus;
   exit;
   end;
PVD1S1.Text:=FormatFloat(mcasas, ValFloat(PVD1S1.Text));

end;

procedure TFrm_PVO.PVD1S2Exit(Sender: TObject);
begin
if (ValFloat(PVD1S2.Text)<0) or (ValFloat(PVD1S2.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD1S2.SetFocus;
   exit;
   end;
PVD1S2.Text:=FormatFloat(mcasas, ValFloat(PVD1S2.Text));

end;

procedure TFrm_PVO.PVD1S3Exit(Sender: TObject);
begin
if (ValFloat(PVD1S3.Text)<0) or (ValFloat(PVD1S3.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD1S3.SetFocus;
   exit;
   end;
PVD1S3.Text:=FormatFloat(mcasas, ValFloat(PVD1S3.Text));

end;

procedure TFrm_PVO.PVD1S4Exit(Sender: TObject);
begin
if (ValFloat(PVD1S4.Text)<0) or (ValFloat(PVD1S4.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD1S4.SetFocus;
   exit;
   end;
PVD1S4.Text:=FormatFloat(mcasas, ValFloat(PVD1S4.Text));

end;

procedure TFrm_PVO.PVD1S5Exit(Sender: TObject);
begin
if (ValFloat(PVD1S5.Text)<0) or (ValFloat(PVD1S5.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD1S5.SetFocus;
   exit;
   end;
PVD1S5.Text:=FormatFloat(mcasas, ValFloat(PVD1S5.Text));

end;

procedure TFrm_PVO.PVD1S6Exit(Sender: TObject);
begin
if (ValFloat(PVD1S6.Text)<0) or (ValFloat(PVD1S6.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD1S6.SetFocus;
   exit;
   end;
PVD1S6.Text:=FormatFloat(mcasas, ValFloat(PVD1S6.Text));

end;

procedure TFrm_PVO.PVD1S7Exit(Sender: TObject);
begin
if (ValFloat(PVD1S7.Text)<0) or (ValFloat(PVD1S7.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD1S7.SetFocus;
   exit;
   end;
PVD1S7.Text:=FormatFloat(mcasas, ValFloat(PVD1S7.Text));

end;

procedure TFrm_PVO.PVD2S0Exit(Sender: TObject);
begin
if (ValFloat(PVD2S0.Text)<0) or (ValFloat(PVD2S0.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD2S0.SetFocus;
   exit;
   end;
PVD2S0.Text:=FormatFloat(mcasas, ValFloat(PVD2S0.Text));

end;

procedure TFrm_PVO.PVD2S1Exit(Sender: TObject);
begin
if (ValFloat(PVD2S1.Text)<0) or (ValFloat(PVD2S1.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD2S1.SetFocus;
   exit;
   end;
PVD2S1.Text:=FormatFloat(mcasas, ValFloat(PVD2S1.Text));

end;

procedure TFrm_PVO.PVD2S2Exit(Sender: TObject);
begin
if (ValFloat(PVD2S2.Text)<0) or (ValFloat(PVD2S2.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD2S2.SetFocus;
   exit;
   end;
PVD2S2.Text:=FormatFloat(mcasas, ValFloat(PVD2S2.Text));

end;

procedure TFrm_PVO.PVD2S3Exit(Sender: TObject);
begin
if (ValFloat(PVD2S3.Text)<0) or (ValFloat(PVD2S3.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD2S3.SetFocus;
   exit;
   end;
PVD2S3.Text:=FormatFloat(mcasas, ValFloat(PVD2S3.Text));

end;

procedure TFrm_PVO.PVD2S4Exit(Sender: TObject);
begin
if (ValFloat(PVD2S4.Text)<0) or (ValFloat(PVD2S4.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD2S4.SetFocus;
   exit;
   end;
PVD2S4.Text:=FormatFloat(mcasas, ValFloat(PVD2S4.Text));

end;

procedure TFrm_PVO.PVD2S5Exit(Sender: TObject);
begin
if (ValFloat(PVD2S5.Text)<0) or (ValFloat(PVD2S5.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD2S5.SetFocus;
   exit;
   end;
PVD2S5.Text:=FormatFloat(mcasas, ValFloat(PVD2S5.Text));

end;

procedure TFrm_PVO.PVD2S6Exit(Sender: TObject);
begin
if (ValFloat(PVD2S6.Text)<0) or (ValFloat(PVD2S6.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD2S6.SetFocus;
   exit;
   end;
PVD2S6.Text:=FormatFloat(mcasas, ValFloat(PVD2S6.Text));

end;

procedure TFrm_PVO.PVD2S7Exit(Sender: TObject);
begin
if (ValFloat(PVD2S7.Text)<0) or (ValFloat(PVD2S7.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD2S7.SetFocus;
   exit;
   end;
PVD2S7.Text:=FormatFloat(mcasas, ValFloat(PVD2S7.Text));

end;

procedure TFrm_PVO.PVD3S0Exit(Sender: TObject);
begin
if (ValFloat(PVD3S0.Text)<0) or (ValFloat(PVD3S0.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD3S0.SetFocus;
   exit;
   end;
PVD3S0.Text:=FormatFloat(mcasas, ValFloat(PVD3S0.Text));

end;

procedure TFrm_PVO.PVD3S1Exit(Sender: TObject);
begin
if (ValFloat(PVD3S1.Text)<0) or (ValFloat(PVD3S1.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD3S1.SetFocus;
   exit;
   end;
PVD3S1.Text:=FormatFloat(mcasas, ValFloat(PVD3S1.Text));

end;

procedure TFrm_PVO.PVD3S2Exit(Sender: TObject);
begin
if (ValFloat(PVD3S2.Text)<0) or (ValFloat(PVD3S2.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD3S2.SetFocus;
   exit;
   end;
PVD3S2.Text:=FormatFloat(mcasas, ValFloat(PVD3S2.Text));

end;

procedure TFrm_PVO.PVD3S3Exit(Sender: TObject);
begin
if (ValFloat(PVD3S3.Text)<0) or (ValFloat(PVD3S3.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD3S3.SetFocus;
   exit;
   end;
PVD3S3.Text:=FormatFloat(mcasas, ValFloat(PVD3S3.Text));

end;

procedure TFrm_PVO.PVD3S4Exit(Sender: TObject);
begin
if (ValFloat(PVD3S4.Text)<0) or (ValFloat(PVD3S4.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD3S4.SetFocus;
   exit;
   end;
PVD3S4.Text:=FormatFloat(mcasas, ValFloat(PVD3S4.Text));

end;

procedure TFrm_PVO.PVD3S5Exit(Sender: TObject);
begin
if (ValFloat(PVD3S5.Text)<0) or (ValFloat(PVD3S5.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD3S5.SetFocus;
   exit;
   end;
PVD3S5.Text:=FormatFloat(mcasas, ValFloat(PVD3S5.Text));

end;

procedure TFrm_PVO.PVD3S6Exit(Sender: TObject);
begin
if (ValFloat(PVD3S6.Text)<0) or (ValFloat(PVD3S6.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD3S6.SetFocus;
   exit;
   end;
PVD3S6.Text:=FormatFloat(mcasas, ValFloat(PVD3S6.Text));

end;

procedure TFrm_PVO.PVD3S7Exit(Sender: TObject);
begin
if (ValFloat(PVD3S7.Text)<0) or (ValFloat(PVD3S7.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVD3S7.SetFocus;
   exit;
   end;
PVD3S7.Text:=FormatFloat(mcasas, ValFloat(PVD3S7.Text));

end;

procedure TFrm_PVO.PVDFS0Exit(Sender: TObject);
begin
if (ValFloat(PVDFS0.Text)<0) or (ValFloat(PVDFS0.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVDFS0.SetFocus;
   exit;
   end;
PVDFS0.Text:=FormatFloat(mcasas, ValFloat(PVDFS0.Text));

end;

procedure TFrm_PVO.PVDFS1Exit(Sender: TObject);
begin
if (ValFloat(PVDFS1.Text)<0) or (ValFloat(PVDFS1.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVDFS1.SetFocus;
   exit;
   end;
PVDFS1.Text:=FormatFloat(mcasas, ValFloat(PVDFS1.Text));

end;

procedure TFrm_PVO.PVDFS2Exit(Sender: TObject);
begin
if (ValFloat(PVDFS2.Text)<0) or (ValFloat(PVDFS2.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVDFS2.SetFocus;
   exit;
   end;
PVDFS2.Text:=FormatFloat(mcasas, ValFloat(PVDFS2.Text));

end;

procedure TFrm_PVO.PVDFS3Exit(Sender: TObject);
begin
if (ValFloat(PVDFS3.Text)<0) or (ValFloat(PVDFS3.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVDFS3.SetFocus;
   exit;
   end;
PVDFS3.Text:=FormatFloat(mcasas, ValFloat(PVDFS3.Text));

end;

procedure TFrm_PVO.PVDFS4Exit(Sender: TObject);
begin
if (ValFloat(PVDFS4.Text)<0) or (ValFloat(PVDFS4.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVDFS4.SetFocus;
   exit;
   end;
PVDFS4.Text:=FormatFloat(mcasas, ValFloat(PVDFS4.Text));

end;

procedure TFrm_PVO.PVDFS5Exit(Sender: TObject);
begin
if (ValFloat(PVDFS5.Text)<0) or (ValFloat(PVDFS5.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVDFS5.SetFocus;
   exit;
   end;
PVDFS5.Text:=FormatFloat(mcasas, ValFloat(PVDFS5.Text));

end;

procedure TFrm_PVO.PVDFS6Exit(Sender: TObject);
begin
if (ValFloat(PVDFS6.Text)<0) or (ValFloat(PVDFS6.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVDFS6.SetFocus;
   exit;
   end;
PVDFS6.Text:=FormatFloat(mcasas, ValFloat(PVDFS6.Text));

end;

procedure TFrm_PVO.PVDFS7Exit(Sender: TObject);
begin
if (ValFloat(PVDFS7.Text)<0) or (ValFloat(PVDFS7.Text)>99) then
   begin
   fmensagem('% de desconto invalido!',0,['0'],0);
   PVDFS7.SetFocus;
   exit;
   end;
PVDFS7.Text:=FormatFloat(mcasas, ValFloat(PVDFS7.Text));

end;

procedure TFrm_PVO.PVCMS0Exit(Sender: TObject);
begin
if (ValFloat(PVCMS0.Text)<0) or (ValFloat(PVCMS0.Text)>99) then
   begin
   fmensagem('% de Comissao invalido!',0,['0'],0);
   PVCMS0.SetFocus;
   exit;
   end;
PVCMS0.Text:=FormatFloat(mcasas, ValFloat(PVCMS0.Text));

end;

procedure TFrm_PVO.PVCMS1Exit(Sender: TObject);
begin
if (ValFloat(PVCMS1.Text)<0) or (ValFloat(PVCMS1.Text)>99) then
   begin
   fmensagem('% de Comissao invalido!',0,['0'],0);
   PVCMS1.SetFocus;
   exit;
   end;
PVCMS1.Text:=FormatFloat(mcasas, ValFloat(PVCMS1.Text));

end;

procedure TFrm_PVO.PVCMS2Exit(Sender: TObject);
begin
if (ValFloat(PVCMS2.Text)<0) or (ValFloat(PVCMS2.Text)>99) then
   begin
   fmensagem('% de Comissao invalido!',0,['0'],0);
   PVCMS2.SetFocus;
   exit;
   end;
PVCMS2.Text:=FormatFloat(mcasas, ValFloat(PVCMS2.Text));

end;

procedure TFrm_PVO.PVCMS3Exit(Sender: TObject);
begin
if (ValFloat(PVCMS3.Text)<0) or (ValFloat(PVCMS3.Text)>99) then
   begin
   fmensagem('% de Comissao invalido!',0,['0'],0);
   PVCMS3.SetFocus;
   exit;
   end;
PVCMS3.Text:=FormatFloat(mcasas, ValFloat(PVCMS3.Text));

end;

procedure TFrm_PVO.PVCMS4Exit(Sender: TObject);
begin
if (ValFloat(PVCMS4.Text)<0) or (ValFloat(PVCMS4.Text)>99) then
   begin
   fmensagem('% de Comissao invalido!',0,['0'],0);
   PVCMS4.SetFocus;
   exit;
   end;
PVCMS4.Text:=FormatFloat(mcasas, ValFloat(PVCMS4.Text));

end;

procedure TFrm_PVO.PVCMS5Exit(Sender: TObject);
begin
if (ValFloat(PVCMS5.Text)<0) or (ValFloat(PVCMS5.Text)>99) then
   begin
   fmensagem('% de Comissao invalido!',0,['0'],0);
   PVCMS5.SetFocus;
   exit;
   end;
PVCMS5.Text:=FormatFloat(mcasas, ValFloat(PVCMS5.Text));

end;

procedure TFrm_PVO.PVCMS6Exit(Sender: TObject);
begin
if (ValFloat(PVCMS6.Text)<0) or (ValFloat(PVCMS6.Text)>99) then
   begin
   fmensagem('% de Comissao invalido!',0,['0'],0);
   PVCMS6.SetFocus;
   exit;
   end;
PVCMS6.Text:=FormatFloat(mcasas, ValFloat(PVCMS6.Text));

end;

procedure TFrm_PVO.PVCMS7Exit(Sender: TObject);
begin
if (ValFloat(PVCMS7.Text)<0) or (ValFloat(PVCMS7.Text)>99) then
   begin
   fmensagem('% de Comissao invalido!',0,['0'],0);
   PVCMS7.SetFocus;
   exit;
   end;
PVCMS7.Text:=FormatFloat(mcasas, ValFloat(PVCMS7.Text));

end;

procedure TFrm_PVO.PVCMV02S0Exit(Sender: TObject);
begin
if (ValFloat(PVCMV02S0.Text)<0) or (ValFloat(PVCMV02S0.Text)>99) then
   begin
   fmensagem('% de Comissao invalido!',0,['0'],0);
   PVCMV02S0.SetFocus;
   exit;
   end;
PVCMV02S0.Text:=FormatFloat(mcasas, ValFloat(PVCMV02S0.Text));

end;

procedure TFrm_PVO.PVCMV02S1Exit(Sender: TObject);
begin
if (ValFloat(PVCMV02S1.Text)<0) or (ValFloat(PVCMV02S1.Text)>99) then
   begin
   fmensagem('% de Comissao invalido!',0,['0'],0);
   PVCMV02S1.SetFocus;
   exit;
   end;
PVCMV02S1.Text:=FormatFloat(mcasas, ValFloat(PVCMV02S1.Text));

end;

procedure TFrm_PVO.PVCMV02S2Exit(Sender: TObject);
begin
if (ValFloat(PVCMV02S2.Text)<0) or (ValFloat(PVCMV02S2.Text)>99) then
   begin
   fmensagem('% de Comissao invalido!',0,['0'],0);
   PVCMV02S2.SetFocus;
   exit;
   end;
PVCMV02S2.Text:=FormatFloat(mcasas, ValFloat(PVCMV02S2.Text));

end;

procedure TFrm_PVO.PVCMV02S3Exit(Sender: TObject);
begin
if (ValFloat(PVCMV02S3.Text)<0) or (ValFloat(PVCMV02S3.Text)>99) then
   begin
   fmensagem('% de Comissao invalido!',0,['0'],0);
   PVCMV02S3.SetFocus;
   exit;
   end;
PVCMV02S3.Text:=FormatFloat(mcasas, ValFloat(PVCMV02S3.Text));

end;

procedure TFrm_PVO.PVCMV02S4Exit(Sender: TObject);
begin
if (ValFloat(PVCMV02S4.Text)<0) or (ValFloat(PVCMV02S4.Text)>99) then
   begin
   fmensagem('% de Comissao invalido!',0,['0'],0);
   PVCMV02S4.SetFocus;
   exit;
   end;
PVCMV02S4.Text:=FormatFloat(mcasas, ValFloat(PVCMV02S4.Text));

end;

procedure TFrm_PVO.PVCMV02S5Exit(Sender: TObject);
begin
if (ValFloat(PVCMV02S5.Text)<0) or (ValFloat(PVCMV02S5.Text)>99) then
   begin
   fmensagem('% de Comissao invalido!',0,['0'],0);
   PVCMV02S5.SetFocus;
   exit;
   end;
PVCMV02S5.Text:=FormatFloat(mcasas, ValFloat(PVCMV02S5.Text));

end;

procedure TFrm_PVO.PVCMV02S6Exit(Sender: TObject);
begin
if (ValFloat(PVCMV02S6.Text)<0) or (ValFloat(PVCMV02S6.Text)>99) then
   begin
   fmensagem('% de Comissao invalido!',0,['0'],0);
   PVCMV02S6.SetFocus;
   exit;
   end;
PVCMV02S6.Text:=FormatFloat(mcasas, ValFloat(PVCMV02S6.Text));

end;

procedure TFrm_PVO.PVCMV02S7Enter(Sender: TObject);
begin
if (ValFloat(PVCMV02S7.Text)<0) or (ValFloat(PVCMV02S7.Text)>99) then
   begin
   fmensagem('% de Comissao invalido!',0,['0'],0);
   PVCMV02S7.SetFocus;
   exit;
   end;
PVCMV02S7.Text:=FormatFloat(mcasas, ValFloat(PVCMV02S7.Text));

end;

procedure TFrm_PVO.PERCPPARCExit(Sender: TObject);
begin
if (valfloat(PERCPPARC.Text)<0) or (valfloat(PERCPPARC.Text)>99) then
   begin
   fMensagem('Percentual da Primeira Parcela invalido!',0,['0'],0);
   PERCPPARC.SetFocus;
   end;

end;

procedure TFrm_PVO.FormCreate(Sender: TObject);
begin
if DM1.Tb_PargerPPEDFPGTO.AsInteger>0 then
   begin
   PERCPPARC.Visible    :=true;
   lbl_PERCPPARC.Visible:=true;
   end
else
   begin
   PERCPPARC.Visible    :=false;
   lbl_PERCPPARC.Visible:=false;
   PERCPPARC.Text       :='';
   end;
end;

procedure TFrm_PVO.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if ValFloat(PERCPPARC.Text)<>0 then
   begin
   if Tb_Po99_nov.RecordCount<2 then
      PERCPPARC.Text:='';
   end;
end;
function TFrm_PVO.fCarregarDM4(ptipo: Integer): Boolean;
begin
DM4.Tb_Po99.Close;
DM4.Tb_Po99.Open;
Tb_Po99_nov.First;
While not Tb_Po99_nov.Eof do
   begin
   DM4.Tb_Po99.Append;
   DM4.Tb_Po99POCODEMP.AsFloat:=Tb_Po99_novPOCODEMP.AsFloat;
   DM4.Tb_Po99POPRAZO.AsFloat :=Tb_Po99_novPOPRAZO.AsFloat;
   DM4.Tb_Po99.Post;
   Tb_Po99_nov.Next;
   end;
result:=true;
end;

procedure TFrm_PVO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

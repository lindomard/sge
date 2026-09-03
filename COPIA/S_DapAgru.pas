unit S_DapAgru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Mask, Buttons,func,S_DM1,lerarq,S_For, ComCtrls,
  DB, DBTables,S_Bco,S_DM2, ExtCtrls;

type
  TFrm_DapAgru = class(TForm)
    STG1: TStringGrid;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    NUMDUPI: TEdit;
    Label3: TLabel;
    NUMDUPF: TEdit;
    Label2: TLabel;
    PARC: TEdit;
    Edit1: TEdit;
    Label4: TLabel;
    MDT1: TMaskEdit;
    Label5: TLabel;
    MDT2: TMaskEdit;
    Label6: TLabel;
    CODFOR: TEdit;
    NOMFOR: TEdit;
    bbAplicar: TBitBtn;
    bbSair: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label7: TLabel;
    NUMERO: TEdit;
    Label8: TLabel;
    DESD: TEdit;
    Label9: TLabel;
    CB_DUP: TComboBox;
    Label10: TLabel;
    CODFOR_DUP: TEdit;
    NOMFOR_DUP: TEdit;
    Label12: TLabel;
    CODBCO: TEdit;
    NOMBCO: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    TabSheet3: TTabSheet;
    Label18: TLabel;
    VALOR: TStaticText;
    Label26: TLabel;
    VALDES: TStaticText;
    Label41: TLabel;
    DTDESCF: TStaticText;
    Label43: TLabel;
    DTEMIS: TStaticText;
    DTVCTO: TStaticText;
    TabSheet4: TTabSheet;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    FC_DATAREF: TStaticText;
    FC_DATAP: TStaticText;
    FC_VALORP: TStaticText;
    FC_CODDEP: TStaticText;
    FC_NOMDEP: TStaticText;
    FC_CODCC: TStaticText;
    FC_NOMCC: TStaticText;
    FC_CODBCO: TStaticText;
    FC_NOMBCO: TStaticText;
    FC_TIPO: TStaticText;
    FC_NOME: TStaticText;
    FC_CODIGO: TStaticText;
    Label51: TLabel;
    FC_DOC: TStaticText;
    FC_DESCRICAO: TStaticText;
    Label52: TLabel;
    FC_NATDC: TStaticText;
    Label53: TLabel;
    Qr_Dap: TQuery;
    Label54: TLabel;
    bbAgrupar: TBitBtn;
    Qr_DapCACODEMP: TFloatField;
    Qr_DapCADESD: TStringField;
    Qr_DapCACODFOR: TFloatField;
    Qr_DapCADTEMIS: TDateTimeField;
    Qr_DapCAVALOR: TFloatField;
    Qr_DapCADUP: TFloatField;
    Qr_DapCADTVCTO: TDateTimeField;
    Qr_DapCASTATUS: TFloatField;
    Qr_DapCAVALDES: TFloatField;
    Qr_DapCADTDESC: TDateTimeField;
    Qr_DapCADESC: TFloatField;
    Qr_DapCADEVOL: TFloatField;
    Qr_DapCAJUROS: TFloatField;
    Qr_DapCABANCO: TFloatField;
    Qr_DapCALOTE: TFloatField;
    Qr_DapCACHAVEP: TFloatField;
    Qr_DapCADTBX: TDateTimeField;
    Qr_DapCADTPAG: TDateTimeField;
    Qr_DapCAVALPAG: TFloatField;
    Qr_DapCAUSRBAI: TFloatField;
    Qr_DapCACAIXA: TFloatField;
    Qr_DapCACODLDR: TFloatField;
    Qr_DapCACODUSR: TFloatField;
    Qr_DapCADTALT: TDateTimeField;
    Qr_DapCAHRALT: TStringField;
    Qr_DapCANUMERO: TFloatField;
    Qr_DapCALOTSEQ_CP: TFloatField;
    Qr_DapCANOSNUM: TStringField;
    Qr_DapCALOTSEQ_LB: TFloatField;
    Qr_DapCALOTSEQ_FC: TFloatField;
    Qr_DapCATEMBOL: TFloatField;
    Qr_DapCALEMAT: TFloatField;
    Qr_Dapnomfor: TStringField;
    Qr_Dapnombco: TStringField;
    RG_BOLETO: TRadioGroup;
    Label11: TLabel;
    DTINC: TStaticText;
    Qr_DapCACODCTA: TFloatField;
    Qr_DapCANOMCTA: TStringField;
    Qr_DapCACODCC: TStringField;
    Qr_DapCANOMCC: TStringField;
    Qr_DapCANATDC: TStringField;
    Qr_DapCACODDEP: TStringField;
    Qr_DapCANOMDEP: TStringField;
    Qr_DapCADESCMV: TStringField;
    Qr_DapCASEQ: TFloatField;
    Qr_DapCADTINC: TDateTimeField;
    snb_marcar: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label60: TLabel;
    QTDPARC: TEdit;
    Label61: TLabel;
    NUMPARC: TEdit;
    Qr_DapCAQTDPARC: TFloatField;
    Qr_DapCANUMPARC: TFloatField;
    OBS: TMemo;
    Qr_DapCAOBS: TMemoField;
    procedure bbSairClick(Sender: TObject);
    procedure NUMDUPIExit(Sender: TObject);
    procedure NUMDUPFExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORExit(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Qr_DapCalcFields(DataSet: TDataSet);
    procedure STG1DblClick(Sender: TObject);
    procedure STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure bbAgruparClick(Sender: TObject);
    procedure CODFOR_DUPKeyPress(Sender: TObject; var Key: Char);
    procedure CODFOR_DUPExit(Sender: TObject);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure NUMDUPIEnter(Sender: TObject);
    procedure OBSExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure snb_marcarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure QTDPARCExit(Sender: TObject);
    procedure NUMPARCExit(Sender: TObject);
  private
    { Private declarations }
    function fDupAgruZeraTxt(ptipo: Integer): boolean;
    function fCarregarGrid(ptipo: Integer): boolean;
    function fAtualizarTxt(ptipo,pCalc: Integer): boolean;
    function fContaMarcados: Integer;
    function fGravarDup: Boolean;
    function fGravarFC: Boolean;
    function fGravarAgru: Boolean;

  public
    { Public declarations }
  end;

var
  Frm_DapAgru: TFrm_DapAgru;
  mlotseqped: Real;
//  mchaveped: Real;
  mChaveFC: Real;
  nfAcum: String;

implementation

uses S_DM4, func_excecoes;

{$R *.dfm}

procedure TFrm_DapAgru.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_DapAgru.NUMDUPIExit(Sender: TObject);
begin
NUMDUPI.Text:=fdeixanum(NUMDUPI.Text);
end;

procedure TFrm_DapAgru.NUMDUPFExit(Sender: TObject);
begin
NUMDUPF.Text:=fdeixanum(NUMDUPF.Text);

end;

procedure TFrm_DapAgru.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_DapAgru',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_DapAgru.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum(CODFOR.Text);
if ValFloat(CODFOR.Text)=0 then
   CODFOR.Text:='';
if Trim(CODFOR.Text)='' then
   NOMFOR.Text:='Todos...'
else
   begin
   if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Trim(CODFOR.Text)) then
      NOMFOR.Text:=DM1.Query1.Fields[0].AsString
   else
      begin
      MessageDlg('Fornecedor não Cadastrado!',mtWarning,[mbOk],0);
      CODFOR.SetFocus;
      end;
   end;

end;

procedure TFrm_DapAgru.MDT1Exit(Sender: TObject);
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

procedure TFrm_DapAgru.MDT2Exit(Sender: TObject);
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

procedure TFrm_DapAgru.bbAplicarClick(Sender: TObject);
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
if (ValInt(NUMDUPI.Text)>0) and (ValInt(NUMDUPF.Text)>0) then
   begin
   if ValInt(NUMDUPI.Text)>ValInt(NUMDUPF.Text) then
      begin
      MessageDlg('Número inicial não pode ser maior que final, invalido!',mtWarning,[mbOk],0);
      NUMDUPI.SetFocus;
      exit;
      end;
   end;
Qr_Dap.Close;
Qr_Dap.SQL.clear;
Qr_Dap.SQL.Add('Select * from CADDAP ');
mcinst:=' where ';
if not DM1.Qr_tid.Locate('TINOME','CADDAP',[]) then
   begin
   Qr_Dap.SQL.add(mcinst+' CACODEMP=0'+IntToStr(codemp));
   mcinst:=' and ';
   end;
Qr_Dap.SQL.add(mcinst+' CASTATUS=0 ');
mcinst:=' and ';
if Trim(MDT1.Text)<>'/  /' then
   begin
   Qr_Dap.SQL.add(mcinst+' CADTEMIS>='+chr(39)+FormatDateTime(Fdt, StrtoDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   Qr_Dap.SQL.add(mcinst+' CADTEMIS<='+chr(39)+FormatDateTime(Fdt, StrtoDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(NUMDUPI.Text)<>'' then
   begin
   Qr_Dap.SQL.add(mcinst+' CANUMERO>=0'+Trim(NUMDUPI.Text));
   mcinst:=' and ';
   end;
if Trim(NUMDUPF.Text)<>'' then
   begin
   Qr_Dap.SQL.add(mcinst+' CANUMERO<=0'+Trim(NUMDUPF.Text));
   mcinst:=' and ';
   end;
if Trim(PARC.Text)<>'' then
   begin
   Qr_Dap.SQL.add(mcinst+' CADESD='+chr(39)+Trim(PARC.Text)+chr(39));
   mcinst:=' and ';
   end;
if Trim(CODFOR.Text)<>'' then
   begin
   Qr_Dap.SQL.add(mcinst+' CACODFOR=0'+Trim(CODFOR.Text));
   mcinst:=' and ';
   end;
Qr_Dap.Open;

fDupAgruZeraTxt(0);
fCarregarGrid(0);



end;

procedure TFrm_DapAgru.FormCreate(Sender: TObject);
begin
STG1.RowCount:=2;
STG1.Cells[00,00]:='';
STG1.Cells[01,00]:='Número';
STG1.Cells[02,00]:='Desd';
STG1.Cells[03,00]:='Dup';
STG1.Cells[04,00]:='Codigo';
STG1.Cells[05,00]:='Fornecedor';
STG1.Cells[06,00]:='Valor';
STG1.Cells[07,00]:='Dt.Emissão';
STG1.Cells[08,00]:='Dt.Vcto';
STG1.Cells[09,00]:='Lote Sq.Ped';
STG1.Cells[10,00]:='Chave Ped';
STG1.Cells[11,00]:='Ordem';
STG1.Cells[12,00]:='Lote Envio';
STG1.Cells[13,00]:='Num.Cupom';
STG1.Cells[14,00]:='Data CF';
STG1.Cells[15,00]:='Cód.Ecf';
STG1.Cells[16,00]:='NF.Acum';
STG1.Cells[17,00]:='Total NF';
STG1.Cells[18,00]:='Lote Caixa';
STG1.Cells[19,00]:='Sequencia';


STG1.ColWidths[00]:=10; // X
STG1.ColWidths[01]:=60; //'Número';
STG1.ColWidths[02]:=10; //'Desd';
STG1.ColWidths[03]:=10; //'Dup';
STG1.ColWidths[04]:=50; //'Codigo';
STG1.ColWidths[05]:=150; // 'Cliente';
STG1.ColWidths[06]:=80; //'Valor';
STG1.ColWidths[07]:=80; //'Dt.Emissão';
STG1.ColWidths[08]:=80; //'Dt.Vcto';
STG1.ColWidths[09]:=70; //'Lote Sq.Ped';
STG1.ColWidths[10]:=70; //'Chave Ped';
STG1.ColWidths[11]:=30; //'Ordem';
STG1.ColWidths[12]:=30; // 'Lote Sq.Ped';
STG1.ColWidths[13]:=50; // 'Num.Cupom';
STG1.ColWidths[14]:=80; // 'Data CF';
STG1.ColWidths[15]:=40; // 'Cód.Ecf';
STG1.ColWidths[16]:=200; // 'NF.Acum';
STG1.ColWidths[17]:=100; // 'Total NF';
STG1.ColWidths[18]:=80; // 'NF.Acum';
STG1.ColWidths[19]:=80; // 'Total NF';
if FormStyle=fsMDIChild then
   top:=0;

end;
function tFrm_DapAgru.fDupAgruZeraTxt(ptipo: Integer): boolean;
// ptipo=1 zera tudo 0-Parcial
begin
if ptipo=1 then
   begin
   NUMDUPI.Text:='';
   NUMDUPF.Text:='';
   PARC.Text   :='';
   MDT1.Text   :='/  /';
   MDT2.Text   :='/  /';
   CODFOR.Text :='';
   NOMFOR.Text :='Todos...';
   end;

NUMERO.Text         :='';

DESD.Text           :='';
CB_DUP.Text         :='';
CODFOR_DUP.Text     :='';
NOMFOR_DUP.Text     :='';
CODBCO.Text         :='';
NOMBCO.Text         :='';
NUMPARC.Text        :='';
QTDPARC.Text        :='';

OBS.Text            :='';
DTEMIS.Caption      :='/  /';
DTVCTO.Caption      :='/  /';
VALOR.Caption       :=FormatFloat(mcasas, 0);
VALDES.Caption      :=FormatFloat(mcasas, 0);
DTDESCF.Caption     :='/  /';
VALOR.Caption       :=FormatFloat(mcasas, 0);
FC_DATAREF.Caption  :='/  /';
FC_DATAP.Caption    :='/  /';
FC_VALORP.Caption   :=FormatFloat(mcasas, 0);
FC_NATDC.Caption    :='';
FC_CODDEP.Caption   :='';
FC_NOMDEP.Caption   :='';
FC_CODCC.Caption    :='';
FC_NOMCC.Caption    :='';
FC_CODBCO.Caption   :='';
FC_NOMBCO.Caption   :='';
FC_TIPO.Caption     :='';
FC_CODIGO.Caption   :='';
FC_NOME.Caption     :='';
FC_DOC.Caption      :='';
FC_DESCRICAO.Caption:='';
mlotseqped:=0;
mchaveped :=0;
mChaveFC  :=0;
STG1.RowCount:=2;
STG1.Rows[1].Clear;
result:=true;
end;

function TFrm_DapAgru.fCarregarGrid(ptipo: Integer): boolean;
var
x: Integer;
begin
STG1.RowCount:=2;
While not Qr_Dap.eof do
   begin
   x:=STG1.RowCount;
   STG1.RowCount:=x+1;
   STG1.Rows[x].Clear;
   STG1.Cells[00,x-1]:='';
   STG1.Cells[01,x-1]:=Qr_DapCANUMERO.AsString;
   STG1.Cells[02,x-1]:=Qr_DapCADESD.Value;
   STG1.Cells[03,x-1]:=Qr_DapCADUP.AsString;
   STG1.Cells[04,x-1]:=Qr_DapCACODFOR.AsString;
   STG1.Cells[05,x-1]:=Qr_Dapnomfor.Value;
   STG1.Cells[06,x-1]:=FormatFloat(mcasas, Qr_DapCAVALOR.Value);
   if (Qr_DapCADTEMIS.IsNull) or (Qr_DapCADTEMIS.Value<=pdatanula) then
      STG1.Cells[07,x-1]:='/  /'
   else
      STG1.Cells[07,x-1]:=FormatDatetime(fdt2, Qr_DapCADTEMIS.Value);
   if (Qr_DapCADTVCTO.IsNull) or (Qr_DapCADTVCTO.Value<=pdatanula) then
      STG1.Cells[08,x-1]:='/  /'
   else
      STG1.Cells[08,x-1]:=FormatDatetime(fdt2, Qr_DapCADTVCTO.Value);
   STG1.Cells[09,x-1]:=Qr_DapCALOTSEQ_CP.AsString;
   STG1.Cells[10,x-1]:=Qr_DapCACHAVEP.AsString;
   STG1.Cells[11,x-1]:='';
   STG1.Cells[12,x-1]:=Qr_DapCALEMAT.AsString;
   STG1.Cells[13,x-1]:='';
   STG1.Cells[14,x-1]:='/  /';
   STG1.Cells[18,x-1]:=Qr_DapCALOTSEQ_FC.AsString;
   STG1.Cells[19,x-1]:=Qr_DapCACODLDR.AsString;
   Qr_Dap.Next;
   end;
result:=true;
end;

procedure TFrm_DapAgru.Qr_DapCalcFields(DataSet: TDataSet);
begin
if  flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Qr_DapCACODFOR.AsString) then
    Qr_Dapnomfor.Value:=DM1.Query1.Fields[0].AsString
else
    Qr_Dapnomfor.Value:='';

end;

function TFrm_DapAgru.fAtualizarTxt(ptipo,pCalc: Integer): boolean;
// ptipo=0 Todos
//      =1 so Dup
//      =2 do Caixa
begin
if ptipo<>2 then
   begin
   if Trim(NUMERO.Text)='' then
      NUMERO.Text      :=Qr_DapCANUMERO.AsString;
   if Trim(DESD.Text)='' then
      DESD.Text        :=Qr_DapCADESD.Value;
   if Trim(CB_DUP.Text)='' then
      CB_DUP.Text      :=CB_DUP.Items[Qr_DapCADUP.AsInteger];
   if trim(NOMFOR_DUP.Text)='' then
      begin
      CODFOR_DUP.Text     :=Qr_DapCACODFOR.AsString;
      NOMFOR_DUP.Text     :=Qr_Dapnomfor.AsString;
      end;
   if trim(CODBCO.Text)='' then
      begin
      CODBCO.Text     :=Qr_DapCABANCO.AsString;
      NOMBCO.Text     :=Qr_Dapnombco.AsString;
      end;


   if valint(QTDPARC.Text)<1 then
      begin
      QTDPARC.Text        :=Qr_DapCAQTDPARC.AsString;
      end;
   if valint(NUMPARC.Text)<1 then
      begin
      NUMPARC.Text        :=Qr_DapCANUMPARC.AsString;
      end;

   if Trim(OBS.Text)='' then
      OBS.Text           :=Qr_DapCAOBS.Value;
   if Trim(DTEMIS.Caption)='/  /' then
      begin
      if (Qr_DapCADTEMIS.IsNull) or (Qr_DapCADTEMIS.Value<=pdatanula) then
         DTEMIS.Caption   :='/  /'
      else
         DTEMIS.Caption   :=FormatDatetime(fdt2,  Qr_DapCADTEMIS.Value);
      end;
   if Trim(DTVCTO.Caption)='/  /' then
      begin
      if (Qr_DapCADTVCTO.IsNull) or (Qr_DapCADTVCTO.Value<=pdatanula) then
         DTVCTO.Caption   :='/  /'
      else
         DTVCTO.Caption   :=FormatDatetime(fdt2,  Qr_DapCADTVCTO.Value);
      end;
   if Trim(DTDESCF.Caption)='/  /' then
      begin
      if (Qr_DapCADTDESC.IsNull) or (Qr_DapCADTDESC.Value<=pdatanula) then
         DTDESCF.Caption   :='/  /'
      else
         DTDESCF.Caption   :=FormatDatetime(fdt2,  Qr_DapCADTDESC.Value);
      end;
   if Trim(DTINC.Caption)='/  /' then
      begin
      if (Qr_DapCADTINC.IsNull) or (Qr_DapCADTINC.Value<=pdatanula) then
         DTINC.Caption   :='/  /'
      else
         DTINC.Caption   :=FormatDatetime(fdt2,  Qr_DapCADTINC.Value);
      end;


   if mchaveped=0 then
      begin
      mlotseqped:=Qr_DapCALOTSEQ_CP.Value;
      mchaveped :=Qr_DapCACHAVEP.Value;
      end;
   if pCalc=0 then
      begin
      VALOR.Caption       :=FormatFloat(mcasas, (ValFloat(VALOR.Caption)+Qr_DapCAVALOR.Value));
      VALDES.Caption      :=FormatFloat(mcasas, (ValFloat(VALDES.Caption)+Qr_DapCAVALDES.Value));
      end
   else
      begin
      VALOR.Caption       :=FormatFloat(mcasas, (ValFloat(VALOR.Caption)-Qr_DapCAVALOR.Value));
      VALDES.Caption      :=FormatFloat(mcasas, (ValFloat(VALDES.Caption)-Qr_DapCAVALDES.Value));
      end;
   end;
if ptipo<>1 then
   begin
   if Trim(FC_DATAREF.Caption)='/  /' then
      begin
      if (DM1.Tb_LDRDATAREF.IsNull) or (DM1.Tb_LDRDATAREF.Value<=pdatanula) then
         FC_DATAREF.Caption   :='/  /'
      else
         FC_DATAREF.Caption   :=FormatDatetime(fdt2,  DM1.Tb_LDRDATAREF.Value);
      end;

   if Trim(FC_DATAP.Caption)='/  /' then
      begin
      if (DM1.Tb_LDRDATADP.IsNull) or (DM1.Tb_LDRDATADP.Value<=pdatanula) then
         FC_DATAP.Caption   :='/  /'
      else
         FC_DATAP.Caption   :=FormatDatetime(fdt2,  DM1.Tb_LDRDATADP.Value);
      end;
   if mChaveFC=0 then
      mChaveFC:=DM1.Tb_LDRCODLDR.Value;
   if pCalc=0 then
      FC_VALORP.Caption        :=FormatFloat(mcasas, (ValFloat(FC_VALORP.Caption)+DM1.Tb_LDRVALORP.Value))
   else
      FC_VALORP.Caption        :=FormatFloat(mcasas, (ValFloat(FC_VALORP.Caption)-DM1.Tb_LDRVALORP.Value));
   if trim(FC_NATDC.Caption)='' then
      FC_NATDC.Caption      :=DM1.Tb_LDRNATDC.Value;
   if Trim(FC_NOMDEP.Caption)='' then
      begin
      FC_CODDEP.Caption      :=DM1.Tb_LDRCODDEP.AsString;
      FC_NOMDEP.Caption      :=DM1.Tb_LDRNOMDEP.Value;
      end;
   if Trim(FC_NOMCC.Caption)='' then
      begin
      FC_CODCC.Caption       :=DM1.Tb_LDRCODCC.Value;
      FC_NOMCC.Caption       :=DM1.Tb_LDRNOMCCU.Value;
      end;
   if Trim(FC_NOMBCO.Caption)='' then
      begin
      FC_CODBCO.Caption       :=DM1.Tb_LDRCODBCO.AsString;
      FC_NOMBCO.Caption       :=DM1.Tb_LDRNOMBCO.Value;
      end;
   if Trim(FC_NOME.Caption)='' then
      begin
      FC_TIPO.Caption         :=DM1.Tb_LDRTIPO.Value;
      FC_CODIGO.Caption       :=DM1.Tb_LDRCODIGO.AsString;
      FC_NOME.Caption         :=DM1.Tb_LDRNOME.Value;
      end;
   if trim(FC_DOC.Caption)='' then
      FC_DOC.Caption          :=DM1.Tb_LDRNUMDOC.Value;
   if Trim(FC_DESCRICAO.Caption)='' then
      FC_DESCRICAO.Caption    :=DM1.Tb_LDRDESCMV.Value;
   end;
result:=true;

end;

procedure TFrm_DapAgru.STG1DblClick(Sender: TObject);
var
mexiste: Boolean;
mlin: Integer;
begin
mlin:=STG1.Row;
if mlin<1 then
   exit;
if STG1.Cells[0,mlin]='X' then
   STG1.Cells[0,mlin]:=' '
else
   STG1.Cells[0,mlin]:='X';
mexiste:=false;
if fContaMarcados>0 then
   mexiste:=true;

if mexiste then
   begin
   if not Qr_Dap.Locate('CACODFOR;CANUMERO;CADESD;CADUP;CADTEMIS',
       vararrayof([valfloat(STG1.Cells[04,mlin]),valfloat(STG1.Cells[01,mlin]),
                STG1.Cells[02,mlin],
                valfloat(STG1.Cells[03,mlin]),
                StrtoDate(STG1.Cells[07,mlin])]),[]) then
      begin
      MessageDlg('Erro ao Localizar a Duplicata: '+STG1.Cells[01,mlin],mtWarning,[mbOk],0);
      exit;
      end;
   end
else
   begin
   fDupAgruZeraTxt(0);
   exit;
   end;

if flcadldr(0,0,valint(STG1.Cells[18,mlin]),trim(STG1.Cells[19,mlin])) then
   begin
   if STG1.Cells[0,mlin]='X' then
      fAtualizarTxt(0,0)
   else
      fAtualizarTxt(0,1);
   end
else
   begin
   if STG1.Cells[0,mlin]='X' then
      fAtualizarTxt(1,0)
   else
      fAtualizarTxt(1,1);
   end;


end;

procedure TFrm_DapAgru.STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
begin
if ((aCol=0) or (Acol=4) or (Acol=6) or (Acol=9)
   or (Acol=10) or (Acol=11) or (Acol=12) or (Acol=13) or (Acol=15)  or (Acol=17) or (Acol=18) or (Acol=19) ) then
   begin

//Pega o texto da célula
  Texto := STG1.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG1.Canvas.TextWidth(Texto);
  AlturaTexto := STG1.Canvas.TextHeight(Texto);

// Direita
    X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG1.Canvas.TextRect(Rect, X, Y, Texto);
  end;


end;

function TFrm_DapAgru.fContaMarcados: Integer;
var
mqtd: Integer;
x: Integer;
begin
mqtd:=0;
for x:=0 to STG1.RowCount do
   begin
   if STG1.Cells[00,x]='X' then
      mqtd:=mqtd+1;
   end;
result:=mqtd;
end;


procedure TFrm_DapAgru.bbAgruparClick(Sender: TObject);
var
mchavefc: Real;
begin
if fContaMarcados<2 then
   begin
   MessageDlg('Pelo menos duas duplicatas tem que ser selecionada!',mtWarning,[mbOk],0);
   exit;
   end;
fGravarAgru;

fGravarDup;
if ValFloat(FC_VALORP.Caption)<>0 then
   fGravarFC;
fDupAgruZeraTxt(1);


end;

procedure TFrm_DapAgru.CODFOR_DUPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR_DUP.Text:=fChamaFor(0,'frm_DapAgr',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_DapAgru.CODFOR_DUPExit(Sender: TObject);
begin
CODFOR_DUP.Text:=fdeixanum(CODFOR_DUP.Text);
if Trim(CODFOR_DUP.Text)='' then
   NOMFOR_DUP.Text:='Todos...'
else
   begin
   if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Trim(CODFOR_DUP .Text)) then
      NOMFOR_DUP.Text:=DM1.Query1.Fields[0].AsString
   else
      begin
      MessageDlg('Fornecedor não Cadastrado!',mtWarning,[mbOk],0);
      CODFOR_DUP.SetFocus;
      end;
   end;


end;

procedure TFrm_DapAgru.CODBCOExit(Sender: TObject);
begin
if ValFloat(CODBCO.Text)=0 then
   CODBCO.Text:='';
if (trim(CODBCO.Text)='') then
   begin
   NOMBCO.Text:='Carteira';
   exit;
   end;
if not flcadbco(1,0,0,CODBCO.Text) then
   begin
   MessageDlg('Banco nao Cadastrado!',mtWarning,[mbOk],0);
   CODBCO.SetFocus;
   end
else
   NOMBCO.Text:=DM1.Tb_BcoBCBANCO.Value;

end;

procedure TFrm_DapAgru.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_DapAgru',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

function TFrm_DapAgru.fGravarDup: Boolean;
begin
if not DM1.Tb_CP.Active then
   begin
   flcaddap(6,codemp,0,Trim(NUMERO.Text),Trim(DESD.Text),
       trim(CODFOR_DUP.Text),FormatDateTime(fdt2,StrtoDate(DTEMIS.Caption)),'0','');
   end;

DM1.Tb_CP.Append;

DM1.Tb_CPCACODEMP.Value:=codemp;
DM1.Tb_CPCANUMERO.Value:=fsonumero(NUMERO.Text);
DM1.Tb_CPCADESD.Value  :=Trim(DESD.Text);
DM1.Tb_CPCADUP.Value   :=CB_DUP.ItemIndex;
DM1.Tb_CPCACODFOR.Value:=fsonumero(CODFOR_DUP.Text);
DM1.Tb_CPCAVALOR.Value :=ValFloat(VALOR.Caption);
if Trim(DTEMIS.Caption)='/  /' then
   DM1.Tb_CPCADTEMIS.Value:=pdatanula
else
   DM1.Tb_CPCADTEMIS.Value := StrtoDate(DTEMIS.Caption);
if Trim(DTVCTO.Caption)='/  /' then
   DM1.Tb_CPCADTVCTO.Value := pdatanula
else
   DM1.Tb_CPCADTVCTO.Value := StrtoDate(DTVCTO.Caption);
DM1.Tb_CPCADTPAG.Value     := pdatanula;
DM1.Tb_CPCADTBX.Value      := pdatanula;
DM1.Tb_CPCACHAVEP.Value    := mchaveped;
DM1.Tb_CPCAVALPAG.Value    := 0;
DM1.Tb_CPCASTATUS.Value    := 0;
DM1.Tb_CPCAOBS.Value       := OBS.Text;
DM1.Tb_CPCABANCO.Value     := fsonumero(CODBCO.Text);
DM1.Tb_CPCALOTE.Value      :=0;
DM1.Tb_CPCAVALDES.Value    := ValFloat(VALDES.Caption);
if Trim(DTDESCF.Caption)='/  /' then
   DM1.Tb_CPCADTDESC.Value :=pdatanula
else
   DM1.Tb_CPCADTDESC.Value :=StrToDate(DTDESCF.Caption);
if Trim(DTINC.Caption)='/  /' then
   DM1.Tb_CPCADTINC.Value :=now
else
   DM1.Tb_CPCADTINC.Value :=StrToDate(DTINC.Caption);
DM1.Tb_CPCACODUSR.Value    :=codusr;


if ValInt(QTDPARC.Text)<1 then
   DM1.Tb_CPCAQTDPARC.AsFloat   := 1
else
   DM1.Tb_CPCAQTDPARC.AsFloat   :=fsonumero(QTDPARC.Text);

if ValInt(NUMPARC.Text)<1 then
   DM1.Tb_CPCANUMPARC.AsFloat   := 1
else
   DM1.Tb_CPCANUMPARC.AsFloat   :=fsonumero(NUMPARC.Text);

DM1.Tb_CPCAUSRBAI.Value    :=0;
DM1.Tb_CPCACODLDR.Value    :=mChaveFC;
DM1.Tb_CPCALOTSEQ_FC.Value :=ls_codldr;
DM1.Tb_CPCALOTSEQ_CP.Value :=mlotseqped;
DM1.Tb_CPCALOTSEQ_LB.Value :=ls_lotbcp;
DM1.Tb_CPCAJUROS.Value     :=0;
DM1.Tb_CPCATEMBOL.Value    :=RG_BOLETO.ItemIndex;
DM1.Tb_CP.Post;

result:=true;
end;
function TFrm_DapAgru.fGravarFC: Boolean;
begin
DM4.Qr_IncLDR.Close;
DM4.Qr_IncLDR.ParambyName('CODEMP').AsFloat     := codemp;
if (Trim(FC_DATAP.Caption)='') or (Trim(FC_DATAP.Caption)='/  /') then
   DM4.Qr_IncLDR.ParambyName('DATADP').AsDateTime  := pdatanula
else
   DM4.Qr_IncLDR.ParambyName('DATADP').AsDateTime  := StrtoDate(FC_DATAP.Caption);
DM4.Qr_IncLDR.ParambyName('CODLDR').AsFloat     := mChaveFC;
DM4.Qr_IncLDR.ParambyName('DATAREAL').AsDateTime:= pdatanula;
if (Trim(FC_DATAREF.Caption)='') or (Trim(FC_DATAREF.Caption)='/  /') then
   DM4.Qr_IncLDR.ParambyName('DATAREF').AsDateTime  := pdatanula
else
   DM4.Qr_IncLDR.ParambyName('DATAREF').AsDateTime  := StrtoDate(FC_DATAREF.Caption);
DM4.Qr_IncLDR.ParambyName('VALORP').AsFloat     := ValFloat(FC_VALORP.Caption);
DM4.Qr_IncLDR.ParambyName('VALORR').AsFloat     := 0;
DM4.Qr_IncLDR.ParambyName('CODBCO').AsFloat     := fsonumero(FC_CODBCO.Caption);
DM4.Qr_IncLDR.ParambyName('CODCC').AsString     := trim(FC_CODCC.Caption);
DM4.Qr_IncLDR.ParambyName('CODDEP').AsString    := trim(FC_CODDEP.Caption);
DM4.Qr_IncLDR.ParambyName('NATDC').AsString     := Trim(FC_NATDC.Caption);
DM4.Qr_IncLDR.ParambyName('DESCMV').AsString    := trim(FC_DESCRICAO.Caption);
DM4.Qr_IncLDR.ParambyName('NUMDOC').AsString    := Trim(FC_DOC.Caption);
DM4.Qr_IncLDR.ParambyName('NUMDOC2').AsString   := ' ';
DM4.Qr_IncLDR.ParambyName('STATUS').AsFloat     := 0;
DM4.Qr_IncLDR.ParambyName('ORIGEM').AsFloat     := 0;
DM4.Qr_IncLDR.ParambyName('LOCDEP').AsFloat     := 0;
DM4.Qr_IncLDR.ParambyName('TIPO').AsString      := trim(FC_TIPO.Caption);
DM4.Qr_IncLDR.ParambyName('CODIGO').AsFloat     := fsonumero(FC_CODIGO.Caption);
DM4.Qr_IncLDR.ParambyName('USRALT').AsFloat     := 0;
DM4.Qr_IncLDR.ParambyName('DTALT').AsDateTime      := pdatanula;
DM4.Qr_IncLDR.ParambyName('HRALT').AsString     := ' ';
DM4.Qr_IncLDR.ParambyName('COMPENS').AsFloat    := 1;
//DM4.Qr_IncLDR.ParambyName('COMPENS').AsFloat    := 0;
DM4.Qr_IncLDR.ParambyName('DTCOMP').AsDateTime  := pdatasis;
DM4.Qr_IncLDR.ParambyName('DTHREXC').AsDateTime := pdatanula;
DM4.Qr_IncLDR.ParambyName('NOMDEP').AsString    := trim(FC_NOMDEP.Caption);
DM4.Qr_IncLDR.ParambyName('NOMBCO').AsString    := trim(FC_NOMBCO.Caption);
DM4.Qr_IncLDR.ParambyName('NOMCCU').AsString    := trim(FC_NOMCC.Caption);
DM4.Qr_IncLDR.ParambyName('NOME').AsString      := trim(FC_NOME.Caption);
DM4.Qr_IncLDR.ParambyName('LOTSEQ').AsFloat     := ls_codldr;
DM4.Qr_IncLDR.ParambyName('LOTMOV').AsFloat     := lotmov;
DM4.Qr_IncLDR.ParambyName('DATLAN').AsDateTime  := pdatasis;
DM4.Qr_IncLDR.ParambyName('LEMAT').AsFloat      := 0;
DM4.Qr_IncLDR.ParambyName('FC_OBSFIN').AsString := ' ';
DM4.Qr_IncLDR.ParambyName('CODUSR_CX').AsFloat   := codusr;
Try
   DM4.Qr_IncLDR.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(08,1385,'frm_DupAgru','CADLDR');
   end;
result:=true;
end;

function TFrm_DapAgru.fGravarAgru: Boolean;
var
x: Integer;
mcomp: String;
begin
nfAcum:='';
DM1.Query2.Close;
DM1.Query2.SQL.clear;
DM1.Query2.Params.CreateParam(FtString,'CODEMP',ptInput);
DM1.Query2.Params.CreateParam(FtString,'CODFOR',ptInput);
DM1.Query2.Params.CreateParam(FtString,'NUMERO',ptInput);
DM1.Query2.Params.CreateParam(FtString,'DESD',ptInput);
DM1.Query2.Params.CreateParam(FtString,'DUP',ptInput);
DM1.Query2.Params.CreateParam(FtString,'DTEMIS',ptInput);
DM1.Query2.Params.CreateParam(FtString,'VALOR',ptInput);
DM1.Query2.Params.CreateParam(FtString,'LOTSEQ',ptInput);
DM1.Query2.Params.CreateParam(FtString,'CHAVE',ptInput);
DM1.Query2.Params.CreateParam(FtString,'LEMAT',ptInput);
DM1.Query2.Sql.Add('Insert into DAPAGRU ('
                  +' DACODEMP '
                  +',DACODFOR '
                  +',DANUMERO '
                  +',DADESD '
                  +',DADUP '
                  +',DADTEMIS '
                  +',DAVALOR '
                  +',DALOTSEQ '
                  +',DACHAVE '
                  +',DALEMAT ) values ('
                  +' :CODEMP '
                  +',:CODFOR '
                  +',:NUMERO '
                  +',:DESD '
                  +',:DUP '
                  +',:DTEMIS '
                  +',:VALOR '
                  +',:LOTSEQ '
                  +',:CHAVE '
                  +',:LEMAT )');
for x:=1 to STG1.RowCount do
   begin
   if STG1.Cells[00,x]<>'X' then
      continue;
   DM1.Query2.ParamByName('CODEMP').AsFloat:=codemp;
   DM1.Query2.ParamByName('CODFOR').AsFloat:=fsonumero(STG1.Cells[04,x]);
   DM1.Query2.ParamByName('NUMERO').AsFloat:=fsonumero(STG1.Cells[01,x]);
   DM1.Query2.ParamByName('DESD').AsString :=Trim(STG1.Cells[02,x]);
   DM1.Query2.ParamByName('DUP').AsFloat   :=fsonumero(STG1.Cells[03,x]);
   if (Trim(STG1.Cells[07,x])='')  or (Trim(STG1.Cells[07,x])='/  /') then
      DM1.Query2.ParamByName('DTEMIS').AsDateTime:=pdatanula
   else
      DM1.Query2.ParamByName('DTEMIS').AsDateTime:=StrtoDate(STG1.Cells[07,x]);
   DM1.Query2.ParamByName('VALOR').AsFloat       :=fsonumero(STG1.Cells[06,x]);
   DM1.Query2.ParamByName('LOTSEQ').AsFloat      :=fsonumero(STG1.Cells[09,x]);
   DM1.Query2.ParamByName('CHAVE').AsFloat       :=fsonumero(STG1.Cells[10,x]);
   DM1.Query2.ParamByName('LEMAT').AsFloat       :=fsonumero(STG1.Cells[12,x]);
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      MessageDlg('Erro ao Incluir o DUPAGRU: 1417',mtError,[mbOk],0);
      end;
   nfAcum:=nfAcum+mcomp+Trim(STG1.Cells[16,x]);
   mcomp:='/';
   DM1.Query1.Close;
   DM1.query1.SQL.Clear;
   DM1.query1.SQL.add('Delete from CADDAP where '
                     +iif(DM1.Qr_tid.Locate('TINOME','CADDAP',[]),'',' CACODEMP=0'+IntToStr(codemp)+' and ')
                     +' CACODFOR=0'+fdeixanum(STG1.Cells[04,x])
                     +' and CANUMERO=0'+fdeixanum(STG1.Cells[01,x])
                     +' and CADESD='+chr(39)+trim(STG1.Cells[02,x])+chr(39)
                     +' and CADUP=0'+fdeixanum(STG1.Cells[03,x])
                     +' and CADTEMIS='+chr(39)+FormatDatetime(fdt, StrtoDate(STG1.Cells[07,x]))+chr(39));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      MessageDlg('Erro ao Excluir Duplicata: 1434',mtError,[mbOk],0);
      end;
   DM1.Query1.Close;
   DM1.query1.SQL.Clear;
   DM1.query1.SQL.add('Delete from CADLDR where '
                     +iif(DM1.Qr_tid.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntToStr(codemp)+' and ')
                     +' LOTSEQ=0'+fdeixanum(STG1.Cells[18,x])
                     +' and CODLDR=0'+fdeixanum(STG1.Cells[19,x]));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      MessageDlg('Erro ao Excluir Duplicata: 1445',mtError,[mbOk],0);
      end;
   end;
result:=true;
end;

procedure TFrm_DapAgru.NUMDUPIEnter(Sender: TObject);
begin
if STG1.RowCount>2 then
   fDupAgruZeraTxt(1);

end;

procedure TFrm_DapAgru.OBSExit(Sender: TObject);
begin
if Length(OBS.Text)>40 then
   OBS.Text:=copy(OBS.Text,1,40);
end;

procedure TFrm_DapAgru.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_DapAgru.snb_marcarClick(Sender: TObject);
var
x: Integer;
begin
fDupAgruZeraTxt(0);
bbAplicarClick(self);

for x:=1 to STG1.RowCount-1 do
   begin
   if fsonumero(STG1.Cells[01,x])=0 then
      continue;
   STG1.Cells[0,x]:='X';

   if not Qr_Dap.Locate('CACODFOR;CANUMERO;CADESD;CADUP;CADTEMIS',
       vararrayof([valfloat(STG1.Cells[04,x]),valfloat(STG1.Cells[01,x]),
                STG1.Cells[02,x],
                valfloat(STG1.Cells[03,x]),
                StrtoDate(STG1.Cells[07,x])]),[]) then
      begin
      MessageDlg('Erro ao Localizar a Duplicata: '+STG1.Cells[01,x],mtWarning,[mbOk],0);
      exit;
      end;
   if flcadldr(0,0,valint(STG1.Cells[18,x]),trim(STG1.Cells[19,x])) then
      begin
      if STG1.Cells[0,x]='X' then
         fAtualizarTxt(0,0)
      else
         fAtualizarTxt(0,1);
      end
   else
      begin
      if STG1.Cells[0,x]='X' then
         fAtualizarTxt(1,0)
      else
         fAtualizarTxt(1,1);
      end;
   end;

end;

procedure TFrm_DapAgru.SpeedButton1Click(Sender: TObject);
var
x: Integer;
begin
for x:=1 to STG1.RowCount-1 do
   begin
   STG1.Cells[0,x]:=' ';
   end;
fDupAgruZeraTxt(0);
bbAplicarClick(self);
end;


procedure TFrm_DapAgru.QTDPARCExit(Sender: TObject);
begin
QTDPARC.Text:=fdeixanum(QTDPARC.Text);
if ValInt(QTDPARC.Text)<1 then
   QTDPARC.Text:='1'
else if ValInt(QTDPARC.Text)>100 then
   QTDPARC.Text:='1';

end;

procedure TFrm_DapAgru.NUMPARCExit(Sender: TObject);
begin
NUMPARC.Text:=fdeixanum(NUMPARC.Text);
if ValInt(NUMPARC.Text)<1 then
   NUMPARC.Text:='1'
else if ValInt(NUMPARC.Text)>100 then
   NUMPARC.Text:='1';

end;

end.

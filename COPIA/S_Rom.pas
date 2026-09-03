unit S_Rom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons,S_DM1,S_DM4,func,lerarq,S_PedCli,
  Grids, DBGrids, ComCtrls, Mask,S_Tra,S_Usr, DB,S_Pro, DBTables,S_CabRom
  ,s_lerarq_geral;

type
  TFrm_Rom = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CHAVE: TEdit;
    NOMCLI: TEdit;
    bb_Pesquisar: TBitBtn;
    GroupBox1: TGroupBox;
    bbSair: TBitBtn;
    Label2: TLabel;
    POBS01: TEdit;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CHAVEROM: TEdit;
    MDATA: TMaskEdit;
    MOBS01: TEdit;
    MOBS02: TEdit;
    MOBS03: TEdit;
    GroupBox5: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    BBINCLUIR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    BBIMPRIMIR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    Label33: TLabel;
    CODTRA: TEdit;
    NOMTRA: TEdit;
    RGFRETEPC: TRadioGroup;
    PESOL: TEdit;
    Label39: TLabel;
    PESOB: TEdit;
    Label38: TLabel;
    ESPECIE: TEdit;
    UFPV: TEdit;
    Label35: TLabel;
    Label37: TLabel;
    QTDVOL: TEdit;
    PLACAV: TEdit;
    Label34: TLabel;
    Label36: TLabel;
    Label70: TLabel;
    CODENT: TEdit;
    Label32: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    CODEMB: TEdit;
    CODCON: TEdit;
    CODSEP: TEdit;
    CODDIG: TEdit;
    NOMENT: TEdit;
    NOMDIG: TEdit;
    NOMSEP: TEdit;
    NOMCON: TEdit;
    NOMEMB: TEdit;
    DATEMB: TMaskEdit;
    DATCON: TMaskEdit;
    DATSEP: TMaskEdit;
    DATDIG: TMaskEdit;
    DATENT: TMaskEdit;
    HORENT: TEdit;
    HORDIG: TEdit;
    HORSEP: TEdit;
    HORCON: TEdit;
    HOREMB: TEdit;
    GroupBox6: TGroupBox;
    STG1: TStringGrid;
    CODPRO: TEdit;
    Label8: TLabel;
    Label16: TLabel;
    NOMPRO: TEdit;
    Label61: TLabel;
    UND: TEdit;
    PCOUNI: TEdit;
    Label17: TLabel;
    QTD: TEdit;
    Label24: TLabel;
    Label23: TLabel;
    TOTALI: TEdit;
    BitBtn6: TBitBtn;
    ITEM_CANCELAR: TBitBtn;
    ITEM_EDITAR: TBitBtn;
    ITEM_GRAVAR: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    TOTAL: TStaticText;
    MTOTUND: TStaticText;
    MTOTITEM: TStaticText;
    Src_RM01: TDataSource;
    CB_ETIVOL: TCheckBox;
    CB_CONF: TCheckBox;
    Qr_RM1: TQuery;
    Qr_RM2: TQuery;
    Qr_RM2R2_CODEMP: TFloatField;
    Qr_RM2R2_CHAVE: TFloatField;
    Qr_RM2R2_CODIGO: TFloatField;
    Qr_RM2R2_ITEM: TFloatField;
    Qr_RM2R2_CODPRO: TFloatField;
    Qr_RM2R2_QTD: TFloatField;
    Qr_RM2R2_PRECO: TFloatField;
    Qr_RM1R1_CODEMP: TFloatField;
    Qr_RM1R1_CHAVE: TFloatField;
    Qr_RM1R1_CODIGO: TFloatField;
    Qr_RM1R1_DATA: TDateTimeField;
    Qr_RM1R1_OBS1: TStringField;
    Qr_RM1R1_OBS2: TStringField;
    Qr_RM1R1_OBS3: TStringField;
    Qr_RM1R1_STATUS: TFloatField;
    Qr_RM1R1_TOTAL: TFloatField;
    Qr_RM1R1_CODTRA: TFloatField;
    Qr_RM1R1_QTDVOL: TFloatField;
    Qr_RM1R1_PESOL: TFloatField;
    Qr_RM1R1_PESOB: TFloatField;
    Qr_RM1R1_ESPECIE: TStringField;
    Qr_RM1R1_FRETEPC: TFloatField;
    Qr_RM1R1_VALFRE: TFloatField;
    Qr_RM1R1_UFPV: TStringField;
    Qr_RM1R1_PLACAV: TStringField;
    Qr_RM1R1_ETIVOL: TFloatField;
    Qr_RM1R1_DTMOD: TDateTimeField;
    Qr_RM1R1_HRMOD: TStringField;
    Qr_RM1R1_USRMOD: TFloatField;
    Qr_RM1R1_CONF: TFloatField;
    Qr_RM1R1_USRCON: TFloatField;
    Qr_RM1R1_DATCON: TDateTimeField;
    Qr_RM1R1_HRCON: TStringField;
    Qr_RM1R1_USRENT: TFloatField;
    Qr_RM1R1_DATENT: TDateTimeField;
    Qr_RM1R1_HRENT: TStringField;
    Qr_RM1R1_USRSEP: TFloatField;
    Qr_RM1R1_DATSEP: TDateTimeField;
    Qr_RM1R1_HRSEP: TStringField;
    Qr_RM1R1_USREMB: TFloatField;
    Qr_RM1R1_DATEMB: TDateTimeField;
    Qr_RM1R1_HREMB: TStringField;
    Qr_RM1R1_HRDIG: TStringField;
    Qr_RM1R1_USRDIG: TFloatField;
    Qr_RM1codcli: TFloatField;
    Qr_RM1razaosocial: TStringField;
    Qr_RM1denominacao: TStringField;
    Qr_RM1endereco: TStringField;
    Qr_RM1bairro: TStringField;
    Qr_RM1cidade: TStringField;
    Qr_RM1cep: TStringField;
    Qr_RM2nome: TStringField;
    Qr_RM2und: TStringField;
    Qr_RM2valortotal: TFloatField;
    Qr_RM1total: TFloatField;
    Src_RM1: TDataSource;
    Src_RM2: TDataSource;
    Tb_Ped: TQuery;
    Tb_PedP2CODPRO: TFloatField;
    Tb_PedQTD: TFloatField;
    Tb_Rom: TQuery;
    Tb_RomR2_CHAVE: TFloatField;
    Tb_RomR2_CODPRO: TFloatField;
    Tb_RomQTD: TFloatField;
    Tb_PedP2PRECO: TFloatField;
    BitBtn1: TBitBtn;
    bbImprimir02: TBitBtn;
    Tb_RomR2_LOTSEQ: TFloatField;
    Qr_RM1R1_LOTSEQ: TFloatField;
    Qr_RM2R2_LOTSEQ: TFloatField;
    Tb_Ped02D: TQuery;
    Tb_Ped02DP2DCODEMP: TFloatField;
    Tb_Ped02DP2DTIPO: TFloatField;
    Tb_Ped02DP2DCHAVE: TFloatField;
    Tb_Ped02DP2DORDEM: TFloatField;
    Tb_Ped02DP2DITEM: TFloatField;
    Tb_Ped02DP2DCODPRO: TFloatField;
    Tb_Ped02DP2DLINHA: TFloatField;
    Tb_Ped02DP2DESC: TStringField;
    Tb_Ped02DP2DLOTSEQ: TFloatField;
    procedure CHAVEKeyPress(Sender: TObject; var Key: Char);
    procedure bb_PesquisarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure CHAVEExit(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QTDExit(Sender: TObject);
    procedure PCOUNIExit(Sender: TObject);
    procedure ITEM_GRAVARClick(Sender: TObject);
    procedure ITEM_EDITARClick(Sender: TObject);
    procedure ITEM_CANCELARClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure CODTRAKeyPress(Sender: TObject; var Key: Char);
    procedure CODTRAExit(Sender: TObject);
    procedure PLACAVExit(Sender: TObject);
    procedure PLACAVKeyPress(Sender: TObject; var Key: Char);
    procedure UFPVKeyPress(Sender: TObject; var Key: Char);
    procedure UFPVExit(Sender: TObject);
    procedure QTDVOLExit(Sender: TObject);
    procedure ESPECIEExit(Sender: TObject);
    procedure ESPECIEKeyPress(Sender: TObject; var Key: Char);
    procedure PESOBExit(Sender: TObject);
    procedure PESOLExit(Sender: TObject);
    procedure CODSEPExit(Sender: TObject);
    procedure CODSEPKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONExit(Sender: TObject);
    procedure CODEMBExit(Sender: TObject);
    procedure CODEMBKeyPress(Sender: TObject; var Key: Char);
    procedure BBLIMPARClick(Sender: TObject);
    procedure STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Src_RM01DataChange(Sender: TObject; Field: TField);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure CHAVEROMExit(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure Qr_RM1CalcFields(DataSet: TDataSet);
    procedure Qr_RM2CalcFields(DataSet: TDataSet);
    procedure BBIMPRIMIRClick(Sender: TObject);
    procedure CHAVEEnter(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure bbImprimir02Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    function fromcalc(ptipo: Integer): Boolean;
    function fCarrega(ptipo: Integer): Boolean;
    function fromExcluir(ptipo: Integer): Boolean;
    function fRomGravar(ptipo: Integer): Boolean;
    function fRomlerant(ptipo: Integer):Boolean;

    { Private declarations }
  public
    { Public declarations }
      Rom_Ori: String;
      moper,mop: Integer;
      mcodigo: Integer;
      mqtdped, mqtdrom: Real;
      bbalt_true : Boolean;
      bbinc_true : Boolean;
      bbexc_true : Boolean;
      bbrel_true : Boolean;

    Form_PedCli_Rom: TFrm_PedCli;
  end;
function fRomgant(ptipo: Integer): Boolean;

var
  Frm_Rom: TFrm_Rom;

implementation

uses S_DM2, Sr_Rom,Sr_Rom02, func_excecoes;

{$R *.dfm}

procedure TFrm_Rom.CHAVEKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_Rom.bb_PesquisarClick(Sender: TObject);
begin
Application.CreateForm(TFrm_PedCli, Form_PedCli_Rom);
Form_PedCli_Rom.ori_pedcli:='frm_rom';
Form_PedCli_Rom.ShowModal;
CHAVE.Text :=Form_PedCli_Rom.chave.Text;
NOMCLI.Text:=Form_PedCli_Rom.Tb_PedCRAZAO.Value;
Form_PedCli_Rom.Free;
CHAVE.SetFocus;
end;

procedure TFrm_Rom.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Rom.CHAVEExit(Sender: TObject);
begin
if (BBGRAVAR.Enabled) or (rom_ori='consulta') then
   exit;
if bbSair.Focused then
   exit;
if ValFloat(CHAVE.Text)=0 then
   exit;
CHAVE.Text:=FloatToStr(ValFloat(CHAVE.Text));
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select P1CODCLI,P1OBS1 from CADP01 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntToStr(codemp)+' and ')
                  +' P1LOTSEQ=0'+IntTostr(ls_numped)
                  +' and P1CHAVE=0'+Trim(CHAVE.Text)
                  +' and P1ORDEM=1');
DM1.Query2.Open;
if DM1.Query2.Eof then
   begin
   MessageDlg('Chave Não Encontrada!',mtWarning,[mbOk],0);
   CHAVE.SetFocus;
   exit;
   end;
if flcadcli(1,0,DM1.Query2.Fields[0].AsString) then
   NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value
else
   NOMCLI.Text:='';
POBS01.Text:=DM1.Query2.Fields[1].AsString;
Tb_Ped02D.Close;
Tb_Ped02D.SQL.Clear;
Tb_Ped02D.SQL.Add('Select P2DCODPRO,P2DLINHA, '
                 +'       max(P2DITEM)   as P2DITEM, '
                 +'       max(P2DCODEMP) as P2DCODEMP, '
                 +'       max(P2DTIPO)   as P2DTIPO, '
                 +'       max(P2DCHAVE)  as P2DCHAVE, '
                 +'       max(P2DORDEM)  as P2DORDEM, '
                 +'       max(P2DESC)    as P2DESC, '
                 +'       max(P2DLOTSEQ) as P2DLOTSEQ '
                 +'  from CADP02D where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2DCODEMP=0'+IntToStr(codemp)+' and ')
                 +' P2DLOTSEQ=0'+IntToStr(ls_numped)
                 +' and P2DCHAVE=0'+Trim(CHAVE.Text)
                 +' group by P2DCODPRO,P2DLINHA');
Tb_Ped02D.Open;

flcadrm1(0,0,trim(CHAVE.Text),'',IntTostr(ls_numped));


BBINCLUIR.Enabled:=bbinc_true;
end;

procedure TFrm_Rom.CODPROExit(Sender: TObject);
var
x: Integer;
begin
if (ITEM_CANCELAR.Focused) or (Trim(CODPRO.Text)='') then
   exit;
CODPRO.Text:=FloatToStr(ValFloat(CODPRO.Text));
if not flcadpro(1,0,0,Trim(CODPRO.Text)) then
   begin
   MessageDlg('Produto não Cadastrado!',mtWarning,[mbOk],0);
   CODPRO.SetFocus;
   exit;
   end
else
   begin
   CODPRO.Text:=DM1.Tb_ProPDCODPRO.AsString;
   NOMPRO.Text:=DM1.Tb_ProPDNOME.Value;
   UND.Text   :=DM1.Tb_ProPDUND.Value;
   end;
if Tb_Ped02D.Active then
   begin
   Tb_Ped02D.First;
   if Tb_Ped02D.Locate('P2DCODPRO',DM1.Tb_ProPDCODPRO.Value,[]) then
      begin
      NOMPRO.Text:='';
      While not (Tb_Ped02D.Eof) and (DM1.Tb_ProPDCODPRO.Value=Tb_Ped02DP2DCODPRO.Value) do
         begin
         NOMPRO.Text:=NOMPRO.Text+Tb_Ped02DP2DESC.Value+' ';
         Tb_Ped02D.Next;
         end;
      end;
   end;
if (mop=0)  then
   begin
   for x:=1 to STG1.RowCount-1 do
      begin
      if Trim(STG1.Cells[0,x])='' then
         continue;
      if trim(codpro.Text)=trim(STG1.Cells[0,x]) then
         begin
         if fmensagem('Produto já digitado quer altera-lo?',0,['1','2'],2)=mrYes then
            begin
            mop:=1;
            STG1.Row:=x;
            CODPRO.Text   :=STG1.Cells[00,STG1.Row];
            QTD.Text      :=STG1.Cells[01,STG1.Row];
            UND.Text      :=STG1.Cells[02,STG1.Row];
            NOMPRO.Text   :=STG1.Cells[03,STG1.Row];
            PCOUNI.Text   :=STG1.Cells[04,STG1.Row];
            TOTALI.Text   :=STG1.Cells[05,STG1.Row];
            break;
            end
         else
            begin
            CODPRO.Text:='';
            CODPRO.SetFocus;
            break;
            exit;
            end;
         end;
      end;
   end
else
   begin
   if Trim(STG1.Cells[00,STG1.Row])<>Trim(CODPRO.Text) then
      begin
      for x:=1 to STG1.RowCount-1 do
         begin
         if (Trim(STG1.Cells[0,x])='') or (x=STG1.Row) then
            continue;
         if trim(codpro.Text)=trim(STG1.Cells[0,x]) then
            begin
            MessageDlg('Este Código ja Existe no Pedido. Invalido!',mtWarning,[mbOk],0);
            CODPRO.Text:=STG1.Cells[0,STG1.Row];
            CODPRO.SetFocus;
            break;
            exit;
            end;
         end;
      end;
   end;
Tb_Ped.Close;
Tb_Ped.SQL.Clear;
Tb_Ped.SQL.Add('select P2PRECO,P2CODPRO,sum(P2QTD) AS QTD from CADP02 where '
              +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+IntToStr(codemp)+' and ')
              +' P2LOTSEQ=0'+IntToStr(ls_numped)
              +' and P2CHAVE=0'+Trim(CHAVE.Text)
              +' and P2CODPRO=0'+Trim(CODPRO.Text)
              +' group by P2PRECO,P2CODPRO');
Tb_Ped.Open;
if Tb_Ped.Eof then
   begin
   MessageDlg('Produto não Encontrado no Pedido de Origem!',mtWarning,[mbOk],0);
   CODPRO.SetFocus;
   exit;
   end
else
   begin
   mqtdped    :=Tb_PedQTD.Value;
   PCOUNI.Text:=FormatFloat(mcasaspu, Tb_PedP2PRECO.Value);
   end;
Tb_Rom.Close;
Tb_Rom.SQL.Clear;
Tb_Rom.SQL.Add('Select R2_LOTSEQ,R2_CHAVE,R2_CODPRO,sum(R2_QTD) AS QTD from CADRM2 where '
              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' R2_CODEMP=0'+InttoStr(codemp)+' and ')
              +' R2_LOTSEQ=0'+IntToStr(ls_numped)
              +' and R2_CHAVE=0'+Trim(CHAVE.Text)
              +' and R2_CODPRO=0'+Trim(CODPRO.Text)
              +iif(moper=0,'',' and R2_CODIGO<>0'+Trim(CHAVEROM.Text))
              +' group by R2_LOTSEQ,R2_CHAVE,R2_CODPRO');
Tb_Rom.Open;
if Tb_Rom.Eof then
   mqtdrom:=0
else
   mqtdrom:=Tb_RomQTD.Value;
if mqtdrom>=mqtdped then
   begin
   MessageDlg('Este Produto ja Foi Todo Enviado!',mtWarning,[mbOk],0);
   CODPRO.SetFocus;
   exit;
   end;
QTD.Text:=FormatFloat(mcasqtd, (mqtdped-mqtdrom));
TOTALI.Text:=insere(FormatFloat(mcasas,ValFloat(PCOUNI.Text)*ValFloat(QTD.Text)),' ',pspapco);

end;

procedure TFrm_Rom.FormCreate(Sender: TObject);
begin

bbalt_true :=True;
bbinc_true :=True;
bbexc_true :=True;
bbrel_true :=True;

Rom_Ori:='';

STG1.RowCount:=2;
STG1.Cells[0,0]:='Código';
STG1.Cells[1,0]:='Quantidade';
STG1.Cells[2,0]:='Und';
STG1.Cells[3,0]:='Descrição';
STG1.Cells[4,0]:='Pço.Unitário';
STG1.Cells[5,0]:='Valor Total';
STG1.Rows[1].Clear;
if flcadactab(0,0,IntToStr(codcar),'CADROM') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbinc_true:=False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbalt_true:=False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbexc_true:=False;
   if DM4.Tb_AcTabAT_REL.Value=1 then
      bbrel_true:=False;
   end
else
   begin
   bbinc_true:=true;
   bbalt_true:=true;
   bbexc_true:=true;
   bbrel_true:=true;
   end;
DM4.Tb_Rm1.Close;

end;

procedure TFrm_Rom.QTDExit(Sender: TObject);
begin
QTD.Text:=FormatFloat(mcasqtd,ValFloat(QTD.Text));
if (ITEM_CANCELAR.Focused) or (bbSair.Focused) or (BitBtn1.Focused) then
   exit;
if ValFloat(QTD.Text)<=0 then
   begin
   ShowMessage('Favor Digitar uma Quantidade Valida');
   QTD.SetFocus;
   exit;
   end;
if ValFloat(QTD.Text)>(mqtdped-mqtdrom) then
   begin
   MessageDlg('Não pode ser Enviado mais do que: '+FormatFloat(mcasqtd, (mqtdped-mqtdrom))+' Unidades!',mtWarning,[mbOk],0);
   QTD.SetFocus;
   exit;
   end;
TOTALI.Text:=insere(FormatFloat(mcasas,ValFloat(PCOUNI.Text)*ValFloat(QTD.Text)),' ',pspapco);

end;

procedure TFrm_Rom.PCOUNIExit(Sender: TObject);
begin
PCOUNI.Text:=FormatFloat(mcasaspu,ValFloat(PCOUNI.Text));

TOTALI.Text:=insere(FormatFloat(mcasas,ValFloat(PCOUNI.Text)*ValFloat(QTD.Text)),' ',pspapco);

end;

procedure TFrm_Rom.ITEM_GRAVARClick(Sender: TObject);
var
x: Integer;
begin
if ValFloat(CODPRO.Text)<=0 then
   begin
   MessageDlg('Favor Digitar um código Valido',mtWarning,[mbOk],0);
   CODPRO.Text;
   exit;
   end;
if ValFloat(QTD.Text)<=0 then
   begin
   MessageDlg('Favor Digitar uma Quantidade Valida!',mtWarning,[mbOk],0);
   QTD.SetFocus;
   exit;
   end;
if ValFloat(QTD.Text)>(mqtdped-mqtdrom) then
   begin
   MessageDlg('Não pode ser Enviado mais do que: '+FormatFloat(mcasqtd, (mqtdped-mqtdrom))+' Unidades!',mtWarning,[mbOk],0);
   QTD.SetFocus;
   exit;
   end;

if valfloat(PCOUNI.Text)<0 then
   PCOUNI.Text:=FormatFloat(mcasaspu,0);
if mop>0 then
   begin
   x:=STG1.row;
   x:=x+1;
   end
else
   begin
   x:=STG1.RowCount;
   STG1.RowCount:=x+1;
   STG1.Rows[x+1].Clear;
   STG1.Rows[x].Clear;
   end;

STG1.Cells[00,x-1]:=CODPRO.Text;
STG1.Cells[01,x-1]:=QTD.Text;
STG1.Cells[02,x-1]:=UND.Text;
STG1.Cells[03,x-1]:=NOMPRO.Text;
STG1.Cells[04,x-1]:=PCOUNI.Text;
STG1.Cells[05,x-1]:=TOTALI.Text;
fromcalc(0);
CODPRO.Text  :='';
QTD.Text     :='';
UND.Text     :='';
NOMPRO.Text  :='';
PCOUNI.Text  :='';
TOTALI.Text  :='';
if x>12 then
   STG1.TopRow:=x-11;

mop:=0;
CODPRO.SetFocus;
end;
function TFrm_Rom.fromcalc(ptipo: Integer): Boolean;
var
x: Integer;
mtotu, mtotb: Real;
begin
mtotu:=0;
mtotb:=0;
for x:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[0,x])='' then
      continue;
   mtotu :=mtotu+ValFloat(STG1.Cells[01,x]);
   mtotb :=mtotb+ValFloat(STG1.Cells[05,x]);
   end;
MTOTITEM.Caption:=InttoStr(STG1.RowCount-2);
MTOTUND.Caption :=Formatfloat(mcasqtd, mtotu);
TOTAL.Caption   :=FormatFloat(mcasas,mtotb);
result:=True;
end;

procedure TFrm_Rom.ITEM_EDITARClick(Sender: TObject);
begin
mop:=1;
CODPRO.Text  :=STG1.Cells[00,STG1.Row];
QTD.Text     :=STG1.Cells[01,STG1.Row];
UND.Text     :=STG1.Cells[02,STG1.Row];
NOMPRO.Text  :=STG1.Cells[03,STG1.Row];
PCOUNI.Text  :=STG1.Cells[04,STG1.Row];
TOTALI.Text  :=STG1.Cells[05,STG1.Row];
CODPRO.Setfocus;
end;

procedure TFrm_Rom.ITEM_CANCELARClick(Sender: TObject);
begin
CODPRO.Text :='';
QTD.Text    :='';
UND.Text    :='';
NOMPRO.Text :='';
PCOUNI.Text :='';
TOTALI.Text :='';
mop:=0;
end;

procedure TFrm_Rom.BitBtn6Click(Sender: TObject);
var
x: Integer;
begin
x:=STG1.Row;

if (STG1.Cells[0,1]='') or (STG1.Cells[0,x]='') then
   exit;
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;
if STG1.RowCount=2 then
   STG1.Rows[1].Clear
else
   begin
   for x:=STG1.Row to STG1.RowCount-2 do
      begin
      STG1.Cells[00,x]:=STG1.Cells[00,x+1];
      STG1.Cells[01,x]:=STG1.Cells[01,x+1];
      STG1.Cells[02,x]:=STG1.Cells[02,x+1];
      STG1.Cells[03,x]:=STG1.Cells[03,x+1];
      STG1.Cells[04,x]:=STG1.Cells[04,x+1];
      STG1.Cells[05,x]:=STG1.Cells[05,x+1];
      end;
   STG1.RowCount:=STG1.RowCount-1;
   end;
fromcalc(0);
end;

procedure TFrm_Rom.CODTRAKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTRA.Text:=fChamaTra(0,'frm_Rom',Key);
   if trim(CODTRA.Text)<>'' then
      CODTRAExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Rom.CODTRAExit(Sender: TObject);
begin
if ValFloat(CODTRA.Text)>0 then
   begin
   if not flcadtra(1,0,CODTRA.Text) then
      begin
      MessageDlg('Transportadora não Cadastrada!',mtWarning,[mbOk],0);
      CODTRA.SetFocus;
      end
   else
      NOMTRA.Text:=DM1.Tb_TraTRRAZTRA.Value;
   end;

end;

procedure TFrm_Rom.PLACAVExit(Sender: TObject);
begin
if (length(PLACAV.Text)>7) then
   PLACAV.Text:=copy(PLACAV.Text,1,8);

end;

procedure TFrm_Rom.PLACAVKeyPress(Sender: TObject; var Key: Char);
begin
if (length(PLACAV.Text)>7) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Rom.UFPVKeyPress(Sender: TObject; var Key: Char);
begin
if (length(UFPV.Text)>1) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Rom.UFPVExit(Sender: TObject);
begin
if (length(UFPV.Text)>1) then
   UFPV.Text:=copy(UFPV.Text,1,2);

end;

procedure TFrm_Rom.QTDVOLExit(Sender: TObject);
begin
QTDVOL.Text:=FloatToStr(ValFloat(QTDVOL.Text));
if ValFloat(QTDVOL.Text)<0 then
   QTDVOL.Text:='0';
if ValFloat(QTDVOL.Text)>999999999 then
   begin
   MessageDlg('Quantidade de Volumes não Suportada!',mtInformation,[mbok],0);
   QTDVOL.SetFocus;
   end;

end;

procedure TFrm_Rom.ESPECIEExit(Sender: TObject);
begin
if (length(ESPECIE.Text)>9) then
   ESPECIE.Text:=copy(ESPECIE.Text,1,10);

end;

procedure TFrm_Rom.ESPECIEKeyPress(Sender: TObject; var Key: Char);
begin
if (length(ESPECIE.Text)>9) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Rom.PESOBExit(Sender: TObject);
begin
if ValFloat(PESOB.Text)<0 then
   PESOB.Text:='0.000';
PESOB.Text:=FormatFloat('0.000',ValFloat(PESOB.Text));
if ValFloat(PESOB.Text)>99999999 then
   begin
   MessageDlg('Peso não Suportado!',mtInformation,[mbOk],0);
   PESOB.SetFocus;
   end;


end;

procedure TFrm_Rom.PESOLExit(Sender: TObject);
begin
if ValFloat(PESOL.Text)<0 then
   PESOL.Text:='0.000';
PESOL.Text:=FormatFloat('0.000',ValFloat(PESOL.Text));
if ValFloat(PESOL.Text)>99999999 then
   begin
   MessageDlg('Peso não Suportado!',mtInformation,[mbOk],0);
   PESOL.SetFocus;
   end;

end;

procedure TFrm_Rom.CODSEPExit(Sender: TObject);
begin
if ValFloat(CODSEP.Text)=0 then
   exit;
CODSEP.Text:=FloatToStr(ValFloat(CODSEP.Text));
if not flcadusr(1,0,CODSEP.Text) then
   begin
   MessageDlg('Usuário não Cadastrado!',mtWarning,[mbOk],0);
   CODSEP.SetFocus;
   end
else
   NOMSEP.Text:=DM4.Tb_UsrNOMUSR.Value;


end;

procedure TFrm_Rom.CODSEPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODSEP.Text:=fChamaUsr(0,'frm_Rom',Key);
   if Trim(CODSEP.Text)<>'' then
      CODSEPExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Rom.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text:=fChamaUsr(0,'frm_Rom',Key);
   if trim(CODCON.Text)<>'' then
      CODCONExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Rom.CODCONExit(Sender: TObject);
begin
CODCON.Text:=FloatToStr(ValFloat(CODCON.Text));
if ValFloat(CODCON.Text)=0 then
   exit;
if not flcadusr(1,0,CODCON.Text) then
   begin
   MessageDlg('Usuário não Cadastrado!',mtWarning,[mbOk],0);
   CODCON.SetFocus;
   end
else
   NOMCON.Text:=DM4.Tb_UsrNOMUSR.Value;

end;

procedure TFrm_Rom.CODEMBExit(Sender: TObject);
begin
CODEMB.Text:=FloatToStr(ValFloat(CODEMB.Text));
if ValFloat(CODEMB.Text)=0 then
   exit;
if not flcadusr(1,0,CODEMB.Text) then
   begin
   MessageDlg('Usuário não Cadastrado!',mtWarning,[mbOk],0);
   CODEMB.SetFocus;
   end
else
   NOMEMB.Text:=DM4.Tb_UsrNOMUSR.Value;

end;

procedure TFrm_Rom.CODEMBKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODEMB.Text:=fChamaUsr(0,'frm_Rom',Key);
   if trim(CODEMB.Text)<>'' then
      CODEMBExit(Self);
   key:=#0;
   end;

end;

function tFrm_Rom.fCarrega(ptipo: Integer): Boolean;
var
x: Integer;
begin
if Rom_ori='consulta' then
   begin
   fRomlerant(0);
   CHAVE.Text   :=DM4.Tb_Rm1R1_CHAVE.AsString;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.add('Select P1CODCLI,P1OBS1 from CADP01 where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntToStr(codemp)+' and ')
                     +' P1LOTSEQ=0'+IntTostr(ls_numped)
                     +' and P1CHAVE=0'+Trim(CHAVE.Text)
                     +' and P1ORDEM=1');
   DM1.Query2.Open;
   if flcadcli(1,0,DM1.Query2.Fields[0].AsString) then
      NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value
   else
      NOMCLI.Text:='';
   POBS01.Text:=DM1.Query2.Fields[1].AsString;
   end;

CHAVEROM.Text:=DM4.Tb_Rm1R1_CODIGO.AsString;
MDATA.Text   :=FormatDateTime(fdt2, DM4.Tb_Rm1R1_DATA.Value);
MOBS01.Text  :=DM4.Tb_Rm1R1_OBS1.Value;
MOBS02.Text  :=DM4.Tb_Rm1R1_OBS2.Value;
MOBS03.Text  :=DM4.Tb_Rm1R1_OBS3.Value;
CODTRA.Text  :=DM4.Tb_Rm1R1_CODTRA.AsString;
if DM4.Tb_Rm1R1_CODTRA.Value>0 then
   begin
   if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',DM4.Tb_Rm1R1_CODTRA.AsString) then
      NOMTRA.Text:=DM1.Query1.fields[0].AsString;
   end;
PLACAV.Text        :=DM4.Tb_Rm1R1_PLACAV.Value;
UFPV.Text          :=DM4.Tb_Rm1R1_UFPV.Value;
RGFRETEPC.ItemIndex:=DM4.Tb_Rm1R1_FRETEPC.AsInteger-1;
QTDVOL.Text        :=DM4.Tb_Rm1R1_QTDVOL.AsString;
ESPECIE.Text       :=DM4.Tb_Rm1R1_ESPECIE.Value;
PESOB.Text         :=FormatFloat('0.000',DM4.Tb_Rm1R1_PESOB.Value);
PESOL.Text         :=FormatFloat('0.000',DM4.Tb_Rm1R1_PESOL.Value);
CODDIG.Text        :=DM4.Tb_Rm1R1_USRDIG.AsString;
if DM4.Tb_Rm1R1_USRDIG.Value>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM4.Tb_Rm1R1_USRDIG.AsString) then
      NOMDIG.Text:=DM1.Query1.fields[0].AsString;
   DATDIG.Text   :=FormatDatetime(fdt2, DM4.Tb_Rm1R1_DATA.Value);
   HORDIG.Text   :=DM4.Tb_Rm1R1_HRDIG.AsString;
   end
else
   begin
   NOMDIG.Text:='';
   DATDIG.Text:='/  /';
   HORDIG.Text:=':  :';
   end;
CODSEP.Text        :=DM4.Tb_Rm1R1_USRSEP.AsString;
if DM4.Tb_Rm1R1_USRSEP.Value>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM4.Tb_Rm1R1_USRSEP.AsString) then
      NOMSEP.Text:=DM1.Query1.fields[0].AsString;
   DATSEP.Text   :=FormatDatetime(fdt2, DM4.Tb_Rm1R1_DATSEP.Value);
   HORSEP.Text   :=DM4.Tb_Rm1R1_HRSEP.AsString;
   end
else
   begin
   NOMSEP.Text:='';
   DATSEP.Text:='/  /';
   HORSEP.Text:=':  :';
   end;

CODCON.Text        :=DM4.Tb_Rm1R1_USRCON.AsString;
if DM4.Tb_Rm1R1_USRCON.Value>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM4.Tb_Rm1R1_USRCON.AsString) then
      NOMCON.Text:=DM1.Query1.fields[0].AsString;
   DATCON.Text   :=FormatDatetime(fdt2, DM4.Tb_Rm1R1_DATCON.Value);
   HORCON.Text   :=DM4.Tb_Rm1R1_HRCON.AsString;
   end
else
   begin
   NOMCON.Text:='';
   DATCON.Text:='/  /';
   HORCON.Text:=':  :';
   end;

CODEMB.Text        :=DM4.Tb_Rm1R1_USREMB.AsString;
CB_ETIVOL.Checked  :=DM4.Tb_Rm1R1_ETIVOL.Value=1;
CB_CONF.Checked    :=DM4.Tb_Rm1R1_CONF.Value=1;

if DM4.Tb_Rm1R1_USREMB.Value>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM4.Tb_Rm1R1_USREMB.AsString) then
      NOMEMB.Text:=DM1.Query1.fields[0].AsString;
   DATEMB.Text   :=FormatDatetime(fdt2, DM4.Tb_Rm1R1_DATEMB.Value);
   HOREMB.Text   :=DM4.Tb_Rm1R1_HREMB.AsString;
   end
else
   begin
   NOMEMB.Text:='';
   DATEMB.Text:='/  /';
   HOREMB.Text:=':  :';
   end;

CODENT.Text        :=DM4.Tb_Rm1R1_USRENT.AsString;
if DM4.Tb_Rm1R1_USRENT.Value>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM4.Tb_Rm1R1_USRENT.AsString) then
      NOMENT.Text:=DM1.Query1.fields[0].AsString;
   DATENT.Text   :=FormatDatetime(fdt2, DM4.Tb_Rm1R1_DATENT.Value);
   HORENT.Text   :=DM4.Tb_Rm1R1_HRENT.AsString;
   end
else
   begin
   NOMENT.Text:='';
   DATENT.Text:='/  /';
   HORENT.Text:=':  :';
   end;
STG1.RowCount:=2;
STG1.Rows[1].Clear;

if flcadrm2(1,0,DM4.Tb_Rm1R1_CHAVE.AsString,DM4.Tb_Rm1R1_CODIGO.AsString,DM4.Tb_Rm1R1_LOTSEQ.AsString) then
   begin
   While not DM4.Tb_Rm2.Eof do
      begin
      x:=STG1.RowCount;
      STG1.Rows[x].Clear;
      STG1.Cells[0,x-1]:=DM4.Tb_Rm2R2_CODPRO.AsString;
      STG1.Cells[1,x-1]:=Formatfloat(mcasqtd, DM4.Tb_Rm2R2_QTD.Value);
      if flqr1('PDNOME,PDUND','PD','CADPRO','N','PDCODPRO',DM4.Tb_Rm2R2_CODPRO.AsString) then
         begin
         STG1.Cells[2,x-1]:=DM1.Query1.Fields[1].AsString;
         STG1.Cells[3,x-1]:=DM1.Query1.Fields[0].AsString;
         end
      else
         begin
         STG1.Cells[2,x-1]:='';
         STG1.Cells[3,x-1]:='';
         end;
      if Tb_Ped02D.Active then
         begin
         Tb_Ped02D.First;
         if Tb_Ped02D.Locate('P2DCODPRO',DM4.Tb_Rm2R2_CODPRO.Value,[]) then
            begin
            STG1.Cells[3,x-1]:='';
            While not (Tb_Ped02D.Eof) and (DM4.Tb_Rm2R2_CODPRO.Value=Tb_Ped02DP2DCODPRO.Value) do
               begin
               STG1.Cells[3,x-1]:=STG1.Cells[3,x-1]+Tb_Ped02DP2DESC.Value+' ';
               Tb_Ped02D.Next;
               end;
            end;
         end;   
      STG1.Cells[4,x-1]:=Formatfloat(mcasaspu, DM4.Tb_Rm2R2_PRECO.Value);
      STG1.Cells[5,x-1]:=Formatfloat(mcasas,   DM4.Tb_Rm2R2_PRECO.Value*DM4.Tb_Rm2R2_QTD.Value);
      STG1.RowCount:=x+1;
      DM4.Tb_Rm2.Next;
      end;
   end;
fromcalc(0);
result:=True;
end;
procedure TFrm_Rom.BBLIMPARClick(Sender: TObject);
begin
CHAVEROM.Text      :='';
MDATA.Text         :='/  /';
MOBS01.Text        :='';
MOBS02.Text        :='';
MOBS03.Text        :='';
CODTRA.Text        :='';
NOMTRA.Text        :='';
PLACAV.Text        :='';
UFPV.Text          :='';
RGFRETEPC.ItemIndex:=0;
QTDVOL.Text        :='';
ESPECIE.Text       :='';
PESOB.Text         :='';
PESOL.Text         :='';
CODDIG.Text        :='';
NOMDIG.Text        :='';
DATDIG.Text        :='/  /';
HORDIG.Text        :=':  :';
CODSEP.Text        :='';
NOMSEP.Text        :='';
DATSEP.Text        :='/  /';
HORSEP.Text        :=':  :';
CODCON.Text        :='';
NOMCON.Text        :='';
DATCON.Text        :='/  /';
HORCON.Text        :=':  :';
CODEMB.Text        :='';
NOMEMB.Text        :='';
DATEMB.Text        :='/  /';
HOREMB.Text        :=':  :';
CODENT.Text        :='';
NOMENT.Text        :='';
DATENT.Text        :='/  /';
HORENT.Text        :=':  :';
CB_ETIVOL.Checked  :=False;
CB_CONF.Checked    :=False;
STG1.RowCount:=2;
STG1.Rows[1].Clear;
MTOTUND.Caption:='0';
MTOTITEM.Caption:=FormatFloat(mcasaspu,0);
TOTAL.Caption   :=Formatfloat(mcasas,0);

BBINCLUIR.Enabled   :=bbinc_true;
BBALTERAR.Enabled   :=bbalt_true;
BBGRAVAR.Enabled    :=False;
BBIMPRIMIR.Enabled  :=bbrel_true;
bbImprimir02.Enabled:=bbrel_true;
BBEXCLUIR.Enabled   :=bbexc_true;
CHAVEROM.Enabled    :=True;
DBGrid1.Enabled     :=True;
CHAVEROM.Enabled    :=True;
bb_Pesquisar.Enabled:=True;
MDATA.Enabled       :=False;
MOBS01.Enabled      :=False;
MOBS02.Enabled      :=False;
MOBS03.Enabled      :=False;
GroupBox6.Enabled   :=False;
TabSheet2.Enabled   :=False;

end;

procedure TFrm_Rom.STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin

if (arow>0) and ((aCol=0) or (Acol=1) or (Acol=4) or (Acol=5)) then
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

procedure TFrm_Rom.Src_RM01DataChange(Sender: TObject; Field: TField);
begin
if not (DM4.Tb_Rm1R1_CODEMP.IsNull) and (Rom_Ori<>'consulta') then
   begin
   fCarrega(0);
   BBINCLUIR.Enabled :=bbinc_true;
   BBALTERAR.Enabled :=bbalt_true;
   BBEXCLUIR.Enabled :=bbexc_true;
   BBIMPRIMIR.Enabled:=bbrel_true;
   bbImprimir02.Enabled:=bbrel_true;
   end;
end;

procedure TFrm_Rom.BBINCLUIRClick(Sender: TObject);
var
x: Integer;
mcompreco: Boolean;
begin
BBLIMPAR.Click;
BBINCLUIR.Enabled   :=False;
BBALTERAR.Enabled   :=False;
BBGRAVAR.Enabled    :=True;
BBIMPRIMIR.Enabled  :=False;
bbImprimir02.Enabled:=False;
BBEXCLUIR.Enabled   :=False;
CHAVEROM.Enabled    :=False;
DBGrid1.Enabled     :=False;
CHAVEROM.Enabled    :=False;
bb_Pesquisar.Enabled:=False;
MDATA.Enabled       :=True;
MOBS01.Enabled      :=True;
MOBS02.Enabled      :=True;
MOBS03.Enabled      :=True;
GroupBox6.Enabled   :=True;
TabSheet2.Enabled   :=True;
MDATA.Text          :=FormatDatetime(fdt2, pdatasis);
CODDIG.Text         :=IntToStr(codusr);
if flqr1('NOMUSR','','CADUSR','N','CODUSR',CODDIG.Text) then
   begin
   NOMDIG.Text      :=DM1.Query1.Fields[0].AsString;
   end;
HORDIG.Text         :=FormatDateTime(fhr, Time);
DATDIG.Text         :=FormatDateTime(fdt2, pdatasis);
moper:=0;
if fmensagem('Deseja Incluir as Mercadorias Automaticamente?',0,['1','2'],2)=mrYes then
   begin
// inicio
   mcompreco:=True;
   if fmensagem('Deseja deixar os preços unitários com valor zero?',0,['1','2'],2)=mrYes then
      mcompreco:=false;

   STG1.RowCount:=2;
   STG1.Rows[1].Clear;
   Tb_Ped.Close;
   Tb_Ped.SQL.Clear;
   Tb_Ped.SQL.Add('select P2PRECO,P2CODPRO,sum(P2QTD) AS QTD,max(P2ORDEM),min(P2ITEM) from CADP02 where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+IntToStr(codemp)+' and ')
                 +' P2LOTSEQ=0'+IntTostr(ls_numped)
                 +' and P2CHAVE=0'+Trim(CHAVE.Text)
                 +' group by P2PRECO,P2CODPRO'
                 +' order by max(P2ORDEM),min(P2ITEM)');
   Tb_Ped.Open;

   Tb_Rom.Close;
   Tb_Rom.SQL.Clear;
   Tb_Rom.SQL.Add('Select R2_LOTSEQ,R2_CHAVE,R2_CODPRO,sum(R2_QTD) AS QTD from CADRM2 where '
                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' R2_CODEMP=0'+InttoStr(codemp)+' and ')
                 +' R2_LOTSEQ=0'+IntTosTr(ls_numped)
                 +' and R2_CHAVE=0'+Trim(CHAVE.Text)
                 +' group by R2_LOTSEQ,R2_CHAVE,R2_CODPRO');
   Tb_Rom.Open;
   While not Tb_ped.Eof do
      begin
      mqtdped:=Tb_PedQTD.Value;
      mqtdrom:=0;
      if Tb_Rom.Locate('R2_CODPRO',Tb_PedP2CODPRO.Value,[]) then
         mqtdrom:=Tb_RomQTD.Value;
      if mqtdrom>=mqtdped then
         begin
         Tb_Ped.Next;
         Continue;
         end;
      x:=STG1.RowCount;
      STG1.Rows[x].Clear;
      STG1.Cells[0,x-1]:=Tb_PedP2CODPRO.AsString;
      STG1.Cells[1,x-1]:=Formatfloat(mcasqtd, mqtdped-mqtdrom);
      if flqr1('PDNOME,PDUND','PD','CADPRO','N','PDCODPRO',Tb_PedP2CODPRO.AsString) then
         begin
         STG1.Cells[2,x-1]:=DM1.Query1.Fields[1].AsString;
         STG1.Cells[3,x-1]:=DM1.Query1.Fields[0].AsString;
         end
      else
         begin
         STG1.Cells[2,x-1]:='';
         STG1.Cells[3,x-1]:='';
         end;
      if Tb_Ped02D.Active then
         begin
         Tb_Ped02D.First;
         if Tb_Ped02D.Locate('P2DCODPRO',Tb_PedP2CODPRO.Value,[]) then
            begin
            STG1.Cells[3,x-1]:='';
            While not (Tb_Ped02D.Eof) and (Tb_PedP2CODPRO.Value=Tb_Ped02DP2DCODPRO.Value) do
               begin
               STG1.Cells[3,x-1]:=STG1.Cells[3,x-1]+Tb_Ped02DP2DESC.Value+' ';
               Tb_Ped02D.Next;
               end;
            end;
         end;
      if mcompreco then
         begin
         STG1.Cells[4,x-1]:=Formatfloat(mcasaspu, Tb_PedP2PRECO.Value);
         STG1.Cells[5,x-1]:=Formatfloat(mcasas,   Tb_PedP2PRECO.Value*(mqtdped-mqtdrom));
         end
      else
         begin
         STG1.Cells[4,x-1]:=Formatfloat(mcasaspu, 0);
         STG1.Cells[5,x-1]:=Formatfloat(mcasas,   0);
         end;
      STG1.RowCount:=x+1;
      Tb_Ped.Next;
      end;
      fromcalc(0);
   end;
MOBS01.SetFocus;

end;

procedure TFrm_Rom.CHAVEROMExit(Sender: TObject);
begin
if DM4.Tb_Rm1.Locate('R1_CODIGO',Trim(CHAVEROM.Text),[]) then
   begin
   fCarrega(0);
   BBINCLUIR.Enabled   :=bbinc_true;
   BBALTERAR.Enabled   :=bbalt_true;
   BBEXCLUIR.Enabled   :=bbexc_true;
   BBIMPRIMIR.Enabled  :=bbrel_true;
   bbImprimir02.Enabled:=bbrel_true;
   end;

end;

procedure TFrm_Rom.BBALTERARClick(Sender: TObject);
begin
if ValFloat(CHAVEROM.Text)<=0 then
   begin
   MessageDlg('Não Ha Registro a ser alterado!',mtWarning,[mbOk],0);
   exit;
   end;
BBINCLUIR.Enabled   :=False;
BBALTERAR.Enabled   :=False;
BBGRAVAR.Enabled    :=True;
BBIMPRIMIR.Enabled  :=False;
bbImprimir02.Enabled:=False;
BBEXCLUIR.Enabled   :=False;
CHAVEROM.Enabled    :=False;
DBGrid1.Enabled     :=False;
bb_Pesquisar.Enabled:=False;
MDATA.Enabled       :=True;
MOBS01.Enabled      :=True;
MOBS02.Enabled      :=True;
MOBS03.Enabled      :=True;
GroupBox6.Enabled   :=True;
TabSheet2.Enabled   :=True;
moper:=1;
MOBS01.SetFocus;

end;

function TFrm_Rom.fromExcluir(ptipo: Integer): Boolean;
begin
DM1.Query1.Close;
DM1.query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADRM1 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' R1_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' R1_LOTSEQ=0'+IntTostr(ls_numped)
                  +' and R1_CHAVE=0'+Trim(CHAVE.Text)
                  +' and R1_CODIGO=0'+Trim(CHAVEROM.Text));
Try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
except
  ex_erroSql(01,1224,'Frm_Rom','CADRM1');
  end;


DM1.Query1.Close;
DM1.query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADRM2 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' R2_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' R2_LOTSEQ=0'+IntToStr(ls_numped)+' and '
                  +' R2_CHAVE=0'+Trim(CHAVE.Text)
                  +' and R2_CODIGO=0'+Trim(CHAVEROM.Text));
Try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
except
  ex_erroSql(01,1238,'Frm_Rom','CADRM2');
  end;
result:=True;
end;

procedure TFrm_Rom.BBGRAVARClick(Sender: TObject);
begin
if (STG1.RowCount<3) and (trim(STG1.Cells[0,1])='') then
   begin
   MessageDlg('Não ha nenhum item digitado!',mtWarning,[mbOk],0);
   exit;
   end;
if moper=1 then
   begin
   fRomgant(8);
   fromExcluir(0);
   mcodigo:=StrToInt('0'+Trim(CHAVEROM.Text));
   end
else
   mcodigo:=0;
if Trim(MDATA.Text)='/  /' then
   begin
   MessageDlg('Data Invalida. Campo Obrigatório!',mtWarning,[mbOk],0);
   MDATA.SetFocus;
   exit;
   end;
if fRomGravar(0) then
   begin
   MessageDlg('Romaneio Gravado!',mtWarning,[mbOk],0);
   BBLIMPAR.Click;
   flcadrm1(0,0,trim(CHAVE.Text),'',IntTostr(ls_numped));
   DM4.Tb_Rm1.Locate('R1_CODIGO',mcodigo,[]);
   fCarrega(0);
   end;
end;
function TFrm_Rom.fRomGravar(ptipo: Integer): Boolean;
var
mqtd,y: Integer;
mtotal: Real;
begin
mqtd:=0;
if mcodigo=0 then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select max(R1_CODIGO) from CADRM1 where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' R1_CODEMP=0'+IntToStr(codemp)+' and ')
                     +' R1_LOTSEQ=0'+InttoStr(ls_numped)
                     +' and R1_CHAVE=0'+Trim(CHAVE.Text));
   DM1.Query2.Open;
   mcodigo:=DM1.Query2.Fields[0].AsInteger+1;
   end;
Tb_Ped.Close;
Tb_Ped.SQL.Clear;
Tb_Ped.SQL.Add('select P2PRECO,P2CODPRO,sum(P2QTD) AS QTD,max(P2ORDEM),min(P2ITEM) from CADP02 where '
              +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+IntToStr(codemp)+' and ')
              +' P2LOTSEQ=0'+IntTostr(ls_numped)
              +' and P2CHAVE=0'+Trim(CHAVE.Text)
              +' group by P2PRECO,P2CODPRO'
               +' order by max(P2ORDEM),min(P2ITEM)');
Tb_Ped.Open;
if Tb_Ped.Eof then
   begin
   Result:=False;
   exit;
   end;
Tb_Rom.Close;
Tb_Rom.SQL.Clear;
Tb_Rom.SQL.Add('Select R2_LOTSEQ,R2_CHAVE,R2_CODPRO,sum(R2_QTD) AS QTD from CADRM2 where '
              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' R2_CODEMP=0'+InttoStr(codemp)+' and ')
              +' R2_LOTSEQ=0'+IntToStr(ls_numped)
              +' and R2_CHAVE=0'+Trim(CHAVE.Text)
              +iif(moper=0,'',' and R2_CODIGO<>0'+Trim(CHAVEROM.Text))
              +' group by R2_LOTSEQ,R2_CHAVE,R2_CODPRO');
Tb_Rom.Open;

for y:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[0,y])='' then
      Continue;
   if Tb_Ped.Locate('P2CODPRO',ValFloat(stg1.Cells[0,Y]),[]) then
      mqtdped:=Tb_PedQTD.Value
   else
      mqtdped:=0;

   mqtdped:=Tb_PedQTD.Value;
//   mqtdped:=Tb_PedQTD.Value;
   if Tb_Rom.Locate('R2_CODPRO',Tb_PedP2CODPRO.Value,[]) then
      mqtdrom:=Tb_RomQTD.Value
   else
      mqtdrom:=0;
   if mqtdrom>=mqtdped then
      Continue;
   if valFloat(STG1.Cells[1,y])>(mqtdped-mqtdrom) then
      STG1.Cells[1,y]:=FloattoStr(mqtdped-mqtdrom);
   mqtd:=mqtd+1;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Insert Into CADRM2 ('
                     +'R2_CODEMP, '
                     +'R2_LOTSEQ, '
                     +'R2_CHAVE, '
                     +'R2_CODIGO, '
                     +'R2_ITEM, '
                     +'R2_CODPRO, '
                     +'R2_QTD, '
                     +'R2_PRECO) Values ('
                     +IntTostr(codemp)+','
                     +IntToStr(ls_numped)+','
                     +Trim(CHAVE.Text)+','
                     +IntTostr(mcodigo)+','
                     +IntToStr(mqtd)+','
                     +Trim(STG1.Cells[0,y])+','
                     +Mudavp(Trim(STG1.Cells[1,y]))+','
                     +mudavp(Trim(STG1.Cells[4,y]))+')');
   Try
     DM1.Query1.ExecSQL;
     fdm1StartCommit;
   except
     ex_erroSql(01,1347,'Frm_Rom','CADRM2');
     end;
   end;
if mqtd<1 then
   begin
   MessageDlg('Não Foi Gravado Nenhum Item!',mtWarning,[mbOk],0);
   result:=False;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select sum(R2_QTD*R2_PRECO) as total from CADRM2 where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' R2_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' R2_LOTSEQ=0'+IntToStr(ls_numped)
                  +' and R2_CHAVE=0'+Trim(CHAVE.Text)+' and '
                  +' R2_CODIGO=0'+IntToStr(mcodigo));
DM1.Query1.Open;
mtotal:=DM1.Query1.Fields[0].AsFloat;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Params.CreateParam(ftstring,'DATA',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'OBS1',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'OBS2',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'OBS3',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'UFPV',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'PLACAV',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'DTMOD',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'HRMOD',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'DATCON',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'HRCON',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'DATENT',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'HRENT',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'DATSEP',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'HRSEP',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'DATEMB',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'HREMB',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'HRDIG',ptinput);
DM1.Query1.SQL.Add('Insert into CADRM1 ('
                  +'R1_CODEMP,'
                  +'R1_LOTSEQ,'
                  +'R1_CHAVE,'
                  +'R1_CODIGO,'
                  +'R1_STATUS,'
                  +'R1_TOTAL,'
                  +'R1_CODTRA,'
                  +'R1_QTDVOL,'
                  +'R1_PESOL,'
                  +'R1_PESOB,'
                  +'R1_FRETEPC,'
                  +'R1_VALFRE,'
                  +'R1_ETIVOL,'
                  +'R1_USRMOD,'
                  +'R1_CONF,'
                  +'R1_USRCON,'
                  +'R1_USRENT,'
                  +'R1_USRSEP,'
                  +'R1_USREMB,'
                  +'R1_USRDIG,'
                  +'R1_DATA,'
                  +'R1_OBS1,'
                  +'R1_OBS2,'
                  +'R1_OBS3,'
                  +'R1_ESPECIE,'
                  +'R1_UFPV,'
                  +'R1_PLACAV,'
                  +'R1_DTMOD,'
                  +'R1_HRMOD,'
                  +'R1_DATCON,'
                  +'R1_HRCON,'
                  +'R1_DATENT,'
                  +'R1_HRENT,'
                  +'R1_DATSEP,'
                  +'R1_HRSEP,'
                  +'R1_DATEMB,'
                  +'R1_HREMB,'
                  +'R1_HRDIG) Values ('
                  +IntToStr(codemp)+','
                  +IntToStr(ls_numped)+','
                  +Trim(CHAVE.Text)+','
                  +InttoStr(mcodigo)+','
                  +'0'+',' // Status do Pedido
                  +mudavp(FloatToStr(mtotal))+','
                  +mudavp(CODTRA.Text)+','
                  +mudavp(QTDVOL.Text)+','
                  +mudavp(PESOL.Text)+','
                  +mudavp(PESOB.Text)+','
                  +InttoStr(RGFRETEPC.ItemIndex+1)+','
                  +'0'+',' // valor do Frete
                  +iif(CB_ETIVOL.Checked,'1','0')+','
                  +IntToStr(codusr)+','
                  +iif(CB_CONF.Checked,'1','0')+','
                  +mudavp(CODCON.Text)+','
                  +mudavp(CODENT.Text)+','
                  +mudavp(CODSEP.Text)+','
                  +mudavp(CODEMB.Text)+','
                  +mudavp(CODDIG.Text)+','
                  +':DATA,'
                  +':OBS1,'
                  +':OBS2,'
                  +':OBS3,'
                  +':ESPECIE,'
                  +':UFPV,'
                  +':PLACAV,'
                  +':DTMOD,'
                  +':HRMOD,'
                  +':DATCON,'
                  +':HRCON,'
                  +':DATENT,'
                  +':HRENT,'
                  +':DATSEP,'
                  +':HRSEP,'
                  +':DATEMB,'
                  +':HREMB,'
                  +':HRDIG)');

DM1.Query1.ParamByName('DATA').AsString   :=FormatDateTime(fdt, StrToDate(MDATA.Text));
DM1.Query1.ParamByName('OBS1').AsString   :=MOBS01.Text;
DM1.Query1.ParamByName('OBS2').AsString   :=MOBS02.Text;
DM1.Query1.ParamByName('OBS3').AsString   :=MOBS03.Text;
DM1.Query1.ParamByName('ESPECIE').AsString:=ESPECIE.Text;
DM1.Query1.ParamByName('UFPV').AsString   :=UFPV.Text;
DM1.Query1.ParamByName('PLACAV').AsString :=PLACAV.Text;
DM1.Query1.ParamByName('DTMOD').AsString  :=FormatDateTime(fdt, pdatasis);
DM1.Query1.ParamByName('HRMOD').AsString  :=FormatDateTime(fhr, time);
if Trim(DATCON.Text)='/  /' then
   DM1.Query1.ParamByName('DATCON').AsDateTime:=0
else
   DM1.Query1.ParamByName('DATCON').AsString  :=FormatDateTime(fdt, StrToDate(DATCON.Text));
DM1.Query1.ParamByName('HRCON').AsString      :=HORCON.Text;
if Trim(DATENT.Text)='/  /' then
   DM1.Query1.ParamByName('DATENT').AsDateTime:=0
else
   DM1.Query1.ParamByName('DATENT').AsString  :=FormatDateTime(fdt, StrToDate(DATENT.Text));
DM1.Query1.ParamByName('HRENT').AsString      :=HORCON.Text;
if Trim(DATSEP.Text)='/  /' then
   DM1.Query1.ParamByName('DATSEP').AsDateTime:=0
else
   DM1.Query1.ParamByName('DATSEP').AsString  :=FormatDateTime(fdt, StrToDate(DATSEP.Text));
DM1.Query1.ParamByName('HRSEP').AsString      :=HORSEP.Text;

if Trim(DATEMB.Text)='/  /' then
   DM1.Query1.ParamByName('DATEMB').AsDateTime:=0
else
   DM1.Query1.ParamByName('DATEMB').AsString  :=FormatDateTime(fdt, StrToDate(DATEMB.Text));
DM1.Query1.ParamByName('HREMB').AsString      :=HOREMB.Text;
DM1.Query1.ParamByName('HRCON').AsString      :=HORDIG.Text;

Try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
except
  ex_erroSql(01,1347,'Frm_Rom','CADRM2');
  end;
result:=true;
end;
procedure TFrm_Rom.BBEXCLUIRClick(Sender: TObject);
begin
if ValFloat(CHAVEROM.Text)<=0 then
   begin
   MessageDlg('Não Ha Registro a ser Excluido!',mtWarning,[mbOk],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir Este Romaneio,',0,['1','2'],2)=mrYes then
   begin
   fRomgant(9);
   fromExcluir(0);
   MessageDlg('Pedido Excluido!',mtWarning,[mbOk],0);
   BBLIMPAR.Click;
   end;

end;

procedure TFrm_Rom.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'Frm_Rom',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Rom.Qr_RM1CalcFields(DataSet: TDataSet);
begin
Qr_RM1codcli.Value     :=DM1.Tb_CliCCODCLI.Value;
Qr_RM1razaosocial.Value:=DM1.Tb_CliCRAZAO.Value;
Qr_RM1denominacao.Value:=DM1.Tb_CliCDENOM.Value;
Qr_RM1endereco.Value   :=DM1.Tb_CliCLOG.Value;
Qr_RM1bairro.Value     :=DM1.Tb_CliCBAIRRO.Value;
Qr_RM1cidade.Value     :=Trim(DM1.Tb_CliCCIDADE.Value)+'-'+DM1.Tb_CliCUF.Value;
Qr_RM1cep.Value        :=DM1.Tb_CliCCEP.Value;
Qr_RM1total.Value      :=ValFloat(TOTAL.Caption);
end;

procedure TFrm_Rom.Qr_RM2CalcFields(DataSet: TDataSet);
begin
if flqr1('PDNOME,PDUND','PD','CADPRO','N','PDCODPRO',Qr_RM2R2_CODPRO.AsString) then
   begin
   Qr_RM2nome.Value:=DM1.Query1.Fields[0].AsString;
   Qr_RM2und.Value :=DM1.Query1.Fields[1].AsString;
   end;
Qr_RM2valortotal.Value:=Arredonda((Qr_RM2R2_QTD.Value*Qr_RM2R2_PRECO.Value),DM1.Tb_PargerPCASAS.AsInteger);
end;

procedure TFrm_Rom.BBIMPRIMIRClick(Sender: TObject);
begin
if ValFloat(CHAVEROM.Text)<=0 then
   begin
   MessageDlg('Não Ha Registro a ser Impresso!',mtWarning,[mbOk],0);
   exit;
   end;
BBIMPRIMIR.Enabled:=false;
Qr_RM2.Close;
Qr_RM2R2_PRECO.DisplayFormat  :=mcasaspu;
Qr_RM2R2_QTD.DisplayFormat    :=mcasqtd;
Qr_RM2valortotal.DisplayFormat:=mcasas;
Qr_RM1total.DisplayFormat     :=mcasas;

Qr_RM1.Close;
Qr_RM1.SQL.Clear;
Qr_RM1.SQL.add('Select * from CADRM1 where '
              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' R1_CODEMP=0'+IntToStr(codemp)+' and ')
              +' R1_LOTSEQ=0'+IntToSTr(ls_numped)
              +' and R1_CHAVE=0'+Trim(CHAVE.Text)
              +' and R1_CODIGO=0'+DM4.Tb_Rm1R1_CODIGO.AsString);
Qr_RM1.Open;
if Qr_RM1.Eof then
   begin
   MessageDlg('Nada ha ser impresso!',mtWarning,[mbOk],0);
   exit;
   end;
Qr_RM2.Close;
Qr_RM2.SQL.Clear;
Qr_RM2.SQL.add('Select * from CADRM2 where '
              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' R2_CODEMP=0'+IntToStr(codemp)+' and ')
              +' R2_LOTSEQ=0'+IntToStr(ls_numped)
              +' and R2_CHAVE=0'+Trim(CHAVE.Text)
              +' and R2_CODIGO=0'+DM4.Tb_Rm1R1_CODIGO.AsString
              +' order by R2_LOTSEQ,R2_CHAVE,R2_CODIGO,R2_ITEM');
Qr_RM2.Open;

Application.CreateForm(TQr_Rom, Qr_Rom);
if FileExists(DM1.Tb_PargerPCAMINHO.Value+'LOGO1.JPG') then
   begin
   Qr_Rom.QR_IMGLOGO.Picture.LoadFromFile(DM1.Tb_PargerPCAMINHO.Value+'LOGO1.JPG');
   Qr_Rom.QR_IMGLOGO.Enabled:=True;
   end
else
   Qr_Rom.QR_IMGLOGO.Enabled:=False;
verteclado(0);
Qr_Rom.PreviewModal;
Qr_Rom.Free;
BBIMPRIMIR.Enabled:=true;

end;

procedure TFrm_Rom.CHAVEEnter(Sender: TObject);
begin
If BBGRAVAR.Enabled then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes: BBGRAVAR.Click;
      mrNo : BBLIMPAR.Click;
      else begin
          CODPRO.SetFocus;
          abort;
          end;
      end;
   end;
end;

procedure TFrm_Rom.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
If BBGRAVAR.Enabled then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes: bbGRAVAR.Click;
      mrNo : BBLIMPAR.Click;
      else CanClose:=False;
      end;
   end;

end;

function fRomgant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(R1_CODNOV) from OLD_CADRM1');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADRM1 (';
v:='';
for x:=0 to DM4.Tb_Rm1.FieldCount-1 do
   begin
   if DM4.Tb_Rm1.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM4.Tb_Rm1.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',R1_CODNOV) Select ';
v:='';
for x:=0 to DM4.Tb_Rm1.FieldCount-1 do
   begin
  if DM4.Tb_Rm1.Fields[x].FieldKind=fkCalculated then
      Continue;
   if DM4.Tb_Rm1.Fields[x].FieldName='R1_USRMOD' then
      minstru:=minstru+v+FormatFloat('00000',codusr)+' as R1_USRMOD '
   else if DM4.Tb_Rm1.Fields[x].FieldName='R1_DTMOD' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fdt,date)+chr(39)+' as R1_DTMOD '
   else if DM4.Tb_Rm1.Fields[x].FieldName='R1_HRMOD' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fhr,time)+chr(39)+' as R1_HRMOD '
   else
      minstru:=minstru+v+DM4.Tb_Rm1.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as R1_CODNOV ';
minstru:=minstru+' from CADRM1 where R1_CODEMP=0'+DM4.Tb_Rm1R1_CODEMP.AsString
                +' and R1_LOTSEQ=0'+DM4.Tb_Rm1R1_LOTSEQ.AsString
                +' and R1_CHAVE=0'+DM4.Tb_Rm1R1_CHAVE.AsString
                +' and R1_CODIGO=0'+DM4.Tb_Rm1R1_CODIGO.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
except
  ex_erroSql(01,1692,'Frm_Rom','CADRM1');
  end;

minstru:='Insert into OLD_CADRM2 (';
v:='';
for x:=0 to DM4.Tb_Rm2.FieldCount-1 do
   begin
   if DM4.Tb_Rm2.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM4.Tb_Rm2.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',R2_CODNOV) Select ';
v:='';
for x:=0 to DM4.Tb_Rm2.FieldCount-1 do
   begin
   if DM4.Tb_Rm2.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM4.Tb_Rm2.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as R2_CODNOV ';
minstru:=minstru+' from CADRM2 where R2_CODEMP=0'+DM4.Tb_Rm2R2_CODEMP.AsString
                +' and R2_LOTSEQ=0'+DM4.Tb_Rm2R2_LOTSEQ.AsString
                +' and R2_CHAVE=0'+DM4.Tb_Rm2R2_CHAVE.AsString
                +' and R2_CODIGO=0'+DM4.Tb_Rm2R2_CODIGO.AsString
                +' order by R2_ITEM';
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
except
  ex_erroSql(01,1728,'Frm_Rom','CADRM1');
  end;

result:=True;
end;


function tfrm_Rom.fRomlerant(ptipo: Integer):Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;

begin
minstru:=' Select ';
v:='';
for x:=0 to DM4.Tb_Rm1.FieldCount-1 do
   begin
   if DM4.Tb_Rm1.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM4.Tb_Rm1.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADRM1 where R1_CODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM4.Tb_Rm1.Close;
DM4.Tb_Rm1.SQL.Clear;
DM4.Tb_Rm1.SQL.add(minstru);
DM4.Tb_Rm1.Open;


minstru:=' Select ';
v:='';
for x:=0 to DM4.Tb_Rm2.FieldCount-1 do
   begin
   if DM4.Tb_Rm2.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM4.Tb_Rm2.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADRM2 where R2_CODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM4.Tb_Rm2.Close;
DM4.Tb_Rm2.SQL.Clear;
DM4.Tb_Rm2.SQL.add(minstru);
DM4.Tb_Rm2.Open;

BBINCLUIR.Enabled   :=False;
BBLIMPAR.Enabled    :=False;
BBALTERAR.Enabled   :=False;
BBGRAVAR.Enabled    :=False;
BBLIMPAR.Enabled    :=False;
BBIMPRIMIR.Enabled  :=False;
bbImprimir02.Enabled:=False;
BBEXCLUIR.Enabled   :=False;
CHAVEROM.ReadOnly   :=true;
bb_Pesquisar.Enabled:=False;
Result:=True;
end;

procedure TFrm_Rom.FormActivate(Sender: TObject);
begin
if Rom_ori='consulta' then
   begin
   fCarrega(0);
   end;
end;

procedure TFrm_Rom.bbImprimir02Click(Sender: TObject);
begin
if ValFloat(CHAVEROM.Text)<=0 then
   begin
   MessageDlg('Não Ha Registro a ser Impresso!',mtWarning,[mbOk],0);
   exit;
   end;

bbImprimir02.Enabled:=false;
Qr_RM2.Close;
Qr_RM2R2_PRECO.DisplayFormat  :=mcasaspu;
Qr_RM2R2_QTD.DisplayFormat    :=mcasqtd;
Qr_RM2valortotal.DisplayFormat:=mcasas;
Qr_RM1total.DisplayFormat     :=mcasas;

Qr_RM1.Close;
Qr_RM1.SQL.Clear;
Qr_RM1.SQL.add('Select * from CADRM1 where '
              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' R1_CODEMP=0'+IntToStr(codemp)+' and ')
              +' R1_LOTSEQ=0'+IntToStr(ls_numped)
              +' and R1_CHAVE=0'+Trim(CHAVE.Text)
              +' and R1_CODIGO=0'+DM4.Tb_Rm1R1_CODIGO.AsString);
Qr_RM1.Open;
if Qr_RM1.Eof then
   begin
   MessageDlg('Nada ha ser impresso!',mtWarning,[mbOk],0);
   exit;
   end;
Application.CreateForm(TQr_Rom02, Qr_Rom02);
Application.CreateForm(TFrm_CabRom, Frm_CabRom);
Frm_CabRom.razsoc.Text:=Qr_RM1razaosocial.Value;
Frm_CabRom.nomfan.Text:=Qr_RM1denominacao.Value;
Frm_CabRom.ShowModal;
Qr_Rom02.razaosocial.Caption:=Frm_CabRom.razsoc.Text;
Qr_Rom02.denominacao.Caption:=Frm_CabRom.nomfan.Text;
Frm_CabRom.Free;

Qr_RM2.Close;
Qr_RM2.SQL.Clear;
Qr_RM2.SQL.add('Select * from CADRM2 where '
              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' R2_CODEMP=0'+IntToStr(codemp)+' and ')
              +' R2_LOTSEQ=0'+IntTosTr(ls_numped)
              +' and R2_CHAVE=0'+Trim(CHAVE.Text)
              +' and R2_CODIGO=0'+DM4.Tb_Rm1R1_CODIGO.AsString
              +' order by R2_CHAVE,R2_ITEM,R2_CODIGO');
Qr_RM2.Open;
verteclado(0);
Qr_Rom02.PreviewModal;
Qr_Rom02.Free;
bbImprimir02.Enabled:=true;
end;

procedure TFrm_Rom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

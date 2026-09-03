unit s_PedEnt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, Mask, ToolEdit, Buttons,
  RLReport, S_SelEmp, ExtCtrls;

type
  TFrm_PedEnt = class(TForm)
    GroupBox1: TGroupBox;
    DT1: TDateEdit;
    DT2: TDateEdit;
    Ds_PEnt: TDataSource;
    DBGrid1: TDBGrid;
    TB_PEnt: TQuery;
    bb_Aplicar: TBitBtn;
    bb_Imprimir: TBitBtn;
    bb_sair: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    RLReport1: TRLReport;
    RLBand2: TRLBand;
    rlband_cabger: TRLBand;
    RLDBText1: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    rlTitulo: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    rl_data: TRLLabel;
    chave: TRLLabel;
    RAZSOC: TRLLabel;
    telefone: TRLLabel;
    dataent: TRLLabel;
    horaent: TRLLabel;
    totalqtd: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    TB_PEntP1CHAVE: TFloatField;
    TB_PEntP1DATAP: TDateTimeField;
    TB_PEntP1CODCLI: TFloatField;
    TB_PEntCRAZAO: TStringField;
    TB_PEntCFONE01: TStringField;
    TB_PEntP1CODVEN: TFloatField;
    TB_PEntVNOME: TStringField;
    TB_PEntP1QTDVOL: TFloatField;
    cb_data: TCheckBox;
    RG: TRadioGroup;
    TB_PEntCBAIRRO: TStringField;
    TB_PEntCCIDADE: TStringField;
    RL_VEND: TRLLabel;
    RLDBText8: TRLDBText;
    rg_entrega: TRadioGroup;
    TB_PEntP1PREVENT: TStringField;
    TB_PEntP1HPREVENT: TStringField;
    procedure bb_AplicarClick(Sender: TObject);
    procedure bb_sairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bb_ImprimirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PedEnt: TFrm_PedEnt;
  Form_SelEmp: TFrm_SelEmp;

implementation

uses S_DM1, Func, lerarq;

{$R *.dfm}

procedure TFrm_PedEnt.bb_AplicarClick(Sender: TObject);
var
  datas: String;
begin
if cb_data.Checked then
  datas:='P1PREVENT'
else
  datas:='P1DATAP';
TB_PEnt.Close;
TB_PEnt.SQL.Clear;
TB_PEnt.SQL.Add(' SELECT P1CHAVE, P1DATAP, P1CODCLI, CRAZAO, CFONE01, P1CODVEN, VNOME,'
               +' TO_CHAR( P1PREVENT,'+quotedstr('DD/MM/YYYY')+') AS  P1PREVENT, '
               +' TO_CHAR( P1PREVENT,'+quotedstr('hh24:mm')+') AS  P1hPREVENT, '
               +' P1QTDVOL, CBAIRRO, CCIDADE ');
TB_PEnt.SQL.Add(' FROM CADP01, CADCLI, CADVEN ');
TB_PEnt.SQL.Add(' WHERE P1CODTRA>0 AND P1CODCLI(+)=CCODCLI AND VCODVEN(+)=P1CODVEN ');
if trim(DT1.Text)<>'/  /' then
  TB_PEnt.SQL.Add(' AND '+datas+'>='+chr(39)+DT1.Text+chr(39));
if trim(DT2.Text)<>'/  /' then
  TB_PEnt.SQL.Add(' AND '+datas+'<='+chr(39)+DT2.Text+chr(39));
if rg.ItemIndex=0 then
  begin
  TB_PEnt.SQL.Add(' AND P1EMIDOC=0 ');
  end
else if rg.ItemIndex=1 then
  begin
  TB_PEnt.SQL.Add(' AND P1EMIDOC=1 ');
  end;
if rg_entrega.ItemIndex=0 then
   TB_PEnt.SQL.Add(' and (P1DATENT is null or P1DATENT<='+chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+')')
else if rg_entrega.ItemIndex=1 then
   TB_PEnt.SQL.Add(' and (P1DATENT >'+chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+')');
TB_PEnt.SQL.Add(' order by '+datas);
try
  TB_PEnt.Open;
except
  TB_PEnt.SQL.SaveToFile(mpastatemp +'sql.txt');
  end;
if (trim(DT1.Text)<>'/  /') and (trim(DT2.Text)<>'/  /') then
  begin
  rl_data.Caption:='De '+DT1.Text+' à '+DT2.Text+'.';
  end
else if (trim(DT1.Text)<>'/  /') then
  begin
  rl_data.Caption:='Apartir de '+DT1.Text+'.';
  end
else if (trim(DT2.Text)<>'/  /') then
  begin
  rl_data.Caption:='Até a data'+DT1.Text+'.';
  end
else
  begin
  rl_data.Caption:='Sem Periodo pre-definido.';
  end;
end;

procedure TFrm_PedEnt.bb_sairClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_PedEnt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree

end;

procedure TFrm_PedEnt.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp,Form_SelEmp);
end;

procedure TFrm_PedEnt.bb_ImprimirClick(Sender: TObject);
begin
DM1.Tb_Emp.Close;
DM1.Tb_Emp.SQL.Clear;
DM1.Tb_Emp.SQL.Add(' select * from cademp ');
DM1.Tb_Emp.SQL.Add(' where codemp='+IntToStr(codemp));
DM1.TB_Emp.Open;
bb_AplicarClick(Self);
RLReport1.PreviewModal;
end;

procedure TFrm_PedEnt.FormKeyDown(Sender: TObject; var Key: Word;
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

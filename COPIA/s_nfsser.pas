unit s_nfsser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, Mask, ToolEdit, ExtCtrls,
  RLReport;

type
  Tfrm_nfsser = class(TForm)
    Panel1: TPanel;
    lbl_cab: TLabel;
    dtini: TDateEdit;
    Label1: TLabel;
    dtfin: TDateEdit;
    cb_sonfe: TCheckBox;
    bb_buscar: TButton;
    Panel2: TPanel;
    dbg: TDBGrid;
    qry1: TQuery;
    ds1: TDataSource;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLNF: TRLLabel;
    RLDATANF: TRLLabel;
    RL_CLIENTE: TRLLabel;
    RL_CGC: TRLLabel;
    RL_BASE: TRLLabel;
    RL_VALOR: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    bb_imprimir: TButton;
    rl_total_nf: TRLLabel;
    RLDBText7: TRLDBText;
    qry1CPF_CNPJ: TStringField;
    qry1P1CHAVE: TFloatField;
    qry1P1CODCLI: TFloatField;
    qry1P1DATANF: TDateTimeField;
    qry1P1MODELO: TStringField;
    qry1P1BCISSQN: TFloatField;
    qry1P1VISSQN: TFloatField;
    qry1CRAZAO: TStringField;
    qry1CTPPESSOA: TFloatField;
    qry1CCNPJ: TFloatField;
    qry1CCPF: TFloatField;
    qry1P1NUMNF: TFloatField;
    qry1P1TOTALL: TFloatField;
    RLBand3: TRLBand;
    rl_tot_nf: TRLLabel;
    RLLabel5: TRLLabel;
    rl_tot_base_issqn: TRLLabel;
    RLLabel4: TRLLabel;
    rg_tiponf: TRadioGroup;
    qry1P1BASEN: TFloatField;
    qry1P1ICMSN: TFloatField;
    BASEICMS: TRLLabel;
    VALICMS: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    rl_tot_base_icms: TRLLabel;
    RLLabel6: TRLLabel;
    RLAngleLabel1: TRLAngleLabel;
    rg_ordem: TRadioGroup;
    procedure qry1CalcFields(DataSet: TDataSet);
    procedure bb_buscarClick(Sender: TObject);
    procedure bb_imprimirClick(Sender: TObject);
    procedure RLBand3AfterPrint(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2AfterPrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rg_tiponfClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_nfsser: Tfrm_nfsser;
  tot_baseISQN : Real=0;
  tot_baseICMS : Real=0;
  tot_ISQN : Real=0;
  tot_ICMS : Real=0;
  tot_nf   : Real=0;

implementation

uses Math, Func, MaskUtils, Func2;

{$R *.dfm}

procedure Tfrm_nfsser.qry1CalcFields(DataSet: TDataSet);
begin
qry1P1BASEN.DisplayFormat  :=mcasas;
qry1P1ICMSN.DisplayFormat  :=mcasas;
qry1P1BCISSQN.DisplayFormat:=mcasas;
qry1P1VISSQN.DisplayFormat :=mcasas;
qry1P1TOTALL.DisplayFormat :=mcasas;


if qry1CTPPESSOA.AsInteger=0 then
  begin
  qry1CPF_CNPJ.AsString:=FormatMaskText('!000000000\-00;0;',COMPLETA_COM(qry1CCPF.AsString,'0',11,0));
  end
else
  begin
  qry1CPF_CNPJ.AsString:=FormatMaskText('!000\.000\.000\/0000\-00;0',COMPLETA_COM(qry1CCNPJ.AsString,'0',14,0));
  end;
end;

procedure Tfrm_nfsser.bb_buscarClick(Sender: TObject);
begin
qry1.Close;
qry1.SQL.Clear;
qry1.SQL.Add(' SELECT                                                        '
            +'  P1CHAVE, P1CODCLI, P1DATANF, P1MODELO, P1BCISSQN, P1BASEN, P1ICMSN, '
            +'  P1VISSQN, CRAZAO, CTPPESSOA, CCNPJ, CCPF, P1NUMNF, '
            +'  P1TOTALL + P1ICMSR AS P1TOTALL '
            +' FROM CADP01, CADCLI                                           '
            +' WHERE                                                         '
            +' CCODCLI=P1CODCLI AND P1STATUS=2 AND P1CODEMP=1  '
            +' AND P1TIPO=1 and p1emidoc=1      ');
if rg_tiponf.ItemIndex=0 then
  begin
  qry1.SQL.Add(' AND P1TOTALL>0 ');
  end
else if rg_tiponf.ItemIndex=1 then
  begin
  qry1.SQL.Add(' AND P1TOTSERLIQ>0 ');
  end;

if (trim(dtini.Text)<>'/  /') then
  begin
  qry1.SQL.Add(' AND P1DATANF>='+chr(39)+dtini.Text+chr(39));
  end;
if (trim(dtfin.Text)<>'/  /') then
  begin
  qry1.SQL.Add(' AND P1DATANF<='+chr(39)+dtfin.Text+chr(39));
  end;
if cb_sonfe.Checked=True then
  begin
  qry1.SQL.Add(' AND P1MODELO='+chr(39)+'55'+chr(39));
  end;
if rg_ordem.ItemIndex=0 then
  qry1.SQL.Add(' ORDER BY P1DATAP, P1NUMNF')
else
  qry1.SQL.Add(' ORDER BY P1NUMNF, P1DATAP');
qry1.Open;
end;

procedure Tfrm_nfsser.bb_imprimirClick(Sender: TObject);
begin
bb_buscarClick(self);
if qry1.IsEmpty then
  begin
  fmensagem('Não a nada a ser impresso!',0,['0'],0);
  Exit;
  end
else
  begin
  RLReport1.PreviewModal;
  end;
end;

procedure Tfrm_nfsser.RLBand3AfterPrint(Sender: TObject);
begin
tot_baseISQN:=0;
tot_baseICMS:=0;
tot_ISQN:=0;
tot_ICMS:=0;
tot_nf  :=0;
end;

procedure Tfrm_nfsser.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_tot_base_issqn.Caption:='R$ '+FormatFloat('###,##0.00',tot_baseISQN);
rl_tot_base_icms.Caption:='R$ '+FormatFloat('###,##0.00',tot_baseICMS);
rl_tot_nf.Caption :='R$ '+FormatFloat('###,##0.00',tot_nf);
end;

procedure Tfrm_nfsser.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
tot_baseISQN:=0;
tot_baseICMS:=0;
tot_ISQN:=0;
tot_ICMS:=0;
tot_nf  :=0;
end;

procedure Tfrm_nfsser.RLBand2AfterPrint(Sender: TObject);
begin
tot_baseISQN:=tot_baseISQN+qry1P1BCISSQN.AsFloat;
tot_baseICMS:=tot_baseICMS+qry1P1BASEN.AsFloat;
tot_ISQN:=tot_ISQN+qry1P1VISSQN.AsFloat;
tot_ICMS:=tot_ICMS+qry1P1ICMSN.AsFloat;
tot_nf :=tot_nf+qry1P1TOTALL.AsFloat;
end;

procedure Tfrm_nfsser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure Tfrm_nfsser.rg_tiponfClick(Sender: TObject);
begin
if rg_tiponf.ItemIndex=0 then
  begin
  dbg.Columns[4].Visible:=True;
  dbg.Columns[5].Visible:=True;
  dbg.Columns[6].Visible:=False;
  dbg.Columns[7].Visible:=False;
  end
else if rg_tiponf.ItemIndex=1 then
  begin
  dbg.Columns[4].Visible:=False;
  dbg.Columns[5].Visible:=False;
  dbg.Columns[6].Visible:=True;
  dbg.Columns[7].Visible:=True;
  end
else
  begin
  dbg.Columns[4].Visible:=True;
  dbg.Columns[5].Visible:=True;
  dbg.Columns[6].Visible:=True;
  dbg.Columns[7].Visible:=True;
  end;
end;

end.

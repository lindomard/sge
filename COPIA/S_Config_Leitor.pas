unit S_Config_Leitor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,S_LOptica,S_DM4,func,S_DM1,db,dbtables,
  RDComms, ComCtrls, Grids, DBGrids, Mask, DBCtrls;

type
  TFrm_Config_Leitor = class(TForm)
    RG_TIPO: TRadioGroup;
    Panel1: TPanel;
    bbSalvar: TBitBtn;
    bbTestar: TBitBtn;
    BitBtn3: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cbPorta: TComboBox;
    cbVelocidade: TComboBox;
    cbParidade: TComboBox;
    cbData: TComboBox;
    cbStop: TComboBox;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    CB_CTSOUTPUT: TCheckBox;
    CB_DSROUTPUT: TCheckBox;
    CB_XONXOFFOUT: TCheckBox;
    CB_XONXOFFINP: TCheckBox;
    RG_RTSINPUT: TRadioGroup;
    RG_DTRINPUT: TRadioGroup;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBGrid1: TDBGrid;
    Label56: TLabel;
    DBEdit1: TDBEdit;
    Label57: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DB_CODBCO_PI: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label58: TLabel;
    DBEdit15: TDBEdit;
    Label59: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Label60: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label61: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    Label67: TLabel;
    Label68: TLabel;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    Label69: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    Label70: TLabel;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    Label71: TLabel;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    bb_Padrao: TBitBtn;
    DBNavigator1: TDBNavigator;
    procedure BitBtn3Click(Sender: TObject);
    procedure bbTestarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSalvarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  function fConfigLCriaParam(ptipo: Integer): Boolean;
  function fConfigTestaPodDoc(ptipo: Integer): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;
  function fconfigZeraTodos(ptipo: Integer): Boolean;

var
  Frm_Config_Leitor: TFrm_Config_Leitor;

implementation

uses func_excecoes, S_LOptico_Res, lerarq;

{$R *.dfm}


procedure TFrm_Config_Leitor.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Config_Leitor.bbTestarClick(Sender: TObject);
var
mLido: String;
begin
fConfigLCriaParam(1);

Application.CreateForm(TFrm_LOptica, Frm_LOptica);
Frm_LOptica.ShowModal;
Application.CreateForm(TFrm_LOptico_Res, Frm_LOptico_Res);
Frm_LOptico_Res.ShowModal;
Frm_LOptica.Free;
Frm_LOptica:=nil;
Frm_LOptico_Res.Free;
Frm_LOptico_Res:=nil;
end;

procedure TFrm_Config_Leitor.FormCreate(Sender: TObject);
begin

DM4.Tb_Leitor.Close;
DM4.Tb_Leitor.ParamByName('NOMECOMP').AsString:=pNomTer;
DM4.Tb_Leitor.ParamByName('MARCABAL').AsFloat :=0;
DM4.Tb_Leitor.Open;
if DM4.Tb_Leitor.Eof then
   begin
   with cbPorta do ItemIndex:=Items.IndexOf(cbPorta.text);
   cbPorta.text:=cbPorta.items[cbPorta.itemIndex];
   with cbvelocidade do ItemIndex:=Items.IndexOf(cbvelocidade.text);
   cbvelocidade.text:=cbvelocidade.items[cbvelocidade.itemIndex];
   with cbParidade do ItemIndex:=Items.IndexOf(cbParidade.text);
   cbParidade.text:=cbParidade.items[cbParidade.itemIndex];
   with cbData do ItemIndex:=Items.IndexOf(cbData.text);
   cbData.text:=cbData.items[cbData.itemIndex];
   with cbStop do ItemIndex:=Items.IndexOf(cbStop.text);
   cbStop.text:=cbStop.items[cbStop.itemIndex];
   fConfigLCriaParam(0);
   end
else
   begin
   RG_TIPO.ItemIndex     :=DM4.Tb_LeitorLO_TIPO.AsInteger;
   cbPorta.ItemIndex     :=DM4.Tb_LeitorLO_PORTA.AsInteger;
   cbVelocidade.ItemIndex:=DM4.Tb_LeitorLO_VELOCIDADE.AsInteger;
   cbParidade.ItemIndex  :=DM4.Tb_LeitorLO_PARIDADE.AsInteger;
   cbData.ItemIndex      :=DM4.Tb_LeitorLO_DATABITS.AsInteger;
   cbStop.ItemIndex      :=dm4.Tb_LeitorLO_STOPBITS.AsInteger;
   if not DM4.Tb_LeitorLO_RTSINPUT.IsNull then
      RG_RTSINPUT.ItemIndex:=DM4.Tb_LeitorLO_RTSINPUT.AsInteger;
   if not DM4.Tb_LeitorLO_DTRINPUT.IsNull then
      RG_DTRINPUT.ItemIndex:=DM4.Tb_LeitorLO_DTRINPUT.AsInteger;
   if not DM4.Tb_LeitorLO_CTSOUTPUT.IsNull then
      CB_CTSOUTPUT.Checked :=DM4.Tb_LeitorLO_CTSOUTPUT.AsInteger=1;
   if not DM4.Tb_LeitorLO_DSROUTPUT.IsNull then
      CB_DSROUTPUT.Checked :=DM4.Tb_LeitorLO_DSROUTPUT.AsInteger=1;
   if not DM4.Tb_LeitorLO_XONXOFFOUT.IsNull then
      CB_XONXOFFOUT.Checked :=DM4.Tb_LeitorLO_XONXOFFOUT.AsInteger=1;
   if not DM4.Tb_LeitorLO_XONXOFFINP.IsNull then
      CB_XONXOFFINP.Checked :=DM4.Tb_LeitorLO_XONXOFFINP.AsInteger=1;
   end;
flPosDoc(0,0,'');
fConfigTestaPodDoc(0);
flPosDoc(0,0,'');

end;

function TFrm_config_Leitor.fConfigLCriaParam(ptipo: Integer): Boolean;
begin
DM1.Query1.Close;
DM1.Query1.sql.clear;
DM1.Query1.Params.CreateParam(ftString,'NOMECOMP',ptInput);
DM1.Query1.Params.CreateParam(ftString,'TIPO',ptInput);
DM1.Query1.Params.CreateParam(ftString,'LO_MARCABAL',ptInput);
DM1.Query1.Params.CreateParam(ftString,'LO_MODBAL',ptInput);


DM1.Query1.Params.CreateParam(ftString,'PORTA',ptInput);
DM1.Query1.Params.CreateParam(ftString,'VELOCIDADE',ptInput);
DM1.Query1.Params.CreateParam(ftString,'PARIDADE',ptInput);
DM1.Query1.Params.CreateParam(ftString,'DATABITS',ptInput);
DM1.Query1.Params.CreateParam(ftString,'STOPBITS',ptInput);
DM1.Query1.Params.CreateParam(ftString,'RTSINPUT',ptInput);
DM1.Query1.Params.CreateParam(ftString,'DTRINPUT',ptInput);
DM1.Query1.Params.CreateParam(ftString,'CTSOUTPUT',ptInput);
DM1.Query1.Params.CreateParam(ftString,'DSROUTPUT',ptInput);
DM1.Query1.Params.CreateParam(ftString,'XONXOFFOUT',ptInput);
DM1.Query1.Params.CreateParam(ftString,'XONXOFFINP',ptInput);

if ptipo=0 then
   begin
   DM1.Query1.SQL.Add('Insert into CADPARL ('
                     +'LO_NOMECOMP, '
                     +'LO_TIPO, '
                     +'LO_PORTA, '
                     +'LO_MARCABAL,'
                     +'LO_MODBAL,'
                     +'LO_VELOCIDADE, '
                     +'LO_PARIDADE, '
                     +'LO_DATABITS, '
                     +'LO_STOPBITS, '
                     +'LO_RTSINPUT, '
                     +'LO_DTRINPUT, '
                     +'LO_CTSOUTPUT, '
                     +'LO_DSROUTPUT, '
                     +'LO_XONXOFFOUT, '
                     +'LO_XONXOFFINP ) Values ('
                     +':NOMECOMP, '
                     +':TIPO, '
                     +':PORTA,'
                     +':LO_MARCABAL,'
                     +':LO_MODBAL,'
                     +':VELOCIDADE, '
                     +':PARIDADE, '
                     +':DATABITS, '
                     +':STOPBITS, '
                     +':RTSINPUT, '
                     +':DTRINPUT, '
                     +':CTSOUTPUT, '
                     +':DSROUTPUT, '
                     +':XONXOFFOUT, '
                     +':XONXOFFINP) ');
   end
else
   begin
   DM1.Query1.SQL.Add('Update CADPARL set '
                     +'LO_TIPO       =:TIPO, '
                     +'LO_PORTA      =:PORTA, '
                     +'LO_MARCABAL   =:LO_MARCABAL,'
                     +'LO_MODBAL     =:LO_MODBAL,'
                     +'LO_VELOCIDADE =:VELOCIDADE, '
                     +'LO_PARIDADE   =:PARIDADE, '
                     +'LO_DATABITS   =:DATABITS, '
                     +'LO_STOPBITS   =:STOPBITS,'
                     +'LO_RTSINPUT   =:RTSINPUT, '
                     +'LO_DTRINPUT   =:DTRINPUT, '
                     +'LO_CTSOUTPUT  =:CTSOUTPUT, '
                     +'LO_DSROUTPUT  =:DSROUTPUT, '
                     +'LO_XONXOFFOUT =:XONXOFFOUT, '
                     +'LO_XONXOFFINP =:XONXOFFINP where '
                     +'LO_NOMECOMP   =:NOMECOMP');
   end;
DM1.Query1.ParamByName('NOMECOMP').AsString    :=pNomTer;
DM1.Query1.ParamByName('TIPO').AsInteger       :=RG_TIPO.ItemIndex;
DM1.Query1.ParamByName('PORTA').AsInteger      :=cbPorta.ItemIndex;
DM1.Query1.ParamByName('LO_MARCABAL').AsInteger:=0;
DM1.Query1.ParamByName('LO_MODBAL').AsInteger  :=0;

DM1.Query1.ParamByName('VELOCIDADE').AsInteger :=cbVelocidade.ItemIndex;
DM1.Query1.ParamByName('PARIDADE').AsInteger   :=cbParidade.ItemIndex;
DM1.Query1.ParamByName('DATABITS').AsInteger   :=cbData.ItemIndex;
DM1.Query1.ParamByName('STOPBITS').AsInteger   :=cbStop.ItemIndex;

DM1.Query1.ParamByName('RTSINPUT').AsInteger   :=RG_RTSINPUT.ItemIndex;
DM1.Query1.ParamByName('DTRINPUT').AsInteger   :=RG_DTRINPUT.ItemIndex;
DM1.Query1.ParamByName('CTSOUTPUT').AsInteger  :=iif(CB_CTSOUTPUT.Checked,1,0);
DM1.Query1.ParamByName('DSROUTPUT').AsInteger  :=iif(CB_DSROUTPUT.Checked,1,0);
DM1.Query1.ParamByName('XONXOFFOUT').AsInteger :=iif(CB_XONXOFFOUT.Checked,1,0);
DM1.Query1.ParamByName('XONXOFFINP').AsInteger :=iif(CB_XONXOFFINP.Checked,1,0);

Try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
  result:=True;
except
  ex_erroSql(01,147,'Frm_Config_Leitor','CADPARL');
  result:=False;
  end;
end;
procedure TFrm_Config_Leitor.bbSalvarClick(Sender: TObject);
begin
fConfigLCriaParam(1);
end;

procedure TFrm_Config_Leitor.SpeedButton2Click(Sender: TObject);
begin
     RG_DTRINPUT.ItemIndex := 1;
     CB_DSROUTPUT.Checked := True;

end;

procedure TFrm_Config_Leitor.SpeedButton3Click(Sender: TObject);
begin
     CB_XONXOFFOUT.Checked := True;
     CB_XONXOFFINP.Checked := True;

end;

procedure TFrm_Config_Leitor.SpeedButton4Click(Sender: TObject);
begin
     CB_CTSOUTPUT.Checked := False;
     CB_DSROUTPUT.Checked := False;
     CB_XONXOFFOUT.Checked := False;
     CB_XONXOFFINP.Checked := False;
     RG_RTSINPUT.ItemIndex := 0;
     RG_DTRINPUT.ItemIndex := 0;

end;

procedure TFrm_Config_Leitor.SpeedButton1Click(Sender: TObject);
begin
     RG_RTSINPUT.ItemIndex := 2;
     CB_CTSOUTPUT.Checked := True;

end;

function TFrm_Config_Leitor.fConfigTestaPodDoc(ptipo: Integer): Boolean;
begin
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftstring,'PD_CODIGO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_DESCRICAO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_QTDBITES',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_CAMERA_PI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_CAMERA_TAM',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_CODBCO_PI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_CODBCO_TAM',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_AGENCIA_PI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_AGENCIA_TAM',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_COMP_PI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_COMP_TAM',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_NUMDOC_PI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_CONTA_PI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_CONTA_TAM',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_MOEDA_PI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_MOEDA_TAM',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_VCTO_PI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_VCTO_TAM',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_VALOR_PI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_VALOR_TAM',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_NOSSON_PI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_NOSSON_TAM',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_CODCED_PI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_CODCED_TAM',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_CODCAR_PI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_CODCAR_TAM',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_NUMNF_PI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_NUMNF_TAM',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_MESREF_PI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_MESREF_TAM',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_ANOREF_PI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_ANOREF_TAM',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_NUMDIV_PI',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_NUMDIV_TAM',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'PD_NUMDOC_TAM',ptinput);
DM1.Query2.SQL.Add('Insert into POSDOC ('
          +'PD_CODIGO'
          +',PD_DESCRICAO'
          +',PD_QTDBITES'
          +',PD_CAMERA_PI'
          +',PD_CAMERA_TAM'
          +',PD_CODBCO_PI'
          +',PD_CODBCO_TAM'
          +',PD_AGENCIA_PI'
          +',PD_AGENCIA_TAM'
          +',PD_COMP_PI'
          +',PD_COMP_TAM'
          +',PD_NUMDOC_PI'
          +',PD_CONTA_PI'
          +',PD_CONTA_TAM'
          +',PD_MOEDA_PI'
          +',PD_MOEDA_TAM'
          +',PD_VCTO_PI'
          +',PD_VCTO_TAM'
          +',PD_VALOR_PI'
          +',PD_VALOR_TAM'
          +',PD_NOSSON_PI'
          +',PD_NOSSON_TAM'
          +',PD_CODCED_PI'
          +',PD_CODCED_TAM'
          +',PD_CODCAR_PI'
          +',PD_CODCAR_TAM'
          +',PD_NUMNF_PI'
          +',PD_NUMNF_TAM'
          +',PD_MESREF_PI'
          +',PD_MESREF_TAM'
          +',PD_ANOREF_PI'
          +',PD_ANOREF_TAM'
          +',PD_NUMDIV_PI'
          +',PD_NUMDIV_TAM'
          +',PD_NUMDOC_TAM'
          +') Values  ('
          +':PD_CODIGO'
          +',:PD_DESCRICAO'
          +',:PD_QTDBITES'
          +',:PD_CAMERA_PI'
          +',:PD_CAMERA_TAM'
          +',:PD_CODBCO_PI'
          +',:PD_CODBCO_TAM'
          +',:PD_AGENCIA_PI'
          +',:PD_AGENCIA_TAM'
          +',:PD_COMP_PI'
          +',:PD_COMP_TAM'
          +',:PD_NUMDOC_PI'
          +',:PD_CONTA_PI'
          +',:PD_CONTA_TAM'
          +',:PD_MOEDA_PI'
          +',:PD_MOEDA_TAM'
          +',:PD_VCTO_PI'
          +',:PD_VCTO_TAM'
          +',:PD_VALOR_PI'
          +',:PD_VALOR_TAM'
          +',:PD_NOSSON_PI'
          +',:PD_NOSSON_TAM'
          +',:PD_CODCED_PI'
          +',:PD_CODCED_TAM'
          +',:PD_CODCAR_PI'
          +',:PD_CODCAR_TAM'
          +',:PD_NUMNF_PI'
          +',:PD_NUMNF_TAM'
          +',:PD_MESREF_PI'
          +',:PD_MESREF_TAM'
          +',:PD_ANOREF_PI'
          +',:PD_ANOREF_TAM'
          +',:PD_NUMDIV_PI'
          +',:PD_NUMDIV_TAM'
          +',:PD_NUMDOC_TAM'
          +')'
          );
if not DM4.Tb_PosDoc.Locate('PD_CODIGO',0,[]) then
   begin
   fconfigZeraTodos(0);
   DM1.Query2.ParambyName('PD_CODIGO').AsFloat     :=0;
   DM1.Query2.ParambyName('PD_DESCRICAO').AsString :='CHEQUES DIVERSOS';
   DM1.Query2.ParambyName('PD_QTDBITES').AsFloat   :=37;
   DM1.Query2.ParambyName('PD_CAMERA_PI').AsFloat  :=10;
   DM1.Query2.ParambyName('PD_CAMERA_TAM').AsFloat :=3;
   DM1.Query2.ParambyName('PD_CODBCO_PI').AsFloat  :=1;
   DM1.Query2.ParambyName('PD_CODBCO_TAM').AsFloat :=5;
   DM1.Query2.ParambyName('PD_AGENCIA_PI').AsFloat :=6;
   DM1.Query2.ParambyName('PD_AGENCIA_TAM').AsFloat:=4;
   DM1.Query2.ParambyName('PD_COMP_PI').AsFloat    :=12;
   DM1.Query2.ParambyName('PD_COMP_TAM').AsFloat   :=3;
   DM1.Query2.ParambyName('PD_NUMDOC_PI').AsFloat  :=15;
   DM1.Query2.ParambyName('PD_NUMDOC_TAM').AsFloat :=06;
   DM1.Query2.ParambyName('PD_CONTA_PI').AsFloat   :=25;
   DM1.Query2.ParambyName('PD_CONTA_TAM').AsFloat  :=9;
   DM1.Query2.ExecSQL;
   end;

if not DM4.Tb_PosDoc.Locate('PD_CODIGO',1,[]) then
   begin
   fconfigZeraTodos(0);
   DM1.Query2.ParambyName('PD_CODIGO').AsFloat     :=1;
   DM1.Query2.ParambyName('PD_DESCRICAO').AsString :='TITULOS DIVERSOS';
   DM1.Query2.ParambyName('PD_QTDBITES').AsFloat   :=37;
   DM1.Query2.ParambyName('PD_CAMERA_PI').AsFloat  :=10;
   DM1.Query2.ParambyName('PD_CAMERA_TAM').AsFloat :=3;
   DM1.Query2.ParambyName('PD_CODBCO_PI').AsFloat  :=1;
   DM1.Query2.ParambyName('PD_CODBCO_TAM').AsFloat :=4;
   DM1.Query2.ParambyName('PD_AGENCIA_PI').AsFloat :=21;
   DM1.Query2.ParambyName('PD_AGENCIA_TAM').AsFloat:=4;
   DM1.Query2.ParambyName('PD_COMP_PI').AsFloat    :=10;
   DM1.Query2.ParambyName('PD_COMP_TAM').AsFloat   :=3;
   DM1.Query2.ParambyName('PD_VALOR_PI').AsFloat   :=07;
   DM1.Query2.ParambyName('PD_VALOR_TAM').AsFloat  :=10;
   DM1.Query2.ParambyName('PD_CODCAR_PI').AsFloat  :=21;
   DM1.Query2.ParambyName('PD_CODCAR_TAM').AsFloat :=9;
   DM1.Query2.ParambyName('PD_MESREF_PI').AsFloat  :=34;
   DM1.Query2.ParambyName('PD_MESREF_TAM').AsFloat :=2;
   DM1.Query2.ParambyName('PD_ANOREF_PI').AsFloat  :=33;
   DM1.Query2.ParambyName('PD_ANOREF_TAM').AsFloat :=1;
   DM1.Query2.ParambyName('PD_NUMDIV_PI').AsFloat  :=36;
   DM1.Query2.ParambyName('PD_NUMDIV_TAM').AsFloat :=10;
   DM1.Query2.ExecSQL;
   end;

if not DM4.Tb_PosDoc.Locate('PD_CODIGO',8261,[]) then
   begin
   fconfigZeraTodos(0);
   DM1.Query2.ParambyName('PD_CODIGO').AsFloat     :=8261;
   DM1.Query2.ParambyName('PD_DESCRICAO').AsString :='SANEAGO';
   DM1.Query2.ParambyName('PD_QTDBITES').AsFloat   :=37;
   DM1.Query2.ParambyName('PD_CAMERA_PI').AsFloat  :=10;
   DM1.Query2.ParambyName('PD_CAMERA_TAM').AsFloat :=3;
   DM1.Query2.ParambyName('PD_CODBCO_PI').AsFloat  :=2;
   DM1.Query2.ParambyName('PD_CODBCO_TAM').AsFloat :=3;
   DM1.Query2.ParambyName('PD_AGENCIA_PI').AsFloat :=5;
   DM1.Query2.ParambyName('PD_AGENCIA_TAM').AsFloat:=4;
   DM1.Query2.ParambyName('PD_COMP_PI').AsFloat    :=10;
   DM1.Query2.ParambyName('PD_COMP_TAM').AsFloat   :=3;
   DM1.Query2.ParambyName('PD_NUMDOC_PI').AsFloat  :=0;
   DM1.Query2.ParambyName('PD_NUMDOC_TAM').AsFloat :=10;
   DM1.Query2.ParambyName('PD_CONTA_PI').AsFloat   :=34;
   DM1.Query2.ParambyName('PD_CONTA_TAM').AsFloat  :=6;
   DM1.Query2.ParambyName('PD_VALOR_PI').AsFloat   :=07;
   DM1.Query2.ParambyName('PD_VALOR_TAM').AsFloat  :=10;
   DM1.Query2.ParambyName('PD_NOSSON_PI').AsFloat  :=9;
   DM1.Query2.ParambyName('PD_NOSSON_TAM').AsFloat :=13;
   DM1.Query2.ParambyName('PD_CODCED_PI').AsFloat  :=1;
   DM1.Query2.ParambyName('PD_CODCED_TAM').AsFloat :=5;
   DM1.Query2.ParambyName('PD_NUMNF_PI').AsFloat   :=22;
   DM1.Query2.ParambyName('PD_NUMNF_TAM').AsFloat  :=10;
   DM1.Query2.ParambyName('PD_MESREF_PI').AsFloat  :=40;
   DM1.Query2.ParambyName('PD_MESREF_TAM').AsFloat :=2;
   DM1.Query2.ParambyName('PD_ANOREF_PI').AsFloat  :=42;
   DM1.Query2.ParambyName('PD_ANOREF_TAM').AsFloat :=4;
   DM1.Query2.ParambyName('PD_NUMDIV_PI').AsFloat  :=32;
   DM1.Query2.ParambyName('PD_NUMDIV_TAM').AsFloat :=8;
   DM1.Query2.ExecSQL;
   end;

if not DM4.Tb_PosDoc.Locate('PD_CODIGO',8362,[]) then
   begin
   fconfigZeraTodos(0);
   DM1.Query2.ParambyName('PD_CODIGO').AsFloat     :=8362;
   DM1.Query2.ParambyName('PD_DESCRICAO').AsString :='CELG';
   DM1.Query2.ParambyName('PD_QTDBITES').AsFloat   :=37;
   DM1.Query2.ParambyName('PD_CAMERA_PI').AsFloat  :=10;
   DM1.Query2.ParambyName('PD_CAMERA_TAM').AsFloat :=3;
   DM1.Query2.ParambyName('PD_CODBCO_PI').AsFloat  :=2;
   DM1.Query2.ParambyName('PD_CODBCO_TAM').AsFloat :=3;
   DM1.Query2.ParambyName('PD_AGENCIA_PI').AsFloat :=5;
   DM1.Query2.ParambyName('PD_AGENCIA_TAM').AsFloat:=4;
   DM1.Query2.ParambyName('PD_COMP_PI').AsFloat    :=10;
   DM1.Query2.ParambyName('PD_COMP_TAM').AsFloat   :=3;
   DM1.Query2.ParambyName('PD_CONTA_PI').AsFloat   :=30;
   DM1.Query2.ParambyName('PD_CONTA_TAM').AsFloat  :=6;
   DM1.Query2.ParambyName('PD_VALOR_PI').AsFloat   :=07;
   DM1.Query2.ParambyName('PD_VALOR_TAM').AsFloat  :=10;
   DM1.Query2.ParambyName('PD_CODCED_PI').AsFloat  :=1;
   DM1.Query2.ParambyName('PD_CODCED_TAM').AsFloat :=5;
   DM1.Query2.ParambyName('PD_MESREF_PI').AsFloat  :=38;
   DM1.Query2.ParambyName('PD_MESREF_TAM').AsFloat :=2;
   DM1.Query2.ParambyName('PD_ANOREF_PI').AsFloat  :=36;
   DM1.Query2.ParambyName('PD_ANOREF_TAM').AsFloat :=02;
   DM1.Query2.ExecSQL;
   end;
if not DM4.Tb_PosDoc.Locate('PD_CODIGO',8460,[]) then
   begin
   fconfigZeraTodos(0);
   DM1.Query2.ParambyName('PD_CODIGO').AsFloat     :=8460;
   DM1.Query2.ParambyName('PD_DESCRICAO').AsString :='TELEGOIAS';
   DM1.Query2.ParambyName('PD_QTDBITES').AsFloat   :=37;
   DM1.Query2.ParambyName('PD_CAMERA_PI').AsFloat  :=10;
   DM1.Query2.ParambyName('PD_CAMERA_TAM').AsFloat :=3;
   DM1.Query2.ParambyName('PD_CODBCO_PI').AsFloat  :=2;
   DM1.Query2.ParambyName('PD_CODBCO_TAM').AsFloat :=3;
   DM1.Query2.ParambyName('PD_AGENCIA_PI').AsFloat :=10;
   DM1.Query2.ParambyName('PD_AGENCIA_TAM').AsFloat:=3;
   DM1.Query2.ParambyName('PD_COMP_PI').AsFloat    :=10;
   DM1.Query2.ParambyName('PD_COMP_TAM').AsFloat   :=3;
   DM1.Query2.ParambyName('PD_CONTA_PI').AsFloat   :=21;
   DM1.Query2.ParambyName('PD_CONTA_TAM').AsFloat  :=9;
   DM1.Query2.ParambyName('PD_VALOR_PI').AsFloat   :=07;
   DM1.Query2.ParambyName('PD_VALOR_TAM').AsFloat  :=10;
   DM1.Query2.ParambyName('PD_CODCED_PI').AsFloat  :=1;
   DM1.Query2.ParambyName('PD_CODCED_TAM').AsFloat :=5;
   DM1.Query2.ParambyName('PD_MESREF_PI').AsFloat  :=34;
   DM1.Query2.ParambyName('PD_MESREF_TAM').AsFloat :=2;
   DM1.Query2.ParambyName('PD_ANOREF_PI').AsFloat  :=33;
   DM1.Query2.ParambyName('PD_ANOREF_TAM').AsFloat :=1;
   DM1.Query2.ParambyName('PD_NUMDIV_PI').AsFloat  :=36;
   DM1.Query2.ParambyName('PD_NUMDIV_TAM').AsFloat :=10;
   DM1.Query2.ExecSQL;
   end;

if not DM4.Tb_PosDoc.Locate('PD_CODIGO',8662,[]) then
   begin
   fconfigZeraTodos(0);
   DM1.Query2.ParambyName('PD_CODIGO').AsFloat     :=8662;
   DM1.Query2.ParambyName('PD_DESCRICAO').AsString :='IPTU';
   DM1.Query2.ParambyName('PD_QTDBITES').AsFloat   :=37;
   DM1.Query2.ParambyName('PD_CAMERA_PI').AsFloat  :=10;
   DM1.Query2.ParambyName('PD_CAMERA_TAM').AsFloat :=3;
   DM1.Query2.ParambyName('PD_CODBCO_PI').AsFloat  :=2;
   DM1.Query2.ParambyName('PD_CODBCO_TAM').AsFloat :=3;
   DM1.Query2.ParambyName('PD_COMP_PI').AsFloat    :=10;
   DM1.Query2.ParambyName('PD_COMP_TAM').AsFloat   :=3;
   DM1.Query2.ParambyName('PD_VALOR_PI').AsFloat   :=07;
   DM1.Query2.ParambyName('PD_VALOR_TAM').AsFloat  :=10;
   DM1.Query2.ParambyName('PD_CODCED_PI').AsFloat  :=1;
   DM1.Query2.ParambyName('PD_CODCED_TAM').AsFloat :=5;
   DM1.Query2.ParambyName('PD_MESREF_PI').AsFloat  :=29;
   DM1.Query2.ParambyName('PD_MESREF_TAM').AsFloat :=2;
   DM1.Query2.ParambyName('PD_ANOREF_PI').AsFloat  :=27;
   DM1.Query2.ParambyName('PD_ANOREF_TAM').AsFloat :=2;
   DM1.Query2.ExecSQL;
   end;

if not DM4.Tb_PosDoc.Locate('PD_CODIGO',9826,[]) then
   begin
   fconfigZeraTodos(0);
   DM1.Query2.ParambyName('PD_CODIGO').AsFloat     :=9826;
   DM1.Query2.ParambyName('PD_DESCRICAO').AsString :='BOLETO BRADESCO';
   DM1.Query2.ParambyName('PD_QTDBITES').AsFloat   :=37;
   DM1.Query2.ParambyName('PD_CAMERA_PI').AsFloat  :=10;
   DM1.Query2.ParambyName('PD_CAMERA_TAM').AsFloat :=3;
   DM1.Query2.ParambyName('PD_CODBCO_PI').AsFloat  :=2;
   DM1.Query2.ParambyName('PD_CODBCO_TAM').AsFloat :=3;
   DM1.Query2.ParambyName('PD_AGENCIA_PI').AsFloat :=21;
   DM1.Query2.ParambyName('PD_AGENCIA_TAM').AsFloat:=4;
   DM1.Query2.ParambyName('PD_COMP_PI').AsFloat    :=10;
   DM1.Query2.ParambyName('PD_COMP_TAM').AsFloat   :=3;
   DM1.Query2.ParambyName('PD_NOSSON_PI').AsFloat  :=31;
   DM1.Query2.ParambyName('PD_NOSSON_TAM').AsFloat :=07;
   DM1.Query2.ParambyName('PD_CODCED_PI').AsFloat  :=38;
   DM1.Query2.ParambyName('PD_CODCED_TAM').AsFloat :=8;
   DM1.Query2.ParambyName('PD_CODCAR_PI').AsFloat  :=25;
   DM1.Query2.ParambyName('PD_CODCAR_TAM').AsFloat :=2;
   DM1.Query2.ExecSQL;
   end;

DM1.Query2.close;
result:=True;
end;

function fconfigZeraTodos(ptipo: Integer): Boolean;
begin
DM1.Query2.ParambyName('PD_CODIGO').AsFloat     :=0;
DM1.Query2.ParambyName('PD_DESCRICAO').AsString :='';
DM1.Query2.ParambyName('PD_QTDBITES').AsFloat   :=0;
DM1.Query2.ParambyName('PD_CAMERA_PI').AsFloat  :=0;
DM1.Query2.ParambyName('PD_CAMERA_TAM').AsFloat :=0;
DM1.Query2.ParambyName('PD_CODBCO_PI').AsFloat  :=0;
DM1.Query2.ParambyName('PD_CODBCO_TAM').AsFloat :=0;
DM1.Query2.ParambyName('PD_AGENCIA_PI').AsFloat :=0;
DM1.Query2.ParambyName('PD_AGENCIA_TAM').AsFloat:=0;
DM1.Query2.ParambyName('PD_COMP_PI').AsFloat    :=0;
DM1.Query2.ParambyName('PD_COMP_TAM').AsFloat   :=0;
DM1.Query2.ParambyName('PD_NUMDOC_PI').AsFloat  :=0;
DM1.Query2.ParambyName('PD_CONTA_PI').AsFloat   :=0;
DM1.Query2.ParambyName('PD_CONTA_TAM').AsFloat  :=0;
DM1.Query2.ParambyName('PD_MOEDA_PI').AsFloat   :=0;
DM1.Query2.ParambyName('PD_MOEDA_TAM').AsFloat  :=0;
DM1.Query2.ParambyName('PD_VCTO_PI').AsFloat    :=0;
DM1.Query2.ParambyName('PD_VCTO_TAM').AsFloat   :=0;
DM1.Query2.ParambyName('PD_VALOR_PI').AsFloat   :=0;
DM1.Query2.ParambyName('PD_VALOR_TAM').AsFloat  :=0;
DM1.Query2.ParambyName('PD_NOSSON_PI').AsFloat  :=0;
DM1.Query2.ParambyName('PD_NOSSON_TAM').AsFloat :=0;
DM1.Query2.ParambyName('PD_CODCED_PI').AsFloat  :=0;
DM1.Query2.ParambyName('PD_CODCED_TAM').AsFloat :=0;
DM1.Query2.ParambyName('PD_CODCAR_PI').AsFloat  :=0;
DM1.Query2.ParambyName('PD_CODCAR_TAM').AsFloat :=0;
DM1.Query2.ParambyName('PD_NUMNF_PI').AsFloat   :=0;
DM1.Query2.ParambyName('PD_NUMNF_TAM').AsFloat  :=0;
DM1.Query2.ParambyName('PD_MESREF_PI').AsFloat  :=0;
DM1.Query2.ParambyName('PD_MESREF_TAM').AsFloat :=0;
DM1.Query2.ParambyName('PD_ANOREF_PI').AsFloat  :=0;
DM1.Query2.ParambyName('PD_ANOREF_TAM').AsFloat :=0;
DM1.Query2.ParambyName('PD_NUMDIV_PI').AsFloat  :=0;
DM1.Query2.ParambyName('PD_NUMDIV_TAM').AsFloat :=0;
DM1.Query2.ParambyName('PD_NUMDOC_TAM').AsFloat :=0;
result:=True;
end;

procedure TFrm_Config_Leitor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.

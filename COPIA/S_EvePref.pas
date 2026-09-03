unit S_EvePref;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,db,dbtables,func,lerarq,S_DM1,S_DM2, ExtCtrls, StdCtrls, Buttons,
  Grids, DBGrids, DBCtrls;

type
  TFrm_EvePref = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    Gb_Geral: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Src_EvePref: TDataSource;
    Qr_EvePref: TQuery;
    Qr_EvePrefEPCODEMP: TFloatField;
    Qr_EvePrefEPLOCAL: TFloatField;
    Qr_EvePrefEPCODCLI: TFloatField;
    Qr_EvePrefEPCODEVE: TFloatField;
    Qr_EvePrefnomeve: TStringField;
    DBGrid2: TDBGrid;
    Qr_EvePrefEPQUANT: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Qr_EvePrefCalcFields(DataSet: TDataSet);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_EvePref: TFrm_EvePref;
  pf_codcli: Integer=0;
  pf_tipo: Integer=0;

  pf_codclia: Integer=0;
  pf_tipoa: Integer=0;
  pf_codevea: Integer=0;
  pf_codempa: Integer=0;
  pf_coddsra: Integer=0;
implementation

{$R *.dfm}

procedure TFrm_EvePref.FormCreate(Sender: TObject);
begin
DM2.Tb_EvePref.Close;
DM2.Tb_EvePref.SQL.Clear;
DM2.Tb_EvePref.SQL.add('Select * from EVEPREF where '
                      +iif(DM1.Qr_Tid.Locate('TINOME','EVEPREF',[]),'',' EPCODEMP=0'+IntToStr(codemp)+' and ')
                      +' EPLOCAL=0'+IntToStr(pf_tipo)
                      +' and EPCODCLI=0'+IntToStr(pf_codcli));
DM2.Tb_EvePref.Open;
if pf_codcli>0 then
   begin
   Qr_EvePref.Close;
   Qr_EvePref.SQL.Clear;
   Qr_EvePref.SQL.add('Select * from EVEPREF where '
                      +iif(DM1.Qr_Tid.Locate('TINOME','EVEPREF',[]),'',' EPCODEMP=0'+IntToStr(codemp)+' and ')
                      +' EPLOCAL=0'+IntToStr(pf_tipo)
                      +' and EPCODCLI=0');
   Qr_EvePref.Open;
   Gb_Geral.Visible:=True;
   end;


end;

procedure TFrm_EvePref.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFrm_EvePref.Qr_EvePrefCalcFields(DataSet: TDataSet);
begin
if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE',Qr_EvePrefEPCODEVE.AsString) then
   Qr_EvePrefnomeve.Value:=DM1.Query1.Fields[0].AsString;

end;

procedure TFrm_EvePref.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
DBGrid1.SetFocus;
end;

procedure TFrm_EvePref.DBGrid1ColExit(Sender: TObject);
begin
if DBGrid1.SelectedField=DM2.Tb_EvePrefEPCODEVE then
   begin
   if not flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE',DM2.Tb_EvePrefEPCODEVE.AsString) then
      begin
      MessageDlg('Evento não Cadastrado!',mtWarning,[mbOk],0);
      DM2.Tb_EvePrefEPCODEVE.Value:=0;
      abort;
      end;
   end;
end;

procedure TFrm_EvePref.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

end.

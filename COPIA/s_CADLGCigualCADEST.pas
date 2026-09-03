unit s_CADLGCigualCADEST;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, Grids, DBGrids, Buttons;

type
  TFrm_CADLGCigualCADEST = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    edt_codpro: TEdit;
    BitBtn1: TBitBtn;
    src_mp: TDataSource;
    gb_mp: TGroupBox;
    DBGrid_mp: TDBGrid;
    Panel3: TPanel;
    edt_mp: TEdit;
    edt_prodprod: TEdit;
    edt_embalagem: TEdit;
    edt_cx_embarque: TEdit;
    edt_acabado: TEdit;
    edt_outros: TEdit;
    strProc: TADOStoredProc;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CADLGCigualCADEST: TFrm_CADLGCigualCADEST;

implementation

uses S_DM1_ADO, Func;

{$R *.dfm}

procedure TFrm_CADLGCigualCADEST.BitBtn1Click(Sender: TObject);
begin
if not DM1_ADO.ADOConnection1.Connected=true then
   DM1_ADO.ADOConnection1.Open;
if DM1_ADO.ADOConnection1.Connected=false then
   begin
   MessageDlg('erro na conexao!', mtError,[mbOk],0);
   exit;
   end;


strProc := TADOStoredProc.Create(self);
try
  strProc.Connection:= DM1_ADO.ADOConnection1;
  try
     strProc.Close;
     strProc.ProcedureName:= 'cadlgcigualcadest';
     strProc.Parameters.CreateParameter('p_codpro',ftFloat,pdInput,SizeOf(Double), fsonumero(edt_codpro.Text));
     strProc.Parameters.CreateParameter('P_filial',ftFloat,pdInput,SizeOf(Double),1);
     strProc.Open; //<--Error: Parameter 'Abbr' not found.


{     strProcCODPRO.DisplayLabel       := 'Códigodigo';
     strProcLOTE.DisplayLabel         := 'Lote';
     strProcDTVCTO.DisplayLabel       := 'Dt.Vcto';
     strProcQTD.DisplayLabel          := 'Qtde';
     strProcTIPO_PROD.DisplayLabel    := 'Tipo Prod';
     strProctipo_produto.DisplayLabel := 'Tipo do Produto';
     strProcpdnome.DisplayLabel       := 'Descrição';
     strProcpdund.DisplayLabel         := 'Und';
     strProcpdmarca.DisplayLabel      := 'Marca';
     strProcop3_pu.DisplayLabel       :='Pço.Unit';;
     strProcop3_sitmp.DisplayLabel    :='op3_sitmp';
 }

     src_mp.DataSet:=strProc;
  finally
     end;
  finally
  end;




end;

end.

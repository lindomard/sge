unit S_LOptica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,func,S_DM4, RDComms;

type
  TFrm_LOptica = class(TForm)
    Label1: TLabel;
    CODBAR: TEdit;
    bbSair: TBitBtn;
    RDserial1: TRDserial;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RDserial1RxChar(Sender: TObject; InQue: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
//function fLopticaCapturarSerial(pTipo: Integer): Boolean;
function fLopticaAjustaCampos(pLido: String): Boolean;


var
  Frm_LOptica: TFrm_LOptica;
  lo_banco  : Real;
  lo_agencia: Real;
  lo_numchq : Real;
  lo_compens: Real;
  lo_numero : Real;
  lo_conta  : Real;
  lo_camera : String;
  lo_obs    : String;
  lo_nosnum : String;
  lo_valor  : Real;
  lo_moeda  : Real;
  lo_DtVcto : TDateTime;
  lo_CodCed : Real;
  lo_CodCar : Real;
  lo_nmnf   : Real;
  lo_MesRef : Integer;
  lo_AnoRef : Integer;

implementation

{$R *.dfm}


procedure TFrm_LOptica.FormCreate(Sender: TObject);
begin
DM4.Tb_Leitor.Close;
DM4.Tb_Leitor.ParamByName('NOMECOMP').AsString:=pNomTer;
DM4.Tb_Leitor.ParamByName('MARCABAL').AsFloat :=0;

DM4.Tb_Leitor.Open;
if DM4.Tb_LeitorLO_TIPO.Value=1 then
   begin
   if not RDserial1.Connected then
      begin
      with RDserial1 do
         begin
         Porta                  := TPortType(DM4.Tb_LeitorLO_PORTA.AsInteger);
         velocidade             := TBaudRate(DM4.Tb_LeitorLO_VELOCIDADE.AsInteger);
         StopBits               := TStopBits(DM4.Tb_LeitorLO_STOPBITS.AsInteger);
         DataBits               := TDataBits(DM4.Tb_LeitorLO_DATABITS.AsInteger);
         Paridade.Bits          := TParityBits(DM4.Tb_LeitorLO_PARIDADE.AsInteger);
         FlowControl.OutCtsFlow := iif(DM4.Tb_LeitorLO_CTSOUTPUT.Value=1,true,false);
         FlowControl.OutDsrFlow := iif(DM4.Tb_LeitorLO_DSROUTPUT.Value=1,true,false);
         FlowControl.XonXoffOut := iif(DM4.Tb_LeitorLO_XONXOFFOUT.Value=1,true,false);
         FlowControl.XonXoffIn  := iif(DM4.Tb_LeitorLO_XONXOFFINP.Value=1,true,false);
         FlowControl.ControlRts := TRtsFlowControl(DM4.Tb_LeitorLO_RTSINPUT.AsInteger);
         FlowControl.ControlDtr := TDtrFlowControl(DM4.Tb_LeitorLO_DTRINPUT.AsInteger);
         end;
      RDserial1.Open;
      end;
   end;
end;

procedure TFrm_LOptica.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
fLopticaAjustaCampos(Frm_LOptica.CODBAR.Text);
if DM4.Tb_LeitorLO_TIPO.Value=1 then
   begin
   if RDserial1.Connected then
      RDserial1.Close;
   end;

{
if not Fechar_leitor(0) then
   begin
   MessageDlg('Erro ao Fechar  a Porta de Comunicaçao Serial',mtError,[mbOk],0);
   end;
}
end;

{
function fLopticaCapturarSerial(pTipo: Integer): Boolean;
var
mLido: String;
begin
fLopticaAjustaCampos(mlido);
result:=True;
end;
}
function fLopticaAjustaCampos(pLido: String): Boolean;
begin
lo_banco  :=0;
lo_agencia:=0;
lo_numchq :=0;
lo_compens:=0;
lo_numero :=0;
lo_conta  :=0;
lo_obs    :='';
lo_nosnum :='';
lo_valor  :=0;
lo_moeda  :=0;
lo_DtVcto :=pdatanula;
lo_CodCed :=0;
lo_CodCar :=0;
lo_nmnf   :=0;
lo_MesRef :=0;
lo_AnoRef :=0;

if trim(plido)<>'' then
   begin
   if length(plido)=34 then
      DM4.Tb_PosDoc.Locate('PD_CODIGO',0,[])
   else if not DM4.Tb_PosDoc.Locate('PD_CODIGO',ValFloat(copy(plido,1,4)),[]) then
      begin
      if not DM4.Tb_PosDoc.Locate('PD_CODIGO',ValFloat(copy(plido,1,5)),[]) then
         begin
         if valint(copy(pLido,1,4))<999 then
            DM4.Tb_PosDoc.Locate('PD_CODIGO',0,[])
         else
            begin
            DM4.Tb_PosDoc.Locate('PD_CODIGO',1,[]);
            end;
         end;
      end;
   if DM4.Tb_PosDocPD_CAMERA_PI.Value>0 then
      lo_camera   :=copy(plido,DM4.Tb_PosDocPD_CAMERA_PI.AsInteger,DM4.Tb_PosDocPD_CAMERA_TAM.AsInteger);
   if DM4.Tb_PosDocPD_CODBCO_PI.Value>0 then
      lo_banco    :=ValFloat(copy(plido,DM4.Tb_PosDocPD_CODBCO_PI.AsInteger,DM4.Tb_PosDocPD_CODBCO_TAM.AsInteger));
   if DM4.Tb_PosDocPD_AGENCIA_PI.Value>0 then
      lo_agencia  :=ValFloat(copy(plido,DM4.Tb_PosDocPD_AGENCIA_PI.AsInteger,DM4.Tb_PosDocPD_AGENCIA_TAM.AsInteger));
   if DM4.Tb_PosDocPD_COMP_PI.Value>0 then
      lo_compens  :=ValFloat(copy(plido,DM4.Tb_PosDocPD_COMP_PI.AsInteger,DM4.Tb_PosDocPD_COMP_TAM.AsInteger));
   if DM4.Tb_PosDocPD_NUMDOC_PI.Value>0 then
      lo_numchq   :=ValFloat(copy(plido,DM4.Tb_PosDocPD_NUMDOC_PI.AsInteger,DM4.Tb_PosDocPD_NUMDOC_TAM.AsInteger));
   if DM4.Tb_PosDocPD_CONTA_PI.Value>0 then
      lo_conta    :=ValFloat(copy(plido,DM4.Tb_PosDocPD_CONTA_PI.AsInteger,DM4.Tb_PosDocPD_CONTA_TAM.AsInteger));
   if DM4.Tb_PosDocPD_NUMDIV_PI.Value>0 then
      lo_numero   :=ValFloat(copy(plido,DM4.Tb_PosDocPD_NUMDIV_PI.AsInteger,DM4.Tb_PosDocPD_NUMDIV_TAM.AsInteger));
   if DM4.Tb_PosDocPD_NOSSON_PI.Value>0 then
      lo_nosnum    :=copy(plido,DM4.Tb_PosDocPD_NOSSON_PI.AsInteger,DM4.Tb_PosDocPD_NOSSON_TAM.AsInteger);
   if DM4.Tb_PosDocPD_VALOR_PI.Value>0 then
      lo_valor    :=ValFloat(copy(plido,DM4.Tb_PosDocPD_VALOR_PI.AsInteger,DM4.Tb_PosDocPD_VALOR_TAM.AsInteger))/100;
   if DM4.Tb_PosDocPD_MOEDA_PI.Value>0 then
      lo_moeda    :=ValFloat(copy(plido,DM4.Tb_PosDocPD_MOEDA_PI.AsInteger,DM4.Tb_PosDocPD_MOEDA_TAM.AsInteger));
   if DM4.Tb_PosDocPD_VCTO_PI.Value>0 then
      lo_dtvcto              :=StrToDate('07/10/1997')+ValFloat(copy(plido,DM4.Tb_PosDocPD_VCTO_PI.AsInteger,DM4.Tb_PosDocPD_VCTO_TAM.AsInteger));
   if DM4.Tb_PosDocPD_CODCED_PI.Value>0 then
      lo_CodCed              :=ValFloat(copy(plido,DM4.Tb_PosDocPD_CODCED_PI.AsInteger,DM4.Tb_PosDocPD_CODCED_TAM.AsInteger));
   if DM4.Tb_PosDocPD_CODCAR_PI.Value>0 then
      lo_CodCar              :=ValFloat(copy(plido,DM4.Tb_PosDocPD_CODCAR_PI.AsInteger,DM4.Tb_PosDocPD_CODCAR_TAM.AsInteger));
   if DM4.Tb_PosDocPD_NUMNF_PI.Value>0 then
      lo_nmnf                :=ValFloat(copy(plido,DM4.Tb_PosDocPD_NUMNF_PI.AsInteger,DM4.Tb_PosDocPD_NUMNF_TAM.AsInteger));
   if DM4.Tb_PosDocPD_MESREF_PI.Value>0 then
      lo_MesRef              :=ValInt(copy(plido,DM4.Tb_PosDocPD_MESREF_PI.AsInteger,DM4.Tb_PosDocPD_MESREF_TAM.AsInteger));
   if DM4.Tb_PosDocPD_ANOREF_PI.Value>0 then
      lo_AnoRef              :=ValInt(copy(plido,DM4.Tb_PosDocPD_ANOREF_PI.AsInteger,DM4.Tb_PosDocPD_ANOREF_TAM.AsInteger));
{
      lo_obs                 :='Conta No. '+copy(plido,DM4.Tb_PosDocPD_NUMDIV_PI.AsInteger,DM4.Tb_PosDocPD_NUMDIV_TAM.AsInteger)
                              +' Mes: '+copy(plido,DM4.Tb_PosDocPD_MESREF_PI.AsInteger,DM4.Tb_PosDocPD_MESREF_TAM.AsInteger)
                              +' Ano: '+copy(plido,29,04);
      end;
}   end;

result:=true;

end;
procedure TFrm_LOptica.RDserial1RxChar(Sender: TObject; InQue: Integer);
var
texto: String;
begin
RDserial1.ReadString(Texto, InQue, True);
CODBAR.Text:=CODBAR.Text+texto;

end;

procedure TFrm_LOptica.BitBtn1Click(Sender: TObject);
begin
CODBAR.Text:='';
end;

procedure TFrm_LOptica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

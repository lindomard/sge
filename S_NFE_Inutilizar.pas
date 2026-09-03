unit S_NFE_Inutilizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFrm_NFE_Inutilizar = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edt_serienf: TEdit;
    Label2: TLabel;
    edt_numnf_ini: TEdit;
    Label3: TLabel;
    edt_uf: TEdit;
    Label4: TLabel;
    edt_ano: TEdit;
    Label5: TLabel;
    edt_motivo: TEdit;
    bbInutilizar: TBitBtn;
    bbsair: TBitBtn;
    Label6: TLabel;
    cb_modelo: TComboBox;
    Label7: TLabel;
    edt_numnf_final: TEdit;
    procedure bbsairClick(Sender: TObject);
    procedure bbInutilizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_NFE_Inutilizar: TFrm_NFE_Inutilizar;

implementation

uses Func, Func2, S_DM1, S_DM4;

{$R *.dfm}

procedure TFrm_NFE_Inutilizar.bbsairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_NFE_Inutilizar.bbInutilizarClick(Sender: TObject);
var
mresult: Integer;
begin
if fmensagem('Quer Realmente Inutilizar a Nota Solicitada?',0,['1','2'],2)<>mrYes then
   exit;
if length(trim(edt_serienf.Text))<1 then
   begin
   fmensagem('Serie da Nota Fiscal Invalida!',0,['0'],0);
   edt_serienf.SetFocus;
   exit;
   end;
if length(trim(edt_serienf.Text))>2 then
   begin
   MessageDlg('Número de Serie muito grande!',mtWarning,[mbOk],0);
   edt_serienf.setfocus;
   exit;
   end;


if fsonumero(edt_numnf_ini.Text)=0 then
   begin
   fmensagem('Numero da Nota Fiscal Tem que Ser colocado!',0,['0'],0);
   edt_numnf_ini.SetFocus;
   exit;
   end;
if fSonumero(edt_numnf_final.text)<fsonumero(edt_numnf_ini.text) then
   edt_numnf_final.text:=edt_numnf_ini.text;

if length(trim(edt_uf.Text))<>2 then
   begin
   fmensagem('Unidade da Federacao invalida!',0,['0'],0);
   edt_uf.SetFocus;
   exit;
   end;

if (
       fSonumero(edt_ano.Text)<
       (fsonumero(FormatDatetime('yyyy', date))-1)
       ) or
   (fSonumero(edt_ano.Text)>
      fsonumero(FormatDatetime('yyyy', date)) ) then
   begin
   fmensagem('Ano da Nota Fiscal Invalida!',0,['0'],0);
   edt_ano.SetFocus;
   exit;
   end;

if length(edt_motivo.Text)<15 then
   begin
   fmensagem('o motivo tem que ter pelo menos 15 caracteres',0,['0'],0);
   edt_motivo.SetFocus;
   exit;
   end;
{
mResult:=fInutilizarNFE(0,0,0,edt_motivo.Text,
edt_serienf.Text,valint(edt_ano.Text),
valint(edt_numnf.Text),
valint(edt_numnf.Text),true);
if mResult<>0 then
   begin
   fmensagem('erro '+IntTostr(mResult)+' ao validar o xml!',0,['0'],0);
   exit;
   end;
}

mResult:=fInutilizarNFE(0,0,0,edt_motivo.Text,
cb_modelo.text,
edt_serienf.Text,valint(edt_ano.Text),
valint(edt_numnf_ini.Text),
valint(edt_numnf_final.Text),false);
if mResult<>0 then
   begin
   fmensagem('erro '+IntTostr(mResult)+' ao Inutilizar NFE!',0,['0'],0);
   exit;
   end
else
   begin
   fmensagem('Nota Inutilizada!',0,['0'],0);
   end;
end;

procedure TFrm_NFE_Inutilizar.FormCreate(Sender: TObject);
begin
DM1.Query1.close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.Add('Select PNF_SERIE from CADPAR_NF where PNF_CODEMP=:CODEMP '
                  +' and PNF_CHAVE=:CHAVE ');
DM1.Query1.ParamByName('CODEMP').AsInteger:=DM4.Qr_Ped01P1CODEMP.AsInteger;
DM1.Query1.ParamByName('CHAVE').Value     :='SERIE1';
DM1.Query1.Open;
edt_serienf.Text:=dm1.Query1.FieldbyName('PNF_SERIE').AsString;
edt_uf.Text:=DM1.Tb_EmpUF.AsString;
edt_ano.Text:=FormatDateTime('yyyy',date);
end;

end.

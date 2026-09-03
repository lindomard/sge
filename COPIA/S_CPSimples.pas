unit S_CPSimples;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CurrEdit, Mask, ToolEdit, ComCtrls;

type
  TFrm_CPSimples = class(TForm)
    gb_ultlanc: TGroupBox;
    PageControl1: TPageControl;
    TsPrincipais: TTabSheet;
    tsNFE: TTabSheet;
    gb_digitacao: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    txt_numdup: TEdit;
    txt_parc: TEdit;
    txt_dtemis: TDateEdit;
    txt_dtvcto: TDateEdit;
    txt_codfor: TEdit;
    txt_nomfor: TEdit;
    txt_valor: TCurrencyEdit;
    gb_fluxo: TGroupBox;
    Label25: TLabel;
    Label23: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    CB_Nomccu: TComboBox;
    txt_codbco: TEdit;
    txt_coddep: TEdit;
    txt_codccu: TEdit;
    Edit1: TEdit;
    CB_nomdep: TComboBox;
    CB_nombco: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CPSimples: TFrm_CPSimples;

implementation

uses S_DM1, lerarq, Func;

{$R *.dfm}

procedure TFrm_CPSimples.FormCreate(Sender: TObject);
begin
DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select DNOME,DCODDEP from CADDEP '
                  +iif(DM1.Qr_TID.locate('TINOME','CADDEP',[]),'',' where DCODEMP=0'+IntToStr(codemp)));
DM1.Query5.Open;
CB_nomdep.Items.Clear;
While not DM1.Query5.Eof do
   begin
   CB_nomdep.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
   DM1.Query5.Next;
   end;

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select BCBANCO,BCCODBCO from CADBCO '
                  +iif(DM1.Qr_TID.locate('TINOME','CADBCO',[]),'',' where BCCODEMP=0'+IntToStr(codemp)));
DM1.Query5.Open;
CB_nombco.Items.Clear;
While not DM1.Query5.Eof do
   begin
   CB_nombco.Items.Add(DM1.Query5.fieldByName('BCBANCO').AsString+'['+DM1.Query5.fieldbyName('BCCODBCO').AsString+']');
   DM1.Query5.Next;
   end;

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select CCNOME,CCNAT,CCCODCCU from CADCCU '
                  +iif(DM1.Qr_TID.locate('TINOME','CADCCU',[]),'',' where CCCODEMP=0'+IntToStr(codemp)));
DM1.Query5.Open;
CB_Nomccu.Items.Clear;
While not DM1.Query5.Eof do
   begin
   CB_Nomccu.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                        +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                        +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
   DM1.Query5.Next;
   end;

end;

procedure TFrm_CPSimples.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.

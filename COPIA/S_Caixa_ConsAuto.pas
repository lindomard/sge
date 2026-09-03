unit S_Caixa_ConsAuto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, RxMemDS, Grids, DBGrids;

type
  TFrm_Caixa_ConsAuto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    edt_nomarq: TEdit;
    SpeedButton1: TSpeedButton;
    bbLer: TBitBtn;
    bbSairSemGravar: TBitBtn;
    opd1: TOpenDialog;
    ListBox1: TListBox;
    mem_extrato: TRxMemoryData;
    mem_extratoHISTORICO: TStringField;
    mem_extratoAGENCIA: TStringField;
    mem_extratoCONTA: TStringField;
    mem_extratoDATA_CONTABIL: TDateField;
    mem_extratoDATA_LANCAMENTO: TDateField;
    mem_extratoAGENCIA_OCOR: TStringField;
    mem_extratoCODIGO: TStringField;
    mem_extratoNUMERO_DOC: TStringField;
    mem_extratoCOD_HISTORICO: TStringField;
    mem_extratoVALOR: TFloatField;
    mem_extratoNATUREZA: TStringField;
    mem_extratoDETALHE: TStringField;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    mem_extratoBANCO_CODIGO: TIntegerField;
    mem_extratoBANCO_NOME: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure bbLerClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    function fLerOFX(pNomeArq: String): Boolean;

  end;

var
  Frm_Caixa_ConsAuto: TFrm_Caixa_ConsAuto;

implementation

uses S_YMOFXReader;

{$R *.dfm}

procedure TFrm_Caixa_ConsAuto.SpeedButton1Click(Sender: TObject);
begin
if opd1.Execute then
   begin
   edt_nomarq.Text:=opd1.FileName;
   bbLerClick(self);
   end;

end;


function TFrm_Caixa_ConsAuto.fLerOFX(pNomeArq: String): Boolean;
var

YMOFXReader1: TYMOFXReader;
  i:integer;
begin
if not mem_extrato.Active then
   mem_extrato.Open;
mem_extrato.EmptyTable;

YMOFXReader1:= TYMOFXReader.create(self);
YMOFXReader1.OFXFile := pNOmeArq;
YMOFXReader1.Process;
ListBox1.Clear;
for i := 0 to YMOFXReader1.Count-1 do
   begin
   mem_extrato.Append;
   mem_extratoHISTORICO.Value:=YMOFXReader1.Get(i).Desc;
   if YMOFXReader1.Get(i).Valor>0 then
      begin
      mem_extratoVALOR.Value   :=YMOFXReader1.Get(i).Valor;
      mem_extratoNATUREZA.Value:='C';
      end
   else
      begin
      mem_extratoVALOR.Value   :=YMOFXReader1.Get(i).Valor*-1;
      mem_extratoNATUREZA.Value:='D';
      end;
   mem_extratoDETALHE.Value          :=YMOFXReader1.Get(i).MovType;
   mem_extratoDATA_CONTABIL.Value    :=YMOFXReader1.Get(i).MovDate;
   mem_extratoDATA_LANCAMENTO.Value  :=YMOFXReader1.Get(i).MovDate;
   mem_extratoNUMERO_DOC.Value       :=YMOFXReader1.Get(i).ID;
   mem_extratoCODIGO.Value           :=YMOFXReader1.Get(i).Document;
   mem_extratoBANCO_CODIGO.Value     :=YMOFXReader1.Get(i).Banco_codigo;
   mem_extratoBANCO_NOME.Value       :=YMOFXReader1.Get(i).Banco_Nome;
   mem_extratoCONTA.Value            :=YMOFXReader1.Get(i).Conta;
   mem_extratoAGENCIA.Value          :=YMOFXReader1.Get(i).Agencia;

   mem_extrato.Post;

   ListBox1.Items.Add(YMOFXReader1.Get(i).Desc + '|| ' +
                     FloatToStr(YMOFXReader1.Get(i).Valor) + '|| ' +
                     YMOFXReader1.Get(i).MovType + '|| ' +
                     dateToStr(YMOFXReader1.Get(i).MovDate) + '|| ' +
                     YMOFXReader1.Get(i).ID + '|| ' +
                     YMOFXReader1.Get(i).Document + '|| '

                     );
   end;
end;

procedure TFrm_Caixa_ConsAuto.bbLerClick(Sender: TObject);
begin
if FileExists(edt_nomarq.Text) then
   fLerOFX(edt_nomarq.Text);
end;

procedure TFrm_Caixa_ConsAuto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.

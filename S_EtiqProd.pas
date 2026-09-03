unit S_EtiqProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons,
  RDprint,s_lerarq_geral;

type
  TFrm_EtiqProd = class(TForm)
    DataSource1: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    temp: TQuery;
    tempPDCODPRO: TFloatField;
    tempPDNOME: TStringField;
    tempPDPRECO1: TFloatField;
    tempPDSALDO: TFloatField;
    UpdateSQL1: TUpdateSQL;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CADPRO: TQuery;
    RDprint1: TRDprint;
    tempPDPRECO2: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_EtiqProd: TFrm_EtiqProd;

implementation

uses Func, lerarq;

{$R *.dfm}

procedure TFrm_EtiqProd.FormCreate(Sender: TObject);
begin

     temp.Active := true;
     temp.Edit;
     tempPDPRECO1.DisplayFormat := mcasas;
     tempPDPRECO2.DisplayFormat := mcasas;

end;

procedure TFrm_EtiqProd.DBGrid1ColExit(Sender: TObject);
begin
    temp.Edit;
    if tempPDCODPRO.AsString <> '' then
    begin
       CADPRO.Close;
       CADPRO.SQL.CLEAR;
       CADPRO.SQL.ADD('SELECT PDNOME,PDSALDO,PDPRECO1 FROM CADPRO WHERE PDCODPRO = '+tempPDCODPRO.DisplayText);
       CADPRO.OPEN;

       IF CADPRO.IsEmpty THEN
       BEGIN
           SHOWMESSAGE('PRODUTO NÃO ENCONTRADO....');
           abort;
       END;
       tempPDNOME.AsString   := CADPRO.FIELDBYNAME('PDNOME').AsString;
       tempPDPRECO1.AsString := CADPRO.FIELDBYNAME('PDPRECO1').AsString;
    end;

end;

procedure TFrm_EtiqProd.BitBtn2Click(Sender: TObject);
begin
    CLOSE;
end;


procedure TFrm_EtiqProd.BitBtn1Click(Sender: TObject);
var
linha : integer;
linha2: integer;
i     : integer;
contador : integer;
valor  : real;

begin

    RDprint1.Abrir;
    Rdprint1.OpcoesPreview.Preview := true;
    linha:=0;
    linha2:=0;
    temp.First;
    while not temp.Eof do
    begin

        valor    := Arredonda(tempPDSALDO.AsInteger/2,0);
        contador := trunc(valor);
        for i := 1 to (contador) do
        begin

            Rdprint1.Imp(1,001,'Cod.Produto.: '+tempPDCODPRO.AsString);
            Rdprint1.Imp(2,001,copy(tempPDNOME.AsString,1,45));
            Rdprint1.Imp(3,001,copy(tempPDNOME.AsString,46,45));
            if tempPDPRECO2.AsString <> '' then
               Rdprint1.ImpF(5,001,FormatFloat(mcasas,tempPDPRECO2.AsFloat),[comp12,negrito])
               else Rdprint1.ImpF(5,001,FormatFloat(mcasas,tempPDPRECO1.AsFloat),[comp12,negrito]);

            Rdprint1.Imp(1,050,'Cod.Produto.: '+tempPDCODPRO.AsString);
            Rdprint1.Imp(2,050,copy(tempPDNOME.AsString,1,45));
            Rdprint1.Imp(3,050,copy(tempPDNOME.AsString,46,45));
            if tempPDPRECO2.AsString <> '' then
               Rdprint1.ImpF(5,050,FormatFloat(mcasas,tempPDPRECO2.AsFloat),[comp12,negrito])
               else Rdprint1.ImpF(5,050,FormatFloat(mcasas,tempPDPRECO1.AsFloat),[comp12,negrito]);

            RDprint1.Novapagina;
        end;

        temp.Next;
    end;

    if rdprint1.Setup then Rdprint1.Fechar;
    showmessage('ok - impressao Concluida...');

end;

procedure TFrm_EtiqProd.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     temp.Edit;
end;

procedure TFrm_EtiqProd.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     temp.Edit;
end;

procedure TFrm_EtiqProd.DBGrid1CellClick(Column: TColumn);
begin
     temp.Edit;
end;

procedure TFrm_EtiqProd.DBGrid1ColEnter(Sender: TObject);
begin
     temp.Edit;
end;

procedure TFrm_EtiqProd.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
     temp.Edit;
if (DBGrid1.SelectedField=tempPDCODPRO) then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      tempPDCODPRO.Value:=ValFloat(fChamaPro(0,'Frm_EtiqProd',key));
      end;
   end
else if (DBGrid1.SelectedField=tempPDSALDO) then
   begin
   if not (key in ['0'..'9']) then
      key:=#0;
   end
else if (DBGrid1.SelectedField=tempPDPRECO2) then
   begin
   if (key in [',','.']) then
      key:=DecimalSeparator;
   end;


end;

procedure TFrm_EtiqProd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

end.

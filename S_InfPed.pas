unit S_InfPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, Grids,func;

type
  TFrm_InfPed = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    bbSair: TBitBtn;
    STG1: TStringGrid;
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_InfPed: TFrm_InfPed;

implementation

{$R *.dfm}

procedure TFrm_InfPed.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_InfPed.FormCreate(Sender: TObject);
var
mlin: Integer;
x,y,z,w: Integer;
begin
mlin:=0;
STG1.Cells[0,mlin]:='Tipo de Pedido';
STG1.Cells[1,mlin]:='1a. Ação Estoque';
STG1.Cells[2,mlin]:='2a. Ação Estoque';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='00-Orçamento';
STG1.Cells[1,mlin]:='Não Movimenta Estoque';
STG1.Cells[2,mlin]:=' ';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='01-Venda Normal';
STG1.Cells[1,mlin]:='Baixa Normal';
STG1.Cells[2,mlin]:=' ';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='02-Simples Remessa';
STG1.Cells[1,mlin]:='Baixa Normal';
STG1.Cells[2,mlin]:=' ';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='03-Devolucao a Fornecedor';
STG1.Cells[1,mlin]:='Baixa Normal';
STG1.Cells[2,mlin]:=' ';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='04-Remessa p/Troca ';
STG1.Cells[1,mlin]:='Baixa Normal';
STG1.Cells[2,mlin]:=' ';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='05-Transferencia de Mercadorias';
STG1.Cells[1,mlin]:='Baixa Normal';
STG1.Cells[2,mlin]:=' ';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='06-Remessa p/Beneficiamento';
STG1.Cells[1,mlin]:='Baixa Normal';
STG1.Cells[2,mlin]:=' ';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='07-Remessa p/Venda(Vda.Fora do Estab.';
STG1.Cells[1,mlin]:='Baixa Normal';
STG1.Cells[2,mlin]:='Entra em Remessa Venda';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='08-Devolução Cliente(Entrada) Normal';
STG1.Cells[1,mlin]:='Entrada Normal';
STG1.Cells[2,mlin]:=' ';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='09-Emprestimo de Mercadorias';
STG1.Cells[1,mlin]:='Baixa Normal';
STG1.Cells[2,mlin]:=' ';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='10-Nota Complementar';
STG1.Cells[1,mlin]:='Não Movimenta Estoque';
STG1.Cells[2,mlin]:=' ';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='11-Remessa Para Consignações';
STG1.Cells[1,mlin]:='Baixa Normal';
STG1.Cells[2,mlin]:='Entra em Consignados';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='12-Devolução Mercadoria Consignações';
STG1.Cells[1,mlin]:='Baixa Consignados';
STG1.Cells[2,mlin]:='Entra Normal';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='13-Devolução Remessa p/Venda(Vda.Fora do Estab.)';
STG1.Cells[1,mlin]:='Baixa Remessa Venda';
STG1.Cells[2,mlin]:='Entra Normal';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='14-Venda Mercadoria Consignada';
STG1.Cells[1,mlin]:='Baixa Consignados';
STG1.Cells[2,mlin]:='            ';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='15-Venda Remessa p/Venda(Vda.Fora do Estabel.)';
STG1.Cells[1,mlin]:='Baixa Remessa Venda';
STG1.Cells[2,mlin]:='            ';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='16-Venda Normal(Troca de Mercadorias)';
STG1.Cells[1,mlin]:='Baixa Normal';
STG1.Cells[2,mlin]:=' ';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='17-Devolução Cliente(Entrada)-(Troca de Mercadorias)';
STG1.Cells[1,mlin]:='Entrada Normal';
STG1.Cells[2,mlin]:=' ';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='18-Transferencias de Mercadorias Entrada';
STG1.Cells[1,mlin]:='Entrada Normal';
STG1.Cells[2,mlin]:=' ';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='19-Devolução de Mercadorias de Terceiros(Consignadas)';
STG1.Cells[1,mlin]:='Saida Normal';
STG1.Cells[2,mlin]:='Saida em Estoque de Terceiros';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='20-Remessa p/Industrialização';
STG1.Cells[1,mlin]:='Baixa Normal';
STG1.Cells[2,mlin]:=' ';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='21-Remessa p/Brinde';
STG1.Cells[1,mlin]:='Baixa Normal';
STG1.Cells[2,mlin]:=' ';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='22-Remessa Amostra Gratis';
STG1.Cells[1,mlin]:='Baixa Normal';
STG1.Cells[2,mlin]:=' ';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='23-Remessa p/Demonstração';
STG1.Cells[1,mlin]:='Baixa Normal';
STG1.Cells[2,mlin]:=' ';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='24-Remessa p/Conserto';
STG1.Cells[1,mlin]:='Baixa Normal';
STG1.Cells[2,mlin]:=' ';
mlin:=mlin+1;
STG1.RowCount:=mlin+1;
STG1.Cells[0,mlin]:='25-Outras Saidas';
STG1.Cells[1,mlin]:='Baixa Normal';
STG1.Cells[2,mlin]:=' ';
y:=0;
z:=0;
for x:=0 to high(tab_tped_mov)-1 do
   begin
   y:=y+1;
   z:=0;
   for w:=1 to 8 do
      begin
      if (tab_tped_mov[x,01][w])='S' then
         begin
         z:=z+1;
         if w=1 then
            STG1.Cells[2+z,y]:='Entrada Normal'
         else if w=2 then
            STG1.Cells[2+z,y]:='Entrada Consignada'
         else if w=3 then
            STG1.Cells[2+z,y]:='Entrada Remssa para Venda'
         else if w=4 then
            STG1.Cells[2+z,y]:='Entrada Estoque de Terceiros'
         else if w=5 then
            STG1.Cells[2+z,y]:='Saida Normal'
         else if w=6 then
            STG1.Cells[2+z,y]:='Saida Consignado'
         else if w=7 then
            STG1.Cells[2+z,y]:='Saida Remessa p/Venda'
         else if w=8 then
            STG1.Cells[2+z,y]:='Saida Estoque de Terceiros'
         end;
      if z=0 then
         STG1.Cells[2+1,y]:='Nenhuma Ação'
      end;
   end;
end;

procedure TFrm_InfPed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

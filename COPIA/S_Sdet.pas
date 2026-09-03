unit S_Sdet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, func;

type
  TFrm_SDet = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    RG_ARQ: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RG_LOCAL: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_SDet: TFrm_SDet;
  marq: array [1..10] of integer;
  mnom: array [1..10] of string;

implementation

uses S_TPro;

{$R *.dfm}

procedure TFrm_SDet.FormCreate(Sender: TObject);
begin
if mlorigem=0 then
   begin
   Frm_SDet.Caption:='Selecionado o Tipo do Sub-Detalhe';
   RG_ARQ.Caption  :='Sub-Detalhes Disponiveis';
   RG_LOCAL.Visible:=True;
   if mreltab='PED1' then
      begin
      RG_ARQ.Items.Add('Duplicatas a Receber');
      marq[01]:=25;
      mnom[01]:='CADDAR';
      RG_ARQ.Items.Add('Notas Fiscais de Saidas');
      marq[02]:=22;
      mnom[02]:='CADNS';
      RG_ARQ.Items.Add('Pedidos(Detalhes/Itens)');
      marq[03]:=10;
      mnom[03]:='PED2';
      RG_ARQ.ItemIndex:=0;
      end
   else if mreltab='PFOR1' then
      begin
      RG_ARQ.Items.Add('Duplicatas a Pagar');
      marq[01]:=13;
      mnom[01]:='CADDAP';
      RG_ARQ.Items.Add('Notas Fiscais de Entrada');
      marq[02]:=16;
      mnom[02]:='CADNE';
      RG_ARQ.Items.Add('Pedidos(Detalhes/Itens)');
      marq[03]:=19;
      mnom[03]:='PFOR2';
      RG_ARQ.ItemIndex:=0;
      end
   else if mreltab='CADFOR' then
      begin
      RG_ARQ.items.Add('Duplicatas a Pagar');
      marq[01]:=13;
      mnom[01]:='CADDAP';
      RG_ARQ.Items.Add('Notas Fiscais de Entradas');
      mnom[02]:='CADNE';
      marq[02]:=16;
      RG_ARQ.Items.Add('Pedidos de Compras(cabecalho/totais)');
      mnom[03]:='PFOR1';
      marq[03]:=31;
      RG_ARQ.ItemIndex:=0;
      end
   else if mreltab='CADCLI' then
      begin
      RG_ARQ.Items.Add('Pedido de Vendas (cabecalho/totais)');
      marq[01]:=28;
      mnom[01]:='PED1';
      RG_ARQ.Items.Add('Duplicatas a Receber');
      mnom[02]:='CADDAR';
      marq[02]:=25;
      RG_ARQ.Items.Add('Notas fiscais de Vendas');
      marq[03]:=22;
      mnom[03]:='CADNS';
      RG_ARQ.ItemIndex:=0;
      end
   else if mreltab='CADUF' then
      begin
      RG_ARQ.Items.Add('Pedidos de Vendas (Cabecalho/totais)');
      marq[01]:=28;
      mnom[01]:='PED1';
      RG_ARQ.Items.Add('Duplicatas a Receber');
      marq[02]:=25;
      mnom[02]:='CADDAR';
      rg_arq.Items.add('Duplicatas a Pagar');
      marq[03]:=13;
      mnom[03]:='CADDAP';
      RG_ARQ.Items.Add('Notas Fiscais de Vendas');
      marq[04]:=22;
      mnom[04]:='CADNS';
      RG_ARQ.Items.Add('Notas Fiscais de Compras');
      marq[05]:=16;
      mnom[05]:='CADNE';
      RG_ARQ.Items.Add('Pedidos de Compras (Cabecalho/totais)');
      marq[06]:=31;
      mnom[06]:='PFOR1';
      RG_ARQ.ItemIndex:=0;
      end
   else if mreltab='CADVEN' then
      begin
      RG_ARQ.items.Add('Pedidos de Vendas (Cabecalho/totais)');
      marq[01]:=28;
      mnom[01]:='PED1';
      RG_ARQ.Items.Add('Duplicatas a Receber');
      marq[02]:=25;
      mnom[02]:='CADDAR';
      RG_ARQ.ItemIndex:=0;
      end
   else if mreltab='CADTRA' then
      begin
      RG_ARQ.Items.Add('Pedidos de Vendas (Cabecalho/totais)');
      marq[01]:=28;
      mnom[01]:='PED1';
      end
   else if mreltab='CADPV' then
      begin
      RG_ARQ.Items.Add('Pedidos de Vendas (Cabecalho/totais)');
      marq[01]:=28;
      mnom[01]:='PED1';
      RG_ARQ.ItemIndex:=0;

      end
   else if mreltab='CADBCO' then
      begin
      RG_ARQ.Items.Add('Pedidos de Vendas (Cabecalho/totais)');
      marq[01]:=28;
      mnom[01]:='PED1';
      RG_ARQ.Items.Add('Duplicatas a Receber');
      marq[02]:=25;
      mnom[02]:='CADDAR';
      RG_ARQ.ItemIndex:=0;
      end
   else if mreltab='NF' then
      begin
      RG_ARQ.Items.Add('Pedidos de Vendas (Forma de Pagamento)');
      marq[01]:=40;
      mnom[01]:='CADPFP';
      RG_ARQ.Items.Add('Pedidos de Vendas (Pendencias de Mercadorias)');
      marq[02]:=50;
      mnom[02]:='CADPEN';

      RG_ARQ.Items.Add('Pedidos de Vendas (Trocas de Mercadorias)');
      marq[03]:=30;
      mnom[03]:='CADP02_TROCAS';
      RG_ARQ.ItemIndex:=0;

      RG_ARQ.Items.Add('Materias Primas Utilizadas p/Fabricar os Produtos)');
      marq[04]:=35;
      mnom[04]:='CADP02_MP';
      RG_ARQ.ItemIndex:=0;
      end
   else
      begin
      fMensagem('Nao ha sub-Detalhes para esta tabulacao!',0,['0'],0);
      BitBtn2.Click;
      end;
   end
else
   begin
   Frm_SDet.Caption:='Selecionado o Local do Operador';
   RG_ARQ.Caption  :='Locais  Disponiveis';
   RG_LOCAL.Visible:=False;
   if mreltab='PED1' then
      begin
      RG_ARQ.Items.Add('Arquivo Principal');
      marq[01]:=0;
      mnom[01]:='PED1';
      RG_ARQ.Items.Add('Sub-Detalhe Duplicatas a Receber');
      marq[02]:=25;
      mnom[02]:='CADDAR';
      RG_ARQ.
      Items.Add('Sub-Detalhe Notas Fiscais de Saidas');
      marq[03]:=22;
      mnom[03]:='CADNS';
      marq[04]:=10;
      mnom[04]:='PED2';
      RG_ARQ.Items.Add('Pedido.(Detalhes/Itens)');
      RG_ARQ.ItemIndex:=0;
      end
   else if mreltab='PFOR1' then
      begin
      RG_ARQ.Items.Add('Arquivo Principal');
      marq[01]:=0;
      mnom[01]:='PFOR1';
      RG_ARQ.Items.Add('Duplicatas a Pagar');
      marq[02]:=13;
      mnom[02]:='CADDAP';
      RG_ARQ.Items.Add('Notas Fiscais de Entrada');
      marq[03]:=16;
      mnom[03]:='CADNE';
      RG_ARQ.Items.Add('Pedidos(Detalhes/Itens)');
      marq[04]:=19;
      mnom[04]:='PFOR2';
      RG_ARQ.ItemIndex:=0;
      end

   else if mreltab='CADPRO' then
      begin
      RG_ARQ.Items.Add('Arquivo Principal');
      marq[01]:=0;
      mnom[01]:='CADPRO';
      RG_ARQ.ItemIndex:=0;
      end
   else if mreltab='CADFOR' then
      begin
      RG_ARQ.Items.Add('Arquivo Principal');
      marq[01]:=0;
      mnom[01]:='CADFOR';
      RG_ARQ.Items.Add('Sub-Detalhes Pedidos de Vendas (Cabecalho/totais)');
      marq[02]:=28;
      mnom[02]:='PED1';
      RG_ARQ.items.Add('Sub-Detalhe Duplicatas a Pagar');
      marq[04]:=13;
      mnom[04]:='CADDAP';
      RG_ARQ.Items.Add('Sub-Detalhe Notas Fiscais de Entradas');
      mnom[05]:='CADNE';
      marq[05]:=16;
      RG_ARQ.Items.Add('Sub-Detalhe Pedidos de Compras(cabecalho/totais)');
      mnom[06]:='PFOR1';
      marq[06]:=31;
      RG_ARQ.ItemIndex:=0;
      end
   else if mreltab='CADCLI' then
      begin
      RG_ARQ.Items.Add('Arquivo Principal');
      marq[01]:=0;
      mnom[01]:='CADCLI';
      RG_ARQ.Items.Add('Sub-Detalhes Pedidos de Vendas (Cabecalho/totais)');
      marq[02]:=28;
      mnom[02]:='PED1';
      RG_ARQ.Items.Add('Sub-Detalhe Duplicatas a Receber');
      mnom[03]:='CADDAR';
      marq[03]:=25;
      RG_ARQ.Items.Add('Sub-Detalhe Notas fiscais de Vendas');
      marq[04]:=22;
      mnom[04]:='CADNS';
      RG_ARQ.ItemIndex:=0;
      end
   else if mreltab='CADUF' then
      begin
      RG_ARQ.Items.Add('Arquivo Principal');
      marq[01]:=0;
      mnom[01]:='CADUF';
      RG_ARQ.Items.Add('Sub-Detalhes Pedidos de Vendas (Cabecalho/totais)');
      marq[02]:=28;
      mnom[02]:='PED1';
//      RG_ARQ.Items.Add('Sub-Detalhes Pedidos de Vendas (detalhes/itens)');
//      marq[03]:=10;
//      mnom[03]:='PED2';
      rg_arq.Items.add('sub-Detalhes de Duplicatas a Receber');
      marq[04]:=25;
      mnom[04]:='CADDAR';
      rg_arq.Items.add('Sub-Detalhe Duplicatas a Pagar');
      marq[05]:=13;
      mnom[05]:='CADDAP';
      RG_ARQ.Items.Add('Sub-Detalhe Notas Fiscais de Vendas');
      marq[06]:=22;
      mnom[06]:='CADNS';
      RG_ARQ.Items.Add('Sub-Detalhe Notas Fiscais de Compras');
      marq[07]:=16;
      mnom[07]:='CADNE';
      RG_ARQ.Items.Add('Sub-Detalhe Pedidos de Compras(cabecalho/totais)');
      marq[08]:=31;
      mnom[08]:='PEDFOR';
//      RG_ARQ.Items.Add('Sub-Detalhe Pedidos de Compras(detalhes/itens)');
//      marq[09]:=19;
//      mnom[09]:='PEDFOR';
      RG_ARQ.ItemIndex:=0;

      end
   else if mreltab='CADVEN' then
      begin
      RG_ARQ.Items.Add('Arquivo Principal');
      marq[01]:=0;
      mnom[01]:='CADVEN';
      RG_ARQ.Items.Add('Sub-Detalhes Pedidos de Vendas (Cabecalho/totais)');
      marq[02]:=28;
      mnom[02]:='PED1';
      RG_ARQ.Items.Add('Sub-Detalhe Duplicatas a Receber');
      marq[03]:=25;
      mnom[03]:='CADDAR';
      RG_ARQ.ItemIndex:=0;
      end
   else if mreltab='CADTRA' then
      begin
      RG_ARQ.Items.Add('Arquivo Principal');
      marq[01]:=0;
      mnom[01]:='CADTRA';
      RG_ARQ.Items.Add('Sub-Detalhes Pedidos de Vendas (Cabecalho/totais)');
      marq[02]:=28;
      mnom[02]:='PED1';
      RG_ARQ.ItemIndex:=0;
      end
   else if mreltab='CADPV' then
      begin
      RG_ARQ.Items.Add('Arquivo Principal');
      marq[01]:=0;
      mnom[01]:='CADPV';
      RG_ARQ.Items.Add('Sub-Detalhes Pedidos de Vendas (Cabecalho/totais)');
      marq[02]:=28;
      mnom[02]:='PED1';
      end
   else if mreltab='CADBCO' then
      begin
      RG_ARQ.Items.Add('Arquivo Principal');
      marq[01]:=0;
      mnom[01]:='CADBCO';
      RG_ARQ.Items.Add('Sub-Detalhes Pedidos de Vendas (Cabecalho/totais)');
      marq[02]:=28;
      mnom[02]:='PED1';
      RG_ARQ.Items.Add('Sub-Detalhes Pedidos de Vendas (detalhes/itens)');
      marq[03]:=25;
      mnom[03]:='CADDAR';
      RG_ARQ.ItemIndex:=0;
      end
   else if mreltab='NF' then
      begin
      RG_ARQ.Items.Add('Arquivo Principal');
      marq[01]:=35;
      mnom[01]:='CAB';
      RG_ARQ.Items.Add('Sub-Detalhes Pedidos de Vendas (detalhes produtos)');
      marq[02]:=36;
      mnom[02]:='COR';
      RG_ARQ.Items.Add('Sub-Detalhes Pedidos de Vendas (detalhes servicos)');
      marq[03]:=37;
      mnom[03]:='SER';

      RG_ARQ.Items.Add('Pedidos de Vendas (Forma de Pagamento)');
      marq[04]:=40;
      mnom[04]:='CADPFP';
      RG_ARQ.Items.Add('Pedidos de Vendas (Pendencias de Mercadorias)');
      marq[05]:=50;
      mnom[05]:='CADPEN';

      RG_ARQ.Items.Add('Pedidos de Vendas (Trocas de Mercadorias) ');
      marq[06]:=60;
      mnom[06]:='CADP02_TROCAS';

      RG_ARQ.Items.Add('Pedidos de Vendas (Materias Primas Utilizadas) ');
      marq[07]:=70;
      mnom[07]:='CADP02_MP';

      RG_ARQ.ItemIndex:=0;
      end
   else
      begin
      RG_ARQ.Items.Add('Arquivo Principal');
      mnom[01]:=mreltab;
      marq[01]:=0;
      RG_ARQ.ItemIndex:=0;
      end;
   end;

{ DM1.Tb_TDVTLOCAL.Value
0-Cabecalho do relatorio principal
1-Corpo/detalhes do relatorio principal
2-Rodape do relatorio principal
3-Cabecalho do Grupo quando principal
10-Cabecalho do sub-detalhe quando for PEDIDO(itens)
11-Corpo/detalhes do Sub-Detalhe quando for pedido(itens)
12-Rodape do Sub-Detalhe quando for Pedido(itens)

28-Cabecalho do sub-detalhe quando for PEDIDO (totais)
29-Corpo/detalhes do Sub-Detalhe quando for pedido (totais)
30-Rodape do Sub-Detalhe quando for Pedido (totais)

13-Cabecalho do sub-Detalhe quando for DUPLICATAS A PAGAR
14-Corpo/Detalhe do Sub-Detalhe quando for DUPLICATAS A PAGAR
15-Rodape do Sub-Detalhe quando for DUPLICATAS A PAGAR
16-Cabecalho do Sub-Detalhe Quando for NOTAS FISCAIS DE ENTRADAS
17-Corpo/Detalhe do Sub-Detalhe quando for NOTAS FISCAIS DE ENTRADAS
18-Rodape do Sub-Detalhe quando for NOTAS FISCAIS DE ENTRADAS
19-Cabecalho do Sub-Detalhe quando for PEDIDO DE COMPRAS(itens)
20-Corpo/Detalhe do Sub-Detalhe quando for PEDIDO DE COMPRAS(itens)
21-Rodape do Sub-Detalhe quando for PEDIDO DE COMPRAS(itens)

31-Cabecalho do Sub-Detalhe quando for PEDIDO DE COMPRAS(totais)
32-Corpo/Detalhe do Sub-Detalhe quando for PEDIDO DE COMPRAS(totais)
33-Rodape do Sub-Detalhe quando for PEDIDO DE COMPRAS(totais)

35-Pedido cabecalho / rodape
36-pedido produtos detalhes
37-pedido servicos detalhes

22-Cabecalho do Sub-Detalhe Quando for NOTAS FISCAIS DE SAIDAS
23-Corpo/Detalhe do Sub-Detalhe quando for NOTAS FISCAIS DE SAIDAS
24-Rodape do Sub-Detalhe quando for NOTAS FISCAIS DE SAIDAS
25-Cabecalho do sub-Detalhe quando for DUPLICATAS A RECEBER
26-Corpo/Detalhe do Sub-Detalhe quando for DUPLICATAS A RECEBER
27-Rodape do Sub-Detalhe quando for DUPLICATAS A RECEBER
98-Impressao Inicial do Relatorio
99-Impressao no Final do Relatorio

40-Cabecalho do Formas de Pagamento do Pedido
41-Corpo/detalhes do Formas de Pagamento do Pedido
42-Rodape do Formas de Pagamentos do Pedido

50-Cabecalho de Pendencias de Mercadorias
51-Corpo/detalhes de Pendencias de Mercadorias
52-Rodape de Pendencias de Mercadorias  }

end;

procedure TFrm_SDet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.

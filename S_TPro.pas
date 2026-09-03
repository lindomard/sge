unit S_TPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, S_TProCa, RDprint, S_DM1, db, dbtables,
  func,  S_TRelT, S_Sdet, S_ExpTDV, S_ImpTDV, S_TDet;

type
  TFrm_TPro = class(TForm)
    Panel1: TPanel;
    CABECALHO: TBitBtn;
    CORPO: TBitBtn;
    RODAPE: TBitBtn;
    EXPORTAR: TBitBtn;
    SAIR: TBitBtn;
    RDprint1: TRDprint;
    SELECIONAR: TBitBtn;
    NOMREL: TLabel;
    Label2: TLabel;
    NOMARQ: TLabel;
    CAB_GRU: TBitBtn;
    SUB_DET: TBitBtn;
    IMP_INI: TBitBtn;
    IMP_FIM: TBitBtn;
    ROD_GRU: TBitBtn;
    IMPORTAR: TBitBtn;
    procedure CABECALHOClick(Sender: TObject);
    procedure EXPORTARClick(Sender: TObject);
    procedure CORPOClick(Sender: TObject);
    procedure RODAPEClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure SELECIONARClick(Sender: TObject);
    procedure CAB_GRUClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SUB_DETClick(Sender: TObject);
    procedure IMP_INIClick(Sender: TObject);
    procedure IMP_FIMClick(Sender: TObject);
    procedure ROD_GRUClick(Sender: TObject);
    procedure IMPORTARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_TPro: TFrm_TPro;
  mrelat : Integer;
implementation

{$R *.dfm}

procedure TFrm_TPro.CABECALHOClick(Sender: TObject);
begin
if NOMREL.Caption='' then
   Begin
   fMensagem('Favor Selecionar Um Relatório!',0,['0'],0);
   exit;
   end;
mrelat:=0;
if Frm_TProCa=nil then
   Application.CreateForm(TFrm_TProCa, Frm_TProCa)
else
   begin
   Frm_TProCa.Free;
   Frm_TProCa:=nil;
   Application.CreateForm(TFrm_TProCa, Frm_TProCa);
   end;
Frm_TProCa.ShowModal;
Frm_TProCa.Free;
Frm_TProCa:=nil;
end;

procedure TFrm_TPro.EXPORTARClick(Sender: TObject);
begin
fMensagem('Temporariamente bloqueado, use Tabulações diversas',0,['0'],0);
exit;
if NOMREL.Caption='' then
   Begin
   Fmensagem('Favor Selecionar Um Relatório. ',0,['0'],0);
   abort;
   end;
if Frm_ExpTDV=nil then
   Application.CreatEform(TFrm_ExpTDV, Frm_ExpTDV)
else
   begin
   Frm_ExpTDV.Free;
   Frm_ExpTDV:=nil;
   Application.CreatEform(TFrm_ExpTDV, Frm_ExpTDV);
   end;
Frm_ExpTDV.ShowModal;
Frm_ExpTDV.Free;
Frm_ExpTDV:=nil;
end;

procedure TFrm_TPro.CORPOClick(Sender: TObject);
begin
if NOMREL.Caption='' then
   Begin
   Fmensagem('Favor Selecionar Um Relatório. ',0,['0'],0);
   abort;
   end;
mrelat:=1;

if Frm_TDet=nil then
   Application.CreateForm(TFrm_tdet, Frm_TDet)
else
   begin
   Frm_TDet.Free;
   Frm_TDet:=nil;
   Application.CreateForm(TFrm_tdet, Frm_TDet);
   end;
if mreltab='NF' then
   begin
   mtdet:=0;
   if Frm_TDet.ShowModal<>mrok then
      begin
      Frm_TDet.Free;
      Frm_TDet:=nil;
      exit;
      end
   else
      begin
      mtdet:=Frm_TDet.RadioGroup1.ItemIndex+1;
      if Frm_TDet.RadioGroup1.ItemIndex=1 then
         mrelat:=3;
      end;
   end;
if Frm_TProCa=nil then
   Application.CreateForm(TFrm_TProCa, Frm_TProCa)
else
   begin
   Frm_TProCa.Free;
   Frm_TProCa:=nil;
   Application.CreateForm(TFrm_TProCa, Frm_TProCa);
   end;


Frm_TProCa.ShowModal;
Frm_TProCa.Free;
Frm_TProCa:=nil;
Frm_TDet.Free;
Frm_TDet:=nil;

end;

procedure TFrm_TPro.RODAPEClick(Sender: TObject);
begin
if NOMREL.Caption='' then
   Begin
   Fmensagem('Favor Selecionar Um Relatório. ',0,['0'],0);
   abort;
   end;
mrelat:=2;
if Frm_TProCa=nil then
   Application.CreateForm(TFrm_TProCa, Frm_TProCa)
else
   begin
   Frm_TProCa.Free;
   Frm_TProCa:=nil;
   Application.CreateForm(TFrm_TProCa, Frm_TProCa)
   end;
Frm_TProCa.ShowModal;
Frm_TProCa.Free;
Frm_TProCa:=nil;
end;

procedure TFrm_TPro.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_TPro.SELECIONARClick(Sender: TObject);
begin
if Frm_TrelT=nil then
   Application.CreateForm(TFrm_TRelT, Frm_TRelT)
else
   begin
   Frm_TRelT.Free;
   Frm_TrelT:=nil;
   Application.CreateForm(TFrm_TRelT, Frm_TRelT);
   end;
Frm_TRelT.ShowModal;
Frm_TRelT.Free;
Frm_TrelT:=nil;
end;

procedure TFrm_TPro.CAB_GRUClick(Sender: TObject);
begin
if NOMREL.Caption='' then
   Begin
   Fmensagem('Favor Selecionar Um Relatório. ',0,['0'],0);
   abort;
   end;
mrelat:=3;
if Frm_TProCa=nil then
   Application.CreateForm(TFrm_TProCa, Frm_TProCa)
else
   begin
   Frm_TProCa.Free;
   Frm_TProCa:=nil;
   Application.CreateForm(TFrm_TProCa, Frm_TProCa);
   end;
Frm_TProCa.ShowModal;
Frm_TProCa.Free;
Frm_TProCa:=nil;
end;

procedure TFrm_TPro.FormCreate(Sender: TObject);
begin
if mreltab='NF' then
   begin
   Frm_TPro.Caption:='Tabulaçao de documentos relacionados a pedidos';
   IMP_INI.Enabled:=False;
   IMP_FIM.Caption:='Imprimir Após os Detalhes';
   IMP_FIM.Enabled:=true;
//   SUB_DET.Enabled:=False;
   CAB_GRU.Enabled:=False;
   ROD_GRU.Enabled:=true;
   end
else if mreltab='CADPRO' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham campos de Produtos e/ou Fornecedores'
else if mreltab='CADFOR' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham Fornecedores'
else if mreltab='CADCLI' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham Clientes'
else if mreltab='CADUF' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham Unidades da Federacao'
else if mreltab='CADTP' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham Tipos de Produtos'
else if mreltab='CADCON' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham Controle de Produtos'
else if mreltab='CADVEN' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham Vendedores'
else if mreltab='CADDAP' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham Duplicatas a Pagar'
else if mreltab='CADDAR' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham Duplicatas a Receber'
else if mreltab='CADNE' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham Notas fiscais de Entrada'
else if mreltab='CADNS' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham Notas fiscais de Saidas'
else if mreltab='CADTRA' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham Transportadoras'
else if mreltab='CADUSR' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham Usuarios do Sistema'
else if mreltab='CADCAR' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham Funcoes os Usuarios do Sistema'
else if mreltab='CADPV' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham Plano de vendas'
else if mreltab='CADBCO' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham bancos'
else if mreltab='CADCCU' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham o cadastro do Centro de Custo'
else if mreltab='CADDEP' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham o cadastro de departamento'
else if mreltab='CADLDR' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham o movimento de Caixa'
else if mreltab='PED1' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham o Cadastro de Pedidos(totais)'
else if mreltab='PED2' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham o Cadastro de Pedidos(Itens)'
else if mreltab='CADRAM' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham o cadastro de ramo de Produtos'
else if mreltab='CADCV' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham o cadastro de convenios'
else if mreltab='PFOR1' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham Pedidos de Fornecedor(Totais)'
else if mreltab='PFOR2' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham Pedidos de Fornecedor(Itens)'
else if mreltab='CADAJU' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham Ajuste de Estoque'
else if mreltab='CADGRU' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios que Contenham Grupos de Produtos'
else if mreltab='CADPEN' then
   Frm_TPro.Caption:='Tabulaçao de Relatorios de pendencias de mercadorias'
else
   Frm_TPro.Caption:='******Relatorio Nao Identificado*******';


end;

procedure TFrm_TPro.SUB_DETClick(Sender: TObject);
var
mitem: Integer;
begin
if NOMREL.Caption='' then
   Begin
   Fmensagem('Favor Selecionar Um Relatório. ',0,['0'],0);
   abort;
   end;
mlorigem:=0; // 0-Para Tabulacoes 1-Operadores
if Frm_SDet=nil then
   Application.CreateForm(TFrm_SDet, Frm_SDet)
else
   begin
   Frm_SDet.Free;
   Frm_SDet:=nil;
   Application.CreateForm(TFrm_SDet, Frm_SDet);
   end;
Frm_Sdet.ShowModal;
if Frm_Sdet.ModalResult=MrOk Then
   begin
   mitem:=Frm_SDet.RG_ARQ.ItemIndex;
   mrelat:=marq[Frm_SDet.RG_ARQ.ItemIndex+1]+Frm_SDet.RG_LOCAL.ItemIndex;
   marq2:=Frm_Sdet.RG_ARQ.Items[mitem];
   mreltab2:=mnom[Frm_SDet.RG_ARQ.ItemIndex+1];
   end
else
   begin
   Frm_SDet.Free;
   Frm_SDet:=nil;
   Abort;
   end;
{ DM1.Tb_TDVTLOCAL.Value
0-Cabecalho do relatorio principal
1-Corpo/detalhes do relatorio principal
2-Rodape do relatorio principal
3-Cabecalho do Grupo quando principal
10-Cabecalho do sub-detalhe quando for PEDIDO
11-Corpo/detalhes do Sub-Detalhe quando for pedido
12-Rodape do Sub-Detalhe quando for Pedido
13-Cabecalho do sub-Detalhe quando for DUPLICATAS A PAGAR
14-Corpo/Detalhe do Sub-Detalhe quando for DUPLICATAS A PAGAR
15-Rodape do Sub-Detalhe quando for DUPLICATAS A PAGAR
16-Cabecalho do Sub-Detalhe Quando for NOTAS FISCAIS DE ENTRADAS
17-Corpo/Detalhe do Sub-Detalhe quando for NOTAS FISCAIS DE ENTRADAS
18-Rodape do Sub-Detalhe quando for NOTAS FISCAIS DE ENTRADAS
19-Cabecalho do Sub-Detalhe quando for PEDIDO DE COMPRAS
20-Corpo/Detalhe do Sub-Detalhe quando for PEDIDO DE COMPRAS
21-Rodape do Sub-Detalhe quando for PEDIDO DE COMPRAS
22-Cabecalho do Sub-Detalhe Quando for NOTAS FISCAIS DE SAIDAS
23-Corpo/Detalhe do Sub-Detalhe quando for NOTAS FISCAIS DE SAIDAS
24-Rodape do Sub-Detalhe quando for NOTAS FISCAIS DE SAIDAS
25-Cabecalho do sub-Detalhe quando for DUPLICATAS A RECEBER
26-Corpo/Detalhe do Sub-Detalhe quando for DUPLICATAS A RECEBER
27-Rodape do Sub-Detalhe quando for DUPLICATAS A RECEBER
40-Cabecalho do Formas de Pagamento do Pedido
41-Corpo/detalhes do Formas de Pagamento do Pedido
42-Rodape do Formas de Pagamentos do Pedido

50-Cabecalho de Pendencias de Mercadorias
51-Corpo/detalhes de Pendencias de Mercadorias
52-Rodape de Pendencias de Mercadorias


30-Cabecalho de Trocas de Mercadorias
31-Corpo/detalhes de trocas de Mercadorias
32-Rodape de trocas de Mercadorias


35-Cabecalho das Materias Primas p/Fabricar os Produtos Vendidos
36-Corpo/detalhes das Materias Primas p/Fabricar os produtos vendidos
37-Rodape das Materias Primas p/Fabricar os produtos vendidos

50-Impressao Inicial do Relatorio
60-Impressao no Final do Relatorio}

if Frm_TProCa=nil then
   Application.CreateForm(TFrm_TProCa, Frm_TProCa)
else
   begin
   Frm_TProCa.Free;
   Frm_TProCa:=nil;
   Application.CreateForm(TFrm_TProCa, Frm_TProCa);
   end;


Frm_TProCa.ShowModal;
Frm_TProCa.Free;
Frm_TProCa:=nil;
mreltab2:='';
end;

procedure TFrm_TPro.IMP_INIClick(Sender: TObject);
begin
if NOMREL.Caption='' then
   Begin
   Fmensagem('Favor Selecionar Um Relatório. ',0,['0'],0);
   abort;
   end;
mrelat:=98;
if Frm_TProCa=nil then
   Application.CreateForm(TFrm_TProCa, Frm_TProCa)
else
   begin
   Frm_TProCa.Free;
   Frm_TProCa:=nil;
   Application.CreateForm(TFrm_TProCa, Frm_TProCa);
   end;
if Frm_TProCa.WindowState=wsMinimized then
   Frm_TProCa.WindowState:=wsNormal
else
   Frm_TProCa.Show;
end;

procedure TFrm_TPro.IMP_FIMClick(Sender: TObject);
begin
if NOMREL.Caption='' then
   Begin
   Fmensagem('Favor Selecionar Um Relatório. ',0,['0'],0);
   exit;
   end;

if mreltab='NF' then
   mrelat:=25
else
   mrelat:=99;
if Frm_TProCa=nil then
   Application.CreateForm(TFrm_TProCa, Frm_TProCa)
else
   begin
   Frm_TProCa.Free;
   Frm_TProCa:=nil;
   Application.CreateForm(TFrm_TProCa, Frm_TProCa);
   end;
Frm_TProCa.ShowModal;
Frm_TProCa.Free;
Frm_TProCa:=nil;
end;

procedure TFrm_TPro.ROD_GRUClick(Sender: TObject);
begin
if NOMREL.Caption='' then
   Begin
   Fmensagem('Favor Selecionar Um Relatório. ',0,['0'],0);
   abort;
   end;
mrelat:=4;
if Frm_TProCa=nil then
   Application.CreateForm(TFrm_TProCa, Frm_TProCa)
else
   begin
   Frm_TProCa.Free;
   Frm_TProCa:=nil;
   Application.CreateForm(TFrm_TProCa, Frm_TProCa);
   end;
Frm_TProCa.ShowModal;
Frm_TProCa.Free;
Frm_TProCa:=nil;
end;

procedure TFrm_TPro.IMPORTARClick(Sender: TObject);
begin
fMensagem('Temporariamente bloqueado, use Tabulações diversas',0,['0'],0);
exit;
if Frm_ImpTDV=nil then
   Application.CreateForm(TFrm_ImpTDV, Frm_ImpTdv)
else
   begin
   Frm_ImpTDV.Free;
   Frm_ImpTDV:=nil;
   Application.CreateForm(TFrm_ImpTDV, Frm_ImpTdv);
   end;
Frm_ImpTDV.ShowModal;
Frm_ImpTDV.Free;
Frm_ImpTDV:=nil;
end;

procedure TFrm_TPro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.

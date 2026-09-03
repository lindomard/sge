unit S_BloqueioVenda;

{
001-Fornecedores
002-Estados
003-Cidades
004-Bairros
005-Ramo de Clientes
006-Clientes
007-Ramo de PRodutos
008-Controle de Produtos
009-Produtos

001-Vendedores
002-Fornecedores
003-Estados
004-Cidades
005-Bairros
006-Ramo de Clientes
007-Clientes
008-Ramo de PRodutos
009-Controle de Produtos
010-Produtos

}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Buttons, ComCtrls, ExtCtrls, Menus,
  ImgList, ToolWin, jpeg,func,S_Impres;

type
  TFrm_BloqueioVenda = class(TForm)
    Panel1: TPanel;
    Tree_BloqueioVenda: TTreeView;
    ImageList1: TImageList;
    Panel2: TPanel;
    SpBtnImprimir: TSpeedButton;
    SpBtnSair: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Incluir1: TMenuItem;
    Excluir1: TMenuItem;
    Image1: TImage;
    procedure Tree_BloqueioVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure SpBtnSairClick(Sender: TObject);
    procedure Incluir1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure SpBtnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function fIncluirItems(pTipo: Integer): Boolean;
    function fExcluirItems(pTipo: Integer): Boolean;

    function fProcuraNivel(pTipo,pItem: Integer): Integer;

    function fAtualizarDadosTreeView(pTipo: Integer): Boolean;

    function fMontarMenu(pTipo: Integer): Boolean;


  public
    { Public declarations }
    Form_Impres_Bloqueia_Venda: TFrm_Impres;


  end;

    function fZeraItensMontados(pTipo: Boolean): Boolean;
    function fCarregarVend(pTipo,pOrigem,pGruBlq: Integer): Boolean;
    function fCarregarFor(pTipo,pOrigem,pGruBlq: Integer): Boolean;
    function fCarregarUF(pTipo,pOrigem,pGruBlq: Integer): Boolean;
    function fCarregarCidades(pTipo,pOrigem,pGruBlq: Integer): Boolean;
    function fCarregarBairros(pTipo,pOrigem,pGruBlq: Integer): Boolean;
    function fCarregarRCli(pTipo,pOrigem,pGruBlq: Integer): Boolean;
    function fCarregarClientes(pTipo,pOrigem,pGruBlq: Integer): Boolean;
    function fCarregarRPro(pTipo,pOrigem,pGruBlq: Integer): Boolean;
    function fCarregarCPro(pTipo,pOrigem,pGruBlq: Integer): Boolean;
    function fCarregarProdutos(pTipo,pOrigem,pGruBlq: Integer): Boolean;

var
  Frm_BloqueioVenda: TFrm_BloqueioVenda;
  Node_Geral,Node_Ven,Node_for,Node_uf,Node_Cidade,Node_Bairros,Node_RCli,Node_Clientes,Node_Rpro,Node_Cpro,Node_Produtos: TTreeNode;
  mItem01, mItem02,mItem03,mItem04,mItem05,mItem06,mItem07,mitem08: Integer;
  mItem09, mItem10,mItem11,mItem12,mItem13,mItem14,mItem15,mitem16: Integer;


  mSel_Nivel1: Integer=0;
  mSel_Nivel2: Integer=0;
  mSel_Nivel3: Integer=0;
  mSel_Nivel4: Integer=0;
  mSel_Nivel5: Integer=0;
  mSel_Nivel6: Integer=0;
  mSel_Nivel7: Integer=0;
  mSel_Nivel8: Integer=0;

  mSel_Nivel9 : Integer=0;
  mSel_Nivel10: Integer=0;
  mSel_Nivel11: Integer=0;
  mSel_Nivel12: Integer=0;
  mSel_Nivel13: Integer=0;
  mSel_Nivel14: Integer=0;
  mSel_Nivel15: Integer=0;
  mSel_Nivel16: Integer=0;

  mSel_Nomecomp: String;
  mSel_NomeTemp: String;

  mQtdNiveis:Integer;
  mTextoNivel: String;

  mCodigo_Sel: String;
  mCodigo_Ant: String;
  mNivelSel: Integer=0;


  mSel_CodVen  :Real=0;
  mSel_CodRcli :Real=0;
  mSel_CodRPro :Real=0;
  mSel_CodFor  :Real=0;
  mSel_CodLoc  :Real=0;
  mSel_CodBai  :Real=0;
  mSel_CodCPro :Real=0;
  mSel_Codpro  :Real=0;
  mSel_CodCli  :Real=0;
  mSel_CodUF   :String='';

  mGrupo_CodVen  :Integer=1;
  mGrupo_CodFor  :Integer=2;
  mGrupo_CodUF   :Integer=3;
  mGrupo_CodLoc  :Integer=4;
  mGrupo_CodBai  :Integer=5;
  mGrupo_CodRcli :Integer=6;
  mGrupo_CodCli  :Integer=7;
  mGrupo_CodRPro :Integer=8;
  mGrupo_CodCPro :Integer=9;
  mGrupo_Codpro  :Integer=10;


  mMontou_CodVen  :Boolean=False;
  mMontou_CodRcli :Boolean=False;
  mMontou_CodRpro :Boolean=False;
  mMontou_CodFor  :Boolean=False;
  mMontou_CodLoc  :Boolean=False;
  mMontou_CodBai  :Boolean=False;
  mMontou_CodCPro  :Boolean=False;
  mMontou_CodPro  :Boolean=False;
  mMontou_Codcli  :Boolean=False;
  mMontou_CodUF   :Boolean=False;

  mUltNivel    :Integer=-1;
  NomeNivel: array [1..10] of string;
  mBloqueio_OrigemChamada: Integer=0;
implementation

uses S_DM1,S_DM4,S_SelBloqueio,lerarq, S_BloqueioVenda_Seleciona,
  S_VendaBloqueada_Relacao;

{$R *.dfm}

procedure TFrm_BloqueioVenda.Tree_BloqueioVendaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
mItem_Temp: Integer;
begin
if key=45 then
   begin
   if Tree_BloqueioVenda.Selected.Count<0 then
       begin
       MessageDlg('Favor Selecionar um ítem!',mtWarning,[mbOk],0);
       exit;
       end;
   fAtualizarDadosTreeView(0);
   fIncluirItems(0);
   end
else if key =46 then
   begin
   if Tree_BloqueioVenda.Selected.Count<0 then
       begin
       MessageDlg('Favor Selecionar um ítem!',mtWarning,[mbOk],0);
       exit;
       end;
   fAtualizarDadosTreeView(0);
   if mQtdNiveis=1 then
      begin
      Node_Temp := Tree_BloqueioVenda.Selected;
      mItem_Temp:= Tree_BloqueioVenda.Selected.AbsoluteIndex;
      Tree_BloqueioVenda.Items.Item[mItem_Temp].Expanded:=true;
      Tree_BloqueioVenda.Items.Item[mItem_Temp+1].Selected:=True;
      fAtualizarDadosTreeView(0);
      end;
   fExcluirItems(0);
   end;


end;

procedure TFrm_BloqueioVenda.FormCreate(Sender: TObject);
begin
Node_Geral   :=NIL;
Node_Ven     :=nil;
Node_for     :=nil;
Node_uf      :=nil;
Node_Cidade  :=nil;
Node_Bairros :=nil;
Node_RCli    :=nil;
Node_Clientes:=nil;
Node_Rpro    :=nil;
Node_CPro    :=nil;
Node_Produtos:=nil;

Tree_BloqueioVenda.Hint:='[INSERT] - Para Incluir'+
            #13+'[DEL] - Para Excluir';
NomeNivel[01]:='Vendedores';
NomeNivel[02]:='Fornecedores';
NomeNivel[03]:='Estados';
NomeNivel[04]:='Cidades';
NomeNivel[05]:='Bairros';
NomeNivel[06]:='Ramo de Clientes';
NomeNivel[07]:='Clientes';
NomeNivel[08]:='Ramo de Produtos';
NomeNivel[09]:='Controle de Produtos';
NomeNivel[10]:='Produtos';
if mBloqueio_OrigemChamada=0 then
   fMontarMenu(0);

end;

function fCarregarVend(pTipo,pOrigem,pGruBlq: Integer): Boolean;
var
// local=001
node_inicial:TTreeNode;
mCodRcli,mCodRPro,mCodCPro,mCodVen,mCodFor, mCodLoc,mCodBai,mCodpro,mCodCli: Real;
mCodUF: String;
begin

mCodRcli :=DM4.Tb_BloqueioBQCODRCLI.Value;
mCodRPro :=DM4.Tb_BloqueioBQCODRPRO.Value;
mCodFor  :=DM4.Tb_BloqueioBQCODFOR.Value;
mCodVen  :=DM4.Tb_BloqueioBQCODVEN.Value;
mCodUF   :=DM4.Tb_BloqueioBQCODUF.Value;
mCodLoc  :=DM4.Tb_BloqueioBQCODLOC.Value;
mCodBai  :=DM4.Tb_BloqueioBQCODBAI.Value;
mCodCPro :=DM4.Tb_BloqueioBQCODCPRO.Value;

mCodpro  :=DM4.Tb_BloqueioBQCODPRO.Value;

mCodCli  :=DM4.Tb_BloqueioBQCODCLI.Value;

if pTipo=0 then
   begin
   if mBloqueio_OrigemChamada=1 then
      begin
      Node_Ven := Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_Ven, nomenivel[mgrupo_codven]);
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=1;
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=1;
      end
   else
      begin
      Node_Ven :=  Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_Ven, nomenivel[mgrupo_codven]);
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=1;
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=1;
      end;
   end
else
   begin
   if mBloqueio_OrigemChamada=1 then
      begin
      Node_Ven  := Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Add(nil, NomeNivel[mgrupo_codven]);
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=0;
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=0;
      end
   else
      begin
      Node_Ven  := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Add(nil, NomeNivel[mgrupo_codven]);
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=0;
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=0;
      end;

   end;
node_inicial:=Node_Ven;
While ( not (DM4.Tb_Bloqueio.Eof) and (DM4.Tb_BloqueioBQGRUBLQ.Value=pGruBlq) and (pTipo=1) )
   or ( not (DM4.Tb_Bloqueio.Eof) and (DM4.Tb_BloqueioBQGRUBLQ.Value=pGruBlq)
   and (mCodRcli =DM4.Tb_BloqueioBQCODRCLI.Value)
   and (mCodRPro =DM4.Tb_BloqueioBQCODRPRO.Value)
   and (mCodCPro =DM4.Tb_BloqueioBQCODCPRO.Value)
   and (mCodPro  =DM4.Tb_BloqueioBQCODPRO.Value)
   and (mCodFor  =DM4.Tb_BloqueioBQCODFOR.Value)
   and (mCodUF   =DM4.Tb_BloqueioBQCODUF.Value)
   and (mCodLoc  =DM4.Tb_BloqueioBQCODLOC.Value)
   and (mCodBai  =DM4.Tb_BloqueioBQCODBAI.Value)
   and (mCodCli  =DM4.Tb_BloqueioBQCODCLI.Value) ) do
   begin
   Node_Ven:=node_inicial;
   if DM4.Tb_BloqueioBQCODVEN.Value=-1 then
      begin
      if mBloqueio_OrigemChamada=1 then
         begin
         Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_Ven, 'Todos');
         if mNivelConsulta=mGrupo_CodVen then
            begin
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=4;
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=4;
            end
         else
            begin
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=3;
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=3;
            end;
         end
      else
         begin
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_Ven, 'Todos');
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=3;
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=3;
         end;

      mMontou_CodVen:=true;
      end
   else if DM4.Tb_BloqueioBQCODVEN.Value<> -2 then
      begin
      if Trim(DM4.Tb_BloqueioNOMVEN.AsString)<>'' then
         begin
         if mBloqueio_OrigemChamada=1 then
            begin
            Node_Ven:=Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_Ven, DM4.Tb_BloqueioNOMVEN.Value+' '+FormatFloat('00000', DM4.Tb_BloqueioBQCODVEN.Value));
            if mNivelConsulta=mGrupo_CodVen then
               begin
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=4;
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=4;
               end
            else
               begin
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=2;
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=2;
               end;
            end
         else
            begin
            Node_Ven:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_Ven, DM4.Tb_BloqueioNOMVEN.Value+' '+FormatFloat('00000', DM4.Tb_BloqueioBQCODVEN.Value));
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=2;
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=2;
            end;

         mMontou_CodVen:=true;
//
         if (DM4.Tb_BloqueioBQCODFOR.AsFloat<>0) and not (mMontou_CodFor)
            and (pGruBlq<>mGrupo_CodFor) and (pOrigem<>mGrupo_CodFor) then
            begin
            Node_for:=Node_Ven;
            fCarregarFor(0,mGrupo_CodVen,pGruBlq);
            Continue;
            end;
         if ((DM4.Tb_BloqueioBQCODUF.AsString<>'') and (DM4.Tb_BloqueioBQCODUF.AsString<>'-2')) and not (mMontou_CodUF)
            and (pGruBlq<>mGrupo_CodUF) and (pOrigem<>mGrupo_CodUF) then
            begin
            Node_uf:=Node_for;
            fCarregarUF(0,mGrupo_CodVen,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODLOC.AsFloat<>0) and not (mMontou_CodLoc)
            and (pGruBlq<>mGrupo_CodLoc) and (pOrigem<>mGrupo_CodLoc) then
            begin
            Node_Cidade:=Node_for;
            fCarregarCidades(0,mGrupo_CodVen,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODBAI.AsFloat<>0) and not (mMontou_CodBai)
            and (pGruBlq<>mGrupo_CodBai) and (pOrigem<>mGrupo_CodBai) then
            begin
            Node_Bairros:=Node_for;
            fCarregarBairros(0,mGrupo_CodVen,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODRCLI.AsFloat<>0) and not (mMontou_CodRcli)
            and (pGruBlq<>mGrupo_CodRcli) and (pOrigem<>mGrupo_CodRcli) then
            begin
            Node_RCli:=Node_for;
            fCarregarRCli(0,mGrupo_CodVen,pGruBlq);
            Continue;
         end;

         if (DM4.Tb_BloqueioBQCODCLI.AsFloat<>0) and not (mMontou_Codcli)
            and (pGruBlq<>mGrupo_CodCli) and (pOrigem<>mGrupo_CodCli) then
            begin
            Node_Clientes:=Node_for;
            fCarregarClientes(0,mGrupo_CodVen,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODRPRO.AsFloat<>0) and not (mMontou_CodRpro)
            and (pGruBlq<>mGrupo_CodRPro) and (pOrigem<>mGrupo_CodRPro) then
            begin
            Node_Rpro:=Node_for;
            fCarregarRPro(0,mGrupo_CodVen,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODCPRO.AsFloat<>0) and not (mMontou_CodCPro)
            and (pGruBlq<>mGrupo_CodCPro) and (pOrigem<>mGrupo_CodCPro) then
            begin
            Node_Cpro:=Node_for;
            fCarregarCPro(0,mGrupo_CodVen,pGruBlq);
            Continue;
            end;

         if (DM4.Tb_BloqueioBQCODPRO.AsFloat<>0) and not (mMontou_CodPro)
            and (pGruBlq<>mGrupo_Codpro) and (pOrigem<>mGrupo_Codpro) then
            begin
            Node_Produtos:=Node_for;
            fCarregarProdutos(0,mGrupo_CodVen,pGruBlq);
            Continue;
            end;
//
         end;
      end;
   DM4.Tb_Bloqueio.Next;
   fZeraItensMontados(False);
   end;
result:=true;
end;


function fCarregarFor(pTipo,pOrigem,pGruBlq: Integer): Boolean;
var
// local=001
node_inicial:TTreeNode;
mCodRcli,mCodCPro,mCodRPro,mCodFor,mCodVen,mCodLoc,mCodBai,mCodpro,mCodCli: Real;
mCodUF: String;
begin

mCodRcli :=DM4.Tb_BloqueioBQCODRCLI.Value;
mCodRPro :=DM4.Tb_BloqueioBQCODRPRO.Value;
mCodCPro :=DM4.Tb_BloqueioBQCODCPRO.Value;
mCodVen  :=DM4.Tb_BloqueioBQCODVEN.Value;
mCodFor  :=DM4.Tb_BloqueioBQCODFOR.Value;
mCodUF   :=DM4.Tb_BloqueioBQCODUF.Value;
mCodLoc  :=DM4.Tb_BloqueioBQCODLOC.Value;
mCodBai  :=DM4.Tb_BloqueioBQCODBAI.Value;
mCodpro  :=DM4.Tb_BloqueioBQCODPRO.Value;
mCodCli  :=DM4.Tb_BloqueioBQCODCLI.Value;

if pTipo=0 then
   begin
   if mBloqueio_OrigemChamada=1 then
      begin
      Node_for := Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_For, nomenivel[mgrupo_codfor]);
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=1;
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=1;
      end
   else
      begin
      Node_for := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_For, nomenivel[mgrupo_codfor]);
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=1;
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=1;
      end;

   end
else
   begin
   if mBloqueio_OrigemChamada=1 then
      begin
      Node_for := Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Add(nil, nomenivel[mgrupo_codfor]);
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=0;
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=0;
      end
   else
      begin
      Node_for := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Add(nil, nomenivel[mgrupo_codfor]);
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=0;
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=0;
      end;

   end;
node_inicial:=Node_for;
While ( not (DM4.Tb_Bloqueio.Eof) and (DM4.Tb_BloqueioBQGRUBLQ.Value=pGruBlq) and (pTipo=1) )
   or ( not (DM4.Tb_Bloqueio.Eof) and (DM4.Tb_BloqueioBQGRUBLQ.Value=pGruBlq)
   and (mCodRcli =DM4.Tb_BloqueioBQCODRCLI.Value)
   and (mCodRPro =DM4.Tb_BloqueioBQCODRPRO.Value)
   and (mCodCPro =DM4.Tb_BloqueioBQCODCPRO.Value)
   and (mCodVen  =DM4.Tb_BloqueioBQCODVEN.Value)
   and (mCodPro  =DM4.Tb_BloqueioBQCODPRO.Value)
   and (mCodUF   =DM4.Tb_BloqueioBQCODUF.Value)
   and (mCodLoc  =DM4.Tb_BloqueioBQCODLOC.Value)
   and (mCodBai  =DM4.Tb_BloqueioBQCODBAI.Value)
   and (mCodCli  =DM4.Tb_BloqueioBQCODCLI.Value) ) do
   begin
   node_for:=node_inicial;
   if DM4.Tb_BloqueioBQCODFOR.Value=-1 then
      begin
      if mBloqueio_OrigemChamada=1 then
         begin
         Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_for, 'Todos');
         if mNivelConsulta=mGrupo_CodFor then
            begin
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=4;
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=4;
            end
         else
            begin
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=3;
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=3;
            end;
         end
      else
         begin
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_for, 'Todos');
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=3;
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=3;
         end;

      mMontou_CodFor:=true;
      end
   else if DM4.Tb_BloqueioBQCODFOR.Value<>-2 then
      begin
      if Trim(DM4.Tb_BloqueioNOMFOR.AsString)<>'' then
         begin
         if mBloqueio_OrigemChamada=1 then
            begin
            Node_for:=Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_for, DM4.Tb_BloqueioNOMFOR.Value+' '+FormatFloat('00000', DM4.Tb_BloqueioBQCODFOR.Value));
            if mNivelConsulta=mGrupo_CodFor then
               begin
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=4;
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=4;
               end
            else
               begin
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=2;
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=2;
               end;
            end
         else
            begin
            Node_for:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_for, DM4.Tb_BloqueioNOMFOR.Value+' '+FormatFloat('00000', DM4.Tb_BloqueioBQCODFOR.Value));
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=2;
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=2;
            end;

         mMontou_CodFor:=true;
//

         if (DM4.Tb_BloqueioBQCODVEN.AsFloat<>0) and not (mMontou_CodVen)
            and (pGruBlq<>mGrupo_CodVen) and (pOrigem<>mGrupo_CodVen) then
            begin
            Node_Ven:=Node_for;
            fCarregarVend(0,mGrupo_CodFor,pGruBlq);
            Continue;
            end;

         if ((DM4.Tb_BloqueioBQCODUF.AsString<>'') and (DM4.Tb_BloqueioBQCODUF.AsString<>'-2')) and not (mMontou_CodUF)
            and (pGruBlq<>mGrupo_CodUF) and (pOrigem<>mGrupo_CodUF) then
            begin
            Node_uf:=Node_for;
            fCarregarUF(0,mGrupo_CodFor,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODLOC.AsFloat<>0) and not (mMontou_CodLoc)
            and (pGruBlq<>mGrupo_CodLoc) and (pOrigem<>mGrupo_CodLoc) then
            begin
            Node_Cidade:=Node_for;
            fCarregarCidades(0,mGrupo_CodFor,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODBAI.AsFloat<>0) and not (mMontou_CodBai)
            and (pGruBlq<>mGrupo_CodBai) and (pOrigem<>mGrupo_CodBai) then
            begin
            Node_Bairros:=Node_for;
            fCarregarBairros(0,mGrupo_CodFor,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODRCLI.AsFloat<>0) and not (mMontou_CodRcli)
            and (pGruBlq<>mGrupo_CodRcli) and (pOrigem<>mGrupo_CodRcli) then
            begin
            Node_RCli:=Node_for;
            fCarregarRCli(0,mGrupo_CodFor,pGruBlq);
            Continue;
         end;

         if (DM4.Tb_BloqueioBQCODCLI.AsFloat<>0) and not (mMontou_Codcli)
            and (pGruBlq<>mGrupo_CodCli) and (pOrigem<>mGrupo_CodCli) then
            begin
            Node_Clientes:=Node_for;
            fCarregarClientes(0,mGrupo_CodFor,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODRPRO.AsFloat<>0) and not (mMontou_CodRpro)
            and (pGruBlq<>mGrupo_CodRPro) and (pOrigem<>mGrupo_CodRPro) then
            begin
            Node_Rpro:=Node_for;
            fCarregarRPro(0,mGrupo_CodFor,pGruBlq);
            Continue;
            end;

         if (DM4.Tb_BloqueioBQCODCPRO.AsFloat<>0) and not (mMontou_CodCPro)
            and (pGruBlq<>mGrupo_CodCPro) and (pOrigem<>mGrupo_CodCPro) then
            begin
            Node_Cpro:=Node_for;
            fCarregarCPro(0,mGrupo_CodFor,pGruBlq);
            Continue;
            end;

         if (DM4.Tb_BloqueioBQCODPRO.AsFloat<>0) and not (mMontou_CodPro)
            and (pGruBlq<>mGrupo_Codpro) and (pOrigem<>mGrupo_Codpro) then
            begin
            Node_Produtos:=Node_for;
            fCarregarProdutos(0,mGrupo_CodFor,pGruBlq);
            Continue;
            end;
//
         end;
      end;
   DM4.Tb_Bloqueio.Next;
   fZeraItensMontados(False);
   end;
result:=true;
end;

function fCarregarUF(pTipo,pOrigem,pGruBlq: Integer): Boolean;
// pLocal=002-Estados
var
node_inicial:TTreeNode;
mCodRcli,mCodCPro,mCodRPro,mcodven, mCodFor, mCodLoc,mCodBai,mCodpro,mCodCli: Real;
mCodUF: String;
begin

mCodRcli :=DM4.Tb_BloqueioBQCODRCLI.Value;
mCodRPro :=DM4.Tb_BloqueioBQCODRPRO.Value;
mCodCPro :=DM4.Tb_BloqueioBQCODCPRO.Value;
mCodFor  :=DM4.Tb_BloqueioBQCODFOR.Value;
mcodven  :=DM4.Tb_BloqueioBQCODVEN.Value;
mCodUF   :=DM4.Tb_BloqueioBQCODUF.Value;
mCodLoc  :=DM4.Tb_BloqueioBQCODLOC.Value;
mCodBai  :=DM4.Tb_BloqueioBQCODBAI.Value;
mCodpro  :=DM4.Tb_BloqueioBQCODPRO.Value;
mCodCli  :=DM4.Tb_BloqueioBQCODCLI.Value;

if pTipo=0 then
   begin
   if mBloqueio_OrigemChamada=1 then
      begin
      Node_uf := Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_uf, NomeNivel[mGrupo_CodUF]);
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=1;
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=1;
      end
   else
      begin
      Node_uf := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_uf, NomeNivel[mGrupo_CodUF]);
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=1;
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=1;
      end;

   end
else
   begin
   if mBloqueio_OrigemChamada=1 then
      begin
      Node_uf := Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Add(nil, NomeNivel[mGrupo_CodUF]);
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=0;
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=0;
      end
   else
      begin
      Node_uf := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Add(nil, NomeNivel[mGrupo_CodUF]);
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=0;
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=0;
      end;
   end;
node_inicial:=Node_uf;
While ( not (DM4.Tb_Bloqueio.Eof) and (DM4.Tb_BloqueioBQGRUBLQ.Value=pGruBlq) and (pTipo=1) )
   or ( not (DM4.Tb_Bloqueio.Eof) and (DM4.Tb_BloqueioBQGRUBLQ.Value=pGruBlq)
   and (mCodRcli =DM4.Tb_BloqueioBQCODRCLI.Value)
   and (mCodRPro =DM4.Tb_BloqueioBQCODRPRO.Value)
   and (mCodCpro =DM4.Tb_BloqueioBQCODCPRO.Value)
   and (mCodPro  =DM4.Tb_BloqueioBQCODPRO.Value)
   and (mcodven  =DM4.Tb_BloqueioBQCODVEN.Value)
   and (mCodFor  =DM4.Tb_BloqueioBQCODFOR.Value)
   and (mCodLoc  =DM4.Tb_BloqueioBQCODLOC.Value)
   and (mCodBai  =DM4.Tb_BloqueioBQCODBAI.Value)
   and (mCodCli  =DM4.Tb_BloqueioBQCODCLI.Value) ) do
   begin
   Node_uf:=node_inicial;
   if DM4.Tb_BloqueioBQCODUF.Value='-1' then
      begin
      if mBloqueio_OrigemChamada=1 then
         begin
         Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_uf, 'Todos');
         if mNivelConsulta=mGrupo_CodUF then
            begin
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=4;
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=4;
            end
         else
            begin
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=3;
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=3;
            end;
         end
      else
         begin
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_uf, 'Todos');
         if mNivelConsulta=mGrupo_CodUF then
            begin
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=4;
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=4;
            end
         else
            begin
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=3;
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=3;
            end;
         end;

      mMontou_CodUF:=true;
      end
   else if DM4.Tb_BloqueioBQCODUF.Value<>'-2' then
      begin
      if Trim(DM4.Tb_BloqueioESTADO.AsString)<>'' then
         begin
         if mBloqueio_OrigemChamada=1 then
            begin
            Node_uf:=Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_uf, DM4.Tb_BloqueioESTADO.Value+' '+DM4.Tb_BloqueioESTADO.Value);
            if mNivelConsulta=mGrupo_CodUF then
               begin
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=4;
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=4;
               end
            else
               begin
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=2;
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=2;
               end;
            end
         else
            begin
            Node_uf:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_uf, DM4.Tb_BloqueioESTADO.Value+' '+DM4.Tb_BloqueioESTADO.Value);
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=2;
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=2;
            end;

         mMontou_CodUF:=true;


//

         if (DM4.Tb_BloqueioBQCODVEN.AsFloat<>0) and not (mMontou_CodVen)
            and (pGruBlq<>mGrupo_CodVen) and (pOrigem<>mGrupo_CodVen) then
            begin
            Node_Ven:=Node_Ven;
            fCarregarVend(0,mGrupo_CodUF,pGruBlq);
            Continue;
            end;

         if (DM4.Tb_BloqueioBQCODFOR.AsFloat<>0) and not (mMontou_CodFor)
            and (pGruBlq<>mGrupo_CodFor) and (pOrigem<>mGrupo_CodFor) then
            begin
            Node_for:=Node_uf;
            fCarregarFor(0,mGrupo_CodUF,pGruBlq);
            Continue;
            end;


         if (DM4.Tb_BloqueioBQCODLOC.AsFloat<>0) and not (mMontou_CodLoc)
            and (pGruBlq<>mGrupo_CodLoc) and (pOrigem<>mGrupo_CodLoc) then
            begin
            Node_Cidade:=Node_uf;
            fCarregarCidades(0,mGrupo_CodUF,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODBAI.AsFloat<>0) and not (mMontou_CodBai)
            and (pGruBlq<>mGrupo_CodBai) and (pOrigem<>mGrupo_CodBai) then
            begin
            Node_Bairros:=Node_uf;
            fCarregarBairros(0,mGrupo_CodUF,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODRCLI.AsFloat<>0) and not (mMontou_CodRcli)
            and (pGruBlq<>mGrupo_CodRcli) and (pOrigem<>mGrupo_CodRcli) then
            begin
            Node_RCli:=Node_uf;
            fCarregarRCli(0,mGrupo_CodUF,pGruBlq);
            Continue;
            end;

         if (DM4.Tb_BloqueioBQCODCLI.AsFloat<>0) and not (mMontou_Codcli)
            and (pGruBlq<>mGrupo_CodCli) and (pOrigem<>mGrupo_CodCli) then
            begin
            Node_Clientes:=Node_uf;
            fCarregarClientes(0,mGrupo_CodUF,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODRPRO.AsFloat<>0) and not (mMontou_CodRpro)
            and (pGruBlq<>mGrupo_CodRPro) and (pOrigem<>mGrupo_CodRPro) then
            begin
            Node_Rpro:=Node_uf;
            fCarregarRPro(0,mGrupo_CodUF,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODCPRO.AsFloat<>0) and not (mMontou_CodCPro)
            and (pGruBlq<>mGrupo_CodCPro) and (pOrigem<>mGrupo_CodCPro) then
            begin
            Node_Cpro:=Node_uf;
            fCarregarCPro(0,mGrupo_CodUF,pGruBlq);
            Continue;
            end;

         if (DM4.Tb_BloqueioBQCODPRO.AsFloat<>0) and not (mMontou_CodPro)
            and (pGruBlq<>mGrupo_Codpro) and (pOrigem<>mGrupo_Codpro) then
            begin
            Node_Produtos:=Node_uf;
            fCarregarProdutos(0,mGrupo_CodUF,pGruBlq);
            Continue;
            end;

//
         end;
      end;
   DM4.Tb_Bloqueio.Next;
   fZeraItensMontados(False);
   end;
result:=true;
end;

function fCarregarCidades(pTipo,pOrigem,pGruBlq: Integer): Boolean;
// local=003 - Cidades
var
node_inicial:TTreeNode;
mCodRcli,mCodCpro,mCodRPro,mCodVen, mCodFor,mCodLoc,mCodBai,mCodpro,mCodCli: Real;
mCodUF: String;
begin

mCodRcli :=DM4.Tb_BloqueioBQCODRCLI.Value;
mCodRPro :=DM4.Tb_BloqueioBQCODRPRO.Value;
mCodCPro :=DM4.Tb_BloqueioBQCODCPRO.Value;
mCodVen  :=DM4.Tb_BloqueioBQCODVEN.Value;
mCodFor  :=DM4.Tb_BloqueioBQCODFOR.Value;
mCodUF   :=DM4.Tb_BloqueioBQCODUF.Value;
mCodLoc  :=DM4.Tb_BloqueioBQCODLOC.Value;
mCodBai  :=DM4.Tb_BloqueioBQCODBAI.Value;
mCodpro  :=DM4.Tb_BloqueioBQCODPRO.Value;
mCodCli  :=DM4.Tb_BloqueioBQCODCLI.Value;

if pTipo=0 then
   begin
   if mBloqueio_OrigemChamada=1 then
      begin
      Node_Cidade := Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_Cidade, NomeNivel[mGrupo_CodLoc]);
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=1;
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=1;
      end
   else
      begin
      Node_Cidade := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_Cidade, NomeNivel[mGrupo_CodLoc]);
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=1;
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=1;
      end;


   end
else
   begin
   if mBloqueio_OrigemChamada=1 then
      begin
      Node_Cidade := Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Add(nil, NomeNivel[mGrupo_CodLoc]);
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=0;
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=0;
      end
   else
      begin
      Node_Cidade := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Add(nil, NomeNivel[mGrupo_CodLoc]);
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=0;
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=0;
      end;


   end;
node_inicial:=Node_Cidade;
While ( not (DM4.Tb_Bloqueio.Eof) and (DM4.Tb_BloqueioBQGRUBLQ.Value=pGruBlq) and (pTipo=1) )
   or ( not (DM4.Tb_Bloqueio.Eof) and (DM4.Tb_BloqueioBQGRUBLQ.Value=pGruBlq)
   and (mCodRcli =DM4.Tb_BloqueioBQCODRCLI.Value)
   and (mCodRPro =DM4.Tb_BloqueioBQCODRPRO.Value)
   and (mCodCpro =DM4.Tb_BloqueioBQCODCPRO.Value)
   and (mCodPro  =DM4.Tb_BloqueioBQCODPRO.Value)
   and (mCodUF   =DM4.Tb_BloqueioBQCODUF.Value)
   and (mCodVen  =DM4.Tb_BloqueioBQCODVEN.Value)
   and (mCodFor  =DM4.Tb_BloqueioBQCODFOR.Value)
   and (mCodBai  =DM4.Tb_BloqueioBQCODBAI.Value)
   and (mCodCli  =DM4.Tb_BloqueioBQCODCLI.Value) ) do
   begin
   Node_Cidade:=node_inicial;
   if DM4.Tb_BloqueioBQCODLOC.Value=-1 then
      begin
      if mBloqueio_OrigemChamada=1 then
         begin
         Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_Cidade, 'Todos');
         if mNivelConsulta=mGrupo_CodLoc then
            begin
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=4;
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=4;
            end
         else
            begin
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=3;
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=3;
            end;
         end
      else
         begin
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_Cidade, 'Todos');
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=3;
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=3;
         end;

      mMontou_CodLoc:=true;
      end
   else if DM4.Tb_BloqueioBQCODLOC.Value<>-2 then
      begin
      if Trim(DM4.Tb_BloqueioCIDADE.AsString)<>'' then
         begin
         if mBloqueio_OrigemChamada=1 then
            begin
            Node_Cidade:=Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_Cidade, DM4.Tb_BloqueioCIDADE.Value+' '+FormatFloat('00000', DM4.Tb_BloqueioBQCODLOC.Value));
            if mNivelConsulta=mGrupo_CodLoc then
               begin
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=4;
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=4;
               end
            else
               begin
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=2;
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=2;
               end;
            end
         else
            begin
            Node_Cidade:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_Cidade, DM4.Tb_BloqueioCIDADE.Value+' '+FormatFloat('00000', DM4.Tb_BloqueioBQCODLOC.Value));
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=2;
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=2;
            end;

         mMontou_CodLoc:=true;

//

         if (DM4.Tb_BloqueioBQCODVEN.AsFloat<>0) and not (mMontou_CodVen)
            and (pGruBlq<>mGrupo_CodVen) and (pOrigem<>mGrupo_CodVen) then
            begin
            Node_Ven:=Node_Cidade;
            fCarregarVend(0,mGrupo_CodLoc,pGruBlq);
            Continue;
            end;

         if (DM4.Tb_BloqueioBQCODFOR.AsFloat<>0) and not (mMontou_CodFor)
            and (pGruBlq<>mGrupo_CodFor) and (pOrigem<>mGrupo_CodFor) then
            begin
            Node_for:=Node_Cidade;
            fCarregarFor(0,mGrupo_CodLoc,pGruBlq);
            Continue;
            end;


         if ((DM4.Tb_BloqueioBQCODUF.AsString<>'') and (DM4.Tb_BloqueioBQCODUF.AsString<>'-2')) and not (mMontou_CodUF)
            and (pGruBlq<>mGrupo_CodUF) and (pOrigem<>mGrupo_CodUF) then
            begin
            Node_uf:=Node_Cidade;
            fCarregarUF(0,mGrupo_CodLoc,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODBAI.AsFloat<>0) and not (mMontou_CodBai)
            and (pGruBlq<>mGrupo_CodBai) and (pOrigem<>mGrupo_CodBai) then
            begin
            Node_Bairros:=Node_Cidade;
            fCarregarBairros(0,mGrupo_CodLoc,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODRCLI.AsFloat<>0) and not (mMontou_CodRcli)
            and (pGruBlq<>mGrupo_CodRcli) and (pOrigem<>mGrupo_CodRcli) then
            begin
            Node_RCli:=Node_Cidade;
            fCarregarRCli(0,mGrupo_CodLoc,pGruBlq);
            Continue;
            end;

         if (DM4.Tb_BloqueioBQCODCLI.AsFloat<>0) and not (mMontou_Codcli)
            and (pGruBlq<>mGrupo_CodCli) and (pOrigem<>mGrupo_CodCli) then
            begin
            Node_Clientes:=Node_Cidade;
            fCarregarClientes(0,mGrupo_CodLoc,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODRPRO.AsFloat<>0) and not (mMontou_CodRpro)
            and (pGruBlq<>mGrupo_CodRPro) and (pOrigem<>mGrupo_CodRPro) then
            begin
            Node_Rpro:=Node_Cidade;
            fCarregarRPro(0,mGrupo_CodLoc,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODCPRO.AsFloat<>0) and not (mMontou_CodCpro)
            and (pGruBlq<>mGrupo_CodCPro) and (pOrigem<>mGrupo_CodCPro) then
            begin
            Node_Cpro:=Node_Cidade;
            fCarregarCPro(0,mGrupo_CodLoc,pGruBlq);
            Continue;
            end;

         if (DM4.Tb_BloqueioBQCODPRO.AsFloat<>0) and not (mMontou_CodPro)
            and (pGruBlq<>mGrupo_Codpro) and (pOrigem<>mGrupo_Codpro) then
            begin
            Node_Produtos:=Node_Cidade;
            fCarregarProdutos(0,mGrupo_CodLoc,pGruBlq);
            Continue;
            end;
//
         end;
      end;
   DM4.Tb_Bloqueio.Next;
   fZeraItensMontados(False);
   end;
result:=true;
end;


function fCarregarBairros(pTipo,pOrigem,pGruBlq: Integer): Boolean;
// 004-bairros

var
node_inicial:TTreeNode;
mCodRcli,mCodCPro,mCodRPro,mCodVen,mCodFor,mCodLoc,mCodBai,mCodpro,mCodCli: Real;
mCodUF: String;
begin

mCodRcli :=DM4.Tb_BloqueioBQCODRCLI.Value;
mCodRPro :=DM4.Tb_BloqueioBQCODRPRO.Value;
mCodCPro :=DM4.Tb_BloqueioBQCODCPRO.Value;
mCodVen  :=DM4.Tb_BloqueioBQCODVEN.Value;
mCodFor  :=DM4.Tb_BloqueioBQCODFOR.Value;
mCodUF   :=DM4.Tb_BloqueioBQCODUF.Value;
mCodLoc  :=DM4.Tb_BloqueioBQCODLOC.Value;
mCodBai  :=DM4.Tb_BloqueioBQCODBAI.Value;
mCodpro  :=DM4.Tb_BloqueioBQCODPRO.Value;
mCodCli  :=DM4.Tb_BloqueioBQCODCLI.Value;

if pTipo=0 then
   begin
   if mBloqueio_OrigemChamada=1 then
      begin
      Node_Bairros := Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_Bairros, NomeNivel[mGrupo_CodBai]);
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=1;
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=1;
      end
   else
      begin
      Node_Bairros := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_Bairros, NomeNivel[mGrupo_CodBai]);
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=1;
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=1;
      end;


   end
else
   begin
   if mBloqueio_OrigemChamada=1 then
      begin
      Node_Bairros := Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Add(nil, NomeNivel[mGrupo_CodBai]);
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=0;
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=0;
      end
   else
      begin
      Node_Bairros := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Add(nil, NomeNivel[mGrupo_CodBai]);
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=0;
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=0;
      end;


   end;
node_inicial:=Node_Bairros;
While ( not (DM4.Tb_Bloqueio.Eof) and (DM4.Tb_BloqueioBQGRUBLQ.Value=pGruBlq) and (pTipo=1) )
   or ( not (DM4.Tb_Bloqueio.Eof) and (DM4.Tb_BloqueioBQGRUBLQ.Value=pGruBlq)
   and (mCodRcli =DM4.Tb_BloqueioBQCODRCLI.Value)
   and (mCodRPro =DM4.Tb_BloqueioBQCODRPRO.Value)
   and (mCodCPro =DM4.Tb_BloqueioBQCODCPRO.Value)
   and (mCodPro  =DM4.Tb_BloqueioBQCODPRO.Value)
   and (mCodUF   =DM4.Tb_BloqueioBQCODUF.Value)
   and (mCodVen  =DM4.Tb_BloqueioBQCODVEN.Value)
   and (mCodFor  =DM4.Tb_BloqueioBQCODFOR.Value)
   and (mCodLoc  =DM4.Tb_BloqueioBQCODLOC.Value)
   and (mCodCli  =DM4.Tb_BloqueioBQCODCLI.Value) ) do
   begin
   Node_Bairros:=node_inicial;
   if DM4.Tb_BloqueioBQCODBAI.Value=-1 then
      begin
      if mBloqueio_OrigemChamada=1 then
         begin
         Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_Bairros, 'Todos');
         if mNivelConsulta=mGrupo_CodBai then
            begin
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=4;
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=4;
            end
         else
            begin
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=3;
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=3;
            end;

         end
      else
         begin
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_Bairros, 'Todos');
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=3;
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=3;
         end;

      mMontou_CodBai:=true;

      end
   else if DM4.Tb_BloqueioBQCODBAI.Value<>-2 then
      begin
      if Trim(DM4.Tb_BloqueioBAIRRO.AsString)<>'' then
         begin
         if mBloqueio_OrigemChamada=1 then
            begin
            Node_Bairros:=Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_Bairros, DM4.Tb_BloqueioBAIRRO.Value+' '+FormatFloat('00000', DM4.Tb_BloqueioBQCODBAI.Value));
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=2;
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=2;
            end
         else
            begin
            Node_Bairros:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_Bairros, DM4.Tb_BloqueioBAIRRO.Value+' '+FormatFloat('00000', DM4.Tb_BloqueioBQCODBAI.Value));
            if mNivelConsulta=mGrupo_CodBai then
               begin
               Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=4;
               Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=4;
               end
            else
               begin
               Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=2;
               Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=2;
               end;
            end;


         mMontou_CodBai:=true;


//
         if (DM4.Tb_BloqueioBQCODVEN.AsFloat<>0) and not (mMontou_CodVen)
            and (pGruBlq<>mGrupo_CodVen) and (pOrigem<>mGrupo_CodVen) then
            begin
            Node_Ven:=Node_Bairros;
            fCarregarVend(0,mGrupo_CodBai,pGruBlq);
            Continue;
            end;

         if (DM4.Tb_BloqueioBQCODFOR.AsFloat<>0) and not (mMontou_CodFor)
            and (pGruBlq<>mGrupo_CodFor) and (pOrigem<>mGrupo_CodFor) then
            begin
            Node_for:=Node_Bairros;
            fCarregarFor(0,mGrupo_CodBai,pGruBlq);
            Continue;
            end;

         if ((DM4.Tb_BloqueioBQCODUF.AsString<>'') and (DM4.Tb_BloqueioBQCODUF.AsString<>'-2')) and not (mMontou_CodUF)
            and (pGruBlq<>mGrupo_CodUF) and (pOrigem<>mGrupo_CodUF) then
            begin
            Node_uf:=Node_Bairros;
            fCarregarUF(0,mGrupo_CodBai,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODLOC.AsFloat<>0) and not (mMontou_CodLoc)
            and (pGruBlq<>mGrupo_CodLoc) and (pOrigem<>mGrupo_CodLoc) then
            begin
            Node_Cidade:=Node_Bairros;
            fCarregarCidades(0,mGrupo_CodBai,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODRCLI.AsFloat<>0) and not (mMontou_CodRcli)
            and (pGruBlq<>mGrupo_CodRcli) and (pOrigem<>mGrupo_CodRcli) then
            begin
            Node_RCli:=Node_Bairros;
            fCarregarRCli(0,mGrupo_CodBai,pGruBlq);
            Continue;
            end;

         if (DM4.Tb_BloqueioBQCODCLI.AsFloat<>0) and not (mMontou_Codcli)
            and (pGruBlq<>mGrupo_CodCli) and (pOrigem<>mGrupo_CodCli) then
            begin
            Node_Clientes:=Node_Bairros;
            fCarregarClientes(0,mGrupo_CodBai,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODRPRO.AsFloat<>0) and not (mMontou_CodRpro)
            and (pGruBlq<>mGrupo_CodRPro) and (pOrigem<>mGrupo_CodRPro) then
            begin
            Node_Rpro:=Node_Bairros;
            fCarregarRPro(0,mGrupo_CodBai,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODCPRO.AsFloat<>0) and not (mMontou_CodCpro)
            and (pGruBlq<>mGrupo_CodCPro) and (pOrigem<>mGrupo_CodCPro) then
            begin
            Node_Cpro:=Node_Bairros;
            fCarregarCPro(0,mGrupo_CodBai,pGruBlq);
            Continue;
            end;

         if (DM4.Tb_BloqueioBQCODPRO.AsFloat<>0) and not (mMontou_CodPro)
            and (pGruBlq<>mGrupo_Codpro) and (pOrigem<>mGrupo_Codpro) then
            begin
            Node_Produtos:=Node_Bairros;
            fCarregarProdutos(0,mGrupo_CodBai,pGruBlq);
            Continue;
            end;

//
         end;
      end;
   DM4.Tb_Bloqueio.Next;
   fZeraItensMontados(False);
   end;
result:=true;
end;



function fCarregarRCli(pTipo,pOrigem,pGruBlq: Integer): Boolean;
//Local 005-Ramo de Clientes
var
node_inicial:TTreeNode;
mCodRcli,mCodCPro,mCodRPro,mCodVen,mCodFor,mCodLoc,mCodBai,mCodpro,mCodCli: Real;
mCodUF: String;
begin

mCodRcli :=DM4.Tb_BloqueioBQCODRCLI.Value;
mCodRPro :=DM4.Tb_BloqueioBQCODRPRO.Value;
mCodCPro :=DM4.Tb_BloqueioBQCODCPRO.Value;
mCodVen  :=DM4.Tb_BloqueioBQCODVEN.Value;
mCodFor  :=DM4.Tb_BloqueioBQCODFOR.Value;
mCodUF   :=DM4.Tb_BloqueioBQCODUF.Value;
mCodLoc  :=DM4.Tb_BloqueioBQCODLOC.Value;
mCodBai  :=DM4.Tb_BloqueioBQCODBAI.Value;
mCodpro  :=DM4.Tb_BloqueioBQCODPRO.Value;
mCodCli  :=DM4.Tb_BloqueioBQCODCLI.Value;

if pTipo=0 then
   begin
   if mBloqueio_OrigemChamada=1 then
      begin
      Node_RCli := Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_RCli, NomeNivel[mGrupo_CodRCli]);
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=1;
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=1;
      end
   else
      begin
      Node_RCli := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_RCli, NomeNivel[mGrupo_CodRCli]);
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=1;
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=1;
      end;


   end
else
   begin
   if mBloqueio_OrigemChamada=1 then
      begin
      Node_RCli := Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Add(nil, NomeNivel[mGrupo_CodRCli]);
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=0;
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=0;
      end
   else
      begin
      Node_RCli := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Add(nil, NomeNivel[mGrupo_CodRCli]);
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=0;
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=0;
      end;


   end;
node_inicial:=Node_RCli;
While ( not (DM4.Tb_Bloqueio.Eof) and (DM4.Tb_BloqueioBQGRUBLQ.Value=pGruBlq) and (pTipo=1) )
   or ( not (DM4.Tb_Bloqueio.Eof) and (DM4.Tb_BloqueioBQGRUBLQ.Value=pGruBlq)
   and (mCodBai  =DM4.Tb_BloqueioBQCODBAI.Value)
   and (mCodRPro =DM4.Tb_BloqueioBQCODRPRO.Value)
   and (mCodCPro =DM4.Tb_BloqueioBQCODCPRO.Value)
   and (mCodPro  =DM4.Tb_BloqueioBQCODPRO.Value)
   and (mCodUF   =DM4.Tb_BloqueioBQCODUF.Value)
   and (mCodVen  =DM4.Tb_BloqueioBQCODVEN.Value)
   and (mCodFor  =DM4.Tb_BloqueioBQCODFOR.Value)
   and (mCodLoc  =DM4.Tb_BloqueioBQCODLOC.Value)
   and (mCodCli  =DM4.Tb_BloqueioBQCODCLI.Value) ) do
   begin
   Node_RCli:=node_inicial;
   if DM4.Tb_BloqueioBQCODRCLI.Value=-1 then
      begin
      if mBloqueio_OrigemChamada=1 then
         begin
         Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_RCli, 'Todos');
         if mNivelConsulta=mGrupo_CodRcli then
            begin
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=4;
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=4;
            end
         else
            begin
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=3;
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=3;
            end;
         end
      else
         begin
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_RCli, 'Todos');
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=3;
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=3;
         end;

      mMontou_CodRcli:=true;
      end
   else if DM4.Tb_BloqueioBQCODRCLI.Value<>-2 then
      begin
      if Trim(DM4.Tb_BloqueioRAMOCLI.AsString)<>'' then
         begin
         if mBloqueio_OrigemChamada=1 then
            begin
            Node_RCli:=Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_RCli, DM4.Tb_BloqueioRAMOCLI.Value+' '+Formatfloat('00000', DM4.Tb_BloqueioBQCODRCLI.Value));
            if mNivelConsulta=mGrupo_CodRcli then
               begin
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=4;
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=4;
               end
            else
               begin
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=2;
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=2;
               end;
            end
         else
            begin
            Node_RCli:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_RCli, DM4.Tb_BloqueioRAMOCLI.Value+' '+Formatfloat('00000', DM4.Tb_BloqueioBQCODRCLI.Value));
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=2;
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=2;
            end;

         mMontou_CodRcli:=true;


//
         if (DM4.Tb_BloqueioBQCODFOR.AsFloat<>0) and not (mMontou_CodFor)
            and (pGruBlq<>mGrupo_CodFor) and (pOrigem<>mGrupo_CodFor) then
            begin
            Node_for:=Node_RCli;
            fCarregarFor(0,mGrupo_CodRcli,pGruBlq);
            Continue;
            end;


         if ((DM4.Tb_BloqueioBQCODUF.AsString<>'') and (DM4.Tb_BloqueioBQCODUF.AsString<>'-2')) and not (mMontou_CodUF)
            and (pGruBlq<>mGrupo_CodUF) and (pOrigem<>mGrupo_CodUF) then
            begin
            Node_uf:=Node_RCli;
            fCarregarUF(0,mGrupo_CodRcli,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODLOC.AsFloat<>0) and not (mMontou_CodLoc)
            and (pGruBlq<>mGrupo_CodLoc) and (pOrigem<>mGrupo_CodLoc) then
            begin
            Node_Cidade:=Node_RCli;
            fCarregarCidades(0,mGrupo_CodRcli,pGruBlq);
            Continue;
            end;

         if (DM4.Tb_BloqueioBQCODBAI.AsFloat<>0) and not (mMontou_CodBai)
            and (pGruBlq<>mGrupo_CodBai) and (pOrigem<>mGrupo_CodBai) then
            begin
            Node_Bairros:=Node_RCli;
            fCarregarBairros(0,mGrupo_CodRcli,pGruBlq);
            Continue;
            end;

         if (DM4.Tb_BloqueioBQCODCLI.AsFloat<>0) and not (mMontou_Codcli)
            and (pGruBlq<>mGrupo_CodCli) and (pOrigem<>mGrupo_CodCli) then
            begin
            Node_Clientes:=Node_RCli;
            fCarregarClientes(0,mGrupo_CodRcli,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODRPRO.AsFloat<>0) and not (mMontou_CodRpro)
            and (pGruBlq<>mGrupo_CodRPro) and (pOrigem<>mGrupo_CodRPro) then
            begin
            Node_Rpro:=Node_RCli;
            fCarregarRPro(0,mGrupo_CodRcli,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODCPRO.AsFloat<>0) and not (mMontou_CodCpro)
            and (pGruBlq<>mGrupo_CodCPro) and (pOrigem<>mGrupo_CodCPro) then
            begin
            Node_Cpro:=Node_RCli;
            fCarregarCPro(0,mGrupo_CodRcli,pGruBlq);
            Continue;
            end;

         if (DM4.Tb_BloqueioBQCODPRO.AsFloat<>0) and not (mMontou_CodPro)
            and (pGruBlq<>mGrupo_Codpro) and (pOrigem<>mGrupo_Codpro) then
            begin
            Node_Produtos:=Node_RCli;
            fCarregarProdutos(0,mGrupo_CodRcli,pGruBlq);
            Continue;
            end;

//
         end;
      end;
   DM4.Tb_Bloqueio.Next;
   fZeraItensMontados(False);
   end;
result:=true;
end;

function fCarregarClientes(Ptipo,pOrigem,pGruBlq: Integer): Boolean;
// local 006-Clientes
var
node_inicial:TTreeNode;
mCodRcli,mCodRPro,mCodCPro,mCodVen,mCodFor,mCodLoc,mCodBai,mCodpro,mCodCli: Real;
mCodUF: String;
begin

mCodRcli :=DM4.Tb_BloqueioBQCODRCLI.Value;
mCodRPro :=DM4.Tb_BloqueioBQCODRPRO.Value;
mCodCPro :=DM4.Tb_BloqueioBQCODCPRO.Value;
mCodVen  :=DM4.Tb_BloqueioBQCODVEN.Value;
mCodFor  :=DM4.Tb_BloqueioBQCODFOR.Value;
mCodUF   :=DM4.Tb_BloqueioBQCODUF.Value;
mCodLoc  :=DM4.Tb_BloqueioBQCODLOC.Value;
mCodBai  :=DM4.Tb_BloqueioBQCODBAI.Value;
mCodpro  :=DM4.Tb_BloqueioBQCODPRO.Value;
mCodCli  :=DM4.Tb_BloqueioBQCODCLI.Value;

if pTipo=0 then
   begin
   if mBloqueio_OrigemChamada=1 then
      begin
      Node_Clientes := Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_Clientes, NomeNivel[mGrupo_CodCli]);
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=1;
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=1;
      end
   else
      begin
      Node_Clientes := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_Clientes, NomeNivel[mGrupo_CodCli]);
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=1;
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=1;
      end;


   end
else
   begin
   if mBloqueio_OrigemChamada=1 then
      begin
      Node_Clientes := Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Add(nil, NomeNivel[mGrupo_CodCli]);
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=0;
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=0;
      end
   else
      begin
      Node_Clientes := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Add(nil, NomeNivel[mGrupo_CodCli]);
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=0;
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=0;
      end;


   end;
node_inicial:=Node_Clientes;
While ( not (DM4.Tb_Bloqueio.Eof) and (DM4.Tb_BloqueioBQGRUBLQ.Value=pGruBlq) and (pTipo=1) )
   or ( not (DM4.Tb_Bloqueio.Eof) and (DM4.Tb_BloqueioBQGRUBLQ.Value=pGruBlq)
   and (mCodBai  =DM4.Tb_BloqueioBQCODBAI.Value)
   and (mCodRPro =DM4.Tb_BloqueioBQCODRPRO.Value)
   and (mCodCPro =DM4.Tb_BloqueioBQCODCPRO.Value)
   and (mCodPro  =DM4.Tb_BloqueioBQCODPRO.Value)
   and (mCodUF   =DM4.Tb_BloqueioBQCODUF.Value)
   and (mCodVen  =DM4.Tb_BloqueioBQCODVEN.Value)
   and (mCodFor  =DM4.Tb_BloqueioBQCODFOR.Value)
   and (mCodLoc  =DM4.Tb_BloqueioBQCODLOC.Value)
   and (mCodRcli =DM4.Tb_BloqueioBQCODRCLI.Value) ) do
   begin
   Node_Clientes:=node_inicial;
   if DM4.Tb_BloqueioBQCODCLI.Value=-1 then
      begin
      if mBloqueio_OrigemChamada=1 then
         begin
         Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_Clientes, 'Todos');
         if mNivelConsulta=mGrupo_CodCli then
            begin
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=4;
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=4;
            end
         else
            begin
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=3;
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=3;
            end;

         end
      else
         begin
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_Clientes, 'Todos');
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=3;
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=3;
         end;

      mMontou_Codcli:=true;
      end
   else if DM4.Tb_BloqueioBQCODCLI.Value<>-2 then
      begin
      if Trim(DM4.Tb_BloqueioNOMCLI.AsString)<>'' then
         begin
         if mBloqueio_OrigemChamada=1 then
            begin
            Node_Clientes:=Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_Clientes, DM4.Tb_BloqueioNOMCLI.Value+' '+Formatfloat('00000', DM4.Tb_BloqueioBQCODCLI.Value));
            if mNivelConsulta=mGrupo_CodCli then
               begin
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=4;
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=4;
               end
            else
               begin
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=2;
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=2;
               end;
            end
         else
            begin
            Node_Clientes:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_Clientes, DM4.Tb_BloqueioNOMCLI.Value+' '+Formatfloat('00000', DM4.Tb_BloqueioBQCODCLI.Value));
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=2;
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=2;
            end;

         mMontou_Codcli:=true;


//
         if (DM4.Tb_BloqueioBQCODVEN.AsFloat<>0) and not (mMontou_CodVen)
            and (pGruBlq<>mGrupo_CodVen) and (pOrigem<>mGrupo_CodVen) then
            begin
            Node_Ven:=Node_Clientes;
            fCarregarVend(0,mGrupo_CodCli,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODFOR.AsFloat<>0) and not (mMontou_CodFor)
            and (pGruBlq<>mGrupo_CodFor) and (pOrigem<>mGrupo_CodFor) then
            begin
            Node_for:=Node_Clientes;
            fCarregarFor(0,mGrupo_CodCli,pGruBlq);
            Continue;
            end;

         if ((DM4.Tb_BloqueioBQCODUF.AsString<>'') and (DM4.Tb_BloqueioBQCODUF.AsString<>'-2')) and not (mMontou_CodUF)
            and (pGruBlq<>mGrupo_CodUF) and (pOrigem<>mGrupo_CodUF) then
            begin
            Node_uf:=Node_Clientes;
            fCarregarUF(0,mGrupo_CodCli,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODLOC.AsFloat<>0) and not (mMontou_CodLoc)
            and (pGruBlq<>mGrupo_CodLoc) and (pOrigem<>mGrupo_CodLoc) then
            begin
            Node_Cidade:=Node_Clientes;
            fCarregarCidades(0,mGrupo_CodCli,pGruBlq);
            Continue;
            end;

         if (DM4.Tb_BloqueioBQCODBAI.AsFloat<>0) and not (mMontou_CodBai)
            and (pGruBlq<>mGrupo_CodBai) and (pOrigem<>mGrupo_CodBai) then
            begin
            Node_Bairros:=Node_Clientes;
            fCarregarBairros(0,mGrupo_CodCli,pGruBlq);
            Continue;
            end;

         if (DM4.Tb_BloqueioBQCODRCLI.AsFloat<>0) and not (mMontou_CodRcli)
            and (pGruBlq<>mGrupo_CodRcli) and (pOrigem<>mGrupo_CodRcli) then
            begin
            Node_RCli:=Node_Clientes;
            fCarregarRcli(0,mGrupo_CodCli,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODRPRO.AsFloat<>0) and not (mMontou_CodRpro)
            and (pGruBlq<>mGrupo_CodRPro) and (pOrigem<>mGrupo_CodRPro) then
            begin
            Node_Rpro:=Node_Clientes;
            fCarregarRPro(0,mGrupo_CodCli,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODCPRO.AsFloat<>0) and not (mMontou_CodCpro)
            and (pGruBlq<>mGrupo_CodCPro) and (pOrigem<>mGrupo_CodCPro) then
            begin
            Node_Cpro:=Node_Clientes;
            fCarregarCPro(0,mGrupo_CodCli,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODPRO.AsFloat<>0) and not (mMontou_CodPro)
            and (pGruBlq<>mGrupo_Codpro) and (pOrigem<>mGrupo_Codpro) then
            begin
            Node_Produtos:=Node_Clientes;
            fCarregarProdutos(0,mGrupo_CodCli,pGruBlq);
            Continue;
            end;

//
         end;
      end;
   DM4.Tb_Bloqueio.Next;
   fZeraItensMontados(False);
   end;
result:=true;
end;

function fCarregarRPro(pTipo,pOrigem,pGruBlq: Integer): Boolean;
// Local = 007 - Ramo de Produtos
var
node_inicial:TTreeNode;
mCodRcli,mCodCPro,mCodRPro,mCodVen,mCodFor,mCodLoc,mCodBai,mCodpro,mCodCli: Real;
mCodUF: String;
begin

mCodRcli :=DM4.Tb_BloqueioBQCODRCLI.Value;
mCodCPro :=DM4.Tb_BloqueioBQCODCPRO.Value;

mCodRPro :=DM4.Tb_BloqueioBQCODRPRO.Value;
mCodVen  :=DM4.Tb_BloqueioBQCODVEN.Value;
mCodFor  :=DM4.Tb_BloqueioBQCODFOR.Value;
mCodUF   :=DM4.Tb_BloqueioBQCODUF.Value;
mCodLoc  :=DM4.Tb_BloqueioBQCODLOC.Value;
mCodBai  :=DM4.Tb_BloqueioBQCODBAI.Value;
mCodpro  :=DM4.Tb_BloqueioBQCODPRO.Value;
mCodCli  :=DM4.Tb_BloqueioBQCODCLI.Value;

if pTipo=0 then
   begin
   if mBloqueio_OrigemChamada=1 then
      begin
      Node_Rpro := Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_Rpro, NomeNivel[mGrupo_CodRPro]);
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=1;
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=1;
      end
   else
      begin
      Node_Rpro := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_Rpro, NomeNivel[mGrupo_CodRPro]);
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=1;
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=1;
      end;

   end
else
   begin
   if mBloqueio_OrigemChamada=1 then
      begin
      Node_Rpro := Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Add(nil, NomeNivel[mGrupo_CodRPro]);
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=0;
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=0;
      end
   else
      begin
      Node_Rpro := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Add(nil, NomeNivel[mGrupo_CodRPro]);
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=0;
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=0;
      end;

   end;
node_inicial:=Node_Rpro;
While ( not (DM4.Tb_Bloqueio.Eof) and (DM4.Tb_BloqueioBQGRUBLQ.Value=pGruBlq) and (pTipo=1) )
   or ( not (DM4.Tb_Bloqueio.Eof) and (DM4.Tb_BloqueioBQGRUBLQ.Value=pGruBlq)
   and (mCodRcli =DM4.Tb_BloqueioBQCODRCLI.Value)
   and (mCodVen  =DM4.Tb_BloqueioBQCODVEN.Value)
   and (mCodCPro =DM4.Tb_BloqueioBQCODCPRO.Value)
   and (mCodFor  =DM4.Tb_BloqueioBQCODFOR.Value)
   and (mCodPro  =DM4.Tb_BloqueioBQCODPRO.Value)
   and (mCodUF   =DM4.Tb_BloqueioBQCODUF.Value)
   and (mCodLoc  =DM4.Tb_BloqueioBQCODLOC.Value)
   and (mCodBai  =DM4.Tb_BloqueioBQCODBAI.Value)
   and (mCodCli  =DM4.Tb_BloqueioBQCODCLI.Value) ) do
   begin
   Node_Rpro:=node_inicial;
   if DM4.Tb_BloqueioBQCODRPRO.Value=-1 then
      begin
      if mBloqueio_OrigemChamada=1 then
         begin
         Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_Rpro, 'Todos');
         if mNivelConsulta=mGrupo_CodRPro then
            begin
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=4;
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=4;
            end
         else
            begin
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=3;
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=3;
            end;
         end
      else
         begin
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_Rpro, 'Todos');
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=3;
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=3;
         end;

      mMontou_CodRpro:=true;
      end
   else if DM4.Tb_BloqueioBQCODRPRO.Value<>-2 then
      begin
      if Trim(DM4.Tb_BloqueioRAMOPRO.AsString)<>'' then
         begin
         if mBloqueio_OrigemChamada=1 then
            begin
            Node_Rpro:=Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_Rpro, DM4.Tb_BloqueioRAMOPRO.Value+' '+Formatfloat('00000', DM4.Tb_BloqueioBQCODRPRO.Value));
            if mNivelConsulta=mGrupo_CodRPro then
               begin
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=4;
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=4;
               end
            else
               begin
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=2;
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=2;
               end;
            end
         else
            begin
            Node_Rpro:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_Rpro, DM4.Tb_BloqueioRAMOPRO.Value+' '+Formatfloat('00000', DM4.Tb_BloqueioBQCODRPRO.Value));
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=2;
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=2;
            end;

         mMontou_CodRpro:=true;

//

         if (DM4.Tb_BloqueioBQCODVEN.AsFloat<>0) and not (mMontou_CodVen)
            and (pGruBlq<>mGrupo_CodVen) and (pOrigem<>mGrupo_CodVen) then
            begin
            Node_Ven:=Node_Rpro;
            fCarregarVend(0,mGrupo_CodRPro,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODFOR.AsFloat<>0) and not (mMontou_CodFor)
            and (pGruBlq<>mGrupo_CodFor) and (pOrigem<>mGrupo_CodFor) then
            begin
            Node_for:=Node_Rpro;
            fCarregarFor(0,mGrupo_CodRPro,pGruBlq);
            Continue;
            end;

         if ((DM4.Tb_BloqueioBQCODUF.AsString<>'') and (DM4.Tb_BloqueioBQCODUF.AsString<>'-2')) and not (mMontou_CodUF)
            and (pGruBlq<>mGrupo_CodUF) and (pOrigem<>mGrupo_CodUF) then
            begin
            Node_uf:=Node_Rpro;
            fCarregarUF(0,mGrupo_CodRPro,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODLOC.AsFloat<>0) and not (mMontou_CodLoc)
            and (pGruBlq<>mGrupo_CodLoc) and (pOrigem<>mGrupo_CodLoc) then
            begin
            Node_Cidade:=Node_Rpro;
            fCarregarCidades(0,mGrupo_CodRPro,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODBAI.AsFloat<>0) and not (mMontou_CodBai)
            and (pGruBlq<>mGrupo_CodBai) and (pOrigem<>mGrupo_CodBai) then
            begin
            Node_Bairros:=Node_Rpro;
            fCarregarBairros(0,mGrupo_CodRPro,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODRCLI.AsFloat<>0) and not (mMontou_CodRcli)
            and (pGruBlq<>mGrupo_CodRcli) and (pOrigem<>mGrupo_CodRcli) then
            begin
            Node_RCli:=Node_Rpro;
            fCarregarRCli(0,mGrupo_CodRPro,pGruBlq);
            Continue;
            end;

         if (DM4.Tb_BloqueioBQCODCLI.AsFloat<>0) and not (mMontou_Codcli)
            and (pGruBlq<>mGrupo_CodCli) and (pOrigem<>mGrupo_CodCli) then
            begin
            Node_Clientes:=Node_Rpro;
            fCarregarClientes(0,mGrupo_CodRPro,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODPRO.AsFloat<>0) and not (mMontou_CodPro)
            and (pGruBlq<>mGrupo_Codpro) and (pOrigem<>mGrupo_Codpro) then
            begin
            Node_Produtos:=Node_Rpro;
            fCarregarProdutos(0,mGrupo_CodRPro,pGruBlq);
            Continue;
            end;
//
         end;
      end;
   DM4.Tb_Bloqueio.Next;
   fZeraItensMontados(False);
   end;
result:=true;
end;



function fCarregarCPro(pTipo,pOrigem,pGruBlq: Integer): Boolean;
// Local = 008 - Ramo de Produtos
var
node_inicial:TTreeNode;
mCodRcli,mCodCPro,mCodRPro, mCodVen,mCodFor,mCodLoc,mCodBai,mCodpro,mCodCli: Real;
mCodUF: String;
begin

mCodRcli :=DM4.Tb_BloqueioBQCODRCLI.Value;
mCodCPro :=DM4.Tb_BloqueioBQCODCPRO.Value;


mCodRPro :=DM4.Tb_BloqueioBQCODRPRO.Value;
mCodVen  :=DM4.Tb_BloqueioBQCODVEN.Value;
mCodFor  :=DM4.Tb_BloqueioBQCODFOR.Value;
mCodUF   :=DM4.Tb_BloqueioBQCODUF.Value;
mCodLoc  :=DM4.Tb_BloqueioBQCODLOC.Value;
mCodBai  :=DM4.Tb_BloqueioBQCODBAI.Value;
mCodpro  :=DM4.Tb_BloqueioBQCODPRO.Value;
mCodCli  :=DM4.Tb_BloqueioBQCODCLI.Value;

if pTipo=0 then
   begin
   if mBloqueio_OrigemChamada=1 then
      begin
      Node_Cpro := Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_Cpro, NomeNivel[mGrupo_CodCPro]);
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=1;
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=1;
      end
   else
      begin
      Node_Cpro := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_Cpro, NomeNivel[mGrupo_CodCPro]);
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=1;
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=1;
      end;

   end
else
   begin
   if mBloqueio_OrigemChamada=1 then
      begin
      Node_Cpro := Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Add(nil, NomeNivel[mGrupo_CodCPro]);
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=0;
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=0;
      end
   else
      begin
      Node_Cpro := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Add(nil, NomeNivel[mGrupo_CodCPro]);
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=0;
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=0;
      end;

   end;
node_inicial:=Node_Cpro;
While ( not (DM4.Tb_Bloqueio.Eof) and (DM4.Tb_BloqueioBQGRUBLQ.Value=pGruBlq) and (pTipo=1) )
   or ( not (DM4.Tb_Bloqueio.Eof) and (DM4.Tb_BloqueioBQGRUBLQ.Value=pGruBlq)
   and (mCodRcli =DM4.Tb_BloqueioBQCODRCLI.Value)
   and (mCodCPro =DM4.Tb_BloqueioBQCODCPRO.Value)
   and (mCodVen  =DM4.Tb_BloqueioBQCODVEN.Value)
   and (mCodFor  =DM4.Tb_BloqueioBQCODFOR.Value)
   and (mCodPro  =DM4.Tb_BloqueioBQCODPRO.Value)
   and (mCodUF   =DM4.Tb_BloqueioBQCODUF.Value)
   and (mCodLoc  =DM4.Tb_BloqueioBQCODLOC.Value)
   and (mCodBai  =DM4.Tb_BloqueioBQCODBAI.Value)
   and (mCodCli  =DM4.Tb_BloqueioBQCODCLI.Value) ) do
   begin
   Node_Cpro:=node_inicial;
   if DM4.Tb_BloqueioBQCODCPRO.Value=-1 then
      begin
      if mBloqueio_OrigemChamada=1 then
         begin
         Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_Cpro, 'Todos');
         if mNivelConsulta=mGrupo_CodCPro then
            begin
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=4;
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=4;
            end
         else
            begin
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=3;
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=3;
            end;
         end
      else
         begin
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_Cpro, 'Todos');
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=3;
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=3;
         end;

      mMontou_CodCpro:=true;
      end
   else if DM4.Tb_BloqueioBQCODCPRO.Value<>-2 then
      begin
      if Trim(DM4.Tb_BloqueioCONPRO.AsString)<>'' then
         begin
         if mBloqueio_OrigemChamada=1 then
            begin
            Node_Cpro:=Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_Cpro, DM4.Tb_BloqueioCONPRO.Value+' '+Formatfloat('00000', DM4.Tb_BloqueioBQCODCPRO.Value));
            if mNivelConsulta=mGrupo_CodCPro then
               begin
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=4;
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=4;
               end
            else
               begin
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=2;
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=2;
               end;
            end
         else
            begin
            Node_Cpro:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_Cpro, DM4.Tb_BloqueioCONPRO.Value+' '+Formatfloat('00000', DM4.Tb_BloqueioBQCODCPRO.Value));
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=2;
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=2;
            end;

         mMontou_CodCpro:=true;

//

         if (DM4.Tb_BloqueioBQCODVEN.AsFloat<>0) and not (mMontou_CodVen)
            and (pGruBlq<>mGrupo_CodVen) and (pOrigem<>mGrupo_CodVen) then
            begin
            Node_Ven:=Node_Cpro;
            fCarregarVend(0,mGrupo_CodCPro,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODFOR.AsFloat<>0) and not (mMontou_CodFor)
            and (pGruBlq<>mGrupo_CodFor) and (pOrigem<>mGrupo_CodFor) then
            begin
            Node_for:=Node_Cpro;
            fCarregarFor(0,mGrupo_CodCPro,pGruBlq);
            Continue;
            end;

         if ((DM4.Tb_BloqueioBQCODUF.AsString<>'') and (DM4.Tb_BloqueioBQCODUF.AsString<>'-2')) and not (mMontou_CodUF)
            and (pGruBlq<>mGrupo_CodUF) and (pOrigem<>mGrupo_CodUF) then
            begin
            Node_uf:=Node_Cpro;
            fCarregarUF(0,mGrupo_CodCPro,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODLOC.AsFloat<>0) and not (mMontou_CodLoc)
            and (pGruBlq<>mGrupo_CodLoc) and (pOrigem<>mGrupo_CodLoc) then
            begin
            Node_Cidade:=Node_Cpro;
            fCarregarCidades(0,mGrupo_CodcPro,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODBAI.AsFloat<>0) and not (mMontou_CodBai)
            and (pGruBlq<>mGrupo_CodBai) and (pOrigem<>mGrupo_CodBai) then
            begin
            Node_Bairros:=Node_Cpro;
            fCarregarBairros(0,mGrupo_CodCPro,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODRCLI.AsFloat<>0) and not (mMontou_CodRcli)
            and (pGruBlq<>mGrupo_CodRcli) and (pOrigem<>mGrupo_CodRcli) then
            begin
            Node_RCli:=Node_Cpro;
            fCarregarRCli(0,mGrupo_CodCPro,pGruBlq);
            Continue;
            end;

         if (DM4.Tb_BloqueioBQCODCLI.AsFloat<>0) and not (mMontou_Codcli)
            and (pGruBlq<>mGrupo_CodCli) and (pOrigem<>mGrupo_CodCli) then
            begin
            Node_Clientes:=Node_Cpro;
            fCarregarClientes(0,mGrupo_CodCPro,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODPRO.AsFloat<>0) and not (mMontou_CodPro)
            and (pGruBlq<>mGrupo_Codpro) and (pOrigem<>mGrupo_Codpro) then
            begin
            Node_Produtos:=Node_Cpro;
            fCarregarProdutos(0,mGrupo_CodCPro,pGruBlq);
            Continue;
            end;
//
         end;
      end;
   DM4.Tb_Bloqueio.Next;
   fZeraItensMontados(False);
   end;
result:=true;
end;

function fCarregarProdutos(pTipo,pOrigem,pGruBlq: Integer): Boolean;
// local = 008-Produtos
var
node_inicial:TTreeNode;
mCodRcli,mCodCPro,mCodRPro,mCodVen,mCodFor,mCodLoc,mCodBai,mCodpro,mCodCli: Real;
mCodUF: String;
begin

mCodRcli :=DM4.Tb_BloqueioBQCODRCLI.Value;
mCodCPro :=DM4.Tb_BloqueioBQCODCPRO.Value;
mCodRPro :=DM4.Tb_BloqueioBQCODRPRO.Value;
mCodVen  :=DM4.Tb_BloqueioBQCODVEN.Value;
mCodFor  :=DM4.Tb_BloqueioBQCODFOR.Value;
mCodUF   :=DM4.Tb_BloqueioBQCODUF.Value;
mCodLoc  :=DM4.Tb_BloqueioBQCODLOC.Value;
mCodBai  :=DM4.Tb_BloqueioBQCODBAI.Value;
mCodpro  :=DM4.Tb_BloqueioBQCODPRO.Value;
mCodCli  :=DM4.Tb_BloqueioBQCODCLI.Value;

if pTipo=0 then
   begin
   if mBloqueio_OrigemChamada=1 then
      begin
      Node_Produtos := Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_Produtos , NomeNivel[mGrupo_CodPro]);
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=1;
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=1;
      end
   else
      begin
      Node_Produtos := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_Produtos , NomeNivel[mGrupo_CodPro]);
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=1;
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=1;
      end;

   end
else
   begin
   if mBloqueio_OrigemChamada=1 then
      begin
      Node_Produtos := Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Add(nil, NomeNivel[mGrupo_CodPro]);
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=0;
      Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=0;
      end
   else
      begin
      Node_Produtos := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Add(nil, NomeNivel[mGrupo_CodPro]);
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=0;
      Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=0;
      end;

   end;
node_inicial:=Node_Produtos;
While ( not (DM4.Tb_Bloqueio.Eof) and (DM4.Tb_BloqueioBQGRUBLQ.Value=pGruBlq) and (pTipo=1) )
   or ( not (DM4.Tb_Bloqueio.Eof) and (DM4.Tb_BloqueioBQGRUBLQ.Value=pGruBlq)
   and (mCodRcli =DM4.Tb_BloqueioBQCODRCLI.Value)
   and (mCodVen  =DM4.Tb_BloqueioBQCODVEN.Value)
   and (mCodCPro =DM4.Tb_BloqueioBQCODCPRO.Value)
   and (mCodFor  =DM4.Tb_BloqueioBQCODFOR.Value)
   and (mCodRPro  =DM4.Tb_BloqueioBQCODRPro.Value)
   and (mCodUF   =DM4.Tb_BloqueioBQCODUF.Value)
   and (mCodLoc  =DM4.Tb_BloqueioBQCODLOC.Value)
   and (mCodBai  =DM4.Tb_BloqueioBQCODBAI.Value)
   and (mCodCli  =DM4.Tb_BloqueioBQCODCLI.Value) ) do
   begin
   Node_Produtos :=node_inicial;
   if DM4.Tb_BloqueioBQCODPRO.Value=-1 then
      begin
      if mBloqueio_OrigemChamada=1 then
         begin
         Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_Produtos , 'Todos');
         if mNivelConsulta=mGrupo_Codpro then
            begin
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=4;
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=4;
            end
         else
            begin
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=3;
            Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=3;
            end;

         end
      else
         begin
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_Produtos , 'Todos');
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=3;
         Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=3;
         end;

      mMontou_CodPro:=true;
      end
   else if DM4.Tb_BloqueioBQCODPRO.Value<>-2 then
      begin
      if Trim(DM4.Tb_BloqueioNOMEPRO.AsString)<>'' then
         begin
         if mBloqueio_OrigemChamada=1 then
            begin
            Node_Produtos :=Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.AddChild(Node_Produtos , DM4.Tb_BloqueioNOMEPRO.Value+' '+FormatFloat('00000', DM4.Tb_BloqueioBQCODPRO.Value));
            if mNivelConsulta=mGrupo_Codpro then
               begin
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=4;
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=4;
               end
            else
               begin
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].ImageIndex:=2;
               Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Item[Frm_VendaBloqueada_Relacao.Tree_Consulta.Items.Count-1].SelectedIndex:=2;
               end;

            end
         else
            begin
            Node_Produtos :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.AddChild(Node_Produtos , DM4.Tb_BloqueioNOMEPRO.Value+' '+FormatFloat('00000', DM4.Tb_BloqueioBQCODPRO.Value));
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=2;
            Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=2;
            end;

         mMontou_CodPro:=true;


//

         if (DM4.Tb_BloqueioBQCODVEN.AsFloat<>0) and not (mMontou_CodVen)
            and (pGruBlq<>mGrupo_CodVen) and (pOrigem<>mGrupo_CodVen) then
            begin
            Node_Ven:=Node_Produtos;
            fCarregarVend(0,mGrupo_Codpro,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODFOR.AsFloat<>0) and not (mMontou_CodFor)
            and (pGruBlq<>mGrupo_CodFor) and (pOrigem<>mGrupo_CodFor) then
            begin
            Node_for:=Node_Produtos;
            fCarregarFor(0,mGrupo_Codpro,pGruBlq);
            Continue;
            end;
         if ((DM4.Tb_BloqueioBQCODUF.AsString<>'') and (DM4.Tb_BloqueioBQCODUF.AsString<>'-2')) and not (mMontou_CodUF)
            and (pGruBlq<>mGrupo_CodUF) and (pOrigem<>mGrupo_CodUF) then
            begin
            Node_uf:=Node_Produtos;
            fCarregarUF(0,mGrupo_Codpro,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODLOC.AsFloat<>0) and not (mMontou_CodLoc)
            and (pGruBlq<>mGrupo_CodLoc) and (pOrigem<>mGrupo_CodLoc) then
            begin
            Node_Cidade:=Node_Produtos;
            fCarregarCidades(0,mGrupo_Codpro,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODBAI.AsFloat<>0) and not (mMontou_CodBai)
            and (pGruBlq<>mGrupo_CodBai) and (pOrigem<>mGrupo_CodBai) then
            begin
            Node_Bairros:=Node_Produtos;
            fCarregarBairros(0,mGrupo_Codpro,pGruBlq);
            Continue;
            end;

         if (DM4.Tb_BloqueioBQCODCLI.AsFloat<>0) and not (mMontou_Codcli)
            and (pGruBlq<>mGrupo_CodCli) and (pOrigem<>mGrupo_CodCli) then
            begin
            Node_Clientes:=Node_Produtos;
            fCarregarClientes(0,mGrupo_Codpro,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODRPRO.AsFloat<>0) and not (mMontou_CodRpro)
            and (pGruBlq<>mGrupo_CodRPro) and (pOrigem<>mGrupo_CodRPro) then
            begin
            Node_Rpro:=Node_Produtos;
            fCarregarRPro(0,mGrupo_Codpro,pGruBlq);
            Continue;
            end;
         if (DM4.Tb_BloqueioBQCODCPRO.AsFloat<>0) and not (mMontou_CodCpro)
            and (pGruBlq<>mGrupo_CodCPro) and (pOrigem<>mGrupo_CodCPro) then
            begin
            Node_Cpro:=Node_Produtos;
            fCarregarCPro(0,mGrupo_Codpro,pGruBlq);
            Continue;
            end;

//
         end;
      end;
   DM4.Tb_Bloqueio.Next;
   fZeraItensMontados(False);
   end;
result:=true;
end;

function TFrm_BloqueioVenda.fProcuraNivel(pTipo,pItem: Integer): Integer;
var
x: Integer;
begin
if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[pItem].Text=NomeNivel[01] then
   Result:=1
else if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[pItem].Text=NomeNivel[02] then
   Result:=2
else if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[pItem].Text=NomeNivel[03] then
   Result:=3
else if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[pItem].Text=NomeNivel[04] then
   Result:=4
else if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[pItem].Text=NomeNivel[05] then
   Result:=5
else if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[pItem].Text=NomeNivel[06] then
   Result:=6
else if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[pItem].Text=NomeNivel[07] then
   Result:=7
else if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[pItem].Text=NomeNivel[08] then
   Result:=8
else if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[pItem].Text=NomeNivel[09] then
   Result:=9
else if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[pItem].Text=NomeNivel[10] then
   Result:=10
else
   begin
   if ptipo=1 then
      begin
      for x:=length(Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[pItem].Text) downto 0 do
         begin
         if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[pItem].Text [x]=' ' then
            begin
            mCodigo_Sel:=copy(Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[pItem].Text,x, Length(Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[pItem].Text)-x+1);
            break;
            end;
         end;
      end;
   Result:=-1;
   end;

end;

function TFrm_BloqueioVenda.fIncluirItems(pTipo: Integer): Boolean;
var
x: Integer;
begin
Application.CreateForm(TFrm_SelBloqueio, Frm_SelBloqueio);
Frm_SelBloqueio.Caption:=mSel_NomeTemp;
for x:=1 to 10 do
   begin
   if (mSel_Nivel1=x) or
      (mSel_Nivel2=x) or
      (mSel_Nivel3=x) or
      (mSel_Nivel4=x) or
      (mSel_Nivel5=x) or
      (mSel_Nivel6=x) or
      (mSel_Nivel7=x) or
      (mSel_Nivel8=x) or
      (mSel_Nivel9=x) or
      (mSel_Nivel10=x) or
      (mSel_Nivel11=x) or
      (mSel_Nivel12=x) or
      (mSel_Nivel13=x) or
      (mSel_Nivel14=x) or
      (mSel_Nivel15=x) or
      (mSel_Nivel16=x) then
      begin
      if x=mGrupo_CodVen then
         Frm_SelBloqueio.SpBtn_Vend.Visible:=false
      else if x=mGrupo_CodFor then
         Frm_SelBloqueio.SpBtn_Fornec.Visible:=false
      else if x=mGrupo_CodUF then
         Frm_SelBloqueio.SpBtn_UF.Visible:=false
      else if x=mGrupo_CodLoc then
         Frm_SelBloqueio.SpBtn_Cidades.Visible:=false
      else if x=mGrupo_CodBai then
         Frm_SelBloqueio.SpBtn_Bairros.Visible:=false
      else if x=mGrupo_CodRcli then
         Frm_SelBloqueio.SpBtn_RCli.Visible:=false
      else if x=mGrupo_CodCli then
         Frm_SelBloqueio.SpBtn_Clientes.Visible:=false
      else if x=mGrupo_CodRPro then
         Frm_SelBloqueio.SpBtn_RPro.Visible:=false
      else if x=mGrupo_Codpro then
         Frm_SelBloqueio.SpBtn_Produtos.Visible:=false
      else if x=mGrupo_CodCPro then
         Frm_SelBloqueio.SpBtn_CPro.Visible:=false;
      end;
   end;
if (mUltNivel=mGrupo_CodVen) and (mSel_CodVen=0) then
   begin
   Frm_SelBloqueio.SpBtn_Vend.Visible    :=True;
   Frm_SelBloqueio.SpBtn_Fornec.Visible  :=False;
   Frm_SelBloqueio.SpBtn_Produtos.Visible:=False;
   Frm_SelBloqueio.SpBtn_UF.Visible      :=False;
   Frm_SelBloqueio.SpBtn_Cidades.Visible :=False;
   Frm_SelBloqueio.SpBtn_Bairros.Visible :=False;
   Frm_SelBloqueio.SpBtn_RPro.Visible    :=False;
   Frm_SelBloqueio.SpBtn_Clientes.Visible:=False;
   Frm_SelBloqueio.SpBtn_RCli.Visible    :=False;
   Frm_SelBloqueio.SpBtn_CPro.Visible    :=False;
   end
else if (mUltNivel=mGrupo_CodFor) and (mSel_CodFor=0) then
   begin
   Frm_SelBloqueio.SpBtn_Fornec.Visible  :=True;
   Frm_SelBloqueio.SpBtn_Vend.Visible    :=False;
   Frm_SelBloqueio.SpBtn_Produtos.Visible:=False;
   Frm_SelBloqueio.SpBtn_UF.Visible      :=False;
   Frm_SelBloqueio.SpBtn_Cidades.Visible :=False;
   Frm_SelBloqueio.SpBtn_Bairros.Visible :=False;
   Frm_SelBloqueio.SpBtn_RPro.Visible    :=False;
   Frm_SelBloqueio.SpBtn_Clientes.Visible:=False;
   Frm_SelBloqueio.SpBtn_RCli.Visible    :=False;
   Frm_SelBloqueio.SpBtn_CPro.Visible    :=False;
   end
else if (mUltNivel=mGrupo_CodUF) and (Trim(mSel_CodUF)='') then
   begin

   Frm_SelBloqueio.SpBtn_UF.Visible      :=True;
   Frm_SelBloqueio.SpBtn_Vend.Visible    :=False;
   Frm_SelBloqueio.SpBtn_Fornec.Visible  :=False;
   Frm_SelBloqueio.SpBtn_Produtos.Visible:=False;
   Frm_SelBloqueio.SpBtn_Cidades.Visible :=False;
   Frm_SelBloqueio.SpBtn_Bairros.Visible :=False;
   Frm_SelBloqueio.SpBtn_RPro.Visible    :=False;
   Frm_SelBloqueio.SpBtn_Clientes.Visible:=False;
   Frm_SelBloqueio.SpBtn_RCli.Visible    :=False;
   Frm_SelBloqueio.SpBtn_CPro.Visible    :=False;
   end
else if (mUltNivel=mGrupo_CodLoc) and (mSel_CodLoc=0) then
   begin
   Frm_SelBloqueio.SpBtn_Cidades.Visible :=True;
   Frm_SelBloqueio.SpBtn_Vend.Visible    :=False;
   Frm_SelBloqueio.SpBtn_Fornec.Visible  :=False;
   Frm_SelBloqueio.SpBtn_Produtos.Visible:=False;
   Frm_SelBloqueio.SpBtn_UF.Visible      :=False;
   Frm_SelBloqueio.SpBtn_Bairros.Visible :=False;
   Frm_SelBloqueio.SpBtn_RPro.Visible    :=False;
   Frm_SelBloqueio.SpBtn_Clientes.Visible:=False;
   Frm_SelBloqueio.SpBtn_RCli.Visible    :=False;
   Frm_SelBloqueio.SpBtn_CPro.Visible    :=False;
   end
else if (mUltNivel=mGrupo_CodBai) and (mSel_CodBai=0) then
   begin
   Frm_SelBloqueio.SpBtn_Bairros.Visible :=True;
   Frm_SelBloqueio.SpBtn_Vend.Visible    :=False;
   Frm_SelBloqueio.SpBtn_Fornec.Visible  :=False;
   Frm_SelBloqueio.SpBtn_Produtos.Visible:=False;
   Frm_SelBloqueio.SpBtn_UF.Visible      :=False;
   Frm_SelBloqueio.SpBtn_Cidades.Visible :=False;
   Frm_SelBloqueio.SpBtn_RPro.Visible    :=False;
   Frm_SelBloqueio.SpBtn_Clientes.Visible:=False;
   Frm_SelBloqueio.SpBtn_RCli.Visible    :=False;
   Frm_SelBloqueio.SpBtn_CPro.Visible    :=False;
   end
else if (mUltNivel=mGrupo_CodRcli) and (mSel_CodRcli=0) then
   begin
   Frm_SelBloqueio.SpBtn_RCli.Visible    :=True;
   Frm_SelBloqueio.SpBtn_Vend.Visible    :=False;
   Frm_SelBloqueio.SpBtn_Fornec.Visible  :=False;
   Frm_SelBloqueio.SpBtn_Produtos.Visible:=False;
   Frm_SelBloqueio.SpBtn_UF.Visible      :=False;
   Frm_SelBloqueio.SpBtn_Cidades.Visible :=False;
   Frm_SelBloqueio.SpBtn_Bairros.Visible :=False;
   Frm_SelBloqueio.SpBtn_RPro.Visible    :=False;
   Frm_SelBloqueio.SpBtn_Clientes.Visible:=False;
   Frm_SelBloqueio.SpBtn_CPro.Visible    :=False;
   end
else if (mUltNivel=mGrupo_CodCli) and (mSel_CodCli=0) then
   begin
   Frm_SelBloqueio.SpBtn_Clientes.Visible:=True;
   Frm_SelBloqueio.SpBtn_Vend.Visible    :=False;
   Frm_SelBloqueio.SpBtn_Fornec.Visible  :=False;
   Frm_SelBloqueio.SpBtn_Produtos.Visible:=False;
   Frm_SelBloqueio.SpBtn_UF.Visible      :=False;
   Frm_SelBloqueio.SpBtn_Cidades.Visible :=False;
   Frm_SelBloqueio.SpBtn_Bairros.Visible :=False;
   Frm_SelBloqueio.SpBtn_RPro.Visible    :=False;
   Frm_SelBloqueio.SpBtn_RCli.Visible    :=False;
   Frm_SelBloqueio.SpBtn_CPro.Visible    :=False;
   end
else if (mUltNivel=mGrupo_CodRPro) and (mSel_CodRPro=0) then
   begin
   Frm_SelBloqueio.SpBtn_RPro.Visible    :=True;
   Frm_SelBloqueio.SpBtn_Vend.Visible    :=False;
   Frm_SelBloqueio.SpBtn_Fornec.Visible  :=False;
   Frm_SelBloqueio.SpBtn_Produtos.Visible:=False;
   Frm_SelBloqueio.SpBtn_UF.Visible      :=False;
   Frm_SelBloqueio.SpBtn_Cidades.Visible :=False;
   Frm_SelBloqueio.SpBtn_Bairros.Visible :=False;
   Frm_SelBloqueio.SpBtn_Clientes.Visible:=False;
   Frm_SelBloqueio.SpBtn_RCli.Visible    :=False;
   Frm_SelBloqueio.SpBtn_CPro.Visible    :=False;
   end
else if (mUltNivel=mGrupo_Codpro) and (mSel_Codpro=0) then
   begin
   Frm_SelBloqueio.SpBtn_Produtos.Visible:=True;
   Frm_SelBloqueio.SpBtn_Vend.Visible    :=False;
   Frm_SelBloqueio.SpBtn_Fornec.Visible  :=False;
   Frm_SelBloqueio.SpBtn_UF.Visible      :=False;
   Frm_SelBloqueio.SpBtn_Cidades.Visible :=False;
   Frm_SelBloqueio.SpBtn_Bairros.Visible :=False;
   Frm_SelBloqueio.SpBtn_RPro.Visible    :=False;
   Frm_SelBloqueio.SpBtn_Clientes.Visible:=False;
   Frm_SelBloqueio.SpBtn_RCli.Visible    :=False;
   Frm_SelBloqueio.SpBtn_CPro.Visible    :=False;
   end
else if (mUltNivel=mGrupo_CodCPro) and (mSel_CodCPro=0) then
   begin
   Frm_SelBloqueio.SpBtn_CPro.Visible    :=True;
   Frm_SelBloqueio.SpBtn_Bairros.Visible :=False;
   Frm_SelBloqueio.SpBtn_Vend.Visible    :=False;
   Frm_SelBloqueio.SpBtn_Fornec.Visible  :=False;
   Frm_SelBloqueio.SpBtn_Produtos.Visible:=False;
   Frm_SelBloqueio.SpBtn_UF.Visible      :=False;
   Frm_SelBloqueio.SpBtn_Cidades.Visible :=False;
   Frm_SelBloqueio.SpBtn_RPro.Visible    :=False;
   Frm_SelBloqueio.SpBtn_Clientes.Visible:=False;
   Frm_SelBloqueio.SpBtn_RCli.Visible    :=False;
   end;




DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select  BQCODRCLI ');
DM1.Query2.SQL.Add('       ,BQCODRPRO');
DM1.Query2.SQL.Add('       ,BQCODFOR');
DM1.Query2.SQL.Add('       ,BQCODUF');
DM1.Query2.SQL.Add('       ,BQCODLOC');
DM1.Query2.SQL.Add('       ,BQCODBAI');
DM1.Query2.SQL.Add('       ,BQCODPRO');
DM1.Query2.SQL.Add('       ,BQCODCPRO');
DM1.Query2.SQL.Add('       ,BQCODCLI');
DM1.Query2.SQL.Add('       ,BQCODVEN');
DM1.Query2.SQL.Add('       ,BQGRUDUP');
DM1.Query2.SQL.Add('       ,BQGRUBLQ');
DM1.Query2.SQL.Add(' from CADBLQ where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADBLQ',[]),'',' BQCODEMP=0'+IntTostr(codemp)+' and '));
DM1.Query2.SQL.Add(' BQGRUBLQ=0'+FloatToStr(mNivelSel));
if mSel_CodVen<>0 then
   DM1.Query2.SQL.Add(' and BQCODVEN='+FloatToStr(mSel_CodVen));
if mSel_CodFor<>0 then
   DM1.Query2.SQL.Add(' and BQCODFOR='+FloatToStr(mSel_CodFor));
if trim(mSel_CodUF)<>'' then
   DM1.Query2.SQL.Add(' and BQCODUF='+chr(39)+mSel_CodUF+chr(39));
if mSel_CodLoc<>0 then
   DM1.Query2.SQL.Add(' and BQCODLOC='+FloatToStr(mSel_CodLoc));
if mSel_CodBai<>0 then
   DM1.Query2.SQL.Add(' and BQCODBAI='+FloatToStr(mSel_CodBai));
if mSel_CodRcli<>0 then
   DM1.Query2.SQL.Add(' and BQCODRCLI='+FloatToStr(mSel_CodRcli));
if mSel_CodCli<>0 then
   DM1.Query2.SQL.Add(' and BQCODCLI='+FloatToStr(mSel_CodCli));

if mSel_CodRPRO<>0 then
   DM1.Query2.SQL.Add(' and BQCODRPRO='+FloatToStr(mSel_CodRPro));
if mSel_CodCPRO<>0 then
   DM1.Query2.SQL.Add(' and BQCODCPRO='+FloatToStr(mSel_CodCPro));

if mSel_Codpro<>0 then
   DM1.Query2.SQL.Add(' and BQCODPRO='+FloatToStr(mSel_Codpro));
//DM1.Query2.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
DM1.Query2.Open;

While not DM1.Query2.Eof do
   begin
   if DM1.Query2.FieldByName('BQCODVEN').AsFloat<>0 then
      begin
      if (mUltNivel<>mGrupo_CodVen) and (DM1.Query2.FieldByName('BQCODVEN').AsFloat<>-1) then
         Frm_SelBloqueio.SpBtn_Vend.Visible  :=False;
      end;

   if DM1.Query2.FieldByName('BQCODFOR').AsFloat<>0 then
      begin
      if (mUltNivel<>mGrupo_CodFor) and (DM1.Query2.FieldByName('BQCODFOR').AsFloat<>-1) then
         Frm_SelBloqueio.SpBtn_Fornec.Visible  :=False;
      end;
   if DM1.Query2.FieldByName('BQCODUF').AsString<>'' then
      begin
      if (mUltNivel<>mGrupo_CodUF) and (DM1.Query2.FieldByName('BQCODUF').AsString<>'-1') then
         Frm_SelBloqueio.SpBtn_UF.Visible  :=False;
      end;
   if DM1.Query2.FieldByName('BQCODLOC').AsFloat<>0 then
      begin
      if (mUltNivel<>mGrupo_CodLoc) and (DM1.Query2.FieldByName('BQCODLOC').AsFloat<>-1) then
         Frm_SelBloqueio.SpBtn_Cidades.Visible  :=False;
      end;
   if DM1.Query2.FieldByName('BQCODBAI').AsFloat<>0 then
      begin
      if (mUltNivel<>mGrupo_CodBai) and (DM1.Query2.FieldByName('BQCODBAI').AsFloat<>-1) then
         Frm_SelBloqueio.SpBtn_Bairros.Visible  :=False;
      end;
   if DM1.Query2.FieldByName('BQCODRCLI').AsFloat<>0 then
      begin
      if (mUltNivel<>mGrupo_CodRcli) and (DM1.Query2.FieldByName('BQCODRCLI').AsFloat<>-1) then
         Frm_SelBloqueio.SpBtn_RCli.Visible  :=False;
      end;
   if DM1.Query2.FieldByName('BQCODCLI').AsFloat<>0 then
      begin
      if (mUltNivel<>mGrupo_CodCli) and (DM1.Query2.FieldByName('BQCODCLI').AsFloat<>-1) then
         Frm_SelBloqueio.SpBtn_Clientes.Visible  :=False;
      end;
   if DM1.Query2.FieldByName('BQCODRPRO').AsFloat<>0 then
      begin
      if (mUltNivel<>mGrupo_CodRPro) and (DM1.Query2.FieldByName('BQCODRPRO').AsFloat<>-1) then
         Frm_SelBloqueio.SpBtn_RPro.Visible  :=False;
      end;
   if DM1.Query2.FieldByName('BQCODPRO').AsFloat<>0 then
      begin
      if (mUltNivel<>mGrupo_Codpro) and (DM1.Query2.FieldByName('BQCODPRO').AsFloat<>-1) then
         Frm_SelBloqueio.SpBtn_Produtos.Visible  :=False;
      end;
   DM1.Query2.Next;
   end;

Frm_SelBloqueio.ShowModal;
Frm_SelBloqueio.Free;

end;

function TFrm_BloqueioVenda.fAtualizarDadosTreeView(pTipo: Integer): Boolean;
var
mIdent_niveis: String;
x: Integer;
begin


mItem01:=-1;
mItem02:=-1;
mItem03:=-1;
mItem04:=-1;
mItem05:=-1;
mItem06:=-1;
mItem07:=-1;
mItem08:=-1;

mItem09:=-1;
mItem10:=-1;
mItem11:=-1;
mItem12:=-1;
mItem13:=-1;
mItem14:=-1;
mItem15:=-1;
mItem16:=-1;


mSel_CodRcli :=0;
mSel_CodRPro :=0;
mSel_CodFor  :=0;
mSel_Codven  :=0;
mSel_CodLoc  :=0;
mSel_CodBai  :=0;
mSel_Codpro  :=0;
mSel_CodCli  :=0;
mSel_CodUF   :='';

mSel_Nomecomp:='';



//if Frm_BloqueioVenda.Tree_BloqueioVenda.Selected.Count>0 then
//   begin
mItem01:=Frm_BloqueioVenda.Tree_BloqueioVenda.Selected.AbsoluteIndex;
if Frm_BloqueioVenda.Tree_BloqueioVenda.Selected.Parent<>nil then
   begin
   mItem02:=Frm_BloqueioVenda.Tree_BloqueioVenda.Selected.Parent.AbsoluteIndex;
   if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem02].Parent<>nil then
      begin
      mItem03:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem02].Parent.AbsoluteIndex;
      if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem03].Parent<>nil then
         begin
         mItem04:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem03].Parent.AbsoluteIndex;
         if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem04].Parent<>nil then
            begin
            mItem05:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem04].Parent.AbsoluteIndex;
            if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem05].Parent<>nil then
               begin
               mItem06:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem05].Parent.AbsoluteIndex;
               if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem06].Parent<>nil then
                  begin
                  mItem07:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem06].Parent.AbsoluteIndex;
                  if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem07].Parent<>nil then
                     begin
                     mItem08:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem07].Parent.AbsoluteIndex;
                     if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem08].Parent<>nil then
                        begin
                        mItem09:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem08].Parent.AbsoluteIndex;
                        if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem09].Parent<>nil then
                           begin
                           mItem10:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem09].Parent.AbsoluteIndex;
                           if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem10].Parent<>nil then
                              begin
                              mItem11:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem10].Parent.AbsoluteIndex;
                              if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem11].Parent<>nil then
                                 begin
                                 mItem12:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem11].Parent.AbsoluteIndex;
                                 if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem12].Parent<>nil then
                                    begin
                                    mItem13:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem12].Parent.AbsoluteIndex;
                                    if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem13].Parent<>nil then
                                       begin
                                       mItem14:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem13].Parent.AbsoluteIndex;
                                       if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem14].Parent<>nil then
                                          begin
                                          mItem15:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem14].Parent.AbsoluteIndex;
                                          if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem15].Parent<>nil then
                                             begin
                                             mItem16:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem15].Parent.AbsoluteIndex;
                                             end;
                                          end;
                                       end;
                                    end;
                                 end;
                              end;
                           end;
                        end;
                     end;
                  end;
               end;
            end;
         end;
      end;
   end;
mIdent_niveis:='';
mSel_NomeTemp:='';
mCodigo_Sel:='';
mCodigo_Ant:='';
mNivelSel  :=-1;

mUltNivel    :=-1;
if mItem01>=0 then
   begin
   mNivelSel:=fProcuraNivel(1,mItem01);
   mUltNivel:=mNivelSel;
   mCodigo_Ant:=mCodigo_Sel;
   mSel_NomeTemp:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mITem01].Text;
   mSel_Nomecomp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mITem01].Text;
   mIdent_niveis :=FormatFloat('000',mItem01);
   end;
if mItem02>=0 then
   begin
   mNivelSel:=fProcuraNivel(1,mItem02);
   if mUltNivel<0 then
      mUltNivel:=mNivelSel;
   if (mNivelSel>0) and (trim(mCodigo_Ant)<>'') then
      begin
      if mNivelSel=mGrupo_CodVen then
         mSel_CodVen:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodFor then
         mSel_CodFor:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodUF then
         mSel_CodUF :=mCodigo_Ant
      else if mNivelSel=mGrupo_CodLoc then
         mSel_CodLoc:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodBai then
         mSel_CodBai:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRcli then
         mSel_CodRcli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodCli then
         mSel_CodCli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRPro then
         mSel_CodRPro:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_Codpro then
         mSel_Codpro:=StrToFloat(mCodigo_Ant);
      mCodigo_Ant:='';
      end;
   mCodigo_Ant:=mCodigo_Sel;
   mSel_NomeTemp:=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mITem02].Text+'\'+mSel_NomeTemp;
   mSel_Nomecomp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mITem02].Text+'\'+mSel_NomeTemp;
   mIdent_niveis :=FormatFloat('000',mItem02)+'-'+mIdent_niveis;
   end;
if mItem03>=0 then
   begin
   mNivelSel:=fProcuraNivel(1,mItem03);
   if mUltNivel<0 then
      mUltNivel:=mNivelSel;
   if (mNivelSel>0) and (trim(mCodigo_Ant)<>'') then
      begin
      if mNivelSel=mGrupo_CodVen then
         mSel_CodVen:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodFor then
         mSel_CodFor:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodUF then
         mSel_CodUF :=mCodigo_Ant
      else if mNivelSel=mGrupo_CodLoc then
         mSel_CodLoc:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodBai then
         mSel_CodBai:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRcli then
         mSel_CodRcli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodCli then
         mSel_CodCli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRPro then
         mSel_CodRPro:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_Codpro then
         mSel_Codpro:=StrToFloat(mCodigo_Ant);
      mCodigo_Ant:='';
      end;
   mCodigo_Ant:=mCodigo_Sel;

   mSel_NomeTemp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mITem03].Text+'\'+mSel_NomeTemp;
   mSel_Nomecomp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mITem03].Text+'\'+mSel_NomeTemp;
   mIdent_niveis :=FormatFloat('000',mItem03)+'-'+mIdent_niveis;
   end;
if mItem04>=0 then
   begin
   mNivelSel:=fProcuraNivel(1,mItem04);
   if mUltNivel<0 then
      mUltNivel:=mNivelSel;
   if (mNivelSel>0) and (trim(mCodigo_Ant)<>'') then
      begin
      if mNivelSel=mGrupo_CodVen then
         mSel_CodVen :=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodFor then
         mSel_CodFor:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodUF then
         mSel_CodUF :=mCodigo_Ant
      else if mNivelSel=mGrupo_CodLoc then
         mSel_CodLoc:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodBai then
         mSel_CodBai:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRcli then
         mSel_CodRcli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodCli then
         mSel_CodCli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRPro then
         mSel_CodRPro:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_Codpro then
         mSel_Codpro:=StrToFloat(mCodigo_Ant);
      mCodigo_Ant:='';
      end;
   mCodigo_Ant:=mCodigo_Sel;

   mSel_NomeTemp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mITem04].Text+'\'+mSel_NomeTemp;
   mSel_Nomecomp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mITem04].Text+'\'+mSel_NomeTemp;
   mIdent_niveis :=FormatFloat('000',mItem04)+'-'+mIdent_niveis;
   end;
if mItem05>=0 then
   begin
   mNivelSel:=fProcuraNivel(1,mItem05);
   if mUltNivel<0 then
      mUltNivel:=mNivelSel;
   if (mNivelSel>0) and (trim(mCodigo_Ant)<>'') then
      begin
      if mNivelSel=mGrupo_CodVen then
         mSel_CodVen :=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodFor then
         mSel_CodFor:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodUF then
         mSel_CodUF :=mCodigo_Ant
      else if mNivelSel=mGrupo_CodLoc then
         mSel_CodLoc:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodBai then
         mSel_CodBai:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRcli then
         mSel_CodRcli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodCli then
         mSel_CodCli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRPro then
         mSel_CodRPro:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_Codpro then
         mSel_Codpro:=StrToFloat(mCodigo_Ant);
      mCodigo_Ant:='';
      end;
   mCodigo_Ant:=mCodigo_Sel;

   mSel_NomeTemp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mITem05].Text+'\'+mSel_NomeTemp;
   mSel_Nomecomp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mITem05].Text+'\'+mSel_NomeTemp;
   mIdent_niveis :=FormatFloat('000',mItem05)+'-'+mIdent_niveis;
   end;
if mItem06>=0 then
   begin
   mNivelSel:=fProcuraNivel(1,mItem06);
   if mUltNivel<0 then
      mUltNivel:=mNivelSel;
   if (mNivelSel>0) and (trim(mCodigo_Ant)<>'') then
      begin
      if mNivelSel=mGrupo_CodVen then
         mSel_CodVen :=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodFor then
         mSel_CodFor:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodUF then
         mSel_CodUF :=mCodigo_Ant
      else if mNivelSel=mGrupo_CodLoc then
         mSel_CodLoc:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodBai then
         mSel_CodBai:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRcli then
         mSel_CodRcli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodCli then
         mSel_CodCli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRPro then
         mSel_CodRPro:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_Codpro then
         mSel_Codpro:=StrToFloat(mCodigo_Ant);
      mCodigo_Ant:='';
      end;
   mCodigo_Ant:=mCodigo_Sel;

   mSel_NomeTemp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mITem06].Text+'\'+mSel_NomeTemp;
   mSel_Nomecomp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mITem06].Text+'\'+mSel_NomeTemp;
   mIdent_niveis :=FormatFloat('000',mItem06)+'-'+mIdent_niveis;
   end;
if mItem07>=0 then
   begin
   mNivelSel:=fProcuraNivel(1,mItem07);
   if mUltNivel<0 then
      mUltNivel:=mNivelSel;
   if (mNivelSel>0) and (trim(mCodigo_Ant)<>'') then
      begin
      if mNivelSel=mGrupo_CodVen then
         mSel_CodVen :=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodFor then
         mSel_CodFor:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodUF then
         mSel_CodUF :=mCodigo_Ant
      else if mNivelSel=mGrupo_CodLoc then
         mSel_CodLoc:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodBai then
         mSel_CodBai:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRcli then
         mSel_CodRcli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodCli then
         mSel_CodCli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRPro then
         mSel_CodRPro:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_Codpro then
         mSel_Codpro:=StrToFloat(mCodigo_Ant);
      mCodigo_Ant:='';
      end;
   mCodigo_Ant:=mCodigo_Sel;

   mSel_NomeTemp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mITem07].Text+'\'+mSel_NomeTemp;
   mSel_Nomecomp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mITem07].Text+'\'+mSel_NomeTemp;
   mIdent_niveis :=FormatFloat('000',mItem07)+'-'+mIdent_niveis;

   end;
if mItem08>=0 then
   begin
   mNivelSel:=fProcuraNivel(1,mItem08);
   if mUltNivel<0 then
      mUltNivel:=mNivelSel;
   if (mNivelSel>0) and (trim(mCodigo_Ant)<>'') then
      begin
      if mNivelSel=mGrupo_CodVen then
         mSel_CodVen :=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodFor then
         mSel_CodFor:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodUF then
         mSel_CodUF :=mCodigo_Ant
      else if mNivelSel=mGrupo_CodLoc then
         mSel_CodLoc:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodBai then
         mSel_CodBai:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRcli then
         mSel_CodRcli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodCli then
         mSel_CodCli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRPro then
         mSel_CodRPro:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_Codpro then
         mSel_Codpro:=StrToFloat(mCodigo_Ant);
      mCodigo_Ant:='';
      end;
   mCodigo_Ant:=mCodigo_Sel;

   mSel_NomeTemp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mITem08].Text+'\'+mSel_NomeTemp;
   mSel_Nomecomp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mITem08].Text+'\'+mSel_NomeTemp;
   mIdent_niveis :=FormatFloat('000',mItem08)+'-'+mIdent_niveis;
   end;

if mItem09>=0 then
   begin
   mNivelSel:=fProcuraNivel(1,mItem09);
   if mUltNivel<0 then
      mUltNivel:=mNivelSel;
   if (mNivelSel>0) and (trim(mCodigo_Ant)<>'') then
      begin
      if mNivelSel=mGrupo_CodVen then
         mSel_CodVen :=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodFor then
         mSel_CodFor:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodUF then
         mSel_CodUF :=mCodigo_Ant
      else if mNivelSel=mGrupo_CodLoc then
         mSel_CodLoc:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodBai then
         mSel_CodBai:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRcli then
         mSel_CodRcli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodCli then
         mSel_CodCli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRPro then
         mSel_CodRPro:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_Codpro then
         mSel_Codpro:=StrToFloat(mCodigo_Ant);
      mCodigo_Ant:='';
      end;
   mCodigo_Ant:=mCodigo_Sel;
   mSel_NomeTemp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mITem09].Text+'\'+mSel_NomeTemp;
   mSel_Nomecomp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mITem09].Text+'\'+mSel_NomeTemp;
   mIdent_niveis :=FormatFloat('000',mItem09)+'-'+mIdent_niveis;
   end;
if mItem10>=0 then
   begin
   mNivelSel:=fProcuraNivel(1,mItem10);
   if mUltNivel<0 then
      mUltNivel:=mNivelSel;
   if (mNivelSel>0) and (trim(mCodigo_Ant)<>'') then
      begin
      if mNivelSel=mGrupo_CodVen then
         mSel_CodVen :=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodFor then
         mSel_CodFor:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodUF then
         mSel_CodUF :=mCodigo_Ant
      else if mNivelSel=mGrupo_CodLoc then
         mSel_CodLoc:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodBai then
         mSel_CodBai:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRcli then
         mSel_CodRcli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodCli then
         mSel_CodCli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRPro then
         mSel_CodRPro:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_Codpro then
         mSel_Codpro:=StrToFloat(mCodigo_Ant);
      mCodigo_Ant:='';
      end;
   mCodigo_Ant:=mCodigo_Sel;

   mSel_NomeTemp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem10].Text+'\'+mSel_NomeTemp;
   mSel_Nomecomp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem10].Text+'\'+mSel_NomeTemp;
   mIdent_niveis :=FormatFloat('000',mItem10)+'-'+mIdent_niveis;
   end;

if mItem11>=0 then
   begin
   mNivelSel:=fProcuraNivel(1,mItem11);
   if mUltNivel<0 then
      mUltNivel:=mNivelSel;
   if (mNivelSel>0) and (trim(mCodigo_Ant)<>'') then
      begin
      if mNivelSel=mGrupo_CodVen then
         mSel_CodVen :=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodFor then
         mSel_CodFor:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodUF then
         mSel_CodUF :=mCodigo_Ant
      else if mNivelSel=mGrupo_CodLoc then
         mSel_CodLoc:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodBai then
         mSel_CodBai:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRcli then
         mSel_CodRcli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodCli then
         mSel_CodCli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRPro then
         mSel_CodRPro:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_Codpro then
         mSel_Codpro:=StrToFloat(mCodigo_Ant);
      mCodigo_Ant:='';
      end;
   mCodigo_Ant:=mCodigo_Sel;

   mSel_NomeTemp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem11].Text+'\'+mSel_NomeTemp;
   mSel_Nomecomp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem11].Text+'\'+mSel_NomeTemp;
   mIdent_niveis :=FormatFloat('000',mItem11)+'-'+mIdent_niveis;
   end;

if mItem12>=0 then
   begin
   mNivelSel:=fProcuraNivel(1,mItem12);
   if mUltNivel<0 then
      mUltNivel:=mNivelSel;
   if (mNivelSel>0) and (trim(mCodigo_Ant)<>'') then
      begin
      if mNivelSel=mGrupo_CodVen then
         mSel_CodVen :=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodFor then
         mSel_CodFor:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodUF then
         mSel_CodUF :=mCodigo_Ant
      else if mNivelSel=mGrupo_CodLoc then
         mSel_CodLoc:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodBai then
         mSel_CodBai:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRcli then
         mSel_CodRcli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodCli then
         mSel_CodCli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRPro then
         mSel_CodRPro:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_Codpro then
         mSel_Codpro:=StrToFloat(mCodigo_Ant);
      mCodigo_Ant:='';
      end;
   mCodigo_Ant:=mCodigo_Sel;

   mSel_NomeTemp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem12].Text+'\'+mSel_NomeTemp;
   mSel_Nomecomp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem12].Text+'\'+mSel_NomeTemp;
   mIdent_niveis :=FormatFloat('000',mItem12)+'-'+mIdent_niveis;
   end;
if mItem13>=0 then
   begin
   mNivelSel:=fProcuraNivel(1,mItem13);
   if mUltNivel<0 then
      mUltNivel:=mNivelSel;
   if (mNivelSel>0) and (trim(mCodigo_Ant)<>'') then
      begin
      if mNivelSel=mGrupo_CodVen then
         mSel_CodVen :=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodFor then
         mSel_CodFor:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodUF then
         mSel_CodUF :=mCodigo_Ant
      else if mNivelSel=mGrupo_CodLoc then
         mSel_CodLoc:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodBai then
         mSel_CodBai:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRcli then
         mSel_CodRcli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodCli then
         mSel_CodCli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRPro then
         mSel_CodRPro:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_Codpro then
         mSel_Codpro:=StrToFloat(mCodigo_Ant);
      mCodigo_Ant:='';
      end;
   mCodigo_Ant:=mCodigo_Sel;

   mSel_NomeTemp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem13].Text+'\'+mSel_NomeTemp;
   mSel_Nomecomp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem13].Text+'\'+mSel_NomeTemp;
   mIdent_niveis :=FormatFloat('000',mItem13)+'-'+mIdent_niveis;
   end;

if mItem14>=0 then
   begin
   mNivelSel:=fProcuraNivel(1,mItem14);
   if mUltNivel<0 then
      mUltNivel:=mNivelSel;
   if (mNivelSel>0) and (trim(mCodigo_Ant)<>'') then
      begin
      if mNivelSel=mGrupo_CodVen then
         mSel_CodVen :=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodFor then
         mSel_CodFor:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodUF then
         mSel_CodUF :=mCodigo_Ant
      else if mNivelSel=mGrupo_CodLoc then
         mSel_CodLoc:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodBai then
         mSel_CodBai:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRcli then
         mSel_CodRcli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodCli then
         mSel_CodCli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRPro then
         mSel_CodRPro:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_Codpro then
         mSel_Codpro:=StrToFloat(mCodigo_Ant);
      mCodigo_Ant:='';
      end;
   mCodigo_Ant:=mCodigo_Sel;

   mSel_NomeTemp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem14].Text+'\'+mSel_NomeTemp;
   mSel_Nomecomp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem14].Text+'\'+mSel_NomeTemp;
   mIdent_niveis :=FormatFloat('000',mItem14)+'-'+mIdent_niveis;
   end;

if mItem15>=0 then
   begin
   mNivelSel:=fProcuraNivel(1,mItem15);
   if mUltNivel<0 then
      mUltNivel:=mNivelSel;
   if (mNivelSel>0) and (trim(mCodigo_Ant)<>'') then
      begin
      if mNivelSel=mGrupo_CodVen then
         mSel_CodVen :=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodFor then
         mSel_CodFor:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodUF then
         mSel_CodUF :=mCodigo_Ant
      else if mNivelSel=mGrupo_CodLoc then
         mSel_CodLoc:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodBai then
         mSel_CodBai:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRcli then
         mSel_CodRcli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodCli then
         mSel_CodCli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRPro then
         mSel_CodRPro:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_Codpro then
         mSel_Codpro:=StrToFloat(mCodigo_Ant);
      mCodigo_Ant:='';
      end;
   mCodigo_Ant:=mCodigo_Sel;

   mSel_NomeTemp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem15].Text+'\'+mSel_NomeTemp;
   mSel_Nomecomp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem15].Text+'\'+mSel_NomeTemp;
   mIdent_niveis :=FormatFloat('000',mItem15)+'-'+mIdent_niveis;
   end;

if mItem16>=0 then
   begin
   mNivelSel:=fProcuraNivel(1,mItem16);
   if mUltNivel<0 then
      mUltNivel:=mNivelSel;
   if (mNivelSel>0) and (trim(mCodigo_Ant)<>'') then
      begin
      if mNivelSel=mGrupo_CodVen then
         mSel_CodVen :=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodFor then
         mSel_CodFor:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodUF then
         mSel_CodUF :=mCodigo_Ant
      else if mNivelSel=mGrupo_CodLoc then
         mSel_CodLoc:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodBai then
         mSel_CodBai:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRcli then
         mSel_CodRcli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodCli then
         mSel_CodCli:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_CodRPro then
         mSel_CodRPro:=StrToFloat(mCodigo_Ant)
      else if mNivelSel=mGrupo_Codpro then
         mSel_Codpro:=StrToFloat(mCodigo_Ant);
      mCodigo_Ant:='';
      end;
   mCodigo_Ant:=mCodigo_Sel;

   mSel_NomeTemp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem16].Text+'\'+mSel_NomeTemp;
   mSel_Nomecomp :=Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[mItem16].Text+'\'+mSel_NomeTemp;
   mIdent_niveis :=FormatFloat('000',mItem16)+'-'+mIdent_niveis;
   end;




mQtdNiveis:=0;
mTextoNivel:='';
mItem01:=-1;
mItem02:=-1;
mItem03:=-1;
mItem04:=-1;
mItem05:=-1;
mItem06:=-1;
mItem07:=-1;
mItem08:=-1;

mItem09:=-1;
mItem10:=-1;
mItem11:=-1;
mItem12:=-1;
mItem13:=-1;
mItem14:=-1;
mItem15:=-1;
mItem16:=-1;

for x:=1 to length(mIdent_niveis) do
   begin
   if mIdent_niveis[x]='-' then
      begin
      mQtdNiveis:=mQtdNiveis+1;
      if mQtdNiveis=1 then
         mItem01:=StrToInt(mTextoNivel)
      else if mQtdNiveis=2 then
         mItem02:=StrToInt(mTextoNivel)
      else if mQtdNiveis=3 then
         mItem03:=StrToInt(mTextoNivel)
      else if mQtdNiveis=4 then
         mItem04:=StrToInt(mTextoNivel)
      else if mQtdNiveis=5 then
         mItem05:=StrToInt(mTextoNivel)
      else if mQtdNiveis=6 then
         mItem06:=StrToInt(mTextoNivel)
      else if mQtdNiveis=7 then
         mItem07:=StrToInt(mTextoNivel)
      else if mQtdNiveis=8 then
         mItem08:=StrToInt(mTextoNivel)
      else if mQtdNiveis=9 then
         mItem09:=StrToInt(mTextoNivel)
      else if mQtdNiveis=10 then
         mItem10:=StrToInt(mTextoNivel)
      else if mQtdNiveis=11 then
         mItem11:=StrToInt(mTextoNivel)
      else if mQtdNiveis=12 then
         mItem12:=StrToInt(mTextoNivel)
      else if mQtdNiveis=13 then
         mItem13:=StrToInt(mTextoNivel)
      else if mQtdNiveis=14 then
         mItem14:=StrToInt(mTextoNivel)
      else if mQtdNiveis=15 then
         mItem15:=StrToInt(mTextoNivel)
      else if mQtdNiveis=16 then
         mItem16:=StrToInt(mTextoNivel);
      mTextoNivel:='';
      Continue;
      end
   else
      begin
      mTextoNivel:=mTextoNivel+mIdent_niveis[x];
      end;
   end;
if trim(mTextoNivel)<>'' then
   begin
   mQtdNiveis:=mQtdNiveis+1;
   if mQtdNiveis=1 then
      mItem01:=StrToInt(mTextoNivel)
   else if mQtdNiveis=2 then
      mItem02:=StrToInt(mTextoNivel)
   else if mQtdNiveis=3 then
      mItem03:=StrToInt(mTextoNivel)
   else if mQtdNiveis=4 then
      mItem04:=StrToInt(mTextoNivel)
   else if mQtdNiveis=5 then
      mItem05:=StrToInt(mTextoNivel)
   else if mQtdNiveis=6 then
      mItem06:=StrToInt(mTextoNivel)
   else if mQtdNiveis=7 then
      mItem07:=StrToInt(mTextoNivel)
   else if mQtdNiveis=8 then
      mItem08:=StrToInt(mTextoNivel)
   else if mQtdNiveis=9 then
      mItem09:=StrToInt(mTextoNivel)
   else if mQtdNiveis=10 then
      mItem10:=StrToInt(mTextoNivel)
   else if mQtdNiveis=11 then
      mItem11:=StrToInt(mTextoNivel)
   else if mQtdNiveis=12 then
      mItem12:=StrToInt(mTextoNivel)
   else if mQtdNiveis=13 then
      mItem13:=StrToInt(mTextoNivel)
   else if mQtdNiveis=14 then
      mItem14:=StrToInt(mTextoNivel)
   else if mQtdNiveis=15 then
      mItem15:=StrToInt(mTextoNivel)
   else if mQtdNiveis=16 then
      mItem16:=StrToInt(mTextoNivel);
   mTextoNivel:='';
   end;
mSel_Nivel1:=0;
mSel_Nivel2:=0;
mSel_Nivel3:=0;
mSel_Nivel4:=0;
mSel_Nivel5:=0;
mSel_Nivel6:=0;
mSel_Nivel7:=0;
mSel_Nivel8:=0;
mSel_Nivel8:=0;

if mItem01>-1 then
   mSel_Nivel1:=fProcuraNivel(0,mItem01);
if mItem02>-1 then
   mSel_Nivel2:=fProcuraNivel(0,mItem02);
if mItem03>-1 then
   mSel_Nivel3:=fProcuraNivel(0,mItem03);
if mItem04>-1 then
   mSel_Nivel4:=fProcuraNivel(0,mItem04);
if mItem05>-1 then
   mSel_Nivel5:=fProcuraNivel(0,mItem05);
if mItem06>-1 then
   mSel_Nivel6:=fProcuraNivel(0,mItem06);
if mItem07>-1 then
   mSel_Nivel7:=fProcuraNivel(0,mItem07);
if mItem08>-1 then
   mSel_Nivel8:=fProcuraNivel(0,mItem08);

if mItem09>-1 then
   mSel_Nivel9:=fProcuraNivel(0,mItem09);
if mItem10>-1 then
   mSel_Nivel10:=fProcuraNivel(0,mItem10);
if mItem11>-1 then
   mSel_Nivel1:=fProcuraNivel(0,mItem11);
if mItem12>-1 then
   mSel_Nivel2:=fProcuraNivel(0,mItem12);
if mItem13>-1 then
   mSel_Nivel3:=fProcuraNivel(0,mItem13);
if mItem14>-1 then
   mSel_Nivel4:=fProcuraNivel(0,mItem14);
if mItem15>-1 then
   mSel_Nivel5:=fProcuraNivel(0,mItem15);
if mItem16>-1 then
   mSel_Nivel6:=fProcuraNivel(0,mItem16);



end;

function TFrm_BloqueioVenda.fMontarMenu(pTipo: Integer): Boolean;
begin

Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Clear;
DM4.Tb_Bloqueio.Close;
DM4.Tb_Bloqueio.SQL.Clear;
DM4.Tb_Bloqueio.SQL.Add('Select  BQCODRCLI ');
DM4.Tb_Bloqueio.SQL.Add('       ,BQCODRPRO');
DM4.Tb_Bloqueio.SQL.Add('       ,BQCODVEN');
DM4.Tb_Bloqueio.SQL.Add('       ,BQCODFOR');
DM4.Tb_Bloqueio.SQL.Add('       ,BQCODUF');
DM4.Tb_Bloqueio.SQL.Add('       ,BQCODLOC');
DM4.Tb_Bloqueio.SQL.Add('       ,BQCODCPRO');
DM4.Tb_Bloqueio.SQL.Add('       ,BQCODBAI');
DM4.Tb_Bloqueio.SQL.Add('       ,BQCODPRO');
DM4.Tb_Bloqueio.SQL.Add('       ,BQCODCLI');
DM4.Tb_Bloqueio.SQL.Add('       ,CADRCLI.RNOME As RAMOCLI');
DM4.Tb_Bloqueio.SQL.Add('       ,CADRAM.RNOME As RAMOPRO');
DM4.Tb_Bloqueio.SQL.Add('       ,CADCLI.CRAZAO As NOMCLI');
DM4.Tb_Bloqueio.SQL.Add('       ,CADCON.CNOME As CONPRO');
DM4.Tb_Bloqueio.SQL.Add('       ,VNOME  As NOMVEN');
DM4.Tb_Bloqueio.SQL.Add('       ,FRAZAO As NOMFOR');
DM4.Tb_Bloqueio.SQL.Add('       ,PUF    As ESTADO');
DM4.Tb_Bloqueio.SQL.Add('       ,LNOME  As CIDADE');
DM4.Tb_Bloqueio.SQL.Add('       ,BNOME  As BAIRRO');
DM4.Tb_Bloqueio.SQL.Add('       ,PDNOME As NOMEPRO');
DM4.Tb_Bloqueio.SQL.Add('       ,BQGRUBLQ ');
DM4.Tb_Bloqueio.SQL.Add('       ,BQGRUDUP ');
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADRCLI','CADRCLI.RCODEMP','BQCODEMP','CADRCLI.RCODRAM','BQCODRCLI');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADRAM' ,'CADRAM.RCODEMP','BQCODEMP' ,'CADRAM.RCODRAM' ,'BQCODRPRO');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADCON' ,'CADCON.CCODEMP','BQCODEMP' ,'CADCON.CCODCON' ,'BQCODCPRO');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';

fInnerJoin(0,'CADVEN' ,'VCODEMP','BQCODEMP' ,'VCODVEN' ,'BQCODVEN');

if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADFOR' ,'FCODEMP','BQCODEMP' ,'FCODFOR' ,'BQCODFOR');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADUF' ,'PCODEMP','BQCODEMP' ,'PUF' ,'BQCODUF');

if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADLOC' ,'LCODEMP','BQCODEMP' ,'LCODLOC' ,'BQCODLOC');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADBAI' ,'BCODEMP','BQCODEMP' ,'BCODBAI' ,'BQCODBAI');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADPRO' ,'PDCODEMP','BQCODEMP' ,'PDCODPRO' ,'BQCODPRO');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADCLI','CADCLI.CCODEMP','CCODEMP','CADCLI.CCODCLI','BQCODCLI');

DM4.Tb_Bloqueio.SQL.Add(' from CADBLQ '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '
               +iif(DM1.Qr_Tid.Locate('TINOME','CADBLQ',[]),'',' BQCODEMP=0'+IntTostr(codemp)+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao));

DM4.Tb_Bloqueio.SQL.Add(' order by BQGRUBLQ,BQCODVEN,VNOME, ');
DM4.Tb_Bloqueio.SQL.Add(' BQCODFOR,FRAZAO ');
DM4.Tb_Bloqueio.SQL.Add('         ,BQCODUF,PUF ');
DM4.Tb_Bloqueio.SQL.Add('         ,BQCODLOC,LNOME ');
DM4.Tb_Bloqueio.SQL.Add('         ,BQCODBAI,BNOME ');
DM4.Tb_Bloqueio.SQL.Add('         ,BQCODRCLI,CADRCLI.RNOME ');
DM4.Tb_Bloqueio.SQL.Add('         ,BQCODRPRO,CADRAM.RNOME ');
DM4.Tb_Bloqueio.SQL.Add('         ,BQCODCLI,CRAZAO ');
DM4.Tb_Bloqueio.SQL.Add('         ,BQCODPRO,PDNOME ');
try
   DM4.Tb_Bloqueio.Open;
except
   DM4.Tb_Bloqueio.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;

fZeraItensMontados(false);

if DM4.Tb_BloqueioBQGRUBLQ.Value<>mGrupo_CodVen then
   begin
   Node_Ven  := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Add(nil, NomeNivel[mGrupo_CodVen]);
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=0;
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=0;
   end
else
   fCarregarVend(1,0,DM4.Tb_BloqueioBQGRUBLQ.AsInteger);
fZeraItensMontados(false);
if DM4.Tb_BloqueioBQGRUBLQ.Value<>mGrupo_CodFor then
   begin
   Node_for := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Add(nil, NomeNivel[mGrupo_CodFor]);
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=0;
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=0;
   end
else
   fCarregarFor(1,0,DM4.Tb_BloqueioBQGRUBLQ.AsInteger);
fZeraItensMontados(false);

if DM4.Tb_BloqueioBQGRUBLQ.Value<>mGrupo_CodUF then
   begin
   Node_uf := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Add(nil, NomeNivel[mGrupo_CodUF]);
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=0;
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=0;
   end
else
   fCarregarUF(1,0,DM4.Tb_BloqueioBQGRUBLQ.AsInteger);
fZeraItensMontados(false);

if DM4.Tb_BloqueioBQGRUBLQ.Value<>mGrupo_CodLoc then
   begin
   Node_Cidade := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Add(nil, NomeNivel[mGrupo_CodLoc]);
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=0;
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=0;
   end
else
   fCarregarCidades(1,0,DM4.Tb_BloqueioBQGRUBLQ.AsInteger);
fZeraItensMontados(false);
if DM4.Tb_BloqueioBQGRUBLQ.Value<>mGrupo_CodBai then
   begin
   Node_Bairros := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Add(nil, NomeNivel[mGrupo_CodBai]);
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=0;
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=0;

   end
else
   fCarregarBairros(1,0,DM4.Tb_BloqueioBQGRUBLQ.AsInteger);
fZeraItensMontados(false);

if DM4.Tb_BloqueioBQGRUBLQ.Value<>mGrupo_CodRcli then
   begin
   Node_RCli := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Add(nil, NomeNivel[mGrupo_CodRCli]);
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=0;
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=0;
   end
else
   fCarregarRCli(1,0,DM4.Tb_BloqueioBQGRUBLQ.AsInteger);
fZeraItensMontados(false);
if DM4.Tb_BloqueioBQGRUBLQ.Value<>mGrupo_CodCli then
   begin
   Node_Clientes := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Add(nil, NomeNivel[mGrupo_CodCli]);
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=0;
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=0;
   end
else
   fCarregarClientes(1,0,DM4.Tb_BloqueioBQGRUBLQ.AsInteger);
fZeraItensMontados(false);
if DM4.Tb_BloqueioBQGRUBLQ.Value<>mGrupo_CodRPro then
   begin
   Node_Rpro := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Add(nil, NomeNivel[mGrupo_CodRPro]);
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=0;
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=0;
   end
else
   fCarregarRPro(1,0,DM4.Tb_BloqueioBQGRUBLQ.AsInteger);

fZeraItensMontados(false);
if DM4.Tb_BloqueioBQGRUBLQ.Value<>mGrupo_CodCPro then
   begin
   Node_Cpro := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Add(nil, NomeNivel[mGrupo_CodCPro]);
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=0;
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=0;
   end
else
   fCarregarCPro(1,0,DM4.Tb_BloqueioBQGRUBLQ.AsInteger);

fZeraItensMontados(false);
if DM4.Tb_BloqueioBQGRUBLQ.Value<>mGrupo_Codpro then
   begin
   Node_Produtos := Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Add(nil, NomeNivel[mGrupo_CodPro]);
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].ImageIndex:=0;
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count-1].SelectedIndex:=0;
   end
else
   fCarregarProdutos(1,0,DM4.Tb_BloqueioBQGRUBLQ.AsInteger);
if Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Count>0 then
   Frm_BloqueioVenda.Tree_BloqueioVenda.Items.Item[0].Selected:=true;
result:=true;
end;

procedure TFrm_BloqueioVenda.SpBtnSairClick(Sender: TObject);
begin
close;
end;

function TFrm_BloqueioVenda.fExcluirItems(pTipo: Integer): Boolean;
begin
if fmensagem(pchar('Quer Realmente Excluir Este Ítem?'),0,['1','2'],2)<>mrYes then
   exit;
Application.CreateForm(TFrm_SelBloqueio,Frm_SelBloqueio);
fDeletaBloqueio(mNivel_Incluir,mUltNivel,codemp,mSel_CodRcli,mSel_CodRPro,mSel_CodFor,
                        mSel_Codven,
                        mSel_CodLoc,mSel_CodBai,mSel_Codpro,
                        mSel_CodCli,mSel_CodCPro,mNivelSel,mSel_CodUF);
Frm_BloqueioVenda.Tree_BloqueioVenda.Selected.Delete;
Frm_SelBloqueio.Free;
{
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADBLQ where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADBLQ',[]),'',' BQCODEMP=0'+IntToStr(codemp)+' and '));
DM1.Query1.SQL.Add(' BQGRUBLQ=0'+IntToStr(mNivelSel));
if mSel_CodFor<>0 then
   DM1.Query1.SQL.Add(' and BQCODFOR=0'+FloatTostr(mSel_CodFor));
if mSel_CodUF<>'' then
   DM1.Query1.SQL.Add(' and BQCODUF='+chr(39)+Trim(mSel_CodUF)+chr(39));
if mSel_CodLoc<>0 then
   DM1.Query1.SQL.Add(' and BQCODLOC=0'+FloatTostr(mSel_CodLoc));
if mSel_CodBai<>0 then
   DM1.Query1.SQL.Add(' and BQCODBAI=0'+FloatTostr(mSel_CodBai));
if mSel_CodRcli<>0 then
   DM1.Query1.SQL.Add(' and BQCODRCLI=0'+FloatTostr(mSel_CodRcli));
if mSel_CodCli<>0 then
   DM1.Query1.SQL.Add(' and BQCODCLI=0'+FloatTostr(mSel_Codcli));
if mSel_CodRPro<>0 then
   DM1.Query1.SQL.Add(' and BQCODRPRO=0'+FloatTostr(mSel_CodRPro));
if mSel_Codpro<>0 then
   DM1.Query1.SQL.Add(' and BQCODPRO=0'+FloatTostr(mSel_CodPro));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
Except
   end;
}
//  Node := Frm_BloqueioVenda.Tree_BloqueioVenda.Selected;
//  Node.Delete;
end;


procedure TFrm_BloqueioVenda.Incluir1Click(Sender: TObject);
begin
if Frm_BloqueioVenda.Tree_BloqueioVenda.Selected.Count<0 then
   begin
   MessageDlg('Favor Selecionar um ítem!',mtWarning,[mbOk],0);
   exit;
   end;
fAtualizarDadosTreeView(0);
fIncluirItems(0);
end;

procedure TFrm_BloqueioVenda.Excluir1Click(Sender: TObject);
var
mItem_Temp: Integer;
begin
if Frm_BloqueioVenda.Tree_BloqueioVenda.Selected.Count<0 then
   begin
   MessageDlg('Favor Selecionar um ítem!',mtWarning,[mbOk],0);
   exit;
   end;
fAtualizarDadosTreeView(0);
if mQtdNiveis=1 then
   begin
   Node_Temp :=  Frm_BloqueioVenda.Tree_BloqueioVenda.Selected;
   mItem_Temp:= Tree_BloqueioVenda.Selected.AbsoluteIndex;
   Tree_BloqueioVenda.Items.Item[mItem_Temp].Expanded:=true;
   Tree_BloqueioVenda.Items.Item[mItem_Temp+1].Selected:=True;
   fAtualizarDadosTreeView(0);
   end;
fExcluirItems(0);
end;

function fZeraItensMontados(pTipo: Boolean): Boolean;
begin
mMontou_CodRcli :=pTipo;
mMontou_CodRpro :=pTipo;
mMontou_CodFor  :=pTipo;
mMontou_CodVen  :=pTipo;
mMontou_CodLoc  :=pTipo;
mMontou_CodBai  :=pTipo;
mMontou_CodPro  :=pTipo;
mMontou_Codcli  :=pTipo;
mMontou_CodUF   :=pTipo;
mMontou_CodCPro :=pTipo;

result:=True;
end;

procedure TFrm_BloqueioVenda.SpBtnImprimirClick(Sender: TObject);
var
x: Integer;
mlinha2,mlinha,mNomArq: STring;
f: TextFile;
begin
x:=0;
While true do
   begin
   mNomArq:='tmp'+FormatFloat('00000',x)+'.txt';
   if not FileExists(mNomArq) then
      break;
   x:=x+1;
   end;
mNomArq:='C:\SGE\TEMP\'+mNomArq;;
Frm_BloqueioVenda.Tree_BloqueioVenda.SaveToFile(mNomArq);
if not FileExists(mNomArq) then
   begin
   MessageDlg('Não Foi Possível encontrar o arquivo temporario!',mtError,[mbOk],0);
   exit;
   end;
AssignFile(f,mNomArq);
Reset(f);
testeform := TFrm_BloqueioVenda(FindGlobalComponent('Form_Impres_Bloqueia_Venda'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, Form_Impres_Bloqueia_Venda);

Form_Impres_Bloqueia_Venda.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
Form_Impres_Bloqueia_Venda.mlin:=0;
Form_Impres_Bloqueia_Venda.mpag:=0;
While not eof(f) do
   begin
   Readln(f,mlinha);
   mlinha2:='';
   For x:=1 to length(mlinha) do
     begin
     if Integer(mlinha[x])=9 then
        mlinha2:=Insere2(' ',' ',3)+mlinha2
     else
        mlinha2:=mlinha2+mlinha[x];
     end;
   mlinha:=mlinha2;
   if Form_Impres_Bloqueia_Venda.mlin=0 then
      begin
      Form_Impres_Bloqueia_Venda.mlin:=1;
      Form_Impres_Bloqueia_Venda.mpag:=Form_Impres_Bloqueia_Venda.mpag+1;
      Form_Impres_Bloqueia_Venda.RDprint1.ImpF(Form_Impres_Bloqueia_Venda.mlin,01,insere2(DM1.Tb_EmpRAZAO_CAB.Value,' ',60)
                              +'Pagina: '+FormatFloat('0000',Form_Impres_Bloqueia_Venda.mpag),mnormal);
      Form_Impres_Bloqueia_Venda.mlin:=Form_Impres_Bloqueia_Venda.mlin+1;
      Form_Impres_Bloqueia_Venda.RDprint1.ImpF(Form_Impres_Bloqueia_Venda.mlin,01,insere2('Relacao de Bloqueios.',' ',60)
                              +'Data: '+FormatDateTime(fdt2, date),mnormal);
      Form_Impres_Bloqueia_Venda.mlin:=Form_Impres_Bloqueia_Venda.mlin+1;
      Form_Impres_Bloqueia_Venda.RDprint1.ImpF(Form_Impres_Bloqueia_Venda.mlin,01,insere2('-','-',80),mnormal);
      Form_Impres_Bloqueia_Venda.mlin:=Form_Impres_Bloqueia_Venda.mlin+1;
      end;
   Form_Impres_Bloqueia_Venda.mlin:=Form_Impres_Bloqueia_Venda.mlin+1;
   Form_Impres_Bloqueia_Venda.RDprint1.ImpF(Form_Impres_Bloqueia_Venda.mlin,01,mlinha,mreduz);
   if eof(f) then
      begin
      Form_Impres_Bloqueia_Venda.mlin:=Form_Impres_Bloqueia_Venda.mlin+1;
      Form_Impres_Bloqueia_Venda.RDprint1.ImpF(Form_Impres_Bloqueia_Venda.mlin,01,Insere2('Fim.','-',80),mNormal);
      if Form_Impres_Bloqueia_Venda.RDprint1.Setup then Form_Impres_Bloqueia_Venda.RDprint1.fechar;
      Form_Impres_Bloqueia_Venda.free;
      Form_Impres_Bloqueia_Venda:=nil;
      end
   else if Form_Impres_Bloqueia_Venda.mlin>60 then
      begin
      Form_Impres_Bloqueia_Venda.mlin:=Form_Impres_Bloqueia_Venda.mlin+1;
      Form_Impres_Bloqueia_Venda.RDprint1.ImpF(Form_Impres_Bloqueia_Venda.mlin,01,Insere2('Continua...','-',80),mNormal);
      Form_Impres_Bloqueia_Venda.mlin:=0;
      end;
   end;
closefile(f);
deletefile(mNomArq);
end;

procedure TFrm_BloqueioVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.


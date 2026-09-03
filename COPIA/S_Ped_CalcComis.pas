unit S_Ped_CalcComis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit, CurrEdit;

type
  TFrm_Ped_CalcComis = class(TForm)
    Panel_cab: TPanel;
    Label1: TLabel;
    SB1: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbl_datanf: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label18: TLabel;
    CHAVE: TEdit;
    NOMCLI: TEdit;
    ENDERECO: TEdit;
    NOMCID: TEdit;
    DATANF: TEdit;
    NUMNF: TEdit;
    VALFRE: TEdit;
    TOTALNF: TEdit;
    LOTSEQ: TEdit;
    Label5: TLabel;
    edt_planovendas: TEdit;
    gbFormapag: TGroupBox;
    gbCalculados: TGroupBox;
    edt_comv01: TCurrencyEdit;
    Label9: TLabel;
    Label10: TLabel;
    edt_comv02: TCurrencyEdit;
    Label11: TLabel;
    edt_comv03: TCurrencyEdit;
    Label12: TLabel;
    edt_comsup: TCurrencyEdit;
    Label13: TLabel;
    edt_comtlv: TCurrencyEdit;
    Label14: TLabel;
    edt_comass: TCurrencyEdit;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    edtnov_comv01: TCurrencyEdit;
    edtnov_comv02: TCurrencyEdit;
    edtnov_comv03: TCurrencyEdit;
    edtnov_comsup: TCurrencyEdit;
    edtnov_comtlv: TCurrencyEdit;
    edtnov_comass: TCurrencyEdit;
    memo_condicoes: TMemo;
    procedure SB1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function FMostraCondicoes(pTipo: Integer): Boolean;
    function fManPedCarregaDados(ptipo: Integer): Boolean;


  public
    { Public declarations }
  end;

var
  Frm_Ped_CalcComis: TFrm_Ped_CalcComis;
  mpcodemp: Integer;
// variaveis para calculo de comissão
  mpv_tpc:integer=0;
{
 tipo de comissão
0-Cadastro do Produto
1-Plano de Vendas
2-Cadastro do Vendedor
3-Cadastro de Clientes
4-Cadastro de Estados
5-Extra por Produto
6-% da Comissão do Produto
7-Comissao do Desconto
8-Ref.Tabela de Status do Produtos
8-Cadastro de Fornecedor
}

//termino das variaveis para calculo de comissão



implementation

uses S_DM1, S_PedCli, Func, lerarq;

{$R *.dfm}

function TFrm_Ped_CalcComis.FMostraCondicoes(pTipo: Integer): Boolean;
begin
{
memo_condicoes.Lines.Clear;
if DM1.Tb_Ped01P1TABPV.AsString='PO' then
   mpv_tpc:=DM1.Tb_Ped01P1PVTPD1.AsInteger
else
   begin
   if flcadpv(1,0,DM1.Tb_Ped01P1TABPV.AsString,DM1.Tb_Ped01P1CODPV.AsString) then
      mpv_tpc:=DM1.Tb_PVPVTPC.AsInteger;
   end;
if mpv_tpc=9 then
   memo_condicoes.Lines.Add('Comissão dos Vendedores Referente ao Cadastro de Fornecedor das mercadorias')
else if mpv_tpc=8 then
   memo_condicoes.Lines.Add('Comissão dos Vendedores Referente a Tabela de Status do Produto')
else if mpv_tpc=7 then
   memo_condicoes.Lines.Add('Comissão dos Vendedores Referente a Tabela de Desconto Concedido')
else if mpv_tpc=6 then
   memo_condicoes.Lines.Add('Comissão dos Vendedores de Acordo com o Cadastro de Produtos')
else if mpv_tpc=5 then
   memo_condicoes.Lines.Add('Comissão dos Vendedores digitada na hora da venda')
else if mpv_tpc=4 then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(1,'CADUF','PCODEMP','CCODEMP','PUF','CUF');
   if DM1.Qr_Tid.Locate('TINOME','CADCLI',[]) then
      la_Empresas:=''
   else
      la_Empresas:=fla_sqlmp('CCODEMP',Form_SelEmp.CLB_EMPRESAS);

   DM1.Query1.close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('Select PCOMIS from CADCLI'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PFCODEMP=0'+IntToStr(codemp)+' and '))
              +' PFCODPRO=0'+Trim(CODPRO.Text)
              +' order by FRAZAO');
      Qr_CPF.Open;

   ,CADUF where '
                     +iif(DM1.Qr_TID.locate('TINOME','CADUF',[]),'',' PCODEMP=0'+IntTostr(codemp)+' and '
                     +' PUF=:UF');
   DM1.Query1.ParamByName('UF').AsString:=

   memo_condicoes.Lines.Add('Comissão dos Vendedores de Acordo com o Estado/UF do Cliente. ');
   end
else if mpv_tpc=3 then
   memo_condicoes.Lines.Add('Comissão dos Vendedores de Acordo com o Cadastro do Cliente')
else if mpv_tpc=2 then
   memo_condicoes.Lines.Add('Comissão dos Vendedores de Acordo com o Cadastro do Vendedor')
else if mpv_tpc=1 then
   memo_condicoes.Lines.Add('Comissão dos Vendedores de Acordo com o Cadastro do Cliente')


 tipo de comissão
0-Cadastro do Produto
1-Plano de Vendas
2-Cadastro do Vendedor
3-Cadastro de Clientes
4-Cadastro de Estados
5-Extra por Produto
6-% da Comissão do Produto
7-Comissao do Desconto
8-Ref.Tabela de Status do Produtos
8-Cadastro de Fornecedor

  mpv_tpc:integer=0;


   if (cb_tabelavenda.Text = 'PO') and (edt_codvenda.Text = '99') then begin
       memo_condicoes.Lines.Add('Plano de Vendas: '+edt_nomevenda.Text)
   end else begin
       if DM1.Tb_PVPVPRAZOS.IsNull then
          memo_condicoes.Lines.Add('Plano de Vendas: '+DM1.Tb_PVPVNOME.Value+'/'+DM1.Tb_PVprazos.Value+' Prazo Médio: '+DM1.Tb_PVPVPRAZOMED.AsString+iif(DM1.Tb_PVPVPRAZOMED.AsInteger>1,' dias ','dia'))
       else
          memo_condicoes.Lines.Add('Plano de Vendas: '+DM1.Tb_PVPVNOME.Value+'/'+DM1.Tb_PVPVPRAZOS.Value+' Prazo Médio: '+DM1.Tb_PVPVPRAZOMED.AsString+iif(DM1.Tb_PVPVPRAZOMED.AsInteger>1,' dias ','dia'));
   end;

   if mpd_pvtdc = 0 then begin
      if mpvdes <> 0 then
         memo_condicoes.Lines.Add('Desconto Comercial: % do Plano de vendas: '+FormatFloat(mcasas_pct, mpvdes));
      end else if mpd_pvtdc = 1 then
         memo_condicoes.Lines.Add('Desconto Comercial: % da tabela de produtos')
      else if mpd_pvtdc = 2 then
         memo_condicoes.Lines.Add('Desconto Comercial: % da tabela de clientes')
      else if mpd_pvtdc = 3 then
         memo_condicoes.Lines.Add('Desconto Comercial: (Extra) digitado')
      else if mpd_pvtdc = 4 then
         memo_condicoes.Lines.Add('Desconto Comercial: Referente a Tabela de Status do Produto');

      if mpd_pvtc = 0 then
         memo_condicoes.Lines.Add('Tipo de Comissao: Cadastro do Produto ')
      else if mpd_pvtc = 1 then begin
              if mpvcom <> 0 then
                 memo_condicoes.Lines.Add('Tipo de Comissao: % do Plano de Vendas: '+FormatFloat(mcasas_pct, mpvcom));
      end else if mpd_pvtc = 2 then
         memo_condicoes.Lines.Add('Tipo de Comissao: Cadastro do Vendedor')
      else if mpd_pvtc = 3 then
         memo_condicoes.Lines.Add('Tipo de Comissao: Cadastro do Cliente')
      else if mpd_pvtc = 4 then
         memo_condicoes.Lines.Add('Tipo de Comissao: Cadastro do Estado')
      else if mpd_pvtc = 5 then
         memo_condicoes.Lines.Add('Tipo de Comissao: Extra(Digitada)')
      else if mpd_pvtc = 6 then
         memo_condicoes.Lines.Add('Tipo de Comissao:  % da comissão do Produto')
      else if mpd_pvtc = 7 then
         memo_condicoes.Lines.Add('Tipo de Comissao: do desconto do produto')
      else if mpd_pvtc = 8 then
         memo_condicoes.Lines.Add('Tipo de Comissao: Tabela de Status do Produto')
      else if mpd_pvtc = 9 then
         memo_condicoes.Lines.Add('Tipo de Comissao: Cadastro de Fornecedor');

      if mpd_pvtpd1 = 0 then begin
         if mpvdes1 <> 0 then
            memo_condicoes.Lines.Add('Tipo do desconto 01 do item: % do Plano de Vendas: '+FormatFloat(mcasas_pct, mpvdes1));
      end else if mpd_pvtpd1 = 1 then
            memo_condicoes.Lines.Add('Tipo do desconto 01 do item: % do Cadastro de Produtos')
      else if mpd_pvtpd1 = 2 then
          memo_condicoes.Lines.Add('Tipo do desconto 01 do item: % do Cadastro de cliente')
      else if mpd_pvtpd1 = 3 then
          memo_condicoes.Lines.Add('Tipo do desconto 01 do item: Extra(digitado)')
      else if mpd_pvtpd1 = 4 then
          memo_condicoes.Lines.Add('Tipo do desconto 01 do item: Ref.a tabela de status do produto');


      if mpd_pvtpd2 = 0 then begin
         if mpvdes2 <> 0 then
            memo_condicoes.Lines.Add('Tipo do desconto 02 do item: % do Plano de Vendas:'+FormatFloat(mcasas_pct, mpvdes2))
      end else if mpd_pvtpd2 = 1 then
          memo_condicoes.Lines.Add('Tipo do desconto 02 do item: % do Cadastro de Produtos')
      else if mpd_pvtpd2 = 2 then
          memo_condicoes.Lines.Add('Tipo do desconto 02 do item: Extra(digitado)')
      else if mpd_pvtpd2 = 3 then
          memo_condicoes.Lines.Add('Tipo do desconto 02 do item: Ref.a tabela de status do produto');

      if mpd_pvtpd3 = 0 then begin
         if mpvdes3 <> 0 then
            memo_condicoes.Lines.Add('Tipo do desconto 03 do item: % do Plano de Vendas: '+FormatFloat(mcasas_pct, mpvdes3))
      end else if mpd_pvtpd3 = 1 then
         memo_condicoes.Lines.Add('Tipo do desconto 03 do item: % do Cadastro de Produtos')
      else if mpd_pvtpd3 = 2 then
         memo_condicoes.Lines.Add('Tipo do desconto 03 do item: Extra(digitado)')
      else if mpd_pvtpd3 = 3 then
         memo_condicoes.Lines.Add('Tipo do desconto 03 do item: Ref.a tabela de status do produto');



      if mpd_pvtpdesf = 0 then
         memo_condicoes.Lines.Add('Tipo de desconto financeiro: do Cadastro de produtos')
      else if mpd_pvtpdesf = 1 then
         memo_condicoes.Lines.Add('Tipo de desconto financeiro: do Cadastro de fornecedores')
      else if mpd_pvtpdesf = 2 then
         memo_condicoes.Lines.Add('Tipo de desconto financeiro: do Grupo de fornecedores')
      else if mpd_pvtpdesf = 3 then begin
         if mpvdescf <> 0 then
            memo_condicoes.Lines.Add('Tipo de desconto financeiro: do plano de vendas '+FormatFloat(mcasas_pct, mpvdescf));
      end else if mpd_pvtpdesf = 4 then
         memo_condicoes.Lines.Add('por intervalo de descontos')
      else if mpd_pvtpdesf = 5 then
         memo_condicoes.Lines.Add('Ref.a Tabela de Status do Produto');

      if mtpp = 0 then
         memo_condicoes.Lines.Add('Tipo de Preco Padrao: Cadastro do Estado ')
      else if mtpp = 1 then
         memo_condicoes.Lines.Add('Tipo de Preco Padrao: Preço 1 ')
      else if mtpp = 2 then
         memo_condicoes.Lines.Add('Tipo de Preco Padrao: Preço 2 ')
      else if mtpp = 3 then
         memo_condicoes.Lines.Add('Tipo de Preco Padrao: Preço 3 ');

      if par_acretodos > 0 then
         memo_condicoes.Lines.Add('Acrescimos de '+FormatFloat(mcasas_pct, par_acretodos)+' para todos produtos ');

      if par_acret0 > 0 then
         memo_condicoes.Lines.Add('Acrescimos de '+FormatFloat(mcasas_pct, par_acret0)+' para todos com codigo do tipo 0 ');

      if par_acret1 > 0 then
         memo_condicoes.Lines.Add('Acrescimos de '+FormatFloat(mcasas_pct, par_acret1)+' para todos com codigo do tipo 1 ');

      if par_acred01 > 0 then
         memo_condicoes.Lines.Add('Acrescimos de '+FormatFloat(mcasas_pct, par_acred01)+' para todos com codigo do tipo dif de 0 e 1 ');

      result:=true;
}
end;
procedure TFrm_Ped_CalcComis.SB1Click(Sender: TObject);
begin
if Frm_PedCli=nil then
   Application.CreateForm(TFrm_PedCli, Frm_PedCli);
if Frm_PedCli=nil then
   begin
   Application.CreateForm(TFrm_PedCli, Frm_PedCli);
   end;
Frm_PedCli.ShowModal;
CHAVE.Text:=Frm_PedCli.chave.Text;
//mpcodemp:=Frm_PedCli.Tb_PedP1CODEMP.AsInteger;
LOTSEQ.Text:=Frm_PedCli.Tb_PedP1LOTSEQ.AsString;
Frm_PedCli.Free;
Frm_PedCli:=nil;
if fsonumero(CHAVE.Text)>0 then
   begin
   if not flcadp01(0,mpcodemp,valint(LOTSEQ.Text),CHAVE.Text,'') then
      begin
      fmensagem('Chave não Encontrada!',0,['0'],0);
      CHAVE.SetFocus;
      end
   else
      begin
      fManPedCarregaDados(1);
//      bbAlterar.Enabled:=true;
//      bbAlterar.SetFocus;
      end;
   end;
mpcodemp:=0;

end;

function TFrm_Ped_CalcComis.fManPedCarregaDados(ptipo: Integer): Boolean;
//ptipo=0 so limpa os campos
//      1 Carrega com os dados do pedido
begin
{
if ptipo=0 then
   begin
   NOMCLI.Text        :='';
   ENDERECO.Text      :='';
   NOMCID.Text        :='';
   DATANF.Text        :='';
   NUMNF.Text         :='';
   VALFRE.Text        :='';
   TOTALNF.Text       :='';
   CODTRA.Text        :='';
   NOMTRA.Text        :='';
   RGFRETEPC.ItemIndex:=0;
   PLACAV.Text        :='';
   UFPV.Text          :='';
   QTDVOL.Text        :='';
   ESPECIE.Text       :='';
   PESOB.Text         :='';
   PESOL.Text         :='';
   CODENT.Text        :='';
   NOMENT.Text        :='';
   DATENT.Text        :='';
   HORENT.Text        :='';
   PREVENT.Text       :='';
   HPREVENT.Text      :='';
   DATDIG.Text        :='/  /';
   HORDIG.Text        :=':  :';
   CODDIG.Text        :='';
   NOMDIG.Text        :='';
   CODSEP.Text        :='';
   NOMSEP.Text        :='';
   DATSEP.Text        :='';
   HORSEP.Text        :='';
   CODCON.Text        :='';
   HORCON.Text        :='';
   NOMCON.Text        :='';
   DATCON.Text        :='/  /';
   CODEMB.Text        :='';
   NOMEMB.Text        :='';
   DATEMB.Text        :='';
   HOREMB.Text        :='';
   CODVEN.Text        :='';
   NOMVEN.Text        :='';
   CODV02.Text        :='';
   NOMV02.Text        :='';
   CODV03.Text        :='';
   NOMV03.Text        :='';
   CODTLV.Text        :='';
   NOMTLV.Text        :='';
   CODBCO.Text        :='';
   NOMBCO.Text        :='Carteira';
   NAUT.Text          :='';
   DATVIS.Text        :='/  /';
   NUMVIS.Text        :='';
   CODCV.Text         :='';
   NOMCV.Text         :='';
   OBS1.Text          :='';
   OBS2.Text          :='';
   OBS3.Text          :='';
   CB_SEMCOMP.Checked :=false;
   CB_CANHOTO.Checked :=false;
   end
else if ptipo=1 then
   begin
   if flqr1('CRAZAO,CLOG,CBAIRRO,CCIDADE,CUF','C','CADCLI','N','CCODCLI',DM1.Tb_Ped01p1codcli.AsString) then
      begin
      NOMCLI.Text        :=DM1.Query1.Fields[0].AsString;
      ENDERECO.Text      :=Trim(DM1.Query1.fields[1].AsString)+' '+DM1.Query1.fields[2].AsString;
      NOMCID.Text        :=Trim(DM1.Query1.Fields[3].AsString)+'-'+DM1.Query1.fields[4].AsString;
      end
   else
      begin
      NOMCLI.Text        :='';
      ENDERECO.Text      :='';
      NOMCID.Text        :='';
      end;
   if DM1.Tb_Ped01P1DATANF.Value>=pdatanula then
      begin
      lbl_datanf.Caption :='Data da Nota:';
      DATANF.Text        :=FormatDatetime(fdt2, DM1.Tb_Ped01P1DATANF.Value);
      NUMNF.Text         :=DM1.Tb_Ped01P1NUMNF.AsString;
      end
   else
      begin
      lbl_datanf.Caption :='Data do Pedido:';
      DATANF.Text        :=FormatDatetime(fdt2, DM1.Tb_Ped01P1DATAP.Value);
      NUMNF.Text         :='';
      end;
   VALFRE.Text        :=FormatFloat(mcasas, DM1.Tb_Ped01P1VALFRE.Value);
   TOTALNF.Text       :=FormatFloat(mcasas, DM1.Tb_Ped01P1TOTALL.Value);
   CODTRA.Text        :='';
   NOMTRA.Text        :='';
   if DM1.Tb_Ped01P1CODTRA.Value>0 then
      begin
      if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',DM1.Tb_Ped01P1CODTRA.AsString) then
         begin
         CODTRA.Text        :=DM1.Tb_Ped01P1CODTRA.AsString;
         NOMTRA.Text        :=DM1.Query1.Fields[0].AsString;
         end;
      end;
   RGFRETEPC.ItemIndex:=DM1.Tb_Ped01P1FRETEPC.AsInteger-1;
   PLACAV.Text        :=DM1.Tb_Ped01P1PLACAV.Value;
   UFPV.Text          :=DM1.Tb_Ped01P1UFPV.Value;
   QTDVOL.Text        :=DM1.Tb_Ped01P1QTDVOL.AsString;
   ESPECIE.Text       :=DM1.Tb_Ped01P1ESPECIE.Value;
   PESOB.Text         :=FormatFloat('#,##0.00', DM1.Tb_Ped01P1PESOB.Value);
   PESOL.Text         :=FormatFloat('#,##0.00', DM1.Tb_Ped01P1PESOL.Value);
   CODENT.Text        :='';
   NOMENT.Text        :='';
   if DM1.Tb_Ped01P1CODENT.Value>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_Ped01P1CODENT.AsString) then
         begin
         CODENT.Text:=DM1.Tb_Ped01P1CODENT.AsString;
         NOMENT.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;
   if DM1.Tb_Ped01P1DATENT.Value<=pdatanula then
      DATENT.Text     :='/  /'
   else
      DATENT.Text     :=FormatDateTime(fdt2, DM1.Tb_Ped01P1DATENT.Value);
   HORENT.Text        :=DM1.Tb_Ped01P1HORENT.Value;

   if DM1.Tb_Ped01P1PREVENT.Value<=pdatanula then
      PREVENT.Text     :='/  /'
   else
      PREVENT.Text     :=FormatDateTime(fdt2, DM1.Tb_Ped01P1PREVENT.Value);
   HPREVENT.Text       :=DM1.Tb_Ped01P1HPREVENT.Value;
   DATDIG.Text        :=FormatDateTime(fdt2, DM1.Tb_Ped01P1DATAP.Value);
   HORDIG.Text        :=DM1.Tb_Ped01P1HORADIG.Value;
   CODDIG.Text        :='';
   NOMDIG.Text        :='';
   if DM1.Tb_Ped01P1CODUSR.Value>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_Ped01P1CODUSR.AsString) then
         begin
         CODDIG.Text:=DM1.Tb_Ped01P1CODUSR.AsString;
         NOMDIG.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;
   CODCV.Text         :='';
   NOMCV.Text         :='';
   if DM1.Tb_Ped01P1CODCV.Value>0 then
      begin
      if flqr1('CVRAZAO','','CADCV','N','CVCODCV',DM1.Tb_Ped01P1CODCV.AsString) then
         begin
         CODCV.Text:=DM1.Tb_Ped01P1CODCV.AsString;
         NOMCV.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;


   CODSEP.Text        :='';
   NOMSEP.Text        :='';
   DATSEP.Text        :='/  /';
   if DM1.Tb_Ped01P1CODSEP.Value>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_Ped01P1CODSEP.AsString) then
         begin
         CODSEP.Text:=DM1.Tb_Ped01P1CODSEP.AsString;
         NOMSEP.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;
   if DM1.Tb_Ped01P1DATASEP.Value>pdatanula then
      DATSEP.Text        :=FormatDateTime(fdt2, DM1.Tb_Ped01P1DATASEP.Value);
   HORSEP.Text        :=DM1.Tb_Ped01P1HORSEP.Value;
   CODCON.Text        :='';
   NOMCON.Text        :='';
   if DM1.Tb_Ped01P1CODCON.Value>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_Ped01P1CODCON.AsString) then
         begin
         CODCON.Text:=DM1.Tb_Ped01P1CODCON.AsString;
         NOMCON.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;
   HORCON.Text        :=DM1.Tb_Ped01P1HORCON.Value;
   if DM1.Tb_Ped01P1DATCON.Value<=pdatanula then
      DATCON.Text        :='/  /'
   else
      DATCON.Text        :=FormatDateTime(fdt2, DM1.Tb_Ped01P1DATCON.Value);
   CODEMB.Text        :='';
   NOMEMB.Text        :='';
   if DM1.Tb_Ped01P1CODEMB.Value>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_Ped01P1CODEMB.AsString) then
         begin
         CODEMB.Text:=DM1.Tb_Ped01P1CODEMB.AsString;
         NOMEMB.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;
   if DM1.Tb_Ped01P1DATAEMB.Value<=pdatanula then
      DATEMB.Text     :='/  /'
   else
      DATEMB.Text     :=FormatDateTime(fdt2, DM1.Tb_Ped01P1DATAEMB.Value);
   HOREMB.Text        :=DM1.Tb_Ped01P1HOREMB.Value;

   if DM1.Tb_Ped01P1CODVEN.Value>0 then
      begin
      if flqr1('VNOME','V','CADVEN','N','VCODVEN',DM1.Tb_Ped01P1CODVEN.AsString) then
         begin
         CODVEN.Text:=DM1.Tb_Ped01P1CODVEN.AsString;
         NOMVEN.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;
   if DM1.Tb_Ped01P1CODV02.Value>0 then
      begin
      if flqr1('VNOME','V','CADVEN','N','VCODVEN',DM1.Tb_Ped01P1CODV02.AsString) then
         begin
         CODV02.Text:=DM1.Tb_Ped01P1CODV02.AsString;
         NOMV02.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;

   if DM1.Tb_Ped01P1CODV03.Value>0 then
      begin
      if flqr1('VNOME','V','CADVEN','N','VCODVEN',DM1.Tb_Ped01P1CODV03.AsString) then
         begin
         CODV03.Text:=DM1.Tb_Ped01P1CODV03.AsString;
         NOMV03.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;

   if DM1.Tb_Ped01P1CODTLV.Value>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_Ped01P1CODTLV.AsString) then
         begin
         CODTLV.Text:=DM1.Tb_Ped01P1CODTLV.AsString;
         NOMTLV.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;
   if DM1.Tb_Ped01P1BANCO.Value>0 then
      begin
      if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',DM1.Tb_Ped01P1BANCO.AsString) then
         begin
         CODBCO.Text:=DM1.Tb_Ped01P1BANCO.AsString;
         NOMBCO.Text:=DM1.Query1.Fields[0].AsString;
         end
      end
   else
      begin
      CODBCO.Text:='';
      NOMBCO.Text:='Carteira';
      end;
   NAUT.Text:=DM1.Tb_Ped01P1NAUT.Value;
   if DM1.Tb_Ped01P1DATVIS.Value>pdatanula then
      DATVIS.Text:=FormatDateTime(fdt2, DM1.Tb_Ped01P1DATVIS.Value)
   else
      DATVIS.Text:='/  /';
   NUMVIS.Text := DM1.Tb_Ped01P1NUMVIS.Value;
   OBS1.Text   := DM1.Tb_Ped01P1OBS1.Value;
   OBS2.Text   := DM1.Tb_Ped01P1OBS2.Value;
   OBS3.Text   := DM1.Tb_Ped01P1OBS3.Value;
   CB_CANHOTO.Checked:=DM1.Tb_ped01P1CANHOTO.Asinteger=1;
   CB_SEMCOMP.Checked:=DM1.Tb_Ped01P1SEMCOMP.Asinteger=1;
   end;
}
end;


procedure TFrm_Ped_CalcComis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

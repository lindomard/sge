unit S_VendaBloqueada_Relacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons,func,lerarq,S_Impres,
  ImgList;

type
  TFrm_VendaBloqueada_Relacao = class(TForm)
    PageControl1: TPageControl;
    Ts_Vendedor: TTabSheet;
    Ts_Fornecedor: TTabSheet;
    Ts_Estados: TTabSheet;
    Ts_Cidade: TTabSheet;
    Ts_Bairros: TTabSheet;
    Ts_RamoClientes: TTabSheet;
    Ts_Clientes: TTabSheet;
    Ts_RamoProdutos: TTabSheet;
    Ts_Produtos: TTabSheet;
    Panel1: TPanel;
    bbSair: TBitBtn;
    Tree_Consulta: TTreeView;
    bbImprimir: TBitBtn;
    St_Nivel: TStaticText;
    ImageList1: TImageList;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label6: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Label7: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Label8: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    Panel2: TPanel;
    Label1: TLabel;
    CODIGO: TEdit;
    NOME: TEdit;
    bbAtualizar: TBitBtn;
    procedure CODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure CODIGOExit(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }

    form_impres_VBR: TFrm_Impres;
    function fCarregaTreeview(pCodRCli,pCodRPro,pCodcPro,pCodFor,
                        pCodven,
                        pCodLoc,pCodBai,pCodPro,pCodCli: Real; pCoduf: String): Boolean;

  end;


var
  Frm_VendaBloqueada_Relacao: TFrm_VendaBloqueada_Relacao;
  mNivelConsulta: Integer=0;
implementation

uses S_DM1, DB, S_DM4, S_BloqueioVenda, S_UF, S_Loc, S_C, S_Bai, S_RCli,
  S_Pro, S_Ram, S_Cli, S_DM6,s_lerarq_geral;

{$R *.dfm}

procedure TFrm_VendaBloqueada_Relacao.CODIGOKeyPress(Sender: TObject;
  var Key: Char);
begin
if mNivelConsulta=mGrupo_CodVen then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      CODIGO.Text:=fChamaVen(0,'frm_VendaBloqueada_Relacao',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      key:=#0;
      end;
   end
else if mNivelConsulta=mGrupo_CodFor then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      CODIGO.Text:=fChamaFor(0,'frm_VendaBloqueada_Relacao',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      key:=#0;
      end;
   end
else if mNivelConsulta=mGrupo_CodUF then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      CODIGO.Text:=fChamaUF(0,'frm_VendaBloqueada_Relacao',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      key:=#0;
      end;
   end
else if mNivelConsulta=mGrupo_CodLoc then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      CODIGO.Text:=fChamaLoc(0,'frm_VendaBloqueada_Relecao',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      key:=#0;
      end;
   end
else if mNivelConsulta=mGrupo_CodBai then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      CODIGO.Text:=fChamaBai(0,'frm_VendaBloqueda_Relacac',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      key:=#0;
      end;
   end
else if mNivelConsulta=mGrupo_CodRcli then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      CODIGO.Text:=fChamaRamoCli(0,'frm_rcpag',key);
      key:=#0;
      end;
   end
else if mNivelConsulta=mGrupo_CodCli then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      CODIGO.Text:=fChamaCli(0,'Frm_VendaBloqueada_Relacao',key);
   if trim(CODIGO.Text)<>'' then
      CODIGOExit(Self);
      key:=#0;
      end;
   end
else if mNivelConsulta=mGrupo_CodRPro then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      CODIGO.Text:=fChamaRamPro(0,'frm_VendaBloqueada_Relacao',Key);
      if Trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      key:=#0;
      end;
   end
else if mNivelConsulta=mGrupo_Codpro then
   begin
   if DM1.Tb_PargerPPCOGRA.Value<>1 then
      begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
         begin
         if DM1.Tb_PargerPPCOGRA.Value=1 then
            CODIGO.Text:=fChamaPro(2,'Frm_VendaBloqueada_Relacao',key)
         else
            CODIGO.Text:=fChamaPro(0,'Frm_VendaBloqueada_Relacao',key);
         key:=#0;
         end;
      end;
   end;


end;

procedure TFrm_VendaBloqueada_Relacao.CODIGOExit(Sender: TObject);
begin
NOME.Text:='';
if mNivelConsulta=mGrupo_CodUF then
   CODIGO.Text:=Trim(CODIGO.Text)
else
  CODIGO.Text:=fdeixanum2(CODIGO.Text);
if Trim(CODIGO.Text)<>'' then
   begin
   if mNivelConsulta=mGrupo_CodVen then
      begin
      if not flqr1('VNOME','V','CADVEN','N','VCODVEN',CODIGO.Text) then
         begin
         verteclado(0);
         fMensagem('Vendedor não Cadastrado!',0,['0'],0);
         CODIGO.SetFocus;
         exit;
         end;
      end
   else if mNivelConsulta=mGrupo_CodFor then
      begin
      if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODIGO.Text) then
         begin
         verteclado(0);
         fMensagem('Fornecedor não Cadastrado!',0,['0'],0);
         CODIGO.SetFocus;
         exit;
         end;
      end
   else if mNivelConsulta=mGrupo_CodUF then
      begin
      if not flqr1('PNOM','P','CADUF','C','PUF',CODIGO.Text) then
         begin
         verteclado(0);
         fMensagem('Estado não Cadastrado!',0,['0'],0);
         CODIGO.SetFocus;
         exit;
         end;
      end
   else if mNivelConsulta=mGrupo_CodLoc then
      begin
      if not flqr1('LNOME','L','CADLOC','N','LCODLOC',CODIGO.Text) then
         begin
         verteclado(0);
         fMensagem('Localidade não Cadastrado!',0,['0'],0);
         CODIGO.SetFocus;
         exit;
         end;
      end
   else if mNivelConsulta=mGrupo_CodBai then
      begin
      if not flqr1('BNOME','B','CADBAI','N','RCODBAI',CODIGO.Text) then
         begin
         verteclado(0);
         fMensagem('Bairro não Cadastrado!',0,['0'],0);
         CODIGO.SetFocus;
         exit;
         end;
      end
   else if mNivelConsulta=mGrupo_CodRcli then
      begin
      if not flqr1('RNOME','R','CADRCLI','N','RCODRAM',CODIGO.Text) then
         begin
         verteclado(0);
         fMensagem('Ramo de Cliente não Cadastrado!',0,['0'],0);
         CODIGO.SetFocus;
         exit;
         end;
      end
   else if mNivelConsulta=mGrupo_CodCli then
      begin
      if not flqr1('CRAZAO','C','CADCLI','C','CCODCLI',CODIGO.Text) then
         begin
         verteclado(0);
         fMensagem('Cliente não Cadastrado!',0,['0'],0);
         CODIGO.SetFocus;
         exit;
         end;
      end
   else if mNivelConsulta=mGrupo_CodRPro then
      begin
      if not flqr1('RNOME','R','CADRAM','N','RCODRAM',CODIGO.Text) then
         begin
         verteclado(0);
         fMensagem('Ramo de Produto não Cadastrado!',0,['0'],0);
         CODIGO.SetFocus;
         exit;
         end;
      end
   else if mNivelConsulta=mGrupo_Codpro then
      begin
      if not flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',CODIGO.Text) then
         begin
         verteclado(0);
         fMensagem('Produto não Cadastrado!',0,['0'],0);
         CODIGO.SetFocus;
         exit;
         end;
      end;
   NOME.Text:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_VendaBloqueada_Relacao.bbAtualizarClick(Sender: TObject);
begin
if trim(CODIGO.Text)<>'' then
   begin
   if mNivelConsulta=mGrupo_CodVen then
      begin
      fCarregaTreeview(0, // codrcli
                    0, // codrpro
                    0, // codcpro
                    0, // codfor
                    ValFloat(CODIGO.Text), // codven
                    0, // codloc
                    0, // codbai
                    0, //codpro
                    0, // codcli
                    '' // coduf
                    );
      end
   else if mNivelConsulta=mGrupo_CodFor then
      begin
      fCarregaTreeview(0, // codrcli
                    0, // codrpro
                    0, // codcpro
                    ValFloat(CODIGO.Text), // codfor
                    0, // codven
                    0, // codloc
                    0, // codbai
                    0, //codpro
                    0, // codcli
                    '' // coduf
                    );
      end
   else if mNivelConsulta=mGrupo_CodUF then
      begin
      fCarregaTreeview(0, // codrcli
                    0, // codrpro
                    0, // codcpro
                    0, // codfor
                    0, // codven
                    0, // codloc
                    0, // codbai
                    0, //codpro
                    0, // codcli
                    trim(CODIGO.Text) // coduf
                    );
      end
   else if mNivelConsulta=mGrupo_CodLoc then
      begin
      fCarregaTreeview(0, // codrcli
                    0, // codrpro
                    0, // codcpro
                    0, // codfor
                    0, // codven
                    ValFloat(CODIGO.Text), // codloc
                    0, // codbai
                    0, //codpro
                    0, // codcli
                    '' // coduf
                    );
      end
   else if mNivelConsulta=mGrupo_CodBai then
      begin
      fCarregaTreeview(0, // codrcli
                    0, // codrpro
                    0, // codcpro
                    0, // codfor
                    0, // codven
                    0, // codloc
                    ValFloat(CODIGO.Text), // codbai
                    0, //codpro
                    0, // codcli
                    '' // coduf
                    );
      end
   else if mNivelConsulta=mGrupo_CodRcli then
      begin
      fCarregaTreeview(ValFloat(CODIGO.Text), // codrcli
                    0, // codrpro
                    0, // codcpro
                    0, // codfor
                    0, // codven
                    0, // codloc
                    0, // codbai
                    0, //codpro
                    0, // codcli
                    '' // coduf
                    );
      end
   else if mNivelConsulta=mGrupo_CodCli then
      begin
      fCarregaTreeview(0, // codrcli
                    0, // codrpro
                    0, // codcpro
                    0, // codfor
                    0, // codven
                    0, // codloc
                    0, // codbai
                    0, //codpro
                    ValFloat(CODIGO.Text), // codcli
                    '' // coduf
                    );
      end
   else if mNivelConsulta=mGrupo_CodRPro then
      begin
      fCarregaTreeview(0, // codrcli
                    ValFloat(CODIGO.Text), // codrpro
                    0, // codcpro
                    0, // codfor
                    0, // codven
                    0, // codloc
                    0, // codbai
                    0, //codpro
                    0, // codcli
                    '' // coduf
                    );
      end
   else if mNivelConsulta=mGrupo_Codpro then
      begin
      fCarregaTreeview(0, // codrcli
                    0, // codrpro
                    0, // codcpro
                    0, // codfor
                    0, // codven
                    0, // codloc
                    0, // codbai
                    ValFloat(CODIGO.Text), //codpro
                    0, // codcli
                    '' // coduf
                    );
      end;
   end;
end;

function TFrm_VendaBloqueada_Relacao.fCarregaTreeview(pCodRCli,pCodRPro,pCodCPro,pCodFor,
                        pCodven,
                        pCodLoc,pCodBai,pCodPro,pCodCli: Real; pCoduf: String): Boolean;
begin
Tree_Consulta.Items.Clear;
DM4.Tb_Bloqueio.Close;
DM4.Tb_Bloqueio.SQL.Clear;
DM4.Tb_Bloqueio.SQL.Add('Select  BQCODRCLI ');
DM4.Tb_Bloqueio.SQL.Add('       ,BQCODRPRO');
DM4.Tb_Bloqueio.SQL.Add('       ,BQCODCPRO');
DM4.Tb_Bloqueio.SQL.Add('       ,BQCODVEN');
DM4.Tb_Bloqueio.SQL.Add('       ,BQCODFOR');
DM4.Tb_Bloqueio.SQL.Add('       ,BQCODUF');
DM4.Tb_Bloqueio.SQL.Add('       ,BQCODLOC');
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
if pCodven<>0 then
   DM4.Tb_Bloqueio.SQL.Add(' and (BQCODVEN='+FloatToStr(pCodven)+' OR BQCODVEN=-1)');
if pCodFor<>0 then
   DM4.Tb_Bloqueio.SQL.Add(' and (BQCODFOR='+FloatToStr(pCodFor)+' OR BQCODFOR=-1)');
if Trim(pCoduf)<>'' then
   DM4.Tb_Bloqueio.SQL.Add(' and (BQCODUF='+chr(39)+Trim(pCoduf)+chr(39)+' OR BQCODUF='+chr(39)+' '+chr(39)+' OR BQCODUF='+chr(39)+'-1'+chr(39)+')');
if pCodLoc<>0 then
   DM4.Tb_Bloqueio.SQL.Add(' and (BQCODLOC='+FloatToStr(pCodLoc)+' OR BQCODLOC=-1)');
if pCodBai<>0 then
   DM4.Tb_Bloqueio.SQL.Add(' and (BQCODBAI='+FloatToStr(pCodBai)+' OR BQCODBAI=-1)');
if pCodRCli<>0 then
   DM4.Tb_Bloqueio.SQL.Add(' and (BQCODRCLI='+FloatToStr(pCodRCli)+' OR BQCODRCLI=-1)');
if pCodCli<>0 then
   DM4.Tb_Bloqueio.SQL.Add(' and (BQCODCLI='+FloatToStr(pCodCli)+' OR BQCODCLI=-1)');
if pCodRPro<>0 then
   DM4.Tb_Bloqueio.SQL.Add(' and (BQCODRPRO='+FloatToStr(pCodRPro)+' OR BQCODRPRO=-1)');
if pCodcPro<>0 then
   DM4.Tb_Bloqueio.SQL.Add(' and (BQCODRPRO='+FloatToStr(pCodcPro)+' OR BQCODCPRO=-1)');

if pCodPro<>0 then
   DM4.Tb_Bloqueio.SQL.Add(' and (BQCODPRO='+FloatToStr(pCodPro)+' OR BQCODPRO=-1)');
DM4.Tb_Bloqueio.SQL.Add(' order by BQGRUBLQ,BQCODVEN,VNOME, ');
DM4.Tb_Bloqueio.SQL.Add(' BQCODFOR,FRAZAO ');
DM4.Tb_Bloqueio.SQL.Add('         ,BQCODUF,PUF ');
DM4.Tb_Bloqueio.SQL.Add('         ,BQCODLOC,LNOME ');
DM4.Tb_Bloqueio.SQL.Add('         ,BQCODBAI,BNOME ');
DM4.Tb_Bloqueio.SQL.Add('         ,BQCODRCLI,CADRCLI.RNOME ');
DM4.Tb_Bloqueio.SQL.Add('         ,BQCODRPRO,BQCODCPRO,CADRAM.RNOME ');
DM4.Tb_Bloqueio.SQL.Add('         ,BQCODCLI,CRAZAO ');
DM4.Tb_Bloqueio.SQL.Add('         ,BQCODPRO,PDNOME ');
DM4.Tb_Bloqueio.Open;
//DM4.Tb_Bloqueio.sQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));


if DM4.Tb_Bloqueio.Eof then
   begin
   verteclado(0);
   Node_uf := Tree_Consulta.Items.Add(nil, 'NÃO HA RESTRIÇOES/BLOQUEIOS');
   Tree_Consulta.Items.Item[Tree_Consulta.Items.Count-1].ImageIndex:=4;
   Tree_Consulta.Items.Item[Tree_Consulta.Items.Count-1].SelectedIndex:=4;
   result:=true;
   bbImprimir.Enabled:=false;
   exit;
   end;
mBloqueio_OrigemChamada:=1;
Application.CreateForm(TFrm_BloqueioVenda, Frm_BloqueioVenda);
bbImprimir.Enabled:=True;

mMontou_CodRcli :=false;
mMontou_CodRpro :=false;
mMontou_CodFor  :=false;
mMontou_CodVen  :=false;
mMontou_CodLoc  :=false;
mMontou_CodBai  :=false;
mMontou_CodPro  :=false;
mMontou_Codcli  :=false;
mMontou_CodUF   :=false;
mMontou_CodCPro :=false;

//fZeraItensMontados(false);

if DM4.Tb_BloqueioBQGRUBLQ.Value<>mGrupo_CodVen then
   begin
   Node_Ven  :=  Tree_Consulta.Items.Add(nil, NomeNivel[mGrupo_CodVen]);
   Tree_Consulta.Items.Item[Tree_Consulta.Items.Count-1].ImageIndex:=0;
   Tree_Consulta.Items.Item[Tree_Consulta.Items.Count-1].SelectedIndex:=0;
   end
else
   fCarregarVend(1,0,DM4.Tb_BloqueioBQGRUBLQ.AsInteger);
fZeraItensMontados(false);
if DM4.Tb_BloqueioBQGRUBLQ.Value<>mGrupo_CodFor then
   begin
   Node_for := Tree_Consulta.Items.Add(nil, NomeNivel[mGrupo_CodFor]);
   Tree_Consulta.Items.Item[Tree_Consulta.Items.Count-1].ImageIndex:=0;
   Tree_Consulta.Items.Item[Tree_Consulta.Items.Count-1].SelectedIndex:=0;
   end
else
   fCarregarFor(1,0,DM4.Tb_BloqueioBQGRUBLQ.AsInteger);
fZeraItensMontados(false);

if DM4.Tb_BloqueioBQGRUBLQ.Value<>mGrupo_CodUF then
   begin
   Node_uf := Tree_Consulta.Items.Add(nil, NomeNivel[mGrupo_CodUF]);
   Tree_Consulta.Items.Item[Tree_Consulta.Items.Count-1].ImageIndex:=0;
   Tree_Consulta.Items.Item[Tree_Consulta.Items.Count-1].SelectedIndex:=0;
   end
else
   fCarregarUF(1,0,DM4.Tb_BloqueioBQGRUBLQ.AsInteger);
fZeraItensMontados(false);

if DM4.Tb_BloqueioBQGRUBLQ.Value<>mGrupo_CodLoc then
   begin
   Node_Cidade := Tree_Consulta.Items.Add(nil, NomeNivel[mGrupo_CodLoc]);
   Tree_Consulta.Items.Item[Tree_Consulta.Items.Count-1].ImageIndex:=0;
   Tree_Consulta.Items.Item[Tree_Consulta.Items.Count-1].SelectedIndex:=0;
   end
else
   fCarregarCidades(1,0,DM4.Tb_BloqueioBQGRUBLQ.AsInteger);
fZeraItensMontados(false);
if DM4.Tb_BloqueioBQGRUBLQ.Value<>mGrupo_CodBai then
   begin
   Node_Bairros := Tree_Consulta.Items.Add(nil, NomeNivel[mGrupo_CodBai]);
   Tree_Consulta.Items.Item[Tree_Consulta.Items.Count-1].ImageIndex:=0;
   Tree_Consulta.Items.Item[Tree_Consulta.Items.Count-1].SelectedIndex:=0;

   end
else
   fCarregarBairros(1,0,DM4.Tb_BloqueioBQGRUBLQ.AsInteger);
fZeraItensMontados(false);

if DM4.Tb_BloqueioBQGRUBLQ.Value<>mGrupo_CodRcli then
   begin
   Node_RCli := Tree_Consulta.Items.Add(nil, NomeNivel[mGrupo_CodRCli]);
   Tree_Consulta.Items.Item[Tree_Consulta.Items.Count-1].ImageIndex:=0;
   Tree_Consulta.Items.Item[Tree_Consulta.Items.Count-1].SelectedIndex:=0;
   end
else
   fCarregarRCli(1,0,DM4.Tb_BloqueioBQGRUBLQ.AsInteger);
fZeraItensMontados(false);
if DM4.Tb_BloqueioBQGRUBLQ.Value<>mGrupo_CodCli then
   begin
   Node_Clientes := Tree_Consulta.Items.Add(nil, NomeNivel[mGrupo_CodCli]);
   Tree_Consulta.Items.Item[Tree_Consulta.Items.Count-1].ImageIndex:=0;
   Tree_Consulta.Items.Item[Tree_Consulta.Items.Count-1].SelectedIndex:=0;
   end
else
   fCarregarClientes(1,0,DM4.Tb_BloqueioBQGRUBLQ.AsInteger);
fZeraItensMontados(false);
if DM4.Tb_BloqueioBQGRUBLQ.Value<>mGrupo_CodRPro then
   begin
   Node_Rpro := Tree_Consulta.Items.Add(nil, NomeNivel[mGrupo_CodRPro]);
   Tree_Consulta.Items.Item[Tree_Consulta.Items.Count-1].ImageIndex:=0;
   Tree_Consulta.Items.Item[Tree_Consulta.Items.Count-1].SelectedIndex:=0;
   end
else
   fCarregarRPro(1,0,DM4.Tb_BloqueioBQGRUBLQ.AsInteger);
fZeraItensMontados(false);
if DM4.Tb_BloqueioBQGRUBLQ.Value<>mGrupo_Codpro then
   begin
   Node_Produtos := Tree_Consulta.Items.Add(nil, NomeNivel[mGrupo_CodPro]);
   Tree_Consulta.Items.Item[Tree_Consulta.Items.Count-1].ImageIndex:=0;
   Tree_Consulta.Items.Item[Tree_Consulta.Items.Count-1].SelectedIndex:=0;
   end
else
   fCarregarProdutos(1,0,DM4.Tb_BloqueioBQGRUBLQ.AsInteger);
if Tree_Consulta.Items.Count>0 then
   Tree_Consulta.Items.Item[0].Selected:=true;
Tree_Consulta.FullExpand;
Frm_BloqueioVenda.Free;
mBloqueio_OrigemChamada:=0;

result:=true;
end;
procedure TFrm_VendaBloqueada_Relacao.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_VendaBloqueada_Relacao.bbImprimirClick(Sender: TObject);
var
x: Integer;
mNomeItem,mlinha2,mlinha,mNomArq: STring;
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

{
if Tree_Consulta.Items.Count<1 then
   begin
   fMensagem('Não ha nada a ser impresso!',0,['0'],0);
   exit;
   end;
}

Tree_Consulta.SaveToFile(mNomArq);
if not FileExists(mNomArq) then
   begin
   fMensagem('Não Foi Possível encontrar o arquivo temporario!',0,['0'],0);
   exit;
   end;
AssignFile(f,mNomArq);
Reset(f);
testeform := TFrm_VendaBloqueada_Relacao(FindGlobalComponent('form_impres_VBR'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_VBR);

form_impres_VBR.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_VBR.mlin:=0;
form_impres_VBR.mpag:=0;
if mNivelConsulta=mGrupo_CodUF then
   mNomeItem:=NOME.Text+' '+Trim(CODIGO.Text)
else
   mNomeItem:=NOME.Text+' '+FormatFloat('00000', ValFloat(CODIGO.Text));

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
   if form_impres_VBR.mlin=0 then
      begin
      form_impres_VBR.mlin:=1;
      form_impres_VBR.mpag:=form_impres_VBR.mpag+1;
      form_impres_VBR.RDprint1.ImpF(form_impres_VBR.mlin,01,insere2(DM1.Tb_EmpRAZAO_CAB.Value,' ',60)
                              +'Pagina: '+FormatFloat('0000',form_impres_VBR.mpag),mnormal);
      form_impres_VBR.mlin:=form_impres_VBR.mlin+1;
      form_impres_VBR.RDprint1.ImpF(form_impres_VBR.mlin,01,insere2('Relacao de Bloqueios.',' ',60)
                              +'Data: '+FormatDateTime(fdt2, date),mnormal);
      form_impres_VBR.mlin:=form_impres_VBR.mlin+1;
      form_impres_VBR.RDprint1.ImpF(form_impres_VBR.mlin,01,Centra(Trim(St_Nivel.Caption),' ',80),mneg);
      form_impres_VBR.mlin:=form_impres_VBR.mlin+1;
      if PageControl1.ActivePage=Ts_Vendedor then
         form_impres_VBR.RDprint1.ImpF(form_impres_VBR.mlin,01,Centra('Vendedor.: '+CODIGO.Text+' '+NOME.Text,' ',80),mneg)
      else if PageControl1.ActivePage=Ts_Fornecedor then
         form_impres_VBR.RDprint1.ImpF(form_impres_VBR.mlin,01,Centra('Fornecedor.: '+CODIGO.Text+' '+NOME.Text,' ',80),mneg)
      else if PageControl1.ActivePage=Ts_Estados then
         form_impres_VBR.RDprint1.ImpF(form_impres_VBR.mlin,01,Centra('Estado.: '+CODIGO.Text+' '+NOME.Text,' ',80),mneg)
      else if PageControl1.ActivePage=Ts_Cidade then
         form_impres_VBR.RDprint1.ImpF(form_impres_VBR.mlin,01,Centra('Cidade.: '+CODIGO.Text+' '+NOME.Text,' ',80),mneg)
      else if PageControl1.ActivePage=Ts_Bairros then
         form_impres_VBR.RDprint1.ImpF(form_impres_VBR.mlin,01,Centra('Bairro.: '+CODIGO.Text+' '+NOME.Text,' ',80),mneg)
      else if PageControl1.ActivePage=Ts_RamoClientes then
         form_impres_VBR.RDprint1.ImpF(form_impres_VBR.mlin,01,Centra('Ramo de Cliente.: '+CODIGO.Text+' '+NOME.Text,' ',80),mneg)
      else if PageControl1.ActivePage=Ts_Clientes then
         form_impres_VBR.RDprint1.ImpF(form_impres_VBR.mlin,01,Centra('Clientes.: '+CODIGO.Text+' '+NOME.Text,' ',80),mneg)
      else if PageControl1.ActivePage=Ts_RamoProdutos then
         form_impres_VBR.RDprint1.ImpF(form_impres_VBR.mlin,01,Centra('Ramo de Produto.: '+CODIGO.Text+' '+NOME.Text,' ',80),mneg)
      else if PageControl1.ActivePage=Ts_Produtos then
         form_impres_VBR.RDprint1.ImpF(form_impres_VBR.mlin,01,Centra('Produto.: '+CODIGO.Text+' '+NOME.Text,' ',80),mneg);

      form_impres_VBR.mlin:=form_impres_VBR.mlin+1;
      form_impres_VBR.RDprint1.ImpF(form_impres_VBR.mlin,01,insere2('-','-',80),mnormal);
      form_impres_VBR.mlin:=form_impres_VBR.mlin+1;
      end;
   form_impres_VBR.mlin:=form_impres_VBR.mlin+1;
   if trim(mlinha)=mNomeItem then
      form_impres_VBR.RDprint1.ImpF(form_impres_VBR.mlin,01,mlinha, mreduz+mneg)
   else
      form_impres_VBR.RDprint1.ImpF(form_impres_VBR.mlin,01,mlinha,mreduz);
   if eof(f) then
      begin
      form_impres_VBR.mlin:=form_impres_VBR.mlin+1;
      form_impres_VBR.RDprint1.ImpF(form_impres_VBR.mlin,01,Insere2('Fim.','-',80),mNormal);
      verteclado(0);
      if form_impres_VBR.RDprint1.Setup then form_impres_VBR.RDprint1.fechar;
      form_impres_VBR.free;
      form_impres_VBR:=nil;
      end
   else if form_impres_VBR.mlin>60 then
      begin
      form_impres_VBR.mlin:=form_impres_VBR.mlin+1;
      form_impres_VBR.RDprint1.ImpF(form_impres_VBR.mlin,01,Insere2('Continua...','-',80),mNormal);
      form_impres_VBR.mlin:=0;
      end;
   end;
if form_impres_VBR.mlin=0 then
   begin
   form_impres_VBR.RDprint1.ImpF(01,01,'Não ha itens a serem impressos',mnormal);
   if form_impres_VBR.RDprint1.Setup then form_impres_VBR.RDprint1.fechar;
   form_impres_VBR.free;
   form_impres_VBR:=nil;
   end;
closefile(f);
deletefile(mNomArq);
end;


procedure TFrm_VendaBloqueada_Relacao.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePage=Ts_Vendedor then
   St_Nivel.Caption:='NIVEL: VENDEDOR'
else if PageControl1.ActivePage=Ts_Fornecedor then
   St_Nivel.Caption:='NIVEL: FORNECEDOR'
else if PageControl1.ActivePage=Ts_Estados then
   St_Nivel.Caption:='NIVEL: ESTADOS'
else if PageControl1.ActivePage=Ts_Cidade then
   St_Nivel.Caption:='NIVEL: CIDADE'
else if PageControl1.ActivePage=Ts_Bairros then
   St_Nivel.Caption:='NIVEL: BAIRROS'
else if PageControl1.ActivePage=Ts_RamoClientes then
   St_Nivel.Caption:='NIVEL: RAMO DE CLIENTES'
else if PageControl1.ActivePage=Ts_Clientes then
   St_Nivel.Caption:='NIVEL: CLIENTES'
else if PageControl1.ActivePage=Ts_RamoProdutos then
   St_Nivel.Caption:='NIVEL: RAMO DE PRODUTOS'
else if PageControl1.ActivePage=Ts_Produtos then
   St_Nivel.Caption:='NIVEL: PRODUTOS';





end;

procedure TFrm_VendaBloqueada_Relacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

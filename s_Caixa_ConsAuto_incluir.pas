unit s_Caixa_ConsAuto_incluir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, Buttons,db,dbtables;

type
  Tfrm_Caixa_ConsAuto_incluir = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    edt_valor: TEdit;
    Label3: TLabel;
    cb_tipo: TComboBox;
    Label4: TLabel;
    edt_codigo: TEdit;
    edt_nome: TEdit;
    Label5: TLabel;
    edt_descricao: TEdit;
    bbLer: TBitBtn;
    bbSairSemGravar: TBitBtn;
    Label6: TLabel;
    edt_coddep: TEdit;
    cb_coddep: TComboBox;
    spn_nomccu: TSpeedButton;
    Label7: TLabel;
    edt_codccu: TEdit;
    cb_codccu: TComboBox;
    SpeedButton1: TSpeedButton;
    edt_natureza: TEdit;
    SpeedButton5: TSpeedButton;
    procedure bbSairSemGravarClick(Sender: TObject);
    procedure edt_coddepExit(Sender: TObject);
    procedure edt_codigoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codigoExit(Sender: TObject);
    procedure edt_codccuExit(Sender: TObject);
    procedure edt_codigoEnter(Sender: TObject);
    procedure edt_valorEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cb_coddepExit(Sender: TObject);
    procedure cb_codccuExit(Sender: TObject);
    procedure spn_nomccuClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure bbLerClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cb_tipoEnter(Sender: TObject);
    procedure cb_tipoExit(Sender: TObject);
  private
    { Private declarations }
    mcodigo_ant: string;



    function fValidarDadosCadLdr: boolean;

    procedure fPegarDadosPadroes;

  public
    { Public declarations }
    mGravarOk: boolean;
    mNatDc_Ant: String;
    mant_tipo: string;
    mDescricao_Original: String;
  end;

var
  frm_Caixa_ConsAuto_incluir: Tfrm_Caixa_ConsAuto_incluir;

implementation

uses S_DM1, lerarq, Func, func_excecoes;

{$R *.dfm}

procedure Tfrm_Caixa_ConsAuto_incluir.bbSairSemGravarClick(
  Sender: TObject);
begin
mGravarOk:=false;
close;
end;

procedure Tfrm_Caixa_ConsAuto_incluir.edt_coddepExit(Sender: TObject);
begin
if trim(edt_coddep.text)<>'' Then
   begin
   mDadosRetornoCaixa:=fTestarCADDEP_CX(false,edt_coddep.Text);
   if mDadosRetornoCaixa.pOk=false then 
      begin
      edt_coddep.SetFocus;
      end
   else
      begin
      cb_coddep.ItemIndex := cb_coddep.Items.IndexOf(mDadosRetornoCaixa.pNome+'['+edt_coddep.text+']');
      end;
   end;

end;

procedure Tfrm_Caixa_ConsAuto_incluir.edt_codigoKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%')  then
   begin
   if cb_TIPO.Text='FR' then
      begin
      edt_codigo.Text:=fChamaFor(0,'frm_ldr',Key);
      edt_codigoExit(self);
      key:=#0;
      end
   else if cb_TIPO.Text='TR' then
      begin
      edt_codigo.text:=fChamaTra(0,'frm_tra',key);
      edt_codigoExit(self);
      key:=#0;
      end
   else if cb_TIPO.Text='VD' then
      begin
      edt_codigo.Text:=fchamaven(0,'frm_ldr',key);
      key:=#0;
      end
   else if cb_TIPO.Text='US' then
      begin
      edt_codigo.text := fChamaUsr(0,'frm_ldr',key);
      key:=#0;
      end

   else
      begin
      edt_codigo.Text:=fChamaCli(0,'Frm_LDR',key);
      end;
   edt_codigoExit(self);
   end;

end;

procedure Tfrm_Caixa_ConsAuto_incluir.edt_codigoExit(Sender: TObject);
begin
if fsonumero(edt_codigo.Text)=0 then
   exit;
edt_codigo.text:=fdeixanum(edt_codigo.Text);
if cb_tipo.Text='VD' then
   begin
   if not flqr2('VNOME','V','CADVEN','N','VCODVEN', edt_codigo.Text) then
      Begin
      fmensagem('Vendedor não Cadastrado!',0,['0'],0);
      edt_codigo.SetFocus;
      end
   else
      begin
      edt_nome.Text:=DM1.Query2.Fields[0].AsString;
      end;
   end
else if cb_TIPO.Text='FR' then
   begin
   if not flcadfor(1,0,edt_codigo.Text) then
      Begin
      fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
      edt_codigo.SetFocus;
      end
   else
      begin
      edt_nome.text:=DM1.Tb_ForFRAZAO.Value;
      if mcodigo_ant<>edt_codigo.Text then
         begin
         if flparldr(0,'CADDAP0') then
            begin
{
            if fStringVazioOuNulo(DM1.Tb_ForFDESCMVD.AsString) then
               edt_descricao.Text:=DM1.Par_LDRNOME.Value
            else
               edt_descricao.Text:=DM1.Tb_ForFDESCMVD.Value;
}
            if fStringVazioOuNulo(DM1.Tb_ForFCODCCD.AsString) then
               begin
               edt_codccu.Text  :=DM1.Par_LDRCODCC.Value;
               end
            else
               begin
               edt_codccu.Text    :=  DM1.Tb_ForFCODCCD.Value;
               end;
            edt_codccuExit(Self);

            if fStringVazioOuNulo(DM1.Tb_ForFCODDEPD.AsString) then
               begin
               edt_coddep.Text:=DM1.Par_LDRCODDEP.Value;
               end
            else
               begin
               edt_coddep.Text:=DM1.Tb_ForFCODDEPD.Value;
               end;
            edt_coddepExit(Self);
            end;
         end;
      end;
   end
else if cb_TIPO.Text='TR' then
   begin
   if not flqr2('TRRAZTRA','TR','CADTRA','N','TRCODTRA',DM1.Tb_LDRCODIGO.AsString) then
      Begin
      fmensagem('Transportadora não Cadastrada!',0,['0'],0);
      end
   else
      edt_nome.Text:=DM1.Query2.Fields[0].AsString;
   end
else if cb_TIPO.Text='US' then
   begin
   mDadosRetornoCaixa:=fTestarCADUSR(false,DM1.Tb_LDRCODIGO.AsString);
   if mDadosRetornoCaixa.pOk=false then
      Begin
      fmensagem('Usuário não Cadastrado!',0,['0'],0);
      end
   else
      begin
      edt_nome.Text:=mDadosRetornoCaixa.pNome;
      end;
   end
else
   begin
   if not flcadcli(1,0,edt_codigo.Text) then
      Begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      end
   else
      begin
      edt_nome.Text:=DM1.Tb_CliCRAZAO.Value;

      if mcodigo_ant<>edt_codigo.Text then
         begin
         if flparldr(0,'CADDAR0') then
            begin

{
            if fStringVazioOuNulo(DM1.Tb_CliCDESCMVC.AsString) then
               edt_descricao.Text:=DM1.Par_LDRNOME.Value
            else
               edt_descricao.Text:=DM1.Tb_CliCDESCMVC.Value;
}
            if fStringVazioOuNulo(DM1.Tb_CliCCODCCC.AsString) then
               begin
               edt_codccu.Text :=DM1.Par_LDRCODCC.Value;
               end
            else
               begin
               edt_codccu.Text :=DM1.Tb_CliCCODCCC.Value;
               end;
            edt_codccuExit(self);

           if fStringVazioOuNulo(DM1.Tb_CliCCODDEPC.AsString) then
               begin
               edt_coddep.Text:=DM1.Par_LDRCODDEP.Value;
               end
            else
               begin
               edt_coddep.Text:=DM1.Tb_CliCCODDEPC.Value;
               end;
            edt_coddepExit(Self);

            end;
         end;
      end;
   end;

end;

procedure Tfrm_Caixa_ConsAuto_incluir.edt_codccuExit(Sender: TObject);
begin
if not fStringVazioOuNulo(edt_codccu.text) then
   begin
   mDadosRetornoCaixa :=fTestarCADCC(false,edt_codccu.text);
   if mDadosRetornoCaixa.pOk=false then
      begin
      edt_codccu.SetFocus;
      end
   else
      begin
      edt_natureza.Text  := mDadosRetornoCaixa.pNatDC;
      cb_codccu.ItemIndex := cb_codccu.Items.IndexOf(mDadosRetornoCaixa.pNome
      +'-'+mDadosRetornoCaixa.pNatDC
      +'['+edt_codccu.text+']'
      );
      end;
   end;

end;

procedure Tfrm_Caixa_ConsAuto_incluir.edt_codigoEnter(Sender: TObject);
begin
mcodigo_ant:=edt_codigo.Text;

end;

procedure Tfrm_Caixa_ConsAuto_incluir.edt_valorEnter(Sender: TObject);
begin
edt_valor.Text:=FormatFloat(mcasas, valfloat(edt_valor.text));
end;

procedure Tfrm_Caixa_ConsAuto_incluir.FormCreate(Sender: TObject);
begin
fCarregarComboBoxComDeptoCaixa(cb_coddep);
fCarregarComboBoxComCadCCu(cb_codccu);


end;

procedure Tfrm_Caixa_ConsAuto_incluir.cb_coddepExit(Sender: TObject);
begin
if cb_coddep.ItemIndex<0 then
   with cb_coddep do ItemIndex:=Items.IndexOf(cb_coddep.Text);
cb_coddep.text:=cb_coddep.Items.Strings[cb_coddep.ItemIndex];
if trim(cb_coddep.Text)='' then
   edt_coddep.clear
else
   begin
   edt_coddep.text:=fExtraiCodigoEntreChaves(cb_coddep.text);
   edt_coddepExit(Self);
   end;

end;

procedure Tfrm_Caixa_ConsAuto_incluir.cb_codccuExit(Sender: TObject);
begin
if cb_codccu.ItemIndex<0 then
   with cb_codccu do ItemIndex:=Items.IndexOf(cb_codccu.Text);
cb_codccu.text:=cb_codccu.Items.Strings[cb_codccu.ItemIndex];
if trim(cb_codccu.Text)='' then
   edt_codccu.clear
else
   begin
   edt_codccu.text:=fExtraiCodigoEntreChaves(cb_codccu.Text);
   edt_codccuExit(Self);
   end;

end;

procedure Tfrm_Caixa_ConsAuto_incluir.spn_nomccuClick(Sender: TObject);
begin
edt_coddep.text:=fChamaDeptoCX(0,'Frm_LDR','');
fCarregarComboBoxComDeptoCaixa(cb_coddep);
edt_coddepExit(self);

end;

procedure Tfrm_Caixa_ConsAuto_incluir.SpeedButton1Click(Sender: TObject);
begin
edt_coddep.Text:=fChamaCCU(0,'Frm_LDR','');
fCarregarComboBoxComCadCCu(cb_codccu);
edt_natureza.Text:=DM1.Tb_CCUCCNAT.Value;
edt_codccuExit(SELF);


end;

function Tfrm_Caixa_ConsAuto_incluir.fValidarDadosCadLdr: boolean;
var
mMensagem: String;
begin
result:=true;
mMensagem:='';
if fSonumero(edt_valor.Text)<=0 then
   mMensagem:=mMensagem+'Valor Tem que Ser Maior que Zero!'+#13;

if fSonumero(edt_codigo.Text)=0 then
   mMensagem:=mMensagem+'Código do Sacado é Obrigatório!'+#13;
if Length(trim(edt_descricao.Text))<1 then
   mMensagem:=mMensagem+'Descrição Campo é Obrigatório!'+#13;
if Length(trim(edt_coddep.Text))<1 then
   mMensagem:=mMensagem+'Código do Departameto campo é obrigatório!'+#13;
if Length(trim(edt_codccu.Text))<1 then
   mMensagem:=mMensagem+'Código do Centro de Custo é obrigatório!'+#13;
if length(mMensagem)>1 then
   begin
   result:=false;
   MessageDlg(mMensagem,mtWarning,[mbOk],0);
   end;
if (edt_natureza.Text<>mNatDc_Ant) then
   begin
   if Application.MessageBox(pchar('Natureza Esperada '+mNatDc_Ant+' Encontrada '+edt_natureza.Text+#13+'Continuar mesmo assim? ') ,'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      result:=false;
   end;


end;


procedure Tfrm_Caixa_ConsAuto_incluir.bbLerClick(Sender: TObject);
begin

if fValidarDadosCadLdr then
   begin
   mGravarOk:=true;
   close;
   end;

end;

procedure Tfrm_Caixa_ConsAuto_incluir.SpeedButton5Click(Sender: TObject);
begin
if cb_TIPO.Text='FR' then
   begin
   edt_codigo.Text :=fChamaFor(0,'frm_LDR','');
   edt_codigoExit(SELF);
   end
else if cb_TIPO.Text='TR' then
   begin
   edt_codigo.text:=fChamaTra(0,'frm_LDR','');
   edt_codigoExit(SELF);
   end
else if cb_TIPO.Text='VD' then
   begin
   edt_codigo.text := fChamaVen(0,'Frm_LDR','');
   edt_codigoExit(SELF);
   end
else if cb_TIPO.Text='US' then
   begin
   edt_codigo.text:=fchamausr(0,'frm_ldr','');
   edt_codigoExit(SELF);
   end
else
   begin
   edt_codigo.Text :=fChamaCli(0,'Frm_LDR','');
   edt_codigoExit(SELF);
   end;

end;


procedure Tfrm_Caixa_ConsAuto_incluir.fPegarDadosPadroes;
var
query_padrao: tQuery;
begin
query_padrao :=tQuery.create(nil);
query_padrao.databasename:=DM1.SG_ASSOC.databasename;
query_padrao.SQL.clear;
query_padrao.SQL.add('Select t2.* from CADOFX_PADRAO t1, CADLDR t2 '
                    +' where OFXP_DESCRICAO=:OFXP_DESCRICAO '
                    +' and CODLDR=OFXP_CODLDR ');
query_padrao.ParamByName('OFXP_DESCRICAO').AsString:=mDescricao_Original;
try
   query_padrao.Open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_padrao,440,'_stru '+e.message,'CADOFXP_PADRAO');
   end;
   end;
if not query_padrao.IsEmpty then
   begin
   cb_tipo.Text        :=query_padrao.fieldbyname('TIPO').AsString;
   edt_codigo.Text     :=query_padrao.fieldbyname('CODIGO').AsString;
   edt_nome.Text       :=query_padrao.fieldbyname('NOME').AsString;
   edt_descricao.Text  :=query_padrao.fieldbyname('DESCMV').AsString;
   edt_coddep.Text     :=query_padrao.fieldbyname('CODDEP').AsString;
   edt_coddepExit(self);
   edt_codccu.Text     :=query_padrao.fieldbyname('CODCC').AsString;
   edt_codccuExit(self);
   end;
query_padrao.close;
freeandnil(query_padrao);



end;
procedure Tfrm_Caixa_ConsAuto_incluir.FormShow(Sender: TObject);
begin
fPegarDadosPadroes;

end;

procedure Tfrm_Caixa_ConsAuto_incluir.cb_tipoEnter(Sender: TObject);
begin
    mant_tipo:=cb_tipo.Text;
end;

procedure Tfrm_Caixa_ConsAuto_incluir.cb_tipoExit(Sender: TObject);
begin
if mant_tipo<>cb_tipo.Text then
   begin
   edt_codigo.Clear;
   edt_nome.Clear;
   end;
end;

end.

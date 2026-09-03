unit S_Pro_Transf_Filial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, Grids, DBGrids, RxMemDS,dbtables
  ,s_lerarq_geral;

type
  TFrm_Pro_Transf_Filial = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    st_lote: TStaticText;
    StaticText6: TStaticText;
    edt_codpro: TEdit;
    edt_descricao: TEdit;
    edt_filial_saida: TEdit;
    edt_filial_entrada: TEdit;
    edt_lote: TEdit;
    edt_qtd: TEdit;
    SAIR: TBitBtn;
    gb_lotes: TGroupBox;
    edt_nome_filial_saida: TEdit;
    edt_nome_filial_entrada: TEdit;
    mem_cadpro_transf: TRxMemoryData;
    DBGrid1: TDBGrid;
    src_cadpro_transf: TDataSource;
    mem_cadpro_transfce_codemp: TIntegerField;
    mem_cadpro_transfce_nompro: TStringField;
    mem_cadpro_transfce_filial_ent: TIntegerField;
    mem_cadpro_transfce_filial_saida: TIntegerField;
    mem_cadpro_transfce_lote: TStringField;
    mem_cadpro_transfce_qtd: TFloatField;
    mem_cadpro_transfce_filial_ent_nome: TStringField;
    mem_cadpro_transfce_filial_sai_nome: TStringField;
    mem_cadpro_transfce_codpro: TFloatField;
    DBGrid_lotes: TDBGrid;
    st_estpro: TStaticText;
    bbGravar: TBitBtn;
    procedure SAIRClick(Sender: TObject);
    procedure edt_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codproKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codproExit(Sender: TObject);
    procedure edt_filial_saidaExit(Sender: TObject);
    procedure edt_filial_entradaExit(Sender: TObject);
    procedure DBGrid_lotesDblClick(Sender: TObject);
    procedure edt_qtdExit(Sender: TObject);
    procedure bbGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pro_Transf_Filial: TFrm_Pro_Transf_Filial;

implementation

uses S_DM1, lerarq, Func, S_DM4, Func2;

{$R *.dfm}

procedure TFrm_Pro_Transf_Filial.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Pro_Transf_Filial.edt_codproKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=113 then
   begin
   edt_codpro.Text:=fChamaPro(0,'Frm_Aju','');
   key:=0;
   end;


end;

procedure TFrm_Pro_Transf_Filial.edt_codproKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codpro.Text:=fChamaPro(0,'Frm_Aju',key);
   edt_filial_saida.SetFocus;
   key:=#0;
   end;

end;

procedure TFrm_Pro_Transf_Filial.edt_codproExit(Sender: TObject);
begin
edt_codpro.Text:=fdeixanum2(edt_codpro.Text);
if (Trim(edt_codpro.Text)='') then
   begin
   if (edt_filial_saida.Focused) then
      edt_codpro.SetFocus;
   exit;
   end;


if not flcadpro(1,0,0,fdeixanum(edt_codpro.Text)) then
   begin
   edt_codpro.Text:=FloatToStr(fAchaCodigoOri(edt_codpro.Text));
   if ValFloat(edt_qtd.Text)<=1 then
      edt_qtd.Text:=FormatFloat(mcasqtd, pRet_Qtd);
   if ValFloat(edt_qtd.Text)=0 then
      edt_qtd.Text:=FormatFloat(mcasqtd, 1);
   edt_lote.Text:=pRet_Lote;
   if trim(edt_codpro.Text)='' then
      begin
      FMensagem('Produto não Cadastrado!',0,['0'],0);
      edt_codpro.SetFocus;
      exit;
      end;

   if not flcadpro(1,0,0,fdeixanum(edt_codpro.Text)) then
      begin
      FMensagem('Produto não Cadastrado!',0,['0'],0);
      edt_codpro.SetFocus;
      exit;
      end;
   end;
edt_codpro.Text:=DM1.Tb_ProPDCODPRO.AsString;

if GB_LOTES.Visible then
   flcadlgc(0,0,0,DM1.Tb_ProPDCODPRO.AsString,'','');
edt_descricao.Text:=DM1.Tb_ProPDNOME.Value+' - '+DM1.Tb_ProPDMARCA.AsString+' / '+DM1.Tb_ProPDUND.AsString;

end;

procedure TFrm_Pro_Transf_Filial.edt_filial_saidaExit(Sender: TObject);
var
Query_filial: TQuery;
begin
if valint(edt_filial_saida.text)=0 then
   exit;

Query_filial:=TQuery.Create(nil);
Query_filial.DatabaseName:='SG_ASSOC';
Query_filial.Close;
Query_filial.SQL.Clear;
Query_filial.SQL.add('Select CFFILIAL,CFNOME from CADPRO_FILIAL where CFCODEMP=0'+IntToStr(codemp-iif(codemp>100,100,0))
                    +' and CFFILIAL=:FILIAL '
                    +' order by CFFILIAL ');
Query_filiaL.ParamByName('FILIAL').AsInteger:=valint(edt_filial_saida.text);
Query_filial.Open;
if Query_filial.IsEmpty then
   begin
   messagedlg('Filial Não Cadastrada!',mtWarning,[mbOk],0);
   edt_filial_saida.setfocus;
   freeandNil(query_filial);
   exit;
   end;
edt_nome_filial_saida.Text:=Query_filial.fieldbyName('CFNOME').AsString;

freeandNil(query_filial);

end;

procedure TFrm_Pro_Transf_Filial.edt_filial_entradaExit(Sender: TObject);
var
Query_filial: TQuery;
begin
if valint(edt_filial_entrada.text)=0 then
   exit;

Query_filial:=TQuery.Create(nil);
Query_filial.DatabaseName:='SG_ASSOC';
Query_filial.Close;
Query_filial.SQL.Clear;
Query_filial.SQL.add('Select CFFILIAL,CFNOME from CADPRO_FILIAL where CFCODEMP=0'+IntToStr(codemp-iif(codemp>100,100,0))
                    +' and CFFILIAL=:FILIAL '
                    +' order by CFFILIAL ');
Query_filiaL.ParamByName('FILIAL').AsInteger:=valint(edt_filial_entrada.text);
Query_filial.Open;
if Query_filial.IsEmpty then
   begin
   messagedlg('Filial Não Cadastrada!',mtWarning,[mbOk],0);
   edt_filial_entrada.setfocus;
   freeandNil(query_filial);
   exit;
   end;
edt_nome_filial_entrada.Text:=Query_filial.fieldbyName('CFNOME').AsString;
freeandNil(query_filial);


end;

procedure TFrm_Pro_Transf_Filial.DBGrid_lotesDblClick(Sender: TObject);
begin
if (DM1.Tb_LGCCLFILIAL.AsInteger>0) and (valint(edt_filial_saida.Text)>0) then
   begin
   if valint(edt_filial_saida.Text)=DM1.Tb_LGCCLFILIAL.AsInteger then
      begin
      edt_lote.Text:=DM1.Tb_LGCCLNUMERO.AsString;
      if valfloat(edt_qtd.Text)=0 then
         edt_qtd.Text:=FormatFloat(mcasqtd, DM1.Tb_LGCCLQTD.AsFloat);
      end;
   end
else
   begin
   if DM1.Tb_LGCCLFILIAL.AsInteger>0 then
      edt_filial_saida.Text:=DM1.Tb_LGCCLFILIAL.AsString
   else
      edt_filial_saida.Text:=IntToStr(log_filial_padrao);
   edt_filial_saidaExit(self);
   edt_lote.Text:=DM1.Tb_LGCCLNUMERO.AsString;
   if valfloat(edt_qtd.Text)=0 then
      edt_qtd.Text:=FormatFloat(mcasqtd, DM1.Tb_LGCCLQTD.AsFloat);
   end;
edt_filial_entrada.SetFocus;
end;

procedure TFrm_Pro_Transf_Filial.edt_qtdExit(Sender: TObject);
begin
edt_qtd.Text:=FormatFloat(mcasqtd, ValFloat(edt_qtd.Text));
end;

procedure TFrm_Pro_Transf_Filial.bbGravarClick(Sender: TObject);
var
mDatav: String;
begin
if fsonumero(edt_codpro.Text)=0 then
   begin
   edt_codpro.SetFocus;
   exit;
   end;
if valfloat(edt_qtd.Text)<=0 then
   begin
   MessageDlg('Favor Digitar uma Quantidade Válida!',mtWarning,[mbOk],0);
   edt_qtd.SetFocus;
   exit;
   end;

if fsonumero(edt_filial_saida.Text)<=0 then
   begin
   MessageDlg('Favor Digitar uma filial de Saida Válida!',mtWarning,[mbOk],0);
   edt_filial_saida.SetFocus;
   exit;
   end;

if fsonumero(edt_filial_entrada.Text)<=0 then
   begin
   MessageDlg('Favor Digitar uma filial de entrada Válida!',mtWarning,[mbOk],0);
   edt_filial_entrada.SetFocus;
   exit;
   end;

if fsonumero(edt_filial_saida.Text)=fsonumero(edt_filial_entrada.Text) then
   begin
   MessageDlg('Transferencia Invalida Mesmo Local!',mtWarning,[mbOk],0);
   edt_filial_saida.SetFocus;
   exit;
   end;





if fsonumero(edt_codpro.Text)<>DM1.Tb_ProPDCODPRO.AsFloat then
   begin
   FMensagem('Produto não Cadastrado!',0,['0'],0);
   edt_codpro.SetFocus;
   exit;
   end;
flcadpar02(0,0,CodUsr,IntToStr(53));
if DM4.Tb_Par02PA2PDSN.Value = 'S' then
  begin
   mValidarSenha.pTipo:=0;
   mValidarSenha.pCodusr:=codusr;
   mValidarSenha.pCodSen:=53;
   mValidarSenha.pCodEmp:=0;
   mValidarSenha.pCodCli:=DM1.Tb_ProPDCODPRO.Value;
   mValidarSenha.pLotSeq:=0;
   mValidarSenha.pChave :=0;
   mValidarSenha.pOrdem :=0;
   mValidarSenha.pTexto :='Senha Transferir Mercadoridas';
   mValidarSenha.pChave_St:='';
   mValidarSenha.pDesc_requisitado :=0;

   if fValidaSenha(mValidarSenha)<>0 then
    begin
    fMensagem('Alteração não Aceita!',0,['0'],0);
    edt_codpro.SetFocus;
    exit;
    end;
  end;
mDatav:='';
if gb_lotes.Visible then
   begin
   if not flcadlgc(ValInt(edt_filial_saida.Text),1,0,edt_codpro.Text,edt_lote.Text,'') then
      begin
      FMensagem('Lote '+edt_lote.Text+'  nao cadastrado!',0,['0'],0);
      edt_lote.SetFocus;
      exit;
      end;
   mDatav:=FormatDatetime(fdt2, DM1.Tb_LGCCLDTVCTO.AsDateTime);
   if DM1.Tb_LGCCLQTD.AsFloat<ValFloat(edt_qtd.Text) then
      begin
      fmensagem('Não ha estoque no deposito suficiente para Transferir!'
               +#13+'Disponivel: '+FormatFloat(mcasqtd, DM1.Tb_LGCCLQTD.AsFloat),0,['0'],0);
      edt_codpro.SetFocus;
      exit;
      end;
   end
else
  begin
  flcadest(valint(edt_filial_saida.text),0,codemp,edt_codpro.text);
  if (DM1.Tb_Est.IsEmpty) or (DM1.Tb_EstCESALDO.AsFloat<0) then
     begin
     fmensagem('Não ha estoque no deposito suficiente para Transferir!'
                 +#13+'Estoque: '+FormatFloat(mcasqtd, DM1.Tb_EstCESALDO.AsFloat),0,['0'],0);
     edt_codpro.SetFocus;
     exit;
     end;
  end;


if not DM1.Tb_Aju.Active then
   begin
   DM1.Tb_Aju.Close;
   DM1.Tb_Aju.Sql.Clear;
   DM1.Tb_Aju.Sql.add('Select * from CADAJU where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADAJU',[]),'',' AJCODEMP=0'+IntToStr(codemp)+' and ')
                 +' AJSEQ=999999');
   DM1.Tb_Aju.Open;
   end;

DM1.Tb_Aju.Append;
DM1.Tb_AjuAJCODPRO.Value :=fsonumero(edt_codpro.Text);
DM1.Tb_AjuAJDATA.Value   :=pdatasis;
DM1.Tb_AjuAJFILIAL.Value :=ValInt(edt_filial_entrada.Text);
DM1.Tb_AjuAJQTD.Value    :=ValFloat(edt_qtd.Text);
DM1.Tb_AjuAJCODUSR.Value :=codusr;
DM1.Tb_AjuAJMOTIVO.Value :='Transferencia de '+edt_filial_saida.Text+'-'+edt_nome_filial_saida.Text+' p/'+edt_filial_entrada.Text+'-'+edt_nome_filial_entrada.Text;
DM1.Tb_AjuAJDATAREF.Value:=Date;
DM1.Tb_AjuAJLOTE.Value   :=edt_lote.Text;
DM1.Tb_AjuAJESTMOV.Value :=0;
DM1.Tb_AjuAJUSREXC.Value :=0;
DM1.Tb_AjuAJHOREXC.Value :=' ';
DM1.Tb_AjuAJDATEXC.Value :=pdatanula;
DM1.Tb_AjuAJLOCAL.Value  :=0;
// 0 - entrada normal                  1-saida normal
// 2-transferencia Sai prateleira Entra Deposito
// 3-sTransferencias Entra prateleira Sai Deposito
// 4-transferencia Sai Prateleira Entra Reparo
// 5-transferencia Sai Reparo Entra Prateleira Prateleira


if (gb_lotes.Visible) and (DM1.Tb_LGCCLDTVCTO.AsDateTime>pdatanula) then
   DM1.Tb_AjuAJDATAV.Value:=DM1.Tb_LGCCLDTVCTO.AsDateTime;
DM1.Tb_AjuAJTIPOM.Value  :=0;

DM1.Tb_Aju.Post;




fBaixarMercadorias(DM1.Tb_AjuAJCODEMP.Asinteger
         ,DM1.Tb_AjuAJFILIAL.asinteger
         ,0 // item
         ,02 // docori
         ,codusr
         ,0 //pcontesp
         ,Log_TipoProdPad //ptipoprod
         ,DM1.Tb_AjuAJSEQ.AsFloat
         ,DM1.Tb_AjuAJLOTSEQ.AsFloat
         ,DM1.Tb_AjuAJQTD.AsFloat
         ,DM1.Tb_AjuAJCODPRO.AsString
         ,iif(DM1.Tb_AjuAJTIPOM.AsInteger=0,'E','S') // estnor
         ,'N' // estreversado
         ,DM1.Tb_AJUAJLOTE.Asstring
         ,DM1.Tb_AJUAJDATAV.Value
         ,''
         ,''
         );


// saida
// entrada


DM1.Tb_Aju.Append;
DM1.Tb_AjuAJCODPRO.Value :=fsonumero(edt_codpro.Text);
DM1.Tb_AjuAJFILIAL.Value :=ValInt(edt_filial_saida.Text);
DM1.Tb_AjuAJDATA.Value   :=pdatasis;
DM1.Tb_AjuAJQTD.Value    :=ValFloat(edt_qtd.Text);
DM1.Tb_AjuAJCODUSR.Value :=codusr;
DM1.Tb_AjuAJMOTIVO.Value :='Transferencia de '+edt_filial_saida.Text+'-'+edt_nome_filial_saida.Text+' p/'+edt_filial_entrada.Text+'-'+edt_nome_filial_entrada.Text;
DM1.Tb_AjuAJDATAREF.Value:=Date;
DM1.Tb_AjuAJLOTE.Value   :=edt_lote.Text;
DM1.Tb_AjuAJESTMOV.Value :=0;
DM1.Tb_AjuAJUSREXC.Value :=0;
DM1.Tb_AjuAJHOREXC.Value :=' ';
DM1.Tb_AjuAJDATEXC.Value :=pdatanula;
DM1.Tb_AjuAJLOCAL.Value  := 1;
if (gb_lotes.Visible) and (DM1.Tb_LGCCLDTVCTO.AsDateTime>pdatanula) then
   DM1.Tb_AjuAJDATAV.Value:=DM1.Tb_LGCCLDTVCTO.AsDateTime;
DM1.Tb_AjuAJTIPOM.Value  :=1;

DM1.Tb_Aju.Post;



fBaixarMercadorias(DM1.Tb_AjuAJCODEMP.Asinteger
         ,DM1.Tb_AjuAJFILIAL.asinteger
         ,0 // item
         ,02 // docori
         ,codusr
         ,0 //pcontesp
         ,Log_TipoProdPad //ptipoprod
         ,DM1.Tb_AjuAJSEQ.AsFloat
         ,DM1.Tb_AjuAJLOTSEQ.AsFloat
         ,DM1.Tb_AjuAJQTD.AsFloat
         ,DM1.Tb_AjuAJCODPRO.AsString
         ,iif(DM1.Tb_AjuAJTIPOM.AsInteger=0,'E','S') // estnor
         ,'N' // estreversado
         ,DM1.Tb_AjuAJLOTE.Asstring
         ,DM1.Tb_AjuAJDATAV.Value
         ,''
         ,''
         );


if not mem_cadpro_transf.Active then
   mem_cadpro_transf.Open;
mem_cadpro_transf.Append;
mem_cadpro_transfce_codemp.Value    :=codemp;
mem_cadpro_transfce_nompro.Value    :=edt_descricao.Text;
mem_cadpro_transfce_filial_ent_nome.Value:=edt_filial_entrada.Text+'-'+edt_nome_filial_entrada.Text;
mem_cadpro_transfce_filial_ent.Value:=ValInt(edt_filial_entrada.Text);

mem_cadpro_transfce_filial_sai_nome.Value:=edt_filial_saida.Text+'-'+edt_nome_filial_saida.Text;
mem_cadpro_transfce_filial_saida.Value:=ValInt(edt_filial_saida.Text);

mem_cadpro_transfce_lote.Value      :=edt_lote.Text;
mem_cadpro_transfce_qtd.Value       :=ValFloat(edt_qtd.Text);
mem_cadpro_transfce_codpro.Value    :=valfloat(edt_codpro.Text);
mem_cadpro_transf.Post;
edt_codpro.Clear;
edt_descricao.Clear;
{
edt_filial_saida.Clear;
edt_nome_filial_saida.Clear;

edt_filial_entrada.Clear;
edt_nome_filial_entrada.Clear;
}
edt_lote.Clear;
edt_qtd.Clear;

edt_codpro.SetFocus;




end;

procedure TFrm_Pro_Transf_Filial.FormCreate(Sender: TObject);
begin

if Log_TipoLote=1 then
   begin
   gb_lotes.Visible:=true;
   end
else
   begin
   gb_lotes.Visible:=false;
   end;

end;

procedure TFrm_Pro_Transf_Filial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.

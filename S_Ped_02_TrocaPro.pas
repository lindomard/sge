unit S_Ped_02_TrocaPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, RxMemDS, Mask, ToolEdit, CurrEdit, Grids, DBGrids,
  Menus, Buttons;

type
  TFrm_Ped_02_TrocaPro = class(TForm)
    GB_PRODFAT: TGroupBox;
    st_codpro: TStaticText;
    st_descricao: TStaticText;
    st_quantidade: TStaticText;
    st_pcounit: TStaticText;
    st_vltotal: TStaticText;
    txt_codpro: TStaticText;
    txt_descricao: TStaticText;
    txt_quantidade: TStaticText;
    txt_pcounit: TStaticText;
    txt_vltotal: TStaticText;
    gb_enviadas: TGroupBox;
    stEnv_codpro: TStaticText;
    stEnv_descricao: TStaticText;
    stEnv_quantidade: TStaticText;
    stEnv_pcounit: TStaticText;
    stEnv_vltotal: TStaticText;
    TxtEnv_codpro: TEdit;
    TxtEnv_descricao: TEdit;
    TxtEnv_quantidade: TCurrencyEdit;
    TxtEnv_pcounit: TCurrencyEdit;
    TxtEnv_vltotal: TCurrencyEdit;
    mem_cadp02_trocas: TRxMemoryData;
    mem_cadp02_trocasP2TRO_CODEMP: TFloatField;
    mem_cadp02_trocasP2TRO_ITEM: TFloatField;
    mem_cadp02_trocasP2TRO_CODPRO_ENTRA: TFloatField;
    mem_cadp02_trocasP2TRO_QTD_ENTRA: TFloatField;
    mem_cadp02_trocasP2TRO_CODPRO_SAIDA: TFloatField;
    mem_cadp02_trocasP2TRO_QTD_SAIDA: TFloatField;
    mem_cadp02_trocasNOMPRO_ENTRA: TStringField;
    mem_cadp02_trocasNOMPRO_SAIDA: TStringField;
    mem_cadp02_trocasvltotal_entra: TFloatField;
    mem_cadp02_trocasvltotal_saida: TFloatField;
    src_cadp02_trocas: TDataSource;
    DBGrid_trocas: TDBGrid;
    mem_cadp02_trocasP2TRO_PCOUNI_ENTRA: TFloatField;
    mem_cadp02_trocasP2TRO_PCOUNI_SAIDA: TFloatField;
    pop_gridtrocas: TPopupMenu;
    ExcluirTrocas: TMenuItem;
    gb_totais: TGroupBox;
    mem_cadp02_trocasP2TRO_LOTE_ENTRA: TStringField;
    mem_cadp02_trocasP2TRO_LOTE_SAIDA: TStringField;
    txt_lote: TStaticText;
    st_lote: TStaticText;
    stEnv_Lote: TStaticText;
    TxtEnv_Lote: TEdit;
    bbGravarItem: TBitBtn;
    mem_cadp02_trocasP2TRO_DTVCTO_ENTRA: TDateTimeField;
    mem_cadp02_trocasP2TRO_DTVCTO_SAIDA: TDateTimeField;
    Label1: TLabel;
    txtSai_QtdItens: TEdit;
    txtEnv_dtvcto: TMaskEdit;
    mem_cadp02_trocasP2TRO_LOCAL: TIntegerField;
    txt_dtvcto: TStaticText;
    txtSai_TotBru: TEdit;
    RxMemoryData1: TRxMemoryData;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    bbSair: TBitBtn;
    procedure TxtEnv_codproKeyPress(Sender: TObject; var Key: Char);
    procedure TxtEnv_codproExit(Sender: TObject);
    procedure TxtEnv_quantidadeExit(Sender: TObject);
    procedure ExcluirTrocasClick(Sender: TObject);
    procedure bbGravarItemClick(Sender: TObject);
    procedure TxtEnv_LoteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TxtEnv_LoteExit(Sender: TObject);
    procedure TxtEnv_pcounitExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid_trocasDblClick(Sender: TObject);
    procedure mem_cadp02_trocasFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
  private
    { Private declarations }
    function FTrocaProExibirtotais(pTipo: Integer): boolean;

  public
    { Public declarations }
  end;

var
  Frm_Ped_02_TrocaPro: TFrm_Ped_02_TrocaPro;
  mTrocaProItens_Oper: Integer=0;
  mPosRegTrocaPro_Prod: TBookmark;
  mTrocasTotBru: Real=0;
implementation

uses S_DM1, Func, S_Ped_02, lerarq, func_excecoes, S_ConsLot;

{$R *.dfm}

procedure TFrm_Ped_02_TrocaPro.TxtEnv_codproKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      TxtEnv_codpro.Text := fChamaPro(2,'frm_ped_02_trocapro',key)
   else if (valint(copy(mpseg,4,2))=2) then
      TxtEnv_codpro.Text := fChamaPro(0,'frm_ped_02_trocapro',key)
   else
      TxtEnv_codpro.Text:=fChamaPro(0,'frm_ped_02_trocapro',key);
   key:=#0;
   TxtEnv_codproExit(Self);
   end
else
   begin
   if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
   end;

end;

procedure TFrm_Ped_02_TrocaPro.TxtEnv_codproExit(Sender: TObject);
begin
TxtEnv_codpro.Text:=fdeixanum2(TxtEnv_codpro.Text);
if (  (Trim(TxtEnv_codpro.Text) ='') and ( (TxtEnv_quantidade.focused) OR (TxtEnv_Lote.Focused) ) )   then
   begin
   TxtEnv_codpro.Setfocus;
   exit;
   end;

if Trim(TxtEnv_codpro.Text)='' then
   exit
else 
   begin
   if not flcadpro(1,0,0,TxtEnv_codpro.Text) then
      begin
      fmensagem('Código de Produto Invalido!',0,['0'],0);
      TxtEnv_codpro.SetFocus;
      exit;
      end;
   end;

TxtEnv_descricao.Text:=DM1.Tb_ProPDNOME.AsString;
TxtEnv_pcounit.Value  :=DM1.Tb_Propcoven.AsFloat;
if (fsonumero(TxtEnv_codpro.text)=fSonumero(txt_codpro.Caption)) then
   begin
   fmensagem('Troca Invalida!, mesmo codigo de produto!',0,['0'],0);
   TxtEnv_codpro.SetFocus;
   end
else
   TxtEnv_pcounitExit(self);

end;

procedure TFrm_Ped_02_TrocaPro.TxtEnv_quantidadeExit(Sender: TObject);
var
  xQtde: Real;

begin

if fdeixanum2(TxtEnv_codpro.Text)='' then
   begin
   if not mpd_RestaurandoPedido then
      TxtEnv_codpro.SetFocus;
   exit;
   end;


if TxtEnv_codpro.Focused then
   exit;
// inicio
xQtde := 0;
xQtde := TxtEnv_quantidade.Value;

if (not DM1.Tb_Pro.Active) or (DM1.Tb_ProPDCODPRO.AsFloat<>valFloat(TxtEnv_codpro.Text)) then
   flcadpro(1,0,0,fdeixanum(TxtEnv_codpro.Text));
if not mpd_RestaurandoPedido then
   begin
   if not mPd_FaturandoPedido then
      begin
      if (DM1.Tb_ProPDFRACAO.Value<>1) then
         begin
         if Trunc(xQtde)<>xQtde then
            begin
            fMensagem('Não é permitido fracionar este produto!',0,['0'],0);
            TxtEnv_quantidade.SetFocus;
            exit;
            end;
         end;
      if (DM1.Tb_ProPDUNDVDA.AsFloat<>0) then
         begin
         if fsonumero(FloatToStr(xQtde/DM1.Tb_ProPDUNDVDA.Value))<>
            (xQtde/DM1.Tb_ProPDUNDVDA.Value) then
            begin
            fMensagem('Não é uma quantidade válida! multipla de '+floatToStr(DM1.Tb_ProPDUNDVDA.Value)+#13
                     +' Quantidade Proxima: '+FloatToStr(
                    round(xQtde/DM1.Tb_ProPDUNDVDA.Value)*DM1.Tb_ProPDUNDVDA.value)
                   ,0,['0'],0);
            abort;
            exit;
            end;
         end;
      end;
   // INICIO

   if (mPd_SaiNor) then
      begin
      if (trim(TxtEnv_codpro.Text)<>'') and (xQtde>0) then
         begin
         mdtv:='';
         if (valint(copy(mpseg,4,2))=1) and (trim(mdtv)='') and (trim(TxtEnv_Lote.text)='') then
            mpd_Estoque := fRetornaEstoque(0,txtEnv_codpro.text,txtEnv_lote.Text,mdtv,
                                     mPd_SaiNor,mPd_SaiCons,mPd_SaiTerc,mPd_SaiRVenda)
         else
            mpd_Estoque := fRetornaEstoque(valint(copy(mpseg,4,2)),TxtEnv_codpro.Text,txtEnv_lote.Text,mdtv,
                                      mPd_SaiNor,mPd_SaiCons,mPd_SaiTerc,mPd_SaiRVenda);
         if (mpd_Estoque[0] < xQtde) then
            begin
            if mPed_Par_FatMz  then
               begin
               end
            else
               begin
               if not mPd_FaturandoPedido then
                  begin
                  fmensagem('Quantidade Pedida Maior que Estoque. Estoque: '+FormatFloat(mcasas, mpd_estoque[0])
                     +' Prateleira: '+FormatFloat(mcasas, mpd_estoque[1])
                    +' Deposito: '+FormatFloat(mcasas, mpd_estoque[2]),0,['0'],0);
                  end;
               txtEnv_quantidade.Text:=FormatFloat(mcasqtd, mpd_Estoque[0]);
               if not mPd_FaturandoPedido then
                  begin
                  if mpd_estoque[0]<=0 then
                     txtEnv_codpro.Setfocus
                  else
                     txtEnv_quantidade.SetFocus;
                  end;
               Exit;
               end;
            end;
         if not mPed_Par_FatMz_LocMov then
            begin
            if (mpd_Estoque[1+frm_ped_02.cb_local.ItemIndex] < xQtde) then
               begin
               if not mPd_FaturandoPedido then
                  begin
                  fmensagem('Quantidade Pedida Maior que Estoque. Estoque: '+FormatFloat(mcasas, mpd_estoque[0])
                        +' Prateleira: '+FormatFloat(mcasas, mpd_estoque[1])
                        +' Deposito: '+FormatFloat(mcasas, mpd_estoque[2]),0,['0'],0);
                  txtEnv_quantidade.SetFocus;
                  end;
               txtEnv_quantidade.Value:=0;
               Exit;
               end;
            end;
         end;
      end;
   if mPd_SaiNor then
      begin
      if (DM1.Tb_ProPDVDAMAXM.Value>0)   then
         begin
         DM1.Query1.Close;
         DM1.Query1.SQL.clear;
         DM1.Query1.SQL.Add('Select sum(P2QTD) as quant from '
                           +' CADP02,CADP01 where P1STATUS<>9 and '
                           +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+InttoStr(codemp)+' and P1CODEMP=P2CODEMP and ')
                           +' P2LOTSEQ=0'+IntToStr(mPd_LotSeq)+' and '
                           +' P1LOTSEQ=P2LOTSEQ '
                           +' and P1CHAVE=P2CHAVE and P1ORDEM=P2ORDEM '
                           +' and P2CODPRO=0'+DM1.Tb_ProPDCODPRO.AsString
                           +' and P1CODCLI=0'+floatToStr(mPed_Cli_CodCli)
                           +' and P1TIPO=1 '
                           +' and P1DATAP>='+chr(39)+FormatDateTime(fdt,StrToDate('01/'+FormatDateTime('mm/yyyy',pdatasis)))+chr(39)
                           +' and P1DATAP<='+chr(39)+FormatDateTime(fdt, fdatafinal(0,pdatasis))+chr(39));
         if mPd_Oper_Ped=1 then
            begin
            DM1.Query1.SQL.add(' and P1CHAVE<>0'+Trim(frm_ped_02.edt_chave.Text));
            end;
         dm1.Query1.Open;
         if (DM1.Query1.Fields[0].AsFloat+mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat)>DM1.Tb_ProPDVDAMAXM.Value then
            begin
            if not mPd_FaturandoPedido then
               begin
               fmensagem('Quantidade Máxima no mes permitida: '+FormatFloat(mcasqtd, DM1.Tb_ProPDVDAMAXM.AsFloat)
                     +iif(DM1.Query1.Fields[0].AsFloat>0,' Ja  Atendida: '+FormatFloat(mcasqtd, DM1.Query1.Fields[0].AsFloat),'')
                     +'. Invalido!',0,['0'],0);
               end;
            txtEnv_quantidade.Value:=DM1.Tb_ProPDVDAMAXM.AsFloat-DM1.Query1.Fields[0].AsFloat;
            abort;
            exit;
            end;
         end;
      end;
   end;


if (mPd_Venda_Devol=1) and (not frm_ped_02.CB_PEDORI.Checked) and (not frm_ped_02.Tb_DevCli.IsEmpty) then
   begin
   xQtde:=fMaiorDevol(0,txtEnv_codpro.Text,txtEnv_lote.Text,'');
   if txtEnv_quantidade.Value>xQtde then
      begin
      fMensagem('Quantidade Máxima permitida: '
               +FormatFloat(mcasqtd, xqtde)
               ,0,['0'],0);
      txtEnv_Quantidade.Value:=xqtde;
      txtEnv_quantidade.SetFocus;
      exit;
      end;
   //termino se devolução
   end;


TxtEnv_vltotal.Value := Arredonda(( txtEnv_pcounit.Value * txtEnv_quantidade.Value), DM1.Tb_PargerPCASAS.Asinteger) ;


//bbGravarItemClick(self);
//TERMINO

// termino






end;

procedure TFrm_Ped_02_TrocaPro.ExcluirTrocasClick(Sender: TObject);
var
mDeletaItem:Boolean;
begin
if fmensagem('Deseja Excluir o Item Selecionado?',0,['1','2'],0)<>mrYes then
   exit;

if mPd_SaiTerc then
   begin
   flbaiest_Nov(0,0,3,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,'frm_Ped_02',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat);
   end;

if mPd_SaiRVenda then
   begin
   flbaiest_Nov(0,0,2,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,'frm_Ped_02',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat);
   end;

if mPd_SaiCons then
   begin
   flbaiest_Nov(0,0,1,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,'frm_Ped_02',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat);
   end;

if mPd_SaiNor then
   begin
   flbaiest_Nov(0,0,0,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,'frm_Ped_02',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat);

   end;

if mPd_EntraTerc then
   begin
   flbaiest_Nov(0,1,3,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,'frm_Ped_02',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat);
   end;

if mPd_EntraRVenda then
   begin
   flbaiest_Nov(0,1,2,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,'frm_Ped_02',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat);
   end;

if mPd_EntraCons then
   begin
   flbaiest_Nov(0,1,1,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,'frm_Ped_02',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat);
   end;
if mPd_EntraNor then
   begin
   flbaiest_Nov(0,1,0,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,'frm_Ped_02',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat);
   end;

// INICIO SE FOR ALTERACAO DE PEDIDO

mDeletaItem:=true;
if mPd_Oper_Ped=1 then
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('SELECT count(*) as QTD FROM CADP02_TROCAS_TEMP WHERE ');
   DM1.query1.SQL.add('  P2TRO_TERM=:P2TRO_TERM');
   DM1.query1.SQL.add(' and P2TRO_DATHOR=:P2TRO_DATHOR');
   DM1.query1.SQL.add(' and P2TRO_CODPRO_ENTRA=:P2TRO_CODPRO_ENTRA');
   DM1.query1.SQL.add(' and P2TRO_LOTE_ENTRA=:P2TRO_LOTE_ENTRA');
   DM1.query1.SQL.add(' and P2TRO_CODPRO_SAIDA=:P2TRO_CODPRO_SAIDA');
   DM1.query1.SQL.add(' and P2TRO_LOTE_SAIDA=:P2TRO_LOTE_SAIDA');
   DM1.query1.SQL.add(' and P2TRO_TIPO_EVE=0');
   DM1.Query1.ParamByName('P2TRO_TERM').AsString      := mPd_NomeComputador;
   DM1.Query1.ParamByName('P2TRO_DATHOR').AsDateTime  := mPd_DatHor_Eve;
   DM1.Query1.ParamByName('P2TRO_CODPRO_ENTRA').Value := mem_cadp02_trocasP2TRO_CODPRO_ENTRA.AsFloat;
   DM1.Query1.ParamByName('P2TRO_LOTE_ENTRA').Value   := mem_cadp02_trocasP2TRO_LOTE_ENTRA.Value;
   DM1.Query1.ParamByName('P2TRO_CODPRO_SAIDA').Value := mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsFloat;
   DM1.Query1.ParamByName('P2TRO_LOTE_SAIDA').Value   := mem_cadp02_trocasP2TRO_LOTE_SAIDA.Value;

   DM1.Query1.Open;
   if DM1.Query1.Fields[0].AsInteger<=0 then
      begin
      mDeletaItem:=false;

      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add(' INSERT INTO CADP02_TROCAS_TEMP (  '
                        +' P2TRO_CODEMP'
                        +',P2TRO_ITEM'
                        +',P2TRO_CODPRO_ENTRA'
                        +',P2TRO_LOTE_ENTRA'
                        +',P2TRO_DTVCTO_ENTRA'
                        +',P2TRO_QTD_ENTRA'
                        +',P2TRO_PCOUNI_ENTRA'
                        +',P2TRO_CODPRO_SAIDA'
                        +',P2TRO_LOTE_SAIDA'
                        +',P2TRO_DTVCTO_SAIDA'
                        +',P2TRO_QTD_SAIDA'
                        +',P2TRO_PCOUNI_SAIDA'

                        +', P2TRO_TERM                '
                        +', P2TRO_DATHOR                '
                        +', P2TRO_CODUSR                '
                        +', P2TRO_TIPO_EVE '

                        +') VALUES(                   '
                        +' :P2TRO_CODEMP'
                        +',:P2TRO_ITEM'
                        +',:P2TRO_CODPRO_ENTRA'
                        +',:P2TRO_LOTE_ENTRA'
                        +',:P2TRO_DTVCTO_ENTRA'
                        +',:P2TRO_QTD_ENTRA'
                        +',:P2TRO_PCOUNI_ENTRA'
                        +',:P2TRO_CODPRO_SAIDA'
                        +',:P2TRO_LOTE_SAIDA'
                        +',:P2TRO_DTVCTO_SAIDA'
                        +',:P2TRO_QTD_SAIDA'
                        +',:P2TRO_PCOUNI_SAIDA'

                        +',:P2TRO_TERM                '
                        +',:P2TRO_DATHOR                '
                        +',:P2TRO_CODUSR                '
                        +',:P2TRO_TIPO_EVE '

                        + '   )                ');
      DM1.Query2.ParamByName('P2TRO_CODEMP').Value       := codemp;
      DM1.Query2.ParamByName('P2TRO_ITEM').AsInteger     := mem_cadp02_trocasP2TRO_ITEM.AsInteger;
      DM1.Query2.ParamByName('P2TRO_CODPRO_ENTRA').Value := mem_cadp02_trocasP2TRO_CODPRO_ENTRA.AsFloat;
      DM1.Query2.ParamByName('P2TRO_LOTE_ENTRA').Value   := mem_cadp02_trocasP2TRO_LOTE_ENTRA.Value;
      DM1.Query2.ParamByName('P2TRO_DTVCTO_ENTRA').Value := mem_cadp02_trocasP2TRO_DTVCTO_ENTRA.Value;
      DM1.Query2.ParamByName('P2TRO_QTD_ENTRA').Value    := mem_cadp02_trocasP2TRO_QTD_ENTRA.AsFloat;
      DM1.Query2.ParamByName('P2TRO_PCOUNI_ENTRA').Value := mem_cadp02_trocasP2TRO_PCOUNI_ENTRA.AsFloat;

      DM1.Query2.ParamByName('P2TRO_CODPRO_SAIDA').Value := mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsFloat;
      DM1.Query2.ParamByName('P2TRO_LOTE_SAIDA').Value   := mem_cadp02_trocasP2TRO_LOTE_SAIDA.Value;
      DM1.Query2.ParamByName('P2TRO_DTVCTO_SAIDA').Value := mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.Value;
      DM1.Query2.ParamByName('P2TRO_QTD_SAIDA').Value    := mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat;
      DM1.Query2.ParamByName('P2TRO_PCOUNI_SAIDA').Value := mem_cadp02_trocasP2TRO_PCOUNI_SAIDA.AsFloat;

      DM1.Query2.ParamByName('P2TRO_TERM').AsString      := mPd_NomeComputador;
      DM1.Query2.ParamByName('P2TRO_DATHOR').AsDateTime  := mPd_DatHor_Eve;
      DM1.Query2.ParamByName('P2TRO_CODUSR').Value      := codusr;
      DM1.Query2.ParamByName('P2TRO_TIPO_EVE').Value     := 2; // exclusao somente quando alteração

      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query2,23572,'Frm_Ped_02','CADP02_TPRO');
         end;
      end;

   end;

//TERMINO

if mDeletaItem then
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;

   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('DELETE FROM CADP02_TROCAS_TEMP WHERE ');
   DM1.query1.SQL.add('  P2TRO_TERM=:P2TRO_TERM');
   DM1.query1.SQL.add(' and P2TRO_DATHOR=:P2TRO_DATHOR');
   DM1.query1.SQL.add(' and P2TRO_CODPRO_ENTRA=:P2TRO_CODPRO_ENTRA');
   DM1.query1.SQL.add(' and P2TRO_LOTE_ENTRA=:P2TRO_LOTE_ENTRA');
   DM1.query1.SQL.add(' and P2TRO_CODPRO_SAIDA=:P2TRO_CODPRO_SAIDA');
   DM1.query1.SQL.add(' and P2TRO_LOTE_SAIDA=:P2TRO_LOTE_SAIDA');
   DM1.query1.SQL.add(' and P2TRO_TIPO_EVE=0');
   DM1.Query1.ParamByName('P2TRO_TERM').AsString      := mPd_NomeComputador;
   DM1.Query1.ParamByName('P2TRO_DATHOR').AsDateTime  := mPd_DatHor_Eve;
   DM1.Query1.ParamByName('P2TRO_CODPRO_ENTRA').Value := mem_cadp02_trocasP2TRO_CODPRO_ENTRA.AsFloat;
   DM1.Query1.ParamByName('P2TRO_LOTE_ENTRA').Value   := mem_cadp02_trocasP2TRO_LOTE_ENTRA.Value;
   DM1.Query1.ParamByName('P2TRO_CODPRO_SAIDA').Value := mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsFloat;
   DM1.Query1.ParamByName('P2TRO_LOTE_SAIDA').Value   := mem_cadp02_trocasP2TRO_LOTE_SAIDA.Value;
   DM1.query1.SQL.add(' and P2TRO_TIPO_EVE=0');
   try
      DM1.Query1.ExecSQL;
      fDM1StartCommit;
   except
      ex_erroSql_Novo(DM1.Query1,16937,'Frm_Ped_02','CADP01');
      end;
   end;
mem_cadp02_trocas.Delete;

mTrocaProItens_Oper :=0;
mPosRegTrocaPro_Prod:=nil;


end;

procedure TFrm_Ped_02_TrocaPro.bbGravarItemClick(Sender: TObject);
var
  x_falta: Real;
  x_baixa: Real;

  mProcura_lote: Boolean;
  mLote_Sel: String;
  mItemTroca: Integer;

begin

if fdeixanum2(TxtEnv_codpro.Text)='' then
   begin
   if not mpd_RestaurandoPedido then
      TxtEnv_codpro.SetFocus;
   exit;
   end;
if not mem_cadp02_trocas.Active then
   mem_cadp02_trocas.Open;



if (not DM1.Tb_Pro.Active) or
   (valfloat(TxtEnv_codpro.Text)<>DM1.Tb_ProPDCODPRO.AsFloat) then
   begin
   if not  flcadpro(1,0,0,trim(TxtEnv_codpro.Text)) then
      begin
      fmensagem('Código do Produto Invalido!',0,['0'],0);
      TxtEnv_codpro.SetFocus;
      exit;
      end;
   end;

TxtEnv_quantidadeExit(Self);
if TxtEnv_quantidade.Value<=0 then
   begin
   fmensagem('Favor Digitar uma Quantidade válida!',0,['0'],0);
   TxtEnv_quantidade.SetFocus;
   exit;
   end;
if mTrocaProItens_Oper=0 then
   mem_cadp02_trocas.First;

mProcura_lote:=false;

if not mpd_RestaurandoPedido then
   begin
   if TxtEnv_pcounit.Value<0 then
      begin
      fmensagem('Preço do Produto inválido!',0,['0'],0);
      TxtEnv_pcounit.SetFocus;
      exit;
      end
   end;



if not mpd_RestaurandoPedido then
   begin
   if mPd_MovEstoque=1 then  // baixa
      begin
      if (valint(copy(mpseg,4,2))=1) then
         begin
         if (trim(TxtEnv_Lote.Text)='') then
            mLote_Sel:=''
         else
            mLote_Sel:=TxtEnv_Lote.text;
         end;
        mProcura_lote:=true;
      end;


   if (mTrocaProItens_Oper=1) and (mPd_MovEstoque<2) then
      begin
      if mPosRegTrocaPro_Prod<>nil then
         mem_cadp02_trocas.GotoBookmark(mPosRegTrocaPro_Prod);
      if mPd_SaiTerc then
         begin
         flbaiest_Nov(0,0,3,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,'frm_pedidos_02',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat);
         if valint(copy(mpseg,4,2))>0 then
            begin
            if mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.AsDateTime<=pdatanula then
               flbailgc_Novo(0,0,3,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,
                     mem_cadp02_trocasP2TRO_LOTE_SAIDA.AsString,'','','',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat)
            else
               flbailgc_Novo(0,0,3,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,
                     mem_cadp02_trocasP2TRO_LOTE_SAIDA.AsString,FormatDateTime(fdt2, mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.AsDateTime),'','',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat)
            end;
         end;
      if mPd_SaiRVenda then
         begin
         flbaiest_Nov(0,0,2,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,'frm_pedidos_02',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat);
         if valint(copy(mpseg,4,2))>0 then
            begin
            if mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.AsDateTime<=pdatanula then
               flbailgc_Novo(0,0,2,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,
                     mem_cadp02_trocasP2TRO_LOTE_SAIDA.AsString,'','','',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat)
            else
               flbailgc_Novo(0,0,2,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,
                     mem_cadp02_trocasP2TRO_LOTE_SAIDA.AsString,FormatDateTime(fdt2, mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.AsDateTime),'','',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat)
            end;
         end;

      if mPd_SaiCons then
         begin
         flbaiest_Nov(0,0,1,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,'frm_pedidos_02',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat);
         if valint(copy(mpseg,4,2))>0 then
            begin
            if mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.AsDateTime<=pdatanula then
               flbailgc_Novo(0,0,1,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,
                     mem_cadp02_trocasP2TRO_LOTE_SAIDA.AsString,'','','',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat)
            else
               flbailgc_Novo(0,0,1,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,
                     mem_cadp02_trocasP2TRO_LOTE_SAIDA.AsString,FormatDateTime(fdt2, mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.AsDateTime),'','',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat)
            end;

         end;

      if mPd_SaiNor then
         begin
         flbaiest_Nov(0,0,0,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,'frm_pedidos_02',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat);
         if valint(copy(mpseg,4,2))>0 then
            begin
            if mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.AsDateTime<=pdatanula then
               flbailgc_Novo(0,0,0,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,
                     mem_cadp02_trocasP2TRO_LOTE_SAIDA.AsString,'','','',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat)
            else
               flbailgc_Novo(0,0,0,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,
                     mem_cadp02_trocasP2TRO_LOTE_SAIDA.AsString,FormatDateTime(fdt2, mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.AsDateTime),'','',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat)
            end;
         end;


      if mPd_EntraTerc then
         begin
         flbaiest_Nov(0,1,3,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,'frm_pedidos_02',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat);
         if valint(copy(mpseg,4,2))>0 then
            begin
            if mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.AsDateTime<=pdatanula then
               flbailgc_Novo(0,1,3,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,
                     mem_cadp02_trocasP2TRO_LOTE_SAIDA.AsString,'','','',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat)
            else
               flbailgc_Novo(0,1,3,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,
                     mem_cadp02_trocasP2TRO_LOTE_SAIDA.AsString,FormatDateTime(fdt2, mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.AsDateTime),'','',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat)
            end;
         end;

      if mPd_EntraRVenda then
         begin

         flbaiest_Nov(0,1,2,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,'frm_pedidos_02',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat);
         if valint(copy(mpseg,4,2))>0 then
            begin
            if mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.AsDateTime<=pdatanula then
               flbailgc_Novo(0,1,2,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,
                     mem_cadp02_trocasP2TRO_LOTE_SAIDA.AsString,'','','',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat)
            else
               flbailgc_Novo(0,1,2,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,
                     mem_cadp02_trocasP2TRO_LOTE_SAIDA.AsString,FormatDateTime(fdt2, mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.AsDateTime),'','',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat)
            end;

         end;

      if mPd_EntraCons then
         begin
         flbaiest_Nov(0,1,1,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,'frm_pedidos_02',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat);
         if valint(copy(mpseg,4,2))>0 then
            begin
            if mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.AsDateTime<=pdatanula then
               flbailgc_Novo(0,1,1,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,
                     mem_cadp02_trocasP2TRO_LOTE_SAIDA.AsString,'','','',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat)
            else
               flbailgc_Novo(0,1,1,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,
                     mem_cadp02_trocasP2TRO_LOTE_SAIDA.AsString,FormatDateTime(fdt2, mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.AsDateTime),'','',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat)
            end;
         end;

      if mPd_EntraNor then
         begin
         flbaiest_Nov(0,1,0,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,'frm_pedidos_02',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat);
         if valint(copy(mpseg,4,2))>0 then
            begin
            if mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.AsDateTime<=pdatanula then
               flbailgc_Novo(0,1,0,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,
                     mem_cadp02_trocasP2TRO_LOTE_SAIDA.AsString,'','','',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat)
            else
               flbailgc_Novo(0,1,0,codemp,mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString,
                     mem_cadp02_trocasP2TRO_LOTE_SAIDA.AsString,FormatDateTime(fdt2, mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.AsDateTime),'','',mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat)
            end;
         end;
      end;
   end;
// INICIO

if mTrocaProItens_Oper=1 then
   mItemTroca:=mem_cadp02_trocasP2TRO_ITEM.AsInteger
else
   mItemTroca:=mem_cadp02_trocas.RecordCount+1;
x_falta:=TxtEnv_quantidade.Value;

While x_falta > 0 do
   begin
   if mpd_RestaurandoPedido then
      begin
      mem_cadp02_trocas.Insert;
      txtSai_QtdItens.Text  := InttoStr(mem_cadp02_trocas.RecordCount);
      x_falta:=0;
      end
   else
      begin
      if not mPd_Incluiu_Pedido then
         fAtualizaPedidoTemp(0)
      else
         fAtualizaPedidoTemp(1);
      if (mPd_MovEstoque=1) and (mProcura_lote) then  // baixa
         begin
         if flcadlgc(0,0,TxtEnv_codpro.Text,' ',' ') then
            begin
            While not DM1.Tb_LGC.Eof do
               begin
               if mlote_sel<>'' then
                  begin
                  if mLote_Sel<>DM1.Tb_LGCCLNUMERO.Asstring then
                     begin
                     DM1.Tb_LGC.Next;
                     Continue;
                     end;
                  end;
               if DM1.Tb_LGCCLDTVCTO.AsdateTime<=pdatanula then
                  mdtv:=''
               else
                  mdtv:=FormatDateTime(fdt2, DM1.Tb_LGCCLDTVCTO.AsdateTime);
               mpd_Estoque := fRetornaEstoque(valint(copy(mpseg,4,2)),TxtEnv_codpro.Text,DM1.Tb_LGCCLNUMERO.Asstring ,mdtv,
                                     mPd_SaiNor,mPd_SaiCons,mPd_SaiTerc,mPd_SaiRVenda);
               if (mpd_Estoque[0])>0 then
                  begin
                  if mpd_Estoque[0]>=x_falta then
                     TxtEnv_quantidade.Value:=x_falta
                  else
                     TxtEnv_quantidade.Value:=mpd_estoque[0];
                  TxtEnv_quantidadeExit(self);
                  x_falta:=x_falta-TxtEnv_quantidade.Value;
                  TxtEnv_Lote.Text:=DM1.Tb_LGCCLNUMERO.AsString;
                  if (DM1.Tb_LGCCLDTVCTO.IsNull) or (DM1.Tb_LGCCLDTVCTO.AsDateTime<=pdatanula) then
                     txtEnv_dtvcto.Text:='/  /'
                  else
                     txtEnv_dtvcto.Text:=FormatDateTime(fdt2, DM1.Tb_LGCCLDTVCTO.AsDateTime);
                  break;
                  end;
               DM1.Tb_LGC.Next;
               if (DM1.Tb_LGC.Eof) and (mPed_Par_FatMz) then
                  begin
                  TxtEnv_quantidade.Value:=x_falta;
                  x_falta:=x_falta-TxtEnv_quantidade.Value;
                  TxtEnv_pcounitExit(self);
                  TxtEnv_Lote.Text:='';
                  txtEnv_dtvcto.Text:='/  /'
                  end;
               end;
            end
         else if (mPed_Par_FatMz) then
            begin
            TxtEnv_quantidade.Value:=x_falta;
            x_falta:=x_falta-TxtEnv_quantidade.Value;
            TxtEnv_pcounitExit(self);
            TxtEnv_Lote.Text:='';
            txtEnv_dtvcto.Text:='/  /';
            end;
         end
      else
         x_falta:=0;

      if mTrocaProItens_Oper = 0 then
         begin
         mem_cadp02_trocas.Insert;
         txtSai_QtdItens.Text  := IntTostr(mItemTroca);

         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add(' INSERT INTO CADP02_TROCAS_TEMP (  '
                           +' P2TRO_CODEMP'
                           +',P2TRO_ITEM'
                           +',P2TRO_CODPRO_ENTRA'
                           +',P2TRO_LOTE_ENTRA'
                           +',P2TRO_DTVCTO_ENTRA'
                           +',P2TRO_QTD_ENTRA'
                           +',P2TRO_PCOUNI_ENTRA'
                           +',P2TRO_CODPRO_SAIDA'
                           +',P2TRO_LOTE_SAIDA'
                           +',P2TRO_DTVCTO_SAIDA'
                           +',P2TRO_QTD_SAIDA'
                           +',P2TRO_PCOUNI_SAIDA'

                           +', P2TRO_TERM                '
                           +', P2TRO_DATHOR                '
                           +', P2TRO_CODUSR                '
                           +', P2TRO_TIPO_EVE '

                           +') VALUES(                   '
                           +' :P2TRO_CODEMP'
                           +',:P2TRO_ITEM'
                           +',:P2TRO_CODPRO_ENTRA'
                           +',:P2TRO_LOTE_ENTRA'
                           +',:P2TRO_DTVCTO_ENTRA'
                           +',:P2TRO_QTD_ENTRA'
                           +',:P2TRO_PCOUNI_ENTRA'
                           +',:P2TRO_CODPRO_SAIDA'
                           +',:P2TRO_LOTE_SAIDA'
                           +',:P2TRO_DTVCTO_SAIDA'
                           +',:P2TRO_QTD_SAIDA'
                           +',:P2TRO_PCOUNI_SAIDA'

                           +',:P2TRO_TERM                '
                           +',:P2TRO_DATHOR                '
                           +',:P2TRO_CODUSR                '
                           +',:P2TRO_TIPO_EVE '

                           + '   )                ');
         DM1.Query1.ParamByName('P2TRO_ITEM').Value         := mItemTroca;
         DM1.Query1.ParamByName('P2TRO_TIPO_EVE').Value     := 0; // exclusao somente quando alteração
         end
      else
         begin
         mem_cadp02_trocas.Edit;
         mTrocasTotBru:=mTrocasTotBru-mem_cadp02_trocasvltotal_saida.AsFloat;

         if (mTrocaProItens_Oper=0) or (mem_cadp02_trocasP2TRO_LOCAL.AsFloat=0) then
            begin
            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.Add(' UPDATE CADP02_TROCAS_TEMP set  '
                           +' P2TRO_CODEMP=:P2TRO_CODEMP '
                           +',P2TRO_ITEM=:P2TRO_ITEM'
                           +',P2TRO_CODPRO_ENTRA=:P2TRO_CODPRO_ENTRA'
                           +',P2TRO_LOTE_ENTRA=:P2TRO_LOTE_ENTRA'
                           +',P2TRO_DTVCTO_ENTRA=:P2TRO_DTVCTO_ENTRA'
                           +',P2TRO_QTD_ENTRA=:P2TRO_QTD_ENTRA'
                           +',P2TRO_PCOUNI_ENTRA=:P2TRO_PCOUNI_ENTRA'
                           +',P2TRO_CODPRO_SAIDA=:P2TRO_CODPRO_SAIDA'
                           +',P2TRO_LOTE_SAIDA=:P2TRO_LOTE_SAIDA'
                           +',P2TRO_DTVCTO_SAIDA=:P2TRO_DTVCTO_SAIDA'
                           +',P2TRO_QTD_SAIDA=:P2TRO_QTD_SAIDA'
                           +',P2TRO_PCOUNI_SAIDA=:P2TRO_PCOUNI_SAIDA'
                           +', P2TRO_CODUSR=:P2TRO_CODUSR                '
                           +', P2TRO_TIPP_EVE=:P2TRO_TIPO_EVE '
                           +' WHERE '

                           +'  P2TRO_TERM=:P2TRO_TERM                '
                           +', P2TRO_DATHOR=:P2TRO_DATHOR                '
                           +', P2TRO_CODPRO_SAIDA=:P2TRO_CODPRO_SAIDA_ANT');

            if mem_cadp02_trocasP2TRO_LOTE_SAIDA.IsNull then
               DM1.Query1.SQL.add(' and P2TRO_LOTE_SAIDA is null ')
            else
               begin
               DM1.Query1.SQL.add(' and P2TRO_LOTE_SAIDA=:P2TRO_LOTE_SAIDA_ANT ');
               DM1.Query1.ParamByName('P2TRO_LOTE_SAIDA_ANT').Value          := mem_cadp02_trocasP2TRO_LOTE_SAIDA.Value;
               end;

            if mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.IsNull then
               DM1.Query1.SQL.add(' and P2TRO_DTVCTO_SAIDA is null ')
            else
               begin
               DM1.Query1.SQL.add(' and P2TRO_DTVCTO_SAIDA=:P2TRO_DTVCTO_SAIDA_ANT ');
               DM1.Query1.ParamByName('P2TRO_DTVCTO_SAIDA_ANT').Value       := mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.Value;
               end;

            DM1.Query1.ParamByName('P2TRO_TIPO_EVE').Value    := mem_cadp02_trocasP2TRO_LOCAL.AsFloat;
            DM1.Query1.ParamByName('P2TRO_CODPRO_SAIDA').Value:= mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString;
            end
         else
            begin

            DM1.Query2.Close;
            DM1.Query2.SQL.Clear;
            DM1.Query2.SQL.Add(' INSERT INTO CADP02_TROCAS_TEMP (  '
                              +' P2TRO_CODEMP'
                              +',P2TRO_ITEM'
                              +',P2TRO_CODPRO_ENTRA'
                              +',P2TRO_LOTE_ENTRA'
                              +',P2TRO_DTVCTO_ENTRA'
                              +',P2TRO_QTD_ENTRA'
                              +',P2TRO_PCOUNI_ENTRA'
                              +',P2TRO_CODPRO_SAIDA'
                              +',P2TRO_LOTE_SAIDA'
                              +',P2TRO_DTVCTO_SAIDA'
                              +',P2TRO_QTD_SAIDA'
                              +',P2TRO_PCOUNI_SAIDA'

                              +', P2TRO_TERM                '
                              +', P2TRO_DATHOR                '
                              +', P2TRO_CODUSR                '
                              +', P2TRO_TIPO_EVE '

                              +') VALUES(                   '
                              +' :P2TRO_CODEMP'
                              +',:P2TRO_ITEM'
                              +',:P2TRO_CODPRO_ENTRA'
                              +',:P2TRO_LOTE_ENTRA'
                              +',:P2TRO_DTVCTO_ENTRA'
                              +',:P2TRO_QTD_ENTRA'
                              +',:P2TRO_PCOUNI_ENTRA'
                              +',:P2TRO_CODPRO_SAIDA'
                              +',:P2TRO_LOTE_SAIDA'
                              +',:P2TRO_DTVCTO_SAIDA'
                              +',:P2TRO_QTD_SAIDA'
                              +',:P2TRO_PCOUNI_SAIDA'

                              +',:P2TRO_TERM                '
                              +',:P2TRO_DATHOR                '
                              +',:P2TRO_CODUSR                '
                              +',:P2TRO_TIPO_EVE '

                              + '   )                ');



            DM1.Query2.ParamByName('P2TRO_CODEMP').Value       := codemp;
            DM1.Query2.ParamByName('P2TRO_ITEM').Value         := mem_cadp02_trocasP2TRO_ITEM.AsInteger;
            DM1.Query2.ParamByName('P2TRO_CODPRO_ENTRA').Value := mem_cadp02_trocasP2TRO_CODPRO_ENTRA.AsFloat;
            DM1.Query2.ParamByName('P2TRO_LOTE_ENTRA').Value   := mem_cadp02_trocasP2TRO_LOTE_ENTRA.Value;
            DM1.Query2.ParamByName('P2TRO_DTVCTO_ENTRA').Value := mem_cadp02_trocasP2TRO_DTVCTO_ENTRA.Value;
            DM1.Query2.ParamByName('P2TRO_QTD_ENTRA').Value    := mem_cadp02_trocasP2TRO_QTD_ENTRA.AsFloat;
            DM1.Query2.ParamByName('P2TRO_PCOUNI_ENTRA').Value := mem_cadp02_trocasP2TRO_PCOUNI_ENTRA.AsFloat;

            DM1.Query2.ParamByName('P2TRO_CODPRO_SAIDA').Value := mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsFloat;
            DM1.Query2.ParamByName('P2TRO_LOTE_SAIDA').Value   := mem_cadp02_trocasP2TRO_LOTE_SAIDA.Value;
            DM1.Query2.ParamByName('P2TRO_DTVCTO_SAIDA').Value := mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.Value;
            DM1.Query2.ParamByName('P2TRO_QTD_SAIDA').Value    := mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat;
            DM1.Query2.ParamByName('P2TRO_PCOUNI_SAIDA').Value := mem_cadp02_trocasP2TRO_PCOUNI_SAIDA.AsFloat;

            DM1.Query2.ParamByName('P2TRO_TERM').AsString      := mPd_NomeComputador;
            DM1.Query2.ParamByName('P2TRO_DATHOR').AsDateTime  := mPd_DatHor_Eve;
            DM1.Query2.ParamByName('P2TRO_CODUSR').Value      := codusr;
            DM1.Query2.ParamByName('P2TRO_TIPO_EVE').Value         := 2; // exclusao somente quando alteração
            DM1.Query2.ParamByName('P2TRO_ITEM').Value         := mItemTroca; // exclusao somente quando alteração
            try
               DM1.Query2.ExecSQL;
               fdm1StartCommit;
            except
               ex_erroSql_Novo(DM1.Query2,16937,'Frm_Ped_02','CADP01');
               end;
            end;
//         varItem := varItem + 1;
         txtSai_QtdItens.Text  := IntToStr(mem_cadp02_trocas.RecordCount);



         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add(' INSERT INTO CADP02_TROCAS_TEMP (  '
                           +' P2TRO_CODEMP'
                           +',P2TRO_ITEM'
                           +',P2TRO_CODPRO_ENTRA'
                           +',P2TRO_LOTE_ENTRA'
                           +',P2TRO_DTVCTO_ENTRA'
                           +',P2TRO_QTD_ENTRA'
                           +',P2TRO_PCOUNI_ENTRA'
                           +',P2TRO_CODPRO_SAIDA'
                           +',P2TRO_LOTE_SAIDA'
                           +',P2TRO_DTVCTO_SAIDA'
                           +',P2TRO_QTD_SAIDA'
                           +',P2TRO_PCOUNI_SAIDA'

                           +', P2TRO_TERM                '
                           +', P2TRO_DATHOR                '
                           +', P2TRO_CODUSR                '
                           +', P2TRO_TIPO_EVE '

                           +') VALUES(                   '
                           +' :P2TRO_CODEMP'
                           +',:P2TRO_ITEM'
                           +',:P2TRO_CODPRO_ENTRA'
                           +',:P2TRO_LOTE_ENTRA'
                           +',:P2TRO_DTVCTO_ENTRA'
                           +',:P2TRO_QTD_ENTRA'
                           +',:P2TRO_PCOUNI_ENTRA'
                           +',:P2TRO_CODPRO_SAIDA'
                           +',:P2TRO_LOTE_SAIDA'
                           +',:P2TRO_DTVCTO_SAIDA'
                           +',:P2TRO_QTD_SAIDA'
                           +',:P2TRO_PCOUNI_SAIDA'

                           +',:P2TRO_TERM                '
                           +',:P2TRO_DATHOR                '
                           +',:P2TRO_CODUSR                '
                           +',:P2TRO_TIPO_EVE '

                           + '   )                ');
         DM1.Query1.ParamByName('P2TRO_ITEM').Value         := mItemTroca;
         DM1.Query1.ParamByName('P2TRO_TIPO_EVE').Value         := 0; // exclusao somente quando alteração
         end;

      DM1.Query1.ParamByName('P2TRO_CODEMP').Value       := codemp;
      DM1.Query1.ParamByName('P2TRO_CODPRO_ENTRA').Value := fsonumero(txt_codpro.Caption);
      DM1.Query1.ParamByName('P2TRO_LOTE_ENTRA').Value   := txt_lote.Caption;
      if valint(txt_dtvcto.Caption)=0 then
         DM1.Query1.ParamByName('P2TRO_DTVCTO_ENTRA').AsString:=''
      else
         DM1.Query1.ParamByName('P2TRO_DTVCTO_ENTRA').AsString:= trim(txt_dtvcto.Caption);
      DM1.Query1.ParamByName('P2TRO_QTD_ENTRA').Value    := ValFloat(txt_quantidade.Caption);
      DM1.Query1.ParamByName('P2TRO_PCOUNI_ENTRA').Value := ValFloat(txt_pcounit.Caption);

      DM1.Query1.ParamByName('P2TRO_CODPRO_SAIDA').Value := fsonumero(TxtEnv_codpro.Text);
      DM1.Query1.ParamByName('P2TRO_LOTE_SAIDA').Value   := TxtEnv_Lote.Text;
      if valint(txtEnv_dtvcto.Text)=0 then
         DM1.Query1.ParamByName('P2TRO_DTVCTO_SAIDA').AsString := ''
      else
         DM1.Query1.ParamByName('P2TRO_DTVCTO_SAIDA').AsString := trim(txtEnv_dtvcto.Text);
      DM1.Query1.ParamByName('P2TRO_QTD_SAIDA').Value    := ValFloat(TxtEnv_quantidade.Text);
      DM1.Query1.ParamByName('P2TRO_PCOUNI_SAIDA').Value := ValFloat(TxtEnv_pcounit.Text);

      DM1.Query1.ParamByName('P2TRO_TERM').AsString      := mPd_NomeComputador;
      DM1.Query1.ParamByName('P2TRO_DATHOR').AsDateTime  := mPd_DatHor_Eve;
      DM1.Query1.ParamByName('P2TRO_CODUSR').Value      := codusr;

      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query1,16937,'Frm_Ped_02','CADP01');
         end;
      end;

   if (not DM1.Tb_Pro.Active) or
      (valfloat(TxtEnv_codpro.Text)<>DM1.Tb_ProPDCODPRO.AsFloat) then
      flcadpro(1,0,0,trim(TxtEnv_codpro.Text));


   if mTrocaProItens_Oper = 0 then
      mem_cadp02_trocasP2TRO_LOCAL.AsFloat  := 0;


   mem_cadp02_trocasP2TRO_CODEMP.AsFloat        :=codemp;
   mem_cadp02_trocasP2TRO_ITEM.AsFloat          :=mItemTroca;
   mem_cadp02_trocasP2TRO_CODPRO_ENTRA.AsFloat  :=fsonumero(txt_codpro.Caption);
   mem_cadp02_trocasP2TRO_QTD_ENTRA.AsFloat     :=fsonumero(txt_quantidade.Caption);
   mem_cadp02_trocasP2TRO_LOTE_ENTRA.AsString   :=txt_lote.Caption;
   if valint(txt_dtvcto.Caption)=0 then
      mem_cadp02_trocasP2TRO_DTVCTO_ENTRA.AsString :=''
   else
      mem_cadp02_trocasP2TRO_DTVCTO_ENTRA.AsString :=txt_dtvcto.caption;

   mem_cadp02_trocasP2TRO_PCOUNI_ENTRA.AsFloat  :=fsonumero(txt_pcounit.Caption);
   mem_cadp02_trocasNOMPRO_ENTRA.AsString       :=txt_descricao.Caption;
   mem_cadp02_trocasvltotal_entra.AsFloat       :=Valfloat(txt_vltotal.Caption);
   mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsFloat  :=fsonumero(TxtEnv_codpro.Text);
   mem_cadp02_trocasP2TRO_LOTE_SAIDA.AsString   :=txtEnv_lote.Text;
   if valint(txtEnv_dtvcto.Text)=0 then
      mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.AsString :=''
   else
      mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.AsString :=txtEnv_dtvcto.Text;

   mem_cadp02_trocasNOMPRO_SAIDA.AsString       :=TxtEnv_descricao.Text;
   mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat     :=TxtEnv_quantidade.Value;
   mem_cadp02_trocasP2TRO_PCOUNI_SAIDA.AsFloat  :=TxtEnv_pcounit.Value;
   mem_cadp02_trocasvltotal_saida.AsFloat       :=TxtEnv_vltotal.Value;
   mem_cadp02_trocas.Post;
   mTrocasTotBru:=mTrocasTotBru+mem_cadp02_trocasvltotal_saida.AsFloat;
   FTrocaProExibirtotais(0);
   if not mpd_RestaurandoPedido then
      begin
   //   lindomar
      if mPd_SaiTerc then
         begin
         flbaiest_Nov(0,1,3,codemp,TxtEnv_codpro.Text,'frm_pedidos_02',TxtEnv_quantidade.Value);
         if valint(copy(mpseg,4,2))>0 then
            flbailgc_Novo(0,1,3,codemp,TxtEnv_codpro.Text,TxtEnv_Lote.Text,txtEnv_dtvcto.Text,'','',TxtEnv_quantidade.Value);
         end;
      if mPd_SaiRVenda then
         begin
         flbaiest_Nov(0,1,2,codemp,TxtEnv_codpro.Text,'frm_pedidos_02',TxtEnv_quantidade.Value);
         if valint(copy(mpseg,4,2))>0 then
            flbailgc_Novo(0,1,2,codemp,TxtEnv_codpro.Text,TxtEnv_Lote.Text,txtEnv_dtvcto.Text,'','',TxtEnv_quantidade.Value);
         end;

      if mPd_SaiCons then
         begin
         flbaiest_Nov(0,1,1,codemp,TxtEnv_codpro.Text,'frm_pedidos_02',TxtEnv_quantidade.Value);
         if valint(copy(mpseg,4,2))>0 then
            flbailgc_Novo(0,1,1,codemp,TxtEnv_codpro.Text,TxtEnv_Lote.Text,txtEnv_dtvcto.Text,'','',TxtEnv_quantidade.Value);
         end;

      if mPd_SaiNor then
         begin
         flbaiest_Nov(0,1,0,codemp,TxtEnv_codpro.Text,'frm_pedidos_02',TxtEnv_quantidade.Value);
         if valint(copy(mpseg,4,2))>0 then
            flbailgc_Novo(0,1,0,codemp,TxtEnv_codpro.Text,TxtEnv_Lote.Text,txtEnv_dtvcto.Text,'','',TxtEnv_quantidade.Value);
         end;


      if mPd_EntraTerc then
         begin
         flbaiest_Nov(0,0,3,codemp,TxtEnv_codpro.Text,'frm_pedidos_02',TxtEnv_quantidade.Value);
         if valint(copy(mpseg,4,2))>0 then
            flbailgc_Novo(0,0,3,codemp,TxtEnv_codpro.Text,TxtEnv_Lote.Text,txtEnv_dtvcto.Text,'','',TxtEnv_quantidade.Value);
         end;

      if mPd_EntraRVenda then
         begin
         flbaiest_Nov(0,0,2,codemp,TxtEnv_codpro.Text,'frm_pedidos_02',TxtEnv_quantidade.Value);
         if valint(copy(mpseg,4,2))>0 then
            flbailgc_Novo(0,0,2,codemp,TxtEnv_codpro.Text,TxtEnv_Lote.Text,txtEnv_dtvcto.Text,'','',TxtEnv_quantidade.Value);
         end;

      if mPd_EntraCons then
         begin
         flbaiest_Nov(0,0,1,codemp,TxtEnv_codpro.Text,'frm_pedidos_02',TxtEnv_quantidade.Value);
         if valint(copy(mpseg,4,2))>0 then
            flbailgc_Novo(0,0,1,codemp,TxtEnv_codpro.Text,TxtEnv_Lote.Text,txtEnv_dtvcto.Text,'','',TxtEnv_quantidade.Value);
         end;

      if mPd_EntraNor then
         begin
         flbaiest_Nov(0,0,0,codemp,TxtEnv_codpro.Text,'frm_pedidos_02',TxtEnv_quantidade.Value);
         if valint(copy(mpseg,4,2))>0 then
            flbailgc_Novo(0,0,0,codemp,TxtEnv_codpro.Text,TxtEnv_Lote.Text,txtEnv_dtvcto.Text,'','',TxtEnv_quantidade.Value);
         end;
      end;
   end;

{

mem_cadp02_trocas.Append;
mem_cadp02_trocasP2TRO_CODEMP.AsFloat        :=codemp;
mem_cadp02_trocasP2TRO_ITEM.AsFloat          :=mItemTroca;
mem_cadp02_trocasP2TRO_CODPRO_ENTRA.AsFloat  :=fsonumero(txt_codpro.Caption);
mem_cadp02_trocasP2TRO_QTD_ENTRA.AsFloat     :=fsonumero(txt_quantidade.Caption);
mem_cadp02_trocasP2TRO_PCOUNI_ENTRA.AsFloat  :=fsonumero(txt_pcounit.Caption);
mem_cadp02_trocasNOMPRO_ENTRA.AsString       :=txt_descricao.Caption;
mem_cadp02_trocasvltotal_entra.AsFloat       :=Valfloat(txt_vltotal.Caption);

mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsFloat  :=fsonumero(TxtEnv_codpro.Text);
mem_cadp02_trocasNOMPRO_SAIDA.AsString       :=TxtEnv_descricao.Text;
mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat     :=TxtEnv_quantidade.Value;
mem_cadp02_trocasP2TRO_PCOUNI_SAIDA.AsFloat  :=TxtEnv_pcounit.Value;
mem_cadp02_trocasvltotal_saida.AsFloat       :=TxtEnv_vltotal.Value;
mem_cadp02_trocas.Post;
}
TxtEnv_codpro.Text    :='';
TxtEnv_descricao.Text :='';
TxtEnv_quantidade.Text:='';
TxtEnv_Lote.Text      :='';
txtEnv_dtvcto.Text    :='';
TxtEnv_pcounit.Text   :='';
TxtEnv_vltotal.Text   :='';
TxtEnv_codpro.SetFocus;



end;

procedure TFrm_Ped_02_TrocaPro.TxtEnv_LoteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = vk_F3 then begin
   if Frm_ConsLot=nil then
      Application.CreateForm(TFrm_ConsLot,Frm_ConsLot)
   else begin
       Frm_ConsLot.free;
       Frm_ConsLot:=nil;
       Application.CreateForm(TFrm_ConsLot,Frm_ConsLot);
   end;
      flcadlgc(0,0,TxtEnv_codpro.Text,'','');
      Frm_Conslot.CODPRO.Text:=TxtEnv_codpro.Text;
      Frm_ConsLot.NOMPRO.Text:=TxtEnv_descricao.Text;
      Frm_ConsLot.CODPRO.Enabled:=True;
      if valint(copy(mpseg,4,2))=2 then
         begin
         Frm_ConsLot.Caption:='Consulta no arquivo de Grades';
         Frm_ConsLot.DBGrid1.Columns[0].Visible:=false;
         Frm_ConsLot.DBGrid1.Columns[1].Title.Caption:='Grade';
         end;
      mConsLotOrigem:=1;
      Frm_ConsLot.ShowModal;
      if trim(plote)<>'' then
         begin
         TxtEnv_lote.Text:=pLote;
         end;
      Frm_Conslot.Free;
      Frm_ConsLot:=nil;
   end;

end;

procedure TFrm_Ped_02_TrocaPro.TxtEnv_LoteExit(Sender: TObject);
begin

if valint(copy(mpseg,4,2))=2 then
   begin
   if not flcadlgc(1,0,TxtEnv_codpro.Text,TxtEnv_lote.Text,'') then
      begin
      fmensagem('Grade não Encontrada!',0,['0'],0);
      TxtEnv_lote.SetFocus;
      exit;
      end;
   end;
if (trim(TxtEnv_lote.text)<>'') and (valint(copy(mpseg,4,2))=1) then
   begin
   mdtv:='ALL';
   if flcadlgc(1,0,TxtEnv_codpro.Text,TxtEnv_lote.Text,mdtv) then
      begin
      end
   else
      begin
       if mPd_Venda_Devol=0 then
          begin
          fmensagem('Lote não Encontrado!',0,['0'],0);
          TxtEnv_lote.SetFocus;
          exit;
          end;
      end;

    if (mPd_Venda_Devol=1) and (not Frm_Ped_02.CB_PEDORI.Checked) and (not Frm_Ped_02.Tb_DevCli.IsEmpty) then
       TxtEnv_codproexit(self);
   end;


end;

procedure TFrm_Ped_02_TrocaPro.TxtEnv_pcounitExit(Sender: TObject);
begin
if TxtEnv_vltotal.focused then
   bbGravarItemClick(self);

end;

function TFrm_Ped_02_TrocaPro.FTrocaProExibirtotais(pTipo: Integer): boolean;
begin
txtSai_TotBru.Text:=Formatfloat(mcasas, mTrocasTotBru);
result:=true;
end;

procedure TFrm_Ped_02_TrocaPro.FormCreate(Sender: TObject);
begin
TxtEnv_quantidade.DecimalPlaces:=DM1.Tb_PargerPCASQTD.AsInteger;
TxtEnv_quantidade.DisplayFormat:=mcasqtd;

TxtEnv_pcounit.DecimalPlaces:=DM1.Tb_PargerPCASASPU.AsInteger;
TxtEnv_quantidade.DisplayFormat:=mcasaspu;

TxtEnv_vltotal.DecimalPlaces:=DM1.Tb_PargerPCASAS.AsInteger;
TxtEnv_vltotal.DisplayFormat:=mcasas;

mem_cadp02_trocasP2TRO_QTD_SAIDA.displayFormat   :=mcasqtd;
mem_cadp02_trocasP2TRO_PCOUNI_SAIDA.displayFormat:=mcasaspu;
mem_cadp02_trocasvltotal_saida.displayFormat     :=mcasas;


end;

procedure TFrm_Ped_02_TrocaPro.DBGrid_trocasDblClick(Sender: TObject);
begin
if (not mem_cadp02_trocasP2TRO_CODPRO_SAIDA.IsNull) then
   begin

   TxtEnv_codpro.Text     :=mem_cadp02_trocasP2TRO_CODPRO_SAIDA.AsString;
   TxtEnv_descricao.Text  :=mem_cadp02_trocasNOMPRO_SAIDA.AsString;
   TxtEnv_Lote.Text       :=mem_cadp02_trocasP2TRO_LOTE_SAIDA.AsString;
   TxtEnv_quantidade.Value:=mem_cadp02_trocasP2TRO_QTD_SAIDA.AsFloat;
   TxtEnv_pcounit.Value   :=mem_cadp02_trocasP2TRO_PCOUNI_SAIDA.AsFloat;
   TxtEnv_vltotal.Value   :=mem_cadp02_trocasvltotal_saida.AsFloat;
   if mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.AsDateTime<=pdatanula then
      txtEnv_dtvcto.Text  :='/  /'
   else
      txtEnv_dtvcto.Text  :=FormatDateTime(fdt2,mem_cadp02_trocasP2TRO_DTVCTO_SAIDA.AsDateTime);
   mTrocaProItens_Oper    :=1;
   TxtEnv_codpro.setfocus;
   end;


end;

procedure TFrm_Ped_02_TrocaPro.mem_cadp02_trocasFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
if (mFiltro_Codpro=mem_cadp02_trocasP2TRO_CODPRO_ENTRA.AsFloat)
   and (mFiltro_Lote=mem_cadp02_trocasP2TRO_LOTE_ENTRA.AsString) then
   Accept:=true
else
   Accept:=false;


end;

procedure TFrm_Ped_02_TrocaPro.BitBtn1Click(Sender: TObject);
begin
mem_cadp02_trocas.Filtered:=false;
end;

procedure TFrm_Ped_02_TrocaPro.BitBtn2Click(Sender: TObject);
begin
mem_cadp02_trocas.Filtered:=true;
end;

procedure TFrm_Ped_02_TrocaPro.bbSairClick(Sender: TObject);
begin
close;
end;

end.

unit S_Ped_02_MPReq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CurrEdit, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids,
  DBGrids, Menus, s_lerarq_geral;

type
  TFrm_Ped_02_MPReq = class(TForm)
    panel_digmp: TPanel;
    lblmp_codpro: TStaticText;
    edtmp_codpro: TComboEdit;
    lblmp_datreq: TStaticText;
    edtmp_datreq: TMaskEdit;
    lblmp_descricao: TStaticText;
    edtmp_descricao: TEdit;
    lblmp_qtdsol: TStaticText;
    edtmp_qtdsol: TCurrencyEdit;
    lblmp_preco: TStaticText;
    edtmp_preco: TCurrencyEdit;
    lblmp_horareq: TStaticText;
    lblmp_total: TStaticText;
    edtmp_total: TCurrencyEdit;
    edtmp_horareq: TMaskEdit;
    lblmp_status: TStaticText;
    edtmp_status: TStaticText;
    lblmp_lote: TStaticText;
    edtmp_lote: TComboEdit;
    edtmp_dtvcto: TMaskEdit;
    DBGrid_mp: TDBGrid;
    gb_totais: TGroupBox;
    lblmp_qtditem: TStaticText;
    lbl_qtddev: TStaticText;
    lbl_sobra: TStaticText;
    lbl_quebra: TStaticText;
    lbl_qtdsol: TStaticText;
    bbAdquirirFormula: TBitBtn;
    lbl_outret: TStaticText;
    lbl_total: TStaticText;
    bbGravarMP: TBitBtn;
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
    txt_lote: TStaticText;
    st_lote: TStaticText;
    txt_dtvcto: TStaticText;
    pop_ExcluirMP: TPopupMenu;
    ExcluirMP: TMenuItem;
    lblmp_outinf: TStaticText;
    edtmp_outinf: TEdit;
    stOutrasQtd: TStaticText;
    txt_complemento: TStaticText;
    procedure edtmp_codproEnter(Sender: TObject);
    procedure edtmp_codproExit(Sender: TObject);
    procedure edtmp_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtmp_codproKeyPress(Sender: TObject; var Key: Char);
    procedure edtmp_loteExit(Sender: TObject);
    procedure edtmp_loteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtmp_qtdsolExit(Sender: TObject);
    procedure edtmp_precoExit(Sender: TObject);
    procedure edtmp_dtvctoExit(Sender: TObject);
    procedure edtmp_horareqExit(Sender: TObject);
    procedure bbGravarMPClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtmp_totalEnter(Sender: TObject);
    procedure DBGrid_mpDblClick(Sender: TObject);
    procedure ExcluirMPClick(Sender: TObject);
    procedure stOutrasQtdClick(Sender: TObject);
    procedure bbAdquirirFormulaClick(Sender: TObject);
    procedure DBGrid_mpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure edtmp_outinfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtmp_qtdsolKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtmp_precoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);


  private
    { Private declarations }
    function fLimparEditsMReq(pTipo: Integer): boolean;
    function FCalcTotais(pTipo: Integer): boolean;

  public
    { Public declarations }

  end;
function fCarregaEditar(pTipo: Integer): Boolean;

var
  Frm_Ped_02_MPReq: TFrm_Ped_02_MPReq;
  mOper_mpreq: Integer=0;
implementation

uses S_Ped_02, Func, S_ConsLot, S_DM1, lerarq, func_excecoes, DB,
     S_Ped_02_MPReq_Outros;

{$R *.dfm}

procedure TFrm_Ped_02_MPReq.edtmp_codproEnter(Sender: TObject);
begin

if trim(edtmp_status.Caption)='' then
   begin
   if mOper_mpreq=1 then
      edtmp_status.Caption:='A'
   else
      edtmp_status.Caption:='I';
   end;

end;

procedure TFrm_Ped_02_MPReq.edtmp_codproExit(Sender: TObject);
begin
//pTipo: Integer = 0-Inclusao 1-Alteraçao
//pValRest = 0-Valida Restricoes 1-Nao valida
//plibProm=0-Promocao somente de acordo com parametros estabelicidos
//         1-libera promocao idenpendente de parametros minimos
// pLocal=0-codpro 1-Lote 2-Dtvcto 3-Gravando;

if (Trim(edtmp_codpro.Text) ='') and (edtmp_outinf.focused)  then
   begin
   edtmp_codpro.Setfocus;
   exit;
   end;


if Trim(edtmp_codpro.Text) <> '' then
   begin

   if not Frm_Ped_02.fDadosPro(3,mOper_mpreq,0,IIF(frm_ped_02.cb_leitor.checked = True,1,0),0,0,frm_ped_02.mpd_pvppori,
   frm_ped_02.cb_tipopreco.ItemIndex,frm_ped_02.CB_TPP.ItemIndex, edtmp_codpro.Text,
                    '',frm_ped_02.cb_tabelavenda.Text,frm_ped_02.edt_codvenda.Text,'1',pDatanula,
                    edtmp_qtdsol.Value,ValFloat(frm_ped_02.edt_codvendedor02.text),
                    valFloat(frm_ped_02.edt_codvendedor03.Text),0,True, frm_ped_02.cb_sepamb.Checked) then
      begin
      edtmp_codpro.SetFocus;
      end
   else
      begin
      edtmp_descricao.Text       := pRet_NomePro;
      edtmp_codpro.Text      := FloatToStr(pRet_Codpro);

      if fSonumero(edtmp_codpro.Text)=0 then
         begin
         edtmp_codpro.SetFocus;
         exit;
         end;
      if pRet_PCOCUS<>0 then
         edtmp_preco.Value   :=pRet_PCOCUS
      else if pRet_UCPR<>0 then
         edtmp_preco.Value   := pRet_UCPR
      else
         edtmp_preco.Value      := pRet_Preco_Unit;
      edtmp_codpro.Text      := FloatToStr(pRet_Codpro);
      end;

   end;
if trim(edtmp_datreq.Text)='/  /' then
   edtmp_datreq.Text:=frm_ped_02.edt_datapedido.Text;
if trim(edtmp_horareq.Text)=':' then
   edtmp_horareq.Text:=copy(frm_ped_02.edt_horadigitacao.Text,1,5);

end;

procedure TFrm_Ped_02_MPReq.edtmp_codproKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key=27) and (mOper_mpreq=1) then
   begin
   fLimparEditsMReq(2);
   mOper_mpreq      :=0;
   end
else if (key=113) then
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      edtmp_codpro.Text := fChamaPro(2,'frm_Ped_02','')
   else if (valint(copy(mpseg,4,2))=2) then
      edtmp_codpro.Text := fChamaPro(0,'frm_Ped_02','')
   else
      edtmp_codpro.Text:=fChamaPro(0,'frm_Ped_02','');
   edtmp_codproExit(Self);
   end;

end;

procedure TFrm_Ped_02_MPReq.edtmp_codproKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      edtmp_codpro.Text := fChamaPro(2,'frm_pedidos02',key)
   else if (valint(copy(mpseg,4,2))=2) then
      edtmp_codpro.Text := fChamaPro(0,'frm_pedidos02',key)
   else
      edtmp_codpro.Text:=fChamaPro(0,'frm_pedidos02',key);
   key:=#0;
   edtmp_codproExit(Self);
   end
else
   begin
   if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
   end;


end;

procedure TFrm_Ped_02_MPReq.edtmp_loteExit(Sender: TObject);
begin

if valint(copy(mpseg,4,2))=2 then
   begin
   if not flcadlgc(0,1,0,edtmp_codpro.Text,edtmp_lote.Text,'') then
      begin
      fmensagem('Grade não Encontrada!',0,['0'],0);
      edtmp_lote.SetFocus;
      exit;
      end;
   end;
if (trim(edtmp_lote.text)<>'') and (valint(copy(mpseg,4,2))=1) then
   begin
   if trim(edtmp_dtvcto.Text)='/  /' then
      mdtv:='ALL'
   else
      mdtv:=edtmp_dtvcto.Text;
   if flcadlgc(0,1,0,edtmp_codpro.Text,edtmp_lote.Text,mdtv) then
      begin
      if (trim(edtmp_dtvcto.Text)='/  /') and (DM1.Tb_LGCCLDTVCTO.Asdatetime>pDatanula) then
         edtmp_dtvcto.Text:=FormatDateTime(fdt2, DM1.Tb_LGCCLDTVCTO.Value);
      end
   else
      begin
       if frm_ped_02.mPd_Venda_Devol=0 then
          begin
          fmensagem('Lote não Encontrado!',0,['0'],0);
          edtmp_lote.SetFocus;
          exit;
          end;
      end;

    if (frm_ped_02.mPd_Venda_Devol=1) and (not Frm_Ped_02.CB_PEDORI.Checked) and (not Frm_Ped_02.Tb_DevCli.IsEmpty) then
       edtmp_codproexit(self);
   end;


end;

procedure TFrm_Ped_02_MPReq.edtmp_loteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key=27) and (mOper_mpreq=1) then
   begin
   fLimparEditsMReq(2);
   mOper_mpreq      :=0;
   end
else if key = vk_F3 then begin
   if Frm_ConsLot=nil then
      Application.CreateForm(TFrm_ConsLot,Frm_ConsLot)
   else begin
       Frm_ConsLot.free;
       Frm_ConsLot:=nil;
       Application.CreateForm(TFrm_ConsLot,Frm_ConsLot);
   end;
      flcadlgc(0,0,0,edtmp_codpro.Text,'','');
      Frm_Conslot.CODPRO.Text:=edtmp_codpro.Text;
      Frm_ConsLot.NOMPRO.Text:=edtmp_descricao.Text;
      Frm_ConsLot.CODPRO.Enabled:=True;
      if valint(copy(mpseg,4,2))=2 then
         begin
         Frm_ConsLot.Caption:='Consulta no arquivo de Grades';
         Frm_ConsLot.DBGrid1.Columns[0].Visible:=false;
         Frm_ConsLot.DBGrid1.Columns[1].Title.Caption:='Grade';
         end;
      Frm_ConsLot.mConsLotOrigem:=1;
      Frm_ConsLot.ShowModal;
      if trim(Frm_ConsLot.plote)<>'' then
         begin
         edtmp_lote.Text:=Frm_ConsLot.pLote;
         if (trim(Frm_ConsLot.pdtvcto)='') or (trim(Frm_ConsLot.pdtvcto)='/  /') then
            edtmp_dtvcto.Text:='/  /'
         else
            edtmp_dtvcto.Text:=Frm_ConsLot.pdtvcto;
         end;
      freeandnil(Frm_Conslot);
   end;


end;

procedure TFrm_Ped_02_MPReq.edtmp_qtdsolExit(Sender: TObject);
var
  xQtde : Real;
begin
if (edtmp_qtdsol.value=0) then
   begin
   if ((edtmp_codpro.focused))  then
      exit
   else
      begin
      if edtmp_preco.Focused then
         begin
         edtmp_qtdsol.SetFocus;
         exit;
         end;
      end;
   end;
xQtde := 0;
xQtde := edtmp_qtdsol.Value;


if (not DM1.Tb_Pro.Active) or (DM1.Tb_ProPDCODPRO.AsFloat<>valFloat(edtmp_codpro.Text)) then
   flcadpro(1,0,0,fdeixanum(edtmp_codpro.Text));
if not frm_ped_02.mpd_RestaurandoPedido then
   begin
   if not frm_ped_02.mPd_FaturandoPedido then
      begin
      if (DM1.Tb_ProPDFRACAO.Value<>1) then
         begin
         if Trunc(xQtde)<>xQtde then
            begin
            fMensagem('Não é permitido fracionar este produto!',0,['0'],0);
            edtmp_qtdsol.SetFocus;
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

   if (frm_ped_02.mPd_SaiNor) then
      begin
      if (trim(edtmp_codpro.Text)<>'') and (xQtde>0) then
         begin
         mdtv:='';
         frm_ped_02.mpd_Estoque := Frm_Ped_02.fRetornaEstoque(0,edtmp_codpro.Text,'',mdtv,
                                     frm_ped_02.mPd_SaiNor,frm_ped_02.mPd_SaiCons,frm_ped_02.mPd_SaiTerc,frm_ped_02.mPd_SaiRVenda);
         if (frm_ped_02.mpd_Estoque[0] < xQtde) then
            begin
            if frm_ped_02.mPed_Par_FatMz  then
               begin
{               FGravarPend(DM1.Tb_ProPDCODPRO.AsFloat,xQtde,frm_ped_02.mpd_Estoque[0],
                  edt_desc1.Value,
                  edt_desc2.Value,
                  edt_desc3.Value,
                  0,edt_precounitario.Value,edt_lote.Text);
}               end
            else
               begin
               if not frm_ped_02.mPd_FaturandoPedido then
                  begin
                  fmensagem('Quantidade Pedida Maior que Estoque. Estoque: '+FormatFloat(mcasas, frm_ped_02.mpd_Estoque[0])
                     +' Prateleira: '+FormatFloat(mcasas, frm_ped_02.mpd_Estoque[1])
                    +' Deposito: '+FormatFloat(mcasas, frm_ped_02.mpd_Estoque[2]),0,['0'],0);
                  end;
               edtmp_qtdsol.Text:=FormatFloat(mcasqtd, frm_ped_02.mpd_Estoque[0]);
               if not frm_ped_02.mPd_FaturandoPedido then
                  begin
                  if frm_ped_02.mpd_Estoque[0]<=0 then
                     edtmp_codpro.Setfocus
                  else
                     edtmp_qtdsol.SetFocus;
                  end;
               Exit;
               end;
            end;
         if not frm_ped_02.mPed_Par_FatMz_LocMov then
            begin
            if (frm_ped_02.mpd_Estoque[1+Frm_Ped_02.cb_local.ItemIndex] < xQtde) then
               begin
               if not frm_ped_02.mPd_FaturandoPedido then
                  begin
                  fmensagem('Quantidade Pedida Maior que Estoque. Estoque: '+FormatFloat(mcasas, frm_ped_02.mpd_Estoque[0])
                        +' Prateleira: '+FormatFloat(mcasas, frm_ped_02.mpd_Estoque[1])
                        +' Deposito: '+FormatFloat(mcasas, frm_ped_02.mpd_Estoque[2]),0,['0'],0);
                  edtmp_qtdsol.SetFocus;
                  end;
               edtmp_qtdsol.Value:=0;
               Exit;
               end;
            end;
         end;
      end;
   end;

edtmp_total.Value := edtmp_preco.value * edtmp_qtdsol.Value;

end;

procedure TFrm_Ped_02_MPReq.edtmp_precoExit(Sender: TObject);
begin
   edtmp_total.Value := edtmp_preco.Value * edtmp_qtdsol.Value;

end;

procedure TFrm_Ped_02_MPReq.edtmp_dtvctoExit(Sender: TObject);
begin

if trim(edtmp_datreq.Text)<>'/  /' then
   begin
   try
      edtmp_datreq.Text:=FormatDateTime(fdt2, StrtoDate(edtmp_datreq.Text));
   except
      fmensagem('Data inválida!',0,['0'],0);
      edtmp_datreq.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Ped_02_MPReq.edtmp_horareqExit(Sender: TObject);
begin

if trim(edtmp_horareq.Text)<>':' then
   begin
   try
      edtmp_horareq.Text:=FormatDateTime('hh:nn', Strtotime(edtmp_horareq.Text));
   except
      fmensagem('Hora inválida!',0,['0'],0);
      edtmp_horareq.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Ped_02_MPReq.bbGravarMPClick(Sender: TObject);
var
  x_falta: Real;
  x_baixa: Real;

  mProcura_lote: Boolean;
begin

if fdeixanum2(edtmp_codpro.Text)='' then
   begin
   if (not frm_ped_02.mpd_RestaurandoPedido) and (not frm_ped_02.mPd_FaturandoPedido) then

      edtmp_codpro.SetFocus;
   exit;
   end;

 if (not DM1.Tb_Pro.Active) or
   (valfloat(edtmp_codpro.Text)<>DM1.Tb_ProPDCODPRO.AsFloat) then
   begin
   if not  flcadpro(1,0,0,trim(edtmp_codpro.Text)) then
      begin
      if (not frm_ped_02.mpd_RestaurandoPedido) and (not frm_ped_02.mPd_FaturandoPedido) then
         begin
         fmensagem('Código do Produto Invalido!',0,['0'],0);
         edtmp_codpro.SetFocus;
         end;
      exit;
      end;
   end;

edtmp_qtdsolExit(Self);
if edtmp_qtdsol.Value<=0 then
   begin
   if (not frm_ped_02.mpd_RestaurandoPedido) and (not frm_ped_02.mPd_FaturandoPedido) then
      begin
      fmensagem('Favor Digitar uma Quantidade válida!',0,['0'],0);
      edtmp_qtdsol.SetFocus;
      end;
   exit;
   end;

if (edtmp_qtdsol.Value+Frm_Ped_02_MPReq_Outros.edtmp_sobra.Value) <(Frm_Ped_02_MPReq_Outros.edtmp_qtddev.Value+Frm_Ped_02_MPReq_Outros.edtmp_quebra.Value
                        +Frm_Ped_02_MPReq_Outros.edtmp_outret.Value) then
   begin
   if (not frm_ped_02.mpd_RestaurandoPedido) and (not frm_ped_02.mPd_FaturandoPedido) then
      begin
      fmensagem('Quantidade Solicitada maior (Quant.Devol+Quebra+Outros Ret), inválido!',0,['0'],0);
      edtmp_qtdsol.SetFocus;
      end;
   exit;
   end;



if not Frm_Ped_02.mem_cadp02_mp.Active then
   begin
   Frm_Ped_02.mem_cadp02_mp.Active := True;
   if mOper_mpreq=0 then
      Frm_Ped_02.mem_cadp02_mp.First;
   end;

if not frm_ped_02.mpd_RestaurandoPedido then
   begin
   if edtmp_preco.Value<0 then
      begin
      if not frm_ped_02.mpd_RestaurandoPedido then
         begin
         fmensagem('Preço do Produto inválido!',0,['0'],0);
         edtmp_preco.SetFocus;
         end;
      exit;
      end
   else if Frm_Ped_02.cb_tipopreco.ItemIndex<>4 then
      begin
      if edtmp_preco.Value=0 then
         begin
         if (not frm_ped_02.mpd_RestaurandoPedido) and (not frm_ped_02.mPd_FaturandoPedido) then
            begin
            fmensagem('Preço do Produto inválido!',0,['0'],0);
            edtmp_preco.SetFocus;
            end;
         exit;
         end;
      end;
   end;




if not frm_ped_02.mpd_RestaurandoPedido then
   begin


   if (mOper_mpreq=1) and (frm_ped_02.mPd_MovEstoque<2) then
      begin
      if Frm_Ped_02.mPosReg_MP<>nil then
         Frm_Ped_02.mem_cadp02_mp.GotoBookmark(Frm_Ped_02.mPosReg_MP);

      if frm_ped_02.mPd_SaiTerc then
         begin
         flbaiest_Nov(0,0,0,3,codemp,Frm_Ped_02.mem_cadp02_mpP2MP_CODPRO.AsString,'frm_pedidos_02',((Frm_Ped_02.mem_cadp02_mpP2MP_QTDSOL.AsFloat
                                             +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_SOBRA.AsFloat)
                                     -(Frm_Ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_QUEBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_OUTRET.AsFloat
                                    )
                                    ) );
         end;
      if frm_ped_02.mPd_SaiRVenda then
         begin
         flbaiest_Nov(0,0,0,2,codemp,Frm_Ped_02.mem_cadp02_mpP2MP_CODPRO.AsString,'frm_pedidos_02',((Frm_Ped_02.mem_cadp02_mpP2MP_QTDSOL.AsFloat
                                             +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_SOBRA.AsFloat)
                                     -(Frm_Ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_QUEBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_OUTRET.AsFloat
                                    )
                                    ) );

         end;

      if frm_ped_02.mPd_SaiCons then
         begin
         flbaiest_Nov(0,0,0,1,codemp,Frm_Ped_02.mem_cadp02_mpP2MP_CODPRO.AsString,'frm_pedidos_02',((Frm_Ped_02.mem_cadp02_mpP2MP_QTDSOL.AsFloat
                                             +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_SOBRA.AsFloat)
                                     -(Frm_Ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_QUEBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_OUTRET.AsFloat
                                    )
                                    ) );

         end;

      if frm_ped_02.mPd_SaiNor then
         begin
         flbaiest_Nov(0,0,0,0,codemp,Frm_Ped_02.mem_cadp02_mpP2MP_CODPRO.AsString,'frm_pedidos_02',((Frm_Ped_02.mem_cadp02_mpP2MP_QTDSOL.AsFloat
                                             +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_SOBRA.AsFloat)
                                     -(Frm_Ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_QUEBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_OUTRET.AsFloat
                                    )
                                    ) );

         end;

      if Frm_Ped_02.mPd_EntraTerc then
         begin
         flbaiest_Nov(0,0,1,3,codemp,Frm_Ped_02.mem_cadp02_mpP2MP_CODPRO.AsString,'frm_pedidos_02',((Frm_Ped_02.mem_cadp02_mpP2MP_QTDSOL.AsFloat
                                             +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_SOBRA.AsFloat)
                                     -(Frm_Ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_QUEBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_OUTRET.AsFloat
                                    )
                                    ) );

         end;

      if Frm_Ped_02.mPd_EntraRVenda then
         begin
         flbaiest_Nov(0,0,1,2,codemp,Frm_Ped_02.mem_cadp02_mpP2MP_CODPRO.AsString,'frm_pedidos_02',((Frm_Ped_02.mem_cadp02_mpP2MP_QTDSOL.AsFloat
                                             +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_SOBRA.AsFloat)
                                     -(Frm_Ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_QUEBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_OUTRET.AsFloat
                                    )
                                    ) );

         end;

      if frm_ped_02.mPd_EntraCons then
         begin
         flbaiest_Nov(0,0,1,1,codemp,Frm_Ped_02.mem_cadp02_mpP2MP_CODPRO.AsString,'frm_pedidos_02',((Frm_Ped_02.mem_cadp02_mpP2MP_QTDSOL.AsFloat
                                             +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_SOBRA.AsFloat)
                                     -(Frm_Ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_QUEBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_OUTRET.AsFloat
                                    )
                                    ) );

         end;

      if frm_ped_02.mPd_EntraNor then
         begin
         flbaiest_Nov(0,0,1,0,codemp,Frm_Ped_02.mem_cadp02_mpP2MP_CODPRO.AsString,'frm_pedidos_02',((Frm_Ped_02.mem_cadp02_mpP2MP_QTDSOL.AsFloat
                                             +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_SOBRA.AsFloat)
                                     -(Frm_Ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_QUEBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_OUTRET.AsFloat
                                    )
                                    ) );

         end;
      end;
   end;

x_falta:=edtmp_qtdsol.Value;
While x_falta > 0 do
   begin
   if frm_ped_02.mpd_RestaurandoPedido then
      begin
      Frm_Ped_02.mem_cadp02_mp.Insert;
      x_falta:=0;
      end
   else
      begin
      // se devolucao
      // baixa devolucoes

   //   lindomar

      // entrar devolucao

      if not frm_ped_02.mPd_Incluiu_Pedido then
         frm_ped_02.fAtualizaPedidoTemp(0)
      else
         frm_ped_02.fAtualizaPedidoTemp(1);

      x_falta:=0;

      if mOper_mpreq = 0 then
         begin
         Frm_Ped_02.mem_cadp02_mp.Insert;
         frm_ped_02.mpd_varItem_mp:=frm_ped_02.mpd_varItem_mp+1;
         lblmp_qtditem.Caption  := FormatFloat('0.00',frm_ped_02.mpd_varItem_mp);

         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add(' INSERT INTO CADP02_MP_TEMP (  '
                           +'  P2MP_CODEMP '
                           +', P2MP_LOTSEQ '
                           +', P2MP_CHAVE '
                           +', P2MP_ITEM '
                           +', P2MP_CODPRO '
                           +', P2MP_CODPRO_ORI '

                           +', P2MP_LOTE '
                           +', P2MP_LOTE_ORI '
                           +', P2MP_COMPLEMENTO_ORI '
                           +', P2MP_DTVCTO '
                           +', P2MP_DTVCTO_ORI '
                           +', P2MP_PRECO '
                           +', P2MP_PCOCUS '
                           +', P2MP_PCOCOMPRA '

                           +', P2MP_QTDSOL '
                           +', P2MP_QTD_DEVOL '
                           +', P2MP_QTD_SOBRA '
                           +', P2MP_QTD_QUEBRA '
                           +', P2MP_QTD_OUTRET '
                           +', P2MP_DATAHORA_SOL '
                           +', P2MP_TERM                '
                           +', P2MP_DATHOR                '
                           +', P2MP_CODUSR                '
                           +', P2MP_TIPEVE '
                           +', P2MP_PRECO_ORI                '
                           +', P2MP_QTD_ORI '
                           +', P2MP_NOME2'
                           +', P2MP_OUTINF'
                           +') VALUES(                   '
                           +'  :P2MP_CODEMP '
                           +', :P2MP_LOTSEQ '
                           +', :P2MP_CHAVE '
                           +', :P2MP_ITEM '
                           +', :P2MP_CODPRO '
                           +', :P2MP_CODPRO_ORI '
                           +', :P2MP_LOTE '
                           +', :P2MP_LOTE_ORI '
                           +', :P2MP_COMPLEMENTO_ORI '
                           +', :P2MP_DTVCTO '
                           +', :P2MP_DTVCTO_ORI '
                           +', :P2MP_PRECO '
                           +', :P2MP_PCOCUS '
                           +', :P2MP_PCOCOMPRA '
                           +', :P2MP_QTDSOL '
                           +', :P2MP_QTD_DEVOL '
                           +', :P2MP_QTD_SOBRA '
                           +', :P2MP_QTD_QUEBRA '
                           +', :P2MP_QTD_OUTRET '
                           +', :P2MP_DATAHORA_SOL '
                           +', :P2MP_TERM                '
                           +', :P2MP_DATHOR                '
                           +', :P2MP_CODUSR                '
                           +', :P2MP_TIPEVE '
                           +', :P2MP_PRECO_ORI                '
                           +', :P2MP_QTD_ORI '
                           +', :P2MP_NOME2'
                           +', :P2MP_OUTINF'
                           + '   )                ');
         DM1.Query1.ParamByName('P2MP_TIPEVE').Value      := 0;
         DM1.Query1.ParamByName('P2MP_ITEM').Value        := frm_ped_02.mpd_varItem_mp;

         end
      else
         begin
         Frm_Ped_02.mem_cadp02_mp.Edit;

         frm_ped_02.mPdMP_totqtdsol:=frm_ped_02.mPdMP_totqtdsol-Frm_Ped_02.mem_cadp02_mpP2MP_QTDSOL.AsFloat;
         frm_ped_02.mPdMP_totqtdDev:=frm_ped_02.mPdMP_totqtdDev-Frm_Ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat;
         frm_ped_02.mPdMP_totbruSol:=frm_ped_02.mPdMP_totbruSol-Frm_Ped_02.mem_cadp02_mpTOTALBRU.AsFloat;
         frm_ped_02.mPdMP_totbruDev:=frm_ped_02.mPdMP_totbruDev-Arredonda( (Frm_Ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat
                                          *Frm_Ped_02.mem_cadp02_mpP2MP_PRECO.AsFloat), DM1.Tb_PargerPCASAS.AsInteger) ;


         if (mOper_mpreq=0) or (Frm_Ped_02.mem_cadp02_mpMPLOCAL.AsInteger=0) then
            begin
            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.Add(' Update CADP02_MP_TEMP set     '
                              +'  P2MP_CODEMP=:P2MP_CODEMP '
                              +', P2MP_LOTSEQ=:P2MP_LOTSEQ '
                              +', P2MP_CHAVE=:P2MP_CHAVE '
                              +', P2MP_ITEM=:P2MP_ITEM '
                              +', P2MP_CODPRO=:P2MP_CODPRO '
                              +', P2MP_CODPRO_ORI=:P2MP_CODPRO_ORI '
                              +', P2MP_LOTE=:P2MP_LOTE '
                              +', P2MP_LOTE_ORI=:P2MP_LOTE_ORI '
                              +', P2MP_COMPLEMENTO_ORI=:P2MP_COMPLEMENTO_ORI '
                              +', P2MP_DTVCTO=:P2MP_DTVCTO '
                              +', P2MP_DTVCTO_ORI=:P2MP_DTVCTO_ORI '

                              +', P2MP_PRECO=:P2MP_PRECO '
                              +', P2MP_PCOCUS=:P2MP_PCOCUS '
                              +', P2MP_PCOCOMPRA=:P2MP_PCOCOMPRA '


                              +', P2MP_QTDSOL=:P2MP_QTDSOL '
                              +', P2MP_QTD_SOBRA=:P2MP_QTD_SOBRA '
                              +', P2MP_QTD_QUEBRA=:P2MP_QTD_QUEBRA '
                              +', P2MP_QTD_OUTRET=:P2MP_QTD_OUTRET '

                              +', P2MP_QTD_DEVOL=:P2MP_QTD_DEVOL '
                              +', P2MP_DATAHORA_SOL=:P2MP_DATAHORA_SOL '
                              +', P2MP_TIPEVE=:P2MP_TIPEVE '
                              +', P2MP_CODUSR=:P2MP_CODUSR '

                              +', P2MP_PRECO_ORI =:P2MP_PRECO_ORI'
                              +', P2MP_QTD_ORI   =:P2MP_QTD_ORI '
                              +', P2MP_NOME2 =:P2MP_NOME2'
                              +', P2MP_OUTINF=:P2MP_OUTINF'
                              +' where                      '
                            +'   and P2MP_TERM  =:P2MP_TERM     '
                            +'   and P2MP_DATHOR=:P2MP_DATHOR   '
                            +'   and P2MP_CODPRO=:P2MP_CODPRO_ANT  ');

            DM1.Query1.ParamByName('P2MP_TIPEVE').Value      := Frm_Ped_02.mem_cadp02_mpMPLOCAL.AsInteger;
            DM1.Query1.ParamByName('P2MP_CODPRO').Value        := Frm_Ped_02.mem_cadp02_mpP2MP_CODPRO.AsFloat;
            end
         else
            begin
            DM1.Query2.Close;
            DM1.Query2.SQL.Clear;
            DM1.Query2.SQL.Add(' INSERT INTO CADP02_MP_TEMP (  '
                              +'  P2MP_CODEMP '
                              +', P2MP_LOTSEQ '
                              +', P2MP_CHAVE '
                              +', P2MP_ITEM '
                              +', P2MP_CODPRO '
                              +', P2MP_CODPRO_ORI '
                              +', P2MP_LOTE '
                              +', P2MP_LOTE_ORI '
                              +', P2MP_COMPLEMENTO_ORI '
                              +', P2MP_DTVCTO '
                              +', P2MP_DTVCTO_ORI '

                              +', P2MP_PRECO '
                              +', P2MP_PCOCUS '
                              +', P2MP_PCOCOMPRA '

                              +', P2MP_QTDSOL '
                              +', P2MP_QTD_DEVOL '
                              +', P2MP_QTD_SOBRA '
                              +', P2MP_QTD_QUEBRA '
                              +', P2MP_QTD_OUTRET '

                              +', P2MP_DATAHORA_SOL '
                              +', P2MP_TERM                '
                              +', P2MP_DATHOR                '
                              +', P2MP_CODUSR                '

                              +', P2MP_TIPEVE '
                              +', P2MP_PRECO_ORI                '
                              +', P2MP_QTD_ORI '
                              +', P2MP_NOME '
                              +', P2MP_OUTINF '
                              +') VALUES(                   '
                              +'  :P2MP_CODEMP '
                              +', :P2MP_LOTSEQ '
                              +', :P2MP_CHAVE '
                              +', :P2MP_ITEM '
                              +', :P2MP_CODPRO '
                              +', :P2MP_CODPRO_ORI '
                              +', :P2MP_LOTE '
                              +', :P2MP_LOTE_ORI '
                              +', :P2MP_COMPLEMENTO_ORI '
                              +', :P2MP_DTVCTO '
                              +', :P2MP_DTVCTO_ORI '

                              +', :P2MP_PRECO '
                              +', :P2MP_PCOCUS '
                              +', :P2MP_PCOCOMPRA '
                              +', :P2MP_QTDSOL '
                              +', :P2MP_QTD_DEVOL '
                              +', :P2MP_QTD_SOBRA '
                              +', :P2MP_QTD_QUEBRA '
                              +', :P2MP_QTD_OUTRET '

                              +', :P2MP_DATAHORA_SOL '
                              +', :P2MP_TERM                '
                              +', :P2MP_DATHOR                '
                              +', :P2MP_CODUSR                '
                              +', :P2MP_TIPEVE '
                              +', :P2MP_PRECO_ORI                '
                              +', :P2MP_QTD_ORI '
                              +', :P2MP_NOME2 '
                              +', :P2MP_OUTINF '

                              + '   )                ');

            DM1.Query2.ParamByName('P2MP_TIPEVE').Value       := 2; // exclusao somente quando alteração
            DM1.Query2.ParamByName('P2MP_CODEMP').Value       := codemp;
            DM1.Query2.ParamByName('P2MP_LOTSEQ').Value       := ls_numped;
            DM1.Query2.ParamByName('P2MP_CHAVE').Value        := 0;
            DM1.Query2.ParamByName('P2MP_ITEM').Value         := frm_ped_02.mpd_varItem_mp;
            DM1.Query2.ParamByName('P2MP_CODPRO').Value       := Frm_Ped_02.mem_cadp02_mpP2MP_CODPRO.AsFloat;
            DM1.Query2.ParamByName('P2MP_CODPRO_ORI').AsFloat := fsonumero(txt_codpro.Caption);
            DM1.Query2.ParamByName('P2MP_LOTE').AsString      := Frm_Ped_02.mem_cadp02_mpP2MP_LOTE.AsString;
            DM1.Query2.ParamByName('P2MP_LOTE_ORI').AsString  := txt_lote.Caption;
            DM1.Query2.ParamByName('P2MP_COMPLEMENTO_ORI').AsString  := txt_complemento.Caption;
            DM1.Query2.ParamByName('P2MP_DTVCTO').AsString    := Frm_Ped_02.mem_cadp02_mpP2MP_DTVCTO.AsString;
            DM1.Query2.ParamByName('P2MP_DTVCTO_ORI').AsString:= txt_dtvcto.Caption;
            DM1.Query2.ParamByName('P2MP_PCOCUS').Value       := Frm_Ped_02.mem_cadp02_mpP2MP_PCOCUS.AsFloat;
            DM1.Query2.ParamByName('P2MP_PCOCOMPRA').Value    := Frm_Ped_02.mem_cadp02_mpP2MP_PCOCOMPRA.AsFloat;

            DM1.Query2.ParamByName('P2MP_QTDSOL').Value      := Frm_Ped_02.mem_cadp02_mpP2MP_QTDSOL.AsFloat;
            DM1.Query2.ParamByName('P2MP_QTD_DEVOL').Value   := Frm_Ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat;
            DM1.Query2.ParamByName('P2MP_QTD_SOBRA').Value   := Frm_Ped_02.mem_cadp02_mpP2MP_QTD_SOBRA.AsFloat;
            DM1.Query2.ParamByName('P2MP_QTD_QUEBRA').Value  := Frm_Ped_02.mem_cadp02_mpP2MP_QTD_QUEBRA.AsFloat;
            DM1.Query2.ParamByName('P2MP_QTD_OUTRET').Value  := Frm_Ped_02.mem_cadp02_mpP2MP_QTD_OUTRET.AsFloat;


            DM1.Query2.ParamByName('P2MP_DATAHORA_SOL').AsDateTime:= StrToDateTime(FormatDateTime(fdt,Frm_Ped_02.mem_cadp02_mpP2MP_DATA_SOL.AsDateTime)+' '+Frm_Ped_02.mem_cadp02_mpP2MP_HORA_SOL.AsString+':00');

            DM1.Query2.ParamByName('P2MP_TERM').Value        := frm_ped_02.mPd_NomeComputador;
            DM1.Query2.ParamByName('P2MP_CODUSR').Value      := codusr;
            DM1.Query2.ParamByName('P2MP_DATHOR').Value      := frm_ped_02.mPd_DatHor_Eve;

            DM1.Query2.ParamByName('P2MP_PRECO_ORI').Value   := Frm_Ped_02.mem_cadp02_mpP2MP_PRECO_ORI.AsFloat;
            DM1.Query2.ParamByName('P2MP_QTD_ORI').Value     := Frm_Ped_02.mem_cadp02_mpP2MP_QTD_ORI.AsFloat;
            DM1.Query2.ParamByName('P2MP_NOME2').Value       := Frm_Ped_02.mem_cadp02_mpP2MP_NOME2.AsString;
            DM1.Query2.ParamByName('P2MP_OUTINF').Value      := Frm_Ped_02.mem_cadp02_mpP2MP_OUTINF.AsString;

            try
               DM1.Query2.ExecSQL;
               fdm1StartCommit;
            except
               ex_erroSql_Novo(DM1.Query2,23572,'Frm_Ped_02','CADP02_MP');
               end;
            end;


         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add(' INSERT INTO CADP02_MP_TEMP (  '
                           +'  P2MP_CODEMP '
                           +', P2MP_LOTSEQ '
                           +', P2MP_CHAVE '
                           +', P2MP_ITEM '
                           +', P2MP_CODPRO '
                           +', P2MP_CODPRO_ORI '
                           +', P2MP_LOTE '
                           +', P2MP_LOTE_ORI '
                           +', P2MP_COMPLEMENTO_ORI '
                           +', P2MP_DTVCTO '
                           +', P2MP_DTVCTO_ORI '
                           +', P2MP_PRECO '
                           +', P2MP_PCOCUS '
                           +', P2MP_PCOCOMPRA '

                           +', P2MP_QTDSOL '
                           +', P2MP_QTD_DEVOL '
                           +', P2MP_QTD_SOBRA '
                           +', P2MP_QTD_QUEBRA '
                           +', P2MP_QTD_OUTRET '

                           +', P2MP_DATAHORA_SOL '
                           +', P2MP_TERM                '
                           +', P2MP_DATHOR                '
                           +', P2MP_CODUSR                '
                           +', P2MP_TIPEVE '
                           +', P2MP_PRECO_ORI                '
                           +', P2MP_QTD_ORI '
                           +', P2MP_NOME2 '
                           +', P2MP_OUTINF '
                           +') VALUES (                   '
                           +'  :P2MP_CODEMP '
                           +', :P2MP_LOTSEQ '
                           +', :P2MP_CHAVE '
                           +', :P2MP_ITEM '
                           +', :P2MP_CODPRO '
                           +', :P2MP_CODPRO_ORI '
                           +', :P2MP_LOTE '
                           +', :P2MP_LOTE_ORI '
                           +', :P2MP_COMPLEMENTO_ORI '
                           +', :P2MP_DTVCTO '
                           +', :P2MP_DTVCTO_ORI '
                           +', :P2MP_PRECO '
                           +', :P2MP_PCOCUS '
                           +', :P2MP_PCOCOMPRA '

                           +', :P2MP_QTDSOL '
                           +', :P2MP_QTD_DEVOL '
                           +', :P2MP_QTD_SOBRA '
                           +', :P2MP_QTD_QUEBRA '
                           +', :P2MP_QTD_OUTRET '

                           +', :P2MP_DATAHORA_SOL '
                           +', :P2MP_TERM                '
                           +', :P2MP_DATHOR                '
                           +', :P2MP_CODUSR                '
                           +', :P2MP_TIPEVE '
                           +', :P2MP_PRECO_ORI                '
                           +', :P2MP_QTD_ORI '
                           +', :P2MP_NOME2 '
                           +', :P2MP_OUTINF '
                           + '   )                ');

         DM1.Query1.ParamByName('P2MP_TIPEVE').Value      := 0;
         DM1.Query1.ParamByName('P2MP_ITEM').Value          := frm_ped_02.mpd_varItem_mp;
         end;

      DM1.Query1.ParamByName('P2MP_CODEMP').Value       := codemp;
      DM1.Query1.ParamByName('P2MP_LOTSEQ').Value       := ls_numped;
      DM1.Query1.ParamByName('P2MP_CHAVE').Value        := 0;
      DM1.Query1.ParamByName('P2MP_ITEM').Value         := frm_ped_02.mpd_varItem_mp;
      DM1.Query1.ParamByName('P2MP_CODPRO').Value       := fSonumero(edtmp_codpro.Text);
      DM1.Query1.ParamByName('P2MP_CODPRO_ORI').AsFloat := fsonumero(txt_codpro.Caption);
      DM1.Query1.ParamByName('P2MP_LOTE').AsString      := edtmp_lote.text;
      DM1.Query1.ParamByName('P2MP_LOTE_ORI').AsString  := txt_lote.Caption;
      DM1.Query1.ParamByName('P2MP_COMPLEMENTO_ORI').AsString  := txt_complemento.Caption;
      if trim(edtmp_dtvcto.Text)='/  /' then
         DM1.Query1.ParamByName('P2MP_DTVCTO').AsString    := ''
      else
         DM1.Query1.ParamByName('P2MP_DTVCTO').AsString    := trim(edtmp_dtvcto.Text);
      if trim(txt_dtvcto.Caption)='/  /' then
         DM1.Query1.ParamByName('P2MP_DTVCTO_ORI').AsString:= ''
      else
         DM1.Query1.ParamByName('P2MP_DTVCTO_ORI').AsString:= trim(txt_dtvcto.Caption);
      DM1.Query1.ParamByName('P2MP_PRECO').Value        := edtmp_preco.Value;
      DM1.Query1.ParamByName('P2MP_PCOCUS').Value       := pRet_PCOCUS;
      DM1.Query1.ParamByName('P2MP_PCOCOMPRA').Value    := pRet_UCPR;
      DM1.Query1.ParamByName('P2MP_QTDSOL').Value      := edtmp_qtdsol.Value;
      DM1.Query1.ParamByName('P2MP_QTD_DEVOL').Value   := Frm_Ped_02_MPReq_Outros.edtmp_qtddev.Value;
      DM1.Query1.ParamByName('P2MP_QTD_SOBRA').Value   := Frm_Ped_02_MPReq_Outros.edtmp_sobra.Value;
      DM1.Query1.ParamByName('P2MP_QTD_QUEBRA').Value  := Frm_Ped_02_MPReq_Outros.edtmp_quebra.Value;
      DM1.Query1.ParamByName('P2MP_QTD_OUTRET').Value  := Frm_Ped_02_MPReq_Outros.edtmp_outret.Value;
      DM1.Query1.ParamByName('P2MP_DATAHORA_SOL').AsDateTime:= StrToDateTime(FormatDateTime(fdt,StrToDate(edtmp_datreq.Text))+' '+edtmp_horareq.Text+':00');
      DM1.Query1.ParamByName('P2MP_TERM').Value        := frm_ped_02.mPd_NomeComputador;
      DM1.Query1.ParamByName('P2MP_CODUSR').Value      := codusr;
      DM1.Query1.ParamByName('P2MP_DATHOR').Value      := frm_ped_02.mPd_DatHor_Eve;
      DM1.Query1.ParamByName('P2MP_PRECO_ORI').Value   := valfloat(txt_pcounit.Caption);
      DM1.Query1.ParamByName('P2MP_QTD_ORI').Value     := valfloat(txt_quantidade.Caption);
      DM1.Query1.ParamByName('P2MP_NOME2').Value       := '';
      DM1.Query1.ParamByName('P2MP_OUTINF').Value      := edtmp_outinf.Text;


      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query1,16937,'Frm_Ped_02','CADP01');
         end;
      end;

   if (not DM1.Tb_Pro.Active) or
      (valfloat(edtmp_codpro.Text)<>DM1.Tb_ProPDCODPRO.AsFloat) then
      flcadpro(1,0,0,trim(edtmp_codpro.Text));
   if mOper_mpreq = 0 then
      Frm_Ped_02.mem_cadp02_mpMPLOCAL.AsFloat     := 0;
   Frm_Ped_02.mem_cadp02_mpP2MP_CODEMP.AsFloat                 := codemp;
   Frm_Ped_02.mem_cadp02_mpP2MP_QTDSOL.AsFloat                 := edtmp_qtdsol.Value;
   Frm_Ped_02.mem_cadp02_mpP2MP_CHAVE.AsFloat                  := ValFloat(iif(Trim(Frm_Ped_02.edt_chave.Text)='','0',Frm_Ped_02.edt_chave.Text));
   Frm_Ped_02.mem_cadp02_mpP2MP_ITEM.AsFloat                   := frm_ped_02.mpd_varItem_mp;
   Frm_Ped_02.mem_cadp02_mpP2MP_CODPRO.AsFloat                 := valfloat(edtmp_codpro.Text);
   Frm_Ped_02.mem_cadp02_mpP2MP_CODPRO_ORI.AsFloat             := valfloat(txt_codpro.Caption);
   Frm_Ped_02.mem_cadp02_mpP2MP_LOTE_ORI.AsString              := txt_lote.Caption;
   Frm_Ped_02.mem_cadp02_mpP2MP_COMPLEMENTO_ORI.AsString       := txt_complemento.Caption;
   Frm_Ped_02.mem_cadp02_mpP2MP_PRECO_ORI.AsFloat              := valfloat(txt_pcounit.Caption);
   Frm_Ped_02.mem_cadp02_mpP2MP_QTD_ORI.AsFloat                := ValFloat(txt_quantidade.Caption);
   Frm_Ped_02.mem_cadp02_mpP2MP_NOME2.Value                    := '';
   Frm_Ped_02.mem_cadp02_mpP2MP_OUTINF.Value                   := edtmp_outinf.Text;
   Frm_Ped_02.mem_cadp02_mpP2MP_LOTE.AsString                  := edtmp_lote.text;

   if Trim(edtmp_dtvcto.Text)='/  /' then
      Frm_Ped_02.mem_cadp02_mpP2MP_DTVCTO.AsString             := ''
   else
      Frm_Ped_02.mem_cadp02_mpP2MP_DTVCTO.AsString             := edtmp_dtvcto.Text;

   if Trim(txt_dtvcto.Caption)='/  /' then
      Frm_Ped_02.mem_cadp02_mpP2MP_DTVCTO_ORI.AsString             := ''
   else
      Frm_Ped_02.mem_cadp02_mpP2MP_DTVCTO_ORI.AsString             := txt_dtvcto.Caption;
   Frm_Ped_02.mem_cadp02_mpP2MP_PRECO.AsFloat                  := edtmp_preco.value;
   Frm_Ped_02.mem_cadp02_mpP2MP_PCOCUS.AsFloat                 := pRet_PCOCUS;
   Frm_Ped_02.mem_cadp02_mpP2MP_PCOCOMPRA.AsFloat              := pRet_UCPR;
   Frm_Ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat               := Frm_Ped_02_MPReq_Outros.edtmp_qtddev.Value;
   Frm_Ped_02.mem_cadp02_mpTOTALBRU.AsFloat                    := edtmp_total.Value;
   Frm_Ped_02.mem_cadp02_mpP2MP_DATA_SOL.AsDateTime            := StrToDate(edtmp_datreq.Text);
   Frm_Ped_02.mem_cadp02_mpP2MP_HORA_SOL.AsString              := edtmp_horareq.Text;
   Frm_Ped_02.mem_cadp02_mpP2MP_LOTSEQ.AsFloat                 := ls_numped;
   Frm_Ped_02.mem_cadp02_mpP2MP_QTD_SOBRA.AsFloat              := Frm_Ped_02_MPReq_Outros.edtmp_sobra.Value;
   Frm_Ped_02.mem_cadp02_mpP2MP_QTD_QUEBRA.AsFloat             := Frm_Ped_02_MPReq_Outros.edtmp_quebra.Value;
   Frm_Ped_02.mem_cadp02_mpP2MP_QTD_OUTRET.AsFloat             := Frm_Ped_02_MPReq_Outros.edtmp_outret.Value;
   Frm_Ped_02.mem_cadp02_mpMP_NOMPRO.AsString                  := edtmp_descricao.Text;
   Frm_Ped_02.mem_cadp02_mpP2MP_PRECO_ORI.AsFloat              := valfloat(txt_pcounit.Caption);
   Frm_Ped_02.mem_cadp02_mpP2MP_QTD_ORI.AsFloat                := valfloat(txt_quantidade.Caption);

   Frm_Ped_02.mem_cadp02_mp.Post;

   frm_ped_02.mPdMP_totqtdsol:=frm_ped_02.mPdMP_totqtdsol+Frm_Ped_02.mem_cadp02_mpP2MP_QTDSOL.AsFloat;
   frm_ped_02.mPdMP_totqtdDev:=frm_ped_02.mPdMP_totqtdDev+Frm_Ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat;
   frm_ped_02.mPdMP_totbruSol:=frm_ped_02.mPdMP_totbruSol+Frm_Ped_02.mem_cadp02_mpTOTALBRU.AsFloat;
   frm_ped_02.mPdMP_totbruDev:=frm_ped_02.mPdMP_totbruDev+Arredonda( (Frm_Ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat
                                          *Frm_Ped_02.mem_cadp02_mpP2MP_PRECO.AsFloat), DM1.Tb_PargerPCASAS.AsInteger) ;


   frm_ped_02.FExibirtotais(0);
   if not frm_ped_02.mpd_RestaurandoPedido then
      begin
   //   lindomar
      if frm_ped_02.mPd_SaiTerc then
         begin



         flbaiest_Nov(0,0,1,3,codemp,edtmp_codpro.Text,'frm_pedidos_02',(
                                    (edtmp_qtdsol.Value+Frm_Ped_02_MPReq_Outros.edtmp_sobra.Value)
                                    -(Frm_Ped_02_MPReq_Outros.edtmp_qtddev.Value
                                    +Frm_Ped_02_MPReq_Outros.edtmp_quebra.Value
                                    +Frm_Ped_02_MPReq_Outros.edtmp_outret.Value
                                    )
                                    ) );

         end;
      if frm_ped_02.mPd_SaiRVenda then
         begin
         flbaiest_Nov(0,0,1,2,codemp,edtmp_codpro.Text,'frm_pedidos_02',(
                                    (edtmp_qtdsol.Value+Frm_Ped_02_MPReq_Outros.edtmp_sobra.Value)
                                    -(Frm_Ped_02_MPReq_Outros.edtmp_qtddev.Value
                                    +Frm_Ped_02_MPReq_Outros.edtmp_quebra.Value
                                    +Frm_Ped_02_MPReq_Outros.edtmp_outret.Value
                                    )
                                    ) );

         end;

      if frm_ped_02.mPd_SaiCons then
         begin

         flbaiest_Nov(0,0,1,1,codemp,edtmp_codpro.Text,'frm_pedidos_02',(edtmp_qtdsol.Value-
                                    (Frm_Ped_02_MPReq_Outros.edtmp_qtddev.Value
                                    +Frm_Ped_02_MPReq_Outros.edtmp_sobra.Value
                                    +Frm_Ped_02_MPReq_Outros.edtmp_quebra.Value
                                    +Frm_Ped_02_MPReq_Outros.edtmp_outret.Value
                                    )
                                    ) );

         end;

      if frm_ped_02.mPd_SaiNor then
         begin

         flbaiest_Nov(0,0,1,0,codemp,edtmp_codpro.Text,'frm_pedidos_02',(edtmp_qtdsol.Value-
                                    (Frm_Ped_02_MPReq_Outros.edtmp_qtddev.Value
                                    +Frm_Ped_02_MPReq_Outros.edtmp_sobra.Value
                                    +Frm_Ped_02_MPReq_Outros.edtmp_quebra.Value
                                    +Frm_Ped_02_MPReq_Outros.edtmp_outret.Value
                                    )
                                    ) );
         end;


      if frm_ped_02.mPd_EntraTerc then
         begin

         flbaiest_Nov(0,0,0,3,codemp,edtmp_codpro.Text,'frm_pedidos_02',(edtmp_qtdsol.Value-
                                    (Frm_Ped_02_MPReq_Outros.edtmp_qtddev.Value
                                    +Frm_Ped_02_MPReq_Outros.edtmp_sobra.Value
                                    +Frm_Ped_02_MPReq_Outros.edtmp_quebra.Value
                                    +Frm_Ped_02_MPReq_Outros.edtmp_outret.Value
                                    )
                                    ) );

         end;

      if frm_ped_02.mPd_EntraRVenda then
         begin
         flbaiest_Nov(0,0,0,2,codemp,edtmp_codpro.Text,'frm_pedidos_02',(edtmp_qtdsol.Value-
                                    (Frm_Ped_02_MPReq_Outros.edtmp_qtddev.Value
                                    +Frm_Ped_02_MPReq_Outros.edtmp_sobra.Value
                                    +Frm_Ped_02_MPReq_Outros.edtmp_quebra.Value
                                    +Frm_Ped_02_MPReq_Outros.edtmp_outret.Value
                                    )
                                    ) );

         end;

      if frm_ped_02.mPd_EntraCons then
         begin
         flbaiest_Nov(0,0,0,1,codemp,edtmp_codpro.Text,'frm_pedidos_02',(edtmp_qtdsol.Value-
                                    (Frm_Ped_02_MPReq_Outros.edtmp_qtddev.Value
                                    +Frm_Ped_02_MPReq_Outros.edtmp_sobra.Value
                                    +Frm_Ped_02_MPReq_Outros.edtmp_quebra.Value
                                    +Frm_Ped_02_MPReq_Outros.edtmp_outret.Value
                                    )
                                    ) );
         end;

      if frm_ped_02.mPd_EntraNor then
         begin

         flbaiest_Nov(0,0,0,0,codemp,edtmp_codpro.Text,'frm_pedidos_02',(edtmp_qtdsol.Value-
                                    (Frm_Ped_02_MPReq_Outros.edtmp_qtddev.Value
                                    +Frm_Ped_02_MPReq_Outros.edtmp_sobra.Value
                                    +Frm_Ped_02_MPReq_Outros.edtmp_quebra.Value
                                    +Frm_Ped_02_MPReq_Outros.edtmp_outret.Value
                                    )
                                    ) );

         end;
      end;
   end;
{
if (not frm_ped_02.mpd_RestaurandoPedido) and  (mPd_Venda_Devol=1) and (not CB_PEDORI.Checked) and (not Tb_DevCli.IsEmpty) then
   FBaixarDevolucao(0,edt_codproduto.Text,edt_lote.Text,edt_dtvcto.Text,edt_quantidade.Value);
}

fLimparEditsMReq(2);

frm_ped_02.FExibirtotais(0);
mOper_mpreq         := 0;

if (not frm_ped_02.mpd_RestaurandoPedido) and (not frm_ped_02.mPd_FaturandoPedido) then
   edtmp_codpro.SetFocus;


end;
function Tfrm_Ped_02_MPReq.fLimparEditsMReq(pTipo: Integer): boolean;
begin
edtmp_codpro.Text   :='';
edtmp_descricao.Text:='';
edtmp_lote.Text     :='';
edtmp_qtdsol.Text   :='';
Frm_Ped_02_MPReq_Outros.edtmp_qtddev.Text   :='';
Frm_Ped_02_MPReq_Outros.edtmp_sobra.Text    :='';
Frm_Ped_02_MPReq_Outros.edtmp_quebra.Text   :='';
Frm_Ped_02_MPReq_Outros.edtmp_outret.Text   :='';
edtmp_preco.text    :='';
edtmp_dtvcto.text   :='/  /';
edtmp_horareq.Text  :=':';
edtmp_total.Text    :='';
edtmp_status.Caption:='';
edtmp_outinf.Text   :='';

FCalcTotais(0);
result:=true;
end;


procedure TFrm_Ped_02_MPReq.FormActivate(Sender: TObject);
begin
fLimparEditsMReq(0);
edtmp_codpro.SetFocus;
FCalcTotais(0);

end;

procedure TFrm_Ped_02_MPReq.edtmp_totalEnter(Sender: TObject);
begin
bbGravarMPClick(Self);
end;

procedure TFrm_Ped_02_MPReq.DBGrid_mpDblClick(Sender: TObject);
begin
if (not frm_ped_02.mem_cadp02_mpP2MP_CODPRO.IsNull) then
   begin
   fCarregaEditar(0);
   edtmp_codpro.setfocus;
   end;

end;
function fCarregaEditar(pTipo: Integer): Boolean;
begin
if ptipo=0 then
   begin
   Frm_Ped_02_MPReq.edtmp_codpro.Text      :=frm_ped_02.mem_cadp02_mpP2MP_CODPRO.AsString;
   Frm_Ped_02_MPReq.edtmp_descricao.Text   :=frm_ped_02.mem_cadp02_mpMP_NOMPRO.AsString;
//   Frm_Ped_02_MPReq.edtmp_nome2.Text       :=frm_ped_02.mem_cadp02_mpP2MP_NOME2.AsString;
   Frm_Ped_02_MPReq.edtmp_outinf.Text      :=frm_ped_02.mem_cadp02_mpP2MP_OUTINF.AsString;
   Frm_Ped_02_MPReq.edtmp_lote.Text        :=frm_ped_02.mem_cadp02_mpP2MP_LOTE.AsString;
   Frm_Ped_02_MPReq.edtmp_qtdsol.Value     :=frm_ped_02.mem_cadp02_mpP2MP_QTDSOL.Value;
   Frm_Ped_02_MPReq_Outros.edtmp_qtddev.Value     :=frm_ped_02.mem_cadp02_mpP2MP_QTDDEVOL.Value;
   Frm_Ped_02_MPReq_Outros.edtmp_sobra.Value      :=frm_ped_02.mem_cadp02_mpP2MP_QTD_SOBRA.Value;
   Frm_Ped_02_MPReq_Outros.edtmp_quebra.Value     :=frm_ped_02.mem_cadp02_mpP2MP_QTD_QUEBRA.Value;
   Frm_Ped_02_MPReq_Outros.edtmp_outret.Value     :=frm_ped_02.mem_cadp02_mpP2MP_QTD_OUTRET.Value;
   Frm_Ped_02_MPReq.edtmp_preco.Value      :=frm_ped_02.mem_cadp02_mpP2MP_PRECO.Value;
   Frm_Ped_02_MPReq.edtmp_dtvcto.Text      :=FormatDateTime(fdt2, frm_ped_02.mem_cadp02_mpP2MP_DTVCTO.Value);
   Frm_Ped_02_MPReq.edtmp_datreq.Text      :=FormatDateTime(fdt2, frm_ped_02.mem_cadp02_mpP2MP_DATA_SOL.Value);
   Frm_Ped_02_MPReq.edtmp_horareq.Text     :=frm_ped_02.mem_cadp02_mpP2MP_HORA_SOL.Value;
   Frm_Ped_02_MPReq.edtmp_total.Value      :=frm_ped_02.mem_cadp02_mpTOTALBRU.Value;
   mOper_mpreq:=1;
   end;
result:=true;
end;
procedure TFrm_Ped_02_MPReq.ExcluirMPClick(Sender: TObject);
var
mDeletaItem:Boolean;
begin
if fmensagem('Deseja Excluir o Item Selecionado?',0,['1','2'],0)<>mrYes then
   exit;

if frm_ped_02.mPd_SaiTerc then
   begin
   flbaiest_Nov(0,0,0,3,codemp,frm_ped_02.mem_cadp02_mpP2MP_CODPRO.AsString,'frm_Ped_02'
      , (Frm_Ped_02.mem_cadp02_mpP2MP_QTDSOL.AsFloat-
                                    (Frm_Ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_SOBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_QUEBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_OUTRET.AsFloat
                                    )
                                    ));
   end;

if frm_ped_02.mPd_SaiRVenda then
   begin

   flbaiest_Nov(0,0,0,2,codemp,frm_ped_02.mem_cadp02_mpP2MP_CODPRO.AsString,'frm_Ped_02'
      , (Frm_Ped_02.mem_cadp02_mpP2MP_QTDSOL.AsFloat-
                                    (Frm_Ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_SOBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_QUEBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_OUTRET.AsFloat
                                    )
                                    ));

   end;

if frm_ped_02.mPd_SaiCons then
   begin
   flbaiest_Nov(0,0,0,1,codemp,frm_ped_02.mem_cadp02_mpP2MP_CODPRO.AsString,'frm_Ped_02'
      , (Frm_Ped_02.mem_cadp02_mpP2MP_QTDSOL.AsFloat-
                                    (Frm_Ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_SOBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_QUEBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_OUTRET.AsFloat
                                    )
                                    ));
   end;

if frm_ped_02.mPd_SaiNor then
   begin
   flbaiest_Nov(0,0,0,1,codemp,frm_ped_02.mem_cadp02_mpP2MP_CODPRO.AsString,'frm_Ped_02'
      , (Frm_Ped_02.mem_cadp02_mpP2MP_QTDSOL.AsFloat-
                                    (Frm_Ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_SOBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_QUEBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_OUTRET.AsFloat
                                    )
                                    ));
   end;

if frm_ped_02.mPd_EntraTerc then
   begin
   flbaiest_Nov(0,0,1,3,codemp,frm_ped_02.mem_cadp02_mpP2MP_CODPRO.AsString,'frm_Ped_02'
      , (Frm_Ped_02.mem_cadp02_mpP2MP_QTDSOL.AsFloat-
                                    (Frm_Ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_SOBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_QUEBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_OUTRET.AsFloat
                                    )
                                    ));

   end;

if frm_ped_02.mPd_EntraRVenda then
   begin
   flbaiest_Nov(0,0,1,2,codemp,frm_ped_02.mem_cadp02_mpP2MP_CODPRO.AsString,'frm_Ped_02'
      , (Frm_Ped_02.mem_cadp02_mpP2MP_QTDSOL.AsFloat-
                                    (Frm_Ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_SOBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_QUEBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_OUTRET.AsFloat
                                    )
                                    ));
   end;

if frm_ped_02.mPd_EntraCons then
   begin
   flbaiest_Nov(0,0,1,1,codemp,frm_ped_02.mem_cadp02_mpP2MP_CODPRO.AsString,'frm_Ped_02'
      , (Frm_Ped_02.mem_cadp02_mpP2MP_QTDSOL.AsFloat-
                                    (Frm_Ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_SOBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_QUEBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_OUTRET.AsFloat
                                    )
                                    ));
   end;
if frm_ped_02.mPd_EntraNor then
   begin
   flbaiest_Nov(0,0,1,0,codemp,frm_ped_02.mem_cadp02_mpP2MP_CODPRO.AsString,'frm_Ped_02'
      , (Frm_Ped_02.mem_cadp02_mpP2MP_QTDSOL.AsFloat-
                                    (Frm_Ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_SOBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_QUEBRA.AsFloat
                                    +Frm_Ped_02.mem_cadp02_mpP2MP_QTD_OUTRET.AsFloat
                                    )
                                    ));
   end;

// INICIO SE FOR ALTERACAO DE PEDIDO

mDeletaItem:=true;
if frm_ped_02.mPd_Oper_Ped=1 then
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('SELECT count(*) as QTD FROM CADP02_MP_TEMP WHERE ');
   DM1.query1.SQL.add('  P2MP_TERM=:P2MP_TERM');
   DM1.query1.SQL.add(' and P2MP_DATHOR=:P2MP_DATHOR');
   DM1.query1.SQL.add(' and P2MP_CODPRO_ORI=:P2MP_CODPRO_ORI');
   DM1.query1.SQL.add(' and P2MP_LOTE_ORI=:P2MP_LOTE_ORI');
   DM1.query1.SQL.add(' and P2MP_CODPRO=:P2MP_CODPRO');
   DM1.query1.SQL.add(' and P2MP_LOTE=:P2MP_LOTE');
   DM1.query1.SQL.add(' and P2MP_TIPEVE=0');
   DM1.Query1.ParamByName('P2MP_TERM').AsString      := frm_ped_02.mPd_NomeComputador;
   DM1.Query1.ParamByName('P2MP_DATHOR').AsDateTime  := frm_ped_02.mPd_DatHor_Eve;
   DM1.Query1.ParamByName('P2MP_CODPRO_ORI').Value   := frm_ped_02.mem_cadp02_mpP2MP_CODPRO_ORI.AsFloat;
   DM1.Query1.ParamByName('P2MP_LOTE_ORI').Value     := frm_ped_02.mem_cadp02_mpP2MP_LOTE_ORI.Value;
   DM1.Query1.ParamByName('P2MP_CODPRO').Value       := frm_ped_02.mem_cadp02_mpP2MP_CODPRO.AsFloat;
   DM1.Query1.ParamByName('P2MP_LOTE').Value         := frm_ped_02.mem_cadp02_mpP2MP_LOTE.AsString;
   try
      DM1.Query1.Open;
   except
      ex_erroSql_Novo(DM1.Query1,23572,'Frm_Ped_02','CADP02_MP');
      end;
   if DM1.Query1.Fields[0].AsInteger<=0 then
      begin
      mDeletaItem:=false;


      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add(' INSERT INTO CADP02_MP_TEMP (  '
                        +'  P2MP_CODEMP '
                        +', P2MP_LOTSEQ '
                        +', P2MP_CHAVE '
                        +', P2MP_ITEM '
                        +', P2MP_CODPRO '
                        +', P2MP_CODPRO_ORI '
                        +', P2MP_LOTE '
                        +', P2MP_LOTE_ORI '
                        +', P2MP_COMPLEMENTO_ORI '
                        +', P2MP_DTVCTO '
                        +', P2MP_DTVCTO_ORI '

                        +', P2MP_PRECO '
                        +', P2MP_PCOCUS '
                        +', P2MP_PCOCOMPRA '

                        +', P2MP_QTDSOL '
                        +', P2MP_QTD_DEVOL '
                        +', P2MP_QTD_SOBRA '
                        +', P2MP_QTD_QUEBRA '
                        +', P2MP_QTD_OUTRET '

                        +', P2MP_DATAHORA_SOL '
                        +', P2MP_TERM                '
                        +', P2MP_DATHOR                '
                        +', P2MP_CODUSR                '

                        +', P2MP_TIPEVE '
                        +', P2MP_PRECO_ORI                '
                        +', P2MP_QTD_ORI '
                        +', P2MP_NOME2 '
                        +', P2MP_OUTINF '
                        +') VALUES(                   '
                        +'  :P2MP_CODEMP '
                        +', :P2MP_LOTSEQ '
                        +', :P2MP_CHAVE '
                        +', :P2MP_ITEM '
                        +', :P2MP_CODPRO '
                        +', :P2MP_CODPRO_ORI '
                        +', :P2MP_LOTE '
                        +', :P2MP_LOTE_ORI '
                        +', :P2MP_COMPLEMENTO_ORI '
                        +', :P2MP_DTVCTO '
                        +', :P2MP_DTVCTO_ORI '

                        +', :P2MP_PRECO '
                        +', :P2MP_PCOCUS '
                        +', :P2MP_PCOCOMPRA '
                        +', :P2MP_QTDSOL '
                        +', :P2MP_QTD_DEVOL '
                        +', :P2MP_QTD_SOBRA '
                        +', :P2MP_QTD_QUEBRA '
                        +', :P2MP_QTD_OUTRET '

                        +', :P2MP_DATAHORA_SOL '
                        +', :P2MP_TERM                '
                        +', :P2MP_DATHOR                '
                        +', :P2MP_CODUSR                '
                        +', :P2MP_TIPEVE '
                        +', :P2MP_PRECO_ORI                '
                        +', :P2MP_QTD_ORI '
                        +', :P2MP_NOME2 '
                        +', :P2MP_OUTINF '
                        + '   )                ');

      DM1.Query2.ParamByName('P2MP_TIPEVE').Value       := 2; // exclusao somente quando alteração
      DM1.Query2.ParamByName('P2MP_CODEMP').Value       := codemp;
      DM1.Query2.ParamByName('P2MP_LOTSEQ').Value       := ls_numped;
      DM1.Query2.ParamByName('P2MP_CHAVE').Value        := 0;
      DM1.Query2.ParamByName('P2MP_ITEM').Value         := frm_ped_02.mpd_varItem_mp;
      DM1.Query2.ParamByName('P2MP_CODPRO').Value       := Frm_Ped_02.mem_cadp02_mpP2MP_CODPRO.AsFloat;
      DM1.Query2.ParamByName('P2MP_CODPRO_ORI').AsFloat := fsonumero(txt_codpro.Caption);
      DM1.Query2.ParamByName('P2MP_LOTE').AsString      := Frm_Ped_02.mem_cadp02_mpP2MP_LOTE.AsString;
      DM1.Query2.ParamByName('P2MP_LOTE_ORI').AsString  := txt_lote.Caption;
      DM1.Query2.ParamByName('P2MP_COMPLEMENTO_ORI').AsString  := txt_complemento.Caption;
      DM1.Query2.ParamByName('P2MP_DTVCTO').AsString    := Frm_Ped_02.mem_cadp02_mpP2MP_DTVCTO.AsString;
      if trim(txt_dtvcto.Caption)='/  /'  then
         DM1.Query2.ParamByName('P2MP_DTVCTO_ORI').AsString:=''
      else
         DM1.Query2.ParamByName('P2MP_DTVCTO_ORI').AsString:=txt_dtvcto.Caption;
      DM1.Query2.ParamByName('P2MP_PRECO').Value        := Frm_Ped_02.mem_cadp02_mpP2MP_PRECO.AsFloat;
      DM1.Query2.ParamByName('P2MP_PCOCUS').Value       := Frm_Ped_02.mem_cadp02_mpP2MP_PCOCUS.AsFloat;
      DM1.Query2.ParamByName('P2MP_PCOCOMPRA').Value    := Frm_Ped_02.mem_cadp02_mpP2MP_PCOCOMPRA.AsFloat;

      DM1.Query2.ParamByName('P2MP_QTDSOL').Value      := Frm_Ped_02.mem_cadp02_mpP2MP_QTDSOL.AsFloat;
      DM1.Query2.ParamByName('P2MP_QTD_DEVOL').Value   := Frm_Ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat;
      DM1.Query2.ParamByName('P2MP_QTD_SOBRA').Value   := Frm_Ped_02.mem_cadp02_mpP2MP_QTD_SOBRA.AsFloat;
      DM1.Query2.ParamByName('P2MP_QTD_QUEBRA').Value  := Frm_Ped_02.mem_cadp02_mpP2MP_QTD_QUEBRA.AsFloat;
      DM1.Query2.ParamByName('P2MP_QTD_OUTRET').Value  := Frm_Ped_02.mem_cadp02_mpP2MP_QTD_OUTRET.AsFloat;


      DM1.Query2.ParamByName('P2MP_DATAHORA_SOL').AsDateTime:= StrToDateTime(FormatDateTime(fdt,Frm_Ped_02.mem_cadp02_mpP2MP_DATA_SOL.AsDateTime)+' '+Frm_Ped_02.mem_cadp02_mpP2MP_HORA_SOL.AsString+':00');

      DM1.Query2.ParamByName('P2MP_TERM').Value        := frm_ped_02.mPd_NomeComputador;
      DM1.Query2.ParamByName('P2MP_CODUSR').Value      := codusr;
      DM1.Query2.ParamByName('P2MP_DATHOR').Value      := frm_ped_02.mPd_DatHor_Eve;

      DM1.Query2.ParamByName('P2MP_PRECO_ORI').Value   := Frm_Ped_02.mem_cadp02_mpP2MP_PRECO_ORI.AsFloat;
      DM1.Query2.ParamByName('P2MP_QTD_ORI').Value     := Frm_Ped_02.mem_cadp02_mpP2MP_QTD_ORI.AsFloat;

      DM1.Query2.ParamByName('P2MP_NOME2').Value       := Frm_Ped_02.mem_cadp02_mpP2MP_NOME2.AsString;
      DM1.Query2.ParamByName('P2MP_OUTINF').Value      := Frm_Ped_02.mem_cadp02_mpP2MP_OUTINF.AsString;

      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query2,23572,'Frm_Ped_02','CADP02_MP');
         end;
      end;

   end;

//TERMINO

if mDeletaItem then
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('SELECT count(*) as QTD FROM CADP02_MP_TEMP WHERE ');
   DM1.query1.SQL.add('  P2MP_TERM=:P2MP_TERM');
   DM1.query1.SQL.add(' and P2MP_DATHOR=:P2MP_DATHOR');
   DM1.query1.SQL.add(' and P2MP_CODPRO_ORI=:P2MP_CODPRO_ORI');
   DM1.query1.SQL.add(' and P2MP_LOTE_ORI=:P2MP_LOTE_ORI');
   DM1.query1.SQL.add(' and P2MP_CODPRO=:P2MP_CODPRO');
   DM1.query1.SQL.add(' and P2MP_LOTE=:P2MP_LOTE');
   DM1.query1.SQL.add(' and P2MP_TIPEVE=0');
   DM1.Query1.ParamByName('P2MP_TERM').AsString      := frm_ped_02.mPd_NomeComputador;
   DM1.Query1.ParamByName('P2MP_DATHOR').AsDateTime  := frm_ped_02.mPd_DatHor_Eve;
   DM1.Query1.ParamByName('P2MP_CODPRO_ORI').Value   := frm_ped_02.mem_cadp02_mpP2MP_CODPRO_ORI.AsFloat;
   DM1.Query1.ParamByName('P2MP_LOTE_ORI').Value     := frm_ped_02.mem_cadp02_mpP2MP_LOTE_ORI.Value;
   DM1.Query1.ParamByName('P2MP_CODPRO').Value       := frm_ped_02.mem_cadp02_mpP2MP_CODPRO.AsFloat;
   DM1.Query1.ParamByName('P2MP_LOTE').Value         := frm_ped_02.mem_cadp02_mpP2MP_LOTE.AsString;
   try
      DM1.Query1.ExecSQL;
      fDM1StartCommit;
   except
      ex_erroSql_Novo(DM1.Query1,16937,'Frm_Ped_02','CADP01');
      end;
   end;
frm_ped_02.mem_cadp02_mp.Delete;
mOper_mpreq:=0;
frm_ped_02.mPosReg_MP:=nil;
FCalcTotais(0);



end;
function tFrm_Ped_02_MPReq.FCalcTotais(pTipo: Integer): boolean;
var
mPosReg: TBookmark;
mMP_QtdItem: Integer;
mMP_QtdSol: Real;
mMP_QtdDev: Real;
mMP_Sobra: Real;
mMP_Quebra: Real;
mMP_OutRet: Real;
mMP_Total: Real;
begin
mMP_QtdItem:=0;
mMP_QtdSol :=0;
mMP_QtdDev :=0;
mMP_Sobra  :=0;
mMP_Quebra :=0;
mMP_OutRet :=0;
mMP_Total  :=0;
if not frm_ped_02.mem_cadp02_mp.IsEmpty then
   begin
   mPosReg:=Frm_Ped_02.mem_cadp02_mp.GetBookmark;
   frm_ped_02.mem_cadp02_mp.First;
   While not Frm_Ped_02.mem_cadp02_mp.Eof do
      begin
      mMP_QtdItem:=mMP_QtdItem+1;
      mMP_QtdSol :=mMP_QtdSol+frm_ped_02.mem_cadp02_mpP2MP_QTDSOL.AsFloat;
      mMP_QtdDev :=mMP_QtdDev+frm_ped_02.mem_cadp02_mpP2MP_QTDDEVOL.AsFloat;
      mMP_Sobra  :=mMP_Sobra +frm_ped_02.mem_cadp02_mpP2MP_QTD_SOBRA.AsFloat;
      mMP_Quebra :=mMP_Quebra+frm_ped_02.mem_cadp02_mpP2MP_QTD_QUEBRA.AsFloat;
      mMP_OutRet :=mMP_OutRet+frm_ped_02.mem_cadp02_mpP2MP_QTD_OUTRET.AsFloat;
      mMP_Total  :=mMP_Total +frm_ped_02.mem_cadp02_mpTOTALBRU.AsFloat;
      frm_ped_02.mem_cadp02_mp.Next;
      end;
   Frm_Ped_02.mem_cadp02_mp.GotoBookmark(mPosReg);
   end;
lblmp_qtditem.Caption:=IntToStr(mMP_QtdItem);
lbl_qtdsol.Caption   :=formatFloat(mcasas, mMP_QtdSol);
lbl_qtddev.Caption   :=formatFloat(mcasas, mMP_QtdDev);
lbl_sobra.Caption    :=formatFloat(mcasas, mMP_Sobra);
lbl_quebra.Caption   :=formatFloat(mcasas, mMP_Quebra);
lbl_outret.Caption   :=formatFloat(mcasas, mMP_OutRet);
lbl_total.Caption    :=formatFloat(mcasas, mMP_Total);
result:=true;



end;

procedure TFrm_Ped_02_MPReq.stOutrasQtdClick(Sender: TObject);
begin
Frm_Ped_02_MPReq_Outros.ShowModal;
end;

procedure TFrm_Ped_02_MPReq.bbAdquirirFormulaClick(Sender: TObject);
var
mExisteformula: Boolean;
begin

if (not Frm_Ped_02.QryItem_Nota.Active) or (Frm_Ped_02.QryItem_Nota.IsEmpty) then
   begin
   fmensagem('Não ha produtos digitados!',0,['0'],0);
   exit;
   end;
mExisteformula:=false;
Frm_Ped_02.QryItem_Nota.First;
While not Frm_Ped_02.QryItem_Nota.Eof do
   begin
   DM1.Query5.Close;
   DM1.Query5.SQL.Clear;
   DM1.Query5.SQL.Add('Select * from CADCOMP where '+iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+InttoStr(codemp)+' and '));
   DM1.Query5.SQL.Add(' CPCODPRO=0'+Frm_Ped_02.QryItem_NotaP2CODPRO.AsString);
   if trim(Frm_Ped_02.QryItem_NotaP2LOTE.AsString)<>'' then
      DM1.Query5.SQL.Add(' and CPNUMERO='+chr(39)+Frm_Ped_02.QryItem_NotaP2LOTE.AsString+chr(39));
   DM1.Query5.open;
   if not DM1.Query5.IsEmpty then
      begin
      mExisteformula:=true;
      break;
      end;
   end;
if not mExisteformula then
   begin
   fmensagem('Não Existe Formula para Este Produto!',0,['0'],0);
   exit;
   end;
if fmensagem('Quer Realmente Importar as Composições?',0,['1','2'],2)<>mrYes then
   exit;

Frm_Ped_02.QryItem_Nota.First;
While not Frm_Ped_02.QryItem_Nota.Eof do
   begin
   DM1.Query5.Close;
   DM1.Query5.SQL.Clear;
   DM1.Query5.SQL.Add('Select * from CADCOMP where '+iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+InttoStr(codemp)+' and '));
   DM1.Query5.SQL.Add(' CPCODPRO=0'+Frm_Ped_02.QryItem_NotaP2CODPRO.AsString);
   if trim(Frm_Ped_02.QryItem_NotaP2LOTE.AsString)<>'' then
      DM1.Query5.SQL.Add(' and CPNUMERO='+chr(39)+Frm_Ped_02.QryItem_NotaP2LOTE.AsString+chr(39));
   DM1.Query5.open;
   While not DM1.Query5.Eof do
      begin
      if Frm_Ped_02.mem_cadp02_mp.Locate('P2MP_CODPRO',DM1.Query5.fieldbyName('CPCODMAT').AsFloat,[]) then
         begin
         fCarregaEditar(0);
         edtmp_qtdsol.Value:=edtmp_qtdsol.Value+DM1.Query5.fieldbyName('CPQUANT').AsFloat*
                             Frm_Ped_02.QryItem_NotaP2QTD.AsFloat;
         bbGravarMPClick(self);
         end
      else
         begin
         edtmp_codpro.Text:=DM1.Query5.fieldbyName('CPCODMAT').AsString;
         edtmp_qtdsol.Value:=DM1.Query5.fieldbyName('CPQUANT').AsFloat*
                             Frm_Ped_02.QryItem_NotaP2QTD.AsFloat;
         edtmp_codproExit(self);
         bbGravarMPClick(self);
         end;
      DM1.Query5.Next;
      end;
   Frm_Ped_02.QryItem_Nota.Next;
   end;

end;

procedure TFrm_Ped_02_MPReq.DBGrid_mpKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key = vk_delete) and (not Frm_Ped_02.mem_cadp02_mpP2MP_CODPRO.IsNull) then
   begin
   ExcluirMPClick(Self);
   edtmp_codpro.SetFocus;
   end;

end;

procedure TFrm_Ped_02_MPReq.FormCreate(Sender: TObject);
begin
if Log_TipoLote=0 then
   begin
   lblmp_lote.Visible:=false;
   edtmp_lote.Visible:=false;

   lblmp_outinf.Width:=lblmp_outinf.Width+lblmp_lote.Width;
   edtmp_outinf.Width:=lblmp_outinf.Width;

   dbgrid_mp.columns[03].Visible:=false;
   dbgrid_mp.columns[02].Width  :=lblmp_outinf.Width-3;

   st_lote.Visible:=false;
   txt_lote.Visible:=false;
   st_descricao.Width :=st_descricao.Width+st_lote.Width;
   txt_descricao.Width:=st_descricao.Width;

   end;
end;

procedure TFrm_Ped_02_MPReq.edtmp_outinfKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key=27) and (mOper_mpreq=1) then
   begin
   fLimparEditsMReq(2);
   mOper_mpreq      :=0;
   end;
end;

procedure TFrm_Ped_02_MPReq.edtmp_qtdsolKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key=27) and (mOper_mpreq=1) then
   begin
   fLimparEditsMReq(2);
   mOper_mpreq      :=0;
   end;

end;

procedure TFrm_Ped_02_MPReq.edtmp_precoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key=27) and (mOper_mpreq=1) then
   begin
   fLimparEditsMReq(2);
   mOper_mpreq      :=0;
   end;
end;

procedure TFrm_Ped_02_MPReq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

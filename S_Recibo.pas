unit S_Recibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, Mask, RLReport,func,lerarq,db,dbtables,
  RLFilters, RLDraftFilter, RLRichText, S_Impres, WPRTEDefs, WPCTRMemo,
  WPCTRRich, WPTbar, WPUtil, RxMemDS,jpeg, Grids, DBGrids, DBCtrls;

type
  TFrm_Recibo = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    sbFonteCab: TSpeedButton;
    sbSalvarPadrao: TSpeedButton;
    FontDialog1: TFontDialog;
    TabSheet3: TTabSheet;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    RG_TIPO: TRadioGroup;
    Label8: TLabel;
    VALOR_REC: TEdit;
    Label9: TLabel;
    MDATA: TMaskEdit;
    SACADO: TLabel;
    NOMSACADO: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    EMITENTE: TEdit;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    tsRelatorio: TTabSheet;
    RLReport1: TRLReport;
    matricial: TRLDraftFilter;
    Src_Relatorio: TDataSource;
    texto_impres: TRichEdit;
    Texto: TRichEdit;
    r_band_copia1: TRLBand;
    rlband_copia2: TRLBand;
    RLRichText1: TRLRichText;
    RLRichText2: TRLRichText;
    CB_REPETIR: TCheckBox;
    CB_MATRICIAL: TCheckBox;
    Memo1: TMemo;
    tsConfigNovo: TTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    TsRelNovo: TTabSheet;
    Panel1: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    txt_pagini: TEdit;
    txt_pagfin: TEdit;
    BitBtn1: TBitBtn;
    tsMod02: TTabSheet;
    RLRec_mod02: TRLReport;
    RLBand_detail: TRLBand;
    RLImage1: TRLImage;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    mem_recibo: TRxMemoryData;
    mem_recibovalor: TFloatField;
    mem_recibovalor_extenso: TStringField;
    mem_reciborecebedor_nome: TStringField;
    mem_reciborecebedor_cpf: TStringField;
    mem_recibopagador_nome: TStringField;
    mem_recibopagador_cpf: TStringField;
    mem_reciboreferente: TStringField;
    mem_recibodata_normal: TStringField;
    mem_recibodata_extenso: TStringField;
    RLDBText1: TRLDBText;
    src_recibo: TDataSource;
    mem_reciborecebide: TStringField;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    mem_reciboimportancia: TStringField;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    mem_reciboreferente_label: TStringField;
    RLDBMemo1: TRLDBMemo;
    RLDBMemo2: TRLDBMemo;
    mem_reciboconsiderecoes: TStringField;
    RLDBText7: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    Label20: TLabel;
    cb_modelo: TComboBox;
    Label21: TLabel;
    edt_pagador_cpf: TEdit;
    Label22: TLabel;
    edt_recebedor_cpf: TEdit;
    lbl_qtdvias: TLabel;
    edt_qtdvias: TEdit;
    bbSalvarPadrao: TSpeedButton;
    RLDBMemo3: TRLDBMemo;
    RLBand1: TRLBand;
    mem_recibopagador_nome_cpf: TStringField;
    mem_reciborecebedor_nome_cpf: TStringField;
    gbdet_titulosdoc: TGroupBox;
    mem_det_titulosdoc: TRxMemoryData;
    mem_det_titulosdoctitulos_numero: TStringField;
    mem_det_titulosdoctitulo_vencimento: TStringField;
    mem_det_titulosdoctitulos_obs: TStringField;
    mem_det_titulosdoctitulos_valor: TStringField;
    mem_det_titulosdocdoc_tipo: TStringField;
    mem_det_titulosdocdoc_obs: TStringField;
    mem_det_titulosdocdoc_valor: TStringField;
    src_det_titulosdoc: TDataSource;
    DBGrid_titulosdoc: TDBGrid;
    Panel3: TPanel;
    mem_det_titulosdocdoc_data: TStringField;
    Label23: TLabel;
    Label24: TLabel;
    RLSubDetail_detalhes: TRLSubDetail;
    RLBand5: TRLBand;
    rldet_titulos_numero: TRLDBText;
    rldet_titulos_vencimento: TRLDBText;
    rldet_titulos_obs: TRLDBText;
    rldet_titulos_valor: TRLDBText;
    rldet_doc_tipo: TRLDBText;
    rldet_doc_obs: TRLDBText;
    rldet_doc_data: TRLDBText;
    rldet_doc_valor: TRLDBText;
    RLBand2: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand3: TRLBand;
    rlcab_titulos_numero: TRLLabel;
    rlcab_titulos_vencimento: TRLLabel;
    rlcab_titulos_obs: TRLLabel;
    rlcab_titulos_valor: TRLLabel;
    rlcab_doc_tipo: TRLLabel;
    rlcab_doc_obs: TRLLabel;
    rlcab_doc_data: TRLLabel;
    rlcab_doc_valor: TRLLabel;
    MREFER: TMemo;
    mem_reciboNumeroRecibo: TIntegerField;
    Panel4: TPanel;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    edt_numerorecibo: TEdit;
    bbProximoNumero: TBitBtn;
    sbnSalvarPadrao: TSpeedButton;
    cb_sem_logomarcas: TCheckBox;
    procedure sbFonteCabClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure sbSalvarPadraoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure MDATAExit(Sender: TObject);
    procedure RG_TIPOClick(Sender: TObject);
    procedure VALOR_RECExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CB_MATRICIALExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edt_pagador_cpfExit(Sender: TObject);
    procedure edt_recebedor_cpfExit(Sender: TObject);
    procedure edt_qtdviasExit(Sender: TObject);
    procedure cb_modeloClick(Sender: TObject);
    procedure bbSalvarPadraoClick(Sender: TObject);
    procedure VALOR_RECKeyPress(Sender: TObject; var Key: Char);
    procedure mem_det_titulosdocBeforePost(DataSet: TDataSet);
    procedure DBGrid_titulosdocKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGrid_titulosdocColExit(Sender: TObject);
    procedure bbProximoNumeroClick(Sender: TObject);
    procedure sbnSalvarPadraoClick(Sender: TObject);
  private
    { Private declarations }
    function Substituir(pPalavra,pNovoValor: String): Boolean;

  public
    { Public declarations }
    form_impres_recibo: TFrm_Impres;




   Function fLerAtualizaRel(pTipo: Integer): Boolean;
   procedure ReplaceTags(var Editor: TWPRichText; LocTexto,pNovoValor: String);
  end;

var
  Frm_Recibo: TFrm_Recibo;
  mtabtemp: String;
   FCellNr : Integer;

  pTitCol: Array of String;
  pNomCol: Array of string;
  pTamCol: Array of Integer;
  pFormato: Array of string;

  pDataSet: TDataSet;
  wprt    : TWPRichText;

implementation

uses S_DM1, S_DM4;


{$R *.dfm}

procedure TFrm_Recibo.sbFonteCabClick(Sender: TObject);
begin

FontDialog1.Font.Assign(Texto.SelAttributes);
If FontDialog1.Execute Then
   begin
   If Texto.SelLength > 0 Then
      Texto.SelAttributes.Assign(FontDialog1.font)
   else
      Texto.DefAttributes.Assign(FontDialog1.Font);
   if not sbSalvarPadrao.Enabled then
      sbSalvarPadrao.Enabled:=true;
   end;


end;

procedure TFrm_Recibo.bbImprimirClick(Sender: TObject);
var
mqtdloop,x: Integer;
mQtddim,mPosInicio,mTamMemo,mTamLin: Integer;
mQtdVias: Integer;
xVias: Integer;
begin
RLImage1.Visible:=cb_sem_logomarcas.Checked=false;
if cb_modelo.ItemIndex=1 then
   begin
   if fsonumero(edt_numerorecibo.text)=0 then
      bbProximoNumeroClick(self);
   mQtdVias:=valint(edt_qtdvias.Text);
   if mem_recibo.Active=false then
      mem_recibo.open;
   mem_recibo.EmptyTable;
   for xvias:=1 to mQtdVias do
      begin
       mem_recibo.Append;
       mem_recibovalor.Value        :=valfloat(VALOR_REC.Text);
       mem_recibovalor_extenso.Value:=TodasPrimeirasMaiusculas(extenso(valfloat(VALOR_REC.Text)));
       mem_recibopagador_nome.Value :=EMITENTE.Text;
       mem_recibopagador_nome_cpf.Value :=EMITENTE.Text;
       if fsonumero(fdeixanum(edt_pagador_cpf.Text))>0 then
          begin
          if Fcpf(fdeixanum(edt_pagador_cpf.Text)) then
              begin
              mem_recibopagador_nome_cpf.Value :=mem_recibopagador_nome.Value+' CPF: '+edt_pagador_cpf.Text;
              mem_recibopagador_cpf.value  :=' CPF: '+edt_pagador_cpf.Text;
              mem_reciborecebide.value     :='RECEBI DE: ';
              end
          else
              begin
              mem_recibopagador_nome_cpf.Value :=mem_recibopagador_nome.Value+' CNPJ: '+edt_pagador_cpf.Text;
              mem_recibopagador_cpf.value  :=' CNPJ: '+edt_pagador_cpf.Text;
              mem_reciborecebide.value     :='RECEBI DA EMPRESA: ';
              end;
          end
       else
          mem_reciborecebide.value     :='RECEBI DE: ';

       mem_reciborecebedor_nome.Value :=NOMSACADO.Text;
       mem_reciborecebedor_nome.Value :=NOMSACADO.Text;
       if fsonumero(edt_recebedor_cpf.Text)>0 then
          begin
          if Fcpf(fdeixanum(edt_recebedor_cpf.Text)) then
             begin
             mem_reciborecebedor_nome_cpf.Value :=mem_reciborecebedor_nome_cpf.Value+' CPF: '+edt_recebedor_cpf.Text;
             mem_reciborecebedor_cpf.value  :=' CPF: '+edt_recebedor_cpf.Text;
             end
          else
             begin
             mem_reciborecebedor_nome_cpf.Value :=mem_reciborecebedor_nome_cpf.Value+' CNPJ: '+edt_recebedor_cpf.Text;
             mem_reciborecebedor_cpf.value  :=' CNPJ: '+edt_recebedor_cpf.Text;
             end;
          end;
        if fsonumero(MDATA.Text)<>0 then
           begin
           mem_recibodata_normal.value   := MDATA.Text;
           mem_recibodata_extenso.value  := fPrimeiraMaiscula(DM1.Tb_EmpCIDADE.Value)
                                            +', '+FormatDateTime('dd',  strtodate(MDATA.Text))
                                            +' de '+fPrimeiraMaiscula(
                                            NMes(strtodate(MDATA.Text)))
                                            +' de '+FormatDateTime('yyyy', strtodate(MDATA.Text))+'.';
           end;
         mem_reciboreferente_label.value   := 'Referente a(o):';
         mem_reciboreferente.value         := copy(MREFER.Lines.TEXT,1,3000);
         mem_reciboimportancia.value       := 'A Importancia de:';
         mem_reciboconsiderecoes.value     := 'E para maior clareza firmo o presente recibo para que produza '
                                              +'seus efeitos, dando plena,rasa e irrevogável quitação, pelo '
                                              +'valor recebido. ';
         mem_recibo.post;
         end;
     RLRec_mod02.PreviewModal;


   end
else
   begin
   if (FileExists(Banco_Servidor+'\PASTADOCS\'+Banco_usuario+'\RECIBO.RTF')) and  (CB_MATRICIAL.Checked=False) then
      begin
      bbImprimir.Enabled:=false;
      fLerAtualizaRel(0);
      PageControl1.ActivePage:=TsRelNovo;

   //   if fLerAtualizaRel(0) then
   //      wp_texto.Print;
      bbImprimir.Enabled:=true;
      end
   else
      begin
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.add('Select count(*) from CADTEXTO where ');
      DM1.Query5.SQL.add(' TTCHAVE='+chr(39)+'RECIBO'+chr(39));
      DM1.Query5.Open;

      mTabTemp:=fProctemp(20);
      mTabTemp:=mTabTemp+'.txt';
      Texto.Lines.saveToFile(mTabTemp);
      //RLRichText1.lines.Text:=Texto.Lines.Text;
      texto_impres.lines.loadfromfile(mTabTemp);

      verteclado(0);
      texto_impres.Update;

      Substituir('[LEG001]',EMITENTE.Text);
      Substituir('[LEG002]',VALOR_REC.Text);
      Substituir('[LEG003]',Extenso(valfloat(VALOR_REC.Text)));
      Substituir('[LEG004]',MREFER.Text);
      Substituir('[LEG005]',FormatDateTime('dd', StrToDate(MDATA.Text))+' de '+NMes(StrToDate(MDATA.Text))+' de '+FormatDatetime('yyyy' , Strtodate(MDATA.Text))+'.');
      Substituir('[LEG006]',NOMSACADO.Text);

      mTamLin:=80;
      if CB_MATRICIAL.Checked then
         begin
         mqtdloop:=texto_impres.Lines.Count-1;
         Memo1.Lines.Clear;
         for x:=0 to mqtdloop do
            begin
            if length(texto_impres.Lines[x])<mTamLin+1 then
               memo1.Lines.Add(trim(texto_impres.lines[x]))
            else
               begin
               mPosInicio:=1;
               mTamMemo:=length(texto_impres.Lines[x]);
               mQtdDim:=0;
               While true do
                  begin
                  if mPosInicio+mTamLin>=mTamMemo then
                     begin
                     memo1.Lines.Add(copy(texto_impres.Lines[x],mPosInicio,mTamMemo-mPosInicio));
                     break;
                     end
                  else
                     begin
                     if copy(texto_impres.Lines[x],mPosInicio+mTamLin-mTamDim,1)=' ' then
                        begin
                        memo1.Lines.Add(copy(texto_impres.Lines[x],mPosInicio,mTamLin-mTamdim));
                        mPosInicio:=mPosInicio+mTamLin-mTamDim;
                        mTamDim:=0;
                        end
                     else
                        mTamDim:=mTamDim+1;
                     end;
                  end;
                end;
             end;
          mqtdloop:=Memo1.Lines.Count-1;
          for x:=0 to mqtdloop do
            begin
            if x<mqtdloop then
               begin
               if trim(Memo1.Lines[x])='' then
                  continue;
               if trim(Memo1.Lines[x+1])<>'' then
                  Memo1.Lines[x]:=fCentralizar(mTamLin,Memo1.Lines[x]);
               end;
            end;

         mqtdloop:=Memo1.Lines.Count-1;
         testeform := TFrm_Recibo(FindGlobalComponent('form_impres_recibo'));
         if (testeform=nil)  then
            Application.CreateForm(Tfrm_Impres, form_impres_recibo);

         form_impres_recibo.fimpresajustaimp(3,136,33,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP


         form_impres_recibo.mlin:=1;
         form_impres_recibo.RDprint1.Impf(01,01,centra('R E C I B O',' ',136),mneg);
         form_impres_recibo.mlin:=form_impres_recibo.mlin+1;
         form_impres_recibo.RDprint1.Impf(01,01,centra('- - - - - -',' ',136),mneg);

         for x:=0 to mqtdloop do
            begin
            form_impres_recibo.mlin:=form_impres_recibo.mlin+1;
            form_impres_recibo.RDprint1.ImpF(form_impres_recibo.mlin,01,Memo1.Lines[x],mnormal);
            end;
         form_impres_recibo.mlin:=form_impres_recibo.mlin+4;
         form_impres_recibo.RDprint1.Impf(form_impres_recibo.mlin,01,centra(DM1.Tb_EmpCIDADE.AsString+', '+FormatDateTime('dd', StrToDate(MDATA.Text))+' de '+NMes(StrToDate(MDATA.Text))+' de '+FormatDatetime('yyyy' , Strtodate(MDATA.Text))+'.',' ',80),mnormal);

         form_impres_recibo.mlin:=form_impres_recibo.mlin+3;
         form_impres_recibo.RDprint1.Impf(form_impres_recibo.mlin,01,centra(insere('-','-',length(NOMSACADO.Text)),' ',80) ,mnormal );
         form_impres_recibo.mlin:=form_impres_recibo.mlin+1;
         form_impres_recibo.RDprint1.Impf(form_impres_recibo.mlin,01,centra(NOMSACADO.Text,' ',80),mnormal);



         IF CB_REPETIR.Checked then
            begin
            form_impres_recibo.RDprint1.Novapagina;
            form_impres_recibo.mlin:=1;
            form_impres_recibo.RDprint1.Impf(01,01,centra('R E C I B O',' ',80),mneg);
            form_impres_recibo.mlin:=form_impres_recibo.mlin+1;
            form_impres_recibo.RDprint1.Impf(01,01,centra('- - - - - -',' ',80),mneg);

            for x:=0 to mqtdloop do
               begin
               form_impres_recibo.mlin:=form_impres_recibo.mlin+1;
               form_impres_recibo.RDprint1.ImpF(form_impres_recibo.mlin,01,Memo1.Lines[x],mnormal);
               end;
            form_impres_recibo.mlin:=form_impres_recibo.mlin+4;
            form_impres_recibo.RDprint1.Impf(form_impres_recibo.mlin,01,centra(DM1.Tb_EmpCIDADE.AsString+', '+FormatDateTime('dd', StrToDate(MDATA.Text))+' de '+NMes(StrToDate(MDATA.Text))+' de '+FormatDatetime('yyyy' , Strtodate(MDATA.Text))+'.',' ',80),mnormal);

            form_impres_recibo.mlin:=form_impres_recibo.mlin+3;
            form_impres_recibo.RDprint1.Impf(form_impres_recibo.mlin,01,centra(insere('-','-',length(NOMSACADO.Text)),' ',80) ,mnormal );
            form_impres_recibo.mlin:=form_impres_recibo.mlin+1;
            form_impres_recibo.RDprint1.Impf(form_impres_recibo.mlin,01,centra(NOMSACADO.Text,' ',80),mnormal);
            end;
         if form_impres_recibo.RDprint1.Setup then form_impres_recibo.RDprint1.Fechar;
         form_impres_recibo.free;
         form_impres_recibo:=nil;

      //   texto_impres.Lines.saveToFile(mTabTemp);
         end
      else
         begin
         texto_impres.Lines.saveToFile(mTabTemp);
      //texto_impres:=Texto;
         RLRichText1.lines.loadfromfile(mTabTemp);
         RLRichText2.lines.loadfromfile(mTabTemp);
         if CB_REPETIR.Checked then
            begin
            rlband_copia2.Visible        :=true;
            end
         else
            begin
            rlband_copia2.Visible          :=false;
            end;

         RLReport1.PreviewModal;
         end;
      end;
   end;


end;

procedure TFrm_Recibo.sbSalvarPadraoClick(Sender: TObject);
begin
mTabTemp:=fProctemp(20);
mTabTemp:=mTabTemp+'.txt';
Texto.Lines.saveToFile(mTabTemp);

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select count(*) from CADTEXTO where ');
DM1.Query1.SQL.add(' TTCHAVE='+chr(39)+'RECIBO'+chr(39));
DM1.Query1.Open;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftMemo,'TTTEXTO',ptinput);
DM1.Query2.Params.CreateParam(ftString,'TTPAGINA',ptinput);
DM1.Query2.Params.CreateParam(ftString,'TTDESCRICAO',ptinput);
DM1.Query2.Params.CreateParam(ftString,'TTDATA',ptinput);
DM1.Query2.Params.CreateParam(ftString,'TTCHAVE',ptinput);

if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   DM1.Query2.SQL.Add('Update CADTEXTO set ');
   DM1.Query2.SQL.Add(' TTTEXTO=:TTTEXTO ');
   DM1.Query2.SQL.Add(',TTPAGINA=:TTPAGINA ');
   DM1.Query2.SQL.Add(',TTDESCRICAO=:TTDESCRICAO ');
   DM1.Query2.SQL.Add(',TTDATA=:TTDATA ');
   DM1.Query2.SQL.Add(' where TTCHAVE=:TTCHAVE ');
   end
else
   begin
   DM1.Query2.SQL.Add('Insert into CADTEXTO ( ');
   DM1.Query2.SQL.Add(' TTTEXTO ');
   DM1.Query2.SQL.Add(',TTPAGINA ');
   DM1.Query2.SQL.Add(',TTDESCRICAO ');
   DM1.Query2.SQL.Add(',TTDATA ');
   DM1.Query2.SQL.Add(',TTCHAVE ');
   DM1.Query2.SQL.Add(') values (');
   DM1.Query2.SQL.Add(' :TTTEXTO ');
   DM1.Query2.SQL.Add(', :TTPAGINA ');
   DM1.Query2.SQL.Add(',:TTDESCRICAO ');
   DM1.Query2.SQL.Add(',:TTDATA ');
   DM1.Query2.SQL.Add(',:TTCHAVE ');
   DM1.Query2.SQL.Add(')');
   end;

DM1.Query2.ParamByName('TTTEXTO').LoadFromFile(mTabTemp,ftMemo);
DM1.Query2.ParamByName('TTPAGINA').Asinteger:=1;


DM1.Query2.ParambyName('TTDESCRICAO').AsString:='Recido';
DM1.Query2.ParambyName('TTDATA').AsDateTime   :=date;
DM1.Query2.ParambyName('TTCHAVE').AsString    :='RECIBO';
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro ao Gravar o arquivo!',mtWarning,[mbOk],0);
   end;
deletefile(mTabTemp);

fDeletaPadroes(0,'_RECIBO','');
fGravaPadroes(0,'CB_REPETIR'   ,'checked'   ,'_RECIBO',iif(CB_REPETIR.Checked,'true','false'));



end;

procedure TFrm_Recibo.FormCreate(Sender: TObject);
var
f: Textfile;
   mjpeg: TJPEGImage;

begin
mem_reciboVALOR.displayformat:=mcasas;
PageControl1.ActivePageIndex:=0;
RLBand_detail.Borders.DrawLeft:=true;
RLBand_detail.Borders.DrawTop:=true;
RLBand_detail.Borders.DrawRight:=true;
RLBand_detail.Borders.DrawBottom:=true;


RLSubDetail_detalhes.Borders.DrawLeft:=true;
RLSubDetail_detalhes.Borders.DrawTop:=true;
RLSubDetail_detalhes.Borders.DrawRight:=true;
RLSubDetail_detalhes.Borders.DrawBottom:=true;

RLLabel4.Borders.DrawBottom:=true;
RLLabel4.Borders.DrawRight:=true;

RLLabel5.Borders.DrawBottom:=true;
RLLabel5.Borders.DrawLeft:=true;

rlcab_titulos_vencimento.Borders.DrawLeft:=true;
rlcab_titulos_obs.Borders.DrawLeft:=true;
rlcab_titulos_valor.Borders.DrawLeft:=true;
rlcab_titulos_valor.Borders.DrawRight:=true;


rlcab_doc_tipo.Borders.DrawLeft :=true;
rlcab_doc_obs.Borders.DrawLeft  :=true;
rlcab_doc_data.Borders.DrawLeft :=true;
rlcab_doc_valor.Borders.DrawLeft:=true;



rldet_titulos_vencimento.Borders.DrawLeft:=true;
rldet_titulos_obs.Borders.DrawLeft:=true;
rldet_titulos_valor.Borders.DrawLeft:=true;
rldet_titulos_valor.Borders.DrawRight:=true;


rldet_doc_tipo.Borders.DrawLeft :=true;
rldet_doc_obs.Borders.DrawLeft  :=true;
rldet_doc_data.Borders.DrawLeft :=true;
rldet_doc_valor.Borders.DrawLeft:=true;


if flfilpad(-1,'_RECIBO','CB_MODELO') then
   cb_modelo.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);

if flfilpad(-2,'_RECIBO','QTDVIAS') then
   edt_qtdvias.Text:=DM4.Tb_FilPad2FPVALOR.Value;


cb_modeloclick(self);
mjpeg:=TJPEGImage.Create;
if fLerImagemGravaStream('LOGO1',mjpeg)=true then
   begin
   RLImage1.Picture.Bitmap.Assign(mjpeg);
   RLImage1.visible := True;
   end
else
   RLImage1.visible := False;
freeandnil(mjpeg);


tsMod02.TabVisible:=false;
RG_TIPOClick(self);
MDATA.Text:=FormatDateTime(fdt2, date);

mTabTemp:=fProctemp(20);
mTabTemp:=mTabTemp+'.txt';
DM1.Query3.Close;
DM1.Query3.sql.clear;
DM1.Query3.SQL.Add('Select TTPAGINA,TTTEXTO,TTDESCRICAO,TTDATA,TTCHAVE from CADTEXTO  where '
                  +' TTCHAVE='+chr(39)+'RECIBO'+chr(39)
                     +' ORDER BY TTPAGINA');
try
   DM1.Query3.Open;
except
   DM1.Query3.SQL.savetofile(mpastatemp +'sql.txt');
   end;

if not DM1.Query3.Eof then
   begin
   While not DM1.Query3.Eof do
      begin
      assignfile(f,mtabTemp);
      rewrite(f);
      While not DM1.Query3.Eof do
         begin
         writeln(f,DM1.Query3.fieldbyName('TTTEXTO').AsString);
         DM1.Query3.Next;
         end;
      closefile(f);
      end;
   Texto.Lines.LoadFromFile(mTabTemp);
   DeleteFile(mTabTemp);
   end;
if codusr=1111 then
   tsRelatorio.TabVisible:=true
else
   tsRelatorio.TabVisible:=false;



if flfilpad(0,'_RECIBO','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_REPETIR',[]) then
      CB_REPETIR.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   end;

if flfilpad(1111,'_RECIBO','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_MATRICIAL',[]) then
      CB_MATRICIAL.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   end;
MREFER.lines.clear;

end;

procedure TFrm_Recibo.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Recibo.MDATAExit(Sender: TObject);
begin
if trim(MDATA.Text)='/  /' then
   MDATA.Text:=FormatDatetime(fdt2, date);
try
   MDATA.Text:=FormatDatetime(fdt2, StrtoDate(MDATA.Text));
except
   fmensagem('Data Invalida!',0,['0'],0);
   MDATA.SetFocus;
   end;
end;

procedure TFrm_Recibo.RG_TIPOClick(Sender: TObject);
begin
if RG_TIPO.ItemIndex=0 then
   begin
   EMITENTE.Text        :=DM1.Tb_EmpRAZAO.AsString;
   edt_pagador_cpf.Text :=MaskCPFCNPJ(insere(DM1.Tb_EmpCGC.AsString,'0',14));
   edt_recebedor_cpf.Text:='';
   NOMSACADO.Text:='';

   end
else
   begin
   NOMSACADO.Text:=DM1.Tb_EmpRAZAO.AsString;
   EMITENTE.Text :='';
   edt_pagador_cpf.Text  :='';
   edt_recebedor_cpf.Text:=MaskCPFCNPJ(insere(DM1.Tb_EmpCGC.AsString,'0',14));

   end

end;

procedure TFrm_Recibo.VALOR_RECExit(Sender: TObject);
begin
VALOR_REC.Text:=FormatFloat(mcasas, ValFloat(VALOR_REC.Text));
end;

function tFrm_Recibo.Substituir(pPalavra,pNovoValor: String): Boolean;
var
  FoundAt: LongInt;
  StartPos, ToEnd: Integer;
begin
  with texto_impres do
  begin
    { begin the search after the current selection if there is one }
    { otherwise, begin at the start of the text }
    if SelLength <> 0 then

      StartPos := SelStart + SelLength
    else

      StartPos := 0;

    { ToEnd is the length from StartPos to the end of the text in the rich edit control }

    ToEnd := Length(Text) - StartPos;

    FoundAt := FindText(pPalavra , StartPos, ToEnd, [stMatchCase]);
    if FoundAt <> -1 then
    begin
//      SetFocus;
      SelStart := FoundAt;
      SelLength := Length(pPalavra);
      texto_impres.SelText := pNovoValor;
    end;
  end;
end;
procedure TFrm_Recibo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Recibo.CB_MATRICIALExit(Sender: TObject);
begin
fDeletaPadroes(1111,'_RECIBO','');
fGravaPadroes(1111,'CB_MATRICIAL'   ,'checked'   ,'_RECIBO',iif(CB_MATRICIAL.Checked,'true','false'));

end;



Function TFrm_Recibo.fLerAtualizaRel(pTipo: Integer): Boolean;
begin
if not DirectoryExists(Banco_Servidor+'\PASTADOCS\'+Banco_usuario) then
   CreateDir(Banco_Servidor+'\PASTADOCS\'+Banco_usuario);
if not FileExists(Banco_Servidor+'\PASTADOCS\'+Banco_usuario+'\RECIBO.RTF') then
   begin
   fmensagem('Não Existe um Texto Padrão de Locação!',0,['0'],0);
   exit;
   end;
tsRelatorio.TabVisible:=true;

{
wp_texto.Clear;

PageControl1.ActivePage := TsRelNovo;
wp_texto.LoadFromFile(Banco_Servidor+'\PASTADOCS\'+Banco_usuario+'\RECIBO.RTF');
}

{---Ativa o Cabeçalho para Substituição de Valores das [TAGS]--}

{wp_texto.WorkOnText   := wpHeader;
ReplaceTags(wp_texto,'LEG001',EMITENTE.Text);
ReplaceTags(wp_texto,'LEG002',VALOR_REC.Text);
ReplaceTags(wp_texto,'LEG003',Extenso(ValFloat(VALOR_REC.Text)));
ReplaceTags(wp_texto,'LEG004',MREFER.Text);
ReplaceTags(wp_texto,'LEG005',DM1.Tb_EmpCIDADE.AsString+', '+FormatDateTime('dd', StrToDate(MDATA.Text))
+' de '+NMes(StrToDate(MDATA.Text))+' de '+FormatDateTime('yyyy', StrToDate(MDATA.Text))+'.');
ReplaceTags(wp_texto,'LEG006',NOMSACADO.Text);
 }
{---Ativa o Corpo do Relatorio para Substituição de Valores das [TAGS]--}
{
wp_texto.WorkOnText   := wpBody;

ReplaceTags(wp_texto,'LEG001',EMITENTE.Text);
ReplaceTags(wp_texto,'LEG002',VALOR_REC.Text);
ReplaceTags(wp_texto,'LEG003',Extenso(ValFloat(VALOR_REC.Text)));
ReplaceTags(wp_texto,'LEG004',MREFER.Text);
ReplaceTags(wp_texto,'LEG005',DM1.Tb_EmpCIDADE.AsString+', '+FormatDateTime('dd', StrToDate(MDATA.Text))
+' de '+NMes(StrToDate(MDATA.Text))+' de '+FormatDateTime('yyyy', StrToDate(MDATA.Text))+'.');
ReplaceTags(wp_texto,'LEG006',NOMSACADO.Text);

wp_texto.InputTextField(wpoPageNumber);
txt_pagini.Text := '1';
txt_pagfin.Text := IntToStr(wp_texto.PageCount);

 }
end;


procedure TFrm_Recibo.ReplaceTags(var Editor: TWPRichText; LocTexto,pNovoValor: String);
var
//  Localizar : String;
  BlobStream: TStream;
begin
//  Localizar := '['+LocTexto+']';
  LocTexto  := '['+LocTexto+']';
{
with Editor.Finder do
   begin
   wildcard := '*';
   ToStart;
   try
      wp_texto.Finder.ToStart;
      while wp_texto.Finder.Next(LocTexto) do
         begin
         wp_texto.CPPosition       := wp_texto.Finder.FoundPosition;
         wp_texto.Finder.FoundText := pNovoValor;
         end;
      wp_texto.DelayedReformat;
   finally
      FreeAndNil(wprt);
      end;
   end;
   }
   Editor.Refresh;
end;

procedure TFrm_Recibo.BitBtn1Click(Sender: TObject);
begin
{
if (ValInt(txt_pagini.Text) > 0) and (ValInt(txt_pagfin.Text) > 0) then
  begin
  if ValInt(txt_pagfin.Text) >= ValInt(txt_pagini.Text) then
    begin
    wp_texto.PrinterSetup;
    wp_texto.PrintPages(ValInt(txt_pagini.Text),ValInt(txt_pagfin.Text));
    end
  else
    begin
    fmensagem('Página Inicial maior que a Página Final!',0,['0'],0);
    txt_pagini.SetFocus;
    Exit;
    end;
  end;
  }
end;

procedure TFrm_Recibo.edt_pagador_cpfExit(Sender: TObject);
begin
if fsonumero(edt_pagador_cpf.text)=0 then
   edt_pagador_cpf.text:=''
else
   edt_pagador_cpf.text:=MaskCPFCNPJ(edt_pagador_cpf.text);

end;

procedure TFrm_Recibo.edt_recebedor_cpfExit(Sender: TObject);
begin
if fsonumero(edt_recebedor_cpf.text)=0 then
   edt_recebedor_cpf.text:=''
else
   begin
   if length(fdeixanum(edt_recebedor_cpf.text))>11 then
      edt_recebedor_cpf.text:=MaskCPFCNPJ(insere(fdeixanum(edt_recebedor_cpf.text),'0',14))
   else
      edt_recebedor_cpf.text:=MaskCPFCNPJ(insere(fdeixanum(edt_recebedor_cpf.text),'0',11));

   end;

end;

procedure TFrm_Recibo.edt_qtdviasExit(Sender: TObject);
begin
if (fsonumero(edt_qtdvias.Text)<1) or (fsonumero(edt_qtdvias.Text)>100) then
   edt_qtdvias.Text:='1'
else
   edt_qtdvias.Text:=fdeixanum(edt_qtdvias.Text);
end;

procedure TFrm_Recibo.cb_modeloClick(Sender: TObject);
begin
if cb_modelo.ItemIndex=1 then
   begin
   lbl_qtdvias.Visible:=true;
   edt_qtdvias.Visible:=true;
   gbdet_titulosdoc.Visible:=true;
   end
else
   begin
   lbl_qtdvias.Visible:=false;
   edt_qtdvias.Visible:=false;
   gbdet_titulosdoc.Visible:=false;
   end;

end;

procedure TFrm_Recibo.bbSalvarPadraoClick(Sender: TObject);
begin

fDeletaPadroes(-2,'_RECIBO','');
fGravaPadroes(-2,'QTDVIAS'          ,'text'   ,'_RECIBO',fdeixanum(edt_qtdvias.Text));


end;

procedure TFrm_Recibo.VALOR_RECKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then
   key:=decimalSeparator;

end;

procedure TFrm_Recibo.mem_det_titulosdocBeforePost(DataSet: TDataSet);
begin
if valfloat(mem_det_titulosdoctitulos_valor.Value)>0 then
   mem_det_titulosdoctitulos_valor.Value:=FormatFloat(mcasas, valfloat(mem_det_titulosdoctitulos_valor.Value));
if valfloat(mem_det_titulosdocdoc_valor.Value)>0 then
   mem_det_titulosdocdoc_valor.Value:=FormatFloat(mcasas, valfloat(mem_det_titulosdocdoc_valor.Value));

if fsonumero(mem_det_titulosdoctitulo_vencimento.Value)>0 then
   begin
   try
      mem_det_titulosdoctitulo_vencimento.Value:=Formatdatetime(fdt2,  strtodate(mem_det_titulosdoctitulo_vencimento.Value));
   except
      mem_det_titulosdoctitulo_vencimento.Value:='';
      end;
   end;
end;

procedure TFrm_Recibo.DBGrid_titulosdocKeyPress(Sender: TObject;
  var Key: Char);
  var
  Grid : TDbGrid;
begin

if mem_det_titulosdoc.State in [dsedit,dsinsert] then
   begin
   if key<>#8 then
      begin
      if (DBGrid_titulosdoc.SelectedField=mem_det_titulosdoctitulo_vencimento) or
         (DBGrid_titulosdoc.SelectedField=mem_det_titulosdocdoc_data) then
         begin
         if uppercase(key)='B' then
             key:='/';
          Grid := Sender as TDbGrid;
         if (length( (grid.Controls[0] as TInplaceEdit).Text)=1) or
            (length( (grid.Controls[0] as TInplaceEdit).Text)=4) then
            keybd_event(Ord('B'), 0, 0, 0);
         end;
      end;
   end;

end;

procedure TFrm_Recibo.FormShow(Sender: TObject);
begin
if mem_det_titulosdoc.Active=false then
   mem_det_titulosdoc.Open;
end;

procedure TFrm_Recibo.DBGrid_titulosdocColExit(Sender: TObject);
begin
if mem_det_titulosdoc.State in [dsedit,dsinsert] then
   begin
   if (DBGrid_titulosdoc.SelectedField=mem_det_titulosdoctitulos_valor) then
      begin
      if length(mem_det_titulosdoctitulos_valor.AsString)>0 then
         mem_det_titulosdoctitulos_valor.Value:=formatfloat(mcasas, valfloat(mem_det_titulosdoctitulos_valor.Value));
      end;

   if (DBGrid_titulosdoc.SelectedField=mem_det_titulosdocdoc_valor) then
      begin
      if length(mem_det_titulosdocdoc_valor.AsString)>0 then
         mem_det_titulosdocdoc_valor.value :=formatfloat(mcasas, valfloat(mem_det_titulosdocdoc_valor.Value));
      end;
   end;   



end;

procedure TFrm_Recibo.bbProximoNumeroClick(Sender: TObject);
begin
edt_numerorecibo.text:=inttostr(fBuscareTestarID('RECIBOGERAL'));

end;

procedure TFrm_Recibo.sbnSalvarPadraoClick(Sender: TObject);
begin

fDeletaPadroes(-1,'_RECIBO','');
fGravaPadroes(-1,'CB_MODELO'          ,'checked'   ,'_RECIBO',IntTostr(cb_modelo.ItemIndex));

end;

end.


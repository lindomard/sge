unit S_Zest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Gauges, StdCtrls, Buttons,func,lerarq,s_DM1,S_For, DB, DBTables,
  S_Pro, ExtCtrls,s_lerarq_geral;

type
  TFrm_ZEst = class(TForm)
    bbZerarAgora: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    CB_NIVEL: TComboBox;
    Label2: TLabel;
    CODFAB: TEdit;
    NOMFAB: TEdit;
    Qr_Pro: TQuery;
    Qr_ProPDNOME: TStringField;
    Qr_ProPDCODPRO: TFloatField;
    Qr_ProPDNIVEL: TFloatField;
    Qr_ProPDCODFOR: TFloatField;
    Qr_ProPDCODEMP: TFloatField;
    Qr_LGC: TQuery;
    Qr_LGCCLCODEMP: TFloatField;
    Qr_LGCCLCODPRO: TFloatField;
    Qr_LGCCLDTVCTO: TDateTimeField;
    Qr_LGCCLNUMERO: TStringField;
    Qr_LGCCLQTD: TFloatField;
    Label4: TLabel;
    CODPRO: TEdit;
    NOMPRO: TEdit;
    Qr_LGCCLQTDR: TFloatField;
    Qr_LGCCLQTDC: TFloatField;
    Qr_LGCCLPRECO1: TFloatField;
    Qr_LGCCLPRECO2: TFloatField;
    Qr_LGCCLPRECO3: TFloatField;
    Qr_LGCCLPRECOA1: TFloatField;
    Qr_LGCCLPRECOA2: TFloatField;
    Qr_LGCCLPRECOA3: TFloatField;
    Qr_LGCCLPCUSTO: TFloatField;
    Qr_LGCCLESTMAX: TFloatField;
    Qr_LGCCLESTMIN: TFloatField;
    Qr_LGCCLDTUATP1: TDateTimeField;
    Qr_LGCCLDTUATP2: TDateTimeField;
    Qr_LGCCLDTUATP3: TDateTimeField;
    Qr_LGCCLQTDT: TFloatField;
    Qr_LGCCLQTD_PRAT: TFloatField;
    Qr_LGCCLQTD_DEP: TFloatField;
    Qr_LGCCLQTD_REP: TFloatField;
    edt_codcon: TEdit;
    lbx_codcon: TListBox;
    OMITIR_con: TCheckBox;
    Label10: TLabel;
    cb_negativos: TCheckBox;
    Label5: TLabel;
    edt_codgru: TEdit;
    lbx_codgru: TListBox;
    OMITIR_GRU: TCheckBox;
    Label6: TLabel;
    edt_codram: TEdit;
    lbx_codram: TListBox;
    OMITIR_RAM: TCheckBox;
    Label7: TLabel;
    edtMarca: TEdit;
    Label8: TLabel;
    CB_FILIAL: TComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure CODFABKeyPress(Sender: TObject; var Key: Char);
    procedure CODFABExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_codconExit(Sender: TObject);
    procedure edt_codconKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codgruExit(Sender: TObject);
    procedure edt_codgruKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codramExit(Sender: TObject);
    procedure edt_codramKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbZerarAgoraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ZEst: TFrm_ZEst;

implementation


{$R *.dfm}

procedure TFrm_ZEst.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_ZEst.CODFABKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFAB.Text:=fChamaFor(0,'frm_Zest',Key);
   if trim(CODFAB.Text)<>'' then
      CODFABExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_ZEst.CODFABExit(Sender: TObject);
begin
if Trim(CODFAB.Text)='' then
   NOMFAB.Text:='Todos...'
else
   begin
   if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Trim(CODFAB.Text)) then
      begin
      MessageDlg('Fornecedor não Cadastrado!',mtWarning,[mbok],0);
      CODFAB.SetFocus;
      exit;
      end
   else
      NOMFAB.Text:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_ZEst.FormCreate(Sender: TObject);
var
query_temp: tQuery;
begin

Query_temp:=tQuery.Create(nil);
Query_temp.DatabaseName:='SG_ASSOC';
Query_temp.close;
Query_temp.SQL.Clear;
Query_temp.SQL.Add('SELECT CFNOME FROM CADPRO_FILIAL WHERE (CFCODEMP=:CODEMP_MENOR OR CFCODEMP=:CODEMP_MAIOR)  order by CFFILIAL ');
Query_temp.parambyName('CODEMP_MENOR').AsInteger:=codemp;
if codemp>100 then
  Query_temp.parambyName('CODEMP_MAIOR').AsInteger:=codemp-100
else
  Query_temp.parambyName('CODEMP_MAIOR').AsInteger:=codemp+100;

Query_temp.open;
CB_FILIAL.Items.Clear;
CB_FILIAL.Items.Add(' - Todos ');

While not Query_temp.Eof do
  begin
  CB_FILIAL.Items.Add(Query_temp.fieldbyName('CFNOME').asstring);
  Query_temp.Next;
  end;
FreeAndNil(query_temp);
CB_FILIAL.ItemIndex:=0;

end;

procedure TFrm_ZEst.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'Frm_ZTest',key);
   key:=#0;
   end;


end;

procedure TFrm_ZEst.CODPROExit(Sender: TObject);
begin
if Trim(CODPRO.Text)='' then
   NOMPRO.Text:='Todos...'
else
   begin
   if not flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',Trim(CODPRO.Text)) then
      begin
      MessageDlg('Produto não Cadastrado!',mtWarning,[mbok],0);
      CODPRO.SetFocus;
      exit;
      end
   else
      NOMPRO.Text:=DM1.Query1.Fields[0].AsString;
   end;

end;



procedure TFrm_ZEst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_ZEst.edt_codconExit(Sender: TObject);
begin
edt_codcon.Text:=fdeixanum2(edt_codcon.Text);
if Trim(edt_codcon.Text)<>'' then
  begin
  if flqr1('CNOME','C','CADCON','N','CCODCON',trim(edt_codcon.Text)) then
    begin
    lbx_codcon.Items.Add(FormatFloat('0000000',StrToFloat(edt_codcon.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
    edt_codcon.text := '';
    edt_codcon.setfocus;
    end
  else
    begin
    fmensagem('Controle de Produto nao Cadastrado!',0,['0'],0);
    edt_codcon.SetFocus;
    end;
  end;
end;

procedure TFrm_ZEst.edt_codconKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codcon.Text:=fChamaTCon(0,'Zest',key);
   key:=#0;
   edt_codconExit(Self);
   end;
end;

procedure TFrm_ZEst.lbx_codconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codcon.ItemIndex>=0 then
    lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);
end;

procedure TFrm_ZEst.edt_codgruExit(Sender: TObject);
begin
edt_codgru.Text:=fdeixanum2(edt_codgru.Text);
if Trim(edt_codgru.Text)<>'' then
  begin
  if flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',edt_codgru.Text) then
    begin
    lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(edt_codgru.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
    edt_codgru.text := '';
    edt_codgru.setfocus;
    end
  else
    begin
    fmensagem('Grupo de Produto nao Cadastrado!',0,['0'],0);
    edt_codgru.SetFocus;
    end;
  end;
end;

procedure TFrm_ZEst.edt_codgruKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codgru.text:=fChamaGPro(0,'frm_medtpro',key);
   if valfloat(edt_codgru.text)<>0 then
      lbx_codgru.Items.Add(FormatFloat('0000000',DM1.Tb_GproGRCODGRU.AsFloat)
                                    +' - '+DM1.Tb_GproGRNOME.AsString);
   edt_codgru.text := '';
   key:=#0;
   end;
end;

procedure TFrm_ZEst.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codgru.ItemIndex>=0 then
    lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_ZEst.edt_codramExit(Sender: TObject);
begin
edt_codram.Text:=fdeixanum2(edt_codram.Text);
if Trim(edt_codram.Text)<>'' then
  begin
  if flqr1('RNOME','R','CADRAM','N','RCODRAM',edt_codram.Text) then
    begin
    lbx_codram.Items.Add(FormatFloat('0000000',StrToFloat(edt_codram.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
    edt_codram.text := '';
    edt_codram.setfocus;
    end
  else
    begin
    fmensagem('Ramo de Produto nao Cadastrado!',0,['0'],0);
    edt_codram.SetFocus;
    end;
  end;

end;

procedure TFrm_ZEst.edt_codramKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  edt_codram.text:=fChamaRamPro(0,'frm_medtpro',key);
  if valfloat(edt_codram.text)<>0 then
    lbx_codram.Items.Add(FormatFloat('0000000',DM1.Tb_RamRCODRAM.AsFloat)
                                   +' - '+DM1.Tb_RamRNOME.AsString);
  edt_codram.text := '';
  key:=#0;
  end;
end;

procedure TFrm_ZEst.lbx_codramKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codram.ItemIndex>=0 then
    lbx_codram.Items.Delete(lbx_codram.ItemIndex);
end;

procedure TFrm_ZEst.bbZerarAgoraClick(Sender: TObject);
var
query_zera: tQuery;
mCompSql: String;
mQtdZerados: Integer;
begin
query_zera:=tQuery.create(nil);
query_zera.databaseName:='SG_ASSOC';
query_zera.Close;
query_zera.SQL.Clear;
if Log_TipoLote=1 then
   begin
   query_zera.SQL.Add('Select count(*) as qtd from CADLGC,CADPRO '
                    +'  WHERE CLCODPRO=PDCODPRO ');
   if CB_NIVEL.ItemIndex>0 then
      query_zera.SQL.add(' and PDNIVEL=0'+IntToStr(CB_NIVEL.ItemIndex-1));
   if fsonumero(CODFAB.Text)<>0 then
      query_zera.SQL.add(' and PDCODFOR=0'+fdeixanum(CODFAB.Text));
   if fsonumero(CODPRO.Text)<>0 then
      query_zera.SQL.add(' and PDCODPRO=0'+fdeixanum(CODPRO.Text));
   if trim(fItensListBox(0,lbx_codcon,OMITIR_con))<>'' then
      query_zera.SQL.Add(' and PDCODCON '+fItensListBox(0,lbx_codcon,OMITIR_con));

   mCompSql:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
   if trim(mCompSql)<>'' then
      query_zera.SQL.Add(' and PDCODGRU '+fItensListBox(0,lbx_codgru,OMITIR_GRU));

   mCompSql:=fItensListBox(0,lbx_codram,OMITIR_RAM);
   if trim(mCompSql)<>'' then
      query_zera.SQL.Add(' and PDCODRAM '+fItensListBox(0,lbx_codram,OMITIR_RAM));

   mCompSql:=Trim(edtMarca.Text);
   if trim(mCompSql)<>'' then
      query_zera.SQL.Add(' and PDMARCA like '+QuotedStr(mCompSql+'%'));
   if CB_FILIAL.ItemIndex<>0 then
      query_zera.SQL.add(' and CLFILIAL=0'+IntToStr(fRetornaCodigoFilial(CB_FILIAL.Text)));

   if cb_negativos.Checked=true then
      query_zera.SQL.add(' and CLQTD<0')
   else
      query_zera.SQL.add(' and CLQTD<>0');
//   query_zera.SQL.SaveToFile('c:\sqlzera.txt');
   try
      query_zera.Open;
   except
     query_zera.SQL.SaveToFile('c:\sqlzera.txt');
     freeandnil(query_zera);
     exit;
     end;
   mQtdZerados:=query_zera.fieldbyName('qtd').AsInteger;
   if mQtdZerados=0 then
      begin
      MessageDlg('Não ha Produtos a serem zerados de acordo com a condição estabelecidas!',mtWarning,[mbOk],0);
      freeandnil(query_zera);
      exit;
      end;
   if Application.MessageBox(pchar('Ira Zerar '+query_zera.fieldbyName('qtd').AsString+' produtos, posso continuar?'),'confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      begin
      freeandnil(query_zera);
      exit;
      end;

   query_zera.Close;
   query_zera.sQL.Clear;
   query_zera.SQL.add('insert into CADMOV_PROD ( '
                     +'       CMP_CODEMP '
                     +'      ,CMP_FILIAL '
                     +'      ,CMP_CHAVE '
                     +'      ,CMP_CHAVE_ANO '
                     +'      ,CMP_ITEM '
                     +'      ,CMP_DOCORI '
                     +'      ,CMP_CODPRO '
                     +'      ,CMP_DATHOR '
                     +'      ,CMP_QTD '
                     +'      ,CMP_ESTNOR '
                     +'      ,CMP_ESTRESERVADO '
                     +'      ,CMP_CODUSR '
                     +'      ,CMP_CONTESP '
                     +'      ,CMP_TIPOPROD '
                     +'      ,CMP_LOTE '
                     +'      ,CMP_DTVCTO) '
                     +' Select 1 as CMP_CODEMP '
                     +'       ,CLFILIAL as CMP_FILIAL '
                     +'       ,0 as CMP_CHAVE '
                     +'       ,0 as CMP_CHAVE_ANO '
                     +'       ,0 as CMP_ITEM '
                     +'       ,05 as CMP_DOCORI '
                     +'       ,PDCODPRO '
                     +'       ,SYSDATE AS CMP_DATHOR '
                     +'       ,case when CLQTD<0 then CLQTD*-1 else CLQTD END AS CMP_QTD '
                     +'       ,case when CLQTD<0 then '+QuotedStr('E')+' else '+quotedstr('S')+' END as CMP_ESTNOR '
                     +'       ,'+QuotedStr('N')+' as CMP_ESTRESERVADO '
                     +'       ,'+IntToStr(codusr)+' AS CMP_CODUSR '
                     +'       ,PDCONTESP AS CMP_CONTESP '
                     +'       ,'+IntToStr(Log_TipoProdPad)+' as CMP_TIPOPROD '
                     +'       ,CLNUMERO as CMP_LOTE '
                     +'       ,CLDTVCTO as CMP_DTVCTO '
                     +' from CADLGC,CADPRO where PDCODEMP=CLCODEMP and PDCODPRO=CLCODPRO ');
   if CB_NIVEL.ItemIndex>0 then
      query_zera.SQL.add(' and PDNIVEL=0'+IntToStr(CB_NIVEL.ItemIndex-1));
   if fsonumero(CODFAB.Text)<>0 then
      query_zera.SQL.add(' and PDCODFOR=0'+fdeixanum(CODFAB.Text));
   if fsonumero(CODPRO.Text)<>0 then
      query_zera.SQL.add(' and PDCODPRO=0'+fdeixanum(CODPRO.Text));
   if trim(fItensListBox(0,lbx_codcon,OMITIR_con))<>'' then
      query_zera.SQL.Add(' and PDCODCON '+fItensListBox(0,lbx_codcon,OMITIR_con));

   mCompSql:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
   if trim(mCompSql)<>'' then
      query_zera.SQL.Add(' and PDCODGRU '+fItensListBox(0,lbx_codgru,OMITIR_GRU));

   mCompSql:=fItensListBox(0,lbx_codram,OMITIR_RAM);
   if trim(mCompSql)<>'' then
      query_zera.SQL.Add(' and PDCODRAM '+fItensListBox(0,lbx_codram,OMITIR_RAM));

   mCompSql:=Trim(edtMarca.Text);
   if trim(mCompSql)<>'' then
      query_zera.SQL.Add(' and PDMARCA like '+QuotedStr(mCompSql+'%'));
   if CB_FILIAL.ItemIndex<>0 then
      query_zera.SQL.add(' and CLFILIAL=0'+IntToStr(fRetornaCodigoFilial(CB_FILIAL.Text)));

   if cb_negativos.Checked=true then
      query_zera.SQL.add(' and CLQTD<0')
   else
      query_zera.SQL.add(' and CLQTD<>0');
   try
      query_zera.ExecSQL;
      fdm1StartCommit;
   except
     query_zera.SQL.SaveToFile('c:\sqlzera.txt');
     freeandnil(query_zera);
     exit;
     end;
   freeandnil(query_zera);
   end
else 
   begin
   query_zera.SQL.Add('Select count(*) as qtd from CADEST,CADPRO '
                    +'  WHERE CECODPRO=PDCODPRO ');
   if CB_NIVEL.ItemIndex>0 then
      query_zera.SQL.add(' and PDNIVEL=0'+IntToStr(CB_NIVEL.ItemIndex-1));
   if fsonumero(CODFAB.Text)<>0 then
      query_zera.SQL.add(' and PDCODFOR=0'+fdeixanum(CODFAB.Text));
   if fsonumero(CODPRO.Text)<>0 then
      query_zera.SQL.add(' and PDCODPRO=0'+fdeixanum(CODPRO.Text));
   if trim(fItensListBox(0,lbx_codcon,OMITIR_con))<>'' then
      query_zera.SQL.Add(' and PDCODCON '+fItensListBox(0,lbx_codcon,OMITIR_con));

   mCompSql:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
   if trim(mCompSql)<>'' then
      query_zera.SQL.Add(' and PDCODGRU '+fItensListBox(0,lbx_codgru,OMITIR_GRU));

   mCompSql:=fItensListBox(0,lbx_codram,OMITIR_RAM);
   if trim(mCompSql)<>'' then
      query_zera.SQL.Add(' and PDCODRAM '+fItensListBox(0,lbx_codram,OMITIR_RAM));

   mCompSql:=Trim(edtMarca.Text);
   if trim(mCompSql)<>'' then
      query_zera.SQL.Add(' and PDMARCA like '+QuotedStr(mCompSql+'%'));
   if CB_FILIAL.ItemIndex<>0 then
      query_zera.SQL.add(' and CEFILIAL=0'+IntToStr(fRetornaCodigoFilial(CB_FILIAL.Text)));

   if cb_negativos.Checked=true then
      query_zera.SQL.add(' and CESALDO<0')
   else
      query_zera.SQL.add(' and CESALDO<>0');
//   query_zera.SQL.SaveToFile('c:\sqlzera.txt');
   try
      query_zera.Open;
   except
     query_zera.SQL.SaveToFile('c:\sqlzera.txt');
     freeandnil(query_zera);
     exit;
     end;
   mQtdZerados:=query_zera.fieldbyName('qtd').AsInteger;
   if mQtdZerados=0 then
      begin
      MessageDlg('Não ha Produtos a serem zerados de acordo com a condição estabelecidas!',mtWarning,[mbOk],0);
      freeandnil(query_zera);
      exit;
      end;
   if Application.MessageBox(pchar('Ira Zerar '+query_zera.fieldbyName('qtd').AsString+' produtos, posso continuar?'),'confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      begin
      freeandnil(query_zera);
      exit;
      end;

   query_zera.Close;
   query_zera.sQL.Clear;
   query_zera.SQL.add('insert into CADMOV_PROD ( '
                     +'       CMP_CODEMP '
                     +'      ,CMP_FILIAL '
                     +'      ,CMP_CHAVE '
                     +'      ,CMP_CHAVE_ANO '
                     +'      ,CMP_ITEM '
                     +'      ,CMP_DOCORI '
                     +'      ,CMP_CODPRO '
                     +'      ,CMP_DATHOR '
                     +'      ,CMP_QTD '
                     +'      ,CMP_ESTNOR '
                     +'      ,CMP_ESTRESERVADO '
                     +'      ,CMP_CODUSR '
                     +'      ,CMP_CONTESP '
                     +'      ,CMP_TIPOPROD ) '
                     +' Select 1 as CMP_CODEMP '
                     +'       ,CEFILIAL as CMP_FILIAL '
                     +'       ,0 as CMP_CHAVE '
                     +'       ,0 as CMP_CHAVE_ANO '
                     +'       ,0 as CMP_ITEM '
                     +'       ,05 as CMP_DOCORI '
                     +'       ,PDCODPRO '
                     +'       ,SYSDATE AS CMP_DATHOR '
                     +'       ,case when CESALDO<0 then CESALDO*-1 else CESALDO END AS CMP_QTD '
                     +'       ,case when CESALDO<0 then '+QuotedStr('E')+' else '+quotedstr('S')+' END as CMP_ESTNOR '
                     +'       ,'+QuotedStr('N')+' as CMP_ESTRESERVADO '
                     +'       ,'+IntToStr(codusr)+' AS CMP_CODUSR '
                     +'       ,PDCONTESP AS CMP_CONTESP '
                     +'       ,'+IntToStr(Log_TipoProdPad)+' as CMP_TIPOPROD '
                     +' from CADEST,CADPRO where PDCODEMP=CECODEMP and PDCODPRO=CECODPRO ');
   if CB_NIVEL.ItemIndex>0 then
      query_zera.SQL.add(' and PDNIVEL=0'+IntToStr(CB_NIVEL.ItemIndex-1));
   if fsonumero(CODFAB.Text)<>0 then
      query_zera.SQL.add(' and PDCODFOR=0'+fdeixanum(CODFAB.Text));
   if fsonumero(CODPRO.Text)<>0 then
      query_zera.SQL.add(' and PDCODPRO=0'+fdeixanum(CODPRO.Text));
   if trim(fItensListBox(0,lbx_codcon,OMITIR_con))<>'' then
      query_zera.SQL.Add(' and PDCODCON '+fItensListBox(0,lbx_codcon,OMITIR_con));

   mCompSql:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
   if trim(mCompSql)<>'' then
      query_zera.SQL.Add(' and PDCODGRU '+fItensListBox(0,lbx_codgru,OMITIR_GRU));

   mCompSql:=fItensListBox(0,lbx_codram,OMITIR_RAM);
   if trim(mCompSql)<>'' then
      query_zera.SQL.Add(' and PDCODRAM '+fItensListBox(0,lbx_codram,OMITIR_RAM));

   mCompSql:=Trim(edtMarca.Text);
   if trim(mCompSql)<>'' then
      query_zera.SQL.Add(' and PDMARCA like '+QuotedStr(mCompSql+'%'));
   if CB_FILIAL.ItemIndex<>0 then
      query_zera.SQL.add(' and CEFILIAL=0'+IntToStr(fRetornaCodigoFilial(CB_FILIAL.Text)));

   if cb_negativos.Checked=true then
      query_zera.SQL.add(' and CESALDO<0')
   else
      query_zera.SQL.add(' and CESALDO<>0');
   try
      query_zera.ExecSQL;
      fdm1StartCommit;
   except
     query_zera.SQL.SaveToFile('c:\sqlzera.txt');
     freeandnil(query_zera);
     exit;
     end;
   freeandnil(query_zera);
   end;

MessageDlg('Foram zerados '+IntTosTr(mQtdZerados)+' Produtos! ',mtInformation,[mbOk],0 );

end;

end.

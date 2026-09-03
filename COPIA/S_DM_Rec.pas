unit S_DM_Rec;

interface  

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons,S_DM1,lerarq,func,db,dbtables,S_Ven,S_Sup,
  Grids, DBGrids,S_DM2, Mask, DBCtrls,S_Impres,func2;

type
  TFrm_DM_Rec = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    CB_TIPO: TComboBox;
    Label2: TLabel;
    CODIGO: TEdit;
    NOME: TEdit;
    Label3: TLabel;
    NR: TEdit;
    LOTE: TEdit;
    Label4: TLabel;
    bbAtualizar: TBitBtn;
    bbSair: TBitBtn;
    Src_Rec: TDataSource;
    Qr_Rec: TQuery;
    DBGrid1: TDBGrid;
    Qr_RecDPTPOR: TStringField;
    Qr_RecDPCODIGO: TFloatField;
    Qr_RecDPLOTE: TFloatField;
    Qr_RecDPNR: TFloatField;
    bbImprimir: TBitBtn;
    bbBaixar: TBitBtn;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit10: TDBEdit;
    Label16: TLabel;
    DBEdit11: TDBEdit;
    Label17: TLabel;
    DBEdit12: TDBEdit;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    Label19: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    Label22: TLabel;
    DBEdit17: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit20: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    cb_forma: TComboBox;
    Src_DupRec: TDataSource;
    Src_DupDRec: TDataSource;
    dtemis: TMaskEdit;
    data: TMaskEdit;
    dtnas: TMaskEdit;
    Panel3: TPanel;
    bbExcluir: TBitBtn;
    procedure bbSairClick(Sender: TObject);
    procedure CB_TIPOExit(Sender: TObject);
    procedure CODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure CODIGOExit(Sender: TObject);
    procedure NRExit(Sender: TObject);
    procedure LOTEExit(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure Src_RecDataChange(Sender: TObject; Field: TField);
    procedure Src_DupDRecDataChange(Sender: TObject; Field: TField);
    procedure Src_DupRecDataChange(Sender: TObject; Field: TField);
    procedure DBNavigator2BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure bbImprimirClick(Sender: TObject);
    procedure bbExcluirClick(Sender: TObject);
    procedure GroupBox1Enter(Sender: TObject);
    procedure bbBaixarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_dm_rec: TFrm_Impres;
  end;

var
  Frm_DM_Rec: TFrm_DM_Rec;
  mopdoc: Integer=0;
implementation

uses func_excecoes;

{$R *.dfm}

procedure TFrm_DM_Rec.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_DM_Rec.CB_TIPOExit(Sender: TObject);
begin
CB_TIPO.text:=CB_TIPO.Items.Strings[CB_TIPO.ItemIndex];
with CB_TIPO do ItemIndex:=Items.IndexOf(CB_TIPO.Text);
CB_TIPO.text:=CB_TIPO.items[CB_TIPO.itemIndex];

end;

procedure TFrm_DM_Rec.CODIGOKeyPress(Sender: TObject; var Key: Char);
begin
if CB_TIPO.Text='VD' then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      CODIGO.Text :=fChamaVen(0,'frm_DM_Rec',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      key:=#0;
      end
   else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
   end
else if CB_TIPO.Text='SP' then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      CODIGO.Text :=fChamaSup(0,'frm_DM_Rec',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      key:=#0;
      end
   else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
   end;


end;

procedure TFrm_DM_Rec.CODIGOExit(Sender: TObject);
begin
CODIGO.Text:=fdeixanum(CODIGO.Text);
if CB_TIPO.Text='VD' then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',CODIGO.Text) then
      NOME.Text:=DM1.Query1.fields[0].AsString
   else
      begin
      MessageDlg('Vendedor não Cadastrado!',mtWarning,[mbOk],0);
      CODIGO.SetFocus;
      end;
   end
else if CB_TIPO.Text='SP' then
   begin
   if flqr1('SNOME','S','CADSUP','N','SCODVEN',CODIGO.Text) then
      NOME.Text:=DM1.Query1.fields[0].AsString
   else
      begin
      MessageDlg('Supervisor não Cadastrado!',mtWarning,[mbOk],0);
      CODIGO.SetFocus;
      end;
   end
else
   NOME.Text:='GERENCIA';

end;

procedure TFrm_DM_Rec.NRExit(Sender: TObject);
begin
NR.Text:=fdeixanum(NR.Text);
end;

procedure TFrm_DM_Rec.LOTEExit(Sender: TObject);
begin
LOTE.Text:=fdeixanum(LOTE.Text);
end;

procedure TFrm_DM_Rec.bbAtualizarClick(Sender: TObject);
begin
Qr_Rec.Close;
Qr_Rec.SQL.Clear;
Qr_Rec.SQL.add('Select DPTPOR,DPCODIGO,DPLOTE,DPNR ');
Qr_Rec.SQL.add(' from CADDUPREC where DPCODEMP=0'+IntToStr(codemp));
mcinst:=' and ';
if (CB_TIPO.Text='VD') or (CB_TIPO.Text='SP') then
   begin
   Qr_Rec.SQL.add(mcinst+' DPTPOR='+chr(39)+CB_TIPO.Text+chr(39));
   mcinst:=' and ';
   end;
if ValInt(CODIGO.Text)<>0 then
   begin
   Qr_Rec.SQL.add(mcinst+' DPCODIGO=0'+CODIGO.Text);
   mcinst:=' and ';
   end;

if ValInt(NR.Text)<>0 then
   begin
   Qr_Rec.SQL.add(mcinst+' DPNR=0'+NR.Text);
   mcinst:=' and ';
   end;

if ValInt(LOTE.Text)<>0 then
   begin
   Qr_Rec.SQL.add(mcinst+' DPLOTE=0'+LOTE.Text);
   mcinst:=' and ';
   end;
Qr_Rec.SQL.add('group by DPTPOR,DPCODIGO,DPLOTE,DPNR');
Qr_Rec.Open;


end;

procedure TFrm_DM_Rec.Src_RecDataChange(Sender: TObject; Field: TField);
begin

DM2.Tb_DupRec.Close;
DM2.Tb_DupRec.SQL.Clear;
DM2.Tb_DupRec.SQL.Add('Select * ');
DM2.Tb_DupRec.SQL.add(' from CADDUPREC where DPCODEMP=0'+IntToStr(codemp));
mcinst:=' and ';
DM2.Tb_DupRec.SQL.add(mcinst+' DPTPOR='+chr(39)+Qr_RecDPTPOR.Value+chr(39));
mcinst:=' and ';
DM2.Tb_DupRec.SQL.add(mcinst+' DPCODIGO=0'+Qr_RecDPCODIGO.AsString);
mcinst:=' and ';

DM2.Tb_DupRec.SQL.add(mcinst+' DPNR=0'+Qr_RecDPNR.AsString);
mcinst:=' and ';

DM2.Tb_DupRec.SQL.add(mcinst+' DPLOTE=0'+Qr_RecDPLOTE.AsString);
mcinst:=' and ';
DM2.Tb_DupRec.SQL.add(' order by DPTPOR,DPCODIGO,DPLOTE,DPNR');
DM2.Tb_DupRec.Open;


DM2.Tb_DupDRec.Close;
DM2.Tb_DupDRec.SQL.Clear;
DM2.Tb_DupDRec.SQL.Add('Select DRCODEMP,DRTPOR,DRCODIGO,DRSEQ,DRLOTE ');
DM2.Tb_DupDRec.SQL.Add(',DRVALOR,DRDATA,DRFORMA,DRNUMERO,DRSERIE,DRCC ');
DM2.Tb_DupDRec.SQL.Add(',DRCOMP,DRAGENCIA,DREMIT,DRRG,DRCGC,DRDTNAS,DRTIPO');
DM2.Tb_DupDRec.SQL.Add(',DRLOTENV,DRORIGEM,DRBANCO  ');
DM2.Tb_DupDRec.SQL.add(' from CADDUPDREC where DRCODEMP=0'+IntToStr(codemp));
DM2.Tb_DupDRec.SQL.add(' and DRTPOR='+chr(39)+DM2.Tb_DupRecDPTPOR.Value+chr(39)
                      +' and DRCODIGO=0'+DM2.Tb_DupRecDPCODIGO.AsString
                      +' and DRLOTE=0'+DM2.Tb_DupRecDPLOTE.AsString);
mcinst:=' and ';
DM2.Tb_DupDRec.SQL.add(' order by DRTPOR,DRCODIGO,DRLOTE');
DM2.Tb_DupDRec.Open;


end;

procedure TFrm_DM_Rec.Src_DupDRecDataChange(Sender: TObject;
  Field: TField);
begin
cb_forma.ItemIndex:=DM2.Tb_DupDRecDRFORMA.AsInteger;
if (DM2.Tb_DupDRecDRDATA.IsNull) OR (DM2.Tb_DupDRecDRDATA.Value<=pdatanula) then
   data.Text     :='/  /'
else
   data.Text     :=DM2.Tb_DupDRecdata.Value;
if (DM2.Tb_DupDRecDRDTNAS.IsNull) OR (DM2.Tb_DupDRecDRDTNAS.Value<=pdatanula) then
   dtnas.Text     :='/  /'
else
   dtnas.Text     :=DM2.Tb_DupDRecdtnas.Value;

end;

procedure TFrm_DM_Rec.Src_DupRecDataChange(Sender: TObject; Field: TField);
begin
if (DM2.Tb_DupRecDPDTEMIS.IsNull) OR (DM2.Tb_DupRecDPDTEMIS.Value<=pdatanula) then
   dtemis.Text     :='/  /'
else
   dtemis.Text     :=DM2.Tb_DupRecdtemis.Value;

end;

procedure TFrm_DM_Rec.DBNavigator2BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
if Button=nbInsert then
   mopdoc:=0
else if button=nbEdit then
   mopdoc:=1
else if button=nbPost then
   begin
   if mopdoc=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select max(DRSEQ) from CADDUPDREC where '
                        +' DRCODEMP=0'+IntTosTr(codemp));
      DM1.Query1.Open;
      cod:=DM1.Query1.Fields[0].AsInteger+1;
      DM2.Tb_DupDRecDRCODEMP.Value:=codemp;
      DM2.Tb_DupDRecDRTPOR.Value  :=Qr_RecDPTPOR.Value;
      DM2.Tb_DupDRecDRCODIGO.Value:=Qr_RecDPCODIGO.Value;
      DM2.Tb_DupDRecDRSEQ.Value   :=cod;
      DM2.Tb_DupDRecDRLOTE.Value  :=Qr_RecDPLOTE.Value;
      end;

   if trim(data.Text)='/  /' then
      DM2.Tb_DupDRecDRDATA.Value  :=pdatanula
   else
      DM2.Tb_DupDRecDRDATA.Value  :=StrtoDate(data.Text);
   if trim(dtnas.Text)='/  /' then
      DM2.Tb_DupDRecDRDTNAS.Value :=pdatanula
   else
      DM2.Tb_DupDRecDRDTNAS.Value  :=StrtoDate(dtnas.Text);
   DM2.Tb_DupDRecDRFORMA.Value     :=cb_forma.ItemIndex;
   end;
end;

procedure TFrm_DM_Rec.bbImprimirClick(Sender: TObject);
var
mlin, mpag: Integer;
mobs: String;
mtotped, mtotfp, mtotj, mtotd, mseq, mcodtax: Real;
begin
if not Qr_Rec.Active then
   begin
   MessageDlg('Não ha registro a ser impresso!',mtWarning,[mbOk],0);
   exit;
   end;

Qr_Rec.First;
if Qr_Rec.Eof then
   begin
   MessageDlg('Não ha registro a ser impresso!',mtWarning,[mbOk],0);
   exit;
   end;
mlin:=0;
mpag:=0;
mseq:=0;
mtotped:=0;
mtotfp:=0;
mcodtax:=0;
mtotj:=0;
mtotd:=0;
testeform := TFrm_DM_Rec(FindGlobalComponent('form_impres_dm_rec'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_dm_rec);

form_impres_dm_rec.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP

Qr_Rec.First;
While not Qr_Rec.Eof do
   begin
   While not ((DM2.Tb_DupRec.Eof) and (DM2.Tb_DupDRec.Eof)) do
      begin
      if mlin=0 then
         begin
         mobs:='';
         mpag:=mpag+1;
         if valint(NR.Text)>0 then
            mobs:='Nota de Recebimento: '+NR.Text+'. ';
         if valint(LOTE.Text)>0 then
            mobs:='Lote: '+LOTE.Text+'.';

         form_impres_dm_rec.Rdprint1.ImpF(01,01,insere2(DM1.Tb_EmpRAZAO.Value,' ',64)+'Pagina:     '+FormatFloat('0000',mpag),mnormal);
         form_impres_dm_rec.Rdprint1.Impf(02,01,insere2('RELATORIO DE RECEBIMENTO DE DUPLICATAS. ',' ',63)+'Data.: '+FormatDateTime('dd/mm/yyyy',date),mnormal);
         mlin:=2;
         mobs:='';
         if valint(CODIGO.Text)<>0 then
            begin
            mobs:='Tipo: '+CB_TIPO.Text+' Código: '+CODIGO.Text+' '+NOME.Text;
            mlin:=mlin+1;
            form_impres_dm_rec.Rdprint1.Impf(mlin,01,centra(mobs,' ',80),mneg);
            end;
         mobs:='';
         if valint(NR.Text)>0 then
            mobs:='Nota de Recebimento: '+NR.Text+'. ';
         if valint(LOTE.Text)>0 then
            mobs:='Lote: '+LOTE.Text+'.';

         if trim(mobs)<>'' then
            begin
            mlin:=mlin+1;
            form_impres_dm_rec.Rdprint1.Impf(mlin,01,centra(mobs,' ',80),mneg);
            end;
         mlin:=mlin+1;
         form_impres_dm_rec.Rdprint1.Impf(mlin,01,insere2('-','-',80),mnormal);
         mlin:=mlin+1;
         form_impres_dm_rec.Rdprint1.Impf(mlin,01,'Numero    Cliente                         Valor Pago       Juros  Descontos Dt.Baixa  Forma Pgto      Valor  Numero Bco Serie Conta',mreduz);
         end;
      mlin:=mlin+1;
      if not DM2.Tb_DupRec.eof then
         begin
         form_impres_dm_rec.RDprint1.ImpF(mlin,01,FormatFloat('000000',DM2.Tb_DupRecDPNUMERO.Value)+'-'+insere2(DM2.Tb_DupRecDPDESD.Value,' ',1)+
                                 ' '+insere2(DM2.Tb_DupRecnomcli.Value,' ',25)+' '+FormatFloat('00000',DM2.Tb_DupRecDPLOTE.Value)
                                 +insere(FormatFloat('##,##0.00',DM2.Tb_DupRecDPVALOR.Value-DM2.Tb_DupRecDPJUROS.Value+DM2.Tb_DupRecDPDESC.Value),' ',12)
                                 +insere(Formatfloat('##,##0.00',DM2.Tb_DupRecDPJUROS.Value),' ',12)
                                 +insere(FormatFloat('##,##0.00',DM2.Tb_DupRecDPDESC.Value),' ',12)
                                 +' '+FormatDateTime('dd/mm/yy',DM2.Tb_DupRecDPDTPAG.Value),mreduz);
         mtotped:=mtotped+(DM2.Tb_DupRecDPVALOR.Value-DM2.Tb_DupRecDPJUROS.Value+DM2.Tb_DupRecDPDESC.Value);
         mtotj:=mtotj+DM2.Tb_DupRecDPJUROS.Value;
         mtotd:=mtotd+DM2.Tb_DupRecDPDESC.Value;
         DM2.Tb_DupRec.Next;
         end;
      if not DM2.Tb_DupDRec.eof then
         begin
         form_impres_dm_rec.Rdprint1.ImpF(mlin,51,' '+insere2(DM2.Tb_DupDRecforma.Value,' ',10)
                               +insere(FormatFloat('###,##0.00',DM2.Tb_DupDRecDRVALOR.Value),' ',10)+' '
                               +insere(DM2.Tb_DupDRecDRNUMERO.AsString,' ',7)+' '
                               +insere(DM2.Tb_DupDRecDRBANCO.AsString,' ',3)+' '
                               +insere(DM2.Tb_DupDRecDRSERIE.Value,' ',5)+' '
                               +insere(DM2.Tb_DupDRecDRCC.Value,' ',7),mreduz);
         mtotfp:=mtotfp+DM2.Tb_DupDRecDRVALOR.Value;
         DM2.Tb_DupDRec.Next;
         end;
      if mlin>55 then
         begin
         mlin:=mlin+1;
         form_impres_dm_rec.Rdprint1.ImpF(mlin,01,'Continua...'+insere2('-','-',69),mnormal);
         mlin:=0;
         form_impres_dm_rec.RDprint1.Novapagina;
         end;
      end;
   Qr_Rec.Next;
   if Qr_Rec.Eof then
      begin
      if mlin=0 then
         begin
         if valint(NR.Text)>0 then
            mobs:='Nota de Recebimento: '+NR.Text+'. ';
         if valint(LOTE.Text)>0 then
            mobs:='Lote: '+LOTE.Text+'.';
         mlin:=form_impres_dm_rec.fImprimirCabecalho(80,'RELATORIO DE RECEBIMENTO DE DUPLICATAS.'+mobs);
         mlin:=mlin+1;
          mlin:=2;
         mobs:='';
         if valint(CODIGO.Text)<>0 then
            begin
            mobs:='Tipo: '+CB_TIPO.Text+' Código: '+CODIGO.Text+' '+NOME.Text;
            mlin:=mlin+1;
            form_impres_dm_rec.Rdprint1.Impf(mlin,01,centra(mobs,' ',80),mneg);
            end;
         mobs:='';
         if valint(NR.Text)>0 then
            mobs:='Nota de Recebimento: '+NR.Text+'. ';
         if valint(LOTE.Text)>0 then
            mobs:='Lote: '+LOTE.Text+'.';

         if trim(mobs)<>'' then
            begin
            mlin:=mlin+1;
            form_impres_dm_rec.Rdprint1.Impf(mlin,01,centra(mobs,' ',80),mneg);
            end;
         mlin:=mlin+1;
         form_impres_dm_rec.Rdprint1.Impf(mlin,01,insere2('-','-',80),mnormal);
         mlin:=mlin+1;
         form_impres_dm_rec.Rdprint1.Impf(mlin,01,'Numero    Cliente                         Valor Pago       Juros  Descontos Dt.Baixa  Forma Pgto      Valor  Numero Bco Serie Conta',mreduz);
         end;
      mlin:=mlin+1;
      form_impres_dm_rec.Rdprint1.Impf(mlin,01,' - Totais..............................'
                              +insere(FormatFloat('###,##0.00',mtotped),' ',12)
                              +insere(FormatFloat('###,##0.00',mtotj),' ',12)
                              +insere(FormatFloat('###,##0.00',mtotd),' ',12)
                              +insere(' ',' ',21)
                              +insere(Formatfloat('###,##0.00',mtotfp),' ',11),mreduz);
      mlin:=mlin+1;
      form_impres_dm_rec.Rdprint1.Impf(mlin,01,'Fim'+insere2('-','-',77),mnormal);
      if form_impres_dm_rec.Rdprint1.Setup then form_impres_dm_rec.Rdprint1.Fechar;
      form_impres_dm_rec:=nil;
      form_impres_dm_rec.free;
      end;
   end;


end;

procedure TFrm_DM_Rec.bbExcluirClick(Sender: TObject);
begin
if not Qr_Rec.Active then
   begin
   MessageDlg('Favor Selecionar um Registro!',mtWarning,[mbOk],0);
   exit;
   end;
if not Qr_RecDPLOTE.IsNull then
   begin
   MessageDlg('Favor Selecionar um Registro!',mtWarning,[mbOk],0);
   exit;
   end;
mcinst:='Quer realmente excluir as baixas do Lote: '+Qr_RecDPLOTE.AsString+#13
       +' NR: '+Qr_RecDPNR.AsString;
if fmensagem(pchar(mcinst),0,['1','2'],2)<>mryes then
   exit;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADDUPDREC where '
                  +' DRTPOR='+chr(39)+DM2.Tb_DupRecDPTPOR.Value+chr(39)
                  +' and DRCODIGO=0'+DM2.Tb_DupRecDPCODIGO.AsString
                  +' and DRLOTE=0'+DM2.Tb_DupRecDPLOTE.AsString);
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADDUPREC where ');
mcinst:=' where ';
DM1.Query1.SQL.add(mcinst+' DPTPOR='+chr(39)+Qr_RecDPTPOR.Value+chr(39));
mcinst:=' and ';
DM1.Query1.SQL.add(mcinst+' DPCODIGO=0'+Qr_RecDPCODIGO.AsString);
mcinst:=' and ';
DM1.Query1.SQL.add(mcinst+' DPNR=0'+Qr_RecDPNR.AsString);
mcinst:=' and ';

DM1.Query1.SQL.add(mcinst+' DPLOTE=0'+Qr_RecDPLOTE.AsString);
mcinst:=' and ';

try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;
MessageDlg('Baixas Excluidas!',mtInformation,[mbOk],0);
bbAtualizar.Click;
end;

procedure TFrm_DM_Rec.GroupBox1Enter(Sender: TObject);
begin
if DM2.Tb_DupDRec.State in [DsEdit,DsInsert] then
   DM2.Tb_DupDRec.Cancel;
if DM2.Tb_DupRec.State in [DsEdit,DsInsert] then
   DM2.Tb_DupRec.Cancel;

end;

procedure TFrm_DM_Rec.bbBaixarClick(Sender: TObject);
var
mtotdup, mtotdoc: Real;
mbaixa: Boolean;
mdup: String;
mseq, mcodldr,mLote: Real;
mcodempdup: Integer;
begin
if not Qr_Rec.Active then
   begin
   MessageDlg('Favor Selecionar um Registro!',mtWarning,[mbOk],0);
   exit;
   end;

mbaixa:=true;
Qr_Rec.First;
While not Qr_Rec.Eof do
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select sum(DPVALOR) as totdoc from '
                     +' CADDUPREC where DPCODEMP=0'+IntToStr(codemp));
   mcinst:=' and ';
   DM1.Query2.SQL.add(mcinst+' DPTPOR='+chr(39)+Qr_RecDPTPOR.AsString+chr(39));
   mcinst:=' and ';
   DM1.Query2.SQL.add(mcinst+' DPCODIGO=0'+Qr_RecDPCODIGO.AsString);
   mcinst:=' and ';
   DM1.Query2.SQL.add(mcinst+' DPNR=0'+Qr_RecDPNR.AsString);
   mcinst:=' and ';
   DM1.Query2.SQL.add(mcinst+' DPLOTE=0'+Qr_RecDPLOTE.AsString);
   mcinst:=' and ';
   DM1.Query2.Open;
   mtotdup:=DM1.Query2.Fields[0].AsFloat;

   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select sum(DRVALOR) as totdoc ');
   DM1.Query2.SQL.add(' from CADDUPDREC where DRCODEMP=0'+IntToStr(codemp));
   DM1.Query2.SQL.add(' and DRTPOR='+chr(39)+DM2.Tb_DupRecDPTPOR.Value+chr(39)
                     +' and DRCODIGO=0'+DM2.Tb_DupRecDPCODIGO.AsString
                     +' and DRLOTE=0'+DM2.Tb_DupRecDPLOTE.AsString);
   DM1.Query2.Open;
   mtotdoc:=DM1.Query2.fields[0].asFloat;
   if mtotdoc<>mtotdup then
      begin
      MessageDlg('O Lote '+dm2.Tb_DupRecDPLOTE.AsString+' da NR: '+DM2.Tb_DupRecDPNR.AsString+#13
                +' o Valor dos Documentos é: '+FormatFloat(mcasas,mtotdup)+#13
                +' o Valor do Recebimento é: '+FormatFloat(mcasas,mtotdoc)+#13
                +' esta baixa não é válida!',mtWarning,[mbOk],0);
      mbaixa:=false;
      break;
      end;
   Qr_Rec.Next;
   end;
if not mbaixa then
   exit;
if MessageDlg('Confirma a Baixa dos documentos?',mtConfirmation,[mbYes,mbNo],0)<>mrYes then
   exit;
Qr_Rec.First;
While not Qr_Rec.Eof do
   begin
   mdup:='';
   mlote:=fbuscaLoteBaixaCR(0);
   While not DM2.Tb_DupRec.Eof do
      begin
      mcodempdup:=codemp;
      if DM2.Tb_DupRecDPTIPO.Value=1 then
         mcodempdup:=mcodempdup+100;

      if flcaddar(8,mcodempdup,
                  0,
                  0, // codigo do ecf
                  0,
                  DM2.Tb_DupRecDPNUMERO.AsString,
                  trim(DM2.Tb_DupRecDPDESD.AsString),
                  DM2.Tb_DupRecDPDUP.AsString,
                  DM2.Tb_DupRecDPDTEMIS.Value,'') then

         begin

         mdesc_mov:=pldr_descmov;
         mcodccu  :=pldr_codccu;
         mcoddep  :=pldr_coddep;
         mnatdc   :=pldr_natdc;
         mnomccu  :=pldr_nomccu;
         mnomdep  :=pldr_nomdep;


         if DM1.Tb_CliCCODCLI.Value<>DM1.Tb_DarCRCODCLI.Value then
            flcadcli(1,0,DM1.Tb_DarCRCODCLI.AsString);
         if DM1.Tb_DarCRDUP.AsInteger=5 then
            fTestarParCaixaCliDar(1,1,'CADDARD')
         else
            fTestarParCaixaCliDar(1,0,'CADDAR0');
         DM1.Tb_Dar.Edit;
         DM1.Tb_DarCRVALPAG.Value   :=DM1.Tb_DarCRVALPAG.Value+DM2.Tb_DupRecDPVALOR.Value;
         DM1.Tb_DarCRJUROS.Value    :=DM1.Tb_DarCRJUROS.Value+DM2.Tb_DupRecDPJUROS.Value;
         DM1.Tb_DarCRDESC.Value     :=DM1.Tb_DarCRDESC.Value+DM2.Tb_DupRecDPDESC.Value;
         DM1.Tb_DarCRDTBX.Value     :=pdatasis;
         DM1.Tb_DarCRUSRBX.Value    :=codusr;
         DM1.Tb_DarCRLOTSEQ_LB.Value:=ls_lotbcr;
         DM1.Tb_DarCRLOTE.Value     :=mlote;
         DM1.Tb_DarCRDTPAG.Value    :=pdatasis;
         DM1.Tb_DarCRCODCTA.Value   :=codcai;
         DM1.Tb_DarCRNOMCTA.Value   :=pldr_nombco;
         DM1.Tb_DarCRNOMCC.Value    :=mnomccu;
         DM1.Tb_DarCRCODCC.Value    :=mcodccu;
         DM1.Tb_DarCRNATDC.Value    :=mnatdc;
         DM1.Tb_DarCRNOMDEP.Value   :=mnomdep;
         DM1.Tb_DarCRCODDEP.Value   :=mcoddep;

         if mdup='' then
            begin
            if DM1.Tb_PargerPCRDOC.Value=1 then
               mdup:=FormatFloat('000000',DM1.Tb_DarCRNPED.Value)
            else
               mdup:=FormatFloat('000000',DM1.Tb_DarCRNUMERO.Value);
            end
         else
            begin
            if DM1.Tb_PargerPCRDOC.Value=1 then
               mdup:=copy(mdup,4,3)+'/'+copy(FormatFloat('000000',DM1.Tb_DarCRNPED.Value),4,3)
            else
               mdup:=copy(mdup,4,3)+'/'+copy(FormatFloat('000000',DM1.Tb_DarCRNUMERO.Value),4,3);
            end;
//         else
//            begin
//            if DM1.Tb_PargerPCRDOC.Value=1 then
//               mdup:=mdup+'/'+copy(FormatFloat('000000',DM1.Tb_DarCRNPED.Value),4,3)
//            else
//               mdup:=mdup+'/'+copy(FormatFloat('000000',DM1.Tb_DarCRNUMERO.Value),4,3);
//            end;
         if Arredonda((DM1.Tb_DarCRVALPAG.Value+DM1.Tb_DarCRDESC.Value-DM1.Tb_DarCRJUROS.Value),2)>=Arredonda(DM1.Tb_DarCRVALOR.Value,2) then
            begin
            DM1.Tb_DarCRSTATUS.Value:=2;
            DM1.Tb_DarCRCODLDR.Value:=0;
            if DM1.Tb_DarCRCODLDR.Value>0 then
               begin
               DM1.SG_ASSOC.StartTransaction;
               DM1.Query1.Close;
               DM1.Query1.SQL.Clear;
               DM1.Query1.SQl.Add('Delete from CADLDR ');
               if DM1.Qr_Tid.Locate('TINOME','CADLDR',[]) then
                  begin
                  DM1.Query1.Sql.add(' where LOTSEQ=0'+DM1.Tb_DarCRLOTSEQ_FC.AsString
                                    +' and   CODLDR=0'+DM1.Tb_DarCRCODLDR.AsString);
                  end
               else
                  begin
                  DM1.Query1.Sql.add(' where CODEMP=0'+IntTostr(mcodempdup)
                                    +' and LOTSEQ=0'+DM1.Tb_DarCRLOTSEQ_FC.AsString
                                    +' and CODLDR=0'+DM1.Tb_DarCRCODLDR.AsString);
                  end;
               DM1.Query1.ExecSQL;
               DM1.SG_ASSOC.Commit;

               end;
            end
         else
            begin
            DM1.Tb_DarCRSTATUS.Value:=1;
            if DM1.Tb_DarCRCODLDR.Value>0 then
               begin
               DM1.SG_ASSOC.StartTransaction;
               DM1.Query1.Close;
               DM1.Query1.SQL.Clear;
               DM1.Query1.SQl.Add('Update CADLDR set VALORR=VALORR-'+mudavp(FloatTostr(DM1.Tb_DarCRVALOR.Value-DM1.Tb_DarCRVALPAG.Value))
                                 +' ,VALORP=VALORP-'+mudavp(FloatTostr(DM1.Tb_DarCRVALOR.Value-DM1.Tb_DarCRVALPAG.Value)));
               if DM1.Qr_Tid.Locate('TINOME','CADLDR',[]) then
                  begin
                  DM1.Query1.Sql.add(' where LOTSEQ=0'+DM1.Tb_DarCRLOTSEQ_FC.AsString
                                    +' and   CODLDR=0'+DM1.Tb_DarCRCODLDR.AsString)
                  end
               else
                  begin
                  DM1.Query1.Sql.add(' where CODEMP=0'+IntTostr(mcodempdup)
                                    +' and LOTSEQ=0'+DM1.Tb_DarCRLOTSEQ_FC.AsString
                                    +' and CODLDR=0'+DM1.Tb_DarCRCODLDR.AsString);
                  end;
               DM1.Query1.ExecSQL;
               DM1.SG_ASSOC.Commit;
               end;
            end;
         DM1.Tb_Dar.Post;
         end
      else
         begin
         MessageDlg('Ha erros duplicata nao encontrada: '+DM2.Tb_DupRecDPNUMERO.AsString+'!',mtWarning,[mbOk],0);
         DM2.Tb_DupRec.Next;
         Continue;
         end;
      fCriarFPCRDUP(codemp,mlote,
                    DM2.Tb_DupRecDPNR.AsInteger, // numero da nr
                    mcodempdup, // codigo da empresa da duplicata
                    DM2.Tb_DupRecDPNUMERO.Value, // numero duplicata
                    DM2.Tb_DupRecDPDUP.Value, // tipo duplicata
                    0,    // codigo do ecf
                    DM2.Tb_DupRecDPCODCLI.Value, // Codigo Cliente
                    DM2.Tb_DupRecDPCODVEN.AsInteger, // Codigo do Vendedor
                    codcai,
                    codusr,
                    DM2.Tb_DupRecDPVALOR.Value, // valor recebidot
                    DM2.Tb_DupRecDPJUROS.Value, // juros
                    DM2.Tb_DupRecDPDESC.Value, // desconto
                    DM1.Tb_DarCRICMSR.Value, // valor do icms st
                    DM1.Tb_DarCRTOTIPI.Value, // valor do ipi
                    DM1.Tb_DarCRVALOR.Value, // valor do titulo
                    0, // devolu~ção
                    0, // parcial 0-nao 1-sim
                    DM2.Tb_DupRecDPDTEMIS.Value, // Data Emissao
                    DM1.Tb_DarCRDTBX.Value,
                    DM1.Tb_DarCRDTPAG.Value,
                    DM1.Tb_DarCRDTVCTO.Value,
                    DM2.Tb_DupRecDPDESD.Value); // desdobramento
      DM2.Tb_DupRec.Next;
      end;
   flcadcli(1,0,DM2.Tb_DupRecDPCODCLI.AsString);
   while not DM2.Tb_DupDRec.Eof do
      begin
      DM1.Qr_FP.Locate('FPCODIGO',DM2.Tb_DupDRecDRFORMA.Value,[]);


      if DM1.Qr_FPFPTIPO.Value=1 then
         begin
         fTestarParCaixaCliDar(1,1,'CADDART')
         end
      else
         fTestarParCaixaCliDar(0,1,'CADDAR0');

      if length(mdup)>12 then
         mdup:=copy(mdup,1,12);
      mcodldr:=fCriarLDR(mcodempdup
                  ,dm2.Tb_DupDRecDRVALOR.Value // Valor previsto
                  ,dm2.Tb_DupDRecDRVALOR.Value // Valor Real
                  ,DM1.Tb_CliCCODCLI.Value        // Codigo Cliente
                  ,DM1.Qr_FPFPVINCULO.Value
                  ,date // data prevista
                  ,date // data real
                  ,date // data Referencia
                  ,pdatanula // data de alteracao
                  ,mcodccu
                  ,mcoddep
                  ,mnatdc
                  ,mdesc_mov
                  ,DM1.Tb_PargerPCRDOCSIG.Value+mdup
                  ,DM1.Qr_FPFPDESC.AsString
                  ,'CL'
                  ,pldr_nombco
                  ,mnomdep
                  ,mnomccu
                  ,pldr_nome
                  ,' '
                  ,3
                  ,codcai
                  ,lotmov
                  ,0 // status
                  ,03); // origem

      mseq:=fCriarFPCR(mcodempdup,DM2.Tb_DupDRecDRFORMA.Value, // forma
                       DM2.Tb_DupDRecDRNUMERO.Value, // numero
                       DM2.Tb_DupDRecDRBANCO.Value, // Banco
                       DM2.Tb_DupDRecDRVALOR.Value, // Valor
                       0, // Tipo
                       codcai,
                       mcodldr,
                       mlote,
                       DM1.Qr_FPFPVINCULO.Value,
                       DM1.Qr_FPFPTIPO.Value,
                       DM1.Tb_DarCRNR.Value,
                       DM1.Tb_CliCCODCLI.Value,        // Codigo Cliente
                       0, // dev codemp
                       0, // dev codecf
                       0, // dev numero
                       0, // dev dup
                       DM2.Tb_DupDRecDRDATA.Value, // data
                       DM2.Tb_DupDRecDRDATA.Value, // data do deposito
                       pdatanula, // dev dtemis
                       DM2.Tb_DupDRecDRCC.Value, // conta corrente
                       DM2.Tb_DupDRecDRSERIE.Value,
                       ' ' // dev desd
                       ); // serie


      if DM1.Qr_FPFPNUM.Value=1 then
         begin
         fCriarChqCli(mcodempdup,DM2.Tb_DupDRecDRNUMERO.Value, // numero
                     DM2.Tb_DupDRecDRBANCO.Value, // Banco
                     DM1.Tb_CliCCODCLI.Value, // codcli
                     DM2.Tb_DupDRecDRCGC.Value, // cnpj/cpf
                     DM2.Tb_DupDRecDRVALOR.Value, // Valor
                     mlote,
                     ls_lotbcr, // lote seq lote
                     0, // tipo
                     0, // status
                     codusr,
                     codcai,
                     codusr,
                     mcodldr,

                     ls_codldr,
                     0, // quantidade de prorrogacoes
                     0, // codigo da forma de pagamento
                     codcai, // codigo do caixa
                     0, // deposito 0-sim 1-nao




                     DM2.Tb_DupDRecDRSERIE.Value, // serie
                     DM2.Tb_DupDRecDRCOMP.Value, // compensacao
                     DM2.Tb_DupDRecDREMIT.Value, // emitente
                     DM2.Tb_DupDRecDRAGENCIA.Value, // aGENCIA
                     DM2.Tb_DupDRecDRCC.Value, // cc
                     DM2.Tb_DupDRecDRRG.Value, // rg
                     ' ',


                     mcodccu,
                     mcoddep,
                     mdesc_mov,
                     ' ', // obs linha 01
                     ' ', // obs linha 02

                     mnombco,

                     DM2.Tb_DupDRecDRDTNAS.Value, // data de Nascimento
                     DM2.Tb_DupDRecDRDATA.Value, // data de Emissao
                     DM2.Tb_DupDRecDRDATA.Value, // data de Deposito
                     pdatanula,                // data de alteração
                     DM2.Tb_DupDRecDRDATA.Value, // data de Deposito
                     pdatanula ); // data do ultimo deposito


         end;
      DM2.Tb_DupDRec.Next;
      end;
   Qr_Rec.Next
   end;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from CADDUPDREC where DRCODEMP=0'+IntToStr(codemp));
mcinst:=' and ';
if (CB_TIPO.Text='VD') or (CB_TIPO.Text='SP') then
   begin
   DM1.Query2.SQL.add(mcinst+' DRTPOR='+chr(39)+CB_TIPO.Text+chr(39));
   mcinst:=' and ';
   end;
if ValInt(CODIGO.Text)<>0 then
   begin
   DM1.Query2.SQL.add(mcinst+' DRCODIGO=0'+CODIGO.Text);
   mcinst:=' and ';
   end;

if ValInt(LOTE.Text)<>0 then
   begin
   DM1.Query2.SQL.add(mcinst+' DRLOTE=0'+LOTE.Text);
   mcinst:=' and ';
   end;
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from CADDUPREC where DPCODEMP=0'+IntToStr(codemp));
mcinst:=' and ';
if (CB_TIPO.Text='VD') or (CB_TIPO.Text='SP') then
   begin
   DM1.Query2.SQL.add(mcinst+' DPTPOR='+chr(39)+CB_TIPO.Text+chr(39));
   mcinst:=' and ';
   end;
if ValInt(CODIGO.Text)<>0 then
   begin
   DM1.Query2.SQL.add(mcinst+' DPCODIGO=0'+CODIGO.Text);
   mcinst:=' and ';
   end;

if ValInt(LOTE.Text)<>0 then
   begin
   DM1.Query2.SQL.add(mcinst+' DPLOTE=0'+LOTE.Text);
   mcinst:=' and ';
   end;
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   end;
MessageDlg('Concluido!',mtWarning,[mbOk],0);

end;
procedure TFrm_DM_Rec.FormCreate(Sender: TObject);
begin
fCarregaDadosCaixa('CADDAR0');

end;

procedure TFrm_DM_Rec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;

end;

end.

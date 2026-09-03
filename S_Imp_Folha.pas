unit S_Imp_Folha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, DBTables,S_DM1,func,lerarq,
  Sr_Folha,S_Impres,S_Fun, S_SelEmp;

type
  TFrm_Imp_Folha = class(TForm)
    Label1: TLabel;
    MES: TEdit;
    Label2: TLabel;
    ANO: TEdit;
    CODFUN: TEdit;
    Label3: TLabel;
    NOMFUN: TEdit;
    bb_Folha: TBitBtn;
    bb_Ferias: TBitBtn;
    bb_13pp: TBitBtn;
    bb_13unico: TBitBtn;
    bb_sp: TBitBtn;
    bb_recisao: TBitBtn;
    bbSair: TBitBtn;
    RG_TPIMPRES: TRadioGroup;
    CB_VISUAL: TCheckBox;
    Qr_LFol: TQuery;
    Qr_LFolLCCODEMP: TFloatField;
    Qr_LFolLCLOCAL: TFloatField;
    Qr_LFolLCMES: TFloatField;
    Qr_LFolLCANO: TFloatField;
    Qr_LFolLCCODFUN: TFloatField;
    Qr_LFolLCCODEVE: TFloatField;
    Qr_LFolLCQTD: TFloatField;
    Qr_LFolLCNAT: TFloatField;
    Qr_LFolLCTIPO: TFloatField;
    Qr_LFolLCVALOR: TFloatField;
    Qr_LFolLCINCINSS: TFloatField;
    Qr_LFolLCINCFGTS: TFloatField;
    Qr_LFolLCINCIR: TFloatField;
    Qr_LFolLCQTDPAD: TFloatField;
    Qr_LFolLCSOMA: TFloatField;
    Qr_LFolLCINCVT: TFloatField;
    Qr_LFolLCTOTAL: TFloatField;
    Qr_RFol: TQuery;
    Qr_RFolnomcar: TStringField;
    Src_RFol: TDataSource;
    Qr_LFolvecimentos: TFloatField;
    Qr_LFoldescontos: TFloatField;
    Qr_LFolreferencia: TStringField;
    Qr_LFolnomeve: TStringField;
    Qr_RFolNOMFUN: TStringField;
    Qr_RFolCODCAR: TFloatField;
    Qr_RFolCBO: TStringField;
    Label4: TLabel;
    CB_ORDEM: TComboBox;
    Qr_RFolRFCODEMP: TFloatField;
    Qr_RFolRFLOCAL: TFloatField;
    Qr_RFolRFMES: TFloatField;
    Qr_RFolRFANO: TFloatField;
    Qr_RFolRFCODFUN: TFloatField;
    Qr_RFolRFTOTVEN: TFloatField;
    Qr_RFolRFTOTDES: TFloatField;
    Qr_RFolRFBASEFGTS: TFloatField;
    Qr_RFolRFALFGTS: TFloatField;
    Qr_RFolRFVLRFGTS: TFloatField;
    Qr_RFolRFBASEIR: TFloatField;
    Qr_RFolRFALIR: TFloatField;
    Qr_RFolRFVLRIR: TFloatField;
    Qr_RFolRFBASEINSS: TFloatField;
    Qr_RFolRFALINSS: TFloatField;
    Qr_RFolRFVLRINSS: TFloatField;
    Qr_RFolRFBASEVT: TFloatField;
    Qr_RFolRFALVT: TFloatField;
    Qr_RFolRFSALBASE: TFloatField;
    Qr_RFolRFVLRVT: TFloatField;
    Qr_RFolRFDTAQI: TDateTimeField;
    Qr_RFolRFDTAQF: TDateTimeField;
    Qr_RFolRFDTFERI: TDateTimeField;
    Qr_RFolRFDTFERF: TDateTimeField;
    Qr_RFolRFQTDFNJ: TFloatField;
    procedure bbSairClick(Sender: TObject);
    procedure Qr_RFolCalcFields(DataSet: TDataSet);
    procedure bb_FolhaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Qr_LFolCalcFields(DataSet: TDataSet);
    procedure Src_RFolDataChange(Sender: TObject; Field: TField);
    procedure bb_13ppClick(Sender: TObject);
    procedure bb_spClick(Sender: TObject);
    procedure bb_13unicoClick(Sender: TObject);
    procedure bb_FeriasClick(Sender: TObject);
    procedure CODFUNKeyPress(Sender: TObject; var Key: Char);
    procedure CODFUNExit(Sender: TObject);
    procedure CB_ORDEMExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function fimp_folhaabre(ptipo: Integer): Boolean;
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
    form_impres_imp_folha: TFrm_Impres;
    function fimp_FolhaMat(ptipo: Integer): Boolean;

  end;
var
  Frm_Imp_Folha: TFrm_Imp_Folha;

implementation

uses S_DM2;

{$R *.dfm}

procedure TFrm_Imp_Folha.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Imp_Folha.Qr_RFolCalcFields(DataSet: TDataSet);
begin
if Qr_RFolcodcar.Value>0 then
   begin
   if flqr1('NOMCAR','','CADCAR','N','CODCAR',Qr_RFolcodcar.AsString) then
      begin
      Qr_RFolnomcar.Value:=DM1.Query1.Fields[0].AsString;
      end
   end;


end;
function TFrm_Imp_Folha.fimp_folhaabre(ptipo: Integer): Boolean;
begin
Qr_RFol.Close;
Qr_RFol.Sql.Clear;
Qr_RFol.Sql.add('Select RFCODEMP,  RFLOCAL,  RFMES,  RFANO,  RFCODFUN, '
               +'  RFTOTVEN,  RFTOTDES,  RFBASEFGTS,  RFALFGTS,  RFVLRFGTS, '
               +'  RFBASEIR,  RFALIR,  RFVLRIR,  RFBASEINSS,  RFALINSS,'
               +'  RFVLRINSS,  RFBASEVT,  RFALVT,  RFSALBASE,'
               +'  RFVLRVT,  RFDTAQI,  RFDTAQF,  RFDTFERI,  RFDTFERF,'
               +'  RFQTDFNJ,  CADFUN.CFNOMFUN as nomfun,  '
               +'  CADFUN.CFCODCAR as codcar,   CFCBO    as CBO '
               +'  From CADRFOL,CADFUN where '
               +iif(DM1.Qr_TID.Locate('TINOME','CADFUN',[]),'',' RFCODEMP=0'+IntToStr(codemp)+' and '
                                                               +' RFCODEMP=CFCODEMP and ')
               +' RFCODFUN=CFCODFUN '
               +' and RFLOCAL=0'+IntToStr(ptipo)
               +' and RFMES=0'+Trim(MES.Text)
               +' and RFANO=0'+Trim(ANO.Text)
               +iif(Valfloat(CODFUN.Text)>0,' and RFCODFUN=0'+Trim(CODFUN.Text),''));
if CB_ORDEM.ItemIndex=0 then
   Qr_RFol.SQL.Add(' order by CFNOMFUN ')
else
   Qr_RFol.SQL.Add(' order by CFCODFUN');

Qr_RFol.Open;
if Qr_Rfol.Eof then
   begin
   Result:=False;
   exit;
   end;
result:=True;
end;
procedure TFrm_Imp_Folha.bb_FolhaClick(Sender: TObject);
begin
if not fimp_folhaabre(0) then
   begin
   Fmensagem('Não ha folha a ser Impressa!',0,['0'],0);
   exit;
   end;
if RG_TPIMPRES.ItemIndex=0 then
   begin
   Application.CreateForm(TQr_Folha, Qr_Folha);
   Qr_Folha.Qr_Periodo.Caption:=tabmes[Qr_RFolRFMES.AsInteger]+'/'+FormatFloat('0000',Qr_RFolRFANO.Value);
   if CB_VISUAL.Checked then
      begin
      verteclado(0);
      Qr_Folha.PreviewModal;
      end
   else
      Qr_Folha.Print;
   Qr_Folha.Free;
   end
else if RG_TPIMPRES.ItemIndex=1 then
   begin
   fImp_folhaMat(0);
   end;

end;

procedure TFrm_Imp_Folha.FormCreate(Sender: TObject);
begin
mes.Text:=FormatDateTime('mm',pdatasis);
ano.Text:=FormatDateTime('yyyy',pdatasis);
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_Imp_Folha.Qr_LFolCalcFields(DataSet: TDataSet);
begin
if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE',Qr_LFolLCCODEVE.AsString) then
   begin
   Qr_LFolnomeve.Value:=Trim(DM1.Query1.Fields[0].AsString);
   end;
if Qr_LFolLCNAT.Value=0 then
   Qr_LFolvecimentos.Value:=Qr_LFolLCTOTAL.Value
else
   Qr_LFoldescontos.Value  :=Qr_LFolLCTOTAL.Value;
Qr_LFolreferencia.Value:=FormatFloat(mcasas, Qr_LFolLCQTD.Value);

end;

procedure TFrm_Imp_Folha.Src_RFolDataChange(Sender: TObject;
  Field: TField);
begin
if Frm_Imp_Folha.Qr_RFol.Eof then
   begin
   if mqtdeve>0 then
      begin
      Frm_Imp_Folha.Qr_RFol.Prior;
      end;
   end;

end;

function TFrm_Imp_Folha.fimp_FolhaMat(ptipo: Integer): Boolean;
var
mqtdeve,mlin, mpag: Integer;
mtotven, mtotdes: Real;
mposi, mtam, x: Integer;
mextenso,mobs: String;

begin
mlin:=0;
mpag:=0;
mtotven:=0;
mtotdes:=0;
testeform := TFrm_Imp_Folha(FindGlobalComponent('form_impres_imp_folha'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_imp_folha);

form_impres_imp_folha.fimpresajustaimp(1,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
if ptipo<4 then
   begin
   While not Frm_Imp_Folha.Qr_RFol.Eof do
      begin
      mpag:=0;
      if (Frm_Imp_Folha.Qr_LFol.Active) and (Frm_Imp_Folha.Qr_LFol.Eof) or
         not (Frm_Imp_Folha.Qr_LFol.Active) then
         begin
         Frm_Imp_Folha.Qr_LFol.Close;
         Frm_Imp_Folha.Qr_LFol.Sql.Clear;
         Frm_Imp_Folha.Qr_LFol.Sql.add('Select * From CADLFOL where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADFOL',[]),'',' LCCODEMP=0'+Frm_Imp_Folha.Qr_RFolRFCODEMP.AsString+' and ')
                        +' LCLOCAL=0'+Frm_Imp_Folha.Qr_RFolRFLOCAL.AsString
                        +' and LCMES=0'+Frm_Imp_Folha.Qr_RFolRFMES.AsString
                        +' and LCANO=0'+Frm_Imp_Folha.Qr_RFolRFANO.AsString
                        +' and LCCODFUN=0'+Frm_Imp_Folha.Qr_RFolRFCODFUN.AsString
                        +' order by LCNAT,LCCODEVE');
        Frm_Imp_Folha.Qr_LFol.Open;
        end;
      mqtdeve:=0;
      mpag:=mpag+1;
      if mlin=0 then
         mlin:=1;
      form_impres_imp_folha.RDprint1.ImpF(mlin,01,'+------------------------------------------------------------------------------+',mnormal);
      mlin:=mlin+1;
      form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|',mnormal);
      form_impres_imp_folha.RDprint1.ImpF(mlin,02,centra('R E C I B O    D E    P A G A M E N T O',' ',78),mneg);
      form_impres_imp_folha.RDprint1.ImpF(mlin,80,'|',mnormal);
      mlin:=mlin+1;
      form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|',mnormal);
      form_impres_imp_folha.RDprint1.ImpF(mlin,02,Centra(FormatFloat('00000',DM1.Tb_EmpCODEMP.Value)+'-'+DM1.Tb_EmpRAZAO.Value,' ',78),mneg);
      form_impres_imp_folha.RDprint1.ImpF(mlin,80,'|',mnormal);
      mlin:=mlin+1;
      form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|                                                                              |',mnormal);
      form_impres_imp_folha.RDprint1.ImpF(mlin,02,DM1.Tb_EmpCIDADE.Value+'-'+DM1.Tb_EmpUF.Value,mnormal);
      mlin:=mlin+1;
      form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|                                                                              |',mnormal);
      form_impres_imp_folha.RDprint1.ImpF(mlin,02,DM1.Tb_Empcnpj_masc.Value,mnormal);
      form_impres_imp_folha.RDprint1.ImpF(mlin,66,tabmes[Frm_Imp_Folha.Qr_RFolRFMES.AsInteger]+'/'+FormatFloat('0000',Frm_Imp_Folha.Qr_RFolRFANO.Value),mnormal);
      mlin:=mlin+1;
      form_impres_imp_folha.RDprint1.ImpF(mlin,01,'| Codigo Nome do Funcionario                 CBO EMP LOCAL DEPTO SETOR SECAO FL|',mnormal);
      mlin:=mlin+1;
      form_impres_imp_folha.RDprint1.ImpF(mlin,01,'| '+FormatFloat('00000',Frm_Imp_Folha.Qr_LFolLCCODFUN.Value)
                             +'-'+Frm_Imp_Folha.Qr_RFolnomfun.Value,mnormal);
      form_impres_imp_folha.RDprint1.impf(mlin,46,insere2(Frm_Imp_Folha.Qr_RFolcbo.Value,' ',3)
                              +' '+insere2(' ',' ',3) // emp
                              +' '+insere2(' ',' ',5) // emp
                              +' '+insere2(' ',' ',5) // local
                              +' '+insere2(' ',' ',5) // Setor
                              +' '+insere2(' ',' ',5) // secao
                              +' '+FormatFloat('00',mpag)+'|',mnormal);
      mlin:=mlin+1;
      form_impres_imp_folha.RDprint1.ImpF(mlin,01,'+------------------------------------------------------------------------------+',mnormal);
      mlin:=mlin+1;
      form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|Codigo| Descricao                    12345|Refer|  Vencimentos |  Descontos   |',mnormal);
      mqtdeve:=0;
      While not Frm_Imp_Folha.Qr_LFol.Eof do
         begin
         mqtdeve:=mqtdeve+1;
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.ImpF(mlin,01,
                                 '|'+insere(Frm_Imp_Folha.Qr_LFolLCCODEVE.AsString,' ',6)
                                 +'|'+insere2(Frm_Imp_Folha.Qr_LFolnomeve.Value,' ',35)
                                 +'|'+insere(FormatFloat('0.00', Frm_Imp_Folha.Qr_LFolLCQTD.Value),' ',5)
                                 +'|'+
                                 +iif(Frm_Imp_Folha.Qr_LFolvecimentos.Value>0,
                                 insere(FormatFloat('#,##0.00', Frm_Imp_Folha.Qr_LFolvecimentos.Value),' ',14)
                                 +'|'+insere2(' ',' ',14),
                                 insere(' ',' ',14)
                                 +'|'+insere(FormatFloat('#,##0.00',Frm_Imp_Folha.Qr_LFoldescontos.Value),' ',14))
                                 +'|',mnormal);
         if Frm_Imp_Folha.Qr_LFolLCSOMA.Value<>1 then
            begin
            mtotven:=mtotven+ Frm_Imp_Folha.Qr_LFolvecimentos.Value;
            mtotdes:=mtotdes+ Frm_Imp_Folha.Qr_LFoldescontos.Value;
            end;
         Frm_Imp_Folha.Qr_LFol.Next;
         if not Frm_Imp_Folha.Qr_LFol.eof then
            begin
            if mqtdeve>9 then
               break;
            end;
         end;
      if Frm_Imp_Folha.Qr_LFol.Eof then
         begin
         if ptipo=1 then
            begin
            mlin:=mlin+1;
            form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|                                                                              |',mnormal);
            form_impres_imp_folha.RDprint1.ImpF(mlin,02,insere2('*','*',78),mnormal);
            mlin:=mlin+1;
            form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|                                                                              |',mnormal);
            form_impres_imp_folha.RDprint1.ImpF(mlin,02,insere2('PARCELA UNICA DO DECIMO TERCEIRO',' ',78),mnormal);
            mqtdeve:=mqtdeve+2;
            end
         else if ptipo=2 then
            begin
            mlin:=mlin+1;
            form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|                                                                              |',mnormal);
            form_impres_imp_folha.RDprint1.ImpF(mlin,02,insere2('*','*',78),mnormal);
            mlin:=mlin+1;
            form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|                                                                              |',mnormal);
            form_impres_imp_folha.RDprint1.ImpF(mlin,02,insere2('PRIMEIRA PARCELA DO DECIMO TERCEIRO',' ',78),mnormal);
            mqtdeve:=mqtdeve+2;
            end
         else if ptipo=3 then
            begin
            mlin:=mlin+1;
            form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|                                                                              |',mnormal);
            form_impres_imp_folha.RDprint1.ImpF(mlin,02,insere2('*','*',78),mnormal);
            mlin:=mlin+1;
            form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|                                                                              |',mnormal);
            form_impres_imp_folha.RDprint1.ImpF(mlin,02,insere2('SEGUNDA PARCELA DO DECIMO TERCEIRO',' ',78),mnormal);
            mqtdeve:=mqtdeve+2;
            end;
         for x:=mqtdeve to 10 do
            begin
            mlin:=mlin+1;
            form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|      |                                   |     |              |              |',mnormal);
            end;
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.impf(mlin,01,'+------+-----------------------------------+-----+--------------+--------------+',mnormal);
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|                                                | Total Vctos. | Tot.Descontos|',mnormal);
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|                                                |',mnormal);
         form_impres_imp_folha.RDprint1.ImpF(mlin,51,insere(FormatFloat(mcasas, mtotven),' ',14),mneg);
         form_impres_imp_folha.RDprint1.ImpF(mlin,65,'|',mnormal);
         form_impres_imp_folha.RDprint1.ImpF(mlin,66,insere(FormatFloat(mcasas, mtotdes),' ',14),mneg);
         form_impres_imp_folha.RDprint1.ImpF(mlin,80,'|',mnormal);
         mtotven:=0;
         mtotdes:=0;
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|                                                | Valor Liquido|',mnormal);
         form_impres_imp_folha.RDprint1.ImpF(mlin,66,insere(FormatFloat(mcasas, Frm_Imp_Folha.Qr_RFolRFTOTVEN.Value-Frm_Imp_Folha.Qr_RFolRFTOTDES.Value),' ',14),mneg);
         form_impres_imp_folha.RDprint1.ImpF(mlin,80,'|',mnormal);
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.ImpF(mlin,01,'+------+-----------------------------------+-----+--------------+--------------+',mnormal);
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.ImpF(mlin,01,'+---------------------+------------------------+----------------------+----------------------+--------------------+--------------------+',mreduz);
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|    Salario Base     |   Salario Contr.INSS   |    Base Calc.FGTS    |       FGTS do MES    |   Base Calc.IRRF   |       FAIXA IRRF   |',mreduz);
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|    '+insere(FormatFloat(mcasas, Frm_Imp_Folha.Qr_RFolRFSALBASE.Value),' ',14)+'   |       '
                                 +insere(FormatFloat(mcasas, Frm_Imp_Folha.Qr_RFolRFBASEINSS.Value),' ',14)+'   |    '
                                 +insere(FormatFloat(mcasas, Frm_Imp_Folha.Qr_RFolRFBASEFGTS.Value),' ',14)+'    |    '
                                 +insere(FormatFloat(mcasas, Frm_Imp_Folha.Qr_RFolRFVLRFGTS.Value),' ',14)+'    |   '
                                 +insere(FormatFloat(mcasas, Frm_Imp_Folha.Qr_RFolRFBASEIR.Value),' ',14)+'   |   '
                                 +insere(FormatFloat(mcasas, Frm_Imp_Folha.Qr_RFolRFALIR.Value),' ',14)+'   |',mreduz);
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.ImpF(mlin,01,'+---------------------+------------------------+----------------------+----------------------+--------------------+--------------------+',mreduz);
         mlin:=mlin+2;
         form_impres_imp_folha.RDprint1.ImpF(mlin,16,'Assinatura:________________________________________',mnormal);
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.ImpF(mlin,27,Centra(Frm_Imp_Folha.Qr_RFolnomfun.Value,' ',40),mnormal);
         mlin:=mlin+1;
         Frm_Imp_Folha.Qr_RFol.Next;
         mpag:=0;
         end
      else
         begin
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.impf(mlin,01,'+------+-----------------------------------+-----+--------------+--------------+',mnormal);
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|                                                | Total Vctos. | Tot.Descontos|',mnormal);
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|                                                |',mnormal);
         form_impres_imp_folha.RDprint1.ImpF(mlin,51,insere(FormatFloat(mcasas, mtotven),' ',14),mneg);
         form_impres_imp_folha.RDprint1.ImpF(mlin,65,'|',mnormal);
         form_impres_imp_folha.RDprint1.ImpF(mlin,66,insere(FormatFloat(mcasas, mtotdes),' ',14),mneg);
         form_impres_imp_folha.RDprint1.ImpF(mlin,80,'|',mnormal);
         mtotven:=0;
         mtotdes:=0;
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.ImpF(mlin,01,'+------+-----------------------------------+-----+--------------+--------------+',mnormal);
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.ImpF(mlin,01,'Continua...',mreduz);
         mlin:=mlin+1;
         mlin:=mlin+1;
         mlin:=mlin+1;
         mlin:=mlin+1;
         mlin:=mlin+1;
         mlin:=mlin+3;
         end;
      if mlin>40 then
         begin
         form_impres_imp_folha.RDprint1.Novapagina;
         mlin:=0;
         end;
      end;
   end
else if ptipo=4 then
   begin
   While not Frm_Imp_Folha.Qr_RFol.Eof do
      begin
      mpag:=0;
      if (Frm_Imp_Folha.Qr_LFol.Active) and (Frm_Imp_Folha.Qr_LFol.Eof) or
         not (Frm_Imp_Folha.Qr_LFol.Active) then
         begin
         Frm_Imp_Folha.Qr_LFol.Close;
         Frm_Imp_Folha.Qr_LFol.Sql.Clear;
         Frm_Imp_Folha.Qr_LFol.Sql.add('Select * From CADLFOL where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADFOL',[]),'',' LCCODEMP=0'+Frm_Imp_Folha.Qr_RFolRFCODEMP.AsString+' and ')
                        +' LCLOCAL=0'+Frm_Imp_Folha.Qr_RFolRFLOCAL.AsString
                        +' and LCMES=0'+Frm_Imp_Folha.Qr_RFolRFMES.AsString
                        +' and LCANO=0'+Frm_Imp_Folha.Qr_RFolRFANO.AsString
                        +' and LCCODFUN=0'+Frm_Imp_Folha.Qr_RFolRFCODFUN.AsString
                        +' order by LCNAT,LCCODEVE');
        Frm_Imp_Folha.Qr_LFol.Open;
        end;
      mqtdeve:=0;
      mpag:=mpag+1;
      if mlin=0 then
         mlin:=1;
      form_impres_imp_folha.RDprint1.ImpF(mlin,01,centra('AVISO E RECIBO DE FERIAS',' ',80),mneg);
      mlin:=mlin+1;
      form_impres_imp_folha.RDprint1.ImpF(mlin,01,Centra('Capitulo VI - Titulo da C.L.T.',' ',80),mneg);
      mlin:=mlin+1;
      form_impres_imp_folha.RDprint1.ImpF(mlin,01,Centra('Dec.Lei No.5252 de 01/05/1943, com alteracoes do Dec.Lei No. 1535 de 14/04/1997',' ',80),mnormal);
      mlin:=mlin+1;
      form_impres_imp_folha.RDprint1.ImpF(mlin,01,Centra('Art.:135 da C.L.T., participando no minimo com 30 dias de antecedencia',' ',80),mnormal);
      mlin:=mlin+1;
      form_impres_imp_folha.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
      mlin:=mlin+1;
      form_impres_imp_folha.RDprint1.ImpF(mlin,01,'NOME...: '+FormatFloat('00000',Frm_Imp_Folha.Qr_LFolLCCODFUN.Value)
                             +'-'+Frm_Imp_Folha.Qr_RFolnomfun.Value,mnormal);
      mlin:=mlin+1;
      form_impres_imp_folha.RDprint1.ImpF(mlin,01,'FUNCAO.: '+Frm_Imp_Folha.Qr_RFolnomcar.Value,mnormal);
      mlin:=mlin+1;
      form_impres_imp_folha.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
      mlin:=mlin+1;
      form_impres_imp_folha.RDprint1.ImpF(mlin,01,'Periodo Aquisitivo...: '+FormatDateTime(fdt2, Frm_Imp_Folha.Qr_RFolRFDTAQI.Value)+' a '
                              +FormatDateTime(fdt2, Frm_Imp_Folha.Qr_RFolRFDTAQF.Value)
                              +' Ferias...: '+FormatDateTime(fdt2, Frm_Imp_Folha.Qr_RFolRFDTFERI.Value)+' a '
                              +FormatDateTime(fdt2, Frm_Imp_Folha.Qr_RFolRFDTFERF.Value),mnormal);
      mlin:=mlin+1;
      form_impres_imp_folha.RDprint1.ImpF(mlin,01,'Faltas nao just/Horas.: '+FormatFloat(mcasas, Frm_Imp_Folha.Qr_RFolRFQTDFNJ.Value),mnormal);
      form_impres_imp_folha.RDprint1.ImpF(mlin,50,'Sal.Base.: '+FormatFloat(mcasas, Frm_Imp_Folha.Qr_RFolRFSALBASE.Value)+'/M',mnormal);
      mlin:=mlin+1;
      form_impres_imp_folha.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
      mlin:=mlin+1;
      form_impres_imp_folha.RDprint1.ImpF(mlin,01,'Eventos                                       Refer.     Descontos   Vencimentos',mnormal);
      mlin:=mlin+1;
      form_impres_imp_folha.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
{
12345-1234567890123456789012345678901234567890 30,00ZZZ.ZZZ.ZZ9,99ZZZ.ZZZ.ZZ9,99

Eventos                                       Refer.     Descontos   Vencimentos
12345-1234567890123456789012345678901234567890 30,00ZZZ.ZZZ.ZZ9,99ZZZ.ZZZ.ZZ9,99
}
      mqtdeve:=0;
      While not Frm_Imp_Folha.Qr_LFol.Eof do
         begin
         mqtdeve:=mqtdeve+1;
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.ImpF(mlin,01,
                                 insere(Frm_Imp_Folha.Qr_LFolLCCODEVE.AsString,' ',5)
                                 +'-'+insere2(Frm_Imp_Folha.Qr_LFolnomeve.Value,' ',40)
                                 +insere(FormatFloat('0.00', Frm_Imp_Folha.Qr_LFolLCQTD.Value),' ',6)
                                 +iif(Frm_Imp_Folha.Qr_LFoldescontos.Value>0,
                                 insere(FormatFloat('#,##0.00', Frm_Imp_Folha.Qr_LFoldescontos.Value),' ',14)
                                 +insere2(' ',' ',14),
                                 insere(' ',' ',14)
                                 +insere(FormatFloat('#,##0.00',Frm_Imp_Folha.Qr_LFolvecimentos.Value),' ',14))
                                 ,mnormal);
         if Frm_Imp_Folha.Qr_LFolLCSOMA.Value<>1 then
            begin
            mtotven:=mtotven+ Frm_Imp_Folha.Qr_LFolvecimentos.Value;
            mtotdes:=mtotdes+ Frm_Imp_Folha.Qr_LFoldescontos.Value;
            end;
         Frm_Imp_Folha.Qr_LFol.Next;
         if not Frm_Imp_Folha.Qr_LFol.eof then
            begin
            if mqtdeve>9 then
               break;
            end;
         end;
      if Frm_Imp_Folha.Qr_LFol.Eof then
         begin
         if ptipo=1 then
            begin
            mlin:=mlin+1;
            form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|                                                                              |',mnormal);
            form_impres_imp_folha.RDprint1.ImpF(mlin,02,insere2('*','*',78),mnormal);
            mlin:=mlin+1;
            form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|                                                                              |',mnormal);
            form_impres_imp_folha.RDprint1.ImpF(mlin,02,insere2('PARCELA UNICA DO DECIMO TERCEIRO',' ',78),mnormal);
            mqtdeve:=mqtdeve+2;
            end
         else if ptipo=2 then
            begin
            mlin:=mlin+1;
            form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|                                                                              |',mnormal);
            form_impres_imp_folha.RDprint1.ImpF(mlin,02,insere2('*','*',78),mnormal);
            mlin:=mlin+1;
            form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|                                                                              |',mnormal);
            form_impres_imp_folha.RDprint1.ImpF(mlin,02,insere2('PRIMEIRA PARCELA DO DECIMO TERCEIRO',' ',78),mnormal);
            mqtdeve:=mqtdeve+2;
            end
         else if ptipo=3 then
            begin
            mlin:=mlin+1;
            form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|                                                                              |',mnormal);
            form_impres_imp_folha.RDprint1.ImpF(mlin,02,insere2('*','*',78),mnormal);
            mlin:=mlin+1;
            form_impres_imp_folha.RDprint1.ImpF(mlin,01,'|                                                                              |',mnormal);
            form_impres_imp_folha.RDprint1.ImpF(mlin,02,insere2('SEGUNDA PARCELA DO DECIMO TERCEIRO',' ',78),mnormal);
            mqtdeve:=mqtdeve+2;
            end;
         for x:=mqtdeve to 10 do
            begin
            mlin:=mlin+1;
            form_impres_imp_folha.RDprint1.ImpF(mlin,01,'',mnormal)
            end;
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.impf(mlin,01,insere('-','-',80),mnormal);
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.ImpF(mlin,01,
                                 insere('Totais',' ',52)
                                 +insere(FormatFloat('#,##0.00', mtotdes),' ',14)
                                 +insere(FormatFloat('#,##0.00',mtotven),' ',14)
                                 ,mnormal);
         mtotven:=0;
         mtotdes:=0;
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.ImpF(mlin,01,
                                 insere('Liquido ferias',' ',52)
                                 +insere(' ',' ',14)
                                 +insere(FormatFloat('#,##0.00',
                                 Frm_Imp_Folha.Qr_RFolRFTOTVEN.Value-
                                 Frm_Imp_Folha.Qr_RFolRFTOTDES.Value),' ',14)
                                 ,mnormal);
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.impf(mlin,01,insere('-','-',80),mnormal);
         mextenso:=Extenso(Frm_Imp_Folha.Qr_RFolRFTOTVEN.Value-
                                 Frm_Imp_Folha.Qr_RFolRFTOTDES.Value);
         mobs:='      Pelo presente comunicamos-lhe que, de acordo com a lei, ser-lhe-ao '
              +'concedidas ferias relativas ao periodo acima descrito ae a sua disposicao '
              +'fica a importancia liquida de '+DM1.Tb_PargerPMOEDA.Value
              +FormatFloat(mcasas, (Frm_Imp_Folha.Qr_RFolRFTOTVEN.Value-
                                 Frm_Imp_Folha.Qr_RFolRFTOTDES.Value))
              +'('+mextenso+').';
         mobs:=centraTexto(mobs,0,80);
         mposi:=1;
         mtam :=80;
         while true do
            begin
            if length(mobs)<mposi then
               break;
            mlin:=mlin+1;
            form_impres_imp_folha.RDprint1.ImpF(mlin,01,copy(mobs,mposi,mtam),mnormal);
            mposi:=mposi+mtam;
            end;
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.ImpF(mlin,01,DM1.Tb_EmpCIDADE.Value+','+
                                  Data(Frm_Imp_Folha.Qr_RFolRFDTFERI.Value,0)+'.',mnormal);
         mlin:=mlin+3;
         form_impres_imp_folha.RDprint1.ImpF(mlin,01,insere2('_','_',length(DM1.Tb_EmpRAZAO.Value)),mnormal);
         form_impres_imp_folha.RDprint1.ImpF(mlin,80-length(Frm_Imp_Folha.Qr_RFolnomfun.Value),insere2('_','_',length(Frm_Imp_Folha.Qr_RFolnomfun.Value)),mnormal);
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.ImpF(mlin,01,DM1.Tb_EmpRAZAO.Value,mnormal);
         form_impres_imp_folha.RDprint1.ImpF(mlin,80-length(Frm_Imp_Folha.Qr_RFolnomfun.Value),Frm_Imp_Folha.Qr_RFolnomfun.Value,mnormal);
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.impf(mlin,01,insere('-','-',80),mnormal);
         mlin:=mlin+2;
         form_impres_imp_folha.RDprint1.impf(mlin,01,Centra('RECIBO DE FERIAS',' ',80),mneg);
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.impf(mlin,01,Centra('Paragrafo Unico do Artigo 145 da C.L.T.',' ',80),mnormal);
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.impf(mlin,01,insere('-','-',80),mnormal);

         mobs:='Recebi da '+DM1.Tb_EmpRAZAO.Value+', CNPJ '+DM1.Tb_Empcnpj.Value
              +' sito '+DM1.Tb_EmpENDERECO.Value+' - '+DM1.Tb_EmpBAIRRO.Value+','
              +' a importancia de '+DM1.Tb_PargerPMOEDA.Value
              +FormatFloat(mcasas, (Frm_Imp_Folha.Qr_RFolRFTOTVEN.Value-
                                 Frm_Imp_Folha.Qr_RFolRFTOTDES.Value))
              +'('+mextenso+') que me e pago adiantadamente por motivo de minhas ferias '
              +'regulamentares, ora concedidas e que vou gozar de acordo com a descricao '
              +'acima, tudo conforme o aviso que recebi em tempo, ao qual dei meu ciente. ';
         mobs:=centraTexto(mobs,0,80);
         mposi:=1;
         mtam :=80;
         while true do
            begin
            if length(mobs)<mposi then
               break;
            mlin:=mlin+1;
            form_impres_imp_folha.RDprint1.ImpF(mlin,01,copy(mobs,mposi,mtam),mnormal);
            mposi:=mposi+mtam;
            end;

         mobs:='    Pela clareza e documento, firmo o presente recibo, '
              +' dando a firma plena e geral quitacao.';
         mobs:=centraTexto(mobs,0,80);
         mposi:=1;
         mtam :=80;
         while true do
            begin
            if length(mobs)<mposi then
               break;
            mlin:=mlin+1;
            form_impres_imp_folha.RDprint1.ImpF(mlin,01,copy(mobs,mposi,mtam),mnormal);
            mposi:=mposi+mtam;
            end;
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.ImpF(mlin,01,DM1.Tb_EmpCIDADE.Value+','+
                                  Data(Frm_Imp_Folha.Qr_RFolRFDTFERI.Value,0)+'.',mnormal);


         mlin:=mlin+3;
         form_impres_imp_folha.RDprint1.ImpF(mlin,80-length(Frm_Imp_Folha.Qr_RFolnomfun.Value),insere2('_','_',length(Frm_Imp_Folha.Qr_RFolnomfun.Value)),mnormal);
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.ImpF(mlin,80-length(Frm_Imp_Folha.Qr_RFolnomfun.Value),Frm_Imp_Folha.Qr_RFolnomfun.Value,mnormal);
         Frm_Imp_Folha.Qr_RFol.Next;
         mpag:=0;
         end
      else
         begin
         mlin:=mlin+1;
         form_impres_imp_folha.RDprint1.ImpF(mlin,01,'Continua...',mreduz);
         end;
      if mlin>40 then
         begin
         form_impres_imp_folha.RDprint1.Novapagina;
         mlin:=0;
         end;
      end;

   end;
if form_impres_imp_folha.RDprint1.Setup then form_impres_imp_folha.RDprint1.Fechar;
form_impres_imp_folha.free;
form_impres_imp_folha:=nil;

{

+------------------------------------------------------------------------------+
|                     R E C I B O    D E    P A G A M E N T O                  |
| 12345-1234567890123456789012345678901234567890                 FEVEREIRO/2004|
| 02.758.662.0001-50                                                           |
| Codigo Nome do Funcionario                 CBO EMP LOCAL DEPTO SETOR SECAO FL|
| 123456 12345678901234567890123456789012345 123 123 12345 12345 12345 12345 01|
+------------------------------------------------------------------------------+
|Codigo| Descricao                    12345|Refer|  Vencimentos |  Descontos   |
|Codigo|12345678901234567890123456789012345|30.00|zzz.zzz.zz9,99|zzz.zzz.zz9,99|
|      |                                   |     |              |              |
+------+-----------------------------------+-----+--------------+--------------+
|                                                | Total Vctos. | Tot.Descontos|
|                                                | zzz.zzz.zz.zz|zzz.zzz.zz9,99|
|                                                | Valor Liquido|zzz.zzz.zz9,99|
+------+-----------------------------------+-----+--------------+--------------+
|                                                                              |
+--------------------+-----------------------+---------------------+----------------------+--------------------+--------------------+
|    Salario Base    |  Salario Contr.INSS   |   Base Calc.FGTS    |       FGTS do MES    |   Base Calc.IRRF   |       FAIXA IRRF   |
|   zzz.zzz.zz9,99   |      zzz.zzz.zz9,99   |   zzz.zzz.zz9,99    |    zzz.zzz.zz9,99    |   zzz.zzz.zz9,99   |   zzz.zzz.zz9,99   |
+------+-----------------------------------+-----+--------------+--------------+
+------------------------------------------------------------------------------+
|                     R E C I B O    D E    P A G A M E N T O                  |
| 12345-1234567890123456789012345678901234567890                 FEVEREIRO/2004|
| 02.758.662.0001-50                                                           |
| Codigo Nome do Funcionario                 CBO EMP LOCAL DEPTO SETOR SECAO FL|
| 123456 12345678901234567890123456789012345 123 123 12345 12345 12345 12345 01|
+------------------------------------------------------------------------------+
|Codigo| Descricao                    12345|Refer|  Vencimentos |  Descontos   |
|Codigo|12345678901234567890123456789012345|30.00|zzz.zzz.zz9,99|zzz.zzz.zz9,99|
|      |                                   |     |              |              |
+------+-----------------------------------+-----+--------------+--------------+
|                                                | Total Vctos. | Tot.Descontos|
|                                                | zzz.zzz.zz.zz|zzz.zzz.zz9,99|
|                                                | Valor Liquido|zzz.zzz.zz9,99|
+------+-----------------------------------+-----+--------------+--------------+
|                                                                              |
+--------------------+-----------------------+---------------------+----------------------+--------------------+--------------------+
|    Salario Base    |  Salario Contr.INSS   |   Base Calc.FGTS    |       FGTS do MES    |   Base Calc.IRRF   |       FAIXA IRRF   |
|   zzz.zzz.zz9,99   |      zzz.zzz.zz9,99   |   zzz.zzz.zz9,99    |    zzz.zzz.zz9,99    |   zzz.zzz.zz9,99   |   zzz.zzz.zz9,99   |
+------+-----------------------------------+-----+--------------+--------------+

}
result:=True;
end;
procedure TFrm_Imp_Folha.bb_13ppClick(Sender: TObject);
begin
if not Fimp_FolhaAbre(2) then
   begin
   Fmensagem('Não ha recibo a ser Impresso!',0,['0'],0);
   exit;
   end;
fImp_folhaMat(2);


end;

procedure TFrm_Imp_Folha.bb_spClick(Sender: TObject);
begin
if not Fimp_FolhaAbre(3) then
   begin
   Fmensagem('Não ha recibo a ser Impresso!',0,['0'],0);
   exit;
   end;
fImp_folhaMat(3);

end;

procedure TFrm_Imp_Folha.bb_13unicoClick(Sender: TObject);
begin
if not Fimp_FolhaAbre(1) then
   begin
   Fmensagem('Não ha recibo a ser Impresso!',0,['0'],0);
   exit;
   end;
fImp_folhaMat(1);

end;

procedure TFrm_Imp_Folha.bb_FeriasClick(Sender: TObject);
begin
if not Fimp_FolhaAbre(4) then
   begin
   Fmensagem('Não ha recibo a ser Impresso!',0,['0'],0);
   exit;
   end;
fImp_folhaMat(4);

end;

procedure TFrm_Imp_Folha.CODFUNKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFUN.Text:=fChamafun(0,'frm_folman',key);
   CODFUNExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Imp_Folha.CODFUNExit(Sender: TObject);
begin
CODFUN.Text:=fdeixanum2(CODFUN.Text);
if trim(CODFUN.Text)='' then
   exit;
if (BBSAIR.Focused) then
   begin
   exit;
   end;
if flcadfun(1,0,Trim(CODFUN.Text)) then
   NOMFUN.Text:=DM2.Tb_FunCFNOMFUN.AsString
else
   begin
   Fmensagem('Funcionário não Cadastrado!',0,['0'],0);
   CODFUN.SetFocus;
   end;

end;

procedure TFrm_Imp_Folha.CB_ORDEMExit(Sender: TObject);
begin
with CB_ORDEM do ItemIndex:=Items.IndexOf(CB_ORDEM.Text);
CB_ORDEM.text:=CB_ORDEM.Items.Strings[CB_ORDEM.ItemIndex];
if CB_ORDEM.Text='' then
   CB_ORDEM.ItemIndex:=0;

end;

procedure TFrm_Imp_Folha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Imp_Folha.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if Form_SelEmp.WindowState=wsMinimized then
      Form_SelEmp.WindowState:=wsNormal
   else
      Form_SelEmp.Show;
   end
else
   begin
   if pTcAtalho_me<>0 then
      begin
      if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
         begin
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;
end;

end.

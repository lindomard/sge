unit S_Cli_Debitos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, DBTables, Grids, DBGrids,
  RxMemDS, ComCtrls;

type
  TFrm_Cli_Debitos = class(TForm)
    GB_TITULOS_LOCAIS: TGroupBox;
    Panel1_cabecalho: TPanel;
    lbl_razao: TLabel;
    lbl_ender_comp: TLabel;
    lbl_contato: TLabel;
    lbl_ultcpr: TLabel;
    lbl_dtucompra: TLabel;
    Label23: TLabel;
    lbl_pcompra: TLabel;
    Label35: TLabel;
    lbl_vlrmaiorcompra: TLabel;
    Label37: TLabel;
    lbl_medcompramen: TLabel;
    Label26: TLabel;
    lbl_lcred: TLabel;
    Label34: TLabel;
    lbl_limdisp: TLabel;
    BBAPLICAR: TBitBtn;
    BBSAIR: TBitBtn;
    Panel_total: TPanel;
    Query_dar_local: TQuery;
    DBGrid_dar_local: TDBGrid;
    src_dar_local: TDataSource;
    mem_caddar_local: TRxMemoryData;
    mem_caddar_localCRNUMERO: TFloatField;
    mem_caddar_localCRDESD: TStringField;
    mem_caddar_localCRDTEMIS: TDateTimeField;
    mem_caddar_localCTDTVCTO: TDateTimeField;
    mem_caddar_localCRDTPAG: TDateTimeField;
    mem_caddar_localCRVALOR: TFloatField;
    mem_caddar_localCRDTDESCF: TDateTimeField;
    mem_caddar_localparcela: TStringField;
    mem_caddar_localCRNPED: TFloatField;
    mem_caddar_localCRORDEM: TFloatField;
    mem_caddar_localCRLOTSEQ_CP: TFloatField;
    mem_caddar_localCRDUP: TFloatField;
    mem_caddar_localnumero: TStringField;
    mem_caddar_localVALDEB: TFloatField;
    mem_caddar_localVALCRE: TFloatField;
    mem_caddar_localSALDO: TFloatField;
    mem_caddar_localDESCONTOS: TFloatField;
    mem_caddar_localJUROSMULTA: TFloatField;
    mem_caddar_localcobranca: TStringField;
    mem_caddar_outfil: TRxMemoryData;
    FloatField1: TFloatField;
    StringField1: TStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    FloatField2: TFloatField;
    DateTimeField4: TDateTimeField;
    StringField2: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    StringField3: TStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    StringField4: TStringField;
    mem_caddar_localSELECIONADO: TStringField;
    Query_dar_localCRNUMERO: TFloatField;
    Query_dar_localCRDESD: TStringField;
    Query_dar_localCRDTEMIS: TDateTimeField;
    Query_dar_localCRDUP: TFloatField;
    Query_dar_localCRDTVCTO: TDateTimeField;
    Query_dar_localCRDTPAG: TDateTimeField;
    Query_dar_localCRVALOR: TFloatField;
    Query_dar_localCRJURD: TFloatField;
    Query_dar_localCRVALPAG: TFloatField;
    Query_dar_localCRDESCF: TFloatField;
    Query_dar_localCRDESCD: TFloatField;
    Query_dar_localCRQTDDM: TFloatField;
    Query_dar_localCRDTDESCF: TDateTimeField;
    Query_dar_localCRQTDPARC: TFloatField;
    Query_dar_localCRNUMPARC: TFloatField;
    Query_dar_localCRMULTA: TFloatField;
    Query_dar_localCRNPED: TFloatField;
    Query_dar_localCRORDEM: TFloatField;
    Query_dar_localCRLOTSEQ_CP: TFloatField;
    Query_dar_localCOBRANCA: TStringField;
    PageControl1: TPageControl;
    tsGeral: TTabSheet;
    tsFiliais: TTabSheet;
    GB_OUTRASFILIAIS: TGroupBox;
    Panel1: TPanel;
    bbOutrasFiliais: TBitBtn;
    DBGrid1: TDBGrid;
    DBGrid_local_filial: TDBGrid;
    mem_parlcd: TRxMemoryData;
    src_parlcd: TDataSource;
    mem_parlcdLOCAL_FILIAL: TStringField;
    mem_parlcdSELECIONADO: TStringField;
    mem_parlcdORDEM: TIntegerField;
    procedure BBSAIRClick(Sender: TObject);
    procedure BBAPLICARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid_dar_localDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid_dar_localDblClick(Sender: TObject);
    procedure DBGrid_local_filialDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cli_Debitos: TFrm_Cli_Debitos;
  mCodCli_Origem: Real;
implementation

uses S_DM1, Func, lerarq, func_excecoes, S_DM6;

{$R *.dfm}

procedure TFrm_Cli_Debitos.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Cli_Debitos.BBAPLICARClick(Sender: TObject);
var
mValor: Real;
mSaldo_ant: Real;
begin

la_tabelas  :='';
la_Join     :='';
la_empresas :='';
la_instrucao:='';
fInnerJoin(0,'CADBCO','BCCODEMP','CRCODEMP','BCCODBCO','CRCODBCO');


Query_dar_local.Close;
Query_dar_local.SQL.Clear;
Query_dar_local.SQL.Add('SELECT CRNUMERO,CRDESD,CRDTEMIS,CRDUP,CRDTVCTO,CRDTPAG, '
                       +' CRVALOR,CRJURD,CRVALPAG,CRDESCF, CRDESCD,CRQTDDM,'
                       +' CRDTDESCF,CRQTDPARC,CRNUMPARC,CRMULTA,CRNPED,CRORDEM,CRLOTSEQ_CP, '
                       +' DECODE(BCBANCO,null,'+chr(39)+'CARTEIRA'+chr(39)+',0, '
                       +chr(39)+'CARTEIRA'+chr(39)+',BCBANCO) AS COBRANCA '
                       +' FROM CADDAR'+iif(la_tabelas='','',',')+la_tabelas
                       +'       '+la_Join
                       +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                       +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                       +' CRSTATUS<2 ');
Query_dar_local.SQL.add(' and CRCODCLI=0'+FloatToStr(mCodCli_Origem));
try
   Query_dar_local.Open;
except
   Query_dar_local.sql.savetofile(mpastatemp +'sql.txt');
   fMensagem('Campo Inexistente: '+FTestarCampos(Query_dar_local,['CADDAR']),0,['0'],0);
   end;
mem_caddar_local.Close;
mem_caddar_local.Open;
mSaldo_ant:=0;

While not Query_dar_local.Eof do
   begin
   mem_caddar_local.Append;

   mem_caddar_localnumero.AsString    :=Formatfloat('000000', Query_dar_localCRNUMERO.AsFloat)
                                      +'-'+Query_dar_localCRDESD.AsString;

   mem_caddar_localCRDTEMIS.AsDateTime:=Query_dar_localCRDTEMIS.AsDateTime;
   mem_caddar_localCTDTVCTO.AsDateTime:=Query_dar_localCRDTVCTO.AsDateTime;
   if Query_dar_localCRDTPAG.AsDateTime>pdatanula then
      mem_caddar_localCRDTPAG.AsDateTime:=Query_dar_localCRDTPAG.AsDateTime;
   mem_caddar_localCRVALOR.AsFloat:=Query_dar_localCRVALOR.AsFloat;

   mem_caddar_localparcela.AsString:=FormatFloat('00', Query_dar_localCRNUMPARC.AsFloat)
                                    +'/'+FormatFloat('00', Query_dar_localCRQTDPARC.AsFloat);

   mem_caddar_localCRNPED.AsFloat     :=Query_dar_localCRNPED.AsFloat;
   mem_caddar_localCRORDEM.AsFloat    :=Query_dar_localCRORDEM.AsFloat;
   mem_caddar_localCRLOTSEQ_CP.AsFloat:=Query_dar_localCRLOTSEQ_CP.AsFloat;
   try
      mem_caddar_localcobranca.AsString  :=copy(ptpdoc[Query_dar_localCRDUP.asinteger],5,length(ptpdoc[Query_dar_localCRDUP.asinteger])-4);
   except
      mem_caddar_localcobranca.AsString  :='Normal';
      end;

   mValor:=0;
   if Query_dar_localCRDESCF.AsFloat>0 then
      begin
      if Query_dar_localCRDTDESCF.AsDateTime>=Date then
         mValor:=mValor+Query_dar_localCRDESCF.AsFloat;
      end;
   if Query_dar_localCRDESCD.AsFloat>0 then
      begin
      if Query_dar_localCRDTVCTO.AsDateTime>date then
         begin
         mValor:=mValor+ Arredonda(  ((Query_dar_localCRDTVCTO.AsDateTime-date) *
                         Query_dar_localCRDESCD.AsFloat) , DM1.Tb_PargerPCASAS.AsInteger);
         end;
      end;
   mem_caddar_localDESCONTOS.AsFloat:=mValor;


   mValor:=0;
   if Query_dar_localCRMULTA.AsFloat>0 then
      begin
      if (Query_dar_localCRDTVCTO.AsDateTime+Query_dar_localCRQTDDM.AsFloat)<date then
         mValor:=mValor+Query_dar_localCRMULTA.AsFloat;
      end;
   if Query_dar_localCRJURD.AsFloat>0 then
      begin
      if Query_dar_localCRDTVCTO.AsDateTime<date then
         begin
         mValor:=mValor+ Arredonda(  ((date-Query_dar_localCRDTVCTO.AsDateTime) *
                         Query_dar_localCRDESCD.AsFloat) , DM1.Tb_PargerPCASAS.AsInteger);
         end;
      end;


   mem_caddar_localJUROSMULTA.Value :=mValor;
   mem_caddar_localCRDUP.AsFloat    :=Query_dar_localCRDUP.AsFloat;
   mem_caddar_localVALCRE.AsFloat   :=0;
   mem_caddar_localVALDEB.AsFloat   :=0;
   if mem_caddar_localCRDUP.AsFloat=5 then
      begin
      mem_caddar_localVALCRE.AsFloat:=mem_caddar_localCRVALOR.AsFloat
                                     -mem_caddar_localDESCONTOS.AsFloat
                                     +mem_caddar_localJUROSMULTA.AsFloat;
      mem_caddar_localVALDEB.AsFloat:=Query_dar_localCRVALPAG.AsFloat;
      end
   else
      begin
      mem_caddar_localVALDEB.AsFloat:=mem_caddar_localCRVALOR.AsFloat
                                     -mem_caddar_localDESCONTOS.AsFloat
                                     +mem_caddar_localJUROSMULTA.AsFloat;
      mem_caddar_localVALCRE.AsFloat:=Query_dar_localCRVALPAG.AsFloat;
      end;

   mem_caddar_localSALDO.AsFloat:=mSaldo_ant +
                                (mem_caddar_localVALCRE.AsFloat-mem_caddar_localVALDEB.AsFloat);

   mSaldo_ant:=mSaldo_ant+(mem_caddar_localVALCRE.AsFloat-mem_caddar_localVALDEB.AsFloat);
   mem_caddar_local.Post;
   Query_dar_local.Next;

   end;

end;

procedure TFrm_Cli_Debitos.FormCreate(Sender: TObject);
var
mCodigo: Integer;
begin


mem_caddar_localCRDTEMIS.DisplayFormat  :=fdt2;
mem_caddar_localCTDTVCTO.DisplayFormat  :=fdt2;
mem_caddar_localCRDTPAG.DisplayFormat   :=fdt2;
mem_caddar_localCRVALOR.DisplayFormat   :=mcasas;
mem_caddar_localCRDTDESCF.DisplayFormat :=mcasas;
mem_caddar_localVALDEB.DisplayFormat    :=mcasas;
mem_caddar_localVALCRE.DisplayFormat    :=mcasas;
mem_caddar_localSALDO.DisplayFormat     :=mcasas;
mem_caddar_localDESCONTOS.DisplayFormat :=mcasas;
mem_caddar_localJUROSMULTA.DisplayFormat:=mcasas;

DM6.Tb_ParLCD.Close;
DM6.Tb_ParLCD.SQL.clear;
DM6.Tb_ParLCD.SQL.Add('Select * from PARLCD ');
DM6.Tb_ParLCD.SQL.Add(' order by LCD_ORDEM ');
DM6.Tb_ParLCD.Open;
mem_parlcd.Close;
mem_parlcd.Open;

mCodigo:=0;

While not DM6.Tb_ParLCD.Eof do
   begin
   mCodigo:=mCodigo+1;
   mem_parlcd.Append;
   mem_parlcdORDEM.AsInteger:=mCodigo;
   mem_parlcdLOCAL_FILIAL.AsString:=DM6.Tb_ParLCDdescloc.AsString;
   mem_parlcdSELECIONADO.AsString :='X';
   mem_parlcd.Post;
   DM6.Tb_ParLCD.Next;
   end;


end;

procedure TFrm_Cli_Debitos.DBGrid_dar_localDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
Check: Integer;
R: TRect;
begin
//Desenha um checkbox no dbgrid
if Column.FieldName = 'SELECIONADO' then
   begin
   DBGrid_dar_local.Canvas.FillRect(Rect);
   Check := 0;
   if mem_caddar_localSELECIONADO.AsString = 'X' then
      Check := DFCS_CHECKED
   else
      Check := 0;
   R:=Rect;
   InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
   DrawFrameControl(DBGrid_dar_local.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
   end;
end;

procedure TFrm_Cli_Debitos.DBGrid_dar_localDblClick(Sender: TObject);
begin
if (mem_caddar_local.Active) and (not mem_caddar_localnumero.IsNull) then
   begin
   mem_caddar_local.Edit;
   if mem_caddar_localSELECIONADO.AsString='X' then
      mem_caddar_localSELECIONADO.Value:=''
   else
      mem_caddar_localSELECIONADO.Value:='X';
   mem_caddar_local.Post;
   end;

end;

procedure TFrm_Cli_Debitos.DBGrid_local_filialDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
Check: Integer;
R: TRect;
begin
//Desenha um checkbox no dbgrid
if Column.FieldName = 'SELECIONADO' then
   begin
   DBGrid_local_filial.Canvas.FillRect(Rect);
   Check := 0;
   if mem_parlcdSELECIONADO.AsString = 'X' then
      Check := DFCS_CHECKED
   else
      Check := 0;
   R:=Rect;
   InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
   DrawFrameControl(DBGrid_local_filial.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
   end;

end;

procedure TFrm_Cli_Debitos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if (FormState<>[fsModal]) then
      Action := caFree;
end;

end.
{
Dt.Vcto.    Dt.Compra Tipo Doc. Tipo Cobra No.Par    Valor  Descontos Juros/Multa   DEBITO CREDITO SALDO
10/06/2009 10/09/2009 Chq.Devol Carteira   01/03    1500,00    500,00        0,00  1000,00  600,00 400,00
}

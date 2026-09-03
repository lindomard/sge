unit S_RelBaixaRec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, Mask, ExtCtrls, S_DM1, func, S_Impres,
  Lerarq, Grids, DBGrids,S_DM5,variants, CheckLst, S_SelEmp;

type
  TFrm_RelBaixaRec = class(TForm)
    Tb_DupRec: TQuery;
    Panel1: TPanel;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    NRF: TEdit;
    Label5: TLabel;
    NRI: TEdit;
    Label4: TLabel;
    Label3: TLabel;
    CODCLI: TEdit;
    MDT2: TMaskEdit;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    bbAplicar: TBitBtn;
    Src_DupRec: TDataSource;
    Label6: TLabel;
    LOTEI: TEdit;
    Label7: TLabel;
    LOTEF: TEdit;
    Tb_DupRecFPNUMERO: TFloatField;
    Tb_DupRecFPDESC: TFloatField;
    Tb_DupRecFPTIPO: TFloatField;
    Tb_DupRecFPCODCLI: TFloatField;
    Tb_DupRecFPDUP_CODEMP: TFloatField;
    Tb_DupRecFPDTBX: TDateTimeField;
    Tb_DupRecFPDTEMIS: TDateTimeField;
    Tb_DupRecFPDATPAG: TDateTimeField;
    Tb_DupRecFPVALDUP: TFloatField;
    Tb_DupRecFPDEVOL: TFloatField;
    Tb_DupRecFPJUROS: TFloatField;
    Tb_DupRecFPVALOR: TFloatField;
    Tb_DupRecCRVALOR: TFloatField;
    Tb_DupRecCRVALPAG: TFloatField;
    Tb_DupRecCRCODVEN: TFloatField;
    Tb_DupRecCRCODBCO: TFloatField;
    Tb_DupRecNOMBCO: TStringField;
    Tb_DupRecFPDESD: TStringField;
    Tb_DupRecTOTPARCIAL: TStringField;
    Tb_DupRecTIPOCOB: TStringField;
    Tb_DupRecCRAZAO: TStringField;
    Tb_DupRecCRDTVCTO: TDateTimeField;
    Tb_DupRecFPLOTE: TFloatField;
    CB_BASETIT: TCheckBox;
    Qr_Lote: TQuery;
    Qr_LoteFPLOTE: TFloatField;
    Qr_LoteFPLOTSEQ: TFloatField;
    Qr_LoteDATA: TDateTimeField;
    Qr_LoteCODCLI: TFloatField;
    Qr_Loterazao: TStringField;
    Tb_Temp: TTable;
    Tb_TempTP_OBS: TStringField;
    Tb_TempTP_NUMERO: TFloatField;
    Tb_TempTP_DESD: TStringField;
    Tb_TempTP_DTVCTO: TDateTimeField;
    Tb_TempTP_DATPAG: TDateTimeField;
    Tb_TempTP_CODCLI: TFloatField;
    Tb_TempTP_NOMCLI: TStringField;
    Tb_TempTP_VALDUP: TFloatField;
    Tb_TempTP_VLRST: TFloatField;
    Tb_TempTP_VLRIPI: TFloatField;
    Tb_TempTP_FPDESC: TFloatField;
    Tb_TempTP_FPJUROS: TFloatField;
    Tb_TempTP_FPDEVOL: TFloatField;
    Tb_TempTP_FPVLRST: TFloatField;
    Tb_TempTP_FPVALOR: TFloatField;
    Tb_TempTP_PGFORMA: TStringField;
    Tb_TempTP_PGDATA: TDateTimeField;
    Tb_TempTP_PGNATUREZA: TFloatField;
    Tb_TempTP_PGNUMERO: TFloatField;
    Tb_TempTP_PGVALOR: TFloatField;
    Tb_TempTP_NUMLOT: TFloatField;
    Tb_TempTP_IFEM: TStringField;
    Tb_TempTP_TIPOCOB: TStringField;
    Qr_Tit: TQuery;
    Qr_TitFPCODEMP: TFloatField;
    Qr_TitFPSEQ: TFloatField;
    Qr_TitFPLOTE: TFloatField;
    Qr_TitFPNUMERO: TFloatField;
    Qr_TitFPDESD: TStringField;
    Qr_TitFPTIPO: TFloatField;
    Qr_TitFPCODCLI: TFloatField;
    Qr_TitFPDTEMIS: TDateTimeField;
    Qr_TitFPCAIXA: TFloatField;
    Qr_TitFPCODUSR: TFloatField;
    Qr_TitFPVALOR: TFloatField;
    Qr_TitFPJUROS: TFloatField;
    Qr_TitFPDESC: TFloatField;
    Qr_Titnomcli: TStringField;
    Qr_TitFPLOTSEQ: TFloatField;
    Qr_TitFPCODECF: TFloatField;
    Qr_TitFPNR: TFloatField;
    Qr_TitFPDUP_CODEMP: TFloatField;
    Qr_TitFPCODVEN: TFloatField;
    Qr_TitFPDTBX: TDateTimeField;
    Qr_TitFPLEMAT: TFloatField;
    Qr_TitFPVLRST: TFloatField;
    Qr_TitFPVLRIPI: TFloatField;
    Qr_TitFPVALDUP: TFloatField;
    Qr_TitFPDEVOL: TFloatField;
    Qr_TitFPDATPAG: TDateTimeField;
    Qr_TitFPDTVCTO: TDateTimeField;
    Qr_FP: TQuery;
    Qr_FPforma: TStringField;
    Qr_FPFPCODEMP: TFloatField;
    Qr_FPFPSEQ: TFloatField;
    Qr_FPFPDATA: TDateTimeField;
    Qr_FPFPFORMA: TFloatField;
    Qr_FPFPNUMERO: TFloatField;
    Qr_FPFPBANCO: TFloatField;
    Qr_FPFPSERIE: TStringField;
    Qr_FPFPVALOR: TFloatField;
    Qr_FPFPLOTE: TFloatField;
    Qr_FPFPCC: TStringField;
    Qr_FPFPTIPO: TFloatField;
    Qr_FPFPCAIXA: TFloatField;
    Qr_FPFPCODLDR: TFloatField;
    Qr_FPvinculo: TIntegerField;
    Qr_FPFPLOTSEQ: TFloatField;
    Qr_FPFPLOTSEQ_FC: TFloatField;
    Qr_FPFPLEMAT: TFloatField;
    Qr_FPFPVINCULO: TFloatField;
    Qr_FPFPNATUREZA: TFloatField;
    Tb_TempTP_CODEMP_DUP: TFloatField;
    Tb_TempTP_DTBX: TDateTimeField;
    Tb_TempTP_DTEMIS: TDateTimeField;
    Tb_TempTP_FPPARCIAL: TFloatField;
    Tb_TempTP_CODVEN: TFloatField;
    Tb_TempTP_TOTPARC: TStringField;
    Qr_TitFPPARCIAL: TFloatField;
    Tb_TempTP_TIPO: TFloatField;
    Tb_TempTP_CODBCO: TFloatField;
    Tb_TempTP_DUP: TFloatField;
    OMITIR_CLI: TCheckBox;
    lbx_codcli: TListBox;
    lbl_fpag: TLabel;
    RG_FPAG: TCheckListBox;
    procedure bbSairClick(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure NRIExit(Sender: TObject);
    procedure NRFExit(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Qr_FPCalcFields(DataSet: TDataSet);
    procedure Qr_TitCalcFields(DataSet: TDataSet);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RG_FPAGClick(Sender: TObject);
    procedure CB_BASETITClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function fcarregarTemp(pTipo: Integer): Boolean;

  public
    { Public declarations }
    form_impres_relbaixarec: tfrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_RelBaixaRec: TFrm_RelBaixaRec;
  mTabTmp: String;
  la_empfpcr   : String;
  la_empfpcrdup: String;

implementation

uses func_excecoes, S_DM4;

{$R *.DFM}

procedure TFrm_RelBaixaRec.bbSairClick(Sender: TObject);
begin

close;
end;

procedure TFrm_RelBaixaRec.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Trim(CODCLI.Text)) then
      begin
      fmensagem('Cliente não cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
      exit;
      end
   else
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODCLI.text := '';
      CODCLI.SetFocus;
      end;
   end;
end;

procedure TFrm_RelBaixaRec.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_DestPro',key);
   key:=#0;
   CODCLIExit(Self);
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_RelBaixaRec.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrToDate(MDT1.Text));
   except
      ShowMessage('Data Invalida!');
      MDT1.SetFocus;
      exit;
      end
   end;

end;

procedure TFrm_RelBaixaRec.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrToDate(MDT2.Text));
   except
      ShowMessage('Data Invalida!');
      MDT2.SetFocus;
      exit
      end
   end;


end;

procedure TFrm_RelBaixaRec.NRIExit(Sender: TObject);
begin
NRI.Text:=fdeixanum2(NRI.Text);
end;

procedure TFrm_RelBaixaRec.NRFExit(Sender: TObject);
begin
NRF.Text:=fdeixanum2(NRF.Text);

end;

procedure TFrm_RelBaixaRec.bbAplicarClick(Sender: TObject);
var
x: Integer;
begin
if (Trim(MDT1.Text)<>'/  /') and (TRIM(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fmensagem('Data Final Menor que Data Inicial. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
if (fsonumero(NRI.Text)<>0) and (fsonumero(NRF.Text)<>0) then
   begin
   if fsonumero(NRI.Text)>fsonumero(NRF.Text) then
      begin
      fmensagem('Número da NR inicial maior que final!',0,['0'],0);
      exit;
      end;
   end;
if (fsonumero(LOTEI.Text)<>0) and (fsonumero(LOTEF.Text)<>0) then
   begin
   if fsonumero(LOTEI.Text)>fsonumero(LOTEF.Text) then
      begin
      fmensagem('Número do Lote inicial maior que final!',0,['0'],0);
      exit;
      end;
   end;

if CB_BASETIT.Checked then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(0,'CADBCO','BCCODEMP','CRCODEMP','BCCODBCO','CRCODBCO');

   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';

   fInnerJoin6(1,'CADDAR','CRCODEMP','FPDUP_CODEMP','CRCODECF','FPCODECF','CRNUMERO','FPNUMERO'
               ,'CRDESD','FPDESD','CRDUP','FPTIPO','CRDTEMIS','FPDTEMIS');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADCLI','CCODEMP','CRCODEMP','CCODCLI','CRCODCLI');

   la_Empresas:=fEmpresas_Selecionadas('FPCRDUP','FPCRDUP.FPCODEMP',Form_SelEmp.CLB_EMPRESAS);
   la_Empresas:=fEmpresas_Selecionadas('FPCRDUP','FPCRDUP.FPDUP_CODEMP',Form_SelEmp.CLB_EMPRESAS);


   Tb_DupRec.Close;
   Tb_duprec.DatabaseName:='SG_ASSOC';
   Tb_DupRec.SQL.Clear;
   Tb_DupRec.SQL.Add(' Select FPNUMERO,FPDESD,FPLOTE, '
                    +' FPTIPO,FPCODCLI,FPDUP_CODEMP, '
                    +' FPDTBX,FPDTEMIS,FPDATPAG, '
                    +' FPVALDUP,FPDEVOL, '
                    +' FPJUROS,(FPVALOR+FPDEVOL) AS FPVALOR , '
                    +' FPDESC, FPPARCIAL, '
                    +' CRVALOR ,(CRVALOR+CRDEVOL) AS  CRVALPAG,CRCODVEN,CRDTVCTO '
                    +' ,CRCODBCO,decode(CRTIPCOB,0,'+chr(39)+'Simples'+chr(39)+','+chr(39)+'Descontado'+chr(39)+') AS TIPOCOB '
                    +' ,decode(BCBANCO,null,'+chr(39)+'Carteira'+chr(39)+',BCBANCO) as NOMBCO '
                    +' ,decode(FPPARCIAL,1,'+chr(39)+'Parcial'+chr(39)+','+chr(39)+'Total'+chr(39)+') as TOTPARCIAL '
                    +' ,CRAZAO '
                    +' from FPCRDUP '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                    +' CRSTATUS<9 ');

   if trim(MDT1.Text)<>'/  /' then
      Tb_DupRec.SQL.Add(' and FPDTBX>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT1.Text))+chr(39));
   if trim(MDT2.Text)<>'/  /' then
      Tb_DupRec.SQL.Add(' and FPDTBX<='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT2.Text))+chr(39));

   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   if trim(mcinst2)<>'' then
      Tb_DupRec.SQL.Add(' and CRCODCLI '+mcinst2);

   if ValInt(NRI.Text)>0 then
      Tb_DupRec.SQL.add(' and FPNR>=0'+Trim(NRI.Text));
   if ValInt(NRF.Text)>0 then
      Tb_DupRec.SQL.add(' and FPNR<=0'+Trim(NRF.Text));

   if ValInt(LOTEI.Text)>0 then
      Tb_duprec.SQL.add(' and FPLOTE>=0'+Trim(LOTEI.Text));
   if ValInt(LOTEF.Text)>0 then
      Tb_DupRec.SQL.add(' and FPLOTE<=0'+Trim(LOTEF.Text));




   Tb_DupRec.SQL.add(' order by CRCODBCO,CRTIPCOB');
   //Tb_DupRec.sql.SaveToFile('C:\SQL.TXT');

   try
      Tb_DupRec.Open;
   except
      Tb_DupRec.sql.SaveToFile('C:\SQL.TXT');
      end;
   end
else
   begin
   if Tb_Temp.Active then Tb_Temp.Close;
   if trim(mTabTmp)='' then
      begin
      DM1.Qr_FP.Close;
      DM1.Qr_FP.SQL.Clear;
      DM1.Qr_FP.SQL.Add('Select * from CADFP order by FPCODIGO');
      DM1.Qr_FP.Open;
      mTabTmp:=fProcTemp(12);
      DM5.Query1.Close;
      DM5.Query1.SQL.CLEAR;
      DM5.Query1.SQL.add('Create Table '+mTabTmp+'( '
                     +' TP_NUMLOT '+pTmpcFloat
                     +',TP_OBS '+pTmpcString+'(01)'
                     +',TP_IFEM '+pTmpcString+'(01)'
                     +',TP_NUMERO '+pTmpcFloat
                     +',TP_DESD '+pTmpcString+'(02)'
                     +',TP_DUP '+pTmpcFloat
                     +',TP_TIPO '+pTmpcFloat
                     +',TP_DTVCTO '+pTmpcDataHora
                     +',TP_DATPAG '+pTmpcDataHora
                     +',TP_DTEMIS '+pTmpcDataHora
                     +',TP_DTBX '+pTmpcDataHora
                     +',TP_CODCLI '+pTmpcFloat
                     +',TP_NOMCLI '+pTmpcString+'(40)'
                     +',TP_CODBCO '+pTmpcFloat
                     +',TP_VALDUP '+pTmpcFloat
                     +',TP_VLRIPI '+pTmpcFloat
                     +',TP_FPDESC '+pTmpcFloat
                     +',TP_FPJUROS '+pTmpcFloat
                     +',TP_FPDEVOL '+pTmpcFloat
                     +',TP_FPVLRST '+pTmpcFloat
                     +',TP_FPVALOR '+pTmpcFloat
                     +',TP_PGFORMA '+pTmpcString+'(30)'
                     +',TP_PGDATA '+pTmpcDataHora
                     +',TP_PGNATUREZA '+pTmpcFloat
                     +',TP_PGNUMERO '+pTmpcFloat
                     +',TP_PGVALOR '+pTmpcFloat
                     +',TP_CODEMP_DUP '+pTmpcFloat
                     +',TP_TIPOCOB '+pTmpcString+'(20)'
                     +',TP_FPPARCIAL '+pTmpcString+'(20)'
                     +',TP_CODVEN '+pTmpcFloat
                     +',TP_TOTPARC '+pTmpcString+'(20)'
                     );
      DM5.Query1.SQL.add(' )');
      try
         DM5.Query1.ExecSQL;
      except
         DM5.Query1.sql.savetofile('c:\sql.txt');
         fmensagem('Erro ao Criar Tabela Temporaria: '+mTabTmp,0,['0'],0);
         end;
      if Tb_Temp.Active then Tb_temp.Close;
      Tb_Temp.TableName:=mTabTmp;

      end
   else
      begin
      if Tb_Temp.Active then Tb_temp.Close;
      tb_temp.DeleteTable;
{
      DM5.Query1.Close;
      DM5.Query1.SQL.Clear;
      DM5.Query1.SQL.add(' Delete from '+mTabTmp);
      try

         DM5.Query1.ExecSQL;
      except
         end;
}
      end;
   if (Trim(MDT1.Text)<>'/  /') and (TRIM(MDT2.Text)<>'/  /') then
      begin
      if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
         begin
         fmensagem('Data Final Menor que Data Inicial. Invalido!',0,['0'],0);
         MDT1.SetFocus;
         exit;
         end;
      end;
   if (fsonumero(NRI.Text)<>0) and (fsonumero(NRF.Text)<>0) then
      begin
      if fsonumero(NRI.Text)>fsonumero(NRF.Text) then
         begin
         fmensagem('Número da NR inicial maior que final!',0,['0'],0);
         exit;
         end;
      end;
   if (fsonumero(LOTEI.Text)<>0) and (fsonumero(LOTEF.Text)<>0) then
      begin
      if fsonumero(LOTEI.Text)>fsonumero(LOTEF.Text) then
         begin
         fmensagem('Número do Lote inicial maior que final!',0,['0'],0);
         exit;
         end;
      end;

   if DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
      la_empfpcrdup:=''
   else
      la_empfpcrdup:=fla_sqlmp('FPCRDUP.FPCODEMP',Form_SelEmp.CLB_EMPRESAS);

   if DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
      la_empfpcr:=''
   else
      la_empfpcr:=fla_sqlmp('FPCR.FPCODEMP',Form_SelEmp.CLB_EMPRESAS);

//  la_empfpcr:='(FPCR.FPCODEMP=0'+IntToStr(codemp)+' or FPCR.FPCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp+100))+')';

   Qr_Lote.Close;
   Qr_Lote.Sql.Clear;
   Qr_Lote.SQl.Add('Select FPCR.FPLOTE,FPCR.FPLOTSEQ, '
                  +'       max(FPCR.FPDATA) AS DATA, '
                  +'       max(FPCR.FPCODCLI) AS CODCLI '
                  +' from FPCR, FPCRDUP where '
                  +iif(la_empfpcr='','',la_Empfpcr+' and '));
   if Trim(MDT1.Text)<>'/  /' then
      Qr_Lote.Sql.add(' FPCR.FPDATA>='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT1.Text))+chr(39)+' and ');
   if Trim(MDT2.Text)<>'/  /' then
      Qr_Lote.Sql.add(' FPCR.FPDATA<='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT2.Text))+chr(39)+' and ');
   if ValInt(NRI.Text)>0 then
      begin
      Qr_Lote.SQL.add(' FPCR.FPNR>=0'+Trim(NRI.Text)+' and ');
      end;
   if ValInt(NRF.Text)>0 then
      begin
      Qr_Lote.SQL.add(' FPCR.FPNR<=0'+Trim(NRF.Text)+' and ');
      end;

   if ValInt(LOTEI.Text)>0 then
      begin
      Qr_Lote.SQL.add(' FPCR.FPLOTE>=0'+Trim(LOTEI.Text)+' and ');
      end;
   if ValInt(LOTEF.Text)>0 then
      begin
      Qr_Lote.SQL.add(' FPCR.FPLOTE<=0'+Trim(LOTEF.Text)+' and ');
      end;



   Qr_Lote.Sql.add(' FPCRDUP.FPCODEMP=FPCR.FPCODEMP '
                  +' and FPCRDUP.FPLOTSEQ=FPCR.FPLOTSEQ '
                  +' and FPCRDUP.FPLOTE=FPCR.FPLOTE ');


   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   if trim(mcinst2)<>'' then
      Qr_Lote.SQL.Add(' and FPCR.FPCODCLI '+mcinst2);


   mcinst4:='';
   if not RG_FPAG.Checked[RG_FPAG.Items.Count-1] then
      begin
      mboolean:=false;
      for x:=0 to RG_FPAG.Items.Count-1 do
         begin
         if RG_FPAG.Checked[x] then
            begin
            mboolean:=true;
            break;
            end;
         end;
      if mboolean then
         begin
         DM1.Qr_FP.Close;
         DM1.Qr_FP.SQL.Clear;
         DM1.Qr_FP.SQL.Add('Select * from CADFP order by FPDESC');
         DM1.Qr_FP.Open;
         mcinst4:='';
         for x:=0 to RG_FPAG.Items.Count-1 do
            begin
            if RG_FPAG.Checked[x] then
               begin
               if trim(mcinst4)<>'' then
                  mcinst4:=mcinst4+',';
               if DM1.Qr_FP.Locate('FPDESC',RG_FPAG.Items[x],[]) then
                  mcinst4:=mcinst4+DM1.Qr_FP.fieldbyName('FPCODIGO').Asstring;
               end;
            end;
         end;
      end;

   if trim(mcinst4)<>'' then
      Qr_Lote.SQL.Add(' and FPCR.FPFORMA in ('+mcinst4+')');

   la_Empresas:=fEmpresas_Selecionadas('FPCRDUP','FPCRDUP.FPDUP_CODEMP',Form_SelEmp.CLB_EMPRESAS);
   if trim(la_Empresas)<>'' then
      Qr_Lote.sql.Add(' and '+la_Empresas);

   Qr_Lote.Sql.add(' Group by FPCR.FPLOTE,FPCR.FPLOTSEQ');
//   Qr_Lote.Sql.SaveToFile('C:\sql.txt');

   try
     Qr_Lote.Open;
   except
     Qr_Lote.Sql.SaveToFile('C:\sql.txt');
     end;
   if Qr_Lote.Eof then
      begin
      fmensagem('Não ha nada neste Periodo!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   //Qr_Lote.Sql.SaveToFile('C:\sql.txt');

   fcarregarTemp(1);

   Tb_Temp.Close;

   Tb_DupRec.Close;
   Tb_duprec.DatabaseName:='C:\SGE\TEMP';
   Tb_DupRec.SQL.Clear;
   Tb_DupRec.SQL.Add(' Select TP_NUMERO AS FPNUMERO,'
                    +' TP_DESD AS FPDESD,'
                    +' TP_NUMLOT AS  FPLOTE, '
                    +' TP_TIPO AS FPTIPO,'
                    +' TP_CODCLI AS FPCODCLI,'
                    +' TP_CODEMP_DUP AS  FPDUP_CODEMP, '
                    +' TP_DTBX AS  FPDTBX,'
                    +' TP_DTEMIS AS FPDTEMIS,'
                    +' TP_DATPAG AS  FPDATPAG, '
                    +' TP_VALDUP AS  FPVALDUP,'
                    +' TP_FPDEVOL AS FPDEVOL, '
                    +' TP_FPJUROS AS FPJUROS,'
                    +' TP_FPVALOR AS  FPVALOR, '
                    +' TP_FPDESC AS FPDESC, '
                    +' TP_FPPARCIAL AS  FPPARCIAL, '
                    +' TP_VALDUP AS CRVALOR,'
                    +' TP_FPVALOR  AS CRVALPAG, '
                    +' TP_CODVEN AS CRCODVEN, '
                    +' TP_DTVCTO AS CRDTVCTO,'
                    +' TP_CODBCO AS CRCODBCO, '
                    +chr(39)+insere2(' ',' ',10)+chr(39)+' TIPOCOB, '
                    +' TP_TIPOCOB AS NOMBCO, '
                    +' TP_TOTPARC AS TOTPARCIAL, '
                    +' TP_NOMCLI  AS CRAZAO '
                    +' from '+mTabTmp
                    +' order by NOMBCO,TP_DTBX ');

   try
      Tb_DupRec.Open;
   except
      Tb_DupRec.SQL.SaveToFile('c:\sql.txt');
      end;

   end;
end;

procedure TFrm_RelBaixaRec.bbImprimirClick(Sender: TObject);
var
mbanco_ant: String;
mtipcob_ant: String;
mTotDup, mTotJur,mTotDesc,mTotPag: Real;

begin
if not Tb_DupRec.Active then
   bbAplicar.Click;

if Tb_DupRec.IsEmpty then
   begin
   fmensagem('Não ha registros a ser impresso!',0,['0'],0);
   exit;
   end;
Tb_DupRec.First;
testeform := TFrm_RelBaixaRec(FindGlobalComponent('form_impres_relbaixarec'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_relbaixarec);

form_impres_relbaixarec.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_relbaixarec.mlin:=0;
form_impres_relbaixarec.mpag:=0;
mTotDup :=0;
mTotJur :=0;
mTotDesc:=0;
mTotPag :=0;
While not Tb_DupRec.Eof do
   begin
   if form_impres_relbaixarec.mlin=0 then
      begin
      form_impres_relbaixarec.mpag:=form_impres_relbaixarec.mpag+1;
      form_impres_relbaixarec.RDprint1.ImpF(01,01,FormatDatetime(fdt2, date)+centra(DM1.Tb_EmpRAZAO_CAB.Value,' ',62)+FormatDateTime(fhr, time),mnormal);
      form_impres_relbaixarec.RDprint1.ImpF(02,01,insere2('Relatorio de Baixas. '+fperiodo(0,MDT1.Text,MDT2.Text),' ',125)+'Pagina: '+FormatFloat('0000',form_impres_relbaixarec.mpag),mreduz);
      form_impres_relbaixarec.RDprint1.ImpF(03,01,insere('-','-',80),mnormal);
      form_impres_relbaixarec.RDprint1.ImpF(04,01,'S  Numero   Cliente                         Dt.Baixa Dt.Emis. Dt.Vcto. Dt.Pag.   Vlr Titulo  Vlr Juros   Vlr Desc    Vlr Pago Vend  Lote',mreduz);
      mbanco_ant :=Tb_DupRecNOMBCO.Value;
      mtipcob_ant:=Tb_DupRecTIPOCOB.Value;
      form_impres_relbaixarec.RDprint1.ImpF(05,01,Tb_DupRecNOMBCO.Value+iif(Tb_DupRecCRCODBCO.AsInteger=0,'',' Tipo de Cobranca: '+Tb_DupRecTIPOCOB.AsString),mneg);
      form_impres_relbaixarec.mlin:=5;
{
s  Numero   Cliente                         Dt.Baixa Dt.Emis. Dt.Vcto. Dt.Pag.   Vlr Titulo  Vlr Juros   Vlr Desc    Vlr Pago Vend. Lote
T *123456/a 023456-123456798012345678901234 10/09/20 10/06/20 10/06/20 10/09/20 .ZZZ.ZZ9,99 ZZZ.ZZ9,99 ZZZ.ZZ9,99 .ZZZ.ZZ9,99 12345 1234
}
      end;
   form_impres_relbaixarec.mlin:=form_impres_relbaixarec.mlin+1;
   form_impres_relbaixarec.RdPrint1.impf(form_impres_relbaixarec.mlin,01,copy(Tb_DupRecTOTPARCIAL.Value,1,1)+' '
                           +iif(Tb_DupRecFPDUP_CODEMP.AsInteger>100,'*',' ')
                           +insere(FormatFloat('000000',Tb_DupRecFPNUMERO.Value),' ',06)
                           +'/'+insere2(Tb_DupRecFPDESD.Value,' ',02)
                           +insere2(FormatFloat('000000',Tb_DupRecFPCODCLI.Value)
                                   +'-'+Tb_DupRecCRAZAO.Value,' ',31)+' '
                           +FormatDateTime(fdt3, Tb_DupRecFPDTBX.Value)+' '
                           +FormatDateTime(fdt3, Tb_DupRecFPDTEMIS.Value)+' '
                           +FormatDateTime(fdt3, Tb_DupRecCRDTVCTO.Value)+' '
                           +FormatDateTime(fdt3, Tb_DupRecFPDATPAG.Value)
                           +insere(FormatFloat(mcasas, Tb_DupRecCRVALOR.Value),' ',12)
                           +insere(FormatFloat(mcasas, Tb_DupRecFPJUROS.Value),' ',11)
                           +insere(FormatFloat(mcasas, Tb_DupRecFPDESC.Value),' ',11)
                           +insere(FormatFloat(mcasas, Tb_DupRecFPVALOR.Value),' ',12)
                           +insere(FormatFloat('000', Tb_DupRecCRCODVEN.Value),' ',05)
                           +insere(FormatFloat('00', Tb_DupRecFPLOTE.Value),' ',06),mreduz);
   mTotDup := mTotDup + Tb_DupRecCRVALOR.Value;
   mTotJur := mTotJur + Tb_DupRecFPJUROS.Value;
   mTotDesc:= mTotDesc+ Tb_DupRecFPDESC.Value;
   mTotPag := mTotPag + Tb_DupRecFPVALOR.Value;
   Tb_DupRec.Next;
   if Tb_DupRec.Eof then
      begin
      form_impres_relbaixarec.mlin:=form_impres_relbaixarec.mlin+1;
      form_impres_relbaixarec.RDprint1.ImpF(form_impres_relbaixarec.mlin,01,insere2('Totais...................>>>>',' ',79)
                           +insere(FormatFloat(mcasas, mTotDup),' ',12)
                           +insere(FormatFloat(mcasas, mTotJur),' ',11)
                           +insere(FormatFloat(mcasas, mtotdesc),' ',11)
                           +insere(FormatFloat(mcasas, mTotPag),' ',12),mreduz);
      mTotDup:=0;
      mTotJur:=0;
      mtotdesc:=0;
      mTotPag:=0;
      if form_impres_relbaixarec.RDprint1.Setup then form_impres_relbaixarec.RDprint1.Fechar;
      form_impres_relbaixarec.Free;
      form_impres_relbaixarec:=nil;
      end
   else if (mbanco_ant<>Tb_DupRecNOMBCO.Value) or ((Tb_DupRecCRCODBCO.AsInteger>0) and (mtipcob_ant<>Tb_DupRecTIPOCOB.Value)) then
      begin
      mbanco_ant :=Tb_DupRecNOMBCO.Value;
      mtipcob_ant:=Tb_DupRecTIPOCOB.Value;
      form_impres_relbaixarec.mlin:=form_impres_relbaixarec.mlin+1;
      form_impres_relbaixarec.RDprint1.ImpF(form_impres_relbaixarec.mlin,01,insere2('Totais...................>>>>',' ',79)
                           +insere(FormatFloat(mcasas, mTotDup),' ',12)
                           +insere(FormatFloat(mcasas, mTotJur),' ',11)
                           +insere(FormatFloat(mcasas, mtotdesc),' ',11)
                           +insere(FormatFloat(mcasas, mTotPag),' ',12),mreduz);
      mTotDup:=0;
      mTotJur:=0;
      mtotdesc:=0;
      mTotPag:=0;
      form_impres_relbaixarec.mlin:=0;
      form_impres_relbaixarec.RDprint1.Novapagina;
      end
   else if form_impres_relbaixarec.mlin>60 then
      begin
      form_impres_relbaixarec.RDprint1.ImpF(form_impres_relbaixarec.mlin,01,'Continua...',mreduz);
      form_impres_relbaixarec.RDprint1.Novapagina;
      form_impres_relbaixarec.mlin:=0;
      end;
   end;




{
ZZZ.ZZ9,99 ZZZ.ZZ9,99 ZZZ.ZZ9,99 .ZZZ.ZZ9,99 12345 1234
Vlr Titulo  Vlr Juros   Vlr Desc    Vlr Pago Vend. Lote

            1234567890123456789012345678901
T *123456/a 023456-123456798012345678901234 10/09/20 10/06/20 10/06/20 10/09/20 .ZZZ.ZZ9,99 ZZZ.ZZ9,99 ZZZ.ZZ9,99 .ZZZ.ZZ9,99 12345 1234
s  Numero   Cliente                         Dt.Baixa Dt.Emis. Dt.Vcto. Dt.Pag.   Vlr Titulo  Vlr Juros   Vlr Desc    Vlr Pago Vend. Lote




s  Numero   Cliente                         Dt.Baixa Dt.Emis. Dt.Vcto. Dt.Pag.   Vlr Titulo  Vlr Juros   Vlr Desc    Vlr Pago Vend. Lote
T *123456/a 023456-123456798012345678901234 10/09/20 10/06/20 10/06/20 10/09/20 .ZZZ.ZZ9,99 ZZZ.ZZ9,99 ZZZ.ZZ9,99 .ZZZ.ZZ9,99 12345 1234

      mant_ Grupo_Ant:=Tb_Min2TRRAZTRA.Value;



mbanco_ant: String;
mtipcob_ant: String;

      end;
   end;

}

end;

procedure TFrm_RelBaixaRec.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
DM1.Qr_FP.Close;
DM1.Qr_FP.SQL.Clear;
DM1.Qr_FP.SQL.Add('Select * from CADFP order by FPDESC');
DM1.Qr_FP.Open;

RG_FPAG.Items.Clear;
While not DM1.Qr_FP.Eof do
   begin
   RG_FPAG.Items.Add(DM1.Qr_FPFPDESC.AsString);
   DM1.Qr_FP.Next;
   end;
RG_FPAG.Items.Add('Todos');

MDT1.Text:=FormatDateTime(fdt2, date);
MDT2.Text:=MDT1.Text;

end;

procedure TFrm_RelBaixaRec.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if Tb_Temp.Active then
   Tb_Temp.Close;

try
   Tb_Temp.DeleteTable;
except
   end;
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

function TFrm_RelBaixaRec.fcarregarTemp(pTipo: Integer): Boolean;
var
mTotCar: Real;
mTotBco: Real;
begin
if Tb_Temp.Active then
   Tb_Temp.Close;
try
   Tb_Temp.DeleteTable;
except
   end;
Tb_Temp.CreateTable;
Tb_temp.Open;
Qr_Lote.First;
While not Qr_Lote.Eof do
   begin
   Qr_Tit.Close;
   Qr_Tit.Sql.Clear;
   Qr_Tit.SQl.add('Select * from FPCRDUP where '
                 +iif(la_empfpcrdup='','',la_empfpcrdup+' and ')
                 +' FPLOTSEQ=0'+Qr_LoteFPLOTSEQ.AsString
                 +' and FPLOTE=0'+Qr_LoteFPLOTE.AsString);
   if Trim(la_Empresas)<>'' then
      Qr_Tit.SQL.Add(' and '+la_Empresas);
   Qr_Tit.Open;
   Qr_FP.Close;
   Qr_Fp.Sql.Clear;
   Qr_Fp.SQl.Add(' Select * From FPCR where '
                +iif(la_empfpcr='','',la_empfpcr+' and ')
                +'  FPLOTSEQ=0'+Qr_LoteFPLOTSEQ.AsString
                +' and FPLOTE=0'+Qr_LoteFPLOTE.AsString);
   Qr_FP.Open;
   mTotCar:=0;
   mTotBco:=0;
   While not Qr_FP.Eof do
      begin
      if Qr_FPvinculo.AsInteger=16  then
         mTotBco:=mTotBco+(Qr_FPFPVALOR.Value)
      else
         mTotCar:=mTotCar+Qr_FPFPVALOR.Value;
      Qr_FP.Next;
      end;

   While not (Qr_Tit.Eof)do
      begin
      Tb_Temp.Append;
      Tb_TempTP_NUMLOT.Value    :=Qr_TitFPLOTE.Value;
      if Qr_TitFPPARCIAL.Value=1 then
         Tb_TempTP_TOTPARC.Value    :='Parcial'
      else
         Tb_TempTP_TOTPARC.Value    :='Total';
      Tb_TempTP_OBS.Value       :=iif(Qr_TitFPDUP_CODEMP.Value>100,'*',' ');
      Tb_TempTP_DTBX.Value      :=Qr_TitFPDTBX.Value;
      Tb_TempTP_DTEMIS.Value    :=Qr_TitFPDTEMIS.Value;
      Tb_TempTP_DUP.Value       :=Qr_TitFPTIPO.Value;
      Tb_TempTP_CODEMP_DUP.Value:=Qr_TitFPDUP_CODEMP.Value;
      Tb_TempTP_NOMCLI.Value    :=Qr_Titnomcli.value;
      Tb_TempTP_NUMERO.Value    :=Qr_TitFPNUMERO.Value;
      Tb_TempTP_DESD.Value      :=Qr_TitFPDESD.Value;
      Tb_TempTP_IFEM.Value      :='-';
      Tb_TempTP_TIPO.Value      :=Qr_TitFPTIPO.Value;
      Tb_TempTP_CODBCO.Value    :=0;
      Tb_TempTP_DTVCTO.Value    :=Qr_TitFPDTVCTO.Value;
      Tb_TempTP_DATPAG.Value    :=Qr_TitFPDATPAG.Value;
      Tb_TempTP_CODCLI.Value    :=Qr_TitFPCODCLI.Value;
      Tb_TempTP_NOMCLI.Value    :=Qr_Titnomcli.Value;
      Tb_TempTP_VALDUP.Value    :=Qr_TitFPVALDUP.Value;
      Tb_TempTP_FPVLRST.Value   :=Qr_TitFPVLRST.Value;
      Tb_TempTP_VLRIPI.Value    :=Qr_TitFPVLRIPI.Value;
      Tb_TempTP_FPDESC.Value    :=Qr_TitFPDESC.Value;
      Tb_TempTP_FPJUROS.Value   :=Qr_TitFPJUROS.Value;
      Tb_TempTP_FPDEVOL.Value   :=Qr_TitFPDEVOL.Value;
      if mTotCar>=Qr_TitFPVALOR.Value then
         begin
         Tb_TempTP_FPVALOR.Value   :=Qr_TitFPVALOR.Value;
         mTotCar:=mTotCar-Qr_TitFPVALOR.Value;
         Tb_TempTP_TIPOCOB.Value    :='Carteira';
         Tb_TempTP_PGVALOR.Value    :=Qr_TitFPVALOR.Value;
         end
      else if mTotCar>0 then
         begin
         Tb_TempTP_FPVALOR.Value   :=mTotCar;
         Tb_TempTP_TIPOCOB.Value    :='Carteira';
         Tb_TempTP_PGVALOR.Value    :=mTotCar;
         mTotCar:=0;
         end
      else if mTotBco>=Qr_TitFPVALOR.Value then
         begin
         Tb_TempTP_FPVALOR.Value   :=Qr_TitFPVALOR.Value;
         mTotBco:=mTotBco-Qr_TitFPVALOR.Value;
         Tb_TempTP_TIPOCOB.Value    :='Banco';
         Tb_TempTP_PGVALOR.Value    :=Qr_TitFPVALOR.Value;
         end
      else if mTotCar>0 then
         begin
         Tb_TempTP_FPVALOR.Value   :=mTotBco;
         Tb_TempTP_TIPOCOB.Value    :='Banco';
         Tb_TempTP_PGVALOR.Value    :=mTotBco;
         mTotBco:=0;
         end;
      Tb_TempTP_FPVALOR.Value:=Tb_TempTP_FPVALOR.Value+Qr_TitFPDEVOL.Value;         
      Tb_Temp.Post;
      Qr_Tit.Next;
      end;
   Qr_lote.Next;
   end;
result:=true;
end;

procedure TFrm_RelBaixaRec.Qr_FPCalcFields(DataSet: TDataSet);
begin
DM1.Qr_FP.Locate('FPCODIGO',Qr_FPFPFORMA.Value,[]);
Qr_FPforma.Value  :=DM1.Qr_FPFPDESC.Value;
Qr_FPvinculo.Value:=DM1.Qr_FPFPVINCULO.AsInteger;

end;

procedure TFrm_RelBaixaRec.Qr_TitCalcFields(DataSet: TDataSet);
begin
if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Qr_TitFPCODCLI.AsString) then
   Qr_Titnomcli.Value:=DM1.Query1.Fields[0].AsString;

end;

procedure TFrm_RelBaixaRec.lbx_codcliKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   begin
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);
   end;

end;

procedure TFrm_RelBaixaRec.RG_FPAGClick(Sender: TObject);
begin
RG_FPAG:=Valida_CheckList(RG_FPAG);

end;

procedure TFrm_RelBaixaRec.CB_BASETITClick(Sender: TObject);
begin
if CB_BASETIT.Checked then
   begin
   lbl_fpag.Visible:=false;
   RG_FPAG.Visible:=false;
   end
else
   begin
   lbl_fpag.Visible:=true;
   RG_FPAG.Visible :=true;
   end;
end;

procedure TFrm_RelBaixaRec.FormKeyDown(Sender: TObject; var Key: Word;
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


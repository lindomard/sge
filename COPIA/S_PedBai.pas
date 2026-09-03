unit S_PedBai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls,S_DM1,func,lerarq,
  Grids, DBGrids, DBTables, DB,S_Cli,S_Ven,S_Agde,func2;

type
  TFrm_PedBai = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    CHAVEI: TEdit;
    CHAVEF: TEdit;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    bbAtualizar: TBitBtn;
    bbSair: TBitBtn;
    bbBaixar: TBitBtn;
    GroupBox1: TGroupBox;
    Qr_ped: TQuery;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Src_Ped: TDataSource;
    Qr_pedP1CODEMP: TFloatField;
    Qr_pedP1LOTSEQ: TFloatField;
    Qr_pedP1CHAVE: TFloatField;
    Qr_pedP1CODCLI: TFloatField;
    Qr_pedP1CODVEN: TFloatField;
    Qr_pedCRAZAO: TStringField;
    Qr_pedP1TOTALL: TFloatField;
    DBGrid2: TDBGrid;
    Qr_PedFP: TQuery;
    Qr_PedFPPFPCODEMP: TFloatField;
    Qr_PedFPPFPLOTSEQ: TFloatField;
    Qr_PedFPPFPCHAVE: TFloatField;
    Qr_PedFPPFPSEQ: TFloatField;
    Qr_PedFPPFPFORMA: TFloatField;
    Qr_PedFPPFPDATA: TDateTimeField;
    Qr_PedFPPFPNUMDOC: TStringField;
    Qr_PedFPPFPBANCO: TFloatField;
    Qr_PedFPPFPSERIE: TStringField;
    Qr_PedFPPFPVALOR: TFloatField;
    Qr_PedFPPFPCC: TStringField;
    Qr_PedFPPFPCOMP: TStringField;
    Qr_PedFPPFPAGENCIA: TStringField;
    Qr_PedFPPFPEMITENTE: TStringField;
    Qr_PedFPFPDESC: TStringField;
    Qr_PedFPnombco: TStringField;
    Src_PedFP: TDataSource;
    Qr_pedP1DATAP: TDateTimeField;
    Qr_PedFPPFPDEV_CODEMP: TFloatField;
    Qr_PedFPPFPDEV_CODECF: TFloatField;
    Qr_PedFPPFPDEV_NUMERO: TFloatField;
    Qr_PedFPPFPDEV_DESD: TStringField;
    Qr_PedFPPFPDEV_DUP: TFloatField;
    Qr_PedFPPFPDEV_DTEMIS: TDateTimeField;
    procedure bbAtualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure Src_PedDataChange(Sender: TObject; Field: TField);
    procedure Qr_PedFPCalcFields(DataSet: TDataSet);
    procedure CHAVEIExit(Sender: TObject);
    procedure CHAVEFExit(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure bbBaixarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PedBai: TFrm_PedBai;

implementation

uses func_excecoes;

{$R *.dfm}

procedure TFrm_PedBai.bbAtualizarClick(Sender: TObject);
begin
if (Trim(CHAVEI.Text)='') and (Trim(CHAVEF.Text)='') then
   begin
   if fsonumero(CHAVEI.Text)>fsonumero(CHAVEF.Text) then
      begin
      MessageDlg('Chave Inicial Maior que Chave Final, invalido!',mtWarning,[mbOk],0);
      CHAVEI.SetFocus;
      exit;
      end;
   end;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      MessageDlg('Data Inicial maior que Final, Invalido!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

Qr_Ped.Close;
Qr_Ped.sql.Clear;
Qr_Ped.SQL.Add('Select P1CODEMP, '
                +' P1LOTSEQ, '
                +' P1CHAVE, '
                +' P1CODCLI, '
                +' P1CODVEN, '
                +' P1DATAP, '
                +' CRAZAO, '
                +' sum(P1TOTALL) as P1TOTALL '
                +' from CADP01,CADCLI where P1STATUS<>9 '
                +iif(DM1.Qr_tid.Locate('TINOME','CADPED',[]),'',' and P1CODEMP=0'+InttoStr(codemp))
                +' and (P1SITCPR is null or P1SITCPR=0) '
                +iif(DM1.Qr_tid.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=P1CODEMP ')
                +' and CCODCLI=P1CODCLI ');
if trim(CHAVEI.Text)<>'' then
   Qr_ped.SQL.Add(' and P1CHAVE>=0'+Trim(CHAVEI.Text));
if trim(CHAVEF.Text)<>'' then
   Qr_ped.SQL.Add(' and P1CHAVE<=0'+Trim(CHAVEF.Text));
if trim(MDT1.Text)<>'/  /' then
   Qr_ped.SQL.add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));
if trim(MDT2.Text)<>'/  /' then
   Qr_ped.SQL.add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
if trim(CODCLI.Text)<>'' then
   Qr_ped.SQL.Add(' and P1CODCLI=0'+Trim(CODCLI.Text));
if trim(CODVEN.Text)<>'' then
   Qr_ped.SQL.Add(' and P1CODVEN=0'+Trim(CODVEN.Text));
Qr_ped.sql.Add(' and P1EMIDOC>0 ');
Qr_ped.SQL.add('Group by P1CODEMP, '
              +'         P1LOTSEQ, '
              +'         P1CHAVE, '
              +'         P1DATAP, '
              +'         P1CODCLI, '
              +'         P1CODVEN, '
              +'         CRAZAO ');
Qr_ped.Open;
if not Qr_ped.Eof then
   bbBaixar.Enabled:=true
else
   bbBaixar.Enabled:=false;

end;

procedure TFrm_PedBai.FormCreate(Sender: TObject);
begin
Qr_pedP1TOTALL.DisplayFormat:=mcasas;
Qr_pedP1DATAP.DisplayFormat :=fdt2;
DM1.Qr_FP.Close;
DM1.Qr_FP.SQL.Clear;
DM1.Qr_FP.SQL.Add('Select * from CADFP order by FPDESC');
DM1.Qr_FP.Open;
fCarregaDadosCaixa('CADDAR0');

end;

procedure TFrm_PedBai.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_PedBai.Src_PedDataChange(Sender: TObject; Field: TField);
begin
Frm_PedBai.Qr_PedFP.Close;
Frm_PedBai.Qr_PedFP.Sql.Clear;
Frm_PedBai.Qr_PedFP.Sql.Add('select min(PFPCODEMP) AS PFPCODEMP, ');
Frm_PedBai.Qr_PedFP.Sql.Add('       min(PFPSEQ) as PFPSEQ, ');
Frm_PedBai.Qr_PedFP.Sql.Add('       sum(PFPVALOR) as PFPVALOR, ');
Frm_PedBai.Qr_PedFP.Sql.Add('       PFPLOTSEQ, ');
Frm_PedBai.Qr_PedFP.Sql.Add('       PFPCHAVE,  ');
Frm_PedBai.Qr_PedFP.Sql.Add('       PFPFORMA, ');
Frm_PedBai.Qr_PedFP.Sql.Add('       PFPDATA, ');
Frm_PedBai.Qr_PedFP.Sql.Add('       PFPBANCO, ');
Frm_PedBai.Qr_PedFP.Sql.Add('       PFPSERIE, ');
Frm_PedBai.Qr_PedFP.Sql.Add('       PFPNUMDOC, ');
Frm_PedBai.Qr_PedFP.Sql.Add('       PFPCC, ');
Frm_PedBai.Qr_PedFP.Sql.Add('       PFPCOMP, ');
Frm_PedBai.Qr_PedFP.Sql.Add('       PFPAGENCIA, ');
Frm_PedBai.Qr_PedFP.Sql.Add('       PFPEMITENTE, ');
Frm_PedBai.Qr_PedFP.Sql.Add('       FPDESC ');
Frm_PedBai.Qr_PedFP.Sql.Add('       ,PFPFPGTO '
                          +'       ,PFPDEV_CODEMP '
                          +'       ,PFPDEV_CODECF '
                          +'       ,PFPDEV_NUMERO '
                          +'       ,PFPDEV_DESD '
                          +'       ,PFPDEV_DUP '
                          +'       ,PFPDEV_DTEMIS ');

Frm_PedBai.Qr_PedFP.Sql.Add(' from CADPFP,CADFP  where '
                           +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]) ,'','  PFPCODEMP=0'+Qr_pedP1CODEMP.AsString+' and ')
                           +' PFPLOTSEQ=0'+Qr_pedP1LOTSEQ.AsString
                           +' and PFPCHAVE=0'+Qr_pedP1CHAVE.AsString);
Frm_PedBai.Qr_PedFP.Sql.Add(' AND FPCODIGO=PFPFORMA ');
Frm_PedBai.Qr_PedFP.Sql.Add('Group by PFPLOTSEQ, ');
Frm_PedBai.Qr_PedFP.Sql.Add('       PFPCHAVE,  ');
Frm_PedBai.Qr_PedFP.Sql.Add('       PFPDATA, ');
Frm_PedBai.Qr_PedFP.Sql.Add('       PFPFORMA, ');
Frm_PedBai.Qr_PedFP.Sql.Add('       PFPBANCO, ');
Frm_PedBai.Qr_PedFP.Sql.Add('       PFPSERIE, ');
Frm_PedBai.Qr_PedFP.Sql.Add('       PFPNUMDOC, ');
Frm_PedBai.Qr_PedFP.Sql.Add('       PFPCC, ');
Frm_PedBai.Qr_PedFP.Sql.Add('       PFPCOMP, ');
Frm_PedBai.Qr_PedFP.Sql.Add('       PFPAGENCIA, ');
Frm_PedBai.Qr_PedFP.Sql.Add('       PFPEMITENTE, ');
Frm_PedBai.Qr_PedFP.Sql.Add('       FPDESC ');
Frm_PedBai.Qr_PedFP.Sql.Add('       ,PFPFPGTO'
                          +'       ,PFPDEV_CODEMP '
                          +'       ,PFPDEV_CODECF '
                          +'       ,PFPDEV_NUMERO '
                          +'       ,PFPDEV_DESD '
                          +'       ,PFPDEV_DUP '
                          +'       ,PFPDEV_DTEMIS ');


Frm_PedBai.Qr_pedFP.Open;

end;

procedure TFrm_PedBai.Qr_PedFPCalcFields(DataSet: TDataSet);
begin
if Qr_PedFPPFPBANCO.Value>0 then
   begin
   if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',Qr_PedFPPFPBANCO.AsString) then
      Qr_PedFPnombco.Value:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_PedBai.CHAVEIExit(Sender: TObject);
begin
CHAVEI.Text:=fdeixanum(CHAVEI.Text);
if fsonumero(CHAVEI.Text)=0 then
   CHAVEI.Text:=''
else if trim(CHAVEF.Text)='' then
   CHAVEF.Text:=CHAVEI.Text;

end;

procedure TFrm_PedBai.CHAVEFExit(Sender: TObject);
begin
CHAVEF.Text:=fdeixanum(CHAVEF.Text);
if fsonumero(CHAVEF.Text)=0 then
   CHAVEF.Text:='';

end;

procedure TFrm_PedBai.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_PedBai.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_PedBai.CODCLIExit(Sender: TObject);
begin
if Trim(CODCLI.Text)='' then
   NOMCLI.Text:='Todos...'
else
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODCLI.Text) then
      NOMCLI.Text:=DM1.Query1.Fields[0].AsString
   else
      begin
      MessageDlg('Cliente  Não Cadastrado!',mtWarning,[mbOk],0);
      CODCLI.SetFocus;
      end;
   end;

end;

procedure TFrm_PedBai.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_PedBai',key);
   key:=#0;
   end;

end;

procedure TFrm_PedBai.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text :=fChamaVen(0,'frm_PedBai',Key);
   key:=#0;
   end;

end;

procedure TFrm_PedBai.CODVENExit(Sender: TObject);
begin
if Trim(CODVEN.Text)='' then
   NOMVEN.Text:='Todos...'
else
   begin
   if flqr1('VNOME','C','CADVEN','N','VCODVEN',CODVEN.Text) then
      NOMVEN.Text:=DM1.Query1.Fields[0].AsString
   else
      begin
      fMensagem('Vendedor  Não Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end;
   end;

end;

procedure TFrm_PedBai.bbBaixarClick(Sender: TObject);
var
mseq: Real;
mLote: Real;
mtotrec  : Real;
mtotdes  : Real;
mtotacre : Real;
mvalrec  : Real;
mvaldes  : Real;
mvalacre : Real;
mdup     : String;
mqtd     : Integer;
mDados_fpcrdup: tDados_fpcrdup;

begin
if fmensagem('Confirma a Baixa dos Pedidos Selecionados?',0,['1','2'],2)<>mrYes then
   exit;
bbBaixar.Enabled:=False;
Qr_ped.First;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption    :='Efetuando Baixas dos Pedidos';
Frm_Agde.gb_progres.Visible:=true;
Frm_Agde.Show;
mplid:=0;
mpqtd:=Qr_ped.RecordCount;
While not Qr_ped.Eof do
   begin
   mplid:=mplid+1;
   Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
   verteclado(0);
   if Qr_PedFP.IsEmpty then
      begin
      Qr_ped.Next;
      Continue;
      end;
   Qr_PedFP.First;
   mtotrec:=0;
   While not Qr_PedFP.eof do
      begin
      mtotrec:=mtotrec+Qr_PedFPPFPVALOR.Value;
      Qr_PedFP.Next;
      end;
   Qr_PedFP.First;
   if mtotrec>Qr_pedP1TOTALL.Value then
      begin
      mtotacre:=mtotrec-Qr_pedP1TOTALL.Value;
      mtotdes :=0;
      end
   else
      begin
      mtotdes :=Qr_pedP1TOTALL.Value-mtotrec;
      mtotacre:=0;
      end;

   DM1.Tb_Dar.close;
   DM1.Tb_Dar.SQL.Clear;
   DM1.Tb_Dar.SQL.Add('Select CADDAR.*,CADDAR.ROWID AS IDDAR from CADDAR where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADDAR',[]),'',' CRCODEMP=0'+Qr_pedP1CODEMP.AsString+' and ')
                     +' CRLOTSEQ_CP=0'+Qr_pedP1LOTSEQ.AsString
                     +' and CRNPED=0'+Qr_pedP1CHAVE.AsString);
   DM1.Tb_Dar.Open;
   if DM1.Tb_Dar.Eof then
      begin
      Qr_ped.Next;
      Continue;
      end;
   mlote:=fbuscaLoteBaixaCR(0);

   While not DM1.Tb_Dar.Eof do
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
         fTestarParCaixaCliDar(DM1.Tb_Dar,1,1,'CADDARD')
      else
         fTestarParCaixaCliDar(DM1.Tb_Dar,1,0,'CADDAR0');
      DM1.Tb_Dar.Edit;

      DM1.Tb_DarCRCODCTA.Value   :=codcai;
      DM1.Tb_DarCRNOMCTA.Value   :=pldr_nombco;
      DM1.Tb_DarCRNOMCC.Value    :=mnomccu;
      DM1.Tb_DarCRCODCC.Value    :=mcodccu;
      DM1.Tb_DarCRNATDC.Value    :=mnatdc;
      DM1.Tb_DarCRNOMDEP.Value   :=mnomdep;
      DM1.Tb_DarCRCODDEP.Value   :=mcoddep;

      if DM1.Tb_DarCRVALOR.Value-(DM1.Tb_DarCRVALPAG.Value+DM1.Tb_DarCRDESC.Value-DM1.Tb_DarCRJUROS.Value)
         >=(mtotrec+mtotdes-mtotacre) then
         begin
         DM1.Tb_DarCRVALPAG.Value   :=DM1.Tb_DarCRVALPAG.Value+mtotrec;
         DM1.Tb_DarCRJUROS.Value    :=DM1.Tb_DarCRJUROS.Value +mtotacre;
         DM1.Tb_DarCRDESC.Value     :=DM1.Tb_DarCRDESC.Value  +mtotdes;
         DM1.Tb_DarCRDTBX.Value     :=pdatasis;
         DM1.Tb_DarCRUSRBX.Value    :=codusr;
         DM1.Tb_DarCRLOTSEQ_LB.Value:=ls_lotbcr;
         DM1.Tb_DarCRLOTE.Value     :=mlote;
         DM1.Tb_DarCRDTPAG.Value    :=Qr_PedFPPFPDATA.Value;
         mvalrec  :=mtotrec;
         mvaldes  :=mtotdes;
         mvalacre :=mtotacre;
         end
//      else if (mtotrec+mtotdes-mtotacre)>DM1.Tb_DarCRVALOR.Value-(DM1.Tb_DarCRVALPAG.Value+DM1.Tb_DarCRDESC.Value-DM1.Tb_DarCRJUROS.Value) then
      else
         begin
         mvalrec :=DM1.Tb_DarCRVALOR.Value-(DM1.Tb_DarCRVALPAG.Value+DM1.Tb_DarCRDESC.Value-DM1.Tb_DarCRJUROS.Value);
         mvalacre:=0;
         mvaldes:=0;
         DM1.Tb_DarCRVALPAG.Value   :=DM1.Tb_DarCRVALPAG.Value+mvalrec;
         DM1.Tb_DarCRJUROS.Value    :=DM1.Tb_DarCRJUROS.Value +mvalacre;
         DM1.Tb_DarCRDESC.Value     :=DM1.Tb_DarCRDESC.Value  +mvaldes;
         DM1.Tb_DarCRDTBX.Value     :=pdatasis;
         DM1.Tb_DarCRUSRBX.Value    :=codusr;
         DM1.Tb_DarCRLOTSEQ_LB.Value:=ls_lotbcr;
         DM1.Tb_DarCRLOTE.Value     :=mlote;
         DM1.Tb_DarCRDTPAG.Value    :=Qr_PedFPPFPDATA.Value;
         mtotrec := mtotrec - mvalrec;
         mtotdes := mtotdes - mvaldes ;
         mtotacre:= mtotacre - mvalacre;
         end;
      if mdup='' then
         begin
         if DM1.Tb_PargerPCRDOC.Value=1 then
            mdup:=FormatFloat('000000',DM1.Tb_DarCRNPED.Value)
         else
            mdup:=FormatFloat('000000',DM1.Tb_DarCRNUMERO.Value);
         end
      else if mqtd<3 then
         begin
         if DM1.Tb_PargerPCRDOC.Value=1 then
            mdup:=copy(mdup,4,3)+'/'+copy(FormatFloat('000000',DM1.Tb_DarCRNPED.Value),4,3)
         else
            mdup:=copy(mdup,4,3)+'/'+copy(FormatFloat('000000',DM1.Tb_DarCRNUMERO.Value),4,3);
         end
      else
         begin
         if DM1.Tb_PargerPCRDOC.Value=1 then
             mdup:=mdup+'/'+copy(FormatFloat('000000',DM1.Tb_DarCRNPED.Value),4,3)
         else
             mdup:=mdup+'/'+copy(FormatFloat('000000',DM1.Tb_DarCRNUMERO.Value),4,3);
         end;
      if Arredonda((DM1.Tb_DarCRVALPAG.Value+DM1.Tb_DarCRDESC.Value-DM1.Tb_DarCRJUROS.Value),2)>=Arredonda(DM1.Tb_DarCRVALOR.Value,2) then
         begin
         DM1.Tb_DarCRSTATUS.Value:=2;
         DM1.Tb_DarCRCODLDR.Value:=0;
         if DM1.Tb_DarCRCODLDR.Value>0 then
            begin
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
               DM1.Query1.Sql.add(' where CODEMP=0'+IntTostr(codemp)
                                 +' and LOTSEQ=0'+DM1.Tb_DarCRLOTSEQ_FC.AsString
                                 +' and CODLDR=0'+DM1.Tb_DarCRCODLDR.AsString);
               end;
            try
               DM1.Query1.ExecSQL;
               fdm1StartCommit;
            except
               fMensagem('Erro 456 ao Excluir o CADLDR!',0,['0'],0);
               end;
            end;
         end
      else
         begin
         DM1.Tb_DarCRSTATUS.Value:=1;
         if DM1.Tb_DarCRCODLDR.Value>0 then
            begin
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
               DM1.Query1.Sql.add(' where CODEMP=0'+IntTostr(codemp)
                                 +' and LOTSEQ=0'+DM1.Tb_DarCRLOTSEQ_FC.AsString
                                 +' and CODLDR=0'+DM1.Tb_DarCRCODLDR.AsString);
               end;
            try
               DM1.Query1.ExecSQL;
               fdm1StartCommit;
            except
               fMensagem('Erro 484 ao alterar o CADLDR!',0,['0'],0);
               end;
            end;
         end;
      DM1.Tb_Dar.Post;






      mDados_fpcrdup.pcodemp    :=codemp;
      mDados_fpcrdup.pLote      :=trunc(mlote);
      mDados_fpcrdup.pnr        :=DM1.Tb_DarCRNPED.asfloat;
      mDados_fpcrdup.pdup_codemp:=DM1.Tb_DarCRCODEMP.Value;
      mDados_fpcrdup.pnumero    :=DM1.Tb_DarCRNUMERO.Value;
      mDados_fpcrdup.ptipo      :=DM1.Tb_DarCRDUP.AsInteger;
      mDados_fpcrdup.pcodecf    :=DM1.Tb_DarCRCODECF.AsInteger;
      mDados_fpcrdup.pcodcli    :=DM1.Tb_DarCRCODCLI.AsFloat;
      mDados_fpcrdup.pCodVen    :=DM1.Tb_DarCRCODVEN.Value;
      mDados_fpcrdup.pcaixa     :=CodCai;
      mDados_fpcrdup.pcodusr    :=codusr;
      mDados_fpcrdup.pvalor     :=mValRec;
      mDados_fpcrdup.pjuros     :=mvalacre;
      mDados_fpcrdup.pdesc      :=mValDes;
      mDados_fpcrdup.pVlrSt     :=DM1.Tb_DarCRICMSR.AsFloat;
      mDados_fpcrdup.pVlrIPI    :=DM1.Tb_DarCRTOTIPI.AsFloat;
      mDados_fpcrdup.pValDup    :=DM1.Tb_DarCRVALOR.AsFloat;
      mDados_fpcrdup.pDevol     :=DM1.Tb_DarCRDEVOL.AsFloat;
      mDados_fpcrdup.pParcial   :=0;
      mDados_fpcrdup.pdtemis    :=DM1.Tb_DarCRDTEMIS.AsDateTime;
      mDados_fpcrdup.pdtBx      :=DM1.Tb_DarCRDTBX.AsDateTime;
      mDados_fpcrdup.pDtPag     :=DM1.Tb_DarCRDTPAG.AsDateTime;
      mDados_fpcrdup.pDtVcto    :=DM1.Tb_DarCRDTVCTO.AsDateTime;
      mDados_fpcrdup.pdesd      :=DM1.Tb_DarCRDESD.AsString;
      mDados_fpcrdup.pchave_id  :=DM1.Tb_DarCRCHAVE_ID.AsInteger;
      mDados_fpcrdup.pchave_id_ano  :=DM1.Tb_DarCRCHAVE_ID_ANO.AsInteger;
      fCriarFPCRDUP(mDados_fpcrdup);


      DM1.Tb_Dar.Next;
      end;
   flcadcli(1,0,Qr_pedP1CODCLI.AsString);
   Qr_PedFP.First;
   While not Qr_PedFP.Eof do
      begin
      DM1.Qr_FP.Locate('FPCODIGO',Qr_PedFPPFPFORMA.Value,[]);
      if DM1.Qr_FPFPTIPO.Value=1 then
         begin
         fTestarParCaixaCliDar(DM1.Tb_Dar,1,1,'CADDART')
         end;
      if length(mdup)>12 then
         mdup:=copy(mdup,1,12);
      mcodldr:=fCriarLDR(codemp
                  ,Qr_PedFPPFPVALOR.Value // Valor previsto
                  ,Qr_PedFPPFPVALOR.Value // Valor Real
                  ,DM1.Tb_CliCCODCLI.Value        // Codigo Cliente
                  ,DM1.Qr_FPFPVINCULO.Value
                  ,Qr_PedFPPFPDATA.Value // data prevista
                  ,Qr_PedFPPFPDATA.Value // data real
                  ,Qr_pedP1DATAP.Value // data Referencia
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

      mseq:=fCriarFPCR(codemp,Qr_PedFPPFPFORMA.Value, // forma
                       fsoNumero(Qr_PedFPPFPNUMDOC.Value), // numero
                       Qr_PedFPPFPBANCO.Value, // Banco
                       Qr_PedFPPFPVALOR.Value, // Valor
                       0, // Tipo
                       codcai,
                       mcodldr,
                       mlote,
                       DM1.Qr_FPFPVINCULO.Value,
                       DM1.Qr_FPFPTIPO.Value,
                       DM1.Tb_DarCRNR.Value,
                       DM1.Tb_DarCRCODCLI.Value,
                       0, // dev codemp
                       0, // dev codecf
                       0, // dev numero
                       0, // dev dup
                       Qr_PedFPPFPDATA.Value, // data
                       Qr_PedFPPFPDATA.Value, // data do deposito
                       pdatanula, // data emissao devolucao
                       Qr_PedFPPFPCC.Value, // conta corrente
                       Qr_PedFPPFPSERIE.Value,
                       ' ' // dev desd
                       ,0
                       ,0
                       ); // serie


      if DM1.Qr_FPFPNUM.Value=1 then
         begin
         fCriarChqCli(codemp,fsonumero(Qr_PedFPPFPNUMDOC.Value), // numero
                     Qr_PedFPPFPBANCO.Value, // Banco
                     Qr_pedP1CODCLI.Value, // codcli
                     iif(DM1.Tb_CliCCNPJ.Value=0,DM1.Tb_CliCCPF.Value,DM1.Tb_CliCCNPJ.Value), // cnpj/cpf
                     Qr_PedFPPFPVALOR.Value, // Valor
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



                     Qr_PedFPPFPSERIE.Value, // serie
                     Qr_PedFPPFPCOMP.Value, // compensacao
                     Qr_PedFPPFPEMITENTE.Value, // emitente
                     Qr_PedFPPFPAGENCIA.Value, // aGENCIA
                     Qr_PedFPPFPCC.Value, // cc
                     iif(DM1.Tb_CliCCNPJ.Value=0,DM1.Tb_CliCIE.Value,DM1.Tb_CliCRG.Value),  // rg
                     ' ',

                     mcodccu,
                     mcoddep,
                     mdesc_mov,
                     ' ', // obs linha 01
                     ' ', // obs linha 02


                      mnombco,
                     pdatanula, // data de Nascimento
//                     DM1.Tb_CliCDTNAS.Value, // data de Nascimento
                     Qr_pedP1DATAP.Value, // data de Emissao
                     Qr_PedFPPFPDATA.Value, // data de Deposito
                     pdatanula,                // data de alteração
                     pdatanula, // data da baixa
                     pdatanula ); // data do ultimo deposito



         end;
      Qr_PedFP.Next;
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Update CADP01 set P1SITCPR=1 where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntToStr(codemp)+' and ')
                     +' P1LOTSEQ=0'+Qr_pedP1LOTSEQ.AsString
                     +' and P1CHAVE=0'+Qr_pedP1CHAVE.AsString);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fMensagem('Erro 686 ao atualizar o Cadastro de Pedidos!',0,['0'],0);
      end;
   Qr_ped.Next;
   end;

frm_Agde.gb_progres.Visible:=false;
Frm_Agde.Label1.Caption:='Concluido!';
verteclado(0);
end;

procedure TFrm_PedBai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

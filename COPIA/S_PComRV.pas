unit S_PComRV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, Grids, func, db, dbtables, S_DM1,
  DBGrids, S_SelEmp, CheckLst, ComCtrls;

type
  TFrm_PComRV = class(TForm)
    Panel1: TPanel;
    bbAtualizar: TBitBtn;
    Panel2: TPanel;
    SAIR: TBitBtn;
    SELECIONAR: TBitBtn;
    DESMARCAR: TBitBtn;
    Query_Dup: TQuery;
    Query_DupCRNUMERO: TFloatField;
    Query_DupCRDESD: TStringField;
    Query_DupCRDUP: TFloatField;
    Query_DupCRDTEMIS: TDateTimeField;
    Query_DupCRDTVCTO: TDateTimeField;
    Query_DupCRVALOR: TFloatField;
    Query_DupCRDTBX: TDateTimeField;
    Query_DupCRCOMVEN: TFloatField;
    Query_DupCRAZAO: TStringField;
    Query_DupCRCODEMP: TFloatField;
    Query_DupCRICMSR: TFloatField;
    Query_DupCRVALFRE: TFloatField;
    Query_DupCRSEMCOM: TFloatField;
    Query_DupCRVLRACRE: TFloatField;
    Query_DupCRCOMTEL: TFloatField;
    Query_DupCRCOMSUP: TFloatField;
    Query_DupCRCOMV02: TFloatField;
    Query_DupCRCOMV03: TFloatField;
    Query_DupCRCODVEN: TFloatField;
    Query_DupCRCODV02: TFloatField;
    Query_DupCRCODV03: TFloatField;
    Query_DupCRCODECF: TFloatField;
    Query_DupCRCODCLI: TFloatField;
    Query_DupCRCODBCO: TFloatField;
    Query_DupCRCOMASSE: TFloatField;
    Query_DupCRCODASSE: TFloatField;
    Query_DupCRDESC: TFloatField;
    Src_Dup: TDataSource;
    Query_DupOK: TStringField;
    Query_DupCRDTPAG: TDateTimeField;
    Query_DupCRJURD: TFloatField;
    Query_DupCRMULTA: TFloatField;
    Query_DupCRJUROS: TFloatField;
    U_Dup: TUpdateSQL;
    Query_DupCRVALPAG: TFloatField;
    Query_DupCRLOTE: TFloatField;
    Query_DupCRLOTSEQ_LB: TFloatField;
    Query_DupCRTARBAN: TFloatField;
    Query_DupCRDEVOL: TFloatField;
    CB_COMISBCOAB: TCheckBox;
    CB_TITABERTO: TCheckBox;
    PG_SELECT: TPageControl;
    Ts_Selecionados: TTabSheet;
    DBGrid1: TDBGrid;
    Ts_Filtros: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    Query_DupCRNPED: TFloatField;
    Label2: TLabel;
    mdt1: TMaskEdit;
    Label3: TLabel;
    mdt2: TMaskEdit;
    lbl_codcli: TLabel;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    Label4: TLabel;
    chave_ini: TEdit;
    Label5: TLabel;
    chave_fin: TEdit;
    Label6: TLabel;
    edt_valor: TEdit;
    Query_DupCRVALOR_ACRES: TFloatField;
    procedure SAIRClick(Sender: TObject);
    procedure NOMEKeyPress(Sender: TObject; var Key: Char);
    procedure bbAtualizarClick(Sender: TObject);
    procedure SELECIONARClick(Sender: TObject);
    procedure DESMARCARClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chave_iniExit(Sender: TObject);
    procedure chave_finExit(Sender: TObject);
    procedure edt_valorExit(Sender: TObject);
  private
    { Private declarations }
    function fPcomRvLer(pTipo: String): Boolean;

  public
    mDataPesq: string;

    Form_SelEmp: TFrm_SelEmp;
    { Public declarations }
  end;

var
  Frm_PComRV: TFrm_PComRV;


implementation

uses S_ComRV, lerarq;

{$R *.dfm}

procedure TFrm_PComRV.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_PComRV.NOMEKeyPress(Sender: TObject; var Key: Char);
begin
if key in [',','.'] then key:=DecimalSeparator;
end;

procedure TFrm_PComRV.bbAtualizarClick(Sender: TObject);
begin
fPcomRvLer(' ');
end;

procedure TFrm_PComRV.SELECIONARClick(Sender: TObject);
begin
fPcomRvLer('X');
end;

procedure TFrm_PComRV.DESMARCARClick(Sender: TObject);
begin
fPcomRvLer(' ');
end;

procedure TFrm_PComRV.FormActivate(Sender: TObject);
begin
bbAtualizar.Click;

end;

function TFrm_PComRv.fPcomRvLer(pTipo: String): Boolean;
var
x: Integer;
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);

query_dup.Close;
query_dup.SQL.Clear;
for x:=1 to 2 do
   begin
   query_dup.SQL.add('Select '+chr(39)+pTipo+chr(39)+' OK, CRCODEMP,CRNUMERO,CRDESD,');
   if x>1 then
      query_dup.Sql.add(' CRDUP ')
   else
      query_dup.Sql.add('20+CRDUP as CRDUP ');
   query_dup.SQL.add(',CRDTEMIS,CRCODVEN,CRCODV02,CRCODV03,'
              +'       CRDTVCTO,CRVALOR,CRDTBX,'
              +'          CASE WHEN NVL(CRCOMVEN,0)=0 then '
              +'           (SELECT SUM(ROUND(P2VCOMIS,2)) FROM CADP02 WHERE P2CHAVE=CRNPED AND P2ORDEM=CRORDEM '
              +'           AND P2LOTSEQ=CRLOTSEQ_CP AND P2CODEMP=CRCODEMP) '
              +'           * CASE WHEN NVL(CRPFPGTO,0)=0 THEN 1 ELSE (CRPFPGTO/100) END '
              +'           ELSE CRCOMVEN END AS CRCOMVEN, '
              +'CRCOMV02,CRCOMV03,CRCODBCO, '
              +'       CRICMSR,CRVALFRE,CRSEMCOM, CRCODEMP-CRCODEMP AS CRVLRACRE, '
              +'       CRDESC,CRDTPAG,CRJURD,CRMULTA,CRVALOR_ACRES+CRJUROS as CRJUROS,CRVALPAG, '
              +'       CRVALOR_ACRES, CRCOMTEL, CRCOMSUP,CRCODECF,CRCODCLI,CRCOMASSE,CRCODASSE,CRAZAO '
              +'       ,CRLOTE,CRLOTSEQ_LB,CRTARBAN,CRDEVOL,CRNPED '
//              +'       from CADDAR,CADCLI,CADVEN where CRCODORI=1 and CRSTATUS < 8 and CRSTATUS >1 and '
              +'       from CADDAR,CADCLI,CADVEN,CADP01 where  CRSTATUS < 8 and '
              +' CRSTATUS >'+iif(x>1,iif(CB_TITABERTO.Checked=true,'-1','1'),'-1')+' and '
              +iif(la_Empresas='','',la_Empresas+' and ')
              +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'','CCODEMP=CRCODEMP and ')
              +'       CCODCLI=CRCODCLI '
              +iif(DM1.Qr_Tid.Locate('TINOME','CADVEN',[]),'',' and VCODEMP=CRCODEMP ')
              +'       and VCODVEN=CRCODVEN '
              +'       and CRDUP<>3 '
              +'       and P1CHAVE(+)=CRNPED '
              +'       and P1CODEMP(+)=CRCODEMP '
              +'       and P1LOTSEQ(+)=CRLOTSEQ_CP '

              );
   mcinst2:=fItenstCheckListBox(0,RG_TIPOPED);
   if trim(mcinst2)<>'' then
     query_dup.SQL.Add(' and CRCODORI '+mcinst2);


   if trim(mdt1.text)<>'/  /' then
      begin
      query_dup.SQL.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt, StrToDate(mdt1.Text))+chr(39));
      end;

   if trim(mdt2.text)<>'/  /' then
      begin
      query_dup.SQL.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt, StrToDate(mdt2.Text))+chr(39));
      end;

   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   if trim(mcinst2)<>'' then
      Query_dup.sql.Add(' and CRCODCLI '+mcinst2);
   if fSonumero(chave_ini.Text)<>0 then
      Query_dup.SQL.add(' and CRNUMERO>='+fdeixanum2(chave_ini.Text));
   if fSonumero(chave_fin.Text)<>0 then
      Query_dup.SQL.add(' and CRNUMERO<='+fdeixanum2(chave_fin.Text));
   if ValFloat(edt_valor.Text)<>0 then
      Query_dup.SQL.add(' and CRVALOR='+mudavp(edt_valor.Text));
   mcinst2:=fItenstCheckListBox(0,RG_TIPOPED);
   if trim(mcinst2)<>'' then
     query_dup.SQL.Add(' and CRCODORI '+mcinst2);

   if x>1 then
      begin
      if pComROrigem=0 then
         begin
         query_dup.SQL.Add(' and ( (CRCODVEN=0'+Frm_ComRV.CODVEN.Text+')  ');
         query_dup.SQL.Add(' or    (CRCODV02=0'+Frm_ComRV.CODVEN.Text+')  ');
         query_dup.SQL.Add(' or    (CRCODV03=0'+Frm_ComRV.CODVEN.Text+')  ');
         query_dup.SQL.Add(' ) ');

{
         query_dup.SQL.Add(' and (((CRCODVEN=0'+Frm_ComRV.CODVEN.Text+') and (CRLOTCV=0 or CRLOTCV is null))');
         query_dup.SQL.Add(' or  ((CRCODV02=0'+Frm_ComRV.CODVEN.Text+') and (CRLOTCV02=0 or CRLOTCV02 is null))');
         query_dup.SQL.Add(' or  ((CRCODV03=0'+Frm_ComRV.CODVEN.Text+') and (CRLOTCV03=0 or CRLOTCV03 is null)))');
}
         query_dup.SQL.Add(' AND NOT EXISTS (SELECT CL2CHAVE FROM CADCL02,CADCL01  WHERE CL1CHAVE=CL2CHAVE AND CL1CODEMP=CL2CODEMP '
                     +' AND NVL(CL1LOTSEQ,0)=CL2LOTSEQ  AND CL2CODEMPD=CRCODEMP  AND CL2LOTSEQ_DC=CRLOTSEQ_CP '
                     +'  AND CL2CHAVEP=CRNPED AND CL1CODIGO=CRCODVEN   AND ( CL2DESD=CRDESD )');
         query_dup.SQL.Add(' AND CL1CODIGO='+Frm_ComRV.CODVEN.Text+' )');


         if Frm_ComRV.CB_BLOQUEARPAGOVENDAS.Checked=true then
            begin
            query_dup.SQL.Add(' and (((CRCODVEN=0'+Frm_ComRV.CODVEN.Text+') and (P1LOTCV=0 or P1LOTCV is null))');
            query_dup.SQL.Add(' or  ((CRCODV02=0'+Frm_ComRV.CODVEN.Text+') and (P1LOTCV02=0 or P1LOTCV02 is null))');
            query_dup.SQL.Add(' or  ((CRCODV03=0'+Frm_ComRV.CODVEN.Text+') and (P1LOTCV03=0 or P1LOTCV03 is null)))');
            end;


         end
      else if pComROrigem=1 then
         query_dup.SQL.Add(' and VCODSUP=0'+Frm_ComRv.CODVEN.Text+' and (CRLOTCS=0 or CRLOTCS is null)')
      else if pComROrigem=2 then
         query_dup.SQL.Add(' and CRCODTEL=0'+Frm_ComRV.CODVEN.Text+' and (CRLOTCT=0 or CRLOTCT is null)')
      else if pComROrigem=3 then
         query_dup.SQL.Add(' and CRCODASSE=0'+Frm_ComRV.CODVEN.Text+' and (CRLOTCASSE=0 or CRLOTCASSE is null)');
      end
   else
      begin
      if pComROrigem=0 then
         begin
         query_dup.SQL.Add(' and (((CRCODVEN=0'+Frm_ComRV.CODVEN.Text+') and (CRLOTE_EC=0 or CRLOTE_EC is null))');
         query_dup.SQL.Add(' or  ((CRCODV02=0'+Frm_ComRV.CODVEN.Text+') and (CRLOTE_EC=0 or CRLOTE_EC is null))');
         query_dup.SQL.Add(' or  ((CRCODV03=0'+Frm_ComRV.CODVEN.Text+') and (CRLOTE_EC=0 or CRLOTE_EC is null)))');
         end
      else if pComROrigem=1 then
         query_dup.SQL.Add(' and VCODSUP=0'+Frm_ComRv.CODVEN.Text+' and (CRLOTE_EC=0 or CRLOTE_EC is null)')
      else if pComROrigem=2 then
         query_dup.SQL.Add(' and CRCODTEL=0'+Frm_ComRV.CODVEN.Text+' and (CRLOTE_EC=0 or CRLOTE_EC is null)')
      else if pComROrigem=3 then
         query_dup.SQL.Add(' and CRCODASSE=0'+Frm_ComRV.CODVEN.Text+' and (CRLOTE_EC=0 or CRLOTE_EC is null)');
      query_dup.SQL.Add(' and CRDUP IN (1,2)');
      end;
   if x<2 then
      query_dup.SQL.add(' union ');
   end;

query_dup.SQL.Add(' order by CRDUP,'+mDataPesq);

// query_dup.sql.SaveToFile('C:\SQL.TXT');

try
   query_dup.Open;
except
   query_dup.sql.SaveToFile('C:\SQL.TXT');
   end;
result:=true;

end;
procedure TFrm_PComRV.DBGrid1DblClick(Sender: TObject);
begin
if not query_dupCRNUMERO.IsNull then
   begin
   query_dup.Edit;
   if trim(query_dupOK.AsString)='' then
      query_dupOK.Value:='X'
   else
      query_dupOK.Value:='';
   query_dup.Post;
   end;

end;

procedure TFrm_PComRV.FormCreate(Sender: TObject);
var
  x: Integer;
begin
//    mDataPesq:='CRDTBX';

CB_TITABERTO.Visible :=FALSE;
CB_COMISBCOAB.Visible:=false;
query_dupCRDTEMIS.DisplayFormat :=fdt2;
query_dupCRDTVCTO.DisplayFormat :=fdt2;
query_dupCRVALOR.DisplayFormat  :=mcasas;
query_dupCRDTBX.DisplayFormat   :=fdt2;
query_dupCRCOMVEN.DisplayFormat :=mcasas;
query_dupCRICMSR.DisplayFormat  :=mcasas;
query_dupCRVALFRE.DisplayFormat :=mcasas;
query_dupCRSEMCOM.DisplayFormat :=mcasas;
query_dupCRVLRACRE.DisplayFormat:=mcasas;
query_dupCRCOMTEL.DisplayFormat :=mcasas;
query_dupCRCOMSUP.DisplayFormat :=mcasas;
query_dupCRCOMV02.DisplayFormat :=mcasas;
query_dupCRCOMV03.DisplayFormat :=mcasas;
query_dupCRCOMASSE.DisplayFormat:=mcasas;
query_dupCRDESC.DisplayFormat   :=mcasas;
query_dupCRDTPAG.DisplayFormat  :=fdt2;
query_dupCRJURD.DisplayFormat   :=mcasas;
query_dupCRMULTA.DisplayFormat  :=mcasas;
query_dupCRJUROS.DisplayFormat  :=mcasas;

RG_TIPOPED.Items.Clear;
RG_TIPOPED.Items.Add('Sem Pedido de Origem');
for x:=1 to high(tab_tped) do
   begin
   RG_TIPOPED.Items.Add(tab_tped[x]);
   end;
RG_TIPOPED.Checked[1]:=true;


Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

end;

procedure TFrm_PComRV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_PComRV.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_PComRV.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);
end;

procedure TFrm_PComRV.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODCLI.Text) then
   BEGIN
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.TEXT))
                                    +' - '+DM1.Query1.fields[0].AsString);
      codcli.text := '';
      codcli.SetFocus;
   END else
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      codcli.text := '';
      CODCLI.SetFocus;
      end;
   end;


end;

procedure TFrm_PComRV.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_RCliC',key);
   if trim(CODCLI.Text)<>'' then
      CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_PComRV.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_PComRV.chave_iniExit(Sender: TObject);
begin
chave_ini.Text:=fDeixanum2(chave_ini.Text);

end;

procedure TFrm_PComRV.chave_finExit(Sender: TObject);
begin
chave_fin.Text:=fDeixanum2(chave_fin.Text);

end;

procedure TFrm_PComRV.edt_valorExit(Sender: TObject);
begin
edt_valor.Text:=FormatFloat(mcasas, ValFloat(edt_valor.Text));

end;

end.

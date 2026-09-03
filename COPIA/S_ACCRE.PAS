unit S_AcCRE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, Buttons, Db, DBTables, S_DM1, func, ComCtrls,
  lerarq, Mask,func2;

type
  TFrm_AcCRE = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    LOTE: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    STG1: TStringGrid;
    Qr_CRDup: TQuery;
    bbPesq: TBitBtn;
    Qr_FP: TQuery;
    HeaderControl1: THeaderControl;
    bbExcluir: TBitBtn;
    bbCancelar: TBitBtn;
    bbSair: TBitBtn;
    panel_filtros: TPanel;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    Label4: TLabel;
    CODFP: TEdit;
    NOMFP: TEdit;
    Qr_CRDupFPDUP_CODEMP: TFloatField;
    Qr_CRDupFPNUMERO: TFloatField;
    Qr_CRDupFPDESD: TStringField;
    Qr_CRDupFPDTEMIS: TDateTimeField;
    Qr_CRDupFPLOTE: TFloatField;
    Qr_CRDupFPCODEMP: TFloatField;
    Qr_CRDupFPTIPO: TFloatField;
    Qr_CRDupFPVALOR: TFloatField;
    Qr_CRDupFPDESC: TFloatField;
    Qr_CRDupFPJUROS: TFloatField;
    Qr_CRDupFPCODECF: TFloatField;
    Qr_FPFPCODEMP: TFloatField;
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
    Qr_FPFPLOTSEQ: TFloatField;
    Qr_FPFPLOTSEQ_FC: TFloatField;
    Qr_CRDupFPDEVOL: TFloatField;
    Qr_FPFPDEV_CODEMP: TFloatField;
    Qr_FPFPDEV_CODECF: TFloatField;
    Qr_FPFPDEV_NUMERO: TFloatField;
    Qr_FPFPDEV_DESD: TStringField;
    Qr_FPFPDEV_DUP: TFloatField;
    Qr_FPFPDEV_DTEMIS: TDateTimeField;
    Qr_CRDupFPCODCLI: TFloatField;
    pnl_Motivo: TPanel;
    GroupBox1: TGroupBox;
    m_motivo: TMemo;
    Panel4: TPanel;
    btn_confirmar: TButton;
    btn_cancelar: TButton;
    Qr_FPFPTARBAN: TFloatField;
    Qr_FPFPCODLDR_TARBAN: TFloatField;
    procedure LOTEKeyPress(Sender: TObject; var Key: Char);
    procedure bbPesqClick(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CODFPExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_confirmarClick(Sender: TObject);
  private
    { Private declarations }
    function fCancelarBaixa(pLote: Real): Boolean;
  public
    { Public declarations }
  end;
function fGeraAnt(pOper: Integer;pLote: Real): Boolean;
function fCancelaNC(pSoTesta:Boolean;pCodCli,pValor: Real;pDtEmis:TDateTime): Boolean;

var
  Frm_AcCRE: TFrm_AcCRE;

implementation

uses func_excecoes, S_DM4;

{$R *.DFM}

procedure TFrm_AcCRE.LOTEKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_AcCRE.bbPesqClick(Sender: TObject);
var
mlin: Integer;
begin

Qr_CRDup.Close;
Qr_CRDup.SQL.Clear;
Qr_CRDup.SQL.Add('Select FPDUP_CODEMP,FPNUMERO,FPDESD '
                +',FPDTEMIS,FPLOTE,FPCODEMP '
                +',FPTIPO,FPVALOR,FPDESC,FPJUROS '
                +',FPCODECF,FPDEVOL,FPCODCLI '
                +' from FPCRDUP '
                +' where ');
if DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
   Qr_CRDup.SQL.add('  FPLOTE=0'+Trim(lote.Text))
else
   Qr_CRDup.SQL.Add(' FPCODEMP='+IntToStr(codemp)
             +' and FPLOTE=0'+Trim(Lote.Text));
Qr_CRDup.open;
if Qr_CRDup.IsEmpty then
   begin
{
   Qr_CRDup.Close;
   Qr_CRDup.SQL.Clear;
   Qr_CRDup.SQL.Add('Select CRCODEMP AS FPDUP_CODEMP, CRNUMERO AS FPNUMERO, CRDESD AS FPDESD '
                   +',CRDTEMIS AS FPDTEMIS,CRLOTE AS FPLOTE,CRCODEMP AS FPCODEMP '
                   +',CRDUP AS FPTIPO,CRVALPAG AS FPVALOR, CRDESC AS FPDESC,CRJUROS AS FPJUROS '
                   +',CRCODECF AS FPCODECF, CRDEVOL AS FPDEVOL '
                   +' from CADDAR '
                   +' where ');
   if DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
      Qr_CRDup.SQL.add('  CRLOTE=0'+Trim(lote.Text))
   else
      Qr_CRDup.SQL.Add(' CRCODEMP='+IntToStr(codemp)
                +' and CRLOTE=0'+Trim(Lote.Text));
   Qr_CRDup.SQL.add(' and CRSTATUS>0  and CRSTATUS<>8 ' );

   try
      Qr_CRDup.open;
   except
      Qr_CRDup.Sql.Savetofile('c:\sql.txt');
      end;
   end;
if Qr_CRDup.Eof then
   begin
 }  fmensagem('Não foi Encontrado nada Neste Lote!',0,['0'],0);
   LOTE.SetFocus;
   exit;
   end;
Qr_FP.Close;
Qr_FP.SQL.Clear;
Qr_Fp.SQL.Add('Select FPCODEMP,FPDATA,FPFORMA,FPNUMERO, '
             +'       FPBANCO,FPSERIE,FPVALOR,FPLOTE, '
             +'       FPCC,FPTIPO,FPCAIXA,FPCODLDR, '
             +'       FPLOTSEQ,FPLOTSEQ_FC '
             +'      ,FPDEV_CODEMP,FPDEV_CODECF, '
             +'       FPDEV_NUMERO,FPDEV_DESD,FPDEV_DUP, '
             +'       FPDEV_DTEMIS,FPCODLDR_TARBAN,FPTARBAN '
             +' From FPCR where ');
if DM1.Qr_TID.locate('TINOME','CADDAR',[]) then
   Qr_FP.SQL.Add(' FPLOTE=0'+Trim(lote.Text))
else
   Qr_FP.SQL.Add(' FPCODEMP='+IntToStr(codemp)
             +' and FPLOTE=0'+Trim(lote.Text));
Qr_Fp.Open;
if Qr_fp.IsEmpty then
   begin
   Qr_FP.Close;
   Qr_FP.SQL.Clear;
   Qr_Fp.SQL.Add('Select CRCODEMP AS FPCODEMP,CRDTPAG AS FPDATA,'
                +' CRCODFPGTO AS FPFORMA, CRNUMERO-CRNUMERO AS FPNUMERO, '
             +'       CRCODBCO-CRCODBCO AS FPBANCO,CRDESD AS FPSERIE,CRVALPAG AS FPVALOR,'
             +'  CRLOTE AS  FPLOTE, '
             +'  CRDESD AS FPCC,CRDUP AS FPTIPO,CRCX_CODCAI AS FPCAIXA,CRCODLDR AS FPCODLDR, '
             +'      CRLOTSEQ_FC AS FPLOTSEQ,CRLOTSEQ_FC AS FPLOTSEQ_FC '
             +'  ,0 AS  FPDEV_CODEMP'
             +'  ,0 AS FPDEV_CODECF, '
             +'  0 AS FPDEV_NUMERO,'
             +'  '+chr(39)+' '+chr(39)+'FPDEV_DESD,'
             +'  0 as FPDEV_DUP, '
             +' CRDTEMIS as FPDEV_DTEMIS,0 AS FPCODLDR_TARBAN,0 AS FPTARBAN '
             +' From CADDAR where ');
   if DM1.Qr_TID.locate('TINOME','CADDAR',[]) then
      Qr_FP.SQL.Add(' CRLOTE=0'+Trim(lote.Text))
   else
      Qr_FP.SQL.Add(' CRCODEMP='+IntToStr(codemp)
             +' and CRLOTE=0'+Trim(lote.Text));
   Qr_FP.SQL.add(' and CRSTATUS>0  and CRSTATUS <>8 ' );
   try
      Qr_Fp.Open;
   except
      Qr_Fp.Sql.SavetoFile('c:\sql.txt');
      end;
   end;
mlin:=0;
While not Qr_CRDup.Eof do
   begin
   mlin:=mlin+1;
   STG1.RowCount:=mlin;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select CRAZAO from CADDAR,CADCLI where CRSTATUS<>9 and ');
   if DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
      begin
      if Qr_CRDupFPDUP_CODEMP.Value>0 then
         mcinst:=' CRCODEMP=0'+Qr_CRDupFPDUP_CODEMP.AsString+' and ';
         DM1.Query1.SQL.Add(mcinst+' CRCODECF=0'+Qr_CRDupFPCODECF.AsString
                     +' and CRNUMERO=0'+Qr_CRDupFPNUMERO.AsString
                     +' and CRDESD='+chr(39)+Trim(Qr_CRDupFPDESD.AsString)+CHR(39)
                     +' and CRDUP=0'+Qr_CRDupFPTIPO.AsString
                     +' and CRDTEMIS='+chr(39)+FormatDateTime(fdt, Qr_CRDupFPDTEMIS.Value)+chr(39)
                     +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=CRCODEMP ')
                     +' and CCODCLI=CRCODCLI');
      end
   else
      begin
      if Qr_CRDupFPDUP_CODEMP.Value>0 then
         mcinst:=' CRCODEMP=0'+Qr_CRDupFPDUP_CODEMP.AsString
      else
         mcinst:=' CRCODEMP=0'+IntToStr(codemp);
      DM1.Query1.SQL.Add(mcinst
                     +' and CRCODECF=0'+Qr_CRDupFPCODECF.AsString
                     +' and CRNUMERO=0'+Qr_CRDupFPNUMERO.AsString
                     +' and CRDESD='+chr(39)+Trim(Qr_CRDupFPDESD.AsString)+CHR(39)
                     +' and CRDUP=0'+Qr_CRDupFPTIPO.AsString
                     +' and CRDTEMIS='+chr(39)+FormatDateTime(fdt, Qr_CRDupFPDTEMIS.Value)+chr(39)
                     +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=CRCODEMP ')
                     +' and CCODCLI=CRCODCLI');
      end;
   DM1.Query1.Open;
   STG1.Cells[00,mlin-1]:=FormatFloat('0000000',Qr_CRDupFPNUMERO.Value)+'-'+Qr_CRDupFPDESD.Value;
   STG1.Cells[01,mlin-1]:=DM1.Query1.fields[0].AsString;
   STG1.Cells[02,mlin-1]:='';
   STG1.Cells[03,mlin-1]:='';
   Qr_CRDup.Next;
   end;
mlin:=0;
While not Qr_FP.eof do
   begin
   mlin:=mlin+1;
   if mlin > STG1.RowCount then
      begin
      STG1.RowCount:=mlin;
      STG1.Cells[00,mlin-1]:='';
      STG1.Cells[01,mlin-1]:='';
      end;
   DM1.Qr_FP.Locate('FPCODIGO',Qr_FPFPFORMA.Value,[]);
   STG1.Cells[02,mlin-1]:=DM1.Qr_FPFPDESC.Value;
   STG1.Cells[03,mlin-1]:=insere(FormatFloat(mcasas,Qr_FPFPVALOR.Value),' ',12);
   Qr_fp.Next;
   end;

end;

procedure TFrm_AcCRE.bbCancelarClick(Sender: TObject);
begin
Qr_CRDup.Close;
Qr_FP.Close;
STG1.RowCount:=1;
STG1.Cells[0,0]:='';
STG1.Cells[1,0]:='';
STG1.Cells[2,0]:='';
STG1.Cells[3,0]:='';
m_motivo.Clear;
end;

procedure TFrm_AcCRE.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_AcCRE.bbExcluirClick(Sender: TObject);
begin
if (Qr_CRDup.IsEmpty) and not (panel_filtros.Visible) then
   begin
   fmensagem('Favor Selecionar um Lote Válido!',0,['0'],0);
   exit;
   end;
if (trim(MDT1.Text)<>'/  /') and  (trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fmensagem('Data final maior que inicial. Invalido!',0,['0'],0);
      exit;
      end;
   end;


Qr_CRDup.First;
if not Qr_CRDup.IsEmpty then
   begin
   DM1.Query4.Close;
   DM1.Query4.SQL.Clear;
   DM1.Query4.SQL.add('Select FPCODEMP,FPNUMERO,FPBANCO,FPSERIE,FPCC,FPLOTE,FPVALOR,FPCODLDR,FPCODLDR_TARBAN,FPTARBAN from  FPCR where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',
                     ' FPCODEMP='+IntToStr(codemp)+' and ')
                     +' FPLOTSEQ=0'+IntTosTr(ls_lotbcr)
                     +' and FPLOTE=0'+Qr_CRDupFPLOTE.AsString);
   DM1.Query4.Open;


   DM1.Query3.Close;
   DM1.Query3.SQL.clear;
   if not DM1.Qr_TID.Locate('TINOME','CADCHQ',[]) then
      DM1.Query3.Params.CreateParam(ftString,'CHCODEMP',ptInput);
   DM1.Query3.Params.CreateParam(ftString,'CHLOTE',ptInput);
   DM1.Query3.SQL.add('Select CHSTATUS,CHVALOR,CHNUMERO,CHBANCO,CHLOTEBX from CADCHQ where '+
                     iif(DM1.Qr_TID.Locate('TINOME','CADCHQ',[]),'',' CHCODEMP=:CHCODEMP and ')
                     +' (CHLOTE  =:CHLOTE)');
   While not DM1.Query4.Eof  do
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select DATAREAL, VALORR From CADLDR where '
                       +iif(DM1.Qr_TID.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntToStr(codemp)+' and ')
                       +' LOTSEQ=0'+IntTosTr(ls_lotbcr)
                       +' and CODLDR=0'+DM1.Query4.fieldbyName('FPCODLDR').AsString);
      DM1.Query1.open;

      if (DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime>pDataNula) then
         begin
         if (DM1.Query1.FieldByName('DATAREAL').AsDateTime<=DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime) and
         (DM1.Query1.FieldByName('VALORR').AsFloat>0)  then
            begin
            fmensagem('Registro Não pode ser Excluido. Caixa Bloqueado para Movimento até: '
               +FormatDateTime(fdt2, DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime)
               +'. Data do Movimento do Registro: '
               +FormatDateTime(fdt2, DM1.Query1.FieldByName('DATAREAL').AsDateTime)
               ,0,['0'],0);
            exit;
            end;
         end;



      if (DM1.Query4.fieldbyName('FPNUMERO').Asfloat>0) or
         (DM1.Query4.FieldByName('FPBANCO').asfloat>0) then
         begin
         if not DM1.Qr_TID.Locate('TINOME','CADCHQ',[]) then
               DM1.Query3.ParamByName('CHCODEMP').AsFloat:=dm1.Query4.fieldbyName('FPCODEMP').AsFloat;
            DM1.Query3.ParamByName('CHLOTE').AsFloat  :=dm1.Query4.fieldbyName('FPLOTE').AsFloat;
            try
               DM1.Query3.Open;
            except
               exit;
              end;
         if DM1.Query3.FieldByName('CHSTATUS').AsFloat=2 then
            begin
            fmensagem('Existe Cheques que Ja Foram Baixadas. Número: '
                      +DM1.Query3.fieldbyName('CHNUMERO').asstring
                      +'/'+DM1.Query3.fieldbyName('CHBANCO').asstring
                      +' Valor: '+FormatFloat(mcasas, DM1.Query3.FieldbyName('CHVALOR').AsFloat)
                      +'. Lote: '+DM1.Query3.FieldbyName('CHLOTEBX').AsString
                      +' Favor Excluir Primeiro as Baixas dos Cheques!',0,['0'],0);
            exit;
            end;
         end;
      DM1.query4.Next;
      end;
   end;
// TESTAR TITULOS
if (DM1.Tb_EmpCGC.AsFloat=09600237000188) or
   (DM1.Tb_EmpCGC.AsFloat=06928932000185) or
   (DM1.Tb_EmpCGC.AsFloat=05513871000122) or
   (DM1.Tb_EmpCGC.AsFloat=01908004000135) then
    begin
    m_motivo.Lines.Clear;
    m_motivo.Lines.Add('NAO CITADO A PEDIDO DA FABIANA EM 10/08/2011 AS 14:00');
    btn_confirmarClick(self);

    end
else
   begin
   pnl_Motivo.Visible:=True;
   m_motivo.SetFocus;
   end;

//


end;

procedure TFrm_AcCRE.FormCreate(Sender: TObject);
begin
   DM1.Qr_FP.Close;
   DM1.Qr_FP.SQL.Clear;
   DM1.Qr_FP.SQL.Add('Select * from CADFP order by FPCODIGO');
   DM1.Qr_FP.Open;
flcadldr(0,0,0,'0');
fCarregaDadosCaixa('CADDAR0');
//if codusr=1111 then
//   panel_filtros.Visible:=true
//else
   panel_filtros.Visible:=false;
if DM4.Tb_ParGer02PG2DTBLOQCX.asDateTime>pDataNula then
   Frm_AcCRE.Caption:=Frm_AcCRE.Caption+'. Manipulação no Caixa Bloqueada até: '+FormatDateTime(fdt2,DM4.Tb_ParGer02PG2DTBLOQCX.asDateTime)+'.';

end;

procedure TFrm_AcCRE.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_AcCRE.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_AcCRE.CODFPExit(Sender: TObject);
begin
CODFP.Text:=fdeixanum2(CODFP.Text);
if trim(CODFP.Text)='' then
   NOMFP.Text:='Todos...'
else
   begin
   DM1.Query1.close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQl.add('Select FPDESC from CADFP where '
                     +' FPCODIGO=0'+Trim(CODFP.Text));
   DM1.Query1.Open;
   if DM1.Query1.Eof then
      begin
      fmensagem('forma de pagamento não encontrada!',0,['0'],0);
      CODFP.SetFocus;
      exit;
      end
   else
      NOMFP.Text:=DM1.Query1.fields[0].asString;
   end;
end;

function fGeraAnt(pOper: Integer;pLote: Real): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(FPCODNOV) from OLD_FPCR');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;

minstru:='Insert into OLD_CADCHQ (';
v:='';
for x:=0 to DM1.Tb_Chq.FieldCount-1 do
   begin
   if DM1.Tb_Chq.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_Chq.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',CHCODNOV';
minstru:=minstru+',CHLOTENOV';
minstru:=minstru+',CHCODUSR_ALTEXC';
minstru:=minstru+',CHDATHOR_ALTEXC';
minstru:=minstru+',CHTIPEVE';

minstru:=minstru+') Select ';
v:='';
for x:=0 to DM1.Tb_Chq.FieldCount-1 do
   begin
   if DM1.Tb_Chq.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_Chq.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as CHCODNOV ';
minstru:=minstru+v+FloattoStr(pLote)+' as CHLOTNOV';
minstru:=minstru+v+InttoStr(codusr)+' as CHCODUSR_ALTEXC';
minstru:=minstru+v+' SYSDATE as CHDATHOR_ALTEXC';
minstru:=minstru+v+InttoStr(poper)+' as CHTIPEVE ';
minstru:=minstru+' from CADCHQ where CHCODEMP=0'+IntTostr(codemp)
                +' and CHLOTE=0'+FloatToStr(pLote);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.sql.SaveToFile('C:\SQLCHQ.TXT');
   verteclado(0);
   fMensagem('Erro ao Fazer o Backup da Alteracao 798. Contactar Suporte',0,['1'],0);
   end;

minstru:='Insert into OLD_CADLDR (';
v:='';
for x:=0 to DM1.Tb_Ldr.FieldCount-1 do
   begin
   if DM1.Tb_Ldr.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_Ldr.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',CODNOV';
minstru:=minstru+',CODUSR_ALTEXC';
minstru:=minstru+',DATHOR_ALTEXC';
minstru:=minstru+',TIPEVE';
minstru:=minstru+',LOTEBX';

minstru:=minstru+') Select ';



v:='';
for x:=0 to DM1.Tb_Ldr.FieldCount-1 do
   begin
   if DM1.Tb_Ldr.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_Ldr.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as CODNOV ';
minstru:=minstru+v+InttoStr(codusr)+' as CODUSR_ALTEXC';
minstru:=minstru+v+' SYSDATE as DATHOR_ALTEXC';
minstru:=minstru+v+InttoStr(pOper)+' as TIPEVE ';
minstru:=minstru+v+FormatFloat('0000000000',PLOTE)+' as LOTEBX ';

minstru:=minstru+' from CADLDR where CODEMP=0'+IntToStr(codemp);

mcinst3:='';
mcinst2:='';
While not DM1.Query4.Eof do
   begin
   mcinst3:=mcinst3+mcinst2+' CODLDR ='+DM1.Query4.fieldbyName('FPCODLDR').AsString;
   mcinst2:=' or  ';
   DM1.Query4.Next;
   end;
if trim(mcinst3)<>'' then
   begin
   mcinst3:='and ('+mcinst3+')';
   minstru:=minstru+mcinst3;
   end;

DM1.Query4.First;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1120,'Frm_PECF','CADLDR');
   end;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('SELECT COLUMN_NAME FROM USER_TAB_COLUMNS '
                  +' WHERE TABLE_NAME='+chr(39)+'FPCR'+chr(39));
DM1.Query2.Open;

minstru:='Insert into OLD_FPCR (';
v:='';
While not DM1.Query2.Eof do
   begin
   minstru:=minstru+v+DM1.Query2.fieldbyName('COLUMN_NAME').AsString;
   v:=',';
   DM1.Query2.Next;
   end;

minstru:=minstru+',FPCODNOV';
minstru:=minstru+',FPLOTENOV';
minstru:=minstru+',FPCODUSR_ALTEXC';
minstru:=minstru+',FPDATHOR_ALTEXC';
minstru:=minstru+',FPTIPEVE';
minstru:=minstru+',FPMOTIVO';

minstru:=minstru+') Select ';
v:='';
DM1.Query2.First;
While not DM1.Query2.Eof do
   begin
   minstru:=minstru+v+DM1.Query2.fieldbyName('COLUMN_NAME').AsString;
   v:=',';
   DM1.Query2.Next;
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as FPCODNOV ';
minstru:=minstru+v+FloattoStr(pLote)+' as FPLOTNOV';
minstru:=minstru+v+InttoStr(codusr)+' as FPCODUSR_ALTEXC';
minstru:=minstru+v+' SYSDATE as FPDATHOR_ALTEXC';
minstru:=minstru+v+InttoStr(poper)+' as FPTIPEVE ';
minstru:=minstru+v+chr(39)+Frm_AcCRE.m_motivo.Text+chr(39)+' as FPMOTIVO ';
minstru:=minstru+' from FPCR where FPCODEMP=0'+IntTostr(codemp)
                +' and FPLOTE=0'+FloatToStr(pLote);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.sql.SaveToFile('C:\SQLCHQ.TXT');
   verteclado(0);
   fMensagem('Erro ao Fazer o Backup da Alteracao 933. Contactar Suporte',0,['1'],0);
   end;
{

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(FPCODNOV) from OLD_FPCRDUP');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
}
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('SELECT COLUMN_NAME FROM USER_TAB_COLUMNS '
                  +' WHERE TABLE_NAME='+chr(39)+'FPCRDUP'+chr(39));
DM1.Query2.Open;

minstru:='Insert into OLD_FPCRDUP (';
v:='';
While not DM1.Query2.Eof do
   begin
   minstru:=minstru+v+DM1.Query2.fieldbyName('COLUMN_NAME').AsString;
   v:=',';
   DM1.Query2.Next;
   end;

minstru:=minstru+',FPCODNOV';
minstru:=minstru+',FPLOTENOV';
minstru:=minstru+',FPCODUSR_ALTEXC';
minstru:=minstru+',FPDATHOR_ALTEXC';
minstru:=minstru+',FPTIPEVE';
minstru:=minstru+',FPMOTIVO';

minstru:=minstru+') Select ';
v:='';
DM1.Query2.First;
While not DM1.Query2.Eof do
   begin
   minstru:=minstru+v+DM1.Query2.fieldbyName('COLUMN_NAME').AsString;
   v:=',';
   DM1.Query2.Next;
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as FPCODNOV ';
minstru:=minstru+v+FloattoStr(pLote)+' as FPLOTNOV';
minstru:=minstru+v+InttoStr(codusr)+' as FPCODUSR_ALTEXC';
minstru:=minstru+v+' SYSDATE as FPDATHOR_ALTEXC';
minstru:=minstru+v+InttoStr(poper)+' as FPTIPEVE ';
minstru:=minstru+v+chr(39)+Frm_AcCRE.m_motivo.Text+chr(39)+' as FPMOTIVO ';
minstru:=minstru+' from FPCRDUP where FPCODEMP=0'+IntTostr(codemp)
                +' and FPLOTE=0'+FloatToStr(pLote);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.sql.SaveToFile('C:\SQLCHQ.TXT');
   verteclado(0);
   fMensagem('Erro ao Fazer o Backup da Alteracao 988. Contactar Suporte',0,['1'],0);
   end;
result:=True;

end;


function TFrm_AcCRE.fCancelarBaixa(pLote: Real): Boolean;
begin
DM1.Query5.Close;
DM1.query5.Sql.Clear;
DM1.Query5.SQL.add('SELECT FPLOTE,count(*) FROM FPCR ');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
   begin
   DM1.Query5.SQL.Add( mcinst+' FPCODEMP=0'+IntToStr(codemp));
   mcinst:=' and ';
   end;
if trim(LOTE.Text)<>'' then
   begin
   DM1.Query5.SQL.add(mcinst+ '  FPLOTE=0'+FloatToStr(pLote));
   mcinst:=' and ';
   end;

if trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query5.SQL.add(mcinst+ '  FPDATA>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;

if trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Query5.SQL.add(mcinst+ '  FPDATA<='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;


if trim(CODFP.Text)<>'' then
   begin
   DM1.Query5.SQL.add(mcinst+ '  FPFORMA=0'+Trim(CODFP.Text));
   mcinst:=' and ';
   end;
DM1.Query5.SQL.add(' group by FPLOTE');

try
   DM1.Query5.Open;
except
   DM1.Query5.Sql.savetofile('c:\sql.txt');
   end;
DM1.Query5.First;
While not DM1.Query5.Eof do
   begin
   Qr_CRDup.Close;
   Qr_CRDup.SQL.Clear;
   Qr_CRDup.SQL.Add('Select FPDUP_CODEMP,FPNUMERO,FPDESD '
             +',FPDTEMIS,FPLOTE,FPCODEMP '
             +',FPTIPO,FPVALOR,FPDEVOL,FPDESC,FPJUROS '
             +',FPCODECF,FPDEVOL,FPCODCLI '
             +' from FPCRDUP '
             +' where ');
   if DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
      Qr_CRDup.SQL.add('  FPLOTE=0'+DM1.Query5.fieldbyName('FPLOTE').AsString)
   else
      Qr_CRDup.SQL.Add(' FPCODEMP=0'+IntToStr(codemp)
                +' and FPLOTE=0'+DM1.Query5.fieldbyName('FPLOTE').AsString);
   Qr_CRDup.open;

   if Qr_CRDup.IsEmpty then
      begin
      Qr_CRDup.Close;
      Qr_CRDup.SQL.Clear;
      Qr_CRDup.SQL.Add('Select CRCODEMP AS FPDUP_CODEMP, CRNUMERO AS FPNUMERO, CRDESD AS FPDESD '
                      +',CRDTEMIS AS FPDTEMIS,CRLOTE AS FPLOTE,CRCODEMP AS FPCODEMP '
                      +',CRDUP AS FPTIPO,CRVALPAG AS FPVALOR, CRDESC AS FPDESC,CRJUROS AS FPJUROS '
                      +',CRCODECF AS FPCODECF,CRDEVOL AS FPDEVOL, CRCODCLI AS FPCODCLI '
                      +' from CADDAR '
                      +' where ');
      if DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
         Qr_CRDup.SQL.add('  CRLOTE=0'+Trim(lote.Text))
      else
         Qr_CRDup.SQL.Add(' CRCODEMP='+IntToStr(codemp)
                   +' and CRLOTE=0'+Trim(Lote.Text));
      Qr_CRDup.SQL.add(' and CRSTATUS>0  and CRSTATUS<>8 ' );
      try
         Qr_CRDup.open;
      except
         Qr_CrDup.Sql.savetofile('c:\sql.txt');
         end;
      end;

   if Qr_CRDup.Eof then
      begin
      fmensagem('No Decorrer da transação Este Lote foi Excluido por outra'+#13
                +'pessoa!',0,['0'],0);
      DM1.Query5.Next;
      Continue;
      end;

   DM1.Query4.Close;
   DM1.Query4.SQL.Clear;
   DM1.Query4.SQL.add('Select FPCODEMP,FPNUMERO,FPBANCO,FPSERIE,FPCC,FPLOTE,FPVALOR,FPCODLDR from  FPCR where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',
                     ' FPCODEMP='+IntToStr(codemp)+' and ')
//                     +' FPLOTSEQ=0'+IntTosTr(ls_lotbcr)
                     +' FPLOTSEQ=0'
                     +' and FPLOTE=0'+DM1.Query5.fieldbyName('FPLOTE').AsString);
   DM1.Query4.Open;

   if DM1.Query4.IsEmpty then
      begin
      DM1.Query4.Close;
      DM1.Query4.SQL.Clear;
      DM1.Query4.SQL.add('Select CRCODEMP AS FPCODEMP,CRNUMERO AS FPNUMERO,'
                         +' CRCODBCO AS FPBANCO,'
                        +' CRDESD AS FPSERIE, CRDESD AS FPCC, CRLOTE AS FPLOTE,'
                        +' CRVALPAG AS  FPVALOR,CRCODLDR AS FPCODLDR from  CADDAR where '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',
                       ' CRCODEMP='+IntToStr(codemp)+' and ')
                     +' CRLOTE=0'+DM1.Query5.fieldbyName('FPLOTE').AsString
                     +' and CRNUMERO>0 ');
      try
         DM1.Query4.Open;
      except
         DM1.Query4.sql.SaveTofile('c:\sql.txt');
         end;
//      DM1.Query4.SQL.add(' and CRSTATUS>0  and CRSTATUS<>8 ' );
      end;
   fgeraAnt(9,DM1.Query4.fieldbyName('FPLOTE').Asfloat);
   if not DM1.Query4.IsEmpty then
      begin
      DM1.Query3.Close;
      DM1.Query3.SQL.clear;
      if not DM1.Qr_TID.Locate('TINOME','CADCHQ',[]) then
         DM1.Query3.Params.CreateParam(ftString,'CHCODEMP',ptInput);
      DM1.Query3.Params.CreateParam(ftString,'CHLOTE',ptInput);
      DM1.Query3.SQL.add('Delete from CADCHQ where '+
                        iif(DM1.Qr_TID.Locate('TINOME','CADCHQ',[]),'',' CHCODEMP=:CHCODEMP and ')
                        +' (CHLOTE  =:CHLOTE)');


      While not DM1.Query4.Eof do
         begin
         if (DM1.Query4.fieldbyName('FPNUMERO').Asfloat>0) or
            (DM1.Query4.FieldByName('FPBANCO').asfloat>0) then
            begin
            if not DM1.Qr_TID.Locate('TINOME','CADCHQ',[]) then
               DM1.Query3.ParamByName('CHCODEMP').AsFloat:=dm1.Query4.fieldbyName('FPCODEMP').AsFloat;
            DM1.Query3.ParamByName('CHLOTE').AsFloat  :=dm1.Query4.fieldbyName('FPLOTE').AsFloat;
            try
               DM1.Query3.ExecSQL;
               fdm1StartCommit;
            except
              end;
            end;
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add('Delete From CADLDR where '
                          +iif(DM1.Qr_TID.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntToStr(codemp)+' and ')
                          +' LOTSEQ=0'+IntTosTr(ls_lotbcr)
                          +' and CODLDR=0'+DM1.Query4.fieldbyName('FPCODLDR').AsString);
         try
            DM1.Query1.ExecSQL;
            fdm1startCommit;
         except
            end;
         DM1.Query4.Next;
         end;
      end;


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete From FPCR where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',
                     ' FPCODEMP='+IntToStr(codemp)+'  and ')
                     +' FPLOTSEQ=0'+IntTosTr(ls_lotbcr)
                     +' and FPLOTE=0'+DM1.Query5.fieldbyName('FPLOTE').AsString);
   try
      DM1.Query1.ExecSQL;
      fdm1startCommit;
   except
      end;
   Qr_CRDup.First;
   While not Qr_CRDup.Eof do
      begin
{
      if Qr_CRDupFPTIPO.Asinteger=5 then
         begin
         Qr_CRDup.Next;
         Continue;
         end;
}
      if not flcaddar(8,Qr_CRDupFPDUP_CODEMP.AsInteger,0,Qr_CRDupFPCODECF.AsInteger,0,Qr_CRDupFPNUMERO.AsString,Qr_CRDupFPDESD.Value,Qr_CRDupFPTIPO.AsString,Qr_CRDupFPDTEMIS.Value,'')  then
         fmensagem('Ha erros duplicata nao encontrada: '+Qr_CRDupFPNUMERO.AsString,0,['0'],0)
      else
         begin
         if Qr_CRDupFPTIPO.Asinteger<>5 then
            begin
            if DM4.Tb_Par01PCXAUTO.Value<>1 then
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
                  begin
                  if DM1.Tb_DarCRNPED.AsFloat>0 then
                     fTestarParCaixaCliDar(DM1.Tb_Dar,1,1,'CADDARD')
                  else
                     fTestarParCaixaCliDar(DM1.Tb_Dar,1,1,'CADDARN');
                  end
               else
                  fTestarParCaixaCliDar(DM1.Tb_Dar,1,0,'CADDAR0');
               end;
            if DM1.Tb_DarCRCODLDR.AsFloat<>0 then
               begin
               DM1.Query1.Close;
               DM1.Query1.SQL.Clear;
               DM1.Query1.SQL.Add('Delete From CADLDR where '
                              +iif(DM1.Qr_TID.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntToStr(codemp)+' and ')
                              +' LOTSEQ=0'+IntTosTr(ls_lotbcr)
                              +' and CODLDR=0'+DM1.Tb_DarCRCODLDR.AsString);
               try
                  DM1.Query1.ExecSQL;
                  fdm1startCommit;
               except
                  end;
               end;
            end;

         DM1.Tb_Dar.Edit;

         DM1.Tb_DarCRVALPAG.Value:=DM1.Tb_DarCRVALPAG.Value-(Qr_CRDupFPVALOR.Value);
         if DM1.Tb_DarCRVALPAG.AsFloat<=0 then
            DM1.Tb_DarCRUSRBX.AsFloat:=0;
         DM1.Tb_DarCRDESC.Value  :=DM1.Tb_DarCRDESC.Value  -Qr_CRDupFPDESC.Value;
         DM1.Tb_DarCRJUROS.Value :=DM1.Tb_DarCRJUROS.Value -Qr_CRDupFPJUROS.Value;
         DM1.Tb_DarCRDEVOL.Value :=DM1.Tb_DarCRDEVOL.Value -Qr_CRDupFPDEVOL.Value;
         DM1.Tb_DarCRTARBAN.Value:=0;
         if Qr_CRDupFPTIPO.Asinteger<>5 then
            begin
            DM1.Tb_DarCRDESCMV.Value:=mdesc_mov;
            DM1.Tb_DarCRCODCC.Value :=mcodccu;
            DM1.Tb_DarCRCODDEP.Value:=mcoddep;
            DM1.Tb_DarCRNOMCTA.Value:=pldr_nombco;
            DM1.Tb_DarCRCODCTA.Value:=codcai;
            DM1.Tb_DarCRNOMDEP.Value:=mnomdep;
            DM1.Tb_DarCRNOMCC.Value:=mnomccu;
            DM1.Tb_DarCRNATDC.Value :=mnatdc;
            end;

         if DM1.Tb_DarCRVALPAG.Value<0 then
            DM1.Tb_DarCRVALPAG.Value:=0;
         if DM1.Tb_DarCRDESC.Value<0 then
            DM1.Tb_DarCRDESC.Value:=0;
         if DM1.Tb_DarCRJUROS.Value<0 then
            DM1.Tb_DarCRJUROS.Value:=0;
         if DM1.Tb_DarCRVALPAG.Value>0 then
            DM1.Tb_DarCRSTATUS.Value:=1
         else
            begin
            DM1.Tb_DarCRSTATUS.Value:=0;
            if Qr_CRDupFPTIPO.Asinteger<>5 then
              DM1.Tb_DarCRCODLDR.Value:=0;
            DM1.Tb_DarCRLOTSEQ_FC.Value:=0;
            DM1.Tb_DarCRDTPAG.Value :=pdatanula;
            DM1.Tb_DarCRDTBX.Value  :=pdatanula;
            end;
         if Qr_CRDupFPTIPO.Asinteger<>5 then
            begin
            mdesc_mov:=trim(mdesc_mov)+' No.'+DM1.Tb_PargerPCRDOCSIG.Value+FormatFloat('000000',iif(DM1.Tb_PargerPCRDOC.Value=1,DM1.Tb_DarCRNPED.Value,DM1.Tb_DarCRNUMERO.Value))+'-'+DM1.Tb_DarCRDESD.Value;
            mdesc_mov:=Trim(mdesc_mov)+' '+DM1.Tb_Darrazaocli.Value;
            if length(mdesc_mov)>50 then
              mdesc_mov:=copy(mdesc_mov,1,50);




            mcodldr:=fCriarLDR(DM1.Tb_DarCRCODEMP.AsInteger
               ,0 // Valor Real
               ,DM1.Tb_DarCRVALOR.Value-DM1.Tb_DarCRVALPAG.Value // Valor previsto
               ,DM1.Tb_DarCRCODCLI.Value        // Codigo Cliente
               ,0
               ,DM1.Tb_DarCRDTVCTO.Value // data prevista
               ,pdatanula // data real
               ,DM1.Tb_DarCRDTEMIS.Value // data Referencia
               ,pdatanula // data de alteracao
               ,mcodccu
               ,mcoddep
               ,mnatdc
               ,mdesc_mov
               ,DM1.Tb_PargerPCRDOCSIG.Value+'-'+FormatFloat('000000',iif(DM1.Tb_PargerPCRDOC.Value=1,DM1.Tb_DarCRNPED.Value,DM1.Tb_DarCRNUMERO.Value))+'-'+DM1.Tb_DarCRDESD.Value
               ,' '
               ,'CL'
               ,pldr_nombco // data real ,pldr_nombco
               ,mnomdep
               ,mnomccu
               ,DM1.Tb_Darrazaocli.Value
               ,DM1.Tb_DarCROBS.Value
               ,3
               ,codcai // ,codcai
               ,lotmov
               ,0 // status
               ,03); // origem

            DM1.Tb_DarCRCODLDR.Value:=mcodldr;
            end;
         DM1.Tb_Dar.Post;
         end;
      Qr_CRDup.Next;
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete From FPCRDUP where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',
                     ' FPCODEMP='+IntToStr(codemp)+' and ')
                     +' FPLOTSEQ=0'+IntTosTr(ls_lotbcr)
                     +' and FPLOTE=0'+DM1.Query5.fieldbyName('FPLOTE').AsString);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;
   DM1.Query5.Next;
   end;

end;



function fCancelaNC(pSoTesta:Boolean;pCodCli,pValor: Real;pDtEmis:TDateTime): Boolean;
var
mOk: Boolean;
begin

DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.SQL.Add('Select CRCODEMP,CRNUMERO,CRDESD,CRCODCLI,CRDTEMIS,CRDTVCTO, '
                  +' CRDUP, CRSTATUS,CRVALOR,CRVALPAG,CRCODLDR from CADDAR '
                  +' where '+fla_EmpBaixaAlta(0,'CADDAR','',codemp,'CRCODEMP',' and ')
                  +' CRCODCLI=0'+FloatToStr(pCodCli)
                  +' and CRVALOR=:VALOR '
                  +' and CRDTEMIS=:DTEMIS '
                  +' and CRDUP='+chr(39)+'5'+chr(39));

DM1.Query3.ParamByName('VALOR').AsFloat    :=pValor;
DM1.Query3.ParamByName('DTEMIS').AsDateTime:=pDtEmis;

try
   DM1.Query3.Open;
except
   result:=false;
   exit;
   end;
mOk:=true;
While not DM1.Query3.Eof DO
   begin
   if DM1.Query3.FieldByName('CRVALPAG').AsFloat>0 then
      begin
      mOk:=false;
      break;
      end;
   DM1.Query3.Next;
   end;
if pSoTesta then
   begin
   result:=mOk;
   exit;
   end;
if DM1.Query3.IsEmpty then
   begin
   result:=true;
   exit;
   end;
DM1.Query3.First;
While not DM1.Query3.Eof DO
   begin
   if DM1.Query3.FieldByName('CRCODLDR').AsFloat>0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Delete from CADLDR where CODEMP=0'+DM1.Query3.fieldbyName('CRCODEMP').asString
                        +' and CODLDR=0'+DM1.Query3.fieldbyName('CRCODLDR').AsString);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         end;
      end;
   DM1.Query3.Next;
   end;



DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' Delete from CADDAR '
                  +' where '+fla_EmpBaixaAlta(0,'CADDAR','',codemp,'CRCODEMP',' and ')
                  +' CRCODCLI=0'+FloatToStr(pCodCli)
                  +' and CRVALOR=:VALOR '
                  +' and CRDTEMIS=:DTEMIS '
                  +' and CRDUP='+chr(39)+'5'+chr(39));
DM1.Query1.ParamByName('VALOR').AsFloat    :=pValor;
DM1.Query1.ParamByName('DTEMIS').AsDateTime:=pDtEmis;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   result:=false;
   exit;
   end;
result:=true;
end;

procedure TFrm_AcCRE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_AcCRE.btn_cancelarClick(Sender: TObject);
begin
m_motivo.Clear;
pnl_Motivo.Visible:=False;
bbCancelarClick(Self);
end;

procedure TFrm_AcCRE.btn_confirmarClick(Sender: TObject);
var
mmotivo: string;

begin
if Length(m_motivo.Text)<20 then
  begin
  fmensagem('Para excluir e necessário um motivo de pelo menos 20 letras!',0,['0'],0);
  Exit;
  end;


DM1.Query5.Close;
DM1.query5.Sql.Clear;
DM1.Query5.SQL.add('SELECT FPLOTE,count(*) FROM FPCR ');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
   begin
   DM1.Query5.SQL.Add( mcinst+' FPCODEMP=0'+IntToStr(codemp));
   mcinst:=' and ';
   end;
if trim(LOTE.Text)<>'' then
   begin
   DM1.Query5.SQL.add(mcinst+ '  FPLOTE=0'+fdeixanum(LOTE.Text));
   mcinst:=' and ';
   end;

if trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query5.SQL.add(mcinst+ '  FPDATA>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;

if trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Query5.SQL.add(mcinst+ '  FPDATA<='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;


if trim(CODFP.Text)<>'' then
   begin
   DM1.Query5.SQL.add(mcinst+ '  FPFORMA=0'+Trim(CODFP.Text));
   mcinst:=' and ';
   end;
DM1.Query5.SQL.add(' group by FPLOTE');

try
   DM1.Query5.Open;
except
   DM1.Query5.Sql.savetofile('c:\sql.txt');
   end;
DM1.Query5.First;
While not DM1.Query5.Eof do
   begin

   Qr_FP.Close;
   Qr_FP.SQL.Clear;
   Qr_Fp.SQL.Add('Select FPCODEMP,FPDATA,FPFORMA,FPNUMERO, '
                +'       FPBANCO,FPSERIE,FPVALOR,FPLOTE, '
                +'       FPCC,FPTIPO,FPCAIXA,FPCODLDR, '
                +'       FPLOTSEQ,FPLOTSEQ_FC '
                +'      ,FPDEV_CODEMP,FPDEV_CODECF, '
                +'       FPDEV_NUMERO,FPDEV_DESD,FPDEV_DUP, '
                +'       FPDEV_DTEMIS,FPCODLDR_TARBAN,FPTARBAN '
                +' From FPCR where ');
   if DM1.Qr_TID.locate('TINOME','CADDAR',[]) then
      Qr_FP.SQL.Add(' FPLOTE=0'+DM1.Query5.fieldbyName('FPLOTE').AsString)
   else
      Qr_FP.SQL.Add(' FPCODEMP='+IntToStr(codemp)
                +' and FPLOTE=0'+DM1.Query5.fieldbyName('FPLOTE').AsString);
//   Qr_Fp.sql.savetofile('c:\sql.txt');
   Qr_Fp.Open;



   Qr_CRDup.Close;
   Qr_CRDup.SQL.Clear;
   Qr_CRDup.SQL.Add('Select FPDUP_CODEMP,FPNUMERO,FPDESD '
             +',FPDTEMIS,FPLOTE,FPCODEMP '
             +',FPTIPO,FPVALOR,FPDESC,FPJUROS '
             +',FPCODECF,FPDEVOL,FPCODCLI '
             +' from FPCRDUP '
             +' where ');
   if DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
      Qr_CRDup.SQL.add('  FPLOTE=0'+DM1.Query5.fieldbyName('FPLOTE').AsString)
   else
      Qr_CRDup.SQL.Add(' FPCODEMP=0'+IntToStr(codemp)
                +' and FPLOTE=0'+DM1.Query5.fieldbyName('FPLOTE').AsString);
   Qr_CRDup.open;


   While not Qr_Fp.Eof do
      begin
      if not DM1.Qr_FP.Locate('FPCODIGO',Qr_FPFPFORMA.Value,[]) then
         begin
         Qr_FP.Next;
         Continue;
         end;

      if DM1.Qr_FPFPVINCULO.AsFloat<>19 then
         begin
         Qr_FP.Next;
         Continue;
         end;

      if not fCancelaNC(true,Qr_CRDupFPCODCLI.AsFloat,Qr_FPFPVALOR.AsFloat,Qr_FPFPDATA.AsDateTime) then
         begin
         fmensagem('Nota de Credito ja baixada!',0,['0'],0);
         exit;
         end;
      Qr_FP.Next;
      end;
   DM1.Query5.Next;

   end;
// TERMINO DOS TESTES



if fmensagem('Confirma a exclusão da baixa!',0,['1','2'],2)=mrYes then
   begin
   Qr_FP.Close;
   Qr_FP.SQL.Clear;
   Qr_Fp.SQL.Add('Select FPCODEMP,FPDATA,FPFORMA,FPNUMERO, '
                +'       FPBANCO,FPSERIE,FPVALOR,FPLOTE, '
                +'       FPCC,FPTIPO,FPCAIXA,FPCODLDR, '
                +'       FPLOTSEQ,FPLOTSEQ_FC '
                +'      ,FPDEV_CODEMP,FPDEV_CODECF, '
                +'       FPDEV_NUMERO,FPDEV_DESD,FPDEV_DUP, '
                +'       FPDEV_DTEMIS '
                +',FPCODLDR_TARBAN,FPTARBAN '
                +' From FPCR where ');
   if DM1.Qr_TID.locate('TINOME','CADDAR',[]) then
      Qr_FP.SQL.Add(' FPLOTE=0'+Trim(lote.Text))
   else
      Qr_FP.SQL.Add(' FPCODEMP='+IntToStr(codemp)
                +' and FPLOTE=0'+Trim(lote.Text));
//   Qr_Fp.sql.savetofile('c:\sql.txt');
   Qr_Fp.Open;
   if Qr_fp.IsEmpty then
      begin
      Qr_FP.Close;
      Qr_FP.SQL.Clear;
      Qr_Fp.SQL.Add('Select CRCODEMP AS FPCODEMP,CRDTPAG AS FPDATA,'
                   +' CRCODFPGTO AS FPFORMA, CRNUMERO-CRNUMERO AS FPNUMERO, '
                +'       CRCODBCO-CRCODBCO AS FPBANCO,CRDESD AS FPSERIE,CRVALPAG AS FPVALOR,'
                +'  CRLOTE AS  FPLOTE, '
                +'  CRDESD AS FPCC,CRDUP AS FPTIPO,CRCX_CODCAI AS FPCAIXA,CRCODLDR AS FPCODLDR, '
                +'      CRLOTSEQ_FC AS FPLOTSEQ,CRLOTSEQ_FC AS FPLOTSEQ_FC '
                +'  ,0 AS  FPDEV_CODEMP'
                +'  ,0 AS FPDEV_CODECF, '
                +'  0 AS FPDEV_NUMERO,'
                +'  '+chr(39)+' '+chr(39)+'FPDEV_DESD,'
                +'  0 as FPDEV_DUP, '
                +' CRDTEMIS as FPDEV_DTEMIS '
                +',0 AS FPCODLDR_TARBAN,0 AS FPTARBAN '
                +' From CADDAR where ');
      if DM1.Qr_TID.locate('TINOME','CADDAR',[]) then
         Qr_FP.SQL.Add(' CRLOTE=0'+Trim(lote.Text))
      else
         Qr_FP.SQL.Add(' CRCODEMP='+IntToStr(codemp)
                +' and CRLOTE=0'+Trim(lote.Text));
      Qr_FP.SQL.add(' and CRSTATUS>0  and CRSTATUS<>8 ' );
      try
         Qr_Fp.Open;                      
      except
         Qr_Fp.Sql.SavetoFile('c:\sql.txt');
         end;
      end;
   fCancelarBaixa(fsonumero(LOTE.Text));


   Qr_FP.First;
   While not Qr_FP.Eof do
      begin
      if Qr_FPFPTARBAN.AsFloat>0 then
         begin
         fExecutarComandoSQL(true,'delete from cadldr where CODLDR=0'+Qr_FPFPCODLDR_TARBAN.asString
                             +' and CODEMP=0'+Qr_FPFPCODEMP.AsString,mmotivo,1295);

         end;


      if not DM1.Qr_FP.Locate('FPCODIGO',Qr_FPFPFORMA.Value,[]) then
         begin
         Qr_FP.Next;
         Continue;
         end;

      if DM1.Qr_FPFPVINCULO.AsFloat<>19 then
         begin
         Qr_FP.Next;
         Continue;
         end;
      fCancelaNC(false,Qr_CRDupFPCODCLI.AsFloat,Qr_FPFPVALOR.AsFloat,Qr_FPFPDATA.AsDateTime);
      break;
      end;

   Qr_FP.First;
   while not Qr_FP.Eof do
      begin
      if (Qr_FPFPDEV_NUMERO.AsFloat<=0)  or (Qr_FPFPDEV_CODEMP.AsFloat<=0)then
         begin
         Qr_FP.Next;
         Continue;
         end;
      if flcaddar(8,Qr_FPFPDEV_CODEMP.AsInteger,
                  0,Qr_FPFPDEV_CODECF.AsInteger,
                  0,
                  Qr_FPFPDEV_NUMERO.AsString,
                  Qr_FPFPDEV_DESD.Value,
                  Qr_FPFPDEV_DUP.AsString,
                  Qr_FPFPDEV_DTEMIS.Value,'')  then
         begin
         if DM1.Tb_DarCRLOTE.AsFloat>0 then
            fCancelarBaixa(DM1.Tb_DarCRLOTE.AsFloat);
         if (DM1.Tb_DarCRSTATUS.AsInteger=1)
          and (DM1.Tb_DarCRVALPAG.AsFloat=DM1.Tb_DarCRDEVOL.AsFloat*(-1)) then
            begin
            DM1.Tb_Dar.Edit;
            DM1.Tb_DarCRSTATUS.AsInteger:=0;
            DM1.Tb_DarCRVALPAG.AsFloat:=0;
            DM1.Tb_DarCRDEVOL.AsFloat :=0;
            DM1.Tb_Dar.Post;
            if DM1.Tb_DarCRCODLDR.Value>0 then
              begin
              if not flcadldr(0,DM1.Tb_DarCRCODEMP.AsInteger,DM1.Tb_DarCRLOTSEQ_FC.AsInteger,DM1.Tb_DarCRCODLDR.AsString) then
                 DM1.Tb_LDR.Append
              else
                 DM1.Tb_LDR.Edit;
              end
            else
              begin
              if not DM1.Tb_Ldr.Active then
                 flcadldr(0,0,0,'9999999');
              DM1.Tb_Ldr.Append;
              end;
           DM1.Tb_LDRCODEMP.Value  :=DM1.Tb_DarCRCODEMP.Value;
           DM1.Tb_LDRDATADP.Value  :=DM1.Tb_DarCRDTVCTO.Value;
           DM1.Tb_LDRDATAREF.Value :=DM1.Tb_DarCRDTEMIS.Value;
           DM1.Tb_LDRVALORP.Value  :=DM1.Tb_DarCRVALOR.Value-DM1.Tb_DarCRVALPAG.Value; // valor
           if DM1.Tb_DarCRSTATUS.Value>0 then
              begin
              DM1.Tb_LDRDATAREAL.Value:=DM1.Tb_DarCRDTBX.Value;
              DM1.Tb_LDRVALORR.Value  :=DM1.Tb_DarCRVALPAG.Value;
              DM1.Tb_LDRVALORP.Value  :=DM1.Tb_DarCRVALPAG.Value; // valor
              if DM1.Tb_DarCRDTBX.Value>pdatanula then
                 DM1.Tb_LDRDTSALDO.AsDateTime  := DM1.Tb_DarCRDTBX.Value
              else
                 DM1.Tb_LDRDTSALDO.AsDateTime  := pdatanula;

              end;

           if DM1.Tb_DarCRCODCTA.AsInteger<>0 then
              DM1.Tb_LDRCODBCO.Value  :=DM1.Tb_DarCRCODCTA.AsInteger
           else
              DM1.Tb_LDRCODBCO.Value  :=codcai;
           DM1.Tb_LDRNUMDOC.Value :=DM1.Tb_PargerPCRDOCSIG.Value+FormatFloat('000000',iif(DM1.Tb_PargerPCRDOC.Value=1,DM1.Tb_DarCRNPED.Value,DM1.Tb_DarCRNUMERO.Value))+'-'+DM1.Tb_DarCRDESD.Value;
           DM1.Tb_LDRSTATUS.Value:=0;
           DM1.Tb_LDRORIGEM.Value:=03;
           DM1.Tb_LDRTIPO.Value  :='CL';
           DM1.Tb_LDRCODIGO.Value:=DM1.Tb_DarCRCODCLI.Value;
           DM1.Tb_LDRNOME.Value  :=DM1.Tb_Darrazaocli.Value;
           if DM1.Tb_DarCRNPED.Value>0 then
              DM1.Tb_LDRLOCDEP.Value:=3
           else
              DM1.Tb_LDRLOCDEP.Value:=4;
           DM1.Tb_LDRNOME.Value  :=DM1.Tb_Darrazaocli.Value;
           DM1.Tb_LDRDESCMV.Value:=DM1.Tb_DarCRDESCMV.Value;
           DM1.Tb_LDRCODCC.Value :=DM1.Tb_DarCRCODCC.Value;
           DM1.Tb_LDRCODDEP.Value:=DM1.Tb_DarCRCODDEP.Value;
           DM1.Tb_LDRNOMBCO.Value:=DM1.Tb_DarCRNOMCTA.Value;
           DM1.Tb_LDRNOMDEP.Value:=DM1.Tb_DarCRNOMDEP.Value;
           DM1.Tb_LDRNOMCCU.Value:=DM1.Tb_DarCRNOMCC.Value;
           DM1.Tb_LDRNATDC.Value :=DM1.Tb_DarCRNATDC.Value;
           DM1.Tb_LDRLOTMOV.Value:=lotmov;
           if Trim(DM1.Tb_LDRNUMDOC.AsString)<>'' then
             DM1.Tb_LDRDESCMV.Value:=trim(DM1.Tb_LDRDESCMV.Value)+' No.'+DM1.Tb_LDRNUMDOC.Value
           else
             DM1.Tb_LDRDESCMV.Value:=trim(DM1.Tb_LDRDESCMV.Value);
           DM1.Tb_LDRDESCMV.Value:=Trim(DM1.Tb_LDRDESCMV.Value)+' '+DM1.Tb_LDRNOME.Value;
           if length(DM1.Tb_LDRDESCMV.Value)>50 then
              DM1.Tb_LDRDESCMV.Value:=copy(DM1.Tb_LDRDESCMV.Value,1,50);
           DM1.Tb_LDRDESCMV.Value  :=DM1.Tb_LDRDESCMV.Value;
           if DM1.Tb_DarCRDUP.AsInteger=5 then
             DM1.Tb_LDRVALORP.Value  :=DM1.Tb_DarCRVALOR.Value; // valor
           DM1.Tb_LDR.Post;
           end;
         end;
      Qr_FP.Next;
      end;
   pnl_Motivo.Visible:=FALSE;
   fmensagem('Baixa Excluida!',0,['0'],0);
   bbCancelar.Click;
   end;
end;

end.

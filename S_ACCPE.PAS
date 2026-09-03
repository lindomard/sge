unit S_AcCPE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, Buttons, Db, DBTables, S_DM1, func, ComCtrls,
  lerarq,func2;

type
  TFrm_AcCPE = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    LOTE: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    STG1: TStringGrid;
    Qr_CPDup: TQuery;
    bbPesq: TBitBtn;
    Qr_FP: TQuery;
    HeaderControl1: THeaderControl;
    bbExcluir: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
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
    Qr_CPDupFPDUP_CODEMP: TFloatField;
    Qr_CPDupFPNUMERO: TFloatField;
    Qr_CPDupFPDESD: TStringField;
    Qr_CPDupFPCODFOR: TFloatField;
    Qr_CPDupFPDTEMIS: TDateTimeField;
    Qr_CPDupFPLOTE: TFloatField;
    Qr_CPDupFPCODEMP: TFloatField;
    Qr_CPDupFPTIPO: TFloatField;
    Qr_CPDupFPVALOR: TFloatField;
    Qr_CPDupFPDESC: TFloatField;
    Qr_CPDupFPJUROS: TFloatField;
    Qr_FPFPDEV_CODEMP: TFloatField;
    Qr_FPFPDEV_CODFOR: TFloatField;
    Qr_FPFPDEV_NUMERO: TFloatField;
    Qr_FPFPDEV_DESD: TStringField;
    Qr_FPDEV_FPTIPO: TFloatField;
    Qr_FPDEV_FPDTEMIS: TDateTimeField;
    procedure LOTEKeyPress(Sender: TObject; var Key: Char);
    procedure bbPesqClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure bbExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function fCancelarBaixa(pLote: Real): Boolean;


    procedure fLerQrFP(pLote: integer);

  public
    { Public declarations }
  end;

function fCancelaNC(pSoTesta:Boolean;pCodfor,pValor: Real;pDtEmis:TDateTime): Boolean;

var
  Frm_AcCPE: TFrm_AcCPE;

implementation

uses func_excecoes, S_DM4;

{$R *.DFM}

procedure TFrm_AcCPE.LOTEKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;


procedure TFrm_AcCPE.fLerQrFP(pLote: integer);
begin

Qr_FP.Close;
Qr_FP.SQL.Clear;
Qr_Fp.SQL.Add('Select FPCODEMP,FPDATA,FPFORMA,FPNUMERO, '
             +'       FPBANCO,FPSERIE,FPVALOR,FPLOTE, '
             +'        FPCC,FPTIPO,FPCAIXA,FPCODLDR, '
             +'       FPLOTSEQ,FPLOTSEQ_FC '
             +'       ,FPDEV_CODEMP,FPDEV_CODFOR, '
             +'       FPDEV_NUMERO,FPDEV_DESD,DEV_FPTIPO, '
             +'       DEV_FPDTEMIS '
             +' From FPCP where ');
if DM1.Qr_TID.locate('TINOME','CADDAP',[]) then
   begin
   Qr_FP.SQL.add('  FPLOTSEQ=0'+IntTostr(ls_lotbcp)
                +'  and FPLOTE=0'+Inttostr(pLote))
   end
else
   begin
   Qr_FP.SQl.Add(' FPCODEMP='+IntToStr(codemp)
            +' and FPLOTSEQ=0'+IntTostr(ls_lotbcp)
             +' and FPLOTE=0'+Inttostr(pLote));
   end;
try
   Qr_Fp.open;
except
   Qr_Fp.sql.savetofile(mpastatemp + 'sql.txt');
   end;

if Qr_FP.IsEmpty then
   begin
   Qr_FP.Close;
   Qr_FP.SQL.Clear;
   Qr_Fp.SQL.Add('Select CACODEMP AS FPCODEMP, CADTEMIS FPDATA, CACODEMP-CACODEMP AS FPFORMA,'
                +' CANUMERO AS FPNUMERO, '
                +'       CABANCO AS FPBANCO, CADESD AS  FPSERIE, CAVALOR AS FPVALOR, CALOTE AS FPLOTE, '
                +'       CADESD AS  FPCC, CADUP AS FPTIPO,CACAIXA AS  FPCAIXA,CACODLDR AS FPCODLDR, '
                +'       CALOTSEQ_LB AS FPLOTSEQ,CALOTSEQ_FC AS FPLOTSEQ_FC '
                +'      ,0 AS FPDEV_CODEMP,0 AS FPDEV_CODFOR, '
                +'       0 AS FPDEV_NUMERO,CADESD AS  FPDEV_DESD,0 AS DEV_FPTIPO, '
                +'       CADTEMIS AS DEV_FPDTEMIS '
             +' From CADDAP where '
             +iif(DM1.Qr_TID.Locate('TINOME','CADDAP',[]),'',' CACODEMP=0'+IntToStr(codemp)+' and  ')
             +' CALOTSEQ_CP=0'+IntTostr(ls_lotbcp)
             +' and CALOTE=0'+Inttostr(pLote)
             +' and CASTATUS>0 AND CASTATUS<9');
   try
      Qr_Fp.open;
   except
      Qr_Fp.sql.savetofile(mpastatemp + 'sql.txt');
      end;
   end;

end;



procedure TFrm_AcCPE.bbPesqClick(Sender: TObject);
var
mlin: Integer;
begin
try
    Qr_CpDup.Close;
    Qr_CpDup.SQL.Clear;
    Qr_CpDup.SQL.Clear;
    Qr_CpDup.SQL.Add('Select FPDUP_CODEMP, FPNUMERO,FPDESD ');
    Qr_CpDup.SQL.Add(',FPCODFOR,FPDTEMIS,FPLOTE,FPCODEMP ');
    Qr_CpDup.SQL.Add(',FPTIPO,FPVALOR,FPDESC,FPJUROS ');
    Qr_CpDup.SQL.Add(' from FPCPDUP where '
                      +iif(DM1.Qr_TID.Locate('TINOME','CADDAP',[]),'',' FPCODEMP=0'+IntToStr(codemp)+' and '));
    Qr_CpDup.SQL.Add(' FPLOTSEQ=0'+IntTostr(ls_lotbcp)
                       +' and FPLOTE=0'+Trim(Lote.Text));
    try
       Qr_CpDup.open;
    except
       Qr_CPDup.sql.savetofile(mpastatemp + 'sql.txt');
       end;

    if Qr_CPDup.IsEmpty then
       begin
    {
       Qr_CpDup.Close;
       Qr_CpDup.SQL.Clear;
       Qr_CpDup.SQL.Add('Select CACODEMP AS FPDUP_CODEMP,CANUMERO AS FPNUMERO,CADESD AS FPDESD ');
       Qr_CpDup.SQL.Add(',CACODFOR AS FPCODFOR,CADTEMIS AS FPDTEMIS,CALOTE AS FPLOTE,CACODEMP AS FPCODEMP ');
       Qr_CpDup.SQL.Add(',CADUP AS FPTIPO,CAVALPAG AS FPVALOR,CAVALDES AS FPDESC,CAJUROS AS FPJUROS ');
       Qr_CpDup.SQL.Add(' from CADDAP where '
                       +iif(DM1.Qr_TID.Locate('TINOME','CADDAP',[]),'',' CACODEMP=0'+IntToStr(codemp)+' and ')
                       +' CALOTSEQ_CP=0'+IntTostr(ls_lotbcp)
                       +' and CALOTE=0'+Trim(Lote.Text)
                       +' and CASTATUS>0 AND CASTATUS<9');
       try
          Qr_CpDup.open;
       except
          Qr_CPDup.sql.savetofile(mpastatemp + 'sql.txt');
          end;
       end;
    if Qr_CpDup.Eof then
       begin
    }
       fmensagem('Não foi Encontrado nada Neste Lote!',0,['0'],0);
       LOTE.SetFocus;
       exit;
       end;
    fLerQrFP(valint(lote.text));
    mlin:=0;
    While not Qr_CpDup.Eof do
       begin
       mlin:=mlin+1;
       STG1.RowCount:=mlin;
       DM1.Query1.Close;
       DM1.Query1.SQL.Clear;
       DM1.Query1.SQL.Add('Select FRAZAO from CADDAP,CADFOR where ');
       if DM1.Qr_TID.Locate('TINOME','CADDAP',[]) then
          begin
          DM1.Query1.SQL.Add(' CANUMERO=0'+Qr_CPDupFPNUMERO.AsString
                         +' and CADESD='+chr(39)+Trim(Qr_CPDupFPDESD.AsString)+CHR(39)
                         +' and CACODFOR=0'+Qr_CPDupFPCODFOR.AsString
                         +' and CADTEMIS='+chr(39)+FormatDateTime(fdt,Qr_CPDupFPDTEMIS.Value)+chr(39)
                         +iif(DM1.Qr_Tid.Locate('TINOME','CADFOR',[]),'',' and FCODEMP=CACODEMP ')
                         +' and FCODFOR=CACODFOR');
          end
       else
          begin
          DM1.Query1.SQL.Add(' CACODEMP='+Qr_CPDupFPDUP_CODEMP.AsString
                         +' and CANUMERO=0'+Qr_CPDupFPNUMERO.AsString
                         +' and CADESD='+chr(39)+Trim(Qr_CPDupFPDESD.AsString)+CHR(39)
                         +' and CACODFOR=0'+Qr_CPDupFPCODFOR.AsString
                         +' and CADTEMIS='+chr(39)+FormatDateTime(fdt,Qr_CPDupFPDTEMIS.Value)+chr(39)
                         +iif(DM1.Qr_Tid.Locate('TINOME','CADFOR',[]),'',' and FCODEMP=CACODEMP ')
                         +' and FCODFOR=CACODFOR');
          end;
    //   DM1.Query1.sQL.sAVEtOfILE(mpastatemp + 'SQL.TXT');
       DM1.Query1.Open;
       STG1.Cells[00,mlin-1]:=FormatFloat('0000000',Qr_CPDupFPNUMERO.Value)+'-'+Qr_CPDupFPDESD.Value;
       STG1.Cells[01,mlin-1]:=DM1.Query1.fields[0].AsString;
       STG1.Cells[02,mlin-1]:='';
       STG1.Cells[03,mlin-1]:='';
       Qr_CPDup.Next;
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
       STG1.Cells[03,mlin-1]:=insere(FormatFloat('###,##0.00',Qr_FPFPVALOR.Value),' ',12);
       Qr_fp.Next;
       end;
except on e : exception do
   begin
   messagedlg('Erro '+e.message,mtError,[mbOk],0);
   end;
   end;
end;

procedure TFrm_AcCPE.BitBtn3Click(Sender: TObject);
begin
Qr_CPDup.Close;
Qr_FP.Close;
STG1.RowCount:=1;
STG1.Cells[0,0]:='';
STG1.Cells[1,0]:='';
STG1.Cells[2,0]:='';
STG1.Cells[3,0]:='';
end;

procedure TFrm_AcCPE.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure TFrm_AcCPE.bbExcluirClick(Sender: TObject);
begin
if Qr_CPDup.IsEmpty then
   begin
   fMensagem('Favor Selecionar um Lote Válido!',0,['0'],0);
   exit;
   end;

Qr_CPDup.First;
if not Qr_CPDup.IsEmpty then
   begin
   DM1.Query4.Close;
   DM1.Query4.SQL.Clear;
   DM1.Query4.SQL.add('Select FPCODEMP,FPNUMERO,FPBANCO,FPSERIE,FPCC,FPLOTE,FPVALOR,FPCODLDR from  FPCP where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',
                     ' FPCODEMP='+IntToStr(codemp)+' and ')
                     +' FPLOTSEQ=0'+IntTosTr(ls_lotbcr)
                     +' and FPLOTE=0'+Qr_CPDupFPLOTE.AsString);
   DM1.Query4.Open;


   DM1.Query3.Close;
   DM1.Query3.SQL.clear;
   if not DM1.Qr_TID.Locate('TINOME','CADCHQ',[]) then
      DM1.Query3.Params.CreateParam(ftString,'CHCODEMP',ptInput);
   DM1.Query3.Params.CreateParam(ftString,'CHLOTE',ptInput);
   DM1.Query3.SQL.add('Select CHSTATUS,CHVALOR,CHNUMERO,CHBANCO,CHLOTEBX from CADCHCP where '+
                     iif(DM1.Qr_TID.Locate('TINOME','CADCHQ',[]),'',' CHCODEMP=:CHCODEMP and ')
                     +' (CHLOTE  =:CHLOTE) and (CHLOTE_BT is null or CHLOTE_BT=0) ');
   While not DM1.Query4.Eof  do
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select DATAREAL From CADLDR where '
                       +iif(DM1.Qr_TID.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntToStr(codemp)+' and ')
                       +' LOTSEQ=0'+IntTosTr(ls_lotbcr)
                       +' and CODLDR=0'+DM1.Query4.fieldbyName('FPCODLDR').AsString);
      DM1.Query1.open;
      if (DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime>pDataNula) then
         begin
         if DM1.Query1.FieldByName('DATAREAL').AsDateTime<=DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime then
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
               DM1.Query3.sql.SaveToFile(mpastatemp + 'sql.txt');
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

Qr_FP.First;
While not Qr_FP.Eof do
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
   if not fCancelaNC(true,Qr_CPDupFPCODFOR.AsFloat,Qr_FPFPVALOR.AsFloat,Qr_FPFPDATA.AsDateTime) then
      begin
      fmensagem('Nota de Credito ja baixada!',0,['0'],0);
      exit;
      end;
   Qr_FP.Next;
   end;


//function fCancelaNC(pSoTesta:Boolean;pCodfor,pLote: Real): Boolean;

if fmensagem('Confirma a exclusão da baixa!',0,['1','2'],2)=mrYes then
   begin
   Qr_CpDup.Close;
   Qr_CpDup.SQL.Clear;
   Qr_CpDup.SQL.Clear;
   Qr_CpDup.SQL.Add('Select FPDUP_CODEMP, FPNUMERO,FPDESD ');
   Qr_CpDup.SQL.Add(',FPCODFOR,FPDTEMIS,FPLOTE,FPCODEMP ');
   Qr_CpDup.SQL.Add(',FPTIPO,FPVALOR,FPDESC,FPJUROS ');
   Qr_CpDup.SQL.Add(' from FPCPDUP where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADDAP',[]),'',' FPCODEMP=0'+IntToStr(codemp)+' and '));
   Qr_CPDup.SQL.add(' FPLOTSEQ=0'+IntTostr(ls_lotbcp)+' and ');
   Qr_CpDup.SQL.add('  FPLOTE=0'+Trim(lote.Text));
   try
      Qr_CpDup.open;
   except
      Qr_CPDup.sql.savetofile(mpastatemp + 'sql.txt');
      end;

   fCancelarBaixa(ValFloat(lote.Text));

   Qr_FP.First;
   While not Qr_FP.Eof do
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
      fCancelaNC(false,Qr_CPDupFPCODFOR.AsFloat,Qr_FPFPVALOR.AsFloat,Qr_FPFPDATA.AsDateTime);
      break;
      end;



   Qr_FP.First;
   While not Qr_FP.Eof do
      begin
      if Qr_FPFPDEV_NUMERO.AsFloat=0 then
         begin
         Qr_FP.Next;
         Continue;
         end;

      if flcaddap(6,Qr_FPFPDEV_CODEMP.AsInteger,0,
                    Qr_FPFPDEV_NUMERO.AsString,
                    Qr_FPFPDEV_DESD.Value,
                    Qr_FPFPDEV_CODFOR.AsString,
                    FormatDatetime(fdt2, Qr_FPDEV_FPDTEMIS.AsDateTime),
                    Qr_FPDEV_FPTIPO.AsString,'') then
         begin
         if DM1.Tb_CPCALOTE.AsFloat<>0 then
            begin
            fLerQrFP(DM1.Tb_CPCALOTE.asinteger);
            fCancelarBaixa(DM1.Tb_CPCALOTE.AsFloat);
            end;
         end;
      Qr_FP.Next;
      end;
   fMensagem('Baixa Excluida.',0,['0'],0);
   BitBtn3.Click;
   end;

end;

procedure TFrm_AcCPE.FormCreate(Sender: TObject);
begin
DM1.Qr_FP.Close;
DM1.Qr_FP.SQL.Clear;
DM1.Qr_FP.SQL.Add('Select * from CADFP order by FPCODIGO');
DM1.Qr_FP.Open;
Flcadldr(0,0,0,'0');
fCarregaDadosCaixa('CADDAP0');

if DM4.Tb_ParGer02PG2DTBLOQCX.asDateTime>pDataNula then
   Frm_AcCPE.Caption:=Frm_AcCPE.Caption+'. Manipulação no Caixa Bloqueada até: '+FormatDateTime(fdt2,DM4.Tb_ParGer02PG2DTBLOQCX.asDateTime)+'.';

end;

procedure TFrm_AcCPE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;
function TFrm_AcCPE.fCancelarBaixa(pLote: Real): Boolean;
begin
Qr_CpDup.Close;
Qr_CpDup.SQL.Clear;
Qr_CpDup.SQL.Clear;
Qr_CpDup.SQL.Add('Select FPDUP_CODEMP, FPNUMERO,FPDESD ');
Qr_CpDup.SQL.Add(',FPCODFOR,FPDTEMIS,FPLOTE,FPCODEMP ');
Qr_CpDup.SQL.Add(',FPTIPO,FPVALOR,FPDESC,FPJUROS ');
Qr_CpDup.SQL.Add(' from FPCPDUP where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADDAP',[]),'',' FPCODEMP=0'+IntToStr(codemp)+' and '));
Qr_CPDup.SQL.add(' FPLOTSEQ=0'+IntTostr(ls_lotbcp)+' and ');
Qr_CpDup.SQL.add('  FPLOTE=0'+FloatToStr(plote));
try
   Qr_CpDup.open;
except
   Qr_CPDup.sql.savetofile(mpastatemp + 'sql.txt');
   end;

if Qr_CPDup.IsEmpty then
   begin
   Qr_CpDup.Close;
   Qr_CpDup.SQL.Clear;
   Qr_CpDup.SQL.Add('Select CACODEMP AS FPDUP_CODEMP,CANUMERO AS FPNUMERO,CADESD AS FPDESD ');
   Qr_CpDup.SQL.Add(',CACODFOR AS FPCODFOR,CADTEMIS AS FPDTEMIS,CALOTE AS FPLOTE,CACODEMP AS FPCODEMP ');
   Qr_CpDup.SQL.Add(',CADUP AS FPTIPO,CAVALPAG AS FPVALOR,CAVALDES AS FPDESC,CAJUROS AS FPJUROS ');
   Qr_CpDup.SQL.Add(' from CADDAP where '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADDAP',[]),'',' CACODEMP=0'+IntToStr(codemp)+' and ')
                   +' CALOTSEQ_CP=0'+IntTostr(ls_lotbcp)
                   +' and CALOTE=0'+FloatToStr(pLote));
   try
      Qr_CpDup.open;
   except
      Qr_CPDup.sql.savetofile(mpastatemp + 'sql.txt');
      end;
   end;
if Qr_CPDup.Eof then
   begin
   fMensagem('No Decorrer da transação Este Lote foi Excluido por outra'+#13
             +'pessoa!',0,['0'],0);
   result:=false;
   exit;
   end;
DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.SQL.add('Select DECODE(FPCHT_CODEMP,null,FPCODEMP,0,FPCODEMP,FPCHT_CODEMP) as FPCODEMP,FPNUMERO,FPBANCO,FPSERIE,FPCC,FPLOTE,FPVALOR from  FPCP where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADDAP',[]),'',' FPCODEMP=0'+IntToStr(codemp)+' and ')
                  +' FPLOTSEQ=0'+IntTosTr(ls_lotbcr)
                  +' and FPLOTE=0'+FloatTostr(plote));
//                  +'  and FPNUMERO>0 and FPBANCO>0');
DM1.Query4.Open;
if not DM1.Query4.Eof then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   if not DM1.Qr_TID.Locate('TINOME','CADCHQ',[]) then
      DM1.Query2.Params.CreateParam(ftString,'CHCODEMP',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'CHLOTE',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'CHLOTE_BT',ptInput);


   DM1.Query2.SQL.add('Select CHCODEMP,CHCODLDR_DEB, CHCODBCO_DEB FROM CADCHQ '
                     +' where '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADCHQ',[]),'',' CHCODEMP=:CHCODEMP and ')
                     +' (CHLOTEBX  =:CHLOTE) and (CHLOTE_BT=:CHLOTE_BT) '
                     +' and CHCODLDR_DEB<>0 ');

   if not DM1.Qr_TID.Locate('TINOME','CADCHQ',[]) then
      DM1.Query2.ParamByName('CHCODEMP').AsFloat:=dm1.Query4.fieldbyName('FPCODEMP').AsFloat;
   DM1.Query2.ParamByName('CHLOTE').AsFloat     :=dm1.Query4.fieldbyName('FPLOTE').AsFloat;
   DM1.Query2.ParamByName('CHLOTE_BT').AsFloat  :=dm1.Query4.fieldbyName('FPLOTE').AsFloat;
   DM1.Query2.Open;
   While not DM1.Query2.Eof do
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Delete From CADLDR where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+DM1.Query2.fieldbyName('CHCODEMP').AsString+' and ')
                     +' LOTSEQ=0'+IntTosTr(ls_lotbcr)
                     +' and CODLDR=0'+DM1.Query2.fieldbyName('CHCODLDR_DEB').AsString);
      try
         DM1.Query1.ExecSQL;
         fdm1startCommit;
      except
         end;
      DM1.Query2.Next;
      end;


   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   if not DM1.Qr_TID.Locate('TINOME','CADCHQ',[]) then
      DM1.Query1.Params.CreateParam(ftString,'CHCODEMP',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'CHLOTE',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'CHLOTE_BT',ptInput);
   DM1.Query1.SQL.add('Delete from CADCHCP where '+
                     iif(DM1.Qr_TID.Locate('TINOME','CADCHQ',[]),'',' CHCODEMP=:CHCODEMP and ')
                     +' (CHLOTE  =:CHLOTE) and (CHLOTE_BT is null or CHLOTE_BT=0 or CHLOTE_BT=:CHLOTE_BT ) ');



   DM1.Query2.Close;
   DM1.Query2.SQL.clear;
   if not DM1.Qr_TID.Locate('TINOME','CADCHQ',[]) then
      DM1.Query2.Params.CreateParam(ftString,'CHCODEMP',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'CHLOTE',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'CHLOTE_BT',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'CHSTATUS',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'CHDTBX',ptInput);

   DM1.Query2.SQL.add('update CADCHQ set CHLOTEBX=0, CHLOTE_BT=0 '
                     +' ,CHSTATUS=0 '
                     +' ,CHDTBX='+chr(39)+DateToStr(pdatanula)+chr(39)
                     +' where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADCHQ',[]),'',' CHCODEMP=:CHCODEMP and ')
                     +' (CHLOTEBX  =:CHLOTE) and (CHLOTE_BT=:CHLOTE_BT) ');

   While not DM1.Query4.Eof do
      begin
      if not DM1.Qr_TID.Locate('TINOME','CADCHQ',[]) then
         DM1.Query1.ParamByName('CHCODEMP').AsFloat:=dm1.Query4.fieldbyName('FPCODEMP').AsFloat;
      DM1.Query1.ParamByName('CHLOTE').AsFloat  :=dm1.Query4.fieldbyName('FPLOTE').AsFloat;
      DM1.Query1.ParamByName('CHLOTE_BT').AsFloat :=dm1.Query4.fieldbyName('FPLOTE').AsFloat;
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         end;

      if not DM1.Qr_TID.Locate('TINOME','CADCHQ',[]) then
         DM1.Query2.ParamByName('CHCODEMP').AsFloat:=dm1.Query4.fieldbyName('FPCODEMP').AsFloat;
      DM1.Query2.ParamByName('CHLOTE').AsFloat     :=dm1.Query4.fieldbyName('FPLOTE').AsFloat;
      DM1.Query2.ParamByName('CHLOTE_BT').AsFloat  :=dm1.Query4.fieldbyName('FPLOTE').AsFloat;
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         end;
      DM1.Query4.Next;
      end;
   end;



DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete From FPCPDUP where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADDAP',[]),'',' FPCODEMP=0'+IntToStr(codemp)+' and '));
DM1.Query1.sql.add(' FPLOTSEQ=0'+IntTosTr(ls_lotbcr)
                  +' and FPLOTE=0'+FloatTostr(plote));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete From FPCP where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADDAP',[]),'',' FPCODEMP=0'+IntToStr(codemp)+' and ')
                  +' FPLOTSEQ=0'+IntTosTr(ls_lotbcr)
                  +' and FPLOTE=0'+FloatTostr(plote));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

Qr_FP.First;
While not Qr_FP.eof do
   begin
   if Qr_FPFPCODLDR.AsFloat=0 then
      begin
      Qr_FP.Next;
      Continue;
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete From CADLDR where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+Qr_FPFPCODEMP.AsString+' and ')
                     +' LOTSEQ=0'+IntTosTr(ls_lotbcr)
                     +' and CODLDR=0'+Qr_FPFPCODLDR.AsString);
   try
      DM1.Query1.ExecSQL;
      fdm1startCommit;
   except
      end;
   Qr_FP.next;
   end;
Qr_CPDup.First;
mdesc_mov:=pldr_descmov;
mcodccu  :=pldr_codccu;
mcoddep  :=pldr_coddep;
mnomdep  :=pldr_nomdep;
mnomccu  :=pldr_nomccu;
mnatdc   :=pldr_natdc;

While not Qr_CPDup.Eof do
   begin

   if not flcaddap(6,Qr_CPDupFPDUP_CODEMP.AsInteger,0,Qr_CPDupFPNUMERO.AsString,Qr_CPDupFPDESD.Value,Qr_CPDupFPCODFOR.AsString,
                       FormatDatetime(fdt2, Qr_CPDupFPDTEMIS.AsDateTime),Qr_CPDupFPTIPO.AsString,'') then
      fMensagem('Ha erros duplicata nao encontrada: '+Qr_CPDupFPNUMERO.AsString,0,['0'],0)
   else
      begin
      if Qr_CPDupFPTIPO.Asinteger<>5 then
         begin
         if DM1.Tb_CPCALOTE.AsFloat>0 then
            begin
            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.Add('Delete From CADLDR where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+Qr_FPFPCODEMP.AsString+' and ')
                     +' LOTSEQ=0'+IntTosTr(ls_lotbcr)
                     +' and CODLDR=0'+DM1.Tb_CPCACODLDR.AsString);
            try
               DM1.Query1.ExecSQL;
               fdm1startCommit;
            except
               end;
            end;
         end;

      flcadfor(1,1,DM1.Tb_CPCACODFOR.AsString);

      DM1.Tb_CP.Edit;
      DM1.Tb_CPCADTBX.Value   :=StrToDate('01/01/1900');
      DM1.Tb_CPCADTPAG.Value  :=StrToDate('01/01/1900');
      DM1.Tb_CPCALOTE.Value   :=0;

      DM1.Tb_CPCAVALPAG.Value:=DM1.Tb_CPCAVALPAG.Value-Qr_CPDupFPVALOR.Value;
      DM1.Tb_CPCADESC.Value  :=DM1.Tb_CPCADESC.Value -Qr_CPDupFPDESC.Value;
      DM1.Tb_CPCAJUROS.Value :=DM1.Tb_CPCAJUROS.Value-Qr_CPDupFPJUROS.Value;
      if DM1.Tb_CPCAVALPAG.AsFloat<=0 then
         DM1.Tb_CPCAUSRBAI.AsFloat:=0;

      if DM1.Tb_CPCAVALPAG.Value<0 then
         DM1.Tb_CPCAVALPAG.Value:=0;
      if DM1.Tb_CPCAVALDES.Value<0 then
         DM1.Tb_CPCAVALDES.Value:=0;
      if DM1.Tb_CPCAJUROS.Value<0 then
         DM1.Tb_CPCAJUROS.Value:=0;
      if DM1.Tb_CPCAVALPAG.Value>0 then
         DM1.Tb_CPCASTATUS.Value:=1
      else
         DM1.Tb_CPCASTATUS.Value:=0;

      if DM1.Tb_CPCADUP.AsInteger=5 then
         begin
         if DM1.Tb_CPCACHAVEP.AsFloat>0 then
            flparldr(0,'CADDAPD')
         else if not flparldr(0,'CADDAPN') then
            flparldr(0,'CADDAPD');
         if (trim(DM1.Tb_CPCADESCMV.Value)<>'') and
            (trim(DM1.Tb_CPCADESCMV.Value)<>'_') then
            mdesc_mov:=DM1.Tb_CPCADESCMV.Value
         else if (trim(DM1.Tb_ForFDESCMVC.AsString)<>'') and
                 (trim(DM1.Tb_ForFDESCMVC.AsString)<>'_') then
            mdesc_mov:=DM1.Tb_ForFDESCMVC.AsString
         else
            mdesc_mov:=DM1.Par_LDRNOME.Value;
         if (trim(DM1.Tb_CPCACODCC.Value)<>'') and
            (trim(DM1.Tb_CPCACODCC.Value)<>'_') then
            begin
            mcodccu:=DM1.Tb_CPCACODCC.Value;
            mnomccu:=DM1.Tb_CPCANOMCC.Value;
            mnatdc :=DM1.Tb_CPCANATDC.Value;
            end
         else if (Trim(DM1.Tb_ForFCODCCC.AsString)<>'') and
                 (Trim(DM1.Tb_ForFCODCCC.AsString)<>'_') then
            begin
            mcodccu :=DM1.Tb_ForFCODCCC.AsString;
            mnomccu :=DM1.Tb_ForFNOMCCC.AsString;
            mnatdc  :=DM1.Tb_ForFNOMCCC.Value;
            if (DM1.Tb_ForFNATDCC.AsString='') or
               (DM1.Tb_ForFNATDCC.AsString='_') then
               mnatdc :='C'
            else
               mnatdc :=DM1.Tb_ForFNATDCC.AsString;
            end
         else
            begin
            if flcadccu(1,0,DM1.Par_LDRCODCC.Value) then
               begin
               mnomccu:=DM1.Tb_CCUCCNOME.Value;
               mcodccu:=DM1.Tb_CCUCCCODCCU.Value;
               mnatdc:=DM1.Tb_CCUCCNAT.Value;
               end
            else
               begin
               mcodccu  :=pldr_codccu;
               mnomccu  :=pldr_nomccu;
               mnatdc   :=pldr_natdc;
               end;
            end;
         if (trim(DM1.Tb_CPCACODDEP.AsString)<>'') and
            (trim(DM1.Tb_CPCACODDEP.AsString)<>'_') then
            begin
            mcoddep:=DM1.Tb_CPCACODDEP.Value;
            mnomdep:=DM1.Tb_CPCANOMDEP.Value;
            end
         else if (trim(DM1.Tb_ForFCODDEPC.AsString)<>'') and
                 (trim(DM1.Tb_ForFCODDEPC.AsString)<>'_') then
            begin
            mcoddep:=DM1.Tb_ForFCODDEPC.Value;
            mnomdep:=DM1.Tb_ForFNOMDEPC.Value;
            end
         else
            begin
            if flcaddep_ldr(1,0,DM1.Par_LDRCODDEP.Value) then
               begin
               mnomdep:=DM1.Tb_Dep_LdrDNOME.Value;
               mcoddep:=DM1.Tb_Dep_LdrDCODDEP.Value;
               end
            else
               begin
               mcoddep :=pldr_coddep;
               mnomdep :=pldr_nomdep;
               end;
            end;
         end
      else
         begin
         if (trim(DM1.Tb_CPCADESCMV.Value)<>'') and
            (trim(DM1.Tb_CPCADESCMV.Value)<>'_') then
            mdesc_mov:=DM1.Tb_CPCADESCMV.Value
         else if (trim(DM1.Tb_ForFDESCMVD.AsString)='') or
                 (trim(DM1.Tb_ForFDESCMVD.AsString)='_') then
            mdesc_mov:=pldr_descmov
         else
            mdesc_mov:=DM1.Tb_ForFDESCMVD.Value;
         if (Trim(DM1.Tb_CPCACODCC.Value)<>'') and
            (Trim(DM1.Tb_CPCACODCC.Value)<>'') then
            begin
            mcodccu:=DM1.Tb_CPCACODCC.Value;
            mnomccu:=DM1.Tb_CPCANOMCC.Value;
            mnatdc :=DM1.Tb_CPCANATDC.Value;
            end
         else if (Trim(DM1.Tb_ForFCODCCD.AsString)='') or
                 (Trim(DM1.Tb_ForFCODCCD.AsString)='_') then
            begin
            mcodccu :=pldr_codccu;
            mnomccu :=pldr_nomccu;
            mnatdc  :=pldr_natdc;
            end
         else
            begin
            mcodccu :=DM1.Tb_ForFCODCCD.Value;
            mnomccu :=DM1.Tb_ForFNOMCCD.Value;
            if (DM1.Tb_ForFNATDCD.AsString='') or
               (DM1.Tb_ForFNATDCD.AsString='_') then
               mnatdc:='D'
            else
               mnatdc:=DM1.Tb_ForFNATDCD.AsString;
            end;
         if (trim(DM1.Tb_CPCACODDEP.Value)<>'') and
            (trim(DM1.Tb_CPCACODDEP.Value)<>'_') then
            begin
            mcoddep:=DM1.Tb_CPCACODDEP.Value;
            mnomdep:=DM1.Tb_CPCANOMDEP.Value;
            end
         else if (trim(DM1.Tb_ForFCODDEPD.AsString)='') or
                 (trim(DM1.Tb_ForFCODDEPD.AsString)='_') then
            begin
            mcoddep:=pldr_coddep;
            mnomdep:=pldr_nomdep;
            end
         else
            begin
            mcoddep:=DM1.Tb_ForFCODDEPD.Value;
            mnomdep:=DM1.Tb_ForFNOMDEPD.Value;
            end;
         end;


      DM1.Tb_CPCACODCTA.Value   :=codcai;
      DM1.Tb_CPCACODCC.Value    :=mcodccu;
      DM1.Tb_CPCACODDEP.Value   :=mcoddep;
      DM1.Tb_CPCADESCMV.Value   :=mdesc_mov;
      DM1.Tb_CPCANOMCTA.Value   :=pldr_nombco;
      DM1.Tb_CPCANOMCC.Value    :=mnomccu;
      DM1.Tb_CPCANOMDEP.Value   :=mnomdep;
      DM1.Tb_CPCANATDC.Value    :=mnatdc;

      mdesc_mov:=trim(mdesc_mov)+' No.'+DM1.Tb_CPCANUMERO.AsString+'-'+DM1.Tb_CPCADESD.AsString;
      mdesc_mov:=Trim(mdesc_mov)+' '+DM1.Tb_LDRNOME.Value;
      if length(mdesc_mov)>50 then
         mdesc_mov:=copy(mdesc_mov,1,50);


// novas condicoes

       if Qr_CPDupFPTIPO.Asinteger<>5 then
          begin
          mChaveIdLdr:=fCriarLDR(DM1.Tb_CPCACODEMP.AsInteger
            ,0 // Valor Real
            ,DM1.Tb_CPCAVALOR.Value-DM1.Tb_CPCAVALPAG.Value // Valor previsto
            ,DM1.Tb_CPCACODFOR.Value        // Codigo Cliente
            ,0
            ,DM1.Tb_CPCADTVCTO.Value // data prevista
            ,pdatanula // data real
            ,DM1.Tb_CPCADTEMIS.Value // data Referencia
            ,pdatanula // data de alteracao
            ,mcodccu
            ,mcoddep
            ,mnatdc
            ,mdesc_mov
            ,'DP-'+FormatFloat('000000',DM1.Tb_CPCANUMERO.Value)+'-'+DM1.Tb_CPCADESD.Value
            ,' '
            ,'FR'
            ,pldr_nombco // data real ,pldr_nombco
            ,mnomdep
            ,mnomccu
            ,DM1.Tb_CPnomefor.Value
            ,DM1.Tb_CPCAOBS.Value
            ,2
            ,codcai // ,codcai
            ,lotmov
            ,0 // status
            ,03); // origem
         DM1.Tb_CPCAID_LDR_NEW.Value:=mChaveIdLdr.idNew;

{
      if Qr_CPDupFPTIPO.Asinteger=5 then
         begin
         DM1.query1.close;
         DM1.query1.sql.clear;
         DM1.Query1.sql.add('update cadldr SET DATAREAL=:DATAREAL, DATAREF=:DATAREF, DATADP=:DATADP, VALORR=:VALORR WHERE LDR_ID_NEW=:ID_NEW ');
         DM1.Query1.parambyName('DATAREAL').AsDateTime := DM1.Tb_CPCADTVCTO.AsDateTime;
         DM1.Query1.parambyName('DATAREF').AsDateTime := DM1.Tb_CPCADTVCTO.AsDateTime;
         DM1.Query1.parambyName('DATADP').AsDateTime := DM1.Tb_CPCADTVCTO.AsDateTime;
         DM1.Query1.parambyName('VALORR').Asfloat := DM1.Tb_CPCAVALOR.AsFloat;
         DM1.Query1.parambyName('ID_NEW').Asfloat := DM1.Tb_CPCAID_LDR_NEW.AsFloat;
         try
            DM1.query1.ExecSQL;
            fdm1StartCommit;
         except on e : exception do
            begin
            ex_erroSql_Novo(DM1.Query1,884,'SGE','CADLDR');
            end;
            end;
         dm1.Query1.Close;
         end;
 }

      DM1.Tb_CPCACODLDR.Value:=mChaveIdLdr.codldr;
      end;
      DM1.Tb_CP.Post;

      end;
   Qr_CPDup.Next;
   end;
result:=true;
end;



function fCancelaNC(pSoTesta:Boolean;pCodfor,pValor: Real;pDtEmis:TDateTime): Boolean;
var
mOk: Boolean;
begin

DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.SQL.Add('Select CACODEMP,CANUMERO,CADESD,CACODFOR,CADTEMIS,CADTVCTO, '
                  +' CADUP, CASTATUS,CAVALOR,CAVALPAG,CACODLDR from CADDAP '
                  +' where '+fla_EmpBaixaAlta(0,'CADDAP','',codemp,'CACODEMP',' and ')
                  +' CACODFOR=0'+FloatToStr(pCodfor)
                  +' and CAVALOR=:VALOR '
                  +' and CADTEMIS=:DTEMIS '
                  +' and CADUP='+chr(39)+'5'+chr(39));

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
   if DM1.Query3.FieldByName('CAVALPAG').AsFloat>0 then
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
   if DM1.Query3.FieldByName('CACODLDR').AsFloat>0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Delete from CADLDR where CODEMP=0'+DM1.Query3.fieldbyName('CACODEMP').asString
                        +' and CODLDR=0'+DM1.Query3.fieldbyName('CACODLDR').AsString);
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
DM1.Query1.SQL.Add(' Delete from CADDAP '
                  +' where '+fla_EmpBaixaAlta(0,'CADDAP','',codemp,'CACODEMP',' and ')
                  +' CACODFOR=0'+FloatToStr(pCodfor)
                  +' and CAVALOR=:VALOR '
                  +' and CADTEMIS=:DTEMIS '
                  +' and CADUP='+chr(39)+'5'+chr(39));
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

end.

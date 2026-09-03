unit S_BChq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, Grids, db, dbtables, func, S_DM1,
  s_CbxChq, S_PChq, S_Impres,lerarq,func2, S_SelEmp;

type
  TFrm_BChq = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    NUMLOT: TEdit;
    Label2: TLabel;
    MDATA: TMaskEdit;
    Label3: TLabel;
    OBS1: TEdit;
    OBS2: TEdit;
    OBS3: TEdit;
    GroupBox1: TGroupBox;
    BBINCLUIR: TBitBtn;
    BBLOCALIZAR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    BBIMPRIMIR: TBitBtn;
    BBSAIR: TBitBtn;
    Panel5: TPanel;
    Label4: TLabel;
    NUMCHQ: TEdit;
    BANCO: TEdit;
    lbl_banco: TLabel;
    Label6: TLabel;
    SERIE: TEdit;
    Label13: TLabel;
    AGENCIA: TEdit;
    Label10: TLabel;
    CONTA: TEdit;
    ITEM_GRAVAR: TBitBtn;
    ITEM_CANCELAR: TBitBtn;
    bbItem_Excluir: TBitBtn;
    Label7: TLabel;
    NOMCLI: TEdit;
    Label8: TLabel;
    VALOR: TEdit;
    Label9: TLabel;
    DTDEP: TMaskEdit;
    Label11: TLabel;
    QTDCHQ: TEdit;
    Label12: TLabel;
    TOTCHQ: TEdit;
    STG1: TStringGrid;
    Qr_BCL01: TQuery;
    Qr_BCL01BL1CODEMP: TFloatField;
    Qr_BCL01BL1CHAVE: TFloatField;
    Qr_BCL01BL1DATA: TDateTimeField;
    Qr_BCL01BL1OBS01: TStringField;
    Qr_BCL01BL1OBS02: TStringField;
    Qr_BCL01BL1OBS03: TStringField;
    Qr_BCL02: TQuery;
    Qr_BCL02BL2CODEMP: TFloatField;
    Qr_BCL02BL2CHAVE: TFloatField;
    Qr_BCL02BL2SEQ: TFloatField;
    Qr_BCL02BL2CODCHQ: TFloatField;
    bbItem_pesquisar: TBitBtn;
    Qr_BCL02BL2LOTSEQ_CH: TFloatField;
    bbExportar: TBitBtn;
    MSEQ: TEdit;
    Label14: TLabel;
    MCODEMP: TEdit;
    lbl_empresa: TLabel;
    DTBRANCA: TMaskEdit;
    Qr_BCL02BL2CODEMP_CH: TFloatField;
    panel_caixa: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    MCODCAI_PAD: TEdit;
    MNOMCAI_PAD: TEdit;
    MLOTMOV: TEdit;
    Qr_BCL01BL1CAIXAPAD: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure ITEM_GRAVARClick(Sender: TObject);
    procedure ITEM_CANCELARClick(Sender: TObject);
    procedure bbItem_ExcluirClick(Sender: TObject);
    procedure BBLIMPARClick(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBLOCALIZARClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure MDATAExit(Sender: TObject);
    procedure bbItem_pesquisarClick(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure BBIMPRIMIRClick(Sender: TObject);
    procedure bbExportarClick(Sender: TObject);
    procedure MCODEMPExit(Sender: TObject);
    procedure MSEQExit(Sender: TObject);
    procedure NUMCHQExit(Sender: TObject);
    procedure BANCOExit(Sender: TObject);
    procedure SERIEExit(Sender: TObject);
    procedure AGENCIAExit(Sender: TObject);
    procedure CONTAExit(Sender: TObject);
    procedure STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure MCODCAI_PADKeyPress(Sender: TObject; var Key: Char);
    procedure MCODCAI_PADExit(Sender: TObject);
    procedure MLOTMOVExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function fcalcular(ptipo: Integer): Boolean;
    function fexcluir(ptipo: Integer): Boolean;
    function FTestarCheque(pTipo: Integer): Boolean;

  public

    { Public declarations }
    form_impres_bchq: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;
function fbChqCriarLdr(pTipo: Integer): Boolean;

var
  Frm_BChq : TFrm_BChq;
  mlin     : Integer;
  mnumlot  : Integer;
  moper    : Integer=0;
  mexcluiu_item:Boolean=false;
  mcol_numero : Integer;
  mcol_bco    : Integer;
  mcol_serie  : integer;
  mcol_agencia: integer;
  mcol_cc     : integer;
  mcol_sacado : integer;
  mcol_dtdep  : integer;
  mcol_valor  : integer;
  mcol_chave  : integer;
  mcol_lotseq : integer;
  mcol_codemp : integer;
  mcol_codldr_deb: Integer;
  mcol_codldr_cred: Integer;

  mcodcai_bchq : Integer;

implementation

uses S_ExpBChq;

{$R *.dfm}

procedure TFrm_BChq.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
mcol_numero :=0;
mcol_bco    :=1;
mcol_serie  :=2;
mcol_agencia:=3;
mcol_cc     :=4;
mcol_sacado :=5;
mcol_dtdep  :=6;
mcol_valor  :=7;
mcol_chave  :=8;
mcol_lotseq :=9;
mcol_codemp :=10;
mcol_codldr_deb :=11;
mcol_codldr_cred:=12;
STG1.RowCount:=2;
STG1.Rows[1].Clear;
STG1.Cells[mcol_numero,0]     :='Número';
STG1.Cells[mcol_bco,0]        :='Bco';
STG1.Cells[mcol_serie,0]      :='Série';
STG1.Cells[mcol_agencia,0]    :='Agência';
STG1.Cells[mcol_cc,0]         :='C/C';
STG1.Cells[mcol_sacado,0]     :='Sacado';
STG1.Cells[mcol_dtdep,0]      :='Dt.Depos';
STG1.Cells[mcol_valor,0]      :='Valor';
STG1.Cells[mcol_chave,0]      :='Código/seq';
STG1.Cells[mcol_lotseq,0]     :='Lote Seq';
STG1.Cells[mcol_codemp,0]     :='Empresa';
STG1.Cells[mcol_codldr_deb,0] :='Cod.Ldr.Deb';
STG1.Cells[mcol_codldr_cred,0]:='Cod.Ldr.Cred';

mcodcai_bchq :=codcai;
MCODCAI_PAD.Text:=IntToStr(mcodcai_bchq);
MLOTMOV.Text:=IntToStr(lotmov);
if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',MCODCAI_PAD.Text) then
   MNOMCAI_PAD.Text:=DM1.Query1.Fields[0].AsString;


end;

procedure TFrm_BChq.ITEM_GRAVARClick(Sender: TObject);
var
x: Integer;
begin
if not FTestarCheque(0) then
   begin
   fMensagem('Cheque não encontrado!',0,['0'],0);
   NUMCHQ.SetFocus;
   exit;
   end;
if DM1.Tb_ChqCHSTATUS.Value=2 then
   begin
   fMensagem('Este Cheque ja foi Baixado no Lote: '+DM1.Tb_ChqCHLOTEBX.AsString,0,['0'],0);
   NUMCHQ.SetFocus;
   exit;
   end;

if moper=0 then
   begin
   for x:=1 to STG1.RowCount do
      begin
      if Trim(STG1.Cells[mcol_numero,x])='' then
         continue;
      if (valfloat(NUMCHQ.Text)   =valfloat(STG1.Cells[mcol_numero,x])) and
         (valfloat(BANCO.Text)    =valfloat(STG1.Cells[mcol_bco,x])) and
         (Trim(SERIE.Text)        =Trim(STG1.Cells[mcol_serie,x]))     and
         (Trim(AGENCIA.Text)      =Trim(STG1.Cells[mcol_agencia,x]))     and
         (Trim(CONTA.Text)        =Trim(STG1.Cells[mcol_cc,x]))     and
         (Fsonumero(MCODEMP.Text) =Fsonumero(STG1.Cells[mcol_codemp,x]))     and
         (Fsonumero(MSEQ.Text)    =Fsonumero(STG1.Cells[mcol_chave,x]))     then
         begin
         fMensagem('Cheque já digitado!',0,['0'],0);
         NUMCHQ.SetFocus;
         exit;
         end;
      end;
   end;

if moper>0 then
   begin
   mlin:=STG1.row;
   mlin:=mlin+1;
   end
else
   begin
   mlin:=STG1.RowCount;
   STG1.RowCount:=mlin+1;
   STG1.Rows[mlin+1].Clear;
   STG1.Rows[mlin].Clear;
   end;
STG1.Cells[mcol_numero,mlin-1]     :=NUMCHQ.Text;
STG1.Cells[mcol_bco,mlin-1]        :=BANCO.Text;
STG1.Cells[mcol_serie,mlin-1]      :=SERIE.Text;
STG1.Cells[mcol_agencia,mlin-1]    :=AGENCIA.Text;
STG1.Cells[mcol_cc,mlin-1]         :=CONTA.Text;
STG1.Cells[mcol_sacado,mlin-1]     :=DM1.Tb_Chqnomcli.Value;
STG1.Cells[mcol_dtdep,mlin-1]      :=FormatDateTime(fdt2,DM1.Tb_ChqCHDTDEP.Value);
STG1.Cells[mcol_valor,mlin-1]      :=insere(FormatFloat(mcasas,DM1.Tb_ChqCHVALOR.Value),' ',10);
STG1.Cells[mcol_chave,mlin-1]      :=DM1.Tb_ChqCHSEQ.AsString;
STG1.Cells[mcol_lotseq,mlin-1]     :=DM1.Tb_ChqCHLOTSEQ.AsString;
STG1.Cells[mcol_codemp,mlin-1]     :=DM1.Tb_ChqCHCODEMP.AsString;
STG1.Cells[mcol_codldr_deb,mlin-1] :=DM1.Tb_ChqCHCODLDR_DEB.AsString;
STG1.Cells[mcol_codldr_Cred,mlin-1]:=DM1.Tb_ChqCHCODLDR_CRED.AsString;

fcalcular(0);
NUMCHQ.Text :='';
BANCO.Text  :='';
SERIE.Text  :='';
AGENCIA.Text:='';
CONTA.Text  :='';
NOMCLI.Text :='';
VALOR.Text  :='';
DTDEP.Text  :='/  /';
MCODEMP.Text:=IntToStr(codemp);
MSEQ.Text   :='';
MCODEMP.SetFocus;


end;
function TFrm_Bchq.fcalcular(ptipo: Integer): Boolean;
var
x: Integer;
mtotal: Real;
begin
mtotal:=0;
QTDCHQ.Text:=IntToStr(STG1.RowCount-2);
for x:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[mcol_numero,x])='' then
      continue;
   mtotal:=mtotal+valfloat(STG1.Cells[mcol_valor,x]);
   end;
TOTCHQ.Text:=insere(Formatfloat(mcasas,mtotal),' ',10);
QTDCHQ.Update;
TOTCHQ.Update;
result:=True;
end;

function TFrm_Bchq.fexcluir(ptipo: Integer): Boolean;
{

}
var
x: Integer;
begin
for x:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[mcol_numero,x])='' then
      continue;
   if flcadchq(6,0,ValInt(STG1.Cells[mcol_codemp,x]), //cod empresa
                   ValInt(STG1.Cells[mcol_lotseq,x]), // lotseq
                   fsonumero(STG1.Cells[mcol_chave,x]), // numero seq
                   pvazio,pvazio,pvazio,pvazio,pvazio,Form_SelEmp.CLB_EMPRESAS) then
      begin
      DM1.Tb_chq.Edit;
      DM1.Tb_ChqCHSTATUS.Value     :=0;
      DM1.Tb_ChqCHLOTEBX.Value     :=0;
      DM1.Tb_ChqCHDTBX.AsString    :=FormatDateTime(fdt2,StrToDate(DTBRANCA.Text));


      if DM1.Tb_ChqCHCODLDR_CRED.AsFloat>0 then
         begin
         DM1.Query2.Close;
         DM1.Query2.SQL.clear;
         DM1.Query2.SQL.Add('Delete from CADLDR '
                           +' where '+iif(DM1.Qr_TID.locate('TINOME','CADCHQ',[]),'','CODEMP=0'+DM1.Tb_ChqCHCODEMP.AsString+' and ')
                           +' CODLDR=0'+DM1.Tb_ChqCHCODLDR_CRED.AsString
                           +' and LOTSEQ=0'+DM1.Tb_ChqCHLOTSEQ_FC.AsString);
         try
            DM1.query2.ExecSQL;
            fdm1StartCommit;
         except
            end;
         end;

      if DM1.Tb_ChqCHCODLDR_DEB.AsFloat>0 then
         begin
         DM1.Query2.Close;
         DM1.Query2.SQL.clear;
         DM1.Query2.SQL.Add('Delete from CADLDR '
                           +' where '+iif(DM1.Qr_TID.locate('TINOME','CADCHQ',[]),'','CODEMP=0'+DM1.Tb_ChqCHCODEMP.AsString+' and ')
                           +' CODLDR=0'+DM1.Tb_ChqCHCODLDR_DEB.AsString
                           +' and LOTSEQ=0'+DM1.Tb_ChqCHLOTSEQ_FC.AsString);
         try
            DM1.query2.ExecSQL;
            fdm1StartCommit;
         except
            end;
         end;
      DM1.Tb_ChqCHCODLDR_DEB.AsFloat :=0;
      DM1.Tb_ChqCHCODLDR_CRED.AsFloat:=0;
      DM1.Tb_ChqCHCODBCO_CRED.AsFloat:=0;
      DM1.Tb_ChqCHCODBCO_DEB.AsFloat :=0;

      DM1.Tb_Chq.Post;
      end;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADBCL01 where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADCHQ',[]),'',' BL1CODEMP=0'+Qr_BCL01BL1CODEMP.AsString+' and ')
                  +' BL1CHAVE=0'+Qr_BCL01BL1CHAVE.AsString
                  +' and (BL1LOCAL is null or BL1LOCAL=0) ');
DM1.Query1.ExecSQL;
fdm1StartCommit;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADBCL02 where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADCHQ',[]),'',' BL2CODEMP=0'+Qr_BCL01BL1CODEMP.AsString+' and ')
                  +' BL2CHAVE=0'+Qr_BCL01BL1CHAVE.AsString
                  +' and (BL2LOCAL is null or BL2LOCAL=0) ');
DM1.Query1.ExecSQL;
fdm1StartCommit;
result:=True;
end;

procedure TFrm_BChq.ITEM_CANCELARClick(Sender: TObject);
begin
NUMCHQ.Text:='';
BANCO.Text :='';
SERIE.Text :='';
CONTA.Text :='';
NOMCLI.Text:='';
VALOR.Text :='';
DTDEP.Text :='/  /';
NUMCHQ.SetFocus;
MCODEMP.Text:=IntToStr(codemp);
MSEQ.Text  :='';
end;

procedure TFrm_BChq.bbItem_ExcluirClick(Sender: TObject);
var
x: Integer;
begin
mlin:=STG1.Row;

if (STG1.Cells[mcol_numero,1]='') or (STG1.Cells[mcol_numero,mlin]='') then
   exit;
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if flcadchq(6, // tipo
   0, // ppre
   ValInt(STG1.Cells[mcol_codemp,mlin]) // codigo da empresa
   ,ValInt(STG1.Cells[mcol_lotseq,mlin]), // lote de sequencia
   ValFloat(STG1.Cells[mcol_chave,mlin]), // chave do titulo
   pvazio,pvazio,pvazio,pvazio,pvazio,Form_SelEmp.CLB_EMPRESAS) then
   begin
   DM1.Tb_chq.Edit;
   DM1.Tb_ChqCHSTATUS.Value     :=0;
   DM1.Tb_ChqCHLOTEBX.Value     :=0;
   DM1.Tb_ChqCHDTBX.AsString    :=FormatDateTime('DD/MM/YYYY',STRTODATE(DTBRANCA.Text));


   if DM1.Tb_ChqCHCODLDR_CRED.AsFloat>0 then
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.clear;
      DM1.Query2.SQL.Add('Delete from CADLDR '
                        +' where '+iif(DM1.Qr_TID.locate('TINOME','CADCHQ',[]),'','CODEMP=0'+DM1.Tb_ChqCHCODEMP.AsString+' and ')
                        +' CODLDR=0'+DM1.Tb_ChqCHCODLDR_CRED.AsString
                        +' and LOTSEQ=0'+DM1.Tb_ChqCHLOTSEQ_FC.AsString);
      try
         DM1.query2.ExecSQL;
         fdm1StartCommit;
      except
         end;
      end;

   if DM1.Tb_ChqCHCODLDR_DEB.AsFloat>0 then
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.clear;
      DM1.Query2.SQL.Add('Delete from CADLDR '
                        +' where '+iif(DM1.Qr_TID.locate('TINOME','CADCHQ',[]),'','CODEMP=0'+DM1.Tb_ChqCHCODEMP.AsString+' and ')
                        +' CODLDR=0'+DM1.Tb_ChqCHCODLDR_DEB.AsString
                        +' and LOTSEQ=0'+DM1.Tb_ChqCHLOTSEQ_FC.AsString);
      try
         DM1.query2.ExecSQL;
         fdm1StartCommit;
      except
         end;
      end;
   DM1.Tb_ChqCHCODLDR_DEB.AsFloat :=0;
   DM1.Tb_ChqCHCODLDR_CRED.AsFloat:=0;
   DM1.Tb_ChqCHCODBCO_CRED.AsFloat:=0;
   DM1.Tb_ChqCHCODBCO_DEB.AsFloat :=0;
   DM1.Tb_Chq.Post;
   DM1.Tb_Chq.ApplyUpdates;
   end;


if STG1.RowCount=2 then
   STG1.Rows[1].Clear
else
   begin
   for x:=STG1.Row to STG1.RowCount-2 do
      begin

      STG1.Cells[00,x]              :=STG1.Cells[00,x+1];
      STG1.Cells[01,x]              :=STG1.Cells[01,x+1];
      STG1.Cells[02,x]              :=STG1.Cells[02,x+1];
      STG1.Cells[03,x]              :=STG1.Cells[03,x+1];
      STG1.Cells[04,x]              :=STG1.Cells[04,x+1];
      STG1.Cells[05,x]              :=STG1.Cells[05,x+1];
      STG1.Cells[06,x]              :=STG1.Cells[06,x+1];
      STG1.Cells[07,x]              :=STG1.Cells[07,x+1];
      STG1.Cells[08,x]              :=STG1.Cells[08,x+1];
      STG1.Cells[09,x]              :=STG1.Cells[09,x+1];
      STG1.Cells[mcol_codemp,x]     :=STG1.Cells[mcol_codemp,x+1];
      STG1.Cells[mcol_codldr_deb,x] :=STG1.Cells[mcol_codldr_deb,x+1];
      STG1.Cells[mcol_codldr_Cred,x]:=STG1.Cells[mcol_codldr_Cred,x+1];

      end;
   STG1.RowCount:=STG1.RowCount-1;
   end;
mexcluiu_item:=true;
fcalcular(0);
end;

procedure TFrm_BChq.BBLIMPARClick(Sender: TObject);
begin
if (moper=1) and (mexcluiu_item) then
   begin
   Qr_BCL02.First;
   While not Qr_BCL02.Eof do
      begin
      if flcadchq(6,0,Qr_BCL02BL2CODEMP.AsInteger,
                      Qr_BCL02BL2LOTSEQ_CH.AsInteger,
                      Qr_BCL02BL2SEQ.AsFloat,
                      pvazio,pvazio,pvazio,pvazio,pvazio,Form_SelEmp.CLB_EMPRESAS) then
        begin
        if (DM1.Tb_ChqCHSTATUS.Value=2) and (DM1.Tb_ChqCHLOTEBX.AsFloat<>mnumlot) then
           begin
           fMensagem('O Cheque Numero: '+DM1.Tb_ChqCHNUMERO.AsString+' Valor: '+Formatfloat(mcasas, DM1.Tb_ChqCHVALOR.Value)
                    +'ja esta lançado do lote: '+DM1.Tb_ChqCHLOTEBX.AsString,0,['0'],0);
           Qr_BCL02.Next;
           Continue;
           end
        else
           begin
           DM1.Tb_Chq.Edit;
           DM1.Tb_ChqCHLOTEbx.Value     := mnumlot;
           DM1.Tb_ChqCHDTBX.Value       := pdatasis;
           DM1.Tb_ChqCHSTATUS.Value     := 2;
           fbChqCriarLdr(1);
           DM1.tb_Chq.Post;
           end;
        end;
      end;
   Qr_BCL02.Next;
   end;
NUMLOT.Text:='';
MDATA.Text :='/  /';
OBS1.Text  :='';
OBS2.Text  :='';
OBS3.Text  :='';
NUMCHQ.Text:='';
BANCO.Text :='';
SERIE.Text :='';
AGENCIA.Text:='';
CONTA.Text  :='';
NOMCLI.Text :='';
VALOR.Text  :='';
DTDEP.Text  :='/  /';
QTDCHQ.Text :='';
TOTCHQ.Text :='';
MCODEMP.Text:=IntTostr(codemp);
MSEQ.Text   :='';
moper:=0;
stg1.RowCount:=2;
STG1.Rows[1].Clear;
STG1.Rows[2].Clear;
Panel4.Enabled   :=False;
GroupBox1.Enabled:=False;
BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;
bbExportar.Enabled :=False;
mexcluiu_item:=false;

end;

procedure TFrm_BChq.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_BChq.BBINCLUIRClick(Sender: TObject);
begin
If BBGRAVAR.Enabled then
   begin
   Case fMensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2'],0) of
      mrYes: BBGRAVAR.Click;
      end;
   end;
BBLIMPAR.Click;
Panel4.Enabled   :=True;
GroupBox1.Enabled:=True;
BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=True;
BBIMPRIMIR.Enabled :=False;
bbExportar.Enabled :=False;
MDATA.Text:=FormatDateTime(Fdt2,pdatasis);
moper:=0;
MDATA.SetFocus;
end;

procedure TFrm_BChq.BBLOCALIZARClick(Sender: TObject);
begin
if moper<>3 then
   begin
   if Frm_CBxChq=nil then
      Application.CreateForm(TFrm_CBxChq, Frm_CBxChq)
   else
      begin
      Frm_CBxChq.Free;
      Frm_CBxChq:=nil;
      Application.CreateForm(TFrm_CBxCHq, Frm_CBxChq);
      end;


   Frm_CBxchq.ShowModal;
   mnumlot:=Frm_CBxChq.Qr_BxChqBL1CHAVE.AsInteger;
   Frm_CBxChq.Free;
   Frm_CBxChq:=nil;
   end;
BBLIMPAR.Click;
Qr_BCL01.Close;
Qr_BCL01.SQL.Clear;
Qr_BCL01.SQL.Add('Select * from CADBCL01 where ');
if DM1.Qr_TID.Locate('TINOME','CADCHQ',[]) then
   Qr_BCL01.SQL.add(' BL1CHAVE=0'+IntToStr(mnumlot)
                   +' and (BL1LOCAL is null or BL1LOCAL=0) '
                   +' order by BL1CHAVE')
else
   Qr_BCL01.SQL.add(' BL1CODEMP=0'+IntTostr(codemp)
                   +' and BL1CHAVE=0'+IntToStr(mnumlot)
                   +' and (BL1LOCAL is null or BL1LOCAL=0) '
                   +' order by BL1CHAVE');
Qr_BCL01.Open;
if Qr_BCL01.Eof then
   begin
   fMensagem('Lote não Encontrado',0,['0'],0);
   exit;
   end;
Qr_BCL02.Close;
Qr_BCL02.SQL.Clear;
Qr_BCL02.SQL.Add('Select * from CADBCL02 where ');
if DM1.Qr_TID.Locate('TINOME','CADCHQ',[]) then
   Qr_BCL02.SQL.add(' BL2CHAVE=0'+IntToStr(mnumlot)
                  +' and (BL2LOCAL is null or BL2LOCAL=0) '
                   +' order by BL2CHAVE,BL2SEQ')
else
   Qr_BCL02.SQL.add(' BL2CODEMP=0'+intTostr(codemp)
                   +' and BL2CHAVE=0'+IntToStr(mnumlot)
                   +' and (BL2LOCAL is null or BL2LOCAL=0) '

                   +' order by BL2CHAVE,BL2SEQ');
Qr_BCL02.Open;
NUMLOT.Text :=Qr_BCL01BL1CHAVE.AsString;
MDATA.Text  :=FormatDatetime(fdt2, Qr_BCL01BL1DATA.Value);
OBS1.Text   :=Qr_BCL01BL1OBS01.Value;
OBS2.Text   :=Qr_BCL01BL1OBS02.Value;
OBS3.Text   :=Qr_BCL01BL1OBS03.Value;
if Qr_BCL01BL1CAIXAPAD.AsFloat<>0 then
   begin
   MCODCAI_PAD.Text:=Qr_BCL01BL1CAIXAPAD.AsString;
   MCODCAI_PADExit(self);
   end;

Qr_BCL02.First;
STG1.RowCount:=2;
STG1.Rows[1].Clear;
While not Qr_BCL02.Eof do
   begin
   mlin:=STG1.RowCount;
   STG1.RowCount:=mlin+1;
   STG1.Rows[mlin+1].Clear;
   STG1.Rows[mlin].Clear;

   if flcadchq(6,0,Qr_BCL02BL2CODEMP_CH.AsInteger,Qr_BCL02BL2LOTSEQ_CH.AsInteger,Qr_BCL02BL2CODCHQ.AsFloat,pvazio,pvazio,pvazio,pvazio,pvazio,Form_SelEmp.CLB_EMPRESAS) then
      begin
      STG1.Cells[mcol_numero,mlin-1]     :=DM1.Tb_ChqCHNUMERO.AsString;
      STG1.Cells[mcol_bco,mlin-1]        :=DM1.Tb_ChqCHBANCO.AsString;
      STG1.Cells[mcol_serie,mlin-1]      :=DM1.Tb_ChqCHSERIE.AsString;
      STG1.Cells[mcol_agencia,mlin-1]    :=DM1.Tb_ChqCHAGENCIA.AsString;
      STG1.Cells[mcol_cc,mlin-1]         :=DM1.Tb_ChqCHCC.AsString;
      STG1.Cells[mcol_sacado,mlin-1]     :=DM1.Tb_Chqnomcli.AsString;
      STG1.Cells[mcol_dtdep,mlin-1]      :=FormatDateTime(fdt,DM1.Tb_ChqCHDTDEP.value);
      STG1.Cells[mcol_valor,mlin-1]      :=insere(FormatFloat(mcasas, DM1.Tb_ChqCHVALOR.Value),' ',10);
      STG1.Cells[mcol_chave,mlin-1]      :=DM1.Tb_ChqCHSEQ.AsString;
      STG1.Cells[mcol_lotseq,mlin-1]     :=DM1.Tb_ChqCHLOTSEQ.AsString;
      STG1.Cells[mcol_codemp,mlin-1]     :=DM1.Tb_ChqCHCODEMP.AsString;
      STG1.Cells[mcol_codldr_deb,mlin-1] :=DM1.Tb_ChqCHCODLDR_DEB.AsString;
      STG1.Cells[mcol_codldr_Cred,mlin-1]:=DM1.Tb_ChqCHCODLDR_CRED.AsString;
      end;
   Qr_BCL02.Next;
   end;
BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=True;
BBEXCLUIR.Enabled  :=True;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=True;
if not DM1.Qr_TID.Locate('TINOME','CADCHQ',[]) then
   bbExportar.Enabled :=true;

fcalcular(0);
end;

procedure TFrm_BChq.BBGRAVARClick(Sender: TObject);
var
mcod,x: Integer;
begin
if Trim(MDATA.Text)='/  /' then
   begin
   fMensagem('Data Campo Obrigatório!',0,['0'],0);
   MDATA.SetFocus;
   exit;
   end;
if Trim(OBS1.Text)='' then
   begin
   fMensagem('A primeira linha da descrição é obrigatória',0,['0'],0);
   OBS1.SetFocus;
   exit;
   end;
if STG1.RowCount<3 then
   begin
   fMensagem('Não há cheques selecionados.',0,['0'],0);
   NUMCHQ.SetFocus;
   exit;
   end;
if moper=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQl.add('Select max(BL1CHAVE) from CADBCL01 ');
   if DM1.Qr_TID.Locate('TINOME','CADCHQ',[]) then
      DM1.Query1.Sql.add(' where BL1CODEMP=0'+IntTostr(codemp)
                        +' and (BL1LOCAL is null or BL1LOCAL=0) '
                        +' order by BL1CODEMP,BL1CHAVE')
   else
      DM1.Query1.sql.add(' where (BL1LOCAL is null or BL1LOCAL=0) '
                        +' order by BL1CHAVE ');

   try
      DM1.Query1.Open;
   except
      DM1.Query1.SQL.Savetofile('C:\SQL.TXT');
      end;
   mnumlot:=DM1.Query1.Fields[0].AsInteger+1;
   end
else
   begin
   fexcluir(0);
   end;

DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('Insert into CADBCL01 ('
                  +'BL1CODEMP,BL1CHAVE,BL1LOCAL,BL1DATA,'
                  +'BL1OBS01,BL1OBS02,BL1OBS03,BL1CAIXAPAD,BL1DATHOR_EVE) values ('
                  +intTostr(codemp)+','
                  +IntTostr(mnumlot)+','
                  +'0,' // local 0-a Receber 1-Apagar
                  +chr(39)+FormatDateTime(fdt, StrtoDate(MDATA.Text))+chr(39)+','
                  +':OBS1, :OBS2, :OBS3'
                  +','+fdeixanum(MCODCAI_PAD.Text)
                  +',:BL1DATHOR_EVE )');
DM1.Query1.ParamByName('OBS1').AsString:=OBS1.Text;
DM1.Query1.ParamByName('OBS2').AsString:=OBS2.Text;
DM1.Query1.ParamByName('OBS3').AsString:=OBS3.Text;
DM1.Query1.ParamByName('BL1DATHOR_EVE').AsDateTime:=Date;
DM1.Query1.ExecSQL;

for x:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[mcol_numero,x])='' then
      Continue;
   if not flcadchq(6,0,ValInt(STG1.Cells[mcol_codemp,x]),ValInt(STG1.Cells[mcol_lotseq,x]),ValFloat(STG1.Cells[mcol_chave,x]),'',pvazio,pvazio,pvazio,pvazio,Form_SelEmp.CLB_EMPRESAS) then
      begin
      fMensagem('Erro ao ler o Cheque Numero: '+STG1.Cells[mcol_numero,x]+' Valor: '+STG1.Cells[mcol_valor,x],0,['0'],0);
      continue;
      end;
   if (DM1.Tb_ChqCHSTATUS.Value=2) and (DM1.Tb_ChqCHLOTEBX.AsFloat<>mnumlot) then
      begin
      fMensagem('O Cheque Numero: '+STG1.Cells[mcol_numero,x]+' Valor: '+STG1.Cells[mcol_valor,x]
                 +'ja esta lançado do lote: '+DM1.Tb_ChqCHLOTEBX.AsString,0,['0'],0);
      Continue;
      end;
//   if moper=0 then
//      begin
      DM1.Tb_Chq.Edit;
      DM1.Tb_ChqCHLOTEbx.Value     := mnumlot;
      DM1.Tb_ChqCHDTBX.Value       := pdatasis;
      DM1.Tb_ChqCHSTATUS.Value     := 2;

      fbChqCriarLdr(0);

       DM1.tb_Chq.Post;


//   end else
//   begin
//       DM1.Tb_chq.Edit;
//       DM1.Tb_ChqCHSTATUS.Value     := 0;
//       DM1.Tb_ChqCHLOTEBX.Value     := 0;
//       DM1.Tb_ChqCHDTBX.AsString    := FormatDateTime('DD/MM/YYYY',STRTODATE(DTBRANCA.Text));
//       DM1.Tb_Chq.Post;
//       DM1.Tb_Chq.ApplyUpdates;
//   end;

   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.SQL.Add('select max(BL2SEQ) from CADBCL02');
   if DM1.Qr_Tid.Locate('TINOME','CADCHQ',[]) then
      DM1.Query1.SQL.Add(' where BL2CODEMP=0'+IntTostr(codemp)
                        +' and (BL2LOCAL is null or BL2LOCAL=0) '
                        +' order by BL2CODEMP,BL2SEQ')
   else
      DM1.Query1.Sql.add(' where (BL2LOCAL is null or BL2LOCAL=0) '
                        +' order by BL2SEQ');
   DM1.Query1.Open;
   mcod:=DM1.Query1.Fields[0].AsInteger+1;

   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.add('Insert into CADBCL02 ('
                     +'BL2CODEMP,'
                     +'BL2CHAVE,'
                     +'BL2LOCAL,'
                     +'BL2CODEMP_CH,'
                     +'BL2LOTSEQ_CH,'
                     +'BL2SEQ,'
                     +'BL2CODCHQ) values ('
                     +IntToStr(codemp)+','
                     +IntTostr(mnumlot)+','
                     +'0,' // local 0-contas a receber 1-a pagar
                     +DM1.Tb_ChqCHCODEMP.AsString+','
                     +DM1.Tb_ChqCHLOTSEQ.AsString+','
                     +IntTostr(mcod)+','
                     +DM1.Tb_ChqCHSEQ.AsString+')');
   DM1.Query1.ExecSQL;
   fDM1StartCommit;
   end;
moper:=3;
BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;
bbExportar.Enabled :=false;

BBLOCALIZAR.Click;
end;

procedure TFrm_BChq.MDATAExit(Sender: TObject);
begin
try
   MDATA.Text:=FormatDatetime(fdt2, StrtoDate(MDATA.Text));
except
   fMensagem('Data Invalida!',0,['0'],0);
   MDATA.SetFocus;
   end;
end;

procedure TFrm_BChq.bbItem_pesquisarClick(Sender: TObject);
var
mlin,x: Integer;
mtem: Boolean;
begin

if Frm_Pchq=nil then
   Application.CreateForm(TFrm_Pchq, Frm_Pchq)
else
   begin
   Frm_Pchq.Free;
   Frm_Pchq:=nil;
   Application.CreateForm(TFrm_Pchq, Frm_Pchq);
   end;


Frm_Pchq.ShowModal;
Frm_PChq.Qr_Chq.First;

While not Frm_PChq.Qr_Chq.Eof do
   begin
   if Frm_PChq.Qr_ChqOK.AsString<>'X' then
      begin
      Frm_PChq.Qr_Chq.Next;
      Continue;
      end;
   mtem:=False;
   for mlin:=1 to STG1.RowCount do
      begin
      if Trim(STG1.Cells[mcol_numero,mlin])='' then
         continue;
      if (Frm_PChq.Qr_ChqCHSEQ.AsFloat   =valfloat(STG1.Cells[mcol_chave,mlin])) and
         (Frm_PChq.Qr_ChqCHCODEMP.AsFloat=valfloat(STG1.Cells[mcol_codemp,mlin])) then
         begin
         fMensagem('Cheque Numero.: '+STG1.Cells[mcol_numero,mlin]+' Valor: '+STG1.Cells[mcol_valor,mlin]+#13
                    +'Ja esta relacionado.',0,['0'],0);
         mtem:=True;
         exit;
         end;
      end;
   if mtem then
      Continue;
   mlin:=STG1.RowCount;
   STG1.RowCount:=mlin+1;
   STG1.Rows[mlin+1].Clear;
   STG1.Rows[mlin].Clear;
   STG1.Cells[mcol_numero,mlin-1]     :=Frm_PChq.Qr_ChqCHNUMERO.AsString;
   STG1.Cells[mcol_bco,mlin-1]        :=Frm_PChq.Qr_ChqCHBANCO.AsString;
   STG1.Cells[mcol_serie,mlin-1]      :=Frm_PChq.Qr_ChqCHSERIE.AsString;
   STG1.Cells[mcol_agencia,mlin-1]    :=Frm_PChq.Qr_ChqCHAGENCIA.AsString;
   STG1.Cells[mcol_cc,mlin-1]         :=Frm_PChq.Qr_ChqCHCC.AsString;
   STG1.Cells[mcol_sacado,mlin-1]     :=Frm_PChq.Qr_ChqCRAZAO.AsString;
   STG1.Cells[mcol_dtdep,mlin-1]      :=FormatDateTime(fdt2, Frm_PChq.Qr_ChqCHDTDEP.Value);
   STG1.Cells[mcol_valor,mlin-1]      :=FormatFloat(mcasas, Frm_PChq.Qr_ChqCHVALOR.Value);
   STG1.Cells[mcol_chave,mlin-1]      :=Frm_PChq.Qr_ChqCHSEQ.AsString; // codigo
   STG1.Cells[mcol_lotseq,mlin-1]     :=Frm_PChq.Qr_ChqCHLOTSEQ.AsString; // lotseq
   STG1.Cells[mcol_codemp,mlin-1]     :=Frm_PChq.Qr_ChqCHCODEMP.AsString; // empresa
   STG1.Cells[mcol_codldr_deb,mlin-1] :=Frm_PChq.Qr_ChqCHCODLDR_DEB.AsString; // empresa
   STG1.Cells[mcol_codldr_Cred,mlin-1]:=Frm_PChq.Qr_ChqCHCODLDR_CRED.AsString; // empresa
   Frm_PChq.Qr_Chq.Next;

   end;
Frm_Pchq.Free;
Frm_Pchq:=nil;
fcalcular(0);

end;

procedure TFrm_BChq.BBALTERARClick(Sender: TObject);
begin
Panel4.Enabled   :=True;
GroupBox1.Enabled:=True;
BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=True;
BBIMPRIMIR.Enabled :=False;
bbExportar.Enabled :=false;

moper:=1;
MDATA.SetFocus;
end;

procedure TFrm_BChq.BBEXCLUIRClick(Sender: TObject);
begin
if fMensagem('Quer realmente excluir este Lote?',0,['1','2'],0)<>mrYes then
   exit;
fexcluir(0);
BBLIMPAR.Click;
fMensagem('Lote Excluido',0,['0'],0);

end;

procedure TFrm_BChq.BBIMPRIMIRClick(Sender: TObject);
var
mtotg: Real;
mlin, mpag: Integer;
begin
Qr_BCL02.First;
if Qr_BCL02.Eof then
   begin
   Fmensagem('nao ha nada a ser impresso.',0,['0'],0);
   exit;
   end;
testeform := TFrm_BChq(FindGlobalComponent('form_impres_bchq'));
if (testeform=nil)  then
   begin
   Application.CreateForm(Tfrm_Impres, form_impres_bchq);
   end;


form_impres_bchq.fimpresajustaimp(1,80,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mlin:=0;
mpag:=0;
mtotg:=0;
while not Qr_BCL02.Eof do
   begin
   flcadchq(6,0,Qr_BCL02BL2CODEMP_CH.AsInteger,Qr_BCL02BL2LOTSEQ_CH.AsInteger,Qr_BCL02BL2CODCHQ.AsFloat,pvazio,pvazio,pvazio,pvazio,pvazio,Form_SelEmp.CLB_EMPRESAS);

   if mlin=0 then
      begin
      mlin:=form_impres_bchq.fImprimirCabecalho(136,'Relatorio de Cheques Baixado.');
      mlin:=mlin+1;

      form_impres_bchq.Rdprint1.Impf(03,01,Centra('Lote.: '+Qr_BCL01BL1CHAVE.AsString+' data: '+FormatDateTime(fdt2,Qr_BCL01BL1DATA.Value),' ',60),mneg);
      mlin:=4;
      form_impres_bchq.Rdprint1.Impf(mlin,01,Centra(Qr_BCL01BL1OBS01.Value,' ',60),mneg);
      if Trim(Qr_BCL01BL1OBS02.Value)<>'' then
         begin
         mlin:=mlin+1;
         form_impres_bchq.Rdprint1.Impf(mlin,01,Centra(Qr_BCL01BL1OBS02.Value,' ',60),mneg);
         end;
      if Trim(Qr_BCL01BL1OBS03.Value)<>'' then
         begin
         mlin:=mlin+1;
         form_impres_bchq.Rdprint1.Impf(mlin,01,Centra(Qr_BCL01BL1OBS03.Value,' ',60),mneg);
         end;
      mlin:=mlin+1;
      form_impres_bchq.RDprint1.ImpF(mlin,01,'+------------------------------------------------+-----------+--------+----------+-------+---+----------+------------------------------+',mreduz);
      mlin:=mlin+1;
      form_impres_bchq.Rdprint1.Impf(mlin,01,'|Cliente                                         |      Valor|Dt.Emiss|Dt.Deposit|Numero |Bco|Serie     |Emitente                      |',mreduz);
      end;
   mlin:=mlin+1;
   form_impres_bchq.Rdprint1.Impf(mlin,01,'|'+FormatFloat('0000000',DM1.Tb_ChqCHCODCLI.Value)+'-'
                                   +insere2(DM1.Tb_Chqnomcli.Value,' ',40)
                                   +'|'+insere(Format('%8.2n',[DM1.Tb_ChqCHVALOR.Value]),' ',11)+'|'
                                   +FormatDateTime('dd/mm/yy',DM1.Tb_ChqCHDTEMIS.Value)+'|'+FormatDateTime('dd/mm/yyyy',DM1.Tb_ChqCHDTDEP.Value)
                                   +'|'+insere(DM1.Tb_ChqCHNUMERO.AsString,' ',7)+'|'
                                   +insere(DM1.Tb_ChqCHBANCO.AsString,' ',3)+'|'
                                   +insere2(DM1.Tb_ChqCHSERIE.Value,' ',10)+'|'
                                   +insere2(DM1.Tb_ChqCHEMIT.Value,' ',30)+'|',mreduz);
   mtotg:=mtotg+DM1.Tb_ChqCHVALOR.Value;
   Qr_BCL02.Next;
   if Qr_BCL02.Eof then
      begin
      if mtotg>0 then
         begin
         mlin:=mlin+1;
         form_impres_bchq.Rdprint1.Impf(mlin,01,'| - Total Geral..................................|'
                                 +insere(Formatfloat('###,##0.00',mtotg),' ',11)
                                 +'|        |          |       |   |          |                              |',mreduz);
         end;

      mlin:=mlin+1;
      form_impres_bchq.RDprint1.ImpF(mlin,01,'+Fim.--------------------------------------------+-----------+--------+----------+-------+---+----------+------------------------------+',mreduz);
      end
   else if mlin>60 then
      begin
      mlin:=mlin+1;
      form_impres_bchq.RDprint1.ImpF(mlin,01,'+Continua.---------------------------------------+-----------+--------+----------+-------+---+----------+------------------------------+',mreduz);
      form_impres_bchq.Rdprint1.Novapagina;
      mlin:=0;
      end;
   end;
if form_impres_bchq.Rdprint1.Setup then form_impres_bchq.Rdprint1.Fechar;
form_impres_bchq:=nil;
form_impres_bchq.Free;
end;

procedure TFrm_BChq.bbExportarClick(Sender: TObject);
begin

if Frm_ExpbChq=nil then
   Application.CreateForm(TFrm_ExpbChq, Frm_ExpbChq)
else
   begin
   Frm_ExpbChq.Free;
   Frm_ExpbChq:=nil;
   Application.CreateForm(TFrm_ExpBChq, Frm_ExpBChq);
   end;

Frm_ExpBChq.ShowModal;
Frm_ExpBChq.Free;
Frm_ExpBChq:=nil;
end;

procedure TFrm_BChq.MCODEMPExit(Sender: TObject);
begin
MCODEMP.Text:=fdeixanum2(MCODEMP.Text);
end;

procedure TFrm_BChq.MSEQExit(Sender: TObject);
begin
MSEQ.Text:=fdeixanum2(MSEQ.Text);
FTestarCheque(0);

end;
function TFrm_BChq.FTestarCheque(pTipo: Integer): Boolean;
begin

if (not DM1.Tb_Chq.Active) or
   ( (fsonumero(MCODEMP.Text)<>0) and (FSonumero(MCODEMP.Text)<>DM1.Tb_ChqCHCODEMP.AsFloat) ) or
   ( (fsonumero(MSEQ.Text)<>0)    and (FSonumero(MSEQ.Text)<>DM1.Tb_ChqCHSEQ.AsFloat) ) or
   ( (fsonumero(NUMCHQ.Text)<>0) and (FSonumero(NUMCHQ.Text)<>DM1.Tb_ChqCHNUMERO.AsFloat) ) or
   ( (fsonumero(BANCO.Text)<>0) and (FSonumero(BANCO.Text)<>DM1.Tb_ChqCHBANCO.AsFloat) ) or
   ( (trim(SERIE.Text)<>'') and (trim(SERIE.Text)<>DM1.Tb_ChqCHSERIE.AsString) ) or
   ( (trim(AGENCIA.Text)<>'') and (trim(AGENCIA.Text)<>DM1.Tb_ChqCHAGENCIA.AsString) ) or
   ( (trim(CONTA.Text)<>'') and (trim(CONTA.Text)<>DM1.Tb_ChqCHCC.AsString) ) then
   begin
   flcadchq(5,0,ValInt(MCODEMP.Text),ls_codchqcli,
      FSonumero(MSEQ.Text),fdeixanum2(NUMCHQ.Text), fdeixanum2(BANCO.Text),
      trim(SERIE.Text),trim(AGENCIA.Text),trim(CONTA.Text),Form_SelEmp.CLB_EMPRESAS);
   end;
if DM1.Tb_Chq.Eof then
   result:=false
else
   begin
   NOMCLI.Text:=DM1.Tb_Chqnomcli.Value;
   VALOR.Text :=insere(Formatfloat(mcasas,DM1.Tb_ChqCHVALOR.Value),' ',10);
   DTDEP.Text :=FormatDateTime(fdt2, DM1.Tb_ChqCHDTDEP.Value);
   MCODEMP.Text:=DM1.Tb_ChqCHCODEMP.AsString;
   MSEQ.Text   :=DM1.Tb_ChqCHSEQ.AsString;
   NUMCHQ.Text :=DM1.Tb_ChqCHNUMERO.AsString;
   BANCO.Text  :=DM1.Tb_ChqCHBANCO.AsString;
   SERIE.Text  :=DM1.Tb_ChqCHSERIE.AsString;
   AGENCIA.Text:=DM1.Tb_ChqCHAGENCIA.AsString;
   CONTA.Text  :=DM1.Tb_ChqCHCC.AsString;
   result:=true;
   end;
end;
procedure TFrm_BChq.NUMCHQExit(Sender: TObject);
begin
FTestarCheque(0);

end;

procedure TFrm_BChq.BANCOExit(Sender: TObject);
begin
FTestarCheque(0);

end;

procedure TFrm_BChq.SERIEExit(Sender: TObject);
begin
FTestarCheque(0);

end;

procedure TFrm_BChq.AGENCIAExit(Sender: TObject);
begin
FTestarCheque(0);

end;

procedure TFrm_BChq.CONTAExit(Sender: TObject);
begin
FTestarCheque(0);

end;

procedure TFrm_BChq.STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin
if (arow>0) and (ACol=mcol_valor)  then
//Pega o texto da célula
  begin
  Texto := STG1.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG1.Canvas.TextWidth(Texto);
  AlturaTexto := STG1.Canvas.TextHeight(Texto);

// Direita
   X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG1.Canvas.TextRect(Rect, X, Y, Texto);
  end;


end;

procedure TFrm_BChq.MCODCAI_PADKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   MCODCAI_PAD.Text:=fChamaBco(0,'frm_AcCP',Key);
   if trim(MCODCAI_PAD.Text)<>'' then
      MCODCAI_PADExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_BChq.MCODCAI_PADExit(Sender: TObject);
begin
MCODCAI_PAD.Text:=fdeixanum(MCODCAI_PAD.Text);
if fsonumero(MCODCAI_PAD.Text)=0 then
   begin
   fmensagem('Favor Selecionar um Caixa/Banco válido',0,['0'],0);
   MCODCAI_PAD.Text:='1';
   MCODCAI_PAD.SetFocus;
   exit;
   end;
if not flcadbco(1,0,0,MCODCAI_PAD.Text) then
   begin
   fmensagem('Banco Não Cadastrado!',0,['0'],0);
   MCODCAI_PAD.SetFocus;
   end
else
   begin
   MNOMCAI_PAD.Text:=DM1.Tb_BcoBCBANCO.Value;
   if fsonumero(MLOTMOV.Text)=0 then
      begin
      MLOTMOV.Text:=FloatToStr(DM1.Tb_BcoBCLOTMOV.Value+1);
      MLOTMOV.Update;
      end;
   mcodcai_bchq:=ValInt(MCODCAI_PAD.Text);
   lotmov:=Valint(MLOTMOV.Text);
   pldr_nombco:=DM1.Tb_BcoBCBANCO.Value;
   end;

end;

procedure TFrm_BChq.MLOTMOVExit(Sender: TObject);
begin
mcodcai_bchq:=ValInt(MCODCAI_PAD.Text);
lotmov      :=Valint(MLOTMOV.Text);
pldr_nombco :=DM1.Tb_BcoBCBANCO.Value;

end;

function fbChqCriarLdr(pTipo: Integer): Boolean;
begin
if DM1.Tb_ChqCHCODLDR_CRED.AsFloat<=0 then
   begin
   IF flparldr(0,'CADDAR9') then
      begin

//      if length(DM1.Tb_ChqCHDESCMV.AsString)>1 then
//         pldr_descmov:=DM1.Tb_ChqCHDESCMV.AsString
//      else
         pldr_descmov:=DM1.Par_LDRNOME.Value+' CH-'+DM1.Tb_ChqCHNUMERO.asString;
//      if trim(DM1.Tb_ChqCHCODCC.AsString)<>'' then
//         pldr_codccu:=DM1.Tb_ChqCHCODCC.AsString
//      else
         pldr_codccu:=DM1.Par_LDRCODCC.Value;
//      if trim(DM1.Tb_ChqCHCODDEP.AsString)<>'' then
//         pldr_coddep:=DM1.Tb_ChqCHCODDEP.AsString
//      else
         pldr_coddep:=DM1.Par_LDRCODDEP.Value;
//      if trim(DM1.Tb_ChqCHNOMDEP.AsString)<>'' then
//         pldr_nomdep:=DM1.Tb_ChqCHNOMDEP.AsString
//      else
//         begin
         if flcaddep_ldr(1,0,DM1.Par_LDRCODDEP.Value) then
            pldr_nomdep:=DM1.Tb_Dep_LdrDNOME.Value;
//         end;
//      if trim(DM1.Tb_ChqCHNOMCC.AsString)<>'' then
//         pldr_nomccu:=DM1.Tb_ChqCHNOMCC.AsString
//      else
//         begin
         if flcadccu(1,0,DM1.Par_LDRCODCC.Value) then
            begin
            pldr_nomccu:=DM1.Tb_CCUCCNOME.Value;
            pldr_natdc :=DM1.Tb_CCUCCNAT.Value;
 //           end;
         end;

      mcodldr:=fCriarLDR(DM1.Tb_ChqCHCODEMP.AsInteger,
                         DM1.Tb_ChqCHVALOR.AsFloat // Valor previsto
                         ,DM1.Tb_ChqCHVALOR.AsFloat // Valor Real
                         ,DM1.Tb_ChqCHCODCLI.AsFloat  // Codigo Cliente
                         ,DM1.Qr_FPFPVINCULO.Value
                         ,DM1.Tb_ChqCHDTDEP.Value // data prevista
                         ,StrToDate(Frm_BChq.MDATA.Text) // data real
                         ,StrToDate(Frm_BChq.MDATA.Text)  // data Referencia
                        ,pdatanula // data de alteracao
                        ,pldr_codccu
                        ,pldr_coddep
                        ,pldr_natdc
                        ,pldr_descmov
                        ,'CH-'+DM1.Tb_ChqCHNUMERO.asString
                        ,DM1.Qr_FPFPDESC.AsString
                        ,'CL'
                        ,Frm_BChq.MNOMCAI_PAD.Text // ,pldr_nombco
                  ,pldr_nomdep
                  ,pldr_nomccu
                  ,DM1.Tb_Chqnomcli.AsString
                  ,copy(DM1.Tb_ChqCHOBSL01.AsString,1,30)
                  ,3
                  ,ValInt(Frm_BChq.MCODCAI_PAD.Text) // ,codcai
                  ,lotmov
                  ,0 // status
                  ,05); // origem
      DM1.Tb_ChqCHCODLDR_CRED.Value:=mCodLdr;
      DM1.Tb_ChqCHCODBCO_CRED.Value:=ValFloat(Frm_BChq.MCODCAI_PAD.Text);
      end;
   end;

if DM1.Tb_ChqCHCODLDR_DEB.AsFloat<=0 then
   begin
   IF flparldr(0,'CADDAR8') then
      begin
      pldr_descmov:=DM1.Par_LDRNOME.Value+' CH-'+DM1.Tb_ChqCHNUMERO.asString;
      pldr_codccu:=DM1.Par_LDRCODCC.Value;
      pldr_coddep:=DM1.Par_LDRCODDEP.Value;
      if flcaddep_ldr(1,0,DM1.Par_LDRCODDEP.Value) then
         pldr_nomdep:=DM1.Tb_Dep_LdrDNOME.Value;
      if flcadccu(1,0,DM1.Par_LDRCODCC.Value) then
         begin
         pldr_nomccu:=DM1.Tb_CCUCCNOME.Value;
         pldr_natdc :=DM1.Tb_CCUCCNAT.Value;
         end;

      mcodldr:=fCriarLDR(DM1.Tb_ChqCHCODEMP.AsInteger,
                         DM1.Tb_ChqCHVALOR.AsFloat // Valor previsto
                         ,DM1.Tb_ChqCHVALOR.AsFloat // Valor Real
                         ,DM1.Tb_ChqCHCODCLI.AsFloat  // Codigo Cliente
                         ,DM1.Qr_FPFPVINCULO.Value
                         ,DM1.Tb_ChqCHDTDEP.Value // data prevista
                         ,StrToDate(Frm_BChq.MDATA.Text) // data real
                         ,StrToDate(Frm_BChq.MDATA.Text)  // data Referencia
                        ,pdatanula // data de alteracao
                        ,pldr_codccu
                        ,pldr_coddep
                        ,pldr_natdc
                        ,pldr_descmov
                        ,'CH-'+DM1.Tb_ChqCHNUMERO.asString
                        ,DM1.Qr_FPFPDESC.AsString
                        ,'CL'
                        ,DM1.Tb_ChqCHNOMCTA.AsString // ,pldr_nombco
                  ,pldr_nomdep
                  ,pldr_nomccu
                  ,DM1.Tb_Chqnomcli.AsString
                  ,copy(DM1.Tb_ChqCHOBSL01.AsString,1,30)
                  ,1
                  ,DM1.Tb_ChqCHCODCTA.AsInteger // ,codcai
                  ,lotmov
                  ,0 // status
                  ,05); // origem
      DM1.Tb_ChqCHCODLDR_DEB.Value:=mCodLdr;
      DM1.Tb_ChqCHCODBCO_DEB.Value:=DM1.Tb_ChqCHCODCTA.AsFloat;
      end;
   end;
result:=true;
end;
procedure TFrm_BChq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_BChq.FormKeyDown(Sender: TObject; var Key: Word;
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

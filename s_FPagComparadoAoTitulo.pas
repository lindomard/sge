unit s_FPagComparadoAoTitulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, Grids, DBGrids, Buttons;

type
  TFrm_FPagComparadoAoTitulo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edt_chaveped: TEdit;
    lbl_dadosped: TLabel;
    Panel2: TPanel;
    gb_dujpagru: TGroupBox;
    src_fpxDup: TDataSource;
    dbg_fpxDup: TDBGrid;
    dbg_dupagru: TDBGrid;
    qr_fpxDup: TQuery;
    qr_fpxDupPARC: TFloatField;
    qr_fpxDupPFP_VALOR: TFloatField;
    qr_fpxDupPFP_DATA: TDateTimeField;
    qr_fpxDupDUP_VALOR: TFloatField;
    qr_fpxDupDUP_DTVCTO: TDateTimeField;
    qr_fpxDupCHAVEPED: TFloatField;
    qr_fpxDupCODEMP: TFloatField;
    qr_fpxDupLOTSEQ: TFloatField;
    qr_fpxDupDESCONTOS: TFloatField;
    qr_fpxDupJUROS: TFloatField;
    qr_fpxDupVALPAG: TFloatField;
    qr_fpxDupDATPAG: TDateTimeField;
    qr_dupagru: TQuery;
    src_dupagru: TDataSource;
    qr_dupagruCRAZAO: TStringField;
    qr_dupagruDANUMERO: TFloatField;
    qr_dupagruDADESD: TStringField;
    qr_dupagruDADUP: TFloatField;
    qr_dupagruDADTEMIS: TDateTimeField;
    qr_dupagruDAVALOR: TFloatField;
    qr_dupagruDACHAVE: TFloatField;
    qr_dupagruDAORDEM: TFloatField;
    qr_dupagruDANFACUM: TStringField;
    qr_dupagruDATOTNF: TFloatField;
    qr_fpxDupCRNUMERO: TFloatField;
    qr_fpxDupCRCODCLI: TFloatField;
    qr_fpxDupCRDESD: TStringField;
    qr_fpxDupCRDTEMIS: TDateTimeField;
    sbnforma: TSpeedButton;
    btnSair: TBitBtn;
    qr_fpxDupCRDUP: TFloatField;
    procedure dbg_fpxDupDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnSairClick(Sender: TObject);
    procedure sbnformaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mCodEmp: Integer;
    mLotSeq: integer;

    procedure fLerCadpfpXCaddar;

    procedure fLerDupAgru;

  end;

var
  Frm_FPagComparadoAoTitulo: TFrm_FPagComparadoAoTitulo;

implementation

uses func_excecoes, s_FormaPgto, Func;

{$R *.dfm}


procedure TFrm_FPagComparadoAoTitulo.fLerCadpfpXCaddar;
begin

qr_fpxDup.close;
qr_fpxDup.SQL.clear;
qr_fpxDup.sql.add('SELECT PARC,MAX(PFP_VALOR) AS PFP_VALOR '
                  +' ,MAX(PFP_DATA) AS PFP_DATA '
                  +' ,MAX(DUP_VALOR) AS DUP_VALOR '
                  +' ,MAX(DUP_DTVCTO) AS DUP_DTVCTO '

                  +' ,MAX(DESCONTOS) as DESCONTOS '
                  +' ,MAX(JUROS) AS JUROS '
                  +' ,MAX(VALPAG) as VALPAG '
                  +' ,MAX(DATPAG) as DATPAG '



                  +' ,MAX(CRNUMERO) AS CRNUMERO  '
                  +' ,max(CRCODCLI) as CRCODCLI '
                  +' ,max(CRDESD) as CRDESD '
                  +' ,max(CRDTEMIS) as CRDTEMIS '
                  +' ,MAX(CRDUP) AS CRDUP '


                  +' ,CHAVEPED,CODEMP,LOTSEQ '
                  +' FROM ( '
                  +' SELECT ROWNUM AS PARC, T1.* FROM ( '
                  +' SELECT PFPVALOR AS PFP_VALOR,PFPDATA AS PFP_DATA, 0 AS DUP_VALOR, NULL AS DUP_DTVCTO '
                  +'  ,0 as DESCONTOS ,0 AS JUROS ,0 as VALPAG ,null as DATPAG '
                  +' ,0 as CRNUMERO,0 as CRCODCLI,'+quotedstr('')+' as  CRDESD,null as CRDTEMIS '
                  +' ,0  AS CRDUP '

                  +' ,PFPCHAVE AS CHAVEPED,PFPCODEMP AS CODEMP '
                  +' ,PFPLOTSEQ AS LOTSEQ from cadpfp '
                  +' WHERE PFPCHAVE='+edt_chaveped.Text+' and PFPCODEMP='+inttostr(mCodEmp)+' and PFPLOTSEQ='+IntToStr(mLotSeq)
                  +'  ORDER BY PFP_DATA '
                  +'  ) T1 '
                  +' UNION ALL '
                  +' SELECT ROWNUM AS PARC, T1.* FROM ( '
                  +' SELECT  0 AS PFP_VALOR,null AS PFP_DATA, CRVALOR AS DUP_VALOR, CRDTVCTO AS DUP_DTVCTO '
                  +' ,CRDESC as DESCONTOS '
                  +' ,CRJUROS AS JUROS '
                  +' ,CRVALPAG as VALPAG '
                  +' ,CRDTPAG as DATPAG '
                  +',CRNUMERO,CRCODCLI,CRDESD, CRDTEMIS '
                  +',CRDUP '
                  +'  ,CRNPED AS CHAVEPED '

                  +' ,CRCODEMP AS CODEMP, CRLOTSEQ_CP AS LOTSEQ from caddar '
                  +' WHERE CRNPED='+edt_chaveped.Text+' and CRCODEMP='+inttostr(mCodEmp)+' and CRLOTSEQ_CP='+IntToStr(mLotSeq)
                  +' ORDER BY CRDTVCTO '
                  +' ) T1 '
                  +') GROUP BY PARC,CHAVEPED,CODEMP,LOTSEQ '
                  +' ORDER BY PARC ');
try
   qr_fpxDup.Open;
except on e : exception do
   ex_erroSql_Novo(qr_fpxDup,78,'func Erro:'+e.Message ,'CADDAR');
   end;




end;


procedure TFrm_FPagComparadoAoTitulo.fLerDupAgru;
begin
Qr_DupAgru.close;

Qr_DupAgru.sql.clear;
Qr_DupAgru.sql.Add('select CRAZAO,DANUMERO,DADESD,DADUP,DADTEMIS,'
                  +' case when DAVALOR >0 then DAVALOR / 100 else 0 end as  DAVALOR'
                  +' ,DACHAVE,DAORDEM,DANFACUM,'
                  +' case when DATOTNF >0 then DATOTNF / 100 else 0 end as  DATOTNF'

                  +' from dupagru,CADP01,CADCLI '
                  +' where P1CHAVE=DACHAVE '
                  +' AND P1LOTSEQ=DALOTSEQ AND P1CODEMP=DACODEMP '
                  +' AND dachave='+edt_chaveped.Text
                  +' AND DALOTSEQ='+InttoStr(mLotSeq)
                  +' AND DACODEMP='+InttoStr(mCodEmp)
                  +' AND CCODCLI=P1CODCLI '
                  +' order by DANUMERO,DADESD ');
try
   Qr_DupAgru.Open;
except on e : exception do
   ex_erroSql_Novo(Qr_DupAgru,137,'func Erro:'+e.Message ,'CADDAR');
   end;

if qr_dupagru.IsEmpty then
   begin
   gb_dujpagru.Visible:=false;
   end
else
   begin
   gb_dujpagru.Visible:=true;
   end;



end;

procedure TFrm_FPagComparadoAoTitulo.dbg_fpxDupDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if ((qr_fpxDupPFP_VALOR.asfloat<>qr_fpxDupDUP_VALOR.asfloat) or (qr_fpxDupPFP_DATA.AsDateTime<>qr_fpxDupDUP_DTVCTO.AsDateTime)) then
      begin
      dbg_fpxDup.Canvas.Brush.Color:=clRed;
      dbg_fpxDup.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;

end;

procedure TFrm_FPagComparadoAoTitulo.btnSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_FPagComparadoAoTitulo.sbnformaClick(Sender: TObject);
var
Form_Forma_Pag: TFrm_FormaPgto;
begin
if not qr_fpxDup.Active then
   begin
   MessageDlg('Favor Aplicar a Seleção!',mtWarning,[mbOK],0);
   exit;
   end;
if qr_fpxDupCRNUMERO.AsFloat<=0 then
   exit;
Application.CreateForm(TFrm_FormaPgto, Form_Forma_Pag);
Form_forma_pag.lbl_obs.Caption:='Titulo '+qr_fpxDupCRNUMERO.AsString+'/'+qr_fpxDupCRDESD.AsString+' Valor: '+formatFloat(mcasas, qr_fpxDupDUP_VALOR.AsFloat)
                              +' Vencimento '+FormatDateTime(fdt2, qr_fpxDupDUP_DTVCTO.AsDateTime);
Form_Forma_Pag.fCarregarFormas(0,qr_fpxDupCRNUMERO.AsFloat,qr_fpxDupCRCODCLI.AsFloat,qr_fpxDupCRDESD.Asstring,qr_fpxDupCRDUP.Asinteger
,qr_fpxDupCODEMP.asinteger,0,qr_fpxDupCRDTEMIS.AsDateTime);
Form_Forma_Pag.ShowModal;
Freeandnil(Form_Forma_pag);

end;

procedure TFrm_FPagComparadoAoTitulo.FormCreate(Sender: TObject);
begin


qr_fpxDupPFP_VALOR.DisplayFormat := mcasas;
qr_fpxDupPFP_DATA.DisplayFormat  := fdt2;
qr_fpxDupDUP_VALOR.DisplayFormat := mcasas;
qr_fpxDupDUP_DTVCTO.DisplayFormat:= fdt2;

qr_fpxDupDESCONTOS.DisplayFormat := mcasas;
qr_fpxDupJUROS.DisplayFormat := mcasas;
qr_fpxDupVALPAG.DisplayFormat := mcasas;
qr_fpxDupDATPAG.DisplayFormat:= fdt2;



qr_dupagruDADTEMIS.DisplayFormat:= fdt2;
qr_dupagruDAVALOR.DisplayFormat := mcasas;
qr_dupagruDATOTNF.DisplayFormat := mcasas;

end;

end.

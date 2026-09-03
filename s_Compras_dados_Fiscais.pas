unit s_Compras_dados_Fiscais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBTables, ExtCtrls, Mask, DBCtrls,
  Buttons, ComCtrls;

type
  TFrm_Compras_dados_Fiscais = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Tb_pfor: TQuery;
    src_pfor: TDataSource;
    Tb_pforPF2CHAVE: TFloatField;
    Tb_pforPF2CODPRO: TFloatField;
    Tb_pforPDNOME: TStringField;
    Tb_pforPDMARCA: TStringField;
    Tb_pforPDUND: TStringField;
    Tb_pforCST_FOR: TStringField;
    Tb_pforNCM_FOR: TStringField;
    Tb_pforNCM_PRO: TStringField;
    Tb_pforORIGEM_FOR: TFloatField;
    Tb_pforCSOSN_FOR: TStringField;
    Tb_pforPIS_CST_FOR: TStringField;
    Tb_pforCEST_PRO: TStringField;
    Tb_pforCEST_FOR: TStringField;
    U_pfor: TUpdateSQL;
    Tb_pforORIGEM_PRO: TStringField;
    bbatualizar: TBitBtn;
    bbSair: TBitBtn;
    Tb_pforUF_FORNECEDOR: TStringField;
    Tb_pforUF_EMPRESA: TStringField;
    Tb_pforCST_PRO_REV_DUF: TStringField;
    Tb_pforCST_PRO_REV_FUF: TStringField;
    Tb_pforCST_PRO_CF_DUF: TStringField;
    Tb_pforCST_PRO_CF_FUF: TStringField;
    Tb_pforCST_SUG_REV_DUF: TStringField;
    Tb_pforCST_SUG_REV_FUF: TStringField;
    Tb_pforCST_SUG_CF_DUF: TStringField;
    Tb_pforCST_SUG_CF_FUF: TStringField;
    Tb_pforCOFINS_CST_FOR: TStringField;
    Tb_pforPIS_CST_SUG_SAIDA: TStringField;
    Tb_pforPIS_CST_PRO_SAIDA: TStringField;
    Tb_pforCOFINS_CST_SUG_SAIDA: TStringField;
    Tb_pforCOFINS_CST_PRO_SAIDA: TStringField;
    Tb_pforCOFINS_CST_SUG_SAIDA_ATU: TStringField;
    Tb_pforCST_SUG_REV_DUF_ATU: TStringField;
    Tb_pforCST_SUG_REV_FUF_ATU: TStringField;
    Tb_pforCST_SUG_CF_DUF_ATU: TStringField;
    Tb_pforCST_SUG_CF_FUF_ATU: TStringField;
    Tb_pforNCM_FOR_ATU: TStringField;
    Tb_pforORIGEM_FOR_ATU: TStringField;
    Tb_pforCSOSN_PRO_REV_FUF: TStringField;
    Tb_pforCSOSN_PRO_CF_DUF: TStringField;
    Tb_pforCSOSN_PRO_CF_FUF: TStringField;
    Tb_pforCSOSN_SUG_REV_DUF: TStringField;
    Tb_pforCSOSN_SUG_REV_FUF: TStringField;
    Tb_pforCSOSN_SUG_CF_DUF: TStringField;
    Tb_pforCSOSN_SUG_CF_FUF: TStringField;
    Tb_pforCSOSN_SUG_REV_DUF_ATU: TStringField;
    Tb_pforCSOSN_SUG_REV_FUF_ATU: TStringField;
    Tb_pforCSOSN_SUG_CF_DUF_ATU: TStringField;
    Tb_pforCSOSN_SUG_CF_FUF_ATU: TStringField;
    Tb_pforCEST_FOR_ATU: TStringField;
    Tb_pforPIS_CST_SUG_SAIDA_ATU: TStringField;
    PageControl1: TPageControl;
    tsCST_COFINS: TTabSheet;
    Panel3: TPanel;
    DBGrid_pfor: TDBGrid;
    tsCSOSN: TTabSheet;
    TS_CST_PIS: TTabSheet;
    TS_CST_ICMS2: TTabSheet;
    DBGrid_cst_COFINS: TDBGrid;
    Panel5: TPanel;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    StaticText24: TStaticText;
    StaticText25: TStaticText;
    StaticText26: TStaticText;
    CB_CSOSN_SUG_REV_DUF_ATU: TCheckBox;
    StaticText27: TStaticText;
    CB_CSOSN_SUG_CF_DUF_ATU: TCheckBox;
    StaticText28: TStaticText;
    StaticText29: TStaticText;
    StaticText30: TStaticText;
    CB_CSOSN_SUG_REV_FUF_ATU: TCheckBox;
    StaticText31: TStaticText;
    CB_CSOSN_SUG_CF_FUF_ATU: TCheckBox;
    Panel6: TPanel;
    StaticText32: TStaticText;
    StaticText33: TStaticText;
    StaticText34: TStaticText;
    StaticText35: TStaticText;
    StaticText36: TStaticText;
    StaticText37: TStaticText;
    StaticText38: TStaticText;
    StaticText39: TStaticText;
    StaticText40: TStaticText;
    StaticText41: TStaticText;
    CB_CST_SUG_REV_DUF_ATU: TCheckBox;
    StaticText42: TStaticText;
    CB_CST_SUG_CF_DUF_ATU: TCheckBox;
    StaticText43: TStaticText;
    StaticText44: TStaticText;
    StaticText45: TStaticText;
    CB_CST_SUG_REV_FUF_ATU: TCheckBox;
    StaticText46: TStaticText;
    CB_CST_SUG_CF_FUF_ATU: TCheckBox;
    Panel7: TPanel;
    DBGrid_csosn: TDBGrid;
    DBGrid_cst_pis: TDBGrid;
    DBGrid_cst_icms2: TDBGrid;
    Tb_pforCSOSN_PRO_REV_DUF: TStringField;
    Tb_pforCOFINS_CST_FOR_ATU: TStringField;
    Panel2: TPanel;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    LBL_CST_PRO_REV_DUF: TStaticText;
    LBL_CST_PRO_CF_DUF: TStaticText;
    LBL_CST_SUG_REV_DUF_ATU: TStaticText;
    CB_COFINS_CST_FOR_ATU: TCheckBox;
    StaticText13: TStaticText;
    CB_COFINS_CST_SUG_SAIDA_ATU: TCheckBox;
    Tb_pforCOFINS_CST_ENTRADA_PRO: TStringField;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText10: TStaticText;
    CB_PIS_CST_FOR_ATU: TCheckBox;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText14: TStaticText;
    CB_PIS_CST_SUG_SAIDA_ATU: TCheckBox;
    Tb_pforPIS_ENTRADA_PRO: TStringField;
    Tb_pforPIS_CST_FOR_ATU: TStringField;
    Panel4: TPanel;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    StaticText47: TStaticText;
    StaticText48: TStaticText;
    StaticText49: TStaticText;
    StaticText50: TStaticText;
    StaticText51: TStaticText;
    CB_NCM_FOR_ATU: TCheckBox;
    StaticText52: TStaticText;
    StaticText53: TStaticText;
    StaticText54: TStaticText;
    CB_ORIGEM_FOR_ATU: TCheckBox;
    StaticText55: TStaticText;
    StaticText56: TStaticText;
    StaticText57: TStaticText;
    CB_CEST_FOR_ATU: TCheckBox;
    procedure DBGrid_pforDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid_pforCellClick(Column: TColumn);
    procedure bbSairClick(Sender: TObject);
    procedure CB_COFINS_CST_FOR_ATUClick(Sender: TObject);
    procedure CB_NCM_FOR_ATUClick(Sender: TObject);
    procedure bbatualizarClick(Sender: TObject);
    procedure DBGrid_cst_icms2DrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure CB_CST_SUG_REV_DUF_ATUClick(Sender: TObject);
    procedure CB_CST_SUG_CF_DUF_ATUClick(Sender: TObject);
    procedure CB_CST_SUG_REV_FUF_ATUClick(Sender: TObject);
    procedure CB_CST_SUG_CF_FUF_ATUClick(Sender: TObject);
    procedure CB_CSOSN_SUG_REV_DUF_ATUClick(Sender: TObject);
    procedure CB_CSOSN_SUG_CF_DUF_ATUClick(Sender: TObject);
    procedure CB_CSOSN_SUG_REV_FUF_ATUClick(Sender: TObject);
    procedure CB_CSOSN_SUG_CF_FUF_ATUClick(Sender: TObject);
    procedure CB_COFINS_CST_SUG_SAIDA_ATUClick(Sender: TObject);
    procedure CB_PIS_CST_FOR_ATUClick(Sender: TObject);
    procedure CB_PIS_CST_SUG_SAIDA_ATUClick(Sender: TObject);
    procedure DBGrid_csosnDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid_cst_COFINSDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid_cst_pisDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid_csosnCellClick(Column: TColumn);
    procedure DBGrid_cst_pisCellClick(Column: TColumn);
    procedure DBGrid_cst_COFINSCellClick(Column: TColumn);
    procedure DBGrid_cst_icms2CellClick(Column: TColumn);
    procedure CB_ORIGEM_FOR_ATUClick(Sender: TObject);
    procedure CB_CEST_FOR_ATUClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    mcol_NCM_FOR_ATU: integer;
    mcol_ORIGEM_FOR_ATU: integer;
    mcol_CEST_FOR_ATU : integer;



    mcol_CST_SUG_REV_DUF_ATU: integer;
    mcol_CST_SUG_CF_DUF_ATU: integer;
    mcol_CST_SUG_REV_FUF_ATU: integer;
    mcol_CST_SUG_CF_FUF_ATU: integer;


    mcol_CSOSN_SUG_REV_DUF_ATU: integer;
    mcol_CSOSN_SUG_CF_DUF_ATU : integer;
    mcol_CSOSN_SUG_REV_FUF_ATU: integer;
    mcol_CSOSN_SUG_CF_FUF_ATU : integer;


    mcol_COFINS_CST_FOR_ATU: integer;
    mcol_COFINS_CST_SUG_SAIDA_ATU: integer;

    mcol_PIS_CST_FOR_ATU: integer;
    mcol_PIS_CST_SUG_SAIDA_ATU: integer;



    procedure Atualizarcheck(pCampo,pCheck: string);

    procedure fAtualizarcadpro;

  public
    { Public declarations }
    mChave : Integer;
    mCodemp: Integer;
    mLotSeq: Integer;


    procedure fLerpedido(pAtuCst,pAtuNCM,patuorigem,patucsosn,patupiscofins,patucest: string);


  end;


var
  Frm_Compras_dados_Fiscais: TFrm_Compras_dados_Fiscais;

const
 colconst01=17;
 colconst02=20;
 colconst03=-2;
 colconstServ=3;
 colespaco=1;

implementation

uses S_DM1, S_DM1_ADO, func_excecoes, Func, lerarq;

{$R *.dfm}

procedure TFrm_Compras_dados_Fiscais.fLerpedido(pAtuCst,pAtuNCM,patuorigem,patucsosn,patupiscofins,patucest: string);
begin
Tb_pfor.close;
Tb_pfor.sql.clear;
Tb_pfor.sql.add('select FUF AS UF_FORNECEDOR '
               +','+QuotedStr(DM1.Tb_EmpUF.AsString)+' AS UF_EMPRESA '
               +',pf2chave '
               +',PF2CODPRO '
               +',PDNOME '
               +',PDUND '
               +',PDMARCA '
               +',CASE WHEN PF2SIT>2 THEN SUBSTR(PF2SIT,2,2) ELSE  PF2SIT  END AS CST_FOR '
               +',PDFIS_CST_ICMS_EST_REV AS CST_PRO_REV_DUF '
               +',PDFIS_CST_ICMS_INT_REV AS CST_PRO_REV_FUF '
               +',PDFIS_CST_ICMS_EST_CF AS CST_PRO_CF_FUF '
               +',PDFIS_CST_ICMS_INT_CF AS CST_PRO_CF_DUF '
               +',cast( fSaiCSTCSOSN(FCRT,'+QuotedStr('N')+',PF2SIT,PF2CSOSN,'+QuotedStr('S')+') as varchar2(10))  AS CST_SUG_REV_DUF  '
               +','+QuotedStr(pAtuCst)+' as  CST_SUG_REV_DUF_ATU '
               +',cast( fSaiCSTCSOSN(FCRT,'+QuotedStr('N')+',PF2SIT,PF2CSOSN,'+QuotedStr('S')+') as varchar2(10)) AS CST_SUG_REV_FUF '
               +','+QuotedStr(patucst)+' AS CST_SUG_REV_FUF_ATU '
               +',cast( fSaiCSTCSOSN(FCRT,'+QuotedStr('S')+',PF2SIT,PF2CSOSN,'+QuotedStr('S')+') as varchar2(10)) AS CST_SUG_CF_DUF '
               +','+QuotedStr(patucst)+' AS CST_SUG_CF_DUF_ATU '
               +' ,cast( fSaiCSTCSOSN(FCRT,'+QuotedStr('S')+',PF2SIT,PF2CSOSN,'+QuotedStr('S')+') as varchar2(10)) AS CST_SUG_CF_FUF '
               +','+QuotedStr(pAtuCST)+' AS CST_SUG_CF_FUF_ATU '
               +',CASE WHEN PF2CODNCM is null THEN PDCODNCM ELSE PF2CODNCM END AS NCM_FOR '
               +',PDCLAS AS NCM_PRO '
               +','+QuotedStr(pAtuNCM)+' as NCM_FOR_ATU '

               +',CASE WHEN PF2CEST is null THEN PDCEST ELSE PF2CEST END AS CEST_FOR '
               +',PDCEST AS CEST_PRO '
               +','+QuotedStr(pAtuNCM)+' as CEST_FOR_ATU '


               +',PF2CSOSN_ORI AS ORIGEM_FOR '
               +',PDFIS_ORIGEM AS ORIGEM_PRO '
               +','+QuotedStr(pAtuOrigem)+' as ORIGEM_FOR_ATU '
               +',PF2CSOSN AS CSOSN_FOR '
               +',PDFIS_CSOSN_EST_CF AS CSOSN_PRO_CF_DUF '
               +',PDFIS_CSOSN_INT_CF AS CSOSN_PRO_CF_FUF '
               +',PDFIS_CSOSN_EST_REV AS CSOSN_PRO_REV_DUF '
               +',PDFIS_CSOSN_INT_REV AS CSOSN_PRO_REV_FUF '
               +',cast( fSaiCSTCSOSN(FCRT,'+QuotedStr('N')+',PF2SIT,PF2CSOSN,'+QuotedStr('N')+') as varchar2(10)) AS CSOSN_SUG_REV_DUF '
               +','+QuotedStr(pAtuCSOSN)+' AS CSOSN_SUG_REV_DUF_ATU '
               +',cast( fSaiCSTCSOSN(FCRT,'+QuotedStr('N')+',PF2SIT,PF2CSOSN,'+QuotedStr('N')+')  as varchar2(10)) AS CSOSN_SUG_REV_FUF '
               +','+QuotedStr(pAtuCSOSN)+' AS CSOSN_SUG_REV_FUF_ATU '
               +',cast( fSaiCSTCSOSN(FCRT,'+QuotedStr('S')+',PF2SIT,PF2CSOSN,'+QuotedStr('N')+') as varchar2(10)) AS CSOSN_SUG_CF_DUF '
               +','+QuotedStr(pAtuCSOSN)+' AS CSOSN_SUG_CF_DUF_ATU '
               +',cast( fSaiCSTCSOSN(FCRT,'+QuotedStr('S')+',PF2SIT,PF2CSOSN,'+QuotedStr('N')+') as varchar2(10)) AS CSOSN_SUG_CF_FUF '
               +','+QuotedStr(pAtuCSOSN)+' AS CSOSN_SUG_CF_FUF_ATU '

               +',PF2CST_PIS AS PIS_CST_FOR '
               +',PDFIS_CST_PISCOF_ENTRADA AS PIS_ENTRADA_PRO '

               +','+QuotedStr(pAtuPisCofins)+' as PIS_CST_FOR_ATU '

               +',PDFIS_CST_PISCOF_SAIDA AS PIS_CST_PRO_SAIDA '
               +',PDFIS_CST_PISCOF_SAIDA AS PIS_CST_SUG_SAIDA '
               +','+QuotedStr('99')+' AS PIS_CST_SUG_SAIDA_ATU '




               +',PF2CST_COFINS AS COFINS_CST_FOR '
               +',PDFIS_CST_PISCOF_ENTRADA AS COFINS_CST_ENTRADA_PRO '
               +','+QuotedStr(pAtuPisCofins)+' as COFINS_CST_FOR_ATU '



               +',PDFIS_CST_PISCOF_SAIDA AS COFINS_CST_PRO_SAIDA '
               +',PDFIS_CST_PISCOF_SAIDA AS COFINS_CST_SUG_SAIDA '
               +','+QuotedStr('99')+' AS COFINS_CST_SUG_SAIDA_ATU '

               +' from cadpf2,CADPF1,CADPRO,CADFOR '
               +' where pf2chave=:CHAVE  '
               +' and PF2CODEMP=:CODEMP '
               +' and PF2LOTSEQ=:LOTSEQ '
               +' AND PF1LOTSEQ=PF2LOTSEQ '
               +'AND PF1CHAVE=PF2CHAVE '
               +'AND PDCODPRO=PF2CODPRO '
               +' AND FCODFOR=PF1CODFOR ');

Tb_PFor.ParambyName('CHAVE').AsInteger :=mchave;
Tb_PFor.ParambyName('CODEMP').AsInteger :=mCodemp;
Tb_PFor.ParambyName('LOTSEQ').AsInteger :=mLotSeq;
// ex_erroSql_Novo(Tb_PFor,88,'SGE ' ,'CADPF2');

try
   Tb_PFor.open;
except on e : exception do
   begin
   ex_erroSql_Novo(Tb_PFor,88,'SGE '+E.MESSAGE ,'CADPF2');
   end;
   end;


end;

procedure TFrm_Compras_dados_Fiscais.DBGrid_pforDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var

   S1, S2: string;


var
 Check: Integer;
R: TRect;begin

// interno normal
{

CB_ATU_CST.Left:=colconst01
               +DBGrid_pfor.Columns[mcol_PF2CODPRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_PDNOME].Width+colespaco
               +DBGrid_pfor.Columns[mcol_PDMARCA].Width+colespaco
               +DBGrid_pfor.Columns[mcol_PDUND].Width+colespaco
               +DBGrid_pfor.Columns[mcol_CST_FOR].Width+colespaco
               +DBGrid_pfor.Columns[mcol_CST_PRO].Width+colespaco;

// acabado interno
CB_ATU_NCM.Left:=colconst01
               +DBGrid_pfor.Columns[mcol_PF2CODPRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_PDNOME].Width+colespaco
               +DBGrid_pfor.Columns[mcol_PDMARCA].Width+colespaco
               +DBGrid_pfor.Columns[mcol_PDUND].Width+colespaco
               +DBGrid_pfor.Columns[mcol_CST_FOR].Width+colespaco
               +DBGrid_pfor.Columns[mcol_CST_PRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_ATU_CST].Width+colespaco
               +DBGrid_pfor.Columns[mcol_NCM_FOR].Width+colespaco
               +DBGrid_pfor.Columns[mcol_NCM_PRO].Width+colespaco
               ;


CB_ATU_ORIGEM.Left:=colconst01
               +DBGrid_pfor.Columns[mcol_PF2CODPRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_PDNOME].Width+colespaco
               +DBGrid_pfor.Columns[mcol_PDMARCA].Width+colespaco
               +DBGrid_pfor.Columns[mcol_PDUND].Width+colespaco
               +DBGrid_pfor.Columns[mcol_CST_FOR].Width+colespaco
               +DBGrid_pfor.Columns[mcol_CST_PRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_ATU_CST].Width+colespaco
               +DBGrid_pfor.Columns[mcol_NCM_FOR].Width+colespaco
               +DBGrid_pfor.Columns[mcol_NCM_PRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_ATU_NCM].Width+colespaco
               +DBGrid_pfor.Columns[mcol_ORIGEM_FOR].Width+colespaco
               +DBGrid_pfor.Columns[mcol_ORIGEM_PRO].Width+colespaco
               ;

CB_ATU_CSOSN.Left:=colconst01
               +DBGrid_pfor.Columns[mcol_PF2CODPRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_PDNOME].Width+colespaco
               +DBGrid_pfor.Columns[mcol_PDMARCA].Width+colespaco
               +DBGrid_pfor.Columns[mcol_PDUND].Width+colespaco
               +DBGrid_pfor.Columns[mcol_CST_FOR].Width+colespaco
               +DBGrid_pfor.Columns[mcol_CST_PRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_ATU_CST].Width+colespaco
               +DBGrid_pfor.Columns[mcol_NCM_FOR].Width+colespaco
               +DBGrid_pfor.Columns[mcol_NCM_PRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_ATU_NCM].Width+colespaco
               +DBGrid_pfor.Columns[mcol_ORIGEM_FOR].Width+colespaco
               +DBGrid_pfor.Columns[mcol_ORIGEM_PRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_ATU_ORIGEM_PRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_CSOSN_PRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_CSOSN_FOR].Width+colespaco
               ;



CB_ATU_CST_PIS_COFINS.Left:=colconst01
               +DBGrid_pfor.Columns[mcol_PF2CODPRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_PDNOME].Width+colespaco
               +DBGrid_pfor.Columns[mcol_PDMARCA].Width+colespaco
               +DBGrid_pfor.Columns[mcol_PDUND].Width+colespaco

               +DBGrid_pfor.Columns[mcol_CST_FOR].Width+colespaco
               +DBGrid_pfor.Columns[mcol_CST_PRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_ATU_CST].Width+colespaco

               +DBGrid_pfor.Columns[mcol_NCM_FOR].Width+colespaco
               +DBGrid_pfor.Columns[mcol_NCM_PRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_ATU_NCM].Width+colespaco

               +DBGrid_pfor.Columns[mcol_ORIGEM_FOR].Width+colespaco
               +DBGrid_pfor.Columns[mcol_ORIGEM_PRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_ATU_ORIGEM_PRO].Width+colespaco

               +DBGrid_pfor.Columns[mcol_CSOSN_FOR].Width+colespaco
               +DBGrid_pfor.Columns[mcol_CSOSN_PRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_ATU_CSOSN].Width+colespaco

               +DBGrid_pfor.Columns[mcol_PIS_CST_FOR].Width+colespaco
               +DBGrid_pfor.Columns[mcol_PIS_CST_PRO].Width+colespaco
               ;



CB_ATU_CEST.Left:=colconst01
               +DBGrid_pfor.Columns[mcol_PF2CODPRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_PDNOME].Width+colespaco
               +DBGrid_pfor.Columns[mcol_PDMARCA].Width+colespaco
               +DBGrid_pfor.Columns[mcol_PDUND].Width+colespaco

               +DBGrid_pfor.Columns[mcol_CST_FOR].Width+colespaco
               +DBGrid_pfor.Columns[mcol_CST_PRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_ATU_CST].Width+colespaco

               +DBGrid_pfor.Columns[mcol_NCM_FOR].Width+colespaco
               +DBGrid_pfor.Columns[mcol_NCM_PRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_ATU_NCM].Width+colespaco

               +DBGrid_pfor.Columns[mcol_ORIGEM_FOR].Width+colespaco
               +DBGrid_pfor.Columns[mcol_ORIGEM_PRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_ATU_ORIGEM_PRO].Width+colespaco

               +DBGrid_pfor.Columns[mcol_CSOSN_FOR].Width+colespaco
               +DBGrid_pfor.Columns[mcol_CSOSN_PRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_ATU_CSOSN].Width+colespaco

               +DBGrid_pfor.Columns[mcol_PIS_CST_FOR].Width+colespaco
               +DBGrid_pfor.Columns[mcol_PIS_CST_PRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_ATU_CST_PIS_COFINS].Width+colespaco

               +DBGrid_pfor.Columns[mcol_CEST_PRO].Width+colespaco
               +DBGrid_pfor.Columns[mcol_CEST_FOR].Width+colespaco
               ;

if (DataCol=mcol_CST_PRO) or
   (DataCol=mcol_CST_FOR) or
   (DataCol=mcol_ATU_CST) then
   begin
   DBGrid_pfor.Canvas.Brush.Color:=$00DDFFDD;
   DBGrid_pfor.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if (DataCol=mcol_NCM_PRO) or
   (DataCol=mcol_NCM_FOR) or
   (DataCol=mcol_ATU_NCM)  then
   begin
   DBGrid_pfor.Canvas.Brush.Color:=clBtnFace;
   DBGrid_pfor.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if (DataCol=mcol_ORIGEM_PRO) or
   (DataCol=mcol_ORIGEM_FOR) or
   (DataCol=mcol_ATU_ORIGEM_PRO) then
   begin
   DBGrid_pfor.Canvas.Brush.Color:=$00FFC4E1;
   DBGrid_pfor.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if (DataCol=mcol_CSOSN_FOR) or
   (DataCol=mcol_CSOSN_PRO) or
   (DataCol=mcol_ATU_CSOSN) then
   begin
   DBGrid_pfor.Canvas.Brush.Color:=$00DDFFDD;
   DBGrid_pfor.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if (DataCol=mcol_PIS_CST_PRO) or
   (DataCol=mcol_PIS_CST_FOR) or
   (DataCol=mcol_ATU_CST_PIS_COFINS) then
   begin
   DBGrid_pfor.Canvas.Brush.Color:=$00FFC4E1;
   DBGrid_pfor.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if (DataCol=mcol_CEST_PRO) or
   (DataCol=mcol_CEST_FOR) or
   (DataCol=mcol_ATU_CEST) then
   begin
   DBGrid_pfor.Canvas.Brush.Color:=$00DDFFDD;
   DBGrid_pfor.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

}

//Desenha um checkbox no dbgrid
if  (  (DataCol=mcol_NCM_FOR_ATU) or
       (DataCol=mcol_ORIGEM_FOR_ATU) or
       (DataCol=mcol_CEST_FOR_ATU)  )  then
   begin
   DBGrid_pfor.Canvas.FillRect(Rect);
   Check := 0;



   if Tb_pfor.fieldbyname(Column.FieldName).AsString= 'S' then
      Check := DFCS_CHECKED
    else
      Check := 0;
    R:=Rect;
   InflateRect(R,-2,-2);
   DrawFrameControl(DBGrid_pfor.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
   end;



end;

procedure TFrm_Compras_dados_Fiscais.FormCreate(Sender: TObject);
begin


    mcol_NCM_FOR_ATU   :=06;
    mcol_ORIGEM_FOR_ATU:=09;
    mcol_CEST_FOR_ATU  :=12;


    mcol_CST_SUG_REV_DUF_ATU:=4;
    mcol_CST_SUG_CF_DUF_ATU :=6;
    mcol_CST_SUG_REV_FUF_ATU:=10;
    mcol_CST_SUG_CF_FUF_ATU :=12;


    mcol_CSOSN_SUG_REV_DUF_ATU:=4;
    mcol_CSOSN_SUG_CF_DUF_ATU :=6;
    mcol_CSOSN_SUG_REV_FUF_ATU:=10;
    mcol_CSOSN_SUG_CF_FUF_ATU :=12;

    mcol_COFINS_CST_FOR_ATU      :=2;
    mcol_COFINS_CST_SUG_SAIDA_ATU:=5;


    mcol_PIS_CST_FOR_ATU      :=2;
    mcol_PIS_CST_SUG_SAIDA_ATU:=5;

end;

procedure TFrm_Compras_dados_Fiscais.DBGrid_pforCellClick(Column: TColumn);
begin
if (   (DBGrid_pfor.SelectedIndex=mcol_NCM_FOR_ATU) or
       (DBGrid_pfor.SelectedIndex=mcol_ORIGEM_FOR_ATU) or
       (DBGrid_pfor.SelectedIndex=mcol_CEST_FOR_ATU)  ) then
   begin
   Tb_pfor.Edit;
   if Tb_pfor.fieldbyname(DBGrid_pfor.SelectedField.FieldName).AsString= 'S' then
      Tb_pfor.fieldbyname(DBGrid_pfor.SelectedField.FieldName).AsString := 'N'
   else
      Tb_pfor.fieldbyname(DBGrid_pfor.SelectedField.FieldName).AsString := 'S';
   Tb_pfor.Post;
//   Self.Perform(WM_NEXTDLGCTL,0,0);

   end;


end;

procedure TFrm_Compras_dados_Fiscais.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Compras_dados_Fiscais.CB_COFINS_CST_FOR_ATUClick(Sender: TObject);
begin
 Atualizarcheck('COFINS_CST_FOR_ATU',iif( CB_COFINS_CST_FOR_ATU.checked=true,'S','N'));

end;

procedure TFrm_Compras_dados_Fiscais.Atualizarcheck(pCampo,pCheck: string);
begin
Tb_pfor.DisableControls;
Tb_pfor.First;
While not Tb_pfor.Eof do
   begin
   Tb_pfor.Edit;
   Tb_pfor.fieldbyname(pCampo).AsString:=pCheck;
   Tb_pfor.Post;
   Tb_pfor.Next;
   end;
Tb_pfor.First;
Tb_pfor.EnableControls;


end;
procedure TFrm_Compras_dados_Fiscais.CB_NCM_FOR_ATUClick(Sender: TObject);
begin
Atualizarcheck('NCM_FOR_ATU',iif( CB_NCM_FOR_ATU.checked=true,'S','N'));


end;

procedure TFrm_Compras_dados_Fiscais.fAtualizarcadpro;
var
query_exe: TQuery;
mlista: string;
munion: string;
begin
query_exe:=TQuery.create(nil);
query_exe.databasename:=DM1.SG_ASSOC.DatabaseName;
query_exe.SQL.Add('MERGE INTO CADPRO t1 USING ( ');

Tb_pfor.First;
munion:='';

mlista:='';
While not Tb_pfor.eof do
   begin
   if  (Tb_pforCST_SUG_REV_DUF_ATU.AsString<>'S') and
       (Tb_pforCST_SUG_REV_FUF_ATU.AsString<>'S') and
       (Tb_pforCST_SUG_CF_DUF_ATU.AsString<>'S') and
       (Tb_pforCST_SUG_CF_fUF_ATU.AsString<>'S') and
       (Tb_pforNCM_FOR_ATU.AsString<>'S') and
       (Tb_pforORIGEM_FOR_ATU.AsString<>'S') and
       (Tb_pforCSOSN_SUG_REV_DUF_ATU.AsString<>'S') and
       (Tb_pforCSOSN_SUG_REV_FUF_ATU.AsString<>'S') and
       (Tb_pforCSOSN_SUG_CF_DUF_ATU.AsString<>'S') and
       (Tb_pforCSOSN_SUG_CF_FUF_ATU.AsString<>'S') and
       (Tb_pforPIS_CST_FOR_ATU.AsString<>'S') and
       (Tb_pforPIS_CST_SUG_SAIDA_ATU.AsString<>'S') THEN 
       begin
       Tb_pfor.Next;
       continue;
       end;
   mlista:=mlista+munion+' SELECT '+Tb_pforPF2CODPRO.AsString+'  PDCODPRO '
          +','+QuotedStr(iif(Tb_pforCST_SUG_REV_DUF_ATU.AsString='S',Tb_pforCST_SUG_REV_DUF.AsString,Tb_pforCST_PRO_REV_DUF.AsString))+' as PDFIS_CST_ICMS_EST_REV '
          +','+QuotedStr(iif(Tb_pforCST_SUG_REV_FUF_ATU.AsString='S',Tb_pforCST_SUG_REV_FUF.AsString,Tb_pforCST_PRO_REV_FUF.AsString))+' as PDFIS_CST_ICMS_INT_REV '
          +','+QuotedStr(iif(Tb_pforCST_SUG_CF_DUF_ATU.AsString='S',Tb_pforCST_SUG_CF_DUF.AsString,Tb_pforCST_PRO_CF_DUF.AsString))+' as PDFIS_CST_ICMS_EST_CF '
          +','+QuotedStr(iif(Tb_pforCST_SUG_CF_FUF_ATU.AsString='S',Tb_pforCST_SUG_CF_FUF.AsString,Tb_pforCST_PRO_CF_FUF.AsString))+' as PDFIS_CST_ICMS_INT_CF '
          +','+QuotedStr(iif(Tb_pforNCM_FOR_ATU.AsString='S',Tb_pforNCM_FOR.AsString,Tb_pforNCM_PRO.AsString))+' AS PDCODNCM '
          +','+QuotedStr(iif(Tb_pforNCM_FOR_ATU.AsString='S',Tb_pforNCM_FOR.AsString,Tb_pforNCM_PRO.AsString))+' AS PDCLAS '
          +','+QuotedStr(iif(Tb_pforORIGEM_FOR_ATU.AsString='S',Tb_pforORIGEM_FOR.AsString,Tb_pforORIGEM_PRO.AsString))+' PDFIS_ORIGEM '
          +','+QuotedStr(iif(Tb_pforCSOSN_SUG_REV_DUF_ATU.AsString='S',Tb_pforCSOSN_SUG_REV_DUF.AsString,Tb_pforCSOSN_PRO_REV_DUF.AsString))+' AS PDFIS_CSOSN_EST_REV'
          +','+QuotedStr(iif(Tb_pforCSOSN_SUG_REV_FUF_ATU.AsString='S',Tb_pforCSOSN_SUG_REV_FUF.AsString,Tb_pforCSOSN_PRO_REV_FUF.AsString))+' AS PDFIS_CSOSN_INT_REV'
          +','+QuotedStr(iif(Tb_pforCSOSN_SUG_CF_DUF_ATU.AsString='S',Tb_pforCSOSN_SUG_CF_DUF.AsString,Tb_pforCSOSN_PRO_CF_DUF.AsString))+' AS PDFIS_CSOSN_EST_CF'
          +','+QuotedStr(iif(Tb_pforCSOSN_SUG_CF_FUF_ATU.AsString='S',Tb_pforCSOSN_SUG_CF_FUF.AsString,Tb_pforCSOSN_PRO_CF_FUF.AsString))+' AS PDFIS_CSOSN_INT_CF'

          +','+QuotedStr(iif(Tb_pforPIS_CST_FOR_ATU.AsString='S',Tb_pforPIS_CST_FOR.AsString,Tb_pforPIS_ENTRADA_PRO.AsString))+' AS PDFIS_CST_PISCOF_ENTRADA'
          +','+QuotedStr(iif(Tb_pforPIS_CST_SUG_SAIDA_ATU.AsString='S',Tb_pforPIS_CST_SUG_SAIDA.AsString,Tb_pforPIS_CST_PRO_SAIDA.AsString))+' AS PDFIS_CST_PISCOF_SAIDA'
          +','+QuotedStr(iif(Tb_pforCEST_FOR_ATU.AsString='S',Tb_pforCEST_FOR.AsString,Tb_pforCEST_PRO.AsString))+' AS PDCEST '
          +' FROM DUAL ';
   munion:=' union all ';
   Tb_pfor.Next;
   end;
query_exe.SQL.Add(mlista
                 +' ) ss '
                 +'  ON (t1.PDCODPRO = ss.PDCODPRO) '
                 +' WHEN MATCHED THEN '
                 +'    UPDATE SET t1.PDFIS_CST_ICMS_EST_REV = ss.PDFIS_CST_ICMS_EST_REV '
                 +' ,t1.PDFIS_CST_ICMS_INT_REV=ss.PDFIS_CST_ICMS_INT_REV '
                 +' ,t1.PDFIS_CST_ICMS_EST_CF=ss.PDFIS_CST_ICMS_EST_CF '
                 +' ,t1.PDFIS_CST_ICMS_INT_CF=ss.PDFIS_CST_ICMS_INT_CF '

                 +' ,t1.PDCODNCM=ss.PDCODNCM '
                 +' ,t1.PDCLAS=ss.PDCLAS '
                 +' ,t1.PDFIS_ORIGEM=ss.PDFIS_ORIGEM '

                 +' ,t1.PDFIS_CSOSN_EST_REV=ss.PDFIS_CSOSN_EST_REV '
                 +' ,t1.PDFIS_CSOSN_INT_REV=ss.PDFIS_CSOSN_INT_REV '

                 +' ,t1.PDFIS_CSOSN_EST_CF=ss.PDFIS_CSOSN_EST_CF '
                 +' ,t1.PDFIS_CSOSN_INT_CF=ss.PDFIS_CSOSN_INT_CF '


                 +' ,t1.PDFIS_CST_PISCOF_ENTRADA=ss.PDFIS_CST_PISCOF_ENTRADA '
                 +' ,t1.PDFIS_CST_PISCOF_SAIDA=ss.PDFIS_CST_PISCOF_SAIDA '
                 +' ,t1.PDCEST=ss.PDCEST ');
try
   query_exe.ExecSQL;
except on e : exception do
   begin
   ex_erroSql_Novo(query_exe,521,'SGE '+E.MESSAGE ,'CADPRO');
   end;
   end;
// CADNCM

query_exe.Close;
query_exe.SQL.clear;
query_exe.SQL.Add('MERGE INTO CADCLATABICM t1 USING ( ');
Tb_pfor.First;
munion:='';
mlista:='';

While not Tb_pfor.eof do
   begin
   if  (Tb_pforNCM_FOR_ATU.AsString<>'S') then
       begin
       Tb_pfor.Next;
       continue;
       end;
   mlista:=mlista+munion+' SELECT '+QuotedStr(Tb_pforNCM_FOR.AsString)+' as CICLASSIF '
                        +','+QuotedStr(Tb_pforNCM_FOR.AsString)+' as CICLASSIF_NOME '
                        +','+Inttostr(codemp)+' as CICODEMP '
                        +','+QuotedStr('A')+' as CITABICMS'
                        +','+QuotedStr('N')+' as CIMONOFASICO'
                        +','+QuotedStr('N')+' as CIDI'
                        +','+QuotedStr('incluso pelo pedido de compra')+' as CIDIOBS'
                        +','+'0'+' as CIVALAPROXNAC'
                        +','+'0'+' as CIVALAPROXIMP'
                        +','+QuotedStr(Tb_pforCEST_FOR.AsString)+' as CI_CEST '
                        +' from DUAL ';
   munion:=' union all ';
   Tb_pfor.Next;
   end;
if mlista<>'' then
   begin
   query_exe.SQL.Add(mlista
                 +' ) ss '
                 +'  ON (t1.CICLASSIF = ss.CICLASSIF) '
                 +'   WHEN NOT MATCHED THEN '
                 +'  INSERT( t1.CICODEMP,t1.CICLASSIF, t1.CITABICMS,t1.CICLASSIF_NOME,t1.CIMONOFASICO,t1.CIDI,t1.CIDIOBS,t1.CIVALAPROXNAC,t1.CIVALAPROXIMP,t1.CI_CEST ) '
                 +'  values( ss.CICODEMP,ss.CICLASSIF, ss.CITABICMS,ss.CICLASSIF_NOME,ss.CIMONOFASICO,ss.CIDI,ss.CIDIOBS,ss.CIVALAPROXNAC,ss.CIVALAPROXIMP,ss.CI_CEST )' );

   try
     query_exe.ExecSQL;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_exe,521,'SGE '+E.MESSAGE ,'CADPRO');
      end;
      end;
   end;

// TERMINO CADNCM


tb_pfor.first;
While not Tb_pfor.eof do
   begin
   if  (Tb_pforCEST_FOR_ATU.AsString='S') and
       (Tb_pforCEST_FOR_ATU.AsString='S') then
   else
       begin
       Tb_pfor.Next;
       continue;
       end;
   if not fLerGenerico_query('CADCLATABICM','CICLASSIF,CICLASSIF','CICLASSIF='+QuotedStr(Tb_pforNCM_FOR.asstring)
                          +' and CI_CEST='+QuotedStr(Tb_pforCEST_FOR.asstring),query_consulta) then
      begin
      if not fLerGenerico_query('CADCLATABICM_CEST','NCMCEST_CODNCM','NCMCEST_CODNCM='+QuotedStr(Tb_pforNCM_FOR.asstring)
                             +' and NCMCEST_CEST='+QuotedStr(Tb_pforCEST_FOR.asstring),query_consulta) then
         begin
         query_exe.close;
         query_exe.sql.clear;
         query_exe.sql.Add('insert into  CADCLATABICM_CEST '
                          +'(  NCMCEST_CODNCM, NCMCEST_CEST) '
                          +'values (  :NCMCEST_CODNCM, :NCMCEST_CEST) ');
         query_exe.ParamByName('NCMCEST_CODNCM').Asstring := Tb_pforNCM_FOR.AsString;
         query_exe.ParamByName('NCMCEST_CEST').Asstring := Tb_pforCEST_FOR.AsString;
         try
            query_exe.ExecSQL;
         except on e : exception do
            begin
            ex_erroSql_Novo(query_exe,610,'SGE '+E.MESSAGE ,'CADCLATABICM_CEST' );
            end;
            end;
         end;
      end;
   Tb_pfor.Next;
   end;



query_exe.CLOSE;
FreeAndNil(query_exe);

end;

procedure TFrm_Compras_dados_Fiscais.bbatualizarClick(Sender: TObject);
begin
fAtualizarcadpro;
close;

end;

procedure TFrm_Compras_dados_Fiscais.DBGrid_cst_icms2DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
 Check: Integer;
R: TRect;

begin
{
if (DataCol=mcol_CST_SUG_REV_DUF_ATU) or
   (DataCol= mcol_CST_SUG_CF_DUF_ATU) or
   (DataCol= mcol_CST_SUG_REV_FUF_ATU) or
   (DataCol= mcol_CST_SUG_CF_FUF_ATU) then
   begin
   DBGrid_cst_icms2.Canvas.Brush.Color:=$00DDFFDD;
   DBGrid_cst_icms2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if (DataCol=mcol_NCM_PRO) or
   (DataCol=mcol_NCM_FOR) or
   (DataCol=mcol_ATU_NCM)  then
   begin
   DBGrid_cst_icms2.Canvas.Brush.Color:=clBtnFace;
   DBGrid_cst_icms2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if (DataCol=mcol_ORIGEM_PRO) or
   (DataCol=mcol_ORIGEM_FOR) or
   (DataCol=mcol_ATU_ORIGEM_PRO) then
   begin
   DBGrid_cst_icms2.Canvas.Brush.Color:=$00FFC4E1;
   DBGrid_cst_icms2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if (DataCol=mcol_CSOSN_FOR) or
   (DataCol=mcol_CSOSN_PRO) or
   (DataCol=mcol_ATU_CSOSN) then
   begin
   DBGrid_cst_icms2.Canvas.Brush.Color:=$00DDFFDD;
   DBGrid_cst_icms2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if (DataCol=mcol_PIS_CST_PRO) or
   (DataCol=mcol_PIS_CST_FOR) or
   (DataCol=mcol_ATU_CST_PIS_COFINS) then
   begin
   DBGrid_cst_icms2.Canvas.Brush.Color:=$00FFC4E1;
   DBGrid_cst_icms2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if (DataCol=mcol_CEST_PRO) or
   (DataCol=mcol_CEST_FOR) or
   (DataCol=mcol_ATU_CEST) then
   begin
   DBGrid_cst_icms2.Canvas.Brush.Color:=$00DDFFDD;
   DBGrid_cst_icms2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

}

//Desenha um checkbox no dbgrid

if (DataCol=mcol_CST_SUG_REV_DUF_ATU) or
   (DataCol= mcol_CST_SUG_CF_DUF_ATU) or
   (DataCol= mcol_CST_SUG_REV_FUF_ATU) or
   (DataCol= mcol_CST_SUG_CF_FUF_ATU) then
   begin
   DBGrid_cst_icms2.Canvas.FillRect(Rect);
   Check := 0;



   if Tb_pfor.fieldbyname(Column.FieldName).AsString= 'S' then
      Check := DFCS_CHECKED
    else
      Check := 0;
    R:=Rect;
   InflateRect(R,-2,-2);
   DrawFrameControl(DBGrid_cst_icms2.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
   end;




end;

procedure TFrm_Compras_dados_Fiscais.CB_CST_SUG_REV_DUF_ATUClick(Sender: TObject);
begin
Atualizarcheck('CST_SUG_REV_DUF_ATU',iif( CB_CST_SUG_REV_DUF_ATU.checked=true,'S','N'));

end;

procedure TFrm_Compras_dados_Fiscais.CB_CST_SUG_CF_DUF_ATUClick(
  Sender: TObject);
begin
 Atualizarcheck('CST_SUG_CF_DUF_ATU',iif( CB_CST_SUG_CF_DUF_ATU.checked=true,'S','N'));

end;

procedure TFrm_Compras_dados_Fiscais.CB_CST_SUG_REV_FUF_ATUClick(
  Sender: TObject);
begin
 Atualizarcheck('CST_SUG_REV_FUF_ATU',iif( CB_CST_SUG_REV_FUF_ATU.checked=true,'S','N'));

end;

procedure TFrm_Compras_dados_Fiscais.CB_CST_SUG_CF_FUF_ATUClick(
  Sender: TObject);
begin
 Atualizarcheck('CST_SUG_CF_FUF_ATU',iif( CB_CST_SUG_CF_FUF_ATU.checked=true,'S','N'));

end;

procedure TFrm_Compras_dados_Fiscais.CB_CSOSN_SUG_REV_DUF_ATUClick(
  Sender: TObject);
begin
Atualizarcheck('CSOSN_SUG_REV_DUF_ATU',iif( CB_CSOSN_SUG_REV_DUF_ATU.checked=true,'S','N'));

end;

procedure TFrm_Compras_dados_Fiscais.CB_CSOSN_SUG_CF_DUF_ATUClick(
  Sender: TObject);
begin
Atualizarcheck('CSOSN_SUG_CF_DUF_ATU',iif( CB_CSOSN_SUG_CF_DUF_ATU.checked=true,'S','N'));

end;

procedure TFrm_Compras_dados_Fiscais.CB_CSOSN_SUG_REV_FUF_ATUClick(
  Sender: TObject);
begin
Atualizarcheck('CSOSN_SUG_REV_FUF_ATU',iif( CB_CSOSN_SUG_REV_FUF_ATU.checked=true,'S','N'));

end;

procedure TFrm_Compras_dados_Fiscais.CB_CSOSN_SUG_CF_FUF_ATUClick(
  Sender: TObject);
begin
Atualizarcheck('CSOSN_SUG_CF_FUF_ATU',iif( CB_CSOSN_SUG_CF_FUF_ATU.checked=true,'S','N'));

end;

procedure TFrm_Compras_dados_Fiscais.CB_COFINS_CST_SUG_SAIDA_ATUClick(
  Sender: TObject);
begin
 Atualizarcheck('COFINS_CST_SUG_SAIDA_ATU',iif( CB_COFINS_CST_SUG_SAIDA_ATU.checked=true,'S','N'));

end;

procedure TFrm_Compras_dados_Fiscais.CB_PIS_CST_FOR_ATUClick(
  Sender: TObject);
begin
 Atualizarcheck('PIS_CST_FOR_ATU',iif( CB_PIS_CST_FOR_ATU.checked=true,'S','N'));

end;

procedure TFrm_Compras_dados_Fiscais.CB_PIS_CST_SUG_SAIDA_ATUClick(
  Sender: TObject);
begin
 Atualizarcheck('PIS_CST_SUG_SAIDA_ATU',iif( CB_PIS_CST_SUG_SAIDA_ATU.checked=true,'S','N'));

end;

procedure TFrm_Compras_dados_Fiscais.DBGrid_csosnDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
 Check: Integer;
R: TRect;

begin
if (DataCol= mcol_CSOSN_SUG_REV_DUF_ATU) or
   (DataCol= mcol_CSOSN_SUG_CF_DUF_ATU) or
   (DataCol= mcol_CSOSN_SUG_REV_FUF_ATU) or
   (DataCol= mcol_CSOSN_SUG_CF_FUF_ATU) then


   begin
   DBGrid_csosn.Canvas.FillRect(Rect);
   Check := 0;



   if Tb_pfor.fieldbyname(Column.FieldName).AsString= 'S' then
      Check := DFCS_CHECKED
    else
      Check := 0;
    R:=Rect;
   InflateRect(R,-2,-2);
   DrawFrameControl(DBGrid_csosn.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
   end;


end;

procedure TFrm_Compras_dados_Fiscais.DBGrid_cst_COFINSDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
 Check: Integer;
R: TRect;

begin
if (DataCol= mcol_COFINS_CST_FOR_ATU) or
   (DataCol= mcol_COFINS_CST_SUG_SAIDA_ATU)  then



   begin

   DBGrid_cst_COFINS.Canvas.FillRect(Rect);
   Check := 0;



   if Tb_pfor.fieldbyname(Column.FieldName).AsString= 'S' then
      Check := DFCS_CHECKED
    else
      Check := 0;
    R:=Rect;
   InflateRect(R,-2,-2);
   DrawFrameControl(DBGrid_cst_COFINS.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
   end;


end;

procedure TFrm_Compras_dados_Fiscais.DBGrid_cst_pisDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
 Check: Integer;
R: TRect;

begin
if (DataCol= mcol_PIS_CST_FOR_ATU) or
   (DataCol= mcol_PIS_CST_SUG_SAIDA_ATU)  then



   begin

   DBGrid_cst_pis.Canvas.FillRect(Rect);
   Check := 0;



   if Tb_pfor.fieldbyname(Column.FieldName).AsString= 'S' then
      Check := DFCS_CHECKED
    else
      Check := 0;
    R:=Rect;
   InflateRect(R,-2,-2);
   DrawFrameControl(DBGrid_cst_pis.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
   end;



end;

procedure TFrm_Compras_dados_Fiscais.DBGrid_csosnCellClick(
  Column: TColumn);
begin

if (DBGrid_csosn.SelectedIndex=mcol_CSOSN_SUG_REV_DUF_ATU) or
   (DBGrid_csosn.SelectedIndex= mcol_CSOSN_SUG_CF_DUF_ATU) or
   (DBGrid_csosn.SelectedIndex= mcol_CSOSN_SUG_REV_FUF_ATU) or
   (DBGrid_csosn.SelectedIndex= mcol_CSOSN_SUG_CF_FUF_ATU) then
   begin


   Tb_pfor.Edit;
   if Tb_pfor.fieldbyname(DBGrid_csosn.SelectedField.FieldName).AsString= 'S' then
      Tb_pfor.fieldbyname(DBGrid_csosn.SelectedField.FieldName).AsString := 'N'
   else
      Tb_pfor.fieldbyname(DBGrid_csosn.SelectedField.FieldName).AsString := 'S';
   Tb_pfor.Post;
   end;

end;

procedure TFrm_Compras_dados_Fiscais.DBGrid_cst_pisCellClick(
  Column: TColumn);
begin
if (DBGrid_cst_pis.SelectedIndex= mcol_PIS_CST_FOR_ATU) or
   (DBGrid_cst_pis.SelectedIndex= mcol_PIS_CST_SUG_SAIDA_ATU)  then
   begin
   Tb_pfor.Edit;
   if Tb_pfor.fieldbyname(DBGrid_cst_pis.SelectedField.FieldName).AsString= 'S' then
      Tb_pfor.fieldbyname(DBGrid_cst_pis.SelectedField.FieldName).AsString := 'N'
   else
      Tb_pfor.fieldbyname(DBGrid_cst_pis.SelectedField.FieldName).AsString := 'S';
   Tb_pfor.Post;
   end;


end;

procedure TFrm_Compras_dados_Fiscais.DBGrid_cst_COFINSCellClick(
  Column: TColumn);
begin
if (DBGrid_cst_COFINS.SelectedIndex= mcol_COFINS_CST_FOR_ATU) or
   (DBGrid_cst_COFINS.SelectedIndex= mcol_COFINS_CST_SUG_SAIDA_ATU)  then
   begin
   Tb_pfor.Edit;
   if Tb_pfor.fieldbyname(DBGrid_cst_COFINS.SelectedField.FieldName).AsString= 'S' then
      Tb_pfor.fieldbyname(DBGrid_cst_COFINS.SelectedField.FieldName).AsString := 'N'
   else
      Tb_pfor.fieldbyname(DBGrid_cst_COFINS.SelectedField.FieldName).AsString := 'S';
   Tb_pfor.Post;
   end;

end;

procedure TFrm_Compras_dados_Fiscais.DBGrid_cst_icms2CellClick(
  Column: TColumn);
begin
if (DBGrid_cst_icms2.SelectedIndex =mcol_CST_SUG_REV_DUF_ATU) or
   (DBGrid_cst_icms2.SelectedIndex = mcol_CST_SUG_CF_DUF_ATU) or
   (DBGrid_cst_icms2.SelectedIndex = mcol_CST_SUG_REV_FUF_ATU) or
   (DBGrid_cst_icms2.SelectedIndex = mcol_CST_SUG_CF_FUF_ATU) then
   begin
   Tb_pfor.Edit;
   if Tb_pfor.fieldbyname(DBGrid_cst_icms2.SelectedField.FieldName).AsString= 'S' then
      Tb_pfor.fieldbyname(DBGrid_cst_icms2.SelectedField.FieldName).AsString := 'N'
   else
      Tb_pfor.fieldbyname(DBGrid_cst_icms2.SelectedField.FieldName).AsString := 'S';
   Tb_pfor.Post;
   end;

end;

procedure TFrm_Compras_dados_Fiscais.CB_ORIGEM_FOR_ATUClick(
  Sender: TObject);
begin
Atualizarcheck('ORIGEM_FOR_ATU',iif( CB_ORIGEM_FOR_ATU.checked=true,'S','N'));

end;

procedure TFrm_Compras_dados_Fiscais.CB_CEST_FOR_ATUClick(Sender: TObject);
begin
Atualizarcheck('CEST_FOR_ATU',iif( CB_CEST_FOR_ATU.checked=true,'S','N'));

end;

procedure TFrm_Compras_dados_Fiscais.FormShow(Sender: TObject);
begin
tsCST_COFINS.TabVisible:=false;
end;

end.

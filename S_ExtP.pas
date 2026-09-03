unit S_ExtP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, S_DM1, S_DM2, db, dbtables, func, S_Pro,
  S_Impres,lerarq, S_SelEmp,s_lerarq_geral;

type
  TFrm_ExtP = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    NOMPRO: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    BitBtn1: TBitBtn;
    bbSair: TBitBtn;
    CODPRO: TEdit;
    Qr_Ven: TQuery;
    Qr_Ent: TQuery;
    Qr_Dev: TQuery;
    Qr_Devcli: TQuery;
    Qr_VenP1TIPO: TFloatField;
    Qr_VenP1DATAP: TDateTimeField;
    Qr_VenP1CODCLI: TFloatField;
    Qr_VenP2CHAVE: TFloatField;
    Qr_VenP2ORDEM: TFloatField;
    Qr_DevcliP1TIPO: TFloatField;
    Qr_DevcliP1DATAP: TDateTimeField;
    Qr_DevcliP1CODCLI: TFloatField;
    Qr_DevcliP2CHAVE: TFloatField;
    Qr_DevcliP2ORDEM: TFloatField;
    Qr_EntPF1CODFOR: TFloatField;
    Qr_EntPF2CHAVE: TFloatField;
    Qr_EntPF2QTDP: TFloatField;
    Qr_DevP1TIPO: TFloatField;
    Qr_DevP1DATAP: TDateTimeField;
    Qr_DevP1CODCLI: TFloatField;
    Qr_DevP2CHAVE: TFloatField;
    Qr_DevP2ORDEM: TFloatField;
    Qr_Aju: TQuery;
    Qr_AjuAJDATA: TDateTimeField;
    Qr_AjuAJCODPRO: TFloatField;
    Qr_AjuAJQTD: TFloatField;
    Qr_AjuAJTIPOM: TFloatField;
    Qr_AjuAJMOTIVO: TStringField;
    Qr_AjuAJSEQ: TFloatField;
    Qr_EntPF1NUMNF: TFloatField;
    Qr_EntPF1DATANF: TDateTimeField;
    Qr_Devclinomecli: TStringField;
    Qr_Entnomefor: TStringField;
    Qr_Devnomecli: TStringField;
    Qr_Vennomecli: TStringField;
    CB_ORC: TCheckBox;
    Qr_VenP2LOTSEQ: TFloatField;
    Qr_DevP2LOTSEQ: TFloatField;
    Qr_DevcliP2LOTSEQ: TFloatField;
    Qr_EntPF2LOTSEQ: TFloatField;
    lbl_grade: TLabel;
    GRADE: TEdit;
    RG_TIPO: TRadioGroup;
    SaidaVenda: TCheckBox;
    Qr_EntOp: TQuery;
    Qr_SaiOp: TQuery;
    Qr_EntOpOP1_CODEMP: TFloatField;
    Qr_EntOpOP1_CODIGO: TFloatField;
    Qr_EntOpOP1_NOME: TStringField;
    Qr_EntOpOP1_DATA: TDateTimeField;
    Qr_EntOpOP1_DATAPREV: TDateTimeField;
    Qr_EntOpOP1_LOTE: TStringField;
    Qr_EntOpOP1_DATAVEN: TDateTimeField;
    Qr_EntOpOP1_TMPPREV: TFloatField;
    Qr_EntOpOP1_TMPUTIL: TFloatField;
    Qr_EntOpOP1_TOTPREV: TFloatField;
    Qr_EntOpOP1_TOTPROD: TFloatField;
    Qr_EntOpOP1_STATUS: TFloatField;
    Qr_EntOpOP1_OBS01: TStringField;
    Qr_EntOpOP1_OBS02: TStringField;
    Qr_EntOpOP1_OBS03: TStringField;
    Qr_EntOpOP1_OBS04: TStringField;
    Qr_EntOpOP1_OBS05: TStringField;
    Qr_EntOpOP1_OBS06: TStringField;
    Qr_EntOpOP1_OBS07: TStringField;
    Qr_EntOpOP1_OBS08: TStringField;
    Qr_EntOpOP1_OBS09: TStringField;
    Qr_EntOpOP1_OBS10: TStringField;
    Qr_EntOpOP1_LOTSEQ: TFloatField;
    Qr_EntOpOP1_FABENV: TFloatField;
    Qr_EntOpOP1_ORIGEM: TFloatField;
    Qr_EntOpOP2_CODEMP: TFloatField;
    Qr_EntOpOP2_CODIGO: TFloatField;
    Qr_EntOpOP2_SEQ: TFloatField;
    Qr_EntOpOP2_CODPRO: TFloatField;
    Qr_EntOpOP2_NUMERO: TStringField;
    Qr_EntOpOP2_QTDPREV: TFloatField;
    Qr_EntOpOP2_QTDPROD: TFloatField;
    Qr_EntOpOP2_PU: TFloatField;
    Qr_EntOpOP2_LOTSEQ: TFloatField;
    Qr_EntOpOP2_FABENV: TFloatField;
    Qr_EntOpOP2_DTVCTO: TDateTimeField;
    Qr_EntOpOP2_FAB_CHORI: TFloatField;
    Qr_EntOpOP2_FAB_CODIGO: TFloatField;
    Qr_EntOpOP2_FAB_LOTE: TStringField;
    Qr_EntOpOP2_FAB_VCTO: TDateTimeField;
    Qr_EntOpOP2_FAB_DTFAB: TDateTimeField;
    Qr_EntOpOP2_FAB_QTD: TFloatField;
    Qr_EntOpOP2_FAB_PU: TFloatField;
    Qr_EntOpNOMEPRO: TStringField;
    Qr_SaiOpOP1_CODEMP: TFloatField;
    Qr_SaiOpOP1_CODIGO: TFloatField;
    Qr_SaiOpOP1_NOME: TStringField;
    Qr_SaiOpOP1_DATA: TDateTimeField;
    Qr_SaiOpOP1_DATAPREV: TDateTimeField;
    Qr_SaiOpOP1_LOTE: TStringField;
    Qr_SaiOpOP1_DATAVEN: TDateTimeField;
    Qr_SaiOpOP1_TMPPREV: TFloatField;
    Qr_SaiOpOP1_TMPUTIL: TFloatField;
    Qr_SaiOpOP1_TOTPREV: TFloatField;
    Qr_SaiOpOP1_TOTPROD: TFloatField;
    Qr_SaiOpOP1_STATUS: TFloatField;
    Qr_SaiOpOP1_OBS01: TStringField;
    Qr_SaiOpOP1_OBS02: TStringField;
    Qr_SaiOpOP1_OBS03: TStringField;
    Qr_SaiOpOP1_OBS04: TStringField;
    Qr_SaiOpOP1_OBS05: TStringField;
    Qr_SaiOpOP1_OBS06: TStringField;
    Qr_SaiOpOP1_OBS07: TStringField;
    Qr_SaiOpOP1_OBS08: TStringField;
    Qr_SaiOpOP1_OBS09: TStringField;
    Qr_SaiOpOP1_OBS10: TStringField;
    Qr_SaiOpOP1_LOTSEQ: TFloatField;
    Qr_SaiOpOP1_FABENV: TFloatField;
    Qr_SaiOpOP1_ORIGEM: TFloatField;
    Qr_SaiOpOP3_CODEMP: TFloatField;
    Qr_SaiOpOP3_CODIGO: TFloatField;
    Qr_SaiOpOP3_SEQ: TFloatField;
    Qr_SaiOpOP3_CODMAT: TFloatField;
    Qr_SaiOpOP3_NUMERO: TStringField;
    Qr_SaiOpOP3_QTDPREV: TFloatField;
    Qr_SaiOpOP3_QTDUTIL: TFloatField;
    Qr_SaiOpOP3_PU: TFloatField;
    Qr_SaiOpOP3_LOTSEQ: TFloatField;
    Qr_SaiOpOP3_FABENV: TFloatField;
    Qr_SaiOpOP3_LOTE: TStringField;
    Qr_SaiOpOP3_DTVCTO: TDateTimeField;
    Qr_SaiOpNOMEMAT: TStringField;
    Qr_DevP1NUMNF: TFloatField;
    Qr_DevcliP1NUMNF: TFloatField;
    Qr_VenP1NUMNF: TFloatField;
    Qr_EntPF1CODUSR: TFloatField;
    Qr_AjuAJCODUSR: TFloatField;
    Qr_DevP1CODUSR: TFloatField;
    Qr_DevcliP1CODUSR: TFloatField;
    Qr_VenP1CODUSR: TFloatField;
    Qr_EntPF1DATCONF: TDateTimeField;
    bbAjustaExtrato: TBitBtn;
    Qr_EntPF2LOTE: TStringField;
    Qr_EntPF2DATAV: TDateTimeField;
    Qr_AjuAJLOTE: TStringField;
    Qr_AjuAJDATAV: TDateTimeField;
    Qr_DevP2LOTE: TStringField;
    Qr_DevP2DTVCTO: TDateTimeField;
    Qr_DevcliP2LOTE: TStringField;
    Qr_DevcliP2DTVCTO: TDateTimeField;
    Qr_VenP2LOTE: TStringField;
    Qr_VenP2DTVCTO: TDateTimeField;
    Qr_VenP2QTD_ATEN: TFloatField;
    Qr_DevP2QTD_ATEN: TFloatField;
    Qr_DevcliP2QTD_ATEN: TFloatField;
    cb_cancelados: TCheckBox;
    qr_pedvda_excluido: TQuery;
    qr_pedvda_excluidoP1TIPO: TFloatField;
    qr_pedvda_excluidoP1DATAP: TDateTimeField;
    qr_pedvda_excluidoP1CODCLI: TFloatField;
    qr_pedvda_excluidoP2CHAVE: TFloatField;
    qr_pedvda_excluidoP2ORDEM: TFloatField;
    qr_pedvda_excluidonomecli: TStringField;
    qr_pedvda_excluidoP2LOTSEQ: TFloatField;
    qr_pedvda_excluidoP1NUMNF: TFloatField;
    qr_pedvda_excluidoP1CODUSR: TFloatField;
    qr_pedvda_excluidoP2LOTE: TStringField;
    qr_pedvda_excluidoP2DTVCTO: TDateTimeField;
    qr_pedvda_excluidoP2QTD_ATEN: TFloatField;
    Label81: TLabel;
    CB_FILIAL: TComboBox;
    rg_serie: TRadioGroup;
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Qr_VenCalcFields(DataSet: TDataSet);
    procedure Qr_EntCalcFields(DataSet: TDataSet);
    procedure Qr_DevCalcFields(DataSet: TDataSet);
    procedure bbSairClick(Sender: TObject);
    procedure Qr_DevcliCalcFields(DataSet: TDataSet);
    procedure GRADEExit(Sender: TObject);
    procedure Qr_EntOpCalcFields(DataSet: TDataSet);
    procedure Qr_SaiOpCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbAjustaExtratoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CB_FILIALExit(Sender: TObject);
  private
    { Private declarations }
    mFilial: integer;
    function fExtpImprimeCab(pTipo: Integer):Boolean;
  public
    { Public declarations }
    form_impres_extp: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
    function fAjustarEstoque(pTipo: Integer): Boolean;

  end;

var
  Frm_ExtP: TFrm_ExtP;

implementation

uses func_excecoes, S_Agde;


{$R *.DFM}

procedure TFrm_ExtP.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'Frm_ExtP',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_ExtP.CODPROExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;


if not flcadpro(1,0,0,Trim(CODPRO.Text)) then
   begin
   FMensagem('Código de Produto Invalido!',0,['0'],0);
   CODPRO.SetFocus;
   end
else if trim(codpro.Text)='' then
  begin
  NOMPRO.Text:='***Nenhum Produto Selecionado!!!';
  end
else
   begin
   NOMPRO.Text:=Trim(DM1.Tb_ProPDNOME.Value);
   end;

end;

procedure TFrm_ExtP.FormCreate(Sender: TObject);
begin
MDT1.Text:=FormatDateTime(fdt2,date);
MDT2.Text:=FormatDateTime(fdt2,date);

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

if Log_TipoLote=2 then
   begin
   lbl_grade.Caption:='Grade:';
   lbl_grade.Visible:=True;
   GRADE.Visible    :=True;
   GRADE.Text       :='';
   end
else if Log_TipoLote=1 then
   begin
   lbl_grade.Caption:='Lote.:';
   lbl_grade.Visible:=True;
   GRADE.Visible    :=True;
   GRADE.Text       :='';
   end;


end;

procedure TFrm_ExtP.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrToDate(MDT1.Text));
   except
      fMensagem('Favor Digitar uma Data Valida.',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;
end;

procedure TFrm_ExtP.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrToDate(MDT2.Text));
   except
      fMensagem('Favor Digitar uma Data Valida.',0,['0'],0);
      MDT2.SetFocus;
      abort;
      end;
   if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
       begin
       if StrToDate(MDT2.Text)<StrToDate(MDT1.text) then
          begin
          fMensagem('Periodo Invalido. Data Inicial Maior que Final',0,['0'],0);
          MDT1.SetFocus;
          end;

       end;
   end;

end;

procedure TFrm_ExtP.BitBtn1Click(Sender: TObject);
var
mdevcli,majue,majus,mvendan,ment,mdev,totentop,totsaiop,mtotcanc: Real;
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';

Qr_Ven.Close;
Qr_Ven.SQL.Clear;
if not SaidaVenda.Checked then
   Qr_Ven.SQL.Add('Select P1TIPO,P1DATAP,P1CODCLI,P1NUMNF,P2LOTSEQ,P2CHAVE,P2ORDEM'
                 +',(ROUND(CASE WHEN P2QTD_ATEN is null then P2QTD ELSE P2QTD_ATEN END)) AS P2QTD_ATEN,P1CODUSR,P2LOTE,P2DTVCTO from ')
else
   begin
   mcinst4:=fGerarInstrucaoQtd(0,'(ROUND(CASE WHEN P2QTD_ATEN is null then P2QTD ELSE P2QTD_ATEN END))',Form_SelEmp.CLB_EMPRESAS);

   Qr_Ven.SQL.Add('Select P1TIPO,P1DATAP,P1NUMNF,P1CODCLI,P2LOTSEQ,P2CHAVE,'
                      +'P2ORDEM,'+mcinst4+' as P2QTD_ATEN,P1CODUSR,P2LOTE,P2DTVCTO from ');
   end;
Qr_Ven.SQL.Add('  CADP02, CADP01 where '+la_Empresas
              +' P2CODPRO=0'+Trim(CODPRO.Text));
if Trim(GRADE.Text)<>'' then
  Qr_Ven.SQL.Add(' and P2LOTE='+chr(39)+GRADE.Text+chr(39));
Qr_Ven.SQL.Add(' and P1CODEMP=P2CODEMP '
              +' and P1LOTSEQ=P2LOTSEQ '
              +' and P1CHAVE=P2CHAVE '
              +' and P1ORDEM=P2ORDEM '
              +' and P1FILIAL=0'+inttostr(mfilial)

              );

if rg_serie.ItemIndex<>2 then
   Qr_ven.sql.add(' and P1SERIE='+QuotedStr(IntToStr(rg_serie.ItemIndex+1)));

if rg_tipo.ItemIndex=0 then
   Qr_Ven.SQL.add(' and '+iif(CB_ORC.Checked,
                               ' ((P1TIPO=0) or '
                               ,' (')
   +'     (P1TIPO=01) or (P1TIPO=02) or '
   +'     (P1TIPO=04) or (P1TIPO=05) or '
   +'     (P1TIPO=06) or (P1TIPO=07) or '
   +'     (P1TIPO=09) or (P1TIPO=11) or (P1TIPO=16) or (P1TIPO>18) ) ')

else if rg_tipo.ItemIndex=1 then
   Qr_Ven.SQL.Add(' and (P1TIPO=12 or P1TIPO=14 ) ')
else if rg_tipo.ItemIndex=2 then
   Qr_Ven.SQL.Add(' and (P1TIPO=13 or P1TIPO=15 ) ')
else if rg_tipo.ItemIndex=3 then
   Qr_Ven.SQL.Add(' and P1TIPO=19 ');

if Trim(MDT1.Text)<>'/  /' then
  Qr_Ven.SQl.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));
if Trim(MDT2.Text)<>'/  /' then
  Qr_Ven.SQl.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
Qr_Ven.SQL.Add(' and P1STATUS<'+mstatus_excluido+' ');

if SaidaVenda.Checked then
   Qr_Ven.SQL.Add(' group by P1TIPO,P1DATAP,P1NUMNF,P1CODCLI,P2LOTSEQ,P2CHAVE,P2ORDEM,P1CODUSR')
else
   begin
   mcinst4:=fGerarCondicaoQtd('(ROUND(CASE WHEN P2QTD_ATEN is null then P2QTD ELSE P2QTD_ATEN END)) AS P2QTD_ATEN',Form_SelEmp.CLB_EMPRESAS);
   mcinst4:='';
   if trim(mcinst4)<>'' then
      Qr_Ven.SQL.Add(' and  '+mcinst4);
   end;

Qr_Ven.SQL.Add(' order by P2CHAVE,P2ORDEM');
//Qr_Ven.sql.savetofile(mpastatemp + 'SQL.txt');

try
   Qr_Ven.Open;
except
   Qr_Ven.sql.savetofile(mpastatemp + 'SQL.txt');
   end;

// pedidos excluidos no periodo que nao faziam parte da pesquisa

qr_pedvda_excluido.Close;
qr_pedvda_excluido.SQL.Clear;
if not SaidaVenda.Checked then
   qr_pedvda_excluido.SQL.Add('Select P1TIPO,P1DTMOD AS P1DATAP,P1CODCLI,P1NUMNF,P2LOTSEQ,P2CHAVE,P2ORDEM'
                 +',(ROUND(CASE WHEN P2QTD_ATEN is null then P2QTD ELSE P2QTD_ATEN END)) AS P2QTD_ATEN,P1CODUSR,P2LOTE,P2DTVCTO from ')
else
   begin
   mcinst4:=fGerarInstrucaoQtd(0,'(ROUND(CASE WHEN P2QTD_ATEN is null then P2QTD ELSE P2QTD_ATEN END))',Form_SelEmp.CLB_EMPRESAS);

   qr_pedvda_excluido.SQL.Add('Select P1TIPO,P1DATAP,P1NUMNF,P1CODCLI,P2LOTSEQ,P2CHAVE,'
                      +'P2ORDEM,'+mcinst4+' as P2QTD_ATEN,P1CODUSR,P2LOTE,P2DTVCTO from ');
   end;
qr_pedvda_excluido.SQL.Add('  CADP02, CADP01 where '+la_Empresas
              +' P2CODPRO=0'+Trim(CODPRO.Text));
if Trim(GRADE.Text)<>'' then
  qr_pedvda_excluido.SQL.Add(' and P2LOTE='+chr(39)+GRADE.Text+chr(39));
qr_pedvda_excluido.SQL.Add(' and P1CODEMP=P2CODEMP '
              +' and P1LOTSEQ=P2LOTSEQ '
              +' and P1CHAVE=P2CHAVE '
              +' and P1ORDEM=P2ORDEM '
              +' and P1FILIAL=0'+inttostr(mfilial)
              );
if rg_tipo.ItemIndex=0 then
   qr_pedvda_excluido.SQL.add(' and '+iif(CB_ORC.Checked,
                               ' ((P1TIPO=0) or '
                               ,' (')
   +'     (P1TIPO=01) or (P1TIPO=02) or '
   +'     (P1TIPO=04) or (P1TIPO=05) or '
   +'     (P1TIPO=06) or (P1TIPO=07) or '
   +'     (P1TIPO=09) or (P1TIPO=11) or (P1TIPO=16) or (P1TIPO>18) ) ')

else if rg_tipo.ItemIndex=1 then
   qr_pedvda_excluido.SQL.Add(' and (P1TIPO=12 or P1TIPO=14 ) ')
else if rg_tipo.ItemIndex=2 then
   qr_pedvda_excluido.SQL.Add(' and (P1TIPO=13 or P1TIPO=15 ) ')
else if rg_tipo.ItemIndex=3 then
   qr_pedvda_excluido.SQL.Add(' and P1TIPO=19 ');

if Trim(MDT1.Text)<>'/  /' then
   qr_pedvda_excluido.SQl.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)))
else
   qr_pedvda_excluido.SQL.Add(' and P1CODEMP=999999');

if Trim(MDT1.Text)<>'/  /' then
   qr_pedvda_excluido.SQL.Add(fFormatdatetimeParaConsulta('P1DTMOD',true,StrToDate(MDT1.Text) ));


if Trim(MDT2.Text)<>'/  /' then
   qr_pedvda_excluido.SQL.Add(fFormatdatetimeParaConsulta('P1DTMOD',false,StrToDate(MDT2.Text) ));
qr_pedvda_excluido.SQL.Add(' and P1STATUS>7 ');

if SaidaVenda.Checked then
   qr_pedvda_excluido.SQL.Add(' group by P1TIPO,P1DTMOD,P1NUMNF,P1CODCLI,P2LOTSEQ,P2CHAVE,P2ORDEM,P1CODUSR')
else
   begin
   mcinst4:=fGerarCondicaoQtd('(ROUND(CASE WHEN P2QTD_ATEN is null then P2QTD ELSE P2QTD_ATEN END)) AS P2QTD_ATEN',Form_SelEmp.CLB_EMPRESAS);
   mcinst4:='';
   if trim(mcinst4)<>'' then
      qr_pedvda_excluido.SQL.Add(' and  '+mcinst4);
   end;

qr_pedvda_excluido.SQL.Add(' order by P2CHAVE,P2ORDEM');
//qr_pedvda_excluido.sql.savetofile(mpastatemp + 'SQL.txt');

try
   qr_pedvda_excluido.Open;
except
   qr_pedvda_excluido.sql.savetofile(mpastatemp + 'SQL.txt');
   end;
// termino



Qr_Dev.Close;
Qr_Dev.SQL.Clear;
Qr_Dev.SQL.Add('Select P1TIPO,P1DATAP,P1NUMNF,P1CODCLI,P2LOTSEQ,P2CHAVE,P2ORDEM,'
              +'(ROUND(CASE WHEN P2QTD_ATEN is null then P2QTD ELSE P2QTD_ATEN END)) AS P2QTD_ATEN'
              +',P1CODUSR,P2LOTE,P2DTVCTO from '
              +'  CADP02,CADP01 where '+la_Empresas
              +' P2CODPRO=0'+Trim(CODPRO.Text));
if Trim(GRADE.Text)<>'' then
   Qr_Dev.SQL.Add(' and P2LOTE='+chr(39)+GRADE.Text+chr(39));
Qr_Dev.SQL.Add(' and P1CODEMP=P2CODEMP  '
              +' and P1LOTSEQ=P2LOTSEQ '
              +' and P1CHAVE=P2CHAVE '
              +' and P1ORDEM=P2ORDEM '
              +' and P1FILIAL=0'+inttostr(mfilial)
              );
if Trim(MDT1.Text)<>'/  /' then
   Qr_Dev.SQL.Add(' and P1DATAP>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Dev.SQL.Add(' and P1DATAP<='+chr(39)+FormatDatetime(fdt,StrToDate(MDT2.Text))+chr(39));
Qr_Dev.SQL.Add(' and P1STATUS<'+mstatus_excluido+'  and P1TIPO=3');
if RG_TIPO.ItemIndex<>0 then
   Qr_Dev.SQL.Add(' and P2QTD_ATEN is null ');
mcinst4:=fGerarCondicaoQtd('(ROUND(CASE WHEN P2QTD_ATEN is null then P2QTD ELSE P2QTD_ATEN END))',Form_SelEmp.CLB_EMPRESAS);
mcinst4:='';
if trim(mcinst4)<>'' then
   Qr_Dev.SQL.Add(' and  '+mcinst4);


Qr_Dev.SQL.Add(' order by P2CHAVE,P2ORDEM');
try
   Qr_Dev.Open;
except
   Qr_Dev.SQL.SaveToFile(mpastatemp + 'SQL.txt');
   exit;
   end;

Qr_DevCli.Close;
Qr_DevCli.SQL.Clear;
Qr_DevCli.SQL.Add('Select P1TIPO,P1DATAP,P1CODCLI,P2LOTSEQ,P2CHAVE,P1NUMNF,P2ORDEM,'
                 +'(ROUND(CASE WHEN P2QTD_ATEN is null then P2QTD ELSE P2QTD_ATEN END)) AS P2QTD_ATEN '
                 +',P1CODUSR,P2LOTE,P2DTVCTO from '
              +'  CADP02, CADP01 where '+la_Empresas
              +' P2CODPRO=0'+Trim(CODPRO.Text));
if Trim(GRADE.Text)<>'' then
   Qr_DevCli.SQL.Add(' and P2LOTE='+chr(39)+GRADE.Text+chr(39));
Qr_DevCli.SQL.Add(iif(DM1.Qr_Tid.locate('TINOME','CADPED',[]),'',' and P1CODEMP=P2CODEMP ')
              +' and P1LOTSEQ=P2LOTSEQ '
              +' and P1CHAVE=P2CHAVE '
              +' and P1ORDEM=P2ORDEM '
              +' and P1FILIAL=0'+inttostr(mfilial)
              );
if Trim(MDT1.Text)<>'/  /' then
   Qr_DevCli.SQL.Add(' and P1DATAP>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_DevCli.SQL.Add(' and P1DATAP<='+chr(39)+FormatDatetime(fdt,StrToDate(MDT2.Text))+chr(39));
if RG_TIPO.ItemIndex=0 then
   Qr_Devcli.SQL.add(' and   ( (P1TIPO=08) or (P1TIPO=12) or '
                        +'     (P1TIPO=13) or (P1TIPO=17) or (P1TIPO=18) )')
else if RG_TIPO.ItemIndex=1 then
   Qr_Devcli.SQL.Add(' and P1TIPO=11 ')
else if RG_TIPO.ItemIndex=2 then
   Qr_Devcli.SQL.Add(' and P1TIPO=07 ');
Qr_DevCli.SQL.Add(' and P1STATUS<'+mstatus_excluido+' ');
mcinst4:=fGerarCondicaoQtd('(ROUND(CASE WHEN P2QTD_ATEN is null then P2QTD ELSE P2QTD_ATEN END))',Form_SelEmp.CLB_EMPRESAS);
mcinst4:='';

if trim(mcinst4)<>'' then
   Qr_DevCli.SQL.Add(' and  '+mcinst4);

Qr_DevCli.SQL.Add(' order by P2CHAVE,P2ORDEM');
Qr_DevCli.Open;
la_Empresas:=fEmpresas_Selecionadas('CADPF2','PF2CODEMP',Form_SelEmp.CLB_EMPRESAS);

if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';


Qr_Ent.Close;
Qr_Ent.SQL.Clear;
Qr_Ent.SQL.Add('Select PF1DATCONF,PF1CODFOR,PF1NUMNF,PF1DATANF,PF2LOTSEQ,PF2CHAVE,'
              +' PF2QTDP,PF1CODUSR,PF2LOTE,PF2DATAV from '
              +' CADPF2, CADPF1 where '+la_Empresas
              +' PF2CODPRO=0'+Trim(CODPRO.Text));
if Trim(GRADE.Text)<>'' then
   Qr_Ent.SQL.Add(' and PF2LOTE='+chr(39)+GRADE.Text+chr(39));
Qr_Ent.SQL.Add(' and PF1CODEMP=PF2CODEMP '
              +' and PF1LOTSEQ=PF2LOTSEQ '
              +' and PF1CHAVE=PF2CHAVE '
              +' and PF1FILIAL=0'+inttostr(mfilial)

              +iif(CB_ORC.Checked,'', ' and PF1STATUS>0 ')
              +' and PF1STATUS<8 ');

if rg_tipo.ItemIndex=3 then
   Qr_Ent.SQL.Add(' and (PF1ORIGEM=1) ');
//Qr_Ent.SQL.Add(' and substr(to_char(pf2cfo),-3,3)<>'+chr(39)+'902'+chr(39));

if Trim(MDT1.Text)<>'/  /' then
   Qr_Ent.SQL.Add(' and PF1DATCONF>='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Ent.SQL.Add(' and PF1DATCONF<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39));
Qr_Ent.SQL.Add(' Order by PF1CHAVE');
Qr_Ent.Open;

la_Empresas:=fEmpresas_Selecionadas('CADAJU','AJCODEMP',Form_SelEmp.CLB_EMPRESAS);

if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';

Qr_Aju.Close;
Qr_Aju.SQl.Clear;
Qr_Aju.SQl.Add('Select AJSEQ,AJDATA,AJCODPRO,AJQTD, '
                  +' DECODE(AJTIPOM,30,0 '
                                 +'  ,22,0 '
                                 +'  ,12,0 '
                                 +'  ,31,1 '
                                 +'  ,23,1 '
                                 +'  ,13,1 '
                                 +'  ,AJTIPOM) AS AJTIPOM '
                                 +',AJMOTIVO,AJCODUSR,AJLOTE,AJDATAV '
              +'       from CADAJU where '+la_Empresas
              +' AJCODPRO=0'+Trim(CODPRO.Text));
if Trim(GRADE.Text)<>'' then
   Qr_Aju.SQL.Add(' and AJLOTE='+chr(39)+GRADE.Text+chr(39));

if Trim(MDT1.Text)<>'/  /' then
   Qr_Aju.SQL.Add(' and AJDATA>='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Aju.SQL.Add(' and AJDATA<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39));
if RG_TIPO.ItemIndex=0 then
   Qr_Aju.SQL.add(' and (AJESTMOV=0 or AJESTMOV=3)')
else
   Qr_Aju.SQL.add(' and AJESTMOV=0'+IntTostr(RG_TIPO.ItemIndex));

Qr_Aju.SQL.add('  and AJFILIAL=0'+inttostr(mfilial));

Qr_Aju.SQL.Add(' Order by AJSEQ');
try
   Qr_Aju.Open;
except
   Qr_Aju.Sql.SaveTofile(mpastatemp + 'SQL.txt');

  end;

//////// select para entrada Op......

la_Empresas:=fEmpresas_Selecionadas('CADOP01','OP1_CODEMP',Form_SelEmp.CLB_EMPRESAS);
if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';

Qr_EntOp.Close;
Qr_EntOp.SQl.Clear;
Qr_EntOp.SQl.Add('Select * ');
Qr_EntOp.SQl.Add('       from CADOP01, CADOP02 where '+la_Empresas);
Qr_EntOp.SQl.Add('     OP2_CODPRO =0'+Trim(CODPRO.Text));
Qr_EntOp.SQl.Add(' and OP2_CODIGO = OP1_CODIGO');
Qr_EntOp.SQl.Add(' and OP2_CODEMP = OP1_CODEMP');
Qr_EntOp.SQl.Add(' and OP2_FABENV = OP1_FABENV');
Qr_EntOp.SQl.Add(' and OP1_STATUS = 2 ');

if Trim(MDT1.Text)<>'/  /' then
   Qr_EntOp.SQL.Add(' and OP1_DATA>='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_EntOp.SQL.Add(' and OP1_DATA<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39));
if Trim(GRADE.Text)<>'' then
   Qr_EntOp.SQL.Add(' and OP1_LOTE='+chr(39)+GRADE.Text+chr(39));

Qr_EntOp.SQL.Add(' and OP1_LOCARMAZENAMENTO='+inttostr(mfilial));
Qr_EntOp.SQL.Add(' Order by OP2_CODPRO,OP2_SEQ');
Qr_EntOp.Open;

//////////////////////////////////////////////////
//////// select para saida Op......
la_Empresas:=fEmpresas_Selecionadas('CADOP01','OP1_CODEMP',Form_SelEmp.CLB_EMPRESAS);
if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';

Qr_SaiOp.Close;
Qr_SaiOp.SQl.Clear;
Qr_SaiOp.SQl.Add('Select * ');
Qr_SaiOp.SQl.Add('       from CADOP01, CADOP03 where '+la_Empresas);
Qr_SaiOp.SQl.Add('     OP3_CODMAT =0'+Trim(CODPRO.Text));
Qr_SaiOp.SQl.Add(' and OP3_CODIGO = OP1_CODIGO');
Qr_SaiOp.SQl.Add(' and OP3_CODEMP = OP1_CODEMP');
Qr_SaiOp.SQl.Add(' and OP3_FABENV = OP1_FABENV');
Qr_SaiOp.SQl.Add(' and (OP1_STATUS = 0 or OP1_STATUS = 2)');

if Trim(MDT1.Text)<>'/  /' then
   Qr_SaiOp.SQL.Add(' and OP1_DATA>='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_SaiOp.SQL.Add(' and OP1_DATA<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39));
if Trim(GRADE.Text)<>'' then
   Qr_SaiOp.SQL.Add(' and OP3_LOTE='+chr(39)+GRADE.Text+chr(39));
Qr_SaiOp.SQL.Add(' and OP1_LOCARMAZENAMENTO='+inttostr(mfilial));
Qr_SaiOp.SQL.Add(' Order by OP3_CODMAT,OP3_SEQ');
Qr_SaiOp.Open;
//Qr_SaiOp.SQL.SAVETOFILE(mpastatemp + 'SQL.TXT');

//////////////////////////////////////////////////

if (Qr_Ven.Eof) and (Qr_Ent.Eof)    and (Qr_Dev.Eof)   and
   (Qr_Aju.Eof) and (Qr_Devcli.Eof) and (Qr_EntOp.Eof) and (Qr_SaiOp.Eof) and (qr_pedvda_excluido.Eof) then
   begin
   fMensagem('Nao ha nenhum tipo de movimento de acordo'+#13
              +'com as opcoes solicitadas',0,['0'],0);
   CODPRO.SetFocus;
   exit;
   end;

mvendan:=0; majue:=0; majus:=0; mdevcli:=0; ment:=0; mdev:=0; totentop:=0; totsaiop:=0; mtotcanc:=0;
testeform := TFrm_Extp(FindGlobalComponent('form_impres_extp'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_extp);
form_impres_extp.mpag:=0;
form_impres_extp.mlin:=0;

form_impres_extp.fimpresajustaimp(1,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP

fExtpImprimeCab(0);
form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,Centra('ENTRADAS POR COMPRA',' ',80),mneg);
form_impres_extp.mlin:=form_impres_extp.mlin+1;
form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
if Qr_Ent.Eof then
   begin
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.Rdprint1.ImpF(form_impres_extp.mlin,01,Centra('NAO HOUVE ENTRADAS POR COMPRA',' ',80),mneg);
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
   end
else
   begin
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+--------+----------+------------------------------------+-----+------+--------+',mnormal);
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,'| Pedido |Quantidade| Nome do Fornecedor                 | Usr.|Numero|D a t a |',mnormal);
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+--------+----------+------------------------------------+-----+------+--------+',mnormal);

{
| Pedido |Quantidade| Nome do Fornecedor                 | Usr.|Numero|D a t a |',mnormal);
+--------+----------+------------------------------------+-----+------+--------+
|12345678|1234567.12|123456789012345678901234567890123456|01234|123456|12/05/20|',mnormal);

',mnormal);
}
   end;

While not Qr_Ent.Eof do
   begin
   if form_impres_extp.mlin=0 then
      begin
      fExtpImprimeCab(0);
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,Centra('ENTRADAS POR COMPRA',' ',80),mneg);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+--------+----------+------------------------------------+-----+------+--------+',mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,'| Pedido |Quantidade| Nome do Fornecedor                 | Usr.|Numero|D a t a |',mnormal);
      end;
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.Rdprint1.ImpF(form_impres_extp.mlin,01,'|'+insere(Qr_EntPF2CHAVE.AsString,'0',08)
                           +'|'+insere(Qr_EntPF2QTDP.AsString,' ',10)
                           +'|'+insere2(FormatFloat('00000',Qr_EntPF1CODFOR.Value)
                           +'-'+Qr_Entnomefor.Value,' ',36)
                           +'|'+insere(Qr_EntPF1CODUSR.AsString,' ',5)
                           +'|'+iif(Qr_EntPF1NUMNF.IsNull,FormatFloat('0000000',Qr_EntPF2CHAVE.Value),FormatFloat('0000000',Qr_EntPF1NUMNF.Value))
                           +'|'+iif(Qr_EntPF1DATANF.IsNull,FormatdateTime(fdt2,Qr_EntPF1DATCONF.Value),FormatDateTime(fdt3,Qr_EntPF1DATANF.Value))
                           +'|',mnormal);
   ment:=Ment+Qr_EntPF2QTDP.AsInteger;

   Qr_Ent.Next;
   if Qr_Ent.Eof then
      begin
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.ImpF(form_impres_extp.mlin,01,'|'+insere2('-Total','.',8)
                           +'|'+insere(FormatFloat(mcasqtd,ment),' ',10)
                           +'|'+insere2(' ','.',36)
                           +'|'+insere2(' ',' ',05)
                           +'|'+insere2(' ',' ',09)
                           +'|',mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+--------+----------+------------------------------------+-----+------+--------+',mnormal);
      end
   else if form_impres_extp.mlin>58 then
      begin
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+--------+----------+------------------------------------+-----+------+--------+',mnormal);
      form_impres_extp.mlin:=0;
      form_impres_extp.Rdprint1.Novapagina;
      end;
   end;
// Devolucoes de Clientes

form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
form_impres_extp.mlin:=form_impres_extp.mlin+1;
if RG_TIPO.ItemIndex=0 then
   form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,Centra('DEVOLUCAO DE CLIENTES',' ',80),mneg)
else if RG_TIPO.ItemIndex=1 then
   form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,Centra('REMESSA P/CONSIGNACAO',' ',80),mneg)
else if RG_TIPO.ItemIndex=2 then
   form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,Centra('REMESSA P/VENDA FORA ESTABELECIMENTO',' ',80),mneg)
else if RG_TIPO.ItemIndex=3 then
   form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,Centra('DEVOLUCAO DE MERCADORIAS DE TERCEIROS',' ',80),mneg);
form_impres_extp.mlin:=form_impres_extp.mlin+1;
form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
if Qr_DevCli.Eof then
   begin
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.Rdprint1.ImpF(form_impres_extp.mlin,01,Centra('NAO HOUVE NOVIMENTO',' ',80),mneg);
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
   end
else
   begin
   form_impres_extp.mlin:=form_impres_extp.mlin+1;

   form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+-------+--------+---------------------------------------+-----+--------+------+',mnormal);
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,'| Pedido|Quantid.|Nome do Clientes                       | Usr.|D a t a |No.Doc|',mnormal);

{
+-------+--------+---------------------------------------+-----+--------+------+',mnormal);
| Pedido|Quantid.|Nome do Clientes                       | Usr.|D a t a |No.Doc|',mnormal);
|1234567|12345678|123456789012345678901234567890123456789|12345|10/09/04|123456|',mnormal);
 }
   end;

While not Qr_DevCli.Eof do
   begin
   if form_impres_extp.mlin=0 then
      begin
      fExtpImprimeCab(0);
      if RG_TIPO.ItemIndex=0 then
         form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,Centra('DEVOLUCAO DE CLIENTES',' ',80),mneg)
      else if RG_TIPO.ItemIndex=1 then
         form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,Centra('REMESSA P/CONSIGNACAO',' ',80),mneg)
      else if RG_TIPO.ItemIndex=2 then
         form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,Centra('REMESSA P/VENDA FORA ESTABELECIMENTO',' ',80),mneg)
      else if RG_TIPO.ItemIndex=3 then
         form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,Centra('DEVOLUCAO DE MERCADORIAS DE TERCEIROS',' ',80),mneg);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+-------+--------+---------------------------------------+-----+--------+------+',mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,'| Pedido|Quantid.|Nome do Clientes                       | Usr.|D a t a |No.Doc|',mnormal);
      end;
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.Rdprint1.ImpF(form_impres_extp.mlin,01,'|'+insere(Qr_DevcliP2CHAVE.AsString,'0',07)
                           +'|'+insere(Qr_DevcliP2QTD_ATEN.AsString,' ',08)
                           +'|'+insere2(FormatFloat('00000',Qr_DevcliP1CODCLI.Value)+'-'+
                                  Qr_Devclinomecli.Value,' ',39)
                           +'|'+insere(Qr_DevcliP1CODUSR.AsString,'0',05)
                           +'|'+FormatDateTime(fdt3,Qr_DevcliP1DATAP.Value)
                           +'|'+insere(Qr_DevcliP1NUMNF.AsString,'0',06)
                           +'|',mnormal);
   mdevcli:=mdevcli+Qr_DevcliP2QTD_ATEN.AsInteger;


   Qr_DevCli.Next;
   if Qr_DevCli.Eof then
      begin
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.ImpF(form_impres_extp.mlin,01,'|'+insere2('-Total','.',7)
                           +'|'+insere(FormatFloat(mcasqtd,mDevCli),' ',08)
                           +'|'+insere2(' ',' ',39)
                           +'|'+insere2(' ',' ',05)
                           +'|'+insere2(' ',' ',8)
                           +'|'+insere2(' ',' ',06)
                           +'|',mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+-------+--------+---------------------------------------+-----+--------+------+',mnormal);
      end
   else if form_impres_extp.mlin>58 then
      begin
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+-------+--------+---------------------------------------+-----+--------+------+',mnormal);
      form_impres_extp.mlin:=0;
      form_impres_extp.RDprint1.Novapagina;
      end;
   end;



// Vendas

form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
form_impres_extp.mlin:=form_impres_extp.mlin+1;
if form_impres_extp.mlin>58 then
   begin
   form_impres_extp.RDprint1.Novapagina;
   fExtpImprimeCab(0);
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   end;
form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,Centra('SAIDAS POR VENDAS',' ',80),mneg);
form_impres_extp.mlin:=form_impres_extp.mlin+1;
form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
if Qr_Ven.Eof then
   begin
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.Rdprint1.ImpF(form_impres_extp.mlin,01,Centra('NAO HOUVE SAIDAS POR VENDAS',' ',80),mneg);
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
   end
else
   begin
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+-------+--------+---------------------------------------+-----+--------+------+',mnormal);
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,'| Pedido|Quantid.|Nome do Clientes                       | Usr.|D a t a |No.Doc|',mnormal);
   end;
While not Qr_Ven.Eof do
   begin
   if form_impres_extp.mlin=0 then
      begin
      fExtpImprimeCab(0);
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,Centra('SAIDAS POR VENDAS)',' ',80),mneg);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+-------+--------+---------------------------------------+-----+--------+------+',mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,'| Pedido|Quantid.|Nome do Clientes                       | Usr.|D a t a |No.Doc|',mnormal);
      end;
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.Rdprint1.ImpF(form_impres_extp.mlin,01,'|'+insere(Qr_VenP2CHAVE.AsString,'0',7)
                           +'|'+insere(Qr_VenP2QTD_ATEN.AsString,' ',08)
                           +'|'+insere2(FormatFloat('00000',Qr_VenP1CODCLI.Value)+'-'+
                                  Qr_Vennomecli.Value,' ',39)
                           +'|'+insere(Qr_VenP1CODUSR.AsString,'0',05)
                           +'|'+FormatDateTime(fdt3,Qr_VenP1DATAP.Value)
                           +'|'+insere(Qr_VenP1NUMNF.AsString,'0',06)
                           +'|',mnormal);
   mvendan:=mvendan+Qr_VenP2QTD_ATEN.AsInteger;

   Qr_Ven.Next;
   if Qr_Ven.Eof then
      begin
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.ImpF(form_impres_extp.mlin,01,'|'+insere2('Total','.',7)
                           +'|'+insere(FormatFloat(mcasqtd,mVenDan),' ',08)
                           +'|'+insere2(' ',' ',39)
                           +'|'+insere2(' ',' ',05)
                           +'|'+insere2(' ',' ',08)
                           +'|'+insere2(' ',' ',06)
                           +'|',mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;

      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+-------+--------+---------------------------------------+-----+--------+------+',mnormal);
      end
   else if form_impres_extp.mlin>58 then
      begin
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+-------+--------+---------------------------------------+-----+--------+------+',mnormal);
      form_impres_extp.mlin:=0;
      form_impres_extp.RDprint1.Novapagina;
      end;
   end;

// PEDIDOS EXCLUIDOS


// Vendas

if cb_cancelados.Checked=true then
   begin
   form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   if form_impres_extp.mlin>58 then
      begin
      form_impres_extp.RDprint1.Novapagina;
      fExtpImprimeCab(0);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      end;
   form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,Centra('VENDAS CANCELADAS NO PERIODO',' ',80),mneg);
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
   if qr_pedvda_excluido.Eof then
      begin
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.ImpF(form_impres_extp.mlin,01,Centra('NAO HOUVE SAIDAS POR VENDAS',' ',80),mneg);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
      end
   else
      begin
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+-------+--------+---------------------------------------+-----+--------+------+',mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,'| Pedido|Quantid.|Nome do Clientes                       | Usr.|D a t a |No.Doc|',mnormal);
      end;
   While not qr_pedvda_excluido.Eof do
      begin
      if form_impres_extp.mlin=0 then
         begin
         fExtpImprimeCab(0);
         form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,Centra('SAIDAS POR VENDAS)',' ',80),mneg);
         form_impres_extp.mlin:=form_impres_extp.mlin+1;
         form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
         form_impres_extp.mlin:=form_impres_extp.mlin+1;
         form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+-------+--------+---------------------------------------+-----+--------+------+',mnormal);
         form_impres_extp.mlin:=form_impres_extp.mlin+1;
         form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,'| Pedido|Quantid.|Nome do Clientes                       | Usr.|D a t a |No.Doc|',mnormal);
         end;
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.ImpF(form_impres_extp.mlin,01,'|'+insere(qr_pedvda_excluidoP2CHAVE.AsString,'0',7)
                              +'|'+insere(qr_pedvda_excluidoP2QTD_ATEN.AsString,' ',08)
                              +'|'+insere2(FormatFloat('00000',qr_pedvda_excluidoP1CODCLI.Value)+'-'+
                                     qr_pedvda_excluidonomecli.Value,' ',39)
                              +'|'+insere(qr_pedvda_excluidoP1CODUSR.AsString,'0',05)
                              +'|'+FormatDateTime(fdt3,qr_pedvda_excluidoP1DATAP.Value)
                              +'|'+insere(qr_pedvda_excluidoP1NUMNF.AsString,'0',06)
                              +'|',mnormal);
      mtotcanc:=mtotcanc+qr_pedvda_excluidoP2QTD_ATEN.AsInteger;

      qr_pedvda_excluido.Next;
      if qr_pedvda_excluido.Eof then
         begin
         form_impres_extp.mlin:=form_impres_extp.mlin+1;
         form_impres_extp.Rdprint1.ImpF(form_impres_extp.mlin,01,'|'+insere2('Total','.',7)
                              +'|'+insere(FormatFloat(mcasqtd,mtotcanc),' ',08)
                              +'|'+insere2(' ',' ',39)
                              +'|'+insere2(' ',' ',05)
                              +'|'+insere2(' ',' ',08)
                              +'|'+insere2(' ',' ',06)
                              +'|',mnormal);
         form_impres_extp.mlin:=form_impres_extp.mlin+1;

         form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+-------+--------+---------------------------------------+-----+--------+------+',mnormal);
         end
      else if form_impres_extp.mlin>58 then
         begin
         form_impres_extp.mlin:=form_impres_extp.mlin+1;
         form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+-------+--------+---------------------------------------+-----+--------+------+',mnormal);
         form_impres_extp.mlin:=0;
         form_impres_extp.RDprint1.Novapagina;
         end;
      end;
   end;

// TERMINO DOS PEDIDOS EXCLUIDOS




///////////////////// entrada de op.....

form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
form_impres_extp.mlin:=form_impres_extp.mlin+1;
if form_impres_extp.mlin>58 then
   begin
   form_impres_extp.RDprint1.Novapagina;
   fExtpImprimeCab(0);
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   end;

form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,Centra('ENTRADA POR ORDEM DE PRODUCAO ',' ',80),mneg);
form_impres_extp.mlin:=form_impres_extp.mlin+1;
form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
if Qr_EntOp.Eof then
   begin
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.Rdprint1.ImpF(form_impres_extp.mlin,01,Centra('NAO ENTRADA POR ORDEM DE PRODUCAO',' ',80),mneg);
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
   end
else
   begin
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+--------+----------+------------------------------------------+-----+---------+',mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,'| Chave  |Quantidade| Descricao                                |Usr. | D a t a |',mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+--------+----------+------------------------------------------+-----+---------+',mnormal);

{
+--------+----------+------------------------------------------+-----+---------+',mnormal);
| Chave  |Quantidade| Descricao                                |Usr. | D a t a |',mnormal);
|12345678|1234567890|123456789012345678901234567890123456789012|12345|10/082/07|
}
   end;

While not Qr_EntOp.Eof do
   begin
   if form_impres_extp.mlin=0 then
      begin
      fExtpImprimeCab(0);
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,Centra('ENTRADA POR ORDEM DE PRODUCAO)',' ',80),mneg);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+--------+----------+------------------------------------------+-----+---------+',mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,'| Chave  |Quantidade| Descricao                                |Usr. | D a t a |',mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+--------+----------+------------------------------------------+-----+---------+',mnormal);
      end;
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.Rdprint1.ImpF(form_impres_extp.mlin,01,'|'+insere(Qr_EntOpOP2_CODIGO.AsString,'0',08)
                           +'|'+insere(Qr_EntOpOP2_QTDPROD.AsString,' ',10)
                           +'|'+insere2(Qr_EntOpNOMEPRO.AsString,' ',42)
                           +'|'+insere(' ',' ',05)
                           +'|'+insere2(FormatDatetime(fdt3,Qr_EntOpOP1_DATA.Value),' ',08)
                           +'|',mnormal);

   totentop := totentop+Qr_EntOpOP2_QTDPROD.AsFloat;
   Qr_EntOp.Next;
   if Qr_EntOp.Eof then
      begin
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.ImpF(form_impres_extp.mlin,01,'|'+insere2('Total','.',7)
                           +'|'+insere(FormatFloat(mcasqtd,totentop),' ',08)
                           +'|'+insere2(' ',' ',39)
                           +'|'+insere2(' ',' ',05)
                           +'|'+insere2(' ',' ',08)
                           +'|'+insere2(' ',' ',06)
                           +'|',mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+--------+----------+------------------------------------------+-----+---------+',mnormal);
      end
   else if form_impres_extp.mlin>58 then
      begin
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+--------+----------+------------------------------------------+-----+---------+',mnormal);
      form_impres_extp.mlin:=0;
      form_impres_extp.RDprint1.Novapagina;
      end;
   end;
/////////////////////////////////////////////////////////

///////////////////// saida da op.....

form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
form_impres_extp.mlin:=form_impres_extp.mlin+1;
if form_impres_extp.mlin>58 then
   begin
   form_impres_extp.RDprint1.Novapagina;
   fExtpImprimeCab(0);
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   end;

form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,Centra('SAIDA POR ORDEM DE PRODUCAO ',' ',80),mneg);
form_impres_extp.mlin:=form_impres_extp.mlin+1;
form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
if Qr_SaiOp.Eof then
   begin
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.Rdprint1.ImpF(form_impres_extp.mlin,01,Centra('NAO SAIDA POR ORDEM DE PRODUCAO',' ',80),mneg);
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
   end
else
   begin
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+--------+----------+------------------------------------------+-----+---------+',mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,'| Chave  |Quantidade| Descricao                                |Usr. | D a t a |',mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+--------+----------+------------------------------------------+-----+---------+',mnormal);
   end;

While not Qr_SaiOp.Eof do
   begin
   if form_impres_extp.mlin=0 then
      begin
      fExtpImprimeCab(0);
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,Centra('SAIDA POR ORDEM DE PRODUCAO)',' ',80),mneg);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+--------+----------+------------------------------------------+-----+---------+',mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,'| Chave  |Quantidade| Descricao                                |Usr. | D a t a |',mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+--------+----------+------------------------------------------+-----+---------+',mnormal);
      end;
   form_impres_extp.mlin:=form_impres_extp.mlin+1;

   form_impres_extp.Rdprint1.ImpF(form_impres_extp.mlin,01,'|'+insere(Qr_SaiOpOP3_CODIGO.AsString,' ',08)
                           +'|'+insere(Qr_SaiOpOP3_QTDUTIL.AsString,' ',10)
                           +'|'+insere2(Qr_SaiOpNOMEMAT.AsString,' ',42)
                           +'|'+insere(' ',' ',05)
                           +'|'+insere2(FormatDatetime(fdt3, Qr_SaiOpOP1_DATA.Value),' ',08)
                           +'|',mnormal);
   totsaiop := totsaiop+Qr_SaiOpOP3_QTDPREV.AsFloat;
   Qr_SaiOp.Next;
   if Qr_SaiOp.Eof then
      begin
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+--------+----------+------------------------------------------+-----+---------+',mnormal);
      end
   else if form_impres_extp.mlin>58 then
      begin
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+--------+----------+------------------------------------------+-----+---------+',mnormal);
      form_impres_extp.mlin:=0;
      form_impres_extp.RDprint1.Novapagina;
      end;
   end;
/////////////////////////////////////////////////////////

// devolucoes
form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
form_impres_extp.mlin:=form_impres_extp.mlin+1;
if form_impres_extp.mlin>58 then
   begin
   form_impres_extp.RDprint1.Novapagina;
   fExtpImprimeCab(0);
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   end;

form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,Centra('DEVOLUCAO P/FORNECEDOR',' ',80),mneg);
form_impres_extp.mlin:=form_impres_extp.mlin+1;
form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
if Qr_Dev.Eof then
   begin
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.Rdprint1.ImpF(form_impres_extp.mlin,01,Centra('NAO HOUVE DEVOLUCAO PARA FORNECEDOR',' ',80),mneg);
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
   end
else
   begin
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+------+--------+----------------------------------------+-----+--------+------+',mnormal);
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,'|Pedido|Quantid.|Nome do Fornecedor                      | Usr | D a t a|No.Doc|',mnormal);
{
+------+--------+----------------------------------------+-----+--------+------+',mnormal);
|Pedido|Quantid.|Nome do Fornecedor                      |     | D a t a|No.Doc|',mnormal);
|123456|12345678|1234567890123456789012345678901234567892|12345|10/09/07|123456|',mnormal);
}
   end;

While not Qr_Dev.Eof do
   begin
   if form_impres_extp.mlin=0 then
      begin
      fExtpImprimeCab(0);
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,Centra('DEVOLUCAO PARA FORNECEDOR',' ',80),mneg);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+------+--------+----------------------------------------+-----+--------+------+',mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,'|Pedido|Quantid.|Nome do Fornecedor                      | Usr | D a t a|No.Doc|',mnormal);
      end;
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.Rdprint1.ImpF(form_impres_extp.mlin,01,'|'+insere(Qr_DevP2CHAVE.AsString,'0',06)
                           +'|'+insere(Qr_DevP2QTD_ATEN.AsString,' ',08)
                           +'|'+insere2(FormatFloat('00000',Qr_DevP1CODCLI.Value)+'-'+
                                Qr_Devnomecli.Value,' ',40)
                           +'|'+insere(Qr_DevP1CODUSR.AsString,'0',05)
                           +'|'+FormatDateTime(fdt3,Qr_DevP1DATAP.Value)
                           +'|'+insere(Qr_DevP1NUMNF.AsString,'0',06)
                           +'|',mnormal);
{
|Pedido|Quantid.|Nome do Fornecedor                      | Usr | D a t a|No.Doc|',mnormal);
|123456|12345678|1234567890123456789012345678901234567892|12345|10/09/07|123456|',mnormal);
}
   mdev:=Mdev+Qr_DevP2QTD_ATEN.AsInteger;
   Qr_Dev.Next;
   if Qr_Dev.Eof then
      begin
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.ImpF(form_impres_extp.mlin,01,'|'+insere2('-Total','.',6)
                           +'|'+insere(FormatFloat(mcasqtd,mdev),' ',08)
                           +'|'+insere2(' ',' ',40)
                           +'|'+insere2(' ',' ',05)
                           +'|'+insere2(' ',' ',08)
                           +'|'+insere2(' ',' ',06)
                           +'|',mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+------+--------+----------------------------------------+-----+--------+------+',mnormal);
      end
   else if form_impres_extp.mlin>58 then
      begin
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+------+--------+----------------------------------------+-----+--------+------+',mnormal);
      form_impres_extp.mlin:=0;
      form_impres_extp.Rdprint1.Novapagina;
      end;
   end;
// ajustes de estoque
majue:=0;
majus:=0;

form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
form_impres_extp.mlin:=form_impres_extp.mlin+1;
if form_impres_extp.mlin>58 then
   begin
   form_impres_extp.RDprint1.Novapagina;
   fExtpImprimeCab(0);
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   end;
form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,Centra('AJUSTES DE ESTOQUE',' ',80),mneg);
form_impres_extp.mlin:=form_impres_extp.mlin+1;
form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
if Qr_Aju.Eof then
   begin
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.Rdprint1.ImpF(form_impres_extp.mlin,01,Centra('NAO HOUVE AJUSTE DE ESTOQUE',' ',80),mneg);
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
   end
else
   begin
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+--------+----------+-----------------------------------------+-----+----------+',mnormal);
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,'|  Data  |Quantidade|Motivo                                   | Usr.|Tipo Movim|',mnormal);
{
+--------+----------+-----------------------------------------+-----+----------+',mnormal);
|  Data  |Quantidade|Motivo                                   | Usr.|Tipo Movim|',mnormal);
|10/09/27|1234567890|12345678901234567890123456789012345678901|12345|1234567890|
 }
   end;

While not Qr_Aju.Eof do
   begin
   if form_impres_extp.mlin=0 then
      begin
      fExtpImprimeCab(0);
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,Centra('AJUSTES DE ESTOQUE',' ',80),mneg);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+--------+----------+-----------------------------------------+-----+----------+',mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,'|  Data  |Quantidade|Motivo                                   | Usr.|Tipo Movim|',mnormal);
     end;
   form_impres_extp.mlin:=form_impres_extp.mlin+1;
   form_impres_extp.Rdprint1.ImpF(form_impres_extp.mlin,01,'|'+FormatDateTime(fdt3, Qr_AjuAJDATA.Value)
                           +'|'+insere(Qr_AjuAJQTD.AsString,' ',10)
                           +'|'+insere2(Qr_AjuAJMOTIVO.Value,' ',41)
                           +'|'+insere(Qr_AjuAJCODUSR.AsString,' ',05)
                           +'|'+iif(Qr_AjuAJTIPOM.Value=1,'Saidas    ','Entradas  ')
                           +'|',mnormal);
   if Qr_AjuAJTIPOM.Value=1 then
      majus:=majus+Qr_AjuAJQTD.Value
   else
      majue:=majue+Qr_AjuAJQTD.Value;
   Qr_Aju.Next;
   if Qr_Aju.Eof then
      begin
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.ImpF(form_impres_extp.mlin,01,'|-'+insere2('Total','.',7)
                           +' |'+insere(FormatFloat(mcasqtd,majue-majus),' ',10)
                           +'|'+insere2(' ',' ',46)
                           +'|'+insere2(' ',' ',10)
                           +'|',mnormal);
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+--------+----------+-----------------------------------------+-----+----------+',mnormal);
      end
   else if form_impres_extp.mlin>58 then
      begin
      form_impres_extp.mlin:=form_impres_extp.mlin+1;
      form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'+--------+----------+-----------------------------------------+-----+----------+',mnormal);
      form_impres_extp.mlin:=0;
      form_impres_extp.Rdprint1.Novapagina;
      end;
   end;


form_impres_extp.mlin:=form_impres_extp.mlin+1;
//form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'|'+insere2(' ',' ',78)+'|',mnormal);
form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,03,' Totais: Entradas..: '+insere(FormatFLoat(mcasqtd,ment),' ',7)
                        +' Dev.Cliente......: '+insere(FormatFLoat(mcasqtd,mdevcli),' ',7)

                        +' Vendas...........: '+insere(FormatFLoat(mcasqtd,mvendan),' ',7)
                        +' Cancelados.......: '+insere(FormatFLoat(mcasqtd,mtotcanc),' ',7)

                        +' Saldo do ajuste..: '+insere(FormatFLoat(mcasqtd,majue-majus),' ',7),mreduz);
form_impres_extp.mlin:=form_impres_extp.mlin+1;
form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,03,' Total Entrada Op.: '+insere(FormatFLoat(mcasqtd,totentop),' ',7)
                        +' Total Saida Op...: '+insere(FormatFLoat(mcasqtd,totsaiop),' ',7)
                        +' Devol.Fornecedor.: '+insere(FormatFLoat(mcasqtd,mdev),' ',7),mreduz);
form_impres_extp.mlin:=form_impres_extp.mlin+1;
if codusr=1111 then
   begin
   form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,03,' Total das Entradas: '
     +insere(FormatFLoat(mcasqtd,majue+mdevcli+ment+totentop+mtotcanc),' ',10)
     +' Saidas: '+insere(FormatFLoat(mcasqtd,mvendan+majus+mdev+totsaiop),' ',10)
     +' Saldo Apurado: '+insere(FormatFLoat(mcasqtd,
     (majue+mdevcli+ment+totentop+mtotcanc)-
     (mvendan+majus+mdev+totsaiop) ),' ',10)
     ,mreduz);
   end;
form_impres_extp.mlin:=form_impres_extp.mlin+1;
form_impres_extp.Rdprint1.Impf(form_impres_extp.mlin,01,'Emitido em: '+FormatDateTime('dd/mm/yyyy',date)
                       +' as '+FormatDateTime('hh:nn:ss',time)
                       +'----------------------------------+----------+',mnormal);
if form_impres_extp.RDprint1.Setup then form_impres_extp.RDprint1.Fechar;
form_impres_extp.free;
form_impres_extp:=nil;
end;

procedure TFrm_ExtP.Qr_VenCalcFields(DataSet: TDataSet);
begin
if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Qr_VenP1CODCLI.AsString) then
   Qr_Vennomecli.Value:=DM1.Query1.fields[0].AsString;
end;

procedure TFrm_ExtP.Qr_EntCalcFields(DataSet: TDataSet);
begin
if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Qr_EntPF1CODFOR.AsString) then
   Qr_Entnomefor.Value:=DM1.Query1.fields[0].AsString;
end;

procedure TFrm_ExtP.Qr_DevCalcFields(DataSet: TDataSet);
begin
if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Qr_DevP1CODCLI.AsString) then
   Qr_Devnomecli.Value:=DM1.Query1.fields[0].AsString;

end;

procedure TFrm_ExtP.Qr_EntOpCalcFields(DataSet: TDataSet);
begin
if flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',Qr_EntOpOP2_CODPRO.AsString) then
   Qr_EntOpNOMEPRO.Value:=DM1.Query1.fields[0].AsString;

end;

procedure TFrm_ExtP.bbSairClick(Sender: TObject);
begin

close;

end;

procedure TFrm_ExtP.Qr_DevcliCalcFields(DataSet: TDataSet);
begin
if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Qr_DevCliP1CODCLI.AsString) then
   Qr_DevClinomecli.Value:=DM1.Query1.fields[0].AsString;

end;

procedure TFrm_ExtP.GRADEExit(Sender: TObject);
begin
if Log_TipoLote=2 then
   begin
   if not flcadlgc(0,1,0,Trim(CODPRO.Text),GRADE.Text,'') then
      begin
      FMensagem('Grade Não cadastrada!',0,['0'],0);
      CODPRO.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_ExtP.Qr_SaiOpCalcFields(DataSet: TDataSet);
begin
if flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',Qr_SaiOpOP3_CODMAT.AsString) then
   Qr_SaiOpNOMEMAT.Value:=DM1.Query1.fields[0].AsString;

end;

procedure TFrm_ExtP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

function TFrm_ExtP.fExtpImprimeCab(pTipo: Integer):Boolean;
begin
form_impres_extp.mpag:=form_impres_extp.mpag+1;
form_impres_extp.Rdprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
form_impres_extp.Rdprint1.ImpF(01,66,'Pagina: '+FormatFloat('0000',form_impres_extp.mpag),mnormal);
form_impres_extp.Rdprint1.ImpF(02,01,'Extrato de Produto: ',MNORMAL);
form_impres_extp.Rdprint1.ImpF(02,66,'Data: '+FormatDateTime('dd/mm/yyyy',date),mnormal);

if not GRADE.Visible then
   begin
   form_impres_extp.Rdprint1.Impf(03,01,Centra(FormatFloat('0000000000000',StrToFloat('0'+CODPRO.Text))
                      +' '+NOMPRO.Text,' ',80),mneg);
   end
else
   begin
   form_impres_extp.Rdprint1.Impf(03,01,Centra(FormatFloat('0000000000000',StrToFloat('0'+CODPRO.Text))
                         +' '+Trim(NOMPRO.Text)+' Grade: '+Trim(GRADE.Text),' ',80),mneg);
   end;

if (Trim(MDT1.Text)='/  /') and (Trim(MDT2.Text)='/  /') then
   form_impres_extp.Rdprint1.Impf(04,01,Centra('TODAS AS DATAS.',' ',80),mneg)
else if (Trim(mdt1.Text)='/  /') and (Trim(mdt2.Text)<>'/  /') then
   form_impres_extp.Rdprint1.impf(04,01,Centra('ATE: '+MDT2.Text,' ',80),mneg)
else if (Trim(mdt1.Text)<>'/  /') and (Trim(mdt2.Text)='/  /') then
   form_impres_extp.Rdprint1.impf(04,01,Centra('A PARTIR DE: '+MDT1.Text,' ',80),mneg)
else
   form_impres_extp.Rdprint1.impf(04,01,Centra('PERIODO DE: '+MDT1.Text+' A '+MDT2.Text,' ',60),mneg);
form_impres_extp.mlin:=5;
form_impres_extp.RDprint1.ImpF(form_impres_extp.mlin,01,insere2('-','-',80),mnormal);
form_impres_extp.mlin:=form_impres_extp.mlin+1;
result:=true;
end;
procedure TFrm_ExtP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

If (Key=120) and (Shift=[ssCtrl]) then // ctrl-f9
   begin
   rg_serie.Visible:=rg_serie.Visible=false;
   end;

   
if codusr=1111 then
   begin
   if key=118 then
      begin
      if bbAjustaExtrato.Visible then
         bbAjustaExtrato.Visible:=false
      else
         bbAjustaExtrato.Visible:=true;
      end;
   end;

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


function TFrm_Extp.fAjustarEstoque(pTipo: Integer): Boolean;
begin
result:=true;
end;

procedure TFrm_ExtP.bbAjustaExtratoClick(Sender: TObject);
begin
if fmensagem('Quer Realmente Ajustar o Estoque de Acordo com Este Extrato?',0,['1','2'],2)<>mrYes then
   exit;
if fAjustarEstoque(0) then
   fmensagem('Concluido!',0,['0'],0);
end;

procedure TFrm_ExtP.FormShow(Sender: TObject);
begin

CB_FILIAL.Items.Clear;

if fLerGenerico_query('CADPRO_FILIAL','CFNOME,CFFILIAL','CFCODEMP=0'+IntToStr(codemp-iif(codemp>100,100,0)),query_consulta) then
   begin
   While not query_consulta.Eof do
      begin
      CB_FILIAL.Items.Add(query_consulta.fieldbyName('CFNOME').asstring);
      query_consulta.Next;
      end;
   end;

if log_filial_padrao=0 then
   begin
   CB_FILIAL.ItemIndex:=0;
   end
else
  begin
  if Query_consulta.Locate('CFFILIAL',IntToStr(log_filial_padrao),[]) then
     begin
     CB_FILIAL.Text:=Query_consulta.fieldbyName('CFNOME').Value;
     with CB_FILIAL do
          ItemIndex := items.IndexOf(CB_FILIAL.Text);
     end;
  end;

mFilial:=fRetonaCodigoFilial(CB_FILIAL.Text);
if mFilial=0 then
   mFilial:=log_filial_padrao;

end;

procedure TFrm_ExtP.CB_FILIALExit(Sender: TObject);
begin
if CB_FILIAL.ItemIndex<0 then
   with CB_FILIAL do ItemIndex :=Items.IndexOf(CB_FILIAL.Text)
else
   CB_FILIAL.text:=CB_FILIAL.Items.Strings[CB_FILIAL.ItemIndex];

mFilial:=fRetonaCodigoFilial(CB_FILIAL.Text);

end;

end.

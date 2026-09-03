unit S_Fin_TitAgru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, S_SelEmp,
  Dialogs, StdCtrls, Mask, Buttons, Grids, DBGrids, DB, DBTables,func,lerarq,func2;

type
  TFrm_Fin_TitAgru = class(TForm)
    GroupBox1: TGroupBox;
    Label4: TLabel;
    MDT1: TMaskEdit;
    Label5: TLabel;
    MDT2: TMaskEdit;
    bbAplicar: TBitBtn;
    bbSair: TBitBtn;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    Qr_Dup: TQuery;
    Src_Dup: TDataSource;
    Qr_DupVALOR: TFloatField;
    Qr_DupTOTNOT: TFloatField;
    Qr_DupCODFP: TFloatField;
    Qr_DupDTVCTO: TDateTimeField;
    Qr_Dupnomfin: TStringField;
    Qr_DupCODCLI: TFloatField;
    BitBtn1: TBitBtn;
    Qr_DupDTEMIS: TDateTimeField;
    Qr_DupNUMDOC: TStringField;
    Qr_Dupprazo: TFloatField;
    lbl_datainc: TLabel;
    DATAINC: TMaskEdit;
    Qr_DupDTEMIS2: TDateTimeField;
    procedure BitBtn1Click(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Qr_DupCalcFields(DataSet: TDataSet);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure DATAINCExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_Fin_TitAgru: TFrm_Fin_TitAgru;

implementation

uses S_DM1, S_DM4;

{$R *.dfm}

procedure TFrm_Fin_TitAgru.BitBtn1Click(Sender: TObject);
var
mpDoc2: String;

begin

if Qr_Dup.Active then
   bbAplicar.Click;
if Qr_Dup.IsEmpty then
   begin
   MessageDlg('Não ha Titulos a Serem Gerados!',mtInformation,[mbOk],0);
   exit;
   end;

flparldr(0,'CADDARD');
if (DM1.Par_LDR.Eof) or (DM1.Par_LDRCODCC.IsNull) or (DM1.Par_LDRCODDEP.IsNull)
   or (Trim(DM1.Par_LDRCODCC.Value)='') or (Trim(DM1.Par_LDRCODDEP.Value)='') then
   begin
   MessageDlg('Esta Faltando o Parametro de devolução (CADDARD), '+#13
             +'Entre em parametros Sobre Caixa e Cadastre-o!',mtWarning,[mbok],0);
   exit;
   end
else
   begin
   pldr_descmov:=DM1.Par_LDRNOME.Value;
   pldr_codccu:=DM1.Par_LDRCODCC.Value;
   pldr_nombco:=DM1.Tb_bcoBCBANCO.Value;
   pldr_coddep:=DM1.Par_LDRCODDEP.Value;
   if flcaddep_ldr(1,0,DM1.Par_LDRCODDEP.Value) then
      pldr_nomdep:=DM1.Tb_Dep_LdrDNOME.Value;
   if flcadccu(1,0,DM1.Par_LDRCODCC.Value) then
      begin
      pldr_nomccu:=DM1.Tb_CCUCCNOME.Value;
      pldr_natdc :=DM1.Tb_CCUCCNAT.Value;
      end;
   end;

Qr_Dup.First;
While not Qr_Dup.Eof do
   begin
   mdesc_mov:=pldr_descmov;
   mcoddep  :=pldr_coddep;
   mnomdep  :=pldr_nomdep;
   mcodccu  :=pldr_codccu;
   mnomccu  :=pldr_nomccu;
   mnatdc   :=pldr_natdc;
   if flcadcli(1,0,Qr_DupCODCLI.AsString) then
      fTestarParCaixaCliDar(DM1.Tb_Dar,1,0,'CADDAR0');
   mpDataReal :=pdatanula;
   mpValorReal:=0;
   mpDoc2     :=' ';


   mcodldr:=fCriarLDR(codemp
                     ,mpValorReal
                     ,0
                     ,Qr_DupCODCLI.Value
                     ,0
                     ,Qr_DupDTVCTO.Value
                     ,mpDataReal
                     ,Qr_DupDTEMIS.Value
                     ,pdatanula
                     ,mcodccu
                     ,mcoddep
                     ,mnatdc
                     ,mdesc_mov
                     ,fdeixanum(Qr_DupNUMDOC.AsString)+'-A'
//                     ,copy(Qr_DupNUMDOC.AsString+Qr_DupCODCLI.AsString+'-A',1,10)
                     ,mpDoc2
                     ,'CL'
                     ,pldr_nombco
                     ,mnomdep
                     ,mnomccu
                     ,pldr_nome
                     ,' '
                     ,03 // locdep
                     ,codcai
                     ,lotmov
                     ,0 // status
                     ,03); // origem

   DM4.Qr_IncDar.Close;
   DM4.Qr_IncDar.ParambyName('CRCODEMP').AsFloat    := codemp;
   DM4.Qr_IncDar.ParambyName('CRCODECF').AsFloat    := codecf;
//   DM4.Qr_IncDar.ParambyName('CRNUMERO').AsFloat    := FSonumero(Qr_DupNUMDOC.AsString+Qr_DupCODCLI.AsString+Qr_Dupprazo.AsString);
   DM4.Qr_IncDar.ParambyName('CRNUMERO').AsFloat    := FSonumero(Qr_DupNUMDOC.AsString);

   DM4.Qr_IncDar.ParambyName('CRDESD').AsString     := 'A';
   DM4.Qr_IncDar.ParambyName('CRDUP').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRCODCLI').AsFloat    := Qr_DupCODCLI.Value;
   DM4.Qr_IncDar.ParambyName('CRNUMCUP').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRDATCUP').AsDateTime := pdatanula;
   DM4.Qr_IncDar.ParambyName('CRVALOR').AsFloat     := Qr_DupVALOR.Value;
   DM4.Qr_IncDar.ParambyName('CRTOTNF').AsFloat     := Qr_DupTOTNOT.Value;
   DM4.Qr_IncDar.ParambyName('CRDTEMIS').AsDateTime := Qr_DupDTEMIS.Value;

   DM4.Qr_IncDar.ParambyName('CRCOMPETENCIA_DTINICIO').AsDateTime := strtodatetime('01/'+formatdatetime('mm/yyyy', Qr_DupDTEMIS.AsDateTime));

   DM4.Qr_IncDar.ParambyName('CRCOMPETENCIA_TIPO').AsInteger      := 0;

   DM4.Qr_IncDar.ParambyName('CRDTVCTO').AsDateTime := Qr_DupDTVCTO.Value;
   DM4.Qr_IncDar.ParambyName('CRDTPAG').AsDateTime  := pdatanula;
   DM4.Qr_IncDar.ParambyName('CRDTBX').AsDateTime   := pdatanula;
   DM4.Qr_IncDar.ParambyName('CRQTDPARC').AsFloat   := 1;
   DM4.Qr_IncDar.ParambyName('CRNUMPARC').AsFloat   := 1;
   DM4.Qr_IncDar.ParambyName('CRNPED').AsFloat      := 0;
   DM4.Qr_IncDar.ParambyName('CRNPED_NIVEL').AsFloat:= 0;
   DM4.Qr_IncDar.ParambyName('CRORDEM').AsFloat     := 0;
   DM4.Qr_IncDar.ParambyName('CRCODCC').AsString    := mcodccu;
   DM4.Qr_IncDar.ParambyName('CRCODDEP').AsString   := mcoddep;
   DM4.Qr_IncDar.ParambyName('CRDESCMV').AsString   := mdesc_mov;
   DM4.Qr_IncDar.ParambyName('CRNOMCC').AsString    := mnomccu;
   DM4.Qr_IncDar.ParambyName('CRNOMDEP').AsString   := mnomdep;
   DM4.Qr_IncDar.ParambyName('CRNOMCTA').AsString   := pldr_nombco;
   DM4.Qr_IncDar.ParambyName('CRCODCTA').AsInteger  := codcai;
   DM4.Qr_IncDar.ParambyName('CRNATDC').AsString    := mnatdc;
   DM4.Qr_IncDar.ParambyName('CRVALPAG').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRSTATUS').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRUSRBX').AsFloat     := 0;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_LB').AsFloat := 0;
   DM4.Qr_IncDar.ParambyName('CRLOTE').AsFloat      := 0;
   DM4.Qr_IncDar.ParambyName('CRDTPAG').AsDateTime  := pdatanula;
   DM4.Qr_IncDar.ParambyName('CRDTBX').AsDateTime   := pdatanula;

   DM4.Qr_IncDar.ParambyName('CRCODLDR').AsFloat    := mcodldr;
   DM4.Qr_IncDar.ParambyName('CRCODVEN').AsFloat    := 1;
   DM4.Qr_IncDar.ParambyName('CRCODTLV').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CROBS').AsString      := ' ';
   DM4.Qr_IncDar.ParambyName('CRDESC').AsFloat      := 0;
   DM4.Qr_IncDar.ParambyName('CRDEVOL').AsFloat     := 0;
   DM4.Qr_IncDar.ParambyName('CRJUROS').AsFloat     := 0;
   DM4.Qr_IncDar.ParambyName('CRICMSR').AsFloat     := 0;
   DM4.Qr_IncDar.ParambyName('CRDESCF').AsFloat     := 0;
   DM4.Qr_IncDar.ParambyName('CRDTDESCF').AsDateTime:= pdatanula;
   DM4.Qr_IncDar.ParambyName('CRJURD').AsFloat      := arredonda(((Qr_DupVALOR.Value*DM4.Tb_Par01PJURM.Value/100)/30),2);
   DM4.Qr_IncDar.ParambyName('CRDESCD').AsFloat     := arredonda(((Qr_DupVALOR.Value*DM4.Tb_Par01PDESCM.Value/100)/30),2);
   DM4.Qr_IncDar.ParambyName('CRMULTA').AsFloat     := arredonda((Qr_DupVALOR.Value*DM4.Tb_Par01PMULTA.Value/100),2);
   DM4.Qr_IncDar.ParambyName('CRQTDDM').AsFloat     := DM4.Tb_Par01PQTDDM.Value;
   DM4.Qr_IncDar.ParambyName('CREMIDUP').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CREMIBLQ').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRVALFRE').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRNOSNUM').AsString   := ' ';
   DM4.Qr_IncDar.ParambyName('CRDNOSNUM').AsString  := ' ';
   DM4.Qr_IncDar.ParambyName('CRNFACUM').AsString   := ' ';
   DM4.Qr_IncDar.ParambyName('CRTIPCOB').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRDTALT').AsDateTime  := now;
   DM4.Qr_IncDar.ParambyName('CRUSRALT').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRCOMVEN').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRCOMV02').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRCOMV03').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRCOMTEL').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRCOMSUP').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRSEMCOM').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRTOTDI01').AsFloat   := 0;
   DM4.Qr_IncDar.ParambyName('CRTOTDI02').AsFloat   := 0;
   DM4.Qr_IncDar.ParambyName('CRTOTDI03').AsFloat   := 0;
   DM4.Qr_IncDar.ParambyName('CRTOTDIVL').AsFloat   := 0;
   DM4.Qr_IncDar.ParambyName('CRVALDES01').AsFloat  := 0;
   DM4.Qr_IncDar.ParambyName('CRVALDES02').AsFloat  := 0;
   DM4.Qr_IncDar.ParambyName('CRVLRDES').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_FC').AsFloat := ls_codldr;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CP').AsFloat := 0;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CV').AsFloat  := 0;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CV02').AsFloat:= 0;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CV03').AsFloat:= 0;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CS').AsFloat  := 0;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CT').AsFloat  := 0;
   DM4.Qr_IncDar.ParambyName('CRLOTCV').AsFloat     := 0;
   DM4.Qr_IncDar.ParambyName('CRLOTCV02').AsFloat   := 0;
   DM4.Qr_IncDar.ParambyName('CRLOTCV03').AsFloat   := 0;
   DM4.Qr_IncDar.ParambyName('CRLOTCS').AsFloat     := 0;
   DM4.Qr_IncDar.ParambyName('CRCODORI').AsInteger    :=  0;
   DM4.Qr_IncDar.ParambyName('CRLOTCT').AsFloat     := 0;
   DM4.Qr_IncDar.ParambyName('CRCODUSR').AsFloat    := codusr;
   DM4.Qr_IncDar.ParambyName('CRHRALT').AsString    := ' ';
   DM4.Qr_IncDar.ParambyName('CRCODV02').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRCODV03').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRCODCV').AsFloat     := 0;
   DM4.Qr_IncDar.ParambyName('CRCODBAR').AsString   := ' ';
   DM4.Qr_IncDar.ParambyName('CRCODDIG').AsString   := ' ';
   DM4.Qr_IncDar.ParambyName('CRACEITE').AsString   := 'N';
   DM4.Qr_IncDar.ParambyName('CRESPECIE').AsString  := 'DM';
   DM4.Qr_IncDar.ParambyName('CRLEMAT').AsFloat     := 0;
   DM4.Qr_IncDar.ParambyName('CRCODASSE').AsFloat   := 0;
   DM4.Qr_IncDar.ParambyName('CRCOMASSE').AsFloat   := 0;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CASSE').AsFloat:=0;
   DM4.Qr_IncDar.ParambyName('CRLOTCASSE').AsFloat    :=0;
   DM4.Qr_IncDar.ParambyName('CRVALSEG').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRINST01').AsString     := ' ';
   DM4.Qr_IncDar.ParambyName('CRINST02').AsString     := ' ';
   DM4.Qr_IncDar.ParambyName('CRINST03').AsString     := ' ';
   DM4.Qr_IncDar.ParambyName('CRINST04').AsString     := ' ';
   DM4.Qr_IncDar.ParambyName('CRTBCOCOB').AsFloat     :=0;
   DM4.Qr_IncDar.ParambyName('CREMIBOR').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRCHD_BANCO').AsFloat   :=0;
   DM4.Qr_IncDar.ParambyName('CRCHD_AGENCIA').AsFloat :=0;
   DM4.Qr_IncDar.ParambyName('CRCHD_CC').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRCHD_NUMERO').AsFloat  :=0;
   DM4.Qr_IncDar.ParambyName('CRCODBCO').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRTCB').AsFloat         :=0;
   DM4.Qr_IncDar.ParambyName('CRCAUCAO').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRBCOCAU').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRDTCAU').AsDateTime    :=pdatanula;
   DM4.Qr_IncDar.ParambyName('CRSPC_DTPEN').AsDateTime:=pdatanula;;
   DM4.Qr_IncDar.ParambyName('CRSPC_DTNEG').AsDateTime:=pdatanula;;
   DM4.Qr_IncDar.ParambyName('CRSERASA_DTNEG').AsDateTime:=pdatanula;;
   DM4.Qr_IncDar.ParambyName('CRNR').AsFloat          :=0;
   DM4.Qr_IncDar.ParambyName('CRCODV04').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRCOMV04').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CV04').AsFloat :=0;
   DM4.Qr_IncDar.ParambyName('CRLOTCV04').AsFloat     :=0;
   DM4.Qr_IncDar.ParambyName('CRTOTIPI').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRTOTCGRU').AsFloat     :=0;
   DM4.Qr_IncDar.ParambyName('CRTOTSGRU').AsFloat     :=Qr_DupVALOR.Value;
   DM4.Qr_IncDar.ParambyName('CRCUSBCO').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRCOMIS_EXTRA').AsFloat :=0;
   DM4.Qr_IncDar.ParambyName('CRSEQ').AsFloat         :=0;
   DM4.Qr_IncDar.ParambyName('CRPFPGTO').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRTABPV').AsString      :='AV';
   DM4.Qr_IncDar.ParambyName('CRCODPV').AsFloat       :=01;
   DM4.Qr_IncDar.ParambyName('CRVINC02').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRCODFPGTO').AsFloat    :=0;
   DM4.Qr_IncDar.ParambyName('CRNOMFPGTO').AsString   :='';
   DM4.Qr_IncDar.ParambyName('CRTARBAN').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRFIN_CODFIN').AsFloat   :=0;
   DM4.Qr_IncDar.ParambyName('CRLANCFIN').AsFLoat      :=0;
   DM4.Qr_IncDar.ParambyName('CRRECFRENTE').AsFLoat    :=0;

   DM4.Qr_IncDar.ParambyName('CRDATPED').AsDateTime    :=Qr_DupDTEMIS.AsDateTime;
   DM4.Qr_IncDar.ParambyName('CRCX_CODCAI').AsFloat    :=codcai;
   DM4.Qr_IncDar.ParambyName('CRCX_LOTMOV').AsFloat    :=lotmov;
   DM4.Qr_IncDar.ParambyName('CRCODCAR').AsFloat       :=0;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_EC').AsFloat    :=0;
   DM4.Qr_IncDar.ParambyName('CRLOTE_EC').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRTITPROT').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRCHD_EMITENTE').AsString:='';
   DM4.Qr_IncDar.ParambyName('CRCHAVE_ID_ANO').AsInteger :=valint(formatdatetime('yyyy', DM4.Qr_IncDar.ParambyName('CRDTEMIS').AsDateTime));
   DM4.Qr_IncDar.ParambyName('CRCHAVE_ID').AsInteger    :=fBuscareTestarID('CADDAR_'+formatdatetime('yyyy', DM4.Qr_IncDar.ParambyName('CRDTEMIS').AsDateTime));

   Try
      DM4.Qr_IncDar.ExecSQL;
      fdm1StartCommit;
   except
      MessageDlg('Duplicidade ao Criar Registro de duplicatas!',mtWarning,[mbOk],0);
      end;
   Qr_Dup.Next;
   end;
la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
DM1.Query1.close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('Update CADDAR set CRLANCFIN=1 '
              +' where '+iif(la_Empresas='','',la_Empresas+' and ')
               +' CRSTATUS<9 and CRCODFPGTO<>0 AND CRLANCFIN<>1');
if trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.Add(' and CRDTEMIS>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   DM1.Query1.SQL.Add(' and CRDTEMIS<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro ao Atualizar o arquivo de duplicatas!',mtError,[mbOk],0);
   exit;
   end;
verteclado(0);
MessageDlg('Concluido!',mtInformation,[mbOk],0);
Qr_Dup.Close;

end;

procedure TFrm_Fin_TitAgru.bbAplicarClick(Sender: TObject);
begin
la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);

if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      MessageDlg('Data Inicial maior que Final, Invalido!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
if trim(DATAINC.Text)<>'/  /' then
    DATAINC.Text := FormatDatetime(fdt2, date);
Qr_Dup.Close;
Qr_Dup.SQL.Clear;
Qr_Dup.Sql.add('Select sum(CRVALOR) as VALOR, '
              +'       sum(CRTOTNF) AS TOTNOT, '
              +'       CRDTVCTO+DECODE(FPPRAZO_FIN,NULL,0,FPPRAZO_FIN) AS DTVCTO, '
              +'       CRCODFPGTO as CODFP, '
              +'       FPCODCLI AS CODCLI, '
              +'       TO_DATE('+chr(39)+FormatDatetime(fdt, StrtoDate(DATAINC.Text))+chr(39)+') AS DTEMIS ,'
              +'       max(CRDTEMIS) AS DTEMIS2, '
              +'       TO_CHAR(max(CRDTEMIS),'+chr(39)+fdt2+chr(39)+')  as numdoc '
              +' from caddar,CADFP '
              +' where '+iif(la_Empresas='','',la_Empresas+' and ')
               +' CRSTATUS<9 and CRLANCFIN=0 ');
if trim(MDT1.Text)<>'/  /' then
   Qr_Dup.SQL.Add(' and CRDTEMIS>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   Qr_Dup.SQL.Add(' and CRDTEMIS<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39));

Qr_Dup.Sql.Add(' AND FPCODIGO=CRCODFPGTO ');
Qr_Dup.Sql.Add(' AND FPCODcli<>0');
Qr_Dup.Sql.Add(' GROUP BY CRCODFPGTO,FPCODCLI,CRDTVCTO,FPPRAZO_FIN ');

Qr_Dup.Open;
//Qr_Dup.SQL.SAVETOFILE('C:\SQL.TXT');

end;

procedure TFrm_Fin_TitAgru.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

MDT1.Text:=FormatDatetime(fdt2, date);
MDT2.Text:=FormatDatetime(fdt2, date);
Qr_DupValor.DisplayFormat :=mcasas;
Qr_DupDTVCTO.DisplayFormat:=fdt2;
DATAINC.Text := FormatDatetime(fdt2, date);
end;


procedure TFrm_Fin_TitAgru.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Fin_TitAgru.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Fin_TitAgru.Qr_DupCalcFields(DataSet: TDataSet);
begin
if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Qr_DupCODCLI.AsString) then
   Qr_Dupnomfin.Value:=DM1.Query1.Fields[0].AsString;
Qr_Dupprazo.Value:=Qr_DupDTVCTO.Value-Qr_DupDTEMIS.Value;
end;

procedure TFrm_Fin_TitAgru.MDT1Exit(Sender: TObject);
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

procedure TFrm_Fin_TitAgru.MDT2Exit(Sender: TObject);
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

procedure TFrm_Fin_TitAgru.DATAINCExit(Sender: TObject);
begin
if Trim(DATAINC.Text)<>'/  /' then
   begin
   Try
      DATAINC.Text:=FormatDateTime(fdt2,StrtoDate(DATAINC.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      DATAINC.SetFocus;
      end;
   end;

end;

procedure TFrm_Fin_TitAgru.FormKeyDown(Sender: TObject; var Key: Word;
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

unit S_Evento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, Buttons,db,dbtables,func,S_DM1,lerarq,
  Grids, DBGrids,S_Cli,S_MChq,s_Dap,S_Dar,S_UF,S_LDR,S_For,S_NE,S_NS,S_Par,
 S_Pv,S_Pro,S_Rom,S_Usr,S_ProConf,S_ManOs, RLReport, RLFilters,
  RLDraftFilter, S_Pro_Nov, S_Ven, DBCtrls, ComCtrls, ToolEdit ;


type
  TFrm_Evento = class(TForm)
    RLDraftFilter1: TRLDraftFilter;
    Qry_T: TQuery;
    Qr_Evento: TQuery;
    Qr_EventoDATA: TDateTimeField;
    Qr_EventoHORA: TStringField;
    Qr_EventoCODNOV: TFloatField;
    Qr_EventoCODUSR: TFloatField;
    Qr_Eventonomtab: TStringField;
    Qr_Eventonomusr: TStringField;
    Qr_Eventoevento: TStringField;
    Qr_EventoSTATUS: TFloatField;
    Qr_EventoCODTAB: TFloatField;
    Qr_EventoCODIGO: TStringField;
    Srv_Evento: TDataSource;
    Qr_EventoMotivo: TStringField;
    Qr_EventoChave: TIntegerField;
    PageControl1: TPageControl;
    tsGeral: TTabSheet;
    tsRelatorio: TTabSheet;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    lbl_dathor: TRLLabel;
    lbl_tipoeve: TRLLabel;
    lbl_nomtab: TRLLabel;
    RLLabel12: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    RLBand3: TRLBand;
    edt_dathor: TRLDBText;
    edt_tipoeve: TRLDBText;
    edt_nomtab: TRLDBText;
    RLBand4: TRLBand;
    RLLabel5: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbl_codigo: TLabel;
    lbl_numnf: TLabel;
    lbl_nome: TLabel;
    MCODUSR: TEdit;
    NOMUSR: TEdit;
    NOMTAB: TComboBox;
    RG_TIPO: TRadioGroup;
    BitBtn1: TBitBtn;
    CODIGO: TEdit;
    edt_numnf: TEdit;
    edt_nome: TEdit;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    pnl_Pedido: TPanel;
    m_informacao: TDBMemo;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    bbImprimir: TBitBtn;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    RLdet_memo: TRLBand;
    RLDBMemo1: TRLDBMemo;
    lbl_chave: TLabel;
    edt_chave: TEdit;
    gb_valores_entre: TGroupBox;
    Label5: TLabel;
    edt_valini: TEdit;
    Label6: TLabel;
    edt_valfin: TEdit;
    Qr_EventoVALDIF: TFloatField;
    edt_datini: TDateEdit;
    edt_datfin: TDateEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure NOMTABExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure MCODUSRKeyPress(Sender: TObject; var Key: Char);
    procedure MCODUSRExit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure RLDBText2BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Qr_EventoCalcFields(DataSet: TDataSet);
    procedure CODIGOExit(Sender: TObject);
    procedure edt_numnfExit(Sender: TObject);
    procedure NOMTABClick(Sender: TObject);
    procedure edt_valiniExit(Sender: TObject);
    procedure edt_valfinExit(Sender: TObject);
    procedure edt_datiniExit(Sender: TObject);
    procedure edt_datfinExit(Sender: TObject);
  private
    { Private declarations }
    mValorRetorno01: string;
  public
    { Public declarations }
    form_cli_evento: tFrm_Cli;
    form_mchq_evento: tFrm_mchq;
    form_dap_evento: TFrm_Dap;
    form_dar_evento: TFrm_Dar;
    form_uf_evento: TFrm_uf;
    form_ldr_evento: TFrm_ldr;
    form_for_evento: TFrm_for;
    form_ne_evento: TFrm_ne;
    form_ns_evento: TFrm_ns;
    form_par_evento: TFrm_Par;
    form_pv_evento: TFrm_pv;
    form_pro_evento: TFrm_Pro;
    form_rom_evento: TFrm_rom;
    form_usr_evento: TFrm_usr;
    form_ven_evento: TFrm_ven;
    form_ProConf_evento: TFrm_ProConf;
    form_Pro_Nov: TFrm_Pro_Nov;
    form_manos: TFrm_ManOs;
    function Escreve_LnInfo(Tipo_R, Tipo_M: Integer): Boolean;
  end;

function DesfazCancelamentoBaixaContasReceber(pCodNov: Real): Boolean;
function insere_caracter(Caracter: Char; Tamanho: Integer): String;

var
  Frm_Evento: TFrm_Evento;
  codtab: array [1..14]  of string;
implementation

uses  S_DM4, func_excecoes, S_Compras_Orc;

{$R *.dfm}
function insere_caracter(Caracter: Char; Tamanho: Integer): String;
var
x: integer;
txt: String;
begin
txt:='';
for x:=0 to Tamanho do
  begin
  txt:=txt+Caracter;
  end;
Result:=txt;
end;

function TFrm_Evento.Escreve_LnInfo(Tipo_R, Tipo_M: Integer): Boolean;
begin
//escreve linha de informação
// Tipo_R = Tipo de Relatorio  - Ex..: Pedido de Vendas, Pedido de Compras
//Tipo_R = 0 = Pedido de Vendas
// Tipo_m = Tipo de Movimentação 0 - Alteração 9 - excluido
if (Tipo_R<>12) and (Tipo_R<>6) and (Tipo_R<>19) and (Tipo_R<>4) and (Tipo_R<>3) and (Tipo_R<>21) then
  begin
  Result:=True;
  Exit;
  end;
Qr_EventoMotivo.Clear;
Qry_T.Close;
Qry_T.SQL.Clear;
if Tipo_R=12 then
  begin
  Qry_T.SQL.Add(' select old_cadp01.P1CHAVE as Chave,                            ');
  Qry_T.SQL.Add('        old_cadp01.P1DATAP as Data,                             ');
  Qry_T.SQL.Add('        Case                                                    ');
  Qry_T.SQL.Add('          when old_cadp01.P1STATUS=8                            ');
  Qry_T.SQL.Add('            then old_cadp01.P1MOTIVO                            ');
  Qry_T.SQL.Add('          when old_cadp01.P1STATUS=9                            ');
  Qry_T.SQL.Add('            then cadp01.P1MOTIVO                                ');
  Qry_T.SQL.Add('        end MOTIVO,                                             '
               +' case when old_cadp01.P1CODCLI<>CADP01.P1CODCLI then     '
               +' (select max(CCODCLI ||'+QuotedStr('-')+' || crazao) from CADCLI where CCODCLI=CADP01.P1CODCLI) '
               +' else CCODCLI ||'+QuotedStr('-')+' || crazao end as razao_ant, ');

  Qry_T.SQL.Add('        CCODCLI||'+chr(39)+' - '+chr(39)+'||CRAZAO as Razao,    ');
  Qry_T.SQL.Add('     old_cadp01.P1TOTALL as Total_ant,                           ');
  Qry_T.SQL.Add('     cadp01.P1TOTALL as Total_novo                           ');
  Qry_T.SQL.Add(' from                                                           ');
  Qry_T.SQL.Add('        OLD_CADP01, CADP01, CADCLI                              ');
  Qry_T.SQL.Add(' where CCODCLI=OLD_CADP01.P1CODCLI                              ');
  Qry_T.SQL.Add('   and OLD_CADP01.P1CHAVE=CADP01.P1CHAVE                        ');
  Qry_T.SQL.Add('   and OLD_CADP01.P1LOTSEQ=CADP01.P1LOTSEQ                      ');
  Qry_T.SQL.Add('   and OLD_CADP01.P1CODEMP=CADP01.P1CODEMP                      ');
  Qry_T.SQL.Add('   and old_cadp01.P1CODNOV='+Qr_Evento.FieldByName('CODNOV').AsString);
  Qry_T.SQL.Add(' '+codemp2('old_cadp01.P1CODEMP',codemp));
  Qry_T.SQL.Add(   fla_EmpBaixaAlta(0,'CADCLI',' and ',codemp,'CCODEMP',''));
//  Qry_T.SQL.SaveToFile(mpastatemp + 'SQL.txt');

  try
     Qry_T.Open;
   except
     Qry_T.SQL.SaveToFile(mpastatemp + 'SQL.txt');
     showmessage('Erro ao Buscar os dados!!!');
     end;
   Qr_EventoMotivo.AsString:='Chave..:'+Qry_T.FieldByName('Chave').AsString+insere_caracter(' ',70-length('Chave..:'+Qry_T.FieldByName('Chave').AsString))+'Data..: '+Qry_T.FieldByName('Data').AsString+chr(13)+chr(10);
   Qr_EventoMotivo.AsString:=Qr_EventoMotivo.AsString+'Razao Atual.....:'+insere2(Qry_T.FieldByName('Razao').AsString,' ',60)+' Anterior: '+Qry_T.FieldByName('razao_ant').AsString+chr(13)+chr(10);
   Qr_EventoMotivo.AsString:=Qr_EventoMotivo.AsString+'Valor Atual.....:'+insere2(FormatFloat(mcasas, Qry_T.FieldByName('total_novo').Asfloat),' ',76)+' Anterior: '+FormatFloat(mcasas, Qry_T.FieldByName('total_ant').Asfloat)+chr(13)+chr(10);
   Qr_EventoMotivo.AsString:=Qr_EventoMotivo.AsString+copy('Motivo..:'+Qry_T.FieldByName('Motivo').AsString,0,90);
   Qr_EventoChave.AsInteger:=Qry_T.FieldByName('Chave').AsInteger;
   end
else if Tipo_R=6 then
   begin
   Qry_T.SQL.Add(' select OLD_CADLDR.DATAREAL AS ANT_DATAREAL,OLD_CADLDR.DATADP AS ANT_DATADP,OLD_CADLDR.VALORP AS ANT_VALORP'
                +',OLD_CADLDR.VALORR AS ANT_VALORR,OLD_CADLDR.CODBCO AS ANT_CODBCO,OLD_CADLDR.CODDEP AS ANT_CODDEP,OLD_CADLDR.CODCC AS ANT_CODCC,OLD_CADLDR.TIPO AS ANT_TIPO,OLD_CADLDR.CODIGO AS ANT_CODIGO  '
                +' ,          CADLDR.DATAREAL AS NOV_DATAREAL,    CADLDR.DATADP AS NOV_DATADP,    CADLDR.VALORP AS NOV_VALORP,'
                +'    CADLDR.VALORR AS NOV_VALORR,CADLDR.CODBCO AS NOV_CODBCO,    CADLDR.CODDEP AS NOV_CODDEP,    CADLDR.CODCC AS NOV_CODCC,    CADLDR.TIPO AS NOV_TIPO,    CADLDR.CODIGO AS NOV_CODIGO '
                +' from '
                +'    OLD_CADLDR,CADLDR '
                );
   Qry_T.SQL.Add(' where OLD_CADLDR.CODNOV='+Qr_Evento.FieldByName('CODNOV').AsString);
   Qry_T.SQL.Add(' and CADLDR.CODEMP=OLD_CADLDR.CODEMP');
   Qry_T.SQL.Add(' and CADLDR.CODLDR=OLD_CADLDR.CODLDR');

   Qry_T.SQL.Add(   fla_EmpBaixaAlta(0,'CADLDR',' and ',codemp,'OLD_CADLDR.CODEMP',''));

  try
     Qry_T.Open;
   except
     Qry_T.SQL.SaveToFile(mpastatemp + 'SQL.txt');
     showmessage('Erro ao Buscar os dados!!!');
     end;
     Qr_EventoMotivo.AsString:='Situacao  Data Real   Data Previ Valor Real Valor Previsto cod.Bco Cod.Dpto  Cod.CCU tipo Codigo'+chr(13)+chr(10);
     Qr_EventoMotivo.AsString:=Qr_EventoMotivo.AsString+'Atual:    '+FormatDateTime(fdt2,Qry_T.FieldByName('NOV_DATAREAL').AsDateTime)
                              +'  '+FormatDateTime(fdt2,Qry_T.FieldByName('NOV_DATADP').AsDateTime)
                              +insere( formatfloat(mcasas, Qry_T.FieldByName('NOV_VALORR').AsFloat), ' ',11)
                              +insere( formatfloat(mcasas, Qry_T.FieldByName('NOV_VALORP').AsFloat), ' ',15)
                              +' '+centra( Qry_T.FieldByName('NOV_CODBCO').AsString, ' ',07)+' '
                              +' '+centra( Qry_T.FieldByName('NOV_CODDEP').AsString, ' ',08)+' '
                              +' '+centra( Qry_T.FieldByName('NOV_CODCC').AsString, ' ',08)+' '
                              +' '+centra( Qry_T.FieldByName('NOV_TIPO').AsString, ' ',04)+' '
                              +' '+centra( Qry_T.FieldByName('NOV_CODIGO').AsString, ' ',06)+chr(13)+chr(10);

     Qr_EventoMotivo.AsString:=Qr_EventoMotivo.AsString+'Anterior: '+FormatDateTime(fdt2,Qry_T.FieldByName('ANT_DATAREAL').AsDateTime)
                              +'  '+FormatDateTime(fdt2,Qry_T.FieldByName('ANT_DATADP').AsDateTime)
                              +insere( formatfloat(mcasas, Qry_T.FieldByName('ANT_VALORR').AsFloat), ' ',11)
                              +insere( formatfloat(mcasas, Qry_T.FieldByName('ANT_VALORP').AsFloat), ' ',15)
                              +' '+centra( Qry_T.FieldByName('ANT_CODBCO').AsString, ' ',07)+' '
                              +' '+centra( Qry_T.FieldByName('ANT_CODDEP').AsString, ' ',08)+' '
                              +' '+centra( Qry_T.FieldByName('ANT_CODCC').AsString, ' ',08)+' '
                              +' '+centra( Qry_T.FieldByName('ANT_TIPO').AsString, ' ',04)+' '
                              +' '+centra( Qry_T.FieldByName('ANT_CODIGO').AsString, ' ',06)+chr(13)+chr(10);

{


     'Situacao  Data Real   Data Previ Valor Real Valor Previsto cod.Bco Cod.Dpto  Cod.CCU tipo Codigo');
                                12345678901123456789012345 1234567 12345678 12345678 1234 123456

Situacao  Data Real   Data Previ Valor Real Valor Previsto cod.Bco Cod.Dpto  Cod.CCU tipo Codigo
Atual:    10/09/1969  10/09/1969 zzz.zz0,99  zzzzzz.zz9,99   111     c-101    D-101  fr   c-101

Atual:    10/09/1969  10/09/1969 zzz.zz0,99  zzzzzz.zz9,99   111     c-101    D-101  fr   c-101
Anterior:

Situacao  Data Real   Data Previ Valor Real Valor Previsto cod.Bco Cod.Dpto  Cod.CCU tipo Codigo
Atual:    10/09/1969  10/09/1969 zzz.zz0,99  zzzzzz.zz9,99   111     c-101    D-101  fr   c-101
Anterior:


 '+FormatDateTime(fdt2, Qry_T.FieldByName('DATAREAL').AsDateTime),' ',40)
                            +' Data Previsto: '+FormatDateTime(fdt2, Qry_T.FieldByName('DATADP').AsDateTime)+chr(13)+chr(10)
                            +insere2('Valor Real: '+FormatFloat(mcasas, Qry_T.FieldByName('VALORP').AsFloat),' ',40)
                            +' Valor Previsto: '+FormatFloat(mcasas, Qry_T.FieldByName('VALORR').AsFloat)+chr(13)+chr(10)
                            +'Código do Banco: '+Qry_T.FieldByName('CODBCO').AsString
                            +' Codigo Depto: '+Qry_T.FieldByName('CODDEP').AsString+chr(13)+chr(10)
                            +' Código CCU: '+Qry_T.FieldByName('CODCC').AsString;

   Qr_EventoMotivo.AsString:=insere2('Data Real: '+FormatDateTime(fdt2, Qry_T.FieldByName('DATAREAL').AsDateTime),' ',40)
                            +' Data Previsto: '+FormatDateTime(fdt2, Qry_T.FieldByName('DATADP').AsDateTime)+chr(13)+chr(10)
                            +insere2('Valor Real: '+FormatFloat(mcasas, Qry_T.FieldByName('VALORP').AsFloat),' ',40)
                            +' Valor Previsto: '+FormatFloat(mcasas, Qry_T.FieldByName('VALORR').AsFloat)+chr(13)+chr(10)
                            +'Código do Banco: '+Qry_T.FieldByName('CODBCO').AsString
                            +' Codigo Depto: '+Qry_T.FieldByName('CODDEP').AsString+chr(13)+chr(10)
                            +' Código CCU: '+Qry_T.FieldByName('CODCC').AsString;
}
   end
else if Tipo_R=19 then
   begin
   Qry_T.SQL.Add(' select fpmotivo '
                +' from OLD_FPCRDUP ');
   Qry_T.SQL.Add(' where OLD_FPCRDUP.FPCODNOV='+Qr_Evento.FieldByName('CODNOV').AsString);
   Qry_T.SQL.Add(   fla_EmpBaixaAlta(0,'FPCRDUP',' and ',codemp,'FPCODEMP',''));

  try
     Qry_T.Open;
   except
     Qry_T.SQL.SaveToFile(mpastatemp + 'SQL.txt');
     showmessage('Erro ao Buscar os dados!!!');
     end;
   Qr_EventoMotivo.AsString:=' Motivo: '+Qry_T.FieldByName('FPMOTIVO').AsString;
   end
else if Tipo_R=21 then
   begin
   Qry_T.SQL.Add('select SUM(LC2_QTD) AS TOTUND, COUNT(*) AS QTDITENS '
                +' ,SUM(LC2_QTD*LC2_PCOAV) AS TOTAL from OLD_CADLC2 '
                +' WHERE LC2_CODNOV='+Qr_Evento.FieldByName('CODNOV').AsString);
   Qry_T.SQL.Add(   fla_EmpBaixaAlta(0,'CADLIC',' and ',codemp,'LC2_CODEMP',''));

  try
     Qry_T.Open;
   except
     Qry_T.SQL.SaveToFile(mpastatemp + 'SQL.txt');
     showmessage('Erro ao Buscar os dados!!!');
     end;
   Qr_EventoMotivo.AsString:='Numero de Itens: '+Qry_T.FieldByName('QTDITENS').AsString+chr(13)+chr(10)
                            +'Quantidade: '+FormatFloat(mcasqtd, Qry_T.FieldByName('TOTUND').AsFloat)+chr(13)+chr(10)
                            +'Valor total: '+FormatFloat(mcasas, Qry_T.FieldByName('TOTAL').AsFloat)+chr(13)+chr(10);
   end

else if Tipo_R=4 then
   begin
   Qry_T.SQL.Add('select OLD_CADDAR.CRCODCLI || '+QuotedStr('-')+' || CRAZAO AS ANT_RAZSOC,'
                +'OLD_CADDAR.CRVALOR AS ANT_CRVALOR,OLD_CADDAR.CRDTEMIS AS ANT_CRDTEMIS,OLD_CADDAR.CRDTVCTO AS ANT_CRDTVCTO,'
                +'OLD_CADDAR.CRVALPAG AS ANT_CRVALPAG,OLD_CADDAR.CRNUMERO AS ANT_CRNUMERO,OLD_CADDAR.CRDESD AS ANT_CRDESD,'
                +'OLD_CADDAR.CRCODEMP AS ANT_CRCODEMP,OLD_CADDAR.CRNPED AS ANT_CRNPED,OLD_CADDAR.CRCODVEN AS ANT_CRCODVEN,'
                +' OLD_CADDAR.CRSTATUS AS ANT_STATUS '
                +'          ,  case when CADDAR.CRCODCLI<>OLD_CADDAR.CRCODCLI then     '
                +' (select max(CCODCLI || '+quotedstr('-')+'  || CRAZAO) from CADCLI where CCODCLI=CADDAR.CRCODCLI) else '
                +' CADDAR.CRCODCLI || '+QuotedStr('-')+' || CRAZAO  end AS NOV_RAZSOC,    CADDAR.CRVALOR AS NOV_CRVALOR,    CADDAR.CRDTEMIS AS NOV_CRDTEMIS,   '
                +' CADDAR.CRDTVCTO AS NOV_CRDTVCTO,    CADDAR.CRVALPAG AS NOV_CRVALPAG,    CADDAR.CRNUMERO AS NOV_CRNUMERO,    CADDAR.CRDESD AS NOV_CRDESD,  '
                +'  CADDAR.CRCODEMP AS NOV_CRCODEMP,    CADDAR.CRNPED AS NOV_CRNPED,    CADDAR.CRCODVEN AS NOV_CRCODVEN,    CADDAR.CRSTATUS AS NOV_STATUS '
                +' from OLD_CADDAR,CADDAR,CADCLI WHERE CCODCLI=OLD_CADDAR.CRCODCLI AND OLD_CADDAR.CRCODNOV='+Qr_Evento.FieldByName('CODNOV').AsString
                +' and CADDAR.CRCODEMP=OLD_CADDAR.CRCODEMP '
                +' and CADDAR.CRCODECF=OLD_CADDAR.CRCODECF '
                +' and CADDAR.CRNUMERO=OLD_CADDAR.CRNUMERO '
                +' and CADDAR.CRDESD=OLD_CADDAR.CRDESD '
                +' and CADDAR.CRDUP=OLD_CADDAR.CRDUP '
                +' and CADDAR.CRDTEMIS=OLD_CADDAR.CRDTEMIS '
                +' and CADDAR.CRNPED=OLD_CADDAR.CRNPED ');
  try
     Qry_T.Open;
   except
     Qry_T.SQL.SaveToFile(mpastatemp + 'SQL.txt');
     showmessage('Erro ao Buscar os dados!!!');
     end;

   Qr_EventoMotivo.AsString:='Situacao  Titulo    Dt.Emissao  dt.Vcto.     Valor       Cliente                                           Cod.Vend'+chr(13)+chr(10);
   Qr_EventoMotivo.AsString:=Qr_EventoMotivo.AsString
                           +'Atual    '+insere(Qry_T.FieldByName('NOV_CRNUMERO').AsString+'-'+Qry_T.fieldbyName('NOV_CRDESD').asstring,' ',10)+' '
                           +formatdatetime(fdt2, Qry_T.fieldbyName('NOV_CRDTEMIS').AsDateTime)+' '
                           +formatdatetime(fdt2, Qry_T.fieldbyName('NOV_CRDTVCTO').AsDateTime)
                           +insere(FormatFloat(mcasas, Qry_T.fieldbyName('NOV_CRVALOR').AsFloat),' ',15)+' '
                           +insere2(Qry_T.fieldbyName('NOV_RAZSOC').AsString,' ',50)+' '
                           +centra(Qry_T.fieldbyName('NOV_CRCODVEN').AsString,' ',08)+chr(13)+chr(10);

   Qr_EventoMotivo.AsString:=Qr_EventoMotivo.AsString
                           +'Anterior '+insere(Qry_T.FieldByName('ANT_CRNUMERO').AsString+'-'+Qry_T.fieldbyName('ANT_CRDESD').asstring,' ',10)+' '
                           +formatdatetime(fdt2, Qry_T.fieldbyName('ANT_CRDTEMIS').AsDateTime)+' '
                           +formatdatetime(fdt2, Qry_T.fieldbyName('ANT_CRDTVCTO').AsDateTime)
                           +insere(FormatFloat(mcasas, Qry_T.fieldbyName('ANT_CRVALOR').AsFloat),' ',15)+' '
                           +insere2(Qry_T.fieldbyName('ANT_RAZSOC').AsString,' ',50)+' '
                           +centra(Qry_T.fieldbyName('ANT_CRCODVEN').AsString,' ',08)+chr(13)+chr(10);

   end
else if Tipo_R=3 then
   begin
   Qry_T.SQL.Add('select OLD_CADDAP.CACODFOR || '+QuotedStr('-')+' || FRAZAO AS ANT_RAZSOC,'
                +'OLD_CADDAP.CAVALOR AS ANT_CAVALOR,OLD_CADDAP.CADTEMIS AS ANT_CADTEMIS,OLD_CADDAP.CADTVCTO AS ANT_CADTVCTO,'
                +'OLD_CADDAP.CAVALPAG AS ANT_CAVALPAG,OLD_CADDAP.CANUMERO AS ANT_CANUMERO,OLD_CADDAP.CADESD AS ANT_CADESD,'
                +'OLD_CADDAP.CACODEMP AS ANT_CACODEMP,'
                +' OLD_CADDAP.CASTATUS AS ANT_STATUS '
                +'          ,  case when CADDAP.CACODFOR<>OLD_CADDAP.CACODFOR then     '
                +' (select max(FCODFOR || '+quotedstr('-')+'  || FRAZAO) from CADFOR where FCODFOR=CADDAP.CACODFOR) else '
                +' CADDAP.CACODFOR || '+QuotedStr('-')+' || FRAZAO  end AS NOV_RAZSOC,    CADDAP.CAVALOR AS NOV_CAVALOR,    CADDAP.CADTEMIS AS NOV_CADTEMIS,   '
                +' CADDAP.CADTVCTO AS NOV_CADTVCTO,    CADDAP.CAVALPAG AS NOV_CAVALPAG,    CADDAP.CANUMERO AS NOV_CANUMERO,    CADDAP.CADESD AS NOV_CADESD,  '
                +'  CADDAP.CACODEMP AS NOV_CACODEMP,         CADDAP.CASTATUS AS NOV_STATUS '
                +' from OLD_CADDAP,CADDAP,CADFOR WHERE FCODFOR=OLD_CADDAP.CACODFOR AND OLD_CADDAP.CACODNOV='+Qr_Evento.FieldByName('CODNOV').AsString
                +' and CADDAP.CACODEMP=OLD_CADDAP.CACODEMP '
                +' and CADDAP.CANUMERO=OLD_CADDAP.CANUMERO '
                +' and CADDAP.CADESD=OLD_CADDAP.CADESD '
                +' and CADDAP.CADUP=OLD_CADDAP.CADUP '
                +' and CADDAP.CADTEMIS=OLD_CADDAP.CADTEMIS ');
  try
     Qry_T.Open;
   except
     Qry_T.SQL.SaveToFile(mpastatemp + 'SQL.txt');
     showmessage('Erro ao Buscar os dados!!!');
     end;

   Qr_EventoMotivo.AsString:='Situacao  Titulo    Dt.Emissao  dt.Vcto.     Valor       Fornecedor                                                '+chr(13)+chr(10);
   Qr_EventoMotivo.AsString:=Qr_EventoMotivo.AsString
                           +'Atual    '+insere(Qry_T.FieldByName('NOV_CANUMERO').AsString+'-'+Qry_T.fieldbyName('NOV_CADESD').asstring,' ',10)+' '
                           +formatdatetime(fdt2, Qry_T.fieldbyName('NOV_CADTEMIS').AsDateTime)+' '
                           +formatdatetime(fdt2, Qry_T.fieldbyName('NOV_CADTVCTO').AsDateTime)
                           +insere(FormatFloat(mcasas, Qry_T.fieldbyName('NOV_CAVALOR').AsFloat),' ',15)+' '
                           +insere2(Qry_T.fieldbyName('NOV_RAZSOC').AsString,' ',50)+chr(13)+chr(10);

   Qr_EventoMotivo.AsString:=Qr_EventoMotivo.AsString
                           +'Anterior '+insere(Qry_T.FieldByName('ANT_CANUMERO').AsString+'-'+Qry_T.fieldbyName('ANT_CADESD').asstring,' ',10)+' '
                           +formatdatetime(fdt2, Qry_T.fieldbyName('ANT_CADTEMIS').AsDateTime)+' '
                           +formatdatetime(fdt2, Qry_T.fieldbyName('ANT_CADTVCTO').AsDateTime)
                           +insere(FormatFloat(mcasas, Qry_T.fieldbyName('ANT_CAVALOR').AsFloat),' ',15)+' '
                           +insere2(Qry_T.fieldbyName('ANT_RAZSOC').AsString,' ',50)+chr(13)+chr(10);

   end;


Result:=True;
end;

procedure TFrm_Evento.BitBtn1Click(Sender: TObject);
var
comp: String;
comp2: String;
begin
comp:='';
Qr_Evento.Close;
Qr_Evento.SQL.Clear;
if (NOMTAB.ItemIndex=0) or (NOMTAB.ItemIndex=1) then
   begin
   comp2:=' and ';
   Qr_Evento.SQL.Add('Select (CHSTATUS-CHSTATUS)+1 as CODTAB '
                    +', CHSTATUS AS STATUS '
                    +', CHDTALT  AS DATA '
                    +', CHHRALT  AS HORA '
                    +', CHCODUSR AS CODUSR '
                    +', CHCODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +',0 AS VALDIF '
                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Numero: '+chr(39)
                    +'|| TO_CHAR(CHNUMERO) || '+chr(39)+' Bco: '+chr(39)
                    +' || TO_CHAR(CHBANCO) || '+chr(39)+' Dt.Dep.: '+chr(39)+' || TO_CHAR(CHDTDEP, '+chr(39)+fdt2+chr(39)+') AS CODIGO');
    if (valfloat(edt_valini.text)<>0) or (valfloat(edt_valfin.text)<>0) then
       begin
       Qr_Evento.sql.add(', (select sum(novo.CHVALOR)-sum(ant.CHVALOR) as dif from '
                            +' CADCHQ novo where novo.CHLOTSEQ=ant.CHLOTSEQ '
                            +' AND novo.CHSEQ=ant.CHSEQ '
                            +' AND novo.CHCODEMP=ant.CHCODEMP ) VALDIF');
       end;
   Qr_Evento.SQL.Add(' from OLD_CADCHQ ant where 1=1 ');
   if Trim(MCODUSR.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' CHCODUSR=0'+Trim(MCODUSR.Text));
      comp2:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' CHCODCLI=0'+Trim(CODIGO.Text));
      comp2:=' and ';
      end;
   Qr_Evento.sql.add(fFormatdatetimeParaConsulta('CHDTALT',true,edt_datini.Date)+fFormatdatetimeParaConsulta('CHDTALT',false,edt_datfin.Date));
   if RG_TIPO.ItemIndex=1 then
      begin
      Qr_Evento.SQL.add(comp2+' CHSTATUS=8');
      comp2:=' and ';
      end;
   if RG_TIPO.ItemIndex=2 then
      begin
      Qr_Evento.SQL.add(comp2+' CHSTATUS=9');
      comp2:=' and ';
      end;
   comp:=' union ';
   end;

if (NOMTAB.ItemIndex=0) or (NOMTAB.ItemIndex=2) then
   begin
   if Trim(comp)<>'' then
      Qr_Evento.SQL.Add(comp);
   comp2:=' and ';
   Qr_Evento.SQL.Add('Select (CSTATUS-CSTATUS)+2 as CODTAB '
                    +', CSTATUS AS STATUS '
                    +', CDTALT  AS DATA '
                    +', CHRALT  AS HORA '
                    +', CCODUSR AS CODUSR '
                    +', CCODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +', 0 AS VALDIF '
                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Codigo: '+chr(39)
                    +'|| TO_CHAR(CCODCLI) || '+chr(39)+' Razao: '+chr(39)
                    +' || CRAZAO AS CODIGO'
                    +' from OLD_CADCLI  where 1=1 ');
   if Trim(MCODUSR.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' CCODUSR=0'+Trim(MCODUSR.Text));
      comp2:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' CCODCLI=0'+Trim(CODIGO.Text));
      comp2:=' and ';
      end;
   if Trim(edt_nome.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' CRAZAO like :CRAZAO');
      Qr_Evento.ParamByName('CRAZAO').AsString:=edt_nome.Text+'%';

      comp2:=' and ';
      end;
   Qr_Evento.sql.add(fFormatdatetimeParaConsulta('CDTALT',true,edt_datini.Date)+fFormatdatetimeParaConsulta('CDTALT',false,edt_datfin.Date));
   if RG_TIPO.ItemIndex=1 then
      begin
      Qr_Evento.SQL.add(comp2+' CSTATUS=8');
      comp2:=' and ';
      end;
   if RG_TIPO.ItemIndex=2 then
      begin
      Qr_Evento.SQL.add(comp2+' CSTATUS=9');
      comp2:=' and ';
      end;
   comp:=' union ';
   end;

if (NOMTAB.ItemIndex=0) or (NOMTAB.ItemIndex=3) then
   begin
   if Trim(comp)<>'' then
      Qr_Evento.SQL.Add(comp);
   comp2:=' and ';
   Qr_Evento.SQL.Add('Select (CASTATUS-CASTATUS)+3 as CODTAB '
                    +', CASTATUS AS STATUS '
                    +', CADTALT  AS DATA '
                    +', CAHRALT  AS HORA '
                    +', CACODUSR AS CODUSR '
                    +', CACODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +',0 AS VALDIF '

                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Numero: '+chr(39)
                    +'|| TO_CHAR(CANUMERO) || '+chr(39)+' Codfor: '+chr(39)
                    +' || TO_CHAR(CACODFOR) || '+chr(39)+' Dt.Vcto.: '+chr(39)+' || TO_CHAR(CADTVCTO, '+chr(39)+fdt2+chr(39)+') AS CODIGO'
                    +' from OLD_CADDAP  where 1=1 ');
   if Trim(MCODUSR.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' CACODUSR=0'+Trim(MCODUSR.Text));
      comp2:=' and ';
      end;
   if trim(edt_numnf.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' CANUMERO=0'+Trim(edt_numnf.Text));
      comp2:=' and ';
      end;
   if trim(CODIGO.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' CACODFOR=0'+Trim(CODIGO.Text));
      comp2:=' and ';
      end;
   Qr_Evento.sql.add(fFormatdatetimeParaConsulta('CADTALT',true,edt_datini.Date)+fFormatdatetimeParaConsulta('CADTALT',false,edt_datfin.Date));
   if RG_TIPO.ItemIndex=1 then
      begin
      Qr_Evento.SQL.add(comp2+' CASTATUS=8');
      comp2:=' and ';
      end;
   if RG_TIPO.ItemIndex=2 then
      begin
      Qr_Evento.SQL.add(comp2+' CASTATUS=9');
      comp2:=' and ';
      end;
   comp:=' union ';
   end;
if (NOMTAB.ItemIndex=0) or (NOMTAB.ItemIndex=4) then
   begin
   if Trim(comp)<>'' then
      Qr_Evento.SQL.Add(comp);
   comp2:=' and ';
   Qr_Evento.SQL.Add('Select (CRSTATUS-CRSTATUS)+4 as CODTAB '
                    +', CRSTATUS AS STATUS '
                    +', CRDTALT  AS DATA '
                    +', CRHRALT  AS HORA '
                    +', CRCODUSR AS CODUSR '
                    +', CRCODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +',0 AS VALDIF '

                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Numero: '+chr(39)
                    +'|| TO_CHAR(CRNUMERO) || '+chr(39)+' Desd: '+chr(39)
                    +' || CRDESD || '+chr(39)+' Dt.Emis.: '+chr(39)+' || TO_CHAR(CRDTEMIS, '+chr(39)+fdt2+chr(39)+') AS CODIGO'
                    +' from OLD_CADDAR  where 1=1 ');
   if Trim(MCODUSR.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' CRCODUSR=0'+Trim(MCODUSR.Text));
      comp2:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' CRCODCLI=0'+Trim(CODIGO.Text));
      comp2:=' and ';
      end;
   Qr_Evento.sql.add(fFormatdatetimeParaConsulta('CRDTALT',true,edt_datini.Date)+fFormatdatetimeParaConsulta('CRDTALT',false,edt_datfin.Date));
   if RG_TIPO.ItemIndex=1 then
      begin
      Qr_Evento.SQL.add(comp2+' CRSTATUS=8');
      comp2:=' and ';
      end;
   if RG_TIPO.ItemIndex=2 then
      begin
      Qr_Evento.SQL.add(comp2+' CRSTATUS=9');
      comp2:=' and ';
      end;
   comp:=' union ';
   end;
if (NOMTAB.ItemIndex=0) or (NOMTAB.ItemIndex=5) then
   begin
   if Trim(comp)<>'' then
      Qr_Evento.SQL.Add(comp);
   comp2:=' and ';
   Qr_Evento.SQL.Add('Select (PSTATUS-PSTATUS)+5 as CODTAB '
                    +', PSTATUS AS STATUS '
                    +', PDTALT  AS DATA '
                    +', PHRALT  AS HORA '
                    +', PCODUSR AS CODUSR '
                    +', PCODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +',0 AS VALDIF '

                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'UF: '+chr(39)
                    +'|| PUF || '+chr(39)+'Nome: '+chr(39)
                    +' || PNOM  AS CODIGO'

                    +' from OLD_CADUF  where 1=1 ');
   if Trim(MCODUSR.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' PCODUSR=0'+Trim(MCODUSR.Text));
      comp2:=' and ';
      end;
   Qr_Evento.sql.add(fFormatdatetimeParaConsulta('PDTALT',true,edt_datini.Date)+fFormatdatetimeParaConsulta('PDTALT',false,edt_datfin.Date));
   if RG_TIPO.ItemIndex=1 then
      begin
      Qr_Evento.SQL.add(comp2+' PSTATUS=8');
      comp2:=' and ';
      end;
   if RG_TIPO.ItemIndex=2 then
      begin
      Qr_Evento.SQL.add(comp2+' PSTATUS=9');
      comp2:=' and ';
      end;
   comp:=' union ';
   end;

if (NOMTAB.ItemIndex=0) or (NOMTAB.ItemIndex=6) then
   begin
   if Trim(comp)<>'' then
      Qr_Evento.SQL.Add(comp);
   comp2:=' and ';
   Qr_Evento.SQL.Add('Select (STATUS-STATUS)+6 as CODTAB '
                    +', TIPEVE AS STATUS '
                    +', DATHOR_ALTEXC  AS DATA '
                    +', HRALT  AS HORA '
                    +', CODUSR_ALTEXC AS CODUSR '
                    +', CODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +',0 AS VALDIF '

                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Chave: '+chr(39)
                    +'|| TO_CHAR(CODLDR) || '+chr(39)+' Bco: '+chr(39)
                    +' || TO_CHAR(CODBCO) || '+chr(39)+' Dt.Prev.: '+chr(39)+' || TO_CHAR(DATADP, '+chr(39)+fdt2+chr(39)+') '
                    +' || '+chr(39)+' Valor: '+chr(39)+' || TO_CHAR(VALORP) '
                    +' AS CODIGO ');
   if (valfloat(edt_valini.text)<>0) or (valfloat(edt_valfin.text)<>0) then
       begin
       Qr_Evento.sql.add(', (select sum(novo.VALORP)-sum(ant.VALORP) as dif from '
                            +' CADLDR novo where novo.LOTSEQ=ant.LOTSEQ '
                            +' AND novo.CODLDR=ant.CODLDR '
                            +' AND novo.CODEMP=ant.CODEMP ) VALDIF ');
       end;
   Qr_Evento.sql.add(' from OLD_CADLDR  where 1=1 ');
   if Trim(MCODUSR.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' CODUSR_ALTEXC=0'+Trim(MCODUSR.Text));
      comp2:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' CODIGO=0'+Trim(CODIGO.Text));
      comp2:=' and ';
      end;

   Qr_Evento.sql.add(fFormatdatetimeParaConsulta('DATHOR_ALTEXC',true,edt_datini.Date)+fFormatdatetimeParaConsulta('DATHOR_ALTEXC',false,edt_datfin.Date));

   if RG_TIPO.ItemIndex=1 then
      begin
      Qr_Evento.SQL.add(comp2+' TIPEVE=8');
      comp2:=' and ';
      end;
   if RG_TIPO.ItemIndex=2 then
      begin
      Qr_Evento.SQL.add(comp2+' TIPEVE=9');
      comp2:=' and ';
      end;
   comp:=' union ';
   end;

if (NOMTAB.ItemIndex=0) or (NOMTAB.ItemIndex=7) then
   begin
   if Trim(comp)<>'' then
      Qr_Evento.SQL.Add(comp);
   comp2:=' and ';
   Qr_Evento.SQL.Add('Select (FSTATUS-FSTATUS)+7 as CODTAB '
                    +', FSTATUS AS STATUS '
                    +', FDATHOR_ALT  AS DATA '
                    +', TO_CHAR(FDATHOR_ALT,'+char(39)+'HH:MM:SS'+char(39)+') AS HORA '
                    +', FCODUSR_ALT AS CODUSR '
                    +', FCODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +',0 AS VALDIF '

                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Codigo: '+chr(39)
                    +'|| TO_CHAR(FCODFOR) || '+chr(39)+' Razao: '+chr(39)
                    +' || FRAZAO || '+chr(39)+' Fantasia: '+chr(39)+' || FDENOM AS CODIGO'
                    +' from OLD_CADFOR  where 1=1 ');
   if Trim(MCODUSR.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' FCODUSR_ALT=0'+Trim(MCODUSR.Text));
      comp2:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' FCODFOR=0'+Trim(CODIGO.Text));
      comp2:=' and ';
      end;
   Qr_Evento.sql.add(fFormatdatetimeParaConsulta('FDATHOR_ALT',true,edt_datini.Date)+fFormatdatetimeParaConsulta('FDATHOR_ALT',false,edt_datfin.Date));
   if RG_TIPO.ItemIndex=1 then
      begin
      Qr_Evento.SQL.add(comp2+' FSTATUS=8');
      comp2:=' and ';
      end;
   if RG_TIPO.ItemIndex=2 then
      begin
      Qr_Evento.SQL.add(comp2+' FSTATUS=9');
      comp2:=' and ';
      end;
   comp:=' union ';
   end;

if (NOMTAB.ItemIndex=0) or (NOMTAB.ItemIndex=8) then
   begin
   if Trim(comp)<>'' then
      Qr_Evento.SQL.Add(comp);
   comp2:=' and ';
   Qr_Evento.SQL.Add('Select (NESTATUS-NESTATUS)+8 as CODTAB '
                    +', NESTATUS AS STATUS '
                    +', NEDTALT  AS DATA '
                    +', NEHRALT  AS HORA '
                    +', NECODUSR AS CODUSR '
                    +', NECODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +',0 AS VALDIF '

                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Numero: '+chr(39)
                    +'|| TO_CHAR(NENUMERO) || '+chr(39)+' Cod.For: '+chr(39)
                    +' || TO_CHAR(NECODFOR) || '+chr(39)+' Data NF.: '+chr(39)+' || TO_CHAR(NEDTEMIS, '+chr(39)+fdt2+chr(39)+') AS CODIGO'
                    +' from OLD_CADNE  where 1=1 ');
   if Trim(MCODUSR.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' NECODUSR=0'+Trim(MCODUSR.Text));
      comp2:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' NENUMERO=0'+Trim(CODIGO.Text));
      comp2:=' and ';
      end;

   Qr_Evento.sql.add(fFormatdatetimeParaConsulta('NEDTALT',true,edt_datini.Date)+fFormatdatetimeParaConsulta('NEDTALT',false,edt_datfin.Date));
   if RG_TIPO.ItemIndex=1 then
      begin
      Qr_Evento.SQL.add(comp2+' NESTATUS=8');
      comp2:=' and ';
      end;
   if RG_TIPO.ItemIndex=2 then
      begin
      Qr_Evento.SQL.add(comp2+' NESTATUS=9');
      comp2:=' and ';
      end;
   comp:=' union ';
   end;
if (NOMTAB.ItemIndex=0) or (NOMTAB.ItemIndex=9) then
   begin
   if Trim(comp)<>'' then
      Qr_Evento.SQL.Add(comp);
   comp2:=' and ';
   Qr_Evento.SQL.Add('Select (NSSTATUS-NSSTATUS)+9 as CODTAB '
                    +', NSSTATUS AS STATUS '
                    +', NSDTALT  AS DATA '
                    +', NSHRALT  AS HORA '
                    +', NSCODUSR AS CODUSR '
                    +', NSCODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +',0 AS VALDIF '

                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Numero: '+chr(39)
                    +'|| TO_CHAR(NSNUMERO) || '+chr(39)+' Cod.Cliente: '+chr(39)
                    +' || TO_CHAR(NSCODCLI) || '+chr(39)+' Dt.Emis.: '+chr(39)+' || TO_CHAR(NSDTEMIS, '+chr(39)+fdt2+chr(39)+') AS CODIGO'

                    +' from OLD_CADNS  where 1=1 ');
   if Trim(MCODUSR.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' NSCODUSR=0'+Trim(MCODUSR.Text));
      comp2:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' NSCODCLI=0'+Trim(CODIGO.Text));
      comp2:=' and ';
      end;
   Qr_Evento.sql.add(fFormatdatetimeParaConsulta('NSDTALT',true,edt_datini.Date)+fFormatdatetimeParaConsulta('NSDTALT',false,edt_datfin.Date));
   if RG_TIPO.ItemIndex=1 then
      begin
      Qr_Evento.SQL.add(comp2+' NSSTATUS=8');
      comp2:=' and ';
      end;
   if RG_TIPO.ItemIndex=2 then
      begin
      Qr_Evento.SQL.add(comp2+' NSSTATUS=9');
      comp2:=' and ';
      end;
   comp:=' union ';
   end;


if (NOMTAB.ItemIndex=0) or (NOMTAB.ItemIndex=10) then
   begin
   if Trim(comp)<>'' then
      Qr_Evento.SQL.Add(comp);
   comp2:=' and ';
   Qr_Evento.SQL.Add('Select (OS1STATUS-OS1STATUS)+10 as CODTAB '
                    +', OS1STATUS  AS STATUS '
                    +', OS1DATALT  AS DATA '
                    +', OS1HORAENT AS HORA '
                    +', OS1CODUSR  AS CODUSR '
                    +', OS1CODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +',0 AS VALDIF '

                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Numero: '+chr(39)
                    +'|| TO_CHAR(OS1CHAVE) || '+chr(39)+' Dt.Dep.: '+chr(39)+' || TO_CHAR(OS1DATA, '+chr(39)+fdt2+chr(39)+') AS CODIGO'
                    +' from OLD_CADOS01  where 1=1 ');
   if Trim(MCODUSR.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' OS1CODUSR=0'+Trim(MCODUSR.Text));
      comp2:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' OS1CHAVE=0'+Trim(CODIGO.Text));
      comp2:=' and ';
      end;

   Qr_Evento.sql.add(fFormatdatetimeParaConsulta('OS1DATALT',true,edt_datini.Date)+fFormatdatetimeParaConsulta('OS1DATALT',false,edt_datfin.Date));
   if RG_TIPO.ItemIndex=1 then
      begin
      Qr_Evento.SQL.add(comp2+' OS1STATUS=8');
      comp2:=' and ';
      end;
   if RG_TIPO.ItemIndex=2 then
      begin
      Qr_Evento.SQL.add(comp2+' OS1STATUS=9');
      comp2:=' and ';
      end;
   comp:=' union ';
   end;


if (NOMTAB.ItemIndex=0) or (NOMTAB.ItemIndex=11) then
   begin
   if Trim(comp)<>'' then
      Qr_Evento.SQL.Add(comp);
   comp2:=' and ';
   Qr_Evento.SQL.Add('Select (PSTATUS-PSTATUS)+11 as CODTAB '
                    +', PSTATUS AS STATUS '
                    +', PDTALT  AS DATA '
                    +', PHRALT  AS HORA '
                    +', PCODUSR AS CODUSR '
                    +', PCODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +',0 AS VALDIF '

                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Chave: '+chr(39)
                    +'|| TO_CHAR(PCODSEQ)  AS CODIGO'
                    +' from OLD_CADPAR  where 1=1 ');
   if Trim(MCODUSR.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' PCODUSR=0'+Trim(MCODUSR.Text));
      comp2:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' PCODSEQ=0'+Trim(CODIGO.Text));
      comp2:=' and ';
      end;
   Qr_Evento.sql.add(fFormatdatetimeParaConsulta('PDTALT',true,edt_datini.Date)+fFormatdatetimeParaConsulta('PDTALT',false,edt_datfin.Date));

   if RG_TIPO.ItemIndex=1 then
      begin
      Qr_Evento.SQL.add(comp2+' PSTATUS=8');
      comp2:=' and ';
      end;
   if RG_TIPO.ItemIndex=2 then
      begin
      Qr_Evento.SQL.add(comp2+' PSTATUS=9');
      comp2:=' and ';
      end;
   comp:=' union ';
   end;


if (NOMTAB.ItemIndex=0) or (NOMTAB.ItemIndex=12) then
   begin
   if Trim(comp)<>'' then
      Qr_Evento.SQL.Add(comp);
   comp2:=' and ';
   Qr_Evento.SQL.Add('Select (P1STATUS-P1STATUS)+12 as CODTAB '
                    +', P1STATUS AS STATUS '
                    +', P1DTMOD  AS DATA '
                    +', P1HRMOD  AS HORA '
                    +', P1USRMOD AS CODUSR '
                    +', P1CODNOV AS CODNOV '
                    +', P1CHAVE AS CHAVE '
                    +',0 AS VALDIF '
                    +', P1MOTIVO AS Motivo '
                    +', '+chr(39)+'Chave: '+chr(39)
                    +'|| TO_CHAR(P1CHAVE) || '+chr(39)+' Cod.Cli: '+chr(39)
                    +' || TO_CHAR(P1CODCLI) || '+chr(39)+' Data.: '+chr(39)+' || TO_CHAR(P1DATAP, '+chr(39)+fdt2+chr(39)+') AS CODIGO'
                    +' from OLD_CADP01  where 1=1 ');
   if Trim(MCODUSR.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' P1USRMOD=0'+Trim(MCODUSR.Text));
      comp2:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' P1CHAVE=0'+Trim(CODIGO.Text));
      comp2:=' and ';
      end;
   Qr_Evento.sql.add(fFormatdatetimeParaConsulta('P1DTMOD',true,edt_datini.Date)+fFormatdatetimeParaConsulta('P1DTMOD',false,edt_datfin.Date));
   if RG_TIPO.ItemIndex=1 then
      begin
      Qr_Evento.SQL.add(comp2+' P1STATUS=8');
      comp2:=' and ';
      end;
   if RG_TIPO.ItemIndex=2 then
      begin
      Qr_Evento.SQL.add(comp2+' P1STATUS=9');
      comp2:=' and ';
      end;
   comp:=' union ';
   end;
if (NOMTAB.ItemIndex=0) or (NOMTAB.ItemIndex=13) then
   begin
   if Trim(comp)<>'' then
      Qr_Evento.SQL.Add(comp);
   comp2:=' and ';
   Qr_Evento.SQL.Add('Select (PF1STATUS-PF1STATUS)+13 as CODTAB '
                    +', PF1STATUS AS STATUS '
                    +', NVL(PF1DTMOD,PF1DATHOR)  AS DATA '
                    +', TO_CHAR( NVL(PF1DTMOD,PF1DATHOR), '+QuotedStr(fhr_oracle)+')  AS HORA '
                    +', NVL(PF1USRMOD,PF1CODUSR_EVE) AS CODUSR '
                    +', PF1CODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +',0 AS VALDIF '

                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Chave: '+chr(39)
                    +'|| TO_CHAR(PF1CHAVE) || '+chr(39)+' Cod.For: '+chr(39)
                    +' || TO_CHAR(PF1CODFOR) || '+chr(39)+' Data.: '+chr(39)+' || TO_CHAR(PF1DATA, '+chr(39)+fdt2+chr(39)+') AS CODIGO'

                    +' from OLD_CADPF1  where 1=1 ');
   if Trim(MCODUSR.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+'( PF1USRMOD=:CODUSR OR  PF1CODUSR_EVE=:CODUSR)');
      Qr_Evento.ParamByName('CODUSR').AsInteger:=valint(MCODUSR.Text);
      comp2:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' PF1CHAVE=0'+Trim(CODIGO.Text));
      comp2:=' and ';
      end;

   Qr_Evento.sql.add(fFormatdatetimeParaConsulta('PF1DATHOR',true,edt_datini.Date)+fFormatdatetimeParaConsulta('PF1DATHOR',false,edt_datfin.Date));
   if RG_TIPO.ItemIndex=1 then
      begin
      Qr_Evento.SQL.add(comp2+' PF1STATUS=8');
      comp2:=' and ';
      end;
   if RG_TIPO.ItemIndex=2 then
      begin
      Qr_Evento.SQL.add(comp2+' PF1STATUS=9');
      comp2:=' and ';
      end;
   if fsonumero(edt_chave.text)>0 then
      begin
      Qr_Evento.SQL.add(comp2+' PF1CHAVE=:CHAVE');
      qr_evento.parambyName('CHAVE').asfloat:=fsonumero(edt_chave.text);
      comp2:=' and ';
      end;
   comp:=' union ';
   end;
if (NOMTAB.ItemIndex=0) or (NOMTAB.ItemIndex=14) then
   begin
   if Trim(comp)<>'' then
      Qr_Evento.SQL.Add(comp);
   comp2:=' and ';
   Qr_Evento.SQL.Add('Select (PVSTATUS-PVSTATUS)+14 as CODTAB '
                    +', PVSTATUS AS STATUS '
                    +', PVDTALT  AS DATA '
                    +', PVHRALT  AS HORA '
                    +', PVCODUSR AS CODUSR '
                    +', PVCODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +',0 AS VALDIF '

                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Codigo: '+chr(39)
                    +'|| PVCODTIP || '+chr(39)+'/'+chr(39)
                    +' || TO_CHAR(PVCODPV) || '+chr(39)+' Nome: '+chr(39)+' || PVNOME AS CODIGO'
                    +' from OLD_CADPV  where 1=1 ');
   if Trim(MCODUSR.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' PVCODUSR=0'+Trim(MCODUSR.Text));
      comp2:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' PVCODPV=0'+Trim(CODIGO.Text));
      comp2:=' and ';
      end;

   Qr_Evento.sql.add(fFormatdatetimeParaConsulta('PVDTALT',true,edt_datini.Date)+fFormatdatetimeParaConsulta('PVDTALT',false,edt_datfin.Date));
   if RG_TIPO.ItemIndex=1 then
      begin
      Qr_Evento.SQL.add(comp2+' PVSTATUS=8');
      comp2:=' and ';
      end;
   if RG_TIPO.ItemIndex=2 then
      begin
      Qr_Evento.SQL.add(comp2+' PVSTATUS=9');
      comp2:=' and ';
      end;
   comp:=' union ';
   end;


if (NOMTAB.ItemIndex=0) or (NOMTAB.ItemIndex=15) then
   begin
   if Trim(comp)<>'' then
      Qr_Evento.SQL.Add(comp);
   comp2:=' and ';
   Qr_Evento.SQL.Add('Select (PDSTATUS-PDSTATUS)+15 as CODTAB '
                    +', PDSTATUS AS STATUS '
                    +', PDDTALT  AS DATA '
                    +', PDHRALT  AS HORA '
                    +', PDCODUSR AS CODUSR '
                    +', PDCODNOV AS CODNOV '
                    +', PDCODPRO AS CHAVE '
                    +',0 AS VALDIF '

                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Codigo: '+chr(39)
                    +'|| TO_CHAR(PDCODPRO) || '+chr(39)+' Nome: '+chr(39)
                    +' || PDNOME  AS CODIGO'
                    +' from OLD_CADPRO  where 1=1 ');
   if Trim(MCODUSR.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' PDCODUSR=0'+Trim(MCODUSR.Text));
      comp2:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' PDCODPRO=0'+Trim(CODIGO.Text));
      comp2:=' and ';
      end;

   if Trim(edt_nome.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' PDNOME like :NOMPRO');
      Qr_Evento.ParamByName('NOMPRO').AsString:=edt_nome.Text+'%';

      comp2:=' and ';
      end;

   Qr_Evento.sql.add(fFormatdatetimeParaConsulta('PDDTALT',true,edt_datini.Date)+fFormatdatetimeParaConsulta('PDDTALT',false,edt_datfin.Date));
   if RG_TIPO.ItemIndex=1 then
      begin
      Qr_Evento.SQL.add(comp2+' PDSTATUS=8');
      comp2:=' and ';
      end;
   if RG_TIPO.ItemIndex=2 then
      begin
      Qr_Evento.SQL.add(comp2+' PDSTATUS=9');
      comp2:=' and ';
      end;
   comp:=' union ';
   end;

if (NOMTAB.ItemIndex=0) or (NOMTAB.ItemIndex=16) then
   begin
   if Trim(comp)<>'' then
      Qr_Evento.SQL.Add(comp);
   comp2:=' and ';
   Qr_Evento.SQL.Add('Select (R1_STATUS-R1_STATUS)+16 as CODTAB '
                    +', R1_STATUS AS STATUS '
                    +', R1_DTMOD  AS DATA '
                    +', R1_HRMOD  AS HORA '
                    +', R1_USRMOD AS CODUSR '
                    +', R1_CODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +',0 AS VALDIF '

                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Chave: '+chr(39)
                    +'|| TO_CHAR(R1_CHAVE) || '+chr(39)+' Codigo: '+chr(39)
                    +' || TO_CHAR(R1_CODIGO) || '+chr(39)+' Data.: '+chr(39)+' || TO_CHAR(R1_DATA, '+chr(39)+fdt2+chr(39)+') AS CODIGO'

                    +' from OLD_CADRM1  where 1=1 ');
   if Trim(MCODUSR.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' R1_USRMOD=0'+Trim(MCODUSR.Text));
      comp2:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' R1_CODIGO=0'+Trim(CODIGO.Text));
      comp2:=' and ';
      end;
   Qr_Evento.sql.add(fFormatdatetimeParaConsulta('R1_DTMOD',true,edt_datini.Date)+fFormatdatetimeParaConsulta('R1_DTMOD',false,edt_datfin.Date));
   if RG_TIPO.ItemIndex=1 then
      begin
      Qr_Evento.SQL.add(comp2+' R1_STATUS=8');
      comp2:=' and ';
      end;
   if RG_TIPO.ItemIndex=2 then
      begin
      Qr_Evento.SQL.add(comp2+' R1_STATUS=9');
      comp2:=' and ';
      end;
   comp:=' union ';
   end;

if (NOMTAB.ItemIndex=0) or (NOMTAB.ItemIndex=17) then
   begin
   if Trim(comp)<>'' then
      Qr_Evento.SQL.Add(comp);
   comp2:=' and ';
   Qr_Evento.SQL.Add('Select (VEVE_STATUS-VEVE_STATUS)+17 as CODTAB '
                    +', VEVE_STATUS AS STATUS '
                    +', VDATHOR   AS DATA '
                    +', TO_CHAR(VDATHOR, '+chr(39)+'HH24:MI:SS'+chr(39)+')  AS HORA '
                    +', VEVE_CODUSR AS CODUSR '
                    +', VCODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +',0 AS VALDIF '

                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Cod.Vendedor: '+chr(39)
                    +'|| TO_CHAR(VCODVEN) || '+chr(39)+' Nome: '+chr(39)
                    +' || VNOME || '+chr(39)+' Data.: '+chr(39)+' || TO_CHAR(VDATHOR, '+chr(39)+fdt2+chr(39)+') AS CODIGO'
                    +' from OLD_CADVEN  where 1=1 ');
   if Trim(MCODUSR.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' VEVE_CODUSR=0'+Trim(MCODUSR.Text));
      comp2:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' VCODVEN=0'+Trim(CODIGO.Text));
      comp2:=' and ';
      end;

   Qr_Evento.sql.add(fFormatdatetimeParaConsulta('VDATHOR',true,edt_datini.Date)+fFormatdatetimeParaConsulta('VDATHOR',false,edt_datfin.Date));
   if RG_TIPO.ItemIndex=1 then
      begin
      Qr_Evento.SQL.add(comp2+' VEVE_STATUS=8');
      comp2:=' and ';
      end;
   if RG_TIPO.ItemIndex=2 then
      begin
      Qr_Evento.SQL.add(comp2+' VEVE_STATUS=9');
      comp2:=' and ';
      end;
   comp:=' union ';
   end;


if (NOMTAB.ItemIndex=0) or (NOMTAB.ItemIndex=18) then
   begin
   if Trim(comp)<>'' then
      Qr_Evento.SQL.Add(comp);
   comp2:=' and ';
   Qr_Evento.SQL.Add('Select (FPCODEMP-FPCODEMP)+18 as CODTAB '
                    +', FPTIPEVE AS STATUS '
                    +', FPDATHOR_ALTEXC AS DATA '
                    +', TO_CHAR(FPDATHOR_ALTEXC, '+chr(39)+'HH24:MI:SS'+chr(39)+')  AS HORA '
                    +', FPCODUSR_ALTEXC AS CODUSR '
                    +', FPCODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +',0 AS VALDIF '

                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Lote: '+chr(39)
                    +'|| TO_CHAR(FPLOTE) || '+chr(39)+' Dup.A Pagar: '+chr(39)
                    +' || TO_CHAR(FPNUMERO) || '
                    +chr(39)+'/'+chr(39)+' || FPDESD || '
                    +chr(39)+' Dt.Emis.: '+chr(39)+' || TO_CHAR(FPDTEMIS, '+chr(39)+fdt2+chr(39)+') AS CODIGO'
                    +' from OLD_FPCPDUP  where 1=1 ');

   if Trim(MCODUSR.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' FPCODUSR=0'+Trim(MCODUSR.Text));
      comp2:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' FPLOTE=0'+Trim(CODIGO.Text));
      comp2:=' and ';
      end;

   if Trim(edt_numnf.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' FPNUMERO=0'+Trim(edt_numnf.Text));
      comp2:=' and ';
      end;
   Qr_Evento.sql.add(fFormatdatetimeParaConsulta('FPDATHOR_ALTEXC',true,edt_datini.Date)+fFormatdatetimeParaConsulta('FPDATHOR_ALTEXC',false,edt_datfin.Date));
   if RG_TIPO.ItemIndex=1 then
      begin
      Qr_Evento.SQL.add(comp2+' FPTIPEVE=8');
      comp2:=' and ';
      end;
   if RG_TIPO.ItemIndex=2 then
      begin
      Qr_Evento.SQL.add(comp2+' FPTIPEVE=9');
      comp2:=' and ';
      end;
   comp:=' union ';
   end;

if (NOMTAB.ItemIndex=0) or (NOMTAB.ItemIndex=19) then
   begin
   if Trim(comp)<>'' then
      Qr_Evento.SQL.Add(comp);
   comp2:=' and ';
   Qr_Evento.SQL.Add('Select (FPCODEMP-FPCODEMP)+19 as CODTAB '
                    +', FPTIPEVE AS STATUS '
                    +', FPDATHOR_ALTEXC AS DATA '
                    +', TO_CHAR(FPDATHOR_ALTEXC, '+chr(39)+'HH24:MI:SS'+chr(39)+')  AS HORA '
                    +', FPCODUSR_ALTEXC AS CODUSR '
                    +', FPCODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +',0 AS VALDIF '

                    +', FPMOTIVO AS Motivo '
                    +', '+chr(39)+'Lote: '+chr(39)
                    +'|| TO_CHAR(FPLOTE) || '+chr(39)+' Dup.Receber: '+chr(39)
                    +' || TO_CHAR(FPNUMERO) || '
                    +chr(39)+'/'+chr(39)+' || FPDESD || '
                    +chr(39)+' Dt.Emis.: '+chr(39)+' || TO_CHAR(FPDTEMIS, '+chr(39)+fdt2+chr(39)+') AS CODIGO'
                    +' from OLD_FPCRDUP  where 1=1 ');

   if Trim(MCODUSR.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' FPCODUSR=0'+Trim(MCODUSR.Text));
      comp2:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' FPLOTE=0'+Trim(CODIGO.Text));
      comp2:=' and ';
      end;

   if Trim(edt_numnf.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' FPNUMERO=0'+Trim(edt_numnf.Text));
      comp2:=' and ';
      end;


   Qr_Evento.sql.add(fFormatdatetimeParaConsulta('FPDATHOR_ALTEXC',true,edt_datini.Date)+fFormatdatetimeParaConsulta('FPDATHOR_ALTEXC',false,edt_datfin.Date));

   if RG_TIPO.ItemIndex=1 then
      begin
      Qr_Evento.SQL.add(comp2+' FPTIPEVE=8');
      comp2:=' and ';
      end;
   if RG_TIPO.ItemIndex=2 then
      begin
      Qr_Evento.SQL.add(comp2+' FPTIPEVE=9');
      comp2:=' and ';
      end;
   comp:=' union ';
   end;



if (NOMTAB.ItemIndex=0) or (NOMTAB.ItemIndex=20) then
   begin
   if Trim(comp)<>'' then
      Qr_Evento.SQL.Add(comp);
   comp2:=' and ';
   Qr_Evento.SQL.Add('Select (USR_TIPEVE-USR_TIPEVE)+20 as CODTAB '
                    +', USR_TIPEVE AS STATUS '
                    +', DATHOR_EVE  AS DATA '
                    +', TO_CHAR(DATHOR_EVE, '+chr(39)+'HH24:MI:SS'+chr(39)+')  AS HORA '
                    +', CODUSR_EVE AS CODUSR '
                    +', USR_CODEVE AS CODNOV '
                    +', 0 AS CHAVE '
                    +',0 AS VALDIF '

                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Codigo: '+chr(39)
                    +'|| TO_CHAR(CODUSR) || '+chr(39)+' Nome: '+chr(39)
                    +' || NOMUSR AS CODIGO'

                    +' from OLD_CADUSR  where 1=1 ');
   if Trim(MCODUSR.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' CODUSR_EVE=0'+Trim(MCODUSR.Text));
      comp2:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' CODUSR_EVE=0'+Trim(CODIGO.Text));
      comp2:=' and ';
      end;

   Qr_Evento.sql.add(fFormatdatetimeParaConsulta('DATHOR_EVE',true,edt_datini.Date)+fFormatdatetimeParaConsulta('DATHOR_EVE',false,edt_datfin.Date));

   if RG_TIPO.ItemIndex=1 then
      begin
      Qr_Evento.SQL.add(comp2+' USR_TIPEVE=8');
      comp2:=' and ';
      end;
   if RG_TIPO.ItemIndex=2 then
      begin
      Qr_Evento.SQL.add(comp2+' USR_TIPEVE=9');
      comp2:=' and ';
      end;
   comp:=' union ';
   end;



if (NOMTAB.ItemIndex=0) or (NOMTAB.ItemIndex=21) then
   begin
   if Trim(comp)<>'' then
      Qr_Evento.SQL.Add(comp);
   comp2:=' and ';
   Qr_Evento.SQL.Add('Select (LC1_TIPEVE-LC1_TIPEVE)+21 as CODTAB '
                    +', LC1_TIPEVE AS STATUS '
                    +', LC1_DATHOR_EVE  AS DATA '
                    +', TO_CHAR(LC1_DATHOR_EVE ,'+chr(39)+'HH24:MI'+chr(39)+') AS  HORA '
                    +', LC1_CODUSR_EVE AS CODUSR '
                    +', LC1_CODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +',0 AS VALDIF '

                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Chave: '+chr(39)
                    +'|| TO_CHAR(LC1_CHAVE) || '+chr(39)+' Cod.Cliente: '+chr(39)
                    +' || TO_CHAR(LC1_CODCLI) || '+chr(39)+' Data.: '+chr(39)+' || TO_CHAR( LC1_DTEMIS, '+chr(39)+fdt2+chr(39)+') AS CODIGO'

                    +' from OLD_CADLC1  where 1=1 ');
   if Trim(MCODUSR.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' LC1_CODUSR_EVE=0'+Trim(MCODUSR.Text));
      comp2:=' and ';
      end;
   if Trim(edt_numnf.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' LC1_CHAVE=0'+Trim(edt_numnf.Text));
      comp2:=' and ';
      end;

   if Trim(CODIGO.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' LC1_CODCLI=0'+Trim(CODIGO.Text));
      comp2:=' and ';
      end;

   Qr_Evento.sql.add(fFormatdatetimeParaConsulta('LC1_DATHOR_EVE',true,edt_datini.Date)+fFormatdatetimeParaConsulta('LC1_DATHOR_EVE',false,edt_datfin.Date));

   if RG_TIPO.ItemIndex=1 then
      begin
      Qr_Evento.SQL.add(comp2+' LC1_TIPEVE=8');
      comp2:=' and ';
      end;
   if RG_TIPO.ItemIndex=2 then
      begin
      Qr_Evento.SQL.add(comp2+' LC1_TIPEVE=9');
      comp2:=' and ';
      end;
   comp:=' union ';
   end;

if (valfloat(edt_valini.text)<>0) or (valfloat(edt_valfin.text)<>0) then
   begin
   qr_evento.sql.add('select * from ('
                    +qr_evento.text
                    +') ');
   comp:=' where ';
   if (valfloat(edt_valini.text)<>0) then
      begin
      qr_evento.sql.add(comp+ ' VALDIF=>:VALDIF ');
      comp:=' and ';
      end;
   if (valfloat(edt_valfin.text)<>0) then
      begin
      qr_evento.sql.add(comp+ ' VALDIF=<:VALDIF ');
      comp:=' and ';
      end;
   qr_evento.Parambyname('VALDIF').asfloat:=valfloat(edt_valini.text);
   end;

try
   Qr_Evento.Open;
except on e : exception do
   ex_erroSql_Novo(Qr_Evento,1492,'func Erro:'+e.Message ,'CADNE');
   end;
end;

procedure TFrm_Evento.NOMTABExit(Sender: TObject);
begin
NOMTAB.Text:=NOMTAB.items.Strings[NOMTAB.itemindex];
if (NOMTAB.itemindex=12) or (NOMTAB.itemindex=6) or (NOMTAB.itemindex=4)  or (NOMTAB.itemindex=3) or (NOMTAB.itemindex=19) or (NOMTAB.itemindex=21) then
  begin
  pnl_Pedido.Visible:=True;
  end
else
  begin
  pnl_Pedido.Visible:=False;
  end;
end;

procedure TFrm_Evento.FormCreate(Sender: TObject);
begin
NOMTAB.ItemIndex := 0;
tsRelatorio.TabVisible:=false;

end;

procedure TFrm_Evento.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Evento.BitBtn2Click(Sender: TObject);
var
minstant: String;
form_compras: TFrm_Compras_Orc;
begin
DM1.Qr_Evento.Close;
DM1.Qr_Evento.Open;
DM1.Qr_Evento.Append;
DM1.Qr_EventoCODNOV.Value:=Qr_EventoCODNOV.AsFloat;
DM1.Qr_EventoSTATUS.Value:=Qr_EventoSTATUS.AsFloat;
DM1.Qr_Evento.Post;

if Qr_EventoCODTAB.Value=2 then
   begin
   minstant:=DM1.Tb_Cli.Text;
   if not mredirecionaFormCli then
      begin
      testeform := TFrm_Evento(FindGlobalComponent('form_cli_evento'));
      if (testeform=nil)  then
         Application.CreateForm(Tfrm_cli, form_cli_evento);
      end;
   cli_ori:='consulta';
         form_cli_evento.Show;
   end;
if Qr_EventoCODTAB.Value=1 then
   begin
   minstant:=DM1.Tb_Chq.Text;
   testeform := TFrm_Evento(FindGlobalComponent('form_mchq_evento'));
   if (testeform=nil)  then
      Application.CreateForm(Tfrm_mchq, form_mchq_evento);
   chq_ori:='consulta';
         form_mchq_evento.Show;
   DM1.Tb_Chq.SQL.Clear;
   DM1.Tb_Chq.Params.Clear;
   DM1.Tb_Chq.Params.CreateParam(ftString,'EMPRESA',ptInput);
   DM1.Tb_Chq.Params.CreateParam(ftString,'SEQUENCIA',ptInput);
   DM1.Tb_Chq.SQL.Add('Select * from CADCHQ where '
                     +' CHCODEMP   like :EMPRESA  and '
                     +' CHSEQ           like :SEQUENCIA ');
   end;
if Qr_EventoCODTAB.Value=3 then
   begin
   minstant:=DM1.Tb_CP.Text;
   testeform := TFrm_Evento(FindGlobalComponent('form_dap_evento'));
   if (testeform=nil)  then
      Application.CreateForm(Tfrm_dap, form_dap_evento);
   form_dap_evento.sbRestaurar.Visible:=true;
   dap_ori:='consulta';
         form_dap_evento.Show;
   end;
if Qr_EventoCODTAB.Value=4 then
   begin
   minstant:=DM1.Tb_Dar.Text;
   testeform := TFrm_Evento(FindGlobalComponent('form_dar_evento'));
   if (testeform=nil)  then
      Application.CreateForm(Tfrm_dar, form_dar_evento);
   dar_ori:='consulta';
         form_dar_evento.Show;
   end;
if Qr_EventoCODTAB.Value=5 then
   begin
   minstant:=DM1.Tb_UF.Text;
   testeform := TFrm_Evento(FindGlobalComponent('form_uf_evento'));
   if (testeform=nil)  then
      Application.CreateForm(Tfrm_uf, form_uf_evento);
   uf_ori:='consulta';
         form_uf_evento.show;
   end;
if Qr_EventoCODTAB.Value=6 then
   begin
   DM1.Tb_LDR.close;
   DM1.Tb_LDR.Filtered:=False;
   minstant:=DM1.Tb_LDR.Text;
   testeform := TFrm_Evento(FindGlobalComponent('form_ldr_evento'));
   if (testeform=nil)  then
       Application.CreateForm(Tfrm_ldr, form_ldr_evento);
   ldr_ori:='consulta';
         form_ldr_evento.Show;
   DM1.Tb_LDR.close;
   DM1.Tb_LDR.Filtered:=true;
   end;
if Qr_EventoCODTAB.Value=7 then
   begin
   minstant:=DM1.Tb_For.Text;
   testeform := TFrm_Evento(FindGlobalComponent('form_for_evento'));
   if (testeform=nil)  then
      Application.CreateForm(Tfrm_for, form_for_evento);
   form_for_evento.for_ori:='consulta';
         form_for_evento.Show;
   end;
if Qr_EventoCODTAB.Value=8 then
   begin
   minstant:=DM1.Tb_ne.Text;
   testeform := TFrm_Evento(FindGlobalComponent('form_ne_evento'));
   if (testeform=nil)  then
      Application.CreateForm(Tfrm_ne, form_ne_evento);

   ne_ori:='consulta';
        form_ne_evento.Show;
   end;
if Qr_EventoCODTAB.Value=9 then
   begin
   minstant:=DM1.Tb_NS.Text;
   testeform := TFrm_Evento(FindGlobalComponent('form_ns_evento'));
   if (testeform=nil)  then
      Application.CreateForm(Tfrm_ns, form_ns_evento);
   ne_ori:='consulta';
         form_ns_evento.Show;
   end;
if Qr_EventoCODTAB.Value=10 then
   begin
   testeform := TFrm_Evento(FindGlobalComponent('form_manos'));
   if (testeform=nil)  then
      Application.CreateForm(TFrm_Manos, Form_ManOS);
   os_origem:='consulta';
   mManOs_Oper:=3;
   Form_ManOs.BBLOCALIZAR.Click;
   Form_Manos.Show;
   end;

if Qr_EventoCODTAB.Value=11 then
   begin
   minstant:=DM4.Tb_Par01.Text;
   testeform := TFrm_Evento(FindGlobalComponent('form_par_evento'));
   if (testeform=nil)  then
      Application.CreateForm(Tfrm_par, form_par_evento);
   par_ori:='consulta';
         form_par_evento.Show;
   end;
if Qr_EventoCODTAB.Value=12 then
   begin
   showmessage('temporariamente suspenso');
   end;
if Qr_EventoCODTAB.Value=13 then
   begin
   if fLerGenerico01_campos('OLD_CADPF1','PF1CODEMP',' PF1CODNOV='+Qr_EventoCODNOV.AsString,mValorRetorno01) then
      begin
      if valint(mvalorretorno01)<>codemp then
         begin
         messagedlg('para detalhes deste evento logar na empresa '+inttostr(codemp),mtWarning,[mbOk],0);
         exit
         end;
      Application.createform(TFrm_Compras_Orc, form_compras);
      Form_Compras.mtab_cadpf1:='OLD_CADPF1';
      Form_Compras.mtab_cadpf1v:='OLD_CADPF1V';
      Form_Compras.mtab_cadpf2:='OLD_CADPF2';
      Form_Compras.mtab_cadpf2_lotes:='CADPF2_LOTES_ORC';
      Form_Compras.mtab_cadnov:=Qr_EventoCODNOV.AsFloat;
      Form_Compras.edt_chaveExit(self);
      Form_Compras.Show;
      Form_Compras.sbnIncluir.Enabled:=FALSE;
      Form_Compras.sbnLocalizar.Enabled:=FALSE;
      Form_Compras.sbnAlterar.Enabled:=FALSE;
      Form_Compras.sbnGravar.Enabled:=FALSE;
      Form_Compras.sbnExcluir.Enabled:=FALSE;
      Form_Compras.sbnImpOutro.Enabled:=FALSE;
      Form_Compras.sbnImpXML.Enabled:=FALSE;
      Form_Compras.sbnSugestaoCpr.Enabled:=FALSE;
      Form_Compras.bbConfEntrada.Enabled:=FALSE;
      Form_Compras.sbnPreco.Enabled:=FALSE;
      Form_Compras.sbnCANCELAR.Enabled:=FALSE;

      end;
   end;
if Qr_EventoCODTAB.Value=14 then
   begin
   minstant:=DM1.Tb_PV.Text;
   testeform := TFrm_Evento(FindGlobalComponent('form_pv_evento'));
   if (testeform=nil)  then
      Application.CreateForm(Tfrm_pv, form_pv_evento);
   pv_ori:='consulta';
   form_pv_evento.Show;
   end;
if Qr_EventoCODTAB.Value=15 then
   begin
   minstant:=DM1.Tb_Pro.Text;
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      begin
      testeform := TFrm_Evento(FindGlobalComponent('form_ProConf_evento)'));
      if (testeform=nil)  then
         Application.CreateForm(Tfrm_ProConf, form_ProConf_evento);
      pro_ori:='consulta';

      form_ProConf_evento.Show;
      end
   else if valint(copy(mpseg,1,2))=7 then
      begin
      end
   else
      begin
      if DM1.Tb_pargerPFORPROPAD.Asinteger<>1 then
         begin
         testeform := TFrm_Evento(FindGlobalComponent('form_pro_evento'));
         if (testeform=nil)  then
            Application.CreateForm(Tfrm_pro, form_pro_evento);
            pro_ori:='consulta';
            form_pro_evento.Show;
         end
      else
         begin
         testeform := TFrm_Evento(FindGlobalComponent('form_pro_nov'));
         if (testeform=nil)  then
             Application.CreateForm(Tfrm_Pro_Nov, form_Pro_Nov);
         form_Pro_Nov.proNov_ori:='consulta';
         form_Pro_Nov.FormStyle:=fsNormal;
         form_Pro_Nov.Visible:=False;
         form_Pro_Nov.CAMPO.ItemIndex:=0;
         form_Pro_Nov.Edit1.Text:=Qr_EventoChave.AsString;
         form_Pro_Nov.ToolBar1.Enabled:=False;
         form_Pro_Nov.ShowModal;
         FreeAndNil(form_Pro_Nov);
         end;
      end;
{
   DM1.Tb_Pro.close;
   DM1.Tb_Pro.SQL.Clear;
   DM1.Tb_Pro.Params.Clear;
   DM1.Tb_Pro.Params.CreateParam(ftString,'CODEMP',ptInput);
   DM1.Tb_Pro.Params.CreateParam(ftString,'CODPRO',ptInput);
   DM1.Tb_Pro.Params.CreateParam(ftString,'CODBAR',ptInput);
   DM1.Tb_Pro.Params.CreateParam(ftString,'NOME',ptInput);
   DM1.Tb_Pro.Params.CreateParam(ftString,'NOME2',ptInput);
   DM1.Tb_Pro.Params.CreateParam(ftString,'NOMFOR',ptInput);
   DM1.Tb_Pro.SQL.Add('Select * from CADPRO where '
                     +' PDCODEMP like :CODEMP and '
                     +' PDCODPRO like :CODPRO and '
                     +' PDCODBAR like :CODBAR and '
                     +' PDNOME     like :NOME and '
                     +' PDNOME2   like :NOME2 and '
                     +' PDNOMFOR  like :NOMFOR ');
}                     
   end;
if Qr_EventoCODTAB.Value=16 then
   begin
   testeform := TFrm_Evento(FindGlobalComponent('form_rom_evento'));
   if (testeform=nil)  then
      Application.CreateForm(Tfrm_rom, form_rom_evento);
   form_rom_evento.Rom_ori:='consulta';
         form_rom_evento.Show;
   end
else if Qr_EventoCODTAB.Value=17 then
   begin
   minstant:=DM1.Tb_Ven.Text;
   testeform := TFrm_Evento(FindGlobalComponent('form_ven_evento'));
   if (testeform=nil)  then
      Application.CreateForm(TFrm_Ven, Form_Ven_evento);
   ven_ori:='consulta';
   Form_Ven_evento.Show;
   end;


if Qr_EventoCODTAB.Value=20 then
   begin
   DM4.Tb_Usr.close;
   DM4.Tb_Usr.Filtered:=False;
   minstant:=DM4.Tb_Usr.Text;
   testeform := TFrm_Evento(FindGlobalComponent('form_usr_evento'));
   if (testeform=nil)  then
      Application.CreateForm(Tfrm_usr, form_usr_evento);
   usr_ori:='consulta';
   form_usr_evento.Show;
   end;
end;

procedure TFrm_Evento.MCODUSRKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   MCODUSR.Text:=fChamaUsr(0,'frm_Evento',Key);
   if trim(MCODUSR.Text)<>'' then
      MCODUSRExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Evento.MCODUSRExit(Sender: TObject);
begin
if ValFloat(MCODUSR.Text)=0 then
   MCODUSR.Text:='';
if Trim(MCODUSR.Text)='' then
   NOMUSR.Text:='Todos...'
else if not flcadusr(1,0,MCODUSR.Text) then
   begin
   FMensagem('Usuário não Cadastrado!',0,['0'],0);
   MCODUSR.SetFocus;
   end
else
   NOMUSR.Text:=DM4.Tb_UsrNOMUSR.Value;

end;

procedure TFrm_Evento.bbImprimirClick(Sender: TObject);
begin
RLdet_memo.Borders.DrawTop   :=true;
RLdet_memo.Borders.DrawBottom:=true;
RLdet_memo.Borders.DrawLeft  :=true;
RLdet_memo.Borders.DrawRight :=true;
RLReport1.PreviewModal;
end;

procedure TFrm_Evento.RLDBText2BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin

//   if Qr_EventoCODUSR.AsString = '1111' then
//      RLDBText2.Text := 'Intersys'
//      else RLDBText2.Text := Qr_Eventonomusr.AsString;
end;

procedure TFrm_Evento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;
   
end;



function DesfazCancelamentoBaixaContasReceber(pCodNov: Real): Boolean;
var
minstru: String;
v: String;
x: Integer;
begin


minstru:='Insert into CADCHQ (';
v:='';
for x:=0 to DM1.Tb_Chq.FieldCount-1 do
   begin
   if DM1.Tb_Chq.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_Chq.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+') Select ';
v:='';
for x:=0 to DM1.Tb_Chq.FieldCount-1 do
   begin
   if DM1.Tb_Chq.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_Chq.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+' from OLD_CADCHQ where CHCODNOV=0'+FloatTostr(pCodNov);

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.sql.SaveToFile(mpastatemp + 'SQLCHQ.TXT');
   verteclado(0);
   fMensagem('Erro ao Fazer o Backup da Alteracao 798. Contactar Suporte',0,['1'],0);
   end;

minstru:='Insert into CADLDR (';
v:='';
for x:=0 to DM1.Tb_Ldr.FieldCount-1 do
   begin
   if DM1.Tb_Ldr.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_Ldr.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+') Select ';



v:='';
for x:=0 to DM1.Tb_Ldr.FieldCount-1 do
   begin
   if DM1.Tb_Ldr.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_Ldr.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADLDR where CODNOV=0'+FloatToStr(pCodNov);


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

minstru:='Insert into FPCR (';
v:='';
While not DM1.Query2.Eof do
   begin
   minstru:=minstru+v+DM1.Query2.fieldbyName('COLUMN_NAME').AsString;
   v:=',';
   DM1.Query2.Next;
   end;
minstru:=minstru+') Select ';
v:='';
DM1.Query2.First;
While not DM1.Query2.Eof do
   begin
   minstru:=minstru+v+DM1.Query2.fieldbyName('COLUMN_NAME').AsString;
   v:=',';
   DM1.Query2.Next;
   end;
minstru:=minstru+' from OLD_FPCR where FPCODNOV=0'+FloatTostr(pCodNov);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.sql.SaveToFile(mpastatemp + 'SQLCHQ.TXT');
   verteclado(0);
   fMensagem('Erro ao Fazer o Backup da Alteracao 933. Contactar Suporte',0,['1'],0);
   end;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('SELECT COLUMN_NAME FROM USER_TAB_COLUMNS '
                  +' WHERE TABLE_NAME='+chr(39)+'FPCRDUP'+chr(39));
DM1.Query2.Open;

minstru:='Insert into FPCRDUP (';
v:='';
While not DM1.Query2.Eof do
   begin
   minstru:=minstru+v+DM1.Query2.fieldbyName('COLUMN_NAME').AsString;
   v:=',';
   DM1.Query2.Next;
   end;
minstru:=minstru+') Select ';
v:='';
DM1.Query2.First;
While not DM1.Query2.Eof do
   begin
   minstru:=minstru+v+DM1.Query2.fieldbyName('COLUMN_NAME').AsString;
   v:=',';
   DM1.Query2.Next;
   end;
minstru:=minstru+' from OLD_FPCRDUP where FPCODNOV=0'+FloatTostr(pCodNov);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.sql.SaveToFile(mpastatemp + 'SQLCHQ.TXT');
   verteclado(0);
   fMensagem('Erro ao Fazer o Backup da Alteracao 988. Contactar Suporte',0,['1'],0);
   end;


// baixa duplicatas


minstru:=' Select ';
v:='';
DM1.Query2.First;
While not DM1.Query2.Eof do
   begin
   minstru:=minstru+v+DM1.Query2.fieldbyName('COLUMN_NAME').AsString;
   v:=',';
   DM1.Query2.Next;
   end;
minstru:=minstru+' from OLD_FPCRDUP where FPCODNOV=0'+FloatTostr(pCodNov);
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.SQL.Add(minstru);
try
   DM1.Query3.Open;
except
   end;

DM1.Query3.First;
While not DM1.Query3.Eof do
   begin
   if not flcaddar(8,DM1.Query3.fieldbyName('FPDUP_CODEMP').AsInteger,
      0,DM1.Query3.fieldbyName('FPCODECF').AsInteger,0,
      DM1.Query3.fieldbyName('FPNUMERO').AsString,
      DM1.Query3.fieldbyName('FPDESD').AsString,
      DM1.Query3.fieldbyName('FPTIPO').AsString,
      DM1.Query3.fieldbyName('FPDTEMIS').AsDateTime,'')  then
      Fmensagem('Ha erros duplicata nao encontrada: '+DM1.Query3.fieldbyName('FPNUMERO').AsString,0,['0'],0)
   else
      begin
      DM1.Tb_Dar.Edit;
      DM1.Tb_DarCRVALPAG.Value:=DM1.Tb_DarCRVALPAG.Value+DM1.Query3.fieldbyName('FPVALOR').AsFloat;
      DM1.Tb_DarCRDESC.Value  :=DM1.Tb_DarCRDESC.Value  +DM1.Query3.fieldbyName('FPDESC').AsFloat;
      DM1.Tb_DarCRJUROS.Value :=DM1.Tb_DarCRJUROS.Value +DM1.Query3.fieldbyName('FPJUROS').AsFloat;
      DM1.Tb_DarCRDEVOL.Value :=DM1.Tb_DarCRDEVOL.Value +DM1.Query3.fieldbyName('FPDEVOL').AsFloat;

      if Arredonda(((DM1.Tb_DarCRVALPAG.Value+DM1.Tb_DarCRDESC.Value+DM1.Tb_DarCRDEVOL.Value)-DM1.Tb_DarCRJUROS.Value),2)>=Arredonda(DM1.Tb_DarCRVALOR.Value,2) then
         DM1.Tb_DarCRSTATUS.Value:=2
      else
         DM1.Tb_DarCRSTATUS.Value:=1;
      DM1.Tb_Dar.Post;
      end;
   DM1.Query3.Next;
   end;

// deletar os historicos de cancelamento



minstru:='Delete from OLD_CADCHQ where CHCODNOV=0'+FloatTostr(pCodNov);

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.sql.SaveToFile(mpastatemp + 'SQLCHQ.TXT');
   verteclado(0);
   fMensagem('Erro ao Deletar o Backup da Alteracao 798. Contactar Suporte',0,['1'],0);
   end;

minstru:='Delete from OLD_CADLDR where CODNOV=0'+FloatToStr(pCodNov);


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1120,'Frm_PECF','CADLDR');
   end;

minstru:=' Delete from OLD_FPCR where FPCODNOV=0'+FloatTostr(pCodNov);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.sql.SaveToFile(mpastatemp + 'SQLCHQ.TXT');
   verteclado(0);
   fMensagem('Erro ao Fazer o Backup da Alteracao 933. Contactar Suporte',0,['1'],0);
   end;
minstru:='delete from OLD_FPCRDUP where FPCODNOV=0'+FloatTostr(pCodNov);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.sql.SaveToFile(mpastatemp + 'SQLCHQ.TXT');
   verteclado(0);
   fMensagem('Erro ao Fazer o Backup da Alteracao 988. Contactar Suporte',0,['1'],0);
   end;

result:=True;

end;

procedure TFrm_Evento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((key=118) and (codcar=1111)) then
   begin
   if Qr_Eventonomtab.AsString='Baixa Contas a Receber'  then
      begin
      if fmensagem('Quer Realmente Desfazer o Cancelamento da Baixa '+Qr_EventoCODIGO.AsString
                 +'?',0,['1','2'],2)<>mrYes then
         exit;
      if DesfazCancelamentoBaixaContasReceber(Qr_EventoCODNOV.AsFloat) then
         fmensagem('Cancelamento desfeito!',0,['0'],0);
      end;
   end;

end;

procedure TFrm_Evento.Qr_EventoCalcFields(DataSet: TDataSet);
begin
if flqr1('NOMUSR','','CADUSR','N','CODUSR',Qr_EventoCODUSR.AsString) then
   Qr_Eventonomusr.Value:=DM1.Query1.Fields[0].AsString;
if Qr_EventoSTATUS.Value=9 then
   Qr_Eventoevento.Value:='Exclusão de Registro'
else
   Qr_Eventoevento.Value:='Alteração de Registro';
if Qr_EventoCODTAB.Value=1 then
   Qr_Eventonomtab.Value:='Tabela de Cheques'
else if Qr_EventoCODTAB.Value=2 then
   Qr_Eventonomtab.Value:='Tabela de Clientes'
else if Qr_EventoCODTAB.Value=3 then
   Qr_Eventonomtab.Value:='Tabela de Duplicatas a Pagar'
else if Qr_EventoCODTAB.Value=4 then
   Qr_Eventonomtab.Value:='Tabela de Duplicatas a Receber'
else if Qr_EventoCODTAB.Value=5 then
   Qr_Eventonomtab.Value:='Tabela de Estados'
else if Qr_EventoCODTAB.Value=6 then
   Qr_Eventonomtab.Value:='Tabela de Fluxo de Caixa'
else if Qr_EventoCODTAB.Value=7 then
   Qr_Eventonomtab.Value:='Tabela de Fornecedores'
else if Qr_EventoCODTAB.Value=8 then
   Qr_Eventonomtab.Value:='Tabela de Notas de Entradas'
else if Qr_EventoCODTAB.Value=9 then
   Qr_Eventonomtab.Value:='Tabela de Notas de Saidas'
else if Qr_EventoCODTAB.Value=10 then
   Qr_Eventonomtab.Value:='Tabela de Ordem de Seviços'
else if Qr_EventoCODTAB.Value=11 then
   Qr_Eventonomtab.Value:='Tabela de Parametros'
else if Qr_EventoCODTAB.Value=12 then
   Qr_Eventonomtab.Value:='Tabela de Pedidos de Clientes'
else if Qr_EventoCODTAB.Value=13 then
   Qr_Eventonomtab.Value:='Tabela de Pedidos de Fornecedores'
else if Qr_EventoCODTAB.Value=14 then
   Qr_Eventonomtab.Value:='Tabela de Plano de Vendas'
else if Qr_EventoCODTAB.Value=15 then
   Qr_Eventonomtab.Value:='Tabela de Produtos'
else if Qr_EventoCODTAB.Value=16 then
   Qr_Eventonomtab.Value:='Tabela de Romaneios'
else if Qr_EventoCODTAB.Value=17 then
   Qr_Eventonomtab.Value:='Tabela de Vendedores'
else if Qr_EventoCODTAB.Value=18 then
   Qr_Eventonomtab.Value:='Baixa Contas a Pagar'
else if Qr_EventoCODTAB.Value=19 then
   Qr_Eventonomtab.Value:='Baixa Contas a Receber'
else if Qr_EventoCODTAB.Value=20 then
   Qr_Eventonomtab.Value:='Tabela de Usuários'
else if Qr_EventoCODTAB.Value=21 then
   Qr_Eventonomtab.Value:='Tabela de Licitacoes';

Escreve_LnInfo(NOMTAB.ItemIndex,Qr_EventoSTATUS.AsInteger);

end;

procedure TFrm_Evento.CODIGOExit(Sender: TObject);
begin
CODIGO.Text:=fdeixanum2(CODIGO.Text);
end;

procedure TFrm_Evento.edt_numnfExit(Sender: TObject);
begin
edt_numnf.Text:=fdeixanum2(edt_numnf.Text);
end;

procedure TFrm_Evento.NOMTABClick(Sender: TObject);
begin

lbl_codigo.Visible:=false;
CODIGO.Visible    :=false;
lbl_numnf.Visible :=false;
edt_numnf.Visible :=false;
lbl_nome.Visible  :=false;
edt_nome.Visible  :=false;
lbl_chave.Visible :=false;
edt_chave.Visible :=false;
gb_valores_entre.Visible:=false;

CODIGO.Text   :='';
edt_numnf.Text:='';
edt_nome.Text :='';


if NOMTAB.ItemIndex=3 then
   begin
   lbl_numnf.Visible:=true;
   edt_numnf.Visible:=true;
   lbl_codigo.Caption:='Código Fornecedor:';
   CODIGO.Visible    :=true;
   lbl_codigo.Visible:=true;
   end
else if NOMTAB.ItemIndex=1 then
   begin
   lbl_codigo.Caption:='Código do Cliente:';
   CODIGO.Visible    :=true;
   lbl_codigo.Visible:=true;
   end
else if NOMTAB.ItemIndex=2 then
   begin

   lbl_nome.Caption  :='Nome do Cliente:';
   lbl_nome.Visible  :=true;
   edt_nome.Visible  :=true;
   lbl_codigo.Caption:='Código do Cliente:';
   CODIGO.Visible    :=true;
   lbl_codigo.Visible:=true;
   end
else if NOMTAB.ItemIndex=4 then
   begin
   lbl_codigo.Caption:='Código do Cliente:';
   CODIGO.Visible    :=true;
   lbl_codigo.Visible:=true;
   end

else if NOMTAB.ItemIndex=6 then
   begin
   gb_valores_entre.Visible:=true;
   end
else if NOMTAB.ItemIndex=5 then
   begin
   lbl_codigo.Caption:='Código do Sacado:';
   CODIGO.Visible    :=true;
   lbl_codigo.Visible:=true;
   end
else if NOMTAB.ItemIndex=7 then
   begin
   lbl_codigo.Caption:='Código do Fornecedor:';
   CODIGO.Visible    :=true;
   lbl_codigo.Visible:=true;
   end
else if NOMTAB.ItemIndex=8 then
   begin
   lbl_codigo.Caption:='Código de Fornecedor:';
   CODIGO.Visible    :=true;
   lbl_codigo.Visible:=true;
   end
else if NOMTAB.ItemIndex=9 then
   begin
   lbl_codigo.Caption:='Código do Cliente:';
   CODIGO.Visible    :=true;
   lbl_codigo.Visible:=true;
   end
else if NOMTAB.ItemIndex=10 then
   begin
   lbl_codigo.Caption:='Chave da OS:';
   CODIGO.Visible    :=true;
   lbl_codigo.Visible:=true;
   end
else if NOMTAB.ItemIndex=11 then
   begin
   lbl_codigo.Caption:='Chave Sequencia:';
   CODIGO.Visible    :=true;
   lbl_codigo.Visible:=true;
   end
else if NOMTAB.ItemIndex=12 then
   begin
   lbl_codigo.Caption:='Chave do Pedido:';
   CODIGO.Visible    :=true;
   lbl_codigo.Visible:=true;
   end
else if NOMTAB.ItemIndex=13 then
   begin
   lbl_codigo.Caption:='Código do Fornecedor:';
   CODIGO.Visible    :=true;
   lbl_codigo.Visible:=true;
   lbl_chave.Visible :=true;
   edt_chave.Visible :=true;

   end
else if NOMTAB.ItemIndex=14 then
   begin
   lbl_codigo.Caption:='Código do Plano de Vendas:';
   CODIGO.Visible    :=true;
   lbl_codigo.Visible:=true;
   end
else if NOMTAB.ItemIndex=15 then
   begin
   lbl_codigo.Caption:='Código do Produto:';
   CODIGO.Visible    :=true;
   lbl_codigo.Visible:=true;
   lbl_nome.Caption  :='Nome do Produto:';
   lbl_nome.Visible  :=true;
   edt_nome.Visible  :=true;
   end
else if NOMTAB.ItemIndex=16 then
   begin
   lbl_codigo.Caption:='Chave do Romaneio:';
   CODIGO.Visible    :=true;
   lbl_codigo.Visible:=true;
   end
else if NOMTAB.ItemIndex=17 then
   begin
   lbl_codigo.Caption:='Código do Vendedor:';
   CODIGO.Visible    :=true;
   lbl_codigo.Visible:=true;
   lbl_numnf.Visible:=true;
   edt_numnf.Visible:=true;


   end
else if NOMTAB.ItemIndex=18 then
   begin
   lbl_codigo.Caption:='Lote da Baixa:';
   CODIGO.Visible    :=true;
   lbl_codigo.Visible:=true;
   lbl_numnf.Visible:=true;
   edt_numnf.Visible:=true;
   end
else if NOMTAB.ItemIndex=19 then
   begin
   lbl_codigo.Caption:='Lote da Baixa:';
   CODIGO.Visible    :=true;
   lbl_codigo.Visible:=true;
   end
else if NOMTAB.ItemIndex=20 then
   begin
   lbl_codigo.Caption:='Código do Usuario:';
   CODIGO.Visible    :=true;
   lbl_codigo.Visible:=true;
   end
else if NOMTAB.ItemIndex=21 then
   begin
   lbl_codigo.Caption:='Código do Cliente:';
   CODIGO.Visible    :=true;
   lbl_codigo.Visible:=true;
   lbl_numnf.Caption:='Chave da Lic:';
   edt_numnf.Visible    :=true;
   lbl_numnf.Visible:=true;
   end;




end;

procedure TFrm_Evento.edt_valiniExit(Sender: TObject);
begin
edt_valini.Text:=formatfloat(mcasas, valfloat(edt_valini.text));

end;

procedure TFrm_Evento.edt_valfinExit(Sender: TObject);
begin
edt_valfin.Text:=formatfloat(mcasas, valfloat(edt_valfin.text));

end;

procedure TFrm_Evento.edt_datiniExit(Sender: TObject);
begin
if (fsonumero(edt_datini.text)>0) and (fsonumero(edt_datfin.Text)>0) then
   begin
   if edt_datini.Date>edt_datfin.Date then
      edt_datfin.date:=edt_datini.date;
   end;
end;

procedure TFrm_Evento.edt_datfinExit(Sender: TObject);
begin
if (fsonumero(edt_datini.text)>0) and (fsonumero(edt_datfin.Text)>0) then
   begin
   if edt_datini.Date>edt_datfin.Date then
      edt_datini.date:=edt_datfin.date;
   end;

end;

end.

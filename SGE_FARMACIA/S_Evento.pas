unit S_Evento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, Buttons,db,dbtables,func,S_DM1,lerarq,
  Grids, DBGrids,S_Cli,S_MChq,s_Dap,S_Dar,S_UF,S_LDR,S_For,S_NE,S_NS,S_Par,
  S_Pv,S_Pro,S_Rom,S_Usr,S_ProConf,S_ManOs, RLReport, RLFilters,
  RLDraftFilter, S_Pro_Farma, S_Ven, DBCtrls ;


type
  TFrm_Evento = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    MCODUSR: TEdit;
    NOMUSR: TEdit;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    Label4: TLabel;
    NOMTAB: TComboBox;
    RG_TIPO: TRadioGroup;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    bbImprimir: TBitBtn;
    BitBtn4: TBitBtn;
    lbl_codigo: TLabel;
    CODIGO: TEdit;
    RLDraftFilter1: TRLDraftFilter;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    RLBand3: TRLBand;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel4: TRLLabel;
    RLBand4: TRLBand;
    RLLabel5: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    pnl_Pedido: TPanel;
    Qry_T: TQuery;
    m_informacao: TDBMemo;
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
    lbl_numnf: TLabel;
    edt_numnf: TEdit;
    lbl_nome: TLabel;
    edt_nome: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure NOMTABExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure MCODUSRKeyPress(Sender: TObject; var Key: Char);
    procedure MCODUSRExit(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
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
  private
    { Private declarations }
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
    form_Pro_Farma: TFrm_Pro_Farma;
    form_manos: TFrm_ManOs;
    function Escreve_LnInfo(Tipo_R, Tipo_M: Integer): Boolean;
  end;

function DesfazCancelamentoBaixaContasReceber(pCodNov: Real): Boolean;
function insere_caracter(Caracter: Char; Tamanho: Integer): String;

var
  Frm_Evento: TFrm_Evento;
  codtab: array [1..14]  of string;
implementation

uses  S_DM4, func_excecoes;

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
if (Tipo_R<>12) and (Tipo_R<>6) and (Tipo_R<>19) and (Tipo_R<>21) then
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
  Qry_T.SQL.Add('        end MOTIVO,                                             ');
  Qry_T.SQL.Add('        CCODCLI||'+chr(39)+' - '+chr(39)+'||CRAZAO as Razao,    ');
  Qry_T.SQL.Add('     old_cadp01.P1TOTALL as Total                               ');
  Qry_T.SQL.Add(' from                                                           ');
  Qry_T.SQL.Add('        OLD_CADP01, CADP01, CADCLI                              ');
  Qry_T.SQL.Add(' where CCODCLI=OLD_CADP01.P1CODCLI                              ');
  Qry_T.SQL.Add('   and OLD_CADP01.P1CHAVE=CADP01.P1CHAVE                        ');
  Qry_T.SQL.Add('   and OLD_CADP01.P1LOTSEQ=CADP01.P1LOTSEQ                      ');
  Qry_T.SQL.Add('   and OLD_CADP01.P1CODEMP=CADP01.P1CODEMP                      ');
  Qry_T.SQL.Add('   and old_cadp01.P1CODNOV='+Qr_Evento.FieldByName('CODNOV').AsString);
  Qry_T.SQL.Add(' '+codemp2('old_cadp01.P1CODEMP',codemp));
  Qry_T.SQL.Add(   fla_EmpBaixaAlta(0,'CADCLI',' and ',codemp,'CCODEMP',''));
//  Qry_T.SQL.SaveToFile('C:\Sql.txt');

  try
     Qry_T.Open;
   except
     Qry_T.SQL.SaveToFile('C:\Sql.txt');
     showmessage('Erro ao Buscar os dados!!!');
     end;
   Qr_EventoMotivo.AsString:='Chave..:'+Qry_T.FieldByName('Chave').AsString+insere_caracter(' ',70-length('Chave..:'+Qry_T.FieldByName('Chave').AsString))+'Data..: '+Qry_T.FieldByName('Data').AsString+chr(13)+chr(10);
   Qr_EventoMotivo.AsString:=Qr_EventoMotivo.AsString+'Descrição..:'+Qry_T.FieldByName('Razao').AsString+insere_caracter(' ',70-length('Descrição..:'+Qry_T.FieldByName('Razao').AsString))+'Valor..: R$'+FormatFloat('###,##0.00',Qry_T.FieldByName('Total').AsFloat)+chr(13)+chr(10);
   Qr_EventoMotivo.AsString:=Qr_EventoMotivo.AsString+copy('Motivo..:'+Qry_T.FieldByName('Motivo').AsString,0,90);
   Qr_EventoChave.AsInteger:=Qry_T.FieldByName('Chave').AsInteger;
   end
else if Tipo_R=6 then
   begin
   Qry_T.SQL.Add(' select DATAREAL,DATADP,VALORP,VALORR,CODBCO,CODDEP,CODCC '
                +' from '
                +'    OLD_CADLDR ');
   Qry_T.SQL.Add(' where OLD_CADLDR.CODNOV='+Qr_Evento.FieldByName('CODNOV').AsString);
   Qry_T.SQL.Add(   fla_EmpBaixaAlta(0,'CADLDR',' and ',codemp,'CODEMP',''));

  try
     Qry_T.Open;
   except
     Qry_T.SQL.SaveToFile('C:\Sql.txt');
     showmessage('Erro ao Buscar os dados!!!');
     end;
   Qr_EventoMotivo.AsString:=insere2('Data Real: '+FormatDateTime(fdt2, Qry_T.FieldByName('DATAREAL').AsDateTime),' ',40)
                            +' Data Previsto: '+FormatDateTime(fdt2, Qry_T.FieldByName('DATADP').AsDateTime)+chr(13)+chr(10)
                            +insere2('Valor Real: '+FormatFloat(mcasas, Qry_T.FieldByName('VALORP').AsFloat),' ',40)
                            +' Valor Previsto: '+FormatFloat(mcasas, Qry_T.FieldByName('VALORR').AsFloat)+chr(13)+chr(10)
                            +'Código do Banco: '+Qry_T.FieldByName('CODBCO').AsString
                            +' Codigo Depto: '+Qry_T.FieldByName('CODDEP').AsString+chr(13)+chr(10)
                            +' Código CCU: '+Qry_T.FieldByName('CODCC').AsString;
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
     Qry_T.SQL.SaveToFile('C:\Sql.txt');
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
     Qry_T.SQL.SaveToFile('C:\Sql.txt');
     showmessage('Erro ao Buscar os dados!!!');
     end;
   Qr_EventoMotivo.AsString:='Numero de Itens: '+Qry_T.FieldByName('QTDITENS').AsString+chr(13)+chr(10)
                            +'Quantidade: '+FormatFloat(mcasqtd, Qry_T.FieldByName('TOTUND').AsFloat)+chr(13)+chr(10)
                            +'Valor total: '+FormatFloat(mcasas, Qry_T.FieldByName('TOTAL').AsFloat)+chr(13)+chr(10);
   end;



Result:=True;
end;

procedure TFrm_Evento.BitBtn1Click(Sender: TObject);
var
comp: String;
comp2: String;
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      FMensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
comp:='';
Qr_Evento.Close;
Qr_Evento.SQL.Clear;
if (NOMTAB.ItemIndex=0) or (NOMTAB.ItemIndex=1) then
   begin
   comp2:=' where ';
   Qr_Evento.SQL.Add('Select (CHSTATUS-CHSTATUS)+1 as CODTAB '
                    +', CHSTATUS AS STATUS '
                    +', CHDTALT  AS DATA '
                    +', CHHRALT  AS HORA '
                    +', CHCODUSR AS CODUSR '
                    +', CHCODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Numero: '+chr(39)
                    +'|| TO_CHAR(CHNUMERO) || '+chr(39)+' Bco: '+chr(39)
                    +' || TO_CHAR(CHBANCO) || '+chr(39)+' Dt.Dep.: '+chr(39)+' || TO_CHAR(CHDTDEP, '+chr(39)+fdt2+chr(39)+') AS CODIGO'
                    +' from OLD_CADCHQ ');
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

   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' CHDTALT>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      comp2:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' CHDTALT<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      comp2:=' and ';
      end;
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
   comp2:=' where ';
   Qr_Evento.SQL.Add('Select (CSTATUS-CSTATUS)+2 as CODTAB '
                    +', CSTATUS AS STATUS '
                    +', CDTALT  AS DATA '
                    +', CHRALT  AS HORA '
                    +', CCODUSR AS CODUSR '
                    +', CCODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Codigo: '+chr(39)
                    +'|| TO_CHAR(CCODCLI) || '+chr(39)+' Razao: '+chr(39)
                    +' || CRAZAO AS CODIGO'
                    +' from OLD_CADCLI ');
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


   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' CDTALT>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      comp2:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' CDTALT<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      comp2:=' and ';
      end;
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
   comp2:=' where ';
   Qr_Evento.SQL.Add('Select (CASTATUS-CASTATUS)+3 as CODTAB '
                    +', CASTATUS AS STATUS '
                    +', CADTALT  AS DATA '
                    +', CAHRALT  AS HORA '
                    +', CACODUSR AS CODUSR '
                    +', CACODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Numero: '+chr(39)
                    +'|| TO_CHAR(CANUMERO) || '+chr(39)+' Codfor: '+chr(39)
                    +' || TO_CHAR(CACODFOR) || '+chr(39)+' Dt.Vcto.: '+chr(39)+' || TO_CHAR(CADTVCTO, '+chr(39)+fdt2+chr(39)+') AS CODIGO'

                    +' from OLD_CADDAP ');
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

   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' CADTALT>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      comp2:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' CADTALT<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      comp2:=' and ';
      end;
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
   comp2:=' where ';
   Qr_Evento.SQL.Add('Select (CRSTATUS-CRSTATUS)+4 as CODTAB '
                    +', CRSTATUS AS STATUS '
                    +', CRDTALT  AS DATA '
                    +', CRHRALT  AS HORA '
                    +', CRCODUSR AS CODUSR '
                    +', CRCODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Numero: '+chr(39)
                    +'|| TO_CHAR(CRNUMERO) || '+chr(39)+' Desd: '+chr(39)
                    +' || CRDESD || '+chr(39)+' Dt.Emis.: '+chr(39)+' || TO_CHAR(CRDTEMIS, '+chr(39)+fdt2+chr(39)+') AS CODIGO'

                    +' from OLD_CADDAR ');
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

   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' CRDTALT>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      comp2:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' CRDTALT<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      comp2:=' and ';
      end;
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
   comp2:=' where ';
   Qr_Evento.SQL.Add('Select (PSTATUS-PSTATUS)+5 as CODTAB '
                    +', PSTATUS AS STATUS '
                    +', PDTALT  AS DATA '
                    +', PHRALT  AS HORA '
                    +', PCODUSR AS CODUSR '
                    +', PCODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'UF: '+chr(39)
                    +'|| PUF || '+chr(39)+'Nome: '+chr(39)
                    +' || PNOM  AS CODIGO'

                    +' from OLD_CADUF ');
   if Trim(MCODUSR.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' PCODUSR=0'+Trim(MCODUSR.Text));
      comp2:=' and ';
      end;
   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' PDTALT>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      comp2:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' PDTALT<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      comp2:=' and ';
      end;
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
   comp2:=' where ';
   Qr_Evento.SQL.Add('Select (STATUS-STATUS)+6 as CODTAB '
                    +', TIPEVE AS STATUS '
                    +', DATHOR_ALTEXC  AS DATA '
                    +', HRALT  AS HORA '
                    +', CODUSR_ALTEXC AS CODUSR '
                    +', CODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Chave: '+chr(39)
                    +'|| TO_CHAR(CODLDR) || '+chr(39)+' Bco: '+chr(39)
                    +' || TO_CHAR(CODBCO) || '+chr(39)+' Dt.Prev.: '+chr(39)+' || TO_CHAR(DATADP, '+chr(39)+fdt2+chr(39)+') '
                    +' || '+chr(39)+' Valor: '+chr(39)+' || TO_CHAR(VALORP) '
                    +' AS CODIGO'
                    +' from OLD_CADLDR ');
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

   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' DATHOR_ALTEXC>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      comp2:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' DATHOR_ALTEXC<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      comp2:=' and ';
      end;
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
   comp2:=' where ';
   Qr_Evento.SQL.Add('Select (FSTATUS-FSTATUS)+7 as CODTAB '
                    +', FSTATUS AS STATUS '
                    +', FDATHOR_ALT  AS DATA '
                    +', TO_CHAR(FDATHOR_ALT,'+char(39)+'HH:MM:SS'+char(39)+') AS HORA '
                    +', FCODUSR_ALT AS CODUSR '
                    +', FCODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Codigo: '+chr(39)
                    +'|| TO_CHAR(FCODFOR) || '+chr(39)+' Razao: '+chr(39)
                    +' || FRAZAO || '+chr(39)+' Fantasia: '+chr(39)+' || FDENOM AS CODIGO'
                    +' from OLD_CADFOR ');
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

   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' FDTALT>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      comp2:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' FDTALT<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      comp2:=' and ';
      end;
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
   comp2:=' where ';
   Qr_Evento.SQL.Add('Select (NESTATUS-NESTATUS)+8 as CODTAB '
                    +', NESTATUS AS STATUS '
                    +', NEDTALT  AS DATA '
                    +', NEHRALT  AS HORA '
                    +', NECODUSR AS CODUSR '
                    +', NECODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Numero: '+chr(39)
                    +'|| TO_CHAR(NENUMERO) || '+chr(39)+' Cod.For: '+chr(39)
                    +' || TO_CHAR(NECODFOR) || '+chr(39)+' Data NF.: '+chr(39)+' || TO_CHAR(NEDTEMIS, '+chr(39)+fdt2+chr(39)+') AS CODIGO'
                    +' from OLD_CADNE ');
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

   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' NEDTALT>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      comp2:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' NEDTALT<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      comp2:=' and ';
      end;
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
   comp2:=' where ';
   Qr_Evento.SQL.Add('Select (NSSTATUS-NSSTATUS)+9 as CODTAB '
                    +', NSSTATUS AS STATUS '
                    +', NSDTALT  AS DATA '
                    +', NSHRALT  AS HORA '
                    +', NSCODUSR AS CODUSR '
                    +', NSCODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Numero: '+chr(39)
                    +'|| TO_CHAR(NSNUMERO) || '+chr(39)+' Cod.Cliente: '+chr(39)
                    +' || TO_CHAR(NSCODCLI) || '+chr(39)+' Dt.Emis.: '+chr(39)+' || TO_CHAR(NSDTEMIS, '+chr(39)+fdt2+chr(39)+') AS CODIGO'

                    +' from OLD_CADNS ');
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
   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' NSDTALT>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      comp2:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' NSDTALT<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      comp2:=' and ';
      end;
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
   comp2:=' where ';
   Qr_Evento.SQL.Add('Select (OS1STATUS-OS1STATUS)+10 as CODTAB '
                    +', OS1STATUS  AS STATUS '
                    +', OS1DATALT  AS DATA '
                    +', OS1HORAENT AS HORA '
                    +', OS1CODUSR  AS CODUSR '
                    +', OS1CODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Numero: '+chr(39)
                    +'|| TO_CHAR(OS1CHAVE) || '+chr(39)+' Dt.Dep.: '+chr(39)+' || TO_CHAR(OS1DATA, '+chr(39)+fdt2+chr(39)+') AS CODIGO'

                    +' from OLD_CADOS01 ');
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

   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' OS1DATALT>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      comp2:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' OS1DATALT<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      comp2:=' and ';
      end;
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
   comp2:=' where ';
   Qr_Evento.SQL.Add('Select (PSTATUS-PSTATUS)+11 as CODTAB '
                    +', PSTATUS AS STATUS '
                    +', PDTALT  AS DATA '
                    +', PHRALT  AS HORA '
                    +', PCODUSR AS CODUSR '
                    +', PCODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Chave: '+chr(39)
                    +'|| TO_CHAR(PCODSEQ)  AS CODIGO'

                    +' from OLD_CADPAR ');
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

   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' PDTALT>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      comp2:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' PDTALT<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      comp2:=' and ';
      end;
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
   comp2:=' where ';
   Qr_Evento.SQL.Add('Select (P1STATUS-P1STATUS)+12 as CODTAB '
                    +', P1STATUS AS STATUS '
                    +', P1DTMOD  AS DATA '
                    +', P1HRMOD  AS HORA '
                    +', P1USRMOD AS CODUSR '
                    +', P1CODNOV AS CODNOV '
                    +', P1CHAVE AS CHAVE '
                    +', P1MOTIVO AS Motivo '
                    +', '+chr(39)+'Chave: '+chr(39)
                    +'|| TO_CHAR(P1CHAVE) || '+chr(39)+' Cod.Cli: '+chr(39)
                    +' || TO_CHAR(P1CODCLI) || '+chr(39)+' Data.: '+chr(39)+' || TO_CHAR(P1DATAP, '+chr(39)+fdt2+chr(39)+') AS CODIGO'
                    +' from OLD_CADP01 ');
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

   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' P1DTMOD>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      comp2:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' P1DTMOD<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      comp2:=' and ';
      end;
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
   comp2:=' where ';
   Qr_Evento.SQL.Add('Select (PF1STATUS-PF1STATUS)+13 as CODTAB '
                    +', PF1STATUS AS STATUS '
                    +', PF1DTMOD  AS DATA '
                    +', PF1HRMOD  AS HORA '
                    +', PF1USRMOD AS CODUSR '
                    +', PF1CODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Chave: '+chr(39)
                    +'|| TO_CHAR(PF1CHAVE) || '+chr(39)+' Cod.For: '+chr(39)
                    +' || TO_CHAR(PF1CODFOR) || '+chr(39)+' Data.: '+chr(39)+' || TO_CHAR(PF1DATA, '+chr(39)+fdt2+chr(39)+') AS CODIGO'

                    +' from OLD_CADPF1 ');
   if Trim(MCODUSR.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' PF1USRMOD=0'+Trim(MCODUSR.Text));
      comp2:=' and ';
      end;
   if Trim(CODIGO.Text)<>'' then
      begin
      Qr_Evento.SQL.add(comp2+' PF1CHAVE=0'+Trim(CODIGO.Text));
      comp2:=' and ';
      end;

   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' PF1DTMOD>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      comp2:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' PF1DTMOD<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      comp2:=' and ';
      end;
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
   comp:=' union ';
   end;
if (NOMTAB.ItemIndex=0) or (NOMTAB.ItemIndex=14) then
   begin
   if Trim(comp)<>'' then
      Qr_Evento.SQL.Add(comp);
   comp2:=' where ';
   Qr_Evento.SQL.Add('Select (PVSTATUS-PVSTATUS)+14 as CODTAB '
                    +', PVSTATUS AS STATUS '
                    +', PVDTALT  AS DATA '
                    +', PVHRALT  AS HORA '
                    +', PVCODUSR AS CODUSR '
                    +', PVCODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Codigo: '+chr(39)
                    +'|| PVCODTIP || '+chr(39)+'/'+chr(39)
                    +' || TO_CHAR(PVCODPV) || '+chr(39)+' Nome: '+chr(39)+' || PVNOME AS CODIGO'
                    +' from OLD_CADPV ');
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

   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' PVDTALT>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      comp2:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' PVDTALT<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      comp2:=' and ';
      end;
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
   comp2:=' where ';
   Qr_Evento.SQL.Add('Select (PDSTATUS-PDSTATUS)+15 as CODTAB '
                    +', PDSTATUS AS STATUS '
                    +', PDDTALT  AS DATA '
                    +', PDHRALT  AS HORA '
                    +', PDCODUSR AS CODUSR '
                    +', PDCODNOV AS CODNOV '
                    +', PDCODPRO AS CHAVE '
                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Codigo: '+chr(39)
                    +'|| TO_CHAR(PDCODPRO) || '+chr(39)+' Nome: '+chr(39)
                    +' || PDNOME  AS CODIGO'
                    +' from OLD_CADPRO ');
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


   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' PDDTALT>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      comp2:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' PDDTALT<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      comp2:=' and ';
      end;
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
   comp2:=' where ';
   Qr_Evento.SQL.Add('Select (R1_STATUS-R1_STATUS)+16 as CODTAB '
                    +', R1_STATUS AS STATUS '
                    +', R1_DTMOD  AS DATA '
                    +', R1_HRMOD  AS HORA '
                    +', R1_USRMOD AS CODUSR '
                    +', R1_CODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Chave: '+chr(39)
                    +'|| TO_CHAR(R1_CHAVE) || '+chr(39)+' Codigo: '+chr(39)
                    +' || TO_CHAR(R1_CODIGO) || '+chr(39)+' Data.: '+chr(39)+' || TO_CHAR(R1_DATA, '+chr(39)+fdt2+chr(39)+') AS CODIGO'

                    +' from OLD_CADRM1 ');
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

   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' R1_DTMOD>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      comp2:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' R1_DTMOD<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      comp2:=' and ';
      end;
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
   comp2:=' where ';
   Qr_Evento.SQL.Add('Select (VEVE_STATUS-VEVE_STATUS)+17 as CODTAB '
                    +', VEVE_STATUS AS STATUS '
                    +', VDATHOR   AS DATA '
                    +', TO_CHAR(VDATHOR, '+chr(39)+'HH24:MI:SS'+chr(39)+')  AS HORA '
                    +', VEVE_CODUSR AS CODUSR '
                    +', VCODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Cod.Vendedor: '+chr(39)
                    +'|| TO_CHAR(VCODVEN) || '+chr(39)+' Nome: '+chr(39)
                    +' || VNOME || '+chr(39)+' Data.: '+chr(39)+' || TO_CHAR(VDATHOR, '+chr(39)+fdt2+chr(39)+') AS CODIGO'
                    +' from OLD_CADVEN ');
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

   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' VDATHOR>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      comp2:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' VDATHOR<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      comp2:=' and ';
      end;
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
   comp2:=' where ';
   Qr_Evento.SQL.Add('Select (FPCODEMP-FPCODEMP)+18 as CODTAB '
                    +', FPTIPEVE AS STATUS '
                    +', FPDATHOR_ALTEXC AS DATA '
                    +', TO_CHAR(FPDATHOR_ALTEXC, '+chr(39)+'HH24:MI:SS'+chr(39)+')  AS HORA '
                    +', FPCODUSR_ALTEXC AS CODUSR '
                    +', FPCODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Lote: '+chr(39)
                    +'|| TO_CHAR(FPLOTE) || '+chr(39)+' Dup.A Pagar: '+chr(39)
                    +' || TO_CHAR(FPNUMERO) || '
                    +chr(39)+'/'+chr(39)+' || FPDESD || '
                    +chr(39)+' Dt.Emis.: '+chr(39)+' || TO_CHAR(FPDTEMIS, '+chr(39)+fdt2+chr(39)+') AS CODIGO'
                    +' from OLD_FPCPDUP ');

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

   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' FPDATHOR_ALTEXC>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      comp2:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' FPDATHOR_ALTEXC<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      comp2:=' and ';
      end;
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
   comp2:=' where ';
   Qr_Evento.SQL.Add('Select (FPCODEMP-FPCODEMP)+19 as CODTAB '
                    +', FPTIPEVE AS STATUS '
                    +', FPDATHOR_ALTEXC AS DATA '
                    +', TO_CHAR(FPDATHOR_ALTEXC, '+chr(39)+'HH24:MI:SS'+chr(39)+')  AS HORA '
                    +', FPCODUSR_ALTEXC AS CODUSR '
                    +', FPCODNOV AS CODNOV '
                    +', 0 AS CHAVE '
                    +', FPMOTIVO AS Motivo '
                    +', '+chr(39)+'Lote: '+chr(39)
                    +'|| TO_CHAR(FPLOTE) || '+chr(39)+' Dup.Receber: '+chr(39)
                    +' || TO_CHAR(FPNUMERO) || '
                    +chr(39)+'/'+chr(39)+' || FPDESD || '
                    +chr(39)+' Dt.Emis.: '+chr(39)+' || TO_CHAR(FPDTEMIS, '+chr(39)+fdt2+chr(39)+') AS CODIGO'
                    +' from OLD_FPCRDUP ');

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


   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' FPDATHOR_ALTEXC>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      comp2:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' FPDATHOR_ALTEXC<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      comp2:=' and ';
      end;
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
   comp2:=' where ';
   Qr_Evento.SQL.Add('Select (USR_TIPEVE-USR_TIPEVE)+20 as CODTAB '
                    +', USR_TIPEVE AS STATUS '
                    +', DATHOR_EVE  AS DATA '
                    +', TO_CHAR(DATHOR_EVE, '+chr(39)+'HH24:MI:SS'+chr(39)+')  AS HORA '
                    +', CODUSR_EVE AS CODUSR '
                    +', USR_CODEVE AS CODNOV '
                    +', 0 AS CHAVE '
                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Codigo: '+chr(39)
                    +'|| TO_CHAR(CODUSR) || '+chr(39)+' Nome: '+chr(39)
                    +' || NOMUSR AS CODIGO'

                    +' from OLD_CADUSR ');
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

   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' DATHOR_EVE>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      comp2:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' DATHOR_EVE<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      comp2:=' and ';
      end;
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
   comp2:=' where ';
   Qr_Evento.SQL.Add('Select (LC1_TIPEVE-LC1_TIPEVE)+21 as CODTAB '
                    +', LC1_TIPEVE AS STATUS '
                    +', LC1_DATHOR_EVE  AS DATA '
                    +', TO_CHAR(LC1_DATHOR_EVE ,'+chr(39)+'HH24:MI'+chr(39)+') AS  HORA '
                    +', LC1_CODUSR_EVE AS CODUSR '
                    +', LC1_CODNOV AS CODNOV '
                    +', 0 AS CHAVE '                    
                    +', '+chr(39)+' '+chr(39)+' AS Motivo '
                    +', '+chr(39)+'Chave: '+chr(39)
                    +'|| TO_CHAR(LC1_CHAVE) || '+chr(39)+' Cod.Cliente: '+chr(39)
                    +' || TO_CHAR(LC1_CODCLI) || '+chr(39)+' Data.: '+chr(39)+' || TO_CHAR( LC1_DTEMIS, '+chr(39)+fdt2+chr(39)+') AS CODIGO'

                    +' from OLD_CADLC1 ');
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

   if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' LC1_DATHOR_EVE>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      comp2:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_Evento.Sql.add(comp2+' LC1_DATHOR_EVE<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      comp2:=' and ';
      end;
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

try
   Qr_Evento.Open;
except
   Qr_Evento.Sql.SaveToFile('c:\SQL.TXT');
   end;

end;

procedure TFrm_Evento.NOMTABExit(Sender: TObject);
begin
NOMTAB.Text:=NOMTAB.items.Strings[NOMTAB.itemindex];
if (NOMTAB.itemindex=12) or (NOMTAB.itemindex=6) or (NOMTAB.itemindex=19) or (NOMTAB.itemindex=21) then
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

end;

procedure TFrm_Evento.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Evento.BitBtn2Click(Sender: TObject);
var
minstant: String;
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
   end;
if Qr_EventoCODTAB.Value=13 then
   begin
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
         testeform := TFrm_Evento(FindGlobalComponent('form_pro_Farma'));
         if (testeform=nil)  then
             Application.CreateForm(Tfrm_Pro_farma, form_Pro_Farma);
         form_Pro_Farma.proNov_ori:='consulta';

         form_Pro_Farma.FormStyle:=fsNormal;
         form_Pro_Farma.Visible:=False;
         form_Pro_Farma.CAMPO.ItemIndex:=0;
         form_Pro_Farma.Edit1.Text:=Qr_EventoChave.AsString;
         form_Pro_Farma.ToolBar1.Enabled:=False;
         form_Pro_Farma.ShowModal;
         FreeAndNil(form_pro_Farma);
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

procedure TFrm_Evento.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      FMensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_Evento.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      FMensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_Evento.bbImprimirClick(Sender: TObject);
begin
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
   DM1.Query1.sql.SaveToFile('C:\SQLCHQ.TXT');
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
   DM1.Query1.sql.SaveToFile('C:\SQLCHQ.TXT');
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
   DM1.Query1.sql.SaveToFile('C:\SQLCHQ.TXT');
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
   DM1.Query1.sql.SaveToFile('C:\SQLCHQ.TXT');
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
   DM1.Query1.sql.SaveToFile('C:\SQLCHQ.TXT');
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
   DM1.Query1.sql.SaveToFile('C:\SQLCHQ.TXT');
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
lbl_numnf.Visible:=false;
edt_numnf.Visible:=false;
lbl_nome.Visible :=false;
edt_nome.Visible :=false;

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

end.

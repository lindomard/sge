unit S_RestLDR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, Grids, DBGrids,S_DM1, DB,
  DBTables,func;

type
  TFrm_RestLDR = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    MDT2: TMaskEdit;
    Label3: TLabel;
    MDT1: TMaskEdit;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    bbSelecionar: TBitBtn;
    bbRestaurar: TBitBtn;
    bbSair: TBitBtn;
    Qr_Dar: TQuery;
    Qr_DarCRNUMERO: TFloatField;
    Qr_DarCRDESD: TStringField;
    Qr_DarCRCODCLI: TFloatField;
    Qr_DarCRDTEMIS: TDateTimeField;
    Qr_DarCRDTVCTO: TDateTimeField;
    Qr_DarCRDTPAG: TDateTimeField;
    Qr_DarCRDTBX: TDateTimeField;
    Qr_DarCRNPED: TFloatField;
    Qr_DarCRORDEM: TFloatField;
    Qr_DarCRVALPAG: TFloatField;
    Qr_DarCRCODLDR: TFloatField;
    Qr_DarCRVALOR: TFloatField;
    Src_Dar: TDataSource;
    Qr_DarCRCODEMP: TFloatField;
    procedure bbSairClick(Sender: TObject);
    procedure bbSelecionarClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbRestaurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RestLDR: TFrm_RestLDR;

implementation

uses lerarq, S_DM4, func_excecoes, S_Agde;

{$R *.dfm}

procedure TFrm_RestLDR.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RestLDR.bbSelecionarClick(Sender: TObject);
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      MessageDlg('Data Inicial maior que Final, Invalido!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

fInnerJoin(0,'CADLDR','CODEMP','CRCODEMP','CODLDR','CRCODLDR');


Qr_Dar.Close;
Qr_Dar.SQL.Clear;
Qr_Dar.SQL.Add('Select CRCODEMP,CRNUMERO,CRDESD,CRCODCLI,CRDTEMIS,CRDTVCTO,CRDTPAG, '
              +'       CRDTBX,CRNPED,CRORDEM,CRVALOR,CRVALPAG,CRCODLDR '
              +'       FROM CADDAR'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where CRCODLDR>0 AND CRNPED>0 AND '
              +'      '+        iif(la_instrucao='','',' and ')+la_instrucao
              +' AND CODLDR is null ');
if Trim(MDT1.Text)<>'/  /' then
   Qr_Dar.SQL.Add(' and CRDTBX>='+chr(39)+FormatDateTime(fdt2, StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Dar.SQL.Add(' and CRDTBX<='+chr(39)+FormatDateTime(fdt2, StrtoDate(MDT2.Text))+chr(39));
Qr_Dar.Open;

end;

procedure TFrm_RestLDR.MDT1Exit(Sender: TObject);
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

procedure TFrm_RestLDR.MDT2Exit(Sender: TObject);
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

procedure TFrm_RestLDR.bbRestaurarClick(Sender: TObject);
var
mdup     : String;

begin
if not Qr_Dar.Active then
   begin
   MessageDlg('Favor Selecionar os Registros',mtWarning,[mbOk],0);
   exit;
   end;
if Qr_Dar.RecordCount<1 then
   begin
   MessageDlg('Não Ha Registros a Serem Restaurados!',mtWarning,[mbOk],0);
   exit;
   end;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Restaurando Lançamentos do Caixa, aguarde...';
Frm_Agde.gb_progres.Visible:=True;
mplid:=0;
mpqtd:=Qr_Dar.RecordCount;
Frm_Agde.Show;
Qr_DAr.First;
While not Qr_Dar.Eof do
   begin
   mplid:=mplid+1;
   Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
   verteclado(0);
   FLCADCLI(1,0,Qr_DarCRCODCLI.AsString);
   mdesc_mov:=pldr_descmov;
   mcodccu  :=pldr_codccu;
   mcoddep  :=pldr_coddep;
   mnatdc   :=pldr_natdc;
   mnomccu  :=pldr_nomccu;
   mnomdep  :=pldr_nomdep;
   fTestarParCaixaCliDar(DM1.Tb_Dar,1,0,'CADDAR0');

   if DM1.Tb_PargerPCRDOC.Value=1 then
      mdup:=FormatFloat('000000',DM1.Tb_DarCRNPED.Value)
   else
      mdup:=FormatFloat('000000',DM1.Tb_DarCRNUMERO.Value);

   DM4.Qr_IncLDR.Close;
   DM4.Qr_IncLDR.ParambyName('CODEMP').AsFloat     := Qr_DarCRCODEMP.Value;
   DM4.Qr_IncLDR.ParambyName('DATADP').AsDateTime  := Qr_DarCRDTVCTO.Value;
   
   DM4.Qr_IncLDR.ParambyName('FC_COMPETENCIA_DTINICIO').AsDateTime  := Qr_DarCRDTEMIS.AsDateTime;
   DM4.Qr_IncLDR.ParambyName('FC_COMPETENCIA_TIPO').asinteger          :=0;

   DM4.Qr_IncLDR.ParambyName('CODLDR').AsFloat     := Qr_DarCRCODLDR.Value;
   DM4.Qr_IncLDR.ParambyName('DATAREAL').AsDateTime:= Qr_DarCRDTPAG.Value;
   DM4.Qr_IncLDR.ParambyName('DATAREF').AsDateTime := Qr_DarCRDTEMIS.Value;
   DM4.Qr_IncLDR.ParambyName('VALORP').AsFloat     := Qr_DarCRVALPAG.Value;
   DM4.Qr_IncLDR.ParambyName('VALORR').AsFloat     := Qr_DarCRVALPAG.Value;
   DM4.Qr_IncLDR.ParambyName('CODBCO').AsFloat     := codcai;

   DM4.Qr_IncLDR.ParambyName('CODCC').AsString     := mcodccu;
   DM4.Qr_IncLDR.ParambyName('CODDEP').AsString    := mcoddep;
   DM4.Qr_IncLDR.ParambyName('NATDC').AsString     := mnatdc;
   DM4.Qr_IncLDR.ParambyName('DESCMV').AsString    := mdesc_mov;

   DM4.Qr_IncLDR.ParambyName('NUMDOC').AsString    := DM1.Tb_PargerPCRDOCSIG.Value+mdup;
   DM4.Qr_IncLDR.ParambyName('NUMDOC2').AsString   := 'Dinheiro';
   DM4.Qr_IncLDR.ParambyName('STATUS').AsFloat     := 0;
   DM4.Qr_IncLDR.ParambyName('ORIGEM').AsFloat     := 03;
   DM4.Qr_IncLDR.ParambyName('LOCDEP').AsFloat     := 03;
   DM4.Qr_IncLDR.ParambyName('TIPO').AsString      := 'CL';
   DM4.Qr_IncLDR.ParambyName('CODIGO').AsFloat     := Qr_DarCRCODCLI.Value;
   DM4.Qr_IncLDR.ParambyName('USRALT').AsFloat     := 0;
   DM4.Qr_IncLDR.ParambyName('DTALT').AsDateTime      := pdatanula;
   DM4.Qr_IncLDR.ParambyName('HRALT').AsString     := ' ';
   DM4.Qr_IncLDR.ParambyName('COMPENS').AsFloat    := 1;
   DM4.Qr_IncLDR.ParambyName('DTCOMP').AsDateTime  := pdatasis;
   DM4.Qr_IncLDR.ParambyName('USREXC').AsFloat     := 0;
   DM4.Qr_IncLDR.ParambyName('DTHREXC').AsDateTime := pdatanula;
   DM4.Qr_IncLDR.ParambyName('NOMDEP').AsString    := mnomdep;
   DM4.Qr_IncLDR.ParambyName('NOMBCO').AsString    := pldr_nombco;
   DM4.Qr_IncLDR.ParambyName('NOMCCU').AsString    := mnomccu;
   DM4.Qr_IncLDR.ParambyName('NOME').AsString      := DM1.Tb_CliCRAZAO.Value;
   DM4.Qr_IncLDR.ParambyName('FC_OBSFIN').AsString := ' ';
   DM4.Qr_IncLDR.ParambyName('LOTSEQ').AsFloat     := ls_codldr;
   DM4.Qr_IncLDR.ParambyName('DATLAN').AsDateTime  := pdatasis;
   DM4.Qr_IncLDR.ParambyName('LOTMOV').AsFloat     := lotmov;
   DM4.Qr_IncLDR.ParambyName('LEMAT').AsFloat      := 0;
   DM4.Qr_IncLDR.ParambyName('CODUSR_CX').AsFloat   := codusr;



   Try
      DM4.Qr_IncLDR.ExecSQL;
      fdm1StartCommit;

   except ON E: Exception do
      begin
      ex_erroSql_Novo(DM4.Qr_IncLDR,223,'_stru '+e.message,'user');
      end;
      end;
   Qr_Dar.Next;
   end;
Frm_Agde.gb_progres.Visible:=False;
Frm_Agde.Label1.Caption:='Concluido!';
Qr_Dar.Close;
verteclado(0);
end;

procedure TFrm_RestLDR.FormCreate(Sender: TObject);
begin
fCarregaDadosCaixa('CADDAR0');

end;

procedure TFrm_RestLDR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.

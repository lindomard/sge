unit S_CrPosCar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls,lerarq,func, Buttons, ExtCtrls, DB, DBTables,
  Mask, S_Impres, S_SelEmp;

type
  TFrm_CrPosCar = class(TForm)
    PageControl1: TPageControl;
    tsFiltros: TTabSheet;
    tsOutros: TTabSheet;
    CB_SEPAR: TComboBox;
    Label2: TLabel;
    Label25: TLabel;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    Label26: TLabel;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    Label22: TLabel;
    CODBCO: TEdit;
    lbx_codbco: TListBox;
    OMITIR_BCO: TCheckBox;
    Label1: TLabel;
    CODRED: TEdit;
    lbx_codred: TListBox;
    OMITIR_RED: TCheckBox;
    Label23: TLabel;
    CODCV: TEdit;
    lbx_codcv: TListBox;
    OMITIR_CV: TCheckBox;
    Label4: TLabel;
    CODLOC: TEdit;
    lbx_codloc: TListBox;
    OMITIR_LOC: TCheckBox;
    Label24: TLabel;
    CODTEL: TEdit;
    lbx_codtel: TListBox;
    OMITIR_TEL: TCheckBox;
    Label27: TLabel;
    CODSUP: TEdit;
    lbx_codsup: TListBox;
    OMITIR_SUP: TCheckBox;
    Panel1: TPanel;
    bbSair: TBitBtn;
    bbImprimir: TBitBtn;
    Qr_PosCar: TQuery;
    Qr_PosCarNOMGRU: TStringField;
    Qr_PosCarTOTVENC: TFloatField;
    Qr_PosCarTOTAVENC: TFloatField;
    Qr_PosCarTOTPAG: TFloatField;
    Qr_PosCarMAIORATRASO: TFloatField;
    Label3: TLabel;
    MDT1: TMaskEdit;
    Label5: TLabel;
    MDT2: TMaskEdit;
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure CODREDKeyPress(Sender: TObject; var Key: Char);
    procedure CODCVKeyPress(Sender: TObject; var Key: Char);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure CODTELKeyPress(Sender: TObject; var Key: Char);
    procedure CODSUPKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODBCOExit(Sender: TObject);
    procedure CODREDExit(Sender: TObject);
    procedure CODCVExit(Sender: TObject);
    procedure CODLOCExit(Sender: TObject);
    procedure CODTELExit(Sender: TObject);
    procedure CODSUPExit(Sender: TObject);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codredKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codcvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codtelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codsupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_crposcar: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_CrPosCar: TFrm_CrPosCar;

implementation

uses S_Red, S_DM1, S_Con;

{$R *.dfm}

procedure TFrm_CrPosCar.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_DestPro',key);
   key:=#0;
   CODCLIExit(Self);
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_CrPosCar.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_RCRec',Key);
   CODVENExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_CrPosCar.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_RCRac',Key);
   CODBCOExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_CrPosCar.CODREDKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRED.Text:=fChamaRedCli(0,'frm_cabc',key);
   CODREDExit(self);
   key:=#0;
   end;



end;

procedure TFrm_CrPosCar.CODCVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   if Frm_Con=nil then
      Application.CreateForm(TFrm_Con, Frm_Con)
   else
      begin
      Frm_Con.Free;
      Frm_Con:=nil;
      Application.CreateForm(TFrm_Con, Frm_Con);
      end;
   Frm_Con.Edit1.Text:=key;
   Frm_Con.BBnAtu.Click;
   Frm_Con.Edit1.SelStart:=1;
   Frm_Con.Edit1.SelLength:=1;
   Frm_Con.PC1.ActivePageIndex:=1;
   con_ori:='Frm_RCrec';
   if Frm_Con.ShowModal=MrOk then
      begin
      CODCV.Text:=DM1.Tb_CVCVCODCV.AsString;
      CODCVExit(Self);
      end;
   Frm_Con.Free;
   Frm_Con:=nil;
   key:=#0;
   end;


end;

procedure TFrm_CrPosCar.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_RCRec',Key);
   CODLOCExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_CrPosCar.CODTELKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTEL.Text:=fChamaUsr(0,'frm_RCRec',Key);
   CODTELExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_CrPosCar.CODSUPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODSUP.Text:=fChamaSup(0,'frm_RCRec',Key);
   CODSUPExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_CrPosCar.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Trim(CODCLI.Text)) then
      begin
      fmensagem('Cliente não cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
      exit;
      end
   else
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODCLI.text := '';
      CODCLI.SetFocus;
      end;
   end;

end;

procedure TFrm_CrPosCar.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if not flqr1('VNOME','V','CADVEN','N','VCODVEN',Trim(CODVEN.Text)) then
      begin
      fmensagem('Vendedor não cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      begin
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODVEN.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end;
   end;


end;

procedure TFrm_CrPosCar.CODBCOExit(Sender: TObject);
begin

CODBCO.Text:=fdeixanum2(CODBCO.Text);
if Trim(CODBCO.Text)<>'' then
   begin
   if not flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODBCO.Text) then
      begin
      fmensagem('Banco não cadastrada!',0,['0'],0);
      CODBCO.SetFocus;
      end
   else
      begin
      lbx_codbco.Items.Add(FormatFloat('0000000',StrToFloat(CODBCO.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODBCO.text := '';
      CODBCO.SetFocus;
      end;
   end;



end;

procedure TFrm_CrPosCar.CODREDExit(Sender: TObject);
begin
CODRED.Text:=fdeixanum2(CODRED.Text);
if Trim(CODRED.Text)<>'' then
   begin
   if not flqr1('RDNOME','RD','CADRED','N','RDCODRED',CODRED.Text) then
      begin
      fmensagem('Rede não cadastrada!',0,['0'],0);
      CODRED.SetFocus;
      end
   else
      begin
      lbx_codred.Items.Add(FormatFloat('0000000',StrToFloat(CODRED.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODRED.text := '';
      CODRED.SetFocus;
      end;
   end;


end;

procedure TFrm_CrPosCar.CODCVExit(Sender: TObject);
begin
CODCV.Text:=fdeixanum2(CODCV.Text);

if Trim(CODCV.Text)<>'' then
   begin
   if not flqr1('CVRAZAO','CV','CADCV','N','CVCODCV',CODCV.Text) then
      begin
      fmensagem('Convênio não cadastrada!',0,['0'],0);
      CODCV.SetFocus;
      end
   else
      begin
      lbx_codcv.Items.Add(FormatFloat('0000000',StrToFloat(CODCV.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODCV.text := '';
      CODCV.SetFocus;
      end;
   end;


end;

procedure TFrm_CrPosCar.CODLOCExit(Sender: TObject);
begin

CODLOC.Text:=fdeixanum2(CODLOC.Text);
if Trim(CODLOC.Text)<>'' then
   begin
   if not flqr1('LNOME','L','CADLOC','N','LCODLOC',CODLOC.Text) then
      begin
      fmensagem('Localidade não cadastrada!',0,['0'],0);
      CODLOC.SetFocus;
      end
   else
      begin
      lbx_codloc.Items.Add(FormatFloat('0000000',StrToFloat(CODLOC.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODLOC.text := '';
      CODLOC.SetFocus;
      end;
   end;


end;

procedure TFrm_CrPosCar.CODTELExit(Sender: TObject);
begin
CODTEL.Text:=fdeixanum2(CODTEL.Text);
if Trim(CODTEL.Text)<>'' then
   begin
   if not flqr1('NOMUSR','','CADUSR','N','CODUSR',CODTEL.Text) then
      begin
      fmensagem('Televendas não cadastrado!',0,['0'],0);
      CODTEL.SetFocus;
      end
   else
      begin
      lbx_codtel.Items.Add(FormatFloat('0000000',StrToFloat(CODTEL.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODTEL.text := '';
      CODTEL.SetFocus;
      end;
   end;

end;

procedure TFrm_CrPosCar.CODSUPExit(Sender: TObject);
begin

CODSUP.Text:=fdeixanum2(CODSUP.Text);
if Trim(CODSUP.Text)<>'' then
   begin
   if not flqr1('SNOME','S','CADSUP','N','SCODSUP',CODSUP.Text) then
      begin
      fmensagem('Supervisor não Cadastrado cadastrado!',0,['0'],0);
      CODSUP.SetFocus;
      end
   else
      begin
      lbx_codsup.Items.Add(FormatFloat('0000000',StrToFloat(CODSUP.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODSUP.text := '';
      if CODSUP.Enabled then
         CODSUP.SetFocus;
      end;
   end;

end;

procedure TFrm_CrPosCar.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   begin
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);
   end;

end;

procedure TFrm_CrPosCar.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_CrPosCar.lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

procedure TFrm_CrPosCar.lbx_codredKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codred.ItemIndex>=0 then
      lbx_codred.Items.Delete(lbx_codred.ItemIndex);

end;

procedure TFrm_CrPosCar.lbx_codcvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codcv.ItemIndex>=0 then
      lbx_codcv.Items.Delete(lbx_codcv.ItemIndex);

end;

procedure TFrm_CrPosCar.lbx_codlocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);

end;

procedure TFrm_CrPosCar.lbx_codtelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codtel.ItemIndex>=0 then
      lbx_codtel.Items.Delete(lbx_codtel.ItemIndex);

end;

procedure TFrm_CrPosCar.lbx_codsupKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codsup.ItemIndex>=0 then
      lbx_codsup.Items.Delete(lbx_codsup.ItemIndex);

end;

procedure TFrm_CrPosCar.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CrPosCar.bbImprimirClick(Sender: TObject);
var
mCampoGrupo: String;
mUsaCadCli: Boolean;
mUsaCadBco: Boolean;
mUsaCadCv: Boolean;
mUsaCadRed: Boolean;
mUsaCadVen: Boolean;
mUsaCadSup: Boolean;
mUsaCadUsr: Boolean;

begin

mUsaCadCli:=false;
mUsaCadBco:=false;
mUsaCadCv :=false;
mUsaCadRed:=false;
mUsaCadVen:=false;
mUsaCadSup:=false;
mUsaCadUsr:=false;

if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      fmensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;


Qr_PosCar.Close;
Qr_PosCar.SQL.Clear;
Qr_PosCar.SQL.Add('select ');

if CB_SEPAR.ItemIndex=0 then // por ano
   begin
   Qr_PosCar.SQL.Add(' TO_CHAR(CRDTVCTO, '+chr(39)+'YYYY'+chr(39)+')');
   mCampoGrupo:='TO_CHAR(CRDTVCTO, '+chr(39)+'YYYY'+chr(39)+')';
   end
else if CB_SEPAR.ItemIndex=1 then //  Bairro
   begin
   Qr_PosCar.SQL.Add(' CBAIRRO ');
   mCampoGrupo:='CBAIRRO';
   mUsaCadCli:=true;
   end
else if CB_SEPAR.ItemIndex=2 then //  Banco
   begin
   Qr_PosCar.SQL.Add(' BCBANCO ||'+chr(39)+'-'+chr(39)+'||'+'TO_CHAR(CRCODBCO) ');
   mCampoGrupo:='BCBANCO,CRCODBCO';
   mUsaCadBco:=true;
   end
else if CB_SEPAR.ItemIndex=3 then //  Cidade
   begin
   Qr_PosCar.SQL.Add(' CCIDADE ||'+chr(39)+'-'+chr(39)+'||'+' CUF ');
   mCampoGrupo:='CCIDADE,CUF';
   mUsaCadCli:=true;
   end
else if CB_SEPAR.ItemIndex=4 then //  convenio
   begin
   Qr_PosCar.SQL.Add(' CRAZAO ||'+chr(39)+'-'+chr(39)+'||'+'TO_CHAR(CRCODCLI) ');
   mCampoGrupo:='CRAZAO,CRCODCLI';
   mUsaCadCli:=true;
   end
else if CB_SEPAR.ItemIndex=5 then //  convenio
   begin
   Qr_PosCar.SQL.Add(' CVRAZAO ||'+chr(39)+'-'+chr(39)+'||'+'TO_CHAR(CRCODCV) ');
   mCampoGrupo:='CVRAZAO,CRCODCV';
   mUsaCadCv:=true;
   end
else if CB_SEPAR.ItemIndex=6 then //  uf
   begin
   Qr_PosCar.SQL.Add(' CUF ');
   mCampoGrupo:='CUF';
   mUsaCadCli:=true;
   end
else if CB_SEPAR.ItemIndex=7 then // por ano
   begin
   Qr_PosCar.SQL.Add(' TO_CHAR(CRDTVCTO, '+chr(39)+'YYYY/MM'+chr(39)+')');
   mCampoGrupo:='TO_CHAR(CRDTVCTO, '+chr(39)+'YYYY/MM'+chr(39)+')';
   end
else if CB_SEPAR.ItemIndex=8 then //  REDE DE clientes
   begin
   Qr_PosCar.SQL.Add(' RDNOME ||'+chr(39)+'-'+chr(39)+'||'+'TO_CHAR(RDCODRED) ');
   mCampoGrupo:='RDNOME,RDCODRED';
   mUsaCadRed:=true;
   mUsaCadCli:=true;
   end
else if CB_SEPAR.ItemIndex=9 then //  Supervisor
   begin
   Qr_PosCar.SQL.Add(' SNOME ||'+chr(39)+'-'+chr(39)+'||'+'TO_CHAR(VCODSUP) ');
   mCampoGrupo:='SNOME,VCODSUP';
   mUsaCadVen:=true;
   mUsaCadSup:=true;
   end
else if CB_SEPAR.ItemIndex=10 then //  Televendas
   begin
   Qr_PosCar.SQL.Add(' NOMUSR ||'+chr(39)+'-'+chr(39)+'||'+'TO_CHAR(CRCODTLV) ');
   mCampoGrupo:='NOMUSR,CRCODTLV';
   mUsaCadUsr:=true;
   end
else if CB_SEPAR.ItemIndex=11 then //  Tipo de Pedido
   begin
   Qr_PosCar.SQL.Add(' TO_CHAR(CRCODORI) ');
   mCampoGrupo:='CRCODORI';
   end
else if CB_SEPAR.ItemIndex=12 then //  Vendedor
   begin
   Qr_PosCar.SQL.Add(' VNOME ||'+chr(39)+'-'+chr(39)+'||'+'TO_CHAR(CRCODVEN) ');
   mCampoGrupo:='VNOME,CRCODVEN';
   mUsaCadVen:=true;
   end;

Qr_PosCar.SQL.Add(' AS NOMGRU ');
Qr_PosCar.SQL.Add(',SUM( '
                 +'  CASE WHEN (CRDTVCTO <= SYSDATE) THEN (CRVALOR-(CRVALPAG-CRJUROS+CRDESC)) '
                 +'     ELSE 0 '
                 +'    END) TOTVENC ');
Qr_PosCar.SQL.Add(',SUM( '
                 +'  CASE WHEN (CRDTVCTO <= SYSDATE) THEN 0 '
                 +'     ELSE (CRVALOR-(CRVALPAG-CRJUROS+CRDESC)) '
                 +'    END) TOTAVENC ');
Qr_PosCar.SQL.Add(',SUM(CRVALPAG) AS TOTPAG ');
Qr_PosCar.SQL.Add(',DECODE(MIN(CRSTATUS),2,0, '
                 +'       MAX(TO_DATE(SYSDATE)-CRDTVCTO)) AS MAIORATRASO ');


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
if mUsaCadCli then
   begin
   if (pbanco=0) and (la_instrucao<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADCLI','CCODEMP','CRCODEMP','CCODCLI','CRCODCLI');
   end;

if mUsaCadBco then
   begin
   if (pbanco=0) and (la_instrucao<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADBCO','BCCODEMP','CRCODEMP','BCCODBCO','CRCODBCO');
   end;

if mUsaCadCv then
   begin
   if (pbanco=0) and (la_instrucao<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADCV','CVCODEMP','CRCODEMP','CVCODCV','CRCODCV');
   end;

if mUsaCadRed then
   begin
   if (pbanco=0) and (la_instrucao<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADRED','RDCODEMP','CCODEMP','RDCODRED','CCODRED');
   end;

if mUsaCadVen then
   begin
   if (pbanco=0) and (la_instrucao<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADVEN','VCODEMP','CRCODEMP','VCODVEN','CRCODVEN');
   end;


if mUsaCadSup then
   begin
   if (pbanco=0) and (la_instrucao<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADSUP','SCODEMP','VCODEMP','SCODSUP','VCODSUP');
   end;

if mUsaCadUsr then
   begin
   if (pbanco=0) and (la_instrucao<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADUSR','CODEMP','CRCODEMP','CODUSR','CRCODTLV');
   end;

Qr_PosCar.SQL.Add('  from CADDAR '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' CRSTATUS<9 ');




mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   Qr_PosCar.SQL.Add(' and CRCODCLI '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   Qr_PosCar.SQL.Add(' and CRCODVEN '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
   Qr_PosCar.SQL.Add(' and CRCODBCO '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
if trim(mcinst2)<>'' then
   Qr_PosCar.SQL.Add(' and CCODRED '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codcv,OMITIR_CV);
if trim(mcinst2)<>'' then
   Qr_PosCar.SQL.Add(' and CRCODCV '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   Qr_PosCar.SQL.Add(' and CCODLOC '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codtel,OMITIR_TEL);
if trim(mcinst2)<>'' then
   Qr_PosCar.SQL.Add(' and CRCODTLV '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
if trim(mcinst2)<>'' then
   Qr_PosCar.SQL.Add(' and VCODSUP '+mcinst2);




if trim(MDT1.Text)<>'/  /' then
   Qr_PosCar.SQL.Add(' and CRDTVCTO>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   Qr_PosCar.SQL.Add(' and CRDTVCTO<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));


IF mCampoGrupo<>'' then
   Qr_PosCar.SQL.Add(' Group by '+mCampoGrupo);
try
   Qr_PosCar.Open;
except
   Qr_PosCar.SQL.SaveToFile('c:\sql.txt');
   exit;
   end;
//Qr_PosCar.SQL.SaveToFile('c:\sql.txt');


testeform := TFrm_CrPosCar(FindGlobalComponent('form_impres_crposcar'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_crposcar);

form_impres_crposcar.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_crposcar.mlin:=0;
form_impres_crposcar.mpag:=0;
While not Qr_PosCar.Eof do
   begin
   if form_impres_crposcar.mlin=0 then
      begin
      form_impres_crposcar.fImprimirCabecalho(96,'Posicao da Carteira.'+fperiodo(0,MDT1.Text,MDT2.Text));
      form_impres_crposcar.mlin:=form_impres_crposcar.mlin+1;
      form_impres_crposcar.RDprint1.ImpF(form_impres_crposcar.mlin,01,'+----------------------------------------+--------------+--------------+--------------+--------+',m12ccp);

      form_impres_crposcar.mlin:=form_impres_crposcar.mlin+1;
      form_impres_crposcar.RDprint1.ImpF(form_impres_crposcar.mlin,01,'|Nome do Grupo                           |   A Vencer   |   Vencidas   | Total  Pagas |Maior At|',m12ccp);
      form_impres_crposcar.mlin:=form_impres_crposcar.mlin+1;
      form_impres_crposcar.RDprint1.ImpF(form_impres_crposcar.mlin,01,'+----------------------------------------+--------------+--------------+--------------+--------+',m12ccp);
      end;
   form_impres_crposcar.mlin:=form_impres_crposcar.mlin+1;
   form_impres_crposcar.RDprint1.ImpF(form_impres_crposcar.mlin,01,'|'
                          +insere2(Qr_PosCarNOMGRU.AsString,' ',40)
                          +'|'
                          +insere(FormatFloat(mcasas, Qr_PosCarTOTAVENC.Value),' ',14)+'|'
                          +insere(FormatFloat(mcasas, Qr_PosCarTOTVENC.Value),' ',14)+'|'
                          +insere(FormatFloat(mcasas, Qr_PosCarTOTPAG.Value),' ',14)+'|'
                          +insere(Qr_PosCarMAIORATRASO.AsString,' ',08)+'|',m12ccp);
   Qr_PosCar.Next;
   if Qr_PosCar.Eof then
      begin
      form_impres_crposcar.mlin:=form_impres_crposcar.mlin+1;
      form_impres_crposcar.RDprint1.ImpF(form_impres_crposcar.mlin,01,'+----------------------------------------+--------------+--------------+--------------+--------+',m12ccp);
      if form_impres_crposcar.RDprint1.Setup  then form_impres_crposcar.RDprint1.Fechar;
      form_impres_crposcar.free;
      form_impres_crposcar:=nil;
      end
   else if form_impres_crposcar.mlin>57 then
      begin
      form_impres_crposcar.mlin:=form_impres_crposcar.mlin+1;
      form_impres_crposcar.RDprint1.ImpF(form_impres_crposcar.mlin,01,'+----------------------------------------+--------------+--------------+--------------+--------+',m12ccp);
      form_impres_crposcar.mlin:=0;
      form_impres_crposcar.RDprint1.Novapagina;
      end;
   end;


{
|Nome do Grupo                           |   A Vencer   |   Vencidas   | Total  Pagas |Maior At|
+----------------------------------------+--------------+--------------+--------------+--------+
|1234567890123456789012345678901234567890|zzz.zzz.zzz.zz|zzz.zzz.zzz.zz|zzz.zzz.zzz.zz|   123  |


{

Ano
Bairro
Banco
Cidade
Cliente
Convenio
Estado
Mês
Rede de Clientes
Supervisor
Televendas
Tipo de Pedido
Vendedor
}
end;

procedure TFrm_CrPosCar.MDT1Exit(Sender: TObject);
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

procedure TFrm_CrPosCar.MDT2Exit(Sender: TObject);
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

procedure TFrm_CrPosCar.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

MDT1.Text:='01/'+FormatDatetime('mm/yyyy',fdatafinal(1,pdatasis-28));

end;

procedure TFrm_CrPosCar.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_CrPosCar.FormKeyDown(Sender: TObject; var Key: Word;
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

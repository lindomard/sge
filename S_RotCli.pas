unit S_RotCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,S_DM1,S_Cli,S_Ven,func,lerarq, DB, DBTables,
  QRCtrls, QuickRpt, ExtCtrls, jpeg, ComCtrls, RLReport, ExtDlgs;

type
  TFrm_RotCli = class(TForm)
    PageControl1: TPageControl;
    tsFiltros: TTabSheet;
    tsRelatorio: TTabSheet;
    Label5: TLabel;
    CODCLI: TEdit;
    OMITIR_CLI: TCheckBox;
    ListBox2: TListBox;
    Label1: TLabel;
    CODVEN: TEdit;
    ListBox1: TListBox;
    OMITIR_VEN: TCheckBox;
    Label3: TLabel;
    QTD: TEdit;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    TsLogoMarcas: TTabSheet;
    logolpreco: TImage;
    bbAdquirir: TBitBtn;
    bbExcImagem: TBitBtn;
    Label2: TLabel;
    CB_MODELO: TComboBox;
    RLReport1: TRLReport;
    RLDetailGrid1: TRLDetailGrid;
    RLImage1: TRLImage;
    rldb_razsoc: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel1: TRLLabel;
    RLDBText5: TRLDBText;
    opd1: TOpenPictureDialog;
    Src_Rot: TDataSource;
    Tb_Rot: TQuery;
    Tb_RotCODIGO: TFloatField;
    Tb_RotRAZAO: TStringField;
    Tb_RotFANTASIA: TStringField;
    Tb_RotENDERECO: TStringField;
    Tb_RotCIDADE: TStringField;
    Tb_RotUF: TStringField;
    Tb_RotCEP: TStringField;
    Tb_RotFONE: TStringField;
    Tb_RotETIQUETA: TFloatField;
    Tb_RotTOT_ETIQ: TFloatField;
    Tb_RotBAIRRO: TStringField;
    Tb_Rotcepcidadeuf: TStringField;
    Tb_Rotenderbairro: TStringField;
    RLDBText6: TRLDBText;
    Tb_RotCONTATO: TStringField;
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure QTDExit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ListBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_CLIMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODCLIMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODVENMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_VENMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LE_CODVEN;
    procedure LE_CODCLI;
    procedure bbAdquirirClick(Sender: TObject);
    procedure bbExcImagemClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Tb_RotCalcFields(DataSet: TDataSet);
    procedure CB_MODELOClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
      
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
    Frm_RotCli: TFrm_RotCli;
    reg            : INTEGER;
    percentual     : integer;
    percentual_ant : integer;
    contador       : integer;
    primeira       : Boolean;
    max_value      : integer;
    codigo_ven     : string;
    codigo_cli     : string;

implementation

uses Sr_RotCli, S_DM4;


{$R *.dfm}

procedure TFrm_RotCli.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_RotCli',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_RotCli.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'Frm_RotCli',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_RotCli.CODCLIExit(Sender: TObject);
begin
if ValFloat(CODCLI.Text)=0 then
   CODCLI.Text:='';
if Trim(CODCLI.Text)='' then
   codCLI.Text:='Todos...'
else
   begin
   flcadcli(1,0,CODCLI.Text);
   if DM1.Tb_Cli.Eof then
      begin
      MessageDlg('Cliente não Cadastrado!',mtWarning,[mbOk],0);
      CODCLI.SetFocus;
      end
   else
      ListBox2.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_CliCCODCLI.ASSTRING))
                                    +' - '+DM1.Tb_CliCRAZAO.Value);
      codcli.text := '';
   end;

end;

procedure TFrm_RotCli.CODVENExit(Sender: TObject);
begin
if Trim(CODVEN.Text)='' then
   CODVEN.Text:='Todos...'
else
   begin
   flcadven(1,0,CODVEN.Text);
   if DM1.Tb_Ven.Eof then
      begin
      fMensagem('Vendedor nao Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      ListBox1.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_VenVCODVEN.ASSTRING))
                                    +' - '+DM1.Tb_VenVNOME.Value);
      codven.text := '';
   end;

end;

procedure TFrm_RotCli.bbImprimirClick(Sender: TObject);
var
mcomp,mtabtemp: String;
mqtdcopia, mqtd: Integer;
begin
if ValFloat(QTD.Text)<1 then
   begin
   fMensagem('Quantidade Tem que ser maior que zero!',0,['0'],0);
   QTD.SetFocus;
   exit;
   end;
bbImprimir.Enabled := false;
mqtdcopia:=ValInt(QTD.Text);
mtabtemp:=fProcTemp(0);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
if pbanco=1 then
   begin
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' CODIGO DOUBLE PRECISION, '
                     +' RAZAO  VARCHAR(53), '
                     +' FANTASIA VARCHAR(53), '
                     +' ENDERECO VARCHAR(53), '
                     +' BAIRRO   VARCHAR(53), '
                     +' CIDADE   VARCHAR(53), '
                     +' UF       VARCHAR(02), '
                     +' CEP      VARCHAR(09), '
                     +' FONE     VARCHAR(20), '
                     +' ETIQUETA DOUBLE PRECISION, '
                     +' TOT_ETIQ DOUBLE PRECISION, '
                     +' CONTATO VARCHAR(40)) ');
   end
else
   begin
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' CODIGO NUMBER, '
                     +' RAZAO  VARCHAR2(60), '
                     +' FANTASIA VARCHAR2(60), '
                     +' ENDERECO VARCHAR2(100), '
                     +' BAIRRO   VARCHAR2(60), '
                     +' CIDADE   VARCHAR2(60), '
                     +' UF       VARCHAR2(02), '
                     +' CEP      VARCHAR2(09), '
                     +' FONE     VARCHAR2(20), '
                     +' ETIQUETA NUMBER, '
                     +' TOT_ETIQ NUMBER, '
                     +' CONTATO VARCHAR(60)) ');
   end;
DM1.Query1.execSql;

for mqtd:=1 to mqtdcopia do
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Insert into '+mtabtemp+' ('
                     +' CODIGO, '
                     +' RAZAO, '
                     +' FANTASIA, '
                     +' ENDERECO, '
                     +' BAIRRO, '
                     +' CIDADE, '
                     +' UF, '
                     +' CEP, '
                     +' FONE, '
                     +' ETIQUETA, '
                     +' TOT_ETIQ, '
                     +' CONTATO ) '
                     +' Select CCODCLI  as CODIGO,                        '
                     +'        CRAZAO   as RAZAO,                         '
                     +'        CDENOM   as FANTASIA,                      '
                     +'   CASE                                            '
                     +'     WHEN CNUM IS NULL                             '
                     +'       THEN CLOG||'+chr(39)+' '+chr(39)+'||CCOMPL  '
                     +'     WHEN CNUM IS NOT NULL                         '
                     +'       THEN CLOG||'+chr(39)+' Nº '+chr(39)+'||CNUM||'+chr(39)+' '+chr(39)+'||CCOMPL '
                     +'   END AS ENDERECO,                                '
                     +'        CBAIRRO  as BAIRRO,                        '
                     +'        CCIDADE  as CIDADE,                        '
                     +'        CUF      as UF,                            '
                     +'        CCEP     as CEP,                           '
                     +'        CFONERES as FONE,                          '
                     +IntToStr(mqtd)+'  as ETIQUETA,                      '
                     +intToStr(mqtdcopia)+' as TOT_ETIQ,                  '
                     +'       CNOMCON as CONTATO                          '
                     +' from CADCLI ');
   mcomp:=' where ';
   if not DM1.Qr_TID.Locate('TINOME','CADCLI',[]) then
      begin
      DM1.Query2.SQL.Add(mcomp+' CCODEMP=0'+IntToStr(codemp));
      mcomp:=' and ';
      end;

    IF ListBox1.Count > 0 THEN
       begin
       LE_CODVEN;
       IF OMITIR_VEN.Checked THEN
          DM1.Query2.SQL.Add(mcomp+' CCODVEN NOT  IN ('+CODIGO_VEN+')')
          ELSE DM1.Query2.SQL.Add(mcomp+' CCODVEN IN ('+CODIGO_VEN+')');
       END;

    IF ListBox2.Count > 0 THEN
       begin
       LE_CODCLI;
       IF OMITIR_CLI.Checked THEN
          DM1.Query2.SQL.Add(mcomp+' CCODCLI NOT  IN ('+CODIGO_CLI+')')
          ELSE DM1.Query2.SQL.Add(mcomp+' CCODCLI IN ('+CODIGO_CLI+')');
       END;

{
   if Trim(CODCLI.Text)<>'' then
      begin
      DM1.Query2.SQL.Add(mcomp+' CCODCLI=0'+Trim(CODCLI.Text));
      mcomp:=' and ';
      end;
   if Trim(CODVEN.Text)<>'' then
      begin
      DM1.Query2.SQL.Add(mcomp+' CCODVEN=0'+Trim(CODVEN.Text));
      mcomp:=' and ';
      end;
}
   try
     DM1.Query2.ExecSQL;
   except
     dm1.Query2.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
     end;
   end;
Application.CreateForm(TQr_RotCli, Qr_RotCli);
Tb_Rot.close;
Tb_Rot.sql.clear;
Tb_Rot.sql.add('Select * from '+mtabtemp
    +' order by RAZAO,TOT_ETIQ,ETIQUETA ');
Tb_Rot.Open;


//Qr_RotCli.DataSet:=Frm_RotCli.Tb_Rot;
verteclado(0);
if CB_MODELO.ItemIndex=0 then
   begin
   Qr_RotCli.PreviewModal;
   end
else
   begin
   if not (DM4.Tb_LogoSisLSLOGO.IsNull)  and  (DM4.Tb_LogoSisLSLOGO.Value<>'') then
      begin
      DM4.Tb_LogoSisLSLOGO.SaveToFile('C:\SGE\LPRECO02.JPG');
      RLImage1.Picture.LoadFromFile('C:\SGE\LPRECO02.JPG');
      end
   else
      RLImage1.Picture:=nil;
   RLReport1.PreviewModal;
   end;
Tb_Rot.Close;
Qr_RotCli.free;
Qr_RotCli:=nil;

if Trim(mtabtemp)<>'' then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Drop Table '+mtabtemp);
   DM1.Query1.ExecSQL;
   end;
bbImprimir.Enabled := true;
end;

procedure TFrm_RotCli.QTDExit(Sender: TObject);
begin
QTD.Text:=FloatToStr(fsonumero(QTD.Text));
end;

procedure TFrm_RotCli.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RotCli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_RotCli.ListBox2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if ListBox2.ItemIndex>=0 then
      ListBox2.Items.Delete(ListBox2.ItemIndex);

end;

procedure TFrm_RotCli.OMITIR_CLIMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_cli.Hint := 'Omitir Marcado - Todos Clientes'+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_RotCli.CODCLIMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codcli.Hint := 'Informe Codigo do Cliente ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_RotCli.CODVENMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codven.Hint := 'Informe Codigo do Vendedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_RotCli.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if ListBox1.ItemIndex>=0 then
      ListBox1.Items.Delete(ListBox1.ItemIndex);

end;

procedure TFrm_RotCli.OMITIR_VENMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_ven.Hint := 'Omitir Marcado - Todos Vendedores'+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_RotCli.LE_CODVEN;
VAR
 X : INTEGER;
begin

    CODIGO_VEN := '';
    IF ListBox1.Count > 0 THEN
    BEGIN
        for X := 0 to ListBox1.Count -1 do
        begin
            CODIGO_VEN :=  CODIGO_VEN+COPY(ListBox1.Items[X],1,7);
            IF X <> ListBox1.Count-1 THEN CODIGO_VEN := CODIGO_VEN+',';
        end;
    END;
end;

procedure TFrm_RotCli.LE_CODCLI;
VAR
 X : INTEGER;
begin

    CODIGO_CLI := '';
    IF ListBox2.Count > 0 THEN
    BEGIN
        for X := 0 to ListBox2.Count -1 do
        begin
            CODIGO_CLI :=  CODIGO_CLI+pega_codigo(ListBox2.Items[X],'-');
            IF X <> ListBox2.Count-1 THEN CODIGO_CLI := CODIGO_CLI+',';
        end;
    END;

end;

procedure TFrm_RotCli.bbAdquirirClick(Sender: TObject);
var
mTam: Integer;
begin

If Opd1.Execute then
   begin
   mtam:=length(Opd1.FileName);
   if UpperCase(copy(Opd1.FileName,mtam-3,4))<>'.JPG' then
      begin
      fmensagem('Nao é uma Figura Valida.',0,['0'],0);
      end
   else
      begin
      logolpreco.Picture.LoadFromFile(Opd1.FileName);

      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.Params.CreateParam(ftString,'CHAVE',ptinput);
      DM1.Query1.Params.CreateParam(ftString,'LOGO',ptinput);
      DM1.Query1.SQL.Add('Update CADLOGSIS set LSLOGO=:LOGO,LSCODEMP=:LSCODEMP');
      DM1.Query1.ParamByName('LOGO').LoadFromFile(opd1.FileName,ftBlob);
      DM1.Query1.SQL.Add(' where LSCHAVE=:CHAVE');
      DM1.Query1.ParamByName('CHAVE').AsString  :=DM4.Tb_LogoSisLSCHAVE.Value;
      DM1.Query1.ParamByName('LSCODEMP').AsFloat:=codemp;

      if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
         DM1.Query1.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                         +' or LSCODEMP is null )');


      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         fmensagem('Erro ao Atualizar o Logotipo!',0,['0'],0);
         end;
      DM4.Tb_LogoSis.Close;
      DM4.Tb_LogoSis.SQL.Clear;
      DM4.Tb_LogoSis.Sql.add('Select * from CADLOGSIS '
                       +' where LSCHAVE='+chr(39)+'ROTCLIM02'+chr(39));

      if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
         DM4.Tb_LogoSis.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                               +' or LSCODEMP is null )');

      DM4.Tb_LogoSis.Open;

      end;
   end;




end;

procedure TFrm_RotCli.bbExcImagemClick(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Params.CreateParam(ftString,'CHAVE',ptinput);
DM1.Query1.SQL.Add('Update CADLOGSIS set LSLOGO=null,LSCODEMP=:LSCODEMP');
DM1.Query1.SQL.Add(' where LSCHAVE=:CHAVE');
DM1.Query1.ParamByName('CHAVE').AsString:='LPRECO02';
DM1.Query1.ParamByName('LSCODEMP').AsFloat:=iif(codemp>100,codemp-100,codemp);

if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   DM1.Query1.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                   +' or LSCODEMP is null )');

try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   fmensagem('Erro ao Atualizar o Logotipo!',0,['0'],0);
   end;
DM4.Tb_LogoSis.Close;
DM4.Tb_LogoSis.SQL.Clear;
DM4.Tb_LogoSis.Sql.add('Select * from CADLOGSIS '
                      +' where LSCHAVE='+chr(39)+'ROTCLIM02'+chr(39));

if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   DM4.Tb_LogoSis.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                         +' or LSCODEMP is null )');

DM4.Tb_LogoSis.Open;
logolpreco.Picture:=nil;

end;

procedure TFrm_RotCli.FormCreate(Sender: TObject);
begin
if codusr=1111 then
   tsRelatorio.TabVisible:=true
else
   tsRelatorio.TabVisible:=false;


DM4.Tb_LogoSis.Close;
DM4.Tb_LogoSis.SQL.Clear;
DM4.Tb_LogoSis.Sql.add('Select * from CADLOGSIS '
                      +' where LSCHAVE='+chr(39)+'ROTCLIM02'+chr(39));

if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   DM4.Tb_LogoSis.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                         +' or LSCODEMP is null )');
DM4.Tb_LogoSis.Open;
if DM4.Tb_LogoSis.IsEmpty then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.Params.CreateParam(ftString,'LSCHAVE',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'LSDESCRICAO',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'LSCODEMP',ptInput);
   DM1.Query1.SQL.add('Insert into CADLOGSIS (');
   DM1.Query1.SQL.add(' LSCHAVE ');
   DM1.Query1.SQL.add(',LSDESCRICAO ');
   DM1.Query1.SQL.add(',LSCODEMP ');
   DM1.Query1.SQL.add(' ) Values (');
   DM1.Query1.SQL.add(' :LSCHAVE ');
   DM1.Query1.SQL.add(',:LSDESCRICAO ');
   DM1.Query1.SQL.add(',:LSCODEMP ');
   DM1.Query1.SQL.add(' ) ');
   DM1.Query1.ParamByName('LSCHAVE').AsString    :='ROTCLIM02';
   DM1.Query1.ParamByName('LSDESCRICAO').AsString:='Rotulo de Clientes Modelo 02';
   DM1.Query1.ParamByName('LSCODEMP').AsFloat    :=iif(codemp>100,codemp-100,codemp);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro ao Atualizar os Logotipos!',0,['0'],0);
      end;
   DM4.Tb_LogoSis.Close;
   DM4.Tb_LogoSis.SQL.Clear;
   DM4.Tb_LogoSis.Sql.add('Select * from CADLOGSIS '
                      +' where LSCHAVE='+chr(39)+'ROTCLIM02'+chr(39));

   if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
      DM4.Tb_LogoSis.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                            +' or LSCODEMP is null )');

   DM4.Tb_LogoSis.Open;
   end;

if not (DM4.Tb_LogoSisLSLOGO.IsNull)  and  (DM4.Tb_LogoSisLSLOGO.Value<>'') then
   begin
   DM4.Tb_LogoSisLSLOGO.SaveToFile('C:\SGE\ROTCLIM02.JPG');
   opd1.FileName:='C:\SGE\ROTCLIM02.JPG';
   logolpreco.Picture.LoadFromFile(Opd1.FileName);
   end
else
   logolpreco.Picture:=nil;


end;

procedure TFrm_RotCli.Tb_RotCalcFields(DataSet: TDataSet);
begin
Tb_Rotcepcidadeuf.Value:=Tb_RotCEP.Value+' '+Tb_RotCIDADE.Value+'-'+Tb_RotUF.Value;

Tb_Rotenderbairro.Value:=Tb_RotENDERECO.Value+' '+Tb_RotBAIRRO.Value;

end;

procedure TFrm_RotCli.CB_MODELOClick(Sender: TObject);
begin
if CB_MODELO.ItemIndex=1 then
   TsLogoMarcas.TabVisible:=true
else
   TsLogoMarcas.TabVisible:=false;

end;

procedure TFrm_RotCli.FormShow(Sender: TObject);
begin
   tsRelatorio.TabVisible := False;
end;

end.

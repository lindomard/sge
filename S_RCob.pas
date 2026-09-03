unit S_Rcob;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, Grids, db, dbtables, func, S_DM1,
  s_RCobL, S_RCobC, S_Impres, S_Ven,lerarq;

type
  TFrm_RCob = class(TForm)
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
    NUMDUP: TEdit;
    DESD: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    ITEM_GRAVAR: TBitBtn;
    ITEM_CANCELAR: TBitBtn;
    BitBtn6: TBitBtn;
    Label7: TLabel;
    NOMCLI: TEdit;
    Label8: TLabel;
    VALOR: TEdit;
    Label11: TLabel;
    QTDDOC: TEdit;
    Label12: TLabel;
    TOTDOC: TEdit;
    STG1: TStringGrid;
    Qr_CL01: TQuery;
    Qr_CL02: TQuery;
    BitBtn1: TBitBtn;
    Label14: TLabel;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    DTVCTO: TMaskEdit;
    TOTJUR: TEdit;
    Label17: TLabel;
    DUP: TComboBox;
    Label9: TLabel;
    JURMEN: TEdit;
    Edit2: TEdit;
    Label15: TLabel;
    JURDUP: TEdit;
    Qr_CL01CB1CODEMP: TFloatField;
    Qr_CL01CB1CHAVE: TFloatField;
    Qr_CL01CB1DATA: TDateTimeField;
    Qr_CL01CB1JURM: TFloatField;
    Qr_CL01CB1OBS01: TStringField;
    Qr_CL01CB1OBS02: TStringField;
    Qr_CL02CB2CODEMP: TFloatField;
    Qr_CL02CB2CHAVE: TFloatField;
    Qr_CL02CB2SEQ: TFloatField;
    Qr_CL02CB2NUMERO: TFloatField;
    Qr_CL02CB2DESD: TStringField;
    Qr_CL02CB2DUP: TFloatField;
    Qr_CL01CB1CODVEN: TFloatField;
    Label13: TLabel;
    JURD: TEdit;
    ATRASO: TEdit;
    Label16: TLabel;
    Qr_CL02CB2VALDUP: TFloatField;
    Qr_CL02CB2ATRASO: TFloatField;
    Qr_CL02CB2JURD: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure ITEM_GRAVARClick(Sender: TObject);
    procedure ITEM_CANCELARClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BBLIMPARClick(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBLOCALIZARClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure MDATAExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure BBIMPRIMIRClick(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure NUMDUPKeyPress(Sender: TObject; var Key: Char);
    procedure DUPExit(Sender: TObject);
    procedure JURMENKeyPress(Sender: TObject; var Key: Char);
    procedure JURMENExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }


    function fcalcular(ptipo: Integer): Boolean;
    function fexcluir(ptipo: Integer): Boolean;
    function fcaltudo(ptipo: Integer): Boolean;

  public
    { Public declarations }
        mCol_NumDup :integer;
        mCol_Desd :integer;
        mCol_Dup :integer;
        mCol_Dtemis :integer;
        mCol_Crazao :integer;
        mCol_Dtvcto :integer;
        mCol_Valor :integer;
        mCol_Jurd :integer;
        mCol_Atraso :integer;
        mCol_JurDup :integer;

    form_Impres_RCob: TFrm_Impres;
  end;


var
  Frm_RCob: TFrm_RCob;
  mlin: Integer;
  mnumlot: Integer;
  moper: Integer=0;
implementation

{$R *.dfm}

procedure TFrm_RCob.FormCreate(Sender: TObject);
var
mqtdd: Integer;
begin


        mCol_NumDup :=0;
        mCol_Desd :=  1;
        mCol_Dup := 2;
        mCol_Dtemis := 3;
        mCol_Crazao := 4;
        mCol_Dtvcto := 5;
        mCol_Valor := 6;
        mCol_Jurd := 7;
        mCol_Atraso := 8;
        mCol_JurDup := 9;

STG1.RowCount:=2;
STG1.Rows[1].Clear;
STG1.Cells[0,0]:='Número';
STG1.Cells[1,0]:='Desc';
STG1.Cells[2,0]:='Tipo Doc';
STG1.Cells[3,0]:='Dt.Emissão';
STG1.Cells[4,0]:='Sacado';
STG1.Cells[5,0]:='Dt.Vcto';
STG1.Cells[6,0]:='Valor';
STG1.Cells[7,0]:='Juros dia';
STG1.Cells[8,0]:='Atraso';
STG1.Cells[9,0]:='Total Juros';
for mqtdd:=0 to high(ptpdoc) do
   begin
   DUP.Items.add(FormatFloat('0',mqtdd)+'-'+ptpdoc[mqtdd]);
   end;
end;

procedure TFrm_RCob.ITEM_GRAVARClick(Sender: TObject);
var
x: Integer;
begin

if not flcaddar(8,0,0,codecf,0,Trim(NUMDUP.Text),Trim(DESD.Text),copy(DUP.Text,1,1),pdatanula,'') then
   begin
   fMensagem('Duplicata não encontrado',0,['0'],0);
   NUMDUP.SetFocus;
   exit;
   end;
{
if DM1.Tb_DarCRSTATUS.Value=2 then
   begin
   fMensagem('Esta duplicata ja foi paga',0,['0'],0);
   NUMDUP.SetFocus;
   Exit;
   end;
}
if ValFloat(CODVEN.Text)>0 then
   begin
   if DM1.Tb_DarCRCODVEN.Value<>Valfloat(CODVEN.Text) then
      begin
      if fmensagem('Esta duplicata não é do vendedor selecionado. Quer incluir mesmo assim?',0,['1','2'],2)<>mrYes then
         begin
         NUMDUP.SetFocus;
         exit;
         end;
      end;
   end;
for x:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[0,x])='' then
      continue;
   if (valfloat(NUMDUP.Text)=valfloat(STG1.Cells[0,x])) and
      (Trim(DESD.Text)      =Trim(STG1.Cells[1,x]))     and
      (valfloat(DUP.Text)   =valFloat(STG1.Cells[2,x])) then
      begin
      fMensagem('Duplicata já digitado.',0,['0'],0);
      NUMDUP.SetFocus;
      exit;
      end;
   end;

mlin:=STG1.RowCount;
STG1.RowCount:=mlin+1;
STG1.Rows[mlin+1].Clear;
STG1.Rows[mlin].Clear;
STG1.Cells[0,mlin-1]:=NUMDUP.Text;
STG1.Cells[1,mlin-1]:=DESD.Text;
STG1.Cells[2,mlin-1]:=DUP.Text;
STG1.Cells[3,mlin-1]:=FormatDatetime(fdt2, DM1.Tb_DarCRDTEMIS.Value);
STG1.Cells[4,mlin-1]:=DM1.Tb_Darrazaocli.Value;
STG1.Cells[5,mlin-1]:=FormatDateTime(fdt2,DM1.Tb_DarCRDTVCTO.Value);
STG1.Cells[6,mlin-1]:=insere(FormatFloat(mcasas,DM1.Tb_DarCRVALOR.Value),' ',10);
STG1.Cells[7,mlin-1]:=JURD.Text;
STG1.Cells[8,mlin-1]:=ATRASO.Text;
STG1.Cells[9,mlin-1]:=JURDUP.Text;
fcalcular(0);
NUMDUP.Text :='';
DESD.Text   :='';
DUP.Text    :='';
DTVCTO.Text :='';
NOMCLI.Text :='';
VALOR.Text  :='';
JURD.Text   :='';
ATRASO.Text :='';
JURDUP.Text :='';
NUMDUP.SetFocus;

end;
function TFrm_RCob.fcalcular(ptipo: Integer): Boolean;
var
x: Integer;
mtotcom,mtotal: Real;
begin
mtotcom:=0;
mtotal:=0;
QTDDOC.Text:=IntToStr(STG1.RowCount-2);
for x:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[0,x])='' then
      continue;
   mtotal :=mtotal+valfloat(STG1.Cells[6,x]);
   mtotcom:=mtotcom+valfloat(STG1.Cells[9,x]);
   end;
TOTDOC.Text:=insere(Formatfloat(mcasas,mtotal),' ',10);
TOTJUR.Text:=insere(Formatfloat(mcasas,mtotcom),' ',10);
QTDDOC.Update;
TOTDOC.Update;
TOTJUR.Update;
result:=True;
end;

function TFrm_RCob.fexcluir(ptipo: Integer): Boolean;
var
x: Integer;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADCB01 where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',' CB1CODEMP=0'+Qr_CL01CB1CODEMP.AsString+' and ')
                  +' CB1CHAVE=0'+Qr_CL01CB1CHAVE.AsString);
DM1.Query1.ExecSQL;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADCB02 where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',' CB2CODEMP=0'+Qr_CL01CB1CODEMP.AsString+' and ')
                  +' CB2CHAVE=0'+Qr_CL01CB1CHAVE.AsString);
DM1.Query1.ExecSQL;

result:=True;
end;

procedure TFrm_RCob.ITEM_CANCELARClick(Sender: TObject);
begin
NUMDUP.Text :='';
DESD.Text   :='';
DUP.Text    :='';
DTVCTO.Text :='';
NOMCLI.Text :='';
VALOR.Text  :='';
JURD.Text   :='';
ATRASO.Text :='';
JURDUP.Text :='';
NUMDUP.SetFocus;
end;

procedure TFrm_RCob.BitBtn6Click(Sender: TObject);
var
x: Integer;
begin
mlin:=STG1.Row;

if (STG1.Cells[0,1]='') or (STG1.Cells[0,mlin]='') then
   exit;
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STG1.RowCount=2 then
   STG1.Rows[1].Clear
else
   begin
   for x:=STG1.Row to STG1.RowCount-2 do
      begin
      STG1.Cells[00,x]:=STG1.Cells[00,x+1];
      STG1.Cells[01,x]:=STG1.Cells[01,x+1];
      STG1.Cells[02,x]:=STG1.Cells[02,x+1];
      STG1.Cells[03,x]:=STG1.Cells[03,x+1];
      STG1.Cells[04,x]:=STG1.Cells[04,x+1];
      STG1.Cells[05,x]:=STG1.Cells[05,x+1];
      STG1.Cells[06,x]:=STG1.Cells[06,x+1];
      STG1.Cells[07,x]:=STG1.Cells[07,x+1];
      STG1.Cells[08,x]:=STG1.Cells[08,x+1];
      STG1.Cells[09,x]:=STG1.Cells[09,x+1];
      end;
   STG1.RowCount:=STG1.RowCount-1;
   end;
fcalcular(0);
end;

procedure TFrm_RCob.BBLIMPARClick(Sender: TObject);
begin
NUMLOT.Text:='';
MDATA.Text :='/  /';
CODVEN.Text:='';
NOMVEN.Text:='Todos...';
JURMEN.Text:='';
OBS1.Text  :='';
OBS2.Text  :='';
NUMDUP.Text:='';
DESD.Text  :='';
DUP.Text   :='';
DTVCTO.Text :='';
NOMCLI.Text :='';
VALOR.Text  :='';
QTDDOC.Text :='';
TOTDOC.Text :='';
TOTJUR.Text :='';
JURD.Text   :='';
ATRASO.Text :='';
JURDUP.Text :='';
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
end;

procedure TFrm_RCob.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RCob.BBINCLUIRClick(Sender: TObject);
begin
If BBGRAVAR.Enabled then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo],0) of
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
MDATA.Text:=FormatDateTime(Fdt2,pdatasis);

moper:=0;
MDATA.SetFocus;
end;

procedure TFrm_RCob.BBLOCALIZARClick(Sender: TObject);
begin
if moper<>3 then
   begin
   Application.CreateForm(TFrm_RCobL, Frm_RCobL);
   Frm_RCobL.ShowModal;
   mnumlot:=Frm_RCobL.Qr_RcobCB1CHAVE.AsInteger;
   Frm_RCobL.Free;
   end;
BBLIMPAR.Click;
Qr_CL01.Close;
Qr_CL01.SQL.Clear;
Qr_CL01.SQL.Add('Select * from CADCB01 where ');
if DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
   Qr_CL01.SQL.add(' CB1CHAVE=0'+IntToStr(mnumlot)
                   +' order by CB1CHAVE')
else
   Qr_CL01.SQL.add(' CB1CODEMP=0'+IntTostr(codemp)
                   +' and CB1CHAVE=0'+IntToStr(mnumlot)
                   +' order by CB1CHAVE');
Qr_CL01.Open;
if Qr_CL01.Eof then
   begin
   fMensagem('Lote não Encontrado',0,['0'],0);
   exit;
   end;
Qr_CL02.Close;
Qr_CL02.SQL.Clear;
Qr_CL02.SQL.Add('Select * from CADCB02 where ');
if DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
   Qr_CL02.SQL.add(' CB2CHAVE=0'+IntToStr(mnumlot)
                   +' order by CB2CHAVE,CB2SEQ')
else
   Qr_CL02.SQL.add(' CB2CODEMP=0'+intTostr(codemp)
                  +' and CB2CHAVE=0'+IntToStr(mnumlot)
                  +' order by CB2CHAVE,CB2SEQ');
Qr_CL02.Open;
NUMLOT.Text :=Qr_CL01CB1CHAVE.AsString;
MDATA.Text  :=FormatDatetime(fdt2, Qr_CL01CB1DATA.Value);
CODVEN.Text :=Qr_CL01CB1CODVEN.AsString;
if valfloat(CODVEN.Text)>0 then
   begin
   flqr1('VNOME','V','CADVEN','N','VCODVEN',QR_CL01CB1CODVEN.AsString);
   NOMVEN.Text :=DM1.Query1.Fields[0].AsString;
   end
else
   begin
   NOMVEN.Text:='Todos...';
   CODVEN.text:='';
   end;
JURMEN.Text :=Formatfloat(mcasas, Qr_CL01CB1JURM.Value);
OBS1.Text   :=Qr_CL01CB1OBS01.Value;
OBS2.Text   :=Qr_CL01CB1OBS02.Value;
Qr_CL02.First;
STG1.RowCount:=2;
STG1.Rows[1].Clear;
While not Qr_CL02.Eof do
   begin
   mlin:=STG1.RowCount;
   STG1.RowCount:=mlin+1;
   STG1.Rows[mlin+1].Clear;
   STG1.Rows[mlin].Clear;
  if flcaddar(8,0,0,codecf,0,Qr_CL02CB2NUMERO.AsString,Trim(Qr_CL02CB2DESD.Value),Qr_CL02CB2DUP.AsString,pdatanula,'') then
      begin
      STG1.Cells[0,mlin-1]:=DM1.Tb_DarCRNUMERO.AsString;
      STG1.Cells[1,mlin-1]:=DM1.Tb_DarCRDESD.Value;
      STG1.Cells[2,mlin-1]:=FormatFloat('0',DM1.Tb_DarCRDUP.Value)+' '+ptpdoc[DM1.Tb_DarCRDUP.AsInteger];
      STG1.Cells[3,mlin-1]:=FormatDateTime(fdt2,DM1.Tb_DarCRDTEMIS.value);
      STG1.Cells[4,mlin-1]:=DM1.Tb_Darrazaocli.AsString;
      STG1.Cells[5,mlin-1]:=FormatDateTime(fdt2,DM1.Tb_DarCRDTVCTO.value);
      STG1.Cells[6,mlin-1]:=insere(FormatFloat(mcasas, DM1.Tb_DarCRVALOR.Value),' ',10);
      STG1.Cells[7,mlin-1]:=insere(FormatFloat(mcasas, Qr_CL02CB2JURD.Value),' ',10);
      STG1.Cells[8,mlin-1]:=insere(Qr_CL02CB2ATRASO.AsString,' ',10);
      STG1.Cells[9,mlin-1]:=insere(FormatFloat(mcasas, (Qr_CL02CB2JURD.Value*Qr_CL02CB2ATRASO.Value)),' ',10);
      end;
   Qr_CL02.Next;
   end;
BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=True;
BBEXCLUIR.Enabled  :=True;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=True;
fcalcular(0);
end;

procedure TFrm_RCob.BBGRAVARClick(Sender: TObject);
var
mcod,x: Integer;
begin
if Trim(MDATA.Text)='/  /' then
   begin
   fMensagem('Data Campo Obrigatório',0,['0'],0);
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
   fMensagem('Não há duplicatas selecionadas.',0,['0'],0);
   NUMDUP.SetFocus;
   exit;
   end;
if moper=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQl.add('Select max(CB1CHAVE) from CADCB01 ');
   if DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
      DM1.Query1.Sql.add(' where CB1CODEMP=0'+IntTostr(codemp)
                        +' order by CB1CODEMP,CB1CHAVE')
   else
      DM1.Query1.SQL.add(' order by CB1CHAVE ');
   DM1.Query1.Open;
   mnumlot:=DM1.Query1.Fields[0].AsInteger+1;
   end
else
   begin
   fexcluir(0);
   end;

DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Params.CreateParam(ftstring,'OBS01',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'OBS02',ptinput);
DM1.Query1.Sql.Add('Insert into CADCB01 ('
                  +'CB1CODEMP,CB1CHAVE,CB1DATA,'
                  +'CB1JURM,CB1CODVEN,'
                  +'CB1OBS01,CB1OBS02) values ('
                  +intTostr(codemp)+','
                  +IntTostr(mnumlot)+','
                  +chr(39)+FormatDateTime(fdt, StrtoDate(MDATA.Text))+chr(39)+','
                  +mudavp(FloatToStr(Valfloat(JURMEN.Text)))+','
                  +'0'+Trim(CODVEN.Text)+','
                  +':OBS1, :OBS2)');
DM1.Query1.Params[0].AsString:=OBS1.Text;
DM1.Query1.Params[1].AsString:=OBS2.Text;
DM1.Query1.ExecSQL;


DM1.Query1.Params.Clear;
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Params.CreateParam(ftstring,'DESD',ptinput);

mcod:=0;
for x:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[0,x])='' then
      Continue;
   if not flcaddar(8,0,0,codecf,0,Trim(STG1.Cells[0,x]),Trim(STG1.Cells[1,x]),copy(STG1.Cells[2,x],1,1),pdatanula,'') then
      begin
      fMensagem('Erro ao ler a duplicata: '+STG1.Cells[0,x]+'/'+STG1.Cells[1,x]+' Valor: '+STG1.Cells[6,x],0,['0'],0);
      continue;
      end;
   mcod:=mcod+1;
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.add('Insert into CADCB02 ('
                     +'CB2CODEMP,'
                     +'CB2CHAVE,'
                     +'CB2SEQ,'
                     +'CB2NUMERO,'
                     +'CB2DUP,'
                     +'CB2VALDUP,'
                     +'CB2ATRASO,'
                     +'CB2JURD,'
                     +'CB2DESD) values ('
                     +IntToStr(codemp)+','     
                     +IntTostr(mnumlot)+','
                     +IntTostr(mcod)+','
                     +DM1.Tb_DarCRNUMERO.AsString+','
                     +DM1.Tb_DarCRDUP.AsString+','
                     +mudavp(DM1.Tb_DarCRVALOR.AsString)+','
                     +mudavp(FloatToStr(valfloat(STG1.Cells[8,x])))+','
                     +mudavp(FloatToStr(valfloat(STG1.Cells[7,x])))+','
                     +':DESD)');
   DM1.Query1.Params[0].AsString:=DM1.Tb_DarCRDESD.Value;
   DM1.Query1.ExecSQL;
   end;


moper:=3;
BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;
BBLOCALIZAR.Click;
end;

procedure TFrm_RCob.MDATAExit(Sender: TObject);
begin
try
   MDATA.Text:=FormatDatetime(fdt2, StrtoDate(MDATA.Text));
except
   fMensagem('Data Invalida!',0,['0'],0);
   MDATA.SetFocus;
   end;
fcaltudo(0);
end;

procedure TFrm_RCob.BitBtn1Click(Sender: TObject);
var
mlin,x: Integer;
mtem: Boolean;
begin
Application.CreateForm(TFrm_RCobC, Frm_RCobC);
Frm_RCobC.ShowModal;
for x:=1 to Frm_RCobC.STG_DUP.RowCount do
   begin
   if Trim(Frm_RCobC.STG_DUP.Cells[0,x])='' then
      Continue;
   mtem:=False;
   for mlin:=1 to STG1.RowCount do
      begin
      if Trim(STG1.Cells[Frm_RCobC.mCol_X,mlin])='' then
         continue;
      if (valfloat(Frm_RCobC.STG_DUP.Cells[Frm_RCobC.mCol_Numero,x])=valfloat(STG1.Cells[mcol_numdup,mlin])) and
         (valfloat(Frm_RCobC.STG_DUP.Cells[Frm_RCobC.mCol_Desd,x])=valfloat(STG1.Cells[mcol_desd,mlin])) and
         (valfloat(Frm_RCobC.STG_DUP.Cells[Frm_RCobC.mCol_valor,x])=valfloat(STG1.Cells[mcol_valor,mlin])) and
         (strtodatetime(Frm_RCobC.STG_DUP.Cells[Frm_RCobC.mCol_dtvcto,x])=strtodatetime(STG1.Cells[mcol_dtvcto,mlin])) and


         (copy(Frm_RCobC.STG_DUP.Cells[Frm_RCobC.mCol_Tipo,x],1,1)=Trim(copy(STG1.Cells[mcol_dup,mlin],1,1))) then
         begin
         fMensagem('A Duplicata.: '+STG1.Cells[Frm_RCobC.mCol_X,mlin]+'-'+STG1.Cells[01,mlin]+' Valor: '+STG1.Cells[06,mlin]+#13
                    +'Ja esta relacionada.',0,['0'],0);
         mtem:=True;
         Continue;
         end;
      end;
   if mtem then
      Continue;
   mlin:=STG1.RowCount;
   STG1.RowCount:=mlin+1;
   STG1.Rows[mlin+1].Clear;
   STG1.Rows[mlin].Clear;
   STG1.Cells[0,mlin-1]:=Frm_RCobC.STG_DUP.Cells[1,x];
   STG1.Cells[1,mlin-1]:=Frm_RCobC.STG_DUP.Cells[2,x];
   STG1.Cells[2,mlin-1]:=Frm_RCobC.STG_DUP.Cells[3,x];
   STG1.Cells[3,mlin-1]:=Frm_RCobC.STG_DUP.Cells[4,x];
   STG1.Cells[4,mlin-1]:=Frm_RCobC.STG_DUP.Cells[5,x];
   STG1.Cells[5,mlin-1]:=Frm_RCobC.STG_DUP.Cells[6,x];
   STG1.Cells[6,mlin-1]:=Frm_RCobC.STG_DUP.Cells[7,x];
   if valFloat(JURMEN.Text)>0 then
      begin
      Frm_RCobC.STG_DUP.Cells[7,mlin-1]:=insere(FormatFloat(mcasas, valFloat(Frm_RCobC.STG_DUP.Cells[7,x])*valfloat(JURMEN.Text)/100),' ',10);
      end
   else
      STG1.Cells[7,mlin-1]:=Frm_RCobC.STG_DUP.Cells[9,x];
   Frm_RCobC.STG_DUP.Cells[8,x]:=insere(FloatToStr(StrtoDate(MDATA.Text)-StrtoDate(Frm_RCobC.STG_DUP.Cells[6,x])),' ',10);
   if valfloat(Frm_RCobC.STG_DUP.Cells[8,x])<=0 then
      Frm_RCobC.STG_DUP.Cells[8,x]:='0';
   STG1.Cells[8,mlin-1]:=Frm_RCobC.STG_DUP.Cells[8,x];
   STG1.Cells[9,mlin-1]:=insere(FormatFloat(mcasas,Valfloat(Frm_RCobC.STG_DUP.Cells[8,x])*Valfloat(Frm_RCobC.STG_DUP.Cells[9,x])),' ',10);
{
STG1.Cells[0,0]:='Número';
STG1.Cells[1,0]:='Desc';
STG1.Cells[2,0]:='Tipo Doc';
STG1.Cells[3,0]:='Dt.Emissão';
STG1.Cells[4,0]:='Sacado';
STG1.Cells[5,0]:='Dt.Vcto';
STG1.Cells[6,0]:='Valor';
STG1.Cells[7,0]:='Juros dia';
STG1.Cells[8,0]:='Atraso';
STG1.Cells[9,0]:='Total Juros';
}

   end;
Frm_RCobC.Free;
fcalcular(0);
end;

procedure TFrm_RCob.BBALTERARClick(Sender: TObject);
begin
Panel4.Enabled   :=True;
GroupBox1.Enabled:=True;
BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=True;
BBIMPRIMIR.Enabled :=False;
moper:=1;
MDATA.SetFocus;
end;

procedure TFrm_RCob.BBEXCLUIRClick(Sender: TObject);
begin
if fmensagem('Quer realmente excluir este Lote?',0,['1','2'],2)<>mrYes then
   exit;
fexcluir(0);
BBLIMPAR.Click;
fMensagem('Lote Excluido',0,['0'],0);

end;

procedure TFrm_RCob.BBIMPRIMIRClick(Sender: TObject);
var
mlin, mpag: Integer;
mtottit, mtotjur,mtotrec: Real;
begin
{
|Numero/P |Dt.Emiss|Nome do Sacado                          |Vlr.Tituto|Dt.Vcto.|Data p/Pgt|Atraso|Juros/dia |Tot. Juros|To.Receber|
|123456-1 |10/09/02|1234567890123456789012345678901234567890|zzz.zz9,99|10/09/20|10/10/2000|123456|zzz.zz9,99|zzz.ZZ9,99|zzz.zz9,99|
+---------+--------+----------------------------------------+----------+--------+----------+------+----------+----------+----------+
}
Qr_CL02.First;
if Qr_CL02.Eof then
   begin
   fMensagem('nao ha nada a ser impresso.',0,['0'],0);
   exit;
   end;
testeform := TFrm_RCob(FindGlobalComponent('form_Impres_RCob'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_Impres_RCob);

form_Impres_RCob.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mlin:=0;
mpag:=0;
mtottit:=0;
mtotjur:=0;
mtotrec:=0;

while not Qr_CL02.Eof do
   begin
   flcaddar(8,0,0,codecf,0,Qr_CL02CB2NUMERO.AsString,Trim(Qr_CL02CB2DESD.Value),Qr_CL02CB2DUP.AsString,pdatanula,'');
   if mlin=0 then
      begin
      mpag:=mpag+1;
      form_Impres_RCob.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      form_Impres_RCob.Rdprint1.Impf(01,64,'Pagina: '+Formatfloat('0000',mpag),mnormal);
      form_Impres_RCob.Rdprint1.Impf(02,01,'Relatorio para Cobranca. ',mnormal);
      form_Impres_RCob.Rdprint1.ImpF(02,64,'Data: '+FormatDateTime(fdt2,date),mnormal);
      form_Impres_RCob.Rdprint1.Impf(03,01,Centra('Lote.: '+Qr_CL01CB1CHAVE.AsString+' data: '+FormatDateTime(fdt2,Qr_CL01CB1DATA.Value),' ',60),mneg);
      mlin:=4;
      form_Impres_RCob.Rdprint1.Impf(mlin,01,Centra(Qr_CL01CB1OBS01.Value,' ',60),mneg);
      if Trim(Qr_CL01CB1OBS02.Value)<>'' then
         begin
         mlin:=mlin+1;
         form_Impres_RCob.Rdprint1.Impf(mlin,01,Centra(Qr_CL01CB1OBS02.Value,' ',60),mneg);
         end;
      mlin:=mlin+1;
      form_Impres_RCob.RDprint1.ImpF(mlin,01,'+---------+--------+----------------------------------------+----------+--------+----------+------+----------+----------+----------+',mreduz);
      mlin:=mlin+1;
      form_Impres_RCob.Rdprint1.ImpF(mlin,01,'|Numero/P |Dt.Emiss|Nome do Sacado                          |Vlr.Tituto|Dt.Vcto.|Data p/Pgt|Atraso|Juros/dia |Tot. Juros|To.Receber|',mreduz);
      end;
   mlin:=mlin+1;
   form_Impres_RCob.Rdprint1.Impf(mlin,01,'|'+FormatFloat('000000',DM1.Tb_DarCRNUMERO.Value)+'-'
                                   +insere2(DM1.Tb_DarCRDESD.Value,' ',2)+'|'
                                   +FormatDatetime(fdt3,DM1.Tb_DarCRDTEMIS.Value)+'|'
                                   +insere2(DM1.Tb_Darrazaocli.Value,' ',40)+'|'
                                   +insere(Formatfloat(mcasas,DM1.Tb_DarCRVALOR.Value),' ',10)+'|'
                                   +formatDateTime(fdt3,DM1.Tb_DarCRDTVCTO.Value)+'|'
                                   +FormatDateTime(fdt2,Qr_CL01CB1DATA.Value)+'|'
                                   +insere(Qr_CL02CB2ATRASO.AsString,' ',6)+'|'
                                   +insere(Formatfloat(mcasas,Qr_CL02CB2JURD.Value),' ',10)+'|'
                                   +insere(Formatfloat(mcasas,(Qr_CL02CB2JURD.Value*Qr_CL02CB2ATRASO.Value)),' ',10)+'|'
                                   +insere(Formatfloat(mcasas,DM1.Tb_DarCRVALOR.Value+(Qr_CL02CB2JURD.Value*Qr_CL02CB2ATRASO.Value)),' ',10)+'|',mreduz);

   mtottit:=mtottit+DM1.Tb_DarCRVALOR.Value;
   mtotjur:=mtotjur+(Qr_CL02CB2JURD.Value*Qr_CL02CB2ATRASO.Value);
   mtotrec:=mtotrec+DM1.Tb_DarCRVALOR.Value+(Qr_CL02CB2JURD.Value*Qr_CL02CB2ATRASO.Value);
   Qr_CL02.Next;
   if Qr_CL02.Eof then
      begin
      mlin:=mlin+1;
      form_Impres_RCob.Rdprint1.Impf(mlin,01,'|.........|'
                                   +insere2('.','.',8)+'|'
                                   +insere2('Totais','.',40)+'|'
                                   +insere(Formatfloat(mcasas,mtottit),' ',10)+'|'
                                   +insere2('.','.',8)+'|'
                                   +insere2('.','.',10)+'|'
                                   +insere2('.','.',6)+'|'
                                   +insere2('.','.',10)+'|'
                                   +insere(Formatfloat(mcasas,mtotjur),' ',10)+'|'
                                   +insere(Formatfloat(mcasas,mtotrec),' ',10)+'|',mreduz);
      mlin:=mlin+1;
      form_Impres_RCob.RDprint1.ImpF(mlin,01,'+---------+--------+----------------------------------------+----------+--------+----------+------+----------+----------+----------+',mreduz);
      if form_Impres_RCob.RDprint1.Setup then form_Impres_RCob.RDprint1.Fechar;
      form_Impres_RCob.free;
      form_Impres_RCob:=nil;
      end
   else if mlin>58 then
      begin
      form_Impres_RCob.RDprint1.Novapagina;
      mlin:=0;
      end;
   end;
end;

procedure TFrm_RCob.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_Rcob',Key);
   JURMEN.SetFocus;
   key:=#0;
   end;
end;

procedure TFrm_RCob.CODVENExit(Sender: TObject);
begin
if Trim(CODVEN.Text)='' then
   NOMVEN.Text:='Todos...'
else
   begin
   CODVEN.Text:=FloatToStr(ValFloat(CODVEN.Text));
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',Trim(CODVEN.Text)) then
      NOMVEN.Text:=DM1.Query1.fields[0].AsString
   else
      begin
      fMensagem('Vendedor não cadastrado',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      exit;
      end;
   end;
end;

procedure TFrm_RCob.NUMDUPKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_RCob.DUPExit(Sender: TObject);
var
x: Integer;
matraso: Real;
begin
if Trim(DUP.Text)<>'' then
   begin
   for x:=0 to High(ptpdoc) do
      begin
      if Trim(DUP.Text)=FormatFloat('0',x)+'-'+Trim(ptpdoc[x]) then
         begin
         DUP.ItemIndex:=x;
         break;
         end;
      end;
   end;

DUP.text:=DUP.Items.Strings[DUP.ItemIndex];
{if Trim(DUP.Text)='' then
   DUP.SetFocus;
}
if not flcaddar(8,0,0,codecf,0,Trim(NUMDUP.Text),Trim(DESD.Text),copy(DUP.Text,1,1),pdatanula,'') then
   begin
   fMensagem('Duplicata não encontrada',0,['0'],0);
   NUMDUP.SetFocus;
   exit;
   end;
DTVCTO.Text :=FormatDateTime(fdt2,DM1.Tb_DarCRDTVCTO.Value);
NOMCLI.Text :=DM1.Tb_Darrazaocli.Value;
VALOR.Text  :=insere(FormatFloat(mcasas, DM1.Tb_DarCRVALOR.Value),' ',10);
if ValFloat(JURMEN.Text)>0 then
   JURD.Text:=FormatFloat(mcasas, DM1.Tb_DarCRVALOR.Value*ValFloat(JURMEN.Text)/100)
else
   JURD.Text:=FormatFloat(mcasas, DM1.Tb_DarCRJURD.Value);
matraso:=date-DM1.Tb_DarCRDTVCTO.Value;
if matraso<1 then
   matraso:=0;
ATRASO.Text:=FloatToStr(matraso);
JURDUP.Text:=FormatFloat(mcasas, matraso*ValFloat(JURD.Text));
end;

procedure TFrm_RCob.JURMENKeyPress(Sender: TObject; var Key: Char);
begin
if key in [',','.'] then
   key:=DecimalSeparator
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_RCob.JURMENExit(Sender: TObject);
begin
JURMEN.Text:=FormatFloat(mcasas, valfloat(JURMEN.Text));
fcaltudo(0);

end;

function TFrm_RCob.fcaltudo(ptipo: Integer): Boolean;
var
x: Integer;
begin
For x:=1 to STG1.RowCount do
   begin
   if Trim(STG1.Cells[0,x])='' then
      Continue;
   if valfloat(JURMEN.Text)>0 then
      begin
      STG1.Cells[7,x]:=insere(FormatFloat(mcasas,((Valfloat(STG1.Cells[6,x])*valfloat(JURMEN.Text)/100)/30)),' ',10);
      end
   else
      begin
      if not flcaddar(8,0,0,codecf,0,Trim(STG1.Cells[0,x]),Trim(STG1.Cells[1,x]),copy(STG1.Cells[2,x],1,1),pdatanula,'') then
         STG1.Cells[7,x]:=insere(FormatFloat(mcasas,DM1.Tb_DarCRJURD.Value),' ',10);
      end;
   STG1.Cells[8,x]:=insere(FloatToStr(StrToDate(MDATA.Text)-StrToDate(STG1.Cells[5,x])),' ',10);
   if valfloat(STG1.Cells[8,x])<=0 then
      STG1.Cells[8,x]:=insere('0',' ',10);
   STG1.Cells[9,x]:=insere(FormatFloat(mcasas, valfloat(STG1.Cells[7,x])*valfloat(STG1.cells[8,x])),' ',10);
   end;

fcalcular(0);
result:=True;
end;

procedure TFrm_RCob.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

unit S_Pchq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, Grids, func, db, dbtables, S_DM1,lerarq,
  DBGrids, S_SelEmp;

type
  TFrm_PChq = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CB_TIPO: TComboBox;
    MDTI: TMaskEdit;
    bbAtualizar: TBitBtn;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    SAIR: TBitBtn;
    SELECIONAR: TBitBtn;
    DESMARCAR: TBitBtn;
    Qr_Chq: TQuery;
    Qr_ChqCHNUMERO: TFloatField;
    Qr_ChqCHBANCO: TFloatField;
    Qr_ChqCHSERIE: TStringField;
    Qr_ChqCHAGENCIA: TStringField;
    Qr_ChqCHCC: TStringField;
    Qr_ChqCHDTDEP: TDateTimeField;
    Qr_ChqCHDTEMIS: TDateTimeField;
    Qr_ChqCHVALOR: TFloatField;
    Qr_ChqCHSEQ: TFloatField;
    Qr_ChqCRAZAO: TStringField;
    Qr_ChqCHLOTSEQ: TFloatField;
    Qr_ChqCHCODEMP: TFloatField;
    CB_OMITIRDIA: TCheckBox;
    lbl_periodo: TLabel;
    MDTF: TMaskEdit;
    Label2: TLabel;
    lbl_codcli: TLabel;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    Label3: TLabel;
    NUMCHQI: TEdit;
    Label4: TLabel;
    NUMCHQF: TEdit;
    Label5: TLabel;
    VALORI: TEdit;
    Label6: TLabel;
    VALORF: TEdit;
    Label7: TLabel;
    EMITENTE: TEdit;
    Qr_ChqOK: TStringField;
    Qr_ChqCHEMIT: TStringField;
    U_CHQ: TUpdateSQL;
    Src_Chq: TDataSource;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    StaticText1: TStaticText;
    st_qtdchq: TStaticText;
    st_totchq: TStaticText;
    StaticText3: TStaticText;
    st_totsel: TStaticText;
    StaticText4: TStaticText;
    st_qtdsel: TStaticText;
    StaticText6: TStaticText;
    Qr_ChqCHCOMP: TStringField;
    Qr_ChqCHCPF: TFloatField;
    Qr_ChqCHRG: TStringField;
    Qr_ChqCHDTNAS: TDateTimeField;
    Qr_ChqCHCODLDR_DEB: TFloatField;
    Qr_ChqCHCODLDR: TFloatField;
    Qr_ChqCHCODLDR_CRED: TFloatField;
    Qr_ChqCHCAIXA: TFloatField;
    Qr_ChqCHCODCLI: TFloatField;
    Qr_ChqCHNOMCTA: TStringField;
    procedure SAIRClick(Sender: TObject);
    procedure CB_TIPOExit(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MDTIExit(Sender: TObject);
    procedure MDTFExit(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NUMCHQIExit(Sender: TObject);
    procedure NUMCHQFExit(Sender: TObject);
    procedure VALORIExit(Sender: TObject);
    procedure VALORIKeyPress(Sender: TObject; var Key: Char);
    procedure VALORFExit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SELECIONARClick(Sender: TObject);
    procedure DESMARCARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function fAbreChq(pSel: String): Boolean;
    function fTotaliza(ptipo:Integer): Boolean;

  public
    { Public declarations }
  end;

var
  Frm_PChq: TFrm_PChq;
  mQtdChq,mQtdSel: Integer;
  mTotchq,mTotSel: Real;
  Form_SelEmp: TFrm_SelEmp;

implementation

{$R *.dfm}

procedure TFrm_PChq.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_PChq.CB_TIPOExit(Sender: TObject);
begin
CB_TIPO.Text:=CB_TIPO.Items.Strings[CB_TIPO.ItemIndex];
end;

procedure TFrm_PChq.bbAtualizarClick(Sender: TObject);
var
x: integer;
begin

if (Trim(MDTi.Text)<>'/  /') and (Trim(MDTf.Text)<>'/  /') then
   begin
   try
      if StrToDate(MDTI.Text)>StrtoDate(MDTF.Text) then
         begin                     fmensagem('Data Inicial nao pode ser maior que final. Invalido!',0,['0'],0);
         MDTI.SetFocus;
         exit;
         end;
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDTI.SetFocus;
      exit;
      end;

   end;

if (ValFloat(NUMCHQI.Text)<>0) and (ValFloat(NUMCHQF.Text)<>0) then
   begin
   if ValFloat(NUMCHQI.Text)>ValFloat(NUMCHQF.Text) then
      begin
      fmensagem('Numero do Cheque Inicial nao pode ser maior que final. Invalido!',0,['0'],0);
      NUMCHQI.SetFocus;
      exit;
      end;
   end;

if (ValFloat(VALORI.Text)<>0) and (ValFloat(VALORF.Text)<>0) then
   begin
   if ValFloat(VALORI.Text)>ValFloat(VALORF.Text) then
      begin
      fmensagem('Valor Inicial nao pode ser maior que final. Invalido!',0,['0'],0);
      VALORI.SetFocus;
      exit;
      end;
   end;
fAbreChq('X');



end;

procedure TFrm_PChq.FormActivate(Sender: TObject);
begin
{MDTI.text:=FormatDateTime(fdt2, pdatasis);
MDTF.text:=FormatDateTime(fdt2, pdatasis);
bbAtualizar.Click;                        }
MDTI.SetFocus;

end;

procedure TFrm_PChq.MDTIExit(Sender: TObject);
begin
if trim(MDTI.Text)<>'/  /' then
   begin
   try
      MDTI.Text:=FormatDateTime(fdt2, StrtoDate(MDTI.Text));
   except
      fmensagem('Favor Digitar uma Data Válida!',0,['0'],0);
      MDTI.SetFocus;
      end;
   end;
end;

procedure TFrm_PChq.MDTFExit(Sender: TObject);
begin
if trim(MDTF.Text)<>'/  /' then
   begin
   try
      MDTF.Text:=FormatDateTime(fdt2, StrtoDate(MDTF.Text));
   except
      fmensagem('Favor Digitar uma Data Válida!',0,['0'],0);
      MDTF.SetFocus;
      end;
   end;

end;

procedure TFrm_PChq.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODCLI.Text) then
   BEGIN
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.TEXT))
                                    +' - '+DM1.Query1.fields[0].AsString);
      codcli.text := '';
      codcli.SetFocus;
   END else
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      codcli.text := '';
      CODCLI.SetFocus;
      end;
   end;


end;

procedure TFrm_PChq.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_RCliC',key);
   if trim(CODCLI.Text)<>'' then
      CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_PChq.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_PChq.NUMCHQIExit(Sender: TObject);
begin
NUMCHQI.Text:=fdeixanum2(NUMCHQI.Text);
if (trim(NUMCHQI.Text)<>'') and (Trim(NUMCHQF.Text)='') then
   NUMCHQF.Text:=NUMCHQI.Text;
end;

procedure TFrm_PChq.NUMCHQFExit(Sender: TObject);
begin
NUMCHQF.Text:=fdeixanum2(NUMCHQF.Text);

end;

procedure TFrm_PChq.VALORIExit(Sender: TObject);
begin
VALORI.Text:=FormatFloat(mcasas, ValFloat(VALORI.Text));
if (ValFloat(VALORI.Text)<>0) and (ValFloat(VALORF.Text)=0) then
   VALORF.Text:=VALORI.Text;

end;

procedure TFrm_PChq.VALORIKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then Key:=DecimalSeparator;
end;

procedure TFrm_PChq.VALORFExit(Sender: TObject);
begin
VALORF.Text:=FormatFloat(mcasas, ValFloat(VALORF.Text));
end;

function TFrm_PChq.fAbreChq(pSel: String): Boolean;
begin
if DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('CHCODEMP',Form_SelEmp.CLB_EMPRESAS);

Qr_Chq.Close;
Qr_Chq.SQL.Clear;
if trim(EMITENTE.Text)<>'' then
   Qr_Chq.Params.CreateParam(ftString,'EMIT',ptInput);

Qr_Chq.SQL.add('Select '+chr(39)+pSel+chr(39)+' as OK, CHCODEMP,CHNUMERO,CHBANCO,CHSERIE,CHAGENCIA, '
              +'       CHCC,CHDTDEP,CHDTEMIS,CHVALOR,CHEMIT,CHLOTSEQ,CHSEQ,CRAZAO'
              +'        ,CHCOMP,CHCPF,CHRG,CHDTNAS,CHCODLDR_DEB,CHCODLDR,CHCODLDR_CRED '
              +'       ,CHCAIXA '
              +'       ,CHCODCLI '
              +'       ,CHNOMCTA '
              +'       from CADCHQ,CADCLI '
              +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
              +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CCODEMP=0'+IntTostr(codemp)+' and')
              +' CCODCLI=CHCODCLI and CHSTATUS<>2 and CHSTATUS<9');
if CB_OMITIRDIA.Checked then
   Qr_Chq.SQL.Add(' and CHDTDEP<>CHDTEMIS');

if CB_TIPO.ItemIndex=1 then
   mcinst2:='CHDTEMIS'
else
   mcinst2:='CHDTDEP';
if Trim(MDTI.Text)<>'/  /' then
   Qr_Chq.SQL.Add(' and '+mcinst2+'>='+chr(39)+FormatDateTime(fdt,StrToDate(MDTI.Text))+chr(39));
if Trim(MDTF.Text)<>'/  /' then
   Qr_Chq.SQL.Add(' and '+mcinst2+'<='+chr(39)+FormatDateTime(fdt,StrToDate(MDTF.Text))+chr(39));


mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   Qr_Chq.sql.Add(' and CHCODCLI '+mcinst2);

if fsonumero(NUMCHQI.Text)<>0 then
   Qr_Chq.sql.Add(' and CHNUMERO>='+trim(NUMCHQI.Text));

if fsonumero(NUMCHQF.Text)<>0 then
   Qr_Chq.sql.Add(' and CHNUMERO<='+trim(NUMCHQF.Text));
if fsonumero(VALORI.Text)<>0 then
   Qr_Chq.sql.Add(' and CHVALOR>='+mudavp(FloatToStr(ValFloat(VALORI.Text))));

if fsonumero(VALORF.Text)<>0 then
   Qr_Chq.sql.Add(' and CHVALOR<='+mudavp(FloatToStr(ValFloat(VALORF.Text))));
if trim(EMITENTE.Text)<>'' then
   begin
   Qr_Chq.sql.Add(' and CHEMIT like :EMIT');
   Qr_Chq.ParamByName('EMIT').AsString:=EMITENTE.Text+'%';
   end;
Qr_Chq.SQL.Add(' order by CHDTDEP ');
result:=true;
try
   Qr_Chq.Open;
except
   qr_Chq.Sql.SaveToFile(mpastatemp + 'SQL.TXT');
   result:=false;
   end;
fTotaliza(0);

end;

function TFrm_PChq.fTotaliza(ptipo:Integer): Boolean;
var
mPosReg: TBookmark;
begin
mPosReg        := Qr_Chq.GetBookmark;

mQtdChq:=0;
mQtdSel:=0;
mTotchq:=0;
mTotSel:=0;
Qr_Chq.First;
While not Qr_Chq.Eof do
   begin
   mQtdChq:=mQtdChq+1;
   mTotchq:=mTotchq+Qr_ChqCHVALOR.AsFloat;
   if Qr_ChqOK.AsString='X' then
      begin
      mQtdSel:=mQtdSel+1;
      mTotSel:=mTotSel+Qr_ChqCHVALOR.AsFloat;
      end;
   Qr_Chq.Next;
   end;
st_qtdchq.Caption:=IntToStr(mQtdChq);
st_totchq.Caption:=FormatFloat(mcasas, mTotchq);

st_qtdsel.Caption:=IntToStr(mQtdSel);
st_totsel.Caption:=FormatFloat(mcasas, mTotSel);
Qr_Chq.GotoBookmark(mPosReg);

Result:=true;
end;

procedure TFrm_PChq.DBGrid1DblClick(Sender: TObject);
begin
if not Qr_ChqCHNUMERO.IsNull then
   begin
   Qr_Chq.Edit;
   if Qr_ChqOK.AsString='X' then
      begin
      mQtdSel:=mQtdSel-1;
      mTotSel:=mTotSel-Qr_ChqCHVALOR.AsFloat;
      Qr_ChqOK.Value:=' ';
      end
   else
      begin
      Qr_ChqOK.Value:='X';
      mQtdSel:=mQtdSel+1;
      mTotSel:=mTotSel+Qr_ChqCHVALOR.AsFloat;
      end;
   st_qtdsel.Caption:=IntToStr(mQtdSel);
   st_totsel.Caption:=FormatFloat(mcasas, mTotSel);
   Qr_Chq.Post;
   end;
end;

procedure TFrm_PChq.SELECIONARClick(Sender: TObject);
begin
fAbreChq('X');
end;

procedure TFrm_PChq.DESMARCARClick(Sender: TObject);
begin
fAbreChq(' ');
end;

procedure TFrm_PChq.FormCreate(Sender: TObject);
begin
Qr_ChqCHDTDEP.DisplayFormat :=fdt2;
Qr_ChqCHDTEMIS.DisplayFormat:=fdt2;
Qr_ChqCHVALOR.DisplayFormat :=mcasas;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

end;

procedure TFrm_PChq.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if Qr_ChqOK.AsString='X' then
   begin
   DBGrid1.Canvas.Brush.Color := $00DFFFDF;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

procedure TFrm_PChq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_PChq.FormKeyDown(Sender: TObject; var Key: Word;
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

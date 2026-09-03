unit S_PChq_CP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, S_SelEmp,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, Grids, func, db, dbtables, S_DM1,lerarq,
  DBGrids;

type
  TFrm_PChq_CP = class(TForm)
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
    Qr_ChqCHLOTSEQ: TFloatField;
    Qr_ChqCHCODEMP: TFloatField;
    CB_OMITIRDIA: TCheckBox;
    lbl_periodo: TLabel;
    MDTF: TMaskEdit;
    Label2: TLabel;
    lbl_codcli: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
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
    Qr_ChqFRAZAO: TStringField;
    Qr_ChqCHCODLDR_DEB: TFloatField;
    Qr_ChqCHCODLDR: TFloatField;
    procedure SAIRClick(Sender: TObject);
    procedure CB_TIPOExit(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MDTIExit(Sender: TObject);
    procedure MDTFExit(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
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
  Frm_PChq_CP: TFrm_PChq_CP;
  mQtdChq,mQtdSel: Integer;
  mTotchq,mTotSel: Real;
  Form_SelEmp: TFrm_SelEmp;

implementation

{$R *.dfm}

procedure TFrm_PChq_CP.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_PChq_CP.CB_TIPOExit(Sender: TObject);
begin
CB_TIPO.Text:=CB_TIPO.Items.Strings[CB_TIPO.ItemIndex];
end;

procedure TFrm_PChq_CP.bbAtualizarClick(Sender: TObject);
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

procedure TFrm_PChq_CP.FormActivate(Sender: TObject);
begin
MDTI.text:=FormatDateTime(fdt2, pdatasis);
MDTF.text:=FormatDateTime(fdt2, pdatasis);
bbAtualizar.Click;
MDTI.SetFocus;

end;

procedure TFrm_PChq_CP.MDTIExit(Sender: TObject);
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

procedure TFrm_PChq_CP.MDTFExit(Sender: TObject);
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

procedure TFrm_PChq_CP.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODFOR.Text) then
   BEGIN
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(CODFOR.TEXT))
                                    +' - '+DM1.Query1.fields[0].AsString);
      codfor.text := '';
      codfor.SetFocus;
   END else
      begin
      fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
      codfor.text := '';
      CODFOR.SetFocus;
      end;
   end;


end;

procedure TFrm_PChq_CP.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) then
   begin
   CODFOR.Text:=fChamafor(0,'Frm_RCliC',key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_PChq_CP.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_PChq_CP.NUMCHQIExit(Sender: TObject);
begin
NUMCHQI.Text:=fdeixanum2(NUMCHQI.Text);
if (trim(NUMCHQI.Text)<>'') and (Trim(NUMCHQF.Text)='') then
   NUMCHQF.Text:=NUMCHQI.Text;
end;

procedure TFrm_PChq_CP.NUMCHQFExit(Sender: TObject);
begin
NUMCHQF.Text:=fdeixanum2(NUMCHQF.Text);

end;

procedure TFrm_PChq_CP.VALORIExit(Sender: TObject);
begin
VALORI.Text:=FormatFloat(mcasas, ValFloat(VALORI.Text));
if (ValFloat(VALORI.Text)<>0) and (ValFloat(VALORF.Text)=0) then
   VALORF.Text:=VALORI.Text;

end;

procedure TFrm_PChq_CP.VALORIKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then Key:=DecimalSeparator;
end;

procedure TFrm_PChq_CP.VALORFExit(Sender: TObject);
begin
VALORF.Text:=FormatFloat(mcasas, ValFloat(VALORF.Text));

end;

function TFrm_PChq_CP.fAbreChq(pSel: String): Boolean;
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
              +'       CHCC,CHDTDEP,CHDTEMIS,CHVALOR,CHEMIT,CHLOTSEQ,CHSEQ,FRAZAO'
              +'        ,CHCOMP,CHCPF,CHRG,CHDTNAS,CHCODLDR_DEB,CHCODLDR '
              +'       from CADCHCP,CADFOR '
              +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
              +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' FCODEMP=0'+IntTostr(codemp)+' and')
              +' FCODFOR=CHCODFOR and CHSTATUS<>2 and CHSTATUS<9');
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


mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   Qr_Chq.sql.Add(' and CHCODFOR '+mcinst2);

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
Qr_Chq.Open;
fTotaliza(0);

result:=true;
end;

function TFrm_PChq_CP.fTotaliza(ptipo:Integer): Boolean;
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

procedure TFrm_PChq_CP.DBGrid1DblClick(Sender: TObject);
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

procedure TFrm_PChq_CP.SELECIONARClick(Sender: TObject);
begin
fAbreChq('X');
end;

procedure TFrm_PChq_CP.DESMARCARClick(Sender: TObject);
begin
fAbreChq(' ');
end;

procedure TFrm_PChq_CP.FormCreate(Sender: TObject);
begin
Qr_ChqCHDTDEP.DisplayFormat :=fdt2;
Qr_ChqCHDTEMIS.DisplayFormat:=fdt2;
Qr_ChqCHVALOR.DisplayFormat :=mcasas;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_PChq_CP.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if Qr_ChqOK.AsString='X' then
   begin
   DBGrid1.Canvas.Brush.Color := $00DFFFDF;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

procedure TFrm_PChq_CP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_PChq_CP.FormKeyDown(Sender: TObject; var Key: Word;
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

unit S_Editor_Richedit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls,db,dbtables,RichEdit;

type
  TFrm_Editor_Richedit = class(TForm)
    Panel2: TPanel;
    GroupBox4: TGroupBox;
    bbAdquirir_Texto01: TBitBtn;
    bbSalvar_Texto01: TBitBtn;
    GroupBox5: TGroupBox;
    bbAbrir_Texto01: TBitBtn;
    bbGravar_Texto01: TBitBtn;
    GroupBox6: TGroupBox;
    bbFonte_Texto01: TBitBtn;
    bbCorfundo_Texto01: TBitBtn;
    GroupBox8: TGroupBox;
    bbSubstituir_Texto01: TBitBtn;
    bbLocalizar_Texto01: TBitBtn;
    Panel1: TPanel;
    bbFechar: TBitBtn;
    bbGravar: TBitBtn;
    Texto01: TRichEdit;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    FindDialog1: TFindDialog;
    ColorDialog1: TColorDialog;
    FontDialog1: TFontDialog;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure bbFecharClick(Sender: TObject);
    procedure bbAdquirir_Texto01Click(Sender: TObject);
    procedure bbSalvar_Texto01Click(Sender: TObject);
    procedure bbFonte_Texto01Click(Sender: TObject);
    procedure bbCorfundo_Texto01Click(Sender: TObject);
    procedure bbGravarClick(Sender: TObject);
    procedure bbGravar_Texto01Click(Sender: TObject);
    procedure bbAbrir_Texto01Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

  public
    { Public declarations }
  end;
function fAbrirTexto_Rich(pCodEmp: Real; pCampo_Chave,pCampo: String): Boolean;
function fGravarTexto_Rich(pCodEmp: Real; pCampo_Chave,pCampo: String; pTexto: TRichEdit): Boolean;
procedure JustifyRichEdit(RichEdit :TRichEdit; AllText :Boolean);

var
  Frm_Editor_Richedit: TFrm_Editor_Richedit;
  f: TextFile;
  mRel_Chave: String;
  mRel_Campo: String;
  mRel_Codemp: Real;

implementation

uses S_DM1, Func, lerarq;

{$R *.dfm}

procedure TFrm_Editor_Richedit.bbFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Editor_Richedit.bbAdquirir_Texto01Click(Sender: TObject);
begin
If OpenDialog1.Execute Then
   Texto01.lines.loadfromfile(openDialog1.FileName);

end;

procedure TFrm_Editor_Richedit.bbSalvar_Texto01Click(Sender: TObject);
begin
If SaveDialog1.Execute Then
   Begin
   If FileExists(SaveDialog1.FileName) Then
      Begin
      If FMensagem('Deseja Substituir o Arquivo existente?',0,['1','2'],1)= mrYes Then
         Texto01.Lines.SaveToFile(SaveDialog1.FileName);
      end
   else
      Texto01.Lines.SaveToFile(SaveDialog1.FileName);
   end;

end;

procedure TFrm_Editor_Richedit.bbFonte_Texto01Click(Sender: TObject);
begin
FontDialog1.Font.Assign(Texto01.SelAttributes);
If FontDialog1.Execute Then
   If Texto01.SelLength > 0 Then
      Texto01.SelAttributes.Assign(FontDialog1.font)
   else
      Texto01.DefAttributes.Assign(FontDialog1.Font);

end;

procedure TFrm_Editor_Richedit.bbCorfundo_Texto01Click(Sender: TObject);
begin
ColorDialog1.Color := Texto01.Color;
If Colordialog1.Execute Then
   texto01.Color := ColorDialog1.Color;

end;


function fAbrirTexto_Rich(pCodEmp: Real; pCampo_Chave,pCampo: String): Boolean;
var
mTabTemp: String;
begin
result:=true;
DM1.Query3.Close;
DM1.Query3.sql.clear;
DM1.Query3.SQL.Add('Select TD_CODEMP,TD_CHAVE_REL,TD_CAMPO,TD_PAG,TD_TEXTO from CADTEXTO_DIV '
                  +' where TD_CODEMP=:TD_CODEMP '
                  +' and TD_CHAVE_REL=:TD_CHAVE_REL '
                  +' and TD_CAMPO  =:TD_CAMPO ');
DM1.Query3.ParamByName('TD_CODEMP').AsFloat    :=pCodEmp;
DM1.Query3.ParamByName('TD_CHAVE_REL').AsString:=pCampo_Chave;
DM1.Query3.ParamByName('TD_CAMPO').AsString:=pCampo;
DM1.Query3.Open;
mTabTemp:=fproctemp(41)+'.rtf';
if not DM1.Query3.Eof then
   begin
   While not DM1.Query3.Eof do
      begin
      assignfile(f,MtabTemp);
      rewrite(f);
      While not DM1.Query3.Eof do
         begin
         writeln(f,DM1.Query3.fieldbyName('TD_TEXTO').AsString);
         DM1.Query3.Next;
         end;
      closefile(f);
      end;
   end
else
   begin
   assignfile(f,mtabTemp);
   rewrite(f);
   writeln(f,'Não Encontrado');
   closefile(f);
   end;
Frm_Editor_Richedit.Texto01.Lines.LoadFromFile(mTabTemp);
DeleteFile(mTabTemp);
end;


function fGravarTexto_Rich(pCodEmp: Real; pCampo_Chave,pCampo: String; pTexto: TRichEdit): Boolean;
var
x,y: Integer;
mTextoTemp,mlinha,mlinha2: String;
begin
if (pcodemp>99) then
   pcodemp:=100-pcodemp;


DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from CADTEXTO_DIV  '
                  +' where TD_CODEMP=:TD_CODEMP '
                  +' and TD_CHAVE_REL=:TD_CHAVE_REL '
                  +' and TD_CAMPO=:TD_CAMPO ');
DM1.Query2.ParamByName('TD_CODEMP').AsFloat    :=pCodEmp;
DM1.Query2.ParamByName('TD_CHAVE_REL').AsString:=pCampo_Chave;
DM1.Query2.ParamByName('TD_CAMPO').AsString     :=pCampo;
try
  DM1.Query2.ExecSQL;
  fdm1StartCommit;
except
  DM1.Query2.sql.SavetoFile('C:\sql.txt');
  end;
mTextoTemp:=fProcTemp(42);
pTexto.Lines.SaveToFile(mTextoTemp);
assignfile(f,mTextoTemp);
reset(f);
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftString,'CODEMP',ptinput);
DM1.Query2.Params.CreateParam(ftString,'CHAVE_REL',ptinput);
DM1.Query2.Params.CreateParam(ftString,'CAMPO',ptinput);
DM1.Query2.Params.CreateParam(ftString,'PAG',ptinput);
DM1.Query2.Params.CreateParam(ftMemo,'TEXTO',ptinput);

DM1.Query2.SQL.Add(' Insert into CADTEXTO_DIV (TD_CODEMP,TD_CHAVE_REL,TD_CAMPO,TD_PAG,TD_TEXTO) '
              +' Values (:CODEMP,:CHAVE_REL,:CAMPO,:PAG,:TEXTO)');
DM1.Query2.ParambyName('CODEMP').Asfloat      :=pCodEmp;
DM1.Query2.ParambyName('CHAVE_REL').AsString  :=pCampo_Chave;
DM1.Query2.ParambyName('CAMPO').AsString      :=pCampo;


x:=0;
y:=0;
mlinha2:='';

while not eof(f) do
   begin
   readln(f,mlinha);
   x:=x+1;
   mlinha2:=mlinha2+mlinha;
   if (x>60) or eof(f) then
      begin
      x:=0;
      y:=y+1;
      DM1.Query2.ParambyName('PAG').AsFloat :=y;
      DM1.Query2.ParambyName('TEXTO').AsMemo   :=mlinha2;
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         DM1.Query2.sql.SavetoFile('C:\sql.txt');
         end;
      mlinha2:='';
      end;
   end;
closefile(f);
DeleteFile(mTextoTemp);
result:=true;

end;

procedure TFrm_Editor_Richedit.bbGravarClick(Sender: TObject);
begin
fGravarTexto_Rich(mrel_codemp,mrel_chave,mrel_campo,Texto01);

close;
end;

procedure TFrm_Editor_Richedit.bbGravar_Texto01Click(Sender: TObject);
begin
fGravarTexto_Rich(mrel_codemp,mrel_chave,mrel_campo,Texto01);

end;

procedure TFrm_Editor_Richedit.bbAbrir_Texto01Click(Sender: TObject);
begin
fAbrirTexto_Rich(mrel_codemp,mrel_chave,mrel_campo);

end;

procedure TFrm_Editor_Richedit.Button1Click(Sender: TObject);
begin
Texto01.alignment:=taleftjustify;
//Para justificar à esquerda
{
Texto01.alignment:=tacenter;
//Para justificar no centro
Texto01.alignment:=tarightjustify;
//Para justificar à direita
}
end;

procedure TFrm_Editor_Richedit.Button2Click(Sender: TObject);
begin
JustifyRichEdit(Texto01,true);

//Texto01.alignment:=tarightjustify;
//Para justificar à direita

end;

procedure TFrm_Editor_Richedit.Button3Click(Sender: TObject);
begin
Texto01.alignment:=tacenter;
//Para justificar no centro

end;

procedure JustifyRichEdit(RichEdit :TRichEdit; AllText :Boolean);
const
  TO_ADVANCEDTYPOGRAPHY   = $1;
  EM_SETTYPOGRAPHYOPTIONS = (WM_USER + 202);
  EM_GETTYPOGRAPHYOPTIONS = (WM_USER + 203);
var
  ParaFormat :TParaFormat;
  SelStart,
  SelLength :Integer;
begin
  ParaFormat.cbSize := SizeOf(ParaFormat);
  if SendMessage(RichEdit.handle,
              EM_SETTYPOGRAPHYOPTIONS,
              TO_ADVANCEDTYPOGRAPHY,
              TO_ADVANCEDTYPOGRAPHY) = 1 then
  begin
    SelStart := RichEdit.SelStart;
    SelLength := RichEdit.SelLength;
    if AllText then
      RichEdit.SelectAll;
    ParaFormat.dwMask := PFM_ALIGNMENT;
    ParaFormat.wAlignment := PFA_JUSTIFY;
    SendMessage(RichEdit.handle, EM_SETPARAFORMAT, 0, LongInt(@ParaFormat));
// Restaura seleção caso tenhamos mudado para All
    RichEdit.SelStart := SelStart;
    RichEdit.SelLength := SelLength;
  end;
end;

procedure TFrm_Editor_Richedit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;

end;

end.

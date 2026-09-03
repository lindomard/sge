unit S_Tab06;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, ExtCtrls, Buttons, S_DM1, db, dbtables, func,
  S_Tab07;

type
  TFrm_Tab06 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    Label1: TLabel;
    NOMARQ: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel4: TPanel;
    Label2: TLabel;
    NOMREL: TEdit;
    CB_TODOS: TCheckBox;
    Label3: TLabel;
    cb_tiporel: TComboBox;
    procedure FileListBox1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Tab06: TFrm_Tab06;
  morigem: Integer;
implementation

uses S_DM2, lerarq;

{$R *.dfm}

procedure TFrm_Tab06.FileListBox1Change(Sender: TObject);
begin
NOMARQ.Text:=FileListBox1.FileName;
end;

procedure TFrm_Tab06.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Tab06.BitBtn1Click(Sender: TObject);
var
f: textFile;
mdoc, mtab, mlinha,mnomrel: String;
mcod: Real;
y, x: Integer;
begin
if CB_TODOS.Checked then
   begin
   NOMARQ.Text:='';
   NOMREL.Text:='';
   end
else if not FileExists(Trim(NOMARQ.Text)) then
   Begin
   ShowMessage('Favor Digitar um nome de Arquivo Valido.');
   FileListBox1.SetFocus;
   abort;
   end;
y:=0;
application.CreateForm(TFrm_Tab07, Frm_Tab07);

While true do
   begin
   if CB_TODOS.Checked then
      NOMARQ.Text:=FileListBox1.Items[y];
   AssignFile(f,Trim(NOMARQ.Text));
   Reset(f);
   Readln(f,mlinha);
   if Trim(NOMREL.Text)='' then
      begin
      NOMREL.Text:=Trim(copy(mlinha,31,50));
      NOMREL.Update;
      end;
   mdoc:=Trim(copy(mlinha,21,10));
   mnomrel:=nomrel.Text;
   DM1.Tb_TDVCA.Close;
   IF cb_tiporel.itemindex=1 then
//   if mreltab='NF' then
      mtab:='CADTAB'
   else
      mtab:='CADTDV';

    fltdvca(0,codemp,Trim(Copy(mlinha,21,10)),mnomrel,mtab);

   if not CB_TODOS.Checked then
      begin
      if not DM1.Tb_TDVCA.Eof then
         begin
         if fmensagem('Ja Existe um Aquivo com Este mesmo Nome. Deseja Sobrepor?',0,['1','2'],2)=mrNo then
            begin
            NOMREL.SetFocus;
            abort;
            end;
         end;
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CTDVCA where ');
   if not DM1.Qr_Tid.Locate('TINOME',mtab,[]) then
      DM1.Query1.sql.add(' TCCODEMP=0'+IntToStr(codemp)+' and ');
   DM1.Query1.Sql.add(' TCDOC='+chr(39)+Trim(copy(mlinha,21,10))+chr(39)
                     +' and TCNOME='+chr(39)+mnomrel+chr(39));
   DM1.Query1.ExecSQL;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CTDVOP where ');
   if not DM1.Qr_Tid.Locate('TINOME',mtab,[]) then
      DM1.Query1.sql.add(' TOCODEMP='+IntToStr(codemp)+' and ');
   DM1.Query1.SQL.add(' TODOC='+chr(39)+Trim(copy(mlinha,21,10))+chr(39)
                     +' and TONOME='+chr(39)+mnomrel+chr(39));
   DM1.Query1.ExecSQL;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CTDVFT where ');
   if not DM1.Qr_Tid.Locate('TINOME',mtab,[]) then
      DM1.Query1.sql.add(' TFCODEMP='+IntToStr(codemp)+' and ');
   DM1.Query1.SQL.add(' TFDOC='+chr(39)+Trim(copy(mlinha,21,10))+chr(39)
                     +' and TFNOME='+chr(39)+mnomrel+chr(39));
   DM1.Query1.ExecSQL;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CTDVFE where ');
   if not DM1.Qr_Tid.Locate('TINOME',mtab,[]) then
      DM1.Query1.sql.add(' FECODEMP='+IntToStr(codemp)+' and ');
   DM1.Query1.SQL.add(' FEDOC='+chr(39)+Trim(copy(mlinha,21,10))+chr(39)
                     +' and FENOME='+chr(39)+mnomrel+chr(39));
   DM1.Query1.ExecSQL;


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CTDVJC where ');
   if not DM1.Qr_Tid.Locate('TINOME',mtab,[]) then
      DM1.Query1.sql.add(' JCCODEMP='+IntToStr(codemp)+' and ');
   DM1.Query1.SQL.add(' JCDOC='+chr(39)+Trim(copy(mlinha,21,10))+chr(39)
                     +' and JCNOME='+chr(39)+mnomrel+chr(39));
   DM1.Query1.ExecSQL;



   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADTDV where ');
   if not DM1.Qr_Tid.Locate('TINOME',mtab,[]) then
      DM1.Query1.Sql.add(' TCODEMP='+IntToStr(codemp)+' and ');
   DM1.Query1.Sql.add(' TDOC='+chr(39)+Trim(copy(mlinha,21,10))+chr(39)
                     +' and TNOME='+chr(39)+mnomrel+chr(39));
   DM1.Query1.ExecSQL;


   fltdvop(0,codemp,mreltab,Trim(NOMREL.Text),mtab,'','','');


   DM2.Tb_TDVFE.Close;
   DM2.Tb_TDVFE.SQL.Clear;
   DM2.Tb_TDVFE.SQL.add('Select * from CTDVFE where FECODEMP is null');
   DM2.Tb_TDVFE.Open;
   fltdvft(0,codemp,mreltab,Trim(NOMREL.Text),'','CADTDV');


   flcadtdv(0,codemp,mreltab,NOMREL.Text,'','','CADTDV');

   fltdvjc(0,codemp,mreltab,Trim(NOMREL.Text),'','','','CADTDV');

   // While not (eof(f)) and (trim(mlinha)<>'')do
   While trim(mlinha)<>'' do
      begin
      if Trim(copy(mlinha,1,10))='CTDVJC' then
         begin
         fmCTDVJC(0);
         DM2.Tb_JC.Append;
         for x:=0 to Frm_Tab07.STG1.RowCount-1 do
            begin
            if Trim(Frm_Tab07.STG1.Cells[0,x])='' then
               Continue;
            if Frm_Tab07.STG1.Cells[0,x]='JCCODEMP' then
               DM2.Tb_JCJCCODEMP.Value:=codemp
            else if Frm_Tab07.STG1.Cells[0,x]='JCNOME' then
               DM2.Tb_JCJCNOME.Value:=mnomrel
            else if Frm_Tab07.STG1.Cells[0,x]='JCDOC' then
               DM2.Tb_JCJCDOC.Value:=mdoc
            else if Frm_Tab07.STG1.Cells[1,X]='I' then
               begin
               DM2.Tb_JC.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=ValFloat(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])));
               end
            else if Frm_Tab07.STG1.Cells[1,X]='N' then
               begin
               DM2.Tb_JC.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=(ValFloat(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])))*100);
               end
            else if Frm_Tab07.STG1.Cells[1,X]='D' then
               begin
               DM2.Tb_JC.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=StrToDate(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])));
               end
            else
               DM2.Tb_JC.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=Trim(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])));
            end;
         DM2.Tb_JC.Post;
         end
      else if Trim(copy(mlinha,1,10))='CTDVCA' then
         begin
         fmCTDVCA(0);
         DM1.Tb_TDVCA.Append;
         for x:=0 to Frm_Tab07.STG1.RowCount-1 do
            begin
            if Trim(Frm_Tab07.STG1.Cells[0,x])='' then
               Continue;
            if Frm_Tab07.STG1.Cells[0,x]='TCCODEMP' then
               DM1.Tb_TDVCATCCODEMP.Value:=codemp
            else if Frm_Tab07.STG1.Cells[0,x]='TCNOME' then
               DM1.Tb_TDVCATCNOME.Value:=mnomrel
            else if Frm_Tab07.STG1.Cells[0,x]='TCDOC' then
               DM1.Tb_TDVCATCDOC.Value:=mdoc
            else if Frm_Tab07.STG1.Cells[1,X]='I' then
               begin
               DM1.Tb_TDVCA.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=ValFloat(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])));
               end
            else if Frm_Tab07.STG1.Cells[1,X]='N' then
               begin
               DM1.Tb_TDVCA.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=(ValFloat(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])))*100);
               end
            else if Frm_Tab07.STG1.Cells[1,X]='D' then
               begin
               DM1.Tb_TDVCA.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=StrToDate(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])));
               end
            else
               DM1.Tb_TDVCA.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=Trim(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])));
            end;
         DM1.Tb_TDVCA.Post;
         end
      else if Trim(copy(mlinha,1,10))='CTDVOP' then
         begin
         fmCTDVOP(0);
         DM2.Tb_Op.Append;
         for x:=0 to Frm_Tab07.STG1.RowCount-1 do
            begin
            if Trim(Frm_Tab07.STG1.Cells[0,x])='' then
               Continue;
            if Frm_Tab07.STG1.Cells[0,x]='TOCODEMP' then
               DM2.Tb_OPTOCODEMP.Value:=codemp
            else if Frm_Tab07.STG1.Cells[0,x]='TONOME' then
               DM2.Tb_OpTONOME.Value:=mnomrel
            else if Frm_Tab07.STG1.Cells[0,x]='TODOC' then
               DM2.Tb_OpTODOC.Value:=mdoc
            else if Frm_Tab07.STG1.Cells[1,X]='I' then
               begin
               DM2.Tb_Op.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=ValFloat(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])));
               end
            else if Frm_Tab07.STG1.Cells[1,X]='N' then
               begin
               DM2.Tb_Op.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=(ValFloat(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])))*100);
               end
            else if Frm_Tab07.STG1.Cells[1,X]='D' then
               begin
               DM2.Tb_Op.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=StrToDate(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])));
              end
            else
               begin
               DM2.Tb_Op.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=Trim(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])));
               end;
            end;
         DM2.Tb_Op.Post;
         end
      else if Trim(copy(mlinha,1,10))='CADTDV' then
         begin
         fmCADTDV(0);
         DM1.Tb_TDV.Append;
         for x:=0 to Frm_Tab07.STG1.RowCount-1 do
            begin
            if Trim(Frm_Tab07.STG1.Cells[0,x])='' then
               Continue;
            if Frm_Tab07.STG1.Cells[0,x]='TCODEMP' then
               DM1.Tb_TDVTCODEMP.Value:=codemp
            else if Frm_Tab07.STG1.Cells[0,x]='TNOME' then
               DM1.Tb_TDVTNOME.Value:=mnomrel
            else if Frm_Tab07.STG1.Cells[0,x]='TDOC' then
               DM1.Tb_TDVTDOC.Value:=mdoc
            else if Frm_Tab07.STG1.Cells[1,X]='I' then
               begin
               DM1.Tb_TDV.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=ValFloat(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])));
               end
            else if Frm_Tab07.STG1.Cells[1,X]='N' then
               begin
               DM1.Tb_TDV.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=(ValFloat(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])))*100);
               end
            else if Frm_Tab07.STG1.Cells[1,X]='D' then
               begin
               DM1.Tb_TDV.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=StrToDate(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])));
              end
            else
               DM1.Tb_TDV.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=Trim(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])));
            end;
         DM1.Tb_TDV.Post;
         end
      else if Trim(copy(mlinha,1,10))='CTDVFT' then
         begin
         fmCTDVFT(0);
         DM1.Tb_TDVFT.Append;
         for x:=0 to Frm_Tab07.STG1.RowCount-1 do
            begin
            if Trim(Frm_Tab07.STG1.Cells[0,x])='' then
               Continue;
            if Frm_Tab07.STG1.Cells[0,x]='TFCODEMP' then
               DM1.Tb_TDVFTTFCODEMP.Value:=codemp
            else if Frm_Tab07.STG1.Cells[0,x]='TFNOME' then
               DM1.Tb_TDVFTTFNOME.Value:=mnomrel
            else if Frm_Tab07.STG1.Cells[0,x]='TFCODIGO' then
               DM1.Tb_TDVFTTFNOME.Value:=mnomrel
            else if Frm_Tab07.STG1.Cells[0,x]='TFDOC' then
               DM1.Tb_TDVFTTFDOC.Value:=mdoc
            else if Frm_Tab07.STG1.Cells[1,X]='I' then
               begin
               DM1.Tb_TDVFT.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=ValFloat(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])));
               end
            else if Frm_Tab07.STG1.Cells[1,X]='N' then
               begin
               DM1.Tb_TDVFT.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=(ValFloat(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])))*100);
               end
            else if Frm_Tab07.STG1.Cells[1,X]='D' then
               begin
               DM1.Tb_TDVFT.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=StrToDate(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])));
              end
            else
               DM1.Tb_TDVFT.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=Trim(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])));
            end;
         DM1.Tb_TDVFT.Post;
         end
//inicio fe
      else if Trim(copy(mlinha,1,10))='CTDVFE' then
         begin
         fmCTDVFE(0);
         DM2.Tb_TDVFE.Append;
         for x:=0 to Frm_Tab07.STG1.RowCount-1 do
            begin
            if Trim(Frm_Tab07.STG1.Cells[0,x])='' then
               Continue;
            if Frm_Tab07.STG1.Cells[0,x]='FECODEMP' then
               DM2.Tb_TDVFEFECODEMP.Value:=codemp
            else if Frm_Tab07.STG1.Cells[0,x]='FENOME' then
               DM2.Tb_TDVFEFENOME.Value:=mnomrel
            else if Frm_Tab07.STG1.Cells[0,x]='FEDOC' then
               DM2.Tb_TDVFEFEDOC.Value:=mdoc
            else if Frm_Tab07.STG1.Cells[1,X]='I' then
               begin
               DM2.Tb_TDVFE.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=ValFloat(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])));
               end
            else if Frm_Tab07.STG1.Cells[1,X]='N' then
               begin
               DM2.Tb_TDVFE.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=(ValFloat(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])))*100);
               end
            else if Frm_Tab07.STG1.Cells[1,X]='D' then
               begin
               DM2.Tb_TDVFE.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=StrToDate(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])));
              end
            else
               DM2.Tb_TDVFE.FieldByName(Frm_Tab07.STG1.Cells[0,x]).Value:=Trim(copy(mlinha,StrToInt(Frm_Tab07.STG1.Cells[3,x]),StrToInt(Frm_Tab07.STG1.Cells[2,x])));
            end;
         DM2.Tb_TDVFE.Post;
         end;

      mlinha:='';
      Readln(f,mlinha);
      end;
   Closefile(f);
   y:=y+1;
   if not (CB_TODOS.Checked) or (y>FileListBox1.Count-1) then
      break;
   NOMREL.Text:='';
   end;
frm_Tab07.Free;
ShowMessage('Concluido');
end;

procedure TFrm_Tab06.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.

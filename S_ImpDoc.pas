unit S_ImpDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, ExtCtrls, Buttons, S_DM1, db, dbtables, func;

type
  TFrm_ImpDoc = class(TForm)
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
    procedure FileListBox1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure NOMRELKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ImpDoc: TFrm_ImpDoc;

implementation

{$R *.dfm}

procedure TFrm_ImpDoc.FileListBox1Change(Sender: TObject);
begin
NOMARQ.Text:=FileListBox1.FileName;
end;

procedure TFrm_ImpDoc.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_ImpDoc.BitBtn1Click(Sender: TObject);
var
f: textFile;
mlinha,mnomrel: String;
mcod: Real;
begin
if not FileExists(Trim(NOMARQ.Text)) then
   Begin
   ShowMessage('Favor Digitar um nome de Arquivo Valido.');
   FileListBox1.SetFocus;
   abort;
   end;
AssignFile(f,Trim(NOMARQ.Text));
Reset(f);
Readln(f,mlinha);
if Trim(NOMREL.Text)='' then
   begin
   NOMREL.Text:=Trim(copy(mlinha,12,4));
   NOMREL.Update;
   end;
mnomrel:=nomrel.Text;
DM1.Tb_TCa.Close;
DM1.Tb_Tca.SQl.Clear;
DM1.Tb_Tca.SQL.add('Select * from CADTCA where ');
if DM1.Qr_TID.Locate('TINOME','CADTAB' ,[]) then
   DM1.Tb_Tca.SQl.add(' TCDOC=0'+NOMREL.Text)
else
   DM1.Tb_Tca.SQL.add(' TCCODEMP='+IntTostr(codemp)
                     +' and TCDOC=0'+NOMREL.text);
DM1.Tb_Tca.Open;
if not DM1.Tb_TCA.Eof then
   begin
   if fmensagem('Ja Existe um Aquivo com Este mesmo Nome. Deseja Sobrepor?',0,['1','2'],2)=mrNo then
      begin
      NOMREL.SetFocus;
      abort;
      end;
   DM1.SG_ASSOC.StartTransaction;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADTCA where ');
   if not DM1.Qr_Tid.Locate('TINOME','CADTAB',[]) then
      DM1.Query1.sql.add(' TCCODEMP=0'+IntToStr(codemp));
   DM1.Query1.Sql.add(' and TCDOC=0'+Trim(copy(mlinha,12,4)));
   DM1.Query1.ExecSQL;
   DM1.SG_ASSOC.Commit;

   DM1.SG_ASSOC.StartTransaction;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADTAB where ');
   if not DM1.Qr_Tid.Locate('TINOME','CADTAB',[]) then
      DM1.Query1.Sql.add(' TCODEMP='+IntToStr(codemp));
   DM1.Query1.Sql.add(' and TDOC='+Trim(copy(mlinha,12,4)));
   DM1.Query1.ExecSQL;
   DM1.SG_ASSOC.Commit;
   end;

// While not (eof(f)) and (trim(mlinha)<>'')do
While trim(mlinha)<>'' do
   begin
   DM1.SG_ASSOC.StartTransaction;
   DM1.Query1.Close;
   DM1.query1.Params.Clear;
   DM1.Query1.SQl.Clear;
   if copy(mlinha,1,6)='CADTCA' then
      begin
      DM1.Query1.Params.CreateParam(ftstring,'OBS',ptinput);
      DM1.Query1.SQL.Add('Insert into CADTCA ('
                        +'TCCODEMP, '
                        +'TCDOC, '
                        +'TCQTDLIN, '
                        +'TCQTDCOL, '
                        +'TCFPADRAO, '
                        +'TCQTDITEM, '
                        +'TCQTDLPP, '
                        +'TCQTDSER, '
                        +'TCIMPDA, '
                        +'TCOBS) values ('
                        +IntTostr(codemp)+','
                        +copy(mlinha,12,4)+',' // doc
                        +copy(mlinha,16,4)+',' // qtdlin
                        +copy(mlinha,20,4)+',' // qtd col
                        +copy(mlinha,24,4)+',' // fonte padrao
                        +copy(mlinha,28,4)+',' // qtd item
                        +copy(mlinha,32,4)+',' // qtd linha por polegada
                        +copy(mlinha,236,4)+',' // qtd item servicos
                        +copy(mlinha,240,4)+',' // imp descricao alternada
                        +':OBS)');
      DM1.Query1.Params[0].AsString:=Trim(copy(mlinha,36,200));
      end
   else if copy(mlinha,1,6)='CADTAB' then
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Select max(TSEQ) from CADTAB ');
      if DM1.Qr_Tid.Locate('TINOME','CADTAB',[]) then
         DM1.Query2.SQL.add(' where TCODEMP=0'+IntToStr(codemp));
      DM1.Query2.Open;
      DM1.Query1.Params.CreateParam(ftstring,'CAMPO',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'DCAMPO',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'TIPOC',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'FORMATO',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'CONDT1',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'COND01',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'CONDOP',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'CONDT2',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'COND02',ptinput);
      mcod:=DM1.Query2.Fields[0].AsFloat+1;
      DM1.Query1.SQL.Add('Insert Into CADTAB ('
                        +'TCODEMP, '
                        +'TDOC, '
                        +'TLOCAL, '
                        +'TSEQ, '
                        +'TLIN, '
                        +'TCOL, '
                        +'TFONTE, '
                        +'TTIPO, '
                        +'TALINHAR,'
                        +'TTAM, '
                        +'TCAMPO, '
                        +'TDCAMPO, '
                        +'TTIPOC, '
                        +'TFORMATO, '
                        +'TCONDT1, '
                        +'TCOND01, '
                        +'TCONDOP, '
                        +'TCONDT2, '
                        +'TCOND02) values ('
                        +IntToStr(codemp)+','
                        +copy(mlinha,12,4)+',' // doc
                        +copy(mlinha,16,4)+',' // LOCAL
                        +FloatTostr(mcod)+','
                        +copy(mlinha,30,4)+','  // linha
                        +copy(mlinha,34,4)+','  // coluna
                        +copy(mlinha,38,4)+',' // fonte
                        +copy(mlinha,42,4)+',' // tipo
                        +copy(mlinha,327,4)+',' // alinhar
                        +copy(mlinha,331,4)+',' // tamanho
                        +':CAMPO, '
                        +':DCAMPO, '
                        +':TIPOC, '
                        +':FORMATO, '
                        +':CONDT1, '
                        +':CONDO1, '
                        +':CONDOP, '
                        +':CONDT2, '
                        +':COND02)');
      DM1.Query1.Params[0].AsString:=Trim(copy(mlinha,46,140)); // campo
      DM1.Query1.Params[1].AsString:=Trim(copy(mlinha,186,140));  //dcampo
      DM1.Query1.Params[2].AsString:=Trim(copy(mlinha,326,1));   //tipoc
      DM1.Query1.Params[3].AsString:=Trim(copy(mlinha,335,40));  // formato
      DM1.Query1.Params[4].AsString:=Trim(copy(mlinha,375,1));   //condt1
      DM1.Query1.Params[5].AsString:=Trim(copy(mlinha,376,30));  //cond01
      DM1.Query1.Params[6].AsString:=Trim(copy(mlinha,406,5));   // condop
      DM1.Query1.Params[7].AsString:=Trim(copy(mlinha,411,1));  // condt2
      DM1.Query1.Params[8].AsString:=Trim(copy(mlinha,412,30)); // cond02
      end
   else
      begin
      ShowMessage('O Arquivo de Importacao contem informacao Invalida.');
      NOMREL.SetFocus;
      abort;
      end;
   DM1.Query1.ExecSQL;
   DM1.SG_ASSOC.Commit;
   mlinha:='';
   Readln(f,mlinha);
   end;
DM1.Query1.Close;
DM1.Query1.Params.Clear;
ShowMessage('Concluido');
end;

procedure TFrm_ImpDoc.NOMRELKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_ImpDoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

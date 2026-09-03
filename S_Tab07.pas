unit S_Tab07;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, ExtCtrls, Buttons, db, dbtables, func, S_DM1,
  S_DM2, Grids;

type
  TFrm_Tab07 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DirectoryListBox1: TDirectoryListBox;
    Panel4: TPanel;
    DriveComboBox1: TDriveComboBox;
    Label1: TLabel;
    NOMARQ: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    STG1: TStringGrid;
    CB_TODOS: TCheckBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function fmCTDVCA(ptipo: Integer): Boolean;
function fmCADTDV(ptipo: Integer): Boolean;
function fmCTDVOP(ptipo: Integer): Boolean;
function fmCTDVFT(ptipo: Integer): Boolean;
function fmCTDVFE(ptipo: Integer): Boolean;
function fmCTDVJC(ptipo: Integer): Boolean;

var
  Frm_Tab07: TFrm_Tab07;
  mpesq: String;
implementation

uses lerarq;


{$R *.dfm}

procedure TFrm_Tab07.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Tab07.BitBtn1Click(Sender: TObject);
var
f: TextFile;
mpasta,mnomarq: String;
x: Integer;
mlinha:String;

begin
mpesq:='CADTDV';
mnomarq:=DirectoryListBox1.Directory;
if copy(mnomarq,length(mnomarq),1)<>'\' then
   mnomarq:=mnomarq+'\';
mpasta:=mnomarq;
if not (CB_TODOS.Checked) and (Trim(NOMARQ.Text)='') then
   NOMARQ.Text:=DM1.Tb_TDVCATCNOME.Value;
mnomarq:=mnomarq+Trim(NOMARQ.Text);
if FileExists(mnomarq) then
   begin
   if fmensagem('Este Arquivo ja Existe. Deseja Sobrepor?',0,['1','2'],2)=mrNo then
      begin
      NOMARQ.SetFocus;
      abort;
      end;
   end;
if CB_TODOS.Checked then
   fltdvca(0,codemp,'','','CADTDV')
else
   fltdvca(0,codemp,Dm1.Tb_TDVCATCDOC.AsString,
                    DM1.Tb_TDVCATCNOME.AsString,'CADTDV');

DM1.Tb_TDVCA.First;
While not DM1.Tb_TDVCA.eof do
   begin
   if CB_TODOS.Checked then
      mnomarq:=mpasta+fretespacos(DM1.Tb_TDVCATCNOME.Value);
   AssignFile(f,mnomarq);
   Rewrite(f);
   fmCTDVCA(0);
   mlinha:='CTDVCA    ';
   for x:=0 to Frm_Tab07.STG1.Rowcount-1 do
      begin
      if Trim(Frm_Tab07.STG1.Cells[0,x])='' then
         Continue;
      if Frm_Tab07.STG1.Cells[1,X]='I' then
         begin
         mlinha:=mlinha+FormatFloat(insere('0','0',StrToInt(Frm_Tab07.STG1.Cells[2,x])),
                                   zeranegreal(DM1.Tb_TDVCA.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsFloat));
         end
      else if Frm_Tab07.STG1.Cells[1,X]='N' then
         begin
         mlinha:=mlinha+FormatFloat(insere('0','0',StrToInt(Frm_Tab07.STG1.Cells[2,x])),
                                   zeranegreal((DM1.Tb_TDVCA.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsFloat*100)));
         end
      else if Frm_Tab07.STG1.Cells[1,X]='D' then
         begin
         mlinha:=mlinha+FormatDateTime(fdt,DM1.Tb_TDVCA.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsDateTime);
         end
      else
         begin
         mlinha:=mlinha+insere2(Trim(DM1.Tb_TDVCA.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsString),' ',StrToInt(Frm_Tab07.STG1.Cells[2,x]));
         end;
      end;
   Writeln(f,mlinha);
   fmCTDVOP(0);
   DM2.Tb_Op.Close;

   fltdvop(0,DM1.Tb_TDVCATCCODEMP.AsInteger,DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,mpesq,'','','');

   While not DM2.Tb_Op.Eof do
      begin
      mlinha:='CTDVOP    ';
      for x:=0 to Frm_Tab07.STG1.Rowcount-1 do
         begin
         if Trim(Frm_Tab07.STG1.Cells[0,x])='' then
            Continue;
         if Frm_Tab07.STG1.Cells[1,X]='I' then
            begin
            mlinha:=mlinha+FormatFloat(insere('0','0',StrToInt(Frm_Tab07.STG1.Cells[2,x])),
                                      zeranegreal(DM2.Tb_Op.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsFloat));
            end
         else if Frm_Tab07.STG1.Cells[1,X]='N' then
            begin
            mlinha:=mlinha+FormatFloat(insere('0','0',StrToInt(Frm_Tab07.STG1.Cells[2,x])),
                                      zeranegreal((DM2.Tb_Op.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsFloat*100)));
            end
         else if Frm_Tab07.STG1.Cells[1,X]='D' then
            begin
            mlinha:=mlinha+FormatDateTime(fdt,DM2.Tb_Op.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsDateTime);
            end
         else
            begin
            mlinha:=mlinha+insere2(Trim(DM2.Tb_Op.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsString),' ',StrToInt(Frm_Tab07.STG1.Cells[2,x]));
            end;
         end;
      Writeln(f,mlinha);
      DM2.Tb_Op.Next;
      end;
   DM1.Tb_TDV.Close;
   if DM1.Qr_Tid.Locate('TINOME',mpesq,[]) then
      flcadtdv(0,DM1.Tb_TDVCATCCODEMP.AsInteger,DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,'','',mpesq)
   else
      flcadtdv(0,DM1.Tb_TDVCATCCODEMP.AsInteger,DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,'','',mpesq);

   fmCADTDV(0);
   While not DM1.Tb_TDV.Eof do
      begin
      mlinha:='CADTDV    ';
      for x:=0 to Frm_Tab07.STG1.Rowcount-1 do
         begin
         if Trim(Frm_Tab07.STG1.Cells[0,x])='' then
            Continue;
         if Frm_Tab07.STG1.Cells[1,X]='I' then
            begin
            mlinha:=mlinha+FormatFloat(insere('0','0',StrToInt(Frm_Tab07.STG1.Cells[2,x])),
                                      zeranegreal(DM1.Tb_TDV.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsFloat));
            end
         else if Frm_Tab07.STG1.Cells[1,X]='N' then
            begin
            mlinha:=mlinha+FormatFloat(insere('0','0',StrToInt(Frm_Tab07.STG1.Cells[2,x])),
                                       zeranegreal((DM1.Tb_TDV.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsFloat*100)));
            end
         else if Frm_Tab07.STG1.Cells[1,X]='D' then
            begin
            mlinha:=mlinha+FormatDateTime(fdt,DM1.Tb_TDV.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsDateTime);
            end
         else
            begin
            mlinha:=mlinha+insere2(Trim(DM1.Tb_TDV.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsString),' ',StrToInt(Frm_Tab07.STG1.Cells[2,x]));
            end;
         end;
      Writeln(f,mlinha);
      DM1.Tb_TDV.Next;
      end;
   fltdvft(0,DM1.Tb_TDVCATCCODEMP.AsInteger,DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,'',mpesq);

   fmCTDVFT(0);
   While not DM1.Tb_TDVFT.Eof do
      begin
      mlinha:='CTDVFT    ';
      for x:=0 to Frm_Tab07.STG1.Rowcount-1 do
         begin
         if Trim(Frm_Tab07.STG1.Cells[0,x])='' then
            Continue;
         if Frm_Tab07.STG1.Cells[1,X]='I' then
            begin
            mlinha:=mlinha+FormatFloat(insere('0','0',StrToInt(Frm_Tab07.STG1.Cells[2,x])),
                                      zeranegreal(DM1.Tb_TDVFT.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsFloat));
            end
         else if Frm_Tab07.STG1.Cells[1,X]='N' then
            begin
            mlinha:=mlinha+FormatFloat(insere('0','0',StrToInt(Frm_Tab07.STG1.Cells[2,x])),
                                      zeranegreal((DM1.Tb_TDVFT.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsFloat*100)));
            end
         else if Frm_Tab07.STG1.Cells[1,X]='D' then
            begin
            mlinha:=mlinha+FormatDateTime(fdt,DM1.Tb_TDVFT.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsDateTime);
            end
         else
            begin
            mlinha:=mlinha+insere2(Trim(DM1.Tb_TDVFT.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsString),' ',StrToInt(Frm_Tab07.STG1.Cells[2,x]));
            end;
         end;
      Writeln(f,mlinha);
      DM1.Tb_TDVFT.Next;
      end;
// INICIO CTDVFE
   DM2.Tb_TDVFE.Close;
   DM2.Tb_TDVFE.SQL.Clear;
   DM2.Tb_TDVFE.SQL.add('Select * from CTDVFE where '
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADTDV',[]),'',' FECODEMP=0'+InttoStr(codemp)+' and ')
                       +' FEDOC='+chr(39)+DM1.Tb_TDVCATCDOC.Value+chr(39)
                       +' and FENOME='+chr(39)+DM1.Tb_TDVCATCNOME.Value+chr(39));
   DM2.Tb_TDVFE.Open;

   fmCTDVFE(0);
   While not DM2.Tb_TDVFE.Eof do
      begin
      mlinha:='CTDVFE    ';
      for x:=0 to Frm_Tab07.STG1.Rowcount-1 do
         begin
         if Trim(Frm_Tab07.STG1.Cells[0,x])='' then
            Continue;
         if Frm_Tab07.STG1.Cells[1,X]='I' then
            begin
            mlinha:=mlinha+FormatFloat(insere('0','0',StrToInt(Frm_Tab07.STG1.Cells[2,x])),
                                      zeranegreal(DM2.Tb_TDVFE.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsFloat));
            end
         else if Frm_Tab07.STG1.Cells[1,X]='N' then
            begin
            mlinha:=mlinha+FormatFloat(insere('0','0',StrToInt(Frm_Tab07.STG1.Cells[2,x])),
                                      zeranegreal((DM2.Tb_TDVFE.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsFloat*100)));
            end
         else if Frm_Tab07.STG1.Cells[1,X]='D' then
            begin
            mlinha:=mlinha+FormatDateTime(fdt,DM2.Tb_TDVFE.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsDateTime);
            end
         else
            begin
            mlinha:=mlinha+insere2(Trim(DM2.Tb_TDVFE.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsString),' ',StrToInt(Frm_Tab07.STG1.Cells[2,x]));
            end;
         end;
      Writeln(f,mlinha);
      DM2.Tb_TDVFE.Next;
      end;


/// INICIO JC
//   if DM1.Qr_Tid.Locate('TINOME',mpesq,[]) then
//      mcinst:='0'
//   else
      mcinst:= DM1.Tb_TDVCATCCODEMP.AsString;
   fltdvjc(0,ValInt(mcinst),DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,'','','',mpesq);

   fmCTDVJC(0);
   While not DM2.Tb_JC.Eof do
      begin
      mlinha:='CTDVJC    ';
      for x:=0 to Frm_Tab07.STG1.Rowcount-1 do
         begin
         if Trim(Frm_Tab07.STG1.Cells[0,x])='' then
            Continue;
         if Frm_Tab07.STG1.Cells[1,X]='I' then
            begin
            mlinha:=mlinha+FormatFloat(insere('0','0',StrToInt(Frm_Tab07.STG1.Cells[2,x])),
                                      zeranegreal(DM2.Tb_JC.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsFloat));
            end
         else if Frm_Tab07.STG1.Cells[1,X]='N' then
            begin
            mlinha:=mlinha+FormatFloat(insere('0','0',StrToInt(Frm_Tab07.STG1.Cells[2,x])),
                                      zeranegreal((DM2.Tb_JC.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsFloat*100)));
            end
         else if Frm_Tab07.STG1.Cells[1,X]='D' then
            begin
            mlinha:=mlinha+FormatDateTime(fdt,DM2.Tb_JC.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsDateTime);
            end
         else
            begin
            mlinha:=mlinha+insere2(Trim(DM2.Tb_JC.FieldbyName(Frm_Tab07.STG1.Cells[0,x]).AsString),' ',StrToInt(Frm_Tab07.STG1.Cells[2,x]));
            end;
         end;
      Writeln(f,mlinha);
      DM2.Tb_JC.Next;
      end;
// FIM JC

   CloseFile(f);
   DM1.Tb_TDVCA.Next;
   end;
messagedlg('Exportação Concluida!',mtInformation,[mbOK],0);

end;

function fmCTDVCA(ptipo: Integer): Boolean;
var
mlinha: Integer;
posfim: Integer;
begin

posfim:=11;
// arquivo CTDVCA
Frm_Tab07.STG1.RowCount:=1;
mlinha:=0;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCCODEMP'; // nome do Campo
Frm_Tab07.STG1.Cells[1,mlinha]:='I';        // tipo do Campo I-Inteiro V-Valor D-Data S-String
Frm_Tab07.STG1.Cells[2,mlinha]:='10';       // tamanho
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);


mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCDOC';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='10';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCNOME';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='50';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCQTDLIN';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCQTDCOL';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCFPADRAO';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCQTDLPP';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCNUMCOL';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCINTCOL';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCTPCOL';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCORDEM';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCMPAGGR';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCOBS';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='200';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCTPESQ';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCTPREL';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCIMPG';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCIMPSG';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCAVPTPI';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCAVPIPF';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCSTATUS';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCVIS';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCQTDITEM';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCQTDSER';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCIMPDA';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCTAB01';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='40';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCTAB02';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='40';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCTAB02N';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='03';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCTAB03';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='40';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCTAB03N';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='03';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCTAB04';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='40';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCTAB04N';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='03';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCTAB05';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='40';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCTAB05N';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='03';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCORDEM2';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='240';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCFILTRO';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='240';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCCONT_M';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='30';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCCONT_R';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='40';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCCONT_AP';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='03';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCBLOQ'; // 0-livre 1-Bloqueado
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='03';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCAGRUPAR'; // 0-Nao 1-Sim
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='03';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCMASC';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='40';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCPERIODO'; // 0-normal 1-Somar 2-Contar
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='40';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCDIMGRU'; // 0-livre 1-Bloqueado
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='03';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCDIMSG'; // 0-livre 1-Bloqueado
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='03';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCTPFORM'; // 0-Relatório 1-Graficos
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='03';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCQTDDIV'; //
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='03';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCTAB06';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='40';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCTAB06N';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='03';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCTAB07';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='40';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCTAB07N';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='03';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCTAB08';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='40';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCTAB08N';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='03';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCTAB09';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='40';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCTAB09N';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='03';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCFILVEN';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCFILCLI';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCFILPRO';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCFILFOR';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCFILRED';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCFVCAMPO';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='20';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCFFCAMPO';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='20';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCFPCAMPO';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='20';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCFCCAMPO';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='20';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCFRCAMPO';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='20';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCFILEST';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrToInt('0'+Frm_Tab07.STG1.cells[2,mlinha]);


mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCDETNCOL'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='03';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCDETICOL'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCDETTPCOL'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));


mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCDETTPCOL'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='02';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));


mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCAVANCAROD'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));



mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCFILRAMCLI'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCFILRAMPRO'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCFILTPRO'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCFILGPRO'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));


mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCFILCPRO'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCFILLOC'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCFILBAI'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCFILGPRO'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCFILCONV'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCFILSUP'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCFILASS'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCFILREG'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCFILTRA'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));


mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCFILBCO'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCFILCC'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCFILDEP'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCFILUSR'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCFILCAR'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCFILFUN'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
// fim do arquivo de CTDVCA
Result:=True;
end;

function fmCADTDV(ptipo: Integer): Boolean;
var
posfim: Integer;
mlinha: Integer;
begin

Frm_Tab07.STG1.RowCount:=1;
mlinha:=0;
posfim:=11;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCODEMP'; // nome do Campo
Frm_Tab07.STG1.Cells[1,mlinha]:='I';        // tipo do Campo I-Inteiro V-Valor D-Data S-String
Frm_Tab07.STG1.Cells[2,mlinha]:='10';       // tamanho
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TDOC';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='10';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TNOME';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='50';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TLOCAL';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TSEQ';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='10';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TLIN';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCOL';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TFONTE';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TTIPO';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCAMPO';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='140';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCAMPO_TAB';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='30';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TDCAMPO';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='140';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TTIPOC';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TALINHAR';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TTAM';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TFORMATO';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='40';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCONDT1';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCOND01';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='30';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCOND01_TAB';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='30';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCONDOP';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='5';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCONDT2';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCOND02';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='30';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCOND02_TAB';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='30';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));




mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TZERVAR';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCTPSEL'; // 0-normal 1-Somar 2-Contar
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCINFADIC'; // Cortar 0-Direita 1-Esquerda se Campo maior que tamanho
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));


mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCBARRAS'; // 0-normal 1-Barras
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='03';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCEXTENSO'; // 0-nao 1-Extenso Moeda 2-Extenso Inteiro
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='02';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));


mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCCORTARDE'; // Cortar 0-Direita 1-Esquerda se Campo maior que tamanho
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='01';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));


mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCEXT_QTDL'; // Extenso dividido em quantas linhas maximo 3
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCEXT_1LP'; // Extenso primeira linha pular qtd linhas
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));


mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCEXT_1LT'; // Extenso primeira linha tamanho
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));


mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCEXT_1IC'; // Extenso primeira linha iniciar na coluna
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCEXT_2LP'; // Extenso segunda linha pular qtd linhas
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));


mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCEXT_2LT'; // Extenso segunda linha tamanho
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCEXT_2IC'; // Extenso segunda linha iniciar na coluna
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));


mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCEXT_3LP'; // Extenso primeira linha pular qtd linhas
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));


mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCEXT_3LT'; // Extenso terceira linha tamanho
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));


mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCEXT_3IC'; // Extenso primeira linha iniciar na coluna
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));


mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_TAB07.STG1.Cells[0,mlinha]:='TCTPVAR'; // Típo de Variavel 0-Normal 1-Extra
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));



mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCOND_02_T1';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCOND_02_01';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='30';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCOND_02_01_TAB';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='30';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCOND_02_OP';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='5';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCOND_02_T2';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCOND_02_02';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='30';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCOND_02_02_TAB';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='26';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCOND_CONT';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

// INICIO
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCOND_03_T1';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCOND_03_01';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='30';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCOND_03_01_TAB';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='30';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCOND_03_OP';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='5';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCOND_03_T2';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCOND_03_02';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='30';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCOND_03_02_TAB';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='26';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TCOND_CONT03';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));



result:=True;
end;


function fmCTDVOP(ptipo: Integer): Boolean;
var
mlinha: Integer;
posfim: Integer;
begin
posfim:=11;
Frm_Tab07.STG1.RowCount:=1;
mlinha:=0;
Frm_Tab07.STG1.Cells[0,mlinha]:='TOCODEMP'; // nome do Campo
Frm_Tab07.STG1.Cells[1,mlinha]:='I';        // tipo do Campo I-Inteiro V-Valor D-Data S-String
Frm_Tab07.STG1.Cells[2,mlinha]:='10';       // tamanho
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TODOC';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='10';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TONOME';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='50';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));


mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TOTDET';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TOCODIGO';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='10';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TOTOP0';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TOOP0';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='40';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TODESOP0';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='80';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TOPER0';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TOTOP1';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TOOP1';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='40';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TODESOP1';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='80';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TOPER1';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TOTOP2';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TOOP2';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='40';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TODESOP2';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='80';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TOPER2';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TOTOP3';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TOOP3';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='40';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TODESOP3';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='80';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TOCONDT1';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TOCOND01';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='30';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TODCOND01';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='80';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TOCONDOP';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='5';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TOCONDT2';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TOCOND02';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='30';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TODCOND02';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='80';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));



result:=True;
end;



function fmCTDVFT(ptipo: Integer): Boolean;
var
mlinha: Integer;
posfim: Integer;
begin
posfim:=11;
Frm_Tab07.STG1.RowCount:=1;
mlinha:=0;
Frm_Tab07.STG1.Cells[0,mlinha]:='TFCODEMP'; // nome do Campo
Frm_Tab07.STG1.Cells[1,mlinha]:='I';        // tipo do Campo I-Inteiro V-Valor D-Data S-String
Frm_Tab07.STG1.Cells[2,mlinha]:='10';       // tamanho
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TFDOC';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='10';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TFNOME';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='50';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TFTIPO';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TFCODIGO';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='10';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TFTCAMPO1';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TFTAB01';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='50';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TFCAMPO1';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='50';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TFCOND1';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='5';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TFTCAMPO2';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));


mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TFTAB02';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='50';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));


mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='TFCAMPO2';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='50';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

result:=True;
end;



function fmCTDVFE(ptipo: Integer): Boolean;
var
mlinha: Integer;
posfim: Integer;
begin
posfim:=11;
Frm_Tab07.STG1.RowCount:=1;
mlinha:=0;
Frm_Tab07.STG1.Cells[0,mlinha]:='FECODEMP'; // nome do Campo
Frm_Tab07.STG1.Cells[1,mlinha]:='I';        // tipo do Campo I-Inteiro V-Valor D-Data S-String
Frm_Tab07.STG1.Cells[2,mlinha]:='10';       // tamanho
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='FEDOC';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='10';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='FENOME';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='50';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='FETIPO';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='04';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=mlinha+1;
Frm_Tab07.STG1.Cells[0,mlinha]:='FEFILTRO';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='500';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

result:=True;
end;

function fmCTDVJC(ptipo: Integer): Boolean;
var
mlinha: Integer;
posfim: Integer;
begin
posfim:=11;
Frm_Tab07.STG1.RowCount:=1;
mlinha:=0;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCCODEMP'; // nome do Campo
Frm_Tab07.STG1.Cells[1,mlinha]:='I';        // tipo do Campo I-Inteiro V-Valor D-Data S-String
Frm_Tab07.STG1.Cells[2,mlinha]:='10';       // tamanho
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCDOC';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='10';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCNOME';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='50';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCTDET';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='10';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCCODIGO';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='10';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCNOMCAM';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='30';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCTCAMPO1';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCBRANCOS01';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCFORMA01';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCCAMPO01';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='132';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCFORMATO01';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='30';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCESPACO01';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='05';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCTAMMAX01';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='05';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCTCAMPO02';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCBRANCOS02';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCFORMA02';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCCAMPO02';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='132';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCFORMATO02';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='30';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCESPACO02';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='05';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCTAMMAX02';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='05';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCTCAMPO03';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCBRANCOS03';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCFORMA03';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCCAMPO03';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='132';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCFORMATO03';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='30';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCESPACO03';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='05';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCTAMMAX03';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='05';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCTCAMPO04';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCBRANCOS04';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCFORMA04';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='1';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCCAMPO04';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='132';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCFORMATO04';
Frm_Tab07.STG1.Cells[1,mlinha]:='S';
Frm_Tab07.STG1.Cells[2,mlinha]:='30';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCESPACO04';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='05';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));
mlinha:=mlinha+1;
Frm_Tab07.STG1.RowCount:=1;
Frm_Tab07.STG1.Cells[0,mlinha]:='JCTAMMAX04';
Frm_Tab07.STG1.Cells[1,mlinha]:='I';
Frm_Tab07.STG1.Cells[2,mlinha]:='05';
Frm_Tab07.STG1.Cells[3,mlinha]:=IntToStr(posfim); // posicao inicial;
posfim:=posfim+StrtoInt('0'+Trim(Frm_Tab07.STG1.cells[2,mlinha]));

result:=True;
end;

procedure TFrm_Tab07.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.


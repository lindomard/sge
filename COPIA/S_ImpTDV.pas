unit S_ImpTDV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, ExtCtrls, Buttons, S_DM1, db, dbtables, func;

type
  TFrm_ImpTDV = class(TForm)
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ImpTDV: TFrm_ImpTDV;

implementation

uses lerarq;

{$R *.dfm}

procedure TFrm_ImpTDV.FileListBox1Change(Sender: TObject);
begin
NOMARQ.Text:=FileListBox1.FileName;
end;

procedure TFrm_ImpTDV.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_ImpTDV.BitBtn1Click(Sender: TObject);
var
f: textFile;
mtab, mlinha,mnomrel: String;
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
   NOMREL.Text:=Trim(copy(mlinha,24,20));
   NOMREL.Update;
   end;
mnomrel:=nomrel.Text;
DM1.Tb_TDVCA.Close;
if mreltab='NF' then
   mtab:='CADTAB'
else
   mtab:='CADTDV';
fltdvca(0,0,trim(copy(mlinha,14,10)),mnomrel,mtab);

if not DM1.Tb_TDVCA.Eof then
   begin
   if fmensagem('Ja Existe um Aquivo com Este mesmo Nome. Deseja Sobrepor?',0,['1','2'],2)=mrNo then
      begin
      NOMREL.SetFocus;
      abort;
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CTDVCA where ');
   if not DM1.Qr_Tid.Locate('TINOME',mtab,[]) then
      DM1.Query1.sql.add(' TCCODEMP=0'+IntToStr(codemp)+' and ');
   DM1.Query1.Sql.add(' TCDOC='+chr(39)+Trim(copy(mlinha,14,10))+chr(39)
                     +' and TCNOME='+chr(39)+mnomrel+chr(39));
   DM1.Query1.ExecSQL;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CTDVOP where ');
   if not DM1.Qr_Tid.Locate('TINOME',mtab,[]) then
      DM1.Query1.sql.add(' TOCODEMP='+IntToStr(codemp)+' and ');
   DM1.Query1.SQL.add(' TODOC='+chr(39)+Trim(copy(mlinha,14,10))+chr(39)
                     +' and TONOME='+chr(39)+mnomrel+chr(39));
   DM1.Query1.ExecSQL;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADTDV where ');
   if not DM1.Qr_Tid.Locate('TINOME',mtab,[]) then
      DM1.Query1.Sql.add(' TCODEMP='+IntToStr(codemp)+' and ');
   DM1.Query1.Sql.add(' TDOC='+chr(39)+Trim(copy(mlinha,14,10))+chr(39)
                     +' and TNOME='+chr(39)+mnomrel+chr(39));
   DM1.Query1.ExecSQL;
   end;

// While not (eof(f)) and (trim(mlinha)<>'')do
While trim(mlinha)<>'' do
   begin
   DM1.Query1.Close;
   DM1.query1.Params.Clear;
   DM1.Query1.SQl.Clear;
   if copy(mlinha,12,2)='00' then
      begin
      DM1.Query1.Params.CreateParam(ftstring,'OBS',ptinput);
      DM1.Query1.SQL.Add('Insert into CTDVCA ('
                        +'TCCODEMP, '
                        +'TCDOC,'
                        +'TCNOME,'
                        +'TCQTDLIN,'
                        +'TCQTDCOL,'
                        +'TCFPADRAO,'
                        +'TCQTDITEM,'
                        +'TCQTDLPP,'
                        +'TCNUMCOL,'
                        +'TCINTCOL,'
                        +'TCTPCOL,'
                        +'TCORDEM,'
                        +'TCMPAGGR,'
                        +'TCTPESQ,'
                        +'TCTPREL,'
                        +'TCIMPG,'
                        +'TCIMPSG,'
                        +'TCAVPTPI,'
                        +'TCAVPIPF,'
                        +'TCSTATUS,'
                        +'TCVIS,'
                        +'TCQTDSER,'
                        +'TCIMPDA,'
                        +'TCOBS) values ('
                        +IntTostr(codemp)+','
                        +chr(39)+Trim(copy(mlinha,14,10))+chr(39)+','
                        +chr(39)+Trim(NOMREL.Text)+chr(39)+','
                        +Trim(copy(mlinha,44,4))+','
                        +Trim(copy(mlinha,48,4))+','
                        +Trim(copy(mlinha,52,1))+','
                        +Trim(copy(mlinha,53,4))+','
                        +Trim(copy(mlinha,57,1))+','
                        +Trim(copy(mlinha,58,4))+','
                        +Trim(copy(mlinha,62,4))+','
                        +Trim(copy(mlinha,66,4))+','
                        +Trim(copy(mlinha,70,4))+','
                        +Trim(copy(mlinha,74,1))+','
                        +Trim(copy(mlinha,275,1))+','
                        +Trim(copy(mlinha,276,1))+','
                        +Trim(copy(mlinha,277,1))+','
                        +Trim(copy(mlinha,278,1))+','
                        +Trim(copy(mlinha,279,1))+','
                        +Trim(copy(mlinha,280,1))+','
                        +Trim(copy(mlinha,281,1))+','
                        +Trim(copy(mlinha,282,1))+','
                        +Trim(copy(mlinha,283,3))+','
                        +Trim(copy(mlinha,286,1))+',:OBS)');
      DM1.Query1.Params[0].AsString:=Trim(copy(mlinha,75,200));
      end
   else if copy(mlinha,12,2)='01' then
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Select max(TOCODIGO) from CTDVOP ');
      if DM1.Qr_Tid.Locate('TINOME',mtab,[]) then
         DM1.Query2.SQL.add(' where TOCODEMP=0'+IntToStr(codemp));
      DM1.Query2.Open;
      mcod:=StrtoInt('0'+Trim(copy(mlinha,761,10)));

      DM1.Query1.Params.CreateParam(ftstring,'TOP0',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'OP0',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'DESOP0',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'PER0',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'TOP1',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'OP1',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'DESOP1',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'PER1',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'TOP2',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'DESOP2',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'OP2',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'PER2',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'TOP3',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'OP3',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'DESOP3',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'CONDT1',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'COND01',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'DCOND01',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'CONDOP',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'CONDT2',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'COND02',ptinput);
      DM1.Query1.Params.CreateParam(ftstring,'DCOND02',ptinput);
      DM1.Query1.SQL.Add('Insert into CTDVOP ('
                        +'TOCODEMP,'
                        +'TODOC,'
                        +'TONOME,'
                        +'TOTDET,'
                        +'TOCODIGO,'
                        +'TOTOP0,'
                        +'TOOP0,'
                        +'TODESOP0,'
                        +'TOPER0,'
                        +'TOTOP1,'
                        +'TOOP1,'
                        +'TODESOP1,'
                        +'TOPER1,'
                        +'TOTOP2,'
                        +'TODESOP2,'
                        +'TOOP2,'
                        +'TOPER2,'
                        +'TOTOP3,'
                        +'TOOP3,'
                        +'TODESOP3,'
                        +'TOCONDT1,'
                        +'TOCOND01,'
                        +'TODCOND01,'
                        +'TOCONDOP,'
                        +'TOCONDT2,'
                        +'TOCOND02,'
                        +'TODCOND02) values ('
                        +inttostr(codemp)+','
                        +chr(39)+Trim(copy(mlinha,14,10))+chr(39)+','
                        +chr(39)+Trim(NOMREL.Text)+chr(39)+','
                        +copy(mlinha,44,3)+','
                        +FloatToStr(mcod)+','
                        +':TOP0, '
                        +':OPO, '
                        +':DESOP0, '
                        +':PER0, '
                        +':TOP1, '
                        +':OP1, '
                        +':DESOP1, '
                        +':PER1, '
                        +':TOP2, '
                        +':DESOP2, '
                        +':OP2, '
                        +':PER2, '
                        +':TOP3, '
                        +':OP3, '
                        +':DESOP3, '
                        +':CONDT1, '
                        +':COND01, '
                        +':DCOND01, '
                        +':CONDOP, '
                        +':CONDT2, '
                        +':COND02, '
                        +':DCOND02 )');

      DM1.Query1.Params[0].AsString:=Trim(copy(mlinha,47,1));
      DM1.Query1.Params[1].AsString:=Trim(copy(mlinha,48,40));
      DM1.Query1.Params[2].AsString:=Trim(copy(mlinha,88,80));
      DM1.Query1.Params[3].AsString:=Trim(copy(mlinha,758,1));
      DM1.Query1.Params[4].AsString:=Trim(copy(mlinha,168,1));
      DM1.Query1.Params[5].AsString:=Trim(copy(mlinha,169,40));
      DM1.Query1.Params[6].AsString:=Trim(copy(mlinha,209,80));
      DM1.Query1.Params[7].AsString:=Trim(copy(mlinha,759,1));
      DM1.Query1.Params[8].AsString:=Trim(copy(mlinha,289,1));
      DM1.Query1.Params[09].AsString:=Trim(copy(mlinha,330,80));
      DM1.Query1.Params[10].Asstring:=Trim(copy(mlinha,290,40));
      DM1.Query1.Params[11].AsString:=Trim(copy(mlinha,760,1));
      DM1.Query1.Params[12].AsString:=Trim(copy(mlinha,410,1));
      DM1.Query1.Params[13].AsString:=Trim(copy(mlinha,411,40));
      DM1.Query1.Params[14].AsString:=Trim(copy(mlinha,451,80));
      DM1.Query1.Params[15].AsString:=Trim(copy(mlinha,531,1));
      DM1.Query1.Params[16].AsString:=Trim(copy(mlinha,532,30));
      DM1.Query1.Params[17].AsString:=Trim(copy(mlinha,562,80));
      DM1.Query1.Params[18].AsString:=Trim(copy(mlinha,642,5));
      DM1.Query1.Params[19].AsString:=Trim(copy(mlinha,647,1));
      DM1.Query1.Params[20].AsString:=Trim(copy(mlinha,648,30));
      DM1.Query1.Params[21].AsString:=Trim(copy(mlinha,678,80));
      end
   else if copy(mlinha,12,2)='02' then
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Select max(TSEQ) from CADTDV ');
      if DM1.Qr_Tid.Locate('TINOME',mtab,[]) then
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
      DM1.Query1.SQL.Add('Insert Into CADTDV ('
                        +'TCODEMP, '
                        +'TDOC, '
                        +'TNOME, '
                        +'TLOCAL, '
                        +'TSEQ, '
                        +'TLIN, '
                        +'TCOL, '
                        +'TFONTE, '
                        +'TTIPO, '
                        +'TALINHAR, '
                        +'TTAM, '
                        +'TZERVAR, '
                        +'TCAMPO, '
                        +'TDCAMPO, '
                        +'TTIPOC, '
                        +'TFORMATO, '
                        +'TCONDT1, '
                        +'TCOND01, '
                        +'TCONDOP, '
                        +'TCONDT2, '
                        +'TCOND02) Values ('
                        +IntToStr(codemp)+','
                        +chr(39)+Trim(copy(mlinha,14,10))+chr(39)+',' //tdoc
                        +chr(39)+Trim(NOMREL.Text)+chr(39)+','        // tnome
                        +copy(mlinha,44,3)+','                        // tlocal
                        +FloatTostr(mcod)+','                         // tseq
                        +copy(mlinha,56,4)+','                        // tlin
                        +copy(mlinha,60,4)+','                        // tcol
                        +copy(mlinha,64,4)+','                        // tfonte
                        +copy(mlinha,68,4)+','                        // ttipo
                        +copy(mlinha,353,1)+','                       // talinhar
                        +copy(mlinha,354,4)+','                       // ttam
                        +copy(mlinha,465,1)+','                       // tzervar
                        +':CAMPO, '
                        +':DCAMPO, '
                        +':TIPOC, '
                        +':FORMATO, '
                        +':CONDT1, '
                        +':COND01,'
                        +':CONDOP, '
                        +':CONDT2, '
                        +':COND02)');
      DM1.Query1.Params[0].AsString:=Trim(copy(mlinha,72,140)); // campo
      DM1.Query1.Params[1].AsString:=Trim(copy(mlinha,212,140));  //dcampo
      DM1.Query1.Params[2].AsString:=Trim(copy(mlinha,352,1));   //tipoc
      DM1.Query1.Params[3].AsString:=Trim(copy(mlinha,358,40));  // formato
      DM1.Query1.Params[4].AsString:=Trim(copy(mlinha,398,1));   //condt1
      DM1.Query1.Params[5].AsString:=Trim(copy(mlinha,399,30));  //cond01
      DM1.Query1.Params[6].AsString:=Trim(copy(mlinha,429,5));   // condop
      DM1.Query1.Params[7].AsString:=Trim(copy(mlinha,434,1));  // condt2
      DM1.Query1.Params[8].AsString:=Trim(copy(mlinha,435,30)); // cond02
      end
   else
      begin
      ShowMessage('O Arquivo de Importacao contem informacao Invalida.');
      NOMREL.SetFocus;
      abort;
      end;
   Try
      DM1.Query1.ExecSQL;
   except
      mlinha:='';
      end;
   mlinha:='';
   Readln(f,mlinha);
   end;
DM1.Query1.Close;
DM1.Query1.Params.Clear;
ShowMessage('Concluido');
end;

procedure TFrm_ImpTDV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

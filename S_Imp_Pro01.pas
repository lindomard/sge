unit S_Imp_Pro01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, ExtCtrls, Buttons, Gauges, db, dbtables,
  S_DM1,func,lerarq;

type
  TFrm_Imp_Pro01 = class(TForm)
    Panel1: TPanel;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    DriveComboBox1: TDriveComboBox;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    NOMARQ: TEdit;
    Gauge1: TGauge;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Qr_Pro: TQuery;
    Qr_ProCODIGO: TFloatField;
    Qr_ProCODBAR: TFloatField;
    Qr_ProNOME: TStringField;
    Qr_ProUND: TStringField;
    Qr_ProPCO_FAB: TFloatField;
    Qr_ProPMC: TFloatField;
    Qr_ProDESC: TFloatField;
    Qr_ProLISTA: TIntegerField;
    Qr_ProSIT: TStringField;
    Qr_ProPRECOV: TFloatField;
    Qr_ProEGS: TIntegerField;
    Tb_Pro: TQuery;
    CB_IMPFOR: TCheckBox;
    Qr_ProMARCA: TStringField;
    Qr_ProCODFOR: TFloatField;
    Query1: TQuery;
    procedure BitBtn2Click(Sender: TObject);
    procedure FileListBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Imp_Pro01: TFrm_Imp_Pro01;

implementation

{$R *.dfm}

procedure TFrm_Imp_Pro01.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Imp_Pro01.FileListBox1Change(Sender: TObject);
begin
NOMARQ.Text:=FileListBox1.FileName;
end;

procedure TFrm_Imp_Pro01.BitBtn1Click(Sender: TObject);
var
marq: String;
mlidos, mqtd, mtam: Integer;
begin
if trim(NOMARQ.Text)='' then
   begin
   ShowMessage('favor Selecionar um Arquivo');
   FileListBox1.SetFocus;
   exit;
   end;
Qr_Pro.Close;
Qr_Pro.DatabaseName:=DirectoryListBox1.Directory;
Query1.Close;
Query1.DatabaseName:=DirectoryListBox1.Directory;
marq:='';
mtam:=length(NOMARQ.Text);
While mtam>0 do
   begin
   if (copy(nomarq.Text,mtam,1)='/') or
      (copy(nomarq.Text,mtam,1)='\') or
      (copy(nomarq.Text,mtam,1)=':')  then
      begin
      Break;
      end;
   marq:=copy(NOMARQ.Text,mtam,1)+marq;
   mtam:=mtam-1;
   end;
Qr_Pro.SQL.Clear;
Qr_Pro.SQL.add('Select * from '+marq);
Try
   Qr_Pro.Open;
except
   ShowMessage('Nome de arquivo invalido ou arquivo danificado');
   exit
   end;
mlidos:=0;
mqtd:=Qr_Pro.RecordCount;
Gauge1.Visible:=True;

While not Qr_Pro.Eof do
   begin
   mlidos:=mlidos+1;
   Gauge1.Progress:=mlidos*100 div mqtd;
   Tb_Pro.Close;
   Tb_Pro.Sql.Clear;
   if flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',Qr_ProCODIGO.AsString) then
      begin
      Tb_Pro.SQL.Add('Update CADPRO set '
                    +' PDCODPRO=:CODPRO, '
                    +' PDCODBAR=:CODBAR, '
                    +' PDNOME  =:NOME, '
                    +' PDUND   =:UND, '
                    +' PDPRECO1=:PRECO1,'
                    +' PDPRECO3=:PRECO3,'
                    +' PDDESC  =:DESC, '
                    +' PDLISTA =:LISTA,'
                    +' PDSIT   =:SIT, '
                    +' PDPRECO2=:PRECO2, '
                    +' PDCODFOR=:CODFOR, '
                    +' PDMARCA =:MARCA, '
                    +' PDCODTIP   =:EGS where '
                    +iif(DM1.Qr_tid.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntTostr(codemp)+' and ')
                    +' PDCODPRO=0'+Qr_ProCODIGO.AsString);
      end
   else
      begin
      Tb_Pro.SQL.add(' Insert into CADPRO ('
                    +' PDCODEMP, '
                    +' PDCODPRO, '
                    +' PDCODBAR, '
                    +' PDNOME, '
                    +' PDUND, '
                    +' PDPRECO1, '
                    +' PDPRECO3, '
                    +' PDDESC1, '
                    +' PDLISTA, '
                    +' PDSIT, '
                    +' PDPRECO2, '
                    +' PDCODTIP,'
                    +' PDNOME2, '
                    +' PDCODFOR, '
                    +' PDMARCA) values ('
                    +IntTostr(codemp)+','
                    +' :CODPRO, '
                    +' :CODBAR, '
                    +' :NOME, '
                    +' :UND, '
                    +' :PRECO1, '
                    +' :PRECO3, '
                    +' :DESC, '
                    +' :LISTA, '
                    +' :SIT, '
                    +' :PRECO2, '
                    +' :EGS, '
                    +chr(39)+' '+chr(39)+','
                    +' :CODFOR, '
                    +' :MARCA )');
      end;
   Tb_Pro.ParamByName('CODPRO').AsFloat :=Qr_ProCODIGO.AsFloat;
   tb_Pro.ParamByName('CODBAR').AsFloat :=Qr_ProCODBAR.AsFloat;
   tb_Pro.ParamByName('NOME').AsString  :=Qr_ProNOME.AsString;
   tb_Pro.ParamByName('UND').AsString   :=Qr_ProUND.AsString;
   tb_Pro.ParamByName('PRECO1').AsFloat :=Qr_ProPCO_FAB.AsFloat;
   tb_Pro.ParamByName('PRECO3').AsFloat :=Qr_ProPMC.AsFloat;
   tb_Pro.ParamByName('DESC').AsFloat   :=Qr_ProDESC.AsFloat;
   tb_Pro.ParamByName('LISTA').AsFloat  :=Qr_ProLISTA.AsFloat;
   tb_Pro.ParamByName('SIT').AsString   :=Qr_ProSIT.AsString;
   tb_Pro.ParamByName('PRECO2').AsFloat :=Qr_ProPRECOV.AsFloat;
   tb_Pro.ParamByName('EGS').AsFloat    :=Qr_ProEGS.AsFloat;
   Tb_Pro.paramByName('CODFOR').AsFloat :=Qr_ProCODFOR.AsFloat;
   Tb_Pro.ParamByName('MARCA').AsString :=Qr_ProMARCA.Value;
   tb_Pro.ExecSQL;
   Qr_Pro.Next;
   end;

if CB_IMPFOR.Checked then
   begin
   Query1.Close;
   Query1.SQL.Clear;
   Query1.SQL.Add(' Select  CODFOR,MARCA from '+marq
                 +'  where codfor<>0 and marca<>'+chr(39)+' '+chr(39)
                 +'  GROUP BY CODFOR,MARCA order by CODFOR ');
   Try
      Query1.Open;
   except
      MessageDlg('Nome de Arquivo inválido ou arquivo danificado!',mtWarning,[mbOk],0);
      exit;
      end;
   end;
While not Query1.Eof do
   begin
   if not flcadfor(1,0,Query1.Fields[0].AsString) then
      begin
      DM1.Tb_For.Append;
      DM1.Tb_ForFCODFOR.Value:=Query1.Fields[0].AsFloat;
      DM1.Tb_ForFRAZAO.Value :=Query1.Fields[1].AsString;
      DM1.Tb_For.Post;
      end;
   Query1.Next;
   end;


ShowMessage('Concluido!');
Gauge1.Visible:=False;
end;

procedure TFrm_Imp_Pro01.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

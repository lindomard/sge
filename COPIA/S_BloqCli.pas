unit S_BloqCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons,db,dbtables,func,S_DM1,S_Agde;

type
  TFrm_BloqCli = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    MDATA: TMaskEdit;
    bbProcessar: TBitBtn;
    BitBtn1: TBitBtn;
    procedure MDATAExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bbProcessarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_BloqCli: TFrm_BloqCli;

implementation

{$R *.dfm}

procedure TFrm_BloqCli.MDATAExit(Sender: TObject);
begin
if Trim(MDATA.Text)<>'/  /' then
   begin
   try
      MDATA.Text:=FormatDatetime(fdt2, StrTodAte(MDATA.Text));
   except
      MessageDlg('Data inválida!',mtWarning,[mbOk],0);
      end;   
   end;
end;

procedure TFrm_BloqCli.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFrm_BloqCli.bbProcessarClick(Sender: TObject);
var
mdatacpr: tdatetime;
begin
if Trim(MDATA.Text)='/  /' then
   begin
   MessageDlg('Favor Digitar uma data de referencia!',mtWarning,[mbOk],0);
   MDATA.SetFocus;
   exit;
   end;
mdatacpr:=StrToDate(MDATA.Text);
Application.Createform(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Verificando Clientes sem compras, aguarde...';
Frm_Agde.gb_progres.Visible:=true;
Frm_Agde.Show;
verteclado(0);
DM1.Query3.Close;
DM1.Query3.SQL.clear;
DM1.Query3.SQL.add('Select max(P1DATAP) AS P1DATAP ,P1CODEMP,P1CODCLI from CADP01 where '
                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntTostr(codemp)+' and ')
                 +' P1STATUS<'+mstatus_excluido+' ');
DM1.Query3.Sql.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDATA.Text)));
DM1.Query3.Sql.Add(' Group by P1CODEMP,P1CODCLI ');
DM1.Query3.Open;
DM1.Query4.Close;
DM1.Query4.SQL.clear;
DM1.Query4.SQL.add('Select CCODCLI,CCODEMP,CSITCLI from CADCLI where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CCODEMP=0'+IntToStr(codemp)+' and ')
                  +' CSITCLI=0 ');
DM1.Query4.Open;
mplid:=0;
mpqtd:=DM1.Query4.RecordCount;
While not DM1.Query4.Eof do
    begin
    mplid:=mplid+1;
    Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
    verteclado(0);
    if not DM1.Query3.Locate('P1CODCLI',DM1.Query4.fieldbyName('CCODCLI').AsFloat,[]) then
       begin
       DM1.Query1.Close;
       DM1.Query1.SQL.Clear;
       DM1.Query1.SQL.add('Update cadcli set CSITCLI=2 where CCODEMP=0'+DM1.Query4.FieldbyName('CCODEMP').AsString
                         +' and CCODCLI=0'+DM1.Query4.FieldbyName('CCODCLI').AsString);
       try
          DM1.Query1.ExecSQL;
          fdm1StartCommit;
       except
          end;
       end
    else if DM1.Query3.FieldByName('P1DATAP').AsDateTime<=mdatacpr then
       begin
       DM1.Query1.Close;
       DM1.Query1.SQL.Clear;
       DM1.Query1.SQL.add('Update cadcli set CSITCLI=2 where CCODEMP=0'+DM1.Query4.FieldbyName('CCODEMP').AsString
                         +' and CCODCLI=0'+DM1.Query4.FieldbyName('CCODCLI').AsString);
       try
          DM1.Query1.ExecSQL;
          fdm1StartCommit;
       except
          end;
       end;
   DM1.Query4.Next;
   end;

Frm_Agde.gb_progres.Visible:=False;
Frm_Agde.Label1.Caption:='Concluido!';
verteclado(0);



end;

procedure TFrm_BloqCli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

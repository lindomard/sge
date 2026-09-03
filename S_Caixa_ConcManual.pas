unit S_Caixa_ConcManual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ToolEdit, CheckLst, Buttons, Grids,
  DBGrids, DB, DBTables,s_Caixa_ConcManual_DataConc;

type
  TFrm_Caixa_ConcManual = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edt_datini: TDateEdit;
    Label2: TLabel;
    edt_datfin: TDateEdit;
    Label3: TLabel;
    edt_codbco: TEdit;
    edt_nombco: TEdit;
    bbAtualizar: TBitBtn;
    bbSair: TBitBtn;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Query_ldr: TQuery;
    src_ldr: TDataSource;
    DBGrid1: TDBGrid;
    Query_ldrDATADP: TDateTimeField;
    Query_ldrCODLDR: TFloatField;
    Query_ldrDATAREAL: TDateTimeField;
    Query_ldrVALORR: TFloatField;
    Query_ldrDATCONC: TDateTimeField;
    Query_ldrCODBCO: TFloatField;
    Query_ldrNUMDOC: TStringField;
    Query_ldrDESCMV: TStringField;
    RG_CONTAS: TRadioGroup;
    Label4: TLabel;
    edt_datconc: TDateEdit;
    bbAplicar: TBitBtn;
    U_ldr: TUpdateSQL;
    Query_ldrCODEMP: TFloatField;
    procedure edt_codbcoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codbcoExit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbAtualizarClick(Sender: TObject);
    procedure edt_datiniExit(Sender: TObject);
    procedure edt_datfinExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure Query_ldrAfterPost(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Caixa_ConcManual: TFrm_Caixa_ConcManual;

implementation

uses S_DM1, lerarq, Func, func_excecoes;

{$R *.dfm}

procedure TFrm_Caixa_ConcManual.edt_codbcoKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codbco.text:=fChamaBco(0,'frm_ldr',key);
   edt_codbcoExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Caixa_ConcManual.edt_codbcoExit(Sender: TObject);
begin
edt_codbco.Text:=fdeixanum(edt_codbco.text);
if fsonumero(edt_codbco.text)>0 then
   begin
   if not flqr2('BCBANCO','BC','CADBCO','N','BCCODBCO',edt_codbco.text) then
      begin
      fmensagem('Banco Nao Cadastrado!',0,['0'],0);
      edt_codbco.Setfocus;
      end
   else
      begin
      edt_nombco.text:=DM1.QUERY2.Fields[0].AsString;
      end;
   end;

end;

procedure TFrm_Caixa_ConcManual.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Caixa_ConcManual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
if Frm_Caixa_ConcManual_DataConc<>nil then
   Freeandnil(frm_Caixa_ConcManual_DataConc);

end;

procedure TFrm_Caixa_ConcManual.bbAtualizarClick(Sender: TObject);
begin
if edt_datini.Date>edt_datfin.Date then
   begin
   MessageDlg('Data Inicial Não pode ser maior que data final!',mtWarning,[mbOk],0);
   edt_datini.SetFocus;
   exit;
   end;
Query_ldr.Close;
Query_ldr.SQL.Clear;
Query_ldr.SQL.Add('SELECT CODEMP,DATADP,CODLDR,DATAREAL,VALORR,DATCONC,CODBCO,NUMDOC,DESCMV FROM CADLDR '
                 +' where STATUS<> 9 and CODEMP=:CODEMP ');
Query_ldr.ParamByName('CODEMP').Value:=codemp;
if fsonumero(edt_datini.text)<>0 then
   begin
   Query_ldr.SQL.Add(' and DATAREAL>=:DATAINI ');
   Query_ldr.ParamByName('DATAINI').Value:=edt_datini.Date;
   end;

if fsonumero(edt_datfin.text)<>0 then
   begin
   Query_ldr.SQL.Add(' and DATAREAL<=:DATAFIN ');
   Query_ldr.ParamByName('DATAFIN').Value:=edt_datfin.Date;
   end;

if fsonumero(edt_codbco.text)<>0 then
   begin
   Query_ldr.SQL.Add(' and CODBCO=:CODBCO ');
   Query_ldr.ParamByName('CODBCO').Value:=ValInt(edt_codbco.Text);
   end;

if RG_CONTAS.ItemIndex=0 then
   Query_ldr.SQL.Add(' and (DATCONC<='+QuotedStr('01/01/1900')+' or DATCONC is null )')
else if RG_CONTAS.ItemIndex=1 then
   Query_ldr.SQL.Add(' and not (DATCONC<='+QuotedStr('01/01/1900')+' or DATCONC is null )');

try
   Query_ldr.Open;
except
   Query_ldr.SQL.SaveToFile(mpastatemp +'sql.txt');
   end;





end;

procedure TFrm_Caixa_ConcManual.edt_datiniExit(Sender: TObject);
begin
if fsonumero(edt_datini.Text)<>0 then
   begin
   try
      edt_datini.Text:=FormatDateTime(fdt2, edt_datini.date);
   except
      MessageDlg('Data inválida!',mtWarning,[mbOk],0);
      edt_datini.SetFocus;
      end;
   end;

end;

procedure TFrm_Caixa_ConcManual.edt_datfinExit(Sender: TObject);
begin
if fsonumero(edt_datfin.Text)<>0 then
   begin
   try
      edt_datfin.Text:=FormatDateTime(fdt2, edt_datfin.date);
   except
      MessageDlg('Data inválida!',mtWarning,[mbOk],0);
      edt_datfin.SetFocus;
      end;
   end;

end;

procedure TFrm_Caixa_ConcManual.FormCreate(Sender: TObject);
begin
Query_ldrDATADP.DisplayFormat:=fdt2;
Query_ldrDATAREAL.DisplayFormat:=fdt2;
Query_ldrVALORR.DisplayFormat:=mcasas;
Query_ldrDATCONC.DisplayFormat:=fdt2;




end;

procedure TFrm_Caixa_ConcManual.FormShow(Sender: TObject);
begin
edt_datini.Date :=Date-1;
edt_datfin.Date :=edt_datini.Date;
edt_datconc.Date:=Date;


end;

procedure TFrm_Caixa_ConcManual.bbAplicarClick(Sender: TObject);
begin
if Application.MessageBox(pchar('Quer Realmente conciliar na data de '+edt_datconc.text+' os registros pendentes?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
Query_ldr.First;
While not Query_ldr.Eof do
   begin
   if Query_ldrDATCONC.AsDateTime>pdatanula then
      begin
      Query_ldr.Next;
      Continue;
      end;
   Query_ldr.Edit;
   Query_ldrDATCONC.Value:=edt_datconc.Date;
   Query_ldr.Post;
   Query_ldr.Next;
   end;
verteclado(0);
MessageDlg('Concluido!',mtInformation,[mbOk],0);
end;

procedure TFrm_Caixa_ConcManual.Query_ldrAfterPost(DataSet: TDataSet);
var
Query_Temp: tQuery;

begin
Query_Temp:=tQuery.create(nil);
Query_Temp.DatabaseName:='SG_ASSOC';
Query_temp.Close;
Query_temp.SQL.Clear;
Query_temp.SQL.Add('Update CADLDR set ');
if Query_ldrDATCONC.AsDateTime<=pdatanula then
   Query_Temp.SQL.Add('  DATCONC=null ')
else
   begin
   Query_Temp.SQL.Add(' DATCONC=:DATCONC ');
   Query_Temp.ParamByName('DATCONC').value :=Query_ldrDATCONC.AsDateTime;
   end;
Query_Temp.SQL.Add(' where CODEMP=:CODEMP and CODLDR=:CODLDR ');

Query_Temp.ParamByName('CODEMP').value :=Query_ldrCODEMP.AsInteger;
Query_Temp.ParamByName('CODLDR').value :=Query_ldrCODLDR.AsFloat;
try
   Query_Temp.ExecSQL;
   fdm1StartCommit;
except
   end;

FreeAndNil(Query_Temp);


end;

procedure TFrm_Caixa_ConcManual.DBGrid1DblClick(Sender: TObject);
var
mDataConc: String;
begin
if (not Query_ldr.active) or (Query_ldrCODLDR.IsNull) then
   exit;
if Frm_Caixa_ConcManual_DataConc=nil then
   Application.CreateForm(Tfrm_Caixa_ConcManual_DataConc,frm_Caixa_ConcManual_DataConc);
Frm_Caixa_ConcManual_DataConc.edt_datini.Text:=edt_datconc.Text;
Frm_Caixa_ConcManual_DataConc.ShowModal;
if Frm_Caixa_ConcManual_DataConc.mAcatou_Data then
   begin
   Query_ldr.Edit;
   if fSonumero(Frm_Caixa_ConcManual_DataConc.edt_datini.Text)=0 then
      Query_ldrDATCONC.AsString:=''
   else
      Query_ldrDATCONC.Value:=Frm_Caixa_ConcManual_DataConc.edt_datini.Date;
   Query_ldr.Post;
   end;

end;

end.

unit S_PPR_Cons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons,S_DM1, DB, Grids, DBGrids,func,lerarq;

type
  TFrm_PPR_Cons = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    Label1: TLabel;
    CODRED: TEdit;
    NOMRED: TEdit;
    bbAplicar: TBitBtn;
    bbSair: TBitBtn;
    DBGrid1: TDBGrid;
    Src_PPR: TDataSource;
    procedure bbSairClick(Sender: TObject);
    procedure CODREDKeyPress(Sender: TObject; var Key: Char);
    procedure CODREDExit(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PPR_Cons: TFrm_PPR_Cons;

implementation

uses S_Red;

{$R *.dfm}

procedure TFrm_PPR_Cons.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_PPR_Cons.CODREDKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRED.Text:=fChamaRedCli(0,'frm_cabc',key);
   key:=#0;
   end;

end;

procedure TFrm_PPR_Cons.CODREDExit(Sender: TObject);
Begin
CODRED.Text:=fdeixanum2(CODRED.Text);
if Trim(CODRED.Text)='' then
   NOMRED.Text:='Todos...'
else
   begin
   if not flqr1('RDNOME','RD','CADRED','N','RDCODRED',Trim(CODRED.Text)) then
      begin
      MessageDlg('Rede não Cadastrada!',mtWarning,[mbOk],0);
      CODRED.SetFocus;
      Exit;
      end
   else
      NOMRED.Text:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_PPR_Cons.bbAplicarClick(Sender: TObject);
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADRED','RDCODEMP','PPCODEMP','RDCODRED','PPCODRED');

DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.SQL.Add('Select PPPROMOCAO,PPPVTIP,PPPVTAB,PPCODRED,PPDATINI,PPDATFIN '
                  +' ,PPOBS,RDNOME from CADPPR '
                  +iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join);
mcinst:=' where ';
if Trim(la_instrucao)<>'' then
   begin
   DM1.Query4.SQL.add(mcinst+' '+la_instrucao);
   mcinst:=' and ';
   end;
if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   begin
   DM1.Query4.SQL.add(mcinst+' PPCODEMP=0'+IntToStr(codemp));
   mcinst:=' and ';
   end;
if trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query4.SQL.add(mcinst+' PPDATINI>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Query4.SQL.add(mcinst+' PPDATINI<='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;
if trim(CODRED.Text)<>'' then
   begin
   DM1.Query4.SQL.add(mcinst+' PPCODRED=0'+Trim(CODRED.Text));
   mcinst:=' and ';
   end;
DM1.Query4.SQL.Add(' Group by PPPROMOCAO,PPPVTIP,PPPVTAB,PPCODRED,PPDATINI,PPDATFIN, '
                  +'  PPOBS,RDNOME ');

DM1.Query4.Open;
DM1.Query4.FieldByName('PPPROMOCAO').DisplayLabel:='Promoção';
DM1.Query4.FieldByName('PPPVTIP').DisplayLabel   :='Tipo';
DM1.Query4.FieldByName('PPPVTAB').DisplayLabel   :='Tabela';
DM1.Query4.FieldByName('PPCODRED').DisplayLabel  :='Cód.Rede';
DM1.Query4.FieldByName('PPDATINI').DisplayLabel  :='Dt.Inicio';
DM1.Query4.FieldByName('PPDATFIN').DisplayLabel  :='Dt.Final';
DM1.Query4.FieldByName('PPOBS').DisplayLabel     :='Observações';
DM1.Query4.FieldByName('RDNOME').DisplayLabel    :='Nome da Rede';

end;

procedure TFrm_PPR_Cons.FormActivate(Sender: TObject);
begin
 bbAplicar.Click;

end;

procedure TFrm_PPR_Cons.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

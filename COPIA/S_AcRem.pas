unit S_AcRem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Buttons,func,S_DM1,S_Cli,lerarq,S_DM4,
  DB, Grids, DBGrids;

type
  TFrm_AcRem = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    bbAtualizar: TBitBtn;
    Label1: TLabel;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    bbSair: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Src_AcRe04: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    RG_TIPO: TRadioGroup;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure Src_AcRe04DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_AcRem: TFrm_AcRem;

implementation

{$R *.dfm}

procedure TFrm_AcRem.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_AcRem.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_AcRem.bbAtualizarClick(Sender: TObject);
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      MessageDlg('Data Inicial maior que Final, Invalido!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
mcinst:=' where ';
DM4.Tb_AcRe01.Close;
DM4.Tb_AcRe01.SQL.Clear;
DM4.Tb_AcRe01.SQL.Add('Select * from CADACRE01 ');
if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
   begin
   DM4.Tb_AcRe01.SQL.add(mcinst+' AR1CODEMP=0'+InttoStr(codemp));
   mcinst:=' and ';
   end;
if RG_TIPO.ItemIndex<>2 then
   begin
   DM4.Tb_AcRe01.SQL.add(mcinst+' AR1TIPO=0'+InttoStr(RG_TIPO.ItemIndex));
   mcinst:=' and ';
   end;
if Trim(MDT1.Text)<>'/  /' then
   begin
   DM4.Tb_AcRe01.SQL.add(mcinst+' AR1DATA='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   DM4.Tb_AcRe01.SQL.add(mcinst+' AR1DATA='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;
if valint(CODCLI.Text)>0 then
   begin
   DM4.Tb_AcRe01.SQL.add(mcinst+' AR1CODCLI=0'+Trim(CODCLI.Text));
   mcinst:=' and ';
   end;
DM4.Tb_AcRe01.Open;



end;

procedure TFrm_AcRem.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_AcRem.CODCLIExit(Sender: TObject);
begin
if valint(CODCLI.Text)<=0 then
   CODCLI.Text:=''
else
   CODCLI.Text:=fdeixanum(CODCLI.Text);
if Trim(CODCLI.Text)='' then
   NOMCLI.Text:='Todos...'
else if not flcadcli(1,0,CODCLI.Text) then
   begin
   MessageDlg('Cliente não Cadastrado!',mtWarning,[mbOk],0);
   CODCLI.SetFocus;
   exit;
   end
else
   begin
   NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
   end;

end;

procedure TFrm_AcRem.Src_AcRe04DataChange(Sender: TObject; Field: TField);
begin
DM4.Tb_AcRe02.Close;
DM4.Tb_AcRe02.Sql.Clear;
DM4.Tb_AcRe02.SQL.add('Select * from CADACRE02 where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' AR2CODEMP=0'+DM4.Tb_AcRe01AR1CODEMP.AsString+' and ')
                     +' ar2chave=0'+DM4.Tb_AcRe01AR1CHAVE.AsString
                     +' order by AR2DATA ');
DM4.Tb_acre02.Open;


end;

procedure TFrm_AcRem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.

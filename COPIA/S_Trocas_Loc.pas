unit S_Trocas_Loc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask,func,lerarq,S_DM1,S_Cli,S_Ven, Buttons,
  S_DM2, Grids, DBGrids, S_SelEmp;
type
  TFrm_Trocas_Loc = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CHAVEI: TEdit;
    CHAVEF: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    MDT1: TMaskEdit;
    Label4: TLabel;
    MDT2: TMaskEdit;
    Label5: TLabel;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    Label6: TLabel;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    bbAtualizar: TBitBtn;
    bbSair: TBitBtn;
    DBGrid1: TDBGrid;
    RG_TIPO: TRadioGroup;
    procedure CHAVEIExit(Sender: TObject);
    procedure CHAVEFExit(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure bbSairClick(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Trocas_Loc: TFrm_Trocas_Loc;
  Form_SelEmp: TFrm_SelEmp;

implementation

{$R *.dfm}

procedure TFrm_Trocas_Loc.CHAVEIExit(Sender: TObject);
begin
CHAVEI.Text:=fdeixanum(CHAVEI.Text);
if fsonumero(CHAVEI.Text)=0 then
   CHAVEI.Text:=''
else if trim(CHAVEF.Text)='' then
   CHAVEF.Text:=CHAVEI.Text;

end;

procedure TFrm_Trocas_Loc.CHAVEFExit(Sender: TObject);
begin
CHAVEF.Text:=fdeixanum(CHAVEF.Text);
if fsonumero(CHAVEF.Text)=0 then
   CHAVEF.Text:='';

end;

procedure TFrm_Trocas_Loc.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_Trocas_Loc.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_Trocas_Loc.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_Trocas_Loc',key);
   key:=#0;
   end;

end;

procedure TFrm_Trocas_Loc.CODCLIExit(Sender: TObject);
begin
if Trim(CODCLI.Text)='' then
   NOMCLI.Text:='Todos...'
else
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODCLI.Text) then
      NOMCLI.Text:=DM1.Query1.Fields[0].AsString
   else
      begin
      fMensagem('Cliente  Não Cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
      end;
   end;

end;

procedure TFrm_Trocas_Loc.CODVENExit(Sender: TObject);
begin
if Trim(CODVEN.Text)='' then
   NOMVEN.Text:='Todos...'
else
   begin
   if flqr1('VNOME','C','CADVEN','N','VCODVEN',CODVEN.Text) then
      NOMVEN.Text:=DM1.Query1.Fields[0].AsString
   else
      begin
      fMensagem('Vendedor  Não Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end;
   end;

end;

procedure TFrm_Trocas_Loc.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) then
   begin
   CODVEN.Text :=fChamaVen(0,'frm_Trocas_Loc',Key);
   key:=#0;
   end;

end;

procedure TFrm_Trocas_Loc.bbSairClick(Sender: TObject);
begin
CHAVEI.Text:=DM2.Tb_Trocas_CabTCCHAVE.AsString;
Close;
end;

procedure TFrm_Trocas_Loc.bbAtualizarClick(Sender: TObject);
begin
if (Trim(CHAVEI.Text)='') and (Trim(CHAVEF.Text)='') then
   begin
   if fsonumero(CHAVEI.Text)>fsonumero(CHAVEF.Text) then
      begin
      fMensagem('Chave Inicial Maior que Chave Final, invalido!',0,['0'],0);
      CHAVEI.SetFocus;
      exit;
      end;
   end;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      fMensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

DM2.Tb_Trocas_Cab.Close;
DM2.Tb_Trocas_Cab.SQL.Clear;
DM2.Tb_Trocas_Cab.SQL.Add('Select * from CADTRO_CAB ');
mcinst:=' where ';
if not DM1.Qr_Tid.Locate('TINOME','CADP01',[]) then
  begin
  DM2.Tb_Trocas_Cab.SQL.Add(mcinst+fla_sqlmp('TCCODEMP',Form_SelEmp.CLB_EMPRESAS));
  mcinst:=' and ';
  end;

if trim(CHAVEI.Text)<>'' then
   begin
   DM2.Tb_Trocas_Cab.SQL.Add(mcinst+' TCCHAVE>=0'+trim(CHAVEI.Text));
   mcinst:=' and ';
   end;
if trim(CHAVEF.Text)<>'' then
   begin
   DM2.Tb_Trocas_Cab.SQL.Add(mcinst+' TCCHAVE<=0'+trim(CHAVEF.Text));
   mcinst:=' and ';
   end;
if trim(MDT1.Text)<>'/  /' then
   begin
   DM2.Tb_Trocas_Cab.SQL.Add(mcinst+' TCDATA>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if trim(MDT2.Text)<>'/  /' then
   begin
   DM2.Tb_Trocas_Cab.SQL.Add(mcinst+' TCDATA<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;


if trim(CODCLI.Text)<>'' then
   begin
   DM2.Tb_Trocas_Cab.SQL.Add(mcinst+' TCCODCLI=0'+trim(CODCLI.Text));
   mcinst:=' and ';
   end;
if trim(CODVEN.Text)<>'' then
   begin
   DM2.Tb_Trocas_Cab.SQL.Add(mcinst+' TCCODVEN=0'+trim(CODVEN.Text));
   mcinst:=' and ';
   end;
if RG_TIPO.ItemIndex=1 then
   begin
   DM2.Tb_Trocas_Cab.SQL.Add(mcinst+' TCSTATUS<>2');
   mcinst:=' and ';
   end
else if RG_TIPO.ItemIndex=2 then
   begin
   DM2.Tb_Trocas_Cab.SQL.Add(mcinst+' TCSTATUS=2');
   mcinst:=' and ';
   end;
DM2.Tb_Trocas_Cab.SQL.Add(mcinst+' TCSTATUS<>9' );
DM2.Tb_Trocas_Cab.Open;

end;

procedure TFrm_Trocas_Loc.DBGrid1DblClick(Sender: TObject);
begin
CHAVEI.Text:=DM2.Tb_Trocas_CabTCCHAVE.AsString;
close;
end;

procedure TFrm_Trocas_Loc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if Form_SelEmp<>nil then
  begin
  Form_SelEmp.Free;
  Form_SelEmp:=nil;
  end;

if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Trocas_Loc.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
MDT1.Text:=FormatDateTime('dd/mm/yyyy',Now);
end;

procedure TFrm_Trocas_Loc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if Form_SelEmp.WindowState=wsMinimized then
      Form_SelEmp.WindowState:=wsNormal
   else
      Form_SelEmp.Show;
   end
else
   begin
   if pTcAtalho_me<>0 then
      begin
      if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
         begin
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;
end;

procedure TFrm_Trocas_Loc.FormShow(Sender: TObject);
begin
bbAtualizarClick(Self);
end;

end.

unit S_CarCor_Loc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask,db,dbtables,func,S_DM1, Grids,
  DBGrids;

type
  TFrm_CarCor_Loc = class(TForm)
    GroupBox1: TGroupBox;
    Label6: TLabel;
    MDT1: TMaskEdit;
    Label7: TLabel;
    MDT2: TMaskEdit;
    RG_TPDATA: TRadioGroup;
    Label1: TLabel;
    CHAVEI: TEdit;
    CHAVEF: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    NUMNF: TEdit;
    RG_FILTRO: TRadioGroup;
    Label4: TLabel;
    RAZAOSOC: TEdit;
    CB_EXATA: TCheckBox;
    bbPesquisar: TBitBtn;
    bbSair: TBitBtn;
    Panel1: TPanel;
    Qr_CCor01: TQuery;
    Qr_CCor01CC1CODEMP: TFloatField;
    Qr_CCor01CC1CHAVE: TFloatField;
    Qr_CCor01CC1DATA: TDateTimeField;
    Qr_CCor01CC1RAZAO: TStringField;
    Qr_CCor01CC1ENDERECO: TStringField;
    Qr_CCor01CC1CIDADE: TStringField;
    Qr_CCor01CC1NUMNF: TFloatField;
    Qr_CCor01CC1SERIE: TStringField;
    Qr_CCor01CC1DATANF: TDateTimeField;
    Qr_CCor01CC1EMISSAO: TFloatField;
    DBGrid1: TDBGrid;
    Src_CCOR01: TDataSource;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbPesquisarClick(Sender: TObject);
    procedure CHAVEIExit(Sender: TObject);
    procedure CHAVEFExit(Sender: TObject);
    procedure NUMNFExit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CarCor_Loc: TFrm_CarCor_Loc;

implementation

{$R *.dfm}

procedure TFrm_CarCor_Loc.MDT1Exit(Sender: TObject);
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

procedure TFrm_CarCor_Loc.MDT2Exit(Sender: TObject);
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

procedure TFrm_CarCor_Loc.bbPesquisarClick(Sender: TObject);
var
mcomp: String;
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      fMensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
if (Trim(CHAVEI.Text)<>'') and (Trim(CHAVEF.Text)<>'') then
   begin
   if ValInt(CHAVEi.Text)>Valint(CHAVEF.Text) then
      begin
      fMensagem('Chave Inicial maior que final, invalido!',0,['0'],0);
      exit;
      end;
   end;
Qr_CCor01.Close;
Qr_CCor01.SQL.Clear;
Qr_CCor01.sql.Add('Select * from CADCCOR01 ');
mcomp:=' where ';
if not DM1.Qr_Tid.Locate('TINOME','CADNS',[]) then
   begin
   Qr_CCor01.SQL.add(mcomp+' CC1CODEMP=0'+IntToStr(codemp));
   mcomp:=' and ';
   end;
if Trim(MDT1.Text)<>'/  /' then
   begin
   if RG_TPDATA.ItemIndex=0 then
      Qr_CCor01.SQL.Add(mcomp+' CC1DATA>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39))
   else
      Qr_CCor01.SQL.Add(mcomp+' CC1DATANF>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39));
   mcomp:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   if RG_TPDATA.ItemIndex=0 then
      Qr_CCor01.SQL.Add(mcomp+' CC1DATA<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39))
   else
      Qr_CCor01.SQL.Add(mcomp+' CC1DATANF<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
   mcomp:=' and ';
   end;
if Trim(CHAVEI.Text)<>'' then
   begin
   Qr_CCor01.SQL.Add(mcomp+' CC1CHAVE>=0'+Trim(CHAVEI.Text));
   mcomp:=' and ';
   end;
if Trim(CHAVEF.Text)<>'' then
   begin
   Qr_CCor01.SQL.Add(mcomp+' CC1CHAVE<=0'+Trim(CHAVEF.Text));
   mcomp:=' and ';
   end;
if Trim(NUMNF.Text)<>'' then
   begin
   Qr_CCor01.SQL.Add(mcomp+' CC1NUMNF=0'+Trim(NUMNF.Text));
   mcomp:=' and ';
   end;
if RG_FILTRO.ItemIndex<>2 then
   begin
   Qr_CCor01.SQL.Add(mcomp+' CCEMISSAO=0'+IntToStr(RG_FILTRO.ItemIndex));
   mcomp:=' and ';
   end;
if Trim(RAZAOSOC.Text)<>'' then
   begin
   if CB_EXATA.Checked then
      Qr_CCor01.SQL.Add(mcomp+' CC1RAZAO='+chr(39)+RAZAOSOC.Text+chr(39))
   else
      Qr_CCor01.SQL.Add(mcomp+' CC1RAZAO like '+chr(39)+'%'+RAZAOSOC.Text+'%'+chr(39));
   mcomp:=' and ';
   end;
Qr_CCor01.SQL.add('Order by CC1CHAVE ');
Qr_CCor01.Open;

end;

procedure TFrm_CarCor_Loc.CHAVEIExit(Sender: TObject);
begin
CHAVEI.Text:=IntToStr(ValInt(CHAVEI.Text));
if ValInt(CHAVEI.Text)<1 then
   CHAVEI.Text:='';
end;

procedure TFrm_CarCor_Loc.CHAVEFExit(Sender: TObject);
begin
CHAVEF.Text:=IntToStr(ValInt(CHAVEF.Text));
if ValInt(CHAVEF.Text)<1 then
   CHAVEF.Text:='';

end;

procedure TFrm_CarCor_Loc.NUMNFExit(Sender: TObject);
begin
NUMNF.Text:=IntToStr(ValInt(NUMNF.Text));
if ValInt(NUMNF.Text)<1 then
   NUMNF.Text:='';

end;

procedure TFrm_CarCor_Loc.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CarCor_Loc.DBGrid1DblClick(Sender: TObject);
begin
if not Qr_CCor01CC1CHAVE.IsNull then
   bbSair.Click;
end;

procedure TFrm_CarCor_Loc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

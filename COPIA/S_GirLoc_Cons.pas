unit S_GirLoc_Cons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,s_DM1,db,dbtables,S_DM2,func,lerarq,
  Grids, DBGrids;

type
  TFrm_GirLoc_Cons = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    CODGIR_INI: TEdit;
    bbAtualizar: TBitBtn;
    bbSair: TBitBtn;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Src_GC01: TDataSource;
    Label2: TLabel;
    CODGIR_FIN: TEdit;
    Label3: TLabel;
    NOMEGIR: TEdit;
    procedure bbSairClick(Sender: TObject);
    procedure CODGIR_INIExit(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure Src_GC01DataChange(Sender: TObject; Field: TField);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CODGIR_FINExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_GirLoc_Cons: TFrm_GirLoc_Cons;

implementation

{$R *.dfm}

procedure TFrm_GirLoc_Cons.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_GirLoc_Cons.CODGIR_INIExit(Sender: TObject);
begin
CODGIR_INI.text:=fdeixanum(CODGIR_INI.Text);
if ValFloat(CODGIR_INI.Text)=0 then
   CODGIR_INI.Text:=''
else if fsonumero(CODGIR_FIN.Text)=0 then
   CODGIR_FIN.Text:=CODGIR_INI.Text;
end;

procedure TFrm_GirLoc_Cons.bbAtualizarClick(Sender: TObject);
begin

DM2.Tb_GC01.Close;
DM2.Tb_GC01.SQL.Clear;
DM2.Tb_GC01.SQL.Add('Select * from CADGC01 ');
mcinst:=' where ';
if not DM1.Qr_Tid.Locate('TINOME','CADGIR',[]) then
   begin
   DM2.Tb_GC01.SQL.add(mcinst+' GC1CODEMP=0'+Inttostr(codemp));
   mcinst:=' and ';
   end;
if fSonumero(CODGIR_INI.Text)<>0 then
   begin
   DM2.Tb_GC01.Sql.add(mcinst+' GC1CODGIR>=0'+CODGIR_INI.Text);
   mcinst:=' and ';
   end;

if fSonumero(CODGIR_FIN.Text)<>0 then
   begin
   DM2.Tb_GC01.Sql.add(mcinst+' GC1CODGIR<=0'+CODGIR_FIN.Text);
   mcinst:=' and ';
   end;
if trim(NOMEGIR.Text)<>'' then
   begin
   DM2.Tb_GC01.Sql.add(mcinst+' GC1NOMEGIR like :NOMGIR');
   DM2.Tb_GC01.ParamByName('NOMGIR').AsString:=NOMEGIR.Text+'%';
   mcinst:=' and ';
   end;
   DM2.Tb_GC01.Sql.add(mcinst+' GC1TIPGIR=0');
DM2.Tb_GC01.Open;
if DM2.Tb_GC01.Eof then
   begin
   MessageDlg('Giro não Encontrado!',mtWarning,[mbOk],0);
   CODGIR_INI.SetFocus;
   exit;
   end;

end;

procedure TFrm_GirLoc_Cons.Src_GC01DataChange(Sender: TObject;
  Field: TField);
begin
flcadgc02(0,0,0,DM2.Tb_GC01GC1TIPGIR.AsInteger,DM2.Tb_GC01GC1CODGIR.AsString);
if DM2.Tb_GC01GC1TIPGIR.AsInteger=1 then
   begin
   GroupBox2.Caption:='Bairros do Giro';
   DBGrid1.Columns[2].Title.Caption:='Qtd.Bairros';
   DBGrid2.Columns[1].Title.Caption:='Cod.Bairro';
   DBGrid2.Columns[2].Title.Caption:='Nome do Bairro';
   DBGrid2.Columns[3].Visible:=false;
   end
else
   begin
   GroupBox2.Caption:='Cidades do Giro';
   DBGrid1.Columns[2].Title.Caption:='Qtd.Cidade';
   DBGrid2.Columns[1].Title.Caption:='Cod.Cidade';
   DBGrid2.Columns[2].Title.Caption:='Nome da Cidade';
   DBGrid2.Columns[3].Visible:=true;
   end;

end;

procedure TFrm_GirLoc_Cons.DBGrid1DblClick(Sender: TObject);
begin
bbSair.Click;
end;

procedure TFrm_GirLoc_Cons.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if Trim(CODGIR_INI.Text)='' then
   begin
   if not DM2.Tb_GC01GC1CODGIR.IsNull then
      CODGIR_INI.Text:=DM2.Tb_GC01GC1CODGIR.AsString;
   end;

end;

procedure TFrm_GirLoc_Cons.CODGIR_FINExit(Sender: TObject);
begin
CODGIR_FIN.text:=fdeixanum(CODGIR_FIN.Text);
if ValFloat(CODGIR_FIN.Text)=0 then
   CODGIR_FIN.Text:='';

end;

procedure TFrm_GirLoc_Cons.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

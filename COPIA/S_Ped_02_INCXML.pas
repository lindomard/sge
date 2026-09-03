unit S_Ped_02_INCXML;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, DB, DBTables, Grids, DBGrids;

type
  TFrm_Ped_02_INCXML = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edt_nomxml: TEdit;
    sbnProcNFE: TSpeedButton;
    bbLer: TBitBtn;
    bbSair: TBitBtn;
    gb_itens: TGroupBox;
    DBGrid1: TDBGrid;
    Src_NFE_CadDet: TDataSource;
    Qr_NFE_CADCAB: TQuery;
    Qr_NFE_CADDET: TQuery;
    bbSairSemGravar: TBitBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lbl_razsoc: TLabel;
    lbl_cidadeuf: TLabel;
    lbl_valornf: TLabel;
    lbl_numnf: TLabel;
    lbl_dtemissao: TLabel;
    Qr_NFE_CADDETDETPRODCPROD: TStringField;
    Qr_NFE_CADDETDETPRODXPROD: TStringField;
    Qr_NFE_CADDETDETPRODQCOM: TFloatField;
    Qr_NFE_CADDETDETPRODVUNCOM: TFloatField;
    Qr_NFE_CADCABDESTXNOME: TStringField;
    Qr_NFE_CADCABIDEDEMI: TDateTimeField;
    Qr_NFE_CADCABDESTENDERDESTXMUN: TStringField;
    Qr_NFE_CADCABTOTALICMSTOTVNF: TFloatField;
    Qr_NFE_CADCABIDENNF: TFloatField;
    Qr_NFE_CADCABDESTCNPJ: TStringField;
    Qr_NFE_CADCABDESTCPF: TStringField;
    OPD1: TOpenDialog;
    Label7: TLabel;
    lbl_cnpj: TLabel;
    Qr_NFE_CADCABDESTENDERDESTUF: TStringField;
    Qr_NFE_CADDETDETPRODVPROD: TFloatField;
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbLerClick(Sender: TObject);
    procedure sbnProcNFEClick(Sender: TObject);
    procedure bbSairSemGravarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Ped_02_INCXML: TFrm_Ped_02_INCXML;
  mChaveNFE:Real=0;


  mIncXML_Confirmada:Real=0;



implementation

uses S_DM1, Func, S_DM4;

{$R *.dfm}

procedure TFrm_Ped_02_INCXML.bbSairClick(Sender: TObject);
begin
mIncXML_Confirmada:=2;
close;
end;

procedure TFrm_Ped_02_INCXML.FormCreate(Sender: TObject);
begin
lbl_razsoc.Caption:='';
lbl_cidadeuf.Caption:='';
lbl_valornf.Caption:='';
lbl_razsoc.Caption:='';
lbl_numnf.Caption:='';
lbl_cnpj.Caption :='';
lbl_razsoc.Caption:='';
lbl_dtemissao.Caption:='';




end;

procedure TFrm_Ped_02_INCXML.bbLerClick(Sender: TObject);
var
mUltChave:Real;

x: Integer;
begin
Qr_NFE_CADCAB.Close;
Qr_NFE_CADDET.Close;
lbl_razsoc.Caption:='';
lbl_cidadeuf.Caption:='';
lbl_valornf.Caption:='';
lbl_razsoc.Caption:='';
lbl_numnf.Caption:='';
lbl_cnpj.Caption :='';
lbl_razsoc.Caption:='';
lbl_dtemissao.Caption:='';
if trim(edt_nomxml.Text)='' then
   begin
   fmensagem('Favor Digitar um Nome de Arquivo Válido!',0,['0'],0);
   edt_nomxml.setfocus;
   exit;
   end;
mcinst2:=copy(edt_nomxml.Text,length(edt_nomxml.Text)-3,4);
if uppercase(mcinst2)<>'.XML' then
   begin
   fmensagem('o Arquivo tem que ser do tipo XML!',0,['0'],0);
   edt_nomxml.setfocus;
   exit;
   end;
mcinst3:=DM4.Tb_ParGer02PG2NFEPASTAIMP.Value;
if length(mcinst3)<2 then
   mcinst3:='C:\SGE\NFE\IMPRESSAO\';
if mcinst3[length(mcinst3)]<>'\' then
   mcinst3:=mcinst3+'\';
mcinst3:=fRetiraExtensao(mcinst3+Fnomearq_Pasta(0,edt_nomxml.Text));
copyfile(pchar(edt_nomxml.text),pchar(mcinst3+'.$$$'),false);
mUltChave:=0;
DM1.Query1.close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.Add('Select max(CHAVE) from NFE_CADCAB');
DM1.Query1.Open;
mUltChave:=DM1.Query1.Fields[0].AsFloat;
renamefile(mcinst3+'.$$$',mcinst3+'.XML');

for x:=1 to 20 do
   begin
   Sleep(5000);
   DM1.Query1.close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('Select max(CHAVE) from NFE_CADCAB where CHAVE>'+FloatToStr(mUltChave));
   DM1.Query1.Open;
   if DM1.Query1.Fields[0].AsFloat>mUltChave then
      begin
      mChaveNFE:=DM1.Query1.Fields[0].AsFloat;
      break;
      end;
   end;
if mChaveNFE=0 then
   begin
   fmensagem('Não Foi Possivel importar o arquivo xml verifique configurações!',0,['0'],0);
   exit;
   end;
Qr_NFE_CADCAB.close;
Qr_NFE_CADCAB.SQL.Clear;
Qr_NFE_CADCAB.SQL.add('Select DESTXNOME, IDEDEMI, DESTENDERDESTXMUN, TOTALICMSTOTVNF, '
                     +' IDENNF,DESTCNPJ,DESTCPF,DESTENDERDESTUF '
                     +' from NFE_CADCAB where CHAVE=0'+FloatToStr(mChaveNFE));
Qr_NFE_CADCAB.Open;
if Qr_NFE_CADCAB.IsEmpty then
   begin
   fmensagem('Não Foi Possivel importar o arquivo xml verifique configurações!',0,['0'],0);
   exit;
   end
else
   begin
   Qr_NFE_CADDET.close;
   Qr_NFE_CADDET.SQL.Clear;
   Qr_NFE_CADDET.SQL.add('Select DETPRODCPROD, DETPRODXPROD, DETPRODQCOM,DETPRODVUNCOM ,DETPRODVPROD '
                        +' from NFE_CADDET where CHAVE=0'+FloatToStr(mChaveNFE));
   Qr_NFE_CADDET.Open;
   end;
lbl_razsoc.Caption  :=Qr_NFE_CADCABDESTXNOME.Value;
lbl_cidadeuf.Caption:=Qr_NFE_CADCABDESTENDERDESTXMUN.Value+'-'+Qr_NFE_CADCABDESTENDERDESTUF.AsString;


if ValFloat(Qr_NFE_CADCABDESTCNPJ.AsString)>0 then
   lbl_cnpj.Caption:= FormatFloat(pDFCNPJ, ValFloat(Qr_NFE_CADCABDESTCNPJ.AsString))
else
   lbl_cnpj.Caption   :=FormatFloat(pDFCNPF, ValFloat(Qr_NFE_CADCABDESTCPF.AsString));
lbl_valornf.Caption   :=Formatfloat(mcasas, Qr_NFE_CADCABTOTALICMSTOTVNF.AsFloat);
lbl_numnf.Caption     :=Qr_NFE_CADCABIDENNF.AsString;
lbl_dtemissao.Caption :=FormatDateTime(fdt2,  Qr_NFE_CADCABIDEDEMI.AsDateTime);



end;

procedure TFrm_Ped_02_INCXML.sbnProcNFEClick(Sender: TObject);
begin
if OPD1.Execute then
   edt_nomxml.Text:=OPD1.FileName;
end;

procedure TFrm_Ped_02_INCXML.bbSairSemGravarClick(Sender: TObject);
begin
mIncXML_Confirmada:=1;
close;
end;

procedure TFrm_Ped_02_INCXML.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if (mIncXML_Confirmada=0) and (Qr_NFE_CADCAB.RecordCount>0) then
   begin
   fmensagem('Para Fechar esta janela é preciso confirmar ou não Confirmar!',0,['0'],0);
   CanClose:=false;
   end;

end;

end.

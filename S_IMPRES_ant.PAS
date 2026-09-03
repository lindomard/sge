unit S_Impres;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RDprint, StdCtrls, Buttons;

type
  TFrm_Impres = class(TForm)
    RDprint1: TRDprint;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  function fimpresajustaimp(ptamfon,pqtdcol,pqtdlin,pqtdlpp: Integer): Boolean;

var
  Frm_Impres: TFrm_Impres;
  mnormal: Tfonte=[normal];
  mreduz:  Tfonte=[comp17];
  m12ccp:  Tfonte=[Comp12];
  m20ccp:  Tfonte=[Comp20];
  mneg:    TFonte=[normal,negrito];
  mexp:    TFonte=[normal,expandido];
  mlin,mpag: Integer;
function fImprimirCabecalho(pQtdcol: Integer; PTitulo: String ): Integer;

implementation

uses Func, S_DM1;

{$R *.DFM}

function fimpresajustaimp(ptamfon,pqtdcol,pqtdlin,pqtdlpp: Integer): Boolean;

begin
if mFormstayontop then
   Frm_Impres.FormStyle:=fsStayOnTop;

if ptamfon=0 then
   Frm_Impres.RDprint1.FonteTamanhoPadrao:=S05cpp
else if ptamfon=1 then
   Frm_Impres.RDprint1.FonteTamanhoPadrao:=S10cpp
else if ptamfon=2 then
   Frm_Impres.RDprint1.FonteTamanhoPadrao:=S12cpp
else if ptamfon=3 then
   Frm_Impres.RDprint1.FonteTamanhoPadrao:=S17cpp
else if ptamfon=4 then
   Frm_Impres.RDprint1.FonteTamanhoPadrao:=S20cpp;
Frm_Impres.RDprint1.TamanhoQteColunas:=pqtdcol;
Frm_Impres.RDprint1.TamanhoQteLinhas :=pqtdlin;
if pqtdlpp=6 then
   Frm_Impres.RDprint1.TamanhoQteLPP  :=Seis
else if pqtdlpp=8 then
   Frm_Impres.RDprint1.TamanhoQteLPP  :=Oito;
//Frm_Impres.RDprint1.UsaGerenciadorImpr:=true;
Frm_Impres.RDprint1.OpcoesPreview.Preview:=False;
Frm_Impres.RDprint1.SetPrinterbyName(impressora_padrao(0));
Frm_Impres.RDprint1.Abrir;
verteclado(0);
Result:=True;
end;


function fImprimirCabecalho(pQtdcol: Integer; PTitulo: String ): Integer;

begin
mpag:=mpag+1;
mcinst4:=FormatDatetime(fhr, time)+centra(DM1.Tb_EmpRAZAO.Value,' ',pqtdcol-20)+' '+FormatDatetime(fdt2, date);
if pqtdcol<=0 then
   pqtdcol:=80;
if pqtdcol=80 then
   Frm_Impres.RDPrint1.ImpF(01,01,mcinst4,mnormal)
else if pqtdcol=136 then
   Frm_Impres.RDPrint1.ImpF(01,01,mcinst4,mreduz)
else if pqtdcol=96 then
   Frm_Impres.RDPrint1.ImpF(01,01,mcinst4,m12ccp)
else if pqtdcol=160 then
   Frm_Impres.RDPrint1.ImpF(01,01,mcinst4,m20ccp);
mcinst4:=insere2(pTitulo,' ',pqtdcol-13)+'Pagina: '+Formatfloat('0000',mpag);
if pqtdcol=80 then
   Frm_Impres.RDPrint1.ImpF(02,01,mcinst4,mnormal)
else if pqtdcol=136 then
   Frm_Impres.RDPrint1.ImpF(02,01,mcinst4,mreduz)
else if pqtdcol=96 then
   Frm_Impres.RDPrint1.ImpF(02,01,mcinst4,m12ccp)
else if pqtdcol=160 then
   Frm_Impres.RDPrint1.ImpF(02,01,mcinst4,m20ccp);
mlin:=2;
result:=02;
end;
procedure TFrm_Impres.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if mFormstayontop then
   Frm_Impres:=nil;
end;

procedure TFrm_Impres.FormCreate(Sender: TObject);
begin
if mFormstayontop then
   Frm_Impres.FormStyle:=fsStayOnTop;
end;

end.

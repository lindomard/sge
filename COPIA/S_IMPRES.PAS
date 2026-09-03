unit S_Impres;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RDprint, StdCtrls, Buttons;

type
  TFrm_Impres = class(TForm)
    RDprint1: TRDprint;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    mnormal     :Tfonte;
    mreduz      :Tfonte;
    m12ccp      :Tfonte;
    m12ccp_neg  :Tfonte;
    m20ccp      :Tfonte;
    mneg        :Tfonte;
    mnegreduz   :Tfonte;
    mComp20reduz:Tfonte;
    mexp        :Tfonte;
    mlin,mpag: Integer;

   function fimpresajustaimp(ptamfon,pqtdcol,pqtdlin,pqtdlpp: Integer): Boolean;
   function fImprimirCabecalho(pQtdcol: Integer; PTitulo: String ): Integer;

  end;

var
  Frm_Impres: TFrm_Impres;

implementation

uses Func, S_DM1;

{$R *.DFM}

function TFrm_Impres.fimpresajustaimp(ptamfon,pqtdcol,pqtdlin,pqtdlpp: Integer): Boolean;

begin
if ptamfon=0 then
   RDprint1.FonteTamanhoPadrao:=S05cpp
else if ptamfon=1 then
   RDprint1.FonteTamanhoPadrao:=S10cpp
else if ptamfon=2 then
   RDprint1.FonteTamanhoPadrao:=S12cpp
else if ptamfon=3 then
   RDprint1.FonteTamanhoPadrao:=S17cpp
else if ptamfon=4 then
   RDprint1.FonteTamanhoPadrao:=S20cpp;
RDprint1.TamanhoQteColunas:=pqtdcol;
RDprint1.TamanhoQteLinhas :=pqtdlin;
if pqtdlpp=6 then
   RDprint1.TamanhoQteLPP  :=Seis
else if pqtdlpp=8 then
   RDprint1.TamanhoQteLPP  :=Oito;
//Frm_Impres.RDprint1.UsaGerenciadorImpr:=true;
RDprint1.OpcoesPreview.PreviewZoom:=88;
RDprint1.OpcoesPreview.Preview:=False;
RDprint1.SetPrinterbyName(impressora_padrao(0));
RDprint1.Abrir;
Result:=True;
end;

function tFrm_Impres.fImprimirCabecalho(pQtdcol: Integer; PTitulo: String ): Integer;
begin
mpag:=mpag+1;
mcinst4:=FormatDatetime(fhr, time)+centra(DM1.Tb_EmpRAZAO.Value,' ',pqtdcol-20)+' '+FormatDatetime(fdt2, date);
if pqtdcol<=0 then
   pqtdcol:=80;
if pqtdcol=80 then
   RDPrint1.ImpF(01,01,mcinst4,mnormal)
else if pqtdcol=136 then
   RDPrint1.ImpF(01,01,mcinst4,mreduz)
else if pqtdcol=96 then
   RDPrint1.ImpF(01,01,mcinst4,m12ccp)
else if pqtdcol=160 then
   RDPrint1.ImpF(01,01,mcinst4,m20ccp);
mcinst4:=insere2(pTitulo,' ',pqtdcol-13)+'Pagina: '+Formatfloat('0000',mpag);
if pqtdcol=80 then
   RDPrint1.ImpF(02,01,mcinst4,mnormal)
else if pqtdcol=136 then
   RDPrint1.ImpF(02,01,mcinst4,mreduz)
else if pqtdcol=96 then
   RDPrint1.ImpF(02,01,mcinst4,m12ccp)
else if pqtdcol=160 then
   RDPrint1.ImpF(02,01,mcinst4,m20ccp);
mlin:=2;
result:=02;
end;

procedure TFrm_Impres.FormCreate(Sender: TObject);
begin
    mnormal     :=[normal];
    mreduz      :=[comp17];
    m12ccp      :=[Comp12];
    m12ccp_neg  :=[Comp12,negrito];
    m20ccp      :=[Comp20];
    mneg        :=[normal,negrito];
    mnegreduz   :=[comp17,negrito];
    mComp20reduz:=[comp17,negrito];
    mexp        :=[normal,expandido];
end;

procedure TFrm_Impres.FormActivate(Sender: TObject);
begin
//BringToFront;
end;

procedure TFrm_Impres.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

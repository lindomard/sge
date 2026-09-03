unit s_Executar_Igestao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,shellapi;
{
type
  TDadosChamadaExterna = record
  pAplicacao: String;
  pCodEmp: Integer;
  pCodUsr: Integer;
  pCodCai: Integer;
  pNomUsr: String;

  end;
}
type
  TFrm_Executar_Igestao = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    edt_nome: TEdit;
    Timer_saida: TTimer;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    hWnd : THandle;

    mnomeaplicativo : string;
  public
    { Public declarations }


    function fExecutarJanelaExterna: boolean;
//    function fExecutarJanelaExterna(pDadosChamadaExterna: TDadosChamadaExterna): boolean;

  end;
  

var
  Frm_Executar_Igestao: TFrm_Executar_Igestao;

implementation

uses Func;

{$R *.dfm}

procedure TFrm_Executar_Igestao.BitBtn1Click(Sender: TObject);
begin
//fcriararquivofecharigestao(fRetiraExtensao(mnomeaplicativo)+'.CLO');
end;

//function TFrm_Executar_Igestao.fExecutarJanelaExterna(pDadosChamadaExterna: TDadosChamadaExterna): boolean;

function TFrm_Executar_Igestao.fExecutarJanelaExterna: boolean;
var
mparametros: string;
begin


//mnomeaplicativo:=pDadosChamadaExterna.pAplicacao;
{pDadosChamadaExterna.pCodEmp:=codemp;
pDadosChamadaExterna.pCodUsr:=codusr;
pDadosChamadaExterna.pCodCai:=codcai;
pDadosChamadaExterna.pNomUsr:=nomusr;
mparametros:=inttostr(pDadosChamadaExterna.pCodEmp)+' '+inttostr(pDadosChamadaExterna.pCodUsr)
             +' '+inttostr(pDadosChamadaExterna.pCodCai)
             +' '+pDadosChamadaExterna.pNomUsr;
}

mparametros:=inttostr(CodEmp)+' '+inttostr(CodUsr)
             +' '+inttostr(CodCai)
             +' '+NomUsr;

ShellExecute(Application.Handle,'Open',pchar(mNomeAplicativo),PChar(mparametros),nil,SW_normal);

hWnd := 0;
while hWnd = 0 do
   begin
   hWnd := FindWindow(nil, Pchar('VERSAO EXTERNA'));
   sleep(100);
//   ShowMessage(INTTOSTR(HWND));
   Windows.SetParent(hWnd,Panel2.Handle);
   Windows.SetWindowPos(hWnd,0,100,100,400,400,0);
   Windows.ShowWindow(hWnd,SW_MAXIMIZE);
   end;
end;


procedure TFrm_Executar_Igestao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
KillTask(Fnomearq_Pasta(0,mnomeaplicativo));


if (FormState<>[fsModal]) then
   action:=cafree;

end;


procedure TFrm_Executar_Igestao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
//fcriararquivofecharigestao(fRetiraExtensao(mnomeaplicativo)+'.CLO');


{
While true do
   begin
   if fqtdprogaberto('VERSAO EXTERNA')<1 then
      break;
   end;
}
end;

procedure TFrm_Executar_Igestao.BitBtn2Click(Sender: TObject);
begin
//Label2.caption:=inttostr(fqtdprogaberto('VERSAO EXTERNA'));
Label2.caption:=inttostr(QtdTask(Fnomearq_Pasta(0,mnomeaplicativo)));

end;

procedure TFrm_Executar_Igestao.BitBtn3Click(Sender: TObject);
begin
  PostMessage(FindWindow(nil,Pchar(edt_nome.Text)),WM_CLOSE,0,0);
//  PostMessage(FindWindow(nil, ´Calculadora´), WM_CLOSE,0,0);
end;

procedure TFrm_Executar_Igestao.BitBtn4Click(Sender: TObject);
begin
KillTask(edt_nome.Text);
end;


procedure TFrm_Executar_Igestao.FormCreate(Sender: TObject);
begin
    mnomeaplicativo := 'C:\IGESTAO\IGESTAO_CLIENT.EXE';

//    deleteFile(fRetiraExtensao(mnomeaplicativo)+'.CLO');


end;

end.

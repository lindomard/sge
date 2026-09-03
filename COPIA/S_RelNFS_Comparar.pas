unit S_RelNFS_Comparar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DB, RxMemDS, DBGrids;

type
  TFrm_RelNFS_Comparar = class(TForm)
    Panel1: TPanel;
    bbSalvar: TBitBtn;
    StringGrid1: TStringGrid;
    mem_nfs: TRxMemoryData;
    src_nfs: TDataSource;
    DBGrid_nfs: TDBGrid;
    mem_nfsger_numeronf: TIntegerField;
    mem_nfsns_valor: TFloatField;
    mem_nfspla_valor: TFloatField;
    mem_nfsger_difer: TFloatField;
    bbSair: TBitBtn;
    SaveDialog1: TSaveDialog;
    procedure bbSairClick(Sender: TObject);
    procedure bbSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mNomeArquivo: String;

    function fLerPlanilha(pNomeArq: String): Boolean;

  end;

var
  Frm_RelNFS_Comparar: TFrm_RelNFS_Comparar;

implementation

uses Func, funcoes_especificas;

{$R *.dfm}

function TFrm_RelNFS_Comparar.fLerPlanilha(pNomeArq: String): Boolean;
begin
if not FileExists(pNomeArq) then
   begin
   MessageDlg(pNomeArq+' arquivo não encontrado!',mtError,[mbOk],0);
   result:=false;
   exit;
   end;
if Xls_To_StringGrid(StringGrid1, pNomeArq) then
   result:=true
else
   begin
   MessageDlg(pNomeArq+' não é um arquivo do excel válido!',mtError,[mbOk],0);
   result:=false;
   end;
end;
procedure TFrm_RelNFS_Comparar.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RelNFS_Comparar.bbSalvarClick(Sender: TObject);
var
mLista: TStrings;
mLinha: Integer;
begin
SaveDialog1.FileName:='c:\sge\planinha_nfe.csv';
if SaveDialog1.Execute then
   begin
   mLista:=TStringList.Create;
   mem_nfs.First;
   mLinha:=0;
   mLista.Add('Numero NF;Valor NS;Valor Planilha');
   While not mem_nfs.Eof do
      begin
      mLinha:=mLinha+1;
      mLista.Add(mem_nfsger_numeronf.AsString+';'+FormatFloat(mcasas, mem_nfsns_valor.AsFloat)
                +';'+FormatFloat(mcasas, mem_nfspla_valor.AsFloat)+';=B'+intTostr(mlinha+1)+'-C'+IntTostr(mlinha+1));
      mem_nfs.Next;
      end;
   mLista.SaveToFile(fRetiraExtensao(SaveDialog1.filename)+'.csv');
   freeandnil(mlista);
   MessageDlg('Arquivo '+fRetiraExtensao(SaveDialog1.filename)+'.csv gravado!',mtWarning,[mbOk],0 );
   end;
end;

end.

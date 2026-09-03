unit S_Ocorrencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ImgList, ExtCtrls;

type
  TFrm_Ocorrencias = class(TForm)
    Label2: TLabel;
    lbl_ocorrencia: TLabel;
    ImageList1: TImageList;
    ListView1: TListView;
    Panel1: TPanel;
    bbFechar: TBitBtn;
    bbContinuar: TBitBtn;
    bbSalvar: TBitBtn;
    SaveDialog1: TSaveDialog;
    procedure bbFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbContinuarClick(Sender: TObject);
    procedure bbSalvarClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    mErros: Boolean;
    mPosicaoItem: Integer;
    mResposta: Integer; // 0-Cancelar 1-Continuar
    procedure adicionaItemListView(sValue: String);

  end;

var
  Frm_Ocorrencias: TFrm_Ocorrencias;

implementation

{$R *.dfm}

procedure TFrm_Ocorrencias.bbFecharClick(Sender: TObject);
begin
mResposta:=0;

close;
end;

procedure TFrm_Ocorrencias.FormCreate(Sender: TObject);
begin
    mErros:=false;
    mPosicaoItem:=0;
    mResposta:=0;

end;

procedure TFrm_Ocorrencias.adicionaItemListView(sValue: String);
var
  lvItem: TListItem;
begin
    lvItem := ListView1.Items.Add;
    lvItem.ImageIndex := -1;
    lvItem.SubItems.Add(sValue);
  mPosicaoItem:=ListView1.Items.Count-1;
  Listview1.Scroll(0, Listview1.Items.Count * Listview1.VisibleRowCount);

end;

procedure TFrm_Ocorrencias.bbContinuarClick(Sender: TObject);
begin
    mResposta:=1;
    close;

end;

procedure TFrm_Ocorrencias.bbSalvarClick(Sender: TObject);
var
mLista: TStringList;
x_lista: integer;
begin
SaveDialog1.FileName:=ExtractFilePath(Application.ExeName)+'OCORRENCIAS.TXT';
if SaveDialog1.Execute then
   begin
   mLista:=TStringList.create;
   for x_lista:=0 to ListView1.Items.Count-1 do
      begin
      mLista.Add(ListView1.Items[x_lista].SubItems[0]);
      end;
   try
      mLista.SaveToFile(SaveDialog1.filename);
   except on e : exception do
      begin
      Messagedlg('Erro ao Gravar o arquivo '+SaveDialog1.FileName+' '+e.message,mterror,[mbOk],0);
      end;
      end;
   end;
end;

end.

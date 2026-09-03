unit S_DEGRADE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtDlgs, Buttons, jpeg, ExtCtrls;

type
  TFrm_Degrade = class(TForm)
    abre_imagem: TOpenPictureDialog;
    Uparger: TUpdateSQL;
    parger: TQuery;
    pargerPIMAGEM_DEGRADE: TBlobField;
    Panel1: TPanel;
    Image2: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Panel2: TPanel;
    Image20: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure Image19Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Degrade: TFrm_Degrade;
  imagem1  : Boolean;
  imagem3  : Boolean;
  imagem4  : Boolean;
  imagem5  : Boolean;
  imagem6  : Boolean;
  imagem7  : Boolean;
  imagem8  : Boolean;
  imagem9  : Boolean;
  imagem10 : Boolean;
  imagem11 : Boolean;
  imagem12 : Boolean;
  imagem13 : Boolean;
  imagem14 : Boolean;
  imagem15 : Boolean;
  imagem16 : Boolean;
  imagem17 : Boolean;
  imagem18 : Boolean;

  imagem_aux : TBitmap;
implementation

uses S_DM1,  Func;

{$R *.dfm}

procedure TFrm_Degrade.SpeedButton1Click(Sender: TObject);
begin


fMensagem('Escolha Uma Das Imagens Abaixo....',0,['0'],0);
{
If abre_imagem.Execute then
   begin
   Try
      Image1.Picture.LoadFromFile(abre_imagem.FileName);
   except
      MessageDlg('Figura Invalida. Valida Somente JPG!',mtWarning,[mbOk],0);
      end;
   end;
}
end;

procedure TFrm_Degrade.SpeedButton2Click(Sender: TObject);
begin

    image20.Picture.SaveToFile('c:\sge\image20.jpg');
    abre_imagem.FileName:='C:\SGE\IMAGE20.JPG';
    Image1.Picture.LoadFromFile(abre_imagem.FileName);

    parger.Close;
    parger.sql.Clear;
    parger.sql.add('update parger set pimagem_degrade = :ppimagem_degrade');
    parger.sql.add(' where ');
    parger.sql.add(' codigo = 1 ');
    parger.parambyname('ppimagem_degrade').LoadFromFile(abre_imagem.FileName,ftBlob);
    try
    parger.ExecSQL;
    except
         showmessage('Ocorreu Um Erro De Gravação - Consulte Suporte Intersys...');
    end;
    showmessage('Ok - Imagem Gravada...');

IF DM1.Tb_PargerPIMAGEM_DEGRADE.Value <> '' THEN
    if FileExists('c:\sge\image20.jpg') then
    begin
{
       frm_ppal.Image2.Picture.LoadFromFile('C:\SGE\IMAGE20.JPG');
       frm_ppal.Image4.Picture.LoadFromFile('C:\SGE\IMAGE20.JPG');
       frm_ppal.Image6.Picture.LoadFromFile('C:\SGE\IMAGE20.JPG');
       }
    end;

end;

procedure TFrm_Degrade.SpeedButton3Click(Sender: TObject);
begin
FormCreate(self);
close;
end;

procedure TFrm_Degrade.FormCreate(Sender: TObject);
begin

IF DM1.Tb_PargerPIMAGEM_DEGRADE.Value <> '' THEN
   if FileExists('c:\sge\image20.jpg') then
      image20.Picture.LoadFromFile('C:\SGE\IMAGE20.JPG');

{
    parger.Close;
    parger.sql.clear;
    parger.sql.add('select * from parger where codigo = 1 ');
    parger.open;

    if not parger.IsEmpty then
    begin
        if pargerPIMAGEM_DEGRADE.Value <> '' then
        begin
//           Image1.Picture.Graphic.LoadFromFile(pargerPIMAGEM_DEGRADE.Value);
//             flparger(0,0,'1');
             if DM1.Tb_PargerPUSA_DEGRADE.Value = 1 then
             if DM1.Tb_PargerPIMAGEM_DEGRADE.Value <> '' then
             begin
             frm_ppal.Image1.Visible:=false;
          //   image1.Picture.LoadFromFile(mlogomarcas+'LOGO0.JPG');
             frm_ppal.Image1.Picture.Graphic.LoadFromFile(DM1.Tb_PargerPIMAGEM_DEGRADE.Value);
          //   flparger(0,0,'1');
             if DM1.Tb_PargerPTAMJPG.Value=0 then
                frm_ppal.Image1.Align:=alClient
             else
                begin
                if (DM1.Tb_PargerPTAMJPGALT.AsInteger>Frm_PPal.Height) or
                   (DM1.Tb_PargerPTAMJPGTAM.AsInteger>Frm_PPal.Width) then
                   frm_ppal.Image1.Align:=alClient
                else if DM1.Tb_PargerPTAMJPGALT.AsFloat>0 then
                   frm_ppal.Image1.Height:=DM1.Tb_PargerPTAMJPGALT.AsInteger;
                if DM1.Tb_PargerPTAMJPGTAM.AsFloat>0 then
                   frm_ppal.Image1.Width:=DM1.Tb_PargerPTAMJPGTAM.AsInteger;
//                mqtd:=(Frm_PPal.Width-frm_ppal.Image1.Width) div 2;
//                frm_ppal.Image1.Left:=mqtd;
//                mqtd:=(Frm_PPal.Height-frm_ppal.Image1.Height) div 2;
//                frm_ppal.Image1.Top :=mqtd;
                end;
             frm_ppal.Image1.Visible:=True;
             end;

        end;
    end;
}
end;

procedure TFrm_Degrade.Image1Click(Sender: TObject);
begin
     image20.Picture.Assign(image1.Picture);
end;

procedure TFrm_Degrade.Image3Click(Sender: TObject);
begin
     image20.Picture.Assign(image3.Picture);
end;

procedure TFrm_Degrade.Image4Click(Sender: TObject);
begin
     image20.Picture.Assign(image4.Picture);
end;

procedure TFrm_Degrade.Image5Click(Sender: TObject);
begin
     image20.Picture.Assign(image5.Picture);
end;

procedure TFrm_Degrade.Image6Click(Sender: TObject);
begin
     image20.Picture.Assign(image6.Picture);
end;

procedure TFrm_Degrade.Image7Click(Sender: TObject);
begin
     image20.Picture.Assign(image7.Picture);
end;

procedure TFrm_Degrade.Image8Click(Sender: TObject);
begin
     image20.Picture.Assign(image8.Picture);
end;

procedure TFrm_Degrade.Image9Click(Sender: TObject);
begin
     image20.Picture.Assign(image9.Picture);
end;

procedure TFrm_Degrade.Image10Click(Sender: TObject);
begin
     image20.Picture.Assign(image10.Picture);
end;

procedure TFrm_Degrade.Image11Click(Sender: TObject);
begin
     image20.Picture.Assign(image11.Picture);
end;

procedure TFrm_Degrade.Image12Click(Sender: TObject);
begin
     image20.Picture.Assign(image12.Picture);
end;

procedure TFrm_Degrade.Image13Click(Sender: TObject);
begin
     image20.Picture.Assign(image13.Picture);
end;

procedure TFrm_Degrade.Image14Click(Sender: TObject);
begin
     image20.Picture.Assign(image14.Picture);
end;

procedure TFrm_Degrade.Image15Click(Sender: TObject);
begin
     image20.Picture.Assign(image15.Picture);
end;

procedure TFrm_Degrade.Image16Click(Sender: TObject);
begin
     image20.Picture.Assign(image16.Picture);
end;

procedure TFrm_Degrade.Image17Click(Sender: TObject);
begin
     image20.Picture.Assign(image17.Picture);
end;

procedure TFrm_Degrade.Image18Click(Sender: TObject);
begin
     image20.Picture.Assign(image18.Picture);
end;

procedure TFrm_Degrade.Image19Click(Sender: TObject);
begin
     image20.Picture.Assign(image19.Picture);
end;

procedure TFrm_Degrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

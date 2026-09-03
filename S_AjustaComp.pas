unit S_AjustaComp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,S_Pro,S_Cli, Grids, ExtCtrls, Mask, ComCtrls,
  DBCtrls, DBGrids,func, DB, DBTables;

type
  TFrm_AjustaComp = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Src_Componentes: TDataSource;
    Label5: TLabel;
    rg_pesquisar: TRadioGroup;
    GroupBox2: TGroupBox;
    DESCRICAO: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tsOutros: TTabSheet;
    Label2: TLabel;
    DBE_CAPTION: TDBEdit;
    Label1: TLabel;
    DBE_Tam: TDBEdit;
    sbTamMais: TSpeedButton;
    sbTamMenos: TSpeedButton;
    Label3: TLabel;
    DBE_Height: TDBEdit;
    SBHeigthMais: TSpeedButton;
    SBHeigthMenos: TSpeedButton;
    Label4: TLabel;
    DBE_Top: TDBEdit;
    SBTopMais: TSpeedButton;
    SBTopMenos: TSpeedButton;
    Label8: TLabel;
    DBE_Left: TDBEdit;
    SBLeftMais: TSpeedButton;
    SBLeftMenos: TSpeedButton;
    DBCB_Visivel: TDBCheckBox;
    lbl_ordedit: TLabel;
    DBE_order: TDBEdit;
    lbl_index: TLabel;
    DBE_Index: TDBEdit;
    lbl_parent: TLabel;
    DBCb_parent: TDBComboBox;
    GroupBox3: TGroupBox;
    bbCancelar: TBitBtn;
    bbGravar: TBitBtn;
    bbSair: TBitBtn;
    lbl_color: TLabel;
    DBE_Color: TDBEdit;
    ColorDialog1: TColorDialog;
    SB_Color: TSpeedButton;
    GB_Fonte: TGroupBox;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    SBFONTE: TSpeedButton;
    Label11: TLabel;
    DBEdit3: TDBEdit;
    Label12: TLabel;
    DBEdit4: TDBEdit;
    Label13: TLabel;
    DBEdit5: TDBEdit;
    FontDialog1: TFontDialog;
    RG_ALIGNMENT: TDBRadioGroup;
    RG_ALIGN: TDBRadioGroup;
    tsBordas: TTabSheet;
    RG_BEVELINNER: TDBRadioGroup;
    RG_BEVELKIND: TDBRadioGroup;
    RG_BEVELOUTER: TDBRadioGroup;
    RG_BORDERSTYLE: TDBRadioGroup;
    DBCB_Ctl3D: TDBCheckBox;
    DBCB_ShowHint: TDBCheckBox;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    DBCB_Enabled: TDBCheckBox;
    DBText1: TDBText;
    RG_APRESENT: TRadioGroup;
    DBCB_FSBOLD: TDBCheckBox;
    DBCB_ITALIC: TDBCheckBox;
    DBCB_FSUNDERLINE: TDBCheckBox;
    DBCB_FSSTRIKEOUT: TDBCheckBox;
    DBText2: TDBText;
    procedure sbTamMaisClick(Sender: TObject);
    procedure sbTamMenosClick(Sender: TObject);
    procedure SBHeigthMaisClick(Sender: TObject);
    procedure SBHeigthMenosClick(Sender: TObject);
    procedure SBTopMaisClick(Sender: TObject);
    procedure SBTopMenosClick(Sender: TObject);
    procedure SBLeftMaisClick(Sender: TObject);
    procedure SBLeftMenosClick(Sender: TObject);
    procedure DBE_TamExit(Sender: TObject);
    procedure Src_ComponentesDataChange(Sender: TObject; Field: TField);
    procedure DBE_CAPTIONChange(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DESCRICAOChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbGravarClick(Sender: TObject);
    procedure SB_ColorClick(Sender: TObject);
    procedure SBFONTEClick(Sender: TObject);
    procedure DBCb_parentExit(Sender: TObject);
    procedure DBCB_VisivelClick(Sender: TObject);
    procedure RG_BEVELINNERClick(Sender: TObject);
    procedure RG_ALIGNMENTChange(Sender: TObject);
    procedure RG_APRESENTEnter(Sender: TObject);
    procedure RG_APRESENTExit(Sender: TObject);
    procedure RG_BEVELINNERExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

  public
    { Public declarations }
  end;
function fAtualizarComponentes(pTipo: Integer): Boolean;

var
  Frm_AjustaComp: TFrm_AjustaComp;
  mComp        : TClass;
  mNomeClasse  : String;
// novas
  pItemAntes       : Integer=99999;
  pCorAntes        : TColor;
  pCorMarca        : Tcolor=clRed;
  pClasAntes       : TClass;
  pNomeClasse_Antes: String;
  pNomeComp_Antes  : String;
  pAtualizaComponente: Boolean=True;
  mApresent_ant: Integer;
  mBloqueiaChange: Boolean=False;
implementation

uses S_PerForm,S_ConfForm;


{$R *.dfm}

procedure TFrm_AjustaComp.sbTamMaisClick(Sender: TObject);
begin
if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
   Frm_PerForm.Tb_Componentes.Edit;
Frm_PerForm.Tb_ComponentesTamanho.Value:=Frm_PerForm.Tb_ComponentesTamanho.Value+1;
fAtualizarComponentes(0);

end;

procedure TFrm_AjustaComp.sbTamMenosClick(Sender: TObject);
begin
if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
   Frm_PerForm.Tb_Componentes.Edit;

Frm_PerForm.Tb_ComponentesTamanho.Value:=Frm_PerForm.Tb_ComponentesTamanho.Value-1;
fAtualizarComponentes(0);

end;

procedure TFrm_AjustaComp.SBHeigthMaisClick(Sender: TObject);
begin
if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
   Frm_PerForm.Tb_Componentes.Edit;

Frm_PerForm.Tb_ComponentesHeight.Value:=Frm_PerForm.Tb_ComponentesHeight.Value+1;
fAtualizarComponentes(0);

end;

procedure TFrm_AjustaComp.SBHeigthMenosClick(Sender: TObject);
begin
if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
   Frm_PerForm.Tb_Componentes.Edit;

Frm_PerForm.Tb_ComponentesHeight.Value:=Frm_PerForm.Tb_ComponentesHeight.Value-1;
fAtualizarComponentes(0);

end;

procedure TFrm_AjustaComp.SBTopMaisClick(Sender: TObject);
begin
if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
   Frm_PerForm.Tb_Componentes.Edit;

Frm_PerForm.Tb_ComponentesTop.Value:=Frm_PerForm.Tb_ComponentesTop.Value+1;
fAtualizarComponentes(0);

end;

procedure TFrm_AjustaComp.SBTopMenosClick(Sender: TObject);
begin
if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
   Frm_PerForm.Tb_Componentes.Edit;

Frm_PerForm.Tb_ComponentesTop.Value:=Frm_PerForm.Tb_ComponentesTop.Value-1;
fAtualizarComponentes(0);

end;

procedure TFrm_AjustaComp.SBLeftMaisClick(Sender: TObject);
begin
if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
   Frm_PerForm.Tb_Componentes.Edit;

Frm_PerForm.Tb_ComponentesmLeft.Value:=Frm_PerForm.Tb_ComponentesmLeft.Value+1;
fAtualizarComponentes(0);

end;

procedure TFrm_AjustaComp.SBLeftMenosClick(Sender: TObject);
begin
if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
   Frm_PerForm.Tb_Componentes.Edit;

Frm_PerForm.Tb_ComponentesmLeft.Value:=Frm_PerForm.Tb_ComponentesmLeft.Value-1;
fAtualizarComponentes(0);

end;

procedure TFrm_AjustaComp.DBE_TamExit(Sender: TObject);
begin
//if pAtualizaComponente then
   fAtualizarComponentes(0);

end;

function fAtualizarComponentes(pTipo: Integer): Boolean;
var
func_nomeClasse: STring;
x: Integer;
begin
//lindomar
if ptipo=1 then
   begin
   if not (Frm_PerForm.Tb_Componentes.State in [dsEdit, dsInsert]) then
      Frm_PerForm.Tb_Componentes.Edit;
   end;
func_nomeClasse:=LowerCase(Frm_PerForm.Tb_ComponentesClasse.Value);


if func_nomeClasse='form' then
   begin

   Frm_AjustaComp.RG_BORDERSTYLE.Items.Clear;
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('bsDialog');
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('bsNone');
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('bsSingle');
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('bsSizeable');
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('bsSizeToolWin');
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('bsTooolWindow');

   Frm_AjustaComp.RG_BORDERSTYLE.Values.Clear;
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('0');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('1');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('2');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('3');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('4');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('5');

   Frm_AjustaComp.RG_BEVELINNER.Visible :=true;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=true;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=true;
   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=true;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=true;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=True;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=True;
   Frm_AjustaComp.RG_ALIGN.Visible      :=True;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;


   if ptipo=0 then
      begin
      Frm_confForm.Width      :=Frm_PerForm.Tb_ComponentesTamanho.AsInteger;
      Frm_confForm.Height     :=Frm_PerForm.Tb_ComponentesHeight.Value;
      Frm_confForm.Top        :=Frm_PerForm.Tb_ComponentesTop.Value;
      Frm_confForm.Left       :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      Frm_confForm.Caption    :=Frm_PerForm.Tb_ComponentesCaption.Value;
// inclusoes
      Frm_confForm.Color      :=Frm_PerForm.Tb_ComponentesColor.Value;

      Frm_confForm.Font.Height:=Frm_PerForm.Tb_Componentesfont_height.Value;
      Frm_confForm.Font.Size  :=Frm_PerForm.Tb_Componentesfont_size.Value;
      Frm_confForm.Font.Name  :=Frm_PerForm.Tb_Componentesfont_name.Value;

//      Frm_confForm.Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;


      case Frm_PerForm.Tb_Componentesborderstyle.AsInteger of
         0: Frm_confForm.BorderStyle:=bsDialog;
         1: Frm_confForm.BorderStyle:=bsNone;
         2: Frm_confForm.BorderStyle:=bsSingle;
         3: Frm_confForm.BorderStyle:=bsSizeable;
         4: Frm_confForm.BorderStyle:=bsSizeToolWin;
         5: Frm_confForm.BorderStyle:=bsToolWindow;
         end;
      if Frm_PerForm.Tb_Componentesfont_color.AsInteger<>-1 then
         Frm_confForm.Font.Color :=Frm_PerForm.Tb_Componentesfont_color.Value;

      case Frm_PerForm.Tb_ComponentesAlign.AsInteger of
         0: Frm_confForm.Align := alBottom;
         1: Frm_confForm.Align := alClient;
         2: Frm_confForm.Align := alCustom;
         3: Frm_confForm.Align := alLeft;
         4: Frm_confForm.Align := alNone;
         5: Frm_confForm.Align := alRight;
         6: Frm_confForm.Align := alTop;
         end;
//      Frm_ConfForm.Visible:=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
      Frm_ConfForm.Ctl3D  :=Frm_PerForm.Tb_ComponentesCtl3D.AsInteger=0;
//      Frm_ConfForm.Enabled:=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      if Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0 then
         begin
         Frm_ConfForm.ShowHint:=true;
         Frm_ConfForm.Hint    :=Frm_PerForm.Tb_ComponentesHint.AsString;
         end
      else
         begin
         Frm_ConfForm.ShowHint:=false;
         Frm_ConfForm.Hint    :='';
         end;

      if (Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger
         +Frm_PerForm.Tb_Componentesfont_ftunderline.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger)<4 then
         begin
         if Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger=0 then
            begin
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     Frm_ConfForm.Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                  else
                     Frm_ConfForm.Font.Style:=[fsBold,fsItalic,fsUnderline];
                  end
               else
                  Frm_ConfForm.Font.Style:=[fsBold,fsItalic]
               end
            else
                Frm_ConfForm.Font.Style:=[fsBold]
            end
         else
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     Frm_ConfForm.Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                  else
                     Frm_ConfForm.Font.Style:=[fsItalic,fsUnderline];
                  end
               else
                  Frm_ConfForm.Font.Style:=[fsItalic];
               end
            else
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     Frm_ConfForm.Font.Style:=[fsUnderline,fsStrikeOut]
                  else
                     Frm_ConfForm.Font.Style:=[fsUnderline];
                  end
             else
                if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                  Frm_ConfForm.Font.Style:=[fsStrikeOut];
         end;
      end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value    :=Frm_confForm.Width;
      Frm_PerForm.Tb_ComponentesHeight.Value     :=Frm_confForm.Height;
      Frm_PerForm.Tb_ComponentesTop.Value        :=Frm_confForm.Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value      :=Frm_confForm.Left;
      Frm_PerForm.Tb_ComponentesCaption.Value    :=Frm_confForm.Caption;
      Frm_PerForm.Tb_Componentesfont_height.Value:=Frm_confForm.Font.Height;
      Frm_PerForm.Tb_Componentesfont_size.Value  :=Frm_confForm.Font.Size;
      Frm_PerForm.Tb_Componentesfont_name.Value  :=Frm_confForm.Font.Name;
      Frm_PerForm.Tb_Componentesborderstyle.Value:=-1;
      Frm_PerForm.Tb_ComponentesColor.Value      :=Frm_confForm.Color;

      Frm_PerForm.Tb_Componentesfont_color.Value :=Frm_ConfForm.Font.Color;

      case Frm_PerForm.BorderStyle of
         bsDialog      : Frm_PerForm.Tb_Componentesborderstyle.Value :=0;
         bsNone        : Frm_PerForm.Tb_Componentesborderstyle.Value :=1;
         bsSingle      : Frm_PerForm.Tb_Componentesborderstyle.Value :=2;
         bsSizeable    : Frm_PerForm.Tb_Componentesborderstyle.Value :=3;
         bsSizeToolWin : Frm_PerForm.Tb_Componentesborderstyle.Value :=4;
         bsToolWindow  : Frm_PerForm.Tb_Componentesborderstyle.Value :=5;
         end;
      Frm_PerForm.Tb_ComponentesAlign.Value:=-1;
      case Frm_PerForm.Align of
         alBottom      : Frm_PerForm.Tb_ComponentesAlign.Value :=0;
         alClient      : Frm_PerForm.Tb_ComponentesAlign.Value :=1;
         alCustom      : Frm_PerForm.Tb_ComponentesAlign.Value :=2;
         alLeft        : Frm_PerForm.Tb_ComponentesAlign.Value :=3;
         alNone        : Frm_PerForm.Tb_ComponentesAlign.Value :=4;
         alRight       : Frm_PerForm.Tb_ComponentesAlign.Value :=5;
         alTop         : Frm_PerForm.Tb_ComponentesAlign.Value :=6;
         end;

//      Frm_PerForm.Tb_ComponentesVisivel.Value :=iif(Frm_ConfForm.Visible,0,1);
      Frm_PerForm.Tb_ComponentesCtl3D.Value   :=iif(Frm_ConfForm.Ctl3D,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value :=iif(Frm_ConfForm.Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value  :=iif(Frm_ConfForm.ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value      :=Frm_ConfForm.hint;
      if Frm_ConfForm.Font.Style=[fsbold] then
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=1;
      if Frm_ConfForm.Font.Style=[fsItalic] then
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=1;
      if Frm_ConfForm.Font.Style=[fsUnderline] then
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=1;
      if Frm_ConfForm.Font.Style=[fsStrikeOut] then
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=1;

      end;
   end
else if func_nomeClasse='tlabel' then
   begin
//   if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Name='Label13'  then
//      ShowMessage('Achou');

   Frm_AjustaComp.RG_BEVELINNER.Visible :=False;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=False;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=False;
   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=False;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=False;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=True;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=True;
   Frm_AjustaComp.RG_ALIGN.Visible      :=True;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;
   if ptipo=0 then
      begin
      for x:=0 to High(mwinControl) do
         begin
         if uppercase(mWinControl[x].Name)=Uppercase(Frm_PerForm.Tb_ComponentesParent_Nome.Value) then
            begin
            (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Parent:=mWinControl[x];
            break;
            end;
         end;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Width  :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Height :=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Top    :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Left   :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Caption:=Frm_PerForm.Tb_ComponentesCaption.Value;
       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Font.Height:=Frm_PerForm.Tb_Componentesfont_height.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Font.Size  :=Frm_PerForm.Tb_Componentesfont_size.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Font.Name  :=Frm_PerForm.Tb_Componentesfont_name.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Font.Color :=Frm_PerForm.Tb_Componentesfont_color.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Color      :=Frm_PerForm.Tb_Componentescolor.Value;

{
      case Frm_PerForm.Tb_ComponentesAlign.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Align := alBottom;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Align := alClient;
         2: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Align := alCustom;
         3: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Align := alLeft;
         4: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Align := alNone;
         5: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Align := alRight;
         6: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Align := alTop;
         end;
}
      case Frm_PerForm.Tb_ComponentesAlignment.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Alignment:= taCenter;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Alignment:= taLeftJustify;
         2: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Alignment:= taRightJustify;
         end;


      if Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0 then
         begin
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).ShowHint:=true;
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Hint    :=Frm_PerForm.Tb_ComponentesHint.AsString;
         end
      else
         begin
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).ShowHint:=false;
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Hint    :='';
         end;

      if (Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FtUNDERLINE.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger)<4 then
         begin
         if Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger=0 then
            begin
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Font.Style:=[fsBold,fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Font.Style:=[fsBold,fsItalic]
               end
            else
                (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Font.Style:=[fsBold]
            end
         else
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                  else
                    (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Font.Style:=[fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Font.Style:=[fsItalic];
               end
            else
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Font.Style:=[fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Font.Style:=[fsUnderline];
                  end
             else
                if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Font.Style:=[fsStrikeOut];
         end;


      end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Height;
      Frm_PerForm.Tb_ComponentesTop.Value         :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value       :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Left;
      Frm_PerForm.Tb_ComponentesCaption.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Caption;
//      Frm_PerForm.Tb_ComponentesVisivel.Value     :=iif( (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Visible, 0, 1);
      Frm_PerForm.Tb_Componentesfont_height.Value :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Font.Height;
      Frm_PerForm.Tb_Componentesfont_size.Value   :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Font.Size;
      Frm_PerForm.Tb_Componentesfont_name.Value   :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Font.Name;
      Frm_PerForm.Tb_Componentesfont_color.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Font.Color;
      Frm_PerForm.Tb_Componentescolor.Value       :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Color;

      {
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Align  of
         alBottom: Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         alClient: Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         alCustom: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         alLeft  : Frm_PerForm.Tb_ComponentesAlign.Value:=3;
         alNone  : Frm_PerForm.Tb_ComponentesAlign.Value:=4;
         alRight : Frm_PerForm.Tb_ComponentesAlign.Value:=5;
         alTop   : Frm_PerForm.Tb_ComponentesAlign.Value:=6;
         end;
         }
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Alignment  of
         taCenter      : Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         taLeftJustify : Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         taRightJustify: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         end;
      Frm_PerForm.Tb_ComponentesShowHint.Value:=iif((Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Hint;

      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Font.Style=[fsbold] then
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Font.Style=[fsItalic] then
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Font.Style=[fsUnderline] then
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TLabel).Font.Style=[fsStrikeOut] then
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=1;
      end;
   end
else if func_nomeClasse='tedit' then
   begin
   Frm_AjustaComp.RG_BEVELINNER.Visible :=true;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=true;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=true;
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Clear;
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('bsNone');
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('bsSingle');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Clear;
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('0');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('1');

   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=true;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=true;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=True;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=False;
   Frm_AjustaComp.RG_ALIGN.Visible      :=False;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;

   if ptipo=0 then
      begin
      for x:=0 to High(mwinControl) do
         begin
         if uppercase(mWinControl[x].Name)=Uppercase(Frm_PerForm.Tb_ComponentesParent_Nome.Value) then
            begin
            (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Parent:=mWinControl[x];
            break;
            end;
         end;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Width      :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Height     :=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Top        :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Left       :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Text       :=Frm_PerForm.Tb_ComponentesCaption.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Font.Height:=Frm_PerForm.Tb_Componentesfont_height.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Font.Size  :=Frm_PerForm.Tb_Componentesfont_size.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Font.Name  :=Frm_PerForm.Tb_Componentesfont_name.Value;

       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;

//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Font.Color:=Frm_PerForm.Tb_Componentesfont_color.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Color      :=Frm_PerForm.Tb_Componentescolor.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Visible:=
//       Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Ctl3D:=
      Frm_PerForm.Tb_ComponentesCtl3D.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Enabled
//      :=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).ShowHint
      :=Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Hint
      :=Frm_PerForm.Tb_ComponentesHint.AsString;
      case Frm_PerForm.Tb_Componentesborderstyle.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).BorderStyle:=bsNone;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).BorderStyle:=bsSingle;
         end;
      case Frm_PerForm.Tb_Componentesbevelinner.AsInteger of
         0 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).BevelInner:= bvLowered;
         1 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).BevelInner:= bvNone;
         2 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).BevelInner:= bvRaised;
         3 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).BevelInner:= bvSpace;
         end;

      case Frm_PerForm.Tb_ComponentesbevelKind.AsInteger of
         0 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).BevelKind:= bkFlat;
         1 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).BevelKind:= bkNone;
         2 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).BevelKind:= bkSoft;
         3 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).BevelKind:= bkTile;
         end;

      case Frm_PerForm.Tb_ComponentesbevelOuter.AsInteger of
         0 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).BevelOuter:= bvLowered;
         1 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).BevelOuter:= bvNone;
         2 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).BevelOuter:= bvRaised;
         3 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).BevelOuter:= bvSpace;
         end;


      if (Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FtUNDERLINE.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger)<4 then
         begin
         if Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger=0 then
            begin
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Font.Style:=[fsBold,fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Font.Style:=[fsBold,fsItalic]
               end
            else
                (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Font.Style:=[fsBold]
            end
         else
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                  else
                    (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Font.Style:=[fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Font.Style:=[fsItalic];
               end
            else
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Font.Style:=[fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Font.Style:=[fsUnderline];
                  end
             else
                if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Font.Style:=[fsStrikeOut];
         end;
{      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).TabOrder  :=Frm_PerForm.Tb_Componentescampo_order.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Refresh;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).TabOrder  <>Frm_PerForm.Tb_Componentescampo_order.Value then
         begin
         if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
            Frm_PerForm.Tb_Componentes.Edit;
         Frm_PerForm.Tb_Componentescampo_order.Value:=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).TabOrder;
         end;
 }     end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Height;
      Frm_PerForm.Tb_ComponentesTop.Value        :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Left;
      Frm_PerForm.Tb_ComponentesCaption.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Text;
      Frm_PerForm.Tb_Componentesfont_height.Value:=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Font.Height;
      Frm_PerForm.Tb_Componentesfont_size.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Font.Size;
      Frm_PerForm.Tb_Componentesfont_name.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Font.Name;
      Frm_PerForm.Tb_Componentesfont_color.Value :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Font.Color;
      Frm_PerForm.Tb_Componentescolor.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Color;
//      Frm_PerForm.Tb_ComponentesVisivel.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Visible,0,1);
      Frm_PerForm.Tb_ComponentesCtl3D.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Ctl3D,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value
      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Hint;
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).BorderStyle of
          bsNone   :Frm_PerForm.Tb_Componentesborderstyle.Value:=0;
          bsSingle :Frm_PerForm.Tb_Componentesborderstyle.Value:=1;
          end;

      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).BevelInner of
          bvLowered :Frm_PerForm.Tb_Componentesbevelinner.Value:=0;
          bvNone    :Frm_PerForm.Tb_Componentesbevelinner.Value:=1;
          bvRaised  :Frm_PerForm.Tb_Componentesbevelinner.Value:=2;
          bvSpace   :Frm_PerForm.Tb_Componentesbevelinner.Value:=3;
          end;


      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).BevelOuter of
          bvLowered :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=0;
          bvNone    :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=1;
          bvRaised  :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=2;
          bvSpace   :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=3;
          end;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Font.Style=[fsbold] then
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Font.Style=[fsItalic] then
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Font.Style=[fsUnderline] then
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).Font.Style=[fsStrikeOut] then
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=1;
//      Frm_PerForm.Tb_Componentescampo_order.Value:=  (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TEdit).TabOrder;
      end;

   end
else if func_nomeClasse='tbitbtn' then
   begin
   Frm_AjustaComp.RG_BEVELINNER.Visible :=true;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=true;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=true;
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Clear;
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('bsNone');
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('bsSingle');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Clear;
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('0');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('1');

   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=true;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=true;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=True;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=False;
   Frm_AjustaComp.RG_ALIGN.Visible      :=False;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;

   if ptipo=0 then
      begin
      for x:=0 to High(mwinControl) do
         begin
         if uppercase(mWinControl[x].Name)=Uppercase(Frm_PerForm.Tb_ComponentesParent_Nome.Value) then
            begin
            (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Parent:=mWinControl[x];
            break;
            end;
         end;

      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Width  :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Height :=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Top    :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Left   :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Caption:=Frm_PerForm.Tb_ComponentesCaption.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Font.Height:=Frm_PerForm.Tb_Componentesfont_height.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Font.Size  :=Frm_PerForm.Tb_Componentesfont_size.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Font.Name  :=Frm_PerForm.Tb_Componentesfont_name.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitbtn).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Font.Color:=Frm_PerForm.Tb_Componentesfont_color.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Visible:=
//       Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Enabled
//      :=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).ShowHint
      :=Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Hint
      :=Frm_PerForm.Tb_ComponentesHint.AsString;
      if (Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FtUNDERLINE.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger)<4 then
         begin
         if Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger=0 then
            begin
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Font.Style:=[fsBold,fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Font.Style:=[fsBold,fsItalic]
               end
            else
                (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Font.Style:=[fsBold]
            end
         else
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                  else
                    (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Font.Style:=[fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Font.Style:=[fsItalic];
               end
            else
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Font.Style:=[fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Font.Style:=[fsUnderline];
                  end
             else
                if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Font.Style:=[fsStrikeOut];
         end;


      end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Height;
      Frm_PerForm.Tb_ComponentesTop.Value        :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Left;
      Frm_PerForm.Tb_ComponentesCaption.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tBitBtn).Caption;
      Frm_PerForm.Tb_Componentesfont_height.Value:=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tBitBtn).Font.Height;
      Frm_PerForm.Tb_Componentesfont_size.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tBitBtn).Font.Size;
      Frm_PerForm.Tb_Componentesfont_name.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tBitBtn).Font.Name;
      Frm_PerForm.Tb_Componentesfont_color.Value :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tBitBtn).Font.Color;
//      Frm_PerForm.Tb_ComponentesVisivel.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tBitBtn).Visible,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tBitBtn).Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tBitBtn).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value
      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tBitBtn).Hint;

      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Font.Style=[fsbold] then
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Font.Style=[fsItalic] then
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Font.Style=[fsUnderline] then
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBitBtn).Font.Style=[fsStrikeOut] then
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=1;

{
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tBitBtn).Align  of
         alBottom: Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         alClient: Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         alCustom: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         alLeft  : Frm_PerForm.Tb_ComponentesAlign.Value:=3;
         alNone  : Frm_PerForm.Tb_ComponentesAlign.Value:=4;
         alRight : Frm_PerForm.Tb_ComponentesAlign.Value:=5;
         alTop   : Frm_PerForm.Tb_ComponentesAlign.Value:=6;
         end;
}
      end;
   end
else if func_nomeClasse='tpage' then
   begin
   Frm_AjustaComp.RG_BEVELINNER.Visible :=False;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=False;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=False;
   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=False;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=False;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=False;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=False;
   Frm_AjustaComp.RG_ALIGN.Visible      :=true;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;

   if ptipo=0 then
      begin
      for x:=0 to High(mwinControl) do
         begin
         if uppercase(mWinControl[x].Name)=Uppercase(Frm_PerForm.Tb_ComponentesParent_Nome.Value) then
            begin
            (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPage).Parent:=mWinControl[x];
            break;
            end;
         end;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPage).Width      :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPage).Height     :=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPage).Top        :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPage).Left       :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPage).Caption    :=Frm_PerForm.Tb_ComponentesCaption.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPage).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPage).Visible:=
//       Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
{
       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPage).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPage).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPage).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;
 }
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPage).Enabled
//      :=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPage).ShowHint
      :=Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPage).Hint
      :=Frm_PerForm.Tb_ComponentesHint.AsString;
      end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPage).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPage).Height;
      Frm_PerForm.Tb_ComponentesTop.Value        :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPage).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPage).Left;
      Frm_PerForm.Tb_ComponentesCaption.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPage).Caption;
//      Frm_PerForm.Tb_ComponentesVisivel.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPage).Visible,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPage).Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPage).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value
      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPage).Hint;

      end;
   end
else if func_nomeClasse='tpanel' then
   begin
   Frm_AjustaComp.RG_BEVELINNER.Visible :=True;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=True;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=True;
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Clear;
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('bsNone');
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('bsSingle');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Clear;
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('0');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('1');

   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=True;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=True;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=True;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=True;
   Frm_AjustaComp.RG_ALIGN.Visible      :=true;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;

   if ptipo=0 then
      begin
      for x:=0 to High(mwinControl) do
         begin
         if uppercase(mWinControl[x].Name)=Uppercase(Frm_PerForm.Tb_ComponentesParent_Nome.Value) then
            begin
            (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Parent:=mWinControl[x];
            break;
            end;
         end;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Width :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Height:=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Top   :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Left  :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Width      :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Height     :=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Top        :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Left       :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Caption    :=Frm_PerForm.Tb_ComponentesCaption.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Font.Height:=Frm_PerForm.Tb_Componentesfont_height.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Font.Size  :=Frm_PerForm.Tb_Componentesfont_size.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Font.Name  :=Frm_PerForm.Tb_Componentesfont_name.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
{       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;
}      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Font.Color :=Frm_PerForm.Tb_Componentesfont_color.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Color      :=Frm_PerForm.Tb_Componentescolor.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Visible:=
//       Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Ctl3D:=
      Frm_PerForm.Tb_ComponentesCtl3D.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Enabled
//      :=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).ShowHint
      :=Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Hint
      :=Frm_PerForm.Tb_ComponentesHint.AsString;
      case Frm_PerForm.Tb_Componentesborderstyle.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).BorderStyle:=bsNone;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).BorderStyle:=bsSingle;
         end;
      case Frm_PerForm.Tb_Componentesbevelinner.AsInteger of
         0 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).BevelInner:= bvLowered;
         1 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).BevelInner:= bvNone;
         2 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).BevelInner:= bvRaised;
         3 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).BevelInner:= bvSpace;
         end;


      case Frm_PerForm.Tb_ComponentesbevelOuter.AsInteger of
         0 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).BevelOuter:= bvLowered;
         1 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).BevelOuter:= bvNone;
         2 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).BevelOuter:= bvRaised;
         3 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).BevelOuter:= bvSpace;
         end;

{
      case Frm_PerForm.Tb_ComponentesAlign.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Align := alBottom;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Align := alClient;
         2: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Align := alCustom;
         3: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Align := alLeft;
         4: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Align := alNone;
         5: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Align := alRight;
         6: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Align := alTop;
         end;
 }

      case Frm_PerForm.Tb_ComponentesAlignment.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Alignment:= taCenter;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Alignment:= taLeftJustify;
         2: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Alignment:= taRightJustify;
         end;
      if (Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FtUNDERLINE.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger)<4 then
         begin
         if Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger=0 then
            begin
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Font.Style:=[fsBold,fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Font.Style:=[fsBold,fsItalic]
               end
            else
                (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Font.Style:=[fsBold]
            end
         else
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                  else
                    (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Font.Style:=[fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Font.Style:=[fsItalic];
               end
            else
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Font.Style:=[fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Font.Style:=[fsUnderline];
                  end
             else
                if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Font.Style:=[fsStrikeOut];
         end;


      end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Height;
      Frm_PerForm.Tb_ComponentesTop.Value        :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Left;
      Frm_PerForm.Tb_ComponentesCaption.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Caption;
      Frm_PerForm.Tb_Componentesfont_height.Value:=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Font.Height;
      Frm_PerForm.Tb_Componentesfont_size.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Font.Size;
      Frm_PerForm.Tb_Componentesfont_name.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Font.Name;
      Frm_PerForm.Tb_Componentescolor.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Color;
      Frm_PerForm.Tb_Componentesfont_color.Value :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Font.Color;
//      Frm_PerForm.Tb_ComponentesVisivel.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Visible,0,1);
      Frm_PerForm.Tb_ComponentesCtl3D.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Ctl3D,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value
      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Hint;
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).BorderStyle of
          bsNone   :Frm_PerForm.Tb_Componentesborderstyle.Value:=0;
          bsSingle :Frm_PerForm.Tb_Componentesborderstyle.Value:=1;
          end;

      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).BevelInner of
          bvLowered :Frm_PerForm.Tb_Componentesbevelinner.Value:=0;
          bvNone    :Frm_PerForm.Tb_Componentesbevelinner.Value:=1;
          bvRaised  :Frm_PerForm.Tb_Componentesbevelinner.Value:=2;
          bvSpace   :Frm_PerForm.Tb_Componentesbevelinner.Value:=3;
          end;


      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).BevelOuter of
          bvLowered :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=0;
          bvNone    :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=1;
          bvRaised  :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=2;
          bvSpace   :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=3;
          end;
{
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Align  of
         alBottom: Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         alClient: Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         alCustom: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         alLeft  : Frm_PerForm.Tb_ComponentesAlign.Value:=3;
         alNone  : Frm_PerForm.Tb_ComponentesAlign.Value:=4;
         alRight : Frm_PerForm.Tb_ComponentesAlign.Value:=5;
         alTop   : Frm_PerForm.Tb_ComponentesAlign.Value:=6;
         end;
 }     case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Alignment  of
         taCenter      : Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         taLeftJustify : Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         taRightJustify: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         end;

      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Font.Style=[fsbold] then
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Font.Style=[fsItalic] then
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Font.Style=[fsUnderline] then
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPanel).Font.Style=[fsStrikeOut] then
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=1;


      end
   end
else if func_nomeClasse='tcombobox' then
   begin
   Frm_AjustaComp.RG_BEVELINNER.Visible :=True;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=True;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=True;
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Clear;
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('bsNone');
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('bsSingle');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Clear;
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('0');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('1');

   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=True;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=True;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=True;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=True;
   Frm_AjustaComp.RG_ALIGN.Visible      :=true;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;

   if ptipo=0 then
      begin
      for x:=0 to High(mwinControl) do
         begin
         if uppercase(mWinControl[x].Name)=Uppercase(Frm_PerForm.Tb_ComponentesParent_Nome.Value) then
            begin
            (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TComboBox).Parent:=mWinControl[x];
            break;
            end;
         end;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Width      :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Height     :=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Top        :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Left       :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Text       :=Frm_PerForm.Tb_ComponentesCaption.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Color      :=Frm_PerForm.Tb_Componentescolor.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Font.Height:=Frm_PerForm.Tb_Componentesfont_height.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Font.Size  :=Frm_PerForm.Tb_Componentesfont_size.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Font.Name  :=Frm_PerForm.Tb_Componentesfont_name.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;

       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TComboBox).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TComboBox).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TComboBox).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;

      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Font.Color:=Frm_PerForm.Tb_Componentesfont_color.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Visible:=
//       Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Ctl3D:=
      Frm_PerForm.Tb_ComponentesCtl3D.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Enabled
//      :=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).ShowHint
      :=Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Hint
      :=Frm_PerForm.Tb_ComponentesHint.AsString;
      case Frm_PerForm.Tb_Componentesbevelinner.AsInteger of
         0 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).BevelInner:= bvLowered;
         1 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).BevelInner:= bvNone;
         2 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).BevelInner:= bvRaised;
         3 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).BevelInner:= bvSpace;
         end;

      case Frm_PerForm.Tb_ComponentesbevelKind.AsInteger of
         0 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).BevelKind:= bkFlat;
         1 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).BevelKind:= bkNone;
         2 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).BevelKind:= bkSoft;
         3 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).BevelKind:= bkTile;
         end;

      case Frm_PerForm.Tb_ComponentesbevelOuter.AsInteger of
         0 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).BevelOuter:= bvLowered;
         1 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).BevelOuter:= bvNone;
         2 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).BevelOuter:= bvRaised;
         3 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).BevelOuter:= bvSpace;
         end;
      if (Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FtUNDERLINE.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger)<4 then
         begin
         if Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger=0 then
            begin
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TComboBox).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TComboBox).Font.Style:=[fsBold,fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TComboBox).Font.Style:=[fsBold,fsItalic]
               end
            else
                (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TComboBox).Font.Style:=[fsBold]
            end
         else
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TComboBox).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                  else
                    (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TComboBox).Font.Style:=[fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TComboBox).Font.Style:=[fsItalic];
               end
            else
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TComboBox).Font.Style:=[fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TComboBox).Font.Style:=[fsUnderline];
                  end
             else
                if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TComboBox).Font.Style:=[fsStrikeOut];
         end;

       end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value        :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Left;
      Frm_PerForm.Tb_ComponentesCaption.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Text;
      Frm_PerForm.Tb_Componentesfont_height.Value:=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Font.Height;
      Frm_PerForm.Tb_Componentesfont_size.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Font.Size;
      Frm_PerForm.Tb_Componentesfont_name.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Font.Name;
      Frm_PerForm.Tb_Componentesfont_color.Value :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Font.Color;
      Frm_PerForm.Tb_Componentescolor.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Color;
//      Frm_PerForm.Tb_ComponentesVisivel.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Visible,0,1);
      Frm_PerForm.Tb_ComponentesCtl3D.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Ctl3D,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value
      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Hint;

      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).BevelInner of
          bvLowered :Frm_PerForm.Tb_Componentesbevelinner.Value:=0;
          bvNone    :Frm_PerForm.Tb_Componentesbevelinner.Value:=1;
          bvRaised  :Frm_PerForm.Tb_Componentesbevelinner.Value:=2;
          bvSpace   :Frm_PerForm.Tb_Componentesbevelinner.Value:=3;
          end;


      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).BevelOuter of
          bvLowered :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=0;
          bvNone    :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=1;
          bvRaised  :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=2;
          bvSpace   :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=3;
          end;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Font.Style=[fsbold] then
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Font.Style=[fsItalic] then
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Font.Style=[fsUnderline] then
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Font.Style=[fsStrikeOut] then
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=1;

{
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TCombobox).Align  of
         alBottom: Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         alClient: Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         alCustom: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         alLeft  : Frm_PerForm.Tb_ComponentesAlign.Value:=3;
         alNone  : Frm_PerForm.Tb_ComponentesAlign.Value:=4;
         alRight : Frm_PerForm.Tb_ComponentesAlign.Value:=5;
         alTop   : Frm_PerForm.Tb_ComponentesAlign.Value:=6;
         end;
 }     end
   end
else if func_nomeClasse='tmaskedit' then
   begin
   Frm_AjustaComp.RG_BEVELINNER.Visible :=True;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=True;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=True;
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Clear;
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('bsNone');
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('bsSingle');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Clear;
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('0');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('1');

   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=True;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=True;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=True;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=True;
   Frm_AjustaComp.RG_ALIGN.Visible      :=true;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;

   if ptipo=0 then
      begin
      for x:=0 to High(mwinControl) do
         begin
         if uppercase(mWinControl[x].Name)=Uppercase(Frm_PerForm.Tb_ComponentesParent_Nome.Value) then
            begin
            (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskEdit).Parent:=mWinControl[x];
            break;
            end;
         end;

      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Width      :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Height     :=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Top        :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Left       :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Text       :=Frm_PerForm.Tb_ComponentesCaption.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Font.Height:=Frm_PerForm.Tb_Componentesfont_height.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Font.Size  :=Frm_PerForm.Tb_Componentesfont_size.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Font.Name  :=Frm_PerForm.Tb_Componentesfont_name.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Color      :=Frm_PerForm.Tb_Componentescolor.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Font.Color :=Frm_PerForm.Tb_Componentesfont_color.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Visible:=
//       Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskEdit).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskEdit).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskEdit).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;

      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Ctl3D:=
      Frm_PerForm.Tb_ComponentesCtl3D.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Enabled
//      :=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).ShowHint
      :=Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Hint
      :=Frm_PerForm.Tb_ComponentesHint.AsString;
      case Frm_PerForm.Tb_Componentesborderstyle.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).BorderStyle:=bsNone;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).BorderStyle:=bsSingle;
         end;
      case Frm_PerForm.Tb_Componentesbevelinner.AsInteger of
         0 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).BevelInner:= bvLowered;
         1 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).BevelInner:= bvNone;
         2 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).BevelInner:= bvRaised;
         3 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).BevelInner:= bvSpace;
         end;

      case Frm_PerForm.Tb_ComponentesbevelKind.AsInteger of
         0 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).BevelKind:= bkFlat;
         1 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).BevelKind:= bkNone;
         2 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).BevelKind:= bkSoft;
         3 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).BevelKind:= bkTile;
         end;

      case Frm_PerForm.Tb_ComponentesbevelOuter.AsInteger of
         0 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).BevelOuter:= bvLowered;
         1 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).BevelOuter:= bvNone;
         2 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).BevelOuter:= bvRaised;
         3 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).BevelOuter:= bvSpace;
         end;
      if (Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FtUNDERLINE.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger)<4 then
         begin
         if Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger=0 then
            begin
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Font.Style:=[fsBold,fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Font.Style:=[fsBold,fsItalic]
               end
            else
                (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Font.Style:=[fsBold]
            end
         else
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                  else
                    (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Font.Style:=[fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Font.Style:=[fsItalic];
               end
            else
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Font.Style:=[fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Font.Style:=[fsUnderline];
                  end
             else
                if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Font.Style:=[fsStrikeOut];
         end;



     end
  else
     begin
     Frm_PerForm.Tb_ComponentesTamanho.Value := (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tMaskEdit).Width;
     Frm_PerForm.Tb_ComponentesHeight.Value  := (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tMaskEdit).Height;
     Frm_PerForm.Tb_ComponentesTop.Value     := (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tMaskEdit).Top;
     Frm_PerForm.Tb_ComponentesmLeft.Value    := (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tMaskEdit).Left;

      Frm_PerForm.Tb_ComponentesTamanho.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Height;
      Frm_PerForm.Tb_ComponentesTop.Value        :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Left;
      Frm_PerForm.Tb_ComponentesCaption.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Text;
      Frm_PerForm.Tb_Componentesfont_height.Value:=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Font.Height;
      Frm_PerForm.Tb_Componentesfont_size.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Font.Size;
      Frm_PerForm.Tb_Componentesfont_name.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Font.Name;
      Frm_PerForm.Tb_Componentesfont_color.Value :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Font.Color;
      Frm_PerForm.Tb_Componentescolor.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Color;
//      Frm_PerForm.Tb_ComponentesVisivel.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Visible,0,1);
      Frm_PerForm.Tb_ComponentesCtl3D.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Ctl3D,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value
      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Hint;
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).BorderStyle of
          bsNone   :Frm_PerForm.Tb_Componentesborderstyle.Value:=0;
          bsSingle :Frm_PerForm.Tb_Componentesborderstyle.Value:=1;
          end;

      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).BevelInner of
          bvLowered :Frm_PerForm.Tb_Componentesbevelinner.Value:=0;
          bvNone    :Frm_PerForm.Tb_Componentesbevelinner.Value:=1;
          bvRaised  :Frm_PerForm.Tb_Componentesbevelinner.Value:=2;
          bvSpace   :Frm_PerForm.Tb_Componentesbevelinner.Value:=3;
          end;


      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).BevelOuter of
          bvLowered :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=0;
          bvNone    :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=1;
          bvRaised  :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=2;
          bvSpace   :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=3;
          end;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Font.Style=[fsbold] then
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Font.Style=[fsItalic] then
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Font.Style=[fsUnderline] then
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Font.Style=[fsStrikeOut] then
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=1;

{
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TMaskedit).Align  of
         alBottom: Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         alClient: Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         alCustom: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         alLeft  : Frm_PerForm.Tb_ComponentesAlign.Value:=3;
         alNone  : Frm_PerForm.Tb_ComponentesAlign.Value:=4;
         alRight : Frm_PerForm.Tb_ComponentesAlign.Value:=5;
         alTop   : Frm_PerForm.Tb_ComponentesAlign.Value:=6;
         end;
}
     end;
   end
else if func_nomeClasse='ttabsheet' then
   begin
   Frm_AjustaComp.RG_BEVELINNER.Visible :=False;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=False;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=False;
   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=False;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=False;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=True;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=True;
   Frm_AjustaComp.RG_ALIGN.Visible      :=true;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;

   if ptipo=0 then
      begin
     (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabSheet).Width :=Frm_PerForm.Tb_ComponentesTamanho.Value;
     (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabSheet).Height:=Frm_PerForm.Tb_ComponentesHeight.Value;
     (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabSheet).Top   :=Frm_PerForm.Tb_ComponentesTop.Value;
     (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabSheet).Left  :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Width      :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Height     :=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Top        :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Left       :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Caption    :=Frm_PerForm.Tb_ComponentesCaption.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Font.Height:=Frm_PerForm.Tb_Componentesfont_height.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Font.Size  :=Frm_PerForm.Tb_Componentesfont_size.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Font.Name  :=Frm_PerForm.Tb_Componentesfont_name.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Visible:=
//       Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
{
       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabSheet).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabSheet).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabSheet).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;
}
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Enabled
//      :=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).ShowHint
      :=Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Hint
      :=Frm_PerForm.Tb_ComponentesHint.AsString;


      if (Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FtUNDERLINE.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger)<4 then
         begin
         if Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger=0 then
            begin
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Font.Style:=[fsBold,fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Font.Style:=[fsBold,fsItalic]
               end
            else
                (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Font.Style:=[fsBold]
            end
         else
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                  else
                    (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Font.Style:=[fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Font.Style:=[fsItalic];
               end
            else
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Font.Style:=[fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Font.Style:=[fsUnderline];
                  end
             else
                if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Font.Style:=[fsStrikeOut];
         end;

{

      case Frm_PerForm.Tb_ComponentesAlign.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Align := alBottom;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Align := alClient;
         2: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Align := alCustom;
         3: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Align := alLeft;
         4: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Align := alNone;
         5: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Align := alRight;
         6: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Align := alTop;
         end;
 }

      end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Height;
      Frm_PerForm.Tb_ComponentesTop.Value        :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Left;
      Frm_PerForm.Tb_ComponentesCaption.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Caption;
      Frm_PerForm.Tb_Componentesfont_height.Value:=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Font.Height;
      Frm_PerForm.Tb_Componentesfont_size.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Font.Size;
      Frm_PerForm.Tb_Componentesfont_name.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Font.Name;
      Frm_PerForm.Tb_Componentesfont_color.Value :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Font.Color;
//      Frm_PerForm.Tb_ComponentesVisivel.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Visible,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value
      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Hint;

      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Font.Style=[fsbold] then
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Font.Style=[fsItalic] then
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Font.Style=[fsUnderline] then
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Font.Style=[fsStrikeOut] then
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=1;

{
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TTabsheet).Align  of
         alBottom: Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         alClient: Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         alCustom: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         alLeft  : Frm_PerForm.Tb_ComponentesAlign.Value:=3;
         alNone  : Frm_PerForm.Tb_ComponentesAlign.Value:=4;
         alRight : Frm_PerForm.Tb_ComponentesAlign.Value:=5;
         alTop   : Frm_PerForm.Tb_ComponentesAlign.Value:=6;
         end;
}      end;
   end

else if func_nomeClasse='tpagecontrol' then
   begin
   Frm_AjustaComp.RG_BEVELINNER.Visible :=False;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=False;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=False;
   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=False;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=False;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=True;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=True;
   Frm_AjustaComp.RG_ALIGN.Visible      :=true;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;

   if ptipo=0 then
      begin
      for x:=0 to High(mwinControl) do
         begin
         if uppercase(mWinControl[x].Name)=Uppercase(Frm_PerForm.Tb_ComponentesParent_Nome.Value) then
            begin
            (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Parent:=mWinControl[x];
            break;
            end;
         end;

      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Width      :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Height     :=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Top        :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Left       :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Font.Height:=Frm_PerForm.Tb_Componentesfont_height.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Font.Size  :=Frm_PerForm.Tb_Componentesfont_size.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Font.Name  :=Frm_PerForm.Tb_Componentesfont_name.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Visible:=
//       Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
{
       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPagecontrol).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;
}
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Enabled
//      :=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).ShowHint
      :=Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Hint
      :=Frm_PerForm.Tb_ComponentesHint.AsString;
{

      case Frm_PerForm.Tb_ComponentesAlign.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Align := alBottom;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Align := alClient;
         2: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Align := alCustom;
         3: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Align := alLeft;
         4: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Align := alNone;
         5: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Align := alRight;
         6: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Align := alTop;
         end;
}

      if (Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FtUNDERLINE.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger)<4 then
         begin
         if Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger=0 then
            begin
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Font.Style:=[fsBold,fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Font.Style:=[fsBold,fsItalic]
               end
            else
                (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Font.Style:=[fsBold]
            end
         else
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                  else
                    (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Font.Style:=[fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Font.Style:=[fsItalic];
               end
            else
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Font.Style:=[fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Font.Style:=[fsUnderline];
                  end
             else
                if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Font.Style:=[fsStrikeOut];
         end;


      end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Height;
      Frm_PerForm.Tb_ComponentesTop.Value        :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Left;
      Frm_PerForm.Tb_Componentesfont_height.Value:=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Font.Height;
      Frm_PerForm.Tb_Componentesfont_size.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Font.Size;
      Frm_PerForm.Tb_Componentesfont_name.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Font.Name;
      Frm_PerForm.Tb_Componentesfont_color.Value :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Font.Color;
//      Frm_PerForm.Tb_ComponentesVisivel.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Visible,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value
      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Hint;

      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Font.Style=[fsbold] then
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Font.Style=[fsItalic] then
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Font.Style=[fsUnderline] then
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Font.Style=[fsStrikeOut] then
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=1;



{

      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TPageControl).Align  of
         alBottom: Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         alClient: Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         alCustom: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         alLeft  : Frm_PerForm.Tb_ComponentesAlign.Value:=3;
         alNone  : Frm_PerForm.Tb_ComponentesAlign.Value:=4;
         alRight : Frm_PerForm.Tb_ComponentesAlign.Value:=5;
         alTop   : Frm_PerForm.Tb_ComponentesAlign.Value:=6;
         end;
 }
      end
   end
else if func_nomeClasse='tgroupbox' then
   begin
   Frm_AjustaComp.RG_BEVELINNER.Visible :=False;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=False;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=False;
   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=False;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=true;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=True;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=False;
   Frm_AjustaComp.RG_ALIGN.Visible      :=true;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;

   if ptipo=0 then
      begin
      for x:=0 to High(mwinControl) do
         begin
         if uppercase(mWinControl[x].Name)=Uppercase(Frm_PerForm.Tb_ComponentesParent_Nome.Value) then
            begin
            (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupBox).Parent:=mWinControl[x];
            break;
            end;
         end;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Width      :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Height     :=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Top        :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Left       :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Caption    :=Frm_PerForm.Tb_ComponentesCaption.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Font.Height:=Frm_PerForm.Tb_Componentesfont_height.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Font.Size  :=Frm_PerForm.Tb_Componentesfont_size.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Font.Name  :=Frm_PerForm.Tb_Componentesfont_name.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Font.Color :=Frm_PerForm.Tb_Componentesfont_color.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Color      :=Frm_PerForm.Tb_Componentescolor.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Visible:=
//       Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupBox).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupBox).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupBox).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;

      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Ctl3D:=
      Frm_PerForm.Tb_ComponentesCtl3D.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Enabled
//      :=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).ShowHint
      :=Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Hint
      :=Frm_PerForm.Tb_ComponentesHint.AsString;



{
      case Frm_PerForm.Tb_ComponentesAlign.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Align := alBottom;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Align := alClient;
         2: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Align := alCustom;
         3: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Align := alLeft;
         4: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Align := alNone;
         5: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Align := alRight;
         6: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Align := alTop;
         end;
}

      if (Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FtUNDERLINE.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger)<4 then
         begin
         if Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger=0 then
            begin
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Font.Style:=[fsBold,fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Font.Style:=[fsBold,fsItalic]
               end
            else
                (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Font.Style:=[fsBold]
            end
         else
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                  else
                    (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Font.Style:=[fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Font.Style:=[fsItalic];
               end
            else
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Font.Style:=[fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Font.Style:=[fsUnderline];
                  end
             else
                if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Font.Style:=[fsStrikeOut];
         end;


      end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value := (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupBox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value  := (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupBox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value     := (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupBox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value    := (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupBox).Left;
      Frm_PerForm.Tb_ComponentesTamanho.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value        :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Left;
      Frm_PerForm.Tb_ComponentesCaption.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Caption;
      Frm_PerForm.Tb_Componentesfont_height.Value:=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Font.Height;
      Frm_PerForm.Tb_Componentesfont_size.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Font.Size;
      Frm_PerForm.Tb_Componentesfont_name.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Font.Name;
      Frm_PerForm.Tb_Componentesfont_color.Value :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Font.Color;
      Frm_PerForm.Tb_ComponentesColor.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Color;
//      Frm_PerForm.Tb_ComponentesVisivel.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Visible,0,1);
      Frm_PerForm.Tb_ComponentesCtl3D.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Ctl3D,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value
      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Hint;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Font.Style=[fsbold] then
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Font.Style=[fsItalic] then
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Font.Style=[fsUnderline] then
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Font.Style=[fsStrikeOut] then
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=1;


{
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TGroupbox).Align  of
         alBottom: Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         alClient: Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         alCustom: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         alLeft  : Frm_PerForm.Tb_ComponentesAlign.Value:=3;
         alNone  : Frm_PerForm.Tb_ComponentesAlign.Value:=4;
         alRight : Frm_PerForm.Tb_ComponentesAlign.Value:=5;
         alTop   : Frm_PerForm.Tb_ComponentesAlign.Value:=6;
         end;
}      end;
   end
else if func_nomeClasse='tdbnavigator' then
   begin
   Frm_AjustaComp.RG_BEVELINNER.Visible :=False;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=False;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=False;
   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=False;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=False;
   Frm_AjustaComp.DBCb_parent.Visible   :=False;
   Frm_AjustaComp.GB_Fonte.Visible      :=False;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=False;
   Frm_AjustaComp.RG_ALIGN.Visible      :=true;
   Frm_AjustaComp.lbl_color.Visible     :=False;
   Frm_AjustaComp.DBE_Color.Visible     :=False;
   Frm_AjustaComp.SB_Color.Visible      :=False;

   if ptipo=0 then
      begin
      for x:=0 to High(mwinControl) do
         begin
         if uppercase(mWinControl[x].Name)=Uppercase(Frm_PerForm.Tb_ComponentesParent_Nome.Value) then
            begin
            (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Parent:=mWinControl[x];
            break;
            end;
         end;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Width      :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Height     :=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Top        :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Left       :=Frm_PerForm.Tb_ComponentesmLeft.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Visible:=
//       Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;

      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Ctl3D:=
      Frm_PerForm.Tb_ComponentesCtl3D.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Enabled
//      :=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).ShowHint
      :=Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Hint
      :=Frm_PerForm.Tb_ComponentesHint.AsString;


{

      case Frm_PerForm.Tb_ComponentesAlign.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Align := alBottom;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Align := alClient;
         2: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Align := alCustom;
         3: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Align := alLeft;
         4: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Align := alNone;
         5: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Align := alRight;
         6: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Align := alTop;
         end;
}

      end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Height;
      Frm_PerForm.Tb_ComponentesTop.Value        :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Left;
//      Frm_PerForm.Tb_ComponentesVisivel.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Visible,0,1);
      Frm_PerForm.Tb_ComponentesCtl3D.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Ctl3D,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value
      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Hint;

{
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBNavigator).Align  of
         alBottom: Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         alClient: Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         alCustom: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         alLeft  : Frm_PerForm.Tb_ComponentesAlign.Value:=3;
         alNone  : Frm_PerForm.Tb_ComponentesAlign.Value:=4;
         alRight : Frm_PerForm.Tb_ComponentesAlign.Value:=5;
         alTop   : Frm_PerForm.Tb_ComponentesAlign.Value:=6;
         end;

}
      end;
   end
else if func_nomeClasse='tbevel' then
   begin
   Frm_AjustaComp.RG_BEVELINNER.Visible :=False;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=False;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=False;
   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=False;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=False;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=False;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=False;
   Frm_AjustaComp.RG_ALIGN.Visible      :=true;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;

   if ptipo=0 then
       begin
      for x:=0 to High(mwinControl) do
         begin
         if uppercase(mWinControl[x].Name)=Uppercase(Frm_PerForm.Tb_ComponentesParent_Nome.Value) then
            begin
            (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Parent:=mWinControl[x];
            break;
            end;
         end;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Width      :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Height     :=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Top        :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Left       :=Frm_PerForm.Tb_ComponentesmLeft.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Visible:=
//       Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Enabled
//      :=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).ShowHint
      :=Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Hint
      :=Frm_PerForm.Tb_ComponentesHint.AsString;



{
      case Frm_PerForm.Tb_ComponentesAlign.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Align := alBottom;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Align := alClient;
         2: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Align := alCustom;
         3: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Align := alLeft;
         4: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Align := alNone;
         5: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Align := alRight;
         6: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Align := alTop;
         end;
}      end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Height;
      Frm_PerForm.Tb_ComponentesTop.Value        :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Left;
//      Frm_PerForm.Tb_ComponentesVisivel.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Visible,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value
      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Hint;



{
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TBevel).Align  of
         alBottom: Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         alClient: Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         alCustom: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         alLeft  : Frm_PerForm.Tb_ComponentesAlign.Value:=3;
         alNone  : Frm_PerForm.Tb_ComponentesAlign.Value:=4;
         alRight : Frm_PerForm.Tb_ComponentesAlign.Value:=5;
         alTop   : Frm_PerForm.Tb_ComponentesAlign.Value:=6;
         end;
}

      end;
   end
else if func_nomeClasse='tdbcombobox' then
   begin
   Frm_AjustaComp.RG_BEVELINNER.Visible :=True;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=True;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=True;
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Clear;
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('bsNone');
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('bsSingle');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Clear;
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('0');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('1');

   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=True;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=True;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=True;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=True;
   Frm_AjustaComp.RG_ALIGN.Visible      :=true;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;

   if ptipo=0 then
      begin
      for x:=0 to High(mwinControl) do
         begin
         if uppercase(mWinControl[x].Name)=Uppercase(Frm_PerForm.Tb_ComponentesParent_Nome.Value) then
            begin
            (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBComboBox).Parent:=mWinControl[x];
            break;
            end;
         end;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Width      :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Height     :=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Top        :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Left       :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Text       :=Frm_PerForm.Tb_ComponentesCaption.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Font.Height:=Frm_PerForm.Tb_Componentesfont_height.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Font.Size  :=Frm_PerForm.Tb_Componentesfont_size.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Font.Name  :=Frm_PerForm.Tb_Componentesfont_name.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Color      :=Frm_PerForm.Tb_Componentescolor.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Font.Color :=Frm_PerForm.Tb_Componentesfont_color.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Visible:=
//       Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBComboBox).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBComboBox).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBComboBox).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;

      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Ctl3D:=
      Frm_PerForm.Tb_ComponentesCtl3D.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Enabled
//      :=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).ShowHint
      :=Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Hint
      :=Frm_PerForm.Tb_ComponentesHint.AsString;
      case Frm_PerForm.Tb_Componentesbevelinner.AsInteger of
         0 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).BevelInner:= bvLowered;
         1 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).BevelInner:= bvNone;
         2 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).BevelInner:= bvRaised;
         3 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).BevelInner:= bvSpace;
         end;

      case Frm_PerForm.Tb_ComponentesbevelKind.AsInteger of
         0 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).BevelKind:= bkFlat;
         1 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).BevelKind:= bkNone;
         2 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).BevelKind:= bkSoft;
         3 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).BevelKind:= bkTile;
         end;

      case Frm_PerForm.Tb_ComponentesbevelOuter.AsInteger of
         0 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).BevelOuter:= bvLowered;
         1 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).BevelOuter:= bvNone;
         2 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).BevelOuter:= bvRaised;
         3 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).BevelOuter:= bvSpace;
         end;

{
      case Frm_PerForm.Tb_ComponentesAlign.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Align := alBottom;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Align := alClient;
         2: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Align := alCustom;
         3: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Align := alLeft;
         4: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Align := alNone;
         5: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Align := alRight;
         6: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Align := alTop;
         end;
}
      if (Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FtUNDERLINE.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger)<4 then
         begin
         if Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger=0 then
            begin
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Font.Style:=[fsBold,fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Font.Style:=[fsBold,fsItalic]
               end
            else
                (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Font.Style:=[fsBold]
            end
         else
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                  else
                    (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Font.Style:=[fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Font.Style:=[fsItalic];
               end
            else
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Font.Style:=[fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Font.Style:=[fsUnderline];
                  end
             else
                if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Font.Style:=[fsStrikeOut];
         end;


     end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value        :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Left;
      Frm_PerForm.Tb_ComponentesCaption.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Text;
      Frm_PerForm.Tb_Componentesfont_height.Value:=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Font.Height;
      Frm_PerForm.Tb_Componentesfont_size.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Font.Size;
      Frm_PerForm.Tb_Componentesfont_name.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Font.Name;
      Frm_PerForm.Tb_Componentesfont_color.Value :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Font.Color;
      Frm_PerForm.Tb_Componentescolor.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Color;
//      Frm_PerForm.Tb_ComponentesVisivel.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Visible,0,1);
      Frm_PerForm.Tb_ComponentesCtl3D.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Ctl3D,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value
      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Hint;
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).BevelInner of
          bvLowered :Frm_PerForm.Tb_Componentesbevelinner.Value:=0;
          bvNone    :Frm_PerForm.Tb_Componentesbevelinner.Value:=1;
          bvRaised  :Frm_PerForm.Tb_Componentesbevelinner.Value:=2;
          bvSpace   :Frm_PerForm.Tb_Componentesbevelinner.Value:=3;
          end;


      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).BevelOuter of
          bvLowered :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=0;
          bvNone    :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=1;
          bvRaised  :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=2;
          bvSpace   :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=3;
          end;

      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCombobox).Font.Style=[fsbold] then
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCombobox).Font.Style=[fsItalic] then
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCombobox).Font.Style=[fsUnderline] then
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCombobox).Font.Style=[fsStrikeOut] then
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=1;

{
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbCombobox).Align  of
         alBottom: Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         alClient: Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         alCustom: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         alLeft  : Frm_PerForm.Tb_ComponentesAlign.Value:=3;
         alNone  : Frm_PerForm.Tb_ComponentesAlign.Value:=4;
         alRight : Frm_PerForm.Tb_ComponentesAlign.Value:=5;
         alTop   : Frm_PerForm.Tb_ComponentesAlign.Value:=6;
         end;
}      end;
   end
else if func_nomeClasse='tdbradiogroup' then
   begin
   Frm_AjustaComp.RG_BEVELINNER.Visible :=False;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=False;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=False;
   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=False;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=False;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=True;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=False;
   Frm_AjustaComp.RG_ALIGN.Visible      :=true;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;

   if ptipo=0 then
      begin
      for x:=0 to High(mwinControl) do
         begin
         if uppercase(mWinControl[x].Name)=Uppercase(Frm_PerForm.Tb_ComponentesParent_Nome.Value) then
            begin
            (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadioGroup).Parent:=mWinControl[x];
            break;
            end;
         end;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Width      :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Height     :=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Top        :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Left       :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Caption    :=Frm_PerForm.Tb_ComponentesCaption.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Font.Height:=Frm_PerForm.Tb_Componentesfont_height.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Font.Size  :=Frm_PerForm.Tb_Componentesfont_size.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Font.Name  :=Frm_PerForm.Tb_Componentesfont_name.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadioGroup).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadioGroup).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadioGroup).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;

      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Color      :=Frm_PerForm.Tb_Componentescolor.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Font.Color :=Frm_PerForm.Tb_Componentesfont_color.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Visible:=
//       Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Ctl3D:=
      Frm_PerForm.Tb_ComponentesCtl3D.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Enabled
//      :=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).ShowHint
      :=Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Hint
      :=Frm_PerForm.Tb_ComponentesHint.AsString;

{
      case Frm_PerForm.Tb_ComponentesAlign.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Align := alBottom;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Align := alClient;
         2: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Align := alCustom;
         3: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Align := alLeft;
         4: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Align := alNone;
         5: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Align := alRight;
         6: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Align := alTop;
         end;
}
      if (Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FtUNDERLINE.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger)<4 then
         begin
         if Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger=0 then
            begin
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Font.Style:=[fsBold,fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Font.Style:=[fsBold,fsItalic]
               end
            else
                (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Font.Style:=[fsBold]
            end
         else
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                  else
                    (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Font.Style:=[fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Font.Style:=[fsItalic];
               end
            else
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Font.Style:=[fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Font.Style:=[fsUnderline];
                  end
             else
                if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Font.Style:=[fsStrikeOut];
         end;


      end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Height;
      Frm_PerForm.Tb_ComponentesTop.Value        :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Left;
      Frm_PerForm.Tb_ComponentesCaption.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Caption;
      Frm_PerForm.Tb_Componentesfont_height.Value:=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Font.Height;
      Frm_PerForm.Tb_Componentesfont_size.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Font.Size;
      Frm_PerForm.Tb_Componentesfont_name.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Font.Name;
      Frm_PerForm.Tb_Componentesfont_color.Value :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Font.Color;
      Frm_PerForm.Tb_Componentescolor.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Color;
//      Frm_PerForm.Tb_ComponentesVisivel.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Visible,0,1);
      Frm_PerForm.Tb_ComponentesCtl3D.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Ctl3D,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value
      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Hint;


      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Font.Style=[fsbold] then
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Font.Style=[fsItalic] then
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Font.Style=[fsUnderline] then
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Font.Style=[fsStrikeOut] then
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=1;

{
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBRadiogroup).Align  of
         alBottom: Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         alClient: Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         alCustom: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         alLeft  : Frm_PerForm.Tb_ComponentesAlign.Value:=3;
         alNone  : Frm_PerForm.Tb_ComponentesAlign.Value:=4;
         alRight : Frm_PerForm.Tb_ComponentesAlign.Value:=5;
         alTop   : Frm_PerForm.Tb_ComponentesAlign.Value:=6;
         end;
}
      end;
   end
else if func_nomeClasse='tdbrid' then
   begin
   Frm_AjustaComp.RG_BEVELINNER.Visible :=False;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=False;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=False;
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Clear;
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('bsNone');
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('bsSingle');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Clear;
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('0');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('1');

   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=True;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=False;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=True;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=True;
   Frm_AjustaComp.RG_ALIGN.Visible      :=true;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;

   if ptipo=0 then
      begin
      for x:=0 to High(mwinControl) do
         begin
         if uppercase(mWinControl[x].Name)=Uppercase(Frm_PerForm.Tb_ComponentesParent_Nome.Value) then
            begin
            (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Parent:=mWinControl[x];
            break;
            end;
         end;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Width      :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Height     :=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Top        :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Left       :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Font.Height:=Frm_PerForm.Tb_Componentesfont_height.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Font.Size  :=Frm_PerForm.Tb_Componentesfont_size.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Font.Name  :=Frm_PerForm.Tb_Componentesfont_name.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Color      :=Frm_PerForm.Tb_Componentesfont_color.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Visible:=
//       Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;

       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Ctl3D:=
      Frm_PerForm.Tb_ComponentesCtl3D.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Enabled
//      :=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).ShowHint
      :=Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Hint
      :=Frm_PerForm.Tb_ComponentesHint.AsString;
      case Frm_PerForm.Tb_Componentesborderstyle.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).BorderStyle:=bsNone;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).BorderStyle:=bsSingle;
         end;

{
      case Frm_PerForm.Tb_ComponentesAlign.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Align := alBottom;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Align := alClient;
         2: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Align := alCustom;
         3: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Align := alLeft;
         4: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Align := alNone;
         5: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Align := alRight;
         6: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Align := alTop;
         end;
}

      if (Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FtUNDERLINE.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger)<4 then
         begin
         if Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger=0 then
            begin
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Font.Style:=[fsBold,fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Font.Style:=[fsBold,fsItalic]
               end
            else
                (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Font.Style:=[fsBold]
            end
         else
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                  else
                    (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Font.Style:=[fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Font.Style:=[fsItalic];
               end
            else
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Font.Style:=[fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Font.Style:=[fsUnderline];
                  end
             else
                if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Font.Style:=[fsStrikeOut];
         end;
      end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value := (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbGrid).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value  := (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbGrid).Height;
      Frm_PerForm.Tb_ComponentesTop.Value     := (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbGrid).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value    := (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbGrid).Left;
      Frm_PerForm.Tb_Componentesfont_height.Value:=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Font.Height;
      Frm_PerForm.Tb_Componentesfont_size.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Font.Size;
      Frm_PerForm.Tb_Componentesfont_name.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Font.Name;
      Frm_PerForm.Tb_Componentesfont_color.Value :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Font.Color;
//      Frm_PerForm.Tb_ComponentesVisivel.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Visible,0,1);
      Frm_PerForm.Tb_ComponentesCtl3D.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Ctl3D,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value
      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Hint;
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).BorderStyle of
          bsNone   :Frm_PerForm.Tb_Componentesborderstyle.Value:=0;
          bsSingle :Frm_PerForm.Tb_Componentesborderstyle.Value:=1;
          end;

      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Font.Style=[fsbold] then
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Font.Style=[fsItalic] then
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Font.Style=[fsUnderline] then
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Font.Style=[fsStrikeOut] then
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=1;

{
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBGrid).Align  of
         alBottom: Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         alClient: Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         alCustom: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         alLeft  : Frm_PerForm.Tb_ComponentesAlign.Value:=3;
         alNone  : Frm_PerForm.Tb_ComponentesAlign.Value:=4;
         alRight : Frm_PerForm.Tb_ComponentesAlign.Value:=5;
         alTop   : Frm_PerForm.Tb_ComponentesAlign.Value:=6;
         end;
}      end;
   end
else if func_nomeClasse='tdbedit' then
   begin
   Frm_AjustaComp.RG_BEVELINNER.Visible :=True;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=True;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=True;
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Clear;
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('bsNone');
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('bsSingle');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Clear;
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('0');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('1');

   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=True;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=True;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=True;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=False;
   Frm_AjustaComp.RG_ALIGN.Visible      :=true;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;

   if ptipo=0 then
      begin
      for x:=0 to High(mwinControl) do
         begin
         if uppercase(mWinControl[x].Name)=Uppercase(Frm_PerForm.Tb_ComponentesParent_Nome.Value) then
            begin
            (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbEdit).Parent:=mWinControl[x];
            break;
            end;
         end;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbEdit).Width :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbEdit).Height:=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbEdit).Top   :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbEdit).Left  :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Text       :=Frm_PerForm.Tb_ComponentesCaption.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Font.Height:=Frm_PerForm.Tb_Componentesfont_height.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Font.Size  :=Frm_PerForm.Tb_Componentesfont_size.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Font.Name  :=Frm_PerForm.Tb_Componentesfont_name.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Color:=Frm_PerForm.Tb_ComponentesColor.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Visible:=
//       Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;

      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Ctl3D:=
      Frm_PerForm.Tb_ComponentesCtl3D.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Enabled
//      :=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).ShowHint
      :=Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Hint
      :=Frm_PerForm.Tb_ComponentesHint.AsString;
      case Frm_PerForm.Tb_Componentesborderstyle.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).BorderStyle:=bsNone;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).BorderStyle:=bsSingle;
         end;
      case Frm_PerForm.Tb_Componentesbevelinner.AsInteger of
         0 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).BevelInner:= bvLowered;
         1 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).BevelInner:= bvNone;
         2 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).BevelInner:= bvRaised;
         3 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).BevelInner:= bvSpace;
         end;

      case Frm_PerForm.Tb_ComponentesbevelKind.AsInteger of
         0 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).BevelKind:= bkFlat;
         1 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).BevelKind:= bkNone;
         2 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).BevelKind:= bkSoft;
         3 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).BevelKind:= bkTile;
         end;

      case Frm_PerForm.Tb_ComponentesbevelOuter.AsInteger of
         0 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).BevelOuter:= bvLowered;
         1 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).BevelOuter:= bvNone;
         2 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).BevelOuter:= bvRaised;
         3 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).BevelOuter:= bvSpace;
         end;

{
      case Frm_PerForm.Tb_ComponentesAlign.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Align := alBottom;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Align := alClient;
         2: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Align := alCustom;
         3: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Align := alLeft;
         4: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Align := alNone;
         5: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Align := alRight;
         6: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Align := alTop;
         end;
}

      if (Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FtUNDERLINE.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger)<4 then
         begin
         if Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger=0 then
            begin
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Font.Style:=[fsBold,fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Font.Style:=[fsBold,fsItalic]
               end
            else
                (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Font.Style:=[fsBold]
            end
         else
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                  else
                    (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Font.Style:=[fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Font.Style:=[fsItalic];
               end
            else
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Font.Style:=[fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Font.Style:=[fsUnderline];
                  end
             else
                if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Font.Style:=[fsStrikeOut];
         end;
{      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).TabOrder:=Frm_PerForm.Tb_Componentescampo_order.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Refresh;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).TabOrder  <>Frm_PerForm.Tb_Componentescampo_order.Value then
         begin
         if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
            Frm_PerForm.Tb_Componentes.Edit;
         Frm_PerForm.Tb_Componentescampo_order.Value:=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).TabOrder;
         end;
 }     end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value  := (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbEdit).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value   := (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbEdit).Height;
      Frm_PerForm.Tb_ComponentesTop.Value      := (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbEdit).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value     := (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDbEdit).Left;
      Frm_PerForm.Tb_ComponentesTamanho.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Height;
      Frm_PerForm.Tb_ComponentesTop.Value        :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Left;
      Frm_PerForm.Tb_ComponentesCaption.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Text;
      Frm_PerForm.Tb_Componentesfont_height.Value:=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Font.Height;
      Frm_PerForm.Tb_Componentesfont_size.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Font.Size;
      Frm_PerForm.Tb_Componentesfont_name.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Font.Name;
      Frm_PerForm.Tb_Componentescolor.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Color;
      Frm_PerForm.Tb_Componentesfont_color.Value :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Font.Color;

//      Frm_PerForm.Tb_ComponentesVisivel.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Visible,0,1);
      Frm_PerForm.Tb_ComponentesCtl3D.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Ctl3D,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value
      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Hint;
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).BorderStyle of
          bsNone   :Frm_PerForm.Tb_Componentesborderstyle.Value:=0;
          bsSingle :Frm_PerForm.Tb_Componentesborderstyle.Value:=1;
          end;

      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).BevelInner of
          bvLowered :Frm_PerForm.Tb_Componentesbevelinner.Value:=0;
          bvNone    :Frm_PerForm.Tb_Componentesbevelinner.Value:=1;
          bvRaised  :Frm_PerForm.Tb_Componentesbevelinner.Value:=2;
          bvSpace   :Frm_PerForm.Tb_Componentesbevelinner.Value:=3;
          end;


      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).BevelOuter of
          bvLowered :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=0;
          bvNone    :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=1;
          bvRaised  :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=2;
          bvSpace   :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=3;
          end;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Font.Style=[fsbold] then
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Font.Style=[fsItalic] then
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Font.Style=[fsUnderline] then
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Font.Style=[fsStrikeOut] then
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=1;
//       Frm_PerForm.Tb_Componentescampo_order.Value:=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).TabOrder;

{
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBEdit).Align  of
         alBottom: Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         alClient: Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         alCustom: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         alLeft  : Frm_PerForm.Tb_ComponentesAlign.Value:=3;
         alNone  : Frm_PerForm.Tb_ComponentesAlign.Value:=4;
         alRight : Frm_PerForm.Tb_ComponentesAlign.Value:=5;
         alTop   : Frm_PerForm.Tb_ComponentesAlign.Value:=6;
         end;
}      end;
   end
else if func_nomeClasse='tlistbox' then
   begin
   Frm_AjustaComp.RG_BEVELINNER.Visible :=False;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=False;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=False;
   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=False;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=False;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=True;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=False;
   Frm_AjustaComp.RG_ALIGN.Visible      :=true;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;

   if ptipo=0 then
      begin
      for x:=0 to High(mwinControl) do
         begin
         if uppercase(mWinControl[x].Name)=Uppercase(Frm_PerForm.Tb_ComponentesParent_Nome.Value) then
            begin
            (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListBox).Parent:=mWinControl[x];
            break;
            end;
         end;

      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Width      :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Height     :=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Top        :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Left       :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Font.Height:=Frm_PerForm.Tb_Componentesfont_height.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Font.Size  :=Frm_PerForm.Tb_Componentesfont_size.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Font.Name  :=Frm_PerForm.Tb_Componentesfont_name.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListBox).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListBox).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListBox).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;

      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Color      :=Frm_PerForm.Tb_Componentescolor.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Font.Color :=Frm_PerForm.Tb_Componentesfont_color.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Visible:=
//       Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Ctl3D:=
      Frm_PerForm.Tb_ComponentesCtl3D.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Enabled
//      :=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).ShowHint
      :=Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Hint
      :=Frm_PerForm.Tb_ComponentesHint.AsString;
      case Frm_PerForm.Tb_Componentesborderstyle.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).BorderStyle:=bsNone;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).BorderStyle:=bsSingle;
         end;
      case Frm_PerForm.Tb_Componentesbevelinner.AsInteger of
         0 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).BevelInner:= bvLowered;
         1 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).BevelInner:= bvNone;
         2 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).BevelInner:= bvRaised;
         3 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).BevelInner:= bvSpace;
         end;

      case Frm_PerForm.Tb_ComponentesbevelKind.AsInteger of
         0 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).BevelKind:= bkFlat;
         1 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).BevelKind:= bkNone;
         2 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).BevelKind:= bkSoft;
         3 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).BevelKind:= bkTile;
         end;

      case Frm_PerForm.Tb_ComponentesbevelOuter.AsInteger of
         0 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).BevelOuter:= bvLowered;
         1 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).BevelOuter:= bvNone;
         2 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).BevelOuter:= bvRaised;
         3 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).BevelOuter:= bvSpace;
         end;

{
      case Frm_PerForm.Tb_ComponentesAlign.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Align := alBottom;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Align := alClient;
         2: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Align := alCustom;
         3: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Align := alLeft;
         4: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Align := alNone;
         5: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Align := alRight;
         6: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Align := alTop;
         end;
}
      if (Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FtUNDERLINE.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger)<4 then
         begin
         if Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger=0 then
            begin
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Font.Style:=[fsBold,fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Font.Style:=[fsBold,fsItalic]
               end
            else
                (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Font.Style:=[fsBold]
            end
         else
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                  else
                    (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Font.Style:=[fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Font.Style:=[fsItalic];
               end
            else
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Font.Style:=[fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Font.Style:=[fsUnderline];
                  end
             else
                if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Font.Style:=[fsStrikeOut];
         end;

      end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value        :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Left;
      Frm_PerForm.Tb_Componentesfont_height.Value:=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Font.Height;
      Frm_PerForm.Tb_Componentesfont_size.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Font.Size;
      Frm_PerForm.Tb_Componentesfont_name.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Font.Name;
      Frm_PerForm.Tb_Componentesfont_color.Value :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Font.Color;
      Frm_PerForm.Tb_Componentescolor.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Color;
//      Frm_PerForm.Tb_ComponentesVisivel.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Visible,0,1);
      Frm_PerForm.Tb_ComponentesCtl3D.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Ctl3D,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value
      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Hint;
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).BorderStyle of
          bsNone   :Frm_PerForm.Tb_Componentesborderstyle.Value:=0;
          bsSingle :Frm_PerForm.Tb_Componentesborderstyle.Value:=1;
          end;

      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).BevelInner of
          bvLowered :Frm_PerForm.Tb_Componentesbevelinner.Value:=0;
          bvNone    :Frm_PerForm.Tb_Componentesbevelinner.Value:=1;
          bvRaised  :Frm_PerForm.Tb_Componentesbevelinner.Value:=2;
          bvSpace   :Frm_PerForm.Tb_Componentesbevelinner.Value:=3;
          end;


      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).BevelOuter of
          bvLowered :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=0;
          bvNone    :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=1;
          bvRaised  :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=2;
          bvSpace   :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=3;
          end;

      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Font.Style=[fsbold] then
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Font.Style=[fsItalic] then
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Font.Style=[fsUnderline] then
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Font.Style=[fsStrikeOut] then
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=1;

{
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TListbox).Align  of
         alBottom: Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         alClient: Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         alCustom: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         alLeft  : Frm_PerForm.Tb_ComponentesAlign.Value:=3;
         alNone  : Frm_PerForm.Tb_ComponentesAlign.Value:=4;
         alRight : Frm_PerForm.Tb_ComponentesAlign.Value:=5;
         alTop   : Frm_PerForm.Tb_ComponentesAlign.Value:=6;
         end;
}      end;
   end
else if func_nomeClasse='tstatictext' then
   begin
   Frm_AjustaComp.RG_BEVELINNER.Visible :=true;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=true;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=true;
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Clear;
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('sbsNone');
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('sbsSingle');
   Frm_AjustaComp.RG_BORDERSTYLE.Items.Add('sbsSunken');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Clear;
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('0');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('1');
   Frm_AjustaComp.RG_BORDERSTYLE.Values.Add('2');
   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=true;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=False;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=True;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=True;
   Frm_AjustaComp.RG_ALIGN.Visible      :=true;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;

   if ptipo=0 then
      begin
      for x:=0 to High(mwinControl) do
         begin
         if uppercase(mWinControl[x].Name)=Uppercase(Frm_PerForm.Tb_ComponentesParent_Nome.Value) then
            begin
            (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStaticText).Parent:=mWinControl[x];
            break;
            end;
         end;

      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Width      :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Height     :=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Top        :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Left       :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Caption    :=Frm_PerForm.Tb_ComponentesCaption.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Font.Height:=Frm_PerForm.Tb_Componentesfont_height.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Font.Size  :=Frm_PerForm.Tb_Componentesfont_size.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Font.Name  :=Frm_PerForm.Tb_Componentesfont_name.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStaticText).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStaticText).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStaticText).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;

      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Font.Color :=Frm_PerForm.Tb_Componentesfont_color.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Color      :=Frm_PerForm.Tb_Componentescolor.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Visible:=
//       Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Enabled
//      :=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).ShowHint
      :=Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Hint
      :=Frm_PerForm.Tb_ComponentesHint.AsString;
      case Frm_PerForm.Tb_Componentesbevelinner.AsInteger of
         0 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).BevelInner:= bvLowered;
         1 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).BevelInner:= bvNone;
         2 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).BevelInner:= bvRaised;
         3 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).BevelInner:= bvSpace;
         end;

      case Frm_PerForm.Tb_ComponentesbevelKind.AsInteger of
         0 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).BevelKind:= bkFlat;
         1 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).BevelKind:= bkNone;
         2 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).BevelKind:= bkSoft;
         3 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).BevelKind:= bkTile;
         end;

      case Frm_PerForm.Tb_ComponentesbevelOuter.AsInteger of
         0 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).BevelOuter:= bvLowered;
         1 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).BevelOuter:= bvNone;
         2 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).BevelOuter:= bvRaised;
         3 :(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).BevelOuter:= bvSpace;
         end;

{
      case Frm_PerForm.Tb_ComponentesAlign.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Align := alBottom;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Align := alClient;
         2: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Align := alCustom;
         3: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Align := alLeft;
         4: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Align := alNone;
         5: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Align := alRight;
         6: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Align := alTop;
         end;

}
      case Frm_PerForm.Tb_ComponentesAlignment.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Alignment:= taCenter;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Alignment:= taLeftJustify;
         2: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Alignment:= taRightJustify;
         end;

      case Frm_PerForm.Tb_Componentesborderstyle.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).BorderStyle := sbsNone;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).BorderStyle := sbsSingle;
         2: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).BorderStyle := sbsSunken;
         end;


      if (Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FtUNDERLINE.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger)<4 then
         begin
         if Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger=0 then
            begin
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Font.Style:=[fsBold,fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Font.Style:=[fsBold,fsItalic]
               end
            else
                (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Font.Style:=[fsBold]
            end
         else
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                  else
                    (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Font.Style:=[fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Font.Style:=[fsItalic];
               end
            else
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Font.Style:=[fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Font.Style:=[fsUnderline];
                  end
             else
                if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Font.Style:=[fsStrikeOut];
         end;

      end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Height;
      Frm_PerForm.Tb_ComponentesTop.Value        :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Left;
      Frm_PerForm.Tb_ComponentesCaption.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Caption;
      Frm_PerForm.Tb_Componentesfont_height.Value:=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Font.Height;
      Frm_PerForm.Tb_Componentesfont_size.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Font.Size;
      Frm_PerForm.Tb_Componentesfont_name.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Font.Name;
      Frm_PerForm.Tb_Componentescolor.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Color;
      Frm_PerForm.Tb_Componentesfont_color.Value :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Font.Color;
//      Frm_PerForm.Tb_ComponentesVisivel.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Visible,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value
      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Hint;

      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).BevelInner of
          bvLowered :Frm_PerForm.Tb_Componentesbevelinner.Value:=0;
          bvNone    :Frm_PerForm.Tb_Componentesbevelinner.Value:=1;
          bvRaised  :Frm_PerForm.Tb_Componentesbevelinner.Value:=2;
          bvSpace   :Frm_PerForm.Tb_Componentesbevelinner.Value:=3;
          end;


      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).BevelOuter of
          bvLowered :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=0;
          bvNone    :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=1;
          bvRaised  :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=2;
          bvSpace   :Frm_PerForm.Tb_ComponentesbevelOuter.Value:=3;
          end;
{
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Align  of
         alBottom: Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         alClient: Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         alCustom: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         alLeft  : Frm_PerForm.Tb_ComponentesAlign.Value:=3;
         alNone  : Frm_PerForm.Tb_ComponentesAlign.Value:=4;
         alRight : Frm_PerForm.Tb_ComponentesAlign.Value:=5;
         alTop   : Frm_PerForm.Tb_ComponentesAlign.Value:=6;
         end;
}      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Alignment  of
         taCenter      : Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         taLeftJustify : Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         taRightJustify: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         end;

       case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).BorderStyle  of
         sbsNone       : Frm_PerForm.Tb_Componentesborderstyle.Value:=0;
         sbsSingle     : Frm_PerForm.Tb_Componentesborderstyle.Value:=1;
         sbsSunken     : Frm_PerForm.Tb_Componentesborderstyle.Value:=2;
         end;


      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Font.Style=[fsbold] then
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Font.Style=[fsItalic] then
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Font.Style=[fsUnderline] then
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TStatictext).Font.Style=[fsStrikeOut] then
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=1;


      end;
   end
else if func_nomeClasse='tradiogroup' then
   begin
   Frm_AjustaComp.RG_BEVELINNER.Visible :=False;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=False;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=False;
   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=False;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=False;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=True;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=True;
   Frm_AjustaComp.RG_ALIGN.Visible      :=true;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;

   if ptipo=0 then
      begin
      for x:=0 to High(mwinControl) do
         begin
         if uppercase(mWinControl[x].Name)=Uppercase(Frm_PerForm.Tb_ComponentesParent_Nome.Value) then
            begin
            (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadioGroup).Parent:=mWinControl[x];
            break;
            end;
         end;

      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Width      :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Height     :=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Top        :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Left       :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Caption    :=Frm_PerForm.Tb_ComponentesCaption.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Font.Height:=Frm_PerForm.Tb_Componentesfont_height.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Font.Size  :=Frm_PerForm.Tb_Componentesfont_size.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Font.Name  :=Frm_PerForm.Tb_Componentesfont_name.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadioGroup).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadioGroup).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadioGroup).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;

      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Color      :=Frm_PerForm.Tb_Componentescolor.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Font.Color :=Frm_PerForm.Tb_Componentesfont_color.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Visible:=
//       Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Ctl3D:=
      Frm_PerForm.Tb_ComponentesCtl3D.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Enabled
//      :=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).ShowHint
      :=Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Hint
      :=Frm_PerForm.Tb_ComponentesHint.AsString;

{
      case Frm_PerForm.Tb_ComponentesAlign.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Align := alBottom;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Align := alClient;
         2: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Align := alCustom;
         3: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Align := alLeft;
         4: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Align := alNone;
         5: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Align := alRight;
         6: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Align := alTop;
         end;
}

      if (Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FtUNDERLINE.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger)<4 then
         begin
         if Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger=0 then
            begin
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Font.Style:=[fsBold,fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Font.Style:=[fsBold,fsItalic]
               end
            else
                (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Font.Style:=[fsBold]
            end
         else
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                  else
                    (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Font.Style:=[fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Font.Style:=[fsItalic];
               end
            else
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Font.Style:=[fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Font.Style:=[fsUnderline];
                  end
             else
                if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Font.Style:=[fsStrikeOut];
         end;

      end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Height;
      Frm_PerForm.Tb_ComponentesTop.Value        :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Left;
      Frm_PerForm.Tb_ComponentesCaption.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Caption;
      Frm_PerForm.Tb_Componentesfont_height.Value:=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Font.Height;
      Frm_PerForm.Tb_Componentesfont_size.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Font.Size;
      Frm_PerForm.Tb_Componentesfont_name.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Font.Name;
      Frm_PerForm.Tb_Componentesfont_color.Value :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Font.Color;
      Frm_PerForm.Tb_Componentescolor.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Color;
//      Frm_PerForm.Tb_ComponentesVisivel.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Visible,0,1);
      Frm_PerForm.Tb_ComponentesCtl3D.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Ctl3D,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value
      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Hint;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Font.Style=[fsbold] then
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsbold.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Font.Style=[fsItalic] then
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_fsitalic.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Font.Style=[fsUnderline] then
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=1;
      if (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Font.Style=[fsStrikeOut] then
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=0
      else
         Frm_PerForm.Tb_Componentesfont_strikeout.Value:=1;


{      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TRadiogroup).Align  of
         alBottom: Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         alClient: Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         alCustom: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         alLeft  : Frm_PerForm.Tb_ComponentesAlign.Value:=3;
         alNone  : Frm_PerForm.Tb_ComponentesAlign.Value:=4;
         alRight : Frm_PerForm.Tb_ComponentesAlign.Value:=5;
         alTop   : Frm_PerForm.Tb_ComponentesAlign.Value:=6;
         end;
}      end;
   end
else if func_nomeClasse='tdbcheckbox' then
   begin
   Frm_AjustaComp.RG_BEVELINNER.Visible :=False;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=False;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=False;
   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=False;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=False;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=True;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=True;
   Frm_AjustaComp.RG_ALIGN.Visible      :=true;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;

   if ptipo=0 then
      begin
      for x:=0 to High(mwinControl) do
         begin
         if uppercase(mWinControl[x].Name)=Uppercase(Frm_PerForm.Tb_ComponentesParent_Nome.Value) then
            begin
            (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckBox).Parent:=mWinControl[x];
            break;
            end;
         end;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Width      :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Height     :=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Top        :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Left       :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Caption    :=Frm_PerForm.Tb_ComponentesCaption.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Font.Height:=Frm_PerForm.Tb_Componentesfont_height.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Font.Size  :=Frm_PerForm.Tb_Componentesfont_size.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Font.Name  :=Frm_PerForm.Tb_Componentesfont_name.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Color      :=Frm_PerForm.Tb_Componentescolor.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Font.Color:=Frm_PerForm.Tb_Componentesfont_color.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Visible:=
//       Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckBox).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckBox).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckBox).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;

      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Ctl3D:=
      Frm_PerForm.Tb_ComponentesCtl3D.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Enabled
//      :=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).ShowHint
      :=Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Hint
      :=Frm_PerForm.Tb_ComponentesHint.AsString;

{
      case Frm_PerForm.Tb_ComponentesAlign.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Align := alBottom;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Align := alClient;
         2: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Align := alCustom;
         3: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Align := alLeft;
         4: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Align := alNone;
         5: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Align := alRight;
         6: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Align := alTop;
         end;
}
      if (Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FtUNDERLINE.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger)<4 then
         begin
         if Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger=0 then
            begin
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Font.Style:=[fsBold,fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Font.Style:=[fsBold,fsItalic]
               end
            else
                (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Font.Style:=[fsBold]
            end
         else
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                  else
                    (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Font.Style:=[fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Font.Style:=[fsItalic];
               end
            else
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Font.Style:=[fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Font.Style:=[fsUnderline];
                  end
             else
                if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Font.Style:=[fsStrikeOut];
         end;



      end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value        :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Left;
      Frm_PerForm.Tb_ComponentesCaption.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Caption;
      Frm_PerForm.Tb_Componentesfont_height.Value:=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Font.Height;
      Frm_PerForm.Tb_Componentesfont_size.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Font.Size;
      Frm_PerForm.Tb_Componentesfont_name.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Font.Name;
      Frm_PerForm.Tb_Componentesfont_color.Value :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Font.Color;
      Frm_PerForm.Tb_Componentescolor.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Color;
//      Frm_PerForm.Tb_ComponentesVisivel.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Visible,0,1);
      Frm_PerForm.Tb_ComponentesCtl3D.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Ctl3D,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value
      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Hint;

{
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as TDBCheckbox).Align  of
         alBottom: Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         alClient: Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         alCustom: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         alLeft  : Frm_PerForm.Tb_ComponentesAlign.Value:=3;
         alNone  : Frm_PerForm.Tb_ComponentesAlign.Value:=4;
         alRight : Frm_PerForm.Tb_ComponentesAlign.Value:=5;
         alTop   : Frm_PerForm.Tb_ComponentesAlign.Value:=6;
         end;
}      end;
   end
else if func_nomeClasse='tmemo' then
   begin
   Frm_AjustaComp.RG_BEVELINNER.Visible :=False;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=False;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=False;
   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=False;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=False;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=True;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=True;
   Frm_AjustaComp.RG_ALIGN.Visible      :=true;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;

   if ptipo=0 then
      begin
      for x:=0 to High(mwinControl) do
         begin
         if uppercase(mWinControl[x].Name)=Uppercase(Frm_PerForm.Tb_ComponentesParent_Nome.Value) then
            begin
            (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Parent:=mWinControl[x];
            break;
            end;
         end;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Width      :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Height     :=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Top        :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Left       :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Text       :=Frm_PerForm.Tb_ComponentesCaption.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Font.Height:=Frm_PerForm.Tb_Componentesfont_height.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Font.Size  :=Frm_PerForm.Tb_Componentesfont_size.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Font.Name  :=Frm_PerForm.Tb_Componentesfont_name.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Color      :=Frm_PerForm.Tb_Componentescolor.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Font.Color:=Frm_PerForm.Tb_Componentesfont_color.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Visible:=
//       Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;

      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Ctl3D:=
      Frm_PerForm.Tb_ComponentesCtl3D.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Enabled
//      :=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).ShowHint
      :=Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Hint
      :=Frm_PerForm.Tb_ComponentesHint.AsString;

{
      case Frm_PerForm.Tb_ComponentesAlign.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Align := alBottom;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Align := alClient;
         2: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Align := alCustom;
         3: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Align := alLeft;
         4: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Align := alNone;
         5: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Align := alRight;
         6: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Align := alTop;
         end;
}
      if (Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FtUNDERLINE.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger)<4 then
         begin
         if Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger=0 then
            begin
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Font.Style:=[fsBold,fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Font.Style:=[fsBold,fsItalic]
               end
            else
                (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Font.Style:=[fsBold]
            end
         else
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                  else
                    (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Font.Style:=[fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Font.Style:=[fsItalic];
               end
            else
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Font.Style:=[fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Font.Style:=[fsUnderline];
                  end
             else
                if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Font.Style:=[fsStrikeOut];
         end;



      end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Height;
      Frm_PerForm.Tb_ComponentesTop.Value        :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Left;
      Frm_PerForm.Tb_ComponentesCaption.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Text;
      Frm_PerForm.Tb_Componentesfont_height.Value:=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Font.Height;
      Frm_PerForm.Tb_Componentesfont_size.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Font.Size;
      Frm_PerForm.Tb_Componentesfont_name.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Font.Name;
      Frm_PerForm.Tb_Componentesfont_color.Value :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Font.Color;
      Frm_PerForm.Tb_Componentescolor.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Color;
//      Frm_PerForm.Tb_ComponentesVisivel.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Visible,0,1);
      Frm_PerForm.Tb_ComponentesCtl3D.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Ctl3D,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value
      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Hint;

{
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as Tmemo).Align  of
         alBottom: Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         alClient: Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         alCustom: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         alLeft  : Frm_PerForm.Tb_ComponentesAlign.Value:=3;
         alNone  : Frm_PerForm.Tb_ComponentesAlign.Value:=4;
         alRight : Frm_PerForm.Tb_ComponentesAlign.Value:=5;
         alTop   : Frm_PerForm.Tb_ComponentesAlign.Value:=6;
         end;
}      end;
   end
else if func_nomeClasse='tdbmemo' then
   begin
   Frm_AjustaComp.RG_BEVELINNER.Visible :=False;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=False;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=False;
   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=False;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=False;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=True;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=True;
   Frm_AjustaComp.RG_ALIGN.Visible      :=true;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;

   if ptipo=0 then
      begin
      for x:=0 to High(mwinControl) do
         begin
         if uppercase(mWinControl[x].Name)=Uppercase(Frm_PerForm.Tb_ComponentesParent_Nome.Value) then
            begin
            (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Parent:=mWinControl[x];
            break;
            end;
         end;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Width      :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Height     :=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Top        :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Left       :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Text       :=Frm_PerForm.Tb_ComponentesCaption.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Font.Height:=Frm_PerForm.Tb_Componentesfont_height.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Font.Size  :=Frm_PerForm.Tb_Componentesfont_size.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Font.Name  :=Frm_PerForm.Tb_Componentesfont_name.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as dbmemo).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Color      :=Frm_PerForm.Tb_Componentescolor.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Font.Color:=Frm_PerForm.Tb_Componentesfont_color.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as dbmemo).Visible:=
//       Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;

      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Ctl3D:=
      Frm_PerForm.Tb_ComponentesCtl3D.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as dbmemo).Enabled
//      :=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).ShowHint
      :=Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Hint
      :=Frm_PerForm.Tb_ComponentesHint.AsString;

{
      case Frm_PerForm.Tb_ComponentesAlign.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as dbmemo).Align := alBottom;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as dbmemo).Align := alClient;
         2: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as dbmemo).Align := alCustom;
         3: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as dbmemo).Align := alLeft;
         4: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as dbmemo).Align := alNone;
         5: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as dbmemo).Align := alRight;
         6: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as dbmemo).Align := alTop;
         end;
}
      if (Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FtUNDERLINE.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger)<4 then
         begin
         if Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger=0 then
            begin
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Font.Style:=[fsBold,fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Font.Style:=[fsBold,fsItalic]
               end
            else
                (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Font.Style:=[fsBold]
            end
         else
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                  else
                    (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Font.Style:=[fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Font.Style:=[fsItalic];
               end
            else
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Font.Style:=[fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Font.Style:=[fsUnderline];
                  end
             else
                if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Font.Style:=[fsStrikeOut];
         end;



      end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Height;
      Frm_PerForm.Tb_ComponentesTop.Value        :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Left;
      Frm_PerForm.Tb_ComponentesCaption.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).text;
      Frm_PerForm.Tb_Componentesfont_height.Value:=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Font.Height;
      Frm_PerForm.Tb_Componentesfont_size.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Font.Size;
      Frm_PerForm.Tb_Componentesfont_name.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Font.Name;
      Frm_PerForm.Tb_Componentesfont_color.Value :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Font.Color;
      Frm_PerForm.Tb_Componentescolor.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Color;
//      Frm_PerForm.Tb_ComponentesVisivel.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as dbmemo).Visible,0,1);
      Frm_PerForm.Tb_ComponentesCtl3D.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Ctl3D,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as dbmemo).Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value
      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Hint;

{
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tdbmemo).Align  of
         alBottom: Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         alClient: Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         alCustom: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         alLeft  : Frm_PerForm.Tb_ComponentesAlign.Value:=3;
         alNone  : Frm_PerForm.Tb_ComponentesAlign.Value:=4;
         alRight : Frm_PerForm.Tb_ComponentesAlign.Value:=5;
         alTop   : Frm_PerForm.Tb_ComponentesAlign.Value:=6;
         end;
}      end;
   end


else if func_nomeClasse='tstringgrid' then
   begin
   Frm_AjustaComp.RG_BEVELINNER.Visible :=False;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=False;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=False;
   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=False;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=False;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=True;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=True;
   Frm_AjustaComp.RG_ALIGN.Visible      :=true;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;

   if ptipo=0 then
      begin
      for x:=0 to High(mwinControl) do
         begin
         if uppercase(mWinControl[x].Name)=Uppercase(Frm_PerForm.Tb_ComponentesParent_Nome.Value) then
            begin
            (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Parent:=mWinControl[x];
            break;
            end;
         end;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Width      :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Height     :=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Top        :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Left       :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Font.Height:=Frm_PerForm.Tb_Componentesfont_height.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Font.Size  :=Frm_PerForm.Tb_Componentesfont_size.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Font.Name  :=Frm_PerForm.Tb_Componentesfont_name.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Color      :=Frm_PerForm.Tb_Componentescolor.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Font.Color:=Frm_PerForm.Tb_Componentesfont_color.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Visible:=
//       Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;

      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Ctl3D:=
      Frm_PerForm.Tb_ComponentesCtl3D.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Enabled
//      :=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).ShowHint
      :=Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Hint
      :=Frm_PerForm.Tb_ComponentesHint.AsString;

{
      case Frm_PerForm.Tb_ComponentesAlign.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Align := alBottom;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Align := alClient;
         2: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Align := alCustom;
         3: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Align := alLeft;
         4: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Align := alNone;
         5: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Align := alRight;
         6: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Align := alTop;
         end;
}
      if (Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FtUNDERLINE.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger)<4 then
         begin
         if Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger=0 then
            begin
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Font.Style:=[fsBold,fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Font.Style:=[fsBold,fsItalic]
               end
            else
                (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Font.Style:=[fsBold]
            end
         else
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                  else
                    (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Font.Style:=[fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Font.Style:=[fsItalic];
               end
            else
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Font.Style:=[fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Font.Style:=[fsUnderline];
                  end
             else
                if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Font.Style:=[fsStrikeOut];
         end;



      end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Height;
      Frm_PerForm.Tb_ComponentesTop.Value        :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Left;
      Frm_PerForm.Tb_Componentesfont_height.Value:=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Font.Height;
      Frm_PerForm.Tb_Componentesfont_size.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Font.Size;
      Frm_PerForm.Tb_Componentesfont_name.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Font.Name;
      Frm_PerForm.Tb_Componentesfont_color.Value :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Font.Color;
      Frm_PerForm.Tb_Componentescolor.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Color;
//      Frm_PerForm.Tb_ComponentesVisivel.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Visible,0,1);
      Frm_PerForm.Tb_ComponentesCtl3D.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Ctl3D,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value
      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Hint;

{
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tstringgrid).Align  of
         alBottom: Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         alClient: Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         alCustom: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         alLeft  : Frm_PerForm.Tb_ComponentesAlign.Value:=3;
         alNone  : Frm_PerForm.Tb_ComponentesAlign.Value:=4;
         alRight : Frm_PerForm.Tb_ComponentesAlign.Value:=5;
         alTop   : Frm_PerForm.Tb_ComponentesAlign.Value:=6;
         end;
}      end;
   end
else if func_nomeClasse='tcheckbox' then
   begin
   Frm_AjustaComp.RG_BEVELINNER.Visible :=False;
   Frm_AjustaComp.RG_BEVELKIND.Visible  :=False;
   Frm_AjustaComp.RG_BEVELOUTER.Visible :=False;
   Frm_AjustaComp.RG_BORDERSTYLE.Visible:=False;
   Frm_AjustaComp.DBCB_Ctl3D.Visible    :=False;
   Frm_AjustaComp.DBCb_parent.Visible   :=True;
   Frm_AjustaComp.GB_Fonte.Visible      :=True;
   Frm_AjustaComp.RG_ALIGNMENT.Visible  :=True;
   Frm_AjustaComp.RG_ALIGN.Visible      :=true;
   Frm_AjustaComp.lbl_color.Visible     :=True;
   Frm_AjustaComp.DBE_Color.Visible     :=True;
   Frm_AjustaComp.SB_Color.Visible      :=True;

   if ptipo=0 then
      begin
      for x:=0 to High(mwinControl) do
         begin
         if uppercase(mWinControl[x].Name)=Uppercase(Frm_PerForm.Tb_ComponentesParent_Nome.Value) then
            begin
            (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Parent:=mWinControl[x];
            break;
            end;
         end;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Width      :=Frm_PerForm.Tb_ComponentesTamanho.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Height     :=Frm_PerForm.Tb_ComponentesHeight.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Top        :=Frm_PerForm.Tb_ComponentesTop.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Left       :=Frm_PerForm.Tb_ComponentesmLeft.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Caption    :=Frm_PerForm.Tb_ComponentesCaption.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Font.Height:=Frm_PerForm.Tb_Componentesfont_height.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Font.Size  :=Frm_PerForm.Tb_Componentesfont_size.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Font.Name  :=Frm_PerForm.Tb_Componentesfont_name.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Color      :=Frm_PerForm.Tb_Componentescolor.Value;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Font.Color:=Frm_PerForm.Tb_Componentesfont_color.Value;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Visible:=
//       Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0;
       if Frm_AjustaComp.RG_APRESENT.ItemIndex=0 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Visible    :=true
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=1 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=0
       else if Frm_AjustaComp.RG_APRESENT.ItemIndex=2 then
         (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Visible    :=Frm_PerForm.Tb_ComponentesVisivel.AsInteger=1;

      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Ctl3D:=
      Frm_PerForm.Tb_ComponentesCtl3D.AsInteger=0;
//      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Enabled
//      :=Frm_PerForm.Tb_ComponentesEnabled.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).ShowHint
      :=Frm_PerForm.Tb_ComponentesShowHint.AsInteger=0;
      (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Hint
      :=Frm_PerForm.Tb_ComponentesHint.AsString;

{
      case Frm_PerForm.Tb_ComponentesAlign.AsInteger of
         0: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Align := alBottom;
         1: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Align := alClient;
         2: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Align := alCustom;
         3: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as checkbox).Align := alLeft;
         4: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Align := alNone;
         5: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Align := alRight;
         6: (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Align := alTop;
         end;
}
      if (Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_FtUNDERLINE.AsInteger
         +Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger)<4 then
         begin
         if Frm_PerForm.Tb_ComponentesFONT_FSBOLD.AsInteger=0 then
            begin
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Font.Style:=[fsBold,fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Font.Style:=[fsBold,fsItalic]
               end
            else
                (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Font.Style:=[fsBold]
            end
         else
            if Frm_PerForm.Tb_ComponentesFONT_FSITALIC.AsInteger=0 then
               begin
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                  else
                    (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Font.Style:=[fsItalic,fsUnderline];
                  end
               else
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Font.Style:=[fsItalic];
               end
            else
               if Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.AsInteger=0 then
                  begin
                  if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Font.Style:=[fsUnderline,fsStrikeOut]
                  else
                     (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Font.Style:=[fsUnderline];
                  end
             else
                if Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.AsInteger=0 then
                  (Frm_ConfForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Font.Style:=[fsStrikeOut];
         end;



      end
   else
      begin
      Frm_PerForm.Tb_ComponentesTamanho.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value     :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value        :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Left;
      Frm_PerForm.Tb_ComponentesCaption.Value    :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Caption;
      Frm_PerForm.Tb_Componentesfont_height.Value:=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Font.Height;
      Frm_PerForm.Tb_Componentesfont_size.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Font.Size;
      Frm_PerForm.Tb_Componentesfont_name.Value  :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Font.Name;
      Frm_PerForm.Tb_Componentesfont_color.Value :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Font.Color;
      Frm_PerForm.Tb_Componentescolor.Value      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Color;
//      Frm_PerForm.Tb_ComponentesVisivel.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as checkbox).Visible,0,1);
      Frm_PerForm.Tb_ComponentesCtl3D.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Ctl3D,0,1);
//      Frm_PerForm.Tb_ComponentesEnabled.Value
//      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Enabled,0,1);
      Frm_PerForm.Tb_ComponentesShowHint.Value
      :=iif(( Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).ShowHint,0,1);
      Frm_PerForm.Tb_ComponentesHint.Value
      :=(Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Hint;

{
      case (Frm_confForm.Components[Frm_PerForm.Tb_ComponentesSequencia.Value] as tcheckbox).Align  of
         alBottom: Frm_PerForm.Tb_ComponentesAlign.Value:=0;
         alClient: Frm_PerForm.Tb_ComponentesAlign.Value:=1;
         alCustom: Frm_PerForm.Tb_ComponentesAlign.Value:=2;
         alLeft  : Frm_PerForm.Tb_ComponentesAlign.Value:=3;
         alNone  : Frm_PerForm.Tb_ComponentesAlign.Value:=4;
         alRight : Frm_PerForm.Tb_ComponentesAlign.Value:=5;
         alTop   : Frm_PerForm.Tb_ComponentesAlign.Value:=6;
         end;
}      end;
   end;

if ptipo=1 then
   Frm_PerForm.Tb_Componentes.Post;

end;


procedure TFrm_AjustaComp.Src_ComponentesDataChange(Sender: TObject;
  Field: TField);
var
x: Integer;
begin
if not mBloqueiaChange then
   begin
   if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert])
      and (pAtualizaComponente) then
      begin
      if pItemAntes<>99999 then
         begin
         fMarCaDesmarcaCompontente(1,pItemAntes,pNomeClasse_Antes);
         pItemAntes:=99999;
         end;
//ShowMessage('Clicou: '+Frm_ConfForm.Components[x].Name);
      x:=Frm_PerForm.Tb_ComponentesSequencia.Value;
      if x>=0 then
         begin
         mCompArast:=Frm_ConfForm.Components[x].Name;
//   Frm_PerForm.Tb_ComponentesSequencia.Value:=x;
//ShowMessage('Clicou: '+TObject.ClassName);
         mArrastaComp:=true;
         mNomeClasse:=lowercase(Frm_ConfForm.Components[x].ClassName);
//      Frm_AjustaComp.lbl_nome.Caption    :=Frm_ConfForm.Components[x].Name;
         end;
      if trim(mNomeClasse)<>'' then
         fMarCaDesmarcaCompontente(0,x,mNomeClasse);

      end;
   end;   
{
else
   begin
   x:=Frm_PerForm.Tb_ComponentesSequencia.Value;
   if x>=0 then
      begin
      mNomeClasse:=lowercase(Frm_ConfForm.Components[x].ClassName);
//      Frm_AjustaComp.lbl_nome.Caption    :=Frm_ConfForm.Components[x].Name;
      if trim(mNomeClasse)<>'' then
         fMarCaDesmarcaCompontente(0,x,mNomeClasse);
      end;
   end;
}
end;

procedure TFrm_AjustaComp.DBE_CAPTIONChange(Sender: TObject);
begin
if pAtualizaComponente then
   fAtualizarComponentes(0);

end;

procedure TFrm_AjustaComp.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
if (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
   begin
   Frm_PerForm.Tb_Componentes.Post;
   end;
pAtualizaComponente:=true;

end;

procedure TFrm_AjustaComp.DBGrid1Enter(Sender: TObject);
begin
if (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
   begin
   Frm_PerForm.Tb_Componentes.Post;
   end;
pAtualizaComponente:=true;

end;

procedure TFrm_AjustaComp.DESCRICAOChange(Sender: TObject);
var
x: Integer;
begin
{
for x:=0 to Frm_PerForm.Tb_Componentes.IndexDefs.Count-1 do
   begin
   ShowMessage('Index: '+Frm_PerForm.Tb_Componentes.IndexDefs[x].Name);
   end;

}
if rg_pesquisar.ItemIndex=11 then
   begin
   Frm_PerForm.Tb_Componentes.IndexName:='CADCOMP_Alignment';
   Frm_PerForm.Tb_Componentes.Locate('alignment',DESCRICAO.Text,[loPartialKey,LoCaseInsensitive]);
   end
else if rg_pesquisar.ItemIndex=10 then
   begin
   Frm_PerForm.Tb_Componentes.IndexName:='CADCOMP_Align';
   Frm_PerForm.Tb_Componentes.Locate('align',DESCRICAO.Text,[loPartialKey,LoCaseInsensitive]);
   end
else if rg_pesquisar.ItemIndex=09 then
   begin
   Frm_PerForm.Tb_Componentes.IndexName:='CADCOMP_PARENT_NOME';
   Frm_PerForm.Tb_Componentes.Locate('parent_nome',DESCRICAO.Text,[loPartialKey,LoCaseInsensitive]);
   end
else if rg_pesquisar.ItemIndex=08 then
   begin
   Frm_PerForm.Tb_Componentes.IndexName:='CADCOMP_Sequencia';
   Frm_PerForm.Tb_Componentes.Locate('sequencia',valint(DESCRICAO.Text),[loPartialKey,LoCaseInsensitive]);
   end
else if rg_pesquisar.ItemIndex=07 then
   begin
   Frm_PerForm.Tb_Componentes.IndexName:='CADCOMP_Caption';
   Frm_PerForm.Tb_Componentes.Locate('caption',DESCRICAO.Text,[loPartialKey,LoCaseInsensitive]);
   end
else if rg_pesquisar.ItemIndex=06 then
   begin
   Frm_PerForm.Tb_Componentes.IndexName:='CADCOMP_Visivel';
   Frm_PerForm.Tb_Componentes.Locate('visivel',valint(DESCRICAO.Text),[loPartialKey,LoCaseInsensitive]);
   end
else if rg_pesquisar.ItemIndex=05 then
   begin
   Frm_PerForm.Tb_Componentes.IndexName:='CADCOMP_Left';
   Frm_PerForm.Tb_Componentes.Locate('left',valint(DESCRICAO.Text),[loPartialKey,LoCaseInsensitive]);
   end
else if rg_pesquisar.ItemIndex=04 then
   begin
   Frm_PerForm.Tb_Componentes.IndexName:='CADCOMP_Top';
   Frm_PerForm.Tb_Componentes.Locate('top',valint(DESCRICAO.Text),[loPartialKey,LoCaseInsensitive]);
   end
else if rg_pesquisar.ItemIndex=03 then
   begin
   Frm_PerForm.Tb_Componentes.IndexName:='CADCOMP_Height';
   Frm_PerForm.Tb_Componentes.Locate('Height',valint(DESCRICAO.Text),[loPartialKey,LoCaseInsensitive]);
   end
else if rg_pesquisar.ItemIndex=02 then
   begin
   Frm_PerForm.Tb_Componentes.IndexName:='CADCOMP_Tamanho';
   Frm_PerForm.Tb_Componentes.Locate('tamanho',valint(DESCRICAO.Text),[loPartialKey,LoCaseInsensitive]);
   end
else if rg_pesquisar.ItemIndex=01 then
   begin
   Frm_PerForm.Tb_Componentes.IndexName:='CADCOMP_Classe';
   Frm_PerForm.Tb_Componentes.Locate('classe',DESCRICAO.Text,[loPartialKey,LoCaseInsensitive]);
   end
else
   begin
   Frm_PerForm.Tb_Componentes.IndexName:='';
   Frm_PerForm.Tb_Componentes.Locate('nomecomp',DESCRICAO.Text,[loPartialKey,LoCaseInsensitive]);
   end;




{

00-Nome do Componente
01-Classe
02-Tamanho     integer
03-Height      integer
04-Top         integer
05-Left        integer
06-Visivel     integer
07-Caption
08-Sequencia integer
09-Parent_Nome
10-Align
11-Alignment
}


end;

procedure TFrm_AjustaComp.DBGrid1DblClick(Sender: TObject);
begin
if DBGrid1.SelectedField=Frm_PerForm.Tb_ComponentesParent_Nome then
   begin
   Frm_PerForm.Tb_Componentes.Locate('nomecomp',Frm_PerForm.Tb_ComponentesParent_Nome.Value,[loPartialKey,LoCaseInsensitive]);
   end;

end;

procedure TFrm_AjustaComp.FormCreate(Sender: TObject);
begin
//Frm_AjustaComp.DBE_Tam.TabOrder:=1;
//(Frm_Pro.Components[x] as TDBRadioGroup).TabOrder;
end;

procedure TFrm_AjustaComp.bbGravarClick(Sender: TObject);
begin
close;
end;

procedure TFrm_AjustaComp.SB_ColorClick(Sender: TObject);
begin
if ColorDialog1.Execute then
   begin
   if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
      Frm_PerForm.Tb_Componentes.Edit;
   Frm_PerForm.Tb_ComponentesColor.AsInteger:=ColorDialog1.Color;
   end;
end;

procedure TFrm_AjustaComp.SBFONTEClick(Sender: TObject);
begin
if FontDialog1.Execute then
   begin
   if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
      Frm_PerForm.Tb_Componentes.Edit;
   Frm_PerForm.Tb_Componentesfont_name.Value  :=FontDialog1.Font.Name;
   Frm_PerForm.Tb_Componentesfont_color.Value :=FontDialog1.Font.Color;
   Frm_PerForm.Tb_Componentesfont_height.Value:=FontDialog1.Font.Height;
   Frm_PerForm.Tb_Componentesfont_size.Value  :=FontDialog1.Font.Size;

   end;
end;

procedure TFrm_AjustaComp.DBCb_parentExit(Sender: TObject);
begin
//if pAtualizaComponente then
   fAtualizarComponentes(0);

end;

procedure TFrm_AjustaComp.DBCB_VisivelClick(Sender: TObject);
begin
//if pAtualizaComponente then
   fAtualizarComponentes(0);

end;

procedure TFrm_AjustaComp.RG_BEVELINNERClick(Sender: TObject);
begin
//if pAtualizaComponente then
   fAtualizarComponentes(0);

end;

procedure TFrm_AjustaComp.RG_ALIGNMENTChange(Sender: TObject);
begin
//if pAtualizaComponente then
   fAtualizarComponentes(0);

end;

procedure TFrm_AjustaComp.RG_APRESENTEnter(Sender: TObject);
begin
mApresent_ant:=RG_APRESENT.ItemIndex;
end;

procedure TFrm_AjustaComp.RG_APRESENTExit(Sender: TObject);
begin
if RG_APRESENT.ItemIndex<>mApresent_ant then
   begin
   Frm_PerForm.Tb_Componentes.First;
   While not Frm_PerForm.Tb_Componentes.Eof do
      begin
      Frm_PerForm.Tb_Componentes.Next;
      fAtualizarComponentes(0);
      end;
   end;
Frm_PerForm.Tb_Componentes.First;
end;

procedure TFrm_AjustaComp.RG_BEVELINNERExit(Sender: TObject);
begin
   fAtualizarComponentes(0);

end;

procedure TFrm_AjustaComp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

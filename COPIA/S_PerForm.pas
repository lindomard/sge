unit S_PerForm;
{
compontentes que foram tratados
01-tlabel
02-tedit
03-tbitbtn
04-tpage
05-tpanel
06-tcombobox
07-tmaskedit
08-ttabsheet
09-tpagecontrol
10-tgroupbox
11-tdbnavigator
12-tbevel
13-tdbcombobox
14-tdbradiogroup
15-tdbgrid
16-tdbedit
17-tlistbox
18-tstatictext
19-tradiogroup
20-tdbcheckbox
21-tdbgroupbox


}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,S_Pro,S_Cli,S_Ped, Grids, ExtCtrls, Mask, ComCtrls,
  DBCtrls, DBGrids,lerarq, DB, DBTables,func,S_DM5,S_Stru,func2;

type
  TFrm_PerForm = class(TForm)
    STG1: TStringGrid;
    Panel1: TPanel;
    Label1: TLabel;
    cb_form: TComboBox;
    bbPerForm: TBitBtn;
    bbSair: TBitBtn;
    Tb_Componentes: TTable;
    Tb_ComponentesNomeComp: TStringField;
    Tb_ComponentesClasse: TStringField;
    Tb_ComponentesTamanho: TIntegerField;
    Tb_ComponentesHeight: TIntegerField;
    Tb_ComponentesTop: TIntegerField;
    Tb_ComponentesVisivel: TIntegerField;
    Tb_ComponentesCaption: TStringField;
    Tb_ComponentesSequencia: TIntegerField;
    Src_Componentes: TDataSource;
    Tb_ComponentesParent_Nome: TStringField;
    bbSalvar: TBitBtn;
    Tb_Componentescampo_tabela: TStringField;
    Tb_Componentescampo_nome: TStringField;
    Tb_Componentescampo_tamanho: TStringField;
    Tb_Componentescampo_dec: TIntegerField;
    Tb_Componentescampo_desc: TStringField;
    Tb_Componentesfont_color: TIntegerField;
    Tb_Componentesfont_height: TIntegerField;
    Tb_Componentesfont_size: TIntegerField;
    Tb_Componentesfont_name: TStringField;
    Tb_Componentesfont_fsbold: TIntegerField;
    Tb_Componentesfont_fsitalic: TIntegerField;
    Tb_Componentesfont_ftunderline: TIntegerField;
    Tb_Componentesfont_strikeout: TIntegerField;
    Tb_Componentescampo_order: TIntegerField;
    Tb_Componentescampo_index: TIntegerField;
    Tb_ComponentesmLeft: TIntegerField;
    Tb_Componentescodemp: TIntegerField;
    Tb_ComponentesNomeForm: TStringField;
    cb_original: TCheckBox;
    Tb_Componentesbevelinner: TIntegerField;
    Tb_ComponentesbevelKind: TIntegerField;
    Tb_ComponentesbevelOuter: TIntegerField;
    Tb_Componentesbevelwidth: TIntegerField;
    Tb_Componentesborderstyle: TIntegerField;
    Tb_ComponentesCharCase: TIntegerField;
    Tb_ComponentesColor: TIntegerField;
    Tb_ComponentesCtl3D: TIntegerField;
    Tb_ComponentesEnabled: TIntegerField;
    Tb_ComponentesShowHint: TIntegerField;
    Tb_ComponentesAlign: TIntegerField;
    Tb_ComponentesAlignment: TIntegerField;
    Edit1: TEdit;
    Tb_ComponentesHint: TStringField;
    Tb_Padrao: TTable;
    Tb_PadraoNomeComp: TStringField;
    Tb_PadraoSequencia: TIntegerField;
    Tb_PadraoClasse: TStringField;
    Tb_PadraoTamanho: TIntegerField;
    Tb_PadraoHeight: TIntegerField;
    Tb_PadraoTop: TIntegerField;
    Tb_PadraomLeft: TIntegerField;
    Tb_PadraoVisivel: TIntegerField;
    Tb_PadraoCaption: TStringField;
    Tb_PadraoParent_Nome: TStringField;
    Tb_PadraoAlign: TIntegerField;
    Tb_PadraoAlignment: TIntegerField;
    Tb_Padraocampo_order: TIntegerField;
    Tb_Padraocampo_index: TIntegerField;
    Tb_Padraocampo_tabela: TStringField;
    Tb_Padraocampo_nome: TStringField;
    Tb_Padraocampo_tamanho: TStringField;
    Tb_Padraocampo_dec: TIntegerField;
    Tb_Padraocampo_desc: TStringField;
    Tb_Padraofont_color: TIntegerField;
    Tb_Padraofont_height: TIntegerField;
    Tb_Padraofont_size: TIntegerField;
    Tb_Padraofont_name: TStringField;
    Tb_Padraofont_fsbold: TIntegerField;
    Tb_Padraofont_fsitalic: TIntegerField;
    Tb_Padraofont_ftunderline: TIntegerField;
    Tb_Padraofont_strikeout: TIntegerField;
    Tb_Padraocodemp: TIntegerField;
    Tb_PadraoNomeForm: TStringField;
    Tb_Padraobevelinner: TIntegerField;
    Tb_PadraobevelKind: TIntegerField;
    Tb_PadraobevelOuter: TIntegerField;
    Tb_Padraobevelwidth: TIntegerField;
    Tb_Padraoborderstyle: TIntegerField;
    Tb_PadraoCharCase: TIntegerField;
    Tb_PadraoColor: TIntegerField;
    Tb_PadraoCtl3D: TIntegerField;
    Tb_PadraoEnabled: TIntegerField;
    Tb_PadraoShowHint: TIntegerField;
    Tb_PadraoHint: TStringField;
    procedure bbPerFormClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Tb_ComponentesAfterEdit(DataSet: TDataSet);
    procedure Tb_ComponentesAfterPost(DataSet: TDataSet);
    procedure Tb_ComponentesAfterCancel(DataSet: TDataSet);
    procedure bbSairClick(Sender: TObject);
    procedure bbSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function fRedirecionarComponentes(pNomeForm: String):Boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

function fPerformCriaTmp(pTipo,pSequencia,pTamanho,pHeight,pTop,pLeft,pFont_Order
                        ,pFont_Index,pFont_Color,pfont_height
                        ,pfont_size,pbevelinner,pbevelKind,pbevelOuter,pbevelwidth
                        ,pborderstyle,pCharCase,pColor,
                        pAlign,pAlignment :Integer;
                        pVisivel,pfont_fsbold,pfont_fsitalic,pfont_ftunderline,
                        pCtl3D,pfont_strikeout,pEnabled,pShowHint: Boolean;
                        pNomeForm,pNomeComp,pClasse,pCaption,pParent_Nome, pfont_name
                        ,Hint: String): Boolean;





function fPersonPro(pTipo: Integer): Boolean;

var
  Frm_PerForm: TFrm_PerForm;
  mWinControl : array of TWinControl;
  mTabtemp: String='';
  mTabtemp2: String='';
  mSequencia: Integer=0;
  mOrdem_ant : Integer=-1;
  mParent_ant: String='';
  mOperComp: Integer=0; // 0 incluir 1-alterar
  mNomeForm: String;
  mBevelInner: Integer;
  mBevelKind : Integer;
  mBevelOuter: Integer;
  mBevelWidth: Integer;
  mBorderStyle: Integer;
  mAlign: Integer;
  mAlignment: Integer;
  mCharCase: Integer;
  mValidaPost: Boolean=true;

implementation

uses S_ConfForm, S_AjustaComp, S_DM1;

{$R *.dfm}

procedure TFrm_PerForm.bbPerFormClick(Sender: TObject);
begin
if cb_original.Checked then
   mredirecionaFormPro:=false
else
   mredirecionaFormPro:=true;

if Tb_Componentes.Active then  Tb_Componentes.Close;
if trim(mTabtemp)<>'' then
   begin
   Tb_Componentes.DeleteTable;
   Tb_Padrao.DeleteTable;
   end
else
   begin
   mTabtemp:=fProcTemp(11);
   Tb_Componentes.TableName:=mTabtemp;
   mTabtemp2:=fProcTemp(12);
   Tb_Padrao.TableName:=mTabtemp2;
   end;
Tb_Componentes.CreateTable;
Tb_Componentes.Open;
DM1.Tb_Pro.Close;
DM1.Tb_Cli.Close;
DM1.Tb_Ped01.Close;
DM1.Tb_Ped02.Close;
DM1.Tb_Ped02D.Close;
DM1.Tb_Ped01D.Close;
DM1.Tb_Ped01V.Close;
DM1.Tb_Ped02S.Close;

mSequencia:=0;
Tb_Padrao.CreateTable;
if cb_form.ItemIndex=0 then
   mNomeForm:='FRM_PRO'
else if cb_form.ItemIndex=1 then
   mNomeForm:='FRM_CLI'
else if cb_form.ItemIndex=2 then
   mNomeForm:='FRM_PED';
fPersonPro(cb_form.ItemIndex);
bbSalvar.Enabled:=true;
//mNomeClasse Src_Componentes.DataSet

end;

function fPersonPro(pTipo: Integer): Boolean;
// ptipo=0 Frm_Pro 1-Frm_Cli 2-Frm_Ped
var
mClasse:String;
mClasseComp: String;
mcla,mlin,x,y: Integer;
f: TextFile;
mcinst: String;
mAchou: Boolean;
begin

mWinControl  :=nil;
mPanel       :=nil;
mLabel       :=nil;
mEdit        :=nil;
mBitBtn      :=nil;
mPage        :=nil;
mComboBox    :=nil;
mMaskEdit    :=nil;
mTabSheet    :=nil;
mPageControl :=nil;
mGroupBox    :=nil;
mDbNavigator :=nil;
mBevel       :=nil;
mDbComboBox  :=nil;
mDBRadioGroup:=nil;
mDbGrid      :=nil;
mDbEdit      :=nil;
mListBox     :=nil;
mStaticText  :=nil;
mRadioGroup  :=nil;
mDbCheckBox  :=nil;
mCheckBox    :=nil;
mMemo        :=nil;
mDbMemo      :=nil;
mStringGrid  :=Nil;

pAtualizaComponente:=false;
//mredirecionaFormPro:=false;

Application.CreateForm(TFrm_ConfForm,Frm_ConfForm);
if ptipo=0 then // cadastro de Produtos
   begin
   Application.CreateForm(TFrm_Pro,Frm_Pro);
// attribuir no stg1
   Frm_ConfForm.Width     :=Frm_Pro.Width;
   Frm_ConfForm.Height    :=Frm_Pro.Height;
   Frm_ConfForm.Top       :=Frm_Pro.Top;
   Frm_ConfForm.Left      :=Frm_Pro.Left;
   Frm_ConfForm.Color     :=Frm_Pro.Color;
   Frm_ConfForm.Position  :=Frm_Pro.Position;
   Frm_ConfForm.Font.Color:=Frm_Pro.Font.Color;
   Frm_ConfForm.Font.Size :=Frm_Pro.Font.Size;
   Frm_ConfForm.Caption   :=Frm_Pro.Caption;

   Frm_perForm.STG1.RowCount:=2;
   Frm_perForm.STG1.Cells[00,00]:='Nome';
   Frm_perForm.STG1.Cells[01,00]:='Classe Nome';
   Frm_perForm.STG1.Cells[02,00]:='Parent';
   mBorderStyle:=-1;
   case Frm_ConfForm.BorderStyle of
        bsDialog     : mBorderStyle:=0;
        bsNone       : mBorderStyle:=1;
        bsSingle     : mBorderStyle:=2;
        bsSizeable   : mBorderStyle:=3;
        bsSizeToolWin: mBorderStyle:=4;
        bsToolWindow : mBorderStyle:=5;
        end;
{
   mAlign:=-1;
   case Frm_ConfForm.Align of
        alBottom     : mAlign:=0;
        alClient     : mAlign:=1;
        alCustom     : mAlign:=2;
        alLeft       : mAlign:=3;
        alNone       : mAlign:=4;
        alRight      : mAlign:=5;
        alTop        : mAlign:=6;
        end;
 }
   fPerformCriaTmp(0, // ptipo
                0, // sequencia
                Frm_ConfForm.Width, // tamanho
                Frm_ConfForm.Height, // tamanho
                Frm_ConfForm.Top, //  top
                Frm_ConfForm.Left, // left
                0, // order
                0, // index
                Frm_ConfForm.Font.Color, // font_color
                Frm_ConfForm.Font.Height, // font_heigth
                Frm_ConfForm.Font.Size, // font_heigth
                -1, // bevel inner
                -1, // bevel kind
                -1, // bevel outer
                -1, // bevel width
                mBorderStyle, // border style
                -1, // charcase
                Frm_ConfForm.Color, // color
                malign, // palign
                -1, // palignment
                Frm_ConfForm.Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                Frm_ConfForm.Ctl3D, // ctr3d
                false, // fontstrikeout
                Frm_ConfForm.Enabled, // enabled
                Frm_ConfForm.ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                UpperCase(Frm_ConfForm.Name), // nome do componente
                'form', //classe do componente
                Frm_ConfForm.Caption, // caption
                '', // parent_nome
                Frm_ConfForm.Font.Name,
                Frm_ConfForm.Hint);


   for x:=0 to Frm_Pro.ComponentCount-1 do
      begin
      Frm_perForm.stg1.RowCount:=Frm_perForm.stg1.RowCount+1;
      mlin:=Frm_perForm.STG1.RowCount-2;
      Frm_PerForm.STG1.Cells[00,mlin]:=Frm_Pro.Components[x].Name;
      Frm_PerForm.STG1.Cells[01,mlin]:=Frm_Pro.Components[x].ClassName;
      if LowerCase(Frm_Pro.Components[x].ClassName)='tlabel' then
         begin
         mLabel       := TLabel.Create(Frm_ConfForm);
         mlabel.Font  := (Frm_Pro.Components[x] as TLabel).Font;
         mlabel.Color := (Frm_Pro.Components[x] as TLabel).Color;
         mlabel.OnDblClick:=Frm_ConfForm.GeralClick;
         mlabel.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mlabel.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mlabel.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;
         if lowercase( (Frm_Pro.Components[x] as TLabel).Parent.Name)='frm_pro' then
            mLabel.Parent:=Frm_ConfForm
         else
            begin
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TLabel).Parent.Name then
                  mLabel.Parent:=mWinControl[mcla];
               end;
            end;
         with Frm_ConfForm do
            begin
            mLabel.Name     :=Frm_Pro.Components[x].Name;
            mLabel.Caption  :=(Frm_Pro.Components[x] as TLabel).Caption;
            mLabel.SetBounds( (Frm_Pro.Components[x] as TLabel).Left,
                              (Frm_Pro.Components[x] as TLabel).Top,
                              (Frm_Pro.Components[x] as TLabel).Width,
                              (Frm_Pro.Components[x] as TLabel).Height );
            mLabel.Font   :=(Frm_Pro.Components[x] as TLabel).Font;
            end;
       Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as TLabel).Parent.Name;
{
       mAlign:=-1;
       case (Frm_Pro.Components[x] as TLabel).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;
}
       mAlignment:=-1;
       case (Frm_Pro.Components[x] as TLabel).Alignment of
          taCenter      : mAlignment:=0;
          taLeftJustify : mAlignment:=1;
          taRightJustify: mAlignment:=2;
          end;



       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as TLabel).Width, // tamanho
                (Frm_Pro.Components[x] as TLabel).Height, // tamanho
                (Frm_Pro.Components[x] as TLabel).Top, //  top
                (Frm_Pro.Components[x] as TLabel).Left, // left
                0, // order
                0, // index
                (Frm_Pro.Components[x] as TLabel).Font.Color, // font_color
                (Frm_Pro.Components[x] as TLabel).Font.Height, // font_heigth
                (Frm_Pro.Components[x] as TLabel).Font.Size, // font_heigth
                -1, // bevel inner
                -1, // bevel kind
                -1, // bevel outer
                -1, // bevel width
                -1, // border style
                -1, // charcase
                (Frm_Pro.Components[x] as TLabel).Color, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Pro.Components[x] as TLabel).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                false, // ctr3d
                false, // fontstrikeout
                (Frm_Pro.Components[x] as TLabel).Enabled, // enabled
                (Frm_Pro.Components[x] as TLabel).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Pro.Components[x] as TLabel).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Pro.Components[x] as TLabel).Font.Name,
                (Frm_Pro.Components[x] as TLabel).Hint);

      end
   else if LowerCase(Frm_Pro.Components[x].ClassName)='tedit' then
      begin
      with Frm_ConfForm do
         begin
          mEdit       := TEdit.Create(Frm_ConfForm);
          mEdit.Font  := (Frm_Pro.Components[x] as TEdit).Font;
          mEdit.Color := (Frm_Pro.Components[x] as TEdit).Color;
          mEdit.OnDblClick:=Frm_ConfForm.GeralClick;
          mEdit.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
          mEdit.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
          mEdit.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;

         if lowercase( (Frm_Pro.Components[x] as TEdit).Parent.Name)='frm_pro' then
            mEdit.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TEdit).Parent.Name then
                  mEdit.Parent:=mWinControl[mcla];
               end;

         mEdit.Name     :=Frm_Pro.Components[x].Name;
         mEdit.Text     :=(Frm_Pro.Components[x] as tEdit).Text;
         mEdit.SetBounds( (Frm_Pro.Components[x] as tEdit).Left,
                           (Frm_Pro.Components[x] as tEdit).Top,
                           (Frm_Pro.Components[x] as tEdit).Width,
                           (Frm_Pro.Components[x] as tEdit).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as TEdit).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Pro.Components[x] as TEdit).TabOrder);
      mCharCase:=-1;
      case (Frm_Pro.Components[x] as TEdit).CharCase of
         ecLowerCase : mCharCase:=0;
         ecNormal    : mCharCase:=1;
         ecUpperCase : mCharCase:=2;
         end;
      mBevelInner :=-1;
      mBevelKind  :=-1;
      mBevelOuter :=-1;
      mBevelWidth :=-1;
      mBorderStyle:=-1;
      case (Frm_Pro.Components[x] as TEdit).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;

      case (Frm_Pro.Components[x] as TEdit).BevelKind of
         bkFlat    : mBevelKind:=0;
         bkNone    : mBevelKind:=1;
         bkSoft    : mBevelKind:=2;
         bkTile    : mBevelKind:=3;
         end;

      case (Frm_Pro.Components[x] as TEdit).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;

      case (Frm_Pro.Components[x] as TEdit).BorderStyle of
         bsNone    : mBorderStyle:=0;
         bsSingle  : mBorderStyle:=1;
         end;



      fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as TEdit).Width, // tamanho
                (Frm_Pro.Components[x] as TEdit).Height, // tamanho
                (Frm_Pro.Components[x] as TEdit).Top, //  top
                (Frm_Pro.Components[x] as TEdit).Left, // left
                (Frm_Pro.Components[x] as TEdit).TabOrder, // order
                0, // index
                (Frm_Pro.Components[x] as TEdit).Font.Color, // font_color
                (Frm_Pro.Components[x] as TEdit).Font.Height, // font_heigth
                (Frm_Pro.Components[x] as TEdit).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                -mCharCase, // charcase
                (Frm_Pro.Components[x] as TEdit).Color, // color
                -1, // palign
                -1, // palignment
                (Frm_Pro.Components[x] as TEdit).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Pro.Components[x] as TEdit).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Pro.Components[x] as TEdit).Enabled, // enabled
                (Frm_Pro.Components[x] as TEdit).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Pro.Components[x] as TEdit).Text, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Pro.Components[x] as TEdit).Font.Name,
                (Frm_Pro.Components[x] as TEdit).Hint);


      end
   else if LowerCase(Frm_Pro.Components[x].ClassName)='tbitbtn' then
      begin
      with Frm_ConfForm do
         begin
         mBitBtn       := TBitBtn.Create(Frm_ConfForm);

         mBitBtn.Font   := (Frm_Pro.Components[x] as TBitBtn).Font;
         mBitBtn.Glyph  := (Frm_Pro.Components[x] as TBitBtn).Glyph;
         mBitBtn.Kind   := (Frm_Pro.Components[x] as TBitBtn).Kind;
         mBitBtn.Caption:= (Frm_Pro.Components[x] as TBitBtn).Caption;
         mBitBtn.OnClick:= Frm_ConfForm.GeralClick;
         mBitBtn.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mBitBtn.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mBitBtn.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Pro.Components[x] as TBitBtn).Parent.Name)='frm_pro' then
            mBitBtn.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TBitBtn).Parent.Name then
                 mBitBtn.Parent:=mWinControl[mcla];
               end;
         mBitBtn.Name     :=Frm_Pro.Components[x].Name;
         mBitBtn.Caption  :=(Frm_Pro.Components[x] as tBitBtn).Caption;
         mBitBtn.SetBounds( (Frm_Pro.Components[x] as TBitBtn).Left,
                           (Frm_Pro.Components[x] as TBitBtn).Top,
                           (Frm_Pro.Components[x] as TBitBtn).Width,
                           (Frm_Pro.Components[x] as TBitBtn).Height );

         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as TBitBtn).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Pro.Components[x] as TbitBtn).TabOrder);


      mCharCase   :=-1;
      mBevelInner :=-1;
      mBevelKind  :=-1;
      mBevelOuter :=-1;
      mBevelWidth :=-1;
      mBorderStyle:=-1;
      mAlign      :=-1;
      mAlignment  :=-1;


       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as TBitbtn).Width, // tamanho
                (Frm_Pro.Components[x] as TBitbtn).Height, // tamanho
                (Frm_Pro.Components[x] as TBitbtn).Top, //  top
                (Frm_Pro.Components[x] as TBitbtn).Left, // left
                (Frm_Pro.Components[x] as TBitbtn).TabOrder, // order
                0, // index
                (Frm_Pro.Components[x] as TBitbtn).Font.Color, // font_color
                (Frm_Pro.Components[x] as TBitbtn).Font.Height, // font_heigth
                (Frm_Pro.Components[x] as TBitbtn).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                -1, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Pro.Components[x] as TBitbtn).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                true, // enabled
                false, // fontstrikeout
                (Frm_Pro.Components[x] as TBitbtn).Enabled, // enabled
                (Frm_Pro.Components[x] as TBitbtn).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Pro.Components[x] as TBitbtn).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Pro.Components[x] as TBitbtn).Font.Name,
                (Frm_Pro.Components[x] as TBitbtn).Hint);

      end
   else if LowerCase(Frm_Pro.Components[x].ClassName)='tpage' then
      begin
      with Frm_ConfForm do
         begin
         mPage       := TPage.Create(Frm_ConfForm);
         if lowercase( (Frm_Pro.Components[x] as TPage).Parent.Name)='frm_pro' then
            mPage.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TPage).Parent.Name then
                  mPage.Parent:=mWinControl[mcla];
               end;
         mPage.Name     :=Frm_Pro.Components[x].Name;
         mPage.Caption  :=(Frm_Pro.Components[x] as tPage).Caption;
         mPage.SetBounds( (Frm_Pro.Components[x] as TPage).Left,
                           (Frm_Pro.Components[x] as TPage).Top,
                           (Frm_Pro.Components[x] as TPage).Width,
                           (Frm_Pro.Components[x] as TPage).Height );

         mAchou:=false;
         for mcla:=0 to high(mWinControl) do
            begin
            if mWinControl[mcla].Name=Frm_Pro.Components[x].Name then
               begin
               mAchou:=true;
               break;
               end;
            end;
         if not mAchou  then
            begin
            mcla:=high(mWinControl);
            mcla:=mcla+2;
            SetLength(mWinControl,mcla);
            mWincontrol[mcla-1]:=mPage;
            end;
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as Tpage).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Pro.Components[x] as TPage).TabOrder);


      mCharCase   :=-1;
      mBevelInner :=-1;
      mBevelKind  :=-1;
      mBevelOuter :=-1;
      mBevelWidth :=-1;
      mBorderStyle:=-1;
      mAlign      :=-1;
      mAlignment  :=-1;
      mAlign:=-1;
{LINDOMARDC
       case (Frm_Pro.Components[x] as TPage).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;
}

       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as TPage).Width, // tamanho
                (Frm_Pro.Components[x] as TPage).Height, // tamanho
                (Frm_Pro.Components[x] as TPage).Top, //  top
                (Frm_Pro.Components[x] as TPage).Left, // left
                (Frm_Pro.Components[x] as TPage).TabOrder, // order
                0, // index
                -1, // font_color
                -1, // font_heigth
                -1, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                -1, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Pro.Components[x] as TPage).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                true, // enabled
                false, // fontstrikeout
                (Frm_Pro.Components[x] as TPage).Enabled, // enabled
                (Frm_Pro.Components[x] as TPage).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Pro.Components[x] as TPage).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                '',
                (Frm_Pro.Components[x] as TPage).Hint);


      end
   else if LowerCase(Frm_Pro.Components[x].ClassName)='tpanel' then
      begin
      with Frm_ConfForm do
         begin
         mPanel           := TPanel.Create(Frm_ConfForm);
         mPanel.Font      := (Frm_Pro.Components[x] as TPanel).Font;
         mPanel.Color     := (Frm_Pro.Components[x] as TPanel).Color;
         mPanel.OnDblClick:=Frm_ConfForm.GeralClick;
         mPanel.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mPanel.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mPanel.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;

         if lowercase( (Frm_Pro.Components[x] as TPanel).Parent.Name)='frm_pro' then
            mPanel.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TPanel).Parent.Name then
                  mPanel.Parent:=mWinControl[mcla];
               end;
         mPanel.Name   :=Frm_Pro.Components[x].Name;
         mPanel.Caption:=(Frm_Pro.Components[x] as TPanel).Caption;
         mPanel.SetBounds( (Frm_Pro.Components[x] as TPanel).Left,
                          (Frm_Pro.Components[x] as TPanel).Top,
                          (Frm_Pro.Components[x] as TPanel).Width,
                          (Frm_Pro.Components[x] as TPanel).Height);
         mAchou:=false;
         for mcla:=0 to high(mWinControl) do
            begin
            if mWinControl[mcla].Name=Frm_Pro.Components[x].Name then
               begin
               mAchou:=true;
               break;
               end;
            end;
         if not mAchou  then
            begin
            mcla:=high(mWinControl);
            mcla:=mcla+2;
            SetLength(mWinControl,mcla);
            mWincontrol[mcla-1]:=mPanel;
            end;

         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as TPanel).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Pro.Components[x] as TPanel).TabOrder);

       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

      case (Frm_Pro.Components[x] as TPanel).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;




      case (Frm_Pro.Components[x] as TPanel).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;

      case (Frm_Pro.Components[x] as TPanel).BorderStyle of
         bsNone    : mBorderStyle:=0;
         bsSingle  : mBorderStyle:=1;
         end;


       mAlignment:=-1;
       case (Frm_Pro.Components[x] as TPanel).Alignment of
          taCenter      : mAlignment:=0;
          taLeftJustify : mAlignment:=1;
          taRightJustify: mAlignment:=2;
          end;



       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as TPanel).Width, // tamanho
                (Frm_Pro.Components[x] as TPanel).Height, // tamanho
                (Frm_Pro.Components[x] as TPanel).Top, //  top
                (Frm_Pro.Components[x] as TPanel).Left, // left
                (Frm_Pro.Components[x] as TPanel).TabOrder, // order
                0, // index
                (Frm_Pro.Components[x] as TPanel).Font.Color, // font_color
                (Frm_Pro.Components[x] as TPanel).Font.Height, // font_heigth
                (Frm_Pro.Components[x] as TPanel).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Pro.Components[x] as TPanel).Color, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Pro.Components[x] as TPanel).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Pro.Components[x] as TPanel).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Pro.Components[x] as TPanel).Enabled, // enabled
                (Frm_Pro.Components[x] as TPanel).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Pro.Components[x] as TPanel).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Pro.Components[x] as TPanel).Font.Name,
                (Frm_Pro.Components[x] as TPanel).Hint);

      end
   else if LowerCase(Frm_Pro.Components[x].ClassName)='tcombobox' then
      begin
      with Frm_ConfForm do
         begin
         mComboBox           := TComboBox.Create(Frm_ConfForm);
         mComboBox.Font      := (Frm_Pro.Components[x] as TComboBox).Font;
         mComboBox.Color     := (Frm_Pro.Components[x] as TComboBox).Color;
         mComboBox.OnDblClick:=Frm_ConfForm.GeralClick;
         if lowercase( (Frm_Pro.Components[x] as TComboBox).Parent.Name)='frm_pro' then
            mComboBox.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TComboBox).Parent.Name then
                  mComboBox.Parent:=mWinControl[mcla];
               end;
         mComboBox.Name     :=Frm_Pro.Components[x].Name;
         mComboBox.Text     :=(Frm_Pro.Components[x] as tComboBox).Text;
         mComboBox.SetBounds( (Frm_Pro.Components[x] as TComboBox).Left,
                           (Frm_Pro.Components[x] as TComboBox).Top,
                           (Frm_Pro.Components[x] as TComboBox).Width,
                           (Frm_Pro.Components[x] as TComboBox).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as Tcombobox).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Pro.Components[x] as TComboBox).TabOrder);

       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;



      case (Frm_Pro.Components[x] as TComboBox).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;

      case (Frm_Pro.Components[x] as TComboBox).BevelKind of
         bkFlat    : mBevelKind:=0;
         bkNone    : mBevelKind:=1;
         bkSoft    : mBevelKind:=2;
         bkTile    : mBevelKind:=3;
         end;

      case (Frm_Pro.Components[x] as TComboBox).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;
{
       case (Frm_Pro.Components[x] as TComboBox).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;
}


       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as TCombobox).Width, // tamanho
                (Frm_Pro.Components[x] as TCombobox).Height, // tamanho
                (Frm_Pro.Components[x] as TCombobox).Top, //  top
                (Frm_Pro.Components[x] as TCombobox).Left, // left
                (Frm_Pro.Components[x] as TCombobox).TabOrder, // order
                0, // index
                (Frm_Pro.Components[x] as TCombobox).Font.Color, // font_color
                (Frm_Pro.Components[x] as TCombobox).Font.Height, // font_heigth
                (Frm_Pro.Components[x] as TCombobox).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Pro.Components[x] as TCombobox).Color, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Pro.Components[x] as TCombobox).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Pro.Components[x] as TCombobox).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Pro.Components[x] as TCombobox).Enabled, // enabled
                (Frm_Pro.Components[x] as TCombobox).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Pro.Components[x] as TCombobox).Text, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Pro.Components[x] as TCombobox).Font.Name,
                (Frm_Pro.Components[x] as TCombobox).Hint);

      end
   else if LowerCase(Frm_Pro.Components[x].ClassName)='tmaskedit' then
      begin
      with Frm_ConfForm do
         begin
         mMaskEdit           := TMaskEdit.Create(Frm_ConfForm);
         mMaskEdit.Font      := (Frm_Pro.Components[x] as TMaskEdit).Font;
         mMaskEdit.Color     := (Frm_Pro.Components[x] as TMaskEdit).Color;
         mMaskEdit.OnDblClick:=Frm_ConfForm.GeralClick;
         mMaskEdit.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mMaskEdit.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mMaskEdit.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Pro.Components[x] as TMaskEdit).Parent.Name)='frm_pro' then
            mMaskEdit.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TMaskEdit).Parent.Name then
                  mMaskEdit.Parent:=mWinControl[mcla];
               end;
         mMaskEdit.Name     :=Frm_Pro.Components[x].Name;
         mMaskEdit.Text     :=(Frm_Pro.Components[x] as tMaskEdit).Text;
         mMaskEdit.SetBounds( (Frm_Pro.Components[x] as TMaskEdit).Left,
                           (Frm_Pro.Components[x] as TMaskEdit).Top,
                           (Frm_Pro.Components[x] as TMaskEdit).Width,
                           (Frm_Pro.Components[x] as TMaskEdit).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as TMaskEdit).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Pro.Components[x] as TMaskEdit).TabOrder);


       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;



      case (Frm_Pro.Components[x] as TMaskEdit).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;

      case (Frm_Pro.Components[x] as TMaskEdit).BevelKind of
         bkFlat    : mBevelKind:=0;
         bkNone    : mBevelKind:=1;
         bkSoft    : mBevelKind:=2;
         bkTile    : mBevelKind:=3;
         end;

      case (Frm_Pro.Components[x] as TMaskEdit).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;

      case (Frm_Pro.Components[x] as TMaskEdit).BorderStyle of
         bsNone    : mBorderStyle:=0;
         bsSingle  : mBorderStyle:=1;
         end;
{
       case (Frm_Pro.Components[x] as TMaskEdit).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;
}


       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as TMaskedit).Width, // tamanho
                (Frm_Pro.Components[x] as TMaskedit).Height, // tamanho
                (Frm_Pro.Components[x] as TMaskedit).Top, //  top
                (Frm_Pro.Components[x] as TMaskedit).Left, // left
                (Frm_Pro.Components[x] as TMaskedit).TabOrder, // order
                0, // index
                (Frm_Pro.Components[x] as TMaskedit).Font.Color, // font_color
                (Frm_Pro.Components[x] as TMaskedit).Font.Height, // font_heigth
                (Frm_Pro.Components[x] as TMaskedit).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Pro.Components[x] as TMaskedit).Color, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Pro.Components[x] as TMaskedit).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Pro.Components[x] as TMaskedit).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Pro.Components[x] as TMaskedit).Enabled, // enabled
                (Frm_Pro.Components[x] as TMaskedit).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Pro.Components[x] as TMaskedit).Text, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Pro.Components[x] as TMaskedit).Font.Name,
                (Frm_Pro.Components[x] as TMaskedit).Hint);

      end
   else if LowerCase(Frm_Pro.Components[x].ClassName)='ttabsheet' then
      begin
      with Frm_ConfForm do
         begin
         if lowercase( (Frm_Pro.Components[x] as TTabSheet).Parent.Name)='frm_pro' then
            mTabSheet       := TTabSheet.Create(Frm_ConfForm)
         else
            begin
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TTabSheet).Parent.Name then
                  begin
                    mTabSheet       := TTabSheet.Create(Frm_ConfForm);

                    mTabSheet.PageControl:=mPageControl;
                    break;
                    end;
                end;

             end;

           mTabSheet.Font  := (Frm_Pro.Components[x] as TTabSheet).Font;

          if lowercase( (Frm_Pro.Components[x] as TTabSheet).Parent.Name)='frm_pro' then
             mTabSheet.Parent:=Frm_ConfForm
          else
             for mcla:=0 to high(mWinControl) do
                begin
                if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TTabSheet).Parent.Name then
                   mTabSheet.Parent:=mWinControl[mcla];
                end;
          mTabSheet.Name     :=Frm_Pro.Components[x].Name;
          mTabSheet.Caption  :=(Frm_Pro.Components[x] as tTabSheet).Caption;

          mAchou:=false;

         for mcla:=0 to high(mWinControl) do
            begin
            if mWinControl[mcla].Name=Frm_Pro.Components[x].Name then
               begin
               mAchou:=true;
               break;
               end;
            end;
         if not mAchou  then
            begin
            mcla:=high(mWinControl);
            mcla:=mcla+2;
            SetLength(mWinControl,mcla);
            mWincontrol[mcla-1]:=mTabSheet;
            end;
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as Ttabsheet).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Pro.Components[x] as TTabSheet).TabOrder);

       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;
{
       case (Frm_Pro.Components[x] as TTabSheet).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;
 }


       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as TTabsheet).Width, // tamanho
                (Frm_Pro.Components[x] as TTabsheet).Height, // tamanho
                (Frm_Pro.Components[x] as TTabsheet).Top, //  top
                (Frm_Pro.Components[x] as TTabsheet).Left, // left
                (Frm_Pro.Components[x] as TTabsheet).TabOrder, // order
                0, // index
                (Frm_Pro.Components[x] as TTabsheet).Font.Color, // font_color
                (Frm_Pro.Components[x] as TTabsheet).Font.Height, // font_heigth
                (Frm_Pro.Components[x] as TTabsheet).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelOuter, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                -1, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Pro.Components[x] as TTabsheet).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                true, // enabled
                false, // fontstrikeout
                (Frm_Pro.Components[x] as TTabsheet).Enabled, // enabled
                (Frm_Pro.Components[x] as TTabsheet).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Pro.Components[x] as TTabsheet).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Pro.Components[x] as TTabsheet).Font.Name,
                (Frm_Pro.Components[x] as TTabsheet).Hint);


      end
   else if LowerCase(Frm_Pro.Components[x].ClassName)='tpagecontrol' then
      begin
      with Frm_ConfForm do
         begin
         mPageControl      := TPageControl.Create(Frm_ConfForm);
         if lowercase( (Frm_Pro.Components[x] as TPageControl).Parent.Name)='frm_pro' then
            mPageControl.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TPageControl).Parent.Name then
                  mPageControl.Parent:=mWinControl[mcla];
               end;
         mPageControl.Name     :=Frm_Pro.Components[x].Name;
         mPageControl.Font    := (Frm_Pro.Components[x] as TPageControl).Font;

         mPageControl.SetBounds( (Frm_Pro.Components[x] as TPageControl).Left,
                           (Frm_Pro.Components[x] as TPageControl).Top,
                           (Frm_Pro.Components[x] as TPageControl).Width,
                           (Frm_Pro.Components[x] as TPageControl).Height );
         mAchou:=false;
         for mcla:=0 to high(mWinControl) do
            begin
            if mWinControl[mcla].Name=Frm_Pro.Components[x].Name then
               begin
               mAchou:=true;
               break;
               end;
            end;
         if not mAchou  then
            begin
            mcla:=high(mWinControl);
            mcla:=mcla+2;
            SetLength(mWinControl,mcla);
            mWincontrol[mcla-1]:=mPageControl;
            end;
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as TPageControl).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Pro.Components[x] as TPageControl).TabOrder);

       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

{LINDOMARDC
       case (Frm_Pro.Components[x] as TPageControl).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;
}


       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as TPageControl).Width, // tamanho
                (Frm_Pro.Components[x] as TPageControl).Height, // tamanho
                (Frm_Pro.Components[x] as TPageControl).Top, //  top
                (Frm_Pro.Components[x] as TPageControl).Left, // left
                (Frm_Pro.Components[x] as TPageControl).TabOrder, // order
                0, // index
                (Frm_Pro.Components[x] as TPageControl).Font.Color, // font_color
                (Frm_Pro.Components[x] as TPageControl).Font.Height, // font_heigth
                (Frm_Pro.Components[x] as TPageControl).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                -1, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Pro.Components[x] as TPageControl).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                true, // enabled
                false, // fontstrikeout
                (Frm_Pro.Components[x] as TPageControl).Enabled, // enabled
                (Frm_Pro.Components[x] as TPageControl).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                '', // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Pro.Components[x] as TPageControl).Font.Name,
                (Frm_Pro.Components[x] as TPageControl).Hint);


      end
   else if LowerCase(Frm_Pro.Components[x].ClassName)='tgroupbox' then
      begin
      with Frm_ConfForm do
         begin
         mGroupBox      := TGroupBox.Create(Frm_ConfForm);
         if lowercase( (Frm_Pro.Components[x] as TGroupBox).Parent.Name)='frm_pro' then
            mGroupBox.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TGroupBox).Parent.Name then
                  mGroupBox.Parent:=mWinControl[mcla];
               end;
         mGroupBox.Name     :=Frm_Pro.Components[x].Name;
         mGroupBox.Font     := (Frm_Pro.Components[x] as TGroupBox).Font;
         mGroupBox.Color := (Frm_Pro.Components[x] as TGroupBox).Color;
         mGroupBox.OnDblClick:=Frm_ConfForm.GeralClick;
         mGroupBox.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mGroupBox.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mGroupBox.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;

         mGroupBox.Caption  :=(Frm_Pro.Components[x] as tGroupBox).Caption;
         mGroupBox.SetBounds( (Frm_Pro.Components[x] as TGroupBox).Left,
                           (Frm_Pro.Components[x] as TGroupBox).Top,
                           (Frm_Pro.Components[x] as TGroupBox).Width,
                           (Frm_Pro.Components[x] as TGroupBox).Height );
         mAchou:=false;
         for mcla:=0 to high(mWinControl) do
            begin
            if mWinControl[mcla].Name=Frm_Pro.Components[x].Name then
               begin
               mAchou:=true;
               break;
               end;
            end;
         if not mAchou  then
            begin
            mcla:=high(mWinControl);
            mcla:=mcla+2;
            SetLength(mWinControl,mcla);
            mWincontrol[mcla-1]:=mGroupBox;
            end;
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as TGroupbox).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Pro.Components[x] as TgroupBox).TabOrder);

       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;


{

       case (Frm_Pro.Components[x] as TGroupBox).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;

 }

       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as TGroupbox).Width, // tamanho
                (Frm_Pro.Components[x] as TGroupbox).Height, // tamanho
                (Frm_Pro.Components[x] as TGroupbox).Top, //  top
                (Frm_Pro.Components[x] as TGroupbox).Left, // left
                (Frm_Pro.Components[x] as TGroupbox).TabOrder, // order
                0, // index
                (Frm_Pro.Components[x] as TGroupbox).Font.Color, // font_color
                (Frm_Pro.Components[x] as TGroupbox).Font.Height, // font_heigth
                (Frm_Pro.Components[x] as TGroupbox).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Pro.Components[x] as TGroupbox).Color, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Pro.Components[x] as TGroupbox).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Pro.Components[x] as TGroupbox).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Pro.Components[x] as TGroupbox).Enabled, // enabled
                (Frm_Pro.Components[x] as TGroupbox).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Pro.Components[x] as TGroupbox).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Pro.Components[x] as TGroupbox).Font.Name,
                (Frm_Pro.Components[x] as TGroupbox).Hint);

      end
   else if LowerCase(Frm_Pro.Components[x].ClassName)='tdbnavigator' then
      begin
      with Frm_ConfForm do
         begin
         mDbNavigator           := TDbNavigator.Create(Frm_ConfForm);
         mDbNavigator.VisibleButtons:=(Frm_Pro.Components[x] as TDBNavigator).VisibleButtons;
         mDbNavigator.OnDblClick:=Frm_ConfForm.GeralClick;
         if lowercase( (Frm_Pro.Components[x] as TDbNavigator).Parent.Name)='frm_pro' then
            mDbNavigator.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TDBNavigator).Parent.Name then
                  mDbNavigator.Parent:=mWinControl[mcla];
               end;
         mDbNavigator.Name     :=Frm_Pro.Components[x].Name;
         mDbNavigator.SetBounds( (Frm_Pro.Components[x] as TDbNavigator).Left,
                           (Frm_Pro.Components[x] as TDbNavigator).Top,
                           (Frm_Pro.Components[x] as TDbNavigator).Width,
                           (Frm_Pro.Components[x] as TDbNavigator).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as TDBNavigator).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Pro.Components[x] as TDbNavigator).TabOrder);
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

{
       case (Frm_Pro.Components[x] as TDBNavigator).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;
 }
       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as TDBNavigator).Width, // tamanho
                (Frm_Pro.Components[x] as TDBNavigator).Height, // tamanho
                (Frm_Pro.Components[x] as TDBNavigator).Top, //  top
                (Frm_Pro.Components[x] as TDBNavigator).Left, // left
                (Frm_Pro.Components[x] as TDBNavigator).TabOrder, // order
                0, // index
                -1, // font_color
                -1, // font_heigth
                -1, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                -1, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Pro.Components[x] as TDBNavigator).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Pro.Components[x] as TDBNavigator).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Pro.Components[x] as TDBNavigator).Enabled, // enabled
                (Frm_Pro.Components[x] as TDBNavigator).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                '' , // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                '',
                (Frm_Pro.Components[x] as TDBNavigator).Hint);

      end
   else if LowerCase(Frm_Pro.Components[x].ClassName)='tbevel' then
      begin
      with Frm_ConfForm do
         begin
         mBevel      := TBevel.Create(Frm_ConfForm);
         if lowercase( (Frm_Pro.Components[x] as TBevel).Parent.Name)='frm_pro' then
            mBevel.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TBevel).Parent.Name then
                  mBevel.Parent:=mWinControl[mcla];
               end;
         mBevel.Name     :=Frm_Pro.Components[x].Name;
         mBevel.SetBounds( (Frm_Pro.Components[x] as TBevel).Left,
                           (Frm_Pro.Components[x] as TBevel).Top,
                           (Frm_Pro.Components[x] as TBevel).Width,
                           (Frm_Pro.Components[x] as TBevel).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as TBevel).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

{
       case (Frm_Pro.Components[x] as TBevel).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;
 }

       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as Tbevel).Width, // tamanho
                (Frm_Pro.Components[x] as Tbevel).Height, // tamanho
                (Frm_Pro.Components[x] as Tbevel).Top, //  top
                (Frm_Pro.Components[x] as Tbevel).Left, // left
                -1, // order
                0, // index
                -1, // font_color
                -1, // font_heigth
                -1, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                -1, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Pro.Components[x] as Tbevel).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                true, // enabled
                false, // fontstrikeout
                (Frm_Pro.Components[x] as Tbevel).Enabled, // enabled
                (Frm_Pro.Components[x] as Tbevel).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                '', // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                '',
                (Frm_Pro.Components[x] as Tbevel).Hint);


      end
   else if LowerCase(Frm_Pro.Components[x].ClassName)='tdbcombobox' then
      begin
      with Frm_ConfForm do
         begin
         mDbComboBox      := TDbComboBox.Create(Frm_ConfForm);
         mDbComboBox.Font := (Frm_Pro.Components[x] as TDBComboBox).Font;
         mDbComboBox.Color:= (Frm_Pro.Components[x] as TDBComboBox).Color;
         mDbComboBox.OnDblClick:=Frm_ConfForm.GeralClick;

         if lowercase( (Frm_Pro.Components[x] as TDbComboBox).Parent.Name)='frm_pro' then
            mDbComboBox.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TDBComboBox).Parent.Name then
                  mDbComboBox.Parent:=mWinControl[mcla];
               end;
         mDbComboBox.Name     :=Frm_Pro.Components[x].Name;
         mDbComboBox.Text     :=(Frm_Pro.Components[x] as tDbComboBox).Text;
         mDbComboBox.SetBounds( (Frm_Pro.Components[x] as TDbComboBox).Left,
                           (Frm_Pro.Components[x] as TDbComboBox).Top,
                           (Frm_Pro.Components[x] as TDbComboBox).Width,
                           (Frm_Pro.Components[x] as TDbComboBox).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as Tdbcombobox).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Pro.Components[x] as TDbComboBox).TabOrder);
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

      case (Frm_Pro.Components[x] as TDBComboBox).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;

      case (Frm_Pro.Components[x] as TDBComboBox).BevelKind of
         bkFlat    : mBevelKind:=0;
         bkNone    : mBevelKind:=1;
         bkSoft    : mBevelKind:=2;
         bkTile    : mBevelKind:=3;
         end;

      case (Frm_Pro.Components[x] as TDBComboBox).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;


{
       case (Frm_Pro.Components[x] as TDBComboBox).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;

 }

       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as TDBCombobox).Width, // tamanho
                (Frm_Pro.Components[x] as TDBCombobox).Height, // tamanho
                (Frm_Pro.Components[x] as TDBCombobox).Top, //  top
                (Frm_Pro.Components[x] as TDBCombobox).Left, // left
                (Frm_Pro.Components[x] as TDBCombobox).TabOrder, // order
                0, // index
                (Frm_Pro.Components[x] as TDBCombobox).Font.Color, // font_color
                (Frm_Pro.Components[x] as TDBCombobox).Font.Height, // font_heigth
                (Frm_Pro.Components[x] as TDBCombobox).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Pro.Components[x] as TDBCombobox).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Pro.Components[x] as TDBCombobox).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Pro.Components[x] as TDBCombobox).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Pro.Components[x] as TDBCombobox).Enabled, // enabled
                (Frm_Pro.Components[x] as TDBCombobox).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Pro.Components[x] as TDBCombobox).Text, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Pro.Components[x] as TDBCombobox).Font.Name,
                (Frm_Pro.Components[x] as TDBCombobox).Hint);


      end
   else if LowerCase(Frm_Pro.Components[x].ClassName)='tdbradiogroup' then
      begin
      with Frm_ConfForm do
         begin
         mDBRadioGroup          := TDBRadioGroup.Create(Frm_ConfForm);
         mDBRadioGroup.Font     := (Frm_Pro.Components[x] as TDBRadioGroup).Font;
         mDBRadioGroup.Color    := (Frm_Pro.Components[x] as TDBRadioGroup).Color;
         mDBRadioGroup.OnClick  :=Frm_ConfForm.GeralClick;


         if lowercase( (Frm_Pro.Components[x] as TDBRadioGroup).Parent.Name)='frm_pro' then
            mDBRadioGroup.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TDBRadioGroup).Parent.Name then
                  mDBRadioGroup.Parent:=mWinControl[mcla];
               end;
         mDBRadioGroup.Name     :=Frm_Pro.Components[x].Name;
         mDBRadioGroup.Caption  :=(Frm_Pro.Components[x] as tDBRadioGroup).Caption;
         mDBRadioGroup.SetBounds( (Frm_Pro.Components[x] as TDBRadioGroup).Left,
                           (Frm_Pro.Components[x] as TDBRadioGroup).Top,
                           (Frm_Pro.Components[x] as TDBRadioGroup).Width,
                           (Frm_Pro.Components[x] as TDBRadioGroup).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as TDBRadioGroup).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Pro.Components[x] as TDBRadioGroup).TabOrder);
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;


{
       case (Frm_Pro.Components[x] as TDBRadioGroup).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;
 }

       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as TDBradiogroup).Width, // tamanho
                (Frm_Pro.Components[x] as TDBradiogroup).Height, // tamanho
                (Frm_Pro.Components[x] as TDBradiogroup).Top, //  top
                (Frm_Pro.Components[x] as TDBradiogroup).Left, // left
                (Frm_Pro.Components[x] as TDBradiogroup).TabOrder, // order
                0, // index
                (Frm_Pro.Components[x] as TDBradiogroup).Font.Color, // font_color
                (Frm_Pro.Components[x] as TDBradiogroup).Font.Height, // font_heigth
                (Frm_Pro.Components[x] as TDBradiogroup).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Pro.Components[x] as TDBradiogroup).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Pro.Components[x] as TDBradiogroup).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Pro.Components[x] as TDBradiogroup).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Pro.Components[x] as TDBradiogroup).Enabled, // enabled
                (Frm_Pro.Components[x] as TDBradiogroup).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Pro.Components[x] as TDBradiogroup).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Pro.Components[x] as TDBradiogroup).Font.Name,
                (Frm_Pro.Components[x] as TDBradiogroup).Hint);


      end
   else if LowerCase(Frm_Pro.Components[x].ClassName)='tdbgrid' then
      begin
      with Frm_ConfForm do
         begin
         mDbGrid           := TDbGrid.Create(Frm_ConfForm);
         mDbGrid.Font      := (Frm_Pro.Components[x] as TDBGrid).Font;
         mDbGrid.Color     := (Frm_Pro.Components[x] as TDBGrid).Color;
         mDbGrid.OnDblClick:=Frm_ConfForm.GeralClick;
         mDbGrid.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mDbGrid.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mDbGrid.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Pro.Components[x] as TDbGrid).Parent.Name)='frm_pro' then
            mDbGrid.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TDBGrid).Parent.Name then
                  mDbGrid.Parent:=mWinControl[mcla];
               end;
         mDbGrid.Name     :=Frm_Pro.Components[x].Name;
//         mDbGrid.Caption  :=(Frm_Pro.Components[x] as tDbGrid).Caption;
         mDbGrid.SetBounds( (Frm_Pro.Components[x] as TDbGrid).Left,
                           (Frm_Pro.Components[x] as TDbGrid).Top,
                           (Frm_Pro.Components[x] as TDbGrid).Width,
                           (Frm_Pro.Components[x] as TDbGrid).Height );

         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as TDBGrid).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Pro.Components[x] as TDbGrid).TabOrder);
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

      case (Frm_Pro.Components[x] as TDBGrid).BorderStyle of
         bsNone    : mBorderStyle:=0;
         bsSingle  : mBorderStyle:=1;
         end;

{
       case (Frm_Pro.Components[x] as TDBGrid).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;

 }

       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as TDBGrid).Width, // tamanho
                (Frm_Pro.Components[x] as TDBGrid).Height, // tamanho
                (Frm_Pro.Components[x] as TDBGrid).Top, //  top
                (Frm_Pro.Components[x] as TDBGrid).Left, // left
                (Frm_Pro.Components[x] as TDBGrid).TabOrder, // order
                0, // index
                (Frm_Pro.Components[x] as TDBGrid).Font.Color, // font_color
                (Frm_Pro.Components[x] as TDBGrid).Font.Height, // font_heigth
                (Frm_Pro.Components[x] as TDBGrid).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Pro.Components[x] as TDBGrid).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Pro.Components[x] as TDBGrid).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Pro.Components[x] as TDBGrid).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Pro.Components[x] as TDBGrid).Enabled, // enabled
                (Frm_Pro.Components[x] as TDBGrid).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                '', // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Pro.Components[x] as TDBGrid).Font.Name,
                (Frm_Pro.Components[x] as TDBGrid).Hint);


      end
   else if LowerCase(Frm_Pro.Components[x].ClassName)='tdbedit' then
      begin
      with Frm_ConfForm do
         begin
         mDbEdit           := TDbEdit.Create(Frm_ConfForm);
         mDbEdit.Font      := (Frm_Pro.Components[x] as TDBEdit).Font;
         mDbEdit.Color     := (Frm_Pro.Components[x] as TDBEdit).Color;
         mDbEdit.OnDblClick:=Frm_ConfForm.GeralClick;
         mDbEdit.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mDbEdit.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mDbEdit.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Pro.Components[x] as TDbEdit).Parent.Name)='frm_pro' then
            mDbEdit.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TDBEdit).Parent.Name then
                  mDbEdit.Parent:=mWinControl[mcla];
               end;
         mDbEdit.Name     :=Frm_Pro.Components[x].Name;
         mDbEdit.Text     :=(Frm_Pro.Components[x] as tDbEdit).Text;
         mDbEdit.SetBounds( (Frm_Pro.Components[x] as TDbEdit).Left,
                           (Frm_Pro.Components[x] as TDbEdit).Top,
                           (Frm_Pro.Components[x] as TDbEdit).Width,
                           (Frm_Pro.Components[x] as TDbEdit).Height );

         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as TDbEdit).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Pro.Components[x] as TDBedit).TabOrder);
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;
      case (Frm_Pro.Components[x] as TDBEdit).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;

      case (Frm_Pro.Components[x] as TDBEdit).BevelKind of
         bkFlat    : mBevelKind:=0;
         bkNone    : mBevelKind:=1;
         bkSoft    : mBevelKind:=2;
         bkTile    : mBevelKind:=3;
         end;

      case (Frm_Pro.Components[x] as TDBEdit).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;

      case (Frm_Pro.Components[x] as TDBEdit).BorderStyle of
         bsNone    : mBorderStyle:=0;
         bsSingle  : mBorderStyle:=1;
         end;

{
       case (Frm_Pro.Components[x] as TDBEdit).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;
 }

       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as TDbEdit).Width, // tamanho
                (Frm_Pro.Components[x] as TDbEdit).Height, // tamanho
                (Frm_Pro.Components[x] as TDbEdit).Top, //  top
                (Frm_Pro.Components[x] as TDbEdit).Left, // left
                (Frm_Pro.Components[x] as TDbEdit).TabOrder, // order
                0, // index
                (Frm_Pro.Components[x] as TDbEdit).Font.Color, // font_color
                (Frm_Pro.Components[x] as TDbEdit).Font.Height, // font_heigth
                (Frm_Pro.Components[x] as TDbEdit).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Pro.Components[x] as TDbEdit).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Pro.Components[x] as TDbEdit).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Pro.Components[x] as TDbEdit).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Pro.Components[x] as TDbEdit).Enabled, // enabled
                (Frm_Pro.Components[x] as TDbEdit).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Pro.Components[x] as TDbEdit).Text, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Pro.Components[x] as TDbEdit).Font.Name,
                (Frm_Pro.Components[x] as TDbEdit).Hint);


      end
   else if LowerCase(Frm_Pro.Components[x].ClassName)='tlistbox' then
      begin
      with Frm_ConfForm do
         begin
         mListBox   := TListBox.Create(Frm_ConfForm);
         mListBox.Font     := (Frm_Pro.Components[x] as TListBox).Font;
         mListBox.Color := (Frm_Pro.Components[x] as TListBox).Color;
         mListBox.OnDblClick:=Frm_ConfForm.GeralClick;
         mListBox.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mListBox.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mListBox.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;

         if lowercase( (Frm_Pro.Components[x] as TListBox).Parent.Name)='frm_pro' then
            mListBox.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TListBox).Parent.Name then
                  mListBox.Parent:=mWinControl[mcla];
               end;
         mListBox.Name     :=Frm_Pro.Components[x].Name;
//         mListBox. Caption  :=(Frm_Pro.Components[x] as tListBox).Caption;
         mListBox.SetBounds( (Frm_Pro.Components[x] as TListBox).Left,
                           (Frm_Pro.Components[x] as TListBox).Top,
                           (Frm_Pro.Components[x] as TListBox).Width,
                           (Frm_Pro.Components[x] as TListBox).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as TListBox).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Pro.Components[x] as TListBox).TabOrder);
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;
      case (Frm_Pro.Components[x] as TListBox).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;

      case (Frm_Pro.Components[x] as TListBox).BevelKind of
         bkFlat    : mBevelKind:=0;
         bkNone    : mBevelKind:=1;
         bkSoft    : mBevelKind:=2;
         bkTile    : mBevelKind:=3;
         end;

      case (Frm_Pro.Components[x] as TListBox).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;

      case (Frm_Pro.Components[x] as TListBox).BorderStyle of
         bsNone    : mBorderStyle:=0;
         bsSingle  : mBorderStyle:=1;
         end;

{
       case (Frm_Pro.Components[x] as TListBox).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;

}

       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as TListbox).Width, // tamanho
                (Frm_Pro.Components[x] as TListbox).Height, // tamanho
                (Frm_Pro.Components[x] as TListbox).Top, //  top
                (Frm_Pro.Components[x] as TListbox).Left, // left
                (Frm_Pro.Components[x] as TListbox).TabOrder, // order
                0, // index
                (Frm_Pro.Components[x] as TListbox).Font.Color, // font_color
                (Frm_Pro.Components[x] as TListbox).Font.Height, // font_heigth
                (Frm_Pro.Components[x] as TListbox).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Pro.Components[x] as TListbox).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Pro.Components[x] as TListbox).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Pro.Components[x] as TListbox).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Pro.Components[x] as TListbox).Enabled, // enabled
                (Frm_Pro.Components[x] as TListbox).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                '', // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Pro.Components[x] as TListbox).Font.Name,
                (Frm_Pro.Components[x] as TListbox).Hint);

      end
   else if LowerCase(Frm_Pro.Components[x].ClassName)='tstatictext' then
      begin
      with Frm_ConfForm do
         begin
         mStaticText           := TStaticText.Create(Frm_ConfForm);
         mStaticText.Font      := (Frm_Pro.Components[x] as TStaticText).Font;
         mStaticText.Color     := (Frm_Pro.Components[x] as TStaticText).Color;
         mStaticText.OnDblClick:=Frm_ConfForm.GeralClick;
         mStaticText.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mStaticText.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mStaticText.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Pro.Components[x] as TStaticText).Parent.Name)='frm_pro' then
            mStaticText.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TStaticText).Parent.Name then
                  mStaticText.Parent:=mWinControl[mcla];
               end;
         mStaticText.Name     :=Frm_Pro.Components[x].Name;
         mStaticText.Font     :=(Frm_Pro.Components[x] as TStaticText).Font;
         mStaticText.Color    :=(Frm_Pro.Components[x] as TStaticText).Color;
         mStaticText.BorderStyle:=(Frm_Pro.Components[x] as TStaticText).BorderStyle;
         mStaticText.Caption  :=(Frm_Pro.Components[x] as tStaticText).Caption;
         mStaticText.SetBounds( (Frm_Pro.Components[x] as TStaticText).Left,
                           (Frm_Pro.Components[x] as TStaticText).Top,
                           (Frm_Pro.Components[x] as TStaticText).Width,
                           (Frm_Pro.Components[x] as TStaticText).Height );

         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as TStaticText).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Pro.Components[x] as TStaticText).TabOrder);
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

      case (Frm_Pro.Components[x] as TStaticText).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;

      case (Frm_Pro.Components[x] as TStaticText).BevelKind of
         bkFlat    : mBevelKind:=0;
         bkNone    : mBevelKind:=1;
         bkSoft    : mBevelKind:=2;
         bkTile    : mBevelKind:=3;
         end;

      case (Frm_Pro.Components[x] as TStaticText).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;

      case (Frm_Pro.Components[x] as TStaticText).BorderStyle of
         sbsNone   : mBorderStyle:=0;
         sbsSingle : mBorderStyle:=1;
         sbsSunken : mBorderStyle:=2;
         end;
{
       case (Frm_Pro.Components[x] as TStaticText).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;

}
       case (Frm_Pro.Components[x] as TStaticText).Alignment of
          taCenter      : mAlignment:=0;
          taLeftJustify : mAlignment:=1;
          taRightJustify: mAlignment:=2;
          end;

       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as TStatictext).Width, // tamanho
                (Frm_Pro.Components[x] as TStatictext).Height, // tamanho
                (Frm_Pro.Components[x] as TStatictext).Top, //  top
                (Frm_Pro.Components[x] as TStatictext).Left, // left
                (Frm_Pro.Components[x] as TStatictext).TabOrder, // order
                0, // index
                (Frm_Pro.Components[x] as TStatictext).Font.Color, // font_color
                (Frm_Pro.Components[x] as TStatictext).Font.Height, // font_heigth
                (Frm_Pro.Components[x] as TStatictext).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Pro.Components[x] as TStatictext).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Pro.Components[x] as TStatictext).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                true, // enabled
                false, // fontstrikeout
                (Frm_Pro.Components[x] as TStatictext).Enabled, // enabled
                (Frm_Pro.Components[x] as TStatictext).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Pro.Components[x] as TStatictext).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Pro.Components[x] as TStatictext).Font.Name,
                (Frm_Pro.Components[x] as TStatictext).Hint);


      end
   else if LowerCase(Frm_Pro.Components[x].ClassName)='tradiogroup' then
      begin
      with Frm_ConfForm do
         begin
         mRadioGroup       := TRadioGroup.Create(Frm_ConfForm);
         mRadioGroup.Font  := (Frm_Pro.Components[x] as TRadioGroup).Font;
         mRadioGroup.Color := (Frm_Pro.Components[x] as TRadioGroup).Color;
         mRadioGroup.OnClick:=Frm_ConfForm.GeralClick;
//         mRadioGroup.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
//         mRadioGroup.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
//         mRadioGroup.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;

         if lowercase( (Frm_Pro.Components[x] as TRadioGroup).Parent.Name)='frm_pro' then
            mRadioGroup.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TRadioGroup).Parent.Name then
                  mRadioGroup.Parent:=mWinControl[mcla];
               end;
         mRadioGroup.Name     :=Frm_Pro.Components[x].Name;
         mRadioGroup.Caption  :=(Frm_Pro.Components[x] as tRadioGroup).Caption;
         mRadioGroup.SetBounds( (Frm_Pro.Components[x] as TRadioGroup).Left,
                           (Frm_Pro.Components[x] as TRadioGroup).Top,
                           (Frm_Pro.Components[x] as TRadioGroup).Width,
                           (Frm_Pro.Components[x] as TRadioGroup).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as TRadioGroup).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Pro.Components[x] as TRadioGroup).TabOrder);
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;
{
       case (Frm_Pro.Components[x] as TRadioGroup).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;

}

       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as TRadiogroup).Width, // tamanho
                (Frm_Pro.Components[x] as TRadiogroup).Height, // tamanho
                (Frm_Pro.Components[x] as TRadiogroup).Top, //  top
                (Frm_Pro.Components[x] as TRadiogroup).Left, // left
                (Frm_Pro.Components[x] as TRadiogroup).TabOrder, // order
                0, // index
                (Frm_Pro.Components[x] as TRadiogroup).Font.Color, // font_color
                (Frm_Pro.Components[x] as TRadiogroup).Font.Height, // font_heigth
                (Frm_Pro.Components[x] as TRadiogroup).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Pro.Components[x] as TRadiogroup).Color, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Pro.Components[x] as TRadiogroup).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Pro.Components[x] as TRadiogroup).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Pro.Components[x] as TRadiogroup).Enabled, // enabled
                (Frm_Pro.Components[x] as TRadiogroup).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Pro.Components[x] as TRadiogroup).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Pro.Components[x] as TRadiogroup).Font.Name,
                (Frm_Pro.Components[x] as TRadiogroup).Hint);

      end
   else if LowerCase(Frm_Pro.Components[x].ClassName)='tdbcheckbox' then
      begin
      with Frm_ConfForm do
         begin
         mDBCheckBox        := TDBCheckBox.Create(Frm_ConfForm);
         mDbCheckBox.Font   := (Frm_Pro.Components[x] as TDBCheckBox).Font;
         mDbCheckBox.Color  := (Frm_Pro.Components[x] as TDBCheckBox).Color;
         mDbCheckBox.OnClick:=Frm_ConfForm.GeralClick;
         mDbCheckBox.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mDbCheckBox.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mDbCheckBox.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;
         if lowercase( (Frm_Pro.Components[x] as TDBCheckBox).Parent.Name)='frm_pro' then
            mDBCheckBox.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TDBCheckBox).Parent.Name then
                  mDbCheckBox.Parent:=mWinControl[mcla];
               end;
            mDBCheckBox.Name     :=Frm_Pro.Components[x].Name;
            mDBCheckBox.Caption  :=(Frm_Pro.Components[x] as TDBCheckBox).Caption;
            mDBCheckBox.SetBounds( (Frm_Pro.Components[x] as TDBCheckBox).Left,
                           (Frm_Pro.Components[x] as TDBCheckBox).Top,
                           (Frm_Pro.Components[x] as TDBCheckBox).Width,
                           (Frm_Pro.Components[x] as TDBCheckBox).Height );
            end;
       Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as TDbCheckBox).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Pro.Components[x] as TDbCheckBox).TabOrder);
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;
{
       case (Frm_Pro.Components[x] as TDBCheckBox).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;
 }

         case (Frm_Pro.Components[x] as TDBCheckBox).Alignment of
            taLeftJustify : mAlignment:=0;
            taRightJustify: mAlignment:=1;
            end;


         fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as TDBCheckbox).Width, // tamanho
                (Frm_Pro.Components[x] as TDBCheckbox).Height, // tamanho
                (Frm_Pro.Components[x] as TDBCheckbox).Top, //  top
                (Frm_Pro.Components[x] as TDBCheckbox).Left, // left
                (Frm_Pro.Components[x] as TDBCheckbox).TabOrder, // order
                0, // index
                (Frm_Pro.Components[x] as TDBCheckbox).Font.Color, // font_color
                (Frm_Pro.Components[x] as TDBCheckbox).Font.Height, // font_heigth
                (Frm_Pro.Components[x] as TDBCheckbox).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Pro.Components[x] as TDBCheckbox).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Pro.Components[x] as TDBCheckbox).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Pro.Components[x] as TDBCheckbox).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Pro.Components[x] as TDBCheckbox).Enabled, // enabled
                (Frm_Pro.Components[x] as TDBCheckbox).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Pro.Components[x] as TDBCheckbox).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Pro.Components[x] as TDBCheckbox).Font.Name,
                (Frm_Pro.Components[x] as TDBCheckbox).Hint);
      end
   else if LowerCase(Frm_Pro.Components[x].ClassName)='tmemo' then
      begin
      with Frm_ConfForm do
         begin
         mMemo        := TMemo.Create(Frm_ConfForm);
         mMemo.Font   := (Frm_Pro.Components[x] as TMemo).Font;
         mMemo.Color  := (Frm_Pro.Components[x] as TMemo).Color;
         mMemo.OnClick:=Frm_ConfForm.GeralClick;
         mMemo.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mMemo.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mMemo.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Pro.Components[x] as TMemo).Parent.Name)='frm_pro' then
            mMemo.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TMemo).Parent.Name then
                  mMemo.Parent:=mWinControl[mcla];
               end;
         mMemo.Name     :=Frm_Pro.Components[x].Name;
         mMemo.Text    :=(Frm_Pro.Components[x] as TMemo).Text;
         mMemo.SetBounds( (Frm_Pro.Components[x] as TMemo).Left,
                           (Frm_Pro.Components[x] as TMemo).Top,
                           (Frm_Pro.Components[x] as TMemo).Width,
                           (Frm_Pro.Components[x] as TMemo).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as TMemo).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Pro.Components[x] as TMemo).TabOrder);
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;
{
       case (Frm_Pro.Components[x] as TMemo).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;
 }

         case (Frm_Pro.Components[x] as TMemo).Alignment of
            taLeftJustify : mAlignment:=0;
            taRightJustify: mAlignment:=1;
            end;


         fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as TMemo).Width, // tamanho
                (Frm_Pro.Components[x] as TMemo).Height, // tamanho
                (Frm_Pro.Components[x] as TMemo).Top, //  top
                (Frm_Pro.Components[x] as TMemo).Left, // left
                (Frm_Pro.Components[x] as TMemo).TabOrder, // order
                0, // index
                (Frm_Pro.Components[x] as TMemo).Font.Color, // font_color
                (Frm_Pro.Components[x] as TMemo).Font.Height, // font_heigth
                (Frm_Pro.Components[x] as TMemo).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Pro.Components[x] as TMemo).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Pro.Components[x] as TMemo).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Pro.Components[x] as TMemo).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Pro.Components[x] as TMemo).Enabled, // enabled
                (Frm_Pro.Components[x] as TMemo).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Pro.Components[x] as TMemo).Text, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Pro.Components[x] as TMemo).Font.Name,
                (Frm_Pro.Components[x] as TMemo).Hint);

         end
   else if LowerCase(Frm_Pro.Components[x].ClassName)='tdbmemo' then
      begin
      with Frm_ConfForm do
         begin
         mDBMemo        := TDBMemo.Create(Frm_ConfForm);
         mDBMemo.Font   := (Frm_Pro.Components[x] as TDBMemo).Font;
         mDBMemo.Color  := (Frm_Pro.Components[x] as TDBMemo).Color;
         mDBMemo.OnClick:=Frm_ConfForm.GeralClick;
         mDBMemo.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mDBMemo.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mDBMemo.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Pro.Components[x] as TDBMemo).Parent.Name)='frm_pro' then
            mDBMemo.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TDBMemo).Parent.Name then
                  mDBMemo.Parent:=mWinControl[mcla];
               end;
         mDBMemo.Name     :=Frm_Pro.Components[x].Name;
         mDBMemo.Text    :=(Frm_Pro.Components[x] as TDBMemo).Text;
         mDBMemo.SetBounds( (Frm_Pro.Components[x] as TDBMemo).Left,
                           (Frm_Pro.Components[x] as TDBMemo).Top,
                           (Frm_Pro.Components[x] as TDBMemo).Width,
                           (Frm_Pro.Components[x] as TDBMemo).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as TDBMemo).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Pro.Components[x] as TDBMemo).TabOrder);
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;
{
       case (Frm_Pro.Components[x] as TDBMemo).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;
 }

         case (Frm_Pro.Components[x] as TDBMemo).Alignment of
            taLeftJustify : mAlignment:=0;
            taRightJustify: mAlignment:=1;
            end;


         fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as TDBMemo).Width, // tamanho
                (Frm_Pro.Components[x] as TDBMemo).Height, // tamanho
                (Frm_Pro.Components[x] as TDBMemo).Top, //  top
                (Frm_Pro.Components[x] as TDBMemo).Left, // left
                (Frm_Pro.Components[x] as TDBMemo).TabOrder, // order
                0, // index
                (Frm_Pro.Components[x] as TDBMemo).Font.Color, // font_color
                (Frm_Pro.Components[x] as TDBMemo).Font.Height, // font_heigth
                (Frm_Pro.Components[x] as TDBMemo).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Pro.Components[x] as TDBMemo).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Pro.Components[x] as TDBMemo).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Pro.Components[x] as TDBMemo).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Pro.Components[x] as TDBMemo).Enabled, // enabled
                (Frm_Pro.Components[x] as TDBMemo).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Pro.Components[x] as TDBMemo).Text, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Pro.Components[x] as TDBMemo).Font.Name,
                (Frm_Pro.Components[x] as TDBMemo).Hint);

         end
   else if LowerCase(Frm_Pro.Components[x].ClassName)='tstringgrid' then
      begin
      with Frm_ConfForm do
         begin
         mStringGrid        := TStringGrid.Create(Frm_ConfForm);
         mStringGrid.Font   := (Frm_Pro.Components[x] as TStringGrid).Font;
         mStringGrid.Color  := (Frm_Pro.Components[x] as TStringGrid).Color;
         mStringGrid.OnClick:=Frm_ConfForm.GeralClick;
         mStringGrid.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mStringGrid.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mStringGrid.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Pro.Components[x] as TStringGrid).Parent.Name)='frm_pro' then
            mStringGrid.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as TStringGrid).Parent.Name then
                  mStringGrid.Parent:=mWinControl[mcla];
               end;
         mStringGrid.Name     :=Frm_Pro.Components[x].Name;
         mStringGrid.SetBounds( (Frm_Pro.Components[x] as TStringGrid).Left,
                           (Frm_Pro.Components[x] as TStringGrid).Top,
                           (Frm_Pro.Components[x] as TStringGrid).Width,
                           (Frm_Pro.Components[x] as TStringGrid).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as TStringGrid).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Pro.Components[x] as TStringGrid).TabOrder);
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;
{
       case (Frm_Pro.Components[x] as TStringGrid).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;

 }


         fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as TStringGrid).Width, // tamanho
                (Frm_Pro.Components[x] as TStringGrid).Height, // tamanho
                (Frm_Pro.Components[x] as TStringGrid).Top, //  top
                (Frm_Pro.Components[x] as TStringGrid).Left, // left
                (Frm_Pro.Components[x] as TStringGrid).TabOrder, // order
                0, // index
                (Frm_Pro.Components[x] as TStringGrid).Font.Color, // font_color
                (Frm_Pro.Components[x] as TStringGrid).Font.Height, // font_heigth
                (Frm_Pro.Components[x] as TStringGrid).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Pro.Components[x] as TStringGrid).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Pro.Components[x] as TStringGrid).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Pro.Components[x] as TStringGrid).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Pro.Components[x] as TStringGrid).Enabled, // enabled
                (Frm_Pro.Components[x] as TStringGrid).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                ' ', // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Pro.Components[x] as TStringGrid).Font.Name,
                (Frm_Pro.Components[x] as TStringGrid).Hint);

         end
   else if LowerCase(Frm_Pro.Components[x].ClassName)='tcheckbox' then
      begin
      with Frm_ConfForm do
         begin
         mcheckbox        := Tcheckbox.Create(Frm_ConfForm);
         mcheckbox.Font   := (Frm_Pro.Components[x] as Tcheckbox).Font;
         mcheckbox.Color  := (Frm_Pro.Components[x] as Tcheckbox).Color;
         mcheckbox.OnClick:=Frm_ConfForm.GeralClick;
         mcheckbox.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mcheckbox.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mcheckbox.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;
         if lowercase( (Frm_Pro.Components[x] as Tcheckbox).Parent.Name)='frm_pro' then
            mcheckbox.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Pro.Components[x] as Tcheckbox).Parent.Name then
                  mcheckbox.Parent:=mWinControl[mcla];
               end;
            mcheckbox.Name     :=Frm_Pro.Components[x].Name;
            mcheckbox.Caption  :=(Frm_Pro.Components[x] as Tcheckbox).Caption;
            mcheckbox.SetBounds( (Frm_Pro.Components[x] as Tcheckbox).Left,
                           (Frm_Pro.Components[x] as Tcheckbox).Top,
                           (Frm_Pro.Components[x] as Tcheckbox).Width,
                           (Frm_Pro.Components[x] as Tcheckbox).Height );
            end;
       Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Pro.Components[x] as Tcheckbox).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Pro.Components[x] as Tcheckbox).TabOrder);
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;
{
       case (Frm_Pro.Components[x] as Tcheckbox).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;
}

         case (Frm_Pro.Components[x] as Tcheckbox).Alignment of
            taLeftJustify : mAlignment:=0;
            taRightJustify: mAlignment:=1;
            end;


         fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Pro.Components[x] as Tcheckbox).Width, // tamanho
                (Frm_Pro.Components[x] as Tcheckbox).Height, // tamanho
                (Frm_Pro.Components[x] as Tcheckbox).Top, //  top
                (Frm_Pro.Components[x] as Tcheckbox).Left, // left
                (Frm_Pro.Components[x] as Tcheckbox).TabOrder, // order
                0, // index
                (Frm_Pro.Components[x] as Tcheckbox).Font.Color, // font_color
                (Frm_Pro.Components[x] as Tcheckbox).Font.Height, // font_heigth
                (Frm_Pro.Components[x] as Tcheckbox).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Pro.Components[x] as Tcheckbox).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Pro.Components[x] as Tcheckbox).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Pro.Components[x] as Tcheckbox).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Pro.Components[x] as Tcheckbox).Enabled, // enabled
                (Frm_Pro.Components[x] as Tcheckbox).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Pro.Components[x] as Tcheckbox).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Pro.Components[x] as Tcheckbox).Font.Name,
                (Frm_Pro.Components[x] as Tcheckbox).Hint);
      end;
      end;
// verifiando somente o parent name
   end
// INICIO ITEM 01
else if ptipo=1 then // Formulario de Clientes
   begin
   Application.CreateForm(TFrm_Cli,Frm_Cli);
// attribuir no stg1
   Frm_ConfForm.Width     :=Frm_Cli.Width;
   Frm_ConfForm.Height    :=Frm_Cli.Height;
   Frm_ConfForm.Top       :=Frm_Cli.Top;
   Frm_ConfForm.Left      :=Frm_Cli.Left;
   Frm_ConfForm.Color     :=Frm_Cli.Color;
   Frm_ConfForm.Position  :=Frm_Cli.Position;
   Frm_ConfForm.Font.Color:=Frm_Cli.Font.Color;
   Frm_ConfForm.Font.Size :=Frm_Cli.Font.Size;
   Frm_ConfForm.Caption   :=Frm_Cli.Caption;

   Frm_perForm.STG1.RowCount:=2;
   Frm_perForm.STG1.Cells[00,00]:='Nome';
   Frm_perForm.STG1.Cells[01,00]:='Classe Nome';
   Frm_perForm.STG1.Cells[02,00]:='Parent';
   mBorderStyle:=-1;
   case Frm_ConfForm.BorderStyle of
        bsDialog     : mBorderStyle:=0;
        bsNone       : mBorderStyle:=1;
        bsSingle     : mBorderStyle:=2;
        bsSizeable   : mBorderStyle:=3;
        bsSizeToolWin: mBorderStyle:=4;
        bsToolWindow : mBorderStyle:=5;
        end;
   mAlign:=-1;
{
   case Frm_ConfForm.Align of
        alBottom     : mAlign:=0;
        alClient     : mAlign:=1;
        alCustom     : mAlign:=2;
        alLeft       : mAlign:=3;
        alNone       : mAlign:=4;
        alRight      : mAlign:=5;
        alTop        : mAlign:=6;
        end;
}
   fPerformCriaTmp(0, // ptipo
                0, // sequencia
                Frm_ConfForm.Width, // tamanho
                Frm_ConfForm.Height, // tamanho
                Frm_ConfForm.Top, //  top
                Frm_ConfForm.Left, // left
                0, // order
                0, // index
                Frm_ConfForm.Font.Color, // font_color
                Frm_ConfForm.Font.Height, // font_heigth
                Frm_ConfForm.Font.Size, // font_heigth
                -1, // bevel inner
                -1, // bevel kind
                -1, // bevel outer
                -1, // bevel width
                mBorderStyle, // border style
                -1, // charcase
                Frm_ConfForm.Color, // color
                malign, // palign
                -1, // palignment
                Frm_ConfForm.Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                Frm_ConfForm.Ctl3D, // ctr3d
                false, // fontstrikeout
                Frm_ConfForm.Enabled, // enabled
                Frm_ConfForm.ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                UpperCase(Frm_ConfForm.Name), // nome do componente
                'form', //classe do componente
                Frm_ConfForm.Caption, // caption
                '', // parent_nome
                Frm_ConfForm.Font.Name,
                Frm_ConfForm.Hint);


   for x:=0 to Frm_Cli.ComponentCount-1 do
      begin
      Frm_perForm.stg1.RowCount:=Frm_perForm.stg1.RowCount+1;
      mlin:=Frm_perForm.STG1.RowCount-2;
      Frm_PerForm.STG1.Cells[00,mlin]:=Frm_Cli.Components[x].Name;
      Frm_PerForm.STG1.Cells[01,mlin]:=Frm_Cli.Components[x].ClassName;
      if LowerCase(Frm_Cli.Components[x].ClassName)='tlabel' then
         begin
         mLabel       := TLabel.Create(Frm_ConfForm);
         mlabel.Font  := (Frm_Cli.Components[x] as TLabel).Font;
         mlabel.Color := (Frm_Cli.Components[x] as TLabel).Color;
         mlabel.OnDblClick:=Frm_ConfForm.GeralClick;
         mlabel.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mlabel.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mlabel.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;
         if lowercase( (Frm_Cli.Components[x] as TLabel).Parent.Name)='frm_cli' then
            mLabel.Parent:=Frm_ConfForm
         else
            begin
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TLabel).Parent.Name then
                  mLabel.Parent:=mWinControl[mcla];
               end;
            end;
         with Frm_ConfForm do
            begin
            mLabel.Name     :=Frm_Cli.Components[x].Name;
            mLabel.Caption  :=(Frm_Cli.Components[x] as TLabel).Caption;
            mLabel.SetBounds( (Frm_Cli.Components[x] as TLabel).Left,
                              (Frm_Cli.Components[x] as TLabel).Top,
                              (Frm_Cli.Components[x] as TLabel).Width,
                              (Frm_Cli.Components[x] as TLabel).Height );
            mLabel.Font   :=(Frm_Cli.Components[x] as TLabel).Font;
            end;
       Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as TLabel).Parent.Name;
       mAlign:=-1;
       case (Frm_Cli.Components[x] as TLabel).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;

       mAlignment:=-1;
       case (Frm_Cli.Components[x] as TLabel).Alignment of
          taCenter      : mAlignment:=0;
          taLeftJustify : mAlignment:=1;
          taRightJustify: mAlignment:=2;
          end;



       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as TLabel).Width, // tamanho
                (Frm_Cli.Components[x] as TLabel).Height, // tamanho
                (Frm_Cli.Components[x] as TLabel).Top, //  top
                (Frm_Cli.Components[x] as TLabel).Left, // left
                0, // order
                0, // index
                (Frm_Cli.Components[x] as TLabel).Font.Color, // font_color
                (Frm_Cli.Components[x] as TLabel).Font.Height, // font_heigth
                (Frm_Cli.Components[x] as TLabel).Font.Size, // font_heigth
                -1, // bevel inner
                -1, // bevel kind
                -1, // bevel outer
                -1, // bevel width
                -1, // border style
                -1, // charcase
                (Frm_Cli.Components[x] as TLabel).Color, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Cli.Components[x] as TLabel).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                false, // ctr3d
                false, // fontstrikeout
                (Frm_Cli.Components[x] as TLabel).Enabled, // enabled
                (Frm_Cli.Components[x] as TLabel).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Cli.Components[x] as TLabel).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Cli.Components[x] as TLabel).Font.Name,
                (Frm_Cli.Components[x] as TLabel).Hint);

      end
   else if LowerCase(Frm_Cli.Components[x].ClassName)='tedit' then
      begin
      with Frm_ConfForm do
         begin
          mEdit       := TEdit.Create(Frm_ConfForm);
          mEdit.Font  := (Frm_Cli.Components[x] as TEdit).Font;
          mEdit.Color := (Frm_Cli.Components[x] as TEdit).Color;
          mEdit.OnDblClick:=Frm_ConfForm.GeralClick;
          mEdit.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
          mEdit.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
          mEdit.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;

         if lowercase( (Frm_Cli.Components[x] as TEdit).Parent.Name)='frm_cli' then
            mEdit.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TEdit).Parent.Name then
                  mEdit.Parent:=mWinControl[mcla];
               end;

         mEdit.Name     :=Frm_Cli.Components[x].Name;
         mEdit.Text     :=(Frm_Cli.Components[x] as tEdit).Text;
         mEdit.SetBounds( (Frm_Cli.Components[x] as tEdit).Left,
                           (Frm_Cli.Components[x] as tEdit).Top,
                           (Frm_Cli.Components[x] as tEdit).Width,
                           (Frm_Cli.Components[x] as tEdit).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as TEdit).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Cli.Components[x] as TEdit).TabOrder);
      mCharCase:=-1;
      case (Frm_Cli.Components[x] as TEdit).CharCase of
         ecLowerCase : mCharCase:=0;
         ecNormal    : mCharCase:=1;
         ecUpperCase : mCharCase:=2;
         end;
      mBevelInner :=-1;
      mBevelKind  :=-1;
      mBevelOuter :=-1;
      mBevelWidth :=-1;
      mBorderStyle:=-1;
      case (Frm_Cli.Components[x] as TEdit).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;

      case (Frm_Cli.Components[x] as TEdit).BevelKind of
         bkFlat    : mBevelKind:=0;
         bkNone    : mBevelKind:=1;
         bkSoft    : mBevelKind:=2;
         bkTile    : mBevelKind:=3;
         end;

      case (Frm_Cli.Components[x] as TEdit).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;

      case (Frm_Cli.Components[x] as TEdit).BorderStyle of
         bsNone    : mBorderStyle:=0;
         bsSingle  : mBorderStyle:=1;
         end;



      fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as TEdit).Width, // tamanho
                (Frm_Cli.Components[x] as TEdit).Height, // tamanho
                (Frm_Cli.Components[x] as TEdit).Top, //  top
                (Frm_Cli.Components[x] as TEdit).Left, // left
                (Frm_Cli.Components[x] as TEdit).TabOrder, // order
                0, // index
                (Frm_Cli.Components[x] as TEdit).Font.Color, // font_color
                (Frm_Cli.Components[x] as TEdit).Font.Height, // font_heigth
                (Frm_Cli.Components[x] as TEdit).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                -mCharCase, // charcase
                (Frm_Cli.Components[x] as TEdit).Color, // color
                -1, // palign
                -1, // palignment
                (Frm_Cli.Components[x] as TEdit).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Cli.Components[x] as TEdit).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Cli.Components[x] as TEdit).Enabled, // enabled
                (Frm_Cli.Components[x] as TEdit).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Cli.Components[x] as TEdit).Text, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Cli.Components[x] as TEdit).Font.Name,
                (Frm_Cli.Components[x] as TEdit).Hint);


      end
   else if LowerCase(Frm_Cli.Components[x].ClassName)='tbitbtn' then
      begin
      with Frm_ConfForm do
         begin
         mBitBtn       := TBitBtn.Create(Frm_ConfForm);

         mBitBtn.Font   := (Frm_Cli.Components[x] as TBitBtn).Font;
         mBitBtn.Glyph  := (Frm_Cli.Components[x] as TBitBtn).Glyph;
         mBitBtn.Kind   := (Frm_Cli.Components[x] as TBitBtn).Kind;
         mBitBtn.Caption:= (Frm_Cli.Components[x] as TBitBtn).Caption;
         mBitBtn.OnClick:= Frm_ConfForm.GeralClick;
         mBitBtn.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mBitBtn.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mBitBtn.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Cli.Components[x] as TBitBtn).Parent.Name)='frm_cli' then
            mBitBtn.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TBitBtn).Parent.Name then
                 mBitBtn.Parent:=mWinControl[mcla];
               end;
         mBitBtn.Name     :=Frm_Cli.Components[x].Name;
         mBitBtn.Caption  :=(Frm_Cli.Components[x] as tBitBtn).Caption;
         mBitBtn.SetBounds( (Frm_Cli.Components[x] as TBitBtn).Left,
                           (Frm_Cli.Components[x] as TBitBtn).Top,
                           (Frm_Cli.Components[x] as TBitBtn).Width,
                           (Frm_Cli.Components[x] as TBitBtn).Height );

         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as TBitBtn).Parent.Name;
      Frm_PerForm.STG1.Cells[03,mlin]:= IntToStr( (Frm_Cli.Components[x] as TBitBtn).TabOrder);


      mCharCase   :=-1;
      mBevelInner :=-1;
      mBevelKind  :=-1;
      mBevelOuter :=-1;
      mBevelWidth :=-1;
      mBorderStyle:=-1;
      mAlign      :=-1;
      mAlignment  :=-1;


       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as TBitbtn).Width, // tamanho
                (Frm_Cli.Components[x] as TBitbtn).Height, // tamanho
                (Frm_Cli.Components[x] as TBitbtn).Top, //  top
                (Frm_Cli.Components[x] as TBitbtn).Left, // left
                (Frm_Cli.Components[x] as TBitbtn).TabOrder, // order
                0, // index
                (Frm_Cli.Components[x] as TBitbtn).Font.Color, // font_color
                (Frm_Cli.Components[x] as TBitbtn).Font.Height, // font_heigth
                (Frm_Cli.Components[x] as TBitbtn).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                -1, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Cli.Components[x] as TBitbtn).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                true, // enabled
                false, // fontstrikeout
                (Frm_Cli.Components[x] as TBitbtn).Enabled, // enabled
                (Frm_Cli.Components[x] as TBitbtn).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Cli.Components[x] as TBitbtn).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Cli.Components[x] as TBitbtn).Font.Name,
                (Frm_Cli.Components[x] as TBitbtn).Hint);

      end
   else if LowerCase(Frm_Cli.Components[x].ClassName)='tpage' then
      begin
      with Frm_ConfForm do
         begin
         mPage       := TPage.Create(Frm_ConfForm);
         if lowercase( (Frm_Cli.Components[x] as TPage).Parent.Name)='frm_cli' then
            mPage.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TPage).Parent.Name then
                  mPage.Parent:=mWinControl[mcla];
               end;
         mPage.Name     :=Frm_Cli.Components[x].Name;
         mPage.Caption  :=(Frm_Cli.Components[x] as tPage).Caption;
         mPage.SetBounds( (Frm_Cli.Components[x] as TPage).Left,
                           (Frm_Cli.Components[x] as TPage).Top,
                           (Frm_Cli.Components[x] as TPage).Width,
                           (Frm_Cli.Components[x] as TPage).Height );

         mAchou:=false;
         for mcla:=0 to high(mWinControl) do
            begin
            if mWinControl[mcla].Name=Frm_Cli.Components[x].Name then
               begin
               mAchou:=true;
               break;
               end;
            end;
         if not mAchou  then
            begin
            mcla:=high(mWinControl);
            mcla:=mcla+2;
            SetLength(mWinControl,mcla);
            mWincontrol[mcla-1]:=mPage;
            end;
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as Tpage).Parent.Name;

      mCharCase   :=-1;
      mBevelInner :=-1;
      mBevelKind  :=-1;
      mBevelOuter :=-1;
      mBevelWidth :=-1;
      mBorderStyle:=-1;
      mAlign      :=-1;
      mAlignment  :=-1;
      mAlign:=-1;
{LINDOMARDC
       case (Frm_Cli.Components[x] as TPage).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;

}
       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as TPage).Width, // tamanho
                (Frm_Cli.Components[x] as TPage).Height, // tamanho
                (Frm_Cli.Components[x] as TPage).Top, //  top
                (Frm_Cli.Components[x] as TPage).Left, // left
                (Frm_Cli.Components[x] as TPage).TabOrder, // order
                0, // index
                -1, // font_color
                -1, // font_heigth
                -1, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                -1, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Cli.Components[x] as TPage).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                true, // enabled
                false, // fontstrikeout
                (Frm_Cli.Components[x] as TPage).Enabled, // enabled
                (Frm_Cli.Components[x] as TPage).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Cli.Components[x] as TPage).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                '',
                (Frm_Cli.Components[x] as TPage).Hint);


      end
   else if LowerCase(Frm_Cli.Components[x].ClassName)='tpanel' then
      begin
      with Frm_ConfForm do
         begin
         mPanel           := TPanel.Create(Frm_ConfForm);
         mPanel.Font      := (Frm_Cli.Components[x] as TPanel).Font;
         mPanel.Color     := (Frm_Cli.Components[x] as TPanel).Color;
         mPanel.OnDblClick:=Frm_ConfForm.GeralClick;
         mPanel.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mPanel.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mPanel.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;

         if lowercase( (Frm_Cli.Components[x] as TPanel).Parent.Name)='frm_cli' then
            mPanel.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TPanel).Parent.Name then
                  mPanel.Parent:=mWinControl[mcla];
               end;
         mPanel.Name   :=Frm_Cli.Components[x].Name;
         mPanel.Caption:=(Frm_Cli.Components[x] as TPanel).Caption;
         mPanel.SetBounds( (Frm_Cli.Components[x] as TPanel).Left,
                          (Frm_Cli.Components[x] as TPanel).Top,
                          (Frm_Cli.Components[x] as TPanel).Width,
                          (Frm_Cli.Components[x] as TPanel).Height);
         mAchou:=false;
         for mcla:=0 to high(mWinControl) do
            begin
            if mWinControl[mcla].Name=Frm_Cli.Components[x].Name then
               begin
               mAchou:=true;
               break;
               end;
            end;
         if not mAchou  then
            begin
            mcla:=high(mWinControl);
            mcla:=mcla+2;
            SetLength(mWinControl,mcla);
            mWincontrol[mcla-1]:=mPanel;
            end;

         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as TPanel).Parent.Name;

       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

      case (Frm_Cli.Components[x] as TPanel).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;




      case (Frm_Cli.Components[x] as TPanel).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;

      case (Frm_Cli.Components[x] as TPanel).BorderStyle of
         bsNone    : mBorderStyle:=0;
         bsSingle  : mBorderStyle:=1;
         end;


       mAlignment:=-1;
       case (Frm_Cli.Components[x] as TPanel).Alignment of
          taCenter      : mAlignment:=0;
          taLeftJustify : mAlignment:=1;
          taRightJustify: mAlignment:=2;
          end;



       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as TPanel).Width, // tamanho
                (Frm_Cli.Components[x] as TPanel).Height, // tamanho
                (Frm_Cli.Components[x] as TPanel).Top, //  top
                (Frm_Cli.Components[x] as TPanel).Left, // left
                (Frm_Cli.Components[x] as TPanel).TabOrder, // order
                0, // index
                (Frm_Cli.Components[x] as TPanel).Font.Color, // font_color
                (Frm_Cli.Components[x] as TPanel).Font.Height, // font_heigth
                (Frm_Cli.Components[x] as TPanel).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Cli.Components[x] as TPanel).Color, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Cli.Components[x] as TPanel).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Cli.Components[x] as TPanel).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Cli.Components[x] as TPanel).Enabled, // enabled
                (Frm_Cli.Components[x] as TPanel).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Cli.Components[x] as TPanel).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Cli.Components[x] as TPanel).Font.Name,
                (Frm_Cli.Components[x] as TPanel).Hint);

      end
   else if LowerCase(Frm_Cli.Components[x].ClassName)='tcombobox' then
      begin
      with Frm_ConfForm do
         begin
         mComboBox           := TComboBox.Create(Frm_ConfForm);
         mComboBox.Font      := (Frm_Cli.Components[x] as TComboBox).Font;
         mComboBox.Color     := (Frm_Cli.Components[x] as TComboBox).Color;
         mComboBox.OnDblClick:=Frm_ConfForm.GeralClick;
         if lowercase( (Frm_Cli.Components[x] as TComboBox).Parent.Name)='frm_cli' then
            mComboBox.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TComboBox).Parent.Name then
                  mComboBox.Parent:=mWinControl[mcla];
               end;
         mComboBox.Name     :=Frm_Cli.Components[x].Name;
         mComboBox.Text     :=(Frm_Cli.Components[x] as tComboBox).Text;
         mComboBox.SetBounds( (Frm_Cli.Components[x] as TComboBox).Left,
                           (Frm_Cli.Components[x] as TComboBox).Top,
                           (Frm_Cli.Components[x] as TComboBox).Width,
                           (Frm_Cli.Components[x] as TComboBox).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as Tcombobox).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;



      case (Frm_Cli.Components[x] as TComboBox).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;

      case (Frm_Cli.Components[x] as TComboBox).BevelKind of
         bkFlat    : mBevelKind:=0;
         bkNone    : mBevelKind:=1;
         bkSoft    : mBevelKind:=2;
         bkTile    : mBevelKind:=3;
         end;

      case (Frm_Cli.Components[x] as TComboBox).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;
       case (Frm_Cli.Components[x] as TComboBox).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;



       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as TCombobox).Width, // tamanho
                (Frm_Cli.Components[x] as TCombobox).Height, // tamanho
                (Frm_Cli.Components[x] as TCombobox).Top, //  top
                (Frm_Cli.Components[x] as TCombobox).Left, // left
                (Frm_Cli.Components[x] as TCombobox).TabOrder, // order
                0, // index
                (Frm_Cli.Components[x] as TCombobox).Font.Color, // font_color
                (Frm_Cli.Components[x] as TCombobox).Font.Height, // font_heigth
                (Frm_Cli.Components[x] as TCombobox).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Cli.Components[x] as TCombobox).Color, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Cli.Components[x] as TCombobox).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Cli.Components[x] as TCombobox).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Cli.Components[x] as TCombobox).Enabled, // enabled
                (Frm_Cli.Components[x] as TCombobox).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Cli.Components[x] as TCombobox).Text, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Cli.Components[x] as TCombobox).Font.Name,
                (Frm_Cli.Components[x] as TCombobox).Hint);

      end
   else if LowerCase(Frm_Cli.Components[x].ClassName)='tmaskedit' then
      begin
      with Frm_ConfForm do
         begin
         mMaskEdit           := TMaskEdit.Create(Frm_ConfForm);
         mMaskEdit.Font      := (Frm_Cli.Components[x] as TMaskEdit).Font;
         mMaskEdit.Color     := (Frm_Cli.Components[x] as TMaskEdit).Color;
         mMaskEdit.OnDblClick:=Frm_ConfForm.GeralClick;
         mMaskEdit.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mMaskEdit.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mMaskEdit.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Cli.Components[x] as TMaskEdit).Parent.Name)='frm_cli' then
            mMaskEdit.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TMaskEdit).Parent.Name then
                  mMaskEdit.Parent:=mWinControl[mcla];
               end;
         mMaskEdit.Name     :=Frm_Cli.Components[x].Name;
         mMaskEdit.Text     :=(Frm_Cli.Components[x] as tMaskEdit).Text;
         mMaskEdit.SetBounds( (Frm_Cli.Components[x] as TMaskEdit).Left,
                           (Frm_Cli.Components[x] as TMaskEdit).Top,
                           (Frm_Cli.Components[x] as TMaskEdit).Width,
                           (Frm_Cli.Components[x] as TMaskEdit).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as TMaskEdit).Parent.Name;


       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;



      case (Frm_Cli.Components[x] as TMaskEdit).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;

      case (Frm_Cli.Components[x] as TMaskEdit).BevelKind of
         bkFlat    : mBevelKind:=0;
         bkNone    : mBevelKind:=1;
         bkSoft    : mBevelKind:=2;
         bkTile    : mBevelKind:=3;
         end;

      case (Frm_Cli.Components[x] as TMaskEdit).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;

      case (Frm_Cli.Components[x] as TMaskEdit).BorderStyle of
         bsNone    : mBorderStyle:=0;
         bsSingle  : mBorderStyle:=1;
         end;
       case (Frm_Cli.Components[x] as TMaskEdit).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;



       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as TMaskedit).Width, // tamanho
                (Frm_Cli.Components[x] as TMaskedit).Height, // tamanho
                (Frm_Cli.Components[x] as TMaskedit).Top, //  top
                (Frm_Cli.Components[x] as TMaskedit).Left, // left
                (Frm_Cli.Components[x] as TMaskedit).TabOrder, // order
                0, // index
                (Frm_Cli.Components[x] as TMaskedit).Font.Color, // font_color
                (Frm_Cli.Components[x] as TMaskedit).Font.Height, // font_heigth
                (Frm_Cli.Components[x] as TMaskedit).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Cli.Components[x] as TMaskedit).Color, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Cli.Components[x] as TMaskedit).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Cli.Components[x] as TMaskedit).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Cli.Components[x] as TMaskedit).Enabled, // enabled
                (Frm_Cli.Components[x] as TMaskedit).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Cli.Components[x] as TMaskedit).Text, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Cli.Components[x] as TMaskedit).Font.Name,
                (Frm_Cli.Components[x] as TMaskedit).Hint);

      end
   else if LowerCase(Frm_Cli.Components[x].ClassName)='ttabsheet' then
      begin
      with Frm_ConfForm do
         begin
         if lowercase( (Frm_Cli.Components[x] as TTabSheet).Parent.Name)='frm_cli' then
            mTabSheet       := TTabSheet.Create(Frm_ConfForm)
         else
            begin
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TTabSheet).Parent.Name then
                  begin
{                 ShowMessage('Formulario: '+mWinControl[mcla].Name
                            +#13+' componente: '+(Frm_Cli.Components[x] as TTabSheet).Parent.Name
                            +#13+' PageControl: '+mPageControl.Name
                            +#13+' Parent: '+mPageControl.Parent.Name);
}
                    mTabSheet       := TTabSheet.Create(Frm_ConfForm);

                    break;
                    end;
                end;

             end;

           mTabSheet.Font  := (Frm_Cli.Components[x] as TTabSheet).Font;

          if lowercase( (Frm_Cli.Components[x] as TTabSheet).Parent.Name)='frm_cli' then
             mTabSheet.Parent:=Frm_ConfForm
          else
             for mcla:=0 to high(mWinControl) do
                begin
                if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TTabSheet).Parent.Name then
                   mTabSheet.Parent:=mWinControl[mcla];
                end;
          mTabSheet.Name     :=Frm_Cli.Components[x].Name;
          mTabSheet.Caption  :=(Frm_Cli.Components[x] as tTabSheet).Caption;
          mAchou:=false;

         for mcla:=0 to high(mWinControl) do
            begin
            if mWinControl[mcla].Name=Frm_Cli.Components[x].Name then
               begin
               mAchou:=true;
               break;
               end;
            end;
         if not mAchou  then
            begin
            mcla:=high(mWinControl);
            mcla:=mcla+2;
            SetLength(mWinControl,mcla);
            mWincontrol[mcla-1]:=mTabSheet;
            end;
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as Ttabsheet).Parent.Name;
      mTabSheet.PageControl:=mPageControl;

       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

       case (Frm_Cli.Components[x] as TTabSheet).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;



       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as TTabsheet).Width, // tamanho
                (Frm_Cli.Components[x] as TTabsheet).Height, // tamanho
                (Frm_Cli.Components[x] as TTabsheet).Top, //  top
                (Frm_Cli.Components[x] as TTabsheet).Left, // left
                (Frm_Cli.Components[x] as TTabsheet).TabOrder, // order
                0, // index
                (Frm_Cli.Components[x] as TTabsheet).Font.Color, // font_color
                (Frm_Cli.Components[x] as TTabsheet).Font.Height, // font_heigth
                (Frm_Cli.Components[x] as TTabsheet).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelOuter, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                -1, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Cli.Components[x] as TTabsheet).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                true, // enabled
                false, // fontstrikeout
                (Frm_Cli.Components[x] as TTabsheet).Enabled, // enabled
                (Frm_Cli.Components[x] as TTabsheet).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Cli.Components[x] as TTabsheet).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Cli.Components[x] as TTabsheet).Font.Name,
                (Frm_Cli.Components[x] as TTabsheet).Hint);


      end
   else if LowerCase(Frm_Cli.Components[x].ClassName)='tpagecontrol' then
      begin
      with Frm_ConfForm do
         begin
         mPageControl      := TPageControl.Create(Frm_ConfForm);
         if lowercase( (Frm_Cli.Components[x] as TPageControl).Parent.Name)='frm_cli' then
            mPageControl.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TPageControl).Parent.Name then
                  mPageControl.Parent:=mWinControl[mcla];
               end;
         mPageControl.Name     :=Frm_Cli.Components[x].Name;
         mPageControl.Font    := (Frm_Cli.Components[x] as TPageControl).Font;

         mPageControl.SetBounds( (Frm_Cli.Components[x] as TPageControl).Left,
                           (Frm_Cli.Components[x] as TPageControl).Top,
                           (Frm_Cli.Components[x] as TPageControl).Width,
                           (Frm_Cli.Components[x] as TPageControl).Height );
         mAchou:=false;
         for mcla:=0 to high(mWinControl) do
            begin
            if mWinControl[mcla].Name=Frm_Cli.Components[x].Name then
               begin
               mAchou:=true;
               break;
               end;
            end;
         if not mAchou  then
            begin
            mcla:=high(mWinControl);
            mcla:=mcla+2;
            SetLength(mWinControl,mcla);
            mWincontrol[mcla-1]:=mPageControl;
            end;
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as TPageControl).Parent.Name;

       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

{LINDOMARDC
       case (Frm_Cli.Components[x] as TPageControl).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;
}


       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as TPageControl).Width, // tamanho
                (Frm_Cli.Components[x] as TPageControl).Height, // tamanho
                (Frm_Cli.Components[x] as TPageControl).Top, //  top
                (Frm_Cli.Components[x] as TPageControl).Left, // left
                (Frm_Cli.Components[x] as TPageControl).TabOrder, // order
                0, // index
                (Frm_Cli.Components[x] as TPageControl).Font.Color, // font_color
                (Frm_Cli.Components[x] as TPageControl).Font.Height, // font_heigth
                (Frm_Cli.Components[x] as TPageControl).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                -1, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Cli.Components[x] as TPageControl).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                true, // enabled
                false, // fontstrikeout
                (Frm_Cli.Components[x] as TPageControl).Enabled, // enabled
                (Frm_Cli.Components[x] as TPageControl).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                '', // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Cli.Components[x] as TPageControl).Font.Name,
                (Frm_Cli.Components[x] as TPageControl).Hint);


      end
   else if LowerCase(Frm_Cli.Components[x].ClassName)='tgroupbox' then
      begin
      with Frm_ConfForm do
         begin
         mGroupBox      := TGroupBox.Create(Frm_ConfForm);
         if lowercase( (Frm_Cli.Components[x] as TGroupBox).Parent.Name)='frm_cli' then
            mGroupBox.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TGroupBox).Parent.Name then
                  mGroupBox.Parent:=mWinControl[mcla];
               end;
         mGroupBox.Name     :=Frm_Cli.Components[x].Name;
         mGroupBox.Font     := (Frm_Cli.Components[x] as TGroupBox).Font;
         mGroupBox.Color := (Frm_Cli.Components[x] as TGroupBox).Color;
         mGroupBox.OnDblClick:=Frm_ConfForm.GeralClick;
         mGroupBox.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mGroupBox.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mGroupBox.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;

         mGroupBox.Caption  :=(Frm_Cli.Components[x] as tGroupBox).Caption;
         mGroupBox.SetBounds( (Frm_Cli.Components[x] as TGroupBox).Left,
                           (Frm_Cli.Components[x] as TGroupBox).Top,
                           (Frm_Cli.Components[x] as TGroupBox).Width,
                           (Frm_Cli.Components[x] as TGroupBox).Height );
         mAchou:=false;
         for mcla:=0 to high(mWinControl) do
            begin
            if mWinControl[mcla].Name=Frm_Cli.Components[x].Name then
               begin
               mAchou:=true;
               break;
               end;
            end;
         if not mAchou  then
            begin
            mcla:=high(mWinControl);
            mcla:=mcla+2;
            SetLength(mWinControl,mcla);
            mWincontrol[mcla-1]:=mGroupBox;
            end;
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as TGroupbox).Parent.Name;

       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;



       case (Frm_Cli.Components[x] as TGroupBox).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;



       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as TGroupbox).Width, // tamanho
                (Frm_Cli.Components[x] as TGroupbox).Height, // tamanho
                (Frm_Cli.Components[x] as TGroupbox).Top, //  top
                (Frm_Cli.Components[x] as TGroupbox).Left, // left
                (Frm_Cli.Components[x] as TGroupbox).TabOrder, // order
                0, // index
                (Frm_Cli.Components[x] as TGroupbox).Font.Color, // font_color
                (Frm_Cli.Components[x] as TGroupbox).Font.Height, // font_heigth
                (Frm_Cli.Components[x] as TGroupbox).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Cli.Components[x] as TGroupbox).Color, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Cli.Components[x] as TGroupbox).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Cli.Components[x] as TGroupbox).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Cli.Components[x] as TGroupbox).Enabled, // enabled
                (Frm_Cli.Components[x] as TGroupbox).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Cli.Components[x] as TGroupbox).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Cli.Components[x] as TGroupbox).Font.Name,
                (Frm_Cli.Components[x] as TGroupbox).Hint);

      end
   else if LowerCase(Frm_Cli.Components[x].ClassName)='tdbnavigator' then
      begin
      with Frm_ConfForm do
         begin
         mDbNavigator           := TDbNavigator.Create(Frm_ConfForm);
         mDbNavigator.VisibleButtons:=(Frm_Cli.Components[x] as TDBNavigator).VisibleButtons;
         mDbNavigator.OnDblClick:=Frm_ConfForm.GeralClick;
         if lowercase( (Frm_Cli.Components[x] as TDbNavigator).Parent.Name)='frm_cli' then
            mDbNavigator.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TDBNavigator).Parent.Name then
                  mDbNavigator.Parent:=mWinControl[mcla];
               end;
         mDbNavigator.Name     :=Frm_Cli.Components[x].Name;
         mDbNavigator.SetBounds( (Frm_Cli.Components[x] as TDbNavigator).Left,
                           (Frm_Cli.Components[x] as TDbNavigator).Top,
                           (Frm_Cli.Components[x] as TDbNavigator).Width,
                           (Frm_Cli.Components[x] as TDbNavigator).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as TDBNavigator).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

       case (Frm_Cli.Components[x] as TDBNavigator).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;

       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as TDBNavigator).Width, // tamanho
                (Frm_Cli.Components[x] as TDBNavigator).Height, // tamanho
                (Frm_Cli.Components[x] as TDBNavigator).Top, //  top
                (Frm_Cli.Components[x] as TDBNavigator).Left, // left
                (Frm_Cli.Components[x] as TDBNavigator).TabOrder, // order
                0, // index
                -1, // font_color
                -1, // font_heigth
                -1, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                -1, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Cli.Components[x] as TDBNavigator).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Cli.Components[x] as TDBNavigator).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Cli.Components[x] as TDBNavigator).Enabled, // enabled
                (Frm_Cli.Components[x] as TDBNavigator).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                '' , // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                '',
                (Frm_Cli.Components[x] as TDBNavigator).Hint);

      end
   else if LowerCase(Frm_Cli.Components[x].ClassName)='tbevel' then
      begin
      with Frm_ConfForm do
         begin
         mBevel      := TBevel.Create(Frm_ConfForm);
         if lowercase( (Frm_Cli.Components[x] as TBevel).Parent.Name)='frm_cli' then
            mBevel.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TBevel).Parent.Name then
                  mBevel.Parent:=mWinControl[mcla];
               end;
         mBevel.Name     :=Frm_Cli.Components[x].Name;
         mBevel.SetBounds( (Frm_Cli.Components[x] as TBevel).Left,
                           (Frm_Cli.Components[x] as TBevel).Top,
                           (Frm_Cli.Components[x] as TBevel).Width,
                           (Frm_Cli.Components[x] as TBevel).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as TBevel).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;


       case (Frm_Cli.Components[x] as TBevel).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;


       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as Tbevel).Width, // tamanho
                (Frm_Cli.Components[x] as Tbevel).Height, // tamanho
                (Frm_Cli.Components[x] as Tbevel).Top, //  top
                (Frm_Cli.Components[x] as Tbevel).Left, // left
                -1, // order
                0, // index
                -1, // font_color
                -1, // font_heigth
                -1, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                -1, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Cli.Components[x] as Tbevel).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                true, // enabled
                false, // fontstrikeout
                (Frm_Cli.Components[x] as Tbevel).Enabled, // enabled
                (Frm_Cli.Components[x] as Tbevel).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                '', // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                '',
                (Frm_Cli.Components[x] as Tbevel).Hint);


      end
   else if LowerCase(Frm_Cli.Components[x].ClassName)='tdbcombobox' then
      begin
      with Frm_ConfForm do
         begin
         mDbComboBox      := TDbComboBox.Create(Frm_ConfForm);
         mDbComboBox.Font := (Frm_Cli.Components[x] as TDBComboBox).Font;
         mDbComboBox.Color:= (Frm_Cli.Components[x] as TDBComboBox).Color;
         mDbComboBox.OnDblClick:=Frm_ConfForm.GeralClick;

         if lowercase( (Frm_Cli.Components[x] as TDbComboBox).Parent.Name)='frm_cli' then
            mDbComboBox.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TDBComboBox).Parent.Name then
                  mDbComboBox.Parent:=mWinControl[mcla];
               end;
         mDbComboBox.Name     :=Frm_Cli.Components[x].Name;
         mDbComboBox.Text     :=(Frm_Cli.Components[x] as tDbComboBox).Text;
         mDbComboBox.SetBounds( (Frm_Cli.Components[x] as TDbComboBox).Left,
                           (Frm_Cli.Components[x] as TDbComboBox).Top,
                           (Frm_Cli.Components[x] as TDbComboBox).Width,
                           (Frm_Cli.Components[x] as TDbComboBox).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as Tdbcombobox).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

      case (Frm_Cli.Components[x] as TDBComboBox).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;

      case (Frm_Cli.Components[x] as TDBComboBox).BevelKind of
         bkFlat    : mBevelKind:=0;
         bkNone    : mBevelKind:=1;
         bkSoft    : mBevelKind:=2;
         bkTile    : mBevelKind:=3;
         end;

      case (Frm_Cli.Components[x] as TDBComboBox).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;



       case (Frm_Cli.Components[x] as TDBComboBox).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;



       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as TDBCombobox).Width, // tamanho
                (Frm_Cli.Components[x] as TDBCombobox).Height, // tamanho
                (Frm_Cli.Components[x] as TDBCombobox).Top, //  top
                (Frm_Cli.Components[x] as TDBCombobox).Left, // left
                (Frm_Cli.Components[x] as TDBCombobox).TabOrder, // order
                0, // index
                (Frm_Cli.Components[x] as TDBCombobox).Font.Color, // font_color
                (Frm_Cli.Components[x] as TDBCombobox).Font.Height, // font_heigth
                (Frm_Cli.Components[x] as TDBCombobox).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Cli.Components[x] as TDBCombobox).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Cli.Components[x] as TDBCombobox).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Cli.Components[x] as TDBCombobox).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Cli.Components[x] as TDBCombobox).Enabled, // enabled
                (Frm_Cli.Components[x] as TDBCombobox).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Cli.Components[x] as TDBCombobox).Text, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Cli.Components[x] as TDBCombobox).Font.Name,
                (Frm_Cli.Components[x] as TDBCombobox).Hint);


      end
   else if LowerCase(Frm_Cli.Components[x].ClassName)='tdbradiogroup' then
      begin
      with Frm_ConfForm do
         begin
         mDBRadioGroup          := TDBRadioGroup.Create(Frm_ConfForm);
         mDBRadioGroup.Font     := (Frm_Cli.Components[x] as TDBRadioGroup).Font;
         mDBRadioGroup.Color    := (Frm_Cli.Components[x] as TDBRadioGroup).Color;
         mDBRadioGroup.OnClick  :=Frm_ConfForm.GeralClick;


         if lowercase( (Frm_Cli.Components[x] as TDBRadioGroup).Parent.Name)='frm_cli' then
            mDBRadioGroup.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TDBRadioGroup).Parent.Name then
                  mDBRadioGroup.Parent:=mWinControl[mcla];
               end;
         mDBRadioGroup.Name     :=Frm_Cli.Components[x].Name;
         mDBRadioGroup.Caption  :=(Frm_Cli.Components[x] as tDBRadioGroup).Caption;
         mDBRadioGroup.SetBounds( (Frm_Cli.Components[x] as TDBRadioGroup).Left,
                           (Frm_Cli.Components[x] as TDBRadioGroup).Top,
                           (Frm_Cli.Components[x] as TDBRadioGroup).Width,
                           (Frm_Cli.Components[x] as TDBRadioGroup).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as TDBRadioGroup).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;



       case (Frm_Cli.Components[x] as TDBRadioGroup).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;


       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as TDBradiogroup).Width, // tamanho
                (Frm_Cli.Components[x] as TDBradiogroup).Height, // tamanho
                (Frm_Cli.Components[x] as TDBradiogroup).Top, //  top
                (Frm_Cli.Components[x] as TDBradiogroup).Left, // left
                (Frm_Cli.Components[x] as TDBradiogroup).TabOrder, // order
                0, // index
                (Frm_Cli.Components[x] as TDBradiogroup).Font.Color, // font_color
                (Frm_Cli.Components[x] as TDBradiogroup).Font.Height, // font_heigth
                (Frm_Cli.Components[x] as TDBradiogroup).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Cli.Components[x] as TDBradiogroup).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Cli.Components[x] as TDBradiogroup).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Cli.Components[x] as TDBradiogroup).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Cli.Components[x] as TDBradiogroup).Enabled, // enabled
                (Frm_Cli.Components[x] as TDBradiogroup).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Cli.Components[x] as TDBradiogroup).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Cli.Components[x] as TDBradiogroup).Font.Name,
                (Frm_Cli.Components[x] as TDBradiogroup).Hint);


      end
   else if LowerCase(Frm_Cli.Components[x].ClassName)='tdbgrid' then
      begin
      with Frm_ConfForm do
         begin
         mDbGrid           := TDbGrid.Create(Frm_ConfForm);
         mDbGrid.Font      := (Frm_Cli.Components[x] as TDBGrid).Font;
         mDbGrid.Color     := (Frm_Cli.Components[x] as TDBGrid).Color;
         mDbGrid.OnDblClick:=Frm_ConfForm.GeralClick;
         mDbGrid.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mDbGrid.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mDbGrid.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Cli.Components[x] as TDbGrid).Parent.Name)='frm_cli' then
            mDbGrid.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TDBGrid).Parent.Name then
                  mDbGrid.Parent:=mWinControl[mcla];
               end;
         mDbGrid.Name     :=Frm_Cli.Components[x].Name;
//         mDbGrid.Caption  :=(Frm_Cli.Components[x] as tDbGrid).Caption;
         mDbGrid.SetBounds( (Frm_Cli.Components[x] as TDbGrid).Left,
                           (Frm_Cli.Components[x] as TDbGrid).Top,
                           (Frm_Cli.Components[x] as TDbGrid).Width,
                           (Frm_Cli.Components[x] as TDbGrid).Height );

         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as TDBGrid).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

      case (Frm_Cli.Components[x] as TDBGrid).BorderStyle of
         bsNone    : mBorderStyle:=0;
         bsSingle  : mBorderStyle:=1;
         end;


       case (Frm_Cli.Components[x] as TDBGrid).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;



       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as TDBGrid).Width, // tamanho
                (Frm_Cli.Components[x] as TDBGrid).Height, // tamanho
                (Frm_Cli.Components[x] as TDBGrid).Top, //  top
                (Frm_Cli.Components[x] as TDBGrid).Left, // left
                (Frm_Cli.Components[x] as TDBGrid).TabOrder, // order
                0, // index
                (Frm_Cli.Components[x] as TDBGrid).Font.Color, // font_color
                (Frm_Cli.Components[x] as TDBGrid).Font.Height, // font_heigth
                (Frm_Cli.Components[x] as TDBGrid).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Cli.Components[x] as TDBGrid).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Cli.Components[x] as TDBGrid).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Cli.Components[x] as TDBGrid).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Cli.Components[x] as TDBGrid).Enabled, // enabled
                (Frm_Cli.Components[x] as TDBGrid).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                '', // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Cli.Components[x] as TDBGrid).Font.Name,
                (Frm_Cli.Components[x] as TDBGrid).Hint);


      end
   else if LowerCase(Frm_Cli.Components[x].ClassName)='tdbedit' then
      begin
      with Frm_ConfForm do
         begin
         mDbEdit           := TDbEdit.Create(Frm_ConfForm);
         mDbEdit.Font      := (Frm_Cli.Components[x] as TDBEdit).Font;
         mDbEdit.Color     := (Frm_Cli.Components[x] as TDBEdit).Color;
         mDbEdit.OnDblClick:=Frm_ConfForm.GeralClick;
         mDbEdit.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mDbEdit.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mDbEdit.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Cli.Components[x] as TDbEdit).Parent.Name)='frm_cli' then
            mDbEdit.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TDBEdit).Parent.Name then
                  mDbEdit.Parent:=mWinControl[mcla];
               end;
         mDbEdit.Name     :=Frm_Cli.Components[x].Name;
         mDbEdit.Text     :=(Frm_Cli.Components[x] as tDbEdit).Text;
         mDbEdit.SetBounds( (Frm_Cli.Components[x] as TDbEdit).Left,
                           (Frm_Cli.Components[x] as TDbEdit).Top,
                           (Frm_Cli.Components[x] as TDbEdit).Width,
                           (Frm_Cli.Components[x] as TDbEdit).Height );

         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as TDbEdit).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;
      case (Frm_Cli.Components[x] as TDBEdit).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;

      case (Frm_Cli.Components[x] as TDBEdit).BevelKind of
         bkFlat    : mBevelKind:=0;
         bkNone    : mBevelKind:=1;
         bkSoft    : mBevelKind:=2;
         bkTile    : mBevelKind:=3;
         end;

      case (Frm_Cli.Components[x] as TDBEdit).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;

      case (Frm_Cli.Components[x] as TDBEdit).BorderStyle of
         bsNone    : mBorderStyle:=0;
         bsSingle  : mBorderStyle:=1;
         end;


       case (Frm_Cli.Components[x] as TDBEdit).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;


       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as TDbEdit).Width, // tamanho
                (Frm_Cli.Components[x] as TDbEdit).Height, // tamanho
                (Frm_Cli.Components[x] as TDbEdit).Top, //  top
                (Frm_Cli.Components[x] as TDbEdit).Left, // left
                (Frm_Cli.Components[x] as TDbEdit).TabOrder, // order
                0, // index
                (Frm_Cli.Components[x] as TDbEdit).Font.Color, // font_color
                (Frm_Cli.Components[x] as TDbEdit).Font.Height, // font_heigth
                (Frm_Cli.Components[x] as TDbEdit).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Cli.Components[x] as TDbEdit).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Cli.Components[x] as TDbEdit).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Cli.Components[x] as TDbEdit).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Cli.Components[x] as TDbEdit).Enabled, // enabled
                (Frm_Cli.Components[x] as TDbEdit).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Cli.Components[x] as TDbEdit).Text, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Cli.Components[x] as TDbEdit).Font.Name,
                (Frm_Cli.Components[x] as TDbEdit).Hint);


      end
   else if LowerCase(Frm_Cli.Components[x].ClassName)='tlistbox' then
      begin
      with Frm_ConfForm do
         begin
         mListBox   := TListBox.Create(Frm_ConfForm);
         mListBox.Font     := (Frm_Cli.Components[x] as TListBox).Font;
         mListBox.Color := (Frm_Cli.Components[x] as TListBox).Color;
         mListBox.OnDblClick:=Frm_ConfForm.GeralClick;
         mListBox.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mListBox.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mListBox.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;

         if lowercase( (Frm_Cli.Components[x] as TListBox).Parent.Name)='frm_cli' then
            mListBox.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TListBox).Parent.Name then
                  mListBox.Parent:=mWinControl[mcla];
               end;
         mListBox.Name     :=Frm_Cli.Components[x].Name;
//         mListBox. Caption  :=(Frm_Cli.Components[x] as tListBox).Caption;
         mListBox.SetBounds( (Frm_Cli.Components[x] as TListBox).Left,
                           (Frm_Cli.Components[x] as TListBox).Top,
                           (Frm_Cli.Components[x] as TListBox).Width,
                           (Frm_Cli.Components[x] as TListBox).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as TListBox).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;
      case (Frm_Cli.Components[x] as TListBox).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;

      case (Frm_Cli.Components[x] as TListBox).BevelKind of
         bkFlat    : mBevelKind:=0;
         bkNone    : mBevelKind:=1;
         bkSoft    : mBevelKind:=2;
         bkTile    : mBevelKind:=3;
         end;

      case (Frm_Cli.Components[x] as TListBox).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;

      case (Frm_Cli.Components[x] as TListBox).BorderStyle of
         bsNone    : mBorderStyle:=0;
         bsSingle  : mBorderStyle:=1;
         end;


       case (Frm_Cli.Components[x] as TListBox).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;



       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as TListbox).Width, // tamanho
                (Frm_Cli.Components[x] as TListbox).Height, // tamanho
                (Frm_Cli.Components[x] as TListbox).Top, //  top
                (Frm_Cli.Components[x] as TListbox).Left, // left
                (Frm_Cli.Components[x] as TListbox).TabOrder, // order
                0, // index
                (Frm_Cli.Components[x] as TListbox).Font.Color, // font_color
                (Frm_Cli.Components[x] as TListbox).Font.Height, // font_heigth
                (Frm_Cli.Components[x] as TListbox).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Cli.Components[x] as TListbox).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Cli.Components[x] as TListbox).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Cli.Components[x] as TListbox).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Cli.Components[x] as TListbox).Enabled, // enabled
                (Frm_Cli.Components[x] as TListbox).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                '', // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Cli.Components[x] as TListbox).Font.Name,
                (Frm_Cli.Components[x] as TListbox).Hint);

      end
   else if LowerCase(Frm_Cli.Components[x].ClassName)='tstatictext' then
      begin
      with Frm_ConfForm do
         begin
         mStaticText           := TStaticText.Create(Frm_ConfForm);
         mStaticText.Font      := (Frm_Cli.Components[x] as TStaticText).Font;
         mStaticText.Color     := (Frm_Cli.Components[x] as TStaticText).Color;
         mStaticText.OnDblClick:=Frm_ConfForm.GeralClick;
         mStaticText.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mStaticText.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mStaticText.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Cli.Components[x] as TStaticText).Parent.Name)='frm_cli' then
            mStaticText.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TStaticText).Parent.Name then
                  mStaticText.Parent:=mWinControl[mcla];
               end;
         mStaticText.Name     :=Frm_Cli.Components[x].Name;
         mStaticText.Font     :=(Frm_Cli.Components[x] as TStaticText).Font;
         mStaticText.Color    :=(Frm_Cli.Components[x] as TStaticText).Color;
         mStaticText.BorderStyle:=(Frm_Cli.Components[x] as TStaticText).BorderStyle;


         mStaticText.Caption  :=(Frm_Cli.Components[x] as tStaticText).Caption;
         mStaticText.SetBounds( (Frm_Cli.Components[x] as TStaticText).Left,
                           (Frm_Cli.Components[x] as TStaticText).Top,
                           (Frm_Cli.Components[x] as TStaticText).Width,
                           (Frm_Cli.Components[x] as TStaticText).Height );

         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as TStaticText).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

      case (Frm_Cli.Components[x] as TStaticText).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;

      case (Frm_Cli.Components[x] as TStaticText).BevelKind of
         bkFlat    : mBevelKind:=0;
         bkNone    : mBevelKind:=1;
         bkSoft    : mBevelKind:=2;
         bkTile    : mBevelKind:=3;
         end;

      case (Frm_Cli.Components[x] as TStaticText).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;

      case (Frm_Cli.Components[x] as TStaticText).BorderStyle of
         sbsNone   : mBorderStyle:=0;
         sbsSingle : mBorderStyle:=1;
         sbsSunken : mBorderStyle:=2;
         end;

       case (Frm_Cli.Components[x] as TStaticText).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;


       case (Frm_Cli.Components[x] as TStaticText).Alignment of
          taCenter      : mAlignment:=0;
          taLeftJustify : mAlignment:=1;
          taRightJustify: mAlignment:=2;
          end;

       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as TStatictext).Width, // tamanho
                (Frm_Cli.Components[x] as TStatictext).Height, // tamanho
                (Frm_Cli.Components[x] as TStatictext).Top, //  top
                (Frm_Cli.Components[x] as TStatictext).Left, // left
                (Frm_Cli.Components[x] as TStatictext).TabOrder, // order
                0, // index
                (Frm_Cli.Components[x] as TStatictext).Font.Color, // font_color
                (Frm_Cli.Components[x] as TStatictext).Font.Height, // font_heigth
                (Frm_Cli.Components[x] as TStatictext).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Cli.Components[x] as TStatictext).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Cli.Components[x] as TStatictext).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                true, // enabled
                false, // fontstrikeout
                (Frm_Cli.Components[x] as TStatictext).Enabled, // enabled
                (Frm_Cli.Components[x] as TStatictext).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Cli.Components[x] as TStatictext).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Cli.Components[x] as TStatictext).Font.Name,
                (Frm_Cli.Components[x] as TStatictext).Hint);


      end
   else if LowerCase(Frm_Cli.Components[x].ClassName)='tradiogroup' then
      begin
      with Frm_ConfForm do
         begin
         mRadioGroup       := TRadioGroup.Create(Frm_ConfForm);
         mRadioGroup.Font  := (Frm_Cli.Components[x] as TRadioGroup).Font;
         mRadioGroup.Color := (Frm_Cli.Components[x] as TRadioGroup).Color;
         mRadioGroup.OnClick:=Frm_ConfForm.GeralClick;
//         mRadioGroup.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
//         mRadioGroup.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
//         mRadioGroup.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;

         if lowercase( (Frm_Cli.Components[x] as TRadioGroup).Parent.Name)='frm_cli' then
            mRadioGroup.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TRadioGroup).Parent.Name then
                  mRadioGroup.Parent:=mWinControl[mcla];
               end;
         mRadioGroup.Name     :=Frm_Cli.Components[x].Name;
         mRadioGroup.Caption  :=(Frm_Cli.Components[x] as tRadioGroup).Caption;
         mRadioGroup.SetBounds( (Frm_Cli.Components[x] as TRadioGroup).Left,
                           (Frm_Cli.Components[x] as TRadioGroup).Top,
                           (Frm_Cli.Components[x] as TRadioGroup).Width,
                           (Frm_Cli.Components[x] as TRadioGroup).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as TRadioGroup).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

       case (Frm_Cli.Components[x] as TRadioGroup).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;



       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as TRadiogroup).Width, // tamanho
                (Frm_Cli.Components[x] as TRadiogroup).Height, // tamanho
                (Frm_Cli.Components[x] as TRadiogroup).Top, //  top
                (Frm_Cli.Components[x] as TRadiogroup).Left, // left
                (Frm_Cli.Components[x] as TRadiogroup).TabOrder, // order
                0, // index
                (Frm_Cli.Components[x] as TRadiogroup).Font.Color, // font_color
                (Frm_Cli.Components[x] as TRadiogroup).Font.Height, // font_heigth
                (Frm_Cli.Components[x] as TRadiogroup).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Cli.Components[x] as TRadiogroup).Color, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Cli.Components[x] as TRadiogroup).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Cli.Components[x] as TRadiogroup).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Cli.Components[x] as TRadiogroup).Enabled, // enabled
                (Frm_Cli.Components[x] as TRadiogroup).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Cli.Components[x] as TRadiogroup).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Cli.Components[x] as TRadiogroup).Font.Name,
                (Frm_Cli.Components[x] as TRadiogroup).Hint);

      end
   else if LowerCase(Frm_Cli.Components[x].ClassName)='tdbcheckbox' then
      begin
      with Frm_ConfForm do
         begin
         mDBCheckBox        := TDBCheckBox.Create(Frm_ConfForm);
         mDbCheckBox.Font   := (Frm_Cli.Components[x] as TDBCheckBox).Font;
         mDbCheckBox.Color  := (Frm_Cli.Components[x] as TDBCheckBox).Color;
         mDbCheckBox.OnClick:=Frm_ConfForm.GeralClick;
         mDbCheckBox.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mDbCheckBox.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mDbCheckBox.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Cli.Components[x] as TDBCheckBox).Parent.Name)='frm_cli' then
            mDBCheckBox.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TDBCheckBox).Parent.Name then
                  mDbCheckBox.Parent:=mWinControl[mcla];
               end;
         mDBCheckBox.Name     :=Frm_Cli.Components[x].Name;
         mDBCheckBox.Caption  :=(Frm_Cli.Components[x] as TDBCheckBox).Caption;
         mDBCheckBox.SetBounds( (Frm_Cli.Components[x] as TDBCheckBox).Left,
                           (Frm_Cli.Components[x] as TDBCheckBox).Top,
                           (Frm_Cli.Components[x] as TDBCheckBox).Width,
                           (Frm_Cli.Components[x] as TDBCheckBox).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as TDbCheckBox).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

       case (Frm_Cli.Components[x] as TDBCheckBox).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;


         case (Frm_Cli.Components[x] as TDBCheckBox).Alignment of
            taLeftJustify : mAlignment:=0;
            taRightJustify: mAlignment:=1;
            end;


         fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as TDBCheckbox).Width, // tamanho
                (Frm_Cli.Components[x] as TDBCheckbox).Height, // tamanho
                (Frm_Cli.Components[x] as TDBCheckbox).Top, //  top
                (Frm_Cli.Components[x] as TDBCheckbox).Left, // left
                (Frm_Cli.Components[x] as TDBCheckbox).TabOrder, // order
                0, // index
                (Frm_Cli.Components[x] as TDBCheckbox).Font.Color, // font_color
                (Frm_Cli.Components[x] as TDBCheckbox).Font.Height, // font_heigth
                (Frm_Cli.Components[x] as TDBCheckbox).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Cli.Components[x] as TDBCheckbox).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Cli.Components[x] as TDBCheckbox).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Cli.Components[x] as TDBCheckbox).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Cli.Components[x] as TDBCheckbox).Enabled, // enabled
                (Frm_Cli.Components[x] as TDBCheckbox).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Cli.Components[x] as TDBCheckbox).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Cli.Components[x] as TDBCheckbox).Font.Name,
                (Frm_Cli.Components[x] as TDBCheckbox).Hint);
      end
   else if LowerCase(Frm_Cli.Components[x].ClassName)='tmemo' then
      begin
      with Frm_ConfForm do
         begin
         mMemo        := TMemo.Create(Frm_ConfForm);
         mMemo.Font   := (Frm_Cli.Components[x] as TMemo).Font;
         mMemo.Color  := (Frm_Cli.Components[x] as TMemo).Color;
         mMemo.OnClick:=Frm_ConfForm.GeralClick;
         mMemo.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mMemo.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mMemo.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Cli.Components[x] as TMemo).Parent.Name)='Frm_Cli' then
            mMemo.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TMemo).Parent.Name then
                  mMemo.Parent:=mWinControl[mcla];
               end;
         mMemo.Name     :=Frm_Cli.Components[x].Name;
         mMemo.Text    :=(Frm_Cli.Components[x] as TMemo).Text;
         mMemo.SetBounds( (Frm_Cli.Components[x] as TMemo).Left,
                           (Frm_Cli.Components[x] as TMemo).Top,
                           (Frm_Cli.Components[x] as TMemo).Width,
                           (Frm_Cli.Components[x] as TMemo).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as TMemo).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

       case (Frm_Cli.Components[x] as TMemo).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;


         case (Frm_Cli.Components[x] as TMemo).Alignment of
            taLeftJustify : mAlignment:=0;
            taRightJustify: mAlignment:=1;
            end;


         fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as TMemo).Width, // tamanho
                (Frm_Cli.Components[x] as TMemo).Height, // tamanho
                (Frm_Cli.Components[x] as TMemo).Top, //  top
                (Frm_Cli.Components[x] as TMemo).Left, // left
                (Frm_Cli.Components[x] as TMemo).TabOrder, // order
                0, // index
                (Frm_Cli.Components[x] as TMemo).Font.Color, // font_color
                (Frm_Cli.Components[x] as TMemo).Font.Height, // font_heigth
                (Frm_Cli.Components[x] as TMemo).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Cli.Components[x] as TMemo).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Cli.Components[x] as TMemo).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Cli.Components[x] as TMemo).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Cli.Components[x] as TMemo).Enabled, // enabled
                (Frm_Cli.Components[x] as TMemo).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Cli.Components[x] as TMemo).Text, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Cli.Components[x] as TMemo).Font.Name,
                (Frm_Cli.Components[x] as TMemo).Hint);

         end
   else if LowerCase(Frm_Cli.Components[x].ClassName)='tdbmemo' then
      begin
      with Frm_ConfForm do
         begin
         mDBMemo        := TDBMemo.Create(Frm_ConfForm);
         mDBMemo.Font   := (Frm_Cli.Components[x] as TDBMemo).Font;
         mDBMemo.Color  := (Frm_Cli.Components[x] as TDBMemo).Color;
         mDBMemo.OnClick:=Frm_ConfForm.GeralClick;
         mDBMemo.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mDBMemo.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mDBMemo.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Cli.Components[x] as TDBMemo).Parent.Name)='Frm_Cli' then
            mDBMemo.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TDBMemo).Parent.Name then
                  mDBMemo.Parent:=mWinControl[mcla];
               end;
         mDBMemo.Name     :=Frm_Cli.Components[x].Name;
         mDBMemo.Text    :=(Frm_Cli.Components[x] as TDBMemo).Text;
         mDBMemo.SetBounds( (Frm_Cli.Components[x] as TDBMemo).Left,
                           (Frm_Cli.Components[x] as TDBMemo).Top,
                           (Frm_Cli.Components[x] as TDBMemo).Width,
                           (Frm_Cli.Components[x] as TDBMemo).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as TDBMemo).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

       case (Frm_Cli.Components[x] as TDBMemo).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;


         case (Frm_Cli.Components[x] as TDBMemo).Alignment of
            taLeftJustify : mAlignment:=0;
            taRightJustify: mAlignment:=1;
            end;


         fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as TDBMemo).Width, // tamanho
                (Frm_Cli.Components[x] as TDBMemo).Height, // tamanho
                (Frm_Cli.Components[x] as TDBMemo).Top, //  top
                (Frm_Cli.Components[x] as TDBMemo).Left, // left
                (Frm_Cli.Components[x] as TDBMemo).TabOrder, // order
                0, // index
                (Frm_Cli.Components[x] as TDBMemo).Font.Color, // font_color
                (Frm_Cli.Components[x] as TDBMemo).Font.Height, // font_heigth
                (Frm_Cli.Components[x] as TDBMemo).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Cli.Components[x] as TDBMemo).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Cli.Components[x] as TDBMemo).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Cli.Components[x] as TDBMemo).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Cli.Components[x] as TDBMemo).Enabled, // enabled
                (Frm_Cli.Components[x] as TDBMemo).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Cli.Components[x] as TDBMemo).Text, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Cli.Components[x] as TDBMemo).Font.Name,
                (Frm_Cli.Components[x] as TDBMemo).Hint);

         end
   else if LowerCase(Frm_Cli.Components[x].ClassName)='tstringgrid' then
      begin
      with Frm_ConfForm do
         begin
         mStringGrid        := TStringGrid.Create(Frm_ConfForm);
         mStringGrid.Font   := (Frm_Cli.Components[x] as TStringGrid).Font;
         mStringGrid.Color  := (Frm_Cli.Components[x] as TStringGrid).Color;
         mStringGrid.OnClick:=Frm_ConfForm.GeralClick;
         mStringGrid.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mStringGrid.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mStringGrid.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Cli.Components[x] as TStringGrid).Parent.Name)='Frm_Cli' then
            mStringGrid.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as TStringGrid).Parent.Name then
                  mStringGrid.Parent:=mWinControl[mcla];
               end;
         mStringGrid.Name     :=Frm_Cli.Components[x].Name;
         mStringGrid.SetBounds( (Frm_Cli.Components[x] as TStringGrid).Left,
                           (Frm_Cli.Components[x] as TStringGrid).Top,
                           (Frm_Cli.Components[x] as TStringGrid).Width,
                           (Frm_Cli.Components[x] as TStringGrid).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as TStringGrid).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

       case (Frm_Cli.Components[x] as TStringGrid).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;




         fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as TStringGrid).Width, // tamanho
                (Frm_Cli.Components[x] as TStringGrid).Height, // tamanho
                (Frm_Cli.Components[x] as TStringGrid).Top, //  top
                (Frm_Cli.Components[x] as TStringGrid).Left, // left
                (Frm_Cli.Components[x] as TStringGrid).TabOrder, // order
                0, // index
                (Frm_Cli.Components[x] as TStringGrid).Font.Color, // font_color
                (Frm_Cli.Components[x] as TStringGrid).Font.Height, // font_heigth
                (Frm_Cli.Components[x] as TStringGrid).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Cli.Components[x] as TStringGrid).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Cli.Components[x] as TStringGrid).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Cli.Components[x] as TStringGrid).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Cli.Components[x] as TStringGrid).Enabled, // enabled
                (Frm_Cli.Components[x] as TStringGrid).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                ' ', // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Cli.Components[x] as TStringGrid).Font.Name,
                (Frm_Cli.Components[x] as TStringGrid).Hint);


         end
   else if LowerCase(Frm_Cli.Components[x].ClassName)='tcheckbox' then
      begin
      with Frm_ConfForm do
         begin
         mcheckbox        := Tcheckbox.Create(Frm_ConfForm);
         mcheckbox.Font   := (Frm_Cli.Components[x] as Tcheckbox).Font;
         mcheckbox.Color  := (Frm_Cli.Components[x] as Tcheckbox).Color;
         mcheckbox.OnClick:=Frm_ConfForm.GeralClick;
         mcheckbox.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mcheckbox.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mcheckbox.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;
         if lowercase( (Frm_Cli.Components[x] as Tcheckbox).Parent.Name)='Frm_Cli' then
            mcheckbox.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Cli.Components[x] as Tcheckbox).Parent.Name then
                  mcheckbox.Parent:=mWinControl[mcla];
               end;
            mcheckbox.Name     :=Frm_Cli.Components[x].Name;
            mcheckbox.Caption  :=(Frm_Cli.Components[x] as Tcheckbox).Caption;
            mcheckbox.SetBounds( (Frm_Cli.Components[x] as Tcheckbox).Left,
                           (Frm_Cli.Components[x] as Tcheckbox).Top,
                           (Frm_Cli.Components[x] as Tcheckbox).Width,
                           (Frm_Cli.Components[x] as Tcheckbox).Height );
            end;
       Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Cli.Components[x] as Tcheckbox).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

       case (Frm_Cli.Components[x] as Tcheckbox).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;


         case (Frm_Cli.Components[x] as Tcheckbox).Alignment of
            taLeftJustify : mAlignment:=0;
            taRightJustify: mAlignment:=1;
            end;


         fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Cli.Components[x] as Tcheckbox).Width, // tamanho
                (Frm_Cli.Components[x] as Tcheckbox).Height, // tamanho
                (Frm_Cli.Components[x] as Tcheckbox).Top, //  top
                (Frm_Cli.Components[x] as Tcheckbox).Left, // left
                (Frm_Cli.Components[x] as Tcheckbox).TabOrder, // order
                0, // index
                (Frm_Cli.Components[x] as Tcheckbox).Font.Color, // font_color
                (Frm_Cli.Components[x] as Tcheckbox).Font.Height, // font_heigth
                (Frm_Cli.Components[x] as Tcheckbox).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Cli.Components[x] as Tcheckbox).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Cli.Components[x] as Tcheckbox).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Cli.Components[x] as Tcheckbox).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Cli.Components[x] as Tcheckbox).Enabled, // enabled
                (Frm_Cli.Components[x] as Tcheckbox).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Cli.Components[x] as Tcheckbox).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Cli.Components[x] as Tcheckbox).Font.Name,
                (Frm_Cli.Components[x] as Tcheckbox).Hint);
      end;
      end;
// verifiando somente o parent name
   end
// TERMINO ITEM 01
// INICIO ITEM 02
else if ptipo=2 then // Formulario de Pedidos
   begin
   Application.CreateForm(TFrm_Ped,Frm_Ped);
// attribuir no stg1
   Frm_ConfForm.Width     :=Frm_Ped.Width;
   Frm_ConfForm.Height    :=Frm_Ped.Height;
   Frm_ConfForm.Top       :=Frm_Ped.Top;
   Frm_ConfForm.Left      :=Frm_Ped.Left;
   Frm_ConfForm.Color     :=Frm_Ped.Color;
   Frm_ConfForm.Position  :=Frm_Ped.Position;
   Frm_ConfForm.Font.Color:=Frm_Ped.Font.Color;
   Frm_ConfForm.Font.Size :=Frm_Ped.Font.Size;
   Frm_ConfForm.Caption   :=Frm_Ped.Caption;

   Frm_perForm.STG1.RowCount:=2;
   Frm_perForm.STG1.Cells[00,00]:='Nome';
   Frm_perForm.STG1.Cells[01,00]:='Classe Nome';
   Frm_perForm.STG1.Cells[02,00]:='Parent';
   mBorderStyle:=-1;
   case Frm_ConfForm.BorderStyle of
        bsDialog     : mBorderStyle:=0;
        bsNone       : mBorderStyle:=1;
        bsSingle     : mBorderStyle:=2;
        bsSizeable   : mBorderStyle:=3;
        bsSizeToolWin: mBorderStyle:=4;
        bsToolWindow : mBorderStyle:=5;
        end;
{
   mAlign:=-1;
   case Frm_ConfForm.Align of
        alBottom     : mAlign:=0;
        alClient     : mAlign:=1;
        alCustom     : mAlign:=2;
        alLeft       : mAlign:=3;
        alNone       : mAlign:=4;
        alRight      : mAlign:=5;
        alTop        : mAlign:=6;
        end;
 }
   fPerformCriaTmp(0, // ptipo
                0, // sequencia
                Frm_ConfForm.Width, // tamanho
                Frm_ConfForm.Height, // tamanho
                Frm_ConfForm.Top, //  top
                Frm_ConfForm.Left, // left
                0, // order
                0, // index
                Frm_ConfForm.Font.Color, // font_color
                Frm_ConfForm.Font.Height, // font_heigth
                Frm_ConfForm.Font.Size, // font_heigth
                -1, // bevel inner
                -1, // bevel kind
                -1, // bevel outer
                -1, // bevel width
                mBorderStyle, // border style
                -1, // charcase
                Frm_ConfForm.Color, // color
                malign, // palign
                -1, // palignment
                Frm_ConfForm.Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                Frm_ConfForm.Ctl3D, // ctr3d
                false, // fontstrikeout
                Frm_ConfForm.Enabled, // enabled
                Frm_ConfForm.ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                UpperCase(Frm_ConfForm.Name), // nome do componente
                'form', //classe do componente
                Frm_ConfForm.Caption, // caption
                '', // parent_nome
                Frm_ConfForm.Font.Name,
                Frm_ConfForm.Hint);


   for x:=0 to Frm_Ped.ComponentCount-1 do
      begin
      Frm_perForm.stg1.RowCount:=Frm_perForm.stg1.RowCount+1;
      mlin:=Frm_perForm.STG1.RowCount-2;
      Frm_PerForm.STG1.Cells[00,mlin]:=Frm_Ped.Components[x].Name;
      Frm_PerForm.STG1.Cells[01,mlin]:=Frm_Ped.Components[x].ClassName;
      if LowerCase(Frm_Ped.Components[x].ClassName)='tlabel' then
         begin
         mLabel       := TLabel.Create(Frm_ConfForm);
         mlabel.Font  := (Frm_Ped.Components[x] as TLabel).Font;
         mlabel.Color := (Frm_Ped.Components[x] as TLabel).Color;
         mlabel.OnDblClick:=Frm_ConfForm.GeralClick;
         mlabel.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mlabel.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mlabel.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;
         if lowercase( (Frm_Ped.Components[x] as TLabel).Parent.Name)='frm_ped' then
            mLabel.Parent:=Frm_ConfForm
         else
            begin
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TLabel).Parent.Name then
                  mLabel.Parent:=mWinControl[mcla];
               end;
            end;
         with Frm_ConfForm do
            begin
            mLabel.Name     :=Frm_Ped.Components[x].Name;
            mLabel.Caption  :=(Frm_Ped.Components[x] as TLabel).Caption;
            mLabel.SetBounds( (Frm_Ped.Components[x] as TLabel).Left,
                              (Frm_Ped.Components[x] as TLabel).Top,
                              (Frm_Ped.Components[x] as TLabel).Width,
                              (Frm_Ped.Components[x] as TLabel).Height );
            mLabel.Font   :=(Frm_Ped.Components[x] as TLabel).Font;
            end;
       Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as TLabel).Parent.Name;
       mAlign:=-1;
       case (Frm_Ped.Components[x] as TLabel).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;

       mAlignment:=-1;
       case (Frm_Ped.Components[x] as TLabel).Alignment of
          taCenter      : mAlignment:=0;
          taLeftJustify : mAlignment:=1;
          taRightJustify: mAlignment:=2;
          end;



       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as TLabel).Width, // tamanho
                (Frm_Ped.Components[x] as TLabel).Height, // tamanho
                (Frm_Ped.Components[x] as TLabel).Top, //  top
                (Frm_Ped.Components[x] as TLabel).Left, // left
                0, // order
                0, // index
                (Frm_Ped.Components[x] as TLabel).Font.Color, // font_color
                (Frm_Ped.Components[x] as TLabel).Font.Height, // font_heigth
                (Frm_Ped.Components[x] as TLabel).Font.Size, // font_heigth
                -1, // bevel inner
                -1, // bevel kind
                -1, // bevel outer
                -1, // bevel width
                -1, // border style
                -1, // charcase
                (Frm_Ped.Components[x] as TLabel).Color, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Ped.Components[x] as TLabel).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                false, // ctr3d
                false, // fontstrikeout
                (Frm_Ped.Components[x] as TLabel).Enabled, // enabled
                (Frm_Ped.Components[x] as TLabel).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Ped.Components[x] as TLabel).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Ped.Components[x] as TLabel).Font.Name,
                (Frm_Ped.Components[x] as TLabel).Hint);

      end
   else if LowerCase(Frm_Ped.Components[x].ClassName)='tedit' then
      begin
      with Frm_ConfForm do
         begin
          mEdit       := TEdit.Create(Frm_ConfForm);
          mEdit.Font  := (Frm_Ped.Components[x] as TEdit).Font;
          mEdit.Color := (Frm_Ped.Components[x] as TEdit).Color;
          mEdit.OnDblClick:=Frm_ConfForm.GeralClick;
          mEdit.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
          mEdit.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
          mEdit.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;

         if lowercase( (Frm_Ped.Components[x] as TEdit).Parent.Name)='frm_ped' then
            mEdit.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TEdit).Parent.Name then
                  mEdit.Parent:=mWinControl[mcla];
               end;

         mEdit.Name     :=Frm_Ped.Components[x].Name;
         mEdit.Text     :=(Frm_Ped.Components[x] as tEdit).Text;
         mEdit.SetBounds( (Frm_Ped.Components[x] as tEdit).Left,
                           (Frm_Ped.Components[x] as tEdit).Top,
                           (Frm_Ped.Components[x] as tEdit).Width,
                           (Frm_Ped.Components[x] as tEdit).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as TEdit).Parent.Name;
      mCharCase:=-1;
      case (Frm_Ped.Components[x] as TEdit).CharCase of
         ecLowerCase : mCharCase:=0;
         ecNormal    : mCharCase:=1;
         ecUpperCase : mCharCase:=2;
         end;
      mBevelInner :=-1;
      mBevelKind  :=-1;
      mBevelOuter :=-1;
      mBevelWidth :=-1;
      mBorderStyle:=-1;
      case (Frm_Ped.Components[x] as TEdit).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;

      case (Frm_Ped.Components[x] as TEdit).BevelKind of
         bkFlat    : mBevelKind:=0;
         bkNone    : mBevelKind:=1;
         bkSoft    : mBevelKind:=2;
         bkTile    : mBevelKind:=3;
         end;

      case (Frm_Ped.Components[x] as TEdit).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;

      case (Frm_Ped.Components[x] as TEdit).BorderStyle of
         bsNone    : mBorderStyle:=0;
         bsSingle  : mBorderStyle:=1;
         end;



      fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as TEdit).Width, // tamanho
                (Frm_Ped.Components[x] as TEdit).Height, // tamanho
                (Frm_Ped.Components[x] as TEdit).Top, //  top
                (Frm_Ped.Components[x] as TEdit).Left, // left
                (Frm_Ped.Components[x] as TEdit).TabOrder, // order
                0, // index
                (Frm_Ped.Components[x] as TEdit).Font.Color, // font_color
                (Frm_Ped.Components[x] as TEdit).Font.Height, // font_heigth
                (Frm_Ped.Components[x] as TEdit).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                -mCharCase, // charcase
                (Frm_Ped.Components[x] as TEdit).Color, // color
                -1, // palign
                -1, // palignment
                (Frm_Ped.Components[x] as TEdit).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Ped.Components[x] as TEdit).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Ped.Components[x] as TEdit).Enabled, // enabled
                (Frm_Ped.Components[x] as TEdit).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Ped.Components[x] as TEdit).Text, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Ped.Components[x] as TEdit).Font.Name,
                (Frm_Ped.Components[x] as TEdit).Hint);


      end
   else if LowerCase(Frm_Ped.Components[x].ClassName)='tbitbtn' then
      begin
      with Frm_ConfForm do
         begin
         mBitBtn       := TBitBtn.Create(Frm_ConfForm);

         mBitBtn.Font   := (Frm_Ped.Components[x] as TBitBtn).Font;
         mBitBtn.Glyph  := (Frm_Ped.Components[x] as TBitBtn).Glyph;
         mBitBtn.Kind   := (Frm_Ped.Components[x] as TBitBtn).Kind;
         mBitBtn.Caption:= (Frm_Ped.Components[x] as TBitBtn).Caption;
         mBitBtn.OnClick:= Frm_ConfForm.GeralClick;
         mBitBtn.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mBitBtn.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mBitBtn.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Ped.Components[x] as TBitBtn).Parent.Name)='frm_ped' then
            mBitBtn.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TBitBtn).Parent.Name then
                 mBitBtn.Parent:=mWinControl[mcla];
               end;
         mBitBtn.Name     :=Frm_Ped.Components[x].Name;
         mBitBtn.Caption  :=(Frm_Ped.Components[x] as tBitBtn).Caption;
         mBitBtn.SetBounds( (Frm_Ped.Components[x] as TBitBtn).Left,
                           (Frm_Ped.Components[x] as TBitBtn).Top,
                           (Frm_Ped.Components[x] as TBitBtn).Width,
                           (Frm_Ped.Components[x] as TBitBtn).Height );

         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as TBitBtn).Parent.Name;


      mCharCase   :=-1;
      mBevelInner :=-1;
      mBevelKind  :=-1;
      mBevelOuter :=-1;
      mBevelWidth :=-1;
      mBorderStyle:=-1;
      mAlign      :=-1;
      mAlignment  :=-1;


       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as TBitbtn).Width, // tamanho
                (Frm_Ped.Components[x] as TBitbtn).Height, // tamanho
                (Frm_Ped.Components[x] as TBitbtn).Top, //  top
                (Frm_Ped.Components[x] as TBitbtn).Left, // left
                (Frm_Ped.Components[x] as TBitbtn).TabOrder, // order
                0, // index
                (Frm_Ped.Components[x] as TBitbtn).Font.Color, // font_color
                (Frm_Ped.Components[x] as TBitbtn).Font.Height, // font_heigth
                (Frm_Ped.Components[x] as TBitbtn).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                -1, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Ped.Components[x] as TBitbtn).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                true, // enabled
                false, // fontstrikeout
                (Frm_Ped.Components[x] as TBitbtn).Enabled, // enabled
                (Frm_Ped.Components[x] as TBitbtn).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Ped.Components[x] as TBitbtn).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Ped.Components[x] as TBitbtn).Font.Name,
                (Frm_Ped.Components[x] as TBitbtn).Hint);

      end
   else if LowerCase(Frm_Ped.Components[x].ClassName)='tpage' then
      begin
      with Frm_ConfForm do
         begin
         mPage       := TPage.Create(Frm_ConfForm);
         if lowercase( (Frm_Ped.Components[x] as TPage).Parent.Name)='frm_ped' then
            mPage.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TPage).Parent.Name then
                  mPage.Parent:=mWinControl[mcla];
               end;
         mPage.Name     :=Frm_Ped.Components[x].Name;
         mPage.Caption  :=(Frm_Ped.Components[x] as tPage).Caption;
         mPage.SetBounds( (Frm_Ped.Components[x] as TPage).Left,
                           (Frm_Ped.Components[x] as TPage).Top,
                           (Frm_Ped.Components[x] as TPage).Width,
                           (Frm_Ped.Components[x] as TPage).Height );

         mAchou:=false;
         for mcla:=0 to high(mWinControl) do
            begin
            if mWinControl[mcla].Name=Frm_Ped.Components[x].Name then
               begin
               mAchou:=true;
               break;
               end;
            end;
         if not mAchou  then
            begin
            mcla:=high(mWinControl);
            mcla:=mcla+2;
            SetLength(mWinControl,mcla);
            mWincontrol[mcla-1]:=mPage;
            end;
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as Tpage).Parent.Name;

      mCharCase   :=-1;
      mBevelInner :=-1;
      mBevelKind  :=-1;
      mBevelOuter :=-1;
      mBevelWidth :=-1;
      mBorderStyle:=-1;
      mAlign      :=-1;
      mAlignment  :=-1;
      mAlign:=-1;
{LINDOMARDC
       case (Frm_Ped.Components[x] as TPage).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;
}

       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as TPage).Width, // tamanho
                (Frm_Ped.Components[x] as TPage).Height, // tamanho
                (Frm_Ped.Components[x] as TPage).Top, //  top
                (Frm_Ped.Components[x] as TPage).Left, // left
                (Frm_Ped.Components[x] as TPage).TabOrder, // order
                0, // index
                -1, // font_color
                -1, // font_heigth
                -1, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                -1, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Ped.Components[x] as TPage).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                true, // enabled
                false, // fontstrikeout
                (Frm_Ped.Components[x] as TPage).Enabled, // enabled
                (Frm_Ped.Components[x] as TPage).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Ped.Components[x] as TPage).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                '',
                (Frm_Ped.Components[x] as TPage).Hint);


      end
   else if LowerCase(Frm_Ped.Components[x].ClassName)='tpanel' then
      begin
      with Frm_ConfForm do
         begin
         mPanel           := TPanel.Create(Frm_ConfForm);
         mPanel.Font      := (Frm_Ped.Components[x] as TPanel).Font;
         mPanel.Color     := (Frm_Ped.Components[x] as TPanel).Color;
         mPanel.OnDblClick:=Frm_ConfForm.GeralClick;
         mPanel.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mPanel.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mPanel.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;

         if lowercase( (Frm_Ped.Components[x] as TPanel).Parent.Name)='frm_ped' then
            mPanel.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TPanel).Parent.Name then
                  mPanel.Parent:=mWinControl[mcla];
               end;
         mPanel.Name   :=Frm_Ped.Components[x].Name;
         mPanel.Caption:=(Frm_Ped.Components[x] as TPanel).Caption;
         mPanel.SetBounds( (Frm_Ped.Components[x] as TPanel).Left,
                          (Frm_Ped.Components[x] as TPanel).Top,
                          (Frm_Ped.Components[x] as TPanel).Width,
                          (Frm_Ped.Components[x] as TPanel).Height);
         mAchou:=false;
         for mcla:=0 to high(mWinControl) do
            begin
            if mWinControl[mcla].Name=Frm_Ped.Components[x].Name then
               begin
               mAchou:=true;
               break;
               end;
            end;
         if not mAchou  then
            begin
            mcla:=high(mWinControl);
            mcla:=mcla+2;
            SetLength(mWinControl,mcla);
            mWincontrol[mcla-1]:=mPanel;
            end;

         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as TPanel).Parent.Name;

       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

      case (Frm_Ped.Components[x] as TPanel).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;




      case (Frm_Ped.Components[x] as TPanel).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;

      case (Frm_Ped.Components[x] as TPanel).BorderStyle of
         bsNone    : mBorderStyle:=0;
         bsSingle  : mBorderStyle:=1;
         end;


       mAlignment:=-1;
       case (Frm_Ped.Components[x] as TPanel).Alignment of
          taCenter      : mAlignment:=0;
          taLeftJustify : mAlignment:=1;
          taRightJustify: mAlignment:=2;
          end;



       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as TPanel).Width, // tamanho
                (Frm_Ped.Components[x] as TPanel).Height, // tamanho
                (Frm_Ped.Components[x] as TPanel).Top, //  top
                (Frm_Ped.Components[x] as TPanel).Left, // left
                (Frm_Ped.Components[x] as TPanel).TabOrder, // order
                0, // index
                (Frm_Ped.Components[x] as TPanel).Font.Color, // font_color
                (Frm_Ped.Components[x] as TPanel).Font.Height, // font_heigth
                (Frm_Ped.Components[x] as TPanel).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Ped.Components[x] as TPanel).Color, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Ped.Components[x] as TPanel).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Ped.Components[x] as TPanel).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Ped.Components[x] as TPanel).Enabled, // enabled
                (Frm_Ped.Components[x] as TPanel).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Ped.Components[x] as TPanel).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Ped.Components[x] as TPanel).Font.Name,
                (Frm_Ped.Components[x] as TPanel).Hint);

      end
   else if LowerCase(Frm_Ped.Components[x].ClassName)='tcombobox' then
      begin
      with Frm_ConfForm do
         begin
         mComboBox           := TComboBox.Create(Frm_ConfForm);
         mComboBox.Font      := (Frm_Ped.Components[x] as TComboBox).Font;
         mComboBox.Color     := (Frm_Ped.Components[x] as TComboBox).Color;
         mComboBox.OnDblClick:=Frm_ConfForm.GeralClick;
         if lowercase( (Frm_Ped.Components[x] as TComboBox).Parent.Name)='frm_ped' then
            mComboBox.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TComboBox).Parent.Name then
                  mComboBox.Parent:=mWinControl[mcla];
               end;
         mComboBox.Name     :=Frm_Ped.Components[x].Name;
         mComboBox.Text     :=(Frm_Ped.Components[x] as tComboBox).Text;
         mComboBox.SetBounds( (Frm_Ped.Components[x] as TComboBox).Left,
                           (Frm_Ped.Components[x] as TComboBox).Top,
                           (Frm_Ped.Components[x] as TComboBox).Width,
                           (Frm_Ped.Components[x] as TComboBox).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as Tcombobox).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;



      case (Frm_Ped.Components[x] as TComboBox).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;

      case (Frm_Ped.Components[x] as TComboBox).BevelKind of
         bkFlat    : mBevelKind:=0;
         bkNone    : mBevelKind:=1;
         bkSoft    : mBevelKind:=2;
         bkTile    : mBevelKind:=3;
         end;

      case (Frm_Ped.Components[x] as TComboBox).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;
       case (Frm_Ped.Components[x] as TComboBox).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;



       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as TCombobox).Width, // tamanho
                (Frm_Ped.Components[x] as TCombobox).Height, // tamanho
                (Frm_Ped.Components[x] as TCombobox).Top, //  top
                (Frm_Ped.Components[x] as TCombobox).Left, // left
                (Frm_Ped.Components[x] as TCombobox).TabOrder, // order
                0, // index
                (Frm_Ped.Components[x] as TCombobox).Font.Color, // font_color
                (Frm_Ped.Components[x] as TCombobox).Font.Height, // font_heigth
                (Frm_Ped.Components[x] as TCombobox).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Ped.Components[x] as TCombobox).Color, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Ped.Components[x] as TCombobox).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Ped.Components[x] as TCombobox).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Ped.Components[x] as TCombobox).Enabled, // enabled
                (Frm_Ped.Components[x] as TCombobox).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Ped.Components[x] as TCombobox).Text, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Ped.Components[x] as TCombobox).Font.Name,
                (Frm_Ped.Components[x] as TCombobox).Hint);

      end
   else if LowerCase(Frm_Ped.Components[x].ClassName)='tmaskedit' then
      begin
      with Frm_ConfForm do
         begin
         mMaskEdit           := TMaskEdit.Create(Frm_ConfForm);
         mMaskEdit.Font      := (Frm_Ped.Components[x] as TMaskEdit).Font;
         mMaskEdit.Color     := (Frm_Ped.Components[x] as TMaskEdit).Color;
         mMaskEdit.OnDblClick:=Frm_ConfForm.GeralClick;
         mMaskEdit.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mMaskEdit.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mMaskEdit.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Ped.Components[x] as TMaskEdit).Parent.Name)='frm_ped' then
            mMaskEdit.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TMaskEdit).Parent.Name then
                  mMaskEdit.Parent:=mWinControl[mcla];
               end;
         mMaskEdit.Name     :=Frm_Ped.Components[x].Name;
         mMaskEdit.Text     :=(Frm_Ped.Components[x] as tMaskEdit).Text;
         mMaskEdit.SetBounds( (Frm_Ped.Components[x] as TMaskEdit).Left,
                           (Frm_Ped.Components[x] as TMaskEdit).Top,
                           (Frm_Ped.Components[x] as TMaskEdit).Width,
                           (Frm_Ped.Components[x] as TMaskEdit).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as TMaskEdit).Parent.Name;


       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;



      case (Frm_Ped.Components[x] as TMaskEdit).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;

      case (Frm_Ped.Components[x] as TMaskEdit).BevelKind of
         bkFlat    : mBevelKind:=0;
         bkNone    : mBevelKind:=1;
         bkSoft    : mBevelKind:=2;
         bkTile    : mBevelKind:=3;
         end;

      case (Frm_Ped.Components[x] as TMaskEdit).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;

      case (Frm_Ped.Components[x] as TMaskEdit).BorderStyle of
         bsNone    : mBorderStyle:=0;
         bsSingle  : mBorderStyle:=1;
         end;
       case (Frm_Ped.Components[x] as TMaskEdit).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;



       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as TMaskedit).Width, // tamanho
                (Frm_Ped.Components[x] as TMaskedit).Height, // tamanho
                (Frm_Ped.Components[x] as TMaskedit).Top, //  top
                (Frm_Ped.Components[x] as TMaskedit).Left, // left
                (Frm_Ped.Components[x] as TMaskedit).TabOrder, // order
                0, // index
                (Frm_Ped.Components[x] as TMaskedit).Font.Color, // font_color
                (Frm_Ped.Components[x] as TMaskedit).Font.Height, // font_heigth
                (Frm_Ped.Components[x] as TMaskedit).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Ped.Components[x] as TMaskedit).Color, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Ped.Components[x] as TMaskedit).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Ped.Components[x] as TMaskedit).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Ped.Components[x] as TMaskedit).Enabled, // enabled
                (Frm_Ped.Components[x] as TMaskedit).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Ped.Components[x] as TMaskedit).Text, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Ped.Components[x] as TMaskedit).Font.Name,
                (Frm_Ped.Components[x] as TMaskedit).Hint);

      end
   else if LowerCase(Frm_Ped.Components[x].ClassName)='ttabsheet' then
      begin
      with Frm_ConfForm do
         begin
         if lowercase( (Frm_Ped.Components[x] as TTabSheet).Parent.Name)='frm_ped' then
            mTabSheet       := TTabSheet.Create(Frm_ConfForm)
         else
            begin
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TTabSheet).Parent.Name then
                  begin
                    mTabSheet       := TTabSheet.Create(Frm_ConfForm);

                    mTabSheet.PageControl:=mPageControl;
                    break;
                    end;
                end;

             end;

           mTabSheet.Font  := (Frm_Ped.Components[x] as TTabSheet).Font;

          if lowercase( (Frm_Ped.Components[x] as TTabSheet).Parent.Name)='frm_ped' then
             mTabSheet.Parent:=Frm_ConfForm
          else
             for mcla:=0 to high(mWinControl) do
                begin
                if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TTabSheet).Parent.Name then
                   mTabSheet.Parent:=mWinControl[mcla];
                end;
          mTabSheet.Name     :=Frm_Ped.Components[x].Name;
          mTabSheet.Caption  :=(Frm_Ped.Components[x] as tTabSheet).Caption;

          mAchou:=false;

         for mcla:=0 to high(mWinControl) do
            begin
            if mWinControl[mcla].Name=Frm_Ped.Components[x].Name then
               begin
               mAchou:=true;
               break;
               end;
            end;
         if not mAchou  then
            begin
            mcla:=high(mWinControl);
            mcla:=mcla+2;
            SetLength(mWinControl,mcla);
            mWincontrol[mcla-1]:=mTabSheet;
            end;
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as Ttabsheet).Parent.Name;

       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

       case (Frm_Ped.Components[x] as TTabSheet).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;



       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as TTabsheet).Width, // tamanho
                (Frm_Ped.Components[x] as TTabsheet).Height, // tamanho
                (Frm_Ped.Components[x] as TTabsheet).Top, //  top
                (Frm_Ped.Components[x] as TTabsheet).Left, // left
                (Frm_Ped.Components[x] as TTabsheet).TabOrder, // order
                0, // index
                (Frm_Ped.Components[x] as TTabsheet).Font.Color, // font_color
                (Frm_Ped.Components[x] as TTabsheet).Font.Height, // font_heigth
                (Frm_Ped.Components[x] as TTabsheet).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelOuter, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                -1, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Ped.Components[x] as TTabsheet).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                true, // enabled
                false, // fontstrikeout
                (Frm_Ped.Components[x] as TTabsheet).Enabled, // enabled
                (Frm_Ped.Components[x] as TTabsheet).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Ped.Components[x] as TTabsheet).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Ped.Components[x] as TTabsheet).Font.Name,
                (Frm_Ped.Components[x] as TTabsheet).Hint);


      end
   else if LowerCase(Frm_Ped.Components[x].ClassName)='tpagecontrol' then
      begin
      with Frm_ConfForm do
         begin
         mPageControl      := TPageControl.Create(Frm_ConfForm);
         if lowercase( (Frm_Ped.Components[x] as TPageControl).Parent.Name)='frm_ped' then
            mPageControl.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TPageControl).Parent.Name then
                  mPageControl.Parent:=mWinControl[mcla];
               end;
         mPageControl.Name     :=Frm_Ped.Components[x].Name;
         mPageControl.Font    := (Frm_Ped.Components[x] as TPageControl).Font;

         mPageControl.SetBounds( (Frm_Ped.Components[x] as TPageControl).Left,
                           (Frm_Ped.Components[x] as TPageControl).Top,
                           (Frm_Ped.Components[x] as TPageControl).Width,
                           (Frm_Ped.Components[x] as TPageControl).Height );
         mAchou:=false;
         for mcla:=0 to high(mWinControl) do
            begin
            if mWinControl[mcla].Name=Frm_Ped.Components[x].Name then
               begin
               mAchou:=true;
               break;
               end;
            end;
         if not mAchou  then
            begin
            mcla:=high(mWinControl);
            mcla:=mcla+2;
            SetLength(mWinControl,mcla);
            mWincontrol[mcla-1]:=mPageControl;
            end;
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as TPageControl).Parent.Name;

       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

{
       case (Frm_Ped.Components[x] as TPageControl).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;

}

       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as TPageControl).Width, // tamanho
                (Frm_Ped.Components[x] as TPageControl).Height, // tamanho
                (Frm_Ped.Components[x] as TPageControl).Top, //  top
                (Frm_Ped.Components[x] as TPageControl).Left, // left
                (Frm_Ped.Components[x] as TPageControl).TabOrder, // order
                0, // index
                (Frm_Ped.Components[x] as TPageControl).Font.Color, // font_color
                (Frm_Ped.Components[x] as TPageControl).Font.Height, // font_heigth
                (Frm_Ped.Components[x] as TPageControl).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                -1, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Ped.Components[x] as TPageControl).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                true, // enabled
                false, // fontstrikeout
                (Frm_Ped.Components[x] as TPageControl).Enabled, // enabled
                (Frm_Ped.Components[x] as TPageControl).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                '', // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Ped.Components[x] as TPageControl).Font.Name,
                (Frm_Ped.Components[x] as TPageControl).Hint);


      end
   else if LowerCase(Frm_Ped.Components[x].ClassName)='tgroupbox' then
      begin
      with Frm_ConfForm do
         begin
         mGroupBox      := TGroupBox.Create(Frm_ConfForm);
         if lowercase( (Frm_Ped.Components[x] as TGroupBox).Parent.Name)='frm_ped' then
            mGroupBox.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TGroupBox).Parent.Name then
                  mGroupBox.Parent:=mWinControl[mcla];
               end;
         mGroupBox.Name     :=Frm_Ped.Components[x].Name;
         mGroupBox.Font     := (Frm_Ped.Components[x] as TGroupBox).Font;
         mGroupBox.Color := (Frm_Ped.Components[x] as TGroupBox).Color;
         mGroupBox.OnDblClick:=Frm_ConfForm.GeralClick;
         mGroupBox.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mGroupBox.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mGroupBox.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;

         mGroupBox.Caption  :=(Frm_Ped.Components[x] as tGroupBox).Caption;
         mGroupBox.SetBounds( (Frm_Ped.Components[x] as TGroupBox).Left,
                           (Frm_Ped.Components[x] as TGroupBox).Top,
                           (Frm_Ped.Components[x] as TGroupBox).Width,
                           (Frm_Ped.Components[x] as TGroupBox).Height );
         mAchou:=false;
         for mcla:=0 to high(mWinControl) do
            begin
            if mWinControl[mcla].Name=Frm_Ped.Components[x].Name then
               begin
               mAchou:=true;
               break;
               end;
            end;
         if not mAchou  then
            begin
            mcla:=high(mWinControl);
            mcla:=mcla+2;
            SetLength(mWinControl,mcla);
            mWincontrol[mcla-1]:=mGroupBox;
            end;
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as TGroupbox).Parent.Name;

       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;



       case (Frm_Ped.Components[x] as TGroupBox).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;



       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as TGroupbox).Width, // tamanho
                (Frm_Ped.Components[x] as TGroupbox).Height, // tamanho
                (Frm_Ped.Components[x] as TGroupbox).Top, //  top
                (Frm_Ped.Components[x] as TGroupbox).Left, // left
                (Frm_Ped.Components[x] as TGroupbox).TabOrder, // order
                0, // index
                (Frm_Ped.Components[x] as TGroupbox).Font.Color, // font_color
                (Frm_Ped.Components[x] as TGroupbox).Font.Height, // font_heigth
                (Frm_Ped.Components[x] as TGroupbox).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Ped.Components[x] as TGroupbox).Color, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Ped.Components[x] as TGroupbox).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Ped.Components[x] as TGroupbox).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Ped.Components[x] as TGroupbox).Enabled, // enabled
                (Frm_Ped.Components[x] as TGroupbox).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Ped.Components[x] as TGroupbox).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Ped.Components[x] as TGroupbox).Font.Name,
                (Frm_Ped.Components[x] as TGroupbox).Hint);

      end
   else if LowerCase(Frm_Ped.Components[x].ClassName)='tdbnavigator' then
      begin
      with Frm_ConfForm do
         begin
         mDbNavigator           := TDbNavigator.Create(Frm_ConfForm);
         mDbNavigator.VisibleButtons:=(Frm_Ped.Components[x] as TDBNavigator).VisibleButtons;
         mDbNavigator.OnDblClick:=Frm_ConfForm.GeralClick;
         if lowercase( (Frm_Ped.Components[x] as TDbNavigator).Parent.Name)='frm_ped' then
            mDbNavigator.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TDBNavigator).Parent.Name then
                  mDbNavigator.Parent:=mWinControl[mcla];
               end;
         mDbNavigator.Name     :=Frm_Ped.Components[x].Name;
         mDbNavigator.SetBounds( (Frm_Ped.Components[x] as TDbNavigator).Left,
                           (Frm_Ped.Components[x] as TDbNavigator).Top,
                           (Frm_Ped.Components[x] as TDbNavigator).Width,
                           (Frm_Ped.Components[x] as TDbNavigator).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as TDBNavigator).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

       case (Frm_Ped.Components[x] as TDBNavigator).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;

       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as TDBNavigator).Width, // tamanho
                (Frm_Ped.Components[x] as TDBNavigator).Height, // tamanho
                (Frm_Ped.Components[x] as TDBNavigator).Top, //  top
                (Frm_Ped.Components[x] as TDBNavigator).Left, // left
                (Frm_Ped.Components[x] as TDBNavigator).TabOrder, // order
                0, // index
                -1, // font_color
                -1, // font_heigth
                -1, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                -1, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Ped.Components[x] as TDBNavigator).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Ped.Components[x] as TDBNavigator).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Ped.Components[x] as TDBNavigator).Enabled, // enabled
                (Frm_Ped.Components[x] as TDBNavigator).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                '' , // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                '',
                (Frm_Ped.Components[x] as TDBNavigator).Hint);

      end
   else if LowerCase(Frm_Ped.Components[x].ClassName)='tbevel' then
      begin
      with Frm_ConfForm do
         begin
         mBevel      := TBevel.Create(Frm_ConfForm);
         if lowercase( (Frm_Ped.Components[x] as TBevel).Parent.Name)='frm_ped' then
            mBevel.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TBevel).Parent.Name then
                  mBevel.Parent:=mWinControl[mcla];
               end;
         mBevel.Name     :=Frm_Ped.Components[x].Name;
         mBevel.SetBounds( (Frm_Ped.Components[x] as TBevel).Left,
                           (Frm_Ped.Components[x] as TBevel).Top,
                           (Frm_Ped.Components[x] as TBevel).Width,
                           (Frm_Ped.Components[x] as TBevel).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as TBevel).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;


       case (Frm_Ped.Components[x] as TBevel).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;


       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as Tbevel).Width, // tamanho
                (Frm_Ped.Components[x] as Tbevel).Height, // tamanho
                (Frm_Ped.Components[x] as Tbevel).Top, //  top
                (Frm_Ped.Components[x] as Tbevel).Left, // left
                -1, // order
                0, // index
                -1, // font_color
                -1, // font_heigth
                -1, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                -1, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Ped.Components[x] as Tbevel).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                true, // enabled
                false, // fontstrikeout
                (Frm_Ped.Components[x] as Tbevel).Enabled, // enabled
                (Frm_Ped.Components[x] as Tbevel).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                '', // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                '',
                (Frm_Ped.Components[x] as Tbevel).Hint);


      end
   else if LowerCase(Frm_Ped.Components[x].ClassName)='tdbcombobox' then
      begin
      with Frm_ConfForm do
         begin
         mDbComboBox      := TDbComboBox.Create(Frm_ConfForm);
         mDbComboBox.Font := (Frm_Ped.Components[x] as TDBComboBox).Font;
         mDbComboBox.Color:= (Frm_Ped.Components[x] as TDBComboBox).Color;
         mDbComboBox.OnDblClick:=Frm_ConfForm.GeralClick;

         if lowercase( (Frm_Ped.Components[x] as TDbComboBox).Parent.Name)='frm_ped' then
            mDbComboBox.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TDBComboBox).Parent.Name then
                  mDbComboBox.Parent:=mWinControl[mcla];
               end;
         mDbComboBox.Name     :=Frm_Ped.Components[x].Name;
         mDbComboBox.Text     :=(Frm_Ped.Components[x] as tDbComboBox).Text;
         mDbComboBox.SetBounds( (Frm_Ped.Components[x] as TDbComboBox).Left,
                           (Frm_Ped.Components[x] as TDbComboBox).Top,
                           (Frm_Ped.Components[x] as TDbComboBox).Width,
                           (Frm_Ped.Components[x] as TDbComboBox).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as Tdbcombobox).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

      case (Frm_Ped.Components[x] as TDBComboBox).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;

      case (Frm_Ped.Components[x] as TDBComboBox).BevelKind of
         bkFlat    : mBevelKind:=0;
         bkNone    : mBevelKind:=1;
         bkSoft    : mBevelKind:=2;
         bkTile    : mBevelKind:=3;
         end;

      case (Frm_Ped.Components[x] as TDBComboBox).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;



       case (Frm_Ped.Components[x] as TDBComboBox).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;



       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as TDBCombobox).Width, // tamanho
                (Frm_Ped.Components[x] as TDBCombobox).Height, // tamanho
                (Frm_Ped.Components[x] as TDBCombobox).Top, //  top
                (Frm_Ped.Components[x] as TDBCombobox).Left, // left
                (Frm_Ped.Components[x] as TDBCombobox).TabOrder, // order
                0, // index
                (Frm_Ped.Components[x] as TDBCombobox).Font.Color, // font_color
                (Frm_Ped.Components[x] as TDBCombobox).Font.Height, // font_heigth
                (Frm_Ped.Components[x] as TDBCombobox).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Ped.Components[x] as TDBCombobox).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Ped.Components[x] as TDBCombobox).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Ped.Components[x] as TDBCombobox).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Ped.Components[x] as TDBCombobox).Enabled, // enabled
                (Frm_Ped.Components[x] as TDBCombobox).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Ped.Components[x] as TDBCombobox).Text, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Ped.Components[x] as TDBCombobox).Font.Name,
                (Frm_Ped.Components[x] as TDBCombobox).Hint);


      end
   else if LowerCase(Frm_Ped.Components[x].ClassName)='tdbradiogroup' then
      begin
      with Frm_ConfForm do
         begin
         mDBRadioGroup          := TDBRadioGroup.Create(Frm_ConfForm);
         mDBRadioGroup.Font     := (Frm_Ped.Components[x] as TDBRadioGroup).Font;
         mDBRadioGroup.Color    := (Frm_Ped.Components[x] as TDBRadioGroup).Color;
         mDBRadioGroup.OnClick  :=Frm_ConfForm.GeralClick;


         if lowercase( (Frm_Ped.Components[x] as TDBRadioGroup).Parent.Name)='frm_ped' then
            mDBRadioGroup.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TDBRadioGroup).Parent.Name then
                  mDBRadioGroup.Parent:=mWinControl[mcla];
               end;
         mDBRadioGroup.Name     :=Frm_Ped.Components[x].Name;
         mDBRadioGroup.Caption  :=(Frm_Ped.Components[x] as tDBRadioGroup).Caption;
         mDBRadioGroup.SetBounds( (Frm_Ped.Components[x] as TDBRadioGroup).Left,
                           (Frm_Ped.Components[x] as TDBRadioGroup).Top,
                           (Frm_Ped.Components[x] as TDBRadioGroup).Width,
                           (Frm_Ped.Components[x] as TDBRadioGroup).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as TDBRadioGroup).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;



       case (Frm_Ped.Components[x] as TDBRadioGroup).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;


       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as TDBradiogroup).Width, // tamanho
                (Frm_Ped.Components[x] as TDBradiogroup).Height, // tamanho
                (Frm_Ped.Components[x] as TDBradiogroup).Top, //  top
                (Frm_Ped.Components[x] as TDBradiogroup).Left, // left
                (Frm_Ped.Components[x] as TDBradiogroup).TabOrder, // order
                0, // index
                (Frm_Ped.Components[x] as TDBradiogroup).Font.Color, // font_color
                (Frm_Ped.Components[x] as TDBradiogroup).Font.Height, // font_heigth
                (Frm_Ped.Components[x] as TDBradiogroup).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Ped.Components[x] as TDBradiogroup).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Ped.Components[x] as TDBradiogroup).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Ped.Components[x] as TDBradiogroup).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Ped.Components[x] as TDBradiogroup).Enabled, // enabled
                (Frm_Ped.Components[x] as TDBradiogroup).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Ped.Components[x] as TDBradiogroup).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Ped.Components[x] as TDBradiogroup).Font.Name,
                (Frm_Ped.Components[x] as TDBradiogroup).Hint);


      end
   else if LowerCase(Frm_Ped.Components[x].ClassName)='tdbgrid' then
      begin
      with Frm_ConfForm do
         begin
         mDbGrid           := TDbGrid.Create(Frm_ConfForm);
         mDbGrid.Font      := (Frm_Ped.Components[x] as TDBGrid).Font;
         mDbGrid.Color     := (Frm_Ped.Components[x] as TDBGrid).Color;
         mDbGrid.OnDblClick:=Frm_ConfForm.GeralClick;
         mDbGrid.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mDbGrid.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mDbGrid.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Ped.Components[x] as TDbGrid).Parent.Name)='frm_ped' then
            mDbGrid.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TDBGrid).Parent.Name then
                  mDbGrid.Parent:=mWinControl[mcla];
               end;
         mDbGrid.Name     :=Frm_Ped.Components[x].Name;
//         mDbGrid.Caption  :=(Frm_Ped.Components[x] as tDbGrid).Caption;
         mDbGrid.SetBounds( (Frm_Ped.Components[x] as TDbGrid).Left,
                           (Frm_Ped.Components[x] as TDbGrid).Top,
                           (Frm_Ped.Components[x] as TDbGrid).Width,
                           (Frm_Ped.Components[x] as TDbGrid).Height );

         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as TDBGrid).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

      case (Frm_Ped.Components[x] as TDBGrid).BorderStyle of
         bsNone    : mBorderStyle:=0;
         bsSingle  : mBorderStyle:=1;
         end;


       case (Frm_Ped.Components[x] as TDBGrid).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;



       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as TDBGrid).Width, // tamanho
                (Frm_Ped.Components[x] as TDBGrid).Height, // tamanho
                (Frm_Ped.Components[x] as TDBGrid).Top, //  top
                (Frm_Ped.Components[x] as TDBGrid).Left, // left
                (Frm_Ped.Components[x] as TDBGrid).TabOrder, // order
                0, // index
                (Frm_Ped.Components[x] as TDBGrid).Font.Color, // font_color
                (Frm_Ped.Components[x] as TDBGrid).Font.Height, // font_heigth
                (Frm_Ped.Components[x] as TDBGrid).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Ped.Components[x] as TDBGrid).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Ped.Components[x] as TDBGrid).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Ped.Components[x] as TDBGrid).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Ped.Components[x] as TDBGrid).Enabled, // enabled
                (Frm_Ped.Components[x] as TDBGrid).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                '', // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Ped.Components[x] as TDBGrid).Font.Name,
                (Frm_Ped.Components[x] as TDBGrid).Hint);


      end
   else if LowerCase(Frm_Ped.Components[x].ClassName)='tdbedit' then
      begin
      with Frm_ConfForm do
         begin
         mDbEdit           := TDbEdit.Create(Frm_ConfForm);
         mDbEdit.Font      := (Frm_Ped.Components[x] as TDBEdit).Font;
         mDbEdit.Color     := (Frm_Ped.Components[x] as TDBEdit).Color;
         mDbEdit.OnDblClick:=Frm_ConfForm.GeralClick;
         mDbEdit.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mDbEdit.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mDbEdit.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Ped.Components[x] as TDbEdit).Parent.Name)='frm_ped' then
            mDbEdit.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TDBEdit).Parent.Name then
                  mDbEdit.Parent:=mWinControl[mcla];
               end;
         mDbEdit.Name     :=Frm_Ped.Components[x].Name;
         mDbEdit.Text     :=(Frm_Ped.Components[x] as tDbEdit).Text;
         mDbEdit.SetBounds( (Frm_Ped.Components[x] as TDbEdit).Left,
                           (Frm_Ped.Components[x] as TDbEdit).Top,
                           (Frm_Ped.Components[x] as TDbEdit).Width,
                           (Frm_Ped.Components[x] as TDbEdit).Height );

         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as TDbEdit).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;
      case (Frm_Ped.Components[x] as TDBEdit).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;

      case (Frm_Ped.Components[x] as TDBEdit).BevelKind of
         bkFlat    : mBevelKind:=0;
         bkNone    : mBevelKind:=1;
         bkSoft    : mBevelKind:=2;
         bkTile    : mBevelKind:=3;
         end;

      case (Frm_Ped.Components[x] as TDBEdit).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;

      case (Frm_Ped.Components[x] as TDBEdit).BorderStyle of
         bsNone    : mBorderStyle:=0;
         bsSingle  : mBorderStyle:=1;
         end;


       case (Frm_Ped.Components[x] as TDBEdit).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;


       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as TDbEdit).Width, // tamanho
                (Frm_Ped.Components[x] as TDbEdit).Height, // tamanho
                (Frm_Ped.Components[x] as TDbEdit).Top, //  top
                (Frm_Ped.Components[x] as TDbEdit).Left, // left
                (Frm_Ped.Components[x] as TDbEdit).TabOrder, // order
                0, // index
                (Frm_Ped.Components[x] as TDbEdit).Font.Color, // font_color
                (Frm_Ped.Components[x] as TDbEdit).Font.Height, // font_heigth
                (Frm_Ped.Components[x] as TDbEdit).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Ped.Components[x] as TDbEdit).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Ped.Components[x] as TDbEdit).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Ped.Components[x] as TDbEdit).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Ped.Components[x] as TDbEdit).Enabled, // enabled
                (Frm_Ped.Components[x] as TDbEdit).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Ped.Components[x] as TDbEdit).Text, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Ped.Components[x] as TDbEdit).Font.Name,
                (Frm_Ped.Components[x] as TDbEdit).Hint);


      end
   else if LowerCase(Frm_Ped.Components[x].ClassName)='tlistbox' then
      begin
      with Frm_ConfForm do
         begin
         mListBox   := TListBox.Create(Frm_ConfForm);
         mListBox.Font     := (Frm_Ped.Components[x] as TListBox).Font;
         mListBox.Color := (Frm_Ped.Components[x] as TListBox).Color;
         mListBox.OnDblClick:=Frm_ConfForm.GeralClick;
         mListBox.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mListBox.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mListBox.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;

         if lowercase( (Frm_Ped.Components[x] as TListBox).Parent.Name)='frm_ped' then
            mListBox.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TListBox).Parent.Name then
                  mListBox.Parent:=mWinControl[mcla];
               end;
         mListBox.Name     :=Frm_Ped.Components[x].Name;
//         mListBox. Caption  :=(Frm_Ped.Components[x] as tListBox).Caption;
         mListBox.SetBounds( (Frm_Ped.Components[x] as TListBox).Left,
                           (Frm_Ped.Components[x] as TListBox).Top,
                           (Frm_Ped.Components[x] as TListBox).Width,
                           (Frm_Ped.Components[x] as TListBox).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as TListBox).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;
      case (Frm_Ped.Components[x] as TListBox).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;

      case (Frm_Ped.Components[x] as TListBox).BevelKind of
         bkFlat    : mBevelKind:=0;
         bkNone    : mBevelKind:=1;
         bkSoft    : mBevelKind:=2;
         bkTile    : mBevelKind:=3;
         end;

      case (Frm_Ped.Components[x] as TListBox).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;

      case (Frm_Ped.Components[x] as TListBox).BorderStyle of
         bsNone    : mBorderStyle:=0;
         bsSingle  : mBorderStyle:=1;
         end;


       case (Frm_Ped.Components[x] as TListBox).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;



       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as TListbox).Width, // tamanho
                (Frm_Ped.Components[x] as TListbox).Height, // tamanho
                (Frm_Ped.Components[x] as TListbox).Top, //  top
                (Frm_Ped.Components[x] as TListbox).Left, // left
                (Frm_Ped.Components[x] as TListbox).TabOrder, // order
                0, // index
                (Frm_Ped.Components[x] as TListbox).Font.Color, // font_color
                (Frm_Ped.Components[x] as TListbox).Font.Height, // font_heigth
                (Frm_Ped.Components[x] as TListbox).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Ped.Components[x] as TListbox).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Ped.Components[x] as TListbox).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Ped.Components[x] as TListbox).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Ped.Components[x] as TListbox).Enabled, // enabled
                (Frm_Ped.Components[x] as TListbox).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                '', // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Ped.Components[x] as TListbox).Font.Name,
                (Frm_Ped.Components[x] as TListbox).Hint);

      end
   else if LowerCase(Frm_Ped.Components[x].ClassName)='tstatictext' then
      begin
      with Frm_ConfForm do
         begin
         mStaticText           := TStaticText.Create(Frm_ConfForm);
         mStaticText.Font      := (Frm_Ped.Components[x] as TStaticText).Font;
         mStaticText.Color     := (Frm_Ped.Components[x] as TStaticText).Color;
         mStaticText.OnDblClick:=Frm_ConfForm.GeralClick;
         mStaticText.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mStaticText.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mStaticText.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Ped.Components[x] as TStaticText).Parent.Name)='frm_ped' then
            mStaticText.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TStaticText).Parent.Name then
                  mStaticText.Parent:=mWinControl[mcla];
               end;
         mStaticText.Name     :=Frm_Ped.Components[x].Name;
         mStaticText.Font     :=(Frm_Ped.Components[x] as TStaticText).Font;
         mStaticText.Color    :=(Frm_Ped.Components[x] as TStaticText).Color;
         mStaticText.BorderStyle:=(Frm_Ped.Components[x] as TStaticText).BorderStyle;

         mStaticText.Caption  :=(Frm_Ped.Components[x] as tStaticText).Caption;
         mStaticText.SetBounds( (Frm_Ped.Components[x] as TStaticText).Left,
                           (Frm_Ped.Components[x] as TStaticText).Top,
                           (Frm_Ped.Components[x] as TStaticText).Width,
                           (Frm_Ped.Components[x] as TStaticText).Height );

         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as TStaticText).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

      case (Frm_Ped.Components[x] as TStaticText).BevelInner of
         bvLowered : mBevelInner:=0;
         bvNone    : mBevelInner:=1;
         bvRaised  : mBevelInner:=2;
         bvSpace   : mBevelInner:=3;
         end;

      case (Frm_Ped.Components[x] as TStaticText).BevelKind of
         bkFlat    : mBevelKind:=0;
         bkNone    : mBevelKind:=1;
         bkSoft    : mBevelKind:=2;
         bkTile    : mBevelKind:=3;
         end;

      case (Frm_Ped.Components[x] as TStaticText).BevelOuter of
         bvLowered : mBevelOuter:=0;
         bvNone    : mBevelOuter:=1;
         bvRaised  : mBevelOuter:=2;
         bvSpace   : mBevelOuter:=3;
         end;

      case (Frm_Ped.Components[x] as TStaticText).BorderStyle of
         sbsNone   : mBorderStyle:=0;
         sbsSingle : mBorderStyle:=1;
         sbsSunken : mBorderStyle:=2;
         end;

       case (Frm_Ped.Components[x] as TStaticText).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;


       case (Frm_Ped.Components[x] as TStaticText).Alignment of
          taCenter      : mAlignment:=0;
          taLeftJustify : mAlignment:=1;
          taRightJustify: mAlignment:=2;
          end;

       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as TStatictext).Width, // tamanho
                (Frm_Ped.Components[x] as TStatictext).Height, // tamanho
                (Frm_Ped.Components[x] as TStatictext).Top, //  top
                (Frm_Ped.Components[x] as TStatictext).Left, // left
                (Frm_Ped.Components[x] as TStatictext).TabOrder, // order
                0, // index
                (Frm_Ped.Components[x] as TStatictext).Font.Color, // font_color
                (Frm_Ped.Components[x] as TStatictext).Font.Height, // font_heigth
                (Frm_Ped.Components[x] as TStatictext).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Ped.Components[x] as TStatictext).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Ped.Components[x] as TStatictext).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                true, // enabled
                false, // fontstrikeout
                (Frm_Ped.Components[x] as TStatictext).Enabled, // enabled
                (Frm_Ped.Components[x] as TStatictext).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Ped.Components[x] as TStatictext).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Ped.Components[x] as TStatictext).Font.Name,
                (Frm_Ped.Components[x] as TStatictext).Hint);


      end
   else if LowerCase(Frm_Ped.Components[x].ClassName)='tradiogroup' then
      begin
      with Frm_ConfForm do
         begin
         mRadioGroup       := TRadioGroup.Create(Frm_ConfForm);
         mRadioGroup.Font  := (Frm_Ped.Components[x] as TRadioGroup).Font;
         mRadioGroup.Color := (Frm_Ped.Components[x] as TRadioGroup).Color;
         mRadioGroup.OnClick:=Frm_ConfForm.GeralClick;
//         mRadioGroup.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
//         mRadioGroup.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
//         mRadioGroup.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;

         if lowercase( (Frm_Ped.Components[x] as TRadioGroup).Parent.Name)='frm_ped' then
            mRadioGroup.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TRadioGroup).Parent.Name then
                  mRadioGroup.Parent:=mWinControl[mcla];
               end;
         mRadioGroup.Name     :=Frm_Ped.Components[x].Name;
         mRadioGroup.Caption  :=(Frm_Ped.Components[x] as tRadioGroup).Caption;
         mRadioGroup.SetBounds( (Frm_Ped.Components[x] as TRadioGroup).Left,
                           (Frm_Ped.Components[x] as TRadioGroup).Top,
                           (Frm_Ped.Components[x] as TRadioGroup).Width,
                           (Frm_Ped.Components[x] as TRadioGroup).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as TRadioGroup).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

       case (Frm_Ped.Components[x] as TRadioGroup).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;



       fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as TRadiogroup).Width, // tamanho
                (Frm_Ped.Components[x] as TRadiogroup).Height, // tamanho
                (Frm_Ped.Components[x] as TRadiogroup).Top, //  top
                (Frm_Ped.Components[x] as TRadiogroup).Left, // left
                (Frm_Ped.Components[x] as TRadiogroup).TabOrder, // order
                0, // index
                (Frm_Ped.Components[x] as TRadiogroup).Font.Color, // font_color
                (Frm_Ped.Components[x] as TRadiogroup).Font.Height, // font_heigth
                (Frm_Ped.Components[x] as TRadiogroup).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Ped.Components[x] as TRadiogroup).Color, // color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Ped.Components[x] as TRadiogroup).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Ped.Components[x] as TRadiogroup).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Ped.Components[x] as TRadiogroup).Enabled, // enabled
                (Frm_Ped.Components[x] as TRadiogroup).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Ped.Components[x] as TRadiogroup).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Ped.Components[x] as TRadiogroup).Font.Name,
                (Frm_Ped.Components[x] as TRadiogroup).Hint);

      end
   else if LowerCase(Frm_Ped.Components[x].ClassName)='tdbcheckbox' then
      begin
      with Frm_ConfForm do
         begin
         mDBCheckBox        := TDBCheckBox.Create(Frm_ConfForm);
         mDbCheckBox.Font   := (Frm_Ped.Components[x] as TDBCheckBox).Font;
         mDbCheckBox.Color  := (Frm_Ped.Components[x] as TDBCheckBox).Color;
         mDbCheckBox.OnClick:=Frm_ConfForm.GeralClick;
         mDbCheckBox.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mDbCheckBox.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mDbCheckBox.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Ped.Components[x] as TDBCheckBox).Parent.Name)='frm_ped' then
            mDBCheckBox.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TDBCheckBox).Parent.Name then
                  mDbCheckBox.Parent:=mWinControl[mcla];
               end;
         mDBCheckBox.Name     :=Frm_Ped.Components[x].Name;
         mDBCheckBox.Caption  :=(Frm_Ped.Components[x] as TDBCheckBox).Caption;
         mDBCheckBox.SetBounds( (Frm_Ped.Components[x] as TDBCheckBox).Left,
                           (Frm_Ped.Components[x] as TDBCheckBox).Top,
                           (Frm_Ped.Components[x] as TDBCheckBox).Width,
                           (Frm_Ped.Components[x] as TDBCheckBox).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as TDbCheckBox).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

       case (Frm_Ped.Components[x] as TDBCheckBox).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;


         case (Frm_Ped.Components[x] as TDBCheckBox).Alignment of
            taLeftJustify : mAlignment:=0;
            taRightJustify: mAlignment:=1;
            end;


         fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as TDBCheckbox).Width, // tamanho
                (Frm_Ped.Components[x] as TDBCheckbox).Height, // tamanho
                (Frm_Ped.Components[x] as TDBCheckbox).Top, //  top
                (Frm_Ped.Components[x] as TDBCheckbox).Left, // left
                (Frm_Ped.Components[x] as TDBCheckbox).TabOrder, // order
                0, // index
                (Frm_Ped.Components[x] as TDBCheckbox).Font.Color, // font_color
                (Frm_Ped.Components[x] as TDBCheckbox).Font.Height, // font_heigth
                (Frm_Ped.Components[x] as TDBCheckbox).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Ped.Components[x] as TDBCheckbox).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Ped.Components[x] as TDBCheckbox).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Ped.Components[x] as TDBCheckbox).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Ped.Components[x] as TDBCheckbox).Enabled, // enabled
                (Frm_Ped.Components[x] as TDBCheckbox).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Ped.Components[x] as TDBCheckbox).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Ped.Components[x] as TDBCheckbox).Font.Name,
                (Frm_Ped.Components[x] as TDBCheckbox).Hint);
      end
   else if LowerCase(Frm_Ped.Components[x].ClassName)='tmemo' then
      begin
      with Frm_ConfForm do
         begin
         mMemo        := TMemo.Create(Frm_ConfForm);
         mMemo.Font   := (Frm_Ped.Components[x] as TMemo).Font;
         mMemo.Color  := (Frm_Ped.Components[x] as TMemo).Color;
         mMemo.OnClick:=Frm_ConfForm.GeralClick;
         mMemo.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mMemo.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mMemo.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Ped.Components[x] as TMemo).Parent.Name)='Frm_Ped' then
            mMemo.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TMemo).Parent.Name then
                  mMemo.Parent:=mWinControl[mcla];
               end;
         mMemo.Name     :=Frm_Ped.Components[x].Name;
         mMemo.Text    :=(Frm_Ped.Components[x] as TMemo).Text;
         mMemo.SetBounds( (Frm_Ped.Components[x] as TMemo).Left,
                           (Frm_Ped.Components[x] as TMemo).Top,
                           (Frm_Ped.Components[x] as TMemo).Width,
                           (Frm_Ped.Components[x] as TMemo).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as TMemo).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

       case (Frm_Ped.Components[x] as TMemo).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;


         case (Frm_Ped.Components[x] as TMemo).Alignment of
            taLeftJustify : mAlignment:=0;
            taRightJustify: mAlignment:=1;
            end;


         fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as TMemo).Width, // tamanho
                (Frm_Ped.Components[x] as TMemo).Height, // tamanho
                (Frm_Ped.Components[x] as TMemo).Top, //  top
                (Frm_Ped.Components[x] as TMemo).Left, // left
                (Frm_Ped.Components[x] as TMemo).TabOrder, // order
                0, // index
                (Frm_Ped.Components[x] as TMemo).Font.Color, // font_color
                (Frm_Ped.Components[x] as TMemo).Font.Height, // font_heigth
                (Frm_Ped.Components[x] as TMemo).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Ped.Components[x] as TMemo).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Ped.Components[x] as TMemo).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Ped.Components[x] as TMemo).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Ped.Components[x] as TMemo).Enabled, // enabled
                (Frm_Ped.Components[x] as TMemo).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Ped.Components[x] as TMemo).Text, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Ped.Components[x] as TMemo).Font.Name,
                (Frm_Ped.Components[x] as TMemo).Hint);

         end
   else if LowerCase(Frm_Ped.Components[x].ClassName)='tdbmemo' then
      begin
      with Frm_ConfForm do
         begin
         mDBMemo        := TDBMemo.Create(Frm_ConfForm);
         mDBMemo.Font   := (Frm_Ped.Components[x] as TDBMemo).Font;
         mDBMemo.Color  := (Frm_Ped.Components[x] as TDBMemo).Color;
         mDBMemo.OnClick:=Frm_ConfForm.GeralClick;
         mDBMemo.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mDBMemo.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mDBMemo.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Ped.Components[x] as TDBMemo).Parent.Name)='Frm_Ped' then
            mDBMemo.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TDBMemo).Parent.Name then
                  mDBMemo.Parent:=mWinControl[mcla];
               end;
         mDBMemo.Name     :=Frm_Ped.Components[x].Name;
         mDBMemo.Text    :=(Frm_Ped.Components[x] as TDBMemo).Text;
         mDBMemo.SetBounds( (Frm_Ped.Components[x] as TDBMemo).Left,
                           (Frm_Ped.Components[x] as TDBMemo).Top,
                           (Frm_Ped.Components[x] as TDBMemo).Width,
                           (Frm_Ped.Components[x] as TDBMemo).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as TDBMemo).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

       case (Frm_Ped.Components[x] as TDBMemo).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;


         case (Frm_Ped.Components[x] as TDBMemo).Alignment of
            taLeftJustify : mAlignment:=0;
            taRightJustify: mAlignment:=1;
            end;


         fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as TDBMemo).Width, // tamanho
                (Frm_Ped.Components[x] as TDBMemo).Height, // tamanho
                (Frm_Ped.Components[x] as TDBMemo).Top, //  top
                (Frm_Ped.Components[x] as TDBMemo).Left, // left
                (Frm_Ped.Components[x] as TDBMemo).TabOrder, // order
                0, // index
                (Frm_Ped.Components[x] as TDBMemo).Font.Color, // font_color
                (Frm_Ped.Components[x] as TDBMemo).Font.Height, // font_heigth
                (Frm_Ped.Components[x] as TDBMemo).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Ped.Components[x] as TDBMemo).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Ped.Components[x] as TDBMemo).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Ped.Components[x] as TDBMemo).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Ped.Components[x] as TDBMemo).Enabled, // enabled
                (Frm_Ped.Components[x] as TDBMemo).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Ped.Components[x] as TDBMemo).Text, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Ped.Components[x] as TDBMemo).Font.Name,
                (Frm_Ped.Components[x] as TDBMemo).Hint);

         end
   else if LowerCase(Frm_Ped.Components[x].ClassName)='tstringgrid' then
      begin
      with Frm_ConfForm do
         begin
         mStringGrid        := TStringGrid.Create(Frm_ConfForm);
         mStringGrid.Font   := (Frm_Ped.Components[x] as TStringGrid).Font;
         mStringGrid.Color  := (Frm_Ped.Components[x] as TStringGrid).Color;
         mStringGrid.OnClick:=Frm_ConfForm.GeralClick;
         mStringGrid.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mStringGrid.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mStringGrid.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;


         if lowercase( (Frm_Ped.Components[x] as TStringGrid).Parent.Name)='Frm_Ped' then
            mStringGrid.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as TStringGrid).Parent.Name then
                  mStringGrid.Parent:=mWinControl[mcla];
               end;
         mStringGrid.Name     :=Frm_Ped.Components[x].Name;
         mStringGrid.SetBounds( (Frm_Ped.Components[x] as TStringGrid).Left,
                           (Frm_Ped.Components[x] as TStringGrid).Top,
                           (Frm_Ped.Components[x] as TStringGrid).Width,
                           (Frm_Ped.Components[x] as TStringGrid).Height );
         end;
      Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as TStringGrid).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

       case (Frm_Ped.Components[x] as TStringGrid).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;




         fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as TStringGrid).Width, // tamanho
                (Frm_Ped.Components[x] as TStringGrid).Height, // tamanho
                (Frm_Ped.Components[x] as TStringGrid).Top, //  top
                (Frm_Ped.Components[x] as TStringGrid).Left, // left
                (Frm_Ped.Components[x] as TStringGrid).TabOrder, // order
                0, // index
                (Frm_Ped.Components[x] as TStringGrid).Font.Color, // font_color
                (Frm_Ped.Components[x] as TStringGrid).Font.Height, // font_heigth
                (Frm_Ped.Components[x] as TStringGrid).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Ped.Components[x] as TStringGrid).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Ped.Components[x] as TStringGrid).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Ped.Components[x] as TStringGrid).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Ped.Components[x] as TStringGrid).Enabled, // enabled
                (Frm_Ped.Components[x] as TStringGrid).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                ' ', // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Ped.Components[x] as TStringGrid).Font.Name,
                (Frm_Ped.Components[x] as TStringGrid).Hint);

         end
   else if LowerCase(Frm_Ped.Components[x].ClassName)='tcheckbox' then
      begin
      with Frm_ConfForm do
         begin
         mcheckbox        := Tcheckbox.Create(Frm_ConfForm);
         mcheckbox.Font   := (Frm_Ped.Components[x] as Tcheckbox).Font;
         mcheckbox.Color  := (Frm_Ped.Components[x] as Tcheckbox).Color;
         mcheckbox.OnClick:=Frm_ConfForm.GeralClick;
         mcheckbox.OnMouseDown:=Frm_ConfForm.MouseDownGeral;
         mcheckbox.OnMouseMove:=Frm_ConfForm.MouseMoveGeral;
         mcheckbox.OnMouseUp  :=Frm_ConfForm.MouseUpGeral;
         if lowercase( (Frm_Ped.Components[x] as Tcheckbox).Parent.Name)='Frm_Ped' then
            mcheckbox.Parent:=Frm_ConfForm
         else
            for mcla:=0 to high(mWinControl) do
               begin
               if mWinControl[mcla].Name=(Frm_Ped.Components[x] as Tcheckbox).Parent.Name then
                  mcheckbox.Parent:=mWinControl[mcla];
               end;
            mcheckbox.Name     :=Frm_Ped.Components[x].Name;
            mcheckbox.Caption  :=(Frm_Ped.Components[x] as Tcheckbox).Caption;
            mcheckbox.SetBounds( (Frm_Ped.Components[x] as Tcheckbox).Left,
                           (Frm_Ped.Components[x] as Tcheckbox).Top,
                           (Frm_Ped.Components[x] as Tcheckbox).Width,
                           (Frm_Ped.Components[x] as Tcheckbox).Height );
            end;
       Frm_PerForm.STG1.Cells[02,mlin]:= (Frm_Ped.Components[x] as Tcheckbox).Parent.Name;
       mCharCase   :=-1;
       mBevelInner :=-1;
       mBevelKind  :=-1;
       mBevelOuter :=-1;
       mBevelWidth :=-1;
       mBorderStyle:=-1;
       mAlign      :=-1;
       mAlignment  :=-1;
       mAlign:=-1;

       case (Frm_Ped.Components[x] as Tcheckbox).Align of
          alBottom     : mAlign:=0;
          alClient     : mAlign:=1;
          alCustom     : mAlign:=2;
          alLeft       : mAlign:=3;
          alNone       : mAlign:=4;
          alRight      : mAlign:=5;
          alTop        : mAlign:=6;
          end;


         case (Frm_Ped.Components[x] as Tcheckbox).Alignment of
            taLeftJustify : mAlignment:=0;
            taRightJustify: mAlignment:=1;
            end;


         fPerformCriaTmp(0, // ptipo
                Frm_ConfForm.ComponentCount-1,
                (Frm_Ped.Components[x] as Tcheckbox).Width, // tamanho
                (Frm_Ped.Components[x] as Tcheckbox).Height, // tamanho
                (Frm_Ped.Components[x] as Tcheckbox).Top, //  top
                (Frm_Ped.Components[x] as Tcheckbox).Left, // left
                (Frm_Ped.Components[x] as Tcheckbox).TabOrder, // order
                0, // index
                (Frm_Ped.Components[x] as Tcheckbox).Font.Color, // font_color
                (Frm_Ped.Components[x] as Tcheckbox).Font.Height, // font_heigth
                (Frm_Ped.Components[x] as Tcheckbox).Font.Size, // font_heigth
                mBevelInner, // bevel inner
                mBevelKind, // bevel kind
                mBevelOuter, // bevel outer
                mBevelWidth, // bevel width
                mBorderStyle, // border style
                mCharCase, // charcase
                (Frm_Ped.Components[x] as Tcheckbox).Color, // font_color
                mAlign, // palign
                mAlignment, // palignment
                (Frm_Ped.Components[x] as Tcheckbox).Visible, // visivel
                false, // fontfsBold
                false, // fontfsItalic
                false, // fontunderline
                (Frm_Ped.Components[x] as Tcheckbox).Ctl3D, // enabled
                false, // fontstrikeout
                (Frm_Ped.Components[x] as Tcheckbox).Enabled, // enabled
                (Frm_Ped.Components[x] as Tcheckbox).ShowHint, // showhint
                UpperCase(Frm_ConfForm.Name), // nome do fomulario
                Frm_PerForm.STG1.Cells[00,mlin], // nomeComp
                Frm_PerForm.STG1.Cells[01,mlin], // pClasse
                (Frm_Ped.Components[x] as Tcheckbox).Caption, // caption
                Frm_PerForm.STG1.Cells[02,mlin], // parent_nome
                (Frm_Ped.Components[x] as Tcheckbox).Font.Name,
                (Frm_Ped.Components[x] as Tcheckbox).Hint);
      end;
      end;
// verifiando somente o parent name
   end;

// TERMINO ITEM 02

DM5.Query1.Close;
DM5.Query1.SQL.Clear;
DM5.Query1.SQL.Add('Insert into  '+mTabtemp2+' ( ');
DM5.Query1.SQL.Add('CODEMP');
DM5.Query1.SQL.Add(',NOMECOMP');
DM5.Query1.SQL.Add(',SEQUENCIA');
DM5.Query1.SQL.Add(',CLASSE');
DM5.Query1.SQL.Add(',TAMANHO');
DM5.Query1.SQL.Add(',HEIGHT');
DM5.Query1.SQL.Add(',TOP');
DM5.Query1.SQL.Add(',MLEFT');
DM5.Query1.SQL.Add(',VISIVEL');
DM5.Query1.SQL.Add(',CAPTION');
DM5.Query1.SQL.Add(',PARENT_NOME');
DM5.Query1.SQL.Add(',CAMPO_ORDER');
DM5.Query1.SQL.Add(',CAMPO_INDEX');
DM5.Query1.SQL.Add(',CAMPO_TABELA');
DM5.Query1.SQL.Add(',CAMPO_NOME');
DM5.Query1.SQL.Add(',CAMPO_TAMANHO');
DM5.Query1.SQL.Add(',CAMPO_DEC');
DM5.Query1.SQL.Add(',CAMPO_DESC');
DM5.Query1.SQL.Add(',FONT_COLOR');
DM5.Query1.SQL.Add(',FONT_HEIGHT');
DM5.Query1.SQL.Add(',FONT_SIZE');
DM5.Query1.SQL.Add(',FONT_NAME');
DM5.Query1.SQL.Add(',FONT_FSBOLD');
DM5.Query1.SQL.Add(',FONT_FSITALIC');
DM5.Query1.SQL.Add(',FONT_FTUNDERLINE');
DM5.Query1.SQL.Add(',FONT_STRIKEOUT');
DM5.Query1.SQL.Add(',NOMEFORM');
DM5.Query1.SQL.Add(',BEVELINNER');
DM5.Query1.SQL.Add(',BEVELKIND');
DM5.Query1.SQL.Add(',BEVELOUTER');
DM5.Query1.SQL.Add(',BEVELWIDTH');
DM5.Query1.SQL.Add(',BORDERSTYLE');
DM5.Query1.SQL.Add(',CHARCASE');
DM5.Query1.SQL.Add(',COLOR');
DM5.Query1.SQL.Add(',CTL3D');
DM5.Query1.SQL.Add(',ENABLED');
DM5.Query1.SQL.Add(',SHOWHINT');
DM5.Query1.SQL.Add(',ALIGN');
DM5.Query1.SQL.Add(',ALIGNMENT');
DM5.Query1.SQL.Add(',HINT )');

DM5.Query1.SQL.Add(' Select ');
DM5.Query1.SQL.Add('CODEMP');
DM5.Query1.SQL.Add(',NOMECOMP');
DM5.Query1.SQL.Add(',SEQUENCIA');
DM5.Query1.SQL.Add(',CLASSE');
DM5.Query1.SQL.Add(',TAMANHO');
DM5.Query1.SQL.Add(',HEIGHT');
DM5.Query1.SQL.Add(',TOP');
DM5.Query1.SQL.Add(',MLEFT');
DM5.Query1.SQL.Add(',VISIVEL');
DM5.Query1.SQL.Add(',CAPTION');
DM5.Query1.SQL.Add(',PARENT_NOME');
DM5.Query1.SQL.Add(',CAMPO_ORDER');
DM5.Query1.SQL.Add(',CAMPO_INDEX');
DM5.Query1.SQL.Add(',CAMPO_TABELA');
DM5.Query1.SQL.Add(',CAMPO_NOME');
DM5.Query1.SQL.Add(',CAMPO_TAMANHO');
DM5.Query1.SQL.Add(',CAMPO_DEC');
DM5.Query1.SQL.Add(',CAMPO_DESC');
DM5.Query1.SQL.Add(',FONT_COLOR');
DM5.Query1.SQL.Add(',FONT_HEIGHT');
DM5.Query1.SQL.Add(',FONT_SIZE');
DM5.Query1.SQL.Add(',FONT_NAME');
DM5.Query1.SQL.Add(',FONT_FSBOLD');
DM5.Query1.SQL.Add(',FONT_FSITALIC');
DM5.Query1.SQL.Add(',FONT_FTUNDERLINE');
DM5.Query1.SQL.Add(',FONT_STRIKEOUT');
DM5.Query1.SQL.Add(',NOMEFORM');
DM5.Query1.SQL.Add(',BEVELINNER');
DM5.Query1.SQL.Add(',BEVELKIND');
DM5.Query1.SQL.Add(',BEVELOUTER');
DM5.Query1.SQL.Add(',BEVELWIDTH');
DM5.Query1.SQL.Add(',BORDERSTYLE');
DM5.Query1.SQL.Add(',CHARCASE');
DM5.Query1.SQL.Add(',COLOR');
DM5.Query1.SQL.Add(',CTL3D');
DM5.Query1.SQL.Add(',ENABLED');
DM5.Query1.SQL.Add(',SHOWHINT');
DM5.Query1.SQL.Add(',ALIGN');
DM5.Query1.SQL.Add(',ALIGNMENT');
DM5.Query1.SQL.Add(',HINT');
DM5.Query1.SQL.Add(' from '+mTabtemp);
try
   DM5.Query1.ExecSQL;
except
   MessageDlg('Erro ao Incluir os registros do CADCPN',mtError,[mbOk],0);
   end;

// termino do parent name
Application.CreateForm(TFrm_AjustaComp, Frm_AjustaComp);


if not Frm_PerForm.cb_original.Checked then
   begin
   if ptipo=0 then
      Frm_PerForm.fRedirecionarComponentes('FRM_PRO')
   else if ptipo=1 then
      Frm_PerForm.fRedirecionarComponentes('FRM_CLI')
   else if ptipo=2 then
      Frm_PerForm.fRedirecionarComponentes('FRM_PED');


   end;


pAtualizaComponente:=true;
DM5.Query1.Close;
DM5.Query1.SQL.Clear;
DM5.Query1.SQL.Add('Select Parent_Nome from '+mTabtemp
                  +' group by Parent_nome ');
DM5.Query1.Open;
Frm_AjustaComp.DBCb_parent.Items.Clear;
While not DM5.Query1.Eof do
   begin
   Frm_AjustaComp.DBCb_parent.Items.Add(DM5.Query1.Fields[0].AsString);
   DM5.Query1.Next;
   end;
Frm_Pro.Free;
Frm_Pro:=nil;
Frm_ConfForm.ShowModal;

{
fPerformCriaTmp(0, // ptipo
                0, // sequencia
                Frm_ConfForm.Width, // tamanho
                Frm_ConfForm.Top, //  top
                Frm_ConfForm.Left, // left
                0, // order
                0, // index
                true, // visivel
                'FRM_PRO', // nome do componente
                Frm_ConfForm.ClassName, //nome da classe
                Frm_ConfForm.Caption, // caption
                ''// parent_nome
                );
}

Frm_ConfForm.Free;
Frm_ConfForm:=nil;
Frm_AjustaComp.Free;
Frm_AjustaComp:=nil;


end;


procedure TFrm_PerForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
Tb_Componentes.Close;
try
   Tb_Componentes.DeleteTable;
except
   end;
Tb_Padrao.Close;
try
   Tb_Padrao.DeleteTable;
except
   end;

mTabtemp:='';
mredirecionaFormPro:=true;

end;


function fPerformCriaTmp(pTipo,pSequencia,pTamanho,pHeight,pTop,pLeft,pFont_Order
                        ,pFont_Index,pFont_Color,pfont_height
                        ,pfont_size,pbevelinner,pbevelKind,pbevelOuter,pbevelwidth
                        ,pborderstyle,pCharCase,pColor,
                        pAlign,pAlignment :Integer;
                        pVisivel,pfont_fsbold,pfont_fsitalic,pfont_ftunderline,
                        pCtl3D,pfont_strikeout,pEnabled,pShowHint: Boolean;
                        pNomeForm,pNomeComp,pClasse,pCaption,pParent_Nome, pfont_name
                        ,Hint: String): Boolean;

begin

if ptipo=0 then
   begin
   Frm_PerForm.Tb_Componentes.Append;
   Frm_PerForm.Tb_ComponentesSequencia.Value  :=Frm_ConfForm.ComponentCount-1;
   end
else
   begin
   Frm_PerForm.Tb_Componentes.Edit;
   Frm_PerForm.Tb_ComponentesSequencia.Value  :=pSequencia;
   end;
//                       x, // psequencia

Frm_PerForm.Tb_ComponentesNomeComp.Value        :=pNomeComp;
Frm_PerForm.Tb_ComponentesClasse.Value          :=pClasse;
Frm_PerForm.Tb_ComponentesTamanho.Value         :=pTamanho;
Frm_PerForm.Tb_ComponentesHeight.Value          :=pHeight;
Frm_PerForm.Tb_ComponentesTop.Value             :=pTop;
Frm_PerForm.Tb_ComponentesmLeft.Value           :=pLeft;
Frm_PerForm.Tb_ComponentesCaption.Value         :=pCaption;
if trim(pParent_Nome)<>'' then
   Frm_PerForm.Tb_ComponentesParent_Nome.Value     :=pParent_Nome;
Frm_PerForm.Tb_Componentescampo_order.Value     :=pFont_Order;
Frm_PerForm.Tb_Componentescampo_index.Value     :=pFont_Index;
Frm_PerForm.Tb_Componentescodemp.Value          :=codemp;
Frm_PerForm.Tb_ComponentesNomeForm.Value        :=mNomeForm;
Frm_PerForm.Tb_Componentesfont_color.Value      :=pFont_Color;
Frm_PerForm.Tb_Componentesfont_height.Value     :=pfont_height;
Frm_PerForm.Tb_Componentesfont_size.Value       :=pfont_size;
Frm_PerForm.Tb_Componentesbevelinner.Value      :=pbevelinner;
Frm_PerForm.Tb_ComponentesbevelKind.Value       :=pbevelKind;
Frm_PerForm.Tb_ComponentesbevelOuter.Value      :=pbevelOuter;
Frm_PerForm.Tb_Componentesbevelwidth.Value      :=pbevelwidth;
Frm_PerForm.Tb_Componentesborderstyle.Value     :=pborderstyle;
Frm_PerForm.Tb_ComponentesCharCase.Value        :=pCharCase;
Frm_PerForm.Tb_ComponentesColor.Value           :=pColor;
Frm_PerForm.Tb_ComponentesAlign.Value           :=pAlign;
Frm_PerForm.Tb_ComponentesAlignment.Value       :=pAlignment;
Frm_PerForm.Tb_ComponentesVisivel.Value         :=iif(pVisivel,0,1);
Frm_PerForm.Tb_Componentesfont_fsbold.Value     :=iif(pfont_fsbold,0,1);
Frm_PerForm.Tb_Componentesfont_fsitalic.Value   :=iif(pfont_fsitalic,0,1);
Frm_PerForm.Tb_Componentesfont_ftunderline.Value:=iif(pfont_ftunderline,0,1);
Frm_PerForm.Tb_ComponentesCtl3D.Value           :=iif(pCtl3D,0,1);
Frm_PerForm.Tb_Componentesfont_strikeout.Value  :=iif(pfont_strikeout,0,1);
Frm_PerForm.Tb_ComponentesEnabled.Value         :=iif(pEnabled,0,1);
Frm_PerForm.Tb_ComponentesShowHint.Value        :=iif(pShowHint,0,1);
Frm_PerForm.Tb_Componentesfont_name.Value       :=pfont_name;
Frm_PerForm.Tb_ComponentesHint.Value            :=Hint;
Frm_PerForm.Tb_Componentes.Post;
mSequencia:=mSequencia+1;
result:=true;



end;

procedure TFrm_PerForm.Tb_ComponentesAfterEdit(DataSet: TDataSet);
begin
mOperComp:=1;
if Tb_Componentescampo_order.IsNull then
   mOrdem_ant :=-1
else
   mOrdem_ant :=Tb_Componentescampo_order.AsInteger;
if Tb_ComponentesParent_Nome.IsNull then
   mParent_ant:=''
else
   mParent_ant :=Tb_ComponentesParent_Nome.AsString;


end;

procedure TFrm_PerForm.Tb_ComponentesAfterPost(DataSet: TDataSet);
var
mTopNov: Integer;
mLeftNov: Integer;
mrefresch: boolean;
mNovaOrdem: Integer;
begin

mrefresch:=false;
if mValidaPost then
   begin
   if Tb_ComponentesSequencia.AsInteger>0 then
      fMarCaDesmarcaCompontente(1,Tb_ComponentesSequencia.AsInteger,Tb_ComponentesClasse.AsString);

   if mOperComp=1 then
      begin
      mTopNov:=Tb_ComponentesTop.AsInteger;
      mLeftNov:=Tb_ComponentesmLeft.AsInteger;
      if (mParent_ant<>Tb_ComponentesParent_Nome.Value) then
         begin
         mOrdem_ant:=9999999;
         DM5.Query2.Close;
         DM5.Query2.SQL.Clear;
         DM5.Query2.SQL.Add('Select tb.Tamanho,tb.height,tb.top,tb.mleft from '+mTabtemp+' tb'
                           +' where tb.nomecomp='+chr(39)+Tb_ComponentesParent_Nome.Value+chr(39));
         DM5.Query2.Open;
         if not DM5.Query2.Eof then
            begin
            if (Tb_ComponentesTop.AsInteger<0) or (Tb_ComponentesTop.AsInteger>DM5.Query2.FieldByName('top').AsInteger) then
               mTopNov:=0;
            if (Tb_ComponentesmLeft.AsInteger<0) or (Tb_ComponentesmLeft.AsInteger>DM5.Query2.FieldByName('mleft').AsInteger) then
               mLeftNov:=0;
            end;
         end;
      if (mTopNov<>Tb_ComponentesTop.AsInteger) or
         (mLeftNov<>Tb_ComponentesmLeft.AsInteger) then
         begin
         DM5.Query1.Close;
         DM5.Query1.SQL.Clear;
         DM5.Query1.SQL.Add('Update '+mTabtemp+' set mLeft='+Inttostr(mLeftNov)
                           +', top='+Inttostr(mTopNov)+' where nomecomp='+chr(39)+Tb_ComponentesNomeComp.Value+chr(39));
         try
            DM5.Query1.ExecSQL;
            mrefresch:=true;
         except
            MessageDlg('Erro 1270 ao atualizar tabela',mtError,[mbOk],0);
           end;
         end;
      if mOrdem_ant<>Tb_Componentescampo_order.AsInteger then
         begin
         if (LowerCase(Tb_ComponentesClasse.Value)<>'ttabsheet') and
            (LowerCase(Tb_ComponentesClasse.Value)<>'tlabel') and
            (LowerCase(Tb_ComponentesClasse.Value)<>'tbevel') and
            (LowerCase(Tb_ComponentesClasse.Value)<>'tdbtext') then
            begin
            DM5.Query1.Close;
            DM5.Query1.SQL.Clear;
            DM5.Query1.SQL.Add('Select tb.nomecomp,tb.campo_order,tb.Tamanho,tb.height,tb.top,tb.mleft from '+mTabtemp+' tb'
                              +' where tb.Parent_Nome='+chr(39)+Tb_ComponentesParent_Nome.Value+chr(39)
                              +' and tb.nomecomp<>'+chr(39)+Tb_ComponentesNomeComp.Value+chr(39)
                              +' and tb.Campo_order='+Tb_Componentescampo_order.AsString);
            DM5.Query1.Open;
            if not DM5.Query1.Eof then
               begin
               DM5.Query2.Close;
               DM5.Query2.SQL.Clear;
               DM5.Query2.SQL.Add('Select tb.nomecomp,tb.campo_order,tb.Tamanho,tb.height,tb.top,tb.mleft from '+mTabtemp+' tb'
                                 +' where tb.Parent_Nome='+chr(39)+Tb_ComponentesParent_Nome.Value+chr(39)
                                 +' and tb.nomecomp<>'+chr(39)+Tb_ComponentesNomeComp.Value+chr(39)
                                 +' and tb.Campo_order>='+Tb_Componentescampo_order.AsString
                                 +' order by tb.Campo_Order ');
               DM5.Query2.Open;
               mrefresch:=true;
               mNovaOrdem:=Tb_Componentescampo_order.AsInteger;
               While not DM5.Query2.Eof do
                  begin
                  mNovaOrdem:=mNovaOrdem+1;
                  DM5.Query1.Close;
                  DM5.Query1.SQL.Clear;
                  DM5.Query1.SQL.Add('Update '+mTabtemp+' set Campo_Order='+Inttostr(mNovaOrdem)
                                    +' where nomecomp='+chr(39)+DM5.Query2.FieldbyName('NomeComp').AsString+chr(39));
                  try
                     DM5.Query1.ExecSQL;
                  except
                     MessageDlg('Erro 1313 ao atualizar tabela',mtError,[mbOk],0);
                     end;
                  DM5.Query2.Next;
                  end;
               end;
            end;
         end;
      if mrefresch then
         begin
         mOrdem_ant :=-1;
         mParent_ant:='';
         Tb_Componentes.Refresh;
         fAtualizarComponentes(0);
         end;
      end;
   end;
end;

procedure TFrm_PerForm.Tb_ComponentesAfterCancel(DataSet: TDataSet);
begin
mOperComp:=0;
end;

procedure TFrm_PerForm.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_PerForm.bbSalvarClick(Sender: TObject);
var
x: Integer;
begin
if fmensagem('Quer Realmente Salvar as configuraçoes?',0,['1','2'],2)<>mrYes then
   exit;
bbSalvar.Enabled:=false;
DM1.Query1.Close;
DM1.query1.Sql.clear;
DM1.Query1.sql.add('Delete from CADCPN where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADCPN',[]),'',' CP_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' CP_NOMEFORM='+chr(39)+mNomeForm+chr(39));
try
   DM1.Query1.execSql;
except
   end;
if Tb_Padrao.Active then Tb_Padrao.Close;
Frm_PerForm.Tb_Componentes.IndexName:='CADCOMP_Sequencia';
if Tb_Componentes.Active then Tb_Componentes.Close;
Tb_Componentes.Filter  :='';
Tb_Componentes.Filtered:=false;
mBloqueiaChange:=true;
{
Tb_Componentes.Open;

Tb_Padrao.Open;

While not Tb_Padrao.Eof do
   begin
  if Tb_Componentes.Locate('nomecomp',Tb_PadraoNomeComp.Value,[]) then
      begin
      if (Frm_PerForm.Tb_ComponentesTamanho.Value         =Tb_PadraoTamanho.Value) and
         (Frm_PerForm.Tb_ComponentesHeight.Value          =Tb_PadraoHEIGHT.Value) and
         (Frm_PerForm.Tb_ComponentesTOP.Value             =Tb_PadraoTOP.Value) and
         (Frm_PerForm.Tb_ComponentesMLEFT.Value           =Tb_PadraoMLEFT.Value) and
         (Frm_PerForm.Tb_ComponentesVISIVEL.Value         =Tb_PadraoVISIVEL.Value) and
         (Frm_PerForm.Tb_ComponentesCAPTION.Value         =Tb_PadraoCAPTION.Value) and
         (Frm_PerForm.Tb_ComponentesPARENT_NOME.Value     =Tb_PadraoPARENT_NOME.Value) and
         (Frm_PerForm.Tb_ComponentesCAMPO_ORDER.Value     =Tb_PadraoCAMPO_ORDER.Value) and
         (Frm_PerForm.Tb_ComponentesCAMPO_INDEX.Value     =Tb_PadraoCAMPO_INDEX.Value) and
         (Frm_PerForm.Tb_ComponentesColor.Value           =Tb_PadraoColor.Value) and
         (Frm_PerForm.Tb_ComponentesFONT_COLOR.Value      =Tb_PadraoFONT_COLOR.Value) and
         (Frm_PerForm.Tb_ComponentesFONT_HEIGHT.Value     =Tb_PadraoFONT_HEIGHT.Value) and
         (Frm_PerForm.Tb_ComponentesFONT_SIZE.Value       =Tb_PadraoFONT_SIZE.Value) and
         (Frm_PerForm.Tb_ComponentesFONT_NAME.Value       =Tb_PadraoFONT_NAME.Value) and
         (Frm_PerForm.Tb_ComponentesFONT_FSBOLD.Value     =Tb_PadraoFONT_FSBOLD.Value) and
         (Frm_PerForm.Tb_ComponentesFONT_FSITALIC.Value   =Tb_PadraoFONT_FSITALIC.Value) and
         (Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.Value=Tb_PadraoFONT_FTUNDERLINE.Value) and
         (Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.Value  =Tb_PadraoFONT_STRIKEOUT.Value) and
         (Frm_PerForm.Tb_ComponentesBEVELINNER.Value      =Tb_PadraoBEVELINNER.Value) and
         (Frm_PerForm.Tb_ComponentesBEVELKIND.Value       =Tb_PadraoBEVELKIND.Value) and
         (Frm_PerForm.Tb_ComponentesBEVELOUTER.Value      =Tb_PadraoBEVELOUTER.Value) and
         (Frm_PerForm.Tb_ComponentesBEVELWIDTH.Value      =Tb_PadraoBEVELWIDTH.Value) and
         (Frm_PerForm.Tb_ComponentesBORDERSTYLE.Value     =Tb_PadraoBORDERSTYLE.Value) and
         (Frm_PerForm.Tb_ComponentesCHARCASE.Value        =Tb_PadraoCHARCASE.Value) and
         (Frm_PerForm.Tb_ComponentesCTL3D.Value           =Tb_PadraoCTL3D.Value) and
         (Frm_PerForm.Tb_ComponentesENABLED.Value         =Tb_PadraoENABLED.Value) and
         (Frm_PerForm.Tb_ComponentesSHOWHINT.Value        =Tb_PadraoSHOWHINT.Value) and
         (Frm_PerForm.Tb_ComponentesALIGN.Value           =Tb_PadraoALIGN.Value) and
         (Frm_PerForm.Tb_ComponentesALIGNMENT.Value       =Tb_PadraoALIGNMENT.Value) and
         (Frm_PerForm.Tb_ComponentesHINT.Value            =Tb_PadraoHINT.Value) then
         Tb_Componentes.Delete;
      end;
   Tb_Padrao.Next;
   end;
Tb_Padrao.Close;
}

Tb_Componentes.Close;
{
DM5.Query1.Close;
DM5.Query1.SQL.Clear;
DM5.Query1.SQL.Add('Insert into  ":SG_ASSOC:CADCPN" ( ');
DM5.Query1.SQL.Add('CP_CODEMP');
DM5.Query1.SQL.Add(',CP_NOMECOMP');
DM5.Query1.SQL.Add(',CP_SEQUENCIA');
DM5.Query1.SQL.Add(',CP_CLASSE');
DM5.Query1.SQL.Add(',CP_TAMANHO');
DM5.Query1.SQL.Add(',CP_HEIGHT');
DM5.Query1.SQL.Add(',CP_TOP');
DM5.Query1.SQL.Add(',CP_MLEFT');
DM5.Query1.SQL.Add(',CP_VISIVEL');
DM5.Query1.SQL.Add(',CP_PARENT_NOME');
DM5.Query1.SQL.Add(',CP_CAMPO_ORDER');
DM5.Query1.SQL.Add(',CP_CAMPO_INDEX');
DM5.Query1.SQL.Add(',CP_CAMPO_TABELA');
DM5.Query1.SQL.Add(',CP_CAMPO_NOME');
DM5.Query1.SQL.Add(',CP_CAMPO_TAMANHO');
DM5.Query1.SQL.Add(',CP_CAMPO_DEC');
DM5.Query1.SQL.Add(',CP_CAMPO_DESC');
DM5.Query1.SQL.Add(',CP_FONT_COLOR');
DM5.Query1.SQL.Add(',CP_FONT_HEIGHT');
DM5.Query1.SQL.Add(',CP_FONT_SIZE');
DM5.Query1.SQL.Add(',CP_FONT_NAME');
DM5.Query1.SQL.Add(',CP_FONT_FSBOLD');
DM5.Query1.SQL.Add(',CP_FONT_FSITALIC');
DM5.Query1.SQL.Add(',CP_FONT_FTUNDERLINE');
DM5.Query1.SQL.Add(',CP_FONT_STRIKEOUT');
DM5.Query1.SQL.Add(',CP_NOMEFORM');
DM5.Query1.SQL.Add(',CP_BEVELINNER');
DM5.Query1.SQL.Add(',CP_BEVELKIND');
DM5.Query1.SQL.Add(',CP_BEVELOUTER');
DM5.Query1.SQL.Add(',CP_BEVELWIDTH');
DM5.Query1.SQL.Add(',CP_BORDERSTYLE');
DM5.Query1.SQL.Add(',CP_CHARCASE');
DM5.Query1.SQL.Add(',CP_COLOR');
DM5.Query1.SQL.Add(',CP_CTL3D');
DM5.Query1.SQL.Add(',CP_ENABLED');
DM5.Query1.SQL.Add(',CP_SHOWHINT');
DM5.Query1.SQL.Add(',CP_ALIGN');
DM5.Query1.SQL.Add(',CP_ALIGNMENT');
DM5.Query1.SQL.Add(',CP_HINT ');
DM5.Query1.SQL.Add(',CP_CAPTION) ');

DM5.Query1.SQL.Add(' Select ');
DM5.Query1.SQL.Add('CODEMP');
DM5.Query1.SQL.Add(',NOMECOMP');
DM5.Query1.SQL.Add(',SEQUENCIA');
DM5.Query1.SQL.Add(',CLASSE');
DM5.Query1.SQL.Add(',TAMANHO');
DM5.Query1.SQL.Add(',HEIGHT');
DM5.Query1.SQL.Add(',TOP');
DM5.Query1.SQL.Add(',MLEFT');
DM5.Query1.SQL.Add(',VISIVEL');
DM5.Query1.SQL.Add(',PARENT_NOME');
DM5.Query1.SQL.Add(',CAMPO_ORDER');
DM5.Query1.SQL.Add(',CAMPO_INDEX');
DM5.Query1.SQL.Add(',CAMPO_TABELA');
DM5.Query1.SQL.Add(',CAMPO_NOME');
DM5.Query1.SQL.Add(',CAMPO_TAMANHO');
DM5.Query1.SQL.Add(',CAMPO_DEC');
DM5.Query1.SQL.Add(',CAMPO_DESC');
DM5.Query1.SQL.Add(',FONT_COLOR');
DM5.Query1.SQL.Add(',FONT_HEIGHT');
DM5.Query1.SQL.Add(',FONT_SIZE');
DM5.Query1.SQL.Add(',FONT_NAME');
DM5.Query1.SQL.Add(',FONT_FSBOLD');
DM5.Query1.SQL.Add(',FONT_FSITALIC');
DM5.Query1.SQL.Add(',FONT_FTUNDERLINE');
DM5.Query1.SQL.Add(',FONT_STRIKEOUT');
DM5.Query1.SQL.Add(',NOMEFORM');
DM5.Query1.SQL.Add(',BEVELINNER');
DM5.Query1.SQL.Add(',BEVELKIND');
DM5.Query1.SQL.Add(',BEVELOUTER');
DM5.Query1.SQL.Add(',BEVELWIDTH');
DM5.Query1.SQL.Add(',BORDERSTYLE');
DM5.Query1.SQL.Add(',CHARCASE');
DM5.Query1.SQL.Add(',COLOR');
DM5.Query1.SQL.Add(',CTL3D');
DM5.Query1.SQL.Add(',ENABLED');
DM5.Query1.SQL.Add(',SHOWHINT');
DM5.Query1.SQL.Add(',ALIGN');
DM5.Query1.SQL.Add(',ALIGNMENT');
DM5.Query1.SQL.Add(',HINT');
DM5.Query1.SQL.Add(',CAPTION');
DM5.Query1.SQL.Add(' from '+mTabtemp);
try
   DM5.Query1.ExecSQL;
except
   MessageDlg('Erro ao Incluir os registros do CADCPN',mtError,[mbOk],0);
   end;

}



DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'NOMECOMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'SEQUENCIA',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CLASSE',ptInput);
DM1.Query3.Params.CreateParam(ftString,'TAMANHO',ptInput);
DM1.Query3.Params.CreateParam(ftString,'HEIGHT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'TOP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'MLEFT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'VISIVEL',ptInput);
DM1.Query3.Params.CreateParam(ftString,'PARENT_NOME',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CAMPO_ORDER',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CAMPO_INDEX',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CAMPO_TABELA',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CAMPO_NOME',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CAMPO_TAMANHO',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CAMPO_DEC',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CAMPO_DESC',ptInput);
DM1.Query3.Params.CreateParam(ftString,'FONT_COLOR',ptInput);
DM1.Query3.Params.CreateParam(ftString,'FONT_HEIGHT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'FONT_SIZE',ptInput);
DM1.Query3.Params.CreateParam(ftString,'FONT_NAME',ptInput);
DM1.Query3.Params.CreateParam(ftString,'FONT_FSBOLD',ptInput);
DM1.Query3.Params.CreateParam(ftString,'FONT_FSITALIC',ptInput);
DM1.Query3.Params.CreateParam(ftString,'FONT_FTUNDERLINE',ptInput);
DM1.Query3.Params.CreateParam(ftString,'FONT_STRIKEOUT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'NOMEFORM',ptInput);
DM1.Query3.Params.CreateParam(ftString,'BEVELINNER',ptInput);
DM1.Query3.Params.CreateParam(ftString,'BEVELKIND',ptInput);
DM1.Query3.Params.CreateParam(ftString,'BEVELOUTER',ptInput);
DM1.Query3.Params.CreateParam(ftString,'BEVELWIDTH',ptInput);
DM1.Query3.Params.CreateParam(ftString,'BORDERSTYLE',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CHARCASE',ptInput);
DM1.Query3.Params.CreateParam(ftString,'COLOR',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CTL3D',ptInput);
DM1.Query3.Params.CreateParam(ftString,'ENABLED',ptInput);
DM1.Query3.Params.CreateParam(ftString,'SHOWHINT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'ALIGN',ptInput);
DM1.Query3.Params.CreateParam(ftString,'ALIGNMENT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'HINT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CAPTION',ptInput);

DM1.Query3.SQL.Add('Insert into  CADCPN ( ');
DM1.Query3.SQL.Add(' CP_CODEMP');
DM1.Query3.SQL.Add(',CP_NOMECOMP');
DM1.Query3.SQL.Add(',CP_SEQUENCIA');
DM1.Query3.SQL.Add(',CP_CLASSE');
DM1.Query3.SQL.Add(',CP_TAMANHO');
DM1.Query3.SQL.Add(',CP_HEIGHT');
DM1.Query3.SQL.Add(',CP_TOP');
DM1.Query3.SQL.Add(',CP_MLEFT');
DM1.Query3.SQL.Add(',CP_VISIVEL');
DM1.Query3.SQL.Add(',CP_PARENT_NOME');
DM1.Query3.SQL.Add(',CP_CAMPO_ORDER');
DM1.Query3.SQL.Add(',CP_CAMPO_INDEX');
DM1.Query3.SQL.Add(',CP_CAMPO_TABELA');
DM1.Query3.SQL.Add(',CP_CAMPO_NOME');
DM1.Query3.SQL.Add(',CP_CAMPO_TAMANHO');
DM1.Query3.SQL.Add(',CP_CAMPO_DEC');
DM1.Query3.SQL.Add(',CP_CAMPO_DESC');
DM1.Query3.SQL.Add(',CP_FONT_COLOR');
DM1.Query3.SQL.Add(',CP_FONT_HEIGHT');
DM1.Query3.SQL.Add(',CP_FONT_SIZE');
DM1.Query3.SQL.Add(',CP_FONT_NAME');
DM1.Query3.SQL.Add(',CP_FONT_FSBOLD');
DM1.Query3.SQL.Add(',CP_FONT_FSITALIC');
DM1.Query3.SQL.Add(',CP_FONT_FTUNDERLINE');
DM1.Query3.SQL.Add(',CP_FONT_STRIKEOUT');
DM1.Query3.SQL.Add(',CP_NOMEFORM');
DM1.Query3.SQL.Add(',CP_BEVELINNER');
DM1.Query3.SQL.Add(',CP_BEVELKIND');
DM1.Query3.SQL.Add(',CP_BEVELOUTER');
DM1.Query3.SQL.Add(',CP_BEVELWIDTH');
DM1.Query3.SQL.Add(',CP_BORDERSTYLE');
DM1.Query3.SQL.Add(',CP_CHARCASE');
DM1.Query3.SQL.Add(',CP_COLOR');
DM1.Query3.SQL.Add(',CP_CTL3D');
DM1.Query3.SQL.Add(',CP_ENABLED');
DM1.Query3.SQL.Add(',CP_SHOWHINT');
DM1.Query3.SQL.Add(',CP_ALIGN');
DM1.Query3.SQL.Add(',CP_ALIGNMENT');
DM1.Query3.SQL.Add(',CP_HINT ');
DM1.Query3.SQL.Add(',CP_CAPTION ) ');

DM1.Query3.SQL.Add(' Values ( ');
DM1.Query3.SQL.Add(' :CODEMP');
DM1.Query3.SQL.Add(',:NOMECOMP');
DM1.Query3.SQL.Add(',:SEQUENCIA');
DM1.Query3.SQL.Add(',:CLASSE');
DM1.Query3.SQL.Add(',:TAMANHO');
DM1.Query3.SQL.Add(',:HEIGHT');
DM1.Query3.SQL.Add(',:TOP');
DM1.Query3.SQL.Add(',:MLEFT');
DM1.Query3.SQL.Add(',:VISIVEL');
DM1.Query3.SQL.Add(',:PARENT_NOME');
DM1.Query3.SQL.Add(',:CAMPO_ORDER');
DM1.Query3.SQL.Add(',:CAMPO_INDEX');
DM1.Query3.SQL.Add(',:CAMPO_TABELA');
DM1.Query3.SQL.Add(',:CAMPO_NOME');
DM1.Query3.SQL.Add(',:CAMPO_TAMANHO');
DM1.Query3.SQL.Add(',:CAMPO_DEC');
DM1.Query3.SQL.Add(',:CAMPO_DESC');
DM1.Query3.SQL.Add(',:FONT_COLOR');
DM1.Query3.SQL.Add(',:FONT_HEIGHT');
DM1.Query3.SQL.Add(',:FONT_SIZE');
DM1.Query3.SQL.Add(',:FONT_NAME');
DM1.Query3.SQL.Add(',:FONT_FSBOLD');
DM1.Query3.SQL.Add(',:FONT_FSITALIC');
DM1.Query3.SQL.Add(',:FONT_FTUNDERLINE');
DM1.Query3.SQL.Add(',:FONT_STRIKEOUT');
DM1.Query3.SQL.Add(',:NOMEFORM');
DM1.Query3.SQL.Add(',:BEVELINNER');
DM1.Query3.SQL.Add(',:BEVELKIND');
DM1.Query3.SQL.Add(',:BEVELOUTER');
DM1.Query3.SQL.Add(',:BEVELWIDTH');
DM1.Query3.SQL.Add(',:BORDERSTYLE');
DM1.Query3.SQL.Add(',:CHARCASE');
DM1.Query3.SQL.Add(',:COLOR');
DM1.Query3.SQL.Add(',:CTL3D');
DM1.Query3.SQL.Add(',:ENABLED');
DM1.Query3.SQL.Add(',:SHOWHINT');
DM1.Query3.SQL.Add(',:ALIGN');
DM1.Query3.SQL.Add(',:ALIGNMENT');
DM1.Query3.SQL.Add(',:HINT');
DM1.Query3.SQL.Add(',:CAPTION) ');
mBloqueiaChange:=true;
Tb_Componentes.Open;
Frm_PerForm.Tb_Componentes.IndexName:='CADCOMP_PARENT_NOME';



Tb_Componentes.First;
While not Tb_Componentes.Eof do
   begin
   DM1.Query3.ParambyName('CODEMP').AsFloat           :=Tb_Componentescodemp.Value;
   DM1.Query3.ParambyName('NOMECOMP').AsString        :=Tb_ComponentesNomeComp.Value;
   DM1.Query3.ParambyName('SEQUENCIA').AsFloat        :=Tb_ComponentesSequencia.Value;
   DM1.Query3.ParambyName('CLASSE').AsString          :=Tb_ComponentesClasse.AsString;
   DM1.Query3.ParambyName('TAMANHO').AsFloat          :=Tb_ComponentesTamanho.Value;
   DM1.Query3.ParambyName('HEIGHT').AsFloat           :=Tb_ComponentesHeight.Value;
   DM1.Query3.ParambyName('TOP').AsFloat              :=Tb_ComponentesTop.Value;
   DM1.Query3.ParambyName('MLEFT').AsFloat            :=Tb_ComponentesmLeft.Value;
   DM1.Query3.ParambyName('VISIVEL').AsFloat          :=Tb_ComponentesVisivel.Value;
   DM1.Query3.ParambyName('PARENT_NOME').AsString     :=Tb_ComponentesParent_Nome.Value;
   DM1.Query3.ParambyName('CAMPO_ORDER').AsFloat      :=Tb_Componentescampo_order.Value;
   DM1.Query3.ParambyName('CAMPO_INDEX').AsFloat      :=Tb_Componentescampo_index.Value;
   DM1.Query3.ParambyName('CAMPO_TABELA').AsString    :=Tb_Componentescampo_tabela.Value;
   DM1.Query3.ParambyName('CAMPO_NOME').AsString      :=Tb_Componentescampo_nome.Value;
   DM1.Query3.ParambyName('CAMPO_TAMANHO').AsString   :=Tb_Componentescampo_tamanho.Value;
   DM1.Query3.ParambyName('CAMPO_DEC').AsFloat        :=Tb_Componentescampo_dec.Value;
   DM1.Query3.ParambyName('CAMPO_DESC').AsString      :=Tb_Componentescampo_desc.Value;
   DM1.Query3.ParambyName('FONT_COLOR').AsFloat       :=Tb_Componentesfont_color.Value;
   DM1.Query3.ParambyName('FONT_HEIGHT').AsFloat      :=Tb_ComponentesHeight.Value;
   DM1.Query3.ParambyName('FONT_SIZE').AsFloat        :=Tb_Componentesfont_size.Value;
   DM1.Query3.ParambyName('FONT_NAME').AsString       :=Tb_Componentesfont_name.Value;
   DM1.Query3.ParambyName('FONT_FSBOLD').AsFloat      :=Tb_Componentesfont_fsbold.Value;
   DM1.Query3.ParambyName('FONT_FSITALIC').AsFloat    :=Tb_Componentesfont_fsitalic.Value;
   DM1.Query3.ParambyName('FONT_FTUNDERLINE').AsFloat :=Tb_Componentesfont_ftunderline.Value;
   DM1.Query3.ParambyName('FONT_STRIKEOUT').AsFloat   :=Tb_Componentesfont_strikeout.Value;
   DM1.Query3.ParambyName('NOMEFORM').AsString        :=Tb_ComponentesNomeForm.Value;
   DM1.Query3.ParambyName('BEVELINNER').AsFloat       :=Tb_Componentesbevelinner.Value;
   DM1.Query3.ParambyName('BEVELKIND').AsFloat        :=Tb_ComponentesbevelKind.Value;
   DM1.Query3.ParambyName('BEVELOUTER').AsFloat       :=Tb_ComponentesbevelOuter.Value;
   DM1.Query3.ParambyName('BEVELWIDTH').AsFloat       :=Tb_Componentesbevelwidth.Value;
   DM1.Query3.ParambyName('BORDERSTYLE').AsFloat      :=Tb_Componentesborderstyle.Value;
   DM1.Query3.ParambyName('CHARCASE').AsFloat         :=Tb_ComponentesCharCase.Value;
   DM1.Query3.ParambyName('COLOR').AsFloat            :=Tb_ComponentesColor.Value;
   DM1.Query3.ParambyName('CTL3D').AsFloat            :=Tb_ComponentesCtl3D.Value;
   DM1.Query3.ParambyName('ENABLED').AsFloat          :=Tb_ComponentesEnabled.Value;
   DM1.Query3.ParambyName('SHOWHINT').AsFloat         :=Tb_ComponentesShowHint.Value;
   DM1.Query3.ParambyName('ALIGN').AsFloat            :=Tb_ComponentesAlign.Value;
   DM1.Query3.ParambyName('ALIGNMENT').AsFloat        :=Tb_ComponentesAlignment.Value;
   DM1.Query3.ParambyName('HINT').AsString            :=Tb_ComponentesHint.Value;
   DM1.Query3.ParambyName('CAPTION').AsString       :=Tb_ComponentesCaption.Value;
   try
      DM1.Query3.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query3.SQL.SaveToFile('c:\sql.txt');
      MessageDlg('Erro ao Criar!',mtError,[mbOk],0);
      end;
   Tb_Componentes.Next;
   end;
Tb_Componentes.Close;
{

//LINDOMAR
Frm_Stru.Tb_Banco.TableName:='CADCPN';
Frm_Stru.BatchMove1.Source:=Tb_Componentes;
Frm_Stru.BatchMove1.Mode:=batAppend;
Frm_stru.BatchMove1.Mappings.Clear;
For x:=0 to Tb_Componentes.FieldCount-1 do
   begin
   Frm_stru.BatchMove1.Mappings.Add('CP_'+Tb_Componentes.fields[x].FieldName+'='+Tb_Componentes.fields[x].FieldName);
   end;
Frm_Stru.BatchMove1.Execute;
}
MessageDlg('Concluido!',mtInformation,[mbOk],0);
end;

procedure TFrm_PerForm.FormCreate(Sender: TObject);
begin
cb_form.ItemIndex:=0;
end;


function tFrm_Perform.fRedirecionarComponentes(pNomeForm: String):Boolean;
var
y,x: Integer;
mClasse:String;
mClasseComp:String;

begin
mValidaPost:=False;
pAtualizaComponente:=False;
DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.add('Select * from CADCPN where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADCPN',[]),'',' CP_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' CP_NOMEFORM='+chr(39)+pnomeForm+chr(39)
                  +' ORDER BY CP_PARENT_NOME,CP_CAMPO_ORDER ');

DM1.Query5.Open;
if DM1.Query5.Eof then
   begin
   Result:=true;
   exit;
   end;
if DM1.Query5.Locate('CP_NOMECOMP','FRM_CONFFORM',[]) then
   begin
   Frm_ConfForm.Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
   Frm_ConfForm.Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
   Frm_ConfForm.Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
   Frm_ConfForm.Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
   end;


for x:=0 to Frm_ConfForm.ComponentCount-1 do
   begin

   if DM1.Query5.Locate('CP_NOMECOMP',Frm_ConfForm.Components[x].Name,[]) then
      begin
      mClasseComp:=LowerCase(Frm_ConfForm.Components[x].ClassName);
      if mClasseComp='tlabel' then
         begin
//         ShowMessage((Frm_ConfForm.Components[x] as TLabel).Parent.Name+' banco: '+DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring);

         if (Frm_ConfForm.Components[x] as TLabel).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);
               if mClasse='tedit' then
                  (Frm_ConfForm.Components[x] as TLabel).Parent:=(Frm_ConfForm.Components[y] as TEdit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as TLabel).Parent:=(Frm_ConfForm.Components[y] as TBitBtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as TLabel).Parent:=(Frm_ConfForm.Components[y] as TPage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as TLabel).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as TLabel).Parent:=(Frm_ConfForm.Components[y] as TComboBox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as TLabel).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as TLabel).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagecontrol' then
                  (Frm_ConfForm.Components[x] as TLabel).Parent:=(Frm_ConfForm.Components[y] as TPageControl)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as TLabel).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as TLabel).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as TLabel).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as TLabel).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as TLabel).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as TLabel).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as TLabel).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as TLabel).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as TLabel).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tdbcheckbox' then
                  (Frm_ConfForm.Components[x] as TLabel).Parent:=(Frm_ConfForm.Components[y] as TDBCheckBox)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as TLabel).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as TLabel).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as TLabel).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as TLabel).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);
               end;
            end;
         (Frm_ConfForm.Components[x] as TLabel).Caption    :=DM1.Query5.fieldbyName('CP_CAPTION').AsString;
         (Frm_ConfForm.Components[x] as TLabel).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as TLabel).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as TLabel).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as TLabel).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as TLabel).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;

         (Frm_ConfForm.Components[x] as TLabel).Color      :=DM1.Query5.fieldbyName('CP_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TLabel).Font.Color :=DM1.Query5.fieldbyName('CP_FONT_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TLabel).Font.Height:=DM1.Query5.fieldbyName('CP_FONT_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as TLabel).Font.Size  :=DM1.Query5.fieldbyName('CP_FONT_SIZE').AsInteger;
         (Frm_ConfForm.Components[x] as TLabel).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as TLabel).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;
{
         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TLabel).Align    :=alBottom;
               1 :(Frm_ConfForm.Components[x] as TLabel).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as TLabel).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as TLabel).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as TLabel).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as TLabel).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as TLabel).Align    :=alTop;
               end;
}         case DM1.Query5.fieldbyName('CP_ALIGNMENT').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TLabel).Alignment:=taCenter;
               1 :(Frm_ConfForm.Components[x] as TLabel).Alignment:=taLeftJustify;
               2 :(Frm_ConfForm.Components[x] as TLabel).Alignment:=taRightJustify;
               end;
         if (DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger)<4 then
            begin
            if DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger=0 then
               begin
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TLabel).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TLabel).Font.Style:=[fsBold,fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TLabel).Font.Style:=[fsBold,fsItalic]
                  end
               else
                   (Frm_ConfForm.Components[x] as TLabel).Font.Style:=[fsBold]
               end
            else
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TLabel).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                     else
                       (Frm_ConfForm.Components[x] as TLabel).Font.Style:=[fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TLabel).Font.Style:=[fsItalic];
                  end
               else
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TLabel).Font.Style:=[fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TLabel).Font.Style:=[fsUnderline];
                     end
                else
                   if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                     (Frm_ConfForm.Components[x] as TLabel).Font.Style:=[fsStrikeOut];
            end;


         end
// edit
      else if mClasseComp='tedit' then
         begin
         if (Frm_ConfForm.Components[x] as tedit).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);
               if mClasse='tedit' then
                  (Frm_ConfForm.Components[x] as tedit).Parent:=(Frm_ConfForm.Components[y] as TEdit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as tedit).Parent:=(Frm_ConfForm.Components[y] as TBitBtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as tedit).Parent:=(Frm_ConfForm.Components[y] as TPage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as tedit).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as tedit).Parent:=(Frm_ConfForm.Components[y] as TComboBox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as tedit).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as tedit).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagecontrol' then
                  (Frm_ConfForm.Components[x] as tedit).Parent:=(Frm_ConfForm.Components[y] as TPageControl)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as tedit).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as tedit).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as tedit).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as tedit).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as tedit).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as tedit).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as tedit).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as tedit).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as tedit).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tdbcheckbox' then
                  (Frm_ConfForm.Components[x] as tedit).Parent:=(Frm_ConfForm.Components[y] as TDBCheckBox)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as Tedit).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as TEdit).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as TEdit).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as TEdit).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);

               end;
            end;
         (Frm_ConfForm.Components[x] as tedit).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as tedit).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as tedit).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as tedit).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as tedit).Text       :=DM1.Query5.fieldbyName('CP_CAPTION').AsString;
         (Frm_ConfForm.Components[x] as TEdit).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;

         (Frm_ConfForm.Components[x] as TEdit).Color      :=DM1.Query5.fieldbyName('CP_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TEdit).Font.Color :=DM1.Query5.fieldbyName('CP_FONT_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TEdit).Font.Height:=DM1.Query5.fieldbyName('CP_FONT_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as TEdit).Font.Size  :=DM1.Query5.fieldbyName('CP_FONT_SIZE').AsInteger;
         (Frm_ConfForm.Components[x] as TEdit).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as TEdit).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;
         (Frm_ConfForm.Components[x] as TEdit).Ctl3D      :=DM1.Query5.fieldbyName('CP_CTL3D').AsInteger=0;
         if DM1.Query5.fieldbyName('CP_BORDERSTYLE').AsInteger=0 then
            (Frm_ConfForm.Components[x] as TEdit).BorderStyle:=bsNone
         else
            (Frm_ConfForm.Components[x] as TEdit).BorderStyle:=bsSingle;


{
         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TEdit).Align     :=alBottom;
               1 :(Frm_ConfForm.Components[x] as TEdit).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as TEdit).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as TEdit).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as TEdit).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as TEdit).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as TEdit).Align    :=alTop;
               end;
}         case DM1.Query5.fieldbyName('CP_BEVELINNER').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TEdit).BevelInner :=bvLowered;
               1 :(Frm_ConfForm.Components[x] as TEdit).BevelInner :=bvNone;
               2 :(Frm_ConfForm.Components[x] as TEdit).BevelInner :=bvRaised;
               3 :(Frm_ConfForm.Components[x] as TEdit).BevelInner :=bvSpace;
               end;
         case DM1.Query5.fieldbyName('CP_BEVELKIND').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TEdit).BevelKind  :=bkFlat;
               1 :(Frm_ConfForm.Components[x] as TEdit).BevelKind  :=bkNone;
               2 :(Frm_ConfForm.Components[x] as TEdit).BevelKind  :=bkSoft;
               3 :(Frm_ConfForm.Components[x] as TEdit).BevelKind  :=bkTile;
               end;

         case DM1.Query5.fieldbyName('CP_BEVELOUTER').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TEdit).BevelOuter :=bvLowered;
               1 :(Frm_ConfForm.Components[x] as TEdit).BevelOuter :=bvNone;
               2 :(Frm_ConfForm.Components[x] as TEdit).BevelOuter :=bvRaised;
               3 :(Frm_ConfForm.Components[x] as TEdit).BevelOuter :=bvSpace;
               end;

         case DM1.Query5.fieldbyName('CP_CHARCASE').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TEdit).CharCase   :=ecLowerCase;
               1 :(Frm_ConfForm.Components[x] as TEdit).CharCase   :=ecNormal;
               2 :(Frm_ConfForm.Components[x] as TEdit).CharCase   :=ecUpperCase;
               end;


         if (DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger)<4 then
            begin
            if DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger=0 then
               begin
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TEdit).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TEdit).Font.Style:=[fsBold,fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TEdit).Font.Style:=[fsBold,fsItalic]
                  end
               else
                   (Frm_ConfForm.Components[x] as TEdit).Font.Style:=[fsBold]
               end
            else
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TEdit).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                     else
                       (Frm_ConfForm.Components[x] as TEdit).Font.Style:=[fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TEdit).Font.Style:=[fsItalic];
                  end
               else
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TEdit).Font.Style:=[fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TEdit).Font.Style:=[fsUnderline];
                     end
                else
                   if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                     (Frm_ConfForm.Components[x] as TEdit).Font.Style:=[fsStrikeOut];
            end;


         (Frm_ConfForm.Components[x] as TEdit).TabOrder   :=DM1.Query5.fieldbyName('CP_CAMPO_ORDER').AsInteger;
         end
// bitbtn
      else if mClasseComp='tbitbtn' then
         begin
         if (Frm_ConfForm.Components[x] as tbitbtn).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);
               if mClasse='tedit' then
                  (Frm_ConfForm.Components[x] as tbitbtn).Parent:=(Frm_ConfForm.Components[y] as TEdit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as tbitbtn).Parent:=(Frm_ConfForm.Components[y] as TBitBtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as tbitbtn).Parent:=(Frm_ConfForm.Components[y] as TPage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as tbitbtn).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as tbitbtn).Parent:=(Frm_ConfForm.Components[y] as TComboBox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as tbitbtn).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as tbitbtn).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagecontrol' then
                  (Frm_ConfForm.Components[x] as tbitbtn).Parent:=(Frm_ConfForm.Components[y] as TPageControl)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as tbitbtn).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as tbitbtn).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as tbitbtn).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as tbitbtn).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as tbitbtn).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as tbitbtn).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as tbitbtn).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as tbitbtn).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as tbitbtn).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tdbcheckbox' then
                  (Frm_ConfForm.Components[x] as tbitbtn).Parent:=(Frm_ConfForm.Components[y] as TDBCheckBox)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as TBitBtn).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as TBitbtn).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as TBitBtn).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as TBitBtn).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);
               end;
            end;
         (Frm_ConfForm.Components[x] as tbitbtn).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as tbitbtn).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as tbitbtn).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as tbitbtn).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as TBitBtn).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;
         (Frm_ConfForm.Components[x] as TBitBtn).Caption    :=DM1.Query5.fieldbyName('CP_CAPTION').AsString;
         (Frm_ConfForm.Components[x] as TBitBtn).Font.Color :=DM1.Query5.fieldbyName('CP_FONT_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TBitBtn).Font.Height:=DM1.Query5.fieldbyName('CP_FONT_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as TBitBtn).Font.Size  :=DM1.Query5.fieldbyName('CP_FONT_SIZE').AsInteger;
         (Frm_ConfForm.Components[x] as TBitBtn).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as TBitBtn).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;
{
         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TBitBtn).Align     :=alBottom;
               1 :(Frm_ConfForm.Components[x] as TBitBtn).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as TBitBtn).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as TBitBtn).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as TBitBtn).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as TBitBtn).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as TBitBtn).Align    :=alTop;
               end;
}         if (DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger)<4 then
            begin
            if DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger=0 then
               begin
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TBitBtn).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TBitBtn).Font.Style:=[fsBold,fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TBitBtn).Font.Style:=[fsBold,fsItalic]
                  end
               else
                   (Frm_ConfForm.Components[x] as TBitBtn).Font.Style:=[fsBold]
               end
            else
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TBitBtn).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                     else
                       (Frm_ConfForm.Components[x] as TBitBtn).Font.Style:=[fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TBitBtn).Font.Style:=[fsItalic];
                  end
               else
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TBitBtn).Font.Style:=[fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TBitBtn).Font.Style:=[fsUnderline];
                     end
                else
                   if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                     (Frm_ConfForm.Components[x] as TBitBtn).Font.Style:=[fsStrikeOut];
            end;

         (Frm_ConfForm.Components[x] as TBitBtn).TabOrder   :=DM1.Query5.fieldbyName('CP_CAMPO_ORDER').AsInteger;


         end
// tpage
      else if mClasseComp='tpage' then
         begin
         if (Frm_ConfForm.Components[x] as tpage).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);
               if mClasse='tEdit' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as TEdit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as TBitBtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as TPage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as TComboBox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagecontrol' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as TPageControl)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tdbcheckbox' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as TDBCheckBox)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as Tpage).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as Tpage).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as Tpage).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as Tpage).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);

               end;
            end;
         (Frm_ConfForm.Components[x] as tpage).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as tpage).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as tpage).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as tpage).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as TPage).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;
         (Frm_ConfForm.Components[x] as TPage).Caption    :=DM1.Query5.fieldbyName('CP_CAPTION').AsString;

         (Frm_ConfForm.Components[x] as TPage).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as TPage).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;
{
         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TPage).Align    :=alBottom;
               1 :(Frm_ConfForm.Components[x] as TPage).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as TPage).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as TPage).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as TPage).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as TPage).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as TPage).Align    :=alTop;
               end;
 }
         (Frm_ConfForm.Components[x] as TPage).TabOrder   :=DM1.Query5.fieldbyName('CP_CAMPO_ORDER').AsInteger;
         end
// tpage
      else if mClasseComp='tpanel' then
         begin
         if (Frm_ConfForm.Components[x] as tpanel).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);
               if mClasse='tedit' then
                  (Frm_ConfForm.Components[x] as TPanel).Parent:=(Frm_ConfForm.Components[y] as TEdit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as tpanel).Parent:=(Frm_ConfForm.Components[y] as TBitBtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as tpanel).Parent:=(Frm_ConfForm.Components[y] as TPage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as tpanel).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as tpanel).Parent:=(Frm_ConfForm.Components[y] as TComboBox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as tpanel).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as tpanel).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagelcontrol' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as tpageControl)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as tpanel).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as tpanel).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as tpanel).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as tpanel).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as tpanel).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as tpanel).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as tpanel).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as tpanel).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as tpanel).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tdbcheckbox' then
                  (Frm_ConfForm.Components[x] as tpanel).Parent:=(Frm_ConfForm.Components[y] as TDBCheckBox)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as TPanel).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as TPanel).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as TPanel).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as TPanel).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);

               end;
            end;
         (Frm_ConfForm.Components[x] as tpanel).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as tpanel).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as tpanel).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as tpanel).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as TPanel).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;
         (Frm_ConfForm.Components[x] as TPanel).Caption    :=DM1.Query5.fieldbyName('CP_CAPTION').AsString;
         (Frm_ConfForm.Components[x] as Tpanel).Color      :=DM1.Query5.fieldbyName('CP_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TPanel).Font.Color :=DM1.Query5.fieldbyName('CP_FONT_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TPanel).Font.Height:=DM1.Query5.fieldbyName('CP_FONT_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as TPanel).Font.Size  :=DM1.Query5.fieldbyName('CP_FONT_SIZE').AsInteger;
         (Frm_ConfForm.Components[x] as TPanel).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as TPanel).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;
         (Frm_ConfForm.Components[x] as TPanel).Ctl3D      :=DM1.Query5.fieldbyName('CP_CTL3D').AsInteger=0;
         if DM1.Query5.fieldbyName('CP_BORDERSTYLE').AsInteger=0 then
            (Frm_ConfForm.Components[x] as TPanel).BorderStyle:=bsNone
         else
            (Frm_ConfForm.Components[x] as TPanel).BorderStyle:=bsSingle;

{

         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TPanel).Align     :=alBottom;
               1 :(Frm_ConfForm.Components[x] as TPanel).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as TPanel).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as TPanel).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as TPanel).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as TPanel).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as TPanel).Align    :=alTop;
               end;
}         case DM1.Query5.fieldbyName('CP_BEVELINNER').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TPanel).BevelInner :=bvLowered;
               1 :(Frm_ConfForm.Components[x] as TPanel).BevelInner :=bvNone;
               2 :(Frm_ConfForm.Components[x] as TPanel).BevelInner :=bvRaised;
               3 :(Frm_ConfForm.Components[x] as TPanel).BevelInner :=bvSpace;
               end;

         case DM1.Query5.fieldbyName('CP_BEVELOUTER').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TPanel).BevelOuter :=bvLowered;
               1 :(Frm_ConfForm.Components[x] as TPanel).BevelOuter :=bvNone;
               2 :(Frm_ConfForm.Components[x] as TPanel).BevelOuter :=bvRaised;
               3 :(Frm_ConfForm.Components[x] as TPanel).BevelOuter :=bvSpace;
               end;

         (Frm_ConfForm.Components[x] as TPanel).TabOrder   :=DM1.Query5.fieldbyName('CP_CAMPO_ORDER').AsInteger;

         end

// tcombobox
      else if mClasseComp='tcombobox' then
         begin
         if (Frm_ConfForm.Components[x] as tcombobox).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);
               if mClasse='tedit' then
                  (Frm_ConfForm.Components[x] as tcombobox).Parent:=(Frm_ConfForm.Components[y] as TEdit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as tcombobox).Parent:=(Frm_ConfForm.Components[y] as TBitBtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as tcombobox).Parent:=(Frm_ConfForm.Components[y] as TPage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as tcombobox).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as tcombobox).Parent:=(Frm_ConfForm.Components[y] as TComboBox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as tcombobox).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as tcombobox).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagelcontrol' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as tpageControl)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as tcombobox).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as tcombobox).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as tcombobox).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as tcombobox).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as tcombobox).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as tcombobox).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as tcombobox).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as tcombobox).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as tcombobox).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tdbcheckbox' then
                  (Frm_ConfForm.Components[x] as tcombobox).Parent:=(Frm_ConfForm.Components[y] as TDBCheckBox)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as Tcombobox).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as Tcombobox).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as Tcombobox).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as Tcombobox).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);

               end;
            end;
         (Frm_ConfForm.Components[x] as tcombobox).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as tcombobox).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as tcombobox).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as tcombobox).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as TComboBox).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;
         (Frm_ConfForm.Components[x] as TComboBox).Text       :=DM1.Query5.fieldbyName('CP_CAPTION').AsString;


         (Frm_ConfForm.Components[x] as TComboBox).Color      :=DM1.Query5.fieldbyName('CP_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TComboBox).Font.Color :=DM1.Query5.fieldbyName('CP_FONT_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TComboBox).Font.Height:=DM1.Query5.fieldbyName('CP_FONT_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as TComboBox).Font.Size  :=DM1.Query5.fieldbyName('CP_FONT_SIZE').AsInteger;
         (Frm_ConfForm.Components[x] as TComboBox).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as TComboBox).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;
         (Frm_ConfForm.Components[x] as TComboBox).Ctl3D      :=DM1.Query5.fieldbyName('CP_CTL3D').AsInteger=0;


{         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TComboBox).Align     :=alBottom;
               1 :(Frm_ConfForm.Components[x] as TComboBox).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as TComboBox).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as TComboBox).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as TComboBox).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as TComboBox).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as TComboBox).Align    :=alTop;
               end;
}         case DM1.Query5.fieldbyName('CP_BEVELINNER').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TComboBox).BevelInner :=bvLowered;
               1 :(Frm_ConfForm.Components[x] as TComboBox).BevelInner :=bvNone;
               2 :(Frm_ConfForm.Components[x] as TComboBox).BevelInner :=bvRaised;
               3 :(Frm_ConfForm.Components[x] as TComboBox).BevelInner :=bvSpace;
               end;
         case DM1.Query5.fieldbyName('CP_BEVELKIND').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TComboBox).BevelKind  :=bkFlat;
               1 :(Frm_ConfForm.Components[x] as TComboBox).BevelKind  :=bkNone;
               2 :(Frm_ConfForm.Components[x] as TComboBox).BevelKind  :=bkSoft;
               3 :(Frm_ConfForm.Components[x] as TComboBox).BevelKind  :=bkTile;
               end;

         case DM1.Query5.fieldbyName('CP_BEVELOUTER').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TComboBox).BevelOuter :=bvLowered;
               1 :(Frm_ConfForm.Components[x] as TComboBox).BevelOuter :=bvNone;
               2 :(Frm_ConfForm.Components[x] as TComboBox).BevelOuter :=bvRaised;
               3 :(Frm_ConfForm.Components[x] as TComboBox).BevelOuter :=bvSpace;
               end;

         case DM1.Query5.fieldbyName('CP_CHARCASE').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TComboBox).CharCase   :=ecLowerCase;
               1 :(Frm_ConfForm.Components[x] as TComboBox).CharCase   :=ecNormal;
               2 :(Frm_ConfForm.Components[x] as TComboBox).CharCase   :=ecUpperCase;
               end;

         if (DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger)<4 then
            begin
            if DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger=0 then
               begin
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TCombobox).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TCombobox).Font.Style:=[fsBold,fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TCombobox).Font.Style:=[fsBold,fsItalic]
                  end
               else
                   (Frm_ConfForm.Components[x] as TCombobox).Font.Style:=[fsBold]
               end
            else
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TCombobox).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                     else
                       (Frm_ConfForm.Components[x] as TCombobox).Font.Style:=[fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TCombobox).Font.Style:=[fsItalic];
                  end
               else
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TCombobox).Font.Style:=[fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TCombobox).Font.Style:=[fsUnderline];
                     end
                else
                   if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                     (Frm_ConfForm.Components[x] as TCombobox).Font.Style:=[fsStrikeOut];
            end;


         (Frm_ConfForm.Components[x] as TComboBox).TabOrder   :=DM1.Query5.fieldbyName('CP_CAMPO_ORDER').AsInteger;
         end
// tmaskedit
      else if mClasseComp='tmaskedit' then
         begin
         if (Frm_ConfForm.Components[x] as tmaskedit).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);
               if mClasse='tedit' then
                  (Frm_ConfForm.Components[x] as tmaskedit).Parent:=(Frm_ConfForm.Components[y] as TEdit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as tmaskedit).Parent:=(Frm_ConfForm.Components[y] as TBitBtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as tmaskedit).Parent:=(Frm_ConfForm.Components[y] as TPage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as tmaskedit).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as tmaskedit).Parent:=(Frm_ConfForm.Components[y] as TComboBox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as tmaskedit).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as tmaskedit).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagelcontrol' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as tpageControl)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as tmaskedit).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as tmaskedit).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as tmaskedit).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as tmaskedit).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as tmaskedit).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as tmaskedit).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as tmaskedit).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as tmaskedit).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as tmaskedit).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tdbcheckbox' then
                  (Frm_ConfForm.Components[x] as tmaskedit).Parent:=(Frm_ConfForm.Components[y] as TDBCheckBox)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as Tmaskedit).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as Tmaskedit).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as Tmaskedit).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as Tmaskedit).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);

               end;
            end;
         (Frm_ConfForm.Components[x] as tmaskedit).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as tmaskedit).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as tmaskedit).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as tmaskedit).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as TMaskEdit).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;
         (Frm_ConfForm.Components[x] as TMaskEdit).Text       :=DM1.Query5.fieldbyName('CP_CAPTION').AsString;


         (Frm_ConfForm.Components[x] as TMaskEdit).Color      :=DM1.Query5.fieldbyName('CP_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TMaskEdit).Font.Color :=DM1.Query5.fieldbyName('CP_FONT_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TMaskEdit).Font.Height:=DM1.Query5.fieldbyName('CP_FONT_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as TMaskEdit).Font.Size  :=DM1.Query5.fieldbyName('CP_FONT_SIZE').AsInteger;
         (Frm_ConfForm.Components[x] as TMaskEdit).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as TMaskEdit).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;
         (Frm_ConfForm.Components[x] as TMaskEdit).Ctl3D      :=DM1.Query5.fieldbyName('CP_CTL3D').AsInteger=0;
         if DM1.Query5.fieldbyName('CP_BORDERSTYLE').AsInteger=0 then
            (Frm_ConfForm.Components[x] as TMaskEdit).BorderStyle:=bsNone
         else
            (Frm_ConfForm.Components[x] as TMaskEdit).BorderStyle:=bsSingle;



{         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TMaskEdit).Align     :=alBottom;
               1 :(Frm_ConfForm.Components[x] as TMaskEdit).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as TMaskEdit).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as TMaskEdit).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as TMaskEdit).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as TMaskEdit).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as TMaskEdit).Align    :=alTop;
               end;
}         case DM1.Query5.fieldbyName('CP_BEVELINNER').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TMaskEdit).BevelInner :=bvLowered;
               1 :(Frm_ConfForm.Components[x] as TMaskEdit).BevelInner :=bvNone;
               2 :(Frm_ConfForm.Components[x] as TMaskEdit).BevelInner :=bvRaised;
               3 :(Frm_ConfForm.Components[x] as TMaskEdit).BevelInner :=bvSpace;
               end;
         case DM1.Query5.fieldbyName('CP_BEVELKIND').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TMaskEdit).BevelKind  :=bkFlat;
               1 :(Frm_ConfForm.Components[x] as TMaskEdit).BevelKind  :=bkNone;
               2 :(Frm_ConfForm.Components[x] as TMaskEdit).BevelKind  :=bkSoft;
               3 :(Frm_ConfForm.Components[x] as TMaskEdit).BevelKind  :=bkTile;
               end;

         case DM1.Query5.fieldbyName('CP_BEVELOUTER').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TMaskEdit).BevelOuter :=bvLowered;
               1 :(Frm_ConfForm.Components[x] as TMaskEdit).BevelOuter :=bvNone;
               2 :(Frm_ConfForm.Components[x] as TMaskEdit).BevelOuter :=bvRaised;
               3 :(Frm_ConfForm.Components[x] as TMaskEdit).BevelOuter :=bvSpace;
               end;

         case DM1.Query5.fieldbyName('CP_CHARCASE').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TMaskEdit).CharCase   :=ecLowerCase;
               1 :(Frm_ConfForm.Components[x] as TMaskEdit).CharCase   :=ecNormal;
               2 :(Frm_ConfForm.Components[x] as TMaskEdit).CharCase   :=ecUpperCase;
               end;



         if (DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger)<4 then
            begin
            if DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger=0 then
               begin
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TMaskedit).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TMaskedit).Font.Style:=[fsBold,fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TMaskedit).Font.Style:=[fsBold,fsItalic]
                  end
               else
                   (Frm_ConfForm.Components[x] as TMaskedit).Font.Style:=[fsBold]
               end
            else
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TMaskedit).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                     else
                       (Frm_ConfForm.Components[x] as TMaskedit).Font.Style:=[fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TMaskedit).Font.Style:=[fsItalic];
                  end
               else
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TMaskedit).Font.Style:=[fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TMaskedit).Font.Style:=[fsUnderline];
                     end
                else
                   if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                     (Frm_ConfForm.Components[x] as TMaskedit).Font.Style:=[fsStrikeOut];
            end;

         (Frm_ConfForm.Components[x] as TMaskedit).TabOrder   :=DM1.Query5.fieldbyName('CP_CAMPO_ORDER').AsInteger;


         end
// ttabsheet
      else if mClasseComp='ttabsheet' then
         begin
         if (Frm_ConfForm.Components[x] as ttabsheet).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);
               if mClasse='tedit' then
                  (Frm_ConfForm.Components[x] as ttabsheet).Parent:=(Frm_ConfForm.Components[y] as TEdit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as ttabsheet).Parent:=(Frm_ConfForm.Components[y] as TBitBtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as ttabsheet).Parent:=(Frm_ConfForm.Components[y] as TPage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as ttabsheet).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as ttabsheet).Parent:=(Frm_ConfForm.Components[y] as TComboBox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as ttabsheet).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as ttabsheet).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagelcontrol' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as tpageControl)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as ttabsheet).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as ttabsheet).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as ttabsheet).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as ttabsheet).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as ttabsheet).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as ttabsheet).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as ttabsheet).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as ttabsheet).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as ttabsheet).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tdbcheckbox' then
                  (Frm_ConfForm.Components[x] as ttabsheet).Parent:=(Frm_ConfForm.Components[y] as TDBCheckBox)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as Ttabsheet).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as Ttabsheet).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as Ttabsheet).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as Ttabsheet).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);

               end;
            end;
         (Frm_ConfForm.Components[x] as ttabsheet).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as ttabsheet).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as ttabsheet).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as ttabsheet).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as TTabSheet).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;
         (Frm_ConfForm.Components[x] as TTabSheet).Caption    :=DM1.Query5.fieldbyName('CP_CAPTION').AsString;


         (Frm_ConfForm.Components[x] as TTabSheet).Font.Color :=DM1.Query5.fieldbyName('CP_FONT_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TTabSheet).Font.Height:=DM1.Query5.fieldbyName('CP_FONT_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as TTabSheet).Font.Size  :=DM1.Query5.fieldbyName('CP_FONT_SIZE').AsInteger;
         (Frm_ConfForm.Components[x] as TTabSheet).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as TTabSheet).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;

{         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TTabSheet).Align :=alBottom;
               1 :(Frm_ConfForm.Components[x] as TTabSheet).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as TTabSheet).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as TTabSheet).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as TTabSheet).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as TTabSheet).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as TTabSheet).Align    :=alTop;
               end;

}         if (DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger)<4 then
            begin
            if DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger=0 then
               begin
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TTabsheet).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TTabsheet).Font.Style:=[fsBold,fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TTabsheet).Font.Style:=[fsBold,fsItalic]
                  end
               else
                   (Frm_ConfForm.Components[x] as TTabsheet).Font.Style:=[fsBold]
               end
            else
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TTabsheet).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                     else
                       (Frm_ConfForm.Components[x] as TTabsheet).Font.Style:=[fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TTabsheet).Font.Style:=[fsItalic];
                  end
               else
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TTabsheet).Font.Style:=[fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TTabsheet).Font.Style:=[fsUnderline];
                     end
                else
                   if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                     (Frm_ConfForm.Components[x] as TTabsheet).Font.Style:=[fsStrikeOut];
            end;

         (Frm_ConfForm.Components[x] as TTabSheet).TabOrder   :=DM1.Query5.fieldbyName('CP_CAMPO_ORDER').AsInteger;

         end

// tpagecontrol
      else if mClasseComp='tpagecontrol' then
         begin
         if (Frm_ConfForm.Components[x] as tpagecontrol).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);
               if mClasse='tedit' then
                  (Frm_ConfForm.Components[x] as tpagecontrol).Parent:=(Frm_ConfForm.Components[y] as TEdit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as tpagecontrol).Parent:=(Frm_ConfForm.Components[y] as TBitBtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as tpagecontrol).Parent:=(Frm_ConfForm.Components[y] as tpage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as tpagecontrol).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as tpagecontrol).Parent:=(Frm_ConfForm.Components[y] as TComboBox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as tpagecontrol).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as tpagecontrol).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagelcontrol' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as tpageControl)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as tpagecontrol).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as tpagecontrol).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as tpagecontrol).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as tpagecontrol).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as tpagecontrol).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as tpagecontrol).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as tpagecontrol).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as tpagecontrol).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as tpagecontrol).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tdbcheckbox' then
                  (Frm_ConfForm.Components[x] as tpagecontrol).Parent:=(Frm_ConfForm.Components[y] as TDBCheckBox)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as TPageControl).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as Tpagecontrol).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as Tpagecontrol).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as Tpagecontrol).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);

               end;
            end;
         (Frm_ConfForm.Components[x] as tpagecontrol).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as tpagecontrol).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as tpagecontrol).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as tpagecontrol).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as TPageControl).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;




         (Frm_ConfForm.Components[x] as TPageControl).Font.Color :=DM1.Query5.fieldbyName('CP_FONT_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TPageControl).Font.Height:=DM1.Query5.fieldbyName('CP_FONT_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as TPageControl).Font.Size  :=DM1.Query5.fieldbyName('CP_FONT_SIZE').AsInteger;
         (Frm_ConfForm.Components[x] as TPageControl).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as TPageControl).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;


{
         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TPageControl).Align     :=alBottom;
               1 :(Frm_ConfForm.Components[x] as TPageControl).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as TPageControl).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as TPageControl).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as TPageControl).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as TPageControl).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as TPageControl).Align    :=alTop;
               end;
}         if (DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger)<4 then
            begin
            if DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger=0 then
               begin
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TPageControl).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TPageControl).Font.Style:=[fsBold,fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TPageControl).Font.Style:=[fsBold,fsItalic]
                  end
               else
                   (Frm_ConfForm.Components[x] as TPageControl).Font.Style:=[fsBold]
               end
            else
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TPageControl).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                     else
                       (Frm_ConfForm.Components[x] as TPageControl).Font.Style:=[fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TPageControl).Font.Style:=[fsItalic];
                  end
               else
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TPageControl).Font.Style:=[fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TPageControl).Font.Style:=[fsUnderline];
                     end
                else
                   if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                     (Frm_ConfForm.Components[x] as TPageControl).Font.Style:=[fsStrikeOut];
            end;

         (Frm_ConfForm.Components[x] as TPageControl).TabOrder   :=DM1.Query5.fieldbyName('CP_CAMPO_ORDER').AsInteger;


         end

// tgroupbox
      else if mClasseComp='tgroupbox' then
         begin
         if (Frm_ConfForm.Components[x] as tgroupbox).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);
               if mClasse='tedit' then
                  (Frm_ConfForm.Components[x] as tgroupbox).Parent:=(Frm_ConfForm.Components[y] as tedit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as tgroupbox).Parent:=(Frm_ConfForm.Components[y] as TBitBtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as tgroupbox).Parent:=(Frm_ConfForm.Components[y] as TPage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as tgroupbox).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as tgroupbox).Parent:=(Frm_ConfForm.Components[y] as tcombobox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as tgroupbox).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as tgroupbox).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagelcontrol' then
                  (Frm_ConfForm.Components[x] as tpage).Parent:=(Frm_ConfForm.Components[y] as tgroupbox)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as tgroupbox).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as tgroupbox).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as tgroupbox).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as tgroupbox).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as tgroupbox).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as tgroupbox).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as tgroupbox).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as tgroupbox).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as tgroupbox).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tdbcheckbox' then
                  (Frm_ConfForm.Components[x] as tgroupbox).Parent:=(Frm_ConfForm.Components[y] as TDBCheckBox)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as Tgroupbox).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as Tgroupbox).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as Tgroupbox).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as Tgroupbox).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);

               end;
            end;
         (Frm_ConfForm.Components[x] as tgroupbox).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as tgroupbox).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as tgroupbox).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as tgroupbox).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as TGroupBox).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;
         (Frm_ConfForm.Components[x] as TGroupBox).Caption    :=DM1.Query5.fieldbyName('CP_CAPTION').AsString;

         (Frm_ConfForm.Components[x] as TGroupBox).Color      :=DM1.Query5.fieldbyName('CP_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TGroupBox).Font.Color :=DM1.Query5.fieldbyName('CP_FONT_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TGroupBox).Font.Height:=DM1.Query5.fieldbyName('CP_FONT_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as TGroupBox).Font.Size  :=DM1.Query5.fieldbyName('CP_FONT_SIZE').AsInteger;
         (Frm_ConfForm.Components[x] as TGroupBox).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as TGroupBox).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;
         (Frm_ConfForm.Components[x] as TGroupBox).Ctl3D      :=DM1.Query5.fieldbyName('CP_CTL3D').AsInteger=0;

{
         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TGroupBox).Align    :=alBottom;
               1 :(Frm_ConfForm.Components[x] as TGroupBox).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as TGroupBox).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as TGroupBox).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as TGroupBox).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as TGroupBox).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as TGroupBox).Align    :=alTop;
               end;
}
         if (DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger)<4 then
            begin
            if DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger=0 then
               begin
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TGroupbox).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TGroupbox).Font.Style:=[fsBold,fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TGroupbox).Font.Style:=[fsBold,fsItalic]
                  end
               else
                   (Frm_ConfForm.Components[x] as TGroupbox).Font.Style:=[fsBold]
               end
            else
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TGroupbox).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                     else
                       (Frm_ConfForm.Components[x] as TGroupbox).Font.Style:=[fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TGroupbox).Font.Style:=[fsItalic];
                  end
               else
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TGroupbox).Font.Style:=[fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TGroupbox).Font.Style:=[fsUnderline];
                     end
                else
                   if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                     (Frm_ConfForm.Components[x] as TGroupbox).Font.Style:=[fsStrikeOut];
            end;


         (Frm_ConfForm.Components[x] as TGroupBox).TabOrder   :=DM1.Query5.fieldbyName('CP_CAMPO_ORDER').AsInteger;

         end
// tdbnavigator
      else if mClasseComp='tdbnavigator' then
         begin
         if (Frm_ConfForm.Components[x] as tdbnavigator).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);
               if mClasse='tedit' then
                  (Frm_ConfForm.Components[x] as tdbnavigator).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as tdbnavigator).Parent:=(Frm_ConfForm.Components[y] as tbitbtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as tdbnavigator).Parent:=(Frm_ConfForm.Components[y] as TPage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as tdbnavigator).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as tdbnavigator).Parent:=(Frm_ConfForm.Components[y] as TComboBox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as tdbnavigator).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as tdbnavigator).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagelcontrol' then
                  (Frm_ConfForm.Components[x] as TDBNavigator).Parent:=(Frm_ConfForm.Components[y] as TPageControl)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as tdbnavigator).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as tdbnavigator).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as tdbnavigator).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as tdbnavigator).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as tdbnavigator).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as tdbnavigator).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as tdbnavigator).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as tdbnavigator).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as tdbnavigator).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tdbcheckbox' then
                  (Frm_ConfForm.Components[x] as tdbnavigator).Parent:=(Frm_ConfForm.Components[y] as TDBCheckBox)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as TDBNavigator).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as TDBNavigator).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as TDBNavigator).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as TDBNavigator).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);

               end;
            end;
         (Frm_ConfForm.Components[x] as tdbnavigator).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as tdbnavigator).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as tdbnavigator).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as tdbnavigator).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as TDBNavigator).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;


         (Frm_ConfForm.Components[x] as TDBNavigator).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as TDBNavigator).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;
         (Frm_ConfForm.Components[x] as TDBNavigator).Ctl3D      :=DM1.Query5.fieldbyName('CP_CTL3D').AsInteger=0;

{
         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TDBNavigator).Align     :=alBottom;
               1 :(Frm_ConfForm.Components[x] as TDBNavigator).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as TDBNavigator).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as TDBNavigator).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as TDBNavigator).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as TDBNavigator).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as TDBNavigator).Align    :=alTop;
               end;
}
         (Frm_ConfForm.Components[x] as TDBNavigator).TabOrder   :=DM1.Query5.fieldbyName('CP_CAMPO_ORDER').AsInteger;
         end

// tbevel
      else if mClasseComp='tbevel' then
         begin
         if (Frm_ConfForm.Components[x] as tbevel).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);
               if mClasse='tedit' then
                  (Frm_ConfForm.Components[x] as TBevel).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as TBevel).Parent:=(Frm_ConfForm.Components[y] as tbitbtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as TBevel).Parent:=(Frm_ConfForm.Components[y] as TPage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as TBevel).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as TBevel).Parent:=(Frm_ConfForm.Components[y] as TComboBox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as TBevel).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as TBevel).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagelcontrol' then
                  (Frm_ConfForm.Components[x] as TBevel).Parent:=(Frm_ConfForm.Components[y] as TPageControl)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as TBevel).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as TBevel).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as tbevel).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as tbevel).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as tbevel).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as tbevel).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as tbevel).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as tbevel).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as tbevel).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tdbcheckbox' then
                  (Frm_ConfForm.Components[x] as tbevel).Parent:=(Frm_ConfForm.Components[y] as TDBCheckBox)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as Tbevel).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as Tbevel).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as Tbevel).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as Tbevel).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);


               end;
            end;
         (Frm_ConfForm.Components[x] as tbevel).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as tbevel).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as tbevel).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as tbevel).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as TBevel).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;


         (Frm_ConfForm.Components[x] as TBevel).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as TBevel).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;

{

         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TBevel).Align     :=alBottom;
               1 :(Frm_ConfForm.Components[x] as TBevel).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as TBevel).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as TBevel).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as TBevel).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as TBevel).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as TBevel).Align    :=alTop;
               end;
}
         end

// tdbcombobox
      else if mClasseComp='tdbcombobox' then
         begin
         if (Frm_ConfForm.Components[x] as tdbcombobox).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);

               if mClasse='tedit' then
                  (Frm_ConfForm.Components[x] as tdbcombobox).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as tdbcombobox).Parent:=(Frm_ConfForm.Components[y] as tbitbtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as tdbcombobox).Parent:=(Frm_ConfForm.Components[y] as TPage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as tdbcombobox).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as tdbcombobox).Parent:=(Frm_ConfForm.Components[y] as TComboBox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as tdbcombobox).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as tdbcombobox).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagelcontrol' then
                  (Frm_ConfForm.Components[x] as tdbcombobox).Parent:=(Frm_ConfForm.Components[y] as TPageControl)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as tdbcombobox).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as tdbcombobox).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as tdbcombobox).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as tdbcombobox).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as tdbcombobox).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as tdbcombobox).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as tdbcombobox).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as tdbcombobox).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as tdbcombobox).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tdbcheckbox' then
                  (Frm_ConfForm.Components[x] as tdbcombobox).Parent:=(Frm_ConfForm.Components[y] as TDBCheckBox)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as TDBcombobox).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as TDBcombobox).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as TDBcombobox).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as TDBcombobox).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);

               end;
            end;
         (Frm_ConfForm.Components[x] as tdbcombobox).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as tdbcombobox).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as tdbcombobox).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as tdbcombobox).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as TDBComboBox).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;
         (Frm_ConfForm.Components[x] as TDBComboBox).Text       :=DM1.Query5.fieldbyName('CP_CAPTION').AsString;


         (Frm_ConfForm.Components[x] as TDBComboBox).Color      :=DM1.Query5.fieldbyName('CP_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TDBComboBox).Font.Color :=DM1.Query5.fieldbyName('CP_FONT_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TDBComboBox).Font.Height:=DM1.Query5.fieldbyName('CP_FONT_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as TDBComboBox).Font.Size  :=DM1.Query5.fieldbyName('CP_FONT_SIZE').AsInteger;
         (Frm_ConfForm.Components[x] as TDBComboBox).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as TDBComboBox).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;
         (Frm_ConfForm.Components[x] as TDBComboBox).Ctl3D      :=DM1.Query5.fieldbyName('CP_CTL3D').AsInteger=0;


{
         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TDBComboBox).Align     :=alBottom;
               1 :(Frm_ConfForm.Components[x] as TDBComboBox).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as TDBComboBox).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as TDBComboBox).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as TDBComboBox).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as TDBComboBox).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as TDBComboBox).Align    :=alTop;
               end;
}         case DM1.Query5.fieldbyName('CP_BEVELINNER').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TDBComboBox).BevelInner :=bvLowered;
               1 :(Frm_ConfForm.Components[x] as TDBComboBox).BevelInner :=bvNone;
               2 :(Frm_ConfForm.Components[x] as TDBComboBox).BevelInner :=bvRaised;
               3 :(Frm_ConfForm.Components[x] as TDBComboBox).BevelInner :=bvSpace;
               end;
         case DM1.Query5.fieldbyName('CP_BEVELKIND').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TDBComboBox).BevelKind  :=bkFlat;
               1 :(Frm_ConfForm.Components[x] as TDBComboBox).BevelKind  :=bkNone;
               2 :(Frm_ConfForm.Components[x] as TDBComboBox).BevelKind  :=bkSoft;
               3 :(Frm_ConfForm.Components[x] as TDBComboBox).BevelKind  :=bkTile;
               end;

         case DM1.Query5.fieldbyName('CP_BEVELOUTER').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TDBComboBox).BevelOuter :=bvLowered;
               1 :(Frm_ConfForm.Components[x] as TDBComboBox).BevelOuter :=bvNone;
               2 :(Frm_ConfForm.Components[x] as TDBComboBox).BevelOuter :=bvRaised;
               3 :(Frm_ConfForm.Components[x] as TDBComboBox).BevelOuter :=bvSpace;
               end;

         case DM1.Query5.fieldbyName('CP_CHARCASE').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TDBComboBox).CharCase   :=ecLowerCase;
               1 :(Frm_ConfForm.Components[x] as TDBComboBox).CharCase   :=ecNormal;
               2 :(Frm_ConfForm.Components[x] as TDBComboBox).CharCase   :=ecUpperCase;
               end;

         if (DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger)<4 then
            begin
            if DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger=0 then
               begin
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TDBCombobox).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TDBCombobox).Font.Style:=[fsBold,fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TDBCombobox).Font.Style:=[fsBold,fsItalic]
                  end
               else
                   (Frm_ConfForm.Components[x] as TDBCombobox).Font.Style:=[fsBold]
               end
            else
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TDBCombobox).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                     else
                       (Frm_ConfForm.Components[x] as TDBCombobox).Font.Style:=[fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TDBCombobox).Font.Style:=[fsItalic];
                  end
               else
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TDBCombobox).Font.Style:=[fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TDBCombobox).Font.Style:=[fsUnderline];
                     end
                else
                   if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                     (Frm_ConfForm.Components[x] as TDBCombobox).Font.Style:=[fsStrikeOut];
            end;

         (Frm_ConfForm.Components[x] as TDBCombobox).TabOrder   :=DM1.Query5.fieldbyName('CP_CAMPO_ORDER').AsInteger;

         end

// tdbradiogroup
      else if mClasseComp='tdbradiogroup' then
         begin
         if (Frm_ConfForm.Components[x] as tdbradiogroup).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);

               if mClasse='tedit' then
                  (Frm_ConfForm.Components[x] as tdbradiogroup).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as tdbradiogroup).Parent:=(Frm_ConfForm.Components[y] as tbitbtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as tdbradiogroup).Parent:=(Frm_ConfForm.Components[y] as TPage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as tdbradiogroup).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as tdbradiogroup).Parent:=(Frm_ConfForm.Components[y] as TComboBox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as tdbradiogroup).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as tdbradiogroup).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagelcontrol' then
                  (Frm_ConfForm.Components[x] as tdbradiogroup).Parent:=(Frm_ConfForm.Components[y] as TPageControl)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as tdbradiogroup).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as tdbradiogroup).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as tdbradiogroup).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as tdbradiogroup).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as tdbradiogroup).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as tdbradiogroup).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as tdbradiogroup).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as tdbradiogroup).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as tdbradiogroup).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tdbcheckbox' then
                  (Frm_ConfForm.Components[x] as tdbradiogroup).Parent:=(Frm_ConfForm.Components[y] as TDBCheckBox)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as TDBradiogroup).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as TDBradiogroup).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as TDBradiogroup).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as TDBradiogroup).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);

               end;
            end;
         (Frm_ConfForm.Components[x] as tdbradiogroup).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as tdbradiogroup).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as tdbradiogroup).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as tdbradiogroup).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as TDBRadioGroup).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;
         (Frm_ConfForm.Components[x] as TDBRadioGroup).Caption    :=DM1.Query5.fieldbyName('CP_CAPTION').AsString;

         (Frm_ConfForm.Components[x] as TDBRadioGroup). Color      :=DM1.Query5.fieldbyName('CP_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TDBRadioGroup).Font.Color :=DM1.Query5.fieldbyName('CP_FONT_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TDBRadioGroup).Font.Height:=DM1.Query5.fieldbyName('CP_FONT_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as TDBRadioGroup).Font.Size  :=DM1.Query5.fieldbyName('CP_FONT_SIZE').AsInteger;
         (Frm_ConfForm.Components[x] as TDBRadioGroup).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as TDBRadioGroup).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;
         (Frm_ConfForm.Components[x] as TDBRadioGroup).Ctl3D      :=DM1.Query5.fieldbyName('CP_CTL3D').AsInteger=0;


{
         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TDBRadioGroup).Align     :=alBottom;
               1 :(Frm_ConfForm.Components[x] as TDBRadioGroup).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as TDBRadioGroup).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as TDBRadioGroup).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as TDBRadioGroup).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as TDBRadioGroup).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as TDBRadioGroup).Align    :=alTop;
               end;
}
         if (DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger)<4 then
            begin
            if DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger=0 then
               begin
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TDBRadiogroup).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TDBRadiogroup).Font.Style:=[fsBold,fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TDBRadiogroup).Font.Style:=[fsBold,fsItalic]
                  end
               else
                   (Frm_ConfForm.Components[x] as TDBRadiogroup).Font.Style:=[fsBold]
               end
            else
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TDBRadiogroup).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                     else
                       (Frm_ConfForm.Components[x] as TDBRadiogroup).Font.Style:=[fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TDBRadiogroup).Font.Style:=[fsItalic];
                  end
               else
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TDBRadiogroup).Font.Style:=[fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TDBRadiogroup).Font.Style:=[fsUnderline];
                     end
                else
                   if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                     (Frm_ConfForm.Components[x] as TDBRadiogroup).Font.Style:=[fsStrikeOut];
            end;


         (Frm_ConfForm.Components[x] as TDBRadioGroup).TabOrder   :=DM1.Query5.fieldbyName('CP_CAMPO_ORDER').AsInteger;

         end
// tdbgrid
      else if mClasseComp='tdbgrid' then
         begin
         if (Frm_ConfForm.Components[x] as tdbgrid).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);

               if mClasse='tedit' then
                  (Frm_ConfForm.Components[x] as tdbgrid).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as tdbgrid).Parent:=(Frm_ConfForm.Components[y] as tbitbtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as tdbgrid).Parent:=(Frm_ConfForm.Components[y] as TPage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as tdbgrid).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as tdbgrid).Parent:=(Frm_ConfForm.Components[y] as TComboBox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as tdbgrid).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as tdbgrid).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagelcontrol' then
                  (Frm_ConfForm.Components[x] as tdbgrid).Parent:=(Frm_ConfForm.Components[y] as TPageControl)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as tdbgrid).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as tdbgrid).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as tdbgrid).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as tdbgrid).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as tdbgrid).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as tdbgrid).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as tdbgrid).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as tdbgrid).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as tdbgrid).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tdbcheckbox' then
                  (Frm_ConfForm.Components[x] as tdbgrid).Parent:=(Frm_ConfForm.Components[y] as TDBCheckBox)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as TDBgrid).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as TDBgrid).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as TDBgrid).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as TDBgrid).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);

               end;
            end;
         (Frm_ConfForm.Components[x] as tdbgrid).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as tdbgrid).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as tdbgrid).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as tdbgrid).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as TDBGrid).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;

         (Frm_ConfForm.Components[x] as TDBGrid).Color      :=DM1.Query5.fieldbyName('CP_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TDBGrid).Font.Color :=DM1.Query5.fieldbyName('CP_FONT_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TDBGrid).Font.Height:=DM1.Query5.fieldbyName('CP_FONT_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as TDBGrid).Font.Size  :=DM1.Query5.fieldbyName('CP_FONT_SIZE').AsInteger;
         (Frm_ConfForm.Components[x] as TDBGrid).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as TDBGrid).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;
         (Frm_ConfForm.Components[x] as TDBGrid).Ctl3D      :=DM1.Query5.fieldbyName('CP_CTL3D').AsInteger=0;
         if DM1.Query5.fieldbyName('CP_BORDERSTYLE').AsInteger=0 then
            (Frm_ConfForm.Components[x] as TDBGrid).BorderStyle:=bsNone
         else
            (Frm_ConfForm.Components[x] as TDBGrid).BorderStyle:=bsSingle;


{
         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TDBGrid).Align     :=alBottom;
               1 :(Frm_ConfForm.Components[x] as TDBGrid).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as TDBGrid).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as TDBGrid).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as TDBGrid).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as TDBGrid).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as TDBGrid).Align    :=alTop;
               end;

 }
         if (DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger)<4 then
            begin
            if DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger=0 then
               begin
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TDBGrid).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TDBGrid).Font.Style:=[fsBold,fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TDBGrid).Font.Style:=[fsBold,fsItalic]
                  end
               else
                   (Frm_ConfForm.Components[x] as TDBGrid).Font.Style:=[fsBold]
               end
            else
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TDBGrid).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                     else
                       (Frm_ConfForm.Components[x] as TDBGrid).Font.Style:=[fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TDBGrid).Font.Style:=[fsItalic];
                  end
               else
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TDBGrid).Font.Style:=[fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TDBGrid).Font.Style:=[fsUnderline];
                     end
                else
                   if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                     (Frm_ConfForm.Components[x] as TDBGrid).Font.Style:=[fsStrikeOut];
            end;
         (Frm_ConfForm.Components[x] as TDBGrid).TabOrder   :=DM1.Query5.fieldbyName('CP_CAMPO_ORDER').AsInteger;

         end
// tdbedit
      else if mClasseComp='tdbedit' then
         begin
         if (Frm_ConfForm.Components[x] as tdbedit).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);

               if mClasse='tedit' then
                  (Frm_ConfForm.Components[x] as tdbedit).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as tdbedit).Parent:=(Frm_ConfForm.Components[y] as tbitbtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as tdbedit).Parent:=(Frm_ConfForm.Components[y] as TPage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as tdbedit).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as tdbedit).Parent:=(Frm_ConfForm.Components[y] as TComboBox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as tdbedit).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as tdbedit).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagelcontrol' then
                  (Frm_ConfForm.Components[x] as tdbedit).Parent:=(Frm_ConfForm.Components[y] as TPageControl)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as tdbedit).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as tdbedit).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as tdbedit).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as tdbedit).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as tdbedit).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as tdbedit).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as tdbedit).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as tdbedit).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as tdbedit).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tdbcheckbox' then
                  (Frm_ConfForm.Components[x] as tdbedit).Parent:=(Frm_ConfForm.Components[y] as TDBCheckBox)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as TDBedit).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as TDBedit).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as TDBedit).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as TDBedit).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);

               end;
            end;
         (Frm_ConfForm.Components[x] as tdbedit).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as tdbedit).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as tdbedit).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as tdbedit).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as TDBEdit).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;
         (Frm_ConfForm.Components[x] as TDBEdit).Text       :=DM1.Query5.fieldbyName('CP_CAPTION').AsString;
         (Frm_ConfForm.Components[x] as TDBEdit).Color      :=DM1.Query5.fieldbyName('CP_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TDBEdit).Font.Color :=DM1.Query5.fieldbyName('CP_FONT_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TDBEdit).Font.Height:=DM1.Query5.fieldbyName('CP_FONT_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as TDBEdit).Font.Size  :=DM1.Query5.fieldbyName('CP_FONT_SIZE').AsInteger;
         (Frm_ConfForm.Components[x] as TDBEdit).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as TDBEdit).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;
         (Frm_ConfForm.Components[x] as TDBEdit).Ctl3D      :=DM1.Query5.fieldbyName('CP_CTL3D').AsInteger=0;
         if DM1.Query5.fieldbyName('CP_BORDERSTYLE').AsInteger=0 then
            (Frm_ConfForm.Components[x] as TDBEdit).BorderStyle:=bsNone
         else
            (Frm_ConfForm.Components[x] as TDBEdit).BorderStyle:=bsSingle;


{
         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TDBEdit).Align     :=alBottom;
               1 :(Frm_ConfForm.Components[x] as TDBEdit).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as TDBEdit).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as TDBEdit).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as TDBEdit).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as TDBEdit).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as TDBEdit).Align    :=alTop;
               end;
}         case DM1.Query5.fieldbyName('CP_BEVELINNER').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TDBEdit).BevelInner :=bvLowered;
               1 :(Frm_ConfForm.Components[x] as TDBEdit).BevelInner :=bvNone;
               2 :(Frm_ConfForm.Components[x] as TDBEdit).BevelInner :=bvRaised;
               3 :(Frm_ConfForm.Components[x] as TDBEdit).BevelInner :=bvSpace;
               end;
         case DM1.Query5.fieldbyName('CP_BEVELKIND').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TDBEdit).BevelKind  :=bkFlat;
               1 :(Frm_ConfForm.Components[x] as TDBEdit).BevelKind  :=bkNone;
               2 :(Frm_ConfForm.Components[x] as TDBEdit).BevelKind  :=bkSoft;
               3 :(Frm_ConfForm.Components[x] as TDBEdit).BevelKind  :=bkTile;
               end;

         case DM1.Query5.fieldbyName('CP_BEVELOUTER').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TDBEdit).BevelOuter :=bvLowered;
               1 :(Frm_ConfForm.Components[x] as TDBEdit).BevelOuter :=bvNone;
               2 :(Frm_ConfForm.Components[x] as TDBEdit).BevelOuter :=bvRaised;
               3 :(Frm_ConfForm.Components[x] as TDBEdit).BevelOuter :=bvSpace;
               end;

         case DM1.Query5.fieldbyName('CP_CHARCASE').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TDBEdit).CharCase   :=ecLowerCase;
               1 :(Frm_ConfForm.Components[x] as TDBEdit).CharCase   :=ecNormal;
               2 :(Frm_ConfForm.Components[x] as TDBEdit).CharCase   :=ecUpperCase;
               end;

         if (DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger)<4 then
            begin
            if DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger=0 then
               begin
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TDBEdit).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TDBEdit).Font.Style:=[fsBold,fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TDBEdit).Font.Style:=[fsBold,fsItalic]
                  end
               else
                   (Frm_ConfForm.Components[x] as TDBEdit).Font.Style:=[fsBold]
               end
            else
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TDBEdit).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                     else
                       (Frm_ConfForm.Components[x] as TDBEdit).Font.Style:=[fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TDBEdit).Font.Style:=[fsItalic];
                  end
               else
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TDBEdit).Font.Style:=[fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TDBEdit).Font.Style:=[fsUnderline];
                     end
                else
                   if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                     (Frm_ConfForm.Components[x] as TDBEdit).Font.Style:=[fsStrikeOut];
            end;


         (Frm_ConfForm.Components[x] as TDBEdit).TabOrder   :=DM1.Query5.fieldbyName('CP_CAMPO_ORDER').AsInteger;
         end

// tlistbox
      else if mClasseComp='tlistbox' then
         begin
         if (Frm_ConfForm.Components[x] as tlistbox).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);

               if mClasse='tedit' then
                  (Frm_ConfForm.Components[x] as tlistbox).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as tlistbox).Parent:=(Frm_ConfForm.Components[y] as tbitbtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as tlistbox).Parent:=(Frm_ConfForm.Components[y] as TPage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as tlistbox).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as tlistbox).Parent:=(Frm_ConfForm.Components[y] as TComboBox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as tlistbox).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as tlistbox).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagelcontrol' then
                  (Frm_ConfForm.Components[x] as tlistbox).Parent:=(Frm_ConfForm.Components[y] as TPageControl)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as tlistbox).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as tlistbox).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as tlistbox).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as tlistbox).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as tlistbox).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as tlistbox).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as tlistbox).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as tlistbox).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as tlistbox).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tdbcheckbox' then
                  (Frm_ConfForm.Components[x] as tlistbox).Parent:=(Frm_ConfForm.Components[y] as TDBCheckBox)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as Tlistbox).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as Tlistbox).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as Tlistbox).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as Tlistbox).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);

               end;
            end;
         (Frm_ConfForm.Components[x] as tlistbox).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as tlistbox).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as tlistbox).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as tlistbox).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as TListBox).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;

         (Frm_ConfForm.Components[x] as TListBox).Color      :=DM1.Query5.fieldbyName('CP_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TListBox).Font.Color :=DM1.Query5.fieldbyName('CP_FONT_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TListBox).Font.Height:=DM1.Query5.fieldbyName('CP_FONT_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as TListBox).Font.Size  :=DM1.Query5.fieldbyName('CP_FONT_SIZE').AsInteger;
         (Frm_ConfForm.Components[x] as TListBox).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as TListBox).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;
         (Frm_ConfForm.Components[x] as TListBox).Ctl3D      :=DM1.Query5.fieldbyName('CP_CTL3D').AsInteger=0;
         if DM1.Query5.fieldbyName('CP_BORDERSTYLE').AsInteger=0 then
            (Frm_ConfForm.Components[x] as TListBox).BorderStyle:=bsNone
         else
            (Frm_ConfForm.Components[x] as TListBox).BorderStyle:=bsSingle;


{
         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TListBox).Align     :=alBottom;
               1 :(Frm_ConfForm.Components[x] as TListBox).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as TListBox).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as TListBox).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as TListBox).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as TListBox).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as TListBox).Align    :=alTop;
               end;
}         case DM1.Query5.fieldbyName('CP_BEVELINNER').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TListBox).BevelInner :=bvLowered;
               1 :(Frm_ConfForm.Components[x] as TListBox).BevelInner :=bvNone;
               2 :(Frm_ConfForm.Components[x] as TListBox).BevelInner :=bvRaised;
               3 :(Frm_ConfForm.Components[x] as TListBox).BevelInner :=bvSpace;
               end;
         case DM1.Query5.fieldbyName('CP_BEVELKIND').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TListBox).BevelKind  :=bkFlat;
               1 :(Frm_ConfForm.Components[x] as TListBox).BevelKind  :=bkNone;
               2 :(Frm_ConfForm.Components[x] as TListBox).BevelKind  :=bkSoft;
               3 :(Frm_ConfForm.Components[x] as TListBox).BevelKind  :=bkTile;
               end;

         case DM1.Query5.fieldbyName('CP_BEVELOUTER').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TListBox).BevelOuter :=bvLowered;
               1 :(Frm_ConfForm.Components[x] as TListBox).BevelOuter :=bvNone;
               2 :(Frm_ConfForm.Components[x] as TListBox).BevelOuter :=bvRaised;
               3 :(Frm_ConfForm.Components[x] as TListBox).BevelOuter :=bvSpace;
               end;





         if (DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger)<4 then
            begin
            if DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger=0 then
               begin
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TListbox).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TListbox).Font.Style:=[fsBold,fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TListbox).Font.Style:=[fsBold,fsItalic]
                  end
               else
                   (Frm_ConfForm.Components[x] as TListbox).Font.Style:=[fsBold]
               end
            else
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TListbox).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                     else
                       (Frm_ConfForm.Components[x] as TListbox).Font.Style:=[fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TListbox).Font.Style:=[fsItalic];
                  end
               else
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TListbox).Font.Style:=[fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TListbox).Font.Style:=[fsUnderline];
                     end
                else
                   if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                     (Frm_ConfForm.Components[x] as TListbox).Font.Style:=[fsStrikeOut];
            end;

         (Frm_ConfForm.Components[x] as TListBox).TabOrder   :=DM1.Query5.fieldbyName('CP_CAMPO_ORDER').AsInteger;


         end
// tstatictext
      else if mClasseComp='tstatictext' then
         begin
         if (Frm_ConfForm.Components[x] as tstatictext).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);

               if mClasse='tedit' then
                  (Frm_ConfForm.Components[x] as tstatictext).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as tstatictext).Parent:=(Frm_ConfForm.Components[y] as tbitbtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as tstatictext).Parent:=(Frm_ConfForm.Components[y] as TPage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as tstatictext).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as tstatictext).Parent:=(Frm_ConfForm.Components[y] as TComboBox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as tstatictext).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as tstatictext).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagelcontrol' then
                  (Frm_ConfForm.Components[x] as tstatictext).Parent:=(Frm_ConfForm.Components[y] as TPageControl)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as tstatictext).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as tstatictext).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as tstatictext).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as tstatictext).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as tstatictext).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as tstatictext).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as tstatictext).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as tstatictext).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as tstatictext).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tdbcheckbox' then
                  (Frm_ConfForm.Components[x] as tstatictext).Parent:=(Frm_ConfForm.Components[y] as TDBCheckBox)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as Tstatictext).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as Tstatictext).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as Tstatictext).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as Tstatictext).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);

               end;
            end;
         (Frm_ConfForm.Components[x] as tstatictext).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as tstatictext).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as tstatictext).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as tstatictext).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as TStaticText).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;
         (Frm_ConfForm.Components[x] as TStaticText).Caption    :=DM1.Query5.fieldbyName('CP_CAPTION').AsString;

         (Frm_ConfForm.Components[x] as TStaticText).Color      :=DM1.Query5.fieldbyName('CP_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TStaticText).Font.Color :=DM1.Query5.fieldbyName('CP_FONT_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TStaticText).Font.Height:=DM1.Query5.fieldbyName('CP_FONT_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as TStaticText).Font.Size  :=DM1.Query5.fieldbyName('CP_FONT_SIZE').AsInteger;
         (Frm_ConfForm.Components[x] as TStaticText).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as TStaticText).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;
         if DM1.Query5.fieldbyName('CP_BORDERSTYLE').AsInteger=0 then
            (Frm_ConfForm.Components[x] as TStaticText).BorderStyle:= sbsNone
         else if DM1.Query5.fieldbyName('CP_BORDERSTYLE').AsInteger=1 then
            (Frm_ConfForm.Components[x] as TStaticText).BorderStyle:=sbsSingle
         else if DM1.Query5.fieldbyName('CP_BORDERSTYLE').AsInteger=2 then
            (Frm_ConfForm.Components[x] as TStaticText).BorderStyle:=sbsSunken;
{
         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TStaticText).Align     :=alBottom;
               1 :(Frm_ConfForm.Components[x] as TStaticText).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as TStaticText).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as TStaticText).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as TStaticText).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as TStaticText).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as TStaticText).Align    :=alTop;
               end;
}         case DM1.Query5.fieldbyName('CP_BEVELINNER').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TStaticText).BevelInner :=bvLowered;
               1 :(Frm_ConfForm.Components[x] as TStaticText).BevelInner :=bvNone;
               2 :(Frm_ConfForm.Components[x] as TStaticText).BevelInner :=bvRaised;
               3 :(Frm_ConfForm.Components[x] as TStaticText).BevelInner :=bvSpace;
               end;
         case DM1.Query5.fieldbyName('CP_BEVELKIND').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TStaticText).BevelKind  :=bkFlat;
               1 :(Frm_ConfForm.Components[x] as TStaticText).BevelKind  :=bkNone;
               2 :(Frm_ConfForm.Components[x] as TStaticText).BevelKind  :=bkSoft;
               3 :(Frm_ConfForm.Components[x] as TStaticText).BevelKind  :=bkTile;
               end;

         case DM1.Query5.fieldbyName('CP_BEVELOUTER').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TStaticText).BevelOuter :=bvLowered;
               1 :(Frm_ConfForm.Components[x] as TStaticText).BevelOuter :=bvNone;
               2 :(Frm_ConfForm.Components[x] as TStaticText).BevelOuter :=bvRaised;
               3 :(Frm_ConfForm.Components[x] as TStaticText).BevelOuter :=bvSpace;
               end;

         if (DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger)<4 then
            begin
            if DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger=0 then
               begin
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TStatictext).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TStatictext).Font.Style:=[fsBold,fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TStatictext).Font.Style:=[fsBold,fsItalic]
                  end
               else
                   (Frm_ConfForm.Components[x] as TStatictext).Font.Style:=[fsBold]
               end
            else
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TStatictext).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                     else
                       (Frm_ConfForm.Components[x] as TStatictext).Font.Style:=[fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TStatictext).Font.Style:=[fsItalic];
                  end
               else
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TStatictext).Font.Style:=[fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TStatictext).Font.Style:=[fsUnderline];
                     end
                else
                   if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                     (Frm_ConfForm.Components[x] as TStatictext).Font.Style:=[fsStrikeOut];
            end;

         (Frm_ConfForm.Components[x] as TStaticText).TabOrder   :=DM1.Query5.fieldbyName('CP_CAMPO_ORDER').AsInteger;

         end

// tradiogroup
      else if mClasseComp='tradiogroup' then
         begin
         if (Frm_ConfForm.Components[x] as tradiogroup).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);

               if mClasse='tedit' then
                  (Frm_ConfForm.Components[x] as tradiogroup).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as tradiogroup).Parent:=(Frm_ConfForm.Components[y] as tbitbtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as tradiogroup).Parent:=(Frm_ConfForm.Components[y] as TPage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as tradiogroup).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as tradiogroup).Parent:=(Frm_ConfForm.Components[y] as TComboBox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as tradiogroup).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as tradiogroup).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagelcontrol' then
                  (Frm_ConfForm.Components[x] as tradiogroup).Parent:=(Frm_ConfForm.Components[y] as TPageControl)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as tradiogroup).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as tradiogroup).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as tradiogroup).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as tradiogroup).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as tradiogroup).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as tradiogroup).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as tradiogroup).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as tradiogroup).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as tradiogroup).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tdbcheckbox' then
                  (Frm_ConfForm.Components[x] as tradiogroup).Parent:=(Frm_ConfForm.Components[y] as TDBCheckBox)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as Tradiogroup).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as Tradiogroup).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as Tradiogroup).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as Tradiogroup).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);

               end;
            end;
         (Frm_ConfForm.Components[x] as tradiogroup).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as tradiogroup).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as tradiogroup).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as tradiogroup).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as TRadioGroup).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;
         (Frm_ConfForm.Components[x] as TRadioGroup).Caption    :=DM1.Query5.fieldbyName('CP_CAPTION').AsString;

         (Frm_ConfForm.Components[x] as TRadioGroup).Color      :=DM1.Query5.fieldbyName('CP_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TRadioGroup).Font.Color :=DM1.Query5.fieldbyName('CP_FONT_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TRadioGroup).Font.Height:=DM1.Query5.fieldbyName('CP_FONT_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as TRadioGroup).Font.Size  :=DM1.Query5.fieldbyName('CP_FONT_SIZE').AsInteger;
         (Frm_ConfForm.Components[x] as TRadioGroup).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as TRadioGroup).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;
         (Frm_ConfForm.Components[x] as TRadioGroup).Ctl3D      :=DM1.Query5.fieldbyName('CP_CTL3D').AsInteger=0;
{         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TRadioGroup).Align     :=alBottom;
               1 :(Frm_ConfForm.Components[x] as TRadioGroup).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as TRadioGroup).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as TRadioGroup).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as TRadioGroup).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as TRadioGroup).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as TRadioGroup).Align    :=alTop;
               end;
}         if (DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger)<4 then
            begin
            if DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger=0 then
               begin
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TRadiogroup).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TRadiogroup).Font.Style:=[fsBold,fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TRadiogroup).Font.Style:=[fsBold,fsItalic]
                  end
               else
                   (Frm_ConfForm.Components[x] as TRadiogroup).Font.Style:=[fsBold]
               end
            else
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TRadiogroup).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                     else
                       (Frm_ConfForm.Components[x] as TRadiogroup).Font.Style:=[fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TRadiogroup).Font.Style:=[fsItalic];
                  end
               else
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TRadiogroup).Font.Style:=[fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TRadiogroup).Font.Style:=[fsUnderline];
                     end
                else
                   if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                     (Frm_ConfForm.Components[x] as TRadiogroup).Font.Style:=[fsStrikeOut];
            end;

         (Frm_ConfForm.Components[x] as TRadioGroup).TabOrder   :=DM1.Query5.fieldbyName('CP_CAMPO_ORDER').AsInteger;
         end
// tdbcheckbox
      else if mClasseComp='tdbcheckbox' then
         begin
         if (Frm_ConfForm.Components[x] as tdbcheckbox).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);

               if mClasse='tedit' then
                  (Frm_ConfForm.Components[x] as tdbcheckbox).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as tdbcheckbox).Parent:=(Frm_ConfForm.Components[y] as tbitbtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as tdbcheckbox).Parent:=(Frm_ConfForm.Components[y] as TPage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as tdbcheckbox).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as tdbcheckbox).Parent:=(Frm_ConfForm.Components[y] as TComboBox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as tdbcheckbox).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as tdbcheckbox).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagelcontrol' then
                  (Frm_ConfForm.Components[x] as tdbcheckbox).Parent:=(Frm_ConfForm.Components[y] as TPageControl)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as tdbcheckbox).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as tdbcheckbox).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as tdbcheckbox).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as tdbcheckbox).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as tdbcheckbox).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as tdbcheckbox).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as tdbcheckbox).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as tdbcheckbox).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as tdbcheckbox).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tdbcheckbox' then
                  (Frm_ConfForm.Components[x] as tdbcheckbox).Parent:=(Frm_ConfForm.Components[y] as TDBCheckBox)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as TDBcheckbox).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as TDBcheckbox).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as TDBcheckbox).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as TDBcheckbox).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);

               end;
            end;
         (Frm_ConfForm.Components[x] as tdbcheckbox).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as tdbcheckbox).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as tdbcheckbox).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as tdbcheckbox).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as TDBCheckBox).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;
         (Frm_ConfForm.Components[x] as TDBCheckBox).Caption    :=DM1.Query5.fieldbyName('CP_CAPTION').AsString;
         (Frm_ConfForm.Components[x] as TDBCheckBox).Color      :=DM1.Query5.fieldbyName('CP_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TDBCheckBox).Font.Color :=DM1.Query5.fieldbyName('CP_FONT_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as TDBCheckBox).Font.Height:=DM1.Query5.fieldbyName('CP_FONT_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as TDBCheckBox).Font.Size  :=DM1.Query5.fieldbyName('CP_FONT_SIZE').AsInteger;
         (Frm_ConfForm.Components[x] as TDBCheckBox).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as TDBCheckBox).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;
         (Frm_ConfForm.Components[x] as TDBCheckBox).Ctl3D      :=DM1.Query5.fieldbyName('CP_CTL3D').AsInteger=0;

{
         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as TDBCheckBox).Align     :=alBottom;
               1 :(Frm_ConfForm.Components[x] as TDBCheckBox).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as TDBCheckBox).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as TDBCheckBox).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as TDBCheckBox).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as TDBCheckBox).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as TDBCheckBox).Align    :=alTop;
               end;
}         if (DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger)<4 then
            begin
            if DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger=0 then
               begin
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TDBCheckbox).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TDBCheckbox).Font.Style:=[fsBold,fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TDBCheckbox).Font.Style:=[fsBold,fsItalic]
                  end
               else
                   (Frm_ConfForm.Components[x] as TDBCheckbox).Font.Style:=[fsBold]
               end
            else
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TDBCheckbox).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                     else
                       (Frm_ConfForm.Components[x] as TDBCheckbox).Font.Style:=[fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as TDBCheckbox).Font.Style:=[fsItalic];
                  end
               else
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as TDBCheckbox).Font.Style:=[fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as TDBCheckbox).Font.Style:=[fsUnderline];
                     end
                else
                   if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                     (Frm_ConfForm.Components[x] as TDBCheckbox).Font.Style:=[fsStrikeOut];


            end;
         (Frm_ConfForm.Components[x] as TDBCheckBox).TabOrder   :=DM1.Query5.fieldbyName('CP_CAMPO_ORDER').AsInteger;

         end
// tmemo
      else if mClasseComp='tmemo' then
         begin
         if (Frm_ConfForm.Components[x] as tmemo).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);

               if mClasse='tedit' then
                  (Frm_ConfForm.Components[x] as tmemo).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as tmemo).Parent:=(Frm_ConfForm.Components[y] as tbitbtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as tmemo).Parent:=(Frm_ConfForm.Components[y] as TPage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as tmemo).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as tmemo).Parent:=(Frm_ConfForm.Components[y] as TComboBox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as tmemo).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as tmemo).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagelcontrol' then
                  (Frm_ConfForm.Components[x] as tmemo).Parent:=(Frm_ConfForm.Components[y] as TPageControl)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as tmemo).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as tmemo).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as tmemo).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as tmemo).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as tmemo).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as tmemo).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as tmemo).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as tmemo).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as tmemo).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as tmemo).Parent:=(Frm_ConfForm.Components[y] as Tmemo)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as Tmemo).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as Tmemo).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as Tmemo).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as Tmemo).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);

               end;
            end;
         (Frm_ConfForm.Components[x] as tmemo).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as tmemo).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as tmemo).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as tmemo).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as Tmemo).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;
         (Frm_ConfForm.Components[x] as Tmemo).Text       :=DM1.Query5.fieldbyName('CP_CAPTION').AsString;
         (Frm_ConfForm.Components[x] as Tmemo).Color      :=DM1.Query5.fieldbyName('CP_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as Tmemo).Font.Color :=DM1.Query5.fieldbyName('CP_FONT_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as Tmemo).Font.Height:=DM1.Query5.fieldbyName('CP_FONT_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as Tmemo).Font.Size  :=DM1.Query5.fieldbyName('CP_FONT_SIZE').AsInteger;
         (Frm_ConfForm.Components[x] as Tmemo).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as Tmemo).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;
         (Frm_ConfForm.Components[x] as Tmemo).Ctl3D      :=DM1.Query5.fieldbyName('CP_CTL3D').AsInteger=0;

{
         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as Tmemo).Align     :=alBottom;
               1 :(Frm_ConfForm.Components[x] as Tmemo).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as Tmemo).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as Tmemo).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as Tmemo).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as Tmemo).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as Tmemo).Align    :=alTop;
               end;
}         if (DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger)<4 then
            begin
            if DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger=0 then
               begin
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as Tmemo).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as Tmemo).Font.Style:=[fsBold,fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as Tmemo).Font.Style:=[fsBold,fsItalic]
                  end
               else
                   (Frm_ConfForm.Components[x] as Tmemo).Font.Style:=[fsBold]
               end
            else
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as Tmemo).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                     else
                       (Frm_ConfForm.Components[x] as Tmemo).Font.Style:=[fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as Tmemo).Font.Style:=[fsItalic];
                  end
               else
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as Tmemo).Font.Style:=[fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as Tmemo).Font.Style:=[fsUnderline];
                     end
                else
                   if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                     (Frm_ConfForm.Components[x] as Tmemo).Font.Style:=[fsStrikeOut];

            end;
         (Frm_ConfForm.Components[x] as TMemo).TabOrder   :=DM1.Query5.fieldbyName('CP_CAMPO_ORDER').AsInteger;

         end
// tdbmemo
      else if mClasseComp='tdbmemo' then
         begin
         if (Frm_ConfForm.Components[x] as tdbmemo).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);

               if mClasse='tedit' then
                  (Frm_ConfForm.Components[x] as tdbmemo).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as tdbmemo).Parent:=(Frm_ConfForm.Components[y] as tbitbtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as tdbmemo).Parent:=(Frm_ConfForm.Components[y] as TPage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as tdbmemo).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as tdbmemo).Parent:=(Frm_ConfForm.Components[y] as TComboBox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as tdbmemo).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as tdbmemo).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagelcontrol' then
                  (Frm_ConfForm.Components[x] as tdbmemo).Parent:=(Frm_ConfForm.Components[y] as TPageControl)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as tdbmemo).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as tdbmemo).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as tdbmemo).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as tdbmemo).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as tdbmemo).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as tdbmemo).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as tdbmemo).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as tdbmemo).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as tdbmemo).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as tdbmemo).Parent:=(Frm_ConfForm.Components[y] as Tdbmemo)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as Tdbmemo).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as Tdbmemo).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as Tdbmemo).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as Tdbmemo).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);

               end;
            end;
         (Frm_ConfForm.Components[x] as tdbmemo).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as tdbmemo).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as tdbmemo).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as tdbmemo).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as Tdbmemo).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;
         (Frm_ConfForm.Components[x] as Tdbmemo).text       :=DM1.Query5.fieldbyName('CP_CAPTION').AsString;
         (Frm_ConfForm.Components[x] as Tdbmemo).Color      :=DM1.Query5.fieldbyName('CP_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as Tdbmemo).Font.Color :=DM1.Query5.fieldbyName('CP_FONT_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as Tdbmemo).Font.Height:=DM1.Query5.fieldbyName('CP_FONT_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as Tdbmemo).Font.Size  :=DM1.Query5.fieldbyName('CP_FONT_SIZE').AsInteger;
         (Frm_ConfForm.Components[x] as Tdbmemo).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as Tdbmemo).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;
         (Frm_ConfForm.Components[x] as Tdbmemo).Ctl3D      :=DM1.Query5.fieldbyName('CP_CTL3D').AsInteger=0;

{
         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as Tdbmemo).Align     :=alBottom;
               1 :(Frm_ConfForm.Components[x] as Tdbmemo).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as Tdbmemo).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as Tdbmemo).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as Tdbmemo).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as Tdbmemo).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as Tdbmemo).Align    :=alTop;
               end;
}         if (DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger)<4 then
            begin
            if DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger=0 then
               begin
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as Tdbmemo).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as Tdbmemo).Font.Style:=[fsBold,fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as Tdbmemo).Font.Style:=[fsBold,fsItalic]
                  end
               else
                   (Frm_ConfForm.Components[x] as Tdbmemo).Font.Style:=[fsBold]
               end
            else
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as Tdbmemo).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                     else
                       (Frm_ConfForm.Components[x] as Tdbmemo).Font.Style:=[fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as Tdbmemo).Font.Style:=[fsItalic];
                  end
               else
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as Tdbmemo).Font.Style:=[fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as Tdbmemo).Font.Style:=[fsUnderline];
                     end
                else
                   if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                     (Frm_ConfForm.Components[x] as Tdbmemo).Font.Style:=[fsStrikeOut];
            end;
         (Frm_ConfForm.Components[x] as TDBMemo).TabOrder   :=DM1.Query5.fieldbyName('CP_CAMPO_ORDER').AsInteger;
         end
// tstringgrid
      else if mClasseComp='tstringgrid' then
         begin
         if (Frm_ConfForm.Components[x] as tstringgrid).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);

               if mClasse='tedit' then
                  (Frm_ConfForm.Components[x] as tstringgrid).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as tstringgrid).Parent:=(Frm_ConfForm.Components[y] as tbitbtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as tstringgrid).Parent:=(Frm_ConfForm.Components[y] as TPage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as tstringgrid).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as tstringgrid).Parent:=(Frm_ConfForm.Components[y] as TComboBox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as tstringgrid).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as tstringgrid).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagelcontrol' then
                  (Frm_ConfForm.Components[x] as tstringgrid).Parent:=(Frm_ConfForm.Components[y] as TPageControl)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as tstringgrid).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as tstringgrid).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as tstringgrid).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as tstringgrid).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as tstringgrid).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as tstringgrid).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as tstringgrid).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as tstringgrid).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as tstringgrid).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as tstringgrid).Parent:=(Frm_ConfForm.Components[y] as Tstringgrid)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as Tstringgrid).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as Tstringgrid).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as Tstringgrid).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as Tstringgrid).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);

               end;
            end;
         (Frm_ConfForm.Components[x] as tstringgrid).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as tstringgrid).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as tstringgrid).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as tstringgrid).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as Tstringgrid).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;
         (Frm_ConfForm.Components[x] as Tstringgrid).Color      :=DM1.Query5.fieldbyName('CP_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as Tstringgrid).Font.Color :=DM1.Query5.fieldbyName('CP_FONT_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as Tstringgrid).Font.Height:=DM1.Query5.fieldbyName('CP_FONT_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as Tstringgrid).Font.Size  :=DM1.Query5.fieldbyName('CP_FONT_SIZE').AsInteger;
         (Frm_ConfForm.Components[x] as Tstringgrid).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as Tstringgrid).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;
         (Frm_ConfForm.Components[x] as Tstringgrid).Ctl3D      :=DM1.Query5.fieldbyName('CP_CTL3D').AsInteger=0;

{
         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as Tstringgrid).Align     :=alBottom;
               1 :(Frm_ConfForm.Components[x] as Tstringgrid).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as Tstringgrid).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as Tstringgrid).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as Tstringgrid).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as Tstringgrid).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as Tstringgrid).Align    :=alTop;
               end;
}         if (DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger)<4 then
            begin
            if DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger=0 then
               begin
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as Tstringgrid).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as Tstringgrid).Font.Style:=[fsBold,fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as Tstringgrid).Font.Style:=[fsBold,fsItalic]
                  end
               else
                   (Frm_ConfForm.Components[x] as Tstringgrid).Font.Style:=[fsBold]
               end
            else
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as Tstringgrid).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                     else
                       (Frm_ConfForm.Components[x] as Tstringgrid).Font.Style:=[fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as Tstringgrid).Font.Style:=[fsItalic];
                  end
               else
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as Tstringgrid).Font.Style:=[fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as Tstringgrid).Font.Style:=[fsUnderline];
                     end
                else
                   if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                     (Frm_ConfForm.Components[x] as Tstringgrid).Font.Style:=[fsStrikeOut];

            end;

         (Frm_ConfForm.Components[x] as TStringGrid).TabOrder   :=DM1.Query5.fieldbyName('CP_CAMPO_ORDER').AsInteger;
         end
// tcheckbox
      else if mClasseComp='tcheckbox' then
         begin
         if (Frm_ConfForm.Components[x] as tcheckbox).Parent.Name<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
            begin
            for y:=0 to Frm_ConfForm.ComponentCount-1 do
               begin
               if (Frm_ConfForm.Components[y].Name)<>DM1.Query5.fieldbyName('CP_PARENT_NOME').Asstring then
                  Continue;
               mClasse:=LowerCase(Frm_ConfForm.Components[y].ClassName);

               if mClasse='tedit' then
                  (Frm_ConfForm.Components[x] as tcheckbox).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tbitbtn' then
                  (Frm_ConfForm.Components[x] as tcheckbox).Parent:=(Frm_ConfForm.Components[y] as tbitbtn)
               else if mClasse='tpage' then
                  (Frm_ConfForm.Components[x] as tcheckbox).Parent:=(Frm_ConfForm.Components[y] as TPage)
               else if mClasse='tpanel' then
                  (Frm_ConfForm.Components[x] as tcheckbox).Parent:=(Frm_ConfForm.Components[y] as TPanel)
               else if mClasse='tcombobox' then
                  (Frm_ConfForm.Components[x] as tcheckbox).Parent:=(Frm_ConfForm.Components[y] as TComboBox)
               else if mClasse='tmaskedit' then
                  (Frm_ConfForm.Components[x] as tcheckbox).Parent:=(Frm_ConfForm.Components[y] as TMaskEdit)
               else if mClasse='ttabsheet' then
                  (Frm_ConfForm.Components[x] as tcheckbox).Parent:=(Frm_ConfForm.Components[y] as TTabSheet)
               else if mClasse='tpagelcontrol' then
                  (Frm_ConfForm.Components[x] as tcheckbox).Parent:=(Frm_ConfForm.Components[y] as TPageControl)
               else if mClasse='tgroupbox' then
                  (Frm_ConfForm.Components[x] as tcheckbox).Parent:=(Frm_ConfForm.Components[y] as TGroupBox)
               else if mClasse='tdbnavigator' then
                  (Frm_ConfForm.Components[x] as tcheckbox).Parent:=(Frm_ConfForm.Components[y] as TDBNavigator)
               else if mClasse='tdbcombobox' then
                  (Frm_ConfForm.Components[x] as tcheckbox).Parent:=(Frm_ConfForm.Components[y] as TDBComboBox)
               else if mClasse='tdbradiogroup' then
                  (Frm_ConfForm.Components[x] as tcheckbox).Parent:=(Frm_ConfForm.Components[y] as TDBRadioGroup)
               else if mClasse='tdbgrid' then
                  (Frm_ConfForm.Components[x] as tcheckbox).Parent:=(Frm_ConfForm.Components[y] as TDBGrid)
               else if mClasse='tdbedit' then
                  (Frm_ConfForm.Components[x] as tcheckbox).Parent:=(Frm_ConfForm.Components[y] as TDBEdit)
               else if mClasse='tlistbox' then
                  (Frm_ConfForm.Components[x] as tcheckbox).Parent:=(Frm_ConfForm.Components[y] as Tlistbox)
               else if mClasse='tstatictext' then
                  (Frm_ConfForm.Components[x] as tcheckbox).Parent:=(Frm_ConfForm.Components[y] as TStaticText)
               else if mClasse='tradiogroup' then
                  (Frm_ConfForm.Components[x] as tcheckbox).Parent:=(Frm_ConfForm.Components[y] as TRadioGroup)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as tcheckbox).Parent:=(Frm_ConfForm.Components[y] as Tcheckbox)
               else if mClasse='tmemo' then
                  (Frm_ConfForm.Components[x] as Tcheckbox).Parent:=(Frm_ConfForm.Components[y] as TMemo)
               else if mClasse='tdbmemo' then
                  (Frm_ConfForm.Components[x] as Tcheckbox).Parent:=(Frm_ConfForm.Components[y] as TDBMemo)
               else if mClasse='tstringgrid' then
                  (Frm_ConfForm.Components[x] as Tcheckbox).Parent:=(Frm_ConfForm.Components[y] as TStringGrid)
               else if mClasse='tcheckbox' then
                  (Frm_ConfForm.Components[x] as Tcheckbox).Parent:=(Frm_ConfForm.Components[y] as TCheckBox);

               end;
            end;
         (Frm_ConfForm.Components[x] as tcheckbox).Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
         (Frm_ConfForm.Components[x] as tcheckbox).Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as tcheckbox).Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
         (Frm_ConfForm.Components[x] as tcheckbox).Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
         (Frm_ConfForm.Components[x] as Tcheckbox).Visible    :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger=0;
         (Frm_ConfForm.Components[x] as Tcheckbox).Caption    :=DM1.Query5.fieldbyName('CP_CAPTION').AsString;
         (Frm_ConfForm.Components[x] as Tcheckbox).Color      :=DM1.Query5.fieldbyName('CP_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as Tcheckbox).Font.Color :=DM1.Query5.fieldbyName('CP_FONT_COLOR').AsInteger;
         (Frm_ConfForm.Components[x] as Tcheckbox).Font.Height:=DM1.Query5.fieldbyName('CP_FONT_HEIGHT').AsInteger;
         (Frm_ConfForm.Components[x] as Tcheckbox).Font.Size  :=DM1.Query5.fieldbyName('CP_FONT_SIZE').AsInteger;
         (Frm_ConfForm.Components[x] as Tcheckbox).ShowHint   :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger=0;
         (Frm_ConfForm.Components[x] as Tcheckbox).Hint       :=DM1.Query5.fieldbyName('CP_HINT').AsString;
         (Frm_ConfForm.Components[x] as Tcheckbox).Ctl3D      :=DM1.Query5.fieldbyName('CP_CTL3D').AsInteger=0;

{
         case DM1.Query5.fieldbyName('CP_ALIGN').AsInteger of
               0 :(Frm_ConfForm.Components[x] as Tcheckbox).Align     :=alBottom;
               1 :(Frm_ConfForm.Components[x] as Tcheckbox).Align    :=alClient;
               2 :(Frm_ConfForm.Components[x] as Tcheckbox).Align    :=alCustom;
               3 :(Frm_ConfForm.Components[x] as Tcheckbox).Align    :=alLeft;
               4 :(Frm_ConfForm.Components[x] as Tcheckbox).Align    :=alNone;
               5 :(Frm_ConfForm.Components[x] as Tcheckbox).Align    :=alRight;
               6 :(Frm_ConfForm.Components[x] as Tcheckbox).Align    :=alTop;
               end;
}         if (DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger
            +DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger)<4 then
            begin
            if DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger=0 then
               begin
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as Tcheckbox).Font.Style:=[fsBold,fsItalic,fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as Tcheckbox).Font.Style:=[fsBold,fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as Tcheckbox).Font.Style:=[fsBold,fsItalic]
                  end
               else
                   (Frm_ConfForm.Components[x] as Tcheckbox).Font.Style:=[fsBold]
               end
            else
               if DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger=0 then
                  begin
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as Tcheckbox).Font.Style:=[fsItalic,fsUnderline,fsStrikeOut]
                     else
                       (Frm_ConfForm.Components[x] as Tcheckbox).Font.Style:=[fsItalic,fsUnderline];
                     end
                  else
                     (Frm_ConfForm.Components[x] as Tcheckbox).Font.Style:=[fsItalic];
                  end
               else
                  if DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger=0 then
                     begin
                     if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                        (Frm_ConfForm.Components[x] as Tcheckbox).Font.Style:=[fsUnderline,fsStrikeOut]
                     else
                        (Frm_ConfForm.Components[x] as Tcheckbox).Font.Style:=[fsUnderline];
                     end
                else
                   if DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger=0 then
                     (Frm_ConfForm.Components[x] as Tcheckbox).Font.Style:=[fsStrikeOut];
            end;
         (Frm_ConfForm.Components[x] as TCheckBox).TabOrder   :=DM1.Query5.fieldbyName('CP_CAMPO_ORDER').AsInteger;

         end;
      end;
   end;


if DM1.Query5.Locate('CP_NOMECOMP','Frm_ConfForm',[]) then
   begin
   Frm_ConfForm.Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
   Frm_ConfForm.Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
   Frm_ConfForm.Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
   Frm_ConfForm.Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
   end;

DM1.Query5.First;
While not DM1.Query5.Eof do
   begin
   if Frm_PerForm.Tb_Componentes.Locate('nomecomp',DM1.Query5.fieldbyName('CP_NOMECOMP').AsString,[]) then
      begin
      Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value         :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
      Frm_PerForm.Tb_ComponentesHeight.Value          :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
      Frm_PerForm.Tb_ComponentesTOP.Value             :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
      Frm_PerForm.Tb_ComponentesMLEFT.Value           :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
      Frm_PerForm.Tb_ComponentesVISIVEL.Value         :=DM1.Query5.fieldbyName('CP_VISIVEL').AsInteger;
      Frm_PerForm.Tb_ComponentesCAPTION.Value         :=DM1.Query5.fieldbyName('CP_CAPTION').AsString;
      if trim(DM1.Query5.fieldbyName('CP_PARENT_NOME').AsString)<>'' then
         Frm_PerForm.Tb_ComponentesPARENT_NOME.Value     :=DM1.Query5.fieldbyName('CP_PARENT_NOME').AsString;
      Frm_PerForm.Tb_ComponentesCAMPO_ORDER.Value     :=DM1.Query5.fieldbyName('CP_CAMPO_ORDER').AsInteger;
      Frm_PerForm.Tb_ComponentesCAMPO_INDEX.Value     :=DM1.Query5.fieldbyName('CP_CAMPO_INDEX').AsInteger;
      Frm_PerForm.Tb_ComponentesCAMPO_TABELA.Value    :=DM1.Query5.fieldbyName('CP_CAMPO_TABELA').AsString;
      Frm_PerForm.Tb_ComponentesCAMPO_NOME.Value      :=DM1.Query5.fieldbyName('CP_CAMPO_NOME').AsString;
      Frm_PerForm.Tb_ComponentesCAMPO_TAMANHO.Value   :=DM1.Query5.fieldbyName('CP_CAMPO_TAMANHO').AsString;
      Frm_PerForm.Tb_ComponentesCAMPO_DEC.Value       :=DM1.Query5.fieldbyName('CP_CAMPO_DEC').AsInteger;
      Frm_PerForm.Tb_ComponentesCAMPO_DESC.Value      :=DM1.Query5.fieldbyName('CP_CAMPO_DESC').AsString;
      Frm_PerForm.Tb_ComponentesFONT_COLOR.Value      :=DM1.Query5.fieldbyName('CP_FONT_COLOR').AsInteger;
      Frm_PerForm.Tb_ComponentesFONT_HEIGHT.Value     :=DM1.Query5.fieldbyName('CP_FONT_HEIGHT').AsInteger;
      Frm_PerForm.Tb_ComponentesFONT_SIZE.Value       :=DM1.Query5.fieldbyName('CP_FONT_SIZE').AsInteger;
      Frm_PerForm.Tb_ComponentesFONT_NAME.Value       :=DM1.Query5.fieldbyName('CP_FONT_NAME').AsString;
      Frm_PerForm.Tb_ComponentesFONT_FSBOLD.Value     :=DM1.Query5.fieldbyName('CP_FONT_FSBOLD').AsInteger;
      Frm_PerForm.Tb_ComponentesFONT_FSITALIC.Value   :=DM1.Query5.fieldbyName('CP_FONT_FSITALIC').AsInteger;
      Frm_PerForm.Tb_ComponentesFONT_FTUNDERLINE.Value:=DM1.Query5.fieldbyName('CP_FONT_FTUNDERLINE').AsInteger;
      Frm_PerForm.Tb_ComponentesFONT_STRIKEOUT.Value  :=DM1.Query5.fieldbyName('CP_FONT_STRIKEOUT').AsInteger;
      Frm_PerForm.Tb_ComponentesBEVELINNER.Value      :=DM1.Query5.fieldbyName('CP_BEVELINNER').AsInteger;
      Frm_PerForm.Tb_ComponentesBEVELKIND.Value       :=DM1.Query5.fieldbyName('CP_BEVELKIND').AsInteger;
      Frm_PerForm.Tb_ComponentesBEVELOUTER.Value      :=DM1.Query5.fieldbyName('CP_BEVELOUTER').AsInteger;
      Frm_PerForm.Tb_ComponentesBEVELWIDTH.Value      :=DM1.Query5.fieldbyName('CP_BEVELWIDTH').AsInteger;
      Frm_PerForm.Tb_ComponentesBORDERSTYLE.Value     :=DM1.Query5.fieldbyName('CP_BORDERSTYLE').AsInteger;
      Frm_PerForm.Tb_ComponentesCHARCASE.Value        :=DM1.Query5.fieldbyName('CP_CHARCASE').AsInteger;
      Frm_PerForm.Tb_ComponentesCOLOR.Value           :=DM1.Query5.fieldbyName('CP_COLOR').AsInteger;
      Frm_PerForm.Tb_ComponentesCTL3D.Value           :=DM1.Query5.fieldbyName('CP_CTL3D').AsInteger;
      Frm_PerForm.Tb_ComponentesENABLED.Value         :=DM1.Query5.fieldbyName('CP_ENABLED').AsInteger;
      Frm_PerForm.Tb_ComponentesSHOWHINT.Value        :=DM1.Query5.fieldbyName('CP_SHOWHINT').AsInteger;
      Frm_PerForm.Tb_ComponentesALIGN.Value           :=DM1.Query5.fieldbyName('CP_ALIGN').AsInteger;
      Frm_PerForm.Tb_ComponentesALIGNMENT.Value       :=DM1.Query5.fieldbyName('CP_ALIGNMENT').AsInteger;
      Frm_PerForm.Tb_ComponentesHINT.Value            :=DM1.Query5.fieldbyName('CP_HINT').AsString;
      Frm_PerForm.Tb_Componentes.Post;
      end;
   DM1.Query5.Next;
   end;
if Frm_PerForm.Tb_Componentes.Locate('NOMECOMP','Frm_ConfForm',[]) then
   begin
   Frm_ConfForm.Width      :=DM1.Query5.fieldbyName('CP_TAMANHO').AsInteger;
   Frm_ConfForm.Height     :=DM1.Query5.fieldbyName('CP_HEIGHT').AsInteger;
   Frm_ConfForm.Top        :=DM1.Query5.fieldbyName('CP_TOP').AsInteger;
   Frm_ConfForm.Left       :=DM1.Query5.fieldbyName('CP_MLEFT').AsInteger;
   end;
pAtualizaComponente:=true;
mValidaPost:=true;

result:=true;

end;


procedure TFrm_PerForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ffechartudo(0);
if (FormState<>[fsModal]) then
   Action := caFree;
Application.Terminate;

end;

end.

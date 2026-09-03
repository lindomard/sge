unit S_ConfForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,S_Pro,S_Cli, Grids, ExtCtrls, Mask, ComCtrls,
  DBCtrls, DBGrids,func,db,dbtables;

type
  TFrm_ConfForm = class(TForm)
    procedure GeralClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClick(Sender: TObject);
// para movimentar
   procedure MouseDownGeral(Sender: TObject; Button: TMouseButton;
     Shift: TShiftState; X, Y: Integer);

   procedure MouseMoveGeral(Sender: TObject; Shift: TShiftState; X,
     Y: Integer);

   procedure MouseUpGeral(Sender: TObject; Button: TMouseButton;
     Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

// fim do movimentar
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function fMarCaDesmarcaCompontente(pAtivaDesativa,pComp: Integer; pClasse: String):Boolean;


var
  Frm_ConfForm : TFrm_ConfForm;
  mPanel       : TPanel;
  mLabel       : TLabel;
  mEdit        : TEdit;
  mBitBtn      : TBitBtn;
  mPage        : TPage;
  mComboBox    : TComboBox;
  mMaskEdit    : TMaskEdit;
  mTabSheet    : TTabSheet;
  mPageControl : TPageControl;
  mGroupBox    : TGroupBox;
  mDbNavigator : TDBNavigator;
  mBevel       : TBevel;
  mDbComboBox  : TDBComboBox;
  mDBRadioGroup: TDBRadioGroup;
  mDbGrid      : TDbGrid;
  mDbEdit      : TDbEdit;
  mListBox     : TListBox;
  mStaticText  : TStaticText;
  mRadioGroup  : TRadioGroup;
  mDbCheckBox  : TDBCheckBox;
  mCheckBox    : TCheckBox;
  mMemo        : TMemo;
  mDbMemo      : TDBMemo;
  mStringGrid  : TStringGrid;

//  mCorMarca    : TColor=clRed;
//  mCorant      : TColor=clRed;

  mCaptionForm : String;
  mArrastaComp : Boolean=False;

  MouseDownSpot : TPoint;
  Capturing : bool;

  mCompArast: String='';

implementation

uses S_PerForm, S_AjustaComp;

{$R *.dfm}



procedure TFrm_ConfForm.GeralClick(Sender: TObject);
var
x: Integer;
begin




if (trim(pNomeClasse_Antes)<>'') AND (pItemAntes>=0) and (pItemAntes<>99999)  then
   begin
   fMarCaDesmarcaCompontente(1,pItemAntes,pNomeClasse_Antes);
   end;

pAtualizaComponente:=false;
if Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert] then
   Frm_PerForm.Tb_Componentes.Post;

for x:=0 to Frm_ConfForm.ComponentCount-1 do
   begin
   if Sender=Frm_ConfForm.Components[x] then
      break;
   end;
//ShowMessage('Clicou: '+Frm_ConfForm.Components[x].Name);
mCompArast:=Frm_ConfForm.Components[x].Name;

//ShowMessage('Clicou: '+TObject.ClassName);

mArrastaComp:=true;
mNomeClasse:=lowercase(Frm_ConfForm.Components[x].ClassName);
Frm_PerForm.Tb_Componentes.Locate('NomeComp',mCompArast,[]);
//fMarCaDesmarcaCompontente(0,mComponenteAtivo,mNomeClasse);
//Frm_AjustaComp.lbl_nome.Caption    :=Frm_ConfForm.Components[x].Name;
Frm_AjustaComp.Show;
pAtualizaComponente:=true;

end;

procedure TFrm_ConfForm.FormActivate(Sender: TObject);
begin
mCaptionForm:=Frm_ConfForm.Caption;
end;

procedure TFrm_ConfForm.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
Frm_ConfForm.Caption:=mCaptionForm+' '+Format('Posição: (%d, %d)', [X, Y])+' '+Sender.ClassName ;
if mArrastaComp then
  Frm_ConfForm.Caption:=Frm_ConfForm.Caption+'. Mover Componente: ';
//  mArrastaComp : Boolean=False;
Frm_ConfForm.Update;

end;

procedure TFrm_ConfForm.FormClick(Sender: TObject);
begin
//ShowMessage('Mouse Clicado: '+ Sender.ClassName+' ');
end;

procedure TFrm_ConfForm.MouseDownGeral(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
c: Integer;
begin
for c:=0 to Frm_ConfForm.ComponentCount-1 do
   begin
   if Sender=Frm_ConfForm.Components[c] then
      break;
   end;
mNomeClasse     :=lowercase(Frm_ConfForm.Components[c].ClassName);

if mCompArast<>Frm_ConfForm.Components[c].Name then
   exit;
if Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert] then
   Frm_PerForm.Tb_Componentes.Post;

if Frm_PerForm.Tb_ComponentesSequencia.Value<>c then
   begin
   if Frm_PerForm.Tb_Componentes.Locate('sequencia',c,[]) then
      Frm_PerForm.Tb_Componentes.Edit;
   end;
if mArrastaComp then
   begin
   if mNomeClasse='tlabel' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TLabel).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value :=(Frm_ConfForm.Components[c] as TLabel).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value  :=(Frm_ConfForm.Components[c] as TLabel).Height;
      Frm_PerForm.Tb_ComponentesTop.Value     :=(Frm_ConfForm.Components[c] as TLabel).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TLabel).Left;
      end
   else if mNomeClasse='tedit' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TEdit).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;

      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TEdit).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TEdit).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TEdit).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TEdit).Left;
      end
   else if mNomeClasse='tdbedit' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TDBEdit).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TDBEdit).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TDBEdit).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TDBEdit).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TDBEdit).Left;
      end
   else if mNomeClasse='tbitbtn' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TBitBtn).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TBitBtn).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TBitBtn).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TBitBtn).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TBitBtn).Left;
      end
   else if mNomeClasse='tpage' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TPage).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TPage).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TPage).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TPage).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TPage).Left;
      end
   else if mNomeClasse='tpanel' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TPanel).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TPanel).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TPanel).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TPanel).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TPanel).Left;
      end
   else if mNomeClasse='tcombobox' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TComboBox).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TComboBox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TComboBox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TComboBox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TComboBox).Left;
      end
   else if mNomeClasse='tmaskedit' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TMaskEdit).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TMaskEdit).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TMaskEdit).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TMaskEdit).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TMaskEdit).Left;
      end
   else if mNomeClasse='ttabsheet' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TTabSheet).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TTabSheet).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TTabSheet).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TTabSheet).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TTabSheet).Left;
      end
   else if mNomeClasse='tpagecontrol' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TPageControl).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TPageControl).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TPageControl).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TPageControl).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TPageControl).Left;
      end
   else if mNomeClasse='tgroupbox' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TGroupBox).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TGroupBox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TGroupBox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TGroupBox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TGroupBox).Left;
      end
   else if mNomeClasse='tdbnavigator' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TDBNavigator).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TDBNavigator).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TDBNavigator).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TDBNavigator).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TDBNavigator).Left;
      end
   else if mNomeClasse='tbevel' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TBevel).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TBevel).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TBevel).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TBevel).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TBevel).Left;
      end
   else if mNomeClasse='tdbcombobox' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TDBComboBox).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TDBComboBox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TDBComboBox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TDBComboBox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TDBComboBox).Left;
      end
   else if mNomeClasse='tdbradiogroup' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TDBRadioGroup).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TDBRadioGroup).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TDBRadioGroup).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TDBRadioGroup).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TDBRadioGroup).Left;
      end
   else if mNomeClasse='tdbgrid' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TDBGrid).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TDBGrid).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TDBGrid).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TDBGrid).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TDBGrid).Left;
      end
   else if mNomeClasse='tlistbox' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TListBox).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TListBox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TListBox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TListBox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TListBox).Left;
      end
   else if mNomeClasse='tstatictext' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TStaticText).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TStaticText).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TStaticText).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TStaticText).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TStaticText).Left;
      end
   else if mNomeClasse='tradiogroup' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TRadioGroup).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TRadioGroup).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TRadioGroup).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TRadioGroup).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TRadioGroup).Left;
      end
   else if mNomeClasse='tdbcheckbox' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TDBCheckBox).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TDBCheckBox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TDBCheckBox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TDBCheckBox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TDBCheckBox).Left;
      end
   else if mNomeClasse='tmemo' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TMemo).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TMemo).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TMemo).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TMemo).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TMemo).Left;
      end
   else if mNomeClasse='tdbmemo' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TDBMemo).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TDBMemo).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TDBMemo).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TDBMemo).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TDBMemo).Left;
      end
   else if mNomeClasse='tstringgrid' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TStringGrid).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TStringGrid).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TStringGrid).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TStringGrid).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TStringGrid).Left;
      end
   else if mNomeClasse='tcheckbox' then
      begin
      SetCapture( (Frm_ConfForm.Components[c] as TCheckBox).Height);
      Capturing := true;
      MouseDownSpot.X := x;
      MouseDownSpot.Y := Y;
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TCheckBox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TCheckBox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TCheckBox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TCheckBox).Left;
      end;
   end;


end;


procedure TFrm_ConfForm.MouseMoveGeral(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
c: Integer;
begin

for c:=0 to Frm_ConfForm.ComponentCount-1 do
   begin
   if Sender=Frm_ConfForm.Components[c] then
      break;
   end;
mNomeClasse     :=lowercase(Frm_ConfForm.Components[c].ClassName);
if trim(mCompArast)<>'' then
   begin
   Frm_AjustaComp.Label5.Caption:=mCompArast+'Nome: '+Frm_ConfForm.Components[c].Name+' Valor c='+ IntTostr(c);
   Frm_AjustaComp.Label5.Update;
   end;

if mCompArast<>Frm_ConfForm.Components[c].Name then
   exit;

if Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert] then
   Frm_PerForm.Tb_Componentes.Post;

if Frm_PerForm.Tb_ComponentesSequencia.Value<>c then
   begin
   if Frm_PerForm.Tb_Componentes.Locate('sequencia',c,[]) then
      Frm_PerForm.Tb_Componentes.Edit;
   end;


if (mArrastaComp) and (Capturing) then
   begin
   if mNomeClasse='tlabel' then
      begin
      (Frm_ConfForm.Components[c] as TLabel).Left:= (Frm_ConfForm.Components[c] as TLabel).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TLabel).Top := (Frm_ConfForm.Components[c] as TLabel).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TLabel).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TLabel).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TLabel).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TLabel).Left;

//      fAtualizarPosicoes(mNomeClasse,c);
      end
   else  if mNomeClasse='tedit' then
      begin
      (Frm_ConfForm.Components[c] as TEdit).Left:= (Frm_ConfForm.Components[c] as TEdit).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TEdit).Top := (Frm_ConfForm.Components[c] as TEdit).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;

      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TEdit).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TEdit).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TEdit).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TEdit).Left;

//      fAtualizarPosicoes(mNomeClasse,c);
      end
   else  if mNomeClasse='tdbedit' then
      begin
      (Frm_ConfForm.Components[c] as TDBEdit).Left:= (Frm_ConfForm.Components[c] as TDBEdit).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TDBEdit).Top := (Frm_ConfForm.Components[c] as TDBEdit).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TDBEdit).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TDBEdit).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TDBEdit).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TDBEdit).Left;
      end
   else  if mNomeClasse='tbitbtn' then
      begin
      (Frm_ConfForm.Components[c] as TBitBtn).Left:= (Frm_ConfForm.Components[c] as TBitBtn).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TBitBtn).Top := (Frm_ConfForm.Components[c] as TBitBtn).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TBitBtn).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TBitBtn).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TBitBtn).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TBitBtn).Left;
      end
   else  if mNomeClasse='tpage' then
      begin
      (Frm_ConfForm.Components[c] as TPage).Left:= (Frm_ConfForm.Components[c] as TPage).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TPage).Top := (Frm_ConfForm.Components[c] as TPage).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TPage).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TPage).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TPage).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TPage).Left;
      end
   else  if mNomeClasse='tpanel' then
      begin
      (Frm_ConfForm.Components[c] as TPanel).Left:= (Frm_ConfForm.Components[c] as TPanel).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TPanel).Top := (Frm_ConfForm.Components[c] as TPanel).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TPanel).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TPanel).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TPanel).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TPanel).Left;
      end
   else  if mNomeClasse='tcombobox' then
      begin
      (Frm_ConfForm.Components[c] as TComboBox).Left:= (Frm_ConfForm.Components[c] as TComboBox).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TComboBox).Top := (Frm_ConfForm.Components[c] as TComboBox).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TComboBox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TComboBox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TComboBox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TComboBox).Left;
      end
   else  if mNomeClasse='tmaskedit' then
      begin
      (Frm_ConfForm.Components[c] as TMaskEdit).Left:= (Frm_ConfForm.Components[c] as TMaskEdit).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TMaskEdit).Top := (Frm_ConfForm.Components[c] as TMaskEdit).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TMaskEdit).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TMaskEdit).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TMaskEdit).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TMaskEdit).Left;
      end
   else  if mNomeClasse='ttabsheet' then
      begin
      (Frm_ConfForm.Components[c] as TTabSheet).Left:= (Frm_ConfForm.Components[c] as TTabSheet).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TTabSheet).Top := (Frm_ConfForm.Components[c] as TTabSheet).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TTabSheet).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TTabSheet).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TTabSheet).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TTabSheet).Left;
      end
   else  if mNomeClasse='tpagecontrol' then
      begin
      (Frm_ConfForm.Components[c] as TPageControl).Left:= (Frm_ConfForm.Components[c] as TPageControl).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TPageControl).Top := (Frm_ConfForm.Components[c] as TPageControl).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TPageControl).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TPageControl).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TPageControl).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TPageControl).Left;
      end
   else  if mNomeClasse='tgroupbox' then
      begin
      (Frm_ConfForm.Components[c] as TGroupBox).Left:= (Frm_ConfForm.Components[c] as TGroupBox).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TGroupBox).Top := (Frm_ConfForm.Components[c] as TGroupBox).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TGroupBox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TGroupBox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TGroupBox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TGroupBox).Left;
      end
   else  if mNomeClasse='tdbnavigator' then
      begin
      (Frm_ConfForm.Components[c] as TDBNavigator).Left:= (Frm_ConfForm.Components[c] as TDBNavigator).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TDBNavigator).Top := (Frm_ConfForm.Components[c] as TDBNavigator).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TDBNavigator).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TDBNavigator).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TDBNavigator).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TDBNavigator).Left;
      end
   else  if mNomeClasse='tbevel' then
      begin
      (Frm_ConfForm.Components[c] as TBevel).Left:= (Frm_ConfForm.Components[c] as TBevel).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TBevel).Top := (Frm_ConfForm.Components[c] as TBevel).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TBevel).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TBevel).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TBevel).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TBevel).Left;
      end
   else  if mNomeClasse='tdbcombobox' then
      begin
      (Frm_ConfForm.Components[c] as TDBComboBox).Left:= (Frm_ConfForm.Components[c] as TDBComboBox).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TDBComboBox).Top := (Frm_ConfForm.Components[c] as TDBComboBox).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TDBComboBox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TDBComboBox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TDBComboBox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TDBComboBox).Left;
      end
   else  if mNomeClasse='tdbradiogroup' then
      begin
      (Frm_ConfForm.Components[c] as TDBRadioGroup).Left:= (Frm_ConfForm.Components[c] as TDBRadioGroup).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TDBRadioGroup).Top := (Frm_ConfForm.Components[c] as TDBRadioGroup).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TDBRadioGroup).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TDBRadioGroup).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TDBRadioGroup).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TDBRadioGroup).Left;
      end
   else  if mNomeClasse='tdbgrid' then
      begin
      (Frm_ConfForm.Components[c] as TDBGrid).Left:= (Frm_ConfForm.Components[c] as TDBGrid).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TDBGrid).Top := (Frm_ConfForm.Components[c] as TDBGrid).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TDBGrid).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TDBGrid).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TDBGrid).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TDBGrid).Left;
      end
   else  if mNomeClasse='tlistbox' then
      begin
      (Frm_ConfForm.Components[c] as TListBox).Left:= (Frm_ConfForm.Components[c] as TListBox).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TListBox).Top := (Frm_ConfForm.Components[c] as TListBox).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TListBox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TListBox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TListBox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TListBox).Left;
      end
   else  if mNomeClasse='tstatictext' then
      begin
      (Frm_ConfForm.Components[c] as TStaticText).Left:= (Frm_ConfForm.Components[c] as TStaticText).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TStaticText).Top := (Frm_ConfForm.Components[c] as TStaticText).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TStaticText).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TStaticText).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TStaticText).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TStaticText).Left;
      end
   else  if mNomeClasse='tradiogroup' then
      begin
      (Frm_ConfForm.Components[c] as TRadioGroup).Left:= (Frm_ConfForm.Components[c] as TRadioGroup).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TRadioGroup).Top := (Frm_ConfForm.Components[c] as TRadioGroup).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TRadioGroup).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TRadioGroup).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TRadioGroup).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TRadioGroup).Left;
      end
   else  if mNomeClasse='tdbcheckbox' then
      begin
      (Frm_ConfForm.Components[c] as TDBCheckBox).Left:= (Frm_ConfForm.Components[c] as TDBCheckBox).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TDBCheckBox).Top := (Frm_ConfForm.Components[c] as TDBCheckBox).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TDBCheckBox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TDBCheckBox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TDBCheckBox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TDBCheckBox).Left;
      end
   else if mNomeClasse='tmemo' then
      begin

      (Frm_ConfForm.Components[c] as TMemo).Left:= (Frm_ConfForm.Components[c] as TMemo).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TMemo).Top := (Frm_ConfForm.Components[c] as TMemo).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TMemo).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TMemo).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TMemo).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TMemo).Left;
      end
   else if mNomeClasse='tdbmemo' then
      begin
      (Frm_ConfForm.Components[c] as TDBMemo).Left:= (Frm_ConfForm.Components[c] as TDBMemo).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TDBMemo).Top := (Frm_ConfForm.Components[c] as TDBMemo).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TDBMemo).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TDBMemo).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TDBMemo).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TDBMemo).Left;
      end
   else if mNomeClasse='tstringgrid' then
      begin
      (Frm_ConfForm.Components[c] as TStringGrid).Left:= (Frm_ConfForm.Components[c] as TStringGrid).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TStringGrid).Top := (Frm_ConfForm.Components[c] as TStringGrid).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TStringGrid).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TStringGrid).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TStringGrid).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TStringGrid).Left;
      end
   else if mNomeClasse='tcheckbox' then
      begin
      (Frm_ConfForm.Components[c] as TCheckBox).Left:= (Frm_ConfForm.Components[c] as TCheckBox).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TCheckBox).Top := (Frm_ConfForm.Components[c] as TCheckBox).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TCheckBox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TCheckBox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TCheckBox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TCheckBox).Left;
      end;

   end;


end;


procedure TFrm_ConfForm.MouseUpGeral(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);

var
c: Integer;
begin

for c:=0 to Frm_ConfForm.ComponentCount-1 do
   begin
   if Sender=Frm_ConfForm.Components[c] then
      break;
   end;
mNomeClasse     :=lowercase(Frm_ConfForm.Components[c].ClassName);

if mCompArast<>Frm_ConfForm.Components[c].Name then
   exit;

if Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert] then
   Frm_PerForm.Tb_Componentes.Post;

if Frm_PerForm.Tb_ComponentesSequencia.Value<>c then
   begin
   if Frm_PerForm.Tb_Componentes.Locate('sequencia',c,[]) then
      Frm_PerForm.Tb_Componentes.Edit;
   end;

if (mArrastaComp) and (Capturing) then
   begin
   ReleaseCapture;
   if mNomeClasse='tlabel' then
      begin
      (Frm_ConfForm.Components[c] as TLabel).Left:= (Frm_ConfForm.Components[c] as TLabel).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TLabel).Top := (Frm_ConfForm.Components[c] as TLabel).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TLabel).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TLabel).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TLabel).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TLabel).Left;

      end
   else if mNomeClasse='tedit' then
      begin
      (Frm_ConfForm.Components[c] as TEdit).Left:= (Frm_ConfForm.Components[c] as TEdit).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TEdit).Top := (Frm_ConfForm.Components[c] as TEdit).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;

      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TEdit).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TEdit).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TEdit).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TEdit).Left;

      end
   else if mNomeClasse='tdbedit' then
      begin
      (Frm_ConfForm.Components[c] as TDBEdit).Left:= (Frm_ConfForm.Components[c] as TDBEdit).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TDBEdit).Top := (Frm_ConfForm.Components[c] as TDBEdit).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TDBEdit).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TDBEdit).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TDBEdit).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TDBEdit).Left;
      end
   else if mNomeClasse='tbitbtn' then
      begin
      (Frm_ConfForm.Components[c] as TBitBtn).Left:= (Frm_ConfForm.Components[c] as TBitBtn).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TBitBtn).Top := (Frm_ConfForm.Components[c] as TBitBtn).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TBitBtn).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TBitBtn).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TBitBtn).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TBitBtn).Left;
      end
   else if mNomeClasse='tpage' then
      begin
      (Frm_ConfForm.Components[c] as TPage).Left:= (Frm_ConfForm.Components[c] as TPage).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TPage).Top := (Frm_ConfForm.Components[c] as TPage).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TPage).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TPage).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TPage).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TPage).Left;
      end
   else if mNomeClasse='tpanel' then
      begin
      (Frm_ConfForm.Components[c] as TPanel).Left:= (Frm_ConfForm.Components[c] as TPanel).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TPanel).Top := (Frm_ConfForm.Components[c] as TPanel).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TPanel).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TPanel).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TPanel).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TPanel).Left;
      end
   else if mNomeClasse='tcombobox' then
      begin
      (Frm_ConfForm.Components[c] as TComboBox).Left:= (Frm_ConfForm.Components[c] as TComboBox).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TComboBox).Top := (Frm_ConfForm.Components[c] as TComboBox).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TComboBox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TComboBox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TComboBox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TComboBox).Left;
      end
   else if mNomeClasse='tmaskedit' then
      begin
      (Frm_ConfForm.Components[c] as TMaskEdit).Left:= (Frm_ConfForm.Components[c] as TMaskEdit).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TMaskEdit).Top := (Frm_ConfForm.Components[c] as TMaskEdit).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TMaskEdit).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TMaskEdit).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TMaskEdit).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TMaskEdit).Left;
      end
   else if mNomeClasse='ttabsheet' then
      begin
      (Frm_ConfForm.Components[c] as TTabSheet).Left:= (Frm_ConfForm.Components[c] as TTabSheet).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TTabSheet).Top := (Frm_ConfForm.Components[c] as TTabSheet).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TTabSheet).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TTabSheet).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TTabSheet).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TTabSheet).Left;
      end
   else if mNomeClasse='tpagecontrol' then
      begin
      (Frm_ConfForm.Components[c] as TPageControl).Left:= (Frm_ConfForm.Components[c] as TPageControl).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TPageControl).Top := (Frm_ConfForm.Components[c] as TPageControl).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TPageControl).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TPageControl).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TPageControl).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TPageControl).Left;
      end
   else if mNomeClasse='tgroupbox' then
      begin
      (Frm_ConfForm.Components[c] as TGroupBox).Left:= (Frm_ConfForm.Components[c] as TGroupBox).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TGroupBox).Top := (Frm_ConfForm.Components[c] as TGroupBox).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TGroupBox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TGroupBox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TGroupBox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TGroupBox).Left;
      end
   else if mNomeClasse='tdbnavigator' then
      begin
      (Frm_ConfForm.Components[c] as TDBNavigator).Left:= (Frm_ConfForm.Components[c] as TDBNavigator).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TDBNavigator).Top := (Frm_ConfForm.Components[c] as TDBNavigator).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TDBNavigator).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TDBNavigator).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TDBNavigator).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TDBNavigator).Left;
      end
   else if mNomeClasse='tbevel' then
      begin
      (Frm_ConfForm.Components[c] as TBevel).Left:= (Frm_ConfForm.Components[c] as TBevel).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TBevel).Top := (Frm_ConfForm.Components[c] as TBevel).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TBevel).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TBevel).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TBevel).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TBevel).Left;
      end
   else if mNomeClasse='tdbcombobox' then
      begin
      (Frm_ConfForm.Components[c] as TDBComboBox).Left:= (Frm_ConfForm.Components[c] as TDBComboBox).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TDBComboBox).Top := (Frm_ConfForm.Components[c] as TDBComboBox).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TDBComboBox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TDBComboBox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TDBComboBox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TDBComboBox).Left;
      end
   else if mNomeClasse='tdbradiogroup' then
      begin
      (Frm_ConfForm.Components[c] as TDBRadioGroup).Left:= (Frm_ConfForm.Components[c] as TDBRadioGroup).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TDBRadioGroup).Top := (Frm_ConfForm.Components[c] as TDBRadioGroup).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TDBRadioGroup).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TDBRadioGroup).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TDBRadioGroup).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TDBRadioGroup).Left;
      end
   else if mNomeClasse='tdbgrid' then
      begin
      (Frm_ConfForm.Components[c] as TDBGrid).Left:= (Frm_ConfForm.Components[c] as TDBGrid).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TDBGrid).Top := (Frm_ConfForm.Components[c] as TDBGrid).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TDBGrid).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TDBGrid).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TDBGrid).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TDBGrid).Left;
      end
   else if mNomeClasse='tlistbox' then
      begin
      (Frm_ConfForm.Components[c] as TListBox).Left:= (Frm_ConfForm.Components[c] as TListBox).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TListBox).Top := (Frm_ConfForm.Components[c] as TListBox).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TListBox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TListBox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TListBox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TListBox).Left;
      end
   else if mNomeClasse='tstatictext' then
      begin
      (Frm_ConfForm.Components[c] as TStaticText).Left:= (Frm_ConfForm.Components[c] as TStaticText).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TStaticText).Top := (Frm_ConfForm.Components[c] as TStaticText).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TStaticText).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TStaticText).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TStaticText).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TStaticText).Left;
      end
   else if mNomeClasse='tradiogroup' then
      begin
      (Frm_ConfForm.Components[c] as TRadioGroup).Left:= (Frm_ConfForm.Components[c] as TRadioGroup).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TRadioGroup).Top := (Frm_ConfForm.Components[c] as TRadioGroup).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TRadioGroup).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TRadioGroup).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TRadioGroup).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TRadioGroup).Left;
      end
   else if mNomeClasse='tdbcheckbox' then
      begin
      (Frm_ConfForm.Components[c] as TDBCheckBox).Left:= (Frm_ConfForm.Components[c] as TDBCheckBox).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TDBCheckBox).Top := (Frm_ConfForm.Components[c] as TDBCheckBox).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TDBCheckBox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TDBCheckBox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TDBCheckBox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TDBCheckBox).Left;
      end
   else if mNomeClasse='tmemo' then
      begin
      (Frm_ConfForm.Components[c] as TMemo).Left:= (Frm_ConfForm.Components[c] as TMemo).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TMemo).Top := (Frm_ConfForm.Components[c] as TMemo).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TMemo).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TMemo).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TMemo).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TMemo).Left;
      end
   else if mNomeClasse='tdbmemo' then
      begin
      (Frm_ConfForm.Components[c] as TDBMemo).Left:= (Frm_ConfForm.Components[c] as TDBMemo).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TDBMemo).Top := (Frm_ConfForm.Components[c] as TDBMemo).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TDBMemo).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TDBMemo).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TDBMemo).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TDBMemo).Left;
      end
   else if mNomeClasse='tstringgrid' then
      begin
      (Frm_ConfForm.Components[c] as TStringGrid).Left:= (Frm_ConfForm.Components[c] as TStringGrid).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TDBMemo).Top := (Frm_ConfForm.Components[c] as TStringGrid).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TStringGrid).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TStringGrid).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TStringGrid).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TStringGrid).Left;
      end
   else if mNomeClasse='tcheckbox' then
      begin
      (Frm_ConfForm.Components[c] as TCheckBox).Left:= (Frm_ConfForm.Components[c] as TCheckBox).Left
                                                 - (MouseDownSpot.x-x);

      (Frm_ConfForm.Components[c] as TCheckBox).Top := (Frm_ConfForm.Components[c] as TCheckBox).Top
                                                 - (MouseDownSpot.y-y);
      if not (Frm_PerForm.Tb_Componentes.State in [dsEdit,dsInsert]) then
         Frm_PerForm.Tb_Componentes.Edit;
      Frm_PerForm.Tb_ComponentesTamanho.Value:=(Frm_ConfForm.Components[c] as TCheckBox).Width;
      Frm_PerForm.Tb_ComponentesHeight.Value :=(Frm_ConfForm.Components[c] as TCheckBox).Height;
      Frm_PerForm.Tb_ComponentesTop.Value    :=(Frm_ConfForm.Components[c] as TCheckBox).Top;
      Frm_PerForm.Tb_ComponentesmLeft.Value   :=(Frm_ConfForm.Components[c] as TCheckBox).Left;
      end;




   Capturing := false;
   end;
end;




function fMarCaDesmarcaCompontente(pAtivaDesativa,pComp: Integer; pClasse: String):Boolean;
begin
pAtualizaComponente:=false;
if pcomp>=0 then
   begin
if pComp=-1 then
   begin
   if (pAtivaDesativa=1) then
      begin
      if (Frm_ConfForm.Color=pCorMarca)
         and (pCorAntes<>Null) then
         begin
         Frm_ConfForm.Color:=pCorAntes;
         end;
      end
   else
      begin
      pItemAntes:=pComp;
      if pCorMarca<>Frm_ConfForm.Color then
         pCorAntes :=Frm_ConfForm.Color;
      pNomeClasse_Antes:=pClasse;
      Frm_ConfForm.Color:=pCorMarca;
      end;
   end
else if pClasse='tlabel' then
   begin
   if (pAtivaDesativa=1) then
      begin
      if (((Frm_ConfForm.Components[pComp] as TLabel).Color)=pCorMarca)
         and (pCorAntes<>Null) then
         begin
         (Frm_ConfForm.Components[pComp] as TLabel).Color:=pCorAntes;
//         (Frm_ConfForm.Components[pComp] as TLabel).Update;
//         fAtualizarComponentes(1);
         end;
      end
   else
      begin
      pItemAntes:=pComp;
      if pCorMarca<>(Frm_ConfForm.Components[pComp] as TLabel).Color then
         pCorAntes :=(Frm_ConfForm.Components[pComp] as TLabel).Color;
      pNomeClasse_Antes:=pClasse;
      (Frm_ConfForm.Components[pComp] as TLabel).Color:=pCorMarca;
      end;
   end
else if pClasse='tedit' then
   begin
   if (pAtivaDesativa=1) then
      begin
      if (((Frm_ConfForm.Components[pComp] as TEdit).Color)=pCorMarca)
         and (pcorantes<>Null) then
         begin
         (Frm_ConfForm.Components[pComp] as TEdit).Color:=pCorAntes;
//         fAtualizarComponentes(1);
         end;
      end
   else
      begin
      pItemAntes:=pComp;
      if pCorMarca<>(Frm_ConfForm.Components[pComp] as TEdit).Color then
         pCorAntes :=(Frm_ConfForm.Components[pComp] as TEdit).Color;
      pNomeClasse_Antes:=pClasse;
      (Frm_ConfForm.Components[pComp] as TEdit).Color:=pCorMarca;
      end;
   end
else if pClasse='tdbedit' then
   begin
   if (pAtivaDesativa=1) then
      begin
      if (((Frm_ConfForm.Components[pComp] as TDBEdit).Color)=pCorMarca)
         and (pcorantes<>Null) then
         begin
         (Frm_ConfForm.Components[pComp] as TDBEdit).Color:=pCorAntes;
//         fAtualizarComponentes(1);
         end;
      end
   else
      begin
      pItemAntes:=pComp;
      if pCorMarca<>(Frm_ConfForm.Components[pComp] as TDbEdit).Color then
         pCorAntes :=(Frm_ConfForm.Components[pComp] as TDBEdit).Color;
      pNomeClasse_Antes:=pClasse;
      (Frm_ConfForm.Components[pComp] as TDBEdit).Color:=pCorMarca;
      end;
   end
else if pClasse='tpanel' then
   begin
   if (pAtivaDesativa=1) then
      begin
      if (((Frm_ConfForm.Components[pComp] as TPanel).Color)=pCorMarca)
         and (pcorantes<>Null) then
         begin
         (Frm_ConfForm.Components[pComp] as TPanel).Color:=pCorAntes;
//         fAtualizarComponentes(1);
         end;
      end
   else
      begin
      pItemAntes:=pComp;
      if pCorMarca<>(Frm_ConfForm.Components[pComp] as TPanel).Color then
         pCorAntes :=(Frm_ConfForm.Components[pComp] as TPanel).Color;
      pNomeClasse_Antes:=pClasse;
      (Frm_ConfForm.Components[pComp] as TPanel).Color:=pCorMarca;
      end;
   end
else if pClasse='tcombobox' then
   begin
   if (pAtivaDesativa=1) then
      begin
      if (((Frm_ConfForm.Components[pComp] as TComboBox).Color)=pCorMarca)
         and (pcorantes<>Null) then
         begin
         (Frm_ConfForm.Components[pComp] as TComboBox).Color:=pCorAntes;
//         fAtualizarComponentes(1);
         end;
      end
   else
      begin
      pItemAntes:=pComp;
      if pCorMarca<>(Frm_ConfForm.Components[pComp] as TComboBox).Color then
         pCorAntes :=(Frm_ConfForm.Components[pComp] as TComboBox).Color;
      pNomeClasse_Antes:=pClasse;
      (Frm_ConfForm.Components[pComp] as TComboBox).Color:=pCorMarca;
      end;
   end
else if pClasse='tmaskedit' then
   begin
   if (pAtivaDesativa=1) then
      begin
      if (((Frm_ConfForm.Components[pComp] as TMaskEdit).Color)=pCorMarca)
         and (pcorantes<>Null) then
         begin
         (Frm_ConfForm.Components[pComp] as TMaskEdit).Color:=pCorAntes;
//         fAtualizarComponentes(1);
         end;
      end
   else
      begin
      pItemAntes:=pComp;
      if pCorMarca<>(Frm_ConfForm.Components[pComp] as TMaskEdit).Color then
         pCorAntes :=(Frm_ConfForm.Components[pComp] as TMaskEdit).Color;
      pNomeClasse_Antes:=pClasse;
      (Frm_ConfForm.Components[pComp] as TMaskEdit).Color:=pCorMarca;
      end;
   end
else if pClasse='tgroupbox' then
   begin
   if (pAtivaDesativa=1) then
      begin
      if (((Frm_ConfForm.Components[pComp] as TGroupBox).Color)=pCorMarca)
         and (pcorantes<>Null) then
         begin
         (Frm_ConfForm.Components[pComp] as TGroupBox).Color:=pCorAntes;
//         fAtualizarComponentes(1);
         end;
      end
   else
      begin
      pItemAntes:=pComp;
      if pCorMarca<>(Frm_ConfForm.Components[pComp] as TGroupBox).Color then
         pCorAntes :=(Frm_ConfForm.Components[pComp] as TGroupBox).Color;
      pNomeClasse_Antes:=pClasse;
      (Frm_ConfForm.Components[pComp] as TGroupBox).Color:=pCorMarca;
      end;
   end
else if pClasse='tdbcombobox' then
   begin
   if (pAtivaDesativa=1) then
      begin
      if (((Frm_ConfForm.Components[pComp] as TDBComboBox).Color)=pCorMarca)
         and (pcorantes<>Null) then
         begin
         (Frm_ConfForm.Components[pComp] as TDBComboBox).Color:=pCorAntes;
//         fAtualizarComponentes(1);
         end;
      end
   else
      begin
      pItemAntes:=pComp;
      if pCorMarca<>(Frm_ConfForm.Components[pComp] as TDBComboBox).Color then
         pCorAntes :=(Frm_ConfForm.Components[pComp] as TDBComboBox).Color;
      pNomeClasse_Antes:=pClasse;
      (Frm_ConfForm.Components[pComp] as TDBComboBox).Color:=pCorMarca;
      end;
   end
else if pClasse='tdbradiogroup' then
   begin
   if (pAtivaDesativa=1) then
      begin
      if (((Frm_ConfForm.Components[pComp] as TDBRadioGroup).Color)=pCorMarca)
         and (pcorantes<>Null) then
         begin
         (Frm_ConfForm.Components[pComp] as TDBRadioGroup).Color:=pCorAntes;
//         fAtualizarComponentes(1);
         end;
      end
   else
      begin
      pItemAntes:=pComp;
      if pCorMarca<>(Frm_ConfForm.Components[pComp] as TDBRadioGroup).Color then
         pCorAntes :=(Frm_ConfForm.Components[pComp] as TDBRadioGroup).Color;
      pNomeClasse_Antes:=pClasse;
      (Frm_ConfForm.Components[pComp] as TDBRadioGroup).Color:=pCorMarca;
      end;
   end
else if pClasse='tdbgrid' then
   begin
   if (pAtivaDesativa=1) then
      begin
      if (((Frm_ConfForm.Components[pComp] as TDBGrid).Color)=pCorMarca)
         and (pcorantes<>Null) then
         begin
         (Frm_ConfForm.Components[pComp] as TDBGrid).Color:=pCorAntes;
//         fAtualizarComponentes(1);
         end;
      end
   else
      begin
      pItemAntes:=pComp;
      if pCorMarca<>(Frm_ConfForm.Components[pComp] as TDBGrid).Color then
         pCorAntes :=(Frm_ConfForm.Components[pComp] as TDBGrid).Color;
      pNomeClasse_Antes:=pClasse;
      (Frm_ConfForm.Components[pComp] as TDBGrid).Color:=pCorMarca;
      end;
   end
else if pClasse='tlistbox' then
   begin
   if (pAtivaDesativa=1) then
      begin
      if (((Frm_ConfForm.Components[pComp] as TListBox).Color)=pCorMarca)
         and (pcorantes<>Null) then
         begin
         (Frm_ConfForm.Components[pComp] as TListBox).Color:=pCorAntes;
//         fAtualizarComponentes(1);
         end;
      end
   else
      begin
      pItemAntes:=pComp;
      if pCorMarca<>(Frm_ConfForm.Components[pComp] as TListBox).Color then
         pCorAntes :=(Frm_ConfForm.Components[pComp] as TListBox).Color;
      pNomeClasse_Antes:=pClasse;
      (Frm_ConfForm.Components[pComp] as TListBox).Color:=pCorMarca;
      end;
   end
else if pClasse='tstatictext' then
   begin
   if (pAtivaDesativa=1) then
      begin
      if (((Frm_ConfForm.Components[pComp] as TStaticText).Color)=pCorMarca)
         and (pcorantes<>Null) then
         begin
         (Frm_ConfForm.Components[pComp] as TStaticText).Color:=pCorAntes;
//         fAtualizarComponentes(1);
         end;
      end
   else
      begin
      pItemAntes:=pComp;
      if pCorMarca<>(Frm_ConfForm.Components[pComp] as TStaticText).Color then
         pCorAntes :=(Frm_ConfForm.Components[pComp] as TStaticText).Color;
      pNomeClasse_Antes:=pClasse;
      (Frm_ConfForm.Components[pComp] as TStaticText).Color:=pCorMarca;
      end;
   end
else if pClasse='tradiogroup' then
   begin
   if (pAtivaDesativa=1) then
      begin
      if (((Frm_ConfForm.Components[pComp] as TRadioGroup).Color)=pCorMarca)
         and (pcorantes<>Null) then
         begin
         (Frm_ConfForm.Components[pComp] as TRadioGroup).Color:=pCorAntes;
//         fAtualizarComponentes(1);
         end;
      end
   else
      begin
      pItemAntes:=pComp;
      if pCorMarca<>(Frm_ConfForm.Components[pComp] as TRadioGroup).Color then
         pCorAntes :=(Frm_ConfForm.Components[pComp] as TRadioGroup).Color;
      pNomeClasse_Antes:=pClasse;
      (Frm_ConfForm.Components[pComp] as TRadioGroup).Color:=pCorMarca;
      end;
   end
else if pClasse='tdbcheckbox' then
   begin
   if (pAtivaDesativa=1) then
      begin
      if (((Frm_ConfForm.Components[pComp] as TDBCheckBox).Color)=pCorMarca)
         and (pcorantes<>Null) then
         begin
         (Frm_ConfForm.Components[pComp] as TDBCheckBox).Color:=pCorAntes;
//         fAtualizarComponentes(1);
         end;
      end
   else
      begin
      pItemAntes:=pComp;
      if pCorMarca<>(Frm_ConfForm.Components[pComp] as TDBCheckBox).Color then
         pCorAntes :=(Frm_ConfForm.Components[pComp] as TDBCheckBox).Color;
      pNomeClasse_Antes:=pClasse;
      (Frm_ConfForm.Components[pComp] as TDBCheckBox).Color:=pCorMarca;
      end;
   end
else if pClasse='tmemo' then
   begin
   if (pAtivaDesativa=1) then
      begin
      if (((Frm_ConfForm.Components[pComp] as TMemo).Color)=pCorMarca)
         and (pcorantes<>Null) then
         begin
         (Frm_ConfForm.Components[pComp] as TMemo).Color:=pCorAntes;
//         fAtualizarComponentes(1);
         end;
      end
   else
      begin
      pItemAntes:=pComp;
      if pCorMarca<>(Frm_ConfForm.Components[pComp] as TMemo).Color then
         pCorAntes :=(Frm_ConfForm.Components[pComp] as TMemo).Color;
      pNomeClasse_Antes:=pClasse;
      (Frm_ConfForm.Components[pComp] as TMemo).Color:=pCorMarca;
      end;
   end
else if pClasse='tdbmemo' then
   begin
   if (pAtivaDesativa=1) then
      begin
      if (((Frm_ConfForm.Components[pComp] as TDBMemo).Color)=pCorMarca)
         and (pcorantes<>Null) then
         begin
         (Frm_ConfForm.Components[pComp] as TDBMemo).Color:=pCorAntes;
//         fAtualizarComponentes(1);
         end;
      end
   else
      begin
      pItemAntes:=pComp;
      if pCorMarca<>(Frm_ConfForm.Components[pComp] as TDBMemo).Color then
         pCorAntes :=(Frm_ConfForm.Components[pComp] as TDBMemo).Color;
      pNomeClasse_Antes:=pClasse;
      (Frm_ConfForm.Components[pComp] as TDBMemo).Color:=pCorMarca;
      end;
   end
else if pClasse='tstringgrid' then
   begin
   if (pAtivaDesativa=1) then
      begin
      if (((Frm_ConfForm.Components[pComp] as TStringGrid).Color)=pCorMarca)
         and (pcorantes<>Null) then
         begin
         (Frm_ConfForm.Components[pComp] as TStringGrid).Color:=pCorAntes;
//         fAtualizarComponentes(1);
         end;
      end
   else
      begin
      pItemAntes:=pComp;
      if pCorMarca<>(Frm_ConfForm.Components[pComp] as TStringGrid).Color then
         pCorAntes :=(Frm_ConfForm.Components[pComp] as TStringGrid).Color;
      pNomeClasse_Antes:=pClasse;
      (Frm_ConfForm.Components[pComp] as TStringGrid).Color:=pCorMarca;
      end;
   end
else if pClasse='tckeckbox' then
   begin
   if (pAtivaDesativa=1) then
      begin
      if (((Frm_ConfForm.Components[pComp] as TCheckBox).Color)=pCorMarca)
         and (pcorantes<>Null) then
         begin
         (Frm_ConfForm.Components[pComp] as TCheckBox).Color:=pCorAntes;
//         fAtualizarComponentes(1);
         end;
      end
   else
      begin
      pItemAntes:=pComp;
      if pCorMarca<>(Frm_ConfForm.Components[pComp] as TCheckBox).Color then
         pCorAntes :=(Frm_ConfForm.Components[pComp] as TCheckBox).Color;
      pNomeClasse_Antes:=pClasse;
      (Frm_ConfForm.Components[pComp] as TCheckBox).Color:=pCorMarca;
      end;
   end;


   end;
pAtualizaComponente:=false;
result:=true;
end;

procedure TFrm_ConfForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
  Action := caFree;
end;

end.

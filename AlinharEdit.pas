unit AlinharEdit;

interface
uses sysutils,dialogs,mask,shellapi,messages,classes,filectrl,windows,
     StdCtrls,extctrls,checklst,graphics,controls; //declare estas das units!!!
{
uses Forms, SysUtils, Dialogs, Mask, DB, DBTables, Messages, Windows ,Classes,
     Graphics, Controls, StdCtrls, ExtCtrls, checklst,S_Impres,WinSock,
     Shellapi, filectrl,printers,Registry; //declare estas das units!!!
}

type
//funcoes utilizadas para ajustar os edits
  TEdit = class(StdCtrls.TEdit)
  private
    { Private declarations }
    FAlignment: TAlignment;
    procedure SetAlignment(Value: TAlignment);
  protected
    { Protected declarations }
    procedure CreateParams(var Params: TCreateParams); override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    property Alignment: TAlignment read FAlignment write SetAlignment
      default taLeftJustify;
  end;

// fim das funcoes para edits


implementation
// inicio das procedures do edit
constructor TEdit.Create(AOwner: TComponent);
begin
  FAlignment := taLeftJustify;
  inherited Create(AOwner);
end;

procedure TEdit.CreateParams(var Params: TCreateParams);
const
  Alignments: array [TAlignment] of DWORD = (ES_LEFT, ES_RIGHT, ES_CENTER);
begin
  inherited CreateParams(Params);
  CreateSubClass(Params, 'EDIT');
  Params.Style := Params.Style and
    not (ES_AUTOVSCROLL or ES_AUTOHSCROLL) or ES_MULTILINE or
      Alignments[FAlignment];
end;

procedure TEdit.SetAlignment(Value: TAlignment);
begin
  if FAlignment <> Value then
  begin
    FAlignment := Value;
    RecreateWnd;
  end;
end;

// fim das procedures do edit



end.

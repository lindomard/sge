unit S_Local_Estoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,db,dbtables;

type
  Tfrm_Local_Estoque = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    cb_estoque: TComboBox;
    bbConfirmar: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mLocalEstoque: Integer;
    mLocalPadrao: Integer;
  end;

var
  frm_Local_Estoque: Tfrm_Local_Estoque;

implementation

uses S_DM1, Func;

{$R *.dfm}

procedure Tfrm_Local_Estoque.FormCreate(Sender: TObject);
begin
    mLocalEstoque:=0;
end;

procedure Tfrm_Local_Estoque.BitBtn2Click(Sender: TObject);
begin
mLocalEstoque:=0;
close;
end;

procedure Tfrm_Local_Estoque.FormShow(Sender: TObject);
var
Query_filial: TQuery;
begin
Query_filial:=TQuery.Create(nil);
Query_filial.DatabaseName:='SG_ASSOC';
Query_filial.Close;
Query_filial.SQL.Clear;
Query_filial.SQL.add('Select CFFILIAL,CFNOME from CADPRO_FILIAL where CFCODEMP=0'+IntToStr(codemp-iif(codemp>100,100,0))
                    +' order by CFFILIAL ');
Query_filial.Open;
cb_estoque.Items.Clear;
While not Query_filial.Eof do
   begin
   cb_estoque.Items.Add(Query_filial.fieldbyName('CFNOME').asstring);
   Query_filial.Next;
   end;
if mLocalPadrao=0 then
  cb_estoque.ItemIndex:=0
else
  begin
  if Query_filial.Locate('CFFILIAL',IntToStr(mLocalPadrao),[]) then
     begin
     Label3.Caption:='Filial Padrão '+FormatFloat('000', Query_filial.fieldbyName('CFFILIAL').Value)+' - '+Query_filial.fieldbyName('CFNOME').Value;
     cb_estoque.Text:=Query_filial.fieldbyName('CFNOME').Value;
     with cb_estoque do
           ItemIndex := items.IndexOf(cb_estoque.Text);
     end;
  end;
FreeAndNil(query_filial);



end;

procedure Tfrm_Local_Estoque.bbConfirmarClick(Sender: TObject);
var
Query_filial: TQuery;
begin
Query_filial:=TQuery.Create(nil);
Query_filial.DatabaseName:='SG_ASSOC';
Query_filial.Close;
Query_filial.SQL.Clear;
Query_filial.SQL.add('Select CFFILIAL,CFNOME from CADPRO_FILIAL where CFCODEMP=0'+IntToStr(codemp-iif(codemp>100,100,0))
                    +' and CFNOME=:NOME '
                    +' order by CFFILIAL ');
Query_filiaL.ParamByName('NOME').AsString:=cb_estoque.Text;
Query_filial.Open;
if not Query_filial.IsEmpty then
   mLocalEstoque:=Query_filial.fieldbyName('CFFILIAL').AsInteger;
freeandNil(query_filial);   
close;
end;

end.

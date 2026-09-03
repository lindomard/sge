unit S_ImpMov_Importados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,S_DM1,db,dbtables,func, Grids,
  DBGrids, Mask;

type
  TFrm_ImpMov_Importados = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    cb_tppesq: TComboBox;
    bbPesquisar: TBitBtn;
    Tb_Imp: TQuery;
    Src_Imp: TDataSource;
    DBGrid1: TDBGrid;
    Tb_ImpIMP_CODEMP_ORI: TFloatField;
    Tb_ImpIMP_TIPO: TFloatField;
    Tb_ImpIMP_LOTE: TFloatField;
    Tb_ImpIMP_DATA: TDateTimeField;
    Tb_ImpIMP_EMPRESA: TStringField;
    campo: TMaskEdit;
    DBGrid2: TDBGrid;
    Tb_TabImp: TQuery;
    Tb_TabImpIMP_CODEMP_ORI: TFloatField;
    Tb_TabImpIMP_TIPO: TFloatField;
    Tb_TabImpIMP_LOTE: TFloatField;
    Tb_TabImpIMP_EMPRESA: TStringField;
    Tb_TabImpIMP_TABIMP: TStringField;
    Tb_TabImpIMP_TABGER: TStringField;
    Tb_TabImpIMP_QTDREG: TFloatField;
    Tb_TabImpIMP_DATA: TDateTimeField;
    Tb_TabImpIMP_ORIGEM: TFloatField;
    Tb_TabImpIMP_PASTA: TStringField;
    Src_TabImp: TDataSource;
    bbSair: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure cb_tppesqExit(Sender: TObject);
    procedure campoExit(Sender: TObject);
    procedure bbPesquisarClick(Sender: TObject);
    procedure Src_ImpDataChange(Sender: TObject; Field: TField);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ImpMov_Importados: TFrm_ImpMov_Importados;

implementation

{$R *.dfm}

procedure TFrm_ImpMov_Importados.FormCreate(Sender: TObject);
begin
Tb_Imp.Close;
Tb_Imp.Open;
Tb_Imp.Last;
cb_tppesq.ItemIndex:=0;

end;

procedure TFrm_ImpMov_Importados.cb_tppesqExit(Sender: TObject);
begin
if cb_tppesq.ItemIndex=0 then
   campo.EditMask:='!99/99/9999;1; '
else
   campo.EditMask:='';

end;

procedure TFrm_ImpMov_Importados.campoExit(Sender: TObject);
begin
if cb_tppesq.ItemIndex=0 then
   begin
   if Trim(campo.Text)<>'/  /' then
      begin
      try
         campo.Text:=FormatDatetime(fdt2, StrtoDate(campo.Text));
      except
         MessageDlg('Data inválida!',mtWarning,[mbOk],0);
         campo.SetFocus;
         end;
      end;
   end
else
   begin
   if ValInt(campo.Text)=0 then
      campo.Text:=''
   else
      campo.Text:=fdeixanum(campo.Text);
   end;

end;

procedure TFrm_ImpMov_Importados.bbPesquisarClick(Sender: TObject);
begin
if cb_tppesq.ItemIndex=0 then
   begin
   if trim(campo.Text)<>'/  /' then
      Tb_Imp.locate('IMP_DATA',StrtoDate(campo.Text),[LOPARTIALKEY]);
   end
else if valint(campo.Text)<>0 then
   Tb_Imp.locate('IMP_LOTE',trim(campo.text),[LOPARTIALKEY]);

end;

procedure TFrm_ImpMov_Importados.Src_ImpDataChange(Sender: TObject;
  Field: TField);
begin
Tb_TabImp.Close;
Tb_TabImp.SQL.Clear;
Tb_TabImp.SQL.Add('Select * from CADIMPDAD '
                 +' where IMP_CODEMP_ORI=0'+Tb_ImpIMP_CODEMP_ORI.AsString
                 +' and IMP_LOTE=0'+Tb_ImpIMP_LOTE.AsString
                 +' and IMP_DATA='+chr(39)+FormatDateTime(fdt2, Tb_ImpIMP_DATA.Value)+chr(39)
                 +' order by IMP_DATA,IMP_CODEMP_ORI ');
Tb_TabImp.Open;

end;

procedure TFrm_ImpMov_Importados.bbSairClick(Sender: TObject);
begin
Tb_TabImp.Close;
Tb_Imp.Close;
close;
end;

procedure TFrm_ImpMov_Importados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

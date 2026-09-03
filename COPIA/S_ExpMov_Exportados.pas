unit S_ExpMov_Exportados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,S_DM1,db,dbtables,func, Grids,
  DBGrids, Mask;

type
  TFrm_ExpMov_Exportados = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    cb_tppesq: TComboBox;
    bbPesquisar: TBitBtn;
    Tb_Exp: TQuery;
    Src_Imp: TDataSource;
    DBGrid1: TDBGrid;
    campo: TMaskEdit;
    DBGrid2: TDBGrid;
    Tb_TabExp: TQuery;
    Src_TabImp: TDataSource;
    bbSair: TBitBtn;
    Tb_ExpEXP_CODEMP_ORI: TFloatField;
    Tb_ExpEXP_TIPO: TFloatField;
    Tb_ExpEXP_LOTE: TFloatField;
    Tb_ExpEXP_DATA: TDateTimeField;
    Tb_ExpEXP_EMPRESA: TStringField;
    Tb_TabExpEXP_CODEMP_ORI: TFloatField;
    Tb_TabExpEXP_TIPO: TFloatField;
    Tb_TabExpEXP_LOTE: TFloatField;
    Tb_TabExpEXP_DESTINF: TFloatField;
    Tb_TabExpEXP_PASTA: TStringField;
    Tb_TabExpEXP_DATA: TDateTimeField;
    Tb_TabExpEXP_EMPRESA: TStringField;
    Tb_TabExpEXP_TABEXP: TStringField;
    Tb_TabExpEXP_TABGER: TStringField;
    Tb_TabExpEXP_QTDREG: TFloatField;
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
  Frm_ExpMov_Exportados: TFrm_ExpMov_Exportados;

implementation

{$R *.dfm}

procedure TFrm_ExpMov_Exportados.FormCreate(Sender: TObject);
begin
Tb_Exp.Close;
Tb_Exp.Open;
Tb_Exp.Last;
cb_tppesq.ItemIndex:=0;

end;

procedure TFrm_ExpMov_Exportados.cb_tppesqExit(Sender: TObject);
begin
if cb_tppesq.ItemIndex=0 then
   campo.EditMask:='!99/99/9999;1; '
else
   campo.EditMask:='';

end;

procedure TFrm_ExpMov_Exportados.campoExit(Sender: TObject);
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

procedure TFrm_ExpMov_Exportados.bbPesquisarClick(Sender: TObject);
begin
if cb_tppesq.ItemIndex=0 then
   begin
   if trim(campo.Text)<>'/  /' then
      Tb_Exp.locate('EXP_DATA',StrtoDate(campo.Text),[LOPARTIALKEY]);
   end
else if valint(campo.Text)<>0 then
   Tb_Exp.locate('EXP_LOTE',trim(campo.text),[LOPARTIALKEY]);

end;

procedure TFrm_ExpMov_Exportados.Src_ImpDataChange(Sender: TObject;
  Field: TField);
begin
Tb_TabExp.Close;
Tb_TabExp.SQL.Clear;
Tb_TabExp.SQL.Add('Select * from CADEXPDAD '
                 +' where EXP_CODEMP_ORI=0'+Tb_EXPEXP_CODEMP_ORI.AsString
                 +' and EXP_LOTE=0'+Tb_EXPEXP_LOTE.AsString
                 +' and EXP_DATA='+chr(39)+FormatDateTime(fdt2, Tb_EXPEXP_DATA.Value)+chr(39)
                 +' order by EXP_DATA,EXP_CODEMP_ORI ');
Tb_TabExp.Open;

end;

procedure TFrm_ExpMov_Exportados.bbSairClick(Sender: TObject);
begin
Tb_TabExp.Close;
Tb_Exp.Close;
close;
end;

procedure TFrm_ExpMov_Exportados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

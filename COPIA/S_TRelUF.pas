unit S_TRelUF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, func, S_DM1, Grids, DBGrids, DB, StdCtrls, DBTables,
  Buttons;

type
  TFrm_TrelUF = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Qr_Rel: TQuery;
    Qr_RelTCCODEMP: TFloatField;
    Qr_RelTCDOC: TStringField;
    Qr_RelTCNOME: TStringField;
    Qr_RelTCQTDLIN: TIntegerField;
    Qr_RelTCQTDCOL: TIntegerField;
    Qr_RelTCFPADRAO: TIntegerField;
    Qr_RelTCQTDITEM: TIntegerField;
    Qr_RelTCQTDLPP: TIntegerField;
    Qr_RelTCOBS: TStringField;
    GroupBox1: TGroupBox;
    Src_Rel: TDataSource;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    RGTFONTE: TRadioGroup;
    RGENTREL: TRadioGroup;
    Label2: TLabel;
    QTDLP: TEdit;
    QTDCOL: TEdit;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    NOMREL: TEdit;
    BBINCLUIR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBCANCELAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBSAIR: TBitBtn;
    BBALTERAR: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    NUMCOL: TEdit;
    INTCOL: TEdit;
    Label6: TLabel;
    Qr_RelTCNUMCOL: TIntegerField;
    Qr_RelTCINTCOL: TIntegerField;
    Qr_RelTCTPCOL: TIntegerField;
    Qr_RelTCORDEM: TIntegerField;
    RG_TPCOL: TRadioGroup;
    RG_ORDEM: TRadioGroup;
    CB_MPAGGR: TCheckBox;
    Qr_RelTCMPAGGR: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure BBCANCELARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure QTDLPKeyPress(Sender: TObject; var Key: Char);
    procedure BBALTERARClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Src_RelDataChange(Sender: TObject; Field: TField);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_TrelUF: TFrm_TrelUF;

implementation

uses S_TPro;

{$R *.dfm}

procedure TFrm_TrelUF.FormCreate(Sender: TObject);
begin
if mreltab='CADPRO' then
   begin
   Frm_TrelT.Caption:='Relatórios Tabulados Sobre Produtos';
   RG_ORDEM.Items.Add('&Descricao do Produto');
   RG_ORDEM.Items.Add('D&escricao 2 do Produto');
   RG_ORDEM.Items.Add('&Código do Produto');
   RG_ORDEM.Items.Add('Código de &Barra do Produto');
   RG_ORDEM.Items.Add('&Marca do Produto + Descricao');
   RG_ORDEM.Items.Add('&Ramo + Descricao do Produto');
   RG_ORDEM.Items.Add('&Tipo + Descricao do Produto');
   RG_ORDEM.Items.Add('&Fabricante + Descricao do Produto');
   RG_ORDEM.Items.Add('&Grupo + Descricao do Produto');
   RG_ORDEM.Items.Add('C&ontrole + Descricao do Produto');
   frm_TPro.NOMARQ.Caption:='CADPRO';

   end
else if mreltab='CADFOR' then
   begin
   Frm_TrelT.Caption:='Relatórios Tabulados Sobre Fornecedores';
   RG_ORDEM.Items.Add('&Razao Social');
   RG_ORDEM.Items.Add('&Nome de Fantasia');
   RG_ORDEM.Items.Add('&Código');
   RG_ORDEM.Items.Add('&UF+Nome Cidade');
   RG_ORDEM.Items.Add('&Nome da Cidade');
   RG_ORDEM.Items.Add('C&GC');
   RG_ORDEM.Items.Add('&Status');
   RG_ORDEM.Items.Add('&Bairro');
   RG_ORDEM.Items.Add('&Bairro+Uf+Cidade');
   frm_TPro.NOMARQ.Caption:='CADFOR';
   end
else if mreltab='CADCLI' then
   begin
   Frm_TrelT.Caption:='Relatórios Tabulados Sobre Clientes';
   RG_ORDEM.Items.Add('&Razao Social');
   RG_ORDEM.Items.Add('&Nome de Fantasia');
   RG_ORDEM.Items.Add('&Código');
   RG_ORDEM.Items.Add('&UF+Nome Cidade');
   RG_ORDEM.Items.Add('&Nome da Cidade');
   RG_ORDEM.Items.Add('C&GC');
   RG_ORDEM.Items.Add('&Status');
   RG_ORDEM.Items.Add('&Bairro');
   RG_ORDEM.Items.Add('&Bairro+Uf+Cidade');
   RG_ORDEM.Items.Add('N&ome Vendedor+Razao');
   RG_ORDEM.Items.Add('No&me &Plano+Razao');
   frm_TPro.NOMARQ.Caption:='CADCLI';
   end;
Qr_Rel.Close;
Qr_Rel.SQL.Clear;
Qr_Rel.SQL.Add('Select * from CTDVCA Where TCCODEMP='+IntTostr(codemp)
              +' and TCDOC='+chr(39)+mreltab+chr(39));
Qr_Rel.Open;
RG_ORDEM.ItemIndex:=0;
end;

procedure TFrm_TrelUF.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_TrelUF.BBINCLUIRClick(Sender: TObject);
begin
GroupBox2.Enabled:=True;
BBGRAVAR.Enabled:=True;
BBCANCELAR.Enabled:=True;
BBINCLUIR.Enabled:=False;
BBALTERAR.Enabled:=False;
BBEXCLUIR.Enabled :=False;
NOMREL.Enabled    :=True;


NOMREL.Text:='';
RGTFONTE.ItemIndex:=0;
RGENTREL.ItemIndex:=0;
QTDLP.Text:='66';
QTDCOL.Text:='80';
NUMCOL.Text:='1';
INTCOL.Text:='';
Memo1.Text:='';
NOMREL.SetFocus;
end;

procedure TFrm_TrelUF.BBGRAVARClick(Sender: TObject);
begin
if Trim(NOMREL.Text)='' then
   begin
   ShowMessage('Nome do Relatório. Campo Obrigatório!');
   NOMREL.SetFocus;
   abort;
   end;
if Trim(QTDLP.Text)='' then
   begin
   ShowMessage('Quantidade de Linhas Por Pagina. Campo Obrigatório!');
   QTDLP.SetFocus;
   abort;
   end;
if Trim(QTDCOL.Text)='' then
   begin
   ShowMessage('Quantidade de Colunas. Campo Obrigatório!');
   QTDCOL.setfocus;
   abort;
   end;
if StrtoInt('0'+Trim(NUMCOL.Text))<1 then
   NUMCOL.Text:='1';
if (StrtoInt('0'+NUMCOL.Text)>1) and (StrToInt('0'+INTCOL.Text)<1) then
   begin
   ShowMessage('Favor Digitar o Campo Imprimir apos...,'+#13
              +'Campo Obrigatório p/Quantidade de Colunas Acima de 1');
   INTCOL.SetFocus;
   abort;
   end;

DM1.Tb_TDVCA.Close;
DM1.Tb_TDVCA.ParamByName('CODEMP').AsFloat := codemp;
DM1.Tb_TDVCA.ParamByName('DOC').AsString  :=  mreltab;
DM1.Tb_TDVCA.ParamByName('NOME').AsString  := NOMREL.Text;
DM1.Tb_TDVCA.Open;
if DM1.Tb_TDVCA.Eof then
   DM1.Tb_TDVCA.Append
else
   DM1.Tb_TDVCA.Edit;
DM1.Tb_TDVCATCCODEMP.Value:=codemp;
DM1.Tb_TDVCATCDOC.Value   :=mreltab;
DM1.Tb_TDVCATCNOME.Value  :=NOMREL.Text;
DM1.Tb_TDVCATCQTDLIN.Value:=StrToInt('0'+QTDLP.Text);
DM1.Tb_TDVCATCQTDCOL.Value:=StrToInt('0'+QTDCOL.Text);
DM1.Tb_TDVCATCFPADRAO.Value:=RGTFONTE.Itemindex;
DM1.Tb_TDVCATCQTDLPP.Value :=RGENTREL.ItemIndex;
DM1.Tb_TDVCATCOBS.Value    :=Memo1.Text;
DM1.Tb_TDVCATCQTDITEM.Value:=0;
DM1.Tb_TDVCATCNUMCOL.Value :=StrToInt('0'+NUMCOL.Text);
DM1.Tb_TDVCATCINTCOL.Value :=StrtoInt('0'+INTCOL.Text);
DM1.Tb_TDVCATCTPCOL.Value  :=RG_TPCOL.ItemIndex;
DM1.Tb_TDVCATCORDEM.Value  :=RG_ORDEM.ItemIndex;
if CB_MPAGGR.Checked then
   DM1.Tb_TDVCATCMPAGGR.Value:=1
else
   DM1.Tb_TDVCATCMPAGGR.Value:=0;

DM1.Tb_TDVCA.Post;
Qr_Rel.Close;
Qr_Rel.SQL.Clear;
Qr_Rel.SQL.Add('Select * from CTDVCA Where TCCODEMP='+IntTostr(codemp)
              +' and TCDOC='+chr(39)+mreltab+chr(39));
Qr_Rel.Open;
GroupBox2.Enabled:=False;
BBGRAVAR.Enabled:=False;
BBCANCELAR.Enabled:=False;
BBINCLUIR.Enabled :=True;
BBALTERAR.Enabled :=True;
BBEXCLUIR.Enabled :=True;
GroupBox2.Enabled :=False;

DBGrid1.SetFocus;

end;

procedure TFrm_TrelUF.DBGrid1Enter(Sender: TObject);
begin
{NOMREL.Text:=Qr_RelTCNOME.Value;
RGTFONTE.ItemIndex:=Qr_RelTCFPADRAO.Value;
RGENTREL.ItemIndex:=Qr_RelTCQTDLPP.Value;
QTDLP.Text        :=Qr_RelTCQTDLIN.AsString;
QTDCOL.Text       :=Qr_RelTCQTDCOL.AsString;
Memo1.Text        :=Qr_RelTCOBS.Text;
NUMCOL.Text       :=Qr_RelTCNUMCOL.AsString;
INTCOL.Text       :=Qr_RelTCINTCOL.AsString;
GroupBox2.Update;
GroupBox2.Enabled :=False;}
end;

procedure TFrm_TrelUF.BBCANCELARClick(Sender: TObject);
begin
{NOMREL.Text:=Qr_RelTCNOME.Value;
RGTFONTE.ItemIndex:=Qr_RelTCFPADRAO.Value;
RGENTREL.ItemIndex:=Qr_RelTCQTDLPP.Value;
QTDLP.Text        :=Qr_RelTCQTDLIN.AsString;
QTDCOL.Text       :=Qr_RelTCQTDCOL.AsString;
Memo1.Text        :=Qr_RelTCOBS.Text;
NUMCOL.Text       :=Qr_RelTCNUMCOL.AsString;
INTCOL.Text       :=Qr_RelTCINTCOL.AsString;
GroupBox2.Enabled :=False;                  }
BBINCLUIR.Enabled:=True;
BBALTERAR.Enabled:=True;
BBGRAVAR.Enabled :=False;
BBCANCELAR.Enabled:=False;
BBEXCLUIR.Enabled :=True;

end;

procedure TFrm_TrelUF.BBEXCLUIRClick(Sender: TObject);
begin
if Application.MessageBox('Quer Realmente Excluir Este Registros?',' ',MB_YESNO+MB_DEFBUTTON2)=mrYes then
   begin
   DM1.Tb_TDVCA.Close;
   DM1.Tb_TDVCA.ParamByName('CODEMP').AsFloat := codemp;
   DM1.Tb_TDVCA.ParamByName('DOC').AsString  := mreltab;
   DM1.Tb_TDVCA.ParamByName('NOME').AsString  := Trim(NOMREL.Text);
   DM1.Tb_TDVCA.Open;
   if not DM1.Tb_TDVCA.Eof then
      begin
      DM1.Tb_TDVCA.Delete;
      ShowMessage('Registro Excluido!');
      end
   else
      ShowMessage('Registro Nao Encontrado.');
   end;
BBINCLUIR.Enabled:=True;
BBALTERAR.Enabled:=True;
BBGRAVAR.Enabled :=False;
BBCANCELAR.Enabled:=False;
BBEXCLUIR.Enabled :=True;
GroupBox2.Enabled :=False;
Qr_Rel.Close;
Qr_Rel.SQL.Clear;
Qr_Rel.SQL.Add('Select * from CTDVCA Where TCCODEMP='+IntTostr(codemp)
              +' and TCDOC='+chr(39)+mreltab+chr(39));
Qr_Rel.Open;
DBGrid1.SetFocus;


end;

procedure TFrm_TrelUF.QTDLPKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_TrelUF.BBALTERARClick(Sender: TObject);
begin
BBINCLUIR.Enabled:=False;
BBALTERAR.Enabled:=False;
BBGRAVAR.Enabled :=True;
BBCANCELAR.Enabled:=True;
BBEXCLUIR.Enabled :=False;
GroupBox2.Enabled :=True;
NOMREL.Enabled    :=False;
RGTFONTE.SetFocus;
end;

procedure TFrm_TrelUF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{NOMREL.Text:=Qr_RelTCNOME.Value;
RGTFONTE.ItemIndex:=Qr_RelTCFPADRAO.Value;
RGENTREL.ItemIndex:=Qr_RelTCQTDLPP.Value;
QTDLP.Text        :=Qr_RelTCQTDLIN.AsString;
QTDCOL.Text       :=Qr_RelTCQTDCOL.AsString;
Memo1.Text        :=Qr_RelTCOBS.Text;
NUMCOL.Text       :=Qr_RelTCNUMCOL.AsString;
INTCOL.Text       :=Qr_RelTCINTCOL.AsString;
GroupBox2.Update;}
end;

procedure TFrm_TrelUF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if not Qr_RelTCNOME.IsNull then
   begin
   Frm_TPro.Label2.Caption:='Relatório Selecionado: ';
   Frm_Tpro.NOMREL.Caption:=Qr_RelTCNOME.Value;
   end
else
   begin
   Frm_Tpro.label2.Caption:='';
   Frm_Tpro.NOMREL.Caption:='';
   end;
Frm_Tpro.NOMREL.Update;
Frm_TPro.Label2.Update;
end;

procedure TFrm_TrelUF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
{NOMREL.Text:=Qr_RelTCNOME.Value;
RGTFONTE.ItemIndex:=Qr_RelTCFPADRAO.Value;
RGENTREL.ItemIndex:=Qr_RelTCQTDLPP.Value;
QTDLP.Text        :=Qr_RelTCQTDLIN.AsString;
QTDCOL.Text       :=Qr_RelTCQTDCOL.AsString;
Memo1.Text        :=Qr_RelTCOBS.Text;
NUMCOL.Text       :=Qr_RelTCNUMCOL.AsString;
INTCOL.Text       :=Qr_RelTCINTCOL.AsString;
RG_TPCOL.ItemIndex:=Qr_RelTCTPCOL.Value;
RG_ORDEM.ItemIndex:=Qr_RelTCORDEM.Value;
GroupBox2.Update}

end;

procedure TFrm_TrelUF.Src_RelDataChange(Sender: TObject; Field: TField);
begin
NOMREL.Text:=Qr_RelTCNOME.Value;
RGTFONTE.ItemIndex:=Qr_RelTCFPADRAO.Value;
RGENTREL.ItemIndex:=Qr_RelTCQTDLPP.Value;
QTDLP.Text        :=Qr_RelTCQTDLIN.AsString;
QTDCOL.Text       :=Qr_RelTCQTDCOL.AsString;
Memo1.Text        :=Qr_RelTCOBS.Text;
NUMCOL.Text       :=Qr_RelTCNUMCOL.AsString;
INTCOL.Text       :=Qr_RelTCINTCOL.AsString;
RG_TPCOL.ItemIndex:=Qr_RelTCTPCOL.Value;
RG_ORDEM.ItemIndex:=Qr_RelTCORDEM.Value;
if Qr_RelTCMPAGGR.Value=1 then
   CB_MPAGGR.Checked:=True
else
   CB_MPAGGR.Checked:=False;
GroupBox2.Update;

end;

procedure TFrm_TrelUF.DBGrid1DblClick(Sender: TObject);
begin
close;
end;

end.

unit S_Prod_Classificar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, Grids, DBGrids, DBTables,
  DBCtrls, Mask;

type
  TFrm_Prod_Classificar = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    edt_codgru: TEdit;
    edt_nomgru: TEdit;
    Label3: TLabel;
    edt_codram: TEdit;
    edt_nomram: TEdit;
    Label4: TLabel;
    edt_codtip: TEdit;
    edt_nomtip: TEdit;
    Label5: TLabel;
    edt_codcon: TEdit;
    edt_nomcon: TEdit;
    Label6: TLabel;
    edt_coddep: TEdit;
    edt_nomdep: TEdit;
    Label7: TLabel;
    edt_codfor: TEdit;
    edt_nomfor: TEdit;
    Label8: TLabel;
    edt_codmarca: TEdit;
    edt_nommarca: TEdit;
    Label9: TLabel;
    edt_codncm: TEdit;
    edt_nomncm: TEdit;
    Label10: TLabel;
    edt_codsecao: TEdit;
    edt_nomsecao: TEdit;
    edt_ini_nome: TEdit;
    Label11: TLabel;
    bbAplicar: TBitBtn;
    bbSair: TBitBtn;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    cb_filtros: TComboBox;
    sbn_marcar: TSpeedButton;
    sbn_desmarcar: TSpeedButton;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Qr_Pro: TQuery;
    U_Pro: TUpdateSQL;
    DBGrid_Pro: TDBGrid;
    Src_Pro: TDataSource;
    Qr_ProPDNOME: TStringField;
    Qr_ProPDCODPRO: TFloatField;
    Qr_ProPDCODGRU: TFloatField;
    Qr_ProPDNOMGRU: TStringField;
    Qr_ProPDCODRAM: TFloatField;
    Qr_ProPDNOMRAM: TStringField;
    Qr_ProPDCODTIP: TFloatField;
    Qr_ProPDNOMTIP: TStringField;
    Qr_ProPDCODCON: TFloatField;
    Qr_ProPDNOMCON: TStringField;
    Qr_ProPDCODDEP: TFloatField;
    Qr_ProPDNOMDEP: TStringField;
    Qr_ProPDCODFOR: TFloatField;
    Qr_ProPDNOMFOR: TStringField;
    Qr_ProPDCODNCM: TStringField;
    Qr_ProPDSECAO: TStringField;
    Qr_ProPDMARCA: TStringField;
    DBCheckBox1: TDBCheckBox;
    Qr_Pronovo_codgru: TIntegerField;
    Qr_Pronovo_nomgru: TStringField;
    Qr_Pronovo_codcon: TIntegerField;
    Qr_Pronovo_nomcon: TStringField;
    Qr_Pronovo_marca: TStringField;
    Qr_Pronovo_codram: TIntegerField;
    Qr_Pronovo_nomram: TStringField;
    Qr_Pronovo_coddep: TIntegerField;
    Qr_Pronovo_nomdep: TStringField;
    Qr_Pronovo_codncm: TStringField;
    Qr_Pronovo_codtip: TIntegerField;
    Qr_Pronovo_nomtip: TStringField;
    Qr_Pronovo_codfor: TFloatField;
    Qr_Pronovo_nomfor: TStringField;
    Qr_Pronovo_secao: TStringField;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    Label14: TLabel;
    DBEdit2: TDBEdit;
    Label15: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label16: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label19: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label20: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label23: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label24: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label27: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label28: TLabel;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit26: TDBEdit;
    Label31: TLabel;
    DBEdit28: TDBEdit;
    Label32: TLabel;
    DBEdit30: TDBEdit;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit32: TDBEdit;
    Label35: TLabel;
    DBEdit34: TDBEdit;
    Label36: TLabel;
    DBEdit36: TDBEdit;
    Edit1: TEdit;
    Edt_QtdMarc: TEdit;
    Edit2: TEdit;
    edt_naoMarcado: TEdit;
    Qr_ProSEL: TFloatField;
    sbn_Atualizar: TSpeedButton;
    procedure bbSairClick(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure DBCheckBox1Exit(Sender: TObject);
    procedure DBGrid_ProDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid_ProExit(Sender: TObject);
    procedure DBGrid_ProKeyPress(Sender: TObject; var Key: Char);
    procedure Qr_ProCalcFields(DataSet: TDataSet);
    procedure edt_codgruKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codramKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codtipKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codconKeyPress(Sender: TObject; var Key: Char);
    procedure edt_coddepKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codforKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codgruExit(Sender: TObject);
    procedure edt_codramExit(Sender: TObject);
    procedure edt_codtipExit(Sender: TObject);
    procedure edt_codconExit(Sender: TObject);
    procedure edt_coddepExit(Sender: TObject);
    procedure edt_codforExit(Sender: TObject);
    procedure edt_codmarcaExit(Sender: TObject);
    procedure edt_codncmExit(Sender: TObject);
    procedure edt_codsecaoExit(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure sbn_marcarClick(Sender: TObject);
    procedure sbn_desmarcarClick(Sender: TObject);
    procedure Qr_ProAfterEdit(DataSet: TDataSet);
    procedure Qr_ProAfterPost(DataSet: TDataSet);
    procedure cb_filtrosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid_ProColExit(Sender: TObject);
    procedure DBGrid_ProDblClick(Sender: TObject);
    procedure sbn_AtualizarClick(Sender: TObject);
  private
    { Private declarations }
    mQtdMarcado   :Integer;
    mQtdNaoMarcado:Integer;
    mAnt_Marcado: String;

    function fLerdados(pMarca: Integer): Boolean;

    function fAtualizarProdutos: Boolean;


  public
    { Public declarations }
  end;

var
  Frm_Prod_Classificar: TFrm_Prod_Classificar;

implementation

uses Func, lerarq, S_DM1;

{$R *.dfm}

procedure TFrm_Prod_Classificar.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Prod_Classificar.DBCheckBox1Click(Sender: TObject);
begin

if DBCheckBox1.Checked then
   DBCheckBox1.Caption := 'Sim'
else
   DBCheckBox1.Caption := 'Não';

end;

procedure TFrm_Prod_Classificar.DBCheckBox1Exit(Sender: TObject);
begin
DBGrid_Pro.SetFocus;

end;

procedure TFrm_Prod_Classificar.DBGrid_ProDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const IsChecked : array[Boolean] of Integer =
      (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED);

var
//Check: Integer;
//R: TRect;
  DrawState: Integer;
  DrawRect: TRect;
begin

if (gdFocused in State) then
   begin
   if (Column.Field.FieldName = DBCheckBox1.DataField) then
      begin
      DBCheckBox1.Left := Rect.Left + DbGrid_Pro.Left + 2;
      DBCheckBox1.Top := Rect.Top + DbGrid_Pro.top + 2;
      DBCheckBox1.Width := Rect.Right - Rect.Left;
      DBCheckBox1.Height := Rect.Bottom - Rect.Top;
      DBCheckBox1.Visible := True;
      end
   end
else
    begin
    if (Column.Field.FieldName = DBCheckBox1.DataField) then
       begin
       DrawRect:=Rect;
       InflateRect(DrawRect,-1,-1);
       DrawState := ISChecked[Column.Field.AsInteger=0];
       DbGrid_Pro.Canvas.FillRect(Rect);
       DrawFrameControl(DbGrid_Pro.Canvas.Handle, DrawRect,
                       DFC_BUTTON, DrawState);
      end;
   end;
end;

procedure TFrm_Prod_Classificar.DBGrid_ProExit(Sender: TObject);
begin
// if DBGrid_Pro.SelectedField.FieldName = DBCheckBox1.DataField then
//    DBCheckBox1.Visible := False

end;

procedure TFrm_Prod_Classificar.DBGrid_ProKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = Chr(9)) then Exit;

if (DbGrid_pro.SelectedField.FieldName = DBCheckBox1.DataField) then
   begin
   DBCheckBox1.SetFocus;
   SendMessage(DBCheckBox1.Handle, WM_Char, word(Key), 0);
   end;



end;

procedure TFrm_Prod_Classificar.Qr_ProCalcFields(DataSet: TDataSet);
begin

Qr_Pronovo_codgru.Clear;
Qr_Pronovo_nomgru.Clear;
Qr_Pronovo_codram.Clear;
Qr_Pronovo_codgru.Clear;
Qr_Pronovo_nomram.Clear;

Qr_Pronovo_codcon.Clear;
Qr_Pronovo_nomram.Clear;
Qr_Pronovo_coddep.Clear;
Qr_Pronovo_nomdep.Clear;
Qr_Pronovo_codfor.Clear;
Qr_Pronovo_nomfor.Clear;
Qr_Pronovo_marca.Clear;
Qr_Pronovo_codncm.Clear;
Qr_Pronovo_secao.Clear;


if Qr_ProSEL.AsInteger=0 then
   begin
   if trim(edt_codgru.Text)<>'' then
      begin
      Qr_Pronovo_codgru.Value:=valint(edt_codgru.Text);
      Qr_Pronovo_nomgru.Value:=edt_nomgru.Text;
      end;

   if trim(edt_codram.Text)<>'' then
      begin
      Qr_Pronovo_codram.Value:=valint(edt_codram.Text);
      Qr_Pronovo_nomram.Value:=edt_nomram.Text;
      end;

   if trim(edt_codtip.Text)<>'' then
      begin
      Qr_Pronovo_codtip.Value:=valint(edt_codtip.Text);
      Qr_Pronovo_nomtip.Value:=edt_nomtip.Text;
      end;

   if trim(edt_codcon.Text)<>'' then
      begin
      Qr_Pronovo_codcon.Value:=valint(edt_codcon.Text);
      Qr_Pronovo_nomcon.Value:=edt_nomcon.Text;
      end;

   if trim(edt_coddep.Text)<>'' then
      begin
      Qr_Pronovo_coddep.Value:=valint(edt_coddep.Text);
      Qr_Pronovo_nomdep.Value:=edt_nomdep.Text;
      end;

   if trim(edt_codfor.Text)<>'' then
      begin
      Qr_Pronovo_codfor.Value:=valint(edt_codfor.Text);
      Qr_Pronovo_nomfor.Value:=edt_nomfor.Text;
      end;

   if trim(edt_codmarca.Text)<>'' then
      begin
      Qr_Pronovo_marca.Value:=edt_nommarca.Text;
      end;

   if trim(edt_codncm.Text)<>'' then
      begin
      Qr_Pronovo_codncm.Value:=edt_nomncm.Text;
      end;
   if trim(edt_codsecao.Text)<>'' then
      begin
      Qr_Pronovo_secao.Value:=edt_nomsecao.Text;
      end;
   end;
end;

procedure TFrm_Prod_Classificar.edt_codgruKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codgru.Text:=fChamaGPro(0,'frm_Pro_Nov',Key);
   if fsonumero(edt_codgru.Text)=0 then
      edt_codgru.Text:='';
   edt_codgruExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Prod_Classificar.edt_codramKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codram.Text:=fChamaRamPro(0,'frm_Pro_Nov',Key);
   if fsonumero(edt_codram.Text)=0 then
      edt_codram.Text:='';
   edt_codramExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Prod_Classificar.edt_codtipKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codtip.Text:=fChamaTipPro(0,'frm_Pro_Nov',Key);
   if fsonumero(edt_codtip.Text)=0 then
      edt_codtip.Text:='';
   edt_codtipExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Prod_Classificar.edt_codconKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codcon.Text:=fChamaTCon(0,'frm_Pro_Nov',Key);
   if fsonumero(edt_codcon.Text)=0 then
      edt_codcon.Text:='';
   edt_codconExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Prod_Classificar.edt_coddepKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_coddep.Text:=fChamaProDep(0,'frm_Pro_Nov',Key);
   if fsonumero(edt_coddep.Text)=0 then
      edt_coddep.Text:='';
   edt_coddepExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Prod_Classificar.edt_codforKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codfor.Text:=fChamaFor(0,'frm_Pro_Nov',Key);
   if fsonumero(edt_codfor.Text)=0 then
      edt_codfor.Text:='';
   edt_codforExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Prod_Classificar.edt_codgruExit(Sender: TObject);
begin
if edt_codgru.Text='' then
   edt_nomgru.Text:=''
else if fsonumero(edt_codgru.Text)=0 then
   begin
   edt_nomgru.Text:='***Excluir Valor****'
   end
else
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',edt_codgru.Text) then
      begin
      verteclado(0);
      fMensagem('Grupo não Cadastrado!',0,['0'],0);
      edt_codgru.SetFocus;
      end
   else
      edt_nomgru.Text:=DM1.Query1.fields[0].AsString;
   end;

end;

procedure TFrm_Prod_Classificar.edt_codramExit(Sender: TObject);
begin
if edt_codram.Text='' then
   edt_nomram.Text:=''
else if fsonumero(edt_codram.Text)=0 then
   begin
   edt_nomram.Text:='***Excluir Valor****'
   end
else
   begin
   if not flqr1('RNOME','R','CADRAM','N','RCODRAM',edt_codram.Text) then
      begin
      verteclado(0);
      fMensagem('ramo não Cadastrado!',0,['0'],0);
      edt_codram.SetFocus;
      end
   else
      edt_nomram.Text:=DM1.Query1.fields[0].AsString;
   end;

end;

procedure TFrm_Prod_Classificar.edt_codtipExit(Sender: TObject);
begin
if edt_codtip.Text='' then
   edt_nomtip.Text:=''
else if fsonumero(edt_codtip.Text)=0 then
   begin
   edt_nomtip.Text:='***Excluir Valor****'
   end
else
   begin
   if not flqr2('TNOME,TDESCAV','T','CADTP','N','TCODTIP',edt_codtip.Text) then
      begin
      verteclado(0);
      fMensagem('tipo não Cadastrado!',0,['0'],0);
      edt_codtip.SetFocus;
      end
   else
      edt_nomtip.Text:=DM1.Query2.fields[0].AsString;
   end;


end;

procedure TFrm_Prod_Classificar.edt_codconExit(Sender: TObject);
begin
if edt_codcon.Text='' then
   edt_nomcon.Text:=''
else if fsonumero(edt_codcon.Text)=0 then
   begin
   edt_nomcon.Text:='***Excluir Valor****'
   end
else
   begin
   if not flqr1('CCODCON,CNOME,CRESTCON','C','CADCON','N','CCODCON',edt_codcon.Text) then
      begin
      verteclado(0);
      fMensagem('cono não Cadastrado!',0,['0'],0);
      edt_codcon.SetFocus;
      end
   else
      edt_nomcon.Text:=DM1.Query1.fields[1].AsString;
   end;


end;

procedure TFrm_Prod_Classificar.edt_coddepExit(Sender: TObject);
begin
if edt_coddep.Text='' then
   edt_nomdep.Text:=''
else if fsonumero(edt_coddep.Text)=0 then
   begin
   edt_nomdep.Text:='***Excluir Valor****'
   end
else
   begin
   if not flqr1('PRODEP_NOME','PRODEP_','CADPRO_DPTO','N','PRODEP_CODDEP',edt_coddep.Text) then
      begin
      verteclado(0);
      fMensagem('departamento não Cadastrado!',0,['0'],0);
      edt_coddep.SetFocus;
      end
   else
      edt_nomdep.Text:=DM1.Query1.fields[0].AsString;
   end;


end;

procedure TFrm_Prod_Classificar.edt_codforExit(Sender: TObject);
begin
if edt_codfor.Text='' then
   edt_nomfor.Text:=''
else if fsonumero(edt_codfor.Text)=0 then
   begin
   edt_nomfor.Text:='***Excluir Valor****'
   end
else
   begin
   if not flqr2('FRAZAO,FRESTFOR','F','CADFOR','N','FCODFOR',DM1.Tb_ProPDCODFOR.AsString) then
      begin
      verteclado(0);
      fMensagem('fornecedor não Cadastrado!',0,['0'],0);
      edt_codfor.SetFocus;
      end
   else
      edt_nomfor.Text:=DM1.Query2.fields[0].AsString;
   end;


end;

procedure TFrm_Prod_Classificar.edt_codmarcaExit(Sender: TObject);
begin
if trim(edt_codmarca.Text)='' then
   edt_nomfor.Text:=''
else
   edt_nommarca.Text:=edt_codmarca.Text;

end;

procedure TFrm_Prod_Classificar.edt_codncmExit(Sender: TObject);
begin
if trim(edt_codncm.Text)='' then
   edt_nomncm.Text:=''
else
   edt_nomncm.Text:=edt_codncm.Text;

end;

procedure TFrm_Prod_Classificar.edt_codsecaoExit(Sender: TObject);
begin
if trim(edt_codsecao.Text)='' then
   edt_nomsecao.Text:=''
else
   edt_nomsecao.Text:=edt_codsecao.Text;

end;

function TFrm_Prod_Classificar.fLerdados(pMarca: Integer): Boolean;
begin
Qr_Pro.close;
Qr_Pro.Sql.clear;
Qr_Pro.Sql.Add('seleCT '+IntTostr(pMarca)+' AS SEL,PDNOME,PDCODPRO '
              +',PDCODGRU,PDNOMGRU,PDCODRAM,PDNOMRAM,PDCODTIP,PDNOMTIP '
              +',PDCODCON,PDNOMCON,PDCODDEP,PDNOMDEP,PDCODFOR,PDNOMFOR '
              +',PDMARCA,PDCLAS AS PDCODNCM,PDSECAO FROM CADPRO '
              +' where PDCODEMP=:CODEMP ');
Qr_Pro.parambyName('CODEMP').Value:=codemp;
if edt_ini_nome.text<>'' then
   begin
   Qr_Pro.Sql.add(' and PDNOME like :NOME ');
   Qr_Pro.parambyName('NOME').Value:=edt_ini_nome.text+'%';

   end;
Qr_Pro.SQL.Add(' order by PDNOME ');

Qr_Pro.Open;
Edt_QtdMarc.Text   :='0';
edt_naoMarcado.Text:='0';
mQtdMarcado   :=0;
mQtdNaoMarcado:=0;

if pMarca=0 then
   begin
   mQtdMarcado   :=qr_pro.recordCount;
   Edt_QtdMarc.Text:=IntTostr(mQtdMarcado);
   end
else
   begin
   mQtdNaoMarcado   :=qr_pro.recordCount;
   edt_naoMarcado.Text:=IntTostr(mQtdNaoMarcado);
   end;
result:=true;
end;

procedure TFrm_Prod_Classificar.bbAplicarClick(Sender: TObject);
begin
if mQtdMarcado>0 then
   begin
   if Application.MessageBox(pChar('Existem '+inttostr(mQtdMarcado)+' marcados para serem atualizados '+#13+' Posso atualizar agoara?'),'Confirmação?',MB_YESNO+MB_DEFBUTTON1)=mrYes then
      fAtualizarProdutos;
   end;
fLerdados(1);

end;

procedure TFrm_Prod_Classificar.sbn_marcarClick(Sender: TObject);
begin
fLerdados(0);

end;

procedure TFrm_Prod_Classificar.sbn_desmarcarClick(Sender: TObject);
begin
fLerdados(1);

end;

procedure TFrm_Prod_Classificar.Qr_ProAfterEdit(DataSet: TDataSet);
begin
mAnt_Marcado:=Qr_ProSEL.AsString;
end;

procedure TFrm_Prod_Classificar.Qr_ProAfterPost(DataSet: TDataSet);
begin
if mAnt_Marcado<>Qr_ProSEL.AsString then
   begin
   if Qr_ProSEL.AsInteger=0 then
      begin
      mQtdMarcado   :=mQtdMarcado+1;
      mQtdNaoMarcado:=mQtdNaoMarcado-1;
      end
   else
      begin
      mQtdMarcado   :=mQtdMarcado-1;
      mQtdNaoMarcado:=mQtdNaoMarcado+1;
      end;
   Edt_QtdMarc.Text:=IntTostr(mQtdMarcado);
   edt_naoMarcado.Text:=IntTostr(mQtdNaoMarcado);
   end;
end;

procedure TFrm_Prod_Classificar.cb_filtrosClick(Sender: TObject);
begin
if cb_filtros.ItemIndex=0 then
   begin
   Qr_Pro.Filter:=' SEL=1';
   Qr_Pro.Filtered:=true;
   end
else if cb_filtros.ItemIndex=1 then
   begin
   Qr_Pro.Filter:=' SEL=0';
   Qr_Pro.Filtered:=true;
   end
else
   begin
   Qr_Pro.Filter:='';
   Qr_Pro.Filtered:=false;
   end;

end;

procedure TFrm_Prod_Classificar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (FormState<>[fsModal]) then
   action:=cafree;

end;

procedure TFrm_Prod_Classificar.DBGrid_ProColExit(Sender: TObject);
begin
 if DBGrid_Pro.SelectedField.FieldName = DBCheckBox1.DataField then
    DBCheckBox1.Visible := False

end;

procedure TFrm_Prod_Classificar.DBGrid_ProDblClick(Sender: TObject);
begin
{
Qr_Pro.Edit;
if Qr_ProSEL.AsInteger=0 then
   Qr_ProSEL.AsInteger:=1
else
   Qr_ProSEL.AsInteger:=0;
Qr_Pro.post;
}
end;


function TFrm_Prod_Classificar.fAtualizarProdutos: Boolean;
var
mCodigos: String;
mQtdCod: Integer;
query_exe: tQuery;
mVirg: String;
   function fCarregarSql(pcodigos: string): Boolean;
   begin
   query_exe.Close;
   query_exe.SQL.clear;
   query_exe.SQL.Add('Update CADPRO SET ');
   mVirg:='';
   if trim(edt_codgru.Text)<>'' then
      begin
      query_exe.SQL.add(mvirg+' PDCODGRU=:CODGRU , PDNOMGRU=:NOMGRU ' );
      query_exe.parambyname('CODGRU').Value:=fSonumero(edt_codgru.Text);
      query_exe.parambyname('NOMGRU').Value:=edt_nomgru.Text;
      mVirg:=',';
      end;
   if trim(edt_codram.Text)<>'' then
      begin
      query_exe.SQL.add(mvirg+' PDCODRAM=:CODRAM , PDNOMRAM=:NOMRAM ' );
      query_exe.parambyname('CODRAM').Value:=fSonumero(edt_codram.Text);
      query_exe.parambyname('NOMRAM').Value:=edt_nomram.Text;
      mVirg:=',';
      end;

   if trim(edt_codtip.Text)<>'' then
      begin
      query_exe.SQL.add(mvirg+' PDCODTIP=:CODTIP , PDNOMTIP=:NOMTIP ' );
      query_exe.parambyname('CODTIP').Value:=fSonumero(edt_codtip.Text);
      query_exe.parambyname('NOMTIP').Value:=edt_nomtip.Text;
      mVirg:=',';
      end;

   if trim(edt_codcon.Text)<>'' then
      begin
      query_exe.SQL.add(mvirg+' PDCODCON=:CODCON , PDNOMCON=:NOMCON ' );
      query_exe.parambyname('CODCON').Value:=fSonumero(edt_codcon.Text);
      query_exe.parambyname('NOMCON').Value:=edt_nomcon.Text;
      mVirg:=',';
      end;

   if trim(edt_coddep.Text)<>'' then
      begin
      query_exe.SQL.add(mvirg+' PDCODDEP=:CODDEP , PDNOMDEP=:NOMDEP ' );
      query_exe.parambyname('CODDEP').Value:=fSonumero(edt_coddep.Text);
      query_exe.parambyname('NOMDEP').Value:=edt_nomdep.Text;
      mVirg:=',';
      end;

   if trim(edt_codfor.Text)<>'' then
      begin
      query_exe.SQL.add(mvirg+' PDCODFOR=:CODFOR , PDNOMFOR=:NOMFOR ' );
      query_exe.parambyname('CODFOR').Value:=fSonumero(edt_codFOR.Text);
      query_exe.parambyname('NOMFOR').Value:=edt_nomfor.Text;
      mVirg:=',';
      end;

   if trim(edt_codmarca.Text)<>'' then
      begin
      query_exe.SQL.add(mvirg+' PDMARCA=:MARCA' );
      query_exe.parambyname('MARCA').Value:=edt_nommarca.Text;
      mVirg:=',';
      end;

   if trim(edt_codncm.Text)<>'' then
      begin
      query_exe.SQL.add(mvirg+' PDCLAS=:CODNCM' );
      query_exe.parambyname('CODNCM').Value:=edt_codncm.Text;
      mVirg:=',';
      end;


   if trim(edt_codsecao.Text)<>'' then
      begin
      query_exe.SQL.add(mvirg+' PDSECAO=:SECAO' );
      query_exe.parambyname('SECAO').Value:=edt_nomsecao.Text;
      mVirg:=',';
      end;
   if mVirg='' then
      begin
      FreeAndNil(query_exe);
      result:=true;
      exit;
      end;
   query_exe.sql.add(' where PDCODEMP=:CODEMP');
   query_exe.ParamByName('CODEMP').value:=codemp;
   query_exe.sql.add(' and PDCODPRO in ('+pcodigos+')');

   mQtdCod:=0;
   mCodigos:='';
   mVirg:='';
   query_exe.execsql;
   fdm1StartCommit;


   end;
begin
qr_pro.filter:='';

qr_pro.filtered:=false;
query_exe:=tQuery.Create(nil);
query_exe.DatabaseName:='SG_ASSOC';



Qr_Pro.First;
mQtdCod:=0;
mCodigos:='';
mVirg:='';
While not Qr_pro.eof do
   begin
   if Qr_ProSEL.AsInteger<>0 then
      begin
      qr_pro.Next;
      Continue;
      end;
   if mQtdCod>10 then
      fCarregarSql(mCodigos);
   mcodigos:=mCodigos+mvirg+Qr_ProPDCODPRO.AsString;
   mvirg:=',';
   mQtdCod:=mQtdCod+1;
   Qr_Pro.Next;
   end;
if mqtdcod>0 then
   fCarregarSql(mCodigos);
freeandnil(Query_exe);
result:=true;
end;
procedure TFrm_Prod_Classificar.sbn_AtualizarClick(Sender: TObject);
begin
fAtualizarProdutos;
fLerdados(1);
MessageDlg('Atualizado!',mtInformation,[mbOk],0);

end;

end.

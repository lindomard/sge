unit S_TroMol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls, DB, DBTables;

type
  TFrm_TroMol = class(TFrm_C)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    OBS: TDBEdit;
    Label8: TLabel;
    HORASAIINI: TEdit;
    MINUTOSAIINI: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DSSITUACAO: TDataSource;
    SITUACAO: TQuery;
    USITUACAO: TUpdateSQL;
    SITUACAOOK: TStringField;
    SITUACAOSNOMSITMAQ: TStringField;
    SITUACAOSCODSITMAQ: TFloatField;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    BUSCADTSAI: TDateTimePicker;
    Label13: TLabel;
    BUSCADTENT: TDateTimePicker;
    HORAENT: TMaskEdit;
    MINUTOENT: TMaskEdit;
    Label14: TLabel;
    DATASAI: TMaskEdit;
    Label9: TLabel;
    Label15: TLabel;
    CODIGO: TEdit;
    DATAENT: TMaskEdit;
    BitBtn1: TBitBtn;
    Label16: TLabel;
    procedure BBnAtuClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure carrega_combos;
    procedure Label6Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure MONTA_CAMPOS;
    procedure ComboBox5Exit(Sender: TObject);
    procedure MINUTOSAIINIExit(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure CODIGOExit(Sender: TObject);
    procedure DATASAIExit(Sender: TObject);
    procedure BUSCADTENTChange(Sender: TObject);
    procedure BUSCADTSAIChange(Sender: TObject);
    procedure MONTA_TELA;
    procedure MARCA_ITEM;
    procedure LIMPA_TELA;
    procedure MARCA_X;
    procedure HORAENTExit(Sender: TObject);
    procedure HORASAIINIExit(Sender: TObject);
    procedure MINUTOENTExit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
    procedure cbx1;
    procedure cbx2;
    procedure cbx3;
    procedure cbx4;
    procedure cbx5;
    procedure Label10Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_TroMol: TFrm_TroMol;

implementation

uses S_DM2, S_DM1, Func, lerarq, S_DM4, S_SitMaq, S_CadMolde, S_Imo,
  S_RTroMol, S_Fun;

{$R *.dfm}

procedure TFrm_TroMol.BBnAtuClick(Sender: TObject);
begin
  inherited;
  If DM2.Tb_TroMol.State in [dsInsert, dsEdit] then
     begin
     Case MessageDlg('O registro atual não está gravado!'+#13
                    +'Deseja gravar agora?',mtWarning,[mbYes,mbNo],0) of
        mrYes: GRAVAR.Click;
        else CANCELAR.Click;
        end;
     end;
  CODIGOExit(SELF); 

end;

procedure TFrm_TroMol.SAIRClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrm_TroMol.FormCreate(Sender: TObject);
begin
  inherited;
  DM2.Tb_TroMol.Open;
  carrega_combos;
  dataent.Text   := datetostr(now);
  PC1.ActivePage := tsCad;
end;

procedure TFrm_TroMol.DBGrid2CellClick(Column: TColumn);
begin
  inherited;
  MARCA_ITEM;
end;

procedure TFrm_TroMol.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
     If SITUACAOOK.AsString = 'X' then
     begin
         DBGrid2.Canvas.Brush.Color := clRed;
         DBGrid2.Canvas.Font.Color  := clInfoBk;
     end;
     DBGrid2.DefaultDrawDataCell(Rect, Column.Field, State);

end;

procedure TFrm_TroMol.Label4Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(Tfrm_CadMolde, Frm_CadMolde);
  Frm_CadMolde.ShowModal;
  Frm_CadMolde.Free;
//  carrega_combos;
  cbx1;
  IF NOT DM2.Tb_TroMolTCODTROMOL.IsNull THEN
     monta_tela;
end;

procedure TFrm_TroMol.Label5Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(Tfrm_sitmaq, Frm_sitmaq);
  Frm_sitmaq.ShowModal;
  Frm_sitmaq.Free;
//  carrega_combos;
  marca_x;
end;

procedure TFrm_TroMol.carrega_combos;
begin

  SITUACAO.Close;
  SITUACAO.sql.Clear;
  SITUACAO.SQL.Add('select '' '' OK ,snomsitmaq,scodsitmaq from cadsitmaq ');
  SITUACAO.open;

  ComboBox1.Items.clear;
  ComboBox2.Items.clear;
  ComboBox3.Items.clear;
  ComboBox4.Items.clear;
  ComboBox5.Items.clear;

  dm2.tb_molde.Close;
  dm2.tb_molde.sql.Clear;
  dm2.tb_molde.sql.add('SELECT * FROM CADMOLDE');
  DM2.Tb_Molde.Open;
  DM2.Tb_Molde.First;
  while NOT DM2.Tb_Molde.Eof do
  begin
      ComboBox1.Items.Add(FormatFloat('000',DM2.Tb_MoldeMCODMOLDE.AsFloat)+' - '+DM2.Tb_MoldeMNOMMOLDE.AsString);
      ComboBox2.Items.Add(FormatFloat('000',DM2.Tb_MoldeMCODMOLDE.AsFloat)+' - '+DM2.Tb_MoldeMNOMMOLDE.AsString);
      DM2.Tb_Molde.Next;
  end;

  DM2.Tb_Fun.close;
  dm2.tb_fun.sql.clear;
  DM2.Tb_Fun.sql.add('select * from cadfun ');
  DM2.Tb_Fun.Open;
  DM2.Tb_Fun.First;
  While not DM2.Tb_Fun.Eof do
  begin
      ComboBox3.Items.Add(FormatFloat('000000',DM2.Tb_FunCFCODFUN.AsFloat)+' - '+DM2.Tb_FunCFNOMFUN.Value);
      ComboBox4.Items.Add(FormatFloat('000000',DM2.Tb_FunCFCODFUN.AsFloat)+' - '+DM2.Tb_FunCFNOMFUN.Value);
      DM2.Tb_Fun.Next;
  end;

  dm2.Tb_Imo01.Close;
  dm2.Tb_Imo01.SQL.Clear;
  dm2.Tb_Imo01.SQL.Add('select * from cadimo01 ');
  dm2.Tb_Imo01.Open;
  DM2.Tb_Imo01.First;
  While not DM2.Tb_imo01.Eof do
  begin
      ComboBox5.Items.Add(FormatFloat('000000',DM2.Tb_Imo01IM1CODIMO.AsFloat)+' - '+DM2.Tb_Imo01IM1NOME.Value);
      DM2.Tb_Imo01.Next;
  end;

  if codigo.text <> '' then  MARCA_X;
end;

procedure TFrm_TroMol.Label6Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(Tfrm_CadMolde, Frm_CadMolde);
  Frm_CadMolde.ShowModal;
  Frm_CadMolde.Free;
//  carrega_combos;
  cbx2;
  IF NOT DM2.Tb_TroMolTCODTROMOL.IsNull THEN
     monta_tela;

end;

procedure TFrm_TroMol.Label3Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrm_Imo,Frm_Imo);
  Frm_Imo.ShowModal;
  Frm_Imo.Free;
//  carrega_combos;
  cbx5;
  IF NOT DM2.Tb_TroMolTCODTROMOL.IsNull THEN
     monta_tela;

end;

procedure TFrm_TroMol.INCLUIRClick(Sender: TObject);
begin
  inherited;
  LIMPA_TELA;
  mPer_Oper:=0;
  DM2.Tb_TroMol.Append;
  mcodigo                        := StrToFloat(DM2.Tb_TroMolTCODTROMOL.AsString);
  DM2.Tb_TroMolTCODEMP.AsInteger := codemp;
  codigo.Enabled                 := true;
  dataent.SetFocus;

end;

procedure TFrm_TroMol.ALTERARClick(Sender: TObject);
begin
  inherited;
  if DM2.Tb_TroMolTCODTROMOL.IsNull then
     begin
     MessageDlg('Não ha registro a ser alterado',mtWarning,[mbOk],0);
     exit;
     end;
  mPer_Oper:=8;
  DM2.Tb_TroMol.Edit;

  IF CODIGO.Text = '' THEN
  BEGIN
      Label1Click(SELF);
      CODIGOExit(SELF);
  END ELSE
  BEGIN
      CODIGOExit(SELF);
  END;
  codigo.Enabled  := false;
  DM2.Tb_TroMol.Edit;
  DATAENT.SetFocus;
end;

procedure TFrm_TroMol.EXCLUIRClick(Sender: TObject);
begin
  inherited;
  if DM2.Tb_TroMolTCODTROMOL.IsNull then
     begin
     MessageDlg('Não ha registro a ser excluido!',mtWarning,[mbOk],0);
     exit;
     end;
  if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
     begin
     DM2.Tb_TroMol.Delete;
     DM2.Tb_TroMol.ApplyUpdates;     
     end;

end;

procedure TFrm_TroMol.GRAVARClick(Sender: TObject);
begin
  inherited;

  if datasai.text <> '  /  /' then
  begin
     if HORASAIINI.text = '' then
     begin
         showmessage('Favor Informar a Hora de Saida / Minuto de Saida...');
         HORASAIINI.SetFocus;
         exit;
     end;
  end;


  if (HORASAIINI.text <> '')or(MINUTOSAIINI.text <> '') then
  begin
      if datasai.text = '  /  /' then
      begin
          showmessage('Foi Informado a Hora, Informe a Data de Saida...');
          datasai.SetFocus;
          exit;
      end;
  end;


  try

  If DM2.Tb_TroMol.State in [dsInsert] then
     begin
         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.SQL.Add('SELECT MAX(TCODTROMOL) FROM CADTROMOL ');
         DM1.Query3.Open;
         DM2.Tb_TroMolTCODTROMOL.AsFloat := DM1.Query3.Fields[0].AsFloat + 1;
     END;

    MONTA_CAMPOS;
    DM2.Tb_TroMol.Post;
    DM2.Tb_TroMol.ApplyUpdates;
  except
    DM1.SG_ASSOC.Rollback;
  end;

  codigo.Enabled := true;
  CANCELAR.Click;

end;

procedure TFrm_TroMol.CANCELARClick(Sender: TObject);
begin
  inherited;
  codigo.Enabled     := TRUE;
  mPer_oper:=0;
  DM2.Tb_TroMol.Cancel;
  LIMPA_TELA;
  INCLUIR.Enabled     :=true;
  ALTERAR.Enabled     :=true;
  EXCLUIR.Enabled     :=true;

end;

procedure TFrm_TroMol.MONTA_CAMPOS;
VAR
    DATAAUX   : STRING;
    CODIGOAUX : REAL;
begin
    SITUACAO.First;

    DM2.Tb_TroMolTCODSIT1.AsString  := '';
    DM2.Tb_TroMolTCODSIT2.AsString  := '';
    DM2.Tb_TroMolTCODSIT3.AsString  := '';
    DM2.Tb_TroMolTCODSIT4.AsString  := '';
    DM2.Tb_TroMolTCODSIT5.AsString  := '';
    DM2.Tb_TroMolTCODSIT6.AsString  := '';
    DM2.Tb_TroMolTCODSIT7.AsString  := '';
    DM2.Tb_TroMolTCODSIT8.AsString  := '';
    DM2.Tb_TroMolTCODSIT9.AsString  := '';
    DM2.Tb_TroMolTCODSIT10.AsString := '';

    IF SITUACAOOK.AsString = 'X' THEN
    IF NOT SITUACAO.EOF THEN DM2.Tb_TroMolTCODSIT1.AsString  := SITUACAOSCODSITMAQ.AsString;
    SITUACAO.NEXT;
    IF SITUACAOOK.AsString = 'X' THEN
    IF NOT SITUACAO.EOF THEN DM2.Tb_TroMolTCODSIT2.AsString  := SITUACAOSCODSITMAQ.AsString;
    SITUACAO.NEXT;
    IF SITUACAOOK.AsString = 'X' THEN
    IF NOT SITUACAO.EOF THEN DM2.Tb_TroMolTCODSIT3.AsString  := SITUACAOSCODSITMAQ.AsString;
    SITUACAO.NEXT;
    IF SITUACAOOK.AsString = 'X' THEN
    IF NOT SITUACAO.EOF THEN DM2.Tb_TroMolTCODSIT4.AsString  := SITUACAOSCODSITMAQ.AsString;
    SITUACAO.NEXT;
    IF SITUACAOOK.AsString = 'X' THEN
    IF NOT SITUACAO.EOF THEN DM2.Tb_TroMolTCODSIT5.AsString  := SITUACAOSCODSITMAQ.AsString;
    SITUACAO.NEXT;
    IF SITUACAOOK.AsString = 'X' THEN
    IF NOT SITUACAO.EOF THEN DM2.Tb_TroMolTCODSIT6.AsString  := SITUACAOSCODSITMAQ.AsString;
    SITUACAO.NEXT;
    IF SITUACAOOK.AsString = 'X' THEN
    IF NOT SITUACAO.EOF THEN DM2.Tb_TroMolTCODSIT7.AsString  := SITUACAOSCODSITMAQ.AsString;
    SITUACAO.NEXT;
    IF SITUACAOOK.AsString = 'X' THEN
    IF NOT SITUACAO.EOF THEN DM2.Tb_TroMolTCODSIT8.AsString  := SITUACAOSCODSITMAQ.AsString;
    SITUACAO.NEXT;
    IF SITUACAOOK.AsString = 'X' THEN
    IF NOT SITUACAO.EOF THEN DM2.Tb_TroMolTCODSIT9.AsString  := SITUACAOSCODSITMAQ.AsString;
    SITUACAO.NEXT;
    IF SITUACAOOK.AsString = 'X' THEN
    IF NOT SITUACAO.EOF THEN DM2.Tb_TroMolTCODSIT10.AsString := SITUACAOSCODSITMAQ.AsString;
    SITUACAO.NEXT;

    DM2.Tb_TroMolTCODMOLDE.AsString     := copy(ComboBox1.Text,1,3);
    DM2.Tb_TroMolTCODMOLSAI.AsString    := copy(ComboBox2.Text,1,3);
    DM2.Tb_TroMolTCODIMO.AsString       := copy(ComboBox5.Text,1,6);
    DM2.Tb_TroMolTCODENCAR.AsString     := copy(ComboBox3.Text,1,6);
    DM2.Tb_TroMolTCODGEREN.AsString     := copy(ComboBox4.Text,1,6);
    DM2.Tb_TroMolTDATAENT.AsString      := DATAENT.TEXT;
    DM2.Tb_TroMolTHORAENTINI.AsString   := HORAENT.Text;
    DM2.Tb_TroMolTMINUENTTOFIN.AsString := MINUTOENT.Text;
    IF DATASAI.Text <> '  /  /    ' THEN
       DM2.Tb_TroMolTDATASAI.AsDateTime := StrToDate(DATASAI.TEXT);
    DM2.Tb_TroMolTHORASAIINI.AsString   := HORASAIINI.Text;
    DM2.Tb_TroMolTMINUSAIFIN.AsString   := MINUTOSAIINI.Text;

end;

procedure TFrm_TroMol.ComboBox5Exit(Sender: TObject);
begin
  inherited;
  ComboBox2.SetFocus;
end;

procedure TFrm_TroMol.MINUTOSAIINIExit(Sender: TObject);
begin
  inherited;
  if MINUTOSAIINI.Text <> '' THEN
  BEGIN
      if STRTOINT(MINUTOSAIINI.Text) > 59 THEN
      BEGIN
          SHOWMESSAGE('Por Favor, Informe a Minuto Correta ...');
          MINUTOSAIINI.SetFocus;
          EXIT;
      END;
  END;

  GRAVAR.SetFocus;
end;

procedure TFrm_TroMol.Label1Click(Sender: TObject);
begin
  inherited;

  DM1.Query3.Close;
  DM1.Query3.SQL.Clear;
  DM1.Query3.SQL.Add('Select max(TCODTROMOL) from CADTROMOL WHERE ');
  DM1.Query3.SQL.Add('    TCODEMP = '+IntToStr(codemp));
  DM1.Query3.Open;
  CODIGO.Text:=DM1.Query3.Fields[0].AsString;
  CODIGO.Update;
  CODIGOExit(SELF);
end;

procedure TFrm_TroMol.CODIGOExit(Sender: TObject);
begin
  inherited;
  If DM2.Tb_TroMol.State in [dsEdit] then
  begin
      DM2.Tb_TroMol.Close;
      DM2.Tb_TroMol.SQL.Clear;
      DM2.Tb_TroMol.SQL.Add('Select * from CADTROMOL WHERE ');
      DM2.Tb_TroMol.SQL.Add('     TCODEMP    = '+IntToStr(codemp));
      DM2.Tb_TroMol.SQL.Add(' AND TCODTROMOL = '+CODIGO.Text);
      DM2.Tb_TroMol.Open;
      MONTA_TELA;
  END;
end;

procedure TFrm_TroMol.DATASAIExit(Sender: TObject);
begin
  inherited;
  IF DATAENT.Text <> '  /  /    ' THEN
  BEGIN
      IF StrToDate(DATAENT.Text) > strtodate(DATASAI.Text) THEN
      BEGIN
          SHOWMESSAGE('Data da Entrada Nao Pode Ser Mairo Que Data da Saida...');
          DATASAI.SetFocus;
          EXIT;
      END;

      try
        DATASAI.Text:=FormatDatetime('dd/mm/yyyy',StrtoDate(DATASAI.Text));
      except
        ShowMessage('Data Invalida!');
        DATASAI.SetFocus;
      end;
  END;

end;

procedure TFrm_TroMol.BUSCADTENTChange(Sender: TObject);
begin
  inherited;
  DATAENT.Text := DateToStr(BUSCADTENT.Date);
end;

procedure TFrm_TroMol.BUSCADTSAIChange(Sender: TObject);
begin
  inherited;
  DATASAI.Text := DateToStr(BUSCADTSAI.Date);
end;

procedure TFrm_TroMol.MONTA_TELA;
begin


    CODIGO.Text          := DM2.Tb_TroMolTCODTROMOL.AsString;
    DATAENT.Text         := DM2.Tb_TroMolTDATAENT.AsString;
    HORAENT.Text         := DM2.Tb_TroMolTHORAENTINI.AsString;
    MINUTOENT.Text       := DM2.Tb_TroMolTMINUENTTOFIN.AsString;
    DATASAI.TEXT         := DM2.Tb_TroMolTDATASAI.AsString;
    HORASAIINI.Text      := DM2.Tb_TroMolTHORASAIINI.AsString;
    MINUTOSAIINI.Text    := DM2.Tb_TroMolTMINUSAIFIN.AsString;

    dm1.Query1.Close;
    dm1.Query1.SQL.Clear;
    dm1.Query1.SQL.Add('select * from cadmolde where ');
    dm1.Query1.SQL.Add('     mcodemp   = '+inttostr(codemp));
    dm1.Query1.SQL.Add(' and mcodmolde = '+dm2.Tb_TroMolTCODMOLDE.AsString);
    dm1.Query1.Open;

    ComboBox1.itemindex  := ComboBox1.Items.IndexOf(FormatFloat('000',DM2.Tb_TroMolTCODMOLDE.AsFloat)+' - '+dm1.Query1.fieldbyname('MNOMMOLDE').AsString);

    dm1.Query1.Close;
    dm1.Query1.SQL.Clear;
    dm1.Query1.SQL.Add('select * from cadmolde where ');
    dm1.Query1.SQL.Add('     mcodemp   = '+inttostr(codemp));
    dm1.Query1.SQL.Add(' and mcodmolde = '+dm2.Tb_TroMolTCODMOLSAI.AsString);
    dm1.Query1.Open;

    ComboBox2.itemindex  := ComboBox2.Items.IndexOf(FormatFloat('000',DM2.Tb_TroMolTCODMOLSAI.AsFloat)+' - '+dm1.Query1.fieldbyname('MNOMMOLDE').AsString);

    dm1.Query1.Close;
    dm1.Query1.SQL.Clear;
    dm1.Query1.SQL.Add('select * from cadfun where ');
    dm1.Query1.SQL.Add('     cfcodemp = '+inttostr(codemp));
    dm1.Query1.SQL.Add(' and cfcodfun = '+dm2.Tb_TroMolTCODENCAR.AsString);
    dm1.Query1.Open;

    ComboBox3.itemindex  := ComboBox3.Items.IndexOf(FormatFloat('000000',DM2.Tb_TroMolTCODENCAR.AsFloat)+' - '+dm1.Query1.fieldbyname('CFNOMFUN').Value);

    dm1.Query1.Close;
    dm1.Query1.SQL.Clear;
    dm1.Query1.SQL.Add('select * from cadfun where ');
    dm1.Query1.SQL.Add('     cfcodemp = '+inttostr(codemp));
    dm1.Query1.SQL.Add(' and cfcodfun = '+dm2.Tb_TroMolTCODGEREN.AsString);
    dm1.Query1.Open;

    ComboBox4.itemindex  := ComboBox4.Items.IndexOf(FormatFloat('000000',DM2.Tb_TroMolTCODGEREN.AsFloat)+' - '+dm1.Query1.fieldbyname('CFNOMFUN').Value);

    dm1.Query1.Close;
    dm1.Query1.SQL.Clear;
    dm1.Query1.SQL.Add('select * from cadimo01 where ');
    dm1.Query1.SQL.Add('     im1codemp = '+inttostr(codemp));
    dm1.Query1.SQL.Add(' and im1codimo = '+dm2.Tb_TroMolTCODIMO.AsString);
    dm1.Query1.Open;

    ComboBox5.itemindex  := ComboBox5.Items.IndexOf(FormatFloat('000000',DM2.Tb_TroMolTCODIMO.AsFloat)+' - '+dm1.Query1.fieldbyname('IM1NOME').Value);

    MARCA_X;
end;

procedure TFrm_TroMol.MARCA_ITEM;
begin
   SITUACAO.Edit;
   IF SITUACAOOK.AsString <> 'X' THEN
      SITUACAOOK.ASSTRING := 'X'
      ELSE SITUACAOOK.ASSTRING := '';

end;

procedure TFrm_TroMol.LIMPA_TELA;
begin

    SITUACAO.Close;
    SITUACAO.Open;
    CODIGO.Clear; DATAENT.Clear; HORAENT.Clear; MINUTOENT.Clear;
    ComboBox1.ItemIndex := -1; ComboBox2.ItemIndex := -1; ComboBox3.ItemIndex := -1;
    ComboBox4.ItemIndex := -1; ComboBox5.ItemIndex := -1; OBS.Clear;
    DATASAI.Clear; HORASAIINI.Clear; MINUTOSAIINI.Clear;
    dataent.Text := datetostr(now);
end;

procedure TFrm_TroMol.HORAENTExit(Sender: TObject);
begin
  inherited;
  if STRTOINT(HORAENT.Text) > 25 THEN
  BEGIN
      SHOWMESSAGE('Por Favor, Informe a Hora Correta ...');
      HORAENT.SetFocus;
      EXIT;
  END;
end;

procedure TFrm_TroMol.HORASAIINIExit(Sender: TObject);
begin
  inherited;
  if HORASAIINI.Text <> '' THEN
  BEGIN
      if STRTOINT(HORASAIINI.Text) > 25 THEN
      BEGIN
          SHOWMESSAGE('Por Favor, Informe a Hora Correta ...');
          HORASAIINI.SetFocus;
          EXIT;
      END;
  END;

end;

procedure TFrm_TroMol.MINUTOENTExit(Sender: TObject);
begin
  inherited;
  if STRTOINT(MINUTOENT.Text) > 59 THEN
  BEGIN
      SHOWMESSAGE('Por Favor, Informe a Minuto Correta ...');
      MINUTOENT.SetFocus;
      EXIT;
  END;

end;

procedure TFrm_TroMol.Edit1Change(Sender: TObject);
begin
  inherited;
  DM2.Tb_TroMol.Close;
  DM2.Tb_TroMol.SQL.Clear;
  DM2.Tb_TroMol.SQL.Add('Select * from CADTROMOL WHERE ');
  DM2.Tb_TroMol.SQL.Add('     TCODEMP    = '+IntToStr(codemp));
  DM2.Tb_TroMol.SQL.Add(' AND TCODTROMOL LIKE '+''''+Edit1.Text+'%''');
  DM2.Tb_TroMol.Open;
  MONTA_TELA;

end;

procedure TFrm_TroMol.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  IF NOT DM2.Tb_TroMolTCODTROMOL.IsNull THEN
     monta_tela;
end;

procedure TFrm_TroMol.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrm_rtromol,Frm_rtromol);
  Frm_rtromol.ShowModal;
  Frm_rtromol.Free;

end;

procedure TFrm_TroMol.MARCA_X;
begin

    SITUACAO.Close;
    SITUACAO.Open;
    SITUACAO.First;
    while NOT SITUACAO.Eof do
    begin
        IF SITUACAOSCODSITMAQ.AsString = DM2.Tb_TroMolTCODSIT1.AsString  THEN MARCA_ITEM;
        IF SITUACAOSCODSITMAQ.AsString = DM2.Tb_TroMolTCODSIT2.AsString  THEN MARCA_ITEM;
        IF SITUACAOSCODSITMAQ.AsString = DM2.Tb_TroMolTCODSIT3.AsString  THEN MARCA_ITEM;
        IF SITUACAOSCODSITMAQ.AsString = DM2.Tb_TroMolTCODSIT4.AsString  THEN MARCA_ITEM;
        IF SITUACAOSCODSITMAQ.AsString = DM2.Tb_TroMolTCODSIT5.AsString  THEN MARCA_ITEM;
        IF SITUACAOSCODSITMAQ.AsString = DM2.Tb_TroMolTCODSIT6.AsString  THEN MARCA_ITEM;
        IF SITUACAOSCODSITMAQ.AsString = DM2.Tb_TroMolTCODSIT7.AsString  THEN MARCA_ITEM;
        IF SITUACAOSCODSITMAQ.AsString = DM2.Tb_TroMolTCODSIT8.AsString  THEN MARCA_ITEM;
        IF SITUACAOSCODSITMAQ.AsString = DM2.Tb_TroMolTCODSIT9.AsString  THEN MARCA_ITEM;
        IF SITUACAOSCODSITMAQ.AsString = DM2.Tb_TroMolTCODSIT10.AsString THEN MARCA_ITEM;
        SITUACAO.Next;
    end;

end;

procedure TFrm_TroMol.cbx1;
begin
  combobox1.Clear;
  DM2.Tb_Molde.Open;
  DM2.Tb_Molde.First;
  while NOT DM2.Tb_Molde.Eof do
  begin
      ComboBox1.Items.Add(FormatFloat('000',DM2.Tb_MoldeMCODMOLDE.AsFloat)+' - '+DM2.Tb_MoldeMNOMMOLDE.AsString);
      DM2.Tb_Molde.Next;
  end;

end;

procedure TFrm_TroMol.cbx2;
begin
  combobox2.clear;
  DM2.Tb_Molde.Open;
  DM2.Tb_Molde.First;
  while NOT DM2.Tb_Molde.Eof do
  begin
      ComboBox2.Items.Add(FormatFloat('000',DM2.Tb_MoldeMCODMOLDE.AsFloat)+' - '+DM2.Tb_MoldeMNOMMOLDE.AsString);
      DM2.Tb_Molde.Next;
  end;

end;

procedure TFrm_TroMol.cbx3;
begin
  combobox3.clear;
  DM2.Tb_Fun.Open;
  DM2.Tb_Fun.First;
  While not DM2.Tb_Fun.Eof do
  begin
      ComboBox3.Items.Add(FormatFloat('000000',DM2.Tb_FunCFCODFUN.AsFloat)+' - '+DM2.Tb_FunCFNOMFUN.Value);
      DM2.Tb_Fun.Next;
  end;

end;

procedure TFrm_TroMol.cbx4;
begin
  combobox4.clear;
  DM2.Tb_Fun.Open;
  DM2.Tb_Fun.First;
  While not DM2.Tb_Fun.Eof do
  begin
      ComboBox4.Items.Add(FormatFloat('000000',DM2.Tb_FunCFCODFUN.AsFloat)+' - '+DM2.Tb_FunCFNOMFUN.Value);
      DM2.Tb_Fun.Next;
  end;

end;

procedure TFrm_TroMol.cbx5;
begin
  combobox5.clear;
  DM2.Tb_Imo01.Open;
  DM2.Tb_Imo01.First;
  While not DM2.Tb_imo01.Eof do
  begin
      ComboBox5.Items.Add(FormatFloat('000000',DM2.Tb_Imo01IM1CODIMO.AsFloat)+' - '+DM2.Tb_Imo01IM1NOME.Value);
      DM2.Tb_Imo01.Next;
  end;

end;

procedure TFrm_TroMol.Label10Click(Sender: TObject);
begin
  inherited;

   if frm_fun=nil then
      Application.CreateForm(Tfrm_Fun, Frm_Fun)
   else
      begin
      Frm_Fun.free;
      Frm_Fun:=nil;
      Application.CreateForm(Tfrm_Fun, Frm_Fun)
      end;


  Frm_Fun.ShowModal;
  Frm_Fun.Free;
  Frm_Fun:=nil;
//  carrega_combos;
  cbx3;
  IF NOT DM2.Tb_TroMolTCODTROMOL.IsNull THEN
     monta_tela;

end;

procedure TFrm_TroMol.Label11Click(Sender: TObject);
begin
  inherited;

   if frm_fun=nil then
      Application.CreateForm(Tfrm_Fun, Frm_Fun)
   else
      begin
      Frm_Fun.free;
      Frm_Fun:=nil;
      Application.CreateForm(Tfrm_Fun, Frm_Fun)
      end;

  Frm_Fun.ShowModal;
  Frm_Fun.Free;
  Frm_Fun:=nil;
//  carrega_combos;
  cbx4;
  IF NOT DM2.Tb_TroMolTCODTROMOL.IsNull THEN
     monta_tela;

end;

procedure TFrm_TroMol.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_TroMol.FormShow(Sender: TObject);
begin
  inherited;
  PC1.ActivePage := tsCad;
end;

end.

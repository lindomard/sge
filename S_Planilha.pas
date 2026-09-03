unit S_Planilha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, CurrEdit, Grids, DBGrids,
  DB, RxMemDS, Buttons, RLReport, RLXLSFilter, RLPDFFilter, RLFilters,
  RLRichFilter, RLPrintDialog;

type
  Tfrm_Planilha = class(TForm)
    pnl_opcao: TPanel;
    pnl_planilha: TPanel;
    GroupBox1: TGroupBox;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    edtNDiaria: TComboEdit;
    edtQtdDias: TComboEdit;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    edtDataSaida: TDateEdit;
    edtDataRetorno: TDateEdit;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    edtSemana1: TComboBox;
    edtSemana2: TComboBox;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    edtHorario1: TComboBox;
    edtHorario2: TComboBox;
    GroupBox3: TGroupBox;
    StaticText1: TStaticText;
    edtPassagem: TCurrencyEdit;
    StaticText2: TStaticText;
    edtHotel: TCurrencyEdit;
    StaticText3: TStaticText;
    edtAlimentacao: TCurrencyEdit;
    StaticText4: TStaticText;
    edtCombustivel: TCurrencyEdit;
    StaticText5: TStaticText;
    edtOutros: TCurrencyEdit;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    edtTotalDesp: TCurrencyEdit;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    edtGastoCombo: TCurrencyEdit;
    edtVeiculo: TComboEdit;
    edtKmInicial: TCurrencyEdit;
    edtKmRodado: TCurrencyEdit;
    StaticText22: TStaticText;
    edtQtdLitros: TCurrencyEdit;
    StaticText23: TStaticText;
    edtValorGasto: TCurrencyEdit;
    StaticText24: TStaticText;
    edtKmFinal: TCurrencyEdit;
    StaticText25: TStaticText;
    edtMedia: TCurrencyEdit;
    StaticText26: TStaticText;
    edtValorLitro: TCurrencyEdit;
    StaticText27: TStaticText;
    edtCartao: TCurrencyEdit;
    StaticText28: TStaticText;
    edtRequisicao: TCurrencyEdit;
    StaticText29: TStaticText;
    edtDeposito: TCurrencyEdit;
    StaticText30: TStaticText;
    edtDestinado: TCurrencyEdit;
    StaticText31: TStaticText;
    edtTotal: TCurrencyEdit;
    StaticText32: TStaticText;
    edtRestituicao: TCurrencyEdit;
    StaticText33: TStaticText;
    Grid: TDBGrid;
    StaticText34: TStaticText;
    StaticText35: TStaticText;
    edtAssunto: TComboEdit;
    edtDestino: TComboEdit;
    Label1: TLabel;
    StaticText36: TStaticText;
    edtTotalViagem: TCurrencyEdit;
    Qr_Funcionario: TRxMemoryData;
    Ds_Funcionario: TDataSource;
    edt_chave: TComboEdit;
    Qr_FuncionarioNome: TStringField;
    EdtNome: TComboEdit;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnImprimir: TBitBtn;
    btnLocalizar: TBitBtn;
    btnSair: TBitBtn;
    Qr_Empresa: TRxMemoryData;
    Ds_Empresa: TDataSource;
    Qr_EmpresaEmpresa: TStringField;
    Qr_EmpresaGastos: TFloatField;
    Qr_EmpresaPerc: TFloatField;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLPrintDialogSetup1: TRLPrintDialogSetup;
    procedure edt_chaveButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtNomeExit(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtKmFinalExit(Sender: TObject);
    procedure edtValorGastoExit(Sender: TObject);
    procedure edtPassagemExit(Sender: TObject);
    procedure edtHotelExit(Sender: TObject);
    procedure edtCombustivelExit(Sender: TObject);
    procedure edtOutrosExit(Sender: TObject);
    procedure edtCartaoExit(Sender: TObject);
    procedure edtRequisicaoExit(Sender: TObject);
    procedure edtDepositoExit(Sender: TObject);
    procedure edtDestinadoExit(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure edt_chaveExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    function DeleteTabela(pCodEmp: Integer; pChave: Integer): Boolean;
    function GravaTabela(pCodEmp: Integer; pChave: Integer; pCampo,pValorCampo: String): Boolean;
    procedure Soma;
    procedure SomaGastos;
  public
    { Public declarations }
  end;

var
  frm_Planilha : Tfrm_Planilha;
  bbIncluir    : Boolean = False;
  bbAlterar    : Boolean = False;
  bbCancelar   : Boolean = False;
  bbExcluir    : Boolean = False;
  bbGravar     : Boolean = False;
  xvarOpc      : String  = '';

implementation

uses S_DM1, Func, lerarq, S_DM4, S_RPlanilha;

{$R *.dfm}

procedure Tfrm_Planilha.edt_chaveButtonClick(Sender: TObject);
begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('SELECT * FROM CADPLAN_VIAGEM WHERE PL_CODEMP =:pEmpr AND PL_CHAVE =:pChave');
   DM1.Query1.ParamByName('pEmpr').AsFloat  := codemp;
   DM1.Query1.ParamByName('pChave').AsFloat := ValInt(edt_chave.Text);
   DM1.Query1.Open;

   if (not DM1.Query1.IsEmpty) and (xvarOpc = 'L') then begin
      Qr_Funcionario.Active := False;
      Qr_Funcionario.Active := True;

      if DM1.Query1.Locate('PL_CAMPO',edtDestino.Name,[]) then
         edtDestino.Text := DM1.Query1.FieldByName('PL_VALORCAMPO').AsString
      else
         edtDestino.Text := '';

      if DM1.Query1.Locate('PL_CAMPO',edtAssunto.Name,[]) then
         edtAssunto.Text := DM1.Query1.FieldByName('PL_VALORCAMPO').AsString
      else
         edtAssunto.Text := '';

      if DM1.Query1.Locate('PL_CAMPO',edtNDiaria.Name,[]) then
         edtNDiaria.Text := DM1.Query1.FieldByName('PL_VALORCAMPO').AsString
      else
         edtNDiaria.Text := '';

      if DM1.Query1.Locate('PL_CAMPO',edtQtdDias.Name,[]) then
         edtQtdDias.Text := DM1.Query1.FieldByName('PL_VALORCAMPO').AsString
      else
         edtQtdDias.Text := '';

      if DM1.Query1.Locate('PL_CAMPO',edtDataSaida.Name,[]) then
         edtDataSaida.Date := StrToDate(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtDataSaida.Clear;

      if DM1.Query1.Locate('PL_CAMPO',edtSemana1.Name,[]) then
         edtSemana1.ItemIndex  := ValInt(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtSemana1.ItemIndex  := -1;

      if DM1.Query1.Locate('PL_CAMPO',edtHorario1.Name,[]) then
         edtHorario1.ItemIndex := ValInt(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtHorario1.ItemIndex := -1;

      if DM1.Query1.Locate('PL_CAMPO',edtDataRetorno.Name,[]) then
         edtDataRetorno.Text   := DM1.Query1.FieldByName('PL_VALORCAMPO').AsString
      else
         edtDataRetorno.Clear;

      if DM1.Query1.Locate('PL_CAMPO',edtSemana2.Name,[]) then
         edtSemana2.ItemIndex  := ValInt(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtSemana2.ItemIndex  := -1;

      if DM1.Query1.Locate('PL_CAMPO',edtHorario2.Name,[]) then
         edtHorario2.ItemIndex := ValInt(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtHorario2.ItemIndex := -1;

      if DM1.Query1.Locate('PL_CAMPO',edtGastoCombo.Name,[]) then
         edtGastoCombo.Value   := ValFloat(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtGastoCombo.Value   := 0;

      if DM1.Query1.Locate('PL_CAMPO',edtQtdLitros.Name,[]) then
         edtQtdLitros.Value    := ValFloat(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtQtdLitros.Value    := 0;

      if DM1.Query1.Locate('PL_CAMPO',edtVeiculo.Name,[]) then
         edtVeiculo.Text       := DM1.Query1.FieldByName('PL_VALORCAMPO').AsString
      else
         edtVeiculo.Text       := '';

      if DM1.Query1.Locate('PL_CAMPO',edtValorGasto.Name,[]) then
         edtValorGasto.Value   := ValFloat(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtValorGasto.Value   := 0;

      if DM1.Query1.Locate('PL_CAMPO',edtKmInicial.Name,[]) then
         edtKmInicial.Value    := ValFloat(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtKmInicial.Value    := 0;

      if DM1.Query1.Locate('PL_CAMPO',edtKmFinal.Name,[]) then
         edtKmFinal.Value      := ValFloat(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtKmFinal.Value      := 0;

      if DM1.Query1.Locate('PL_CAMPO',edtKmRodado.Name,[]) then
         edtKmRodado.Value     := ValFloat(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtKmRodado.Value     := 0;

      if DM1.Query1.Locate('PL_CAMPO',edtMedia.Name,[]) then
         edtMedia.Value        := ValFloat(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtMedia.Value        := 0;

      if DM1.Query1.Locate('PL_CAMPO',edtValorLitro.Name,[]) then
         edtValorLitro.Value   := ValFloat(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtValorLitro.Value   := 0;

      if DM1.Query1.Locate('PL_CAMPO',edtCartao.Name,[]) then
         edtCartao.Value       := ValFloat(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtCartao.Value       := 0;

      if DM1.Query1.Locate('PL_CAMPO',edtRequisicao.Name,[]) then
         edtRequisicao.Value   := ValFloat(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtRequisicao.Value   := 0;

      if DM1.Query1.Locate('PL_CAMPO',edtDeposito.Name,[]) then
         edtDeposito.Value     := ValFloat(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtDeposito.Value     := 0;

      if DM1.Query1.Locate('PL_CAMPO',edtDestinado.Name,[]) then
         edtDestinado.Value    := ValFloat(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtDestinado.Value    := 0;

      if DM1.Query1.Locate('PL_CAMPO',edtTotal.Name,[]) then
         edtTotal.Value        := ValFloat(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtTotal.Value        := 0;

      if DM1.Query1.Locate('PL_CAMPO',edtPassagem.Name,[]) then
         edtPassagem.Value     := ValFloat(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtPassagem.Value     := 0;

      if DM1.Query1.Locate('PL_CAMPO',edtHotel.Name,[]) then
         edtHotel.Value        := ValFloat(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtHotel.Value        := 0;

      if DM1.Query1.Locate('PL_CAMPO',edtAlimentacao.Name,[]) then
         edtAlimentacao.Value  := ValFloat(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtAlimentacao.Value  := 0;

      if DM1.Query1.Locate('PL_CAMPO',edtCombustivel.Name,[]) then
         edtCombustivel.Value  := ValFloat(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtCombustivel.Value  := 0;

      if DM1.Query1.Locate('PL_CAMPO',edtOutros.Name,[]) then
         edtOutros.Value       := ValFloat(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtOutros.Value       := 0;

      if DM1.Query1.Locate('PL_CAMPO',edtTotalDesp.Name,[]) then
         edtTotalDesp.Value    := ValFloat(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtTotalDesp.Value    := 0;

      if DM1.Query1.Locate('PL_CAMPO',edtRestituicao.Name,[]) then
         edtRestituicao.Value  := ValFloat(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtRestituicao.Value  := 0;

      if DM1.Query1.Locate('PL_CAMPO',edtTotalViagem.Name,[]) then
         edtTotalViagem.Value  := ValFloat(DM1.Query1.FieldByName('PL_VALORCAMPO').AsString)
      else
         edtTotalViagem.Value  := 0;

      if DM1.Query1.Locate('PL_CAMPO',Grid.Name,[]) then begin
         DM1.Query1.First;
         while (not DM1.Query1.Eof) do begin
            if DM1.Query1.FieldByName('PL_CAMPO').AsString = 'Grid' then begin
               Qr_Funcionario.Append;
               Qr_FuncionarioNome.Value := DM1.Query1.FieldByName('PL_VALORCAMPO').AsString;
               Qr_Funcionario.Post;
            end;   

            DM1.Query1.next;
         end;
      end;

   end else begin
      fMensagem('Planilha de Viagem não encontrada, ou não Cadastrada!',0,['0'],0);
      Exit;
   end;
end;

procedure Tfrm_Planilha.FormShow(Sender: TObject);
begin
   AtualizaForm(Self, False);
   LimpaEdits(Self);
end;

procedure Tfrm_Planilha.EdtNomeExit(Sender: TObject);
begin
   if Trim(edtNome.Text) <> '' then begin

      if Qr_Funcionario.Locate('Nome',edtNome.Text,[]) then
         Qr_Funcionario.Edit
      else
         Qr_Funcionario.Insert;

      Qr_FuncionarioNome.Value  := EdtNome.Text;
      Qr_Funcionario.Post;

      Qr_Funcionario.Bookmark;
      EdtNome.Clear;
      EdtNome.SetFocus;
   end;
end;

procedure Tfrm_Planilha.btnIncluirClick(Sender: TObject);
begin
   LimpaEdits(Self);
   AtualizaForm(Self, True);

   Self.Caption        := 'Planilha de Viagem - [Manutenção]';

   btnIncluir.Enabled  := False;
   btnAlterar.Enabled  := False;
   btnCancelar.Enabled := True;
   btnExcluir.Enabled  := False;
   btnGravar.Enabled   := True;
   btnImprimir.Enabled := False;
   btnLocalizar.Enabled:= False;

   edtTotalDesp.ReadOnly  := True;
   edtKmRodado.ReadOnly   := True;
   edtMedia.ReadOnly      := True;
   edtValorLitro.ReadOnly := True;
   edtTotal.ReadOnly      := True;
   edtRestituicao.ReadOnly:= True;
   edtTotalViagem.ReadOnly:= True;

   xvarOpc               := 'I';

   edtSemana1.ItemIndex  := -1;
   edtSemana2.ItemIndex  := -1;
   edtHorario1.ItemIndex := -1;
   edtHorario2.ItemIndex := -1;

   Qr_Funcionario.Active := False;
   Qr_Funcionario.Active := True;
   EdtNome.SetFocus;
end;

procedure Tfrm_Planilha.FormCreate(Sender: TObject);
begin
   xvarOpc := '';
   
   if flcadactab(0,0,IntToStr(codcar),'CADPLAN_VIAGEM') then begin
      if DM4.Tb_AcTabAT_INC.Value = 1 then
         bbIncluir := False;
      if DM4.Tb_AcTabAT_ALT.Value = 1 then
         bbAlterar := False;
      if DM4.Tb_AcTabAT_EXC.Value = 1 then
         bbExcluir := False;
   end else begin
      bbIncluir    := True;
      bbAlterar    := True;
      bbExcluir    := True;
   end;

   btnIncluir.Enabled := bbIncluir;
   btnAlterar.Enabled := bbAlterar;
   btnExcluir.EnaBled := bbExcluir;
   btnCancelar.Enabled:= False;
   btnGravar.Enabled  := False; 
end;

procedure Tfrm_Planilha.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_Planilha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure Tfrm_Planilha.btnAlterarClick(Sender: TObject);
begin
   AtualizaForm(Self, True);
   Self.Caption        := 'Planilha de Viagem - [Manutenção]';

   btnIncluir.Enabled  := False;
   btnAlterar.Enabled  := False;
   btnCancelar.Enabled := True;
   btnExcluir.Enabled  := False;
   btnGravar.Enabled   := True;
   btnImprimir.Enabled := False;
   btnLocalizar.Enabled:= False;

   edtTotalDesp.ReadOnly  := True;
   edtKmRodado.ReadOnly   := True;
   edtMedia.ReadOnly      := True;
   edtValorLitro.ReadOnly := True;
   edtTotal.ReadOnly      := True;
   edtRestituicao.ReadOnly:= True;
   edtTotalViagem.ReadOnly:= True;

   xvarOpc             := 'U';  

   Qr_Funcionario.Active := True;
   EdtNome.SetFocus;
end;

procedure Tfrm_Planilha.btnLocalizarClick(Sender: TObject);
begin
   AtualizaForm(Self, True);
   xvarOpc := 'L';
   edt_chave.SetFocus;
end;

procedure Tfrm_Planilha.btnGravarClick(Sender: TObject);
var
  xCont   : Integer;
  xCodigo : Integer;

  function fAjustaNUMPLA(pcodemp: Integer):Integer;
  begin
     if pcodemp > 100 then
        pcodemp := pcodemp-100;

     if pcodemp=0 then
        pcodemp := codemp;

     DM1.Query3.Close;
     DM1.Query3.SQL.Clear;
     DM1.Query3.SQL.Add('SELECT MAX(PL_CHAVE) AS CODIGO FROM CADPLAN_VIAGEM WHERE PL_CODEMP = 0'+IntToStr(iif(pcodemp>0,pcodemp,codemp)));
     DM1.Query3.Open;

     if DM1.Query3.FieldByName('CODIGO').AsInteger = 0 then
        Result := 1
     else
        Result := DM1.Query3.FieldByName('CODIGO').AsInteger + 1;
  end;

begin
  if xvarOpc = 'I' then begin
     if Qr_Funcionario.IsEmpty then begin
        fMensagem('Favor informar o Nome do Funcionário!',0,['0'],0);
        EdtNome.SetFocus;
        Exit;
     end;

     if Trim(edtDestino.Text) = '' then begin
        fMensagem('Favor informar o Destino da Viagem!',0,['0'],0);
        edtDestino.SetFocus;
        Exit;
     end;

     if Trim(edtAssunto.Text) = '' then begin
        fMensagem('Favor informar o Assunto da Viagem!',0,['0'],0);
        edtAssunto.SetFocus;
        Exit;
     end;

     if edtTotalViagem.Value <= 0 then begin
        fMensagem('Total da Viagem, não pode ter valor igual a 0!',0,['0'],0);
        edtNDiaria.SetFocus;
        Exit;
     end;

     if Trim(edtDataSaida.Text) = '/  /' then begin
        fMensagem('Favor informar a Data de Saída!',0,['0'],0);
        edtDataSaida.SetFocus;
        Exit;
     end;

     if Trim(edtDataRetorno.Text) = '/  /' then begin
        fMensagem('Favor informar a Data do Retorno!',0,['0'],0);
        edtDataRetorno.SetFocus;
        Exit;
     end;

     if edtSemana1.ItemIndex < 0 then begin
        fMensagem('Favor informar o Dia da Semana da Saída!',0,['0'],0);
        edtSemana1.SetFocus;
        Exit;
     end;

     if edtSemana2.ItemIndex < 0 then begin
        fMensagem('Favor informar o Dia da Semana do Retorno!',0,['0'],0);
        edtSemana2.SetFocus;
        Exit;
     end;

     if edtHorario1.ItemIndex < 0 then begin
        fMensagem('Favor informar o Horário da Sáida!',0,['0'],0);
        edtHorario1.SetFocus;
        Exit;
     end;

     if edtHorario2.ItemIndex < 0 then begin
        fMensagem('Favor informar o Horário do Retorno!',0,['0'],0);
        edtHorario2.SetFocus;
        Exit;
     end;
     
     xCodigo := 0;

     xCodigo := fAjustaNUMPLA(codemp);

     GravaTabela(codemp,xCodigo,edtDestino.Name,edtDestino.Text);
     GravaTabela(codemp,xCodigo,edtAssunto.Name,edtAssunto.Text);
     GravaTabela(codemp,xCodigo,edtNDiaria.Name,edtNDiaria.Text);
     GravaTabela(codemp,xCodigo,edtQtdDias.Name,edtQtdDias.Text);
     GravaTabela(codemp,xCodigo,edtDataSaida.Name,edtDataSaida.Text);
     GravaTabela(codemp,xCodigo,edtSemana1.Name,IntToStr(edtSemana1.ItemIndex));
     GravaTabela(codemp,xCodigo,edtHorario1.Name,IntToStr(edtHorario1.ItemIndex));
     GravaTabela(codemp,xCodigo,edtDataRetorno.Name,edtDataRetorno.Text);
     GravaTabela(codemp,xCodigo,edtSemana2.Name,IntToStr(edtSemana2.ItemIndex));
     GravaTabela(codemp,xCodigo,edtHorario2.Name,IntToStr(edtHorario2.ItemIndex));
     GravaTabela(codemp,xCodigo,edtGastoCombo.Name,edtGastoCombo.Text);
     GravaTabela(codemp,xCodigo,edtQtdLitros.Name,edtQtdLitros.Text);
     GravaTabela(codemp,xCodigo,edtVeiculo.Name,edtVeiculo.Text);
     GravaTabela(codemp,xCodigo,edtValorGasto.Name,edtValorGasto.Text);
     GravaTabela(codemp,xCodigo,edtKmInicial.Name,edtKmInicial.Text);
     GravaTabela(codemp,xCodigo,edtKmFinal.Name,edtKmFinal.Text);
     GravaTabela(codemp,xCodigo,edtKmRodado.Name,edtKmRodado.Text);
     GravaTabela(codemp,xCodigo,edtMedia.Name,edtMedia.Text);
     GravaTabela(codemp,xCodigo,edtValorLitro.Name,edtValorLitro.Text);
     GravaTabela(codemp,xCodigo,edtCartao.Name,edtCartao.Text);
     GravaTabela(codemp,xCodigo,edtRequisicao.Name,edtRequisicao.Text);
     GravaTabela(codemp,xcodigo,edtDeposito.Name,edtDeposito.Text);
     GravaTabela(codemp,xCodigo,edtDestinado.Name,edtDestinado.Text);
     GravaTabela(codemp,xCodigo,edtTotal.Name,edtTotal.Text);
     GravaTabela(codemp,xCodigo,edtRestituicao.Name,edtRestituicao.Text);
     GravaTabela(codemp,xCodigo,edtPassagem.Name,edtPassagem.Text);
     GravaTabela(codemp,xCodigo,edtHotel.Name,edtHotel.Text);
     GravaTabela(codemp,xCodigo,edtAlimentacao.Name,edtAlimentacao.Text);
     GravaTabela(codemp,xCodigo,edtCombustivel.Name,edtCombustivel.Text);
     GravaTabela(codemp,xCodigo,edtOutros.Name,edtOutros.Text);
     GravaTabela(codemp,xCodigo,edtTotalDesp.Name,edtTotalDesp.Text);
     GravaTabela(codemp,xCodigo,edtTotalViagem.Name,edtTotalViagem.Text);

     Qr_Funcionario.First;
     while not Qr_Funcionario.Eof do begin
        GravaTabela(codemp,xCodigo,'Grid',Qr_FuncionarioNome.AsString);

        Qr_Funcionario.Next;
     end;

     edt_chave.Text := IntToStr(xCodigo);

     AtualizaForm(Self, False);
     Self.Caption        := 'Planilha de Viagem';

     btnIncluir.Enabled  := True;
     btnAlterar.Enabled  := True;
     btnCancelar.Enabled := False;
     btnExcluir.Enabled  := True;
     btnGravar.Enabled   := False;
     btnImprimir.Enabled := True;
     btnLocalizar.Enabled:= True;

     xvarOpc             := '';

     btnIncluir.SetFocus;
  end else if xvarOpc = 'U' then begin
     DeleteTabela(codemp,ValInt(edt_chave.Text));

     xCodigo := 0;

     xCodigo := ValInt(edt_chave.Text);

     GravaTabela(codemp,xCodigo,edtDestino.Name,edtDestino.Text);
     GravaTabela(codemp,xCodigo,edtAssunto.Name,edtAssunto.Text);
     GravaTabela(codemp,xCodigo,edtNDiaria.Name,edtNDiaria.Text);
     GravaTabela(codemp,xCodigo,edtQtdDias.Name,edtQtdDias.Text);
     GravaTabela(codemp,xCodigo,edtDataSaida.Name,edtDataSaida.Text);
     GravaTabela(codemp,xCodigo,edtSemana1.Name,IntToStr(edtSemana1.ItemIndex));
     GravaTabela(codemp,xCodigo,edtHorario1.Name,IntToStr(edtHorario1.ItemIndex));
     GravaTabela(codemp,xCodigo,edtDataRetorno.Name,edtDataRetorno.Text);
     GravaTabela(codemp,xCodigo,edtSemana2.Name,IntToStr(edtSemana2.ItemIndex));
     GravaTabela(codemp,xCodigo,edtHorario2.Name,IntToStr(edtHorario2.ItemIndex));
     GravaTabela(codemp,xCodigo,edtGastoCombo.Name,edtGastoCombo.Text);
     GravaTabela(codemp,xCodigo,edtQtdLitros.Name,edtQtdLitros.Text);
     GravaTabela(codemp,xCodigo,edtVeiculo.Name,edtVeiculo.Text);
     GravaTabela(codemp,xCodigo,edtValorGasto.Name,edtValorGasto.Text);
     GravaTabela(codemp,xCodigo,edtKmInicial.Name,edtKmInicial.Text);
     GravaTabela(codemp,xCodigo,edtKmFinal.Name,edtKmFinal.Text);
     GravaTabela(codemp,xCodigo,edtKmRodado.Name,edtKmRodado.Text);
     GravaTabela(codemp,xCodigo,edtMedia.Name,edtMedia.Text);
     GravaTabela(codemp,xCodigo,edtValorLitro.Name,edtValorLitro.Text);
     GravaTabela(codemp,xCodigo,edtCartao.Name,edtCartao.Text);
     GravaTabela(codemp,xCodigo,edtRequisicao.Name,edtRequisicao.Text);
     GravaTabela(codemp,xcodigo,edtDeposito.Name,edtDeposito.Text);
     GravaTabela(codemp,xCodigo,edtDestinado.Name,edtDestinado.Text);
     GravaTabela(codemp,xCodigo,edtTotal.Name,edtTotal.Text);
     GravaTabela(codemp,xCodigo,edtRestituicao.Name,edtRestituicao.Text);
     GravaTabela(codemp,xCodigo,edtPassagem.Name,edtPassagem.Text);
     GravaTabela(codemp,xCodigo,edtHotel.Name,edtHotel.Text);
     GravaTabela(codemp,xCodigo,edtAlimentacao.Name,edtAlimentacao.Text);
     GravaTabela(codemp,xCodigo,edtCombustivel.Name,edtCombustivel.Text);
     GravaTabela(codemp,xCodigo,edtOutros.Name,edtOutros.Text);
     GravaTabela(codemp,xCodigo,edtTotalDesp.Name,edtTotalDesp.Text);
     GravaTabela(codemp,xCodigo,edtTotalViagem.Name,edtTotalViagem.Text);

     Qr_Funcionario.First;
     while not Qr_Funcionario.Eof do begin
        GravaTabela(codemp,xCodigo,'Grid',Qr_FuncionarioNome.AsString);

        Qr_Funcionario.Next;
     end;

     AtualizaForm(Self, False);
     Self.Caption        := 'Planilha de Viagem';

     btnIncluir.Enabled  := True;
     btnAlterar.Enabled  := True;
     btnCancelar.Enabled := False;
     btnExcluir.Enabled  := True;
     btnGravar.Enabled   := False;
     btnImprimir.Enabled := True;
     btnLocalizar.Enabled:= True;

     xvarOpc             := '';

     btnIncluir.SetFocus;
  end;
end;

function Tfrm_Planilha.DeleteTabela(pCodEmp: Integer; pChave: Integer): Boolean;
begin
  DM1.Query2.Close;
  DM1.Query2.SQL.Clear;
  DM1.Query2.SQL.Add('DELETE FROM CADPLAN_VIAGEM WHERE PL_CODEMP =:pEmpr AND PL_CHAVE =:pChave');
  DM1.Query2.ParamByName('pEmpr').AsFloat  := pCodEmp;
  DM1.Query2.ParamByName('pChave').AsFloat := pChave;

  Result := True;

  try
    DM1.Query2.ExecSQL;
    fdm1StartCommit;
  except
    Result := False;
  end;
end;

function Tfrm_Planilha.GravaTabela(pCodEmp: Integer; pChave: Integer; pCampo,pValorCampo: String): Boolean;
begin
  DM1.Query2.Close;
  DM1.Query2.SQL.Clear;
  DM1.Query2.SQL.Add('INSERT INTO CADPLAN_VIAGEM ('
                    +' PL_CODEMP,      '
                    +' PL_CHAVE,       '
                    +' PL_CAMPO,       '
                    +' PL_VALORCAMPO)  '
                    +'VALUES (         '
                    +' :PL_CODEMP,     '
                    +' :PL_CHAVE,      '
                    +' :PL_CAMPO,      '
                    +' :PL_VALORCAMPO) ');
  DM1.Query2.ParamByName('PL_CODEMP').AsFloat      := pCodEmp;
  DM1.Query2.ParamByName('PL_CHAVE').AsFloat       := pChave;
  DM1.Query2.ParamByName('PL_CAMPO').AsString      := pCampo;
  DM1.Query2.ParamByName('PL_VALORCAMPO').AsString := pValorCampo;

  Result := True;

  try
    DM1.Query2.ExecSQL;
    fdm1StartCommit;
  except
    Result := False;
  end;

end;

procedure Tfrm_Planilha.edtKmFinalExit(Sender: TObject);
begin
   edtKmRodado.Value := edtKmFinal.Value - edtKmInicial.Value;
end;

procedure Tfrm_Planilha.edtValorGastoExit(Sender: TObject);
begin
   if edtQtdLitros.Value > 0 then begin
      edtMedia.Value      := edtKmRodado.Value/edtQtdLitros.Value;
      edtValorLitro.Value := edtValorGasto.Value/edtQtdLitros.Value;
   end else begin
      edtMedia.Value      := edtKmRodado.Value/1;
      edtValorLitro.Value := edtValorGasto.Value/1;
   end;   
end;

procedure Tfrm_Planilha.Soma;
var
  xTotal : Double;
begin
  xTotal := 0;

  xTotal := edtPassagem.Value + edtHotel.Value + edtAlimentacao.Value + edtCombustivel.Value + edtOutros.Value;

  edtTotalDesp.Value := xTotal;
end;

procedure Tfrm_Planilha.edtPassagemExit(Sender: TObject);
begin
   Soma;
end;

procedure Tfrm_Planilha.edtHotelExit(Sender: TObject);
begin
   Soma;
end;

procedure Tfrm_Planilha.edtCombustivelExit(Sender: TObject);
begin
   Soma;
end;

procedure Tfrm_Planilha.edtOutrosExit(Sender: TObject);
begin
   Soma;
end;

procedure Tfrm_Planilha.SomaGastos;
var
  xGastos : Double;
begin

  xGastos := 0;

  xGastos := edtCartao.Value + edtRequisicao.Value + edtDeposito.Value + edtDestinado.Value;
  edtTotal.Value := xGastos;

  edtRestituicao.Value := edtTotal.Value - edtTotalDesp.Value;
end;

procedure Tfrm_Planilha.edtCartaoExit(Sender: TObject);
begin
   SomaGastos;
end;

procedure Tfrm_Planilha.edtRequisicaoExit(Sender: TObject);
begin
   SomaGastos;
end;

procedure Tfrm_Planilha.edtDepositoExit(Sender: TObject);
begin
   SomaGastos;
end;

procedure Tfrm_Planilha.edtDestinadoExit(Sender: TObject);
begin
   SomaGastos;

   edtTotalViagem.Value := edtTotal.Value - edtRestituicao.Value;

   btnGravar.Click;
end;

procedure Tfrm_Planilha.btnCancelarClick(Sender: TObject);
begin
   if (ValInt(edt_chave.Text) > 0) and (btnCancelar.Enabled = True) then begin
      edt_chaveButtonClick(Sender);

      btnIncluir.Enabled  := True;
      btnAlterar.Enabled  := True;
      btnCancelar.Enabled := False;
      btnExcluir.Enabled  := True;
      btnGravar.Enabled   := False;
      btnImprimir.Enabled := True;
      btnLocalizar.Enabled:= True;

      xvarOpc             := '';
      AtualizaForm(Self, False);
      Self.Caption        := 'Planilha de Viagem';
      btnIncluir.SetFocus;
   end else begin
      AtualizaForm(Self, False);
      LimpaEdits(Self);
      Self.Caption        := 'Planilha de Viagem';
      btnIncluir.SetFocus;
   end;
end;

procedure Tfrm_Planilha.btnExcluirClick(Sender: TObject);
begin
   if fmensagem('Quer Realmente Excluir Planilha de Viagem?',0,['1','2'],2)=mrYes then begin
      DeleteTabela(codemp,ValInt(edt_chave.Text));

      Qr_Funcionario.Active := False;

      btnIncluir.Enabled  := True;
      btnAlterar.Enabled  := True;
      btnCancelar.Enabled := False;
      btnExcluir.Enabled  := True;
      btnGravar.Enabled   := False;
      btnImprimir.Enabled := True;
      btnLocalizar.Enabled:= True;

      LimpaEdits(Self);

      xvarOpc             := '';
      btnIncluir.SetFocus;
   end;
end;

procedure Tfrm_Planilha.edt_chaveExit(Sender: TObject);
begin
   if Trim(edt_chave.Text) <> '' then
      edt_chaveButtonClick(Self);
end;

procedure Tfrm_Planilha.btnImprimirClick(Sender: TObject);
begin
   Application.CreateForm(Tfrm_RPlanilha, frm_RPlanilha);
   frm_RPlanilha.lb_qtdfunc.Caption          := IntToStr(Qr_Funcionario.RecordCount);
   frm_RPlanilha.lblDestino.Caption          := edtDestino.Text;
   frm_RPlanilha.lblAssunto.Caption          := edtAssunto.Text;
   frm_RPlanilha.lblDiaria.Caption           := edtNDiaria.Text;
   frm_RPlanilha.lblQtdeDias.Caption         := edtQtdDias.Text;
   frm_RPlanilha.lblDataSaida.Caption        := edtDataSaida.Text;
   frm_RPlanilha.lblDiaSaida.Caption         := edtSemana1.Text;
   frm_RPlanilha.lblHoraSaida.Caption        := edtHorario1.Text;
   frm_RPlanilha.lblRetorno.Caption          := edtDataRetorno.Text;
   frm_RPlanilha.lblDiaRetorno.Caption       := edtSemana2.Text;
   frm_RPlanilha.lblHoraRetorno.Caption      := edtHorario2.Text;
   frm_RPlanilha.lblGastoCombustivel.Caption := FormatFloat('0.000',edtCombustivel.Value);
   frm_RPlanilha.lblQtdeLitros.Caption       := FormatFloat('0.000',edtQtdLitros.Value);
   frm_RPlanilha.lblVeiculo.Caption          := edtVeiculo.Text;
   frm_RPlanilha.lblValorGastos.Caption      := FormatFloat('#0.00',edtValorGasto.Value);
   frm_RPlanilha.lblInicial.Caption          := FormatFloat('0.000',edtKmInicial.Value);
   frm_RPlanilha.lblFinal.Caption            := FormatFloat('0.000',edtKmFinal.Value);
   frm_RPlanilha.lblRodados.Caption          := FormatFloat('0.000',edtKmRodado.Value);
   frm_RPlanilha.lblMedia.Caption            := FormatFloat('0.000',edtMedia.Value);
   frm_RPlanilha.lblLitros.Caption           := FormatFloat('#0.00',edtValorLitro.Value);
   frm_RPlanilha.lblCredito.Caption          := FormatFloat('#0.00',edtCartao.Value);
   frm_RPlanilha.lblrequisicao.Caption       := FormatFloat('#0.00',edtRequisicao.Value);
   frm_RPlanilha.lblDepositos.Caption        := FormatFloat('#0.00',edtDeposito.Value);
   frm_RPlanilha.lblVlrDestino.Caption       := FormatFloat('#0.00',edtDestinado.Value);
   frm_RPlanilha.lblTotal.Caption            := FormatFloat('#0.00',edtTotal.Value);
   frm_RPlanilha.lblVlrGastos.Caption        := FormatFloat('#0.00',edtTotalDesp.Value);
   frm_RPlanilha.lblRestituicao.Caption      := FormatFloat('#0.00',edtRestituicao.Value);
   frm_RPlanilha.lblAviao.Caption            := FormatFloat('#0.00',edtPassagem.Value);
   frm_RPlanilha.lblHotel.Caption            := FormatFloat('#0.00',edtHotel.Value);
   frm_RPlanilha.lblAlimentacao.Caption      := FormatFloat('#0.00',edtAlimentacao.Value);
   frm_RPlanilha.lblCombustivel.Caption      := FormatFloat('#0.00',edtCombustivel.Value);
   frm_RPlanilha.lblOutros.Caption           := FormatFloat('#0.00',edtOutros.Value);
   frm_RPlanilha.lblTotalDespesas.Caption    := FormatFloat('#0.00',edtTotalDesp.Value);

   frm_RPlanilha.RLReport1.Preview;
   FreeAndNil(frm_RPlanilha);
end;

end.

object Frm_CadSol: TFrm_CadSol
  Left = 79
  Top = 34
  BorderStyle = bsSingle
  Caption = 'Cadastro de Solicita'#231#245'es'
  ClientHeight = 391
  ClientWidth = 572
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCab: TPanel
    Left = 0
    Top = 0
    Width = 572
    Height = 41
    Align = alTop
    TabOrder = 0
    object btnPesquisar: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Pesquisar'
      TabOrder = 0
      OnClick = btnPesquisarClick
    end
    object btnIncluir: TButton
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Incluir'
      TabOrder = 1
      OnClick = btnIncluirClick
    end
    object btnAlterar: TButton
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Alterar'
      TabOrder = 2
      OnClick = btnAlterarClick
    end
    object btnCancelar: TButton
      Left = 248
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 3
      OnClick = btnCancelarClick
    end
    object btnGravar: TButton
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 4
      OnClick = btnGravarClick
    end
    object btnExcluir: TButton
      Left = 408
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 5
      OnClick = btnExcluirClick
    end
    object btnSair: TButton
      Left = 488
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 6
      OnClick = btnSairClick
    end
  end
  object pnlCabCorpo: TPanel
    Left = 0
    Top = 41
    Width = 572
    Height = 171
    Align = alTop
    TabOrder = 1
    object lblChave: TLabel
      Left = 52
      Top = 13
      Width = 34
      Height = 13
      Caption = 'Chave:'
    end
    object lblSolicitante: TLabel
      Left = 28
      Top = 35
      Width = 58
      Height = 13
      Caption = 'Solicitante..:'
    end
    object lblDataSol: TLabel
      Left = 193
      Top = 14
      Width = 84
      Height = 13
      Caption = 'Data Solicita'#231#227'o.:'
    end
    object lblObservacao: TLabel
      Left = 18
      Top = 79
      Width = 67
      Height = 13
      Caption = 'Observa'#231#227'o..:'
    end
    object Label1: TLabel
      Left = 9
      Top = 57
      Width = 76
      Height = 13
      Caption = 'Departamento..:'
    end
    object dbeDataSol: TDBDateEdit
      Left = 279
      Top = 11
      Width = 91
      Height = 21
      TabStop = False
      DataField = 'CS1DATA'
      DataSource = DM2.Src_Sol1
      NumGlyphs = 2
      TabOrder = 1
    end
    object dbeChave: TDBEdit
      Left = 88
      Top = 10
      Width = 104
      Height = 21
      TabStop = False
      DataField = 'CS1CHAVE'
      DataSource = DM2.Src_Sol1
      ReadOnly = True
      TabOrder = 0
    end
    object dbeCodSol: TDBEdit
      Left = 88
      Top = 32
      Width = 65
      Height = 21
      DataField = 'CS1CODSOL'
      DataSource = DM2.Src_Sol1
      TabOrder = 2
      OnExit = dbeCodSolExit
      OnKeyPress = dbeCodSolKeyPress
    end
    object dbeNomSol: TDBEdit
      Left = 153
      Top = 32
      Width = 217
      Height = 21
      TabStop = False
      DataField = 'NOMSOL'
      DataSource = DM2.Src_Sol1
      ReadOnly = True
      TabOrder = 3
    end
    object dbeCadSol: TDBMemo
      Left = 88
      Top = 76
      Width = 281
      Height = 91
      DataField = 'CS1OBS'
      DataSource = DM2.Src_Sol1
      TabOrder = 5
    end
    object RxDBComboBox1: TRxDBComboBox
      Left = 88
      Top = 54
      Width = 216
      Height = 21
      Style = csDropDownList
      DataField = 'CS1CODDEP'
      DataSource = DM2.Src_Sol1
      EnableValues = True
      ItemHeight = 13
      TabOrder = 4
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 372
    Width = 572
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Width = 200
      end
      item
        Alignment = taCenter
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 212
    Width = 572
    Height = 160
    Align = alClient
    TabOrder = 3
    object pnlCabItem: TPanel
      Left = 1
      Top = 1
      Width = 570
      Height = 42
      Align = alTop
      TabOrder = 0
      object lblCodPro: TLabel
        Left = 23
        Top = 8
        Width = 33
        Height = 13
        Caption = 'Codigo'
      end
      object lblNome: TLabel
        Left = 80
        Top = 8
        Width = 28
        Height = 13
        Caption = 'Nome'
      end
      object lblQtd: TLabel
        Left = 402
        Top = 7
        Width = 45
        Height = 13
        Caption = 'Qtd.Prev.'
      end
      object lblQtdReal: TLabel
        Left = 451
        Top = 8
        Width = 45
        Height = 13
        Caption = 'Qtd.Real.'
      end
      object lblQtdPen: TLabel
        Left = 500
        Top = 8
        Width = 42
        Height = 13
        Caption = 'Qtd.Pen.'
      end
      object edtCodPro: TEdit
        Left = 0
        Top = 22
        Width = 79
        Height = 21
        TabOrder = 0
        OnExit = edtCodProExit
        OnKeyPress = edtCodProKeyPress
      end
      object edtNomPro: TEdit
        Left = 78
        Top = 22
        Width = 323
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 1
      end
      object edtQtd: TEdit
        Left = 400
        Top = 22
        Width = 50
        Height = 21
        TabOrder = 2
        OnExit = edtQtdExit
      end
      object edtQtdReal: TEdit
        Left = 448
        Top = 22
        Width = 50
        Height = 21
        TabStop = False
        TabOrder = 3
        OnExit = edtQtdExit
      end
      object edtQtdPen: TEdit
        Left = 497
        Top = 22
        Width = 50
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 4
        OnExit = edtQtdExit
      end
    end
    object dbgItens: TDBGrid
      Left = 1
      Top = 43
      Width = 570
      Height = 116
      Align = alClient
      DataSource = DM2.Src_Sol2
      Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopupMenu1
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CS2CODPRO'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMPRO'
          Width = 321
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CS2QTDPREV'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CS2QTDREAL'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDPEN'
          Width = 49
          Visible = True
        end>
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 448
    Top = 121
  end
  object PopupMenu1: TPopupMenu
    Left = 304
    Top = 284
    object Alterar1: TMenuItem
      Caption = '&Alterar'
      OnClick = Alterar1Click
    end
    object Delete1: TMenuItem
      Caption = '&Deletar'
      OnClick = Delete1Click
    end
  end
end

object Frm_Funcao: TFrm_Funcao
  Left = 316
  Top = 170
  Width = 592
  Height = 450
  ActiveControl = edt_conteudo
  Caption = 'Manuten'#231#227'o no Cadastro de Cargos/Fun'#231#245'es'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Courier New'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 576
    Height = 60
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 40
      Width = 98
      Height = 15
      Caption = 'Pesquisar Por.'
    end
    object cb_localizar: TComboBox
      Left = 105
      Top = 34
      Width = 102
      Height = 23
      Style = csDropDownList
      ItemHeight = 15
      ItemIndex = 0
      TabOrder = 0
      Text = 'NOME'
      Items.Strings = (
        'NOME'
        'CODIGO')
    end
    object edt_conteudo: TEdit
      Left = 207
      Top = 34
      Width = 260
      Height = 23
      AutoSelect = False
      TabOrder = 1
    end
    object btn_atualizar: TBitBtn
      Left = 474
      Top = 32
      Width = 95
      Height = 25
      Caption = 'Atualizar'
      TabOrder = 2
      OnClick = btn_atualizarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
    end
    object btn_incluir: TBitBtn
      Left = 0
      Top = 0
      Width = 94
      Height = 30
      Cursor = crHandPoint
      Hint = 'Novo Registro - [Ins]'
      Caption = '&Novo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btn_incluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
    end
    object btn_alterar: TBitBtn
      Left = 93
      Top = 0
      Width = 94
      Height = 30
      Cursor = crHandPoint
      Hint = 'Alterar Registro - [F2]'
      Caption = '&Alterar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btn_alterarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object btn_cancelar: TBitBtn
      Left = 186
      Top = 0
      Width = 94
      Height = 30
      Cursor = crHandPoint
      Hint = 'Cancelar  Registro - [F3]'
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btn_cancelarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
    object btn_excluir: TBitBtn
      Left = 279
      Top = 0
      Width = 94
      Height = 30
      Cursor = crHandPoint
      Hint = 'Excluir Registro - [F9]'
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btn_excluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object btn_gravar: TBitBtn
      Left = 372
      Top = 0
      Width = 94
      Height = 30
      Cursor = crHandPoint
      Hint = 'Gravar Registro - [F10]'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btn_gravarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
    object btn_sair: TBitBtn
      Left = 465
      Top = 0
      Width = 103
      Height = 30
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 8
      OnClick = btn_sairClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
  end
  object Panel_Edicao: TPanel
    Left = 0
    Top = 291
    Width = 576
    Height = 121
    Align = alBottom
    BevelInner = bvLowered
    Enabled = False
    TabOrder = 1
    object Label2: TLabel
      Left = 5
      Top = 4
      Width = 42
      Height = 15
      Caption = 'C'#243'digo'
    end
    object Label3: TLabel
      Left = 90
      Top = 4
      Width = 28
      Height = 15
      Caption = 'Nome'
    end
    object Label4: TLabel
      Left = 418
      Top = 5
      Width = 21
      Height = 15
      Caption = 'CBO'
    end
    object Label5: TLabel
      Left = 10
      Top = 80
      Width = 210
      Height = 15
      Caption = 'Nivel de Libera'#231#227'o de Eventos:'
    end
    object edt_codfunc: TDBEdit
      Left = 5
      Top = 20
      Width = 80
      Height = 23
      DataField = 'CODCAR'
      DataSource = DM1.Src_Funcao
      Enabled = False
      TabOrder = 0
    end
    object edt_nome: TDBEdit
      Left = 88
      Top = 20
      Width = 328
      Height = 23
      DataField = 'NOMCAR'
      DataSource = DM1.Src_Funcao
      TabOrder = 1
    end
    object edt_cbo: TDBEdit
      Left = 418
      Top = 20
      Width = 91
      Height = 23
      DataField = 'NCBO'
      DataSource = DM1.Src_Funcao
      TabOrder = 2
    end
    object DBR_TipoAcesso: TDBRadioGroup
      Left = 5
      Top = 44
      Width = 561
      Height = 34
      Caption = 'Tipo de Acesso'
      Columns = 3
      DataField = 'TIPACE'
      DataSource = DM1.Src_Funcao
      Items.Strings = (
        'Nenhum'
        'Parcial'
        'Geral')
      TabOrder = 3
      Values.Strings = (
        '0'
        '1'
        '2')
    end
    object DB_Privilegio: TDBCheckBox
      Left = 6
      Top = 101
      Width = 560
      Height = 17
      Caption = 'Privil'#233'gios para Entrar em tabula'#231#245'es de Relat'#243'rios'
      TabOrder = 5
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBCB_CG_NIVEL_LIBERACAO: TDBComboBox
      Left = 240
      Top = 80
      Width = 145
      Height = 23
      DataField = 'CG_NIVEL_LIBERACAO'
      DataSource = DM1.Src_Funcao
      ItemHeight = 15
      Items.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9')
      TabOrder = 4
    end
  end
  object Grid: TDBGrid
    Left = 0
    Top = 60
    Width = 576
    Height = 231
    Align = alClient
    DataSource = DM1.Src_Funcao
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Courier New'
    TitleFont.Style = []
    OnDblClick = GridDblClick
    OnExit = GridExit
    Columns = <
      item
        Expanded = False
        FieldName = 'CODCAR'
        Title.Alignment = taCenter
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMCAR'
        Width = 435
        Visible = True
      end>
  end
  object Sr_Funcao: TDataSource
    DataSet = DM1.Tb_Funcao
    Left = 515
    Top = 128
  end
end

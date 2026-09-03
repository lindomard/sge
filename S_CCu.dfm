object frm_CCU: Tfrm_CCU
  Left = 258
  Top = 141
  Width = 978
  Height = 423
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Manuten'#231#227'o no Cadastro de Centro de Custo'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Courier New'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object tlb_centro: TToolBar
    Left = 0
    Top = 40
    Width = 970
    Height = 33
    ButtonHeight = 29
    TabOrder = 0
    object btn_incluir: TBitBtn
      Left = 0
      Top = 2
      Width = 103
      Height = 29
      Cursor = crHandPoint
      Caption = '&Novo'
      TabOrder = 0
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
      Left = 103
      Top = 2
      Width = 103
      Height = 29
      Cursor = crHandPoint
      Caption = '&Alterar'
      TabOrder = 1
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
      Left = 206
      Top = 2
      Width = 103
      Height = 29
      Cursor = crHandPoint
      Caption = '&Cancelar'
      TabOrder = 4
      OnClick = btn_cancelarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
    object btn_excluir: TBitBtn
      Left = 309
      Top = 2
      Width = 103
      Height = 29
      Cursor = crHandPoint
      Caption = '&Excluir'
      TabOrder = 2
      OnClick = btn_excluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      NumGlyphs = 2
    end
    object btn_gravar: TBitBtn
      Left = 412
      Top = 2
      Width = 103
      Height = 29
      Cursor = crHandPoint
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 3
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
      Left = 515
      Top = 2
      Width = 103
      Height = 29
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 5
      OnClick = btn_sairClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
  end
  object TPanel
    Left = 0
    Top = 0
    Width = 970
    Height = 5
    Align = alTop
    BevelInner = bvLowered
    Color = clActiveCaption
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 5
    Width = 970
    Height = 35
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object Label1: TLabel
      Left = 5
      Top = 9
      Width = 63
      Height = 15
      Caption = 'Pesquisar'
    end
    object cb_localizar: TComboBox
      Left = 73
      Top = 6
      Width = 75
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
      Left = 147
      Top = 6
      Width = 226
      Height = 23
      TabOrder = 1
    end
    object btn_atualizar: TBitBtn
      Left = 376
      Top = 5
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
    object DBNavigator1: TDBNavigator
      Left = 473
      Top = 5
      Width = 144
      Height = 25
      DataSource = DM1.Src_CCU
      VisibleButtons = [nbPrior, nbNext]
      TabOrder = 3
    end
  end
  object Panel_edicao: TPanel
    Left = 0
    Top = 202
    Width = 970
    Height = 190
    Align = alBottom
    TabOrder = 3
    object Label2: TLabel
      Left = 5
      Top = 8
      Width = 42
      Height = 15
      Caption = 'C'#243'digo'
    end
    object Label3: TLabel
      Left = 66
      Top = 8
      Width = 63
      Height = 15
      Caption = 'Descri'#231#227'o'
    end
    object Label4: TLabel
      Left = 427
      Top = 5
      Width = 56
      Height = 15
      Caption = 'Natureza'
    end
    object lbl_dre_codigo: TLabel
      Left = 7
      Top = 56
      Width = 70
      Height = 15
      Caption = 'C'#243'digo DRE'
    end
    object lbl_dre_descricao: TLabel
      Left = 90
      Top = 56
      Width = 91
      Height = 15
      Caption = 'Descri'#231#227'o DRE'
    end
    object edt_codccu: TDBEdit
      Left = 5
      Top = 25
      Width = 55
      Height = 23
      Hint = 
        'Se estiver algo digitado '#13#10'[f2]-busca proximo codigo da sequenci' +
        'a'#13#10'[f3-busca codigos pulados na sequencia'
      DataField = 'CCCODCCU'
      DataSource = DM1.Src_CCU
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnExit = edt_codccuExit
      OnKeyDown = edt_codccuKeyDown
    end
    object edt_nomccu: TDBEdit
      Left = 65
      Top = 25
      Width = 344
      Height = 23
      DataField = 'CCNOME'
      DataSource = DM1.Src_CCU
      ReadOnly = True
      TabOrder = 1
    end
    object DBCB_NatDC: TDBComboBox
      Left = 427
      Top = 25
      Width = 53
      Height = 23
      BevelKind = bkSoft
      DataField = 'CCNAT'
      DataSource = DM1.Src_CCU
      ItemHeight = 15
      Items.Strings = (
        'C'
        'D')
      ReadOnly = True
      TabOrder = 2
    end
    object cb_usadre: TCheckBox
      Left = 488
      Top = 24
      Width = 129
      Height = 17
      Caption = 'Utiliza-se DRE.'
      TabOrder = 3
      OnClick = cb_usadreClick
    end
    object coddre: TDBEdit
      Left = 5
      Top = 72
      Width = 76
      Height = 23
      DataField = 'CCCODDRE'
      DataSource = DM1.Src_CCU
      ReadOnly = True
      TabOrder = 4
      OnExit = coddreExit
      OnKeyPress = coddreKeyPress
    end
    object nomdre: TDBEdit
      Left = 87
      Top = 72
      Width = 314
      Height = 23
      DataField = 'NOMDRE'
      DataSource = DM1.Src_CCU
      ReadOnly = True
      TabOrder = 5
    end
    object bbDre: TButton
      Left = 408
      Top = 72
      Width = 209
      Height = 25
      Caption = 'Utilizar Mesmo Codigo na DRE'
      TabOrder = 6
      OnClick = bbDreClick
    end
    object gb_dadoscont: TGroupBox
      Left = 1
      Top = 98
      Width = 968
      Height = 91
      Align = alBottom
      Caption = 'Dados Contabeis:'
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 7
      object Label7: TLabel
        Left = 11
        Top = 20
        Width = 98
        Height = 15
        Caption = 'Tipo da Conta:'
      end
      object Label8: TLabel
        Left = 8
        Top = 45
        Width = 140
        Height = 15
        Caption = 'Conta Cont'#225'bil Cred:'
      end
      object Label9: TLabel
        Left = 271
        Top = 46
        Width = 224
        Height = 15
        Caption = 'C'#243'digo do Hist'#243'rico Padr'#227'o Cred:'
      end
      object Label10: TLabel
        Left = 11
        Top = 65
        Width = 133
        Height = 15
        Caption = 'Conta Cont'#225'bil D'#233'b:'
      end
      object Label11: TLabel
        Left = 276
        Top = 66
        Width = 217
        Height = 15
        Caption = 'C'#243'digo do Hist'#243'rico Padr'#227'o D'#233'b:'
      end
      object Label5: TLabel
        Left = 586
        Top = 43
        Width = 140
        Height = 15
        Caption = 'C'#243'digo Centro Custo:'
      end
      object Label6: TLabel
        Left = 587
        Top = 67
        Width = 140
        Height = 15
        Caption = 'C'#243'digo Centro Custo:'
      end
      object dbcb_categ: TRxDBComboBox
        Left = 128
        Top = 16
        Width = 145
        Height = 23
        Style = csDropDownList
        DataField = 'CCEXP_CATEG'
        DataSource = DM1.Src_CCU
        EnableValues = True
        ItemHeight = 15
        Items.Strings = (
          'Nenhum'
          'Folha de Pagamento'
          'Tributos')
        TabOrder = 0
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object dbcb_folha: TRxDBComboBox
        Left = 276
        Top = 16
        Width = 373
        Height = 23
        Style = csDropDownList
        DataField = 'CCEXP_EVENTO'
        DataSource = DM1.Src_CCU
        EnableValues = True
        ItemHeight = 15
        Items.Strings = (
          '0001 - Tributo Folha INSS'
          '0002 - Tributo Folha INSS 13o. Salario'
          '0003 - Tributo Folha IRRF'
          '0004 - Tributo Folha FGTS'
          '0005 - Tributo Folha PIS'
          '0006 - folha Normal'
          '0007 - Folha Ferias'
          '0008 - Folha 13o. Salario - 1a Parcela'
          '0009 - Folha 13o. Salario - 2a Parcela'
          '0010 - Folha Rescis'#227'o'
          '0011 - Folha Adiantamento Salarial')
        TabOrder = 1
        Values.Strings = (
          '0001'
          '0002'
          '0003'
          '0004'
          '0005'
          '0006'
          '0007'
          '0008'
          '0009'
          '0010'
          '0011'
          '')
      end
      object db_codcta_deb: TDBEdit
        Left = 150
        Top = 41
        Width = 114
        Height = 21
        DataField = 'CCEXP_CODCTA_CRED'
        DataSource = DM1.Src_CCU
        ReadOnly = True
        TabOrder = 2
      end
      object db_codhis_deb: TDBEdit
        Left = 496
        Top = 42
        Width = 87
        Height = 21
        DataField = 'CCEXP_CODHIST_CRED'
        DataSource = DM1.Src_CCU
        ReadOnly = True
        TabOrder = 3
      end
      object db_codcta_cred: TDBEdit
        Left = 150
        Top = 63
        Width = 114
        Height = 21
        DataField = 'CCEXP_CODCTA_DEB'
        DataSource = DM1.Src_CCU
        ReadOnly = True
        TabOrder = 4
      end
      object db_codhis_cred: TDBEdit
        Left = 496
        Top = 64
        Width = 87
        Height = 21
        DataField = 'CCEXP_CODHIST_DEB'
        DataSource = DM1.Src_CCU
        ReadOnly = True
        TabOrder = 5
      end
      object db_codccu_deb: TDBEdit
        Left = 728
        Top = 41
        Width = 87
        Height = 21
        DataField = 'CCEXP_CODCCU_CRED'
        DataSource = DM1.Src_CCU
        ReadOnly = True
        TabOrder = 6
      end
      object db_codccu_cred: TDBEdit
        Left = 727
        Top = 64
        Width = 87
        Height = 21
        DataField = 'CCEXP_CODCCU_DEB'
        DataSource = DM1.Src_CCU
        ReadOnly = True
        TabOrder = 7
      end
    end
    object GroupBox10: TGroupBox
      Left = 638
      Top = 6
      Width = 232
      Height = 41
      Caption = 'Situa'#231#227'o:'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
      object RxDBCB_SITCAD: TRxDBComboBox
        Left = 4
        Top = 13
        Width = 221
        Height = 23
        Style = csDropDownList
        Ctl3D = True
        DataField = 'CCSITCAD'
        DataSource = DM1.Src_CCU
        EnableValues = True
        ItemHeight = 15
        Items.Strings = (
          '0-Normal'
          '8-Bloqueio Temporario'
          '9-Bloqueio Permanente')
        ParentCtl3D = False
        TabOrder = 0
        Values.Strings = (
          '0'
          '8'
          '9')
      end
    end
  end
  object Grid: TDBGrid
    Left = 0
    Top = 73
    Width = 970
    Height = 129
    Align = alClient
    DataSource = DM1.Src_CCU
    ReadOnly = True
    TabOrder = 4
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
        FieldName = 'CCCODCCU'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CCNOME'
        Width = 340
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CCNAT'
        Width = 103
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = DM1.Tb_CCU
    OnDataChange = DataSource1DataChange
    Left = 400
    Top = 187
  end
  object Query1: TQuery
    Left = 256
    Top = 29
  end
end

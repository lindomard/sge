object Frm_RDev: TFrm_RDev
  Left = 14
  Top = 68
  Width = 784
  Height = 467
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Compara'#231#225'o de Remessa de Vendas com as Devolucoes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 768
    Height = 180
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 2
      Top = 40
      Width = 51
      Height = 13
      Caption = 'Periodo &de'
      FocusControl = MDT1
    end
    object Label2: TLabel
      Left = 203
      Top = 40
      Width = 6
      Height = 13
      Caption = #228
    end
    object Label3: TLabel
      Left = 3
      Top = 66
      Width = 63
      Height = 13
      Caption = '&C'#243'd.Cliente..:'
      FocusControl = CODCLI
    end
    object SpeedButton1: TSpeedButton
      Left = 145
      Top = 58
      Width = 23
      Height = 19
      Flat = True
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
      OnClick = SpeedButton1Click
    end
    object MDT1: TMaskEdit
      Left = 84
      Top = 39
      Width = 100
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 245
      Top = 39
      Width = 100
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 2
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object CODCLI: TEdit
      Left = 84
      Top = 57
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnExit = CODCLIExit
      OnKeyPress = CODCLIKeyPress
    end
    object NOMCLI: TEdit
      Left = 169
      Top = 57
      Width = 329
      Height = 19
      TabStop = False
      Color = 16768477
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
      Text = 'Todos...'
    end
    object RG_TIPO: TRadioGroup
      Left = 3
      Top = 81
      Width = 494
      Height = 33
      Caption = 'Tipos dos Pedidos:'
      Color = clBtnFace
      Columns = 3
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'Pendentes'
        'Ja Acertados'
        'Todos')
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 5
    end
    object STG: TStringGrid
      Left = 520
      Top = 55
      Width = 217
      Height = 17
      ColCount = 3
      DefaultRowHeight = 10
      FixedCols = 0
      FixedRows = 0
      TabOrder = 6
      Visible = False
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 119
      Width = 766
      Height = 60
      Align = alBottom
      Caption = 'Ao Faturar Usar os Seguintes Parametros:'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      object Label4: TLabel
        Left = 38
        Top = 17
        Width = 100
        Height = 13
        Caption = 'C'#243'digo do Vendedor:'
      end
      object Label5: TLabel
        Left = 39
        Top = 36
        Width = 99
        Height = 13
        Caption = 'Plano de Vendas.....:'
      end
      object CODVEN: TEdit
        Left = 142
        Top = 15
        Width = 77
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
      end
      object NOMVEN: TEdit
        Left = 218
        Top = 15
        Width = 278
        Height = 19
        TabStop = False
        Color = 16768477
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object NOMPV: TEdit
        Left = 253
        Top = 33
        Width = 243
        Height = 19
        TabStop = False
        Color = 16768477
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
      object CB_TABPV: TComboBox
        Left = 142
        Top = 33
        Width = 53
        Height = 21
        BevelKind = bkSoft
        Ctl3D = True
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 3
        Text = 'AP'
        OnExit = CB_TABPVExit
        Items.Strings = (
          'AV'
          'AP'
          'PP'
          'PO')
      end
      object CODPV: TEdit
        Left = 195
        Top = 33
        Width = 59
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnExit = CODPVExit
        OnKeyPress = CODPVKeyPress
      end
    end
    object RG_TIPOREM: TRadioGroup
      Left = 4
      Top = 2
      Width = 492
      Height = 33
      Caption = 'Tipo da Remessa:'
      Color = clBtnFace
      Columns = 2
      Ctl3D = False
      ItemIndex = 1
      Items.Strings = (
        '&Consigna'#231#227'o'
        '&Venda')
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 384
    Width = 768
    Height = 45
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 1
      Top = 2
      Width = 130
      Height = 40
      Caption = '&Pesquisar'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
    object bbFaturar: TBitBtn
      Left = 489
      Top = 2
      Width = 130
      Height = 40
      Caption = '&Faturar'
      Enabled = False
      TabOrder = 1
      OnClick = bbFaturarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
        03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
        FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
        FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
        3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
        33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
        33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
        33333337FFFFFFF7F33333300000000033333337777777773333}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 645
      Top = 2
      Width = 130
      Height = 40
      Caption = '&Sair'
      TabOrder = 2
      OnClick = BitBtn3Click
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
    object bbTrocas: TBitBtn
      Left = 172
      Top = 2
      Width = 130
      Height = 40
      Caption = '&Trocas'
      Enabled = False
      TabOrder = 3
      OnClick = bbTrocasClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
        03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
        FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
        FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
        3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
        33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
        33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
        33333337FFFFFFF7F33333300000000033333337777777773333}
      NumGlyphs = 2
    end
    object bbAcertos: TBitBtn
      Left = 335
      Top = 2
      Width = 130
      Height = 40
      Caption = '&Acertos Anteriores'
      TabOrder = 4
      OnClick = bbAcertosClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 180
    Width = 768
    Height = 204
    Align = alClient
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 766
      Height = 202
      Align = alClient
      DataSource = Src_Ped
      FixedColor = 16744576
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NOMPRO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 225
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNID'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODPRO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENDAS'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEVOLUCAO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'trocaenv'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'trocarec'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'saldo'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'estoque'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object Qr_Ped: TQuery
    OnCalcFields = Qr_PedCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from TMP00000')
    Left = 424
    Top = 8
    object Qr_Pedsaldo: TFloatField
      DisplayLabel = 'A Faturar'
      FieldKind = fkCalculated
      FieldName = 'saldo'
      Calculated = True
    end
    object Qr_Pedestoque: TFloatField
      DisplayLabel = 'Estoque'
      FieldKind = fkCalculated
      FieldName = 'estoque'
      Calculated = True
    end
    object Qr_PedNOMPRO: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'NOMPRO'
      Origin = 'SG_ASSOC.TMP00000.NOMPRO'
      Size = 40
    end
    object Qr_PedUNID: TStringField
      DisplayLabel = 'Unid'
      FieldName = 'UNID'
      Origin = 'SG_ASSOC.TMP00000.UNID'
      Size = 3
    end
    object Qr_PedCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo Prod'
      FieldName = 'CODPRO'
      Origin = 'SG_ASSOC.TMP00000.CODPRO'
    end
    object Qr_PedLOTE: TStringField
      DisplayLabel = 'Grade'
      FieldName = 'LOTE'
      Origin = 'SG_ASSOC.TMP00000.LOTE'
    end
    object Qr_PedVENDAS: TFloatField
      DisplayLabel = 'Vendas'
      FieldName = 'VENDAS'
      Origin = 'SG_ASSOC.TMP00000.VENDAS'
    end
    object Qr_PedDEVOLUCAO: TFloatField
      DisplayLabel = 'Devolu'#231#245'es'
      FieldName = 'DEVOLUCAO'
      Origin = 'SG_ASSOC.TMP00000.DEVOLUCAO'
    end
    object Qr_PedPRECO: TFloatField
      DisplayLabel = 'Pre'#231'o Atual'
      FieldName = 'PRECO'
      Origin = 'SG_ASSOC.TMP00000.PRECO'
    end
    object Qr_PedSIT: TStringField
      DisplayLabel = 'Sit.Trib'
      FieldName = 'SIT'
      Origin = 'SG_ASSOC.TMP00000.SIT'
      Size = 3
    end
    object Qr_PedLISTA: TFloatField
      DisplayLabel = 'Lista'
      FieldName = 'LISTA'
      Origin = 'SG_ASSOC.TMP00000.LISTA'
    end
    object Qr_PedTABELA: TStringField
      DisplayLabel = 'Tabela'
      FieldName = 'TABELA'
      Origin = 'SG_ASSOC.TMP00000.TABELA'
      Size = 1
    end
    object Qr_PedCODFOR: TFloatField
      DisplayLabel = 'Cod.Forn'
      FieldName = 'CODFOR'
      Origin = 'SG_ASSOC.TMP00000.CODFOR'
    end
    object Qr_PedDTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'DTVCTO'
      Origin = 'SG_ASSOC.TMP00000.DTVCTO'
    end
    object Qr_Pedtrocarec: TFloatField
      DisplayLabel = 'Trocas Rec'
      FieldKind = fkCalculated
      FieldName = 'trocarec'
      Calculated = True
    end
    object Qr_Pedtrocaenv: TFloatField
      DisplayLabel = 'Trocas Ent'
      FieldKind = fkCalculated
      FieldName = 'trocaenv'
      Calculated = True
    end
  end
  object Src_Ped: TDataSource
    DataSet = Qr_Ped
    Left = 560
  end
  object Tb_TrocaMer: TTable
    DatabaseName = '\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'SEQUENCIA'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'CODANT'
        DataType = ftFloat
      end
      item
        Name = 'QTD'
        DataType = ftFloat
      end
      item
        Name = 'CODNOV'
        DataType = ftFloat
      end
      item
        Name = 'PCOANT'
        DataType = ftFloat
      end
      item
        Name = 'PCONOV'
        DataType = ftFloat
      end
      item
        Name = 'GRADENOV'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'GRADEANT'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'CADTRO0'
        Fields = 'SEQUENCIA'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'CADTRO1'
        Fields = 'CODANT'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CADTRO2'
        Fields = 'CODNOV'
        Options = [ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'CADTRO'
    Left = 304
    Top = 64
    object Tb_TrocaMerSEQUENCIA: TAutoIncField
      FieldName = 'SEQUENCIA'
      ReadOnly = True
    end
    object Tb_TrocaMerCODANT: TFloatField
      FieldName = 'CODANT'
    end
    object Tb_TrocaMerCODNOV: TFloatField
      FieldName = 'CODNOV'
    end
    object Tb_TrocaMerPCOANT: TFloatField
      FieldName = 'PCOANT'
    end
    object Tb_TrocaMerPCONOV: TFloatField
      FieldName = 'PCONOV'
    end
    object Tb_TrocaMerQTD: TFloatField
      FieldName = 'QTD'
    end
    object Tb_TrocaMerGRADENOV: TStringField
      FieldName = 'GRADENOV'
    end
    object Tb_TrocaMerGRADEANT: TStringField
      FieldName = 'GRADEANT'
    end
  end
end

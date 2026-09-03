object Frm_APco_For: TFrm_APco_For
  Left = 151
  Top = 90
  Width = 532
  Height = 366
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Atualiza o '#218'ltimo Pre'#231'o de Compra Atrav'#233's da Formula do Produto'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 15
    Top = 14
    Width = 72
    Height = 13
    Caption = 'Fornecedor.....:'
  end
  object Label3: TLabel
    Left = 14
    Top = 60
    Width = 72
    Height = 13
    Caption = 'Tipo Controle..:'
  end
  object Label2: TLabel
    Left = 14
    Top = 37
    Width = 73
    Height = 13
    Caption = 'Tipo Produto...:'
  end
  object Label4: TLabel
    Left = 14
    Top = 82
    Width = 40
    Height = 13
    Caption = 'Produto:'
  end
  object CODFOR: TEdit
    Left = 106
    Top = 10
    Width = 75
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    OnExit = CODFORExit
    OnKeyPress = CODFORKeyPress
  end
  object NOMFOR: TEdit
    Left = 182
    Top = 9
    Width = 269
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 1
    Text = 'Todos...'
  end
  object NOMTIP: TEdit
    Left = 182
    Top = 32
    Width = 269
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 2
    Text = 'Todos...'
  end
  object NOMCON: TEdit
    Left = 182
    Top = 55
    Width = 269
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 3
    Text = 'Todos...'
  end
  object CODCON: TEdit
    Left = 107
    Top = 56
    Width = 75
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    OnExit = CODCONExit
    OnKeyPress = CODCONKeyPress
  end
  object CODTIP: TEdit
    Left = 107
    Top = 33
    Width = 75
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 5
    OnExit = CODTIPExit
    OnKeyPress = CODTIPKeyPress
  end
  object RG_EST: TRadioGroup
    Left = 13
    Top = 113
    Width = 440
    Height = 37
    Caption = 'Estoque:'
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Com Estoque'
      'Sem Estoque')
    TabOrder = 8
  end
  object RGTPRO: TRadioGroup
    Left = 12
    Top = 155
    Width = 440
    Height = 82
    Caption = 'Tipo de Produto:'
    Columns = 2
    ItemIndex = 7
    Items.Strings = (
      'Produto Acabado'
      'Servicos'
      'Materia Prima Revenda'
      'Produto Em Producao'
      'Materia Prima'
      'Insumos'
      'Todos(com exce'#231#227'o do Acabado)'
      'Todos sem exce'#231#227'o')
    TabOrder = 9
  end
  object bbAtualizar: TBitBtn
    Left = -1
    Top = 253
    Width = 185
    Height = 55
    Caption = 'Atualizar Agora'
    TabOrder = 10
    OnClick = bbAtualizarClick
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
  object bbSair: TBitBtn
    Left = 317
    Top = 253
    Width = 185
    Height = 55
    Caption = '&Sair do Programa'
    TabOrder = 11
    OnClick = bbSairClick
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
  object CODPRO: TEdit
    Left = 107
    Top = 78
    Width = 75
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 6
    OnExit = CODPROExit
    OnKeyDown = CODPROKeyDown
    OnKeyPress = CODPROKeyPress
  end
  object NOMPRO: TEdit
    Left = 182
    Top = 77
    Width = 269
    Height = 21
    Enabled = False
    ParentColor = True
    TabOrder = 7
    Text = 'Todos...'
  end
  object Qr_Cus: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select PCCODIGO,PCNOME,PCAPLS,PCOPCIO,PCFATOR,CUPERC from cadpcu' +
        's '
      '               left outer join cadcus '
      '               on (pccodigo=cucodpcu)'
      '               and (CUTIPO=0) '
      '               order by PCNOME ')
    Left = 304
    Top = 8
    object Qr_CusPCNOME: TStringField
      FieldName = 'PCNOME'
      Origin = 'SG_ASSOC.CADPCUS.PCNOME'
      Size = 30
    end
    object Qr_CusPCAPLS: TFloatField
      FieldName = 'PCAPLS'
      Origin = 'SG_ASSOC.CADPCUS.PCAPLS'
    end
    object Qr_CusCUPERC: TFloatField
      FieldName = 'CUPERC'
      Origin = 'SG_ASSOC.CADCUS.CUPERC'
    end
    object Qr_CusPCOPCIO: TFloatField
      FieldName = 'PCOPCIO'
      Origin = 'SG_ASSOC.CADPCUS.PCOPCIO'
    end
    object Qr_CusPCFATOR: TFloatField
      FieldName = 'PCFATOR'
      Origin = 'SG_ASSOC.CADPCUS.PCFATOR'
    end
    object Qr_Cusaplicar: TStringField
      FieldKind = fkCalculated
      FieldName = 'aplicar'
      Calculated = True
    end
    object Qr_CusPCCODIGO: TFloatField
      FieldName = 'PCCODIGO'
      Origin = 'SG_ASSOC.CADPCUS.PCCODIGO'
    end
  end
end

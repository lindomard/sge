object Frm_ABC_Assessor: TFrm_ABC_Assessor
  Left = 87
  Top = 62
  Width = 773
  Height = 391
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'ABC de Assessores'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 289
    Width = 765
    Height = 71
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 315
      Top = 30
      Width = 82
      Height = 13
      Caption = 'Pesquisar por:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bbImprimir: TBitBtn
      Left = 540
      Top = 19
      Width = 110
      Height = 47
      Caption = '&Imprimir'
      TabOrder = 4
      OnClick = bbImprimirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 654
      Top = 21
      Width = 110
      Height = 47
      Caption = '&Sair'
      TabOrder = 5
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
    object RG_ORDEM: TRadioGroup
      Left = 1
      Top = 1
      Width = 298
      Height = 69
      Align = alLeft
      Caption = 'Ordem do Relat'#243'rio:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Nome '
        '&C'#243'digo'
        'Valor Crescente'
        'Valor Descrescente')
      TabOrder = 0
    end
    object CB_EmiDoc: TCheckBox
      Left = 312
      Top = 7
      Width = 136
      Height = 17
      Caption = 'So Emitidos Notas'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 1
    end
    object CB_TIPOPESQ: TComboBox
      Left = 402
      Top = 26
      Width = 132
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Data da Nota'
      Items.Strings = (
        'Data da Nota'
        'Data do Pedido')
    end
    object CB_ICMSRET: TCheckBox
      Left = 316
      Top = 50
      Width = 207
      Height = 17
      Caption = 'Incluir Tambem o Icms Retido'
      TabOrder = 3
    end
  end
  object pc_filtros: TPageControl
    Left = 0
    Top = 0
    Width = 765
    Height = 289
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 0
    TabPosition = tpLeft
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'Filtros'
      object Label3: TLabel
        Left = 12
        Top = 6
        Width = 56
        Height = 13
        Caption = 'Per'#237'odo de:'
      end
      object Label4: TLabel
        Left = 252
        Top = 4
        Width = 6
        Height = 13
        Caption = #224
      end
      object Label6: TLabel
        Left = 10
        Top = 70
        Width = 103
        Height = 13
        Caption = 'C'#243'digo do Vendedor.:'
      end
      object Label7: TLabel
        Left = 10
        Top = 29
        Width = 107
        Height = 13
        Caption = 'C'#243'digo do Supervisor.:'
      end
      object Label5: TLabel
        Left = 20
        Top = 109
        Width = 95
        Height = 13
        Caption = 'C'#243'digo do Cliente...:'
      end
      object Label2: TLabel
        Left = 17
        Top = 152
        Width = 99
        Height = 13
        Caption = 'C'#243'digo do Assessor.:'
      end
      object MDT1: TMaskEdit
        Left = 139
        Top = 3
        Width = 98
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 0
        Text = '  /  /    '
        OnExit = MDT1Exit
      end
      object MDT2: TMaskEdit
        Left = 285
        Top = 3
        Width = 98
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 1
        Text = '  /  /    '
        OnExit = MDT2Exit
      end
      object CODVEN: TEdit
        Left = 139
        Top = 65
        Width = 62
        Height = 19
        Hint = 'Informe Codigo do Vendedor ou'#13#10'digite o nome p/ Consultar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
      end
      object OMITIR_VEN: TCheckBox
        Left = 138
        Top = 89
        Width = 51
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object lbx_codven: TListBox
        Left = 200
        Top = 65
        Width = 459
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnKeyDown = lbx_codvenKeyDown
      end
      object CODSUP: TEdit
        Left = 139
        Top = 24
        Width = 62
        Height = 19
        Hint = 'Informe Codigo do Vendedor ou'#13#10'digite o nome p/ Consultar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnExit = CODSUPExit
        OnKeyPress = CODSUPKeyPress
      end
      object OMITIR_SUP: TCheckBox
        Left = 139
        Top = 46
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object lbx_codsup: TListBox
        Left = 200
        Top = 24
        Width = 459
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_codsupKeyDown
      end
      object CODCLI: TEdit
        Left = 139
        Top = 106
        Width = 62
        Height = 19
        Hint = 'Informe Codigo do Cliente ou'#13#10'digite o nome p/consultar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnExit = CODCLIExit
        OnKeyPress = CODCLIKeyPress
      end
      object OMITIR_CLI: TCheckBox
        Left = 137
        Top = 129
        Width = 57
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
      end
      object lbx_codcli: TListBox
        Left = 200
        Top = 106
        Width = 459
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnKeyDown = lbx_codcliKeyDown
      end
      object CODASSE: TEdit
        Left = 139
        Top = 147
        Width = 62
        Height = 19
        Hint = 'Informe Codigo do Vendedor ou'#13#10'digite o nome p/ Consultar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnExit = CODASSEExit
        OnKeyPress = CODASSEKeyPress
      end
      object lbx_codasse: TListBox
        Left = 200
        Top = 147
        Width = 459
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnKeyDown = lbx_codasseKeyDown
      end
      object OMITIR_ASS: TCheckBox
        Left = 139
        Top = 169
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Tipos de Pedidos'
      ImageIndex = 1
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 738
        Height = 281
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Align = alClient
        Color = clSkyBlue
        Columns = 3
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ItemHeight = 16
        Items.Strings = (
          'Or'#231'amento'
          'Venda Normal'
          'Simples Remessa'
          'Devolu'#231#227'o a Fornecedor'
          'Remessa p/Troca'
          'Transferencia de Mercadorias'
          'Remessa p/Beneficiamento'
          'Remessa p/Venda(Vda.Fora do Estab.)'
          'Devolu'#231#227'o Cliente(Entrada) Normal'
          'Emprestimo de Mercadorias'
          'Nota Complementar'
          'Remessa Para Consigna'#231#245'es'
          'Devolu'#231#227'o Mercadoria Consigna'#231#245'es'
          'Devolu'#231#227'o Remessa p/Venda(Vda.Fora do Estab.)'
          'Venda Mercadoria Consignada'
          'Venda Remessa p/Venda(Vda.Fora do Estabel.)'
          'Venda Normal(Troca de Mercadorias)'
          'Devolu'#231#227'o de Cliente(Troca de Mercadorias)'
          'Transferencias de Mercadorias Entrada'
          'Devolu'#231#227'o de Mercadorias de Terceiros(Consignadas)'
          'Remessa p/Industrializa'#231#227'o'
          'Remessa p/Brinde'
          'Remessa Amostra Gratis'
          'Remessa p/Demonstra'#231#227'o'
          'Remessa p/Conserto'
          'Outras Saidas'
          'Todos')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Style = lbOwnerDrawFixed
        TabOrder = 0
        OnClick = RG_TIPOPEDClick
        OnExit = RG_TIPOPEDExit
      end
    end
  end
  object Qr_Ven: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select VNOME,P1CODVEN,sum(p1totall) as total, sum(p1semcom) as s' +
        'emcom, '
      'sum(P1VALFRE) as frete,'
      'sum(P1ICMSR) as ICMSR from CADP01,CADVEN where'
      'P1CODEMP=1 and'
      'VCODVEN=P1CODVEN'
      'group by VNOME,P1CODVEN')
    Left = 456
    Top = 24
    object Qr_VenVNOME: TStringField
      FieldName = 'VNOME'
      Size = 40
    end
    object Qr_VenTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object Qr_VenSEMCOM: TFloatField
      FieldName = 'SEMCOM'
    end
    object Qr_VenFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object Qr_VenICMSR: TFloatField
      FieldName = 'ICMSR'
    end
    object Qr_VenP1CODVEN: TFloatField
      FieldName = 'P1CODVEN'
      Origin = 'SG_ASSOC.CADP01.P1CODVEN'
    end
  end
end

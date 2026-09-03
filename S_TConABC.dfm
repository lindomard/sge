object Frm_TConABC: TFrm_TConABC
  Left = 3
  Top = 47
  Width = 786
  Height = 435
  Caption = 'ABC de Tipo de Controle de Produto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 288
    Width = 770
    Height = 62
    Align = alBottom
    TabOrder = 0
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
    object RG_ORDEM: TRadioGroup
      Left = 12
      Top = 300
      Width = 298
      Height = 51
      Caption = 'Ordem do Relat'#243'rio:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Nome &do Controle'
        '&C'#243'digo do Controle')
      TabOrder = 2
    end
    object CB_ICMSRET: TCheckBox
      Left = 569
      Top = 2
      Width = 165
      Height = 17
      Caption = 'Incluir Tambem o Icms Retido'
      TabOrder = 3
    end
    object CB_EmiDoc: TCheckBox
      Left = 570
      Top = 19
      Width = 136
      Height = 17
      Caption = 'So Emitidos Notas'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object CB_FORCAR: TCheckBox
      Left = 570
      Top = 35
      Width = 183
      Height = 17
      Caption = 'For'#231'ar todos Registros'
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 350
    Width = 770
    Height = 47
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 12
      Top = 3
      Width = 150
      Height = 40
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 624
      Top = 8
      Width = 150
      Height = 40
      Caption = '&Sair'
      TabOrder = 1
      OnClick = BitBtn2Click
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 770
    Height = 288
    ActivePage = tsFiltros01
    Align = alClient
    MultiLine = True
    TabOrder = 2
    TabPosition = tpLeft
    TabStop = False
    object tsFiltros01: TTabSheet
      Caption = 'Filtros'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 743
        Height = 273
        Align = alTop
        Caption = 'Filtrar:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label13: TLabel
          Left = 37
          Top = 200
          Width = 57
          Height = 13
          Caption = 'Fornecedor:'
        end
        object Label14: TLabel
          Left = 53
          Top = 136
          Width = 40
          Height = 13
          Caption = 'Produto:'
        end
        object Label2: TLabel
          Left = 57
          Top = 15
          Width = 35
          Height = 13
          Caption = 'Cliente:'
        end
        object Label5: TLabel
          Left = 45
          Top = 78
          Width = 49
          Height = 13
          Caption = 'Vendedor:'
        end
        object CODFOR: TEdit
          Left = 99
          Top = 193
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnExit = CODFORExit
          OnKeyPress = CODFORKeyPress
        end
        object lbx_codfor: TListBox
          Left = 172
          Top = 193
          Width = 563
          Height = 62
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnKeyDown = lbx_codforKeyDown
        end
        object OMITIR_FOR: TCheckBox
          Left = 99
          Top = 213
          Width = 69
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
        end
        object CODPRO: TEdit
          Left = 99
          Top = 132
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnExit = CODPROExit
          OnKeyPress = CODPROKeyPress
        end
        object lbx_codpro: TListBox
          Left = 172
          Top = 132
          Width = 563
          Height = 62
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnKeyDown = lbx_codproKeyDown
        end
        object OMITIR_PRO: TCheckBox
          Left = 100
          Top = 155
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object CODCLI: TEdit
          Left = 99
          Top = 11
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = CODCLIExit
          OnKeyPress = CODCLIKeyPress
        end
        object lbx_codcli: TListBox
          Left = 172
          Top = 10
          Width = 563
          Height = 62
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyDown = lbx_codcliKeyDown
        end
        object OMITIR_CLI: TCheckBox
          Left = 99
          Top = 38
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object CODVEN: TEdit
          Left = 99
          Top = 72
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnExit = CODVENExit
          OnKeyPress = CODVENKeyPress
        end
        object lbx_codven: TListBox
          Left = 172
          Top = 71
          Width = 563
          Height = 62
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnKeyDown = lbx_codvenKeyDown
        end
        object OMITIR_VEN: TCheckBox
          Left = 99
          Top = 100
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
      end
    end
    object tsFiltros02: TTabSheet
      Caption = 'Outros Filtros'
      ImageIndex = 1
      object Label7: TLabel
        Left = 7
        Top = 12
        Width = 75
        Height = 13
        Caption = 'Tipo de Pedido:'
      end
      object RG_TIPOPED: TCheckListBox
        Left = 5
        Top = 27
        Width = 750
        Height = 271
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Color = clSkyBlue
        Columns = 2
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
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
        OnExit = RG_TIPOPEDExit
      end
    end
  end
  object Qr_For: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select PNOM AS NOME, PCODEMP AS CODIGO,sum(P2TOTLIQ-P2DESCRAT) a' +
        's total,'
      'sum(P2ICMSR) as ICMSR from CADP01,CADP02,CADCLI,CADUF where'
      'P1CODEMP=1 and'
      'P2CODEMP=P1CODEMP and'
      'P2CHAVE =P1CHAVE  and'
      'P2ORDEM =P1ORDEM  and'
      'CCODEMP =P1CODEMP and'
      'CCODCLI =P1CODCLI and'
      'PCODEMP =CCODEMP and'
      'PUF     =CUF'
      'group by PNOM,PCODEMP')
    Left = 456
    Top = 24
    object Qr_ForNOME: TStringField
      FieldName = 'NOME'
    end
    object Qr_ForCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object Qr_ForTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object Qr_ForICMSR: TFloatField
      FieldName = 'ICMSR'
    end
  end
end

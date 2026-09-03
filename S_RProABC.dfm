object Frm_RProABC: TFrm_RProABC
  Left = 201
  Top = 114
  Width = 511
  Height = 419
  Caption = 'ABC por Ramo de Produto'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 495
    Height = 340
    Align = alClient
    TabOrder = 0
    object Label3: TLabel
      Left = 12
      Top = 6
      Width = 68
      Height = 13
      Caption = 'Per'#237'odo de:'
    end
    object Label4: TLabel
      Left = 252
      Top = 4
      Width = 8
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
      Top = 281
      Width = 269
      Height = 56
      Caption = 'Ordem do Relat'#243'rio:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Nome &do Ramo'
        '&C'#243'digo do Ramo')
      TabOrder = 3
    end
    object RG_TIPOPED: TRadioGroup
      Left = 12
      Top = 25
      Width = 480
      Height = 256
      Caption = 'Emitir Somente:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Venda Normal'
        'Simples Remessa'
        'Dev. a Fornecedor'
        'Remessa p/Troca'
        'Transferencia'
        'Remessa p/Beneficiamento'
        'Remessa p/Venda'
        'Dev. Cliente(Entrada)'
        'Emprestimo de Mercadorias')
      TabOrder = 2
    end
    object GB_PRECO: TGroupBox
      Left = 281
      Top = 281
      Width = 211
      Height = 56
      Caption = 'Tipo de Pre'#231'o'
      TabOrder = 4
      object cb_tipopco: TComboBox
        Left = 3
        Top = 14
        Width = 205
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 7
        TabOrder = 0
        Text = 'Pre'#231'o Vendido'
        Items.Strings = (
          'Pre'#231'o de Venda 01 ( Atual )'
          'Pre'#231'o de Venda 02 ( Atual )'
          'Pre'#231'o de Venda 03 ( Atual )'
          'Pre'#231'o de Custo ( Atual )'
          'Pre'#231'o de Fabrica (Atual)'
          'Pre'#231'o de Forma de Pagamento ( Hora da Venda )'
          'Pre'#231'o de Custo ( Hora da Venda )'
          'Pre'#231'o Vendido')
      end
      object CB_ICMS_RET: TCheckBox
        Left = 5
        Top = 36
        Width = 140
        Height = 17
        Caption = 'Incluir Icms Retido'
        TabOrder = 1
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 340
    Width = 495
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 75
      Height = 25
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
      Left = 408
      Top = 8
      Width = 75
      Height = 25
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

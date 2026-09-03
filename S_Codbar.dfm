object Frm_CodBar: TFrm_CodBar
  Left = 83
  Top = 153
  Width = 703
  Height = 158
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Impress'#227'o de C'#243'digos de Barras diversos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 695
    Height = 127
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 20
      Top = 14
      Width = 30
      Height = 13
      Caption = 'Tipo:'
    end
    object Label2: TLabel
      Left = 107
      Top = 17
      Width = 44
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label3: TLabel
      Left = 260
      Top = 16
      Width = 39
      Height = 13
      Caption = 'Grade:'
    end
    object Label4: TLabel
      Left = 23
      Top = 40
      Width = 70
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label5: TLabel
      Left = 158
      Top = 39
      Width = 135
      Height = 13
      Caption = 'Informa'#231#245'es adicionais:'
    end
    object Label6: TLabel
      Left = 24
      Top = 59
      Width = 164
      Height = 13
      Caption = 'Imprimir a partir da etiqueta.:'
    end
    object Label7: TLabel
      Left = 25
      Top = 84
      Width = 178
      Height = 13
      Caption = 'Descri'#231#227'o.............................:'
    end
    object CB_TIPO: TComboBox
      Left = 54
      Top = 13
      Width = 47
      Height = 21
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 0
      Text = 'BC'
      OnExit = CB_TIPOExit
      Items.Strings = (
        'BC'
        'CL'
        'FR'
        'PR'
        'TR'
        'VD')
    end
    object CODIGO: TEdit
      Left = 156
      Top = 14
      Width = 101
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnExit = CODIGOExit
      OnKeyPress = CODIGOKeyPress
    end
    object NOME: TEdit
      Left = 355
      Top = 15
      Width = 241
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 4
      Text = 'Todos...'
    end
    object BitBtn2: TBitBtn
      Left = 236
      Top = 100
      Width = 205
      Height = 25
      Caption = '&Imprimir Padr'#227'o 21,2/38,2mm'
      TabOrder = 9
      OnClick = BitBtn2Click
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
    object BitBtn3: TBitBtn
      Left = 482
      Top = 99
      Width = 205
      Height = 25
      Caption = '&Sair do programa'
      TabOrder = 10
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
    object GRADE: TEdit
      Left = 303
      Top = 15
      Width = 49
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = GRADEExit
    end
    object QTDP: TEdit
      Left = 94
      Top = 36
      Width = 56
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnExit = QTDPExit
      OnKeyPress = QTDPKeyPress
    end
    object INFAD: TEdit
      Left = 303
      Top = 36
      Width = 160
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
    end
    object APARTIR: TEdit
      Left = 194
      Top = 56
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      Text = '1'
      OnKeyPress = APARTIRKeyPress
    end
    object BitBtn1: TBitBtn
      Left = 4
      Top = 101
      Width = 205
      Height = 25
      Caption = '&Imprimir Padr'#227'o 25,4/63,5mm'
      TabOrder = 8
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
    object NOMPRO: TEdit
      Left = 195
      Top = 77
      Width = 212
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
    end
  end
  object Qr_Bar: TQuery
    OnCalcFields = Qr_BarCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PDCODPRO as CODIGO, PDNOME as NOME, '
      'PDCODBAR as CODBAR,'
      #39' '#39' as GRADE,'
      #39' '#39' as INFAD,'
      'PDCODPRO as qtd'
      'from CADPRO')
    Left = 656
    Top = 8
    object Qr_BarCODIGO: TFloatField
      DisplayLabel = 'C'#243'digo Original'
      FieldName = 'CODIGO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Qr_BarNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'NOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_BarCODBAR: TFloatField
      DisplayLabel = 'C'#243'digo barras'
      FieldName = 'CODBAR'
      Origin = 'SG_ASSOC.CADPRO.PDCODBAR'
    end
    object Qr_BarGRADE: TStringField
      FieldName = 'GRADE'
      FixedChar = True
      Size = 1
    end
    object Qr_BarINFAD: TStringField
      FieldName = 'INFAD'
      FixedChar = True
      Size = 1
    end
    object Qr_Barcodbarc: TStringField
      FieldKind = fkCalculated
      FieldName = 'codbarc'
      Calculated = True
    end
    object Qr_BarQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object Src_Bar: TDataSource
    DataSet = Qr_Bar
    Left = 616
    Top = 8
  end
end

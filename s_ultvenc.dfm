object Frm_UltVenC: TFrm_UltVenC
  Left = 213
  Top = 187
  Width = 726
  Height = 415
  Caption = 'Relat'#243'rio de Ultima Venda por Cliente'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 718
    Height = 366
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 80
      Top = 24
      Width = 536
      Height = 37
      Caption = 'Relat'#243'rio de Ultima Venda por Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 104
      Top = 214
      Width = 33
      Height = 20
      Caption = 'De..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 312
      Top = 214
      Width = 25
      Height = 20
      Caption = 'At'#233
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 108
      Top = 247
      Width = 201
      Height = 13
      Caption = 'Somente Compras com Valores a Partir de:'
    end
    object Label5: TLabel
      Left = 112
      Top = 270
      Width = 94
      Height = 13
      Caption = 'Ordem do Relatorio:'
    end
    object bb_analise: TBitBtn
      Left = 94
      Top = 298
      Width = 148
      Height = 36
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bb_analiseClick
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
    object mDtini: TMaskEdit
      Left = 141
      Top = 216
      Width = 111
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
      OnExit = mDtiniExit
    end
    object mDtfin: TMaskEdit
      Left = 381
      Top = 215
      Width = 117
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 2
      Text = '  /  /    '
      OnExit = mDtfinExit
    end
    object RLReport1: TRLReport
      Left = -57
      Top = 345
      Width = 794
      Height = 1123
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      PrintDialog = False
      PrintEmpty = False
      ShowProgress = False
      Visible = False
      object RLBand1: TRLBand
        Left = 38
        Top = 38
        Width = 718
        Height = 104
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Degrade.OppositeColor = clGreen
        Degrade.Granularity = 2
        BeforePrint = RLBand1BeforePrint
        object lbl_empresa: TRLLabel
          Left = 0
          Top = 5
          Width = 56
          Height = 16
          Caption = 'Empresa'
        end
        object lbl_codcli: TRLLabel
          Left = 1
          Top = 85
          Width = 77
          Height = 18
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Cod. Cliente'
        end
        object lbl_nomcli: TRLLabel
          Left = 77
          Top = 85
          Width = 274
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Nome do Cliente'
        end
        object lbl_total: TRLLabel
          Left = 452
          Top = 85
          Width = 136
          Height = 18
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Valor da Ultima Venda'
        end
        object lbl_ped: TRLLabel
          Left = 351
          Top = 85
          Width = 103
          Height = 18
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Chave do Pedido'
        end
        object lbl_data: TRLLabel
          Left = 586
          Top = 85
          Width = 133
          Height = 18
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Data da Ultima Venda'
        end
        object lbl_ender: TRLLabel
          Left = 0
          Top = 22
          Width = 56
          Height = 16
          Caption = 'Empresa'
        end
        object RLLabel1: TRLLabel
          Left = 210
          Top = 37
          Width = 236
          Height = 16
          Caption = 'Relatorio de Ultimas Compra por Cliente'
        end
        object rl_periodo: TRLLabel
          Left = 210
          Top = 57
          Width = 236
          Height = 16
          AutoSize = False
          Caption = 'Periodo de 01/01/1900 '#224' 01/01/1900.'
        end
      end
      object RLBand2: TRLBand
        Left = 38
        Top = 142
        Width = 718
        Height = 21
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        object codcli: TRLDBText
          Left = 1
          Top = 1
          Width = 77
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'CLIENTE'
          DataSource = DataSource1
          Holder = lbl_codcli
          HoldStyle = hsCopySize
        end
        object RLDBText5: TRLDBText
          Left = 351
          Top = 1
          Width = 103
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'CHAVE'
          DataSource = DataSource1
          Holder = lbl_ped
          HoldStyle = hsCopySize
        end
        object RLDBText3: TRLDBText
          Left = 452
          Top = 1
          Width = 136
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'TOTAL_L'
          DataSource = DataSource1
          Holder = lbl_total
          HoldStyle = hsCopySize
        end
        object RLDBText4: TRLDBText
          Left = 586
          Top = 1
          Width = 133
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'DATA'
          DataSource = DataSource1
          Holder = lbl_data
          HoldStyle = hsCopySize
        end
        object RLDBText1: TRLDBText
          Left = 77
          Top = 1
          Width = 274
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'NOMCLI'
          DataSource = DataSource1
          Holder = lbl_nomcli
          HoldStyle = hsCopySize
        end
      end
    end
    object mValorCpr: TCurrencyEdit
      Left = 327
      Top = 241
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      DisplayFormat = ',0.00'
      ParentCtl3D = False
      TabOrder = 4
    end
    object bbSair: TBitBtn
      Left = 428
      Top = 298
      Width = 148
      Height = 36
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
    object StaticText4: TStaticText
      Left = 55
      Top = 70
      Width = 138
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Regiao'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 6
    end
    object EDT_CODREG: TEdit
      Left = 198
      Top = 68
      Width = 56
      Height = 19
      Hint = 'Digite o C'#243'digo Desejado'
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      OnExit = EDT_CODREGExit
      OnKeyPress = EDT_CODREGKeyPress
    end
    object lbx_CODREG: TListBox
      Left = 253
      Top = 68
      Width = 345
      Height = 43
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnKeyDown = lbx_CODREGKeyDown
    end
    object OMITIR_CODREG: TCheckBox
      Left = 199
      Top = 92
      Width = 53
      Height = 17
      Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
    end
    object StaticText1: TStaticText
      Left = 55
      Top = 112
      Width = 138
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Rede:'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 13
    end
    object edt_codred: TEdit
      Left = 198
      Top = 110
      Width = 56
      Height = 19
      Hint = 'Digite o C'#243'digo Desejado'
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 14
      OnExit = edt_codredExit
      OnKeyPress = edt_codredKeyPress
    end
    object lbx_codred: TListBox
      Left = 253
      Top = 110
      Width = 345
      Height = 43
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
      OnKeyDown = lbx_codredKeyDown
    end
    object OMITIR_CODRED: TCheckBox
      Left = 199
      Top = 134
      Width = 53
      Height = 17
      Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
    end
    object cb_ordem: TComboBox
      Left = 208
      Top = 270
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 17
      Text = 'cb_ordem'
      Items.Strings = (
        'Raz'#227'o Social'
        'Raz'#227'o Social + Data'
        'Raz'#227'o Social + Data Decrescente'
        'Raz'#227'o Social + Valor'
        'Raz'#227'o Social + Valor Decrescente'
        'Data'
        'Data Decrescente'
        'Valor'
        'Valoor Decrescente'
        ''
        ''
        ''
        ''
        ' ')
    end
    object StaticText2: TStaticText
      Left = 56
      Top = 154
      Width = 138
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Vendedor:'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 18
    end
    object edt_codven: TEdit
      Left = 198
      Top = 152
      Width = 56
      Height = 19
      Hint = 'Digite o C'#243'digo Desejado'
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 10
      OnExit = edt_codvenExit
      OnKeyPress = edt_codvenKeyPress
    end
    object lbx_codven: TListBox
      Left = 253
      Top = 152
      Width = 345
      Height = 43
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnKeyDown = lbx_codvenKeyDown
    end
    object OMITIR_CODVEN: TCheckBox
      Left = 200
      Top = 176
      Width = 53
      Height = 17
      Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
    end
    object CB_EmiDoc: TCheckBox
      Left = 379
      Top = 268
      Width = 136
      Height = 17
      Caption = 'So Emitidos Notas'
      Checked = True
      State = cbChecked
      TabOrder = 19
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 366
    Width = 718
    Height = 18
    Align = alBottom
    TabOrder = 1
  end
  object Query1: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      ' select P1CHAVE AS CHAVE, P1CODCLI AS CLIENTE, P1DATDOC AS DATA,'
      ' P1TOTALL as Total_L, CRAZAO as NomCli'
      ' from  CADP01, cadcli'
      ' where P1CHAVE is null and CCODCLI=P1CODCLI'
      '')
    Left = 525
    Top = 140
    object Query1CHAVE: TFloatField
      FieldName = 'CHAVE'
      Origin = 'SGE.TEMPORARY.CHAVE'
    end
    object Query1CLIENTE: TFloatField
      FieldName = 'CLIENTE'
      Origin = 'SGE.TEMPORARY.CLIENTE'
    end
    object Query1TOTAL_L: TFloatField
      FieldName = 'TOTAL_L'
      Origin = 'SGE.CADP01.P1TOTALL'
      DisplayFormat = '#,##0.00'
    end
    object Query1NOMCLI: TStringField
      FieldName = 'NOMCLI'
      Origin = 'SGE.CADCLI.CRAZAO'
      Size = 60
    end
    object Query1DATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'SG_ASSOC.CADP01.P1DATDOC'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 560
    Top = 140
  end
end

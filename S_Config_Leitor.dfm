object Frm_Config_Leitor: TFrm_Config_Leitor
  Left = 182
  Top = 24
  Width = 536
  Height = 509
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Configura'#231#227'o do Leitor '#211'ptico'
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RG_TIPO: TRadioGroup
    Left = 0
    Top = 0
    Width = 528
    Height = 41
    Align = alTop
    Caption = 'Tipo do Leitor:'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Leitor de Teclado'
      'Leitor Serial(Porta de Comunica'#231#227'o)')
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 434
    Width = 528
    Height = 41
    Align = alBottom
    TabOrder = 1
    object bbSalvar: TBitBtn
      Left = 16
      Top = 8
      Width = 107
      Height = 25
      Caption = '&Gravar'
      TabOrder = 0
      OnClick = bbSalvarClick
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
    object bbTestar: TBitBtn
      Left = 180
      Top = 7
      Width = 107
      Height = 25
      Caption = '&Testar'
      TabOrder = 1
      OnClick = bbTestarClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000C40E0000C40E00000001000000000000000000008080
        8000000080000080800000800000808000008000000080008000408080004040
        0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
        FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
        80008000FF004080FF00C0DCC000F0CAA60004040400080808000C0C0C001111
        1100161616001C1C1C002222220029292900555555004D4D4D00424242003939
        3900807CFF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD000000
        330000006600000099000000CC00003300000033330000336600003399000033
        CC000033FF00006600000066330000666600006699000066CC000066FF000099
        00000099330000996600009999000099CC000099FF0000CC000000CC330000CC
        660000CC990000CCCC0000CCFF0000FF660000FF990000FFCC00330000003300
        330033006600330099003300CC003300FF003333000033333300333366003333
        99003333CC003333FF00336600003366330033666600336699003366CC003366
        FF00339900003399330033996600339999003399CC003399FF0033CC000033CC
        330033CC660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FF
        CC0033FFFF00660000006600330066006600660099006600CC006600FF006633
        00006633330066336600663399006633CC006633FF0066660000666633006666
        6600666699006666CC00669900006699330066996600669999006699CC006699
        FF0066CC000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF
        990066FFCC00CC00FF00FF00CC009999000099339900990099009900CC009900
        000099333300990066009933CC009900FF009966000099663300993366009966
        99009966CC009933FF009999330099996600999999009999CC009999FF0099CC
        000099CC330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC
        660099FF990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00
        CC0099330000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC66
        330099666600CC669900CC66CC009966FF00CC990000CC993300CC996600CC99
        9900CC99CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCC
        FF00CCFF0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF00
        6600FF009900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF66
        0000FF663300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF99
        6600FF999900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCC
        CC00FFCCFF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FF
        FF00FF666600FF66FF00FFFF66002100A5005F5F5F0077777700030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        030303030303030303030E0E0E0E0E0E030303030E0E0E0E0E0E000000000003
        0303030300000000000301010101010E0303030301010101010E000E00000003
        03030303000E00000003010E0101010E03030303010E0101010E000E00000003
        03030303000E00000003010E0101010E0E030E0E010E0101010E000000000000
        00030000000000000003010101010101010E010101010101010E00000E000000
        0000000E00000000000301010E0101010101010E01010101010E00000E000000
        0F00000E00000000000301010E0101010F01010E01010101010E00000E000000
        0F00000E00000000000301010E0101010F01010E01010101010E030000000000
        0000000000000000030303010101010101010101010101010E030303000E0000
        0003000E0000000303030303010E0101010E010E0101010E0303030300000000
        00030000000000030303030301010101010E01010101010E0303030303000000
        030303000000030303030303030101010E03030101010E030303030303000E00
        030303000E0003030303030303010E010E0303010E010E030303030303000000
        030303000000030303030303030101010E03030101010E030303030303030303
        0303030303030303030303030303030303030303030303030303}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 330
      Top = 8
      Width = 107
      Height = 25
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
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 528
    Height = 393
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Configura'#231#245'es do Leitor'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 520
        Height = 163
        Align = alClient
        Caption = 'Dados para Comunica'#231#227'o Serial'
        TabOrder = 0
        object Label1: TLabel
          Left = 15
          Top = 25
          Width = 28
          Height = 13
          Caption = 'Porta '
        end
        object Label2: TLabel
          Left = 250
          Top = 26
          Width = 53
          Height = 13
          Caption = 'Velocidade'
        end
        object Label3: TLabel
          Left = 15
          Top = 58
          Width = 42
          Height = 13
          Caption = 'Paridade'
        end
        object Label4: TLabel
          Left = 250
          Top = 49
          Width = 43
          Height = 13
          Caption = 'Data Bits'
        end
        object Label5: TLabel
          Left = 15
          Top = 81
          Width = 37
          Height = 13
          Caption = 'Stop Bit'
        end
        object cbPorta: TComboBox
          Left = 84
          Top = 25
          Width = 100
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          Text = 'Com1'
          Items.Strings = (
            'COM 1'
            'COM 2'
            'COM 3'
            'COM 4'
            'COM 5'
            'COM 6'
            'COM 7'
            'COM 8')
        end
        object cbVelocidade: TComboBox
          Left = 314
          Top = 22
          Width = 100
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          Text = '2400'
          Items.Strings = (
            '110'
            '300'
            '600'
            '1200'
            '2400'
            '4800'
            '9600'
            '14400'
            '19200'
            '38400'
            '56000'
            '57600'
            '115200')
        end
        object cbParidade: TComboBox
          Left = 84
          Top = 52
          Width = 100
          Height = 21
          ItemHeight = 13
          TabOrder = 2
          Text = 'O'
          Items.Strings = (
            'None'
            'Odd'
            'Even'
            'Mark'
            'Space')
        end
        object cbData: TComboBox
          Left = 314
          Top = 46
          Width = 100
          Height = 21
          ItemHeight = 13
          TabOrder = 3
          Text = '7'
          Items.Strings = (
            '5'
            '6'
            '7'
            '8')
        end
        object cbStop: TComboBox
          Left = 84
          Top = 78
          Width = 100
          Height = 21
          ItemHeight = 13
          TabOrder = 4
          Text = '1'
          Items.Strings = (
            '1'
            '1,5'
            '2')
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 163
        Width = 520
        Height = 202
        Align = alBottom
        Caption = 'Flow Control'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object SpeedButton1: TSpeedButton
          Left = 250
          Top = 93
          Width = 130
          Height = 25
          Caption = 'Hardware (Rts/Cts)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 250
          Top = 118
          Width = 130
          Height = 25
          Caption = 'Hardware (Dtr/Dsr)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton2Click
        end
        object SpeedButton4: TSpeedButton
          Left = 250
          Top = 168
          Width = 130
          Height = 25
          Caption = 'Limpar Tudo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton4Click
        end
        object SpeedButton3: TSpeedButton
          Left = 250
          Top = 143
          Width = 130
          Height = 25
          Caption = 'Software (Xon/Xoff)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton3Click
        end
        object CB_CTSOUTPUT: TCheckBox
          Left = 11
          Top = 115
          Width = 137
          Height = 17
          Caption = 'Cts output flow control'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object CB_DSROUTPUT: TCheckBox
          Left = 11
          Top = 135
          Width = 137
          Height = 17
          Caption = 'Dsr output flow control'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object CB_XONXOFFOUT: TCheckBox
          Left = 11
          Top = 155
          Width = 161
          Height = 17
          Caption = 'Xon/Xoff output flow control'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object CB_XONXOFFINP: TCheckBox
          Left = 11
          Top = 175
          Width = 161
          Height = 17
          Caption = 'Xon/Xoff input flow control'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object RG_RTSINPUT: TRadioGroup
          Left = 10
          Top = 16
          Width = 150
          Height = 90
          Caption = 'Rts input flow control'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 0
          Items.Strings = (
            'Disable'
            'Enable'
            'Handshake'
            'Toggle')
          ParentFont = False
          TabOrder = 0
        end
        object RG_DTRINPUT: TRadioGroup
          Left = 250
          Top = 16
          Width = 150
          Height = 70
          Caption = 'Dtr input flow control'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 0
          Items.Strings = (
            'Disable'
            'Enable'
            'Handshake')
          ParentFont = False
          TabOrder = 1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Posi'#231#227'o dos Campos dos Documentos'
      ImageIndex = 1
      object Label6: TLabel
        Left = 6
        Top = 156
        Width = 39
        Height = 13
        Caption = 'Camera:'
      end
      object Label7: TLabel
        Left = 6
        Top = 137
        Width = 33
        Height = 13
        Caption = 'Campo'
      end
      object Label8: TLabel
        Left = 95
        Top = 137
        Width = 68
        Height = 13
        Caption = 'Posi'#231#227'o Inicial'
      end
      object Label9: TLabel
        Left = 179
        Top = 138
        Width = 45
        Height = 13
        Caption = 'Tamanho'
      end
      object Label10: TLabel
        Left = 6
        Top = 175
        Width = 34
        Height = 13
        Caption = 'Banco:'
      end
      object Label11: TLabel
        Left = 6
        Top = 192
        Width = 42
        Height = 13
        Caption = 'Ag'#234'ncia:'
      end
      object Label12: TLabel
        Left = 6
        Top = 211
        Width = 71
        Height = 13
        Caption = 'Compensa'#231#227'o:'
      end
      object Label13: TLabel
        Left = 6
        Top = 230
        Width = 80
        Height = 13
        Caption = 'N'#250'mero Cheque:'
      end
      object Label14: TLabel
        Left = 6
        Top = 249
        Width = 31
        Height = 13
        Caption = 'Conta:'
      end
      object Label56: TLabel
        Left = 4
        Top = 95
        Width = 36
        Height = 13
        Caption = 'C'#243'digo:'
      end
      object Label57: TLabel
        Left = 124
        Top = 96
        Width = 51
        Height = 13
        Caption = 'Descri'#231#227'o:'
      end
      object Label58: TLabel
        Left = 7
        Top = 117
        Width = 150
        Height = 13
        Caption = 'Tamanho do Registro a ser lido:'
      end
      object Label59: TLabel
        Left = 6
        Top = 267
        Width = 87
        Height = 13
        Caption = 'C'#243'digo da Moeda:'
      end
      object Label60: TLabel
        Left = 6
        Top = 285
        Width = 59
        Height = 13
        Caption = 'Vencimento:'
      end
      object Label61: TLabel
        Left = 260
        Top = 161
        Width = 27
        Height = 13
        Caption = 'Valor:'
      end
      object Label62: TLabel
        Left = 260
        Top = 179
        Width = 73
        Height = 13
        Caption = 'Nosso N'#250'mero:'
      end
      object Label63: TLabel
        Left = 433
        Top = 141
        Width = 45
        Height = 13
        Caption = 'Tamanho'
      end
      object Label64: TLabel
        Left = 349
        Top = 140
        Width = 68
        Height = 13
        Caption = 'Posi'#231#227'o Inicial'
      end
      object Label65: TLabel
        Left = 260
        Top = 140
        Width = 33
        Height = 13
        Caption = 'Campo'
      end
      object Label66: TLabel
        Left = 260
        Top = 197
        Width = 79
        Height = 13
        Caption = 'C'#243'digo Cedente:'
      end
      object Label67: TLabel
        Left = 260
        Top = 215
        Width = 90
        Height = 13
        Caption = 'C'#243'digo da Carteira:'
      end
      object Label68: TLabel
        Left = 259
        Top = 233
        Width = 57
        Height = 13
        Caption = 'N'#250'mero NF:'
      end
      object Label69: TLabel
        Left = 259
        Top = 251
        Width = 78
        Height = 13
        Caption = 'Mes Referencia:'
      end
      object Label70: TLabel
        Left = 259
        Top = 269
        Width = 77
        Height = 13
        Caption = 'Ano Referencia:'
      end
      object Label71: TLabel
        Left = 259
        Top = 287
        Width = 84
        Height = 13
        Caption = 'N'#250'mero Diversos:'
      end
      object Shape1: TShape
        Left = 1
        Top = 136
        Width = 1
        Height = 172
      end
      object Shape2: TShape
        Left = 1
        Top = 307
        Width = 510
        Height = 1
      end
      object Shape3: TShape
        Left = 1
        Top = 136
        Width = 510
        Height = 1
      end
      object Shape4: TShape
        Left = 254
        Top = 136
        Width = 1
        Height = 172
      end
      object Shape5: TShape
        Left = 510
        Top = 136
        Width = 1
        Height = 172
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 520
        Height = 89
        Align = alTop
        DataSource = DM4.Src_PosDoc
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PD_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PD_DESCRICAO'
            Width = 299
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PD_QTDBITES'
            Width = 108
            Visible = True
          end>
      end
      object DBEdit1: TDBEdit
        Left = 46
        Top = 95
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_CODIGO'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 179
        Top = 96
        Width = 265
        Height = 19
        Ctl3D = False
        DataField = 'PD_DESCRICAO'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 96
        Top = 154
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_CAMERA_PI'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 179
        Top = 155
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_CAMERA_TAM'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 5
      end
      object DB_CODBCO_PI: TDBEdit
        Left = 96
        Top = 172
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_CODBCO_PI'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBEdit6: TDBEdit
        Left = 179
        Top = 173
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_CODBCO_TAM'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBEdit7: TDBEdit
        Left = 96
        Top = 190
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_AGENCIA_PI'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 8
      end
      object DBEdit8: TDBEdit
        Left = 179
        Top = 191
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_AGENCIA_TAM'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 9
      end
      object DBEdit9: TDBEdit
        Left = 96
        Top = 208
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_COMP_PI'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 10
      end
      object DBEdit10: TDBEdit
        Left = 179
        Top = 209
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_COMP_TAM'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 11
      end
      object DBEdit11: TDBEdit
        Left = 96
        Top = 226
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_NUMDOC_PI'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 12
      end
      object DBEdit12: TDBEdit
        Left = 179
        Top = 227
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_NUMDOC_TAM'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 13
      end
      object DBEdit13: TDBEdit
        Left = 96
        Top = 244
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_CONTA_PI'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 14
      end
      object DBEdit14: TDBEdit
        Left = 179
        Top = 245
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_CONTA_TAM'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 15
      end
      object DBEdit15: TDBEdit
        Left = 179
        Top = 115
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_QTDBITES'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit16: TDBEdit
        Left = 96
        Top = 262
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_MOEDA_PI'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 16
      end
      object DBEdit17: TDBEdit
        Left = 179
        Top = 263
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_MOEDA_TAM'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 17
      end
      object DBEdit18: TDBEdit
        Left = 96
        Top = 280
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_VCTO_PI'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 18
      end
      object DBEdit19: TDBEdit
        Left = 179
        Top = 281
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_VCTO_TAM'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 19
      end
      object DBEdit20: TDBEdit
        Left = 350
        Top = 156
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_VALOR_PI'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 20
      end
      object DBEdit21: TDBEdit
        Left = 433
        Top = 157
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_VALOR_TAM'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 21
      end
      object DBEdit22: TDBEdit
        Left = 433
        Top = 175
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_NOSSON_TAM'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 22
      end
      object DBEdit23: TDBEdit
        Left = 350
        Top = 174
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_NOSSON_PI'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 23
      end
      object DBEdit24: TDBEdit
        Left = 350
        Top = 192
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_CODCED_PI'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 24
      end
      object DBEdit25: TDBEdit
        Left = 433
        Top = 193
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_CODCED_TAM'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 25
      end
      object DBEdit26: TDBEdit
        Left = 433
        Top = 211
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_CODCAR_TAM'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 26
      end
      object DBEdit27: TDBEdit
        Left = 350
        Top = 210
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_CODCAR_PI'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 27
      end
      object DBEdit28: TDBEdit
        Left = 350
        Top = 228
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_NUMNF_PI'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 28
      end
      object DBEdit29: TDBEdit
        Left = 433
        Top = 229
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_NUMNF_TAM'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 29
      end
      object DBEdit30: TDBEdit
        Left = 350
        Top = 246
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_MESREF_PI'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 30
      end
      object DBEdit31: TDBEdit
        Left = 433
        Top = 247
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_MESREF_TAM'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 31
      end
      object DBEdit32: TDBEdit
        Left = 350
        Top = 264
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_ANOREF_PI'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 32
      end
      object DBEdit33: TDBEdit
        Left = 433
        Top = 265
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_ANOREF_TAM'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 33
      end
      object DBEdit34: TDBEdit
        Left = 350
        Top = 282
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_NUMDIV_PI'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 34
      end
      object DBEdit35: TDBEdit
        Left = 433
        Top = 283
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'PD_NUMDIV_TAM'
        DataSource = DM4.Src_PosDoc
        ParentCtl3D = False
        TabOrder = 35
      end
      object bb_Padrao: TBitBtn
        Left = 2
        Top = 310
        Width = 209
        Height = 25
        Caption = 'Restaurar Configura'#231#227'o Padr'#227'o'
        TabOrder = 36
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000000
          055557777777777775F508888888888880557F5FFFFFFFFFF75F080000000000
          88057577777777775F755080FFFFFF05088057F7FFFFFF7575F70000000000F0
          F08077777777775757F70FFFFFFFFF0F008075F5FF5FF57577F750F00F00FFF0
          F08057F775775557F7F750FFFFFFFFF0F08057FF5555555757F7000FFFFFFFFF
          0000777FF5FFFFF577770900F00000F000907F775777775777F7090FFFFFFFFF
          00907F7F555555557757000FFFFFFFFF0F00777F5FFF5FF57F77550F000F00FF
          0F05557F777577557F7F550FFFFFFFFF0005557F555FFFFF7775550FFF000000
          05555575FF777777755555500055555555555557775555555555}
        NumGlyphs = 2
      end
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 340
        Width = 520
        Height = 25
        DataSource = DM4.Src_PosDoc
        Align = alBottom
        TabOrder = 37
      end
    end
  end
end

object Frm_Cac: TFrm_Cac
  Left = 19
  Top = 216
  Width = 785
  Height = 375
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Relatorio de Acessos do sistema'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 777
    Height = 51
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 113
      Height = 13
      Caption = 'C'#243'digo do Usu'#225'rio.:'
    end
    object SpeedButton1: TSpeedButton
      Left = 193
      Top = 6
      Width = 23
      Height = 20
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
    object Label2: TLabel
      Left = 18
      Top = 32
      Width = 66
      Height = 13
      Caption = 'Periodo de:'
    end
    object Label3: TLabel
      Left = 220
      Top = 31
      Width = 8
      Height = 13
      Caption = 'a'
    end
    object MCODUSR: TEdit
      Left = 133
      Top = 7
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnEnter = MCODUSREnter
      OnExit = MCODUSRExit
      OnKeyPress = MCODUSRKeyPress
    end
    object NOMUSR: TEdit
      Left = 218
      Top = 7
      Width = 250
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 1
      Text = 'Todos...'
    end
    object MDT1: TMaskEdit
      Left = 133
      Top = 27
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 2
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 237
      Top = 27
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 3
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 51
    Width = 777
    Height = 249
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 775
      Height = 247
      Align = alClient
      DataSource = DM1.Src_Cac
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'CANOMUSR'
          Width = 178
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'inicio'
          Width = 178
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fim'
          Width = 166
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'duracao'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CATERM'
          Title.Caption = 'Login/usuario do terminal'
          Width = 156
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 300
    Width = 777
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 96
      Top = 7
      Width = 100
      Height = 25
      Caption = '&Pesquisar'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        033333FFFF77777773F330000077777770333777773FFFFFF733077777000000
        03337F3F3F777777733F0797A770003333007F737337773F3377077777778803
        30807F333333337FF73707888887880007707F3FFFF333777F37070000878807
        07807F777733337F7F3707888887880808807F333333337F7F37077777778800
        08807F333FFF337773F7088800088803308073FF777FFF733737300008000033
        33003777737777333377333080333333333333F7373333333333300803333333
        33333773733333333333088033333333333373F7F33333333333308033333333
        3333373733333333333333033333333333333373333333333333}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 332
      Top = 7
      Width = 100
      Height = 25
      Caption = 'Imprimir'
      Enabled = False
      TabOrder = 1
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
      Left = 576
      Top = 7
      Width = 100
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
end

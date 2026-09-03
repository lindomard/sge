object Frm_NumNf: TFrm_NumNf
  Left = 192
  Top = 135
  Width = 453
  Height = 177
  Caption = 'Manipulando o N'#250'mero da Nota Fiscal'
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
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 445
    Height = 143
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 180
      Height = 13
      Caption = 'S'#233'rie da Nota Fiscal...............:'
    end
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 182
      Height = 13
      Caption = 'Sub-S'#233'rie da Nota Fiscal.........:'
    end
    object Label3: TLabel
      Left = 8
      Top = 56
      Width = 184
      Height = 13
      Caption = 'Modelo da Nota Fiscal.............:'
    end
    object Label4: TLabel
      Left = 10
      Top = 79
      Width = 184
      Height = 13
      Caption = 'N'#250'mero da Nota a Ser Emitida..:'
    end
    object SERIE: TEdit
      Left = 200
      Top = 8
      Width = 121
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 0
    end
    object SUBSERIE: TEdit
      Left = 200
      Top = 30
      Width = 121
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 1
    end
    object MODELO: TEdit
      Left = 200
      Top = 52
      Width = 121
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 2
    end
    object NUMNF: TEdit
      Left = 200
      Top = 75
      Width = 121
      Height = 21
      TabOrder = 3
      OnKeyPress = NUMNFKeyPress
    end
    object BitBtn1: TBitBtn
      Left = 24
      Top = 120
      Width = 150
      Height = 25
      Caption = '&Confirmar e Sair'
      TabOrder = 4
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F777773FF333333008F88800
        33333337733333773F33330FFF8F888F033333733333333373F330DEFFF8F8FE
        D03337F33333333337F330DDEFFFFFEDD0333733333FFF33373F0BBFDE000EDF
        BB037F33337773F3337F0AABB08880BBAA037F3337F3F7F3337F0EEAA08080AA
        EE037F3337F737F3337F0AABB08880BBAA037F33373FF733337F0BBFDE000EDB
        BB0373F333777333337330DDEFFFFFEDD03337F33333333337F330DEF8F8FFFE
        D033373F333333333733330FFF8F8FFF03333373FF33333F733333300FF8F800
        3333333773FFFF77333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 216
      Top = 121
      Width = 150
      Height = 25
      Caption = 'Cancelar e &Sair'
      TabOrder = 5
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
end

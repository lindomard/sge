object Frm_Rest: TFrm_Rest
  Left = 146
  Top = 177
  Width = 544
  Height = 277
  BorderIcons = [biSystemMenu]
  Caption = 'Restaurar Backups'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 528
    Height = 198
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 31
      Width = 91
      Height = 13
      Caption = 'Usu'#225'rio Origem:'
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 58
      Width = 526
      Height = 41
      Align = alBottom
      Caption = 'Arquivo Selecionado para Restaura'#231#227'o:'
      TabOrder = 0
      object NOMARQ: TEdit
        Left = 3
        Top = 15
        Width = 527
        Height = 21
        Enabled = False
        TabOrder = 0
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 99
      Width = 526
      Height = 79
      Align = alBottom
      Caption = 'Restaura'#231#227'o em Andamento Aguarde...'
      TabOrder = 1
      Visible = False
      object Animate1: TAnimate
        Left = 2
        Top = 15
        Width = 522
        Height = 62
        Align = alClient
        CommonAVI = aviRecycleFile
        StopFrame = 23
      end
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 178
      Width = 526
      Height = 19
      Panels = <>
    end
    object CB_COPSEG: TCheckBox
      Left = 6
      Top = 8
      Width = 387
      Height = 17
      Caption = 'Antes de Restaurar Fazer uma Copia de Seguranca'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object USRORI: TEdit
      Left = 101
      Top = 25
      Width = 428
      Height = 21
      TabOrder = 4
      Text = 'SGE'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 198
    Width = 528
    Height = 41
    Align = alBottom
    TabOrder = 1
    object bbRestaurar: TBitBtn
      Left = 192
      Top = 0
      Width = 145
      Height = 41
      Caption = 'Restaurar'
      TabOrder = 0
      OnClick = bbRestaurarClick
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
    object BitBtn2: TBitBtn
      Left = 392
      Top = 0
      Width = 145
      Height = 41
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
    object bbProcurar: TBitBtn
      Left = 4
      Top = 0
      Width = 145
      Height = 41
      Caption = '&Procurar Arquivos'
      TabOrder = 2
      OnClick = bbProcurarClick
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
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.ZIP'
    Filter = '*.ZIP|*.zip'
    Left = 480
    Top = 8
  end
  object Query1: TQuery
    DatabaseName = 'AAA'
    Left = 448
    Top = 8
  end
  object Database1: TDatabase
    AliasName = 'SGE'
    DatabaseName = 'AAA'
    KeepConnection = False
    LoginPrompt = False
    Params.Strings = (
      'SERVER NAME=SGE'
      'USER NAME=SYSTEM'
      'NET PROTOCOL=TNS'
      'OPEN MODE=READ/WRITE'
      'SCHEMA CACHE SIZE=8'
      'LANGDRIVER='
      'SQLQRYMODE='
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'SCHEMA CACHE TIME=-1'
      'MAX ROWS=-1'
      'BATCH COUNT=200'
      'ENABLE SCHEMA CACHE=FALSE'
      'SCHEMA CACHE DIR='
      'ENABLE BCD=FALSE'
      'ENABLE INTEGERS=FALSE'
      'LIST SYNONYMS=NONE'
      'ROWSET SIZE=20'
      'BLOBS TO CACHE=64'
      'BLOB SIZE=32'
      'OBJECT MODE=TRUE'
      'PASSWORD=MANAGER')
    SessionName = 'Default'
    Left = 392
  end
end

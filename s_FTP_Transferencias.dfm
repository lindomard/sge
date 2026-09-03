object Frm_FTP_Transferencias: TFrm_FTP_Transferencias
  Left = 192
  Top = 124
  Width = 928
  Height = 466
  Caption = 'Transferencia de Arquivos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 432
    Top = 224
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 96
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 910
      Height = 45
      Align = alTop
      Alignment = taCenter
      Caption = 'Transferencia de Arquivos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 96
      Top = 72
      Width = 75
      Height = 13
      Caption = 'Endere'#231'o IP:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape_Conectado: TShape
      Left = 497
      Top = 61
      Width = 43
      Height = 25
      Shape = stCircle
    end
    object Label5: TLabel
      Left = 312
      Top = 72
      Width = 41
      Height = 13
      Caption = 'Portas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BBnFechar: TBitBtn
      Left = 787
      Top = 47
      Width = 110
      Height = 30
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = BBnFecharClick
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
    object edt_ip_host: TEdit
      Left = 176
      Top = 68
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      Text = 'intersysnet.sytes.net'
    end
    object bbAbortar: TBitBtn
      Left = 573
      Top = 62
      Width = 170
      Height = 25
      Caption = 'Abortar Transferencia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Visible = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object edt_ftp_porta_com: TEdit
      Left = 387
      Top = 67
      Width = 36
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      Text = '2121'
    end
    object edt_ftp_porta_data: TEdit
      Left = 423
      Top = 67
      Width = 36
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      Text = '2020'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 96
    Width = 912
    Height = 233
    Align = alTop
    TabOrder = 1
    object sbSalvarPadrao: TSpeedButton
      Left = 22
      Top = 9
      Width = 219
      Height = 30
      Caption = 'Enviar Arquivo'
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
      OnClick = sbSalvarPadraoClick
    end
    object sbn_receber: TSpeedButton
      Left = 558
      Top = 9
      Width = 219
      Height = 30
      Caption = 'Receber Arquivo'
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
      OnClick = sbn_receberClick
    end
    object sbn_mostrar: TSpeedButton
      Left = 286
      Top = 9
      Width = 219
      Height = 30
      Caption = 'Mostrar Arquivos'
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
      OnClick = sbn_mostrarClick
    end
    object Label6: TLabel
      Left = 604
      Top = 115
      Width = 50
      Height = 13
      Caption = 'change dir'
    end
    object Label7: TLabel
      Left = 603
      Top = 137
      Width = 39
      Height = 13
      Caption = 'file from:'
    end
    object Label8: TLabel
      Left = 603
      Top = 160
      Width = 27
      Height = 13
      Caption = 'filtros:'
    end
    object edt_changedir: TEdit
      Left = 664
      Top = 112
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edt_filefrom: TEdit
      Left = 663
      Top = 134
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edt_filtros: TEdit
      Left = 663
      Top = 157
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object gb_arquivos_encontrados: TGroupBox
      Left = 8
      Top = 56
      Width = 537
      Height = 169
      Caption = 'Arquivos Encontrados:'
      TabOrder = 3
      object memo_encontrados: TMemo
        Left = 2
        Top = 15
        Width = 533
        Height = 152
        Align = alClient
        Lines.Strings = (
          'memo_encontrados')
        TabOrder = 0
      end
    end
  end
  object panel_download: TPanel
    Left = 0
    Top = 351
    Width = 912
    Height = 76
    Align = alBottom
    TabOrder = 2
    object Label4: TLabel
      Left = 1
      Top = 26
      Width = 910
      Height = 23
      Align = alBottom
      Alignment = taCenter
      Caption = 'Progresso do download dos arquivos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_duracao: TLabel
      Left = 1
      Top = 1
      Width = 910
      Height = 13
      Align = alTop
      Alignment = taCenter
    end
    object pgb_copia: TProgressBar
      Left = 1
      Top = 49
      Width = 910
      Height = 26
      Align = alBottom
      TabOrder = 0
    end
  end
  object opd1: TOpenDialog
    Left = 256
    Top = 288
  end
  object IdFTP1: TIdFTP
    MaxLineAction = maException
    ReadTimeout = 0
    OnDisconnected = IdFTP1Disconnected
    OnConnected = IdFTP1Connected
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 360
    Top = 272
  end
  object Timer_aborto: TTimer
    Enabled = False
    Left = 640
  end
  object SaveDialog1: TSaveDialog
    Left = 288
    Top = 280
  end
end

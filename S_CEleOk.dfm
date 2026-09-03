object Frm_CEleOK: TFrm_CEleOK
  Left = 312
  Top = 88
  Width = 736
  Height = 475
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Resumo da Conferencia Eletronica'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 397
    Width = 728
    Height = 47
    Align = alBottom
    TabOrder = 0
    object bbFechar: TBitBtn
      Left = 225
      Top = 5
      Width = 250
      Height = 38
      Caption = '&Fechar Esta Janela'
      TabOrder = 0
      OnClick = bbFecharClick
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
  object panel_div: TPanel
    Left = 0
    Top = 0
    Width = 728
    Height = 60
    Align = alTop
    TabOrder = 1
    object Label5: TLabel
      Left = 1
      Top = 1
      Width = 726
      Height = 57
      Align = alTop
      Alignment = taCenter
      Caption = 'Confer'#234'ncia Ok!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -50
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
  end
  object gb_dadosnf: TGroupBox
    Left = 0
    Top = 139
    Width = 728
    Height = 258
    Align = alClient
    Caption = 'Dados da Nota Fiscal:'
    TabOrder = 2
    object Label33: TLabel
      Left = 5
      Top = 34
      Width = 117
      Height = 13
      Caption = 'C'#243'd.Transportadora:'
    end
    object Label34: TLabel
      Left = 20
      Top = 55
      Width = 101
      Height = 13
      Caption = 'Placa do Veiculo:'
    end
    object Label35: TLabel
      Left = 235
      Top = 55
      Width = 21
      Height = 13
      Caption = 'UF:'
    end
    object Label36: TLabel
      Left = 24
      Top = 18
      Width = 98
      Height = 13
      Caption = 'Qtd. de Volumes:'
    end
    object Label37: TLabel
      Left = 208
      Top = 17
      Width = 50
      Height = 13
      Caption = 'Especie:'
    end
    object Label38: TLabel
      Left = 340
      Top = 16
      Width = 67
      Height = 13
      Caption = 'Peso Bruto:'
    end
    object Label39: TLabel
      Left = 491
      Top = 15
      Width = 78
      Height = 13
      Caption = 'Peso Liquido:'
    end
    object Label1: TLabel
      Left = 11
      Top = 73
      Width = 108
      Height = 13
      Caption = 'Data da Sa'#237'da NF:'
    end
    object Label9: TLabel
      Left = 217
      Top = 71
      Width = 38
      Height = 13
      Caption = 'Horas:'
    end
    object Label43: TLabel
      Left = 36
      Top = 129
      Width = 82
      Height = 13
      Caption = 'Embalado por:'
    end
    object Label42: TLabel
      Left = 37
      Top = 109
      Width = 81
      Height = 13
      Caption = 'Conferido por:'
    end
    object Label41: TLabel
      Left = 37
      Top = 90
      Width = 81
      Height = 13
      Caption = 'Separado por:'
    end
    object Label11: TLabel
      Left = 39
      Top = 167
      Width = 79
      Height = 13
      Caption = 'Total Liquido:'
    end
    object Label12: TLabel
      Left = 243
      Top = 165
      Width = 85
      Height = 13
      Caption = 'Valor do Frete:'
    end
    object Label13: TLabel
      Left = 426
      Top = 165
      Width = 94
      Height = 13
      Caption = 'Total com Frete:'
    end
    object Label14: TLabel
      Left = 37
      Top = 147
      Width = 81
      Height = 13
      Caption = 'Tipo do Frete:'
    end
    object CODTRA: TEdit
      Left = 124
      Top = 33
      Width = 73
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnChange = QTDVOLChange
      OnExit = CODTRAExit
      OnKeyPress = CODTRAKeyPress
    end
    object NOMTRA: TEdit
      Left = 196
      Top = 33
      Width = 287
      Height = 19
      Color = 16754899
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 5
    end
    object PLACAV: TEdit
      Left = 124
      Top = 51
      Width = 73
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      OnChange = QTDVOLChange
      OnExit = PLACAVExit
    end
    object UFPV: TEdit
      Left = 261
      Top = 51
      Width = 73
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      OnChange = QTDVOLChange
      OnExit = UFPVExit
    end
    object QTDVOL: TEdit
      Left = 124
      Top = 15
      Width = 73
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnChange = QTDVOLChange
      OnExit = QTDVOLExit
    end
    object ESPECIE: TEdit
      Left = 261
      Top = 15
      Width = 73
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnChange = QTDVOLChange
      OnExit = ESPECIEExit
    end
    object PESOB: TEdit
      Left = 410
      Top = 15
      Width = 73
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnChange = QTDVOLChange
      OnExit = PESOBExit
    end
    object PESOL: TEdit
      Left = 571
      Top = 13
      Width = 73
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnChange = QTDVOLChange
      OnExit = PESOLExit
    end
    object PREVENT: TMaskEdit
      Left = 124
      Top = 69
      Width = 73
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 8
      Text = '  /  /    '
      OnChange = QTDVOLChange
      OnExit = PREVENTExit
    end
    object HPREVENT: TMaskEdit
      Left = 261
      Top = 69
      Width = 73
      Height = 19
      Ctl3D = False
      EditMask = '!00:00:00;1; '
      MaxLength = 8
      ParentCtl3D = False
      TabOrder = 9
      Text = '  :  :  '
      OnChange = QTDVOLChange
      OnExit = HPREVENTExit
    end
    object CODEMB: TEdit
      Left = 124
      Top = 123
      Width = 73
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 18
      OnChange = QTDVOLChange
      OnExit = CODEMBExit
      OnKeyPress = CODEMBKeyPress
    end
    object NOMEMB: TEdit
      Left = 196
      Top = 123
      Width = 292
      Height = 19
      Color = 16754899
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 19
    end
    object DATEMB: TMaskEdit
      Left = 487
      Top = 123
      Width = 77
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 20
      Text = '  /  /    '
      OnChange = QTDVOLChange
      OnExit = DATEMBExit
    end
    object HOREMB: TMaskEdit
      Left = 563
      Top = 123
      Width = 76
      Height = 19
      Ctl3D = False
      EditMask = '!00:00:00;1; '
      MaxLength = 8
      ParentCtl3D = False
      TabOrder = 21
      Text = '  :  :  '
      OnChange = QTDVOLChange
      OnExit = HOREMBExit
    end
    object BBEMITENF: TBitBtn
      Left = 603
      Top = 207
      Width = 113
      Height = 42
      Cursor = crHandPoint
      Hint = 'Click aqui para Emitir as Notas Fiscais'
      Caption = 'Emitir &Nota '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 29
      OnClick = BBEMITENFClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbEmitirRot: TBitBtn
      Left = 252
      Top = 209
      Width = 113
      Height = 42
      Cursor = crHandPoint
      Hint = 
        'Click aqui para Emitir os Rotulos'#13#10'(Etiquetas de Volumes) p/Emba' +
        'lagem'
      Caption = 'Emitir &Rotulo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 27
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBGRAVAR: TBitBtn
      Left = 8
      Top = 208
      Width = 113
      Height = 42
      Cursor = crHandPoint
      Hint = 'Gravar pedido que esta sendo editado'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 26
      OnClick = BBGRAVARClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object CODCON: TEdit
      Left = 124
      Top = 105
      Width = 73
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 14
      OnChange = QTDVOLChange
      OnExit = CODCONExit
      OnKeyPress = CODCONKeyPress
    end
    object NOMCON: TEdit
      Left = 196
      Top = 105
      Width = 292
      Height = 19
      Color = 16754899
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 17
    end
    object DATCON: TMaskEdit
      Left = 487
      Top = 105
      Width = 78
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 15
      Text = '  /  /    '
      OnChange = QTDVOLChange
      OnExit = DATCONExit
    end
    object HORCON: TMaskEdit
      Left = 563
      Top = 105
      Width = 76
      Height = 19
      Ctl3D = False
      EditMask = '!00:00:00;1; '
      MaxLength = 8
      ParentCtl3D = False
      TabOrder = 16
      Text = '  :  :  '
      OnChange = QTDVOLChange
      OnExit = HORCONExit
    end
    object CODSEP: TEdit
      Left = 124
      Top = 87
      Width = 73
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 10
      OnExit = CODSEPExit
      OnKeyPress = CODSEPKeyPress
    end
    object NOMSEP: TEdit
      Left = 196
      Top = 87
      Width = 292
      Height = 19
      Color = 16754899
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 11
    end
    object DATSEP: TMaskEdit
      Left = 487
      Top = 87
      Width = 77
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 12
      Text = '  /  /    '
      OnExit = DATSEPExit
    end
    object HORSEP: TMaskEdit
      Left = 563
      Top = 87
      Width = 76
      Height = 19
      Ctl3D = False
      EditMask = '!00:00:00;1; '
      MaxLength = 8
      ParentCtl3D = False
      TabOrder = 13
      Text = '  :  :  '
      OnExit = HORSEPExit
    end
    object bbPreFat: TBitBtn
      Left = 487
      Top = 207
      Width = 113
      Height = 42
      Cursor = crHandPoint
      Hint = 'Click aqui para Emitir as Notas Fiscais'
      Caption = 'Emitir &Pre-Fatura'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 28
      Visible = False
      OnClick = bbPreFatClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object edt_totliq: TEdit
      Left = 124
      Top = 164
      Width = 109
      Height = 19
      Color = 16754899
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 22
    end
    object edt_totliq_com_frete: TEdit
      Left = 532
      Top = 163
      Width = 109
      Height = 19
      Color = 16754899
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 23
    end
    object edt_valor_frete: TEdit
      Left = 328
      Top = 163
      Width = 89
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 24
      OnExit = edt_valor_freteExit
    end
    object cb_tipo_frete: TComboBox
      Left = 124
      Top = 141
      Width = 517
      Height = 21
      ItemHeight = 13
      TabOrder = 25
      Text = '0-Contrata'#231#227'o do Frete por conta do Remetente (CIF);'
      Items.Strings = (
        '0 - Contrata'#231#227'o do Frete por conta do Remetente (CIF);'
        '1 - Contrata'#231#227'o do Frete por conta do Destinat'#225'rio (FOB);'
        '2 - Contrata'#231#227'o do Frete por conta de Terceiros;'
        '3 - Transporte Pr'#243'prio por conta do Remetente;'
        '4 - Transporte Pr'#243'prio por conta do Destinat'#225'rio;'
        '9 - Sem Ocorr'#234'ncia de Transporte'
        '')
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 60
    Width = 728
    Height = 79
    Align = alTop
    Caption = 'Dados do Pedido:'
    TabOrder = 3
    object Label2: TLabel
      Left = 12
      Top = 17
      Width = 113
      Height = 13
      Caption = 'N'#250'mero do Pedido.:'
    end
    object Label3: TLabel
      Left = 221
      Top = 19
      Width = 93
      Height = 13
      Caption = 'Data do Pedido:'
    end
    object Label4: TLabel
      Left = 446
      Top = 17
      Width = 111
      Height = 13
      Caption = 'Valor do Pedido....:'
    end
    object Label6: TLabel
      Left = 43
      Top = 37
      Width = 80
      Height = 13
      Caption = 'Raz'#227'o Social:'
    end
    object Label7: TLabel
      Left = 390
      Top = 35
      Width = 53
      Height = 13
      Caption = 'Fantasia:'
    end
    object Label8: TLabel
      Left = 62
      Top = 52
      Width = 59
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object Label10: TLabel
      Left = 405
      Top = 54
      Width = 38
      Height = 13
      Caption = 'Bairro:'
    end
    object CHAVE: TEdit
      Left = 127
      Top = 16
      Width = 66
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object DATAP: TEdit
      Left = 321
      Top = 16
      Width = 66
      Height = 19
      Color = 16777202
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object VALOR: TEdit
      Left = 636
      Top = 17
      Width = 69
      Height = 19
      Color = 16777202
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object razsoc: TEdit
      Left = 127
      Top = 34
      Width = 260
      Height = 19
      Color = 16777202
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 3
    end
    object fantasia: TEdit
      Left = 445
      Top = 35
      Width = 260
      Height = 19
      Color = 16777202
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 4
    end
    object endereco: TEdit
      Left = 127
      Top = 52
      Width = 260
      Height = 19
      Color = 16777202
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 5
    end
    object bairro: TEdit
      Left = 445
      Top = 53
      Width = 260
      Height = 19
      Color = 16777202
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 6
    end
  end
end

object Frm_Apur: TFrm_Apur
  Left = 302
  Top = 101
  Width = 549
  Height = 518
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Registro de Apura'#231#227'o de ICMS'
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 541
    Height = 487
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label5: TLabel
      Left = 201
      Top = 213
      Width = 148
      Height = 25
      Caption = 'Valores Diversos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 149
      Top = 58
      Width = 89
      Height = 13
      Caption = 'Total de P'#225'ginas..:'
    end
    object Label13: TLabel
      Left = 397
      Top = 35
      Width = 68
      Height = 13
      Caption = 'P'#225'gina inicial.:'
    end
    object Label4: TLabel
      Left = 275
      Top = 35
      Width = 48
      Height = 13
      Caption = 'Emiss'#227'o..:'
    end
    object Label3: TLabel
      Left = 13
      Top = 35
      Width = 183
      Height = 13
      Caption = 'Dados do livro................>>> N'#250'mero..:'
    end
    object Label1: TLabel
      Left = 11
      Top = 13
      Width = 184
      Height = 13
      Caption = 'Per'#237'odo sa'#237'da/entrada...>>> Inicial.....:'
    end
    object Label2: TLabel
      Left = 291
      Top = 14
      Width = 46
      Height = 13
      Caption = 'Final.......:'
    end
    object Bevel1: TBevel
      Left = -3
      Top = 208
      Width = 544
      Height = 2
    end
    object Label11: TLabel
      Left = 277
      Top = 58
      Width = 150
      Height = 13
      Caption = 'Data Termo de Abertura...........:'
    end
    object Label12: TLabel
      Left = 277
      Top = 81
      Width = 149
      Height = 13
      Caption = 'Data Termo de Encerramento..:'
    end
    object Label15: TLabel
      Left = 13
      Top = 59
      Width = 134
      Height = 13
      Caption = 'Termos...........................>>>'
    end
    object Bevel2: TBevel
      Left = -4
      Top = 411
      Width = 544
      Height = 2
    end
    object Label6: TLabel
      Left = 399
      Top = 103
      Width = 26
      Height = 13
      Caption = 'Nota:'
    end
    object Label7: TLabel
      Left = 69
      Top = 419
      Width = 48
      Height = 13
      Caption = 'Protocolo:'
    end
    object mval002: TEdit
      Left = 336
      Top = 240
      Width = 121
      Height = 19
      BiDiMode = bdRightToLeft
      Ctl3D = False
      ParentBiDiMode = False
      ParentCtl3D = False
      TabOrder = 9
      Text = '0,00'
      OnKeyPress = mval002KeyPress
    end
    object mval003: TEdit
      Left = 336
      Top = 258
      Width = 121
      Height = 19
      BiDiMode = bdRightToLeft
      Ctl3D = False
      ParentBiDiMode = False
      ParentCtl3D = False
      TabOrder = 10
      Text = '0,00'
      OnKeyPress = mval002KeyPress
    end
    object mval006: TEdit
      Left = 336
      Top = 276
      Width = 121
      Height = 19
      BiDiMode = bdRightToLeft
      Ctl3D = False
      ParentBiDiMode = False
      ParentCtl3D = False
      TabOrder = 11
      Text = '0,00'
      OnKeyPress = mval002KeyPress
    end
    object mvobs0061: TEdit
      Left = 336
      Top = 294
      Width = 121
      Height = 19
      BiDiMode = bdRightToLeft
      Ctl3D = False
      ParentBiDiMode = False
      ParentCtl3D = False
      TabOrder = 13
      Text = '0,00'
      OnKeyPress = mval002KeyPress
    end
    object mvobs0062: TEdit
      Left = 336
      Top = 312
      Width = 121
      Height = 19
      BiDiMode = bdRightToLeft
      Ctl3D = False
      ParentBiDiMode = False
      ParentCtl3D = False
      TabOrder = 15
      Text = '0,00'
      OnKeyPress = mval002KeyPress
    end
    object mvobs0063: TEdit
      Left = 336
      Top = 330
      Width = 121
      Height = 19
      BiDiMode = bdRightToLeft
      Ctl3D = False
      ParentBiDiMode = False
      ParentCtl3D = False
      TabOrder = 17
      Text = '0,00'
      OnKeyPress = mval002KeyPress
    end
    object mvobs0064: TEdit
      Left = 336
      Top = 348
      Width = 121
      Height = 19
      BiDiMode = bdRightToLeft
      Ctl3D = False
      ParentBiDiMode = False
      ParentCtl3D = False
      TabOrder = 19
      Text = '0,00'
      OnKeyPress = mval002KeyPress
    end
    object mval007: TEdit
      Left = 336
      Top = 366
      Width = 121
      Height = 19
      BiDiMode = bdRightToLeft
      Ctl3D = False
      ParentBiDiMode = False
      ParentCtl3D = False
      TabOrder = 20
      Text = '0,00'
      OnKeyPress = mval002KeyPress
    end
    object mval009: TEdit
      Left = 336
      Top = 384
      Width = 121
      Height = 19
      BiDiMode = bdRightToLeft
      Ctl3D = False
      ParentBiDiMode = False
      ParentCtl3D = False
      TabOrder = 21
      Text = '0,00'
      OnKeyPress = mval002KeyPress
    end
    object mobs0064: TEdit
      Left = 46
      Top = 348
      Width = 289
      Height = 19
      Ctl3D = False
      MaxLength = 50
      ParentCtl3D = False
      TabOrder = 18
    end
    object mobs0063: TEdit
      Left = 46
      Top = 330
      Width = 289
      Height = 19
      Ctl3D = False
      MaxLength = 50
      ParentCtl3D = False
      TabOrder = 16
    end
    object mobs0062: TEdit
      Left = 46
      Top = 312
      Width = 289
      Height = 19
      Ctl3D = False
      MaxLength = 50
      ParentCtl3D = False
      TabOrder = 14
    end
    object mobs0061: TEdit
      Left = 46
      Top = 294
      Width = 289
      Height = 19
      Ctl3D = False
      MaxLength = 50
      ParentCtl3D = False
      TabOrder = 12
    end
    object TPGTERM: TEdit
      Left = 240
      Top = 55
      Width = 30
      Height = 19
      Ctl3D = False
      MaxLength = 3
      ParentCtl3D = False
      TabOrder = 6
      Text = '  0'
    end
    object PGI: TEdit
      Left = 466
      Top = 32
      Width = 30
      Height = 19
      Ctl3D = False
      MaxLength = 3
      ParentCtl3D = False
      TabOrder = 4
      Text = '001'
    end
    object MDTE: TMaskEdit
      Left = 324
      Top = 32
      Width = 68
      Height = 19
      Ctl3D = False
      EditMask = '99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 3
      Text = '  /  /    '
    end
    object LN: TEdit
      Left = 199
      Top = 32
      Width = 63
      Height = 19
      BiDiMode = bdLeftToRight
      Ctl3D = False
      MaxLength = 6
      ParentBiDiMode = False
      ParentCtl3D = False
      TabOrder = 2
      Text = '1'
    end
    object BitBtn4: TBitBtn
      Left = 47
      Top = 436
      Width = 150
      Height = 35
      Caption = '&Imprimir'
      TabOrder = 22
      OnClick = BitBtn4Click
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
      Left = 309
      Top = 438
      Width = 150
      Height = 35
      Caption = '&Fechar'
      TabOrder = 23
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
    object MTERMOS: TCheckBox
      Left = 75
      Top = 58
      Width = 47
      Height = 17
      Caption = 'Emitir'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object DTTERM1: TMaskEdit
      Left = 429
      Top = 55
      Width = 68
      Height = 19
      Ctl3D = False
      EditMask = '99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 7
      Text = '  /  /    '
    end
    object DTTERM2: TMaskEdit
      Left = 429
      Top = 78
      Width = 68
      Height = 19
      Ctl3D = False
      EditMask = '99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 8
      Text = '  /  /    '
    end
    object Edit1: TEdit
      Left = 46
      Top = 240
      Width = 289
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 24
      Text = '002 - Outros D'#233'bitos'
    end
    object Edit2: TEdit
      Left = 46
      Top = 258
      Width = 289
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 25
      Text = '003 - Estorno de Cr'#233'ditos'
    end
    object Edit3: TEdit
      Left = 46
      Top = 276
      Width = 289
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 26
      Text = '006 - Outros Cr'#233'ditos'
    end
    object Edit4: TEdit
      Left = 46
      Top = 366
      Width = 289
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 27
      Text = '007 - Estorno de D'#233'bitos'
    end
    object Edit5: TEdit
      Left = 46
      Top = 384
      Width = 289
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 28
      Text = '009 - Saldo Credor do Per'#237'odo Anterior'
    end
    object NUMNF: TEdit
      Left = 429
      Top = 100
      Width = 68
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 29
    end
    object CB_IPIICMS: TCheckBox
      Left = 322
      Top = 418
      Width = 209
      Height = 17
      Caption = 'Inv'#233's de IPI Escrever ICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 30
      Visible = False
    end
    object CB_USACUPOM: TCheckBox
      Left = 316
      Top = 189
      Width = 141
      Height = 18
      Caption = 'Usar Tabela de Cupom'
      TabOrder = 31
      Visible = False
    end
    object MDT1: TDateEdit
      Left = 198
      Top = 11
      Width = 83
      Height = 19
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 0
      OnExit = MDT1Exit
    end
    object MDT2: TDateEdit
      Left = 325
      Top = 11
      Width = 92
      Height = 19
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 1
      OnExit = MDT2Exit
    end
    object RG_DOC: TRadioGroup
      Left = 24
      Top = 86
      Width = 153
      Height = 75
      Hint = 'Tipo de Documentos Pode ser '#13#10'Notas e/ou Cupom Fiscal'
      Caption = 'Documentos:'
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        '&Todos'
        '&Notas Fiscais'
        '&Cupom Fiscal'
        'NFCE')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 32
    end
    object RGTNF: TRadioGroup
      Left = 28
      Top = 168
      Width = 197
      Height = 33
      Hint = 'Filtra Somente Notas '#13#10'de Entradas e/ou deSaidas'
      Caption = 'Tipo de Notas:'
      Columns = 3
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        '&Geral'
        '&Sa'#237'das'
        '&Entradas')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 33
    end
    object rg_oper: TRadioGroup
      Left = 191
      Top = 104
      Width = 182
      Height = 57
      Hint = 'Tipo da Opera'#231#227'o Pode Ser '#13#10'Estaduais e/ou Interestaduais'
      Caption = 'Tipo de Opera'#231#227'o:'
      Ctl3D = False
      ItemIndex = 2
      Items.Strings = (
        'Estaduais'
        'Interestaduais'
        'Ambas')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 34
    end
    object RG_NFCANC: TRadioGroup
      Left = 397
      Top = 123
      Width = 99
      Height = 63
      Caption = 'Listar Notas:'
      Ctl3D = False
      ItemIndex = 1
      Items.Strings = (
        'Todas'
        'Normais'
        'Canceladas'
        'Inutilizadas'
        'Denegadas')
      ParentCtl3D = False
      TabOrder = 35
    end
    object cb_protocolo: TComboBox
      Left = 140
      Top = 419
      Width = 145
      Height = 21
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 36
      Text = 'Todas'
      Items.Strings = (
        'Com Protocolo'
        'Sem Protocolo'
        'Todas')
    end
  end
end

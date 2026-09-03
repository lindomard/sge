object Frm_SitCre: TFrm_SitCre
  Left = 76
  Top = 70
  Width = 805
  Height = 597
  Caption = 'Situa'#231#227'o de Cr'#233'ditos do Cliente'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 122
    Width = 797
    Height = 347
    Align = alTop
    BiDiMode = bdLeftToRight
    Color = clWhite
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Valped: TLabel
      Left = 586
      Top = 101
      Width = 90
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = '[      0,00]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 483
      Top = 101
      Width = 81
      Height = 13
      Caption = '...................:'
    end
    object Label22: TLabel
      Left = 7
      Top = 151
      Width = 119
      Height = 13
      Caption = 'Data '#250'ltima Compra.:'
    end
    object lbl_dtucompra: TLabel
      Left = 126
      Top = 153
      Width = 134
      Height = 13
      AutoSize = False
      Color = 8454016
      ParentColor = False
    end
    object Label23: TLabel
      Left = 24
      Top = 169
      Width = 100
      Height = 13
      Caption = 'Primeira Compra.:'
    end
    object lbl_pcompra: TLabel
      Left = 126
      Top = 169
      Width = 134
      Height = 13
      AutoSize = False
      Color = 8454016
      ParentColor = False
    end
    object Label26: TLabel
      Left = 405
      Top = 153
      Width = 100
      Height = 13
      Caption = 'Limite de Cr'#233'dito:'
    end
    object lbl_lcred: TLabel
      Left = 510
      Top = 152
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Color = 8454016
      ParentColor = False
    end
    object Label34: TLabel
      Left = 599
      Top = 153
      Width = 64
      Height = 13
      Caption = 'Disponivel:'
    end
    object lbl_limdisp: TLabel
      Left = 682
      Top = 152
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Color = 8454016
      ParentColor = False
    end
    object Label35: TLabel
      Left = 405
      Top = 172
      Width = 82
      Height = 13
      Hint = 
        'Maior Compra Confirmada(N'#227'o Entra Or'#231'amento Nem Pedidos Pendente' +
        's)'
      Caption = 'Maior Compra:'
    end
    object lbl_vlrmaiorcompra: TLabel
      Left = 510
      Top = 170
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Color = 8454016
      ParentColor = False
    end
    object lbl_dtmaiorcompra: TLabel
      Left = 608
      Top = 170
      Width = 154
      Height = 13
      AutoSize = False
      Color = 8454016
      ParentColor = False
    end
    object lbl_medcompramen: TLabel
      Left = 683
      Top = 188
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Color = 8454016
      ParentColor = False
    end
    object Label37: TLabel
      Left = 405
      Top = 189
      Width = 244
      Height = 13
      Hint = 'M'#233'dia de Compra Mensal  Confirmada  '#13#10'dos Ultimos 12 Meses'
      Caption = 'M'#233'dia de Compra Mensal Ultimo 12 Meses:'
      ParentShowHint = False
      ShowHint = True
    end
    object lbl_tipcob: TLabel
      Left = 12
      Top = 189
      Width = 99
      Height = 13
      Caption = '100% em Carteira'
    end
    object lbl_vucompra: TLabel
      Left = 268
      Top = 153
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Color = 8454016
      ParentColor = False
    end
    object lbl_vpcompra: TLabel
      Left = 268
      Top = 170
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Color = 8454016
      ParentColor = False
    end
    object GroupBox6: TGroupBox
      Left = 8
      Top = 9
      Width = 366
      Height = 135
      Caption = 'Duplicatas:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object Label42: TLabel
        Left = 188
        Top = 88
        Width = 29
        Height = 13
        Caption = '......:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label38: TLabel
        Left = 188
        Top = 104
        Width = 29
        Height = 13
        Caption = '......:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 9
        Top = 13
        Width = 133
        Height = 13
        Caption = 'Duplicatas Vencidas....'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 137
        Top = 13
        Width = 81
        Height = 13
        Caption = '...................:'
      end
      object QtdDupV: TLabel
        Left = 220
        Top = 13
        Width = 42
        Height = 16
        Caption = '[0000]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object TotDupV: TLabel
        Left = 265
        Top = 13
        Width = 90
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = '[      0,00]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object TotDupA: TLabel
        Left = 265
        Top = 28
        Width = 90
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = '[      0,00]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object QtdDupA: TLabel
        Left = 220
        Top = 29
        Width = 42
        Height = 16
        Caption = '[0000]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LnTotDeb: TLabel
        Left = 124
        Top = 43
        Width = 48
        Height = 13
        Caption = '...............:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 9
        Top = 28
        Width = 136
        Height = 13
        Caption = 'Duplicatas a Vencer.....'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object QtdDup: TLabel
        Left = 220
        Top = 43
        Width = 42
        Height = 16
        Caption = '[0000]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object TotDup: TLabel
        Left = 265
        Top = 43
        Width = 90
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = '[      0,00]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 9
        Top = 58
        Width = 152
        Height = 13
        Caption = 'Duplicatas Pagas.............'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 152
        Top = 58
        Width = 65
        Height = 13
        Caption = '...............:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object QtdDupPag: TLabel
        Left = 220
        Top = 58
        Width = 42
        Height = 16
        Caption = '[0000]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object TotDupPag: TLabel
        Left = 265
        Top = 58
        Width = 90
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = '[      0,00]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 9
        Top = 43
        Width = 200
        Height = 13
        Caption = 'Total de Duplicatas(Em Abertas)....'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 136
        Top = 28
        Width = 81
        Height = 13
        Caption = '...................:'
      end
      object Label25: TLabel
        Left = 9
        Top = 73
        Width = 154
        Height = 13
        Caption = 'Atraso m'#225'ximo em aberto...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object AtrasoMax: TLabel
        Left = 265
        Top = 73
        Width = 90
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = '[    0 dias]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 159
        Top = 73
        Width = 57
        Height = 13
        Caption = '.............:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 199
        Top = 43
        Width = 17
        Height = 13
        Caption = '...:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label36: TLabel
        Left = 9
        Top = 103
        Width = 197
        Height = 13
        Caption = 'Quantidade de Pedidos Pendentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_qtdPedPen: TLabel
        Left = 220
        Top = 102
        Width = 42
        Height = 16
        Caption = '[0000]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object totPedPen: TLabel
        Left = 265
        Top = 103
        Width = 90
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = '[      0,00]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label33: TLabel
        Left = 9
        Top = 87
        Width = 195
        Height = 13
        Caption = 'Quantidade de Vales/Emprestimos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_qtdEmpPen: TLabel
        Left = 220
        Top = 86
        Width = 42
        Height = 16
        Caption = '[0000]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object totEmpPen: TLabel
        Left = 265
        Top = 87
        Width = 90
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = '[      0,00]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label27: TLabel
        Left = 9
        Top = 119
        Width = 204
        Height = 13
        Caption = 'Or'#231'amentos Pendentes..................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label32: TLabel
        Left = 160
        Top = 119
        Width = 57
        Height = 13
        Caption = '.............:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object QtdOrcPen: TLabel
        Left = 220
        Top = 117
        Width = 42
        Height = 16
        Caption = '[0000]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object TotOrcPen: TLabel
        Left = 266
        Top = 117
        Width = 90
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = '[      0,00]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox7: TGroupBox
      Left = 382
      Top = 9
      Width = 381
      Height = 135
      Caption = 'Cheques e Outros:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object Label13: TLabel
        Left = 5
        Top = 28
        Width = 207
        Height = 13
        Caption = 'Cheques Devolvidos  Em Aberto......'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 5
        Top = 13
        Width = 194
        Height = 13
        Caption = 'Cheques Pre-datados..................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object QtdChqP: TLabel
        Left = 245
        Top = 13
        Width = 42
        Height = 16
        Caption = '[0000]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object TotChqP: TLabel
        Left = 285
        Top = 13
        Width = 90
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = '[      0,00]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object TotChqD: TLabel
        Left = 285
        Top = 28
        Width = 90
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = '[      0,00]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object QtdChqD: TLabel
        Left = 245
        Top = 28
        Width = 42
        Height = 16
        Caption = '[0000]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 205
        Top = 28
        Width = 37
        Height = 13
        Caption = '........:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 185
        Top = 13
        Width = 57
        Height = 13
        Caption = '.............:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 5
        Top = 43
        Width = 192
        Height = 13
        Caption = 'Cheques Devolvidos Pagos.........'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 185
        Top = 43
        Width = 57
        Height = 13
        Caption = '.............:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object QtdChqdP: TLabel
        Left = 245
        Top = 43
        Width = 42
        Height = 16
        Caption = '[0000]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object TotchqDP: TLabel
        Left = 285
        Top = 43
        Width = 90
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = '[      0,00]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 5
        Top = 58
        Width = 206
        Height = 13
        Caption = 'Juros em Abertos...........................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 185
        Top = 58
        Width = 57
        Height = 13
        Caption = '.............:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object qtdjurab: TLabel
        Left = 245
        Top = 58
        Width = 42
        Height = 16
        Caption = '[0000]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object TotjurAb: TLabel
        Left = 285
        Top = 58
        Width = 90
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = '[      0,00]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 5
        Top = 73
        Width = 178
        Height = 13
        Caption = 'Juros Pagos...........................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label30: TLabel
        Left = 187
        Top = 73
        Width = 57
        Height = 13
        Caption = '.............:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object qtdjurpag: TLabel
        Left = 245
        Top = 73
        Width = 42
        Height = 16
        Caption = '[0000]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object TotJurPag: TLabel
        Left = 285
        Top = 73
        Width = 90
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = '[      0,00]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label31: TLabel
        Left = 7
        Top = 88
        Width = 236
        Height = 13
        Caption = 'Nota de Cr'#233'ditos Pendentes..................:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object QtdNC: TLabel
        Left = 246
        Top = 87
        Width = 42
        Height = 16
        Caption = '[0000]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object TotNC: TLabel
        Left = 286
        Top = 88
        Width = 90
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = '[      0,00]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label39: TLabel
        Left = 6
        Top = 103
        Width = 213
        Height = 13
        Caption = 'N'#250'mero de T'#237'tulos Protestados.........'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_qtdTitProt: TLabel
        Left = 246
        Top = 101
        Width = 42
        Height = 16
        Caption = '[0000]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label40: TLabel
        Left = 214
        Top = 103
        Width = 29
        Height = 13
        Caption = '......:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object totTitProt: TLabel
        Left = 287
        Top = 101
        Width = 90
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = '[      0,00]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 213
      Width = 793
      Height = 132
      Align = alBottom
      Color = clCaptionText
      TabOrder = 2
      object GroupBox2: TGroupBox
        Left = 1
        Top = 1
        Width = 387
        Height = 130
        Align = alLeft
        Caption = 'Oberva'#231#245'es:'
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        object lb_Sit: TLabel
          Left = 81
          Top = -1
          Width = 108
          Height = 13
          Caption = 'Cliente Bloqueado!'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Memo_obs: TMemo
          Left = 2
          Top = 15
          Width = 383
          Height = 113
          Align = alClient
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object gbObsCli: TGroupBox
        Left = 388
        Top = 1
        Width = 404
        Height = 130
        Align = alClient
        Caption = 'Oberva'#231#227'o do Cadastro do Cliente:'
        Color = clWhite
        ParentColor = False
        TabOrder = 1
        object Panel2: TPanel
          Left = 2
          Top = 105
          Width = 400
          Height = 23
          Align = alBottom
          TabOrder = 0
          object bbSalvar: TBitBtn
            Left = 19
            Top = 3
            Width = 313
            Height = 20
            Caption = 'Salvar no Cadastro do Cliente'
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
        end
        object obscli01: TEdit
          Left = 3
          Top = 15
          Width = 390
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          OnExit = obscli01Exit
          OnKeyPress = obscli01KeyPress
        end
        object obscli02: TEdit
          Left = 3
          Top = 33
          Width = 390
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnExit = obscli02Exit
          OnKeyPress = obscli02KeyPress
        end
        object obscli03: TEdit
          Left = 3
          Top = 51
          Width = 390
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          OnExit = obscli03Exit
          OnKeyPress = obscli03KeyPress
        end
        object obscli04: TEdit
          Left = 3
          Top = 69
          Width = 390
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          OnExit = obscli04Exit
          OnKeyPress = obscli04KeyPress
        end
        object obscli05: TEdit
          Left = 3
          Top = 87
          Width = 390
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          OnExit = obscli05Exit
          OnKeyPress = obscli05KeyPress
        end
      end
    end
  end
  object GroupBox5: TGroupBox
    Left = 0
    Top = 469
    Width = 797
    Height = 97
    Align = alClient
    Caption = 'Pedidos Pendentes:'
    TabOrder = 1
    object DBGrid3: TDBGrid
      Left = 2
      Top = 15
      Width = 793
      Height = 80
      Align = alClient
      DataSource = Src_Ped
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'P1CHAVE'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1CODVEN'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1TOTALL'
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1DATAP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tipoped'
          Visible = True
        end>
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 797
    Height = 97
    ActivePage = tsFiltros
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object tsFiltros: TTabSheet
      Caption = 'Filtros'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 789
        Height = 69
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label10: TLabel
          Left = 26
          Top = 8
          Width = 87
          Height = 13
          Caption = 'C'#243'digo Cliente:'
        end
        object Label17: TLabel
          Left = 9
          Top = 26
          Width = 102
          Height = 13
          Caption = 'C'#243'digo Vendedor:'
          Visible = False
        end
        object Label18: TLabel
          Left = 298
          Top = 25
          Width = 71
          Height = 13
          Caption = 'Televendas:'
          Visible = False
        end
        object Label19: TLabel
          Left = 36
          Top = 45
          Width = 68
          Height = 13
          Caption = 'Per'#237'odo de:'
          Visible = False
        end
        object Label20: TLabel
          Left = 299
          Top = 42
          Width = 8
          Height = 13
          Caption = #224
          Visible = False
        end
        object CODCLI: TEdit
          Left = 114
          Top = 5
          Width = 68
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnExit = CODCLIExit
          OnKeyPress = CODCLIKeyPress
        end
        object NOMCLI: TEdit
          Left = 181
          Top = 5
          Width = 472
          Height = 19
          TabStop = False
          Color = 14145495
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object NOMVEN: TEdit
          Left = 181
          Top = 23
          Width = 117
          Height = 19
          TabStop = False
          Color = 14145495
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
          Text = 'Todos...'
          Visible = False
        end
        object CODVEN: TEdit
          Left = 114
          Top = 23
          Width = 68
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          Visible = False
          OnExit = CODVENExit
          OnKeyPress = CODVENKeyPress
        end
        object CODTLV: TEdit
          Left = 369
          Top = 23
          Width = 40
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          Visible = False
          OnExit = CODTLVExit
          OnKeyPress = CODTLVKeyPress
        end
        object NOMTLV: TEdit
          Left = 407
          Top = 23
          Width = 246
          Height = 19
          TabStop = False
          Color = 14145495
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
          Text = 'Todos...'
          Visible = False
        end
        object BBAPLICAR: TBitBtn
          Left = 658
          Top = 3
          Width = 120
          Height = 25
          Caption = '&Aplicar'
          TabOrder = 8
          OnClick = BBAPLICARClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          NumGlyphs = 2
        end
        object BBIMPRIMIR: TBitBtn
          Left = 658
          Top = 27
          Width = 120
          Height = 25
          Caption = '&Imprimir'
          TabOrder = 9
          OnClick = BBIMPRIMIRClick
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
        object MDT1: TMaskEdit
          Left = 113
          Top = 41
          Width = 97
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 6
          Text = '  /  /    '
          Visible = False
          OnExit = MDT1Exit
        end
        object MDT2: TMaskEdit
          Left = 369
          Top = 41
          Width = 97
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 7
          Text = '  /  /    '
          Visible = False
          OnExit = MDT2Exit
        end
      end
    end
    object tsOutrosFiltros: TTabSheet
      Caption = 'Tipos de Pedidos Selecionados'
      ImageIndex = 1
      object sb_SalvarPadrao: TSpeedButton
        Left = 456
        Top = 104
        Width = 327
        Height = 27
        Hint = 'Salva as configura'#231#245'es como padr'#227'o'
        Caption = '&Salvar Padr'#227'o'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = sb_SalvarPadraoClick
      end
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 789
        Height = 102
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Align = alTop
        Color = clSkyBlue
        Columns = 4
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Roman'
        Font.Style = []
        ItemHeight = 16
        Items.Strings = (
          'Or'#231'amento'
          'Venda Normal'
          'Simples Remessa'
          'Devolu'#231#227'o a Fornecedor'
          'Remessa p/Troca'
          'Transferencia de Mercadorias'
          'Remessa p/Beneficiamento'
          'Remessa p/Venda(Vda.Fora do Estab.)'
          'Devolu'#231#227'o Cliente(Entrada) Normal'
          'Emprestimo de Mercadorias'
          'Nota Complementar'
          'Remessa Para Consigna'#231#245'es'
          'Devolu'#231#227'o Mercadoria Consigna'#231#245'es'
          'Devolu'#231#227'o Remessa p/Venda(Vda.Fora do Estab.)'
          'Venda Mercadoria Consignada'
          'Venda Remessa p/Venda(Vda.Fora do Estabel.)'
          'Todos')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Style = lbOwnerDrawFixed
        TabOrder = 0
        OnClick = RG_TIPOPEDClick
      end
      object RG_TIPO: TRadioGroup
        Left = 2
        Top = 103
        Width = 327
        Height = 28
        Caption = 'Tipo Padr'#227'o:'
        Columns = 4
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemIndex = 2
        Items.Strings = (
          'Normal'
          'Extra'
          'Ambas'
          'Todas')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
    end
    object tsConfigMaster: TTabSheet
      Caption = 'Configura'#231#245'es Master'
      ImageIndex = 2
      object CB_CRECCHAVEPED: TCheckBox
        Left = 16
        Top = 8
        Width = 561
        Height = 17
        Caption = 'limite de Credito Contas a Receber Somente com Chave do Pedido'
        TabOrder = 0
        OnClick = CB_CRECCHAVEPEDClick
      end
      object cb_pedpen: TCheckBox
        Left = 16
        Top = 26
        Width = 561
        Height = 17
        Caption = 'Pedidos pendentes nao fazer parte das estatisticas'
        TabOrder = 1
        OnClick = cb_pedpenClick
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 97
    Width = 797
    Height = 25
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object BBSAIR: TBitBtn
      Left = 316
      Top = 0
      Width = 120
      Height = 25
      Caption = '&Sair'
      TabOrder = 0
      OnClick = BBSAIRClick
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
  object Tb_Dup: TQuery
    OnCalcFields = Tb_DupCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CRCODEMP,CRNUMERO,CRDESD,CRDUP,CRDTEMIS,'
      '           CRDTVCTO,CRDTPAG,CRDTBX,CRCODVEN,CRVALOR,'
      '           CRSTATUS,CRCODBCO,CRCODCLI,CRVALPAG,CRJUROS,'
      '          CRDESC,CRDEVOL,CRTITPROT,CRNPED'
      ' FROM CADDAR'
      'WHERE CRCODEMP is null')
    Left = 423
    Top = 216
    object Tb_DupCRCODEMP: TFloatField
      FieldName = 'CRCODEMP'
      Origin = 'SG_ASSOC.CADDAR.CRCODEMP'
    end
    object Tb_DupCRNUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CRNUMERO'
      Origin = 'SG_ASSOC.CADDAR.CRNUMERO'
    end
    object Tb_DupCRDESD: TStringField
      DisplayLabel = 'Desd/Parc'
      FieldName = 'CRDESD'
      Origin = 'SG_ASSOC.CADDAR.CRDESD'
      Size = 2
    end
    object Tb_DupCRDUP: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'CRDUP'
      Origin = 'SG_ASSOC.CADDAR.CRDUP'
    end
    object Tb_DupCRDTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'CRDTEMIS'
      Origin = 'SG_ASSOC.CADDAR.CRDTEMIS'
    end
    object Tb_DupCRDTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'CRDTVCTO'
      Origin = 'SG_ASSOC.CADDAR.CRDTVCTO'
    end
    object Tb_DupCRDTPAG: TDateTimeField
      DisplayLabel = 'Dt.Pgto.'
      FieldName = 'CRDTPAG'
      Origin = 'SG_ASSOC.CADDAR.CRDTPAG'
    end
    object Tb_DupCRDTBX: TDateTimeField
      DisplayLabel = 'Dt.Baixa'
      FieldName = 'CRDTBX'
      Origin = 'SG_ASSOC.CADDAR.CRDTBX'
    end
    object Tb_DupCRCODVEN: TFloatField
      DisplayLabel = 'Cod.Vend.'
      FieldName = 'CRCODVEN'
      Origin = 'SG_ASSOC.CADDAR.CRCODVEN'
    end
    object Tb_DupCRVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CRVALOR'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR'
      currency = True
    end
    object Tb_DupCRSTATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'CRSTATUS'
      Origin = 'SG_ASSOC.CADDAR.CRSTATUS'
    end
    object Tb_DupCRCODBCO: TFloatField
      DisplayLabel = 'Cod.Bco'
      FieldName = 'CRCODBCO'
      Origin = 'SG_ASSOC.CADDAR.CRCODBCO'
    end
    object Tb_DupCRCODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'CRCODCLI'
      Origin = 'SG_ASSOC.CADDAR.CRCODCLI'
    end
    object Tb_Dupnombco: TStringField
      DisplayLabel = 'Nome do Banco'
      FieldKind = fkCalculated
      FieldName = 'nombco'
      Size = 30
      Calculated = True
    end
    object Tb_Duptipodup: TStringField
      DisplayLabel = 'Tipo Documento'
      FieldKind = fkCalculated
      FieldName = 'tipodup'
      Size = 10
      Calculated = True
    end
    object Tb_DupCRVALPAG: TFloatField
      DisplayLabel = 'Valor Pago'
      FieldName = 'CRVALPAG'
      Origin = 'SG_ASSOC.CADDAR.CRVALPAG'
    end
    object Tb_Dupatraso: TFloatField
      FieldKind = fkCalculated
      FieldName = 'atraso'
      Calculated = True
    end
    object Tb_Dupsaldodev: TFloatField
      FieldKind = fkCalculated
      FieldName = 'saldodev'
      Calculated = True
    end
    object Tb_DupCRJUROS: TFloatField
      FieldName = 'CRJUROS'
      Origin = 'SG_ASSOC.CADDAR.CRJUROS'
    end
    object Tb_DupCRDESC: TFloatField
      FieldName = 'CRDESC'
      Origin = 'SG_ASSOC.CADDAR.CRDESC'
    end
    object Tb_DupCRDEVOL: TFloatField
      FieldName = 'CRDEVOL'
      Origin = 'SG_ASSOC.CADDAR.CRDEVOL'
    end
    object Tb_DupCRTITPROT: TFloatField
      FieldName = 'CRTITPROT'
      Origin = 'SG_ASSOC.CADDAR.CRTITPROT'
    end
    object Tb_DupCRNPED: TFloatField
      FieldName = 'CRNPED'
      Origin = 'SG_ASSOC.CADDAR.CRNPED'
    end
  end
  object Src_Dup: TDataSource
    DataSet = Tb_Dup
    Left = 276
    Top = 296
  end
  object Qr_Chq: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CHCODEMP,CHNUMERO,CHBANCO,CHSERIE,CHVALOR,'
      '           CHDTEMIS,CHDTDEP,CHCODCLI'
      'from CADCHQ where CHCODEMP is null          ')
    Left = 120
    Top = 398
    object Qr_ChqCHCODEMP: TFloatField
      FieldName = 'CHCODEMP'
      Origin = 'SG_ASSOC.CADCHQ.CHCODEMP'
    end
    object Qr_ChqCHNUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CHNUMERO'
      Origin = 'SG_ASSOC.CADCHQ.CHNUMERO'
    end
    object Qr_ChqCHBANCO: TFloatField
      DisplayLabel = 'Banco'
      FieldName = 'CHBANCO'
      Origin = 'SG_ASSOC.CADCHQ.CHBANCO'
    end
    object Qr_ChqCHSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'CHSERIE'
      Origin = 'SG_ASSOC.CADCHQ.CHSERIE'
    end
    object Qr_ChqCHVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CHVALOR'
      Origin = 'SG_ASSOC.CADCHQ.CHVALOR'
      currency = True
    end
    object Qr_ChqCHDTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'CHDTEMIS'
      Origin = 'SG_ASSOC.CADCHQ.CHDTEMIS'
    end
    object Qr_ChqCHDTDEP: TDateTimeField
      DisplayLabel = 'Dt.Dep'#243'sito'
      FieldName = 'CHDTDEP'
      Origin = 'SG_ASSOC.CADCHQ.CHDTDEP'
    end
    object Qr_ChqCHCODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'CHCODCLI'
      Origin = 'SG_ASSOC.CADCHQ.CHCODCLI'
    end
  end
  object Src_Chq: TDataSource
    DataSet = Qr_Chq
    Left = 192
    Top = 389
  end
  object Qr_Ped: TQuery
    OnCalcFields = Qr_PedCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P1CHAVE,P1ORDEM,P1CODVEN,P1TOTALL,'
      '           P1CODCLI,P1DATAP,P1TIPO from'
      '          CADP01 where P1CHAVE is null')
    Left = 299
    Top = 376
    object Qr_PedP1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Qr_PedP1ORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'P1ORDEM'
      Origin = 'SG_ASSOC.CADP01.P1ORDEM'
    end
    object Qr_PedP1CODVEN: TFloatField
      DisplayLabel = 'Vendedor'
      FieldName = 'P1CODVEN'
      Origin = 'SG_ASSOC.CADP01.P1CODVEN'
    end
    object Qr_PedP1TOTALL: TFloatField
      DisplayLabel = 'Total Liquido'
      FieldName = 'P1TOTALL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
      currency = True
    end
    object Qr_PedP1CODCLI: TFloatField
      DisplayLabel = 'C'#243'digo do Cliente'
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Qr_PedP1DATAP: TDateTimeField
      DisplayLabel = 'Data do Pedido'
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Qr_PedP1TIPO: TFloatField
      FieldName = 'P1TIPO'
      Origin = 'SG_ASSOC.CADP01.P1TIPO'
    end
    object Qr_Pedtipoped: TStringField
      DisplayLabel = 'Tipo do Pedido'
      FieldKind = fkCalculated
      FieldName = 'tipoped'
      Size = 40
      Calculated = True
    end
  end
  object Src_Ped: TDataSource
    DataSet = Qr_Ped
    Left = 328
    Top = 378
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 464
    Top = 8
  end
end

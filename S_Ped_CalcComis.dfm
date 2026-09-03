object Frm_Ped_CalcComis: TFrm_Ped_CalcComis
  Left = 60
  Top = 34
  Width = 676
  Height = 460
  Caption = 'Recalcular Comiss'#245'es do Pedido'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_cab: TPanel
    Left = 0
    Top = 0
    Width = 668
    Height = 107
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 85
      Height = 13
      Caption = 'Chave do &Pedido:'
      FocusControl = CHAVE
    end
    object SB1: TSpeedButton
      Left = 176
      Top = 5
      Width = 23
      Height = 20
      Hint = 'Pesquisa Pedidos'
      Flat = True
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
      ParentShowHint = False
      ShowHint = True
      OnClick = SB1Click
    end
    object Label2: TLabel
      Left = 311
      Top = 9
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label3: TLabel
      Left = 52
      Top = 27
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object Label4: TLabel
      Left = 65
      Top = 44
      Width = 36
      Height = 13
      Caption = 'Cidade:'
    end
    object lbl_datanf: TLabel
      Left = 34
      Top = 61
      Width = 67
      Height = 13
      Caption = 'Data da Nota:'
    end
    object Label6: TLabel
      Left = 202
      Top = 64
      Width = 81
      Height = 13
      Caption = 'N'#250'mero da Nota:'
    end
    object Label7: TLabel
      Left = 382
      Top = 64
      Width = 27
      Height = 13
      Caption = 'Frete:'
    end
    object Label8: TLabel
      Left = 510
      Top = 64
      Width = 53
      Height = 13
      Caption = 'Valor Nota:'
    end
    object Label18: TLabel
      Left = 210
      Top = 10
      Width = 56
      Height = 13
      Caption = 'Lote Seq:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 17
      Top = 81
      Width = 84
      Height = 13
      Caption = 'Plano de Vendas:'
    end
    object CHAVE: TEdit
      Left = 107
      Top = 6
      Width = 69
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object NOMCLI: TEdit
      Left = 348
      Top = 6
      Width = 307
      Height = 19
      TabStop = False
      Color = 16754899
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object ENDERECO: TEdit
      Left = 107
      Top = 24
      Width = 548
      Height = 19
      TabStop = False
      Color = 16754899
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object NOMCID: TEdit
      Left = 107
      Top = 42
      Width = 548
      Height = 19
      TabStop = False
      Color = 16754899
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object DATANF: TEdit
      Left = 107
      Top = 60
      Width = 90
      Height = 19
      TabStop = False
      Color = 16754899
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object NUMNF: TEdit
      Left = 286
      Top = 60
      Width = 90
      Height = 19
      TabStop = False
      Color = 16754899
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object VALFRE: TEdit
      Left = 415
      Top = 60
      Width = 90
      Height = 19
      TabStop = False
      Color = 16754899
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 6
    end
    object TOTALNF: TEdit
      Left = 565
      Top = 60
      Width = 90
      Height = 19
      TabStop = False
      Color = 16754899
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 7
    end
    object LOTSEQ: TEdit
      Left = 268
      Top = 6
      Width = 38
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
    end
    object edt_planovendas: TEdit
      Left = 107
      Top = 78
      Width = 548
      Height = 19
      TabStop = False
      Color = 16754899
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 9
    end
  end
  object gbFormapag: TGroupBox
    Left = 0
    Top = 107
    Width = 668
    Height = 76
    Align = alTop
    Caption = 'Forma de Calculo:'
    TabOrder = 1
    object memo_condicoes: TMemo
      Left = 2
      Top = 15
      Width = 664
      Height = 59
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object gbCalculados: TGroupBox
    Left = 0
    Top = 183
    Width = 668
    Height = 85
    Align = alTop
    Caption = 'Valores Calculados no Pedido:'
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    object Label9: TLabel
      Left = 9
      Top = 17
      Width = 77
      Height = 13
      Caption = 'Vendedor 01:'
    end
    object Label10: TLabel
      Left = 9
      Top = 37
      Width = 77
      Height = 13
      Caption = 'Vendedor 02:'
    end
    object Label11: TLabel
      Left = 9
      Top = 57
      Width = 77
      Height = 13
      Caption = 'Vendedor 03:'
    end
    object Label12: TLabel
      Left = 309
      Top = 17
      Width = 65
      Height = 13
      Caption = 'Supervisor:'
    end
    object Label13: TLabel
      Left = 302
      Top = 37
      Width = 71
      Height = 13
      Caption = 'Televendas:'
    end
    object Label14: TLabel
      Left = 316
      Top = 57
      Width = 55
      Height = 13
      Caption = 'Assessor:'
    end
    object edt_comv01: TCurrencyEdit
      Left = 85
      Top = 14
      Width = 92
      Height = 21
      AutoSize = False
      Color = 16759739
      Ctl3D = False
      DisplayFormat = ',0.00; ,0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object edt_comv02: TCurrencyEdit
      Left = 85
      Top = 34
      Width = 92
      Height = 21
      AutoSize = False
      Color = 16759739
      Ctl3D = False
      DisplayFormat = ',0.00; ,0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object edt_comv03: TCurrencyEdit
      Left = 85
      Top = 54
      Width = 92
      Height = 21
      AutoSize = False
      Color = 16759739
      Ctl3D = False
      DisplayFormat = ',0.00; ,0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object edt_comsup: TCurrencyEdit
      Left = 379
      Top = 14
      Width = 92
      Height = 21
      AutoSize = False
      Color = 16759739
      Ctl3D = False
      DisplayFormat = ',0.00; ,0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object edt_comtlv: TCurrencyEdit
      Left = 379
      Top = 34
      Width = 92
      Height = 21
      AutoSize = False
      Color = 16759739
      Ctl3D = False
      DisplayFormat = ',0.00; ,0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object edt_comass: TCurrencyEdit
      Left = 379
      Top = 54
      Width = 92
      Height = 21
      AutoSize = False
      Color = 16759739
      Ctl3D = False
      DisplayFormat = ',0.00; ,0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 268
    Width = 668
    Height = 85
    Align = alTop
    Caption = 'Valores Calculados no Pedido:'
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    object Label15: TLabel
      Left = 9
      Top = 17
      Width = 77
      Height = 13
      Caption = 'Vendedor 01:'
    end
    object Label16: TLabel
      Left = 9
      Top = 37
      Width = 77
      Height = 13
      Caption = 'Vendedor 02:'
    end
    object Label17: TLabel
      Left = 9
      Top = 57
      Width = 77
      Height = 13
      Caption = 'Vendedor 03:'
    end
    object Label19: TLabel
      Left = 309
      Top = 17
      Width = 65
      Height = 13
      Caption = 'Supervisor:'
    end
    object Label20: TLabel
      Left = 302
      Top = 37
      Width = 71
      Height = 13
      Caption = 'Televendas:'
    end
    object Label21: TLabel
      Left = 316
      Top = 57
      Width = 55
      Height = 13
      Caption = 'Assessor:'
    end
    object edtnov_comv01: TCurrencyEdit
      Left = 85
      Top = 14
      Width = 92
      Height = 21
      AutoSize = False
      Color = 16777156
      Ctl3D = False
      DisplayFormat = ',0.00; ,0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtnov_comv02: TCurrencyEdit
      Left = 85
      Top = 34
      Width = 92
      Height = 21
      AutoSize = False
      Color = 16777156
      Ctl3D = False
      DisplayFormat = ',0.00; ,0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object edtnov_comv03: TCurrencyEdit
      Left = 85
      Top = 54
      Width = 92
      Height = 21
      AutoSize = False
      Color = 16777156
      Ctl3D = False
      DisplayFormat = ',0.00; ,0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object edtnov_comsup: TCurrencyEdit
      Left = 379
      Top = 14
      Width = 92
      Height = 21
      AutoSize = False
      Color = 16777156
      Ctl3D = False
      DisplayFormat = ',0.00; ,0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object edtnov_comtlv: TCurrencyEdit
      Left = 379
      Top = 34
      Width = 92
      Height = 21
      AutoSize = False
      Color = 16777156
      Ctl3D = False
      DisplayFormat = ',0.00; ,0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object edtnov_comass: TCurrencyEdit
      Left = 379
      Top = 54
      Width = 92
      Height = 21
      AutoSize = False
      Color = 16777156
      Ctl3D = False
      DisplayFormat = ',0.00; ,0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
  end
end

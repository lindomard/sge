object Frm_Justif: TFrm_Justif
  Left = 7
  Top = 27
  Width = 790
  Height = 517
  Caption = 'Hist'#243'rico de Pendencias do Cliente Junto a INTERSYS-Systemas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GB_TITULOS: TGroupBox
    Left = 0
    Top = 0
    Width = 776
    Height = 141
    Align = alTop
    Caption = 'T'#237'tulo(s) Pendente(s):'
    TabOrder = 0
    object STG_TIT: TStringGrid
      Left = 2
      Top = 15
      Width = 772
      Height = 124
      Align = alClient
      ColCount = 16
      DefaultRowHeight = 16
      FixedCols = 0
      TabOrder = 0
      OnClick = STG_TITClick
      OnDrawCell = STG_TITDrawCell
    end
  end
  object GB_OBSERVACOES: TGroupBox
    Left = 0
    Top = 218
    Width = 776
    Height = 73
    Align = alTop
    Caption = 'Outros Motivos:'
    TabOrder = 1
    object OBS01: TMemo
      Left = 2
      Top = 15
      Width = 772
      Height = 56
      Align = alClient
      Lines.Strings = (
        'OBS01')
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 291
    Width = 776
    Height = 156
    Align = alTop
    Caption = 'Observa'#231#245'es:'
    TabOrder = 2
    object Memo1: TMemo
      Left = 2
      Top = 15
      Width = 772
      Height = 139
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      Lines.Strings = (
        
          'O prazo de baixa do t'#237'tulo em nosso sistema '#233' de 1 dia '#250'til, pra' +
          'zo este que se da para que a institui'#231#227'o'
        
          'financeira que fez o recebimento nos repassem a infoma'#231#227'o sobre ' +
          'a liquida'#231#227'o do mesmo.'
        ''
        
          'Para outras informa'#231#245'es entre em contato com o nosso departament' +
          'o financeiro atrav'#233's do telefone'
        '(0xx62) 3093-6601.')
      ParentFont = False
      TabOrder = 0
    end
  end
  object bbFechar: TBitBtn
    Left = 641
    Top = 451
    Width = 135
    Height = 25
    Caption = '&Fechar'
    TabOrder = 3
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
  object bbEmiteRel: TBitBtn
    Left = 13
    Top = 452
    Width = 135
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 4
    Visible = False
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 141
    Width = 776
    Height = 77
    Align = alTop
    Caption = 'Totaliza'#231#245'es/Previs'#245'es:'
    TabOrder = 5
    object Label2: TLabel
      Left = 4
      Top = 16
      Width = 148
      Height = 13
      Caption = 'Data Prevista para Pagamento:'
    end
    object lbl_titsel: TLabel
      Left = 3
      Top = 56
      Width = 124
      Height = 13
      Caption = '10 T'#237'tulo(s) Selecionados:'
    end
    object Label4: TLabel
      Left = 247
      Top = 55
      Width = 54
      Height = 13
      Caption = 'Vlr ja Pago:'
    end
    object Label5: TLabel
      Left = 387
      Top = 54
      Width = 54
      Height = 13
      Caption = 'Descontos:'
    end
    object Label6: TLabel
      Left = 528
      Top = 55
      Width = 28
      Height = 13
      Caption = 'Juros:'
    end
    object Label7: TLabel
      Left = 642
      Top = 54
      Width = 55
      Height = 13
      Caption = 'Vlr a Pagar:'
    end
    object lbl_titab: TLabel
      Left = 3
      Top = 38
      Width = 108
      Height = 13
      Caption = '10 T'#237'tulo(s) em Aberto:'
    end
    object Label8: TLabel
      Left = 247
      Top = 37
      Width = 54
      Height = 13
      Caption = 'Vlr ja Pago:'
    end
    object Label9: TLabel
      Left = 387
      Top = 36
      Width = 54
      Height = 13
      Caption = 'Descontos:'
    end
    object Label10: TLabel
      Left = 528
      Top = 37
      Width = 28
      Height = 13
      Caption = 'Juros:'
    end
    object Label11: TLabel
      Left = 642
      Top = 36
      Width = 55
      Height = 13
      Caption = 'Vlr a Pagar:'
    end
    object Label12: TLabel
      Left = 131
      Top = 38
      Width = 27
      Height = 13
      Caption = 'Valor:'
    end
    object Label13: TLabel
      Left = 132
      Top = 55
      Width = 27
      Height = 13
      Caption = 'Valor:'
    end
    object MDT1: TMaskEdit
      Left = 164
      Top = 12
      Width = 77
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 0
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object SEL_TOTTIT: TStaticText
      Left = 164
      Top = 54
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      TabOrder = 1
    end
    object SEL_VLRPAG: TStaticText
      Left = 303
      Top = 53
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      TabOrder = 2
    end
    object SEL_VALDES: TStaticText
      Left = 443
      Top = 53
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      TabOrder = 3
    end
    object SEL_JUROS: TStaticText
      Left = 558
      Top = 52
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      TabOrder = 4
    end
    object SEL_VLRAPAGAR: TStaticText
      Left = 698
      Top = 51
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      TabOrder = 5
    end
    object AB_TOTTIT: TStaticText
      Left = 164
      Top = 34
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      TabOrder = 6
    end
    object AB_VLRPAG: TStaticText
      Left = 303
      Top = 34
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      TabOrder = 7
    end
    object AB_VALDES: TStaticText
      Left = 443
      Top = 34
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      TabOrder = 8
    end
    object AB_JUROS: TStaticText
      Left = 558
      Top = 34
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      TabOrder = 9
    end
    object AB_VLRAPAGAR: TStaticText
      Left = 698
      Top = 33
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      TabOrder = 10
    end
  end
  object bbEmibol: TBitBtn
    Left = 169
    Top = 453
    Width = 135
    Height = 25
    Caption = '&Emitir Boleto p/Pgto'
    TabOrder = 6
    OnClick = bbEmibolClick
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
  object Qr_Tempor: TQuery
    DatabaseName = 'C:\SGE'
    Left = 512
    Top = 96
  end
  object Qr_Logotipo: TQuery
    DatabaseName = 'C:\SGE\NOVAVER'
    SQL.Strings = (
      'Select TPLOGBAN from TMP00003')
    Left = 552
    Top = 104
    object Qr_LogotipoTPLOGBAN: TMemoField
      FieldName = 'TPLOGBAN'
      BlobType = ftMemo
      Size = 1
    end
  end
end

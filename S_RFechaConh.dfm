object Frm_RFechaConh: TFrm_RFechaConh
  Left = 56
  Top = 117
  Width = 665
  Height = 349
  Caption = 'Relatorio de Conhecimento com Fechamento...'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object tipo_imp: TComboBox
    Left = 443
    Top = 216
    Width = 197
    Height = 21
    Hint = 'Visualiza Impressao Antes da Impress'#227'o...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Items.Strings = (
      'MATRICIAL'
      'JATO DE TINTA / LASER')
  end
  object StaticText9: TStaticText
    Left = 443
    Top = 198
    Width = 196
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Tipo De Impress'#227'o'
    Color = 16772332
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 649
    Height = 311
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Parametro(s) Primario(s)'
      object impressao: TSpeedButton
        Left = 238
        Top = 228
        Width = 161
        Height = 52
        Caption = '&Impress'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
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
        ParentFont = False
        OnClick = impressaoClick
      end
      object dtinicialf: TMaskEdit
        Left = 171
        Top = 8
        Width = 119
        Height = 19
        Hint = 'Informe Data Inicial do Fechamento...'
        Ctl3D = False
        EditMask = '99/99/9999;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = '  /  /    '
        OnExit = dtinicialfExit
      end
      object dtfinalf: TMaskEdit
        Left = 171
        Top = 32
        Width = 119
        Height = 19
        Hint = 'Informe Data Final do Fechamento...'
        Ctl3D = False
        EditMask = '99/99/9999;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = '  /  /    '
        OnExit = dtfinalfExit
      end
      object CODCONHE: TEdit
        Left = 171
        Top = 102
        Width = 120
        Height = 19
        Hint = 'Infome Codigo do Conhecimento...'
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object dtinicialc: TMaskEdit
        Left = 171
        Top = 55
        Width = 119
        Height = 19
        Hint = 'Informe Data Inicial do Conhecimento...'
        Ctl3D = False
        EditMask = '99/99/9999;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = '  /  /    '
        OnExit = dtinicialcExit
      end
      object dtfinalc: TMaskEdit
        Left = 171
        Top = 79
        Width = 119
        Height = 19
        Hint = 'Informe Data Final do Conhecimento...'
        Ctl3D = False
        EditMask = '99/99/9999;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Text = '  /  /    '
        OnExit = dtfinalcExit
      end
      object ordem: TComboBox
        Left = 7
        Top = 192
        Width = 197
        Height = 21
        Hint = 'Selecione Ordem Para Impress'#227'o ...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        Items.Strings = (
          'Data Fechamento'
          'Data Conhecimento'
          'Codigo Conhecimento'
          'Codigo Transportadora')
      end
      object DateTimePicker1: TDateTimePicker
        Left = 290
        Top = 8
        Width = 21
        Height = 21
        Hint = 'Selecione Uma Data...'
        Date = 39096.490608171300000000
        Time = 39096.490608171300000000
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        TabStop = False
        OnChange = DateTimePicker1Change
      end
      object DateTimePicker2: TDateTimePicker
        Left = 290
        Top = 32
        Width = 21
        Height = 21
        Hint = 'Selecione Uma Data...'
        Date = 39096.490608171300000000
        Time = 39096.490608171300000000
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        TabStop = False
        OnChange = DateTimePicker2Change
      end
      object DateTimePicker3: TDateTimePicker
        Left = 290
        Top = 55
        Width = 21
        Height = 21
        Hint = 'Selecione Uma Data...'
        Date = 39096.490608171300000000
        Time = 39096.490608171300000000
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        TabStop = False
        OnChange = DateTimePicker3Change
      end
      object DateTimePicker4: TDateTimePicker
        Left = 290
        Top = 78
        Width = 21
        Height = 21
        Hint = 'Selecione Uma Data...'
        Date = 39096.490608171300000000
        Time = 39096.490608171300000000
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        TabStop = False
        OnChange = DateTimePicker4Change
      end
      object StaticText4: TStaticText
        Left = 8
        Top = 130
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Transportadora'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 11
      end
      object codtra: TEdit
        Left = 8
        Top = 147
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        TabOrder = 12
        OnExit = codtraExit
        OnKeyPress = codtraKeyPress
      end
      object OMITIR_TRA: TCheckBox
        Left = 86
        Top = 150
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
      end
      object lbx_codtra: TListBox
        Left = 145
        Top = 129
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        OnKeyDown = lbx_codtraKeyDown
      end
      object StaticText1: TStaticText
        Left = 8
        Top = 174
        Width = 197
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Ordem Rel'#225'torio'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 15
      end
      object StaticText2: TStaticText
        Left = 224
        Top = 174
        Width = 196
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Visualiza Antes da Impress'#227'o'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 16
      end
      object visualiza_imp: TComboBox
        Left = 224
        Top = 192
        Width = 197
        Height = 21
        Hint = 'Visualiza Impressao Antes da Impress'#227'o...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
        Items.Strings = (
          'Sim'
          'Nao')
      end
      object StaticText3: TStaticText
        Left = 8
        Top = 9
        Width = 162
        Height = 17
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Data Inicial Fechamento'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 18
      end
      object StaticText5: TStaticText
        Left = 8
        Top = 33
        Width = 162
        Height = 17
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Data Final Fechamento'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 19
      end
      object StaticText6: TStaticText
        Left = 8
        Top = 56
        Width = 162
        Height = 17
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Data Inicial  Conhecimento'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 20
      end
      object StaticText7: TStaticText
        Left = 8
        Top = 80
        Width = 162
        Height = 17
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Data Final Conhecimento'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 21
      end
      object StaticText8: TStaticText
        Left = 8
        Top = 103
        Width = 162
        Height = 17
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Codigo Conhecimento'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 22
      end
      object BitBtn1: TBitBtn
        Left = 559
        Top = 269
        Width = 88
        Height = 25
        Caption = '&Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 23
        OnClick = BitBtn1Click
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
      object RG_FILTRO: TRadioGroup
        Left = 338
        Top = 6
        Width = 119
        Height = 95
        Caption = 'Listar Somente:'
        Color = 16772332
        Ctl3D = False
        ItemIndex = 2
        Items.Strings = (
          '&Entregando'
          '&Entregues'
          '&Todos')
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 5
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = 95
        Top = 56
        Width = 794
        Height = 945
        DataSource = DS_CADCON01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Margins.LeftMargin = 0.000000000000000000
        Margins.TopMargin = 0.000000000000000000
        Margins.RightMargin = 0.000000000000000000
        Margins.BottomMargin = 0.000000000000000000
        PageSetup.PaperSize = fpCustom
        PageSetup.PaperWidth = 210.000000000000000000
        PageSetup.PaperHeight = 250.000000000000000000
        BeforePrint = RLReport1BeforePrint
        object RLBand1: TRLBand
          Left = 0
          Top = 0
          Width = 794
          Height = 112
          BandType = btHeader
          object RLDBText1: TRLDBText
            Left = 4
            Top = 3
            Width = 182
            Height = 14
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object RLLabel1: TRLLabel
            Left = 3
            Top = 26
            Width = 392
            Height = 14
            Caption = 'Relatorio de Conhecimento com Fechamento no Periodo de '
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 706
            Top = 4
            Width = 91
            Height = 14
            Info = itPageNumber
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 706
            Top = 22
            Width = 49
            Height = 14
            SecondHolder = RLSystemInfo1
          end
          object RLLabel2: TRLLabel
            Left = 639
            Top = 3
            Width = 49
            Height = 14
            Caption = 'Pag..:'
          end
          object RLLabel3: TRLLabel
            Left = 639
            Top = 21
            Width = 49
            Height = 14
            Caption = 'Data.:'
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 706
            Top = 41
            Width = 49
            Height = 14
            Info = itHour
            SecondHolder = RLSystemInfo1
          end
          object RLLabel4: TRLLabel
            Left = 639
            Top = 40
            Width = 49
            Height = 14
            Caption = 'Hora.:'
          end
          object RLLabel5: TRLLabel
            Left = -2
            Top = 59
            Width = 791
            Height = 14
            Caption = 
              '----------------------------------------------------------------' +
              '------------------------------------------------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = -2
            Top = 95
            Width = 791
            Height = 14
            Caption = 
              '----------------------------------------------------------------' +
              '------------------------------------------------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 4
            Top = 69
            Width = 56
            Height = 14
            AutoSize = False
            Caption = 'D a t a'
          end
          object RLLabel8: TRLLabel
            Left = 2
            Top = 84
            Width = 61
            Height = 14
            AutoSize = False
            Caption = 'Fecham'
          end
          object RLLabel9: TRLLabel
            Left = 73
            Top = 69
            Width = 63
            Height = 14
            AutoSize = False
            Caption = 'D a t a'
          end
          object RLLabel10: TRLLabel
            Left = 72
            Top = 84
            Width = 63
            Height = 14
            AutoSize = False
            Caption = 'Conhec'
          end
          object RLLabel11: TRLLabel
            Left = 143
            Top = 69
            Width = 58
            Height = 14
            AutoSize = False
            Caption = 'Numero'
          end
          object RLLabel12: TRLLabel
            Left = 141
            Top = 84
            Width = 61
            Height = 14
            AutoSize = False
            Caption = 'Conhec'
          end
          object RLLabel13: TRLLabel
            Left = 210
            Top = 69
            Width = 49
            Height = 14
            AutoSize = False
            Caption = 'Codigo'
          end
          object RLLabel14: TRLLabel
            Left = 209
            Top = 84
            Width = 51
            Height = 14
            AutoSize = False
            Caption = 'Transp.'
          end
          object RLLabel15: TRLLabel
            Left = 268
            Top = 84
            Width = 311
            Height = 14
            AutoSize = False
            Caption = 'Nome transportador(a)'
          end
          object RLLabel17: TRLLabel
            Left = 587
            Top = 69
            Width = 64
            Height = 14
            AutoSize = False
            Caption = 'Valor'
          end
          object RLLabel18: TRLLabel
            Left = 587
            Top = 84
            Width = 66
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'Entrega'
          end
          object RLLabel19: TRLLabel
            Left = 655
            Top = 69
            Width = 65
            Height = 14
            AutoSize = False
            Caption = 'Valor'
          end
          object RLLabel20: TRLLabel
            Left = 655
            Top = 84
            Width = 68
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'F r e t e'
          end
          object RLLabel21: TRLLabel
            Left = 723
            Top = 69
            Width = 70
            Height = 14
            Caption = 'Diferenca'
          end
          object RLLabel22: TRLLabel
            Left = 725
            Top = 84
            Width = 68
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'F r e t e'
          end
        end
        object RLBand2: TRLBand
          Left = 0
          Top = 112
          Width = 794
          Height = 16
          BeforePrint = RLBand2BeforePrint
          object RLDBText2: TRLDBText
            Left = 2
            Top = 0
            Width = 61
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'datfec'
            DataSource = DS_CADCON01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            SecondHolder = RLLabel8
          end
          object RLDBText3: TRLDBText
            Left = 72
            Top = 0
            Width = 63
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'C01DATCON'
            DataSource = DS_CADCON01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            SecondHolder = RLLabel10
          end
          object RLDBText4: TRLDBText
            Left = 141
            Top = 0
            Width = 61
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'C01CODCON'
            DataSource = DS_CADCON01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            SecondHolder = RLLabel12
          end
          object RLDBText5: TRLDBText
            Left = 209
            Top = 0
            Width = 51
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'C01CODTRA'
            DataSource = DS_CADCON01
            Holder = RLLabel14
          end
          object RLDBText6: TRLDBText
            Left = 268
            Top = 0
            Width = 311
            Height = 14
            AutoSize = False
            DataField = 'TRRAZTRA'
            DataSource = DS_CADCON01
            Holder = RLLabel15
          end
          object db_vlrtot: TRLDBText
            Left = 587
            Top = 0
            Width = 66
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'C01VLRTOT'
            DataSource = DS_CADCON01
            SecondHolder = RLLabel18
          end
          object db_valfre: TRLDBText
            Left = 655
            Top = 1
            Width = 68
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'C01VALFRE'
            DataSource = DS_CADCON01
            SecondHolder = RLLabel20
          end
          object RLDBText7: TRLDBText
            Left = 725
            Top = 2
            Width = 68
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'valdif'
            DataSource = DS_CADCON01
            SecondHolder = RLLabel22
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 144
          Width = 794
          Height = 18
          BandType = btFooter
          object RLLabel23: TRLLabel
            Left = -6
            Top = 0
            Width = 693
            Height = 14
            Caption = 
              '----------------------------------------------------------------' +
              '----------------------------------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel24: TRLLabel
            Left = 709
            Top = 3
            Width = 80
            Height = 12
            Caption = 'Frm_RFechaConh'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 128
          Width = 794
          Height = 16
          BandType = btSummary
          BeforePrint = RLBand4BeforePrint
          object RLLabel25: TRLLabel
            Left = 460
            Top = -1
            Width = 49
            Height = 14
            Caption = 'Total:'
          end
          object lblt_und: TRLLabel
            Left = 512
            Top = 0
            Width = 14
            Height = 14
            Caption = '0'
          end
          object lblt_vlrtot: TRLLabel
            Left = 587
            Top = 2
            Width = 66
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0'
            SecondHolder = RLLabel18
          end
          object lblt_valfre: TRLLabel
            Left = 655
            Top = 2
            Width = 68
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0'
            SecondHolder = RLLabel20
          end
          object lblt_valdif: TRLLabel
            Left = 725
            Top = 2
            Width = 68
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0'
            SecondHolder = RLLabel22
          end
        end
      end
    end
  end
  object DS_CADCON01: TDataSource
    DataSet = CADCON01
    Left = 482
    Top = 65529
  end
  object CADCON01: TQuery
    OnCalcFields = CADCON01CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from cadcon01, cadtra '
      'where'
      'c01codtra = trcodtra and'
      'c01datfec >= '#39'26/12/2006'#39' and'
      'c01datfec <= '#39'27/12/2006'#39'  ')
    Left = 436
    Top = 81
    object CADCON01C01CODEMP: TFloatField
      FieldName = 'C01CODEMP'
      Origin = 'SG_ASSOC.CADCON01.C01CODEMP'
    end
    object CADCON01C01CODCON: TFloatField
      FieldName = 'C01CODCON'
      Origin = 'SG_ASSOC.CADCON01.C01CODCON'
    end
    object CADCON01C01DATCON: TDateTimeField
      FieldName = 'C01DATCON'
      Origin = 'SG_ASSOC.CADCON01.C01DATCON'
    end
    object CADCON01C01DATFEC: TDateTimeField
      FieldName = 'C01DATFEC'
      Origin = 'SG_ASSOC.CADCON01.C01DATFEC'
    end
    object CADCON01C01QTDPED: TFloatField
      FieldName = 'C01QTDPED'
      Origin = 'SG_ASSOC.CADCON01.C01QTDPED'
    end
    object CADCON01C01QTDITENS: TFloatField
      FieldName = 'C01QTDITENS'
      Origin = 'SG_ASSOC.CADCON01.C01QTDITENS'
    end
    object CADCON01C01CODTRA: TFloatField
      FieldName = 'C01CODTRA'
      Origin = 'SG_ASSOC.CADCON01.C01CODTRA'
    end
    object CADCON01C01PESOB: TFloatField
      FieldName = 'C01PESOB'
      Origin = 'SG_ASSOC.CADCON01.C01PESOB'
    end
    object CADCON01C01QTDM3: TFloatField
      FieldName = 'C01QTDM3'
      Origin = 'SG_ASSOC.CADCON01.C01QTDM3'
    end
    object CADCON01C01VLRTOT: TFloatField
      FieldName = 'C01VLRTOT'
      Origin = 'SG_ASSOC.CADCON01.C01VLRTOT'
    end
    object CADCON01C01VALFRE: TFloatField
      FieldName = 'C01VALFRE'
      Origin = 'SG_ASSOC.CADCON01.C01VALFRE'
    end
    object CADCON01C01VALFRE_DIG: TFloatField
      FieldName = 'C01VALFRE_DIG'
      Origin = 'SG_ASSOC.CADCON01.C01VALFRE_DIG'
    end
    object CADCON01C01CODUSR_INC: TFloatField
      FieldName = 'C01CODUSR_INC'
      Origin = 'SG_ASSOC.CADCON01.C01CODUSR_INC'
    end
    object CADCON01C01CODUSR_ALT: TFloatField
      FieldName = 'C01CODUSR_ALT'
      Origin = 'SG_ASSOC.CADCON01.C01CODUSR_ALT'
    end
    object CADCON01C01DTHR_ALT: TDateTimeField
      FieldName = 'C01DTHR_ALT'
      Origin = 'SG_ASSOC.CADCON01.C01DTHR_ALT'
    end
    object CADCON01C01QTDMAN: TFloatField
      FieldName = 'C01QTDMAN'
      Origin = 'SG_ASSOC.CADCON01.C01QTDMAN'
    end
    object CADCON01C01ESTADO: TFloatField
      FieldName = 'C01ESTADO'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
    end
    object CADCON01TRCODEMP: TFloatField
      FieldName = 'TRCODEMP'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
    end
    object CADCON01TRCODTRA: TFloatField
      FieldName = 'TRCODTRA'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
    end
    object CADCON01TRRAZTRA: TStringField
      FieldName = 'TRRAZTRA'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
      Size = 40
    end
    object CADCON01TRFANTRA: TStringField
      FieldName = 'TRFANTRA'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
      Size = 40
    end
    object CADCON01TRTPLOG: TStringField
      FieldName = 'TRTPLOG'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
      Size = 5
    end
    object CADCON01TRNLOG: TStringField
      FieldName = 'TRNLOG'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
      Size = 40
    end
    object CADCON01TRNUM: TStringField
      FieldName = 'TRNUM'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
      Size = 5
    end
    object CADCON01TRCOMPL: TStringField
      FieldName = 'TRCOMPL'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
      Size = 30
    end
    object CADCON01TRBAIRRO: TStringField
      FieldName = 'TRBAIRRO'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
      Size = 30
    end
    object CADCON01TRCIDADE: TStringField
      FieldName = 'TRCIDADE'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
      Size = 30
    end
    object CADCON01TRUF: TStringField
      FieldName = 'TRUF'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
      Size = 2
    end
    object CADCON01TRCODBAI: TFloatField
      FieldName = 'TRCODBAI'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
    end
    object CADCON01TRCODLOC: TFloatField
      FieldName = 'TRCODLOC'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
    end
    object CADCON01TRCEP: TStringField
      FieldName = 'TRCEP'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
      Size = 9
    end
    object CADCON01TRCNPJ: TFloatField
      FieldName = 'TRCNPJ'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
    end
    object CADCON01TRIE: TStringField
      FieldName = 'TRIE'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
    end
    object CADCON01TRCNPF: TFloatField
      FieldName = 'TRCNPF'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
    end
    object CADCON01TRRG: TStringField
      FieldName = 'TRRG'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
      Size = 30
    end
    object CADCON01TROBS: TStringField
      FieldName = 'TROBS'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
      Size = 200
    end
    object CADCON01TRDTCAD: TDateTimeField
      FieldName = 'TRDTCAD'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
    end
    object CADCON01TRSTATUS: TFloatField
      FieldName = 'TRSTATUS'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
    end
    object CADCON01TRPLACAV: TStringField
      FieldName = 'TRPLACAV'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
      Size = 8
    end
    object CADCON01TRUFPV: TStringField
      FieldName = 'TRUFPV'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
      Size = 2
    end
    object CADCON01TRFONE: TStringField
      FieldName = 'TRFONE'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
    end
    object CADCON01TRFAX: TStringField
      FieldName = 'TRFAX'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
    end
    object CADCON01TREMAIL: TStringField
      FieldName = 'TREMAIL'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
      Size = 60
    end
    object CADCON01TRHOME: TStringField
      FieldName = 'TRHOME'
      Origin = 'SG_ASSOC.CADCON01.C01ESTADO'
      Size = 60
    end
    object CADCON01valdif: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valdif'
      Calculated = True
    end
    object CADCON01datfec: TStringField
      FieldKind = fkCalculated
      FieldName = 'datfec'
      Size = 10
      Calculated = True
    end
  end
  object RLDraftFilter1: TRLDraftFilter
    EjectMethod = ejForceWithCode
    DisplayName = 'MATRICIAL'
    Left = 361
    Top = 65521
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 533
    Top = 88
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 493
    Top = 65528
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 566
    Top = 65527
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 614
    Top = 65527
  end
end

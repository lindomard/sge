object Frm_ProdEntregar: TFrm_ProdEntregar
  Left = 105
  Top = 31
  Width = 677
  Height = 460
  Caption = 'Produtos a Entregar'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 661
    Height = 422
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Parametro(s) Primario(s)'
      object impressao: TSpeedButton
        Left = 198
        Top = 322
        Width = 127
        Height = 26
        Caption = 'Impress'#227'o'
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
        Left = 172
        Top = 248
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
        TabOrder = 28
        Text = '  /  /    '
        OnExit = dtinicialfExit
      end
      object dtfinalf: TMaskEdit
        Left = 172
        Top = 267
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
        TabOrder = 30
        Text = '  /  /    '
        OnExit = dtfinalfExit
      end
      object DateTimePicker1: TDateTimePicker
        Left = 291
        Top = 248
        Width = 21
        Height = 21
        Hint = 'Selecione Uma Data...'
        Date = 39096.490608171300000000
        Time = 39096.490608171300000000
        ParentShowHint = False
        ShowHint = True
        TabOrder = 29
        TabStop = False
        OnChange = DateTimePicker1Change
      end
      object DateTimePicker2: TDateTimePicker
        Left = 291
        Top = 266
        Width = 21
        Height = 21
        Hint = 'Selecione Uma Data...'
        Date = 39096.490608171300000000
        Time = 39096.490608171300000000
        ParentShowHint = False
        ShowHint = True
        TabOrder = 31
        TabStop = False
        OnChange = DateTimePicker2Change
      end
      object StaticText4: TStaticText
        Left = 8
        Top = 84
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Produto'
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
      object codpro: TEdit
        Left = 8
        Top = 101
        Width = 74
        Height = 19
        Hint = 
          #39'Informe Codigo do Produto ou '#39'+#13+'#39'Tecle Uma Letra P/ Consulta' +
          'r'#39
        BevelKind = bkSoft
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnExit = codproExit
        OnKeyPress = codproKeyPress
        OnMouseMove = codproMouseMove
      end
      object OMITIR_PRO: TCheckBox
        Left = 86
        Top = 104
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
      end
      object lbx_codpro: TListBox
        Left = 145
        Top = 83
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnKeyDown = lbx_codproKeyDown
      end
      object StaticText2: TStaticText
        Left = 319
        Top = 248
        Width = 163
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Visualiza Impress'#227'o'
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
      object visualiza_imp: TComboBox
        Left = 319
        Top = 266
        Width = 163
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
        TabOrder = 32
        Items.Strings = (
          'Sim'
          'Nao')
      end
      object StaticText3: TStaticText
        Left = 9
        Top = 249
        Width = 162
        Height = 17
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Data Inicial Movimento'
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
      object StaticText5: TStaticText
        Left = 9
        Top = 268
        Width = 162
        Height = 17
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Data Final Movimento'
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
      object bbSair: TBitBtn
        Left = 326
        Top = 323
        Width = 127
        Height = 26
        Caption = '&Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 34
        OnClick = bbSairClick
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
      object tipo_imp: TComboBox
        Left = 484
        Top = 265
        Width = 163
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
        TabOrder = 33
        Items.Strings = (
          'MATRICIAL'
          'JATO DE TINTA / LASER')
      end
      object StaticText9: TStaticText
        Left = 484
        Top = 247
        Width = 163
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
        TabOrder = 22
      end
      object StaticText10: TStaticText
        Left = 8
        Top = 2
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Cliente'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 23
      end
      object codcli: TEdit
        Left = 8
        Top = 19
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = codcliExit
        OnKeyPress = codcliKeyPress
      end
      object OMITIR_CLI: TCheckBox
        Left = 86
        Top = 22
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object lbx_codcli: TListBox
        Left = 145
        Top = 1
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnKeyDown = lbx_codcliKeyDown
      end
      object StaticText11: TStaticText
        Left = 8
        Top = 43
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Vendedor'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 24
      end
      object codven: TEdit
        Left = 8
        Top = 61
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        OnExit = codvenExit
        OnKeyPress = codvenKeyPress
      end
      object OMITIR_VEN: TCheckBox
        Left = 86
        Top = 62
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object lbx_codven: TListBox
        Left = 145
        Top = 42
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_codvenKeyDown
      end
      object StaticText12: TStaticText
        Left = 8
        Top = 124
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Grupo'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 25
      end
      object codgru: TEdit
        Left = 8
        Top = 141
        Width = 74
        Height = 19
        Hint = #39'Informe Codigo do Grupo ou '#39'+#13+'#39'Tecle Uma Letra P/ Consultar'#39
        BevelKind = bkSoft
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnExit = codgruExit
        OnKeyPress = codgruKeyPress
      end
      object OMITIR_GRU: TCheckBox
        Left = 86
        Top = 144
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
      end
      object lbx_codgru: TListBox
        Left = 145
        Top = 123
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnKeyDown = lbx_codgruKeyDown
      end
      object StaticText13: TStaticText
        Left = 8
        Top = 165
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Ramo'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 26
      end
      object codram: TEdit
        Left = 8
        Top = 182
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 12
        OnExit = codramExit
        OnKeyPress = codramKeyPress
      end
      object OMITIR_ram: TCheckBox
        Left = 86
        Top = 185
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
      end
      object lbx_codram: TListBox
        Left = 145
        Top = 164
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnKeyDown = lbx_codramKeyDown
      end
      object StaticText6: TStaticText
        Left = 8
        Top = 205
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
        TabOrder = 27
      end
      object codtra: TEdit
        Left = 8
        Top = 222
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 15
        OnExit = codtraExit
        OnKeyPress = codtraKeyPress
      end
      object OMITIR_TRA: TCheckBox
        Left = 86
        Top = 225
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
      end
      object lbx_codtra: TListBox
        Left = 145
        Top = 204
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
        OnKeyDown = lbx_codtraKeyDown
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 2
      object RLReport1: TRLReport
        Left = 0
        Top = -1
        Width = 794
        Height = 945
        DataSource = ds_cadp01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.LeftMargin = 0.000000000000000000
        Margins.TopMargin = 0.000000000000000000
        Margins.RightMargin = 0.000000000000000000
        Margins.BottomMargin = 0.000000000000000000
        PageSetup.PaperSize = fpCustom
        PageSetup.PaperWidth = 210.000000000000000000
        PageSetup.PaperHeight = 250.000000000000000000
        object RLBand1: TRLBand
          Left = 0
          Top = 0
          Width = 794
          Height = 112
          BandType = btHeader
          object RLDBText1: TRLDBText
            Left = 4
            Top = 3
            Width = 164
            Height = 16
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object RLLabel1: TRLLabel
            Left = 3
            Top = 43
            Width = 120
            Height = 16
            Caption = 'Produtos a Entregar'
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 706
            Top = 4
            Width = 87
            Height = 16
            Info = itPageNumber
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 706
            Top = 22
            Width = 39
            Height = 16
            SecondHolder = RLSystemInfo1
          end
          object RLLabel2: TRLLabel
            Left = 639
            Top = 3
            Width = 39
            Height = 16
            Caption = 'Pag..:'
          end
          object RLLabel3: TRLLabel
            Left = 639
            Top = 21
            Width = 39
            Height = 16
            Caption = 'Data.:'
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 706
            Top = 41
            Width = 39
            Height = 16
            Info = itHour
            SecondHolder = RLSystemInfo1
          end
          object RLLabel4: TRLLabel
            Left = 639
            Top = 40
            Width = 39
            Height = 16
            Caption = 'Hora.:'
          end
          object RLLabel5: TRLLabel
            Left = 0
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
            Left = 2
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
            Left = 8
            Top = 68
            Width = 49
            Height = 14
            Caption = 'Codigo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel8: TRLLabel
            Left = 5
            Top = 84
            Width = 56
            Height = 14
            Caption = 'Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel9: TRLLabel
            Left = 66
            Top = 69
            Width = 283
            Height = 14
            AutoSize = False
            Caption = 'Descricao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 67
            Top = 85
            Width = 56
            Height = 14
            AutoSize = False
            Caption = 'Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel11: TRLLabel
            Left = 354
            Top = 69
            Width = 35
            Height = 14
            Caption = 'Und.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel12: TRLLabel
            Left = 354
            Top = 85
            Width = 35
            Height = 14
            Caption = 'Emb.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel13: TRLLabel
            Left = 399
            Top = 69
            Width = 49
            Height = 14
            Caption = 'Quant.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel14: TRLLabel
            Left = 403
            Top = 85
            Width = 42
            Height = 14
            Caption = 'Venda'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel15: TRLLabel
            Left = 465
            Top = 69
            Width = 49
            Height = 14
            Caption = 'Quant.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 465
            Top = 85
            Width = 49
            Height = 14
            Caption = 'Fisico'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 531
            Top = 69
            Width = 49
            Height = 14
            Caption = 'Quant.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel18: TRLLabel
            Left = 536
            Top = 85
            Width = 42
            Height = 14
            Caption = 'Atual'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel21: TRLLabel
            Left = 591
            Top = 69
            Width = 49
            Height = 14
            Caption = 'Quant.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel22: TRLLabel
            Left = 588
            Top = 85
            Width = 56
            Height = 14
            Caption = 'Separar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel25: TRLLabel
            Left = 658
            Top = 85
            Width = 63
            Height = 14
            Caption = 'Separada'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel26: TRLLabel
            Left = 665
            Top = 69
            Width = 49
            Height = 14
            Caption = 'Quant.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel27: TRLLabel
            Left = 728
            Top = 69
            Width = 49
            Height = 14
            Caption = 'Quant.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel28: TRLLabel
            Left = 715
            Top = 85
            Width = 77
            Height = 14
            Caption = 'Entregando'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object lbl_periodo: TRLLabel
            Left = 198
            Top = 46
            Width = 107
            Height = 16
            Caption = 'Data Informada..: '
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 241
          Width = 794
          Height = 18
          BandType = btFooter
          object RLLabel23: TRLLabel
            Left = 1
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
            Width = 79
            Height = 12
            Caption = 'Frm_ProdEntregar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLGroup1: TRLGroup
          Left = 0
          Top = 112
          Width = 794
          Height = 129
          DataFields = 'GRUPO'
          object RLBand4: TRLBand
            Left = 0
            Top = 0
            Width = 794
            Height = 33
            BandType = btHeader
            object RLDBText2: TRLDBText
              Left = 139
              Top = 9
              Width = 51
              Height = 16
              DataField = 'GRUPO'
              DataSource = ds_cadp01
            end
            object RLLabel29: TRLLabel
              Left = 6
              Top = 9
              Width = 99
              Height = 16
              Caption = 'Grupo .............:'
            end
          end
          object RLGroup2: TRLGroup
            Left = 0
            Top = 65
            Width = 794
            Height = 64
            DataFields = 'GRUPO'
            object RLBand2: TRLBand
              Left = 0
              Top = 0
              Width = 794
              Height = 16
              object RLDBText3: TRLDBText
                Left = 66
                Top = 0
                Width = 283
                Height = 14
                AutoSize = False
                DataField = 'PDNOME'
                DataSource = ds_cadp01
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = []
                Holder = RLLabel9
                ParentFont = False
              end
              object RLDBText4: TRLDBText
                Left = 5
                Top = 0
                Width = 63
                Height = 14
                DataField = 'P2CODPRO'
                DataSource = ds_cadp01
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = []
                Holder = RLLabel8
                ParentFont = False
              end
              object RLDBText5: TRLDBText
                Left = 354
                Top = 1
                Width = 42
                Height = 14
                DataField = 'PDUND'
                DataSource = ds_cadp01
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = []
                Holder = RLLabel12
                ParentFont = False
              end
              object RLDBText6: TRLDBText
                Left = 385
                Top = 0
                Width = 63
                Height = 14
                Alignment = taRightJustify
                DataField = 'QTDVENDA'
                DataSource = ds_cadp01
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = []
                Holder = RLLabel13
                ParentFont = False
              end
              object RLDBText7: TRLDBText
                Left = 451
                Top = 0
                Width = 63
                Height = 14
                Alignment = taRightJustify
                DataField = 'QTFISICO'
                DataSource = ds_cadp01
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = []
                Holder = RLLabel16
                ParentFont = False
              end
              object RLDBText8: TRLDBText
                Left = 517
                Top = 0
                Width = 63
                Height = 14
                Alignment = taRightJustify
                DataField = 'QTDATUAL'
                DataSource = ds_cadp01
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = []
                Holder = RLLabel17
                ParentFont = False
              end
              object RLDBText9: TRLDBText
                Left = 588
                Top = 0
                Width = 56
                Height = 14
                Alignment = taRightJustify
                DataField = 'SEPARAR'
                DataSource = ds_cadp01
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = []
                Holder = RLLabel22
                ParentFont = False
              end
              object RLDBText10: TRLDBText
                Left = 644
                Top = 0
                Width = 77
                Height = 14
                Alignment = taRightJustify
                DataSource = ds_cadp01
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = []
                Holder = RLLabel25
                ParentFont = False
              end
              object RLDBText11: TRLDBText
                Left = 715
                Top = 1
                Width = 77
                Height = 14
                Alignment = taRightJustify
                DataField = 'ENTREGANDO'
                DataSource = ds_cadp01
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = []
                Holder = RLLabel28
                ParentFont = False
              end
            end
          end
          object RLBand5: TRLBand
            Left = 0
            Top = 33
            Width = 794
            Height = 32
            BandType = btHeader
            object RLLabel32: TRLLabel
              Left = 6
              Top = 9
              Width = 98
              Height = 16
              Caption = 'Sub Grupo ......:'
            end
            object RLDBText12: TRLDBText
              Left = 139
              Top = 9
              Width = 78
              Height = 16
              DataField = 'SUBGRUPO'
              DataSource = ds_cadp01
            end
          end
        end
      end
    end
  end
  object ds_cadp01: TDataSource
    DataSet = cadp01
    Left = 242
    Top = 13
  end
  object cadp01: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select pdnomgru as grupo, '
      '       pdnomram as subgrupo,'
      '       p2codpro,'
      '       pdnome,'
      '       pdund,'
      '       sum(p2qtd) as qtdvenda,'
      '       sum(cesaldo) as qtdatual,'
      
        '       sum(cesaldo+p2qtd-(p2qtd_entregue+p2qtd_entregando)) as q' +
        'tfisico,'
      '       sum(p2qtd-(p2qtd_entregue+p2qtd_entregando)) as separar,'
      '       sum(p2qtd_entregando) as entregando'
      'from   cadp01 ,cadp02,cadpro,cadcli,cadven,cadtra,cadest'
      'where '
      '((P1CODEMP=1))       and        '
      'p2codemp = p1codemp  and '
      'p2lotseq = p1lotseq  and '
      'p2chave  = p1chave   and '
      'p2ordem  = p1ordem   and  '
      'pdcodemp = p2codemp  and '
      'pdcodpro = p2codpro  and'
      'cecodemp = p2codemp  and '
      'cecodpro = p2codpro  and'
      'ccodemp  = p1codemp  and '
      'ccodcli  = p1codcli  and'
      'vcodemp  = p1codemp  and '
      'vcodven  = p1codven  and '
      'trcodemp(+) = p1codemp   and '
      'trcodtra(+) = p1codtra   and'
      'p1codemp <> 9999999      and'
      'p1datap  >= '#39'01/05/2006'#39' and'
      'p1datap  <= '#39'01/06/2006'#39' and'
      'p2codgru  in (0000024)'
      'group by pdnomgru, '
      '       pdnomram,'
      '       p2codpro,'
      '       pdnome,'
      '       pdund'
      '         ')
    Left = 194
    Top = 15
    object cadp01GRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 40
    end
    object cadp01SUBGRUPO: TStringField
      FieldName = 'SUBGRUPO'
      Size = 40
    end
    object cadp01P2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
    end
    object cadp01PDNOME: TStringField
      FieldName = 'PDNOME'
      Size = 53
    end
    object cadp01PDUND: TStringField
      FieldName = 'PDUND'
      Size = 3
    end
    object cadp01QTDVENDA: TFloatField
      FieldName = 'QTDVENDA'
    end
    object cadp01QTDATUAL: TFloatField
      FieldName = 'QTDATUAL'
    end
    object cadp01QTFISICO: TFloatField
      FieldName = 'QTFISICO'
    end
    object cadp01SEPARAR: TFloatField
      FieldName = 'SEPARAR'
    end
    object cadp01ENTREGANDO: TFloatField
      FieldName = 'ENTREGANDO'
    end
  end
  object RLDraftFilter1: TRLDraftFilter
    EjectMethod = ejForceWithCode
    DisplayName = 'MATRICIAL'
    Left = 313
    Top = 14
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 381
    Top = 13
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 453
    Top = 13
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 526
    Top = 12
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 590
    Top = 12
  end
end

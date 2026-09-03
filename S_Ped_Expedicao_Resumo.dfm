object Frm_Ped_Expedicao_Resumo: TFrm_Ped_Expedicao_Resumo
  Left = 46
  Top = 94
  Width = 722
  Height = 375
  Caption = 'Resumo da Expedi'#231#227'o'
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 714
    Height = 344
    ActivePage = tsOk
    Align = alClient
    MultiLine = True
    Style = tsFlatButtons
    TabOrder = 0
    object tsOk: TTabSheet
      Caption = 'Ok'
      object Label5: TLabel
        Left = 0
        Top = 0
        Width = 706
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
      object Label1: TLabel
        Left = 189
        Top = 168
        Width = 176
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Modelo da Minuta'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object sbSalvarPadrao: TSpeedButton
        Left = 369
        Top = 166
        Width = 150
        Height = 36
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
        OnClick = sbSalvarPadraoClick
      end
      object bbPreFat: TBitBtn
        Left = -1
        Top = 216
        Width = 184
        Height = 42
        Cursor = crHandPoint
        Hint = 'Click aqui para Emitir a Minuta de entrega'
        Caption = '&Emitir Minuta de Entrega'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
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
      object CB_MODELO: TComboBox
        Left = 189
        Top = 183
        Width = 177
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 1
        Text = 'Modelo 02'
        Items.Strings = (
          'Modelo 01'
          'Modelo 02'
          'Modelo 03')
      end
      object StaticText1: TStaticText
        Left = 67
        Top = 102
        Width = 406
        Height = 19
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Entregador / Transportadora'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 2
      end
      object NOMTRA: TEdit
        Left = 67
        Top = 120
        Width = 406
        Height = 19
        TabStop = False
        Color = 10485711
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object bbFechar: TBitBtn
        Left = 511
        Top = 216
        Width = 184
        Height = 42
        Caption = '&Fechar Esta Janela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
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
      object StaticText2: TStaticText
        Left = 472
        Top = 102
        Width = 169
        Height = 19
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Minuta'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 5
      end
      object CHAVE_MIN: TEdit
        Left = 472
        Top = 120
        Width = 169
        Height = 19
        TabStop = False
        Color = 10485711
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 6
      end
      object OBS_RESUMO: TStaticText
        Left = 67
        Top = 138
        Width = 574
        Height = 19
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Color = 10724305
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 7
      end
    end
    object TsErro: TTabSheet
      Caption = 'Erro'
      ImageIndex = 1
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 341
        Height = 25
        Align = alTop
        Alignment = taCenter
        Caption = 'Rela'#231#227'o das Divergencias Encontradas'
        Color = 12308991
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Panel1: TPanel
        Left = 0
        Top = 269
        Width = 706
        Height = 41
        Align = alBottom
        Color = 12308991
        TabOrder = 0
        object bbErroFechar: TBitBtn
          Left = 219
          Top = 3
          Width = 250
          Height = 38
          Caption = '&Fechar Esta Janela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = bbErroFecharClick
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
      object DBGrid_erro: TDBGrid
        Left = 0
        Top = 24
        Width = 706
        Height = 157
        Align = alClient
        Color = 12308991
        DataSource = Frm_Ped_Expedicao.Src_CeleRes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'CERCHAVE'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CERQTDVOL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CERQTDLID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CERDIFER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CERNOMECLI'
            Width = 268
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CERCIDADEUF'
            Visible = True
          end>
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 181
        Width = 706
        Height = 88
        Align = alBottom
        Caption = 'Volumes N'#227'o Lidos(Encontrados):'
        Color = 12308991
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        object DBText1: TDBText
          Left = 2
          Top = 15
          Width = 702
          Height = 71
          Align = alClient
          Alignment = taCenter
          Color = 12308991
          DataField = 'volumes'
          DataSource = Frm_Ped_Expedicao.Src_CeleRes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
      end
    end
  end
end

inherited Frm_CImp: TFrm_CImp
  Left = 212
  Top = 125
  Width = 658
  Height = 432
  Caption = 'Manuten'#231#227'o no Cadastro de Impressora do Sistema'
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 650
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
  end
  inherited Panel3: TPanel
    Top = 353
    Width = 650
    inherited DBNavigator1: TDBNavigator
      DataSource = DataSource1
    end
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
    inherited SAIR: TBitBtn
      Left = 641
    end
    object bbTestar: TBitBtn
      Left = 577
      Top = 5
      Width = 64
      Height = 37
      Hint = 'Sair do Programa'
      Caption = '&Testar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = bbTestarClick
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
  end
  inherited PC1: TPageControl
    Width = 650
    Height = 324
    inherited tsCad: TTabSheet
      Enabled = False
      object Label1: TLabel
        Left = 8
        Top = 1
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 8
        Top = 47
        Width = 111
        Height = 13
        Caption = 'Descri'#231#227'o do Relat'#243'rio '
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 8
        Top = 97
        Width = 111
        Height = 13
        Caption = 'Porta de Comunica'#231#227'o '
      end
      object Label5: TLabel
        Left = 8
        Top = 138
        Width = 158
        Height = 13
        Caption = 'Quantidade de Linhas por P'#225'gina'
        FocusControl = DBEdit5
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 8
        Top = 190
        Width = 301
        Height = 63
        Caption = 'Modelos de Impressoras'
        Columns = 3
        DataField = 'CIMODELO'
        DataSource = DataSource1
        Items.Strings = (
          '&Epson'
          '&Grafico'
          '&HP'
          '&Personalizada'
          '&Rima'
          '&Bematec Bobina')
        TabOrder = 0
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5')
      end
      object DBEdit5: TDBEdit
        Left = 8
        Top = 158
        Width = 64
        Height = 21
        DataField = 'CIQTDLP'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 8
        Top = 71
        Width = 304
        Height = 21
        DataField = 'CINOMREL'
        DataSource = DataSource1
        TabOrder = 2
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 21
        Width = 145
        Height = 21
        DataField = 'CICODIGO'
        DataSource = DataSource1
        TabOrder = 4
      end
      object DBComboBox1: TDBComboBox
        Left = 9
        Top = 113
        Width = 257
        Height = 21
        DataField = 'CIPORTA'
        DataSource = DataSource1
        ItemHeight = 13
        TabOrder = 3
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 608
        Height = 289
        DataSource = DataSource1
        Columns = <
          item
            Expanded = False
            FieldName = 'CICODIGO'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CINOMREL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIPORTA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIMODELO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIQTDLP'
            Width = 64
            Visible = True
          end>
      end
    end
    object tsReport: TTabSheet
      Caption = 'tsReport'
      ImageIndex = 2
      object RL_Teste: TRLReport
        Left = 8
        Top = 32
        Width = 794
        Height = 1123
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLBand1: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 61
          object rl_linha01: TRLLabel
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taCenter
          end
          object rl_linha02: TRLLabel
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taCenter
          end
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = DM4.Tb_Imp_Sys
    Left = 204
    Top = 93
  end
end

object Frm_CPSimples: TFrm_CPSimples
  Left = 71
  Top = 110
  Width = 665
  Height = 441
  Caption = 'Pagamento de Titulos Simplificado'
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gb_ultlanc: TGroupBox
    Left = 0
    Top = 0
    Width = 657
    Height = 105
    Align = alTop
    Caption = #218'ltimos Lan'#231'amentos:'
    TabOrder = 0
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 128
    Width = 657
    Height = 279
    ActivePage = TsPrincipais
    Align = alBottom
    TabOrder = 1
    object TsPrincipais: TTabSheet
      Caption = 'Contas a Pagar e Fluxo de Caixa'
      object gb_digitacao: TGroupBox
        Left = 0
        Top = 0
        Width = 649
        Height = 192
        Align = alTop
        Caption = 'Digita'#231#227'o do Pagamento:'
        TabOrder = 0
        object Label1: TLabel
          Left = 34
          Top = 37
          Width = 48
          Height = 13
          Caption = 'N'#250'mero:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 157
          Top = 35
          Width = 66
          Height = 13
          Caption = 'Desd/Parc:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 254
          Top = 37
          Width = 82
          Height = 13
          Caption = 'Data Emiss'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 430
          Top = 37
          Width = 76
          Height = 13
          Caption = 'Data Vencto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 14
          Top = 19
          Width = 69
          Height = 13
          Caption = 'Fornecedor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 47
          Top = 55
          Width = 34
          Height = 13
          Caption = 'Valor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object txt_numdup: TEdit
          Left = 84
          Top = 33
          Width = 67
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
        end
        object txt_parc: TEdit
          Left = 223
          Top = 33
          Width = 27
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
        end
        object txt_dtemis: TDateEdit
          Left = 338
          Top = 33
          Width = 86
          Height = 19
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 2
        end
        object txt_dtvcto: TDateEdit
          Left = 506
          Top = 33
          Width = 86
          Height = 19
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 3
        end
        object txt_codfor: TEdit
          Left = 84
          Top = 15
          Width = 67
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
        end
        object txt_nomfor: TEdit
          Left = 150
          Top = 15
          Width = 442
          Height = 19
          TabStop = False
          Color = 12058551
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
        object txt_valor: TCurrencyEdit
          Left = 84
          Top = 51
          Width = 121
          Height = 19
          AutoSize = False
          Ctl3D = False
          DisplayFormat = '0.00;-0.00'
          ParentCtl3D = False
          TabOrder = 6
        end
        object gb_fluxo: TGroupBox
          Left = 4
          Top = 71
          Width = 635
          Height = 96
          Caption = 'Fluxo de Caixa:'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          object Label25: TLabel
            Left = 11
            Top = 17
            Width = 102
            Height = 13
            Caption = 'C'#243'digo do Banco:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label23: TLabel
            Left = 29
            Top = 36
            Width = 84
            Height = 13
            Caption = 'Departamento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label22: TLabel
            Left = 17
            Top = 54
            Width = 96
            Height = 13
            Caption = 'Centro de Custo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label24: TLabel
            Left = 15
            Top = 76
            Width = 98
            Height = 13
            Caption = 'Desc.movimento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CB_nombco: TComboBox
            Left = 178
            Top = 15
            Width = 426
            Height = 21
            AutoDropDown = True
            BevelKind = bkSoft
            Ctl3D = True
            ItemHeight = 13
            ParentCtl3D = False
            TabOrder = 6
            Text = 'CB_nomdep'
          end
          object CB_nomdep: TComboBox
            Left = 178
            Top = 33
            Width = 426
            Height = 21
            AutoDropDown = True
            BevelKind = bkSoft
            Ctl3D = True
            ItemHeight = 13
            ParentCtl3D = False
            TabOrder = 4
            Text = 'CB_nomdep'
          end
          object CB_Nomccu: TComboBox
            Left = 178
            Top = 51
            Width = 426
            Height = 21
            AutoDropDown = True
            BevelKind = bkSoft
            Ctl3D = True
            ItemHeight = 13
            ParentCtl3D = False
            TabOrder = 5
            Text = 'CB_nomdep'
          end
          object txt_codbco: TEdit
            Left = 112
            Top = 15
            Width = 67
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
          end
          object txt_coddep: TEdit
            Left = 112
            Top = 33
            Width = 67
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
          end
          object txt_codccu: TEdit
            Left = 112
            Top = 51
            Width = 67
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
          end
          object Edit1: TEdit
            Left = 112
            Top = 69
            Width = 491
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
          end
        end
      end
    end
    object tsNFE: TTabSheet
      Caption = 'Nota Fiscal de Entrada'
      ImageIndex = 1
    end
  end
end

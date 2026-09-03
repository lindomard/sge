inherited Frm_SG: TFrm_SG
  Caption = 'Cadastro de Sub-Grupos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
  end
  inherited Panel3: TPanel
    object DBNavigator1: TDBNavigator
      Left = 4
      Top = 2
      Width = 220
      Height = 25
      DataSource = DM1.Src_SG
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
  end
  inherited PC1: TPageControl
    inherited tsCad: TTabSheet
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 704
        Height = 214
        Align = alClient
        TabOrder = 0
        object Label1: TLabel
          Left = 38
          Top = 22
          Width = 87
          Height = 13
          Caption = 'C'#243'digo Sub-Grupo'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 38
          Top = 62
          Width = 82
          Height = 13
          Caption = 'Nome Sub-Grupo'
          FocusControl = DBEdit2
        end
        object DBEdit1: TDBEdit
          Left = 38
          Top = 36
          Width = 64
          Height = 21
          DataField = 'SGCODSG'
          DataSource = DM1.Src_SG
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 38
          Top = 76
          Width = 124
          Height = 21
          DataField = 'SGNOME'
          DataSource = DM1.Src_SG
          TabOrder = 1
        end
        object Natureza: TDBRadioGroup
          Left = 36
          Top = 98
          Width = 125
          Height = 37
          Caption = 'Natureza'
          Columns = 2
          DataField = 'SGNAT'
          DataSource = DM1.Src_SG
          Items.Strings = (
            '&D'#233'bito'
            '&Cr'#233'dito')
          TabOrder = 2
          Values.Strings = (
            'D'
            'C')
        end
      end
    end
    inherited tsTab: TTabSheet
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 704
        Height = 214
        Align = alClient
        DataSource = DM1.Src_SG
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SGCODSG'
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SGNOME'
            Width = 218
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SGNAT'
            Visible = True
          end>
      end
    end
  end
end

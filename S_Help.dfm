inherited Frm_Help: TFrm_Help
  Top = 29
  Height = 493
  Caption = 'Manuten'#231#227'o no arquivo de Ajuda '
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
  end
  inherited PC1: TPageControl
    Height = 324
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 27
        Top = 16
        Width = 90
        Height = 13
        Caption = 'C'#243'digo do Link:'
      end
      object Label2: TLabel
        Left = 35
        Top = 40
        Width = 83
        Height = 13
        Caption = 'Nome do Link:'
      end
      object Label3: TLabel
        Left = 5
        Top = 60
        Width = 117
        Height = 13
        Caption = 'Nome do Formul'#225'rio:'
      end
      object Label4: TLabel
        Left = 81
        Top = 84
        Width = 36
        Height = 13
        Caption = 'Mapa:'
      end
      object Label5: TLabel
        Left = 13
        Top = 103
        Width = 102
        Height = 13
        Caption = 'Para o Segmento:'
      end
      object DBEdit1: TDBEdit
        Left = 122
        Top = 13
        Width = 121
        Height = 19
        Ctl3D = False
        DataField = 'HP_CODLINK'
        DataSource = DM2.Src_Help
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 123
        Top = 34
        Width = 257
        Height = 19
        Ctl3D = False
        DataField = 'HP_NOMCAM'
        DataSource = DM2.Src_Help
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 123
        Top = 56
        Width = 257
        Height = 19
        Ctl3D = False
        DataField = 'HP_FORMULARIO'
        DataSource = DM2.Src_Help
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 122
        Top = 78
        Width = 257
        Height = 19
        Ctl3D = False
        DataField = 'HP_MAPA'
        DataSource = DM2.Src_Help
        ParentCtl3D = False
        TabOrder = 3
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 149
        Width = 526
        Height = 147
        Align = alBottom
        Caption = 'Conte'#250'do da Ajuda: [Para Sair use a tecla TAB]'
        TabOrder = 6
        object DBMemo1: TDBMemo
          Left = 2
          Top = 15
          Width = 522
          Height = 130
          Align = alClient
          DataField = 'HP_DESC'
          DataSource = DM2.Src_Help
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object DBEdit5: TDBEdit
        Left = 123
        Top = 100
        Width = 61
        Height = 19
        Ctl3D = False
        DataField = 'HP_CODSEG'
        DataSource = DM2.Src_Help
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 185
        Top = 100
        Width = 313
        Height = 19
        Ctl3D = False
        DataField = 'nomeseg'
        DataSource = DM2.Src_Help
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 5
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Height = 296
        DataSource = DM2.Src_Help
        Columns = <
          item
            Expanded = False
            FieldName = 'HP_CODSEG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HP_CODLINK'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HP_NOMCAM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HP_MAPA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HP_FORMULARIO'
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 353
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 406
    inherited DBNavigator1: TDBNavigator
      DataSource = DM2.Src_Help
    end
  end
end

inherited Frm_MPar: TFrm_MPar
  Height = 341
  Caption = 'Manuten'#231#227'o no Arquivo de Motivo de Parada'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
  end
  inherited PC1: TPageControl
    Height = 172
    inherited tsCad: TTabSheet
      object StaticText1: TStaticText
        Left = 0
        Top = 25
        Width = 75
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'C'#243'digo'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = cl3DLight
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 1
        Top = 44
        Width = 75
        Height = 21
        Color = clSkyBlue
        DataField = 'MPARCODIGO'
        DataSource = DM4.Src_MPar
        TabOrder = 1
        OnExit = DBEdit1Exit
      end
      object StaticText2: TStaticText
        Left = 79
        Top = 25
        Width = 400
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Motivo'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = cl3DLight
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 80
        Top = 43
        Width = 400
        Height = 21
        Color = clSkyBlue
        DataField = 'MPARMOTIVO'
        DataSource = DM4.Src_MPar
        TabOrder = 3
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Height = 151
        DataSource = DM4.Src_MPar
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'MPARCODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MPARMOTIVO'
            Width = 64
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 201
    inherited EXCLUIR: TBitBtn
      Left = 133
    end
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 254
    inherited DBNavigator1: TDBNavigator
      DataSource = DM4.Src_MPar
    end
  end
end

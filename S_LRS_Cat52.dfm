object Frm_LRS_Cat52: TFrm_LRS_Cat52
  Left = 192
  Top = 124
  Width = 928
  Height = 494
  Caption = 'Inconsistencias no Livro de Saida'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 912
    Height = 415
    ActivePage = tsResumo
    Align = alClient
    TabOrder = 1
    object tsResumo: TTabSheet
      Caption = 'Resumo'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 904
        Height = 240
        Align = alClient
        Caption = 'Ocorrencias'
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 900
          Height = 223
          Align = alClient
          DataSource = src_cat52
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'CMCODIMP'
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CMDATA'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MP_VDALIQ'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MP_CANCELADOS'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MP_ACREC'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MP_DESC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MP_ISENTAS'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MP_NAOINC'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MP_SUBTRI'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MP_TOTTRIB'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CAT52_VDALIQ'
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CAT52_CANCELADOS'
              Width = 131
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CAT52_ACREC'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CAT52_DESC'
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CAT52_ISENTAS'
              Width = 102
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CAT52_NAOINC'
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CAT52_SUBTRI'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CAT52_TOTTRIB'
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PED2_VDALIQ'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PED2_CANCELADOS'
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PED2_ACREC'
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PED2_DESC'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PED2_ISENTAS'
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PED2_NAOINC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PED2_SUBTRI'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PED2_TOTTRIB'
              Width = 97
              Visible = True
            end>
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 240
        Width = 904
        Height = 147
        Align = alBottom
        Caption = 'Resumo Di'#225'rio:'
        Color = 13041606
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object Panel2: TPanel
          Left = 434
          Top = 17
          Width = 108
          Height = 125
          TabOrder = 0
          object StaticText12: TStaticText
            Left = 0
            Top = 0
            Width = 107
            Height = 35
            Alignment = taCenter
            AutoSize = False
            BevelKind = bkSoft
            Caption = 'Totais do CAT52'
            Color = 8235263
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6776679
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
          object DBE_CAT52_VDALIQ: TDBEdit
            Left = 0
            Top = 33
            Width = 107
            Height = 19
            Color = 14548991
            Ctl3D = False
            DataField = 'CAT52_VDALIQ'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6776679
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object DBE_CAT52_ISENTAS: TDBEdit
            Left = 0
            Top = 51
            Width = 107
            Height = 19
            Color = 14548991
            Ctl3D = False
            DataField = 'CAT52_ISENTAS'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6776679
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object DBE_CAT52_NAOINC: TDBEdit
            Left = 0
            Top = 69
            Width = 107
            Height = 19
            Color = 14548991
            Ctl3D = False
            DataField = 'CAT52_NAOINC'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6776679
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
          end
          object DBE_CAT52_SUBTRI: TDBEdit
            Left = 0
            Top = 87
            Width = 107
            Height = 19
            Color = 14548991
            Ctl3D = False
            DataField = 'CAT52_SUBTRI'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6776679
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
          end
          object DBE_CAT52_TOTTRIB: TDBEdit
            Left = 1
            Top = 105
            Width = 107
            Height = 19
            Color = 14548991
            Ctl3D = False
            DataField = 'CAT52_TOTTRIB'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6776679
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
          end
        end
        object Panel_livrofis: TPanel
          Left = 220
          Top = 16
          Width = 110
          Height = 125
          TabOrder = 1
          object StaticText7: TStaticText
            Left = 1
            Top = 1
            Width = 108
            Height = 35
            Alignment = taCenter
            AutoSize = False
            BevelKind = bkSoft
            Caption = 'Totais Livro Fiscal'
            Color = 14148607
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16715535
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
          object DBE_PED2_VDALIQ: TDBEdit
            Left = 1
            Top = 34
            Width = 107
            Height = 19
            Color = 14548991
            Ctl3D = False
            DataField = 'PED2_VDALIQ'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16715535
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object DBE_PED2_ISENTAS: TDBEdit
            Left = 1
            Top = 52
            Width = 107
            Height = 19
            Color = 14548991
            Ctl3D = False
            DataField = 'PED2_ISENTAS'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16715535
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object DBE_PED2_NAOINC: TDBEdit
            Left = 1
            Top = 70
            Width = 107
            Height = 19
            Color = 14548991
            Ctl3D = False
            DataField = 'PED2_NAOINC'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16715535
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
          end
          object DBE_PED2_SUBTRI: TDBEdit
            Left = 1
            Top = 88
            Width = 107
            Height = 19
            Color = 14548991
            Ctl3D = False
            DataField = 'PED2_SUBTRI'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16715535
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
          end
          object DBE_PED2_TOTTRIB: TDBEdit
            Left = 1
            Top = 106
            Width = 107
            Height = 19
            Color = 14548991
            Ctl3D = False
            DataField = 'PED2_TOTTRIB'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16715535
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
          end
        end
        object Panel_mapares: TPanel
          Left = 112
          Top = 16
          Width = 110
          Height = 125
          TabOrder = 2
          object StaticText6: TStaticText
            Left = 1
            Top = 1
            Width = 108
            Height = 35
            Alignment = taCenter
            AutoSize = False
            BevelKind = bkSoft
            Caption = 'Totais Extraidos do Mapa Resumo'
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
          object DBE_MP_VDALIQ: TDBEdit
            Left = 1
            Top = 34
            Width = 107
            Height = 19
            Color = 16762566
            Ctl3D = False
            DataField = 'MP_VDALIQ'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object DBE_MP_ISENTAS: TDBEdit
            Left = 1
            Top = 52
            Width = 107
            Height = 19
            Color = 16762566
            Ctl3D = False
            DataField = 'MP_ISENTAS'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object DBE_MP_NAOINC: TDBEdit
            Left = 1
            Top = 70
            Width = 107
            Height = 19
            Color = 16762566
            Ctl3D = False
            DataField = 'MP_NAOINC'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
          end
          object DBE_MP_SUBTRI: TDBEdit
            Left = 1
            Top = 88
            Width = 107
            Height = 19
            Color = 16762566
            Ctl3D = False
            DataField = 'MP_SUBTRI'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
          end
          object DBE_MP_TOTTRIB: TDBEdit
            Left = 1
            Top = 106
            Width = 107
            Height = 19
            Color = 16762566
            Ctl3D = False
            DataField = 'MP_TOTTRIB'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
          end
        end
        object Panel_titulo: TPanel
          Left = 5
          Top = 15
          Width = 110
          Height = 126
          TabOrder = 3
          object DBText1: TDBText
            Left = 5
            Top = 5
            Width = 101
            Height = 28
            Alignment = taCenter
            DataField = 'CMDATA'
            DataSource = src_cat52
            WordWrap = True
          end
          object StaticText2: TStaticText
            Left = 1
            Top = 36
            Width = 107
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            BevelKind = bkSoft
            Caption = 'Venda Liquida'
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
          object StaticText3: TStaticText
            Left = 1
            Top = 54
            Width = 107
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            BevelKind = bkSoft
            Caption = 'Isentas:'
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 1
          end
          object StaticText4: TStaticText
            Left = 1
            Top = 72
            Width = 107
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            BevelKind = bkSoft
            Caption = 'N'#227'o Incidente:'
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 2
          end
          object StaticText5: TStaticText
            Left = 1
            Top = 88
            Width = 107
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            BevelKind = bkSoft
            Caption = 'Substitui'#231#227'o: '
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 3
          end
          object StaticText9: TStaticText
            Left = 1
            Top = 106
            Width = 107
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            BevelKind = bkSoft
            Caption = 'Tributados:'
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 4
          end
        end
        object Panel3: TPanel
          Left = 327
          Top = 16
          Width = 110
          Height = 125
          TabOrder = 4
          object StaticText1: TStaticText
            Left = 1
            Top = 1
            Width = 108
            Height = 35
            Alignment = taCenter
            AutoSize = False
            BevelKind = bkSoft
            Caption = 'Diferen'#231'a Mapa x Livro Fiscal'
            Color = 14148607
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16715535
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
          object DBE_DIFMP_PED2_VDALIQ: TDBEdit
            Left = 1
            Top = 34
            Width = 107
            Height = 19
            Color = 14548991
            Ctl3D = False
            DataField = 'DIFMP_PED2_VDALIQ'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16715535
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object DBE_DIFMP_PED2_ISENTAS: TDBEdit
            Left = 1
            Top = 52
            Width = 107
            Height = 19
            Color = 14548991
            Ctl3D = False
            DataField = 'DIFMP_PED2_ISENTAS'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16715535
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object DBE_DIFMP_PED2_NAOINC: TDBEdit
            Left = 1
            Top = 70
            Width = 107
            Height = 19
            Color = 14548991
            Ctl3D = False
            DataField = 'DIFMP_PED2_NAOINC'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16715535
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
          end
          object DBE_DIFMP_PED2_SUBTRI: TDBEdit
            Left = 1
            Top = 88
            Width = 107
            Height = 19
            Color = 14548991
            Ctl3D = False
            DataField = 'DIFMP_PED2_SUBTRI'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16715535
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
          end
          object DBE_DIFMP_PED2_TOTTRIB: TDBEdit
            Left = 1
            Top = 106
            Width = 107
            Height = 19
            Color = 14548991
            Ctl3D = False
            DataField = 'DIFMP_PED2_TOTTRIB'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16715535
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
          end
        end
        object Panel4: TPanel
          Left = 539
          Top = 17
          Width = 108
          Height = 125
          TabOrder = 5
          object StaticText8: TStaticText
            Left = 0
            Top = 0
            Width = 107
            Height = 35
            Alignment = taCenter
            AutoSize = False
            BevelKind = bkSoft
            Caption = 'Diferen'#231'a Mapa x CAT52'
            Color = 8235263
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6776679
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
          object DBE_DIFMP_CAT52_VDALIQ: TDBEdit
            Left = 0
            Top = 33
            Width = 107
            Height = 19
            Color = 14548991
            Ctl3D = False
            DataField = 'DIFMP_CAT52_VDALIQ'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6776679
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object DBE_DIFMP_CAT52_ISENTAS: TDBEdit
            Left = 0
            Top = 51
            Width = 107
            Height = 19
            Color = 14548991
            Ctl3D = False
            DataField = 'DIFMP_CAT52_ISENTAS'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6776679
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object DBE_DIFMP_CAT52_NAOINC: TDBEdit
            Left = 0
            Top = 69
            Width = 107
            Height = 19
            Color = 14548991
            Ctl3D = False
            DataField = 'DIFMP_CAT52_NAOINC'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6776679
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
          end
          object DBE_DIFMP_CAT52_SUBTRI: TDBEdit
            Left = 0
            Top = 87
            Width = 107
            Height = 19
            Color = 14548991
            Ctl3D = False
            DataField = 'DIFMP_CAT52_SUBTRI'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6776679
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
          end
          object DBE_DIFMP_CAT52_TOTTRIB: TDBEdit
            Left = 1
            Top = 105
            Width = 107
            Height = 19
            Color = 14548991
            Ctl3D = False
            DataField = 'DIFMP_CAT52_TOTTRIB'
            DataSource = src_cat52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6776679
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
          end
        end
      end
    end
    object tsErrosGraves: TTabSheet
      Caption = 'Erros Graves Encontrados'
      ImageIndex = 1
      object memo_erros_graves: TRichEdit
        Left = 0
        Top = 0
        Width = 904
        Height = 387
        Align = alClient
        Lines.Strings = (
          'RichEdit1')
        TabOrder = 0
      end
    end
  end
  object src_cat52: TDataSource
    DataSet = qr_cat52
    Left = 456
    Top = 57
  end
  object qr_cat52: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from ('
      'SELECT CMCODEMP,CMCODIMP,CMDATA'
      '       ,sum(MP_VDALIQ)  AS MP_VDALIQ'
      '       ,SUM(MP_CANCELADOS) AS MP_CANCELADOS'
      '       ,sum(MP_ACREC) AS MP_ACREC'
      '       ,sum(MP_DESC)  AS MP_DESC'
      '       ,sum(MP_ISENTAS) AS MP_ISENTAS'
      '       ,sum(MP_NAOINC) AS MP_NAOINC'
      '       ,sum(MP_SUBTRI)  AS MP_SUBTRI'
      '       ,SUM(MP_TOTTRIB) AS MP_TOTTRIB'
      '       ,max(ORIGEMINF) AS ORIGEMINF'
      '       ,sum(CAT52_VDALIQ) AS CAT52_VDALIQ'
      '       ,sum(MP_VDALIQ-CAT52_VDALIQ) AS DIFMP_CAT52_VDALIQ'
      '       ,sum(CAT52_CANCELADOS) AS CAT52_CANCELADOS'
      '       ,sum(CAT52_ACREC) AS CAT52_ACREC'
      '       ,sum(CAT52_DESC) AS CAT52_DESC'
      '       ,sum(CAT52_ISENTAS) AS CAT52_ISENTAS'
      '       ,sum(MP_ISENTAS-CAT52_ISENTAS) AS DIFMP_CAT52_ISENTAS'
      '       ,sum(CAT52_NAOINC) AS CAT52_NAOINC'
      '       ,sum(MP_NAOINC-CAT52_NAOINC) AS DIFMP_CAT52_NAOINC'
      '       ,sum(CAT52_SUBTRI) AS CAT52_SUBTRI'
      '       ,sum(MP_SUBTRI-CAT52_SUBTRI) AS DIFMP_CAT52_SUBTRI'
      '       ,sum(CAT52_TOTTRIB) AS CAT52_TOTTRIB'
      '       ,sum(CAT52_TOTTRIB-MP_TOTTRIB) AS DIFMP_CAT52_TOTTRIB'
      '       ,sum(PED2_VDALIQ) AS PED2_VDALIQ'
      '       ,sum(MP_VDALIQ-PED2_VDALIQ) AS DIFMP_PED2_VDALIQ'
      '       ,sum(PED2_CANCELADOS) AS PED2_CANCELADOS'
      '       ,sum(PED2_ACREC) AS PED2_ACREC'
      '       ,sum(PED2_DESC) AS PED2_DESC'
      '       ,sum(PED2_ISENTAS) AS PED2_ISENTAS'
      '       ,sum(MP_ISENTAS-PED2_ISENTAS) AS DIFMP_PED2_ISENTAS'
      '       ,sum(PED2_NAOINC) AS PED2_NAOINC'
      '       ,sum(MP_NAOINC-PED2_NAOINC) AS DIFMP_PED2_NAOINC'
      '       ,sum(PED2_SUBTRI) AS PED2_SUBTRI'
      '       ,sum(MP_SUBTRI-PED2_SUBTRI) AS DIFMP_PED2_SUBTRI'
      '       ,sum(PED2_TOTTRIB) AS PED2_TOTTRIB'
      '       ,sum(MP_TOTTRIB-PED2_TOTTRIB) AS DIFMP_PED2_TOTTRIB'
      'from ('
      
        'SELECT CMCODEMP,CMCODIMP,CMDATA        ,CMVDALIQ AS MP_VDALIQ   ' +
        '     ,CMCUPCAN AS MP_CANCELADOS'
      
        ',CMACRECUP AS MP_ACREC        ,CMDESCUP AS MP_DESC       ,CMISEN' +
        'TAS AS MP_ISENTAS        ,CMNAOINC AS MP_NAOINC'
      
        ',CMSUBTRI AS MP_SUBTRI        ,SUM(CM2VALOR) AS MP_TOTTRIB      ' +
        '  ,'#39'MP'#39' AS ORIGEMINF        ,0 AS CAT52_VDALIQ       '
      
        ',0 AS CAT52_CANCELADOS        ,0 AS CAT52_ACREC        ,0 AS CAT' +
        '52_DESC        ,0 AS CAT52_ISENTAS        '
      
        ',0 AS CAT52_NAOINC        ,0 AS CAT52_SUBTRI        ,0 AS CAT52_' +
        'TOTTRIB        ,0 AS PED2_VDALIQ        '
      
        ',0 AS PED2_CANCELADOS        ,0 AS PED2_ACREC        ,0 AS PED2_' +
        'DESC        ,0 AS PED2_ISENTAS        ,0 AS PED2_NAOINC        '
      
        ',0 AS PED2_SUBTRI        ,0 AS PED2_TOTTRIB         FROM CADMI01' +
        ',CADMI02        '
      
        'WHERE CM2CODEMP=CMCODEMP AND CM2CODIMP=CMCODIMP AND CM2DATA=CMDA' +
        'TA'
      
        'AND CMDATA>=:DATAINI and CMDATA<=:DATAFIN  AND CMCODEMP=:CODEMP ' +
        ' GROUP BY  CMCODEMP,CMCODIMP,CMDATA'
      
        ',CMVDALIQ        ,CMCUPCAN        ,CMACRECUP        ,CMDESCUP   ' +
        '     ,CMISENTAS        ,CMNAOINC        '
      
        ',CMSUBTRI  union  SELECT CT52I_CODEMP AS CMCODEMP        ,CT52I_' +
        'CODECF AS CMCODIMP        '
      
        ',CT52I_DATACF AS CMDATA        ,0 AS MP_VDALIQ        ,0 AS MP_C' +
        'ANCELADOS        ,0 AS MP_ACREC        '
      
        ',0 AS MP_DESC        ,0 AS MP_ISENTAS        ,0 AS MP_NAOINC    ' +
        '    ,0 AS MP_SUBTRI        ,0 AS MP_TOTTRIB        '
      
        ','#39'CAT52'#39' AS ORIGEMINF        ,sum(CASE WHEN CT52I_INDCANC='#39'S'#39' TH' +
        'EN 0 ELSE CT52I_TOTLIQ-NVL(CT52I_VALDES_GER,0) END) AS CAT52_VDA' +
        'LIQ        '
      
        ',sum(CASE WHEN CT52I_INDCANC='#39'S'#39' THEN CT52I_TOTLIQ-NVL(CT52I_VAL' +
        'DES_GER,0) ELSE 0 END) AS CAT52_CANCELADOS        '
      
        ',sum(CASE WHEN CT52I_INDCANC='#39'S'#39' THEN 0 ELSE CT52I_VALACRE_GER E' +
        'ND) AS  CAT52_ACREC        '
      
        ',sum(CASE WHEN CT52I_INDCANC='#39'S'#39' THEN 0 ELSE CT52I_VALDES_GER EN' +
        'D) AS  CAT52_DESC        '
      
        ',sum(CASE WHEN CT52I_INDCANC='#39'S'#39' THEN 0 WHEN SUBSTR(CT52I_TOTPAR' +
        'C,1,1)='#39'I'#39' THEN CT52I_TOTLIQ-NVL(CT52I_VALDES_GER,0) ELSE 0 END)' +
        ' AS  CAT52_ISENTAS        '
      
        ',sum(CASE WHEN CT52I_INDCANC='#39'N'#39' THEN 0 WHEN SUBSTR(CT52I_TOTPAR' +
        'C,1,1)='#39'N'#39' THEN CT52I_TOTLIQ-NVL(CT52I_VALDES_GER,0) ELSE 0 END)' +
        ' AS  CAT52_NAOINC        '
      
        ',sum(CASE WHEN CT52I_INDCANC='#39'N'#39' THEN 0 WHEN SUBSTR(CT52I_TOTPAR' +
        'C,1,1)='#39'F'#39' THEN CT52I_TOTLIQ-NVL(CT52I_VALDES_GER,0) ELSE 0 END)' +
        ' AS  CAT52_SUBTRI        '
      
        ',sum(CASE WHEN CT52I_INDCANC='#39'N'#39' THEN 0 WHEN SUBSTR(CT52I_TOTPAR' +
        'C,1,1)='#39'T'#39' THEN CT52I_TOTLIQ-NVL(CT52I_VALDES_GER,0) ELSE 0 END)' +
        ' AS  CAT52_TOTTRIB        '
      
        ',0 AS PED2_VDALIQ        ,0 AS PED2_CANCELADOS        ,0 AS PED2' +
        '_ACREC        ,0 AS PED2_DESC        ,0 AS PED2_ISENTAS        ,' +
        '0 AS PED2_NAOINC        '
      
        ',0 AS PED2_SUBTRI        ,0 AS PED2_TOTTRIB         FROM CADECF_' +
        'CAT52_ITENS        WHERE CT52I_CODEMP=:CODEMP         '
      
        'AND CT52I_DATACF>=:DATAINI AND CT52I_DATACF<=:DATAFIN  GROUP BY ' +
        'CT52I_CODEMP        ,CT52I_CODECF        ,CT52I_DATACF  union  '
      
        'SELECT P1CODEMP AS CMCODEMP        ,P1CODECF AS CMCODIMP        ' +
        ',P1DATACF AS CMDATA        ,0 AS MP_VDALIQ        ,0 AS MP_CANCE' +
        'LADOS        '
      
        ',0 AS MP_ACREC        ,0 AS MP_DESC        ,0 AS MP_ISENTAS     ' +
        '   ,0 AS MP_NAOINC        ,0 AS MP_SUBTRI        ,0 AS MP_TOTTRI' +
        'B        '
      
        ','#39'PED2'#39' AS ORIGEMINF        ,0 AS CAT52_VDALIQ        ,0 AS CAT5' +
        '2_CANCELADOS        ,0 AS CAT52_ACREC        ,0 AS CAT52_DESC   ' +
        '     '
      
        ',0 AS CAT52_ISENTAS        ,0 AS CAT52_NAOINC        ,0 AS CAT52' +
        '_SUBTRI        ,0 AS CAT52_TOTTRIB        '
      
        ',sum(CASE WHEN P1STATUS=9 THEN 0 ELSE P2TOTLIQ END) AS PED2_VDAL' +
        'IQ        ,sum(CASE WHEN P1STATUS=9 THEN P2TOTLIQ ELSE 0 END) AS' +
        ' PED2_CANCELADOS        '
      
        ',sum(CASE WHEN P1STATUS=9 THEN 0 ELSE 0 END) AS  PED2_ACREC     ' +
        '   ,sum(CASE WHEN P1STATUS=9 THEN 0 ELSE P2TOTDES END) AS  PED2_' +
        'DESC       '
      
        ',sum(CASE WHEN P1STATUS=9 THEN 0 WHEN SUBSTR(P2SIT,2,2)='#39'40'#39' THE' +
        'N P2TOTLIQ ELSE 0 END) AS  CAT52_ISENTAS        '
      
        ',sum(CASE WHEN P1STATUS=9 THEN 0 WHEN SUBSTR(P2SIT,2,2)='#39'41'#39' THE' +
        'N P2TOTLIQ ELSE 0 END) AS  CAT52_NAOINC        '
      
        ',sum(CASE WHEN P1STATUS=9 THEN 0 WHEN SUBSTR(P2SIT,2,1) in ('#39'1'#39',' +
        #39'3'#39','#39'7'#39') THEN P2TOTLIQ ELSE 0 END) AS  CAT52_SUBTRI        '
      
        ',sum(CASE WHEN P1STATUS=9 THEN 0 WHEN P2ALIQ>0 THEN P2TOTLIQ ELS' +
        'E 0 END) AS  CAT52_TOTTRIB        FROM CADP01,CADP02 WHERE      ' +
        ' '
      
        'P2CODEMP=P1CODEMP AND P2CHAVE=P1CHAVE AND P2LOTSEQ=P1LOTSEQ     ' +
        '   AND P1CODEMP=:CODEMP        AND P1DATACF>=:DATAINI AND P1DATA' +
        'CF<=:DATAFIN  '
      'GROUP BY  P1CODEMP        ,P1CODECF        ,P1DATACF '
      ' ) '
      ' group by CMCODEMP,CMCODIMP,CMDATA'
      ' ) where  (round(MP_VDALIQ,2)<>round(PED2_VDALIQ,2))'
      '      or  (round(MP_ISENTAS,2)<>round(PED2_ISENTAS,2))'
      '      or  (round(MP_NAOINC,2)<>round(PED2_NAOINC,2))'
      '      or  (round(MP_SUBTRI,2)<>round(PED2_SUBTRI,2))'
      '      or  (round(MP_TOTTRIB,2)<>round(PED2_TOTTRIB,2))'
      '')
    Left = 536
    Top = 65
    ParamData = <
      item
        DataType = ftString
        Name = 'DATAINI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DATAFIN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DATAINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DATAFIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DATAINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DATAFIN'
        ParamType = ptUnknown
      end>
    object qr_cat52MP_VDALIQ: TFloatField
      DisplayLabel = 'Venda Liquida'
      FieldName = 'MP_VDALIQ'
    end
    object qr_cat52MP_CANCELADOS: TFloatField
      DisplayLabel = 'Cancelados'
      FieldName = 'MP_CANCELADOS'
    end
    object qr_cat52MP_ACREC: TFloatField
      DisplayLabel = 'Acrescimos'
      FieldName = 'MP_ACREC'
    end
    object qr_cat52MP_DESC: TFloatField
      DisplayLabel = 'Descontos'
      FieldName = 'MP_DESC'
    end
    object qr_cat52MP_ISENTAS: TFloatField
      DisplayLabel = 'Isentas'
      FieldName = 'MP_ISENTAS'
    end
    object qr_cat52MP_NAOINC: TFloatField
      DisplayLabel = 'N'#227'o Incidentes'
      FieldName = 'MP_NAOINC'
    end
    object qr_cat52MP_SUBTRI: TFloatField
      DisplayLabel = 'Sub.Trib'
      FieldName = 'MP_SUBTRI'
    end
    object qr_cat52MP_TOTTRIB: TFloatField
      DisplayLabel = 'Tributados'
      FieldName = 'MP_TOTTRIB'
    end
    object qr_cat52ORIGEMINF: TStringField
      FieldName = 'ORIGEMINF'
      Size = 5
    end
    object qr_cat52CAT52_VDALIQ: TFloatField
      DisplayLabel = 'Venda Liquida'
      FieldName = 'CAT52_VDALIQ'
    end
    object qr_cat52CAT52_CANCELADOS: TFloatField
      DisplayLabel = 'Cancelados'
      FieldName = 'CAT52_CANCELADOS'
    end
    object qr_cat52CAT52_ACREC: TFloatField
      DisplayLabel = 'Acrescimos'
      FieldName = 'CAT52_ACREC'
    end
    object qr_cat52CAT52_DESC: TFloatField
      DisplayLabel = 'Descontos'
      FieldName = 'CAT52_DESC'
    end
    object qr_cat52CAT52_ISENTAS: TFloatField
      DisplayLabel = 'Isentas'
      FieldName = 'CAT52_ISENTAS'
    end
    object qr_cat52CAT52_NAOINC: TFloatField
      DisplayLabel = 'N'#227'o Incidentes'
      FieldName = 'CAT52_NAOINC'
    end
    object qr_cat52CAT52_SUBTRI: TFloatField
      DisplayLabel = 'Sub.Trib'
      FieldName = 'CAT52_SUBTRI'
    end
    object qr_cat52CAT52_TOTTRIB: TFloatField
      DisplayLabel = 'Tributados'
      FieldName = 'CAT52_TOTTRIB'
    end
    object qr_cat52PED2_VDALIQ: TFloatField
      DisplayLabel = 'Venda Liquida'
      FieldName = 'PED2_VDALIQ'
    end
    object qr_cat52PED2_CANCELADOS: TFloatField
      DisplayLabel = 'Cancelados'
      FieldName = 'PED2_CANCELADOS'
    end
    object qr_cat52PED2_ACREC: TFloatField
      DisplayLabel = 'Acrescimos'
      FieldName = 'PED2_ACREC'
    end
    object qr_cat52PED2_DESC: TFloatField
      DisplayLabel = 'Descontos'
      FieldName = 'PED2_DESC'
    end
    object qr_cat52PED2_ISENTAS: TFloatField
      DisplayLabel = 'Isentas'
      FieldName = 'PED2_ISENTAS'
    end
    object qr_cat52PED2_NAOINC: TFloatField
      DisplayLabel = 'N'#227'o Incidentes'
      FieldName = 'PED2_NAOINC'
    end
    object qr_cat52PED2_SUBTRI: TFloatField
      DisplayLabel = 'Sub.Trib'
      FieldName = 'PED2_SUBTRI'
    end
    object qr_cat52PED2_TOTTRIB: TFloatField
      DisplayLabel = 'Tributados'
      FieldName = 'PED2_TOTTRIB'
    end
    object qr_cat52DIFMP_CAT52_VDALIQ: TFloatField
      FieldName = 'DIFMP_CAT52_VDALIQ'
    end
    object qr_cat52DIFMP_CAT52_ISENTAS: TFloatField
      FieldName = 'DIFMP_CAT52_ISENTAS'
    end
    object qr_cat52DIFMP_CAT52_NAOINC: TFloatField
      FieldName = 'DIFMP_CAT52_NAOINC'
    end
    object qr_cat52DIFMP_CAT52_SUBTRI: TFloatField
      FieldName = 'DIFMP_CAT52_SUBTRI'
    end
    object qr_cat52DIFMP_CAT52_TOTTRIB: TFloatField
      FieldName = 'DIFMP_CAT52_TOTTRIB'
    end
    object qr_cat52DIFMP_PED2_VDALIQ: TFloatField
      FieldName = 'DIFMP_PED2_VDALIQ'
    end
    object qr_cat52DIFMP_PED2_ISENTAS: TFloatField
      FieldName = 'DIFMP_PED2_ISENTAS'
    end
    object qr_cat52DIFMP_PED2_NAOINC: TFloatField
      FieldName = 'DIFMP_PED2_NAOINC'
    end
    object qr_cat52DIFMP_PED2_SUBTRI: TFloatField
      FieldName = 'DIFMP_PED2_SUBTRI'
    end
    object qr_cat52DIFMP_PED2_TOTTRIB: TFloatField
      FieldName = 'DIFMP_PED2_TOTTRIB'
    end
    object qr_cat52CMCODEMP: TFloatField
      FieldName = 'CMCODEMP'
    end
    object qr_cat52CMCODIMP: TFloatField
      DisplayLabel = 'c'#243'd.ECF'
      FieldName = 'CMCODIMP'
    end
    object qr_cat52CMDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'CMDATA'
    end
  end
end

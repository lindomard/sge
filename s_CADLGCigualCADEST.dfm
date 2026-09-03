object Frm_CADLGCigualCADEST: TFrm_CADLGCigualCADEST
  Left = 192
  Top = 124
  Width = 928
  Height = 480
  Caption = 'Frm_CADLGCigualCADEST'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 80
      Top = 8
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object edt_codpro: TEdit
      Left = 128
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 264
      Top = 8
      Width = 75
      Height = 25
      Caption = 'buscar'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 912
    Height = 200
    Align = alTop
    TabOrder = 1
  end
  object gb_mp: TGroupBox
    Left = 0
    Top = 281
    Width = 912
    Height = 161
    Align = alBottom
    Caption = 'Materias Primas Utilizadas:'
    TabOrder = 2
    object DBGrid_mp: TDBGrid
      Left = 2
      Top = 15
      Width = 908
      Height = 119
      Align = alClient
      DataSource = src_mp
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object Panel3: TPanel
      Left = 2
      Top = 134
      Width = 908
      Height = 25
      Align = alBottom
      TabOrder = 1
      object edt_mp: TEdit
        Left = 241
        Top = 2
        Width = 120
        Height = 19
        Color = clYellow
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        Text = '        Materia Prima'
      end
      object edt_prodprod: TEdit
        Left = 122
        Top = 2
        Width = 120
        Height = 19
        Color = 8454016
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        Text = ' Produto Em Produ'#231#227'o'
      end
      object edt_embalagem: TEdit
        Left = 361
        Top = 2
        Width = 120
        Height = 19
        Color = clBlue
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = '         Embalagem'
      end
      object edt_cx_embarque: TEdit
        Left = 480
        Top = 2
        Width = 120
        Height = 19
        Color = clPurple
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        Text = '   Caixa de Embarque'
      end
      object edt_acabado: TEdit
        Left = 3
        Top = 2
        Width = 120
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        Text = '  0 - Produto Acabado'
      end
      object edt_outros: TEdit
        Left = 600
        Top = 2
        Width = 120
        Height = 19
        Color = 33023
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        Text = '              Outros'
      end
    end
  end
  object src_mp: TDataSource
    DataSet = strProc
    Left = 592
    Top = 320
  end
  object strProc: TADOStoredProc
    Connection = DM1_ADO.ADOConnection1
    Parameters = <>
    Left = 624
    Top = 161
  end
end

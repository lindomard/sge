object Frm_GP_Ped: TFrm_GP_Ped
  Left = 16
  Top = 92
  Width = 726
  Height = 406
  Caption = 'Comparativo de Compras por Empresa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 718
    Height = 372
    Align = alClient
    BorderStyle = bsSingle
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 261
      Width = 712
      Height = 106
      Align = alBottom
      BorderStyle = bsSingle
      TabOrder = 0
      object Label1: TLabel
        Left = 281
        Top = 6
        Width = 64
        Height = 13
        Caption = 'Per'#237'odo de'
      end
      object Label2: TLabel
        Left = 481
        Top = 6
        Width = 8
        Height = 13
        Caption = #224
      end
      object Label3: TLabel
        Left = 280
        Top = 26
        Width = 107
        Height = 13
        Caption = 'Primeiro Per'#237'odo..:'
        Visible = False
      end
      object Label4: TLabel
        Left = 480
        Top = 27
        Width = 8
        Height = 13
        Caption = #224
        Visible = False
      end
      object Label5: TLabel
        Left = 278
        Top = 47
        Width = 108
        Height = 13
        Caption = 'Segundo Per'#237'odo.:'
        Visible = False
      end
      object Label6: TLabel
        Left = 478
        Top = 48
        Width = 8
        Height = 13
        Caption = #224
        Visible = False
      end
      object Label7: TLabel
        Left = 10
        Top = 73
        Width = 59
        Height = 13
        Caption = 'Vendedor:'
      end
      object MDT1: TMaskEdit
        Left = 391
        Top = 3
        Width = 80
        Height = 21
        EditMask = '99/99/9999;1; '
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
        OnExit = MDT1Exit
      end
      object MDT2: TMaskEdit
        Left = 512
        Top = 3
        Width = 80
        Height = 21
        EditMask = '99/99/9999;1; '
        MaxLength = 10
        TabOrder = 2
        Text = '  /  /    '
        OnExit = MDT2Exit
      end
      object MDTI1: TMaskEdit
        Left = 390
        Top = 23
        Width = 80
        Height = 21
        EditMask = '99/99/9999;1; '
        MaxLength = 10
        TabOrder = 3
        Text = '  /  /    '
        Visible = False
        OnExit = MDTI1Exit
      end
      object MDTI2: TMaskEdit
        Left = 512
        Top = 26
        Width = 80
        Height = 21
        EditMask = '99/99/9999;1; '
        MaxLength = 10
        TabOrder = 4
        Text = '  /  /    '
        Visible = False
        OnExit = MDTI2Exit
      end
      object MDTF1: TMaskEdit
        Left = 390
        Top = 45
        Width = 80
        Height = 21
        EditMask = '99/99/9999;1; '
        MaxLength = 10
        TabOrder = 5
        Text = '  /  /    '
        Visible = False
        OnExit = MDTF1Exit
      end
      object MDTF2: TMaskEdit
        Left = 513
        Top = 47
        Width = 80
        Height = 21
        EditMask = '99/99/9999;1; '
        MaxLength = 10
        TabOrder = 6
        Text = '  /  /    '
        Visible = False
        OnExit = MDTF2Exit
      end
      object RGTipo: TRadioGroup
        Left = 7
        Top = 2
        Width = 258
        Height = 56
        Caption = 'Tipos de Compara'#231#227'o:'
        ItemIndex = 0
        Items.Strings = (
          '&Por Per'#237'odo Separado Por M'#234's'
          'P&er'#237'odo Um Comparado ao Segundo')
        TabOrder = 0
        OnClick = RGTipoClick
        OnExit = RGTipoExit
      end
      object APLICAR: TBitBtn
        Left = 613
        Top = 3
        Width = 90
        Height = 25
        Caption = '&Aplicar'
        TabOrder = 8
        OnClick = APLICARClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555555555555555555555555555555555555555FF55555555555559055555
          55555555577FF5555555555599905555555555557777F5555555555599905555
          555555557777FF5555555559999905555555555777777F555555559999990555
          5555557777777FF5555557990599905555555777757777F55555790555599055
          55557775555777FF5555555555599905555555555557777F5555555555559905
          555555555555777FF5555555555559905555555555555777FF55555555555579
          05555555555555777FF5555555555557905555555555555777FF555555555555
          5990555555555555577755555555555555555555555555555555}
        NumGlyphs = 2
      end
      object ESTILO: TBitBtn
        Left = 613
        Top = 28
        Width = 90
        Height = 25
        Caption = '&Est.Gr'#225'fico'
        TabOrder = 9
        OnClick = ESTILOClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
          55555575555555775F55509999999901055557F55555557F75F5001111111101
          105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
          01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
          8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
          0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
          0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
          05555555575FF777755555555500055555555555557775555555}
        NumGlyphs = 2
      end
      object IMPRIMIR: TBitBtn
        Left = 613
        Top = 53
        Width = 90
        Height = 25
        Caption = '&Imprimir'
        TabOrder = 10
        OnClick = IMPRIMIRClick
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
      end
      object SAIR: TBitBtn
        Left = 613
        Top = 77
        Width = 90
        Height = 25
        Caption = '&Sair'
        TabOrder = 11
        OnClick = SAIRClick
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
      object CODVEN: TEdit
        Left = 79
        Top = 70
        Width = 99
        Height = 21
        TabOrder = 7
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
      end
      object cbxfundo: TCheckBox
        Left = 505
        Top = 80
        Width = 97
        Height = 17
        Caption = 'Cor de Fundo'
        Checked = True
        State = cbChecked
        TabOrder = 12
        OnClick = cbxfundoClick
      end
      object NOMVEN: TEdit
        Left = 180
        Top = 70
        Width = 290
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 13
        Text = 'Todos...'
      end
    end
    object DBChart1: TDBChart
      Left = 1
      Top = 1
      Width = 712
      Height = 260
      BackWall.Brush.Color = clWhite
      Gradient.EndColor = clSilver
      Gradient.Visible = True
      Title.Font.Charset = DEFAULT_CHARSET
      Title.Font.Color = clBlack
      Title.Font.Height = -12
      Title.Font.Name = 'Arial'
      Title.Font.Style = [fsBold]
      Title.Text.Strings = (
        'Comparativo de Vendas por Empresa')
      BottomAxis.LabelStyle = talText
      LeftAxis.LabelsOnAxis = False
      Legend.TextStyle = ltsRightPercent
      View3DOptions.Elevation = 315
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      Align = alClient
      TabOrder = 1
      Locked = True
      object Series1: TBarSeries
        ColorEachPoint = True
        Marks.ArrowLength = 20
        Marks.Style = smsValue
        Marks.Visible = True
        DataSource = Tb_VPro
        SeriesColor = clRed
        XLabelsSource = 'nome'
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Bar'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'TMVALOR'
      end
      object Series2: THorizBarSeries
        Active = False
        ColorEachPoint = True
        Marks.ArrowLength = 20
        Marks.Style = smsValue
        Marks.Visible = True
        DataSource = Tb_VPro
        SeriesColor = clGreen
        XLabelsSource = 'nome'
        XValues.DateTime = False
        XValues.Name = 'Bar'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loNone
        XValues.ValueSource = 'TMVALOR'
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series3: TLineSeries
        Active = False
        Marks.ArrowLength = 0
        Marks.Style = smsValue
        Marks.Visible = False
        DataSource = Tb_VPro
        SeriesColor = clYellow
        XLabelsSource = 'nome'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        XValues.ValueSource = 'TMVALOR'
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'TMVALOR'
      end
      object Series4: TFastLineSeries
        Active = False
        ColorEachPoint = True
        Marks.ArrowLength = 8
        Marks.Style = smsValue
        Marks.Visible = True
        DataSource = Tb_VPro
        SeriesColor = clBlue
        LinePen.Color = clNavy
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        XValues.ValueSource = 'TMVALOR'
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'TMVALOR'
      end
      object Series5: TAreaSeries
        Active = False
        Marks.ArrowLength = 8
        Marks.Style = smsValue
        Marks.Visible = False
        DataSource = Tb_VPro
        SeriesColor = clWhite
        XLabelsSource = 'nome'
        DrawArea = True
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        XValues.ValueSource = 'TMVALOR'
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'TMVALOR'
      end
      object Series6: TPointSeries
        Active = False
        Marks.ArrowLength = 8
        Marks.Visible = False
        DataSource = Tb_VPro
        SeriesColor = clWhite
        XLabelsSource = 'nome'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = True
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        XValues.ValueSource = 'TMVALOR'
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'TMVALOR'
      end
      object Series7: TPieSeries
        Active = False
        Marks.ArrowLength = 0
        Marks.Style = smsValue
        Marks.Visible = False
        DataSource = Tb_VPro
        SeriesColor = clGray
        XLabelsSource = 'nome'
        OtherSlice.Text = 'Other'
        PieValues.DateTime = False
        PieValues.Name = 'Pie'
        PieValues.Multiplier = 1.000000000000000000
        PieValues.Order = loAscending
        PieValues.ValueSource = 'TMVALOR'
      end
    end
  end
  object Tb_VPro: TQuery
    CachedUpdates = True
    OnCalcFields = Tb_VProCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from TMPGRAF where TMCHAVE is null')
    UpdateObject = U_Vpro
    Left = 8
    Top = 16
    object Tb_VProTMCHAVE: TFloatField
      FieldName = 'TMCHAVE'
      Origin = 'SG_ASSOC.TMPGRAF.TMCHAVE'
    end
    object Tb_VProTMANO: TFloatField
      FieldName = 'TMANO'
      Origin = 'SG_ASSOC.TMPGRAF.TMANO'
    end
    object Tb_VProTMMES: TFloatField
      FieldName = 'TMMES'
      Origin = 'SG_ASSOC.TMPGRAF.TMMES'
    end
    object Tb_VProTMVALOR: TFloatField
      FieldName = 'TMVALOR'
      Origin = 'SG_ASSOC.TMPGRAF.TMVALOR'
    end
    object Tb_VPronome: TStringField
      FieldKind = fkCalculated
      FieldName = 'nome'
      Size = 10
      Calculated = True
    end
  end
  object U_Vpro: TUpdateSQL
    ModifySQL.Strings = (
      'update TMPGRAF'
      'set'
      '  TMCHAVE = :TMCHAVE,'
      '  TMANO = :TMANO,'
      '  TMMES = :TMMES,'
      '  TMVALOR = :TMVALOR'
      'where'
      '  TMCHAVE = :OLD_TMCHAVE')
    InsertSQL.Strings = (
      'insert into TMPGRAF'
      '  (TMCHAVE, TMANO, TMMES, TMVALOR)'
      'values'
      '  (:TMCHAVE, :TMANO, :TMMES, :TMVALOR)')
    DeleteSQL.Strings = (
      'delete from TMPGRAF'
      'where'
      '  TMCHAVE = :OLD_TMCHAVE')
    Left = 72
    Top = 16
  end
end

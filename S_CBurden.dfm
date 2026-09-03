object Frm_CBurden: TFrm_CBurden
  Left = 297
  Top = 136
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Calculo de Burden'
  ClientHeight = 494
  ClientWidth = 498
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 498
    Height = 494
    ActivePage = Ts_Demonstrativo
    Align = alClient
    TabOrder = 0
    object Ts_Demonstrativo: TTabSheet
      Caption = 'Demonstrativo'
      object STG1: TStringGrid
        Left = 0
        Top = 65
        Width = 490
        Height = 401
        Align = alClient
        ColCount = 3
        FixedCols = 0
        RowCount = 2
        TabOrder = 0
        OnDrawCell = STG1DrawCell
        ColWidths = (
          15
          330
          121)
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 490
        Height = 65
        Align = alTop
        TabOrder = 1
        object Label10: TLabel
          Left = 0
          Top = 8
          Width = 96
          Height = 13
          Caption = 'Data Base Burden..:'
        end
        object Label11: TLabel
          Left = 200
          Top = 8
          Width = 6
          Height = 13
          Caption = #224
        end
        object btn_Calcular: TBitBtn
          Left = 128
          Top = 38
          Width = 89
          Height = 25
          Caption = '&Calcular'
          TabOrder = 0
          OnClick = btn_CalcularClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
            73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
            0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
            0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
            0333337F777777737F333308888888880333337F333333337F33330888888888
            03333373FFFFFFFF733333700000000073333337777777773333}
          NumGlyphs = 2
        end
        object btn_Imprimir: TBitBtn
          Left = 256
          Top = 38
          Width = 89
          Height = 25
          Caption = '&Imprimir'
          TabOrder = 1
          OnClick = btn_ImprimirClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            0003377777777777777308888888888888807F33333333333337088888888888
            88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
            8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
            8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
        end
        object dtInicial: TDateEdit
          Left = 100
          Top = 5
          Width = 94
          Height = 21
          NumGlyphs = 2
          TabOrder = 2
        end
        object dtFinal: TDateEdit
          Left = 215
          Top = 5
          Width = 94
          Height = 21
          NumGlyphs = 2
          TabOrder = 3
        end
      end
    end
    object Ts_Config: TTabSheet
      Caption = 'Configura'#231#227'o'
      ImageIndex = 1
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 237
        Height = 13
        Caption = 'CENTROS DE CUSTO - M'#195'O DE OBRA DIRETA'
      end
      object Label2: TLabel
        Left = 16
        Top = 32
        Width = 42
        Height = 13
        Caption = 'CODIGO'
      end
      object Label3: TLabel
        Left = 80
        Top = 32
        Width = 32
        Height = 13
        Caption = 'NOME'
      end
      object Label4: TLabel
        Left = 424
        Top = 32
        Width = 59
        Height = 13
        Caption = 'NATUREZA'
      end
      object Label5: TLabel
        Left = 8
        Top = 168
        Width = 248
        Height = 13
        Caption = 'CENTROS DE CUSTO - M'#195'O DE OBRA INDIRETA'
      end
      object Label6: TLabel
        Left = 16
        Top = 192
        Width = 42
        Height = 13
        Caption = 'CODIGO'
      end
      object Label7: TLabel
        Left = 80
        Top = 192
        Width = 32
        Height = 13
        Caption = 'NOME'
      end
      object Label8: TLabel
        Left = 424
        Top = 192
        Width = 59
        Height = 13
        Caption = 'NATUREZA'
      end
      object Label9: TLabel
        Left = 0
        Top = 316
        Width = 154
        Height = 13
        Caption = 'CONFIGURA'#199#195'O DE PEDIDOS'
      end
      object CODDF_0: TEdit
        Left = 0
        Top = 48
        Width = 81
        Height = 21
        TabOrder = 0
        OnExit = CODDF_0Exit
        OnKeyPress = CODDF_0KeyPress
      end
      object NOMDF_0: TEdit
        Left = 80
        Top = 48
        Width = 345
        Height = 21
        Color = 16776176
        ReadOnly = True
        TabOrder = 1
      end
      object NATDF_0: TEdit
        Left = 424
        Top = 48
        Width = 65
        Height = 21
        Color = 16776176
        ReadOnly = True
        TabOrder = 2
        OnExit = NATDF_0Exit
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 70
        Width = 489
        Height = 83
        DataSource = Src_CBurnden0
        PopupMenu = PopupMenu1
        ReadOnly = True
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CCB_CCU'
            Title.Alignment = taCenter
            Title.Caption = 'CODIGO'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomccu'
            Title.Alignment = taCenter
            Title.Caption = 'NOME DO CENTRO DE CUSTO'
            Width = 343
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'natdc'
            Title.Alignment = taCenter
            Title.Caption = 'C-D'
            Width = 39
            Visible = True
          end>
      end
      object NOMDF_1: TEdit
        Left = 81
        Top = 208
        Width = 345
        Height = 21
        Color = 16776176
        ReadOnly = True
        TabOrder = 4
      end
      object NATDF_1: TEdit
        Left = 425
        Top = 208
        Width = 64
        Height = 21
        Color = 16776176
        ReadOnly = True
        TabOrder = 5
        OnExit = NATDF_1Exit
      end
      object CODDF_1: TEdit
        Left = 0
        Top = 208
        Width = 81
        Height = 21
        TabOrder = 3
        OnExit = CODDF_1Exit
        OnKeyPress = CODDF_1KeyPress
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 230
        Width = 489
        Height = 83
        DataSource = Src_CBurnden1
        PopupMenu = PopupMenu2
        ReadOnly = True
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CCB_CCU'
            Title.Alignment = taCenter
            Title.Caption = 'CODIGO'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomccu'
            Title.Alignment = taCenter
            Title.Caption = 'NOME DO CENTRO DE CUSTO'
            Width = 343
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'natdc'
            Title.Alignment = taCenter
            Title.Caption = 'C-D'
            Width = 37
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 332
        Width = 490
        Height = 134
        Align = alBottom
        Caption = 'Panel2'
        TabOrder = 8
        object RG_TIPOPED: TCheckListBox
          Left = 1
          Top = 1
          Width = 488
          Height = 132
          Cursor = crHandPoint
          Hint = 'Emitir Somente Os Selecionados'
          Align = alClient
          Color = clSkyBlue
          Columns = 2
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ItemHeight = 16
          Items.Strings = (
            'Venda Normal'
            'Simples Remessa'
            'Devolu'#231#227'o a Fornecedor'
            'Remessa p/Troca'
            'Transferencia de Mercadorias'
            'Remessa p/Beneficiamento'
            'Remessa p/Venda(Vda.Fora do Estab.)'
            'Devolu'#231#227'o Cliente(Entrada) Normal'
            'Emprestimo de Mercadorias'
            'Nota Complementar'
            'Remessa Para Consigna'#231#245'es'
            'Devolu'#231#227'o Mercadoria Consigna'#231#245'es'
            'Devolu'#231#227'o Remessa p/Venda(Vda.Fora do Estab.)'
            'Venda Mercadoria Consignada'
            'Venda Remessa p/Venda(Vda.Fora do Estabel.)'
            'Todos')
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style = lbOwnerDrawFixed
          TabOrder = 0
          OnClick = RG_TIPOPEDClick
          OnExit = RG_TIPOPEDExit
        end
      end
    end
    object Ts_Rel: TTabSheet
      Caption = 'Imprimir'
      ImageIndex = 2
      TabVisible = False
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 490
        Height = 120
        Align = alTop
        DataSource = Src_Imprimir
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object RLReport1: TRLReport
        Left = -120
        Top = 208
        Width = 794
        Height = 1123
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = Src_Imprimir
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        Visible = False
        object RLBand1: TRLBand
          Left = 39
          Top = 39
          Width = 716
          Height = 95
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel2: TRLLabel
            Left = 1
            Top = 1
            Width = 107
            Height = 16
            Caption = 'RAZ'#195'O SOCIAL :'
          end
          object RLDBText4: TRLDBText
            Left = 109
            Top = 1
            Width = 81
            Height = 16
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
          end
          object RLLabel3: TRLLabel
            Left = 1
            Top = 18
            Width = 85
            Height = 16
            Caption = 'ENDERE'#199'O :'
          end
          object RLDBText5: TRLDBText
            Left = 86
            Top = 18
            Width = 36
            Height = 16
            DataField = 'ender'
            DataSource = DM1.Src_Emp
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 602
            Top = 2
            Width = 87
            Height = 16
            Alignment = taRightJustify
            Info = itPageNumber
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 697
            Top = 2
            Width = 112
            Height = 16
            Info = itLastPageNumber
          end
          object RLLabel4: TRLLabel
            Left = 689
            Top = 2
            Width = 8
            Height = 16
            Caption = '/'
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 655
            Top = 78
            Width = 60
            Height = 16
            Alignment = taRightJustify
            Info = itFullDate
          end
          object lbl_data: TRLLabel
            Left = 264
            Top = 58
            Width = 184
            Height = 16
            Caption = 'Calculo de Burden Referente a '
          end
        end
        object RLGroup1: TRLGroup
          Left = 39
          Top = 134
          Width = 716
          Height = 59
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataFields = 'TIPO'
          BeforePrint = RLGroup1BeforePrint
          object RLBand2: TRLBand
            Left = 0
            Top = 1
            Width = 716
            Height = 17
            BandType = btTitle
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object rlTipo: TRLLabel
              Left = 0
              Top = 0
              Width = 78
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'TIPO'
            end
            object rlNome: TRLLabel
              Left = 78
              Top = 0
              Width = 356
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'NOME'
            end
            object rlValor: TRLLabel
              Left = 434
              Top = 0
              Width = 282
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'VALOR'
            end
          end
          object RLBand3: TRLBand
            Left = 0
            Top = 18
            Width = 716
            Height = 17
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLDBText1: TRLDBText
              Left = 0
              Top = 0
              Width = 78
              Height = 16
              Alignment = taCenter
              AutoSize = False
              DataField = 'TIPO'
              DataSource = Src_Imprimir
              Holder = rlTipo
            end
            object RLDBText2: TRLDBText
              Left = 78
              Top = 0
              Width = 356
              Height = 16
              AutoSize = False
              DataField = 'NOME'
              DataSource = Src_Imprimir
              Holder = rlNome
            end
            object RLDBText3: TRLDBText
              Left = 434
              Top = 0
              Width = 282
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VALOR'
              DataSource = Src_Imprimir
              Holder = rlValor
            end
          end
          object RLBand4: TRLBand
            Left = 0
            Top = 35
            Width = 716
            Height = 23
            BandType = btSummary
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            object RLLabel1: TRLLabel
              Left = 434
              Top = 2
              Width = 56
              Height = 16
              Caption = 'TOTAL..:'
            end
            object rltotalg: TRLLabel
              Left = 491
              Top = 2
              Width = 222
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'TOTAL..:'
            end
          end
        end
        object RLBand5: TRLBand
          Left = 39
          Top = 193
          Width = 716
          Height = 78
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Degrade.Direction = ddVertical
          Degrade.OppositeColor = clMoneyGreen
          BeforePrint = RLBand5BeforePrint
          object RLLabel5: TRLLabel
            Left = 350
            Top = 31
            Width = 141
            Height = 16
            Caption = 'VALOR DO BURDEN..:'
          end
          object RLLabel6: TRLLabel
            Left = 355
            Top = 11
            Width = 136
            Height = 16
            Caption = 'CUSTO FIXO TOTAL..:'
          end
          object rlValBurden: TRLLabel
            Left = 492
            Top = 31
            Width = 221
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object rlCustoTotal: TRLLabel
            Left = 492
            Top = 11
            Width = 221
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object rlValLucroPejuizo: TRLLabel
            Left = 492
            Top = 49
            Width = 221
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object RLLabel8: TRLLabel
            Left = 353
            Top = 49
            Width = 138
            Height = 16
            Caption = 'LUCRO \ PREJUIZO...:'
          end
        end
        object RLBand6: TRLBand
          Left = 39
          Top = 271
          Width = 716
          Height = 19
          BandType = btFooter
          BeforePrint = RLBand6BeforePrint
          object rlbanner: TRLLabel
            Left = 0
            Top = 0
            Width = 716
            Height = 19
            Align = faClient
            Alignment = taCenter
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Borders.FixedTop = True
            Layout = tlCenter
          end
        end
      end
    end
  end
  object Src_CBurnden0: TDataSource
    DataSet = Tb_CBurnden0
    Left = 236
    Top = 128
  end
  object Src_CBurnden1: TDataSource
    DataSet = Tb_CBurnden1
    Left = 236
    Top = 80
  end
  object Tb_CBurnden0: TQuery
    CachedUpdates = True
    AfterPost = Tb_CBurnden0AfterPost
    AfterDelete = Tb_CBurnden0AfterDelete
    OnCalcFields = Tb_CBurnden0CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT * FROM CADCBURDEN')
    UpdateMode = upWhereKeyOnly
    UpdateObject = Up_CBurnden0
    Left = 268
    Top = 128
    object Tb_CBurnden0CCB_CODEMP: TFloatField
      FieldName = 'CCB_CODEMP'
      Origin = 'SG_ASSOC.CADCBURDEN.CCB_CODEMP'
    end
    object Tb_CBurnden0CCB_ITEM: TFloatField
      FieldName = 'CCB_ITEM'
      Origin = 'SG_ASSOC.CADCBURDEN.CCB_ITEM'
    end
    object Tb_CBurnden0CCB_TIPO: TFloatField
      FieldName = 'CCB_TIPO'
      Origin = 'SG_ASSOC.CADCBURDEN.CCB_TIPO'
    end
    object Tb_CBurnden0CCB_CCU: TStringField
      FieldName = 'CCB_CCU'
      Origin = 'SG_ASSOC.CADCBURDEN.CCB_CCU'
      Size = 6
    end
    object Tb_CBurnden0nomccu: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomccu'
      Size = 40
      Calculated = True
    end
    object Tb_CBurnden0natdc: TStringField
      FieldKind = fkCalculated
      FieldName = 'natdc'
      Size = 1
      Calculated = True
    end
  end
  object Up_CBurnden0: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCBURDEN'
      'set'
      '  CCB_CODEMP = :CCB_CODEMP,'
      '  CCB_ITEM = :CCB_ITEM,'
      '  CCB_TIPO = :CCB_TIPO,'
      '  CCB_CCU = :CCB_CCU'
      'where'
      '  CCB_CODEMP = :OLD_CCB_CODEMP and'
      '  CCB_ITEM = :OLD_CCB_ITEM and'
      '  CCB_TIPO = :OLD_CCB_TIPO')
    InsertSQL.Strings = (
      'insert into CADCBURDEN'
      '  (CCB_CODEMP, CCB_ITEM, CCB_TIPO, CCB_CCU)'
      'values'
      '  (:CCB_CODEMP, :CCB_ITEM, :CCB_TIPO, :CCB_CCU)')
    DeleteSQL.Strings = (
      'delete from CADCBURDEN'
      'where'
      '  CCB_CODEMP = :OLD_CCB_CODEMP and'
      '  CCB_ITEM = :OLD_CCB_ITEM and'
      '  CCB_TIPO = :OLD_CCB_TIPO')
    Left = 300
    Top = 128
  end
  object Tb_CBurnden1: TQuery
    CachedUpdates = True
    AfterPost = Tb_CBurnden1AfterPost
    AfterDelete = Tb_CBurnden1AfterDelete
    OnCalcFields = Tb_CBurnden1CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT * FROM CADCBURDEN')
    UpdateMode = upWhereKeyOnly
    UpdateObject = Up_CBurnden1
    Left = 268
    Top = 80
    object Tb_CBurnden1nomccu: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomccu'
      Size = 40
      Calculated = True
    end
    object Tb_CBurnden1natdc: TStringField
      FieldKind = fkCalculated
      FieldName = 'natdc'
      Size = 1
      Calculated = True
    end
    object Tb_CBurnden1CCB_CODEMP: TFloatField
      FieldName = 'CCB_CODEMP'
      Origin = 'SG_ASSOC.CADCBURDEN.CCB_CODEMP'
    end
    object Tb_CBurnden1CCB_ITEM: TFloatField
      FieldName = 'CCB_ITEM'
      Origin = 'SG_ASSOC.CADCBURDEN.CCB_ITEM'
    end
    object Tb_CBurnden1CCB_TIPO: TFloatField
      FieldName = 'CCB_TIPO'
      Origin = 'SG_ASSOC.CADCBURDEN.CCB_TIPO'
    end
    object Tb_CBurnden1CCB_CCU: TStringField
      FieldName = 'CCB_CCU'
      Origin = 'SG_ASSOC.CADCBURDEN.CCB_CCU'
      Size = 6
    end
  end
  object Up_CBurnden1: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCBURDEN'
      'set'
      '  CCB_CODEMP = :CCB_CODEMP,'
      '  CCB_ITEM = :CCB_ITEM,'
      '  CCB_TIPO = :CCB_TIPO,'
      '  CCB_CCU = :CCB_CCU'
      'where'
      '  CCB_CODEMP = :OLD_CCB_CODEMP and'
      '  CCB_ITEM = :OLD_CCB_ITEM and'
      '  CCB_TIPO = :OLD_CCB_TIPO')
    InsertSQL.Strings = (
      'insert into CADCBURDEN'
      '  (CCB_CODEMP, CCB_ITEM, CCB_TIPO, CCB_CCU)'
      'values'
      '  (:CCB_CODEMP, :CCB_ITEM, :CCB_TIPO, :CCB_CCU)')
    DeleteSQL.Strings = (
      'delete from CADCBURDEN'
      'where'
      '  CCB_CODEMP = :OLD_CCB_CODEMP and'
      '  CCB_ITEM = :OLD_CCB_ITEM and'
      '  CCB_TIPO = :OLD_CCB_TIPO')
    Left = 308
    Top = 80
  end
  object PopupMenu1: TPopupMenu
    Left = 364
    Top = 128
    object Deletar1: TMenuItem
      Caption = 'Deletar'
      OnClick = Deletar1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 360
    Top = 72
    object Deletar2: TMenuItem
      Caption = 'Deletar'
      OnClick = Deletar2Click
    end
  end
  object Cds_Imprimir: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 116
    Top = 96
    Data = {
      5A0000009619E0BD0100000018000000030000000000030000005A0004544950
      4F0100490000000100055749445448020002000100044E4F4D45010049000000
      0100055749445448020002003C000556414C4F5208000400000000000000}
    object Cds_ImprimirTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object Cds_ImprimirNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object Cds_ImprimirVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object Src_Imprimir: TDataSource
    DataSet = Cds_Imprimir
    Left = 148
    Top = 96
  end
end

object Frm_ProdProduz: TFrm_ProdProduz
  Left = 256
  Top = 211
  Width = 626
  Height = 480
  Caption = 'Relatorio de Produ'#231#245'es'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 610
    Height = 121
    ActivePage = Ts_Filtros1
    Align = alTop
    MultiLine = True
    TabOrder = 0
    TabPosition = tpLeft
    object Ts_Filtros2: TTabSheet
      Caption = 'Filtros Secundarios'
      object lbl_codpro1: TLabel
        Left = 2
        Top = 11
        Width = 92
        Height = 13
        Caption = 'Produto Acabado..:'
      end
      object lbl_codpro2: TLabel
        Left = 21
        Top = 59
        Width = 73
        Height = 13
        Caption = 'Materia Prima..:'
      end
      object codpro1: TEdit
        Left = 96
        Top = 8
        Width = 74
        Height = 21
        Color = clWhite
        TabOrder = 0
        OnExit = codpro1Exit
        OnKeyPress = codpro1KeyPress
      end
      object lbx_codpro1: TListBox
        Left = 169
        Top = 8
        Width = 392
        Height = 44
        Color = 16776176
        ItemHeight = 13
        TabOrder = 1
        OnKeyDown = lbx_codpro1KeyDown
      end
      object codpro2: TEdit
        Left = 96
        Top = 56
        Width = 74
        Height = 21
        Color = clWhite
        TabOrder = 2
        OnExit = codpro2Exit
        OnKeyPress = codpro2KeyPress
      end
      object lbx_codpro2: TListBox
        Left = 169
        Top = 56
        Width = 392
        Height = 44
        Color = 16776176
        ItemHeight = 13
        TabOrder = 3
        OnKeyDown = lbx_codpro2KeyDown
      end
      object cb_omitir1: TCheckBox
        Left = 96
        Top = 32
        Width = 71
        Height = 17
        Caption = 'Omitir'
        TabOrder = 4
      end
      object cb_omitir2: TCheckBox
        Left = 97
        Top = 79
        Width = 71
        Height = 17
        Caption = 'Omitir'
        TabOrder = 5
      end
    end
    object Ts_Filtros1: TTabSheet
      Caption = 'Filtros Primarios'
      ImageIndex = 1
      object Label3: TLabel
        Left = 16
        Top = 56
        Width = 97
        Height = 13
        Caption = 'Pesquisar por data..:'
      end
      object Label1: TLabel
        Left = 17
        Top = 24
        Width = 62
        Height = 13
        Caption = 'Data Inicial..:'
      end
      object Label2: TLabel
        Left = 206
        Top = 23
        Width = 57
        Height = 13
        Caption = 'Data Final..:'
      end
      object bb_Aplicar_e_Imprimir: TButton
        Left = 152
        Top = 83
        Width = 161
        Height = 25
        Caption = '&Aplicar e Imprimir'
        TabOrder = 0
        OnClick = bb_Aplicar_e_ImprimirClick
      end
      object cb_datapesq: TComboBox
        Left = 114
        Top = 51
        Width = 267
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = 'Data de Inicio de Produ'#231#227'o ( Digita'#231#227'o )'
        Items.Strings = (
          'Data de Inicio de Produ'#231#227'o ( Digita'#231#227'o )'
          'Data de Conclus'#227'o ( Termino da Produ'#231#227'o )')
      end
      object DateEdit1: TDateEdit
        Left = 81
        Top = 20
        Width = 121
        Height = 21
        Color = clWhite
        NumGlyphs = 2
        TabOrder = 2
      end
      object DateEdit2: TDateEdit
        Left = 264
        Top = 19
        Width = 121
        Height = 21
        Color = clWhite
        NumGlyphs = 2
        TabOrder = 3
      end
      object rg_modelo: TRadioGroup
        Left = 384
        Top = 0
        Width = 161
        Height = 113
        Align = alRight
        Caption = ' -= Modelo =-'
        ItemIndex = 0
        Items.Strings = (
          'Sintetico Produto Produzido'
          'Analitico Produto Produzido'
          'Sintetico Materia Prima'
          'Analitico Materia Prima')
        TabOrder = 4
      end
      object cb_somentes: TCheckBox
        Left = 8
        Top = 88
        Width = 121
        Height = 17
        Caption = 'Somente Confirmadas'
        TabOrder = 5
      end
    end
    object Ts_Relatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 2
      object RLReport1: TRLReport
        Left = -560
        Top = -120
        Width = 1123
        Height = 794
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = Ds1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        PageSetup.Orientation = poLandscape
        PrintDialog = False
        PrintEmpty = False
        ShowProgress = False
        object RLBand1: TRLBand
          Left = 39
          Top = 39
          Width = 1045
          Height = 96
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          BeforePrint = RLBand1BeforePrint
          object rl_empresa: TRLLabel
            Left = 0
            Top = 1
            Width = 68
            Height = 16
            Caption = 'Empresa..:'
          end
          object rl_modelo: TRLLabel
            Left = 0
            Top = 18
            Width = 58
            Height = 16
            Caption = 'Modelo..:'
          end
          object Rl_periodo: TRLLabel
            Left = 0
            Top = 35
            Width = 60
            Height = 16
            Caption = 'Periodo..:'
          end
          object rl_chave_op: TRLLabel
            Left = 0
            Top = 77
            Width = 76
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Borders.FixedTop = True
            Borders.FixedRight = True
            Caption = 'Chave OP'
          end
          object rl_codigo: TRLLabel
            Left = 76
            Top = 77
            Width = 76
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Borders.FixedTop = True
            Borders.FixedRight = True
            Caption = 'Codigo'
          end
          object rl_descricao: TRLLabel
            Left = 152
            Top = 77
            Width = 320
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Borders.FixedTop = True
            Borders.FixedRight = True
            Caption = 'Descri'#231#227'o '
          end
          object rl_qtd_real: TRLLabel
            Left = 668
            Top = 77
            Width = 90
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Borders.FixedTop = True
            Borders.FixedRight = True
            Caption = 'Qtd. Realizado'
          end
          object rl_data_prev: TRLLabel
            Left = 864
            Top = 77
            Width = 90
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Borders.FixedTop = True
            Borders.FixedRight = True
            Caption = 'Data Previsto'
          end
          object rl_data_real: TRLLabel
            Left = 954
            Top = 77
            Width = 90
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Borders.FixedTop = True
            Caption = 'Data Realizado'
          end
          object rl_qtd_prev: TRLLabel
            Left = 472
            Top = 77
            Width = 90
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Borders.FixedTop = True
            Borders.FixedRight = True
            Caption = 'Qtd. Previsto'
          end
          object rl_val_prev: TRLLabel
            Left = 562
            Top = 77
            Width = 106
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Borders.FixedTop = True
            Borders.FixedRight = True
            Caption = 'Valor Previsto'
          end
          object rl_val_real: TRLLabel
            Left = 758
            Top = 77
            Width = 106
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Borders.FixedTop = True
            Borders.FixedRight = True
            Caption = 'Valor Realizado'
          end
        end
        object RLBand2: TRLBand
          Left = 39
          Top = 135
          Width = 1045
          Height = 17
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          AfterPrint = RLBand2AfterPrint
          object rl_chave_opi: TRLDBText
            Left = 0
            Top = 0
            Width = 76
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'OP'
            DataSource = Ds1
            Holder = rl_chave_op
          end
          object rl_codigoi: TRLDBText
            Left = 76
            Top = 0
            Width = 76
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'CODPRO'
            DataSource = Ds1
            Holder = rl_codigo
          end
          object rl_descricaoi: TRLDBText
            Left = 152
            Top = 0
            Width = 320
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'NOME'
            DataSource = Ds1
            Holder = rl_descricao
          end
          object rl_qtd_reali: TRLDBText
            Left = 668
            Top = 0
            Width = 90
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'QTD_REAL'
            DataSource = Ds1
            Holder = rl_qtd_real
          end
          object rl_data_previ: TRLDBText
            Left = 864
            Top = 0
            Width = 90
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'DATAPREV'
            DataSource = Ds1
            Holder = rl_data_prev
          end
          object rl_data_reali: TRLDBText
            Left = 954
            Top = 0
            Width = 90
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'DATA'
            DataSource = Ds1
            Holder = rl_data_real
          end
          object rl_qtd_previ: TRLDBText
            Left = 472
            Top = 0
            Width = 90
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'QTD_PREV'
            DataSource = Ds1
            Holder = rl_qtd_prev
          end
          object rl_val_previ: TRLDBText
            Left = 562
            Top = 0
            Width = 106
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'TOTAL_PRE'
            DataSource = Ds1
            Holder = rl_val_prev
          end
          object rl_val_reali: TRLDBText
            Left = 758
            Top = 0
            Width = 106
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'TOTAL_PRO'
            DataSource = Ds1
            Holder = rl_val_real
          end
        end
        object RLBand3: TRLBand
          Left = 39
          Top = 152
          Width = 1045
          Height = 72
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Degrade.Direction = ddVertical
          Degrade.OppositeColor = clMoneyGreen
          BeforePrint = RLBand3BeforePrint
          object RLLabel1: TRLLabel
            Left = 799
            Top = 3
            Width = 112
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Total de Qtd. Prev.'
          end
          object RLLabel2: TRLLabel
            Left = 799
            Top = 20
            Width = 112
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Total de Qtd. Real'
          end
          object RLLabel3: TRLLabel
            Left = 799
            Top = 37
            Width = 112
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Total de Val. Prev.'
          end
          object RLLabel4: TRLLabel
            Left = 799
            Top = 54
            Width = 112
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Total de Val. Real'
          end
          object rlTotQtdPrev: TRLLabel
            Left = 911
            Top = 3
            Width = 131
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0000'
          end
          object rlTotQtdReal: TRLLabel
            Left = 911
            Top = 20
            Width = 131
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0000'
          end
          object rlTotValPrev: TRLLabel
            Left = 911
            Top = 37
            Width = 131
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
          end
          object rlTotValReal: TRLLabel
            Left = 911
            Top = 54
            Width = 131
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
          end
        end
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 121
    Width = 610
    Height = 321
    Align = alClient
    DataSource = Ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'OP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODPRO'
        Title.Caption = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 315
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_PREV'
        Title.Caption = 'Qtd. Prev.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_PRE'
        Title.Caption = 'Valor Prev.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_REAL'
        Title.Caption = 'Qtd. Real'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_PRO'
        Title.Caption = 'Valor Real'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data Real'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAPREV'
        Title.Caption = 'Data Prev.'
        Visible = True
      end>
  end
  object Ds1: TDataSource
    DataSet = Qr1
    Left = 50
    Top = 164
  end
  object Qr1: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      ' select                      '
      '     OP2_CODIGO  as OP,          '
      '     OP2_CODPRO  as CODPRO,      '
      '     PDNOME as NOME,             '
      '     OP2_QTDPREV as QTD_PREV,    '
      '     OP2_QTDPROD as QTD_REAL,    '
      '     OP1_DATA as Data,           '
      '     OP1_DATAPREV as DataPrev,'
      '     OP1_TOTPREV as Total_Pre,                                 '
      '     OP1_TOTPROD as Total_Pro  '
      '     from CADOP02,CADOP01,CADPRO ')
    Left = 18
    Top = 164
    object Qr1OP: TFloatField
      FieldName = 'OP'
      Origin = 'SG_ASSOC.CADOP02.OP2_CODIGO'
    end
    object Qr1CODPRO: TFloatField
      FieldName = 'CODPRO'
      Origin = 'SG_ASSOC.CADOP02.OP2_CODPRO'
    end
    object Qr1NOME: TStringField
      FieldName = 'NOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 120
    end
    object Qr1QTD_PREV: TFloatField
      FieldName = 'QTD_PREV'
      Origin = 'SG_ASSOC.CADOP02.OP2_QTDPREV'
    end
    object Qr1QTD_REAL: TFloatField
      FieldName = 'QTD_REAL'
      Origin = 'SG_ASSOC.CADOP02.OP2_QTDPROD'
    end
    object Qr1DATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'SG_ASSOC.CADOP01.OP1_DATA'
    end
    object Qr1DATAPREV: TDateTimeField
      FieldName = 'DATAPREV'
      Origin = 'SG_ASSOC.CADOP01.OP1_DATAPREV'
    end
    object Qr1TOTAL_PRE: TFloatField
      FieldName = 'TOTAL_PRE'
      Origin = 'SG_ASSOC.CADOP01.OP1_TOTPREV'
      DisplayFormat = '#,##0.00'
    end
    object Qr1TOTAL_PRO: TFloatField
      FieldName = 'TOTAL_PRO'
      Origin = 'SG_ASSOC.CADOP01.OP1_TOTPROD'
      DisplayFormat = '#,##0.00'
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 85
    Top = 164
  end
end

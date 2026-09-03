object Frm_VoltaEstoque: TFrm_VoltaEstoque
  Left = 192
  Top = 124
  Align = alCustom
  BorderStyle = bsSingle
  Caption = 'Voltar Estoque Dia'
  ClientHeight = 389
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 628
    Height = 389
    ActivePage = tsFiltro
    Align = alClient
    TabOrder = 0
    object tsFiltro: TTabSheet
      Caption = 'Filtros'
      object Label2: TLabel
        Left = 60
        Top = 4
        Width = 40
        Height = 13
        Caption = 'Produto:'
      end
      object Label1: TLabel
        Left = 36
        Top = 43
        Width = 64
        Height = 13
        Caption = 'Tipo Produto:'
      end
      object Label8: TLabel
        Left = 8
        Top = 84
        Width = 92
        Height = 13
        Caption = 'Grupo de Produtos:'
      end
      object Label7: TLabel
        Left = 35
        Top = 125
        Width = 66
        Height = 13
        Caption = 'Tipo Controle:'
      end
      object Label9: TLabel
        Left = 16
        Top = 166
        Width = 84
        Height = 13
        Caption = 'Ramo/Sub-Grupo'
      end
      object Label20: TLabel
        Left = 70
        Top = 214
        Width = 33
        Height = 13
        Caption = 'Marca:'
      end
      object Label11: TLabel
        Left = 90
        Top = 230
        Width = 74
        Height = 13
        Alignment = taCenter
        Caption = 'Tipo Produto'
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label14: TLabel
        Left = 332
        Top = 230
        Width = 103
        Height = 13
        Alignment = taCenter
        Caption = 'Status do Produto'
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label15: TLabel
        Left = 529
        Top = 230
        Width = 75
        Height = 13
        Alignment = taCenter
        Caption = 'E s t o q u e '
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label3: TLabel
        Left = 3
        Top = 341
        Width = 82
        Height = 13
        Caption = 'Dia do Estoque..:'
      end
      object CODPRO: TEdit
        Left = 103
        Top = 1
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object lbx_codpro: TListBox
        Left = 164
        Top = 1
        Width = 453
        Height = 40
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object OMITIR_PRO: TCheckBox
        Left = 107
        Top = 21
        Width = 53
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object CODTIP: TEdit
        Left = 103
        Top = 40
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object lbx_codtip: TListBox
        Left = 164
        Top = 40
        Width = 453
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object OMITIR_TIP: TCheckBox
        Left = 107
        Top = 65
        Width = 51
        Height = 14
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object lbx_codgru: TListBox
        Left = 164
        Top = 81
        Width = 453
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object CODGRU: TEdit
        Left = 103
        Top = 81
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
      end
      object OMITIR_GRU: TCheckBox
        Left = 107
        Top = 103
        Width = 51
        Height = 14
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
      object CODCON: TEdit
        Left = 104
        Top = 122
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
      end
      object lbx_codcon: TListBox
        Left = 164
        Top = 122
        Width = 453
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
      end
      object OMITIR_CON: TCheckBox
        Left = 107
        Top = 145
        Width = 51
        Height = 14
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
      end
      object lbx_codram: TListBox
        Left = 164
        Top = 163
        Width = 453
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
      end
      object CODRAM: TEdit
        Left = 103
        Top = 163
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
      end
      object OMITIR_RAM: TCheckBox
        Left = 107
        Top = 185
        Width = 47
        Height = 13
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
      end
      object edt_marca: TEdit
        Left = 106
        Top = 211
        Width = 511
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
      end
      object CLBNivel: TCheckListBox
        Left = 7
        Top = 246
        Width = 265
        Height = 69
        Color = 16776176
        Columns = 2
        ItemHeight = 13
        Items.Strings = (
          'Acabado'
          'Servi'#231'o'
          'Mat'#233'ria Prima Revenda'
          'Produto em Produ'#231'ao'
          'Mat'#233'ria Prima'
          'Insumos'
          'Acessorios'
          'Outros'
          'Todos')
        Style = lbOwnerDrawFixed
        TabOrder = 16
        OnClick = CLBNivelClick
      end
      object CLBStatus: TCheckListBox
        Left = 277
        Top = 246
        Width = 227
        Height = 69
        Color = 16776176
        Columns = 3
        ItemHeight = 13
        Items.Strings = (
          '0-Ativo'
          '1-Normal'
          '2-Normal'
          '3-Normal'
          '4-Normal'
          '5-Normal'
          '6-Normal'
          '7-Normal'
          '8-Vda Bloq'
          '9-Inativo'
          'Todos')
        Style = lbOwnerDrawFixed
        TabOrder = 17
      end
      object CLBEstoque: TCheckListBox
        Left = 506
        Top = 246
        Width = 111
        Height = 68
        Color = 16776176
        Columns = 1
        ItemHeight = 13
        Items.Strings = (
          'c/Estoque'
          's/Estoque'
          'Estoque Negativo'
          'Todos')
        Style = lbOwnerDrawFixed
        TabOrder = 18
      end
      object DataE: TDateEdit
        Left = 88
        Top = 337
        Width = 77
        Height = 21
        NumGlyphs = 2
        TabOrder = 19
      end
      object btnExecutar: TButton
        Left = 345
        Top = 332
        Width = 130
        Height = 25
        Caption = '&Executar'
        TabOrder = 20
        OnClick = btnExecutarClick
      end
      object btnSair: TButton
        Left = 476
        Top = 332
        Width = 130
        Height = 25
        Caption = '&Sair'
        TabOrder = 21
        OnClick = btnSairClick
      end
      object btnImprimir: TButton
        Left = 213
        Top = 332
        Width = 130
        Height = 25
        Caption = '&Imprimir'
        TabOrder = 22
        OnClick = btnImprimirClick
      end
      object cb_somentediferente: TCheckBox
        Left = 10
        Top = 317
        Width = 116
        Height = 17
        Caption = 'Somente Diferentes.'
        TabOrder = 23
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = -184
        Top = 16
        Width = 794
        Height = 1123
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        object RLBand1: TRLBand
          Left = 39
          Top = 39
          Width = 716
          Height = 75
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLLabel1: TRLLabel
            Left = 232
            Top = 32
            Width = 102
            Height = 16
            Caption = 'Lista de Estoque'
          end
        end
        object RLBand2: TRLBand
          Left = 39
          Top = 114
          Width = 716
          Height = 17
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object rlCodigo: TRLLabel
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
            Caption = 'CODIGO'
          end
          object rlNome: TRLLabel
            Left = 76
            Top = 0
            Width = 416
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'NOME'
          end
          object rlund: TRLLabel
            Left = 491
            Top = 0
            Width = 38
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'UN'
          end
          object rlQtdAtual: TRLLabel
            Left = 529
            Top = 0
            Width = 96
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'QTD ATUAL'
          end
          object rlQtdDia: TRLLabel
            Left = 624
            Top = 0
            Width = 94
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'QTD DIA'
          end
        end
        object RLBand3: TRLBand
          Left = 39
          Top = 131
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
            Width = 76
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PDCODPRO'
            DataSource = DataSource1
            Holder = rlCodigo
          end
          object RLDBText2: TRLDBText
            Left = 76
            Top = 0
            Width = 416
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PDNOME'
            DataSource = DataSource1
            Holder = rlNome
          end
          object RLDBText3: TRLDBText
            Left = 491
            Top = 0
            Width = 38
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PDUND'
            DataSource = DataSource1
            Holder = rlund
          end
          object RLDBText4: TRLDBText
            Left = 529
            Top = 0
            Width = 96
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PDSALDO'
            DataSource = DataSource1
            Holder = rlQtdAtual
          end
          object RLDBText5: TRLDBText
            Left = 624
            Top = 0
            Width = 94
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'CED_QTDDIA'
            DataSource = DataSource1
            Holder = rlQtdDia
          end
        end
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'SELECT PDCODPRO, PDNOME, PDUND, PDSALDO, CED_QTDDIA01 AS CED_QTD' +
        'DIA '
      'FROM CADPRO, CADEDIA '
      
        'WHERE PDCODPRO=CED_CODPRO AND PDCODEMP=CED_CODEMP AND CED_ANO=20' +
        '12 AND CED_MES=11'
      'ORDER BY PDNOME ')
    Left = 12
    Top = 96
    object Query1PDCODPRO: TFloatField
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Query1PDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 120
    end
    object Query1PDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Query1PDSALDO: TFloatField
      FieldName = 'PDSALDO'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO'
    end
    object Query1CED_QTDDIA: TFloatField
      FieldName = 'CED_QTDDIA'
      Origin = 'SG_ASSOC.CADEDIA.CED_QTDDIA01'
    end
  end
  object Query2: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 12
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 20
    Top = 56
  end
end

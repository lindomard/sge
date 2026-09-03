object frm_estmin: Tfrm_estmin
  Left = 119
  Top = 167
  Width = 777
  Height = 557
  Caption = 'Rela'#231#227'o de Estoque Minimo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 761
    Height = 87
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 56
      Top = 16
      Width = 645
      Height = 37
      Caption = 'Rela'#231#227'o de Produtos com Estoque Minimo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -31
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 688
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 0
      OnClick = BitBtn1Click
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
    object cb_navise: TCheckBox
      Left = 523
      Top = 61
      Width = 161
      Height = 17
      Caption = 'N'#227'o Avisar Novamente'
      TabOrder = 1
    end
    object bb_configuracao: TButton
      Left = 4
      Top = 60
      Width = 75
      Height = 25
      Caption = '&Configura'#231#227'o'
      TabOrder = 2
      OnClick = bb_configuracaoClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 87
    Width = 761
    Height = 432
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 759
      Height = 430
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 447
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTMIN'
          Title.Caption = 'Estoque Minimo'
          Width = 113
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTATUAL'
          Title.Caption = 'Estoque Atual'
          Width = 94
          Visible = True
        end>
    end
    object RLReport1: TRLReport
      Left = -16
      Top = 88
      Width = 794
      Height = 1123
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ShowProgress = False
      Visible = False
      object RLBand1: TRLBand
        Left = 38
        Top = 38
        Width = 718
        Height = 91
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        object RLLabel1: TRLLabel
          Left = 253
          Top = 37
          Width = 256
          Height = 16
          Caption = 'Relatorio de Produtos com Estoque Minimo'
        end
        object rl_codigo: TRLLabel
          Left = 1
          Top = 73
          Width = 95
          Height = 16
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Codigo'
        end
        object rl_nome: TRLLabel
          Left = 96
          Top = 73
          Width = 378
          Height = 16
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Nome'
        end
        object rl_est_atu: TRLLabel
          Left = 598
          Top = 73
          Width = 119
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Estoque Atual'
        end
        object rl_estmin: TRLLabel
          Left = 474
          Top = 73
          Width = 124
          Height = 16
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Estoque Minimo'
        end
        object RLSystemInfo1: TRLSystemInfo
          Left = 546
          Top = 56
          Width = 170
          Height = 16
          AutoSize = False
          Info = itFullDate
        end
        object RLSystemInfo2: TRLSystemInfo
          Left = 588
          Top = 4
          Width = 87
          Height = 16
          Alignment = taRightJustify
          Info = itPageNumber
        end
        object RLSystemInfo3: TRLSystemInfo
          Left = 688
          Top = 4
          Width = 112
          Height = 16
          Info = itLastPageNumber
        end
        object RLLabel2: TRLLabel
          Left = 677
          Top = 4
          Width = 8
          Height = 16
          Caption = '/'
        end
      end
      object RLBand2: TRLBand
        Left = 38
        Top = 129
        Width = 718
        Height = 19
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        object RLDBText1: TRLDBText
          Left = 1
          Top = 1
          Width = 95
          Height = 16
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'CODIGO'
          DataSource = DataSource1
          Holder = rl_codigo
        end
        object RLDBText2: TRLDBText
          Left = 96
          Top = 1
          Width = 378
          Height = 16
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'NOME'
          DataSource = DataSource1
          Holder = rl_nome
        end
        object RLDBText3: TRLDBText
          Left = 474
          Top = 1
          Width = 124
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'ESTMIN'
          DataSource = DataSource1
          Holder = rl_estmin
        end
        object RLDBText4: TRLDBText
          Left = 598
          Top = 1
          Width = 119
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'ESTATUAL'
          DataSource = DataSource1
          Holder = rl_est_atu
        end
      end
    end
    object pnl_conf: TPanel
      Left = 320
      Top = 40
      Width = 181
      Height = 305
      TabOrder = 2
      Visible = False
      object Label89: TLabel
        Left = 5
        Top = 4
        Width = 76
        Height = 13
        Caption = 'Tipo de Produto'
      end
      object bb_gravar: TButton
        Left = 3
        Top = 280
        Width = 175
        Height = 25
        Caption = '&Gravar e Sair'
        TabOrder = 0
        OnClick = bb_gravarClick
      end
      object CLFNivel: TCheckListBox
        Left = 0
        Top = 20
        Width = 180
        Height = 255
        TabStop = False
        Color = 16776176
        Columns = 1
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
        TabOrder = 1
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        ' select pdcodpro as Codigo, pdnome as Nome, pdestmin as EstMin, ' +
        'pdsaldo as EstAtual '
      ' from cadpro '
      ' where pdsaldo<=pdestmin '
      ' and pdstatus < 9 '
      ' order by pdnome')
    Left = 224
    Top = 201
    object Query1CODIGO: TFloatField
      FieldName = 'CODIGO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Query1NOME: TStringField
      FieldName = 'NOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Query1ESTMIN: TFloatField
      FieldName = 'ESTMIN'
      Origin = 'SG_ASSOC.CADPRO.PDESTMIN'
    end
    object Query1ESTATUAL: TFloatField
      FieldName = 'ESTATUAL'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 264
    Top = 201
  end
end

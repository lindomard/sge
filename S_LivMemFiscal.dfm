object Frm_LivMemFiscal: TFrm_LivMemFiscal
  Left = 178
  Top = 230
  Width = 713
  Height = 325
  Caption = 'Comparativo Entre Memoria Fiscal x Livro Fiscal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 705
    Height = 294
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Principais'
      object Label2: TLabel
        Left = 7
        Top = 7
        Width = 47
        Height = 13
        AutoSize = False
        Caption = 'Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 149
        Top = 7
        Width = 8
        Height = 13
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 7
        Top = 31
        Width = 208
        Height = 13
        Caption = 'Nome do Arquivo da Memoria Fiscal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sbn: TSpeedButton
        Left = 649
        Top = 51
        Width = 23
        Height = 22
        OnClick = sbnClick
      end
      object Label4: TLabel
        Left = 192
        Top = 120
        Width = 34
        Height = 13
        Caption = 'Chave:'
        Visible = False
      end
      object gb_progress: TGroupBox
        Left = 0
        Top = 211
        Width = 697
        Height = 55
        Align = alBottom
        Caption = 'Progresso do Processamento:'
        TabOrder = 0
        Visible = False
        object Gauge1: TGauge
          Left = 2
          Top = 28
          Width = 693
          Height = 25
          Align = alClient
          Progress = 0
        end
        object lbl_titulo: TLabel
          Left = 2
          Top = 15
          Width = 693
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = 'lbl_titulo'
          Color = 12189625
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
      end
      object MDT1: TMaskEdit
        Left = 61
        Top = 3
        Width = 81
        Height = 19
        Hint = 
          'Para filtrar t'#237'tulos somente a Partir de '#13#10'uma determinada data ' +
          #13#10'digite a mesma.'
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = '  /  /    '
        OnExit = MDT1Exit
      end
      object MDT2: TMaskEdit
        Left = 166
        Top = 3
        Width = 80
        Height = 19
        Hint = 
          'Para filtrar t'#237'tulos at'#233' '#13#10'uma determinada data '#13#10'digite a mesma' +
          '.'
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = '  /  /    '
        OnExit = MDT2Exit
      end
      object edt_nomarq: TEdit
        Left = 8
        Top = 52
        Width = 641
        Height = 21
        TabOrder = 3
        Text = 'C:\BKP\MEGAWATT\DOWNLOAD_MES05\DOWNLOAD.MDB'
      end
      object bbImportar: TBitBtn
        Left = 8
        Top = 77
        Width = 209
        Height = 25
        Caption = 'Iniciar Compara'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = bbImportarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
          00333FF777777777773F0000FFFFFFFFFF0377773F3F3F3F3F7308880F0F0F0F
          0FF07F33737373737337088880FFFFFFFFF07F3337FFFFFFFFF7088880000000
          00037F3337777777777308888033330F03337F3337F3FF7F7FFF088880300000
          00007F3337F7777777770FFFF030FFFFFFF07F3FF7F7F3FFFFF708008030F000
          00F07F7737F7F77777F70FFFF030F0AAE0F07F3FF7F7F7F337F708008030F0DA
          D0F07F7737F7F7FFF7F70FFFF030F00000F07F33F7F7F77777370FF9F030FFFF
          FFF07F3737F7FFFFFFF70FFFF030000000007FFFF7F777777777000000333333
          3333777777333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object bbSair: TBitBtn
        Left = 463
        Top = 80
        Width = 209
        Height = 25
        Caption = 'Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = bbSairClick
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
      object bbArredonda: TBitBtn
        Left = 232
        Top = 78
        Width = 209
        Height = 25
        Caption = 'Ajustar Arredondamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = bbArredondaClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5000555555555555577755555555555550B0555555555555F7F7555555555550
          00B05555555555577757555555555550B3B05555555555F7F557555555555000
          3B0555555555577755755555555500B3B0555555555577555755555555550B3B
          055555FFFF5F7F5575555700050003B05555577775777557555570BBB00B3B05
          555577555775557555550BBBBBB3B05555557F555555575555550BBBBBBB0555
          55557F55FF557F5555550BB003BB075555557F577F5575F5555577B003BBB055
          555575F7755557F5555550BB33BBB0555555575F555557F555555507BBBB0755
          55555575FFFF7755555555570000755555555557777775555555}
        NumGlyphs = 2
      end
      object edt_chave: TEdit
        Left = 232
        Top = 117
        Width = 121
        Height = 21
        TabOrder = 7
        Visible = False
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = 24
        Top = 24
        Width = 794
        Height = 1123
        DataSource = src_ecferro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLCabGer: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 43
          BandType = btHeader
          object RLDBText1: TRLDBText
            Left = 3
            Top = 5
            Width = 164
            Height = 16
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 633
            Top = 2
            Width = 59
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'Pagina:'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 691
            Top = 2
            Width = 116
            Height = 16
            Info = itLastPageNumber
            Text = '/'
          end
          object RLLabel1: TRLLabel
            Left = 3
            Top = 24
            Width = 255
            Height = 16
            Caption = 'Comparativo Entre Cupom fiscal e Pedidos.'
          end
          object lbl_dathor: TRLLabel
            Left = 515
            Top = 24
            Width = 201
            Height = 16
            Alignment = taRightJustify
          end
        end
        object RLCabObs: TRLBand
          Left = 38
          Top = 81
          Width = 718
          Height = 16
          BandType = btHeader
          object lbl_periodo: TRLLabel
            Left = 6
            Top = -1
            Width = 706
            Height = 16
            Alignment = taCenter
            AutoSize = False
          end
        end
        object RlCabDet: TRLBand
          Left = 38
          Top = 97
          Width = 718
          Height = 16
          BandType = btHeader
          object lblNumCF: TRLLabel
            Left = 3
            Top = -1
            Width = 78
            Height = 16
            AutoSize = False
            Caption = 'N'#250'mero CF'
          end
          object lblDatECF: TRLLabel
            Left = 86
            Top = 0
            Width = 78
            Height = 16
            AutoSize = False
            Caption = 'Data CF'
          end
          object lblValorCF: TRLLabel
            Left = 174
            Top = 0
            Width = 78
            Height = 17
            AutoSize = False
            Caption = 'Valor CF'
          end
          object lblValorPed: TRLLabel
            Left = 260
            Top = 0
            Width = 78
            Height = 17
            AutoSize = False
            Caption = 'Valor Ped'
          end
          object lbl_obs: TRLLabel
            Left = 332
            Top = -1
            Width = 373
            Height = 17
            AutoSize = False
            Caption = 'Observa'#231#245'es'
          end
        end
        object RLDet: TRLBand
          Left = 38
          Top = 113
          Width = 718
          Height = 16
          object edtNumCF: TRLDBText
            Left = 3
            Top = 0
            Width = 78
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'CENUMCUP'
            DataSource = src_ecferro
            Holder = lblNumCF
          end
          object edtDatECF: TRLDBText
            Left = 86
            Top = 0
            Width = 78
            Height = 16
            AutoSize = False
            DataField = 'CEDATCUP'
            DataSource = src_ecferro
            Holder = lblDatECF
          end
          object edtValorCF: TRLDBText
            Left = 174
            Top = 0
            Width = 78
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'CEVALORCF'
            DataSource = src_ecferro
            Holder = lblValorCF
          end
          object edtValorPed: TRLDBText
            Left = 260
            Top = 0
            Width = 78
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'CEVALORPED'
            DataSource = src_ecferro
            Holder = lblValorPed
          end
          object edt_obs: TRLDBText
            Left = 332
            Top = 0
            Width = 373
            Height = 16
            AutoSize = False
            DataField = 'OBS'
            DataSource = src_ecferro
            Holder = lbl_obs
          end
        end
        object RLRodape: TRLBand
          Left = 38
          Top = 145
          Width = 718
          Height = 16
          BandType = btFooter
        end
        object RLSumario: TRLBand
          Left = 38
          Top = 129
          Width = 718
          Height = 16
          BandType = btSummary
        end
      end
    end
    object tscupons: TTabSheet
      Caption = 'Cupons'
      ImageIndex = 2
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 689
        Height = 259
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
            FieldName = 'contCOO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HoraInicio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'contCCF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ_CPFConsumidor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Endereco'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SubTotal'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ValorAcrescimo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ValorDesconto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SomaPgto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Troco'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TextoSuplementar'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cancelado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CupomAdicional'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DescontoISSDesabilitado'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Itens Aliquotas Diferente'
      ImageIndex = 3
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 689
        Height = 259
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ITEM_NUMCUP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM_DATCUP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM_VALORITEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM_CUPOM_ALIQ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM_CUPOM_VALOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM_CODALIQ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM_OBS'
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'tsSomaDiaria'
      ImageIndex = 4
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 689
        Height = 189
        Align = alClient
        DataSource = src_diario
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'MD_DATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MD_MFD_TOTRET'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MD_MP_TOTRET'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MD_MFD_TOTTRIB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MD_MP_TOTTRIB'
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 189
        Width = 689
        Height = 70
        Align = alBottom
        TabOrder = 1
        object Label5: TLabel
          Left = 10
          Top = 8
          Width = 29
          Height = 13
          Caption = 'Totais'
        end
        object tot_mfd_totret: TStaticText
          Left = 126
          Top = 15
          Width = 102
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          TabOrder = 0
        end
        object tot_mp_totret: TStaticText
          Left = 227
          Top = 15
          Width = 98
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          TabOrder = 1
        end
        object tot_mfd_tottrib: TStaticText
          Left = 324
          Top = 15
          Width = 101
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          TabOrder = 2
        end
        object tot_mp_tottrib: TStaticText
          Left = 424
          Top = 15
          Width = 101
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          TabOrder = 3
        end
        object ret_difer: TStaticText
          Left = 177
          Top = 31
          Width = 102
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          TabOrder = 4
        end
        object trib_difer: TStaticText
          Left = 374
          Top = 31
          Width = 102
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          TabOrder = 5
        end
      end
    end
  end
  object opd1: TOpenDialog
    DefaultExt = '*.accdb'
    Left = 608
    Top = 184
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\BKP\MEGAWATT\DOW' +
      'NLOAD_MES05\DOWNLOAD.MDB;Persist Security Info=False;'
    KeepConnection = False
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 280
    Top = 40
  end
  object ADO_Origem: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'Select * from CuponsFiscais')
    Left = 368
    Top = 40
    object ADO_OrigemcontCOO: TIntegerField
      FieldName = 'contCOO'
    end
    object ADO_OrigemHoraInicio: TDateTimeField
      FieldName = 'HoraInicio'
    end
    object ADO_OrigemcontCCF: TIntegerField
      FieldName = 'contCCF'
    end
    object ADO_OrigemCNPJ_CPFConsumidor: TWideStringField
      FieldName = 'CNPJ_CPFConsumidor'
      Size = 30
    end
    object ADO_OrigemNome: TWideStringField
      FieldName = 'Nome'
      Size = 30
    end
    object ADO_OrigemEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 80
    end
    object ADO_OrigemSubTotal: TBCDField
      FieldName = 'SubTotal'
      Precision = 19
    end
    object ADO_OrigemValorAcrescimo: TBCDField
      FieldName = 'ValorAcrescimo'
      Precision = 19
    end
    object ADO_OrigemValorDesconto: TBCDField
      FieldName = 'ValorDesconto'
      Precision = 19
    end
    object ADO_OrigemTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
    end
    object ADO_OrigemSomaPgto: TBCDField
      FieldName = 'SomaPgto'
      Precision = 19
    end
    object ADO_OrigemTroco: TBCDField
      FieldName = 'Troco'
      Precision = 19
    end
    object ADO_OrigemTextoSuplementar: TMemoField
      FieldName = 'TextoSuplementar'
      BlobType = ftMemo
    end
    object ADO_OrigemCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object ADO_OrigemCupomAdicional: TBooleanField
      FieldName = 'CupomAdicional'
    end
    object ADO_OrigemDescontoISSDesabilitado: TBooleanField
      FieldName = 'DescontoISSDesabilitado'
    end
  end
  object mem_ecferro: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CENUMCUP'
        DataType = ftInteger
      end
      item
        Name = 'CEDATCUP'
        DataType = ftDateTime
      end
      item
        Name = 'CEVALORCF'
        DataType = ftFloat
      end
      item
        Name = 'CEVALORPED'
        DataType = ftFloat
      end
      item
        Name = 'OBS'
        DataType = ftString
        Size = 150
      end>
    Left = 240
    Top = 184
    object mem_ecferroCENUMCUP: TIntegerField
      FieldName = 'CENUMCUP'
    end
    object mem_ecferroCEDATCUP: TDateTimeField
      FieldName = 'CEDATCUP'
    end
    object mem_ecferroCEVALORCF: TFloatField
      FieldName = 'CEVALORCF'
    end
    object mem_ecferroCEVALORPED: TFloatField
      FieldName = 'CEVALORPED'
    end
    object mem_ecferroOBS: TStringField
      FieldName = 'OBS'
      Size = 150
    end
  end
  object src_ecferro: TDataSource
    DataSet = mem_ecferro
    Left = 284
    Top = 200
  end
  object Tb_Ped02: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP02')
    UpdateObject = U_Ped02
    Left = 548
    Top = 48
    object Tb_Ped02P2CODEMP: TFloatField
      FieldName = 'P2CODEMP'
      Origin = 'SG_ASSOC.CADP02.P2CODEMP'
    end
    object Tb_Ped02P2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
      Origin = 'SG_ASSOC.CADP02.P2LOTSEQ'
    end
    object Tb_Ped02P2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE'
    end
    object Tb_Ped02P2ORDEM: TFloatField
      FieldName = 'P2ORDEM'
      Origin = 'SG_ASSOC.CADP02.P2ORDEM'
    end
    object Tb_Ped02P2ITEM: TFloatField
      FieldName = 'P2ITEM'
      Origin = 'SG_ASSOC.CADP02.P2ITEM'
    end
    object Tb_Ped02P2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Tb_Ped02P2CODANT: TFloatField
      FieldName = 'P2CODANT'
      Origin = 'SG_ASSOC.CADP02.P2CODANT'
    end
    object Tb_Ped02P2QTD: TFloatField
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Tb_Ped02P2QTDDEV: TFloatField
      FieldName = 'P2QTDDEV'
      Origin = 'SG_ASSOC.CADP02.P2QTDDEV'
    end
    object Tb_Ped02P2LOTE: TStringField
      FieldName = 'P2LOTE'
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object Tb_Ped02P2PROMOCAO: TStringField
      FieldName = 'P2PROMOCAO'
      Origin = 'SG_ASSOC.CADP02.P2PROMOCAO'
      Size = 10
    end
    object Tb_Ped02P2DTVCTO: TDateTimeField
      FieldName = 'P2DTVCTO'
      Origin = 'SG_ASSOC.CADP02.P2DTVCTO'
    end
    object Tb_Ped02P2DESC1: TFloatField
      FieldName = 'P2DESC1'
      Origin = 'SG_ASSOC.CADP02.P2DESC1'
    end
    object Tb_Ped02P2DESC2: TFloatField
      FieldName = 'P2DESC2'
      Origin = 'SG_ASSOC.CADP02.P2DESC2'
    end
    object Tb_Ped02P2VALDES: TFloatField
      FieldName = 'P2VALDES'
      Origin = 'SG_ASSOC.CADP02.P2VALDES'
    end
    object Tb_Ped02P2PRECO: TFloatField
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Tb_Ped02P2SIT: TStringField
      FieldName = 'P2SIT'
      Origin = 'SG_ASSOC.CADP02.P2SIT'
      Size = 3
    end
    object Tb_Ped02P2CODFAB: TFloatField
      FieldName = 'P2CODFAB'
      Origin = 'SG_ASSOC.CADP02.P2CODFAB'
    end
    object Tb_Ped02P2BASEN: TFloatField
      FieldName = 'P2BASEN'
      Origin = 'SG_ASSOC.CADP02.P2BASEN'
    end
    object Tb_Ped02P2ICMSN: TFloatField
      FieldName = 'P2ICMSN'
      Origin = 'SG_ASSOC.CADP02.P2ICMSN'
    end
    object Tb_Ped02P2REPAS: TFloatField
      FieldName = 'P2REPAS'
      Origin = 'SG_ASSOC.CADP02.P2REPAS'
    end
    object Tb_Ped02P2BASER: TFloatField
      FieldName = 'P2BASER'
      Origin = 'SG_ASSOC.CADP02.P2BASER'
    end
    object Tb_Ped02P2ICMSR: TFloatField
      FieldName = 'P2ICMSR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSR'
    end
    object Tb_Ped02P2LISTA: TFloatField
      FieldName = 'P2LISTA'
      Origin = 'SG_ASSOC.CADP02.P2LISTA'
    end
    object Tb_Ped02P2STATUS: TFloatField
      FieldName = 'P2STATUS'
      Origin = 'SG_ASSOC.CADP02.P2STATUS'
    end
    object Tb_Ped02P2PCOTAB: TFloatField
      FieldName = 'P2PCOTAB'
      Origin = 'SG_ASSOC.CADP02.P2PCOTAB'
    end
    object Tb_Ped02P2UCPR: TFloatField
      FieldName = 'P2UCPR'
      Origin = 'SG_ASSOC.CADP02.P2UCPR'
    end
    object Tb_Ped02P2PCOCUS: TFloatField
      FieldName = 'P2PCOCUS'
      Origin = 'SG_ASSOC.CADP02.P2PCOCUS'
    end
    object Tb_Ped02P2PCOMAX: TFloatField
      FieldName = 'P2PCOMAX'
      Origin = 'SG_ASSOC.CADP02.P2PCOMAX'
    end
    object Tb_Ped02P2TOTDES: TFloatField
      FieldName = 'P2TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object Tb_Ped02P2DESCRAT: TFloatField
      FieldName = 'P2DESCRAT'
      Origin = 'SG_ASSOC.CADP02.P2DESCRAT'
    end
    object Tb_Ped02P2TABELA: TStringField
      FieldName = 'P2TABELA'
      Origin = 'SG_ASSOC.CADP02.P2TABELA'
      Size = 1
    end
    object Tb_Ped02P2ALIPI: TFloatField
      FieldName = 'P2ALIPI'
      Origin = 'SG_ASSOC.CADP02.P2ALIPI'
    end
    object Tb_Ped02P2VALIPI: TFloatField
      FieldName = 'P2VALIPI'
      Origin = 'SG_ASSOC.CADP02.P2VALIPI'
    end
    object Tb_Ped02P2BCINR: TFloatField
      FieldName = 'P2BCINR'
      Origin = 'SG_ASSOC.CADP02.P2BCINR'
    end
    object Tb_Ped02P2ICMSNR: TFloatField
      FieldName = 'P2ICMSNR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSNR'
    end
    object Tb_Ped02P2ISENTAS: TFloatField
      FieldName = 'P2ISENTAS'
      Origin = 'SG_ASSOC.CADP02.P2ISENTAS'
    end
    object Tb_Ped02P2TOTOUT: TFloatField
      FieldName = 'P2TOTOUT'
      Origin = 'SG_ASSOC.CADP02.P2TOTOUT'
    end
    object Tb_Ped02P2ALIQ: TFloatField
      FieldName = 'P2ALIQ'
      Origin = 'SG_ASSOC.CADP02.P2ALIQ'
    end
    object Tb_Ped02P2ALIQNR: TFloatField
      FieldName = 'P2ALIQNR'
      Origin = 'SG_ASSOC.CADP02.P2ALIQNR'
    end
    object Tb_Ped02P2PCOMIS: TFloatField
      FieldName = 'P2PCOMIS'
      Origin = 'SG_ASSOC.CADP02.P2PCOMIS'
    end
    object Tb_Ped02P2VCOMIS: TFloatField
      FieldName = 'P2VCOMIS'
      Origin = 'SG_ASSOC.CADP02.P2VCOMIS'
    end
    object Tb_Ped02P2VCOM02: TFloatField
      FieldName = 'P2VCOM02'
      Origin = 'SG_ASSOC.CADP02.P2VCOM02'
    end
    object Tb_Ped02P2VCOM03: TFloatField
      FieldName = 'P2VCOM03'
      Origin = 'SG_ASSOC.CADP02.P2VCOM03'
    end
    object Tb_Ped02P2DESCM: TFloatField
      FieldName = 'P2DESCM'
      Origin = 'SG_ASSOC.CADP02.P2DESCM'
    end
    object Tb_Ped02P2CFO: TFloatField
      FieldName = 'P2CFO'
      Origin = 'SG_ASSOC.CADP02.P2CFO'
    end
    object Tb_Ped02P2SEMCOM: TFloatField
      FieldName = 'P2SEMCOM'
      Origin = 'SG_ASSOC.CADP02.P2SEMCOM'
    end
    object Tb_Ped02P2TOTLIQ: TFloatField
      FieldName = 'P2TOTLIQ'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object Tb_Ped02P2PDESCF: TFloatField
      FieldName = 'P2PDESCF'
      Origin = 'SG_ASSOC.CADP02.P2PDESCF'
    end
    object Tb_Ped02P2VDESCF: TFloatField
      FieldName = 'P2VDESCF'
      Origin = 'SG_ASSOC.CADP02.P2VDESCF'
    end
    object Tb_Ped02P2ACRECONV: TFloatField
      FieldName = 'P2ACRECONV'
      Origin = 'SG_ASSOC.CADP02.P2ACRECONV'
    end
    object Tb_Ped02P2ACREGER: TFloatField
      FieldName = 'P2ACREGER'
      Origin = 'SG_ASSOC.CADP02.P2ACREGER'
    end
    object Tb_Ped02P2DESC3: TFloatField
      FieldName = 'P2DESC3'
      Origin = 'SG_ASSOC.CADP02.P2DESC3'
    end
    object Tb_Ped02P2CODGRU: TFloatField
      FieldName = 'P2CODGRU'
      Origin = 'SG_ASSOC.CADP02.P2CODGRU'
    end
    object Tb_Ped02P2VCOM04: TFloatField
      FieldName = 'P2VCOM04'
      Origin = 'SG_ASSOC.CADP02.P2VCOM04'
    end
    object Tb_Ped02P2ACRERAT: TFloatField
      FieldName = 'P2ACRERAT'
      Origin = 'SG_ASSOC.CADP02.P2ACRERAT'
    end
    object Tb_Ped02P2QTD_ENTREGUE: TFloatField
      FieldName = 'P2QTD_ENTREGUE'
      Origin = 'SG_ASSOC.CADP02.P2QTD_ENTREGUE'
    end
    object Tb_Ped02P2QTD_ENTREGANDO: TFloatField
      FieldName = 'P2QTD_ENTREGANDO'
      Origin = 'SG_ASSOC.CADP02.P2QTD_ENTREGANDO'
    end
    object Tb_Ped02P2AMBIENTE: TStringField
      FieldName = 'P2AMBIENTE'
      Origin = 'SG_ASSOC.CADP02.P2AMBIENTE'
      Size = 30
    end
    object Tb_Ped02P2PCOFPG: TFloatField
      FieldName = 'P2PCOFPG'
      Origin = 'SG_ASSOC.CADP02.P2PCOFPG'
    end
    object Tb_Ped02P2PCOMIS_EXTRA: TFloatField
      FieldName = 'P2PCOMIS_EXTRA'
      Origin = 'SG_ASSOC.CADP02.P2PCOMIS_EXTRA'
    end
    object Tb_Ped02P2VCOMIS_EXTRA: TFloatField
      FieldName = 'P2VCOMIS_EXTRA'
      Origin = 'SG_ASSOC.CADP02.P2VCOMIS_EXTRA'
    end
    object Tb_Ped02P2STATUS_PED1: TFloatField
      FieldName = 'P2STATUS_PED1'
      Origin = 'SG_ASSOC.CADP02.P2STATUS_PED1'
    end
    object Tb_Ped02P2TIPO: TFloatField
      FieldName = 'P2TIPO'
      Origin = 'SG_ASSOC.CADP02.P2TIPO'
    end
    object Tb_Ped02P2CFOSUBECF: TFloatField
      FieldName = 'P2CFOSUBECF'
      Origin = 'SG_ASSOC.CADP02.P2CFOSUBECF'
    end
    object Tb_Ped02P2CODAGRU: TFloatField
      FieldName = 'P2CODAGRU'
      Origin = 'SG_ASSOC.CADP02.P2CODAGRU'
    end
    object Tb_Ped02P2CONSIG: TFloatField
      FieldName = 'P2CONSIG'
      Origin = 'SG_ASSOC.CADP02.P2CONSIG'
    end
    object Tb_Ped02P2PCOM02: TFloatField
      FieldName = 'P2PCOM02'
      Origin = 'SG_ASSOC.CADP02.P2PCOM02'
    end
    object Tb_Ped02P2PCOM03: TFloatField
      FieldName = 'P2PCOM03'
      Origin = 'SG_ASSOC.CADP02.P2PCOM03'
    end
    object Tb_Ped02P2ST_IVA: TFloatField
      FieldName = 'P2ST_IVA'
      Origin = 'SG_ASSOC.CADP02.P2ST_IVA'
    end
    object Tb_Ped02P2ST_REDUT: TFloatField
      FieldName = 'P2ST_REDUT'
      Origin = 'SG_ASSOC.CADP02.P2ST_REDUT'
    end
    object Tb_Ped02P2ST_ICMCRED: TFloatField
      FieldName = 'P2ST_ICMCRED'
      Origin = 'SG_ASSOC.CADP02.P2ST_ICMCRED'
    end
    object Tb_Ped02P2ST_ICMDEB: TFloatField
      FieldName = 'P2ST_ICMDEB'
      Origin = 'SG_ASSOC.CADP02.P2ST_ICMDEB'
    end
    object Tb_Ped02P2REDUTICM: TFloatField
      FieldName = 'P2REDUTICM'
      Origin = 'SG_ASSOC.CADP02.P2REDUTICM'
    end
    object Tb_Ped02P2PRAZO: TFloatField
      FieldName = 'P2PRAZO'
      Origin = 'SG_ASSOC.CADP02.P2PRAZO'
    end
    object Tb_Ped02P2QTD_ATEN: TFloatField
      FieldName = 'P2QTD_ATEN'
      Origin = 'SG_ASSOC.CADP02.P2QTD_ATEN'
    end
    object Tb_Ped02P2ALPIS: TFloatField
      FieldName = 'P2ALPIS'
      Origin = 'SG_ASSOC.CADP02.P2ALPIS'
    end
    object Tb_Ped02P2VALPIS: TFloatField
      FieldName = 'P2VALPIS'
      Origin = 'SG_ASSOC.CADP02.P2VALPIS'
    end
    object Tb_Ped02P2ALCOFINS: TFloatField
      FieldName = 'P2ALCOFINS'
      Origin = 'SG_ASSOC.CADP02.P2ALCOFINS'
    end
    object Tb_Ped02P2COFINS: TFloatField
      FieldName = 'P2COFINS'
      Origin = 'SG_ASSOC.CADP02.P2COFINS'
    end
    object Tb_Ped02P2CODVEN: TFloatField
      FieldName = 'P2CODVEN'
      Origin = 'SG_ASSOC.CADP02.P2CODVEN'
    end
    object Tb_Ped02P2COMPLEMENTO: TMemoField
      FieldName = 'P2COMPLEMENTO'
      Origin = 'SG_ASSOC.CADP02.P2COMPLEMENTO'
      BlobType = ftMemo
      Size = 500
    end
    object Tb_Ped02P2TIPO_PCO: TFloatField
      FieldName = 'P2TIPO_PCO'
      Origin = 'SG_ASSOC.CADP02.P2TIPO_PCO'
    end
    object Tb_Ped02P2CONS_PROPRIO: TFloatField
      FieldName = 'P2CONS_PROPRIO'
      Origin = 'SG_ASSOC.CADP02.P2CONS_PROPRIO'
    end
    object Tb_Ped02P2CODPRO_ORI: TStringField
      FieldName = 'P2CODPRO_ORI'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO_ORI'
      Size = 14
    end
    object Tb_Ped02P2NOMPRO_ORI: TStringField
      FieldName = 'P2NOMPRO_ORI'
      Origin = 'SG_ASSOC.CADP02.P2NOMPRO_ORI'
      Size = 200
    end
    object Tb_Ped02P2CHAVE_NIVEL: TFloatField
      FieldName = 'P2CHAVE_NIVEL'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE_NIVEL'
    end
    object Tb_Ped02P2PCRED_SN: TFloatField
      FieldName = 'P2PCRED_SN'
      Origin = 'SG_ASSOC.CADP02.P2PCRED_SN'
    end
    object Tb_Ped02P2PCREDSN: TFloatField
      FieldName = 'P2PCREDSN'
      Origin = 'SG_ASSOC.CADP02.P2PCREDSN'
    end
    object Tb_Ped02P2UND: TStringField
      FieldName = 'P2UND'
      Origin = 'SG_ASSOC.CADP02.P2UND'
      Size = 6
    end
    object Tb_Ped02P2DESCPR: TFloatField
      FieldName = 'P2DESCPR'
      Origin = 'SG_ASSOC.CADP02.P2DESCPR'
    end
    object Tb_Ped02P2ID_NEW: TFloatField
      FieldName = 'P2ID_NEW'
    end
    object Tb_Ped02P2ID_PED01_NEW: TFloatField
      FieldName = 'P2ID_PED01_NEW'
    end
  end
  object U_Ped02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADP02'
      'set'
      '  P2CODEMP = :P2CODEMP,'
      '  P2LOTSEQ = :P2LOTSEQ,'
      '  P2CHAVE = :P2CHAVE,'
      '  P2ORDEM = :P2ORDEM,'
      '  P2ITEM = :P2ITEM,'
      '  P2CODPRO = :P2CODPRO,'
      '  P2CODANT = :P2CODANT,'
      '  P2QTD = :P2QTD,'
      '  P2QTDDEV = :P2QTDDEV,'
      '  P2LOTE = :P2LOTE,'
      '  P2PROMOCAO = :P2PROMOCAO,'
      '  P2DTVCTO = :P2DTVCTO,'
      '  P2DESC1 = :P2DESC1,'
      '  P2DESC2 = :P2DESC2,'
      '  P2VALDES = :P2VALDES,'
      '  P2PRECO = :P2PRECO,'
      '  P2SIT = :P2SIT,'
      '  P2CODFAB = :P2CODFAB,'
      '  P2BASEN = :P2BASEN,'
      '  P2ICMSN = :P2ICMSN,'
      '  P2REPAS = :P2REPAS,'
      '  P2BASER = :P2BASER,'
      '  P2ICMSR = :P2ICMSR,'
      '  P2LISTA = :P2LISTA,'
      '  P2STATUS = :P2STATUS,'
      '  P2PCOTAB = :P2PCOTAB,'
      '  P2UCPR = :P2UCPR,'
      '  P2PCOCUS = :P2PCOCUS,'
      '  P2PCOMAX = :P2PCOMAX,'
      '  P2TOTDES = :P2TOTDES,'
      '  P2DESCRAT = :P2DESCRAT,'
      '  P2TABELA = :P2TABELA,'
      '  P2ALIPI = :P2ALIPI,'
      '  P2VALIPI = :P2VALIPI,'
      '  P2BCINR = :P2BCINR,'
      '  P2ICMSNR = :P2ICMSNR,'
      '  P2ISENTAS = :P2ISENTAS,'
      '  P2TOTOUT = :P2TOTOUT,'
      '  P2ALIQ = :P2ALIQ,'
      '  P2ALIQNR = :P2ALIQNR,'
      '  P2PCOMIS = :P2PCOMIS,'
      '  P2VCOMIS = :P2VCOMIS,'
      '  P2VCOM02 = :P2VCOM02,'
      '  P2VCOM03 = :P2VCOM03,'
      '  P2DESCM = :P2DESCM,'
      '  P2CFO = :P2CFO,'
      '  P2SEMCOM = :P2SEMCOM,'
      '  P2TOTLIQ = :P2TOTLIQ,'
      '  P2PDESCF = :P2PDESCF,'
      '  P2VDESCF = :P2VDESCF,'
      '  P2ACRECONV = :P2ACRECONV,'
      '  P2ACREGER = :P2ACREGER,'
      '  P2DESC3 = :P2DESC3,'
      '  P2CODGRU = :P2CODGRU,'
      '  P2VCOM04 = :P2VCOM04,'
      '  P2ACRERAT = :P2ACRERAT,'
      '  P2QTD_ENTREGUE = :P2QTD_ENTREGUE,'
      '  P2QTD_ENTREGANDO = :P2QTD_ENTREGANDO,'
      '  P2AMBIENTE = :P2AMBIENTE,'
      '  P2PCOFPG = :P2PCOFPG,'
      '  P2PCOMIS_EXTRA = :P2PCOMIS_EXTRA,'
      '  P2VCOMIS_EXTRA = :P2VCOMIS_EXTRA,'
      '  P2STATUS_PED1 = :P2STATUS_PED1,'
      '  P2TIPO = :P2TIPO,'
      '  P2CFOSUBECF = :P2CFOSUBECF,'
      '  P2CODAGRU = :P2CODAGRU,'
      '  P2CONSIG = :P2CONSIG,'
      '  P2PCOM02 = :P2PCOM02,'
      '  P2PCOM03 = :P2PCOM03,'
      '  P2ST_IVA = :P2ST_IVA,'
      '  P2ST_REDUT = :P2ST_REDUT,'
      '  P2ST_ICMCRED = :P2ST_ICMCRED,'
      '  P2ST_ICMDEB = :P2ST_ICMDEB,'
      '  P2REDUTICM = :P2REDUTICM,'
      '  P2PRAZO = :P2PRAZO,'
      '  P2QTD_ATEN = :P2QTD_ATEN,'
      '  P2ALPIS = :P2ALPIS,'
      '  P2VALPIS = :P2VALPIS,'
      '  P2ALCOFINS = :P2ALCOFINS,'
      '  P2COFINS = :P2COFINS,'
      '  P2CODVEN = :P2CODVEN,'
      '  P2COMPLEMENTO = :P2COMPLEMENTO,'
      '  P2TIPO_PCO = :P2TIPO_PCO,'
      '  P2CONS_PROPRIO = :P2CONS_PROPRIO,'
      '  P2CODPRO_ORI = :P2CODPRO_ORI,'
      '  P2NOMPRO_ORI = :P2NOMPRO_ORI,'
      '  P2CHAVE_NIVEL = :P2CHAVE_NIVEL,'
      '  P2PCRED_SN = :P2PCRED_SN,'
      '  P2PCREDSN = :P2PCREDSN,'
      '  P2UND = :P2UND'
      'where'
      '  P2CODEMP = :OLD_P2CODEMP and'
      '  P2LOTSEQ = :OLD_P2LOTSEQ and'
      '  P2CHAVE = :OLD_P2CHAVE and'
      '  P2ORDEM = :OLD_P2ORDEM and'
      '  P2ITEM = :OLD_P2ITEM and'
      '  P2CODPRO = :OLD_P2CODPRO')
    InsertSQL.Strings = (
      'insert into CADP02'
      '  (P2CODEMP, P2LOTSEQ, P2CHAVE, P2ORDEM, P2ITEM, P2CODPRO, '
      'P2CODANT, P2QTD, '
      '   P2QTDDEV, P2LOTE, P2PROMOCAO, P2DTVCTO, P2DESC1, P2DESC2, '
      'P2VALDES, '
      
        '   P2PRECO, P2SIT, P2CODFAB, P2BASEN, P2ICMSN, P2REPAS, P2BASER,' +
        ' '
      'P2ICMSR, '
      '   P2LISTA, P2STATUS, P2PCOTAB, P2UCPR, P2PCOCUS, P2PCOMAX, '
      'P2TOTDES, P2DESCRAT, '
      
        '   P2TABELA, P2ALIPI, P2VALIPI, P2BCINR, P2ICMSNR, P2ISENTAS, P2' +
        'TOTOUT, '
      
        '   P2ALIQ, P2ALIQNR, P2PCOMIS, P2VCOMIS, P2VCOM02, P2VCOM03, P2D' +
        'ESCM, '
      'P2CFO, '
      
        '   P2SEMCOM, P2TOTLIQ, P2PDESCF, P2VDESCF, P2ACRECONV, P2ACREGER' +
        ', '
      'P2DESC3, '
      '   P2CODGRU, P2VCOM04, P2ACRERAT, P2QTD_ENTREGUE, '
      'P2QTD_ENTREGANDO, P2AMBIENTE, '
      '   P2PCOFPG, P2PCOMIS_EXTRA, P2VCOMIS_EXTRA, P2STATUS_PED1, '
      'P2TIPO, P2CFOSUBECF, '
      
        '   P2CODAGRU, P2CONSIG, P2PCOM02, P2PCOM03, P2ST_IVA, P2ST_REDUT' +
        ', '
      'P2ST_ICMCRED, '
      
        '   P2ST_ICMDEB, P2REDUTICM, P2PRAZO, P2QTD_ATEN, P2ALPIS, P2VALP' +
        'IS, '
      'P2ALCOFINS, '
      
        '   P2COFINS, P2CODVEN, P2COMPLEMENTO, P2TIPO_PCO, P2CONS_PROPRIO' +
        ', '
      'P2CODPRO_ORI, '
      '   P2NOMPRO_ORI, P2CHAVE_NIVEL, P2PCRED_SN, P2PCREDSN, P2UND)'
      'values'
      
        '  (:P2CODEMP, :P2LOTSEQ, :P2CHAVE, :P2ORDEM, :P2ITEM, :P2CODPRO,' +
        ' '
      ':P2CODANT, '
      
        '   :P2QTD, :P2QTDDEV, :P2LOTE, :P2PROMOCAO, :P2DTVCTO, :P2DESC1,' +
        ' '
      ':P2DESC2, '
      
        '   :P2VALDES, :P2PRECO, :P2SIT, :P2CODFAB, :P2BASEN, :P2ICMSN, :' +
        'P2REPAS, '
      '   :P2BASER, :P2ICMSR, :P2LISTA, :P2STATUS, :P2PCOTAB, :P2UCPR, '
      ':P2PCOCUS, '
      
        '   :P2PCOMAX, :P2TOTDES, :P2DESCRAT, :P2TABELA, :P2ALIPI, :P2VAL' +
        'IPI, '
      ':P2BCINR, '
      
        '   :P2ICMSNR, :P2ISENTAS, :P2TOTOUT, :P2ALIQ, :P2ALIQNR, :P2PCOM' +
        'IS, '
      ':P2VCOMIS, '
      
        '   :P2VCOM02, :P2VCOM03, :P2DESCM, :P2CFO, :P2SEMCOM, :P2TOTLIQ,' +
        ' '
      ':P2PDESCF, '
      '   :P2VDESCF, :P2ACRECONV, :P2ACREGER, :P2DESC3, :P2CODGRU, '
      ':P2VCOM04, '
      '   :P2ACRERAT, :P2QTD_ENTREGUE, :P2QTD_ENTREGANDO, :P2AMBIENTE, '
      ':P2PCOFPG, '
      '   :P2PCOMIS_EXTRA, :P2VCOMIS_EXTRA, :P2STATUS_PED1, :P2TIPO, '
      ':P2CFOSUBECF, '
      '   :P2CODAGRU, :P2CONSIG, :P2PCOM02, :P2PCOM03, :P2ST_IVA, '
      ':P2ST_REDUT, '
      
        '   :P2ST_ICMCRED, :P2ST_ICMDEB, :P2REDUTICM, :P2PRAZO, :P2QTD_AT' +
        'EN, '
      ':P2ALPIS, '
      
        '   :P2VALPIS, :P2ALCOFINS, :P2COFINS, :P2CODVEN, :P2COMPLEMENTO,' +
        ' '
      ':P2TIPO_PCO, '
      
        '   :P2CONS_PROPRIO, :P2CODPRO_ORI, :P2NOMPRO_ORI, :P2CHAVE_NIVEL' +
        ', '
      ':P2PCRED_SN, '
      '   :P2PCREDSN, :P2UND)')
    DeleteSQL.Strings = (
      'delete from CADP02'
      'where'
      '  P2CODEMP = :OLD_P2CODEMP and'
      '  P2LOTSEQ = :OLD_P2LOTSEQ and'
      '  P2CHAVE = :OLD_P2CHAVE and'
      '  P2ORDEM = :OLD_P2ORDEM and'
      '  P2ITEM = :OLD_P2ITEM and'
      '  P2CODPRO = :OLD_P2CODPRO')
    Left = 576
    Top = 48
  end
  object Tb_Ped01: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP01')
    UpdateObject = U_Ped01
    Left = 544
    Top = 16
    object Tb_Ped01P1CODEMP: TFloatField
      FieldName = 'P1CODEMP'
      Origin = 'SG_ASSOC.CADP01.P1CODEMP'
    end
    object Tb_Ped01P1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Tb_Ped01P1ORDEM: TFloatField
      FieldName = 'P1ORDEM'
      Origin = 'SG_ASSOC.CADP01.P1ORDEM'
    end
    object Tb_Ped01P1CODCLI: TFloatField
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Tb_Ped01P1CODVEN: TFloatField
      FieldName = 'P1CODVEN'
      Origin = 'SG_ASSOC.CADP01.P1CODVEN'
    end
    object Tb_Ped01P1CODV02: TFloatField
      FieldName = 'P1CODV02'
      Origin = 'SG_ASSOC.CADP01.P1CODV02'
    end
    object Tb_Ped01P1CODV03: TFloatField
      FieldName = 'P1CODV03'
      Origin = 'SG_ASSOC.CADP01.P1CODV03'
    end
    object Tb_Ped01P1DATAP: TDateTimeField
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Tb_Ped01P1DATANF: TDateTimeField
      FieldName = 'P1DATANF'
      Origin = 'SG_ASSOC.CADP01.P1DATANF'
    end
    object Tb_Ped01P1NUMNF: TFloatField
      FieldName = 'P1NUMNF'
      Origin = 'SG_ASSOC.CADP01.P1NUMNF'
    end
    object Tb_Ped01P1SERIE: TStringField
      FieldName = 'P1SERIE'
      Origin = 'SG_ASSOC.CADP01.P1SERIE'
      Size = 3
    end
    object Tb_Ped01P1SUBSER: TStringField
      FieldName = 'P1SUBSER'
      Origin = 'SG_ASSOC.CADP01.P1SUBSER'
      Size = 3
    end
    object Tb_Ped01P1MODELO: TStringField
      FieldName = 'P1MODELO'
      Origin = 'SG_ASSOC.CADP01.P1MODELO'
      Size = 3
    end
    object Tb_Ped01P1SUBMOD: TStringField
      FieldName = 'P1SUBMOD'
      Origin = 'SG_ASSOC.CADP01.P1SUBMOD'
      Size = 3
    end
    object Tb_Ped01P1OBS1: TStringField
      FieldName = 'P1OBS1'
      Origin = 'SG_ASSOC.CADP01.P1OBS1'
      Size = 120
    end
    object Tb_Ped01P1OBS2: TStringField
      FieldName = 'P1OBS2'
      Origin = 'SG_ASSOC.CADP01.P1OBS2'
      Size = 120
    end
    object Tb_Ped01P1OBS3: TStringField
      FieldName = 'P1OBS3'
      Origin = 'SG_ASSOC.CADP01.P1OBS3'
      Size = 120
    end
    object Tb_Ped01P1STATUS: TFloatField
      FieldName = 'P1STATUS'
      Origin = 'SG_ASSOC.CADP01.P1STATUS'
    end
    object Tb_Ped01P1TIPO: TFloatField
      FieldName = 'P1TIPO'
      Origin = 'SG_ASSOC.CADP01.P1TIPO'
    end
    object Tb_Ped01P1TOTALB: TFloatField
      FieldName = 'P1TOTALB'
      Origin = 'SG_ASSOC.CADP01.P1TOTALB'
    end
    object Tb_Ped01P1TOTALL: TFloatField
      FieldName = 'P1TOTALL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Tb_Ped01P1CODUSR: TFloatField
      FieldName = 'P1CODUSR'
      Origin = 'SG_ASSOC.CADP01.P1CODUSR'
    end
    object Tb_Ped01P1HORADIG: TStringField
      FieldName = 'P1HORADIG'
      Origin = 'SG_ASSOC.CADP01.P1HORADIG'
      Size = 10
    end
    object Tb_Ped01P1DTMOD: TDateTimeField
      FieldName = 'P1DTMOD'
      Origin = 'SG_ASSOC.CADP01.P1DTMOD'
    end
    object Tb_Ped01P1HRMOD: TStringField
      FieldName = 'P1HRMOD'
      Origin = 'SG_ASSOC.CADP01.P1HRMOD'
      Size = 10
    end
    object Tb_Ped01P1USRMOD: TFloatField
      FieldName = 'P1USRMOD'
      Origin = 'SG_ASSOC.CADP01.P1USRMOD'
    end
    object Tb_Ped01P1CONF: TStringField
      FieldName = 'P1CONF'
      Origin = 'SG_ASSOC.CADP01.P1CONF'
      Size = 1
    end
    object Tb_Ped01P1CODCON: TFloatField
      FieldName = 'P1CODCON'
      Origin = 'SG_ASSOC.CADP01.P1CODCON'
    end
    object Tb_Ped01P1DATCON: TDateTimeField
      FieldName = 'P1DATCON'
      Origin = 'SG_ASSOC.CADP01.P1DATCON'
    end
    object Tb_Ped01P1HORCON: TStringField
      FieldName = 'P1HORCON'
      Origin = 'SG_ASSOC.CADP01.P1HORCON'
      Size = 10
    end
    object Tb_Ped01P1TIPENT: TFloatField
      FieldName = 'P1TIPENT'
      Origin = 'SG_ASSOC.CADP01.P1TIPENT'
    end
    object Tb_Ped01P1PREVENT: TDateTimeField
      FieldName = 'P1PREVENT'
      Origin = 'SG_ASSOC.CADP01.P1PREVENT'
    end
    object Tb_Ped01P1HPREVENT: TStringField
      FieldName = 'P1HPREVENT'
      Origin = 'SG_ASSOC.CADP01.P1HPREVENT'
      Size = 10
    end
    object Tb_Ped01P1CODENT: TFloatField
      FieldName = 'P1CODENT'
      Origin = 'SG_ASSOC.CADP01.P1CODENT'
    end
    object Tb_Ped01P1PRAZO: TFloatField
      FieldName = 'P1PRAZO'
      Origin = 'SG_ASSOC.CADP01.P1PRAZO'
    end
    object Tb_Ped01P1DATENT: TDateTimeField
      FieldName = 'P1DATENT'
      Origin = 'SG_ASSOC.CADP01.P1DATENT'
    end
    object Tb_Ped01P1HORENT: TStringField
      FieldName = 'P1HORENT'
      Origin = 'SG_ASSOC.CADP01.P1HORENT'
      Size = 10
    end
    object Tb_Ped01P1TABPV: TStringField
      FieldName = 'P1TABPV'
      Origin = 'SG_ASSOC.CADP01.P1TABPV'
      Size = 2
    end
    object Tb_Ped01P1CODPV: TFloatField
      FieldName = 'P1CODPV'
      Origin = 'SG_ASSOC.CADP01.P1CODPV'
    end
    object Tb_Ped01P1CUPOM: TFloatField
      FieldName = 'P1CUPOM'
      Origin = 'SG_ASSOC.CADP01.P1CUPOM'
    end
    object Tb_Ped01P1BASEN: TFloatField
      FieldName = 'P1BASEN'
      Origin = 'SG_ASSOC.CADP01.P1BASEN'
    end
    object Tb_Ped01P1ICMSN: TFloatField
      FieldName = 'P1ICMSN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSN'
    end
    object Tb_Ped01P1REPAS: TFloatField
      FieldName = 'P1REPAS'
      Origin = 'SG_ASSOC.CADP01.P1REPAS'
    end
    object Tb_Ped01P1BASER: TFloatField
      FieldName = 'P1BASER'
      Origin = 'SG_ASSOC.CADP01.P1BASER'
    end
    object Tb_Ped01P1ICMSR: TFloatField
      FieldName = 'P1ICMSR'
      Origin = 'SG_ASSOC.CADP01.P1ICMSR'
    end
    object Tb_Ped01P1BASENP: TFloatField
      FieldName = 'P1BASENP'
      Origin = 'SG_ASSOC.CADP01.P1BASENP'
    end
    object Tb_Ped01P1BASENN: TFloatField
      FieldName = 'P1BASENN'
      Origin = 'SG_ASSOC.CADP01.P1BASENN'
    end
    object Tb_Ped01P1BASENI: TFloatField
      FieldName = 'P1BASENI'
      Origin = 'SG_ASSOC.CADP01.P1BASENI'
    end
    object Tb_Ped01P1ICMSNP: TFloatField
      FieldName = 'P1ICMSNP'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNP'
    end
    object Tb_Ped01P1ICMSNN: TFloatField
      FieldName = 'P1ICMSNN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNN'
    end
    object Tb_Ped01P1ICMSNI: TFloatField
      FieldName = 'P1ICMSNI'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNI'
    end
    object Tb_Ped01P1BASERP: TFloatField
      FieldName = 'P1BASERP'
      Origin = 'SG_ASSOC.CADP01.P1BASERP'
    end
    object Tb_Ped01P1BASERN: TFloatField
      FieldName = 'P1BASERN'
      Origin = 'SG_ASSOC.CADP01.P1BASERN'
    end
    object Tb_Ped01P1BASERI: TFloatField
      FieldName = 'P1BASERI'
      Origin = 'SG_ASSOC.CADP01.P1BASERI'
    end
    object Tb_Ped01P1ICMSRP: TFloatField
      FieldName = 'P1ICMSRP'
      Origin = 'SG_ASSOC.CADP01.P1ICMSRP'
    end
    object Tb_Ped01P1ICMSRN: TFloatField
      FieldName = 'P1ICMSRN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSRN'
    end
    object Tb_Ped01P1ICMSRI: TFloatField
      FieldName = 'P1ICMSRI'
      Origin = 'SG_ASSOC.CADP01.P1ICMSRI'
    end
    object Tb_Ped01P1BASENRI: TFloatField
      FieldName = 'P1BASENRI'
      Origin = 'SG_ASSOC.CADP01.P1BASENRI'
    end
    object Tb_Ped01P1ICMSNRI: TFloatField
      FieldName = 'P1ICMSNRI'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNRI'
    end
    object Tb_Ped01P1BASENRP: TFloatField
      FieldName = 'P1BASENRP'
      Origin = 'SG_ASSOC.CADP01.P1BASENRP'
    end
    object Tb_Ped01P1ICMSNRP: TFloatField
      FieldName = 'P1ICMSNRP'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNRP'
    end
    object Tb_Ped01P1BASENRN: TFloatField
      FieldName = 'P1BASENRN'
      Origin = 'SG_ASSOC.CADP01.P1BASENRN'
    end
    object Tb_Ped01P1ICMSNRN: TFloatField
      FieldName = 'P1ICMSNRN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNRN'
    end
    object Tb_Ped01P1IPIINA: TFloatField
      FieldName = 'P1IPIINA'
      Origin = 'SG_ASSOC.CADP01.P1IPIINA'
    end
    object Tb_Ped01P1IPIPOS: TFloatField
      FieldName = 'P1IPIPOS'
      Origin = 'SG_ASSOC.CADP01.P1IPIPOS'
    end
    object Tb_Ped01P1IPINEG: TFloatField
      FieldName = 'P1IPINEG'
      Origin = 'SG_ASSOC.CADP01.P1IPINEG'
    end
    object Tb_Ped01P1TOTTRI: TFloatField
      FieldName = 'P1TOTTRI'
      Origin = 'SG_ASSOC.CADP01.P1TOTTRI'
    end
    object Tb_Ped01P1TOTRET: TFloatField
      FieldName = 'P1TOTRET'
      Origin = 'SG_ASSOC.CADP01.P1TOTRET'
    end
    object Tb_Ped01P1TOTISE: TFloatField
      FieldName = 'P1TOTISE'
      Origin = 'SG_ASSOC.CADP01.P1TOTISE'
    end
    object Tb_Ped01P1TOTPOS: TFloatField
      FieldName = 'P1TOTPOS'
      Origin = 'SG_ASSOC.CADP01.P1TOTPOS'
    end
    object Tb_Ped01P1TOTNEG: TFloatField
      FieldName = 'P1TOTNEG'
      Origin = 'SG_ASSOC.CADP01.P1TOTNEG'
    end
    object Tb_Ped01P1TOTINA: TFloatField
      FieldName = 'P1TOTINA'
      Origin = 'SG_ASSOC.CADP01.P1TOTINA'
    end
    object Tb_Ped01P1PISCOFN: TFloatField
      FieldName = 'P1PISCOFN'
      Origin = 'SG_ASSOC.CADP01.P1PISCOFN'
    end
    object Tb_Ped01P1PISCOFR: TFloatField
      FieldName = 'P1PISCOFR'
      Origin = 'SG_ASSOC.CADP01.P1PISCOFR'
    end
    object Tb_Ped01P1TOTDES: TFloatField
      FieldName = 'P1TOTDES'
      Origin = 'SG_ASSOC.CADP01.P1TOTDES'
    end
    object Tb_Ped01P1TOTUCPR: TFloatField
      FieldName = 'P1TOTUCPR'
      Origin = 'SG_ASSOC.CADP01.P1TOTUCPR'
    end
    object Tb_Ped01P1DESC01: TFloatField
      FieldName = 'P1DESC01'
      Origin = 'SG_ASSOC.CADP01.P1DESC01'
    end
    object Tb_Ped01P1DESC02: TFloatField
      FieldName = 'P1DESC02'
      Origin = 'SG_ASSOC.CADP01.P1DESC02'
    end
    object Tb_Ped01P1VLRDES: TFloatField
      FieldName = 'P1VLRDES'
      Origin = 'SG_ASSOC.CADP01.P1VLRDES'
    end
    object Tb_Ped01P1PAVDES: TFloatField
      FieldName = 'P1PAVDES'
      Origin = 'SG_ASSOC.CADP01.P1PAVDES'
    end
    object Tb_Ped01P1CODTRA: TFloatField
      FieldName = 'P1CODTRA'
      Origin = 'SG_ASSOC.CADP01.P1CODTRA'
    end
    object Tb_Ped01P1QTDVOL: TFloatField
      FieldName = 'P1QTDVOL'
      Origin = 'SG_ASSOC.CADP01.P1QTDVOL'
    end
    object Tb_Ped01P1PESOL: TFloatField
      FieldName = 'P1PESOL'
      Origin = 'SG_ASSOC.CADP01.P1PESOL'
    end
    object Tb_Ped01P1PESOB: TFloatField
      FieldName = 'P1PESOB'
      Origin = 'SG_ASSOC.CADP01.P1PESOB'
    end
    object Tb_Ped01P1FRETEPC: TFloatField
      FieldName = 'P1FRETEPC'
      Origin = 'SG_ASSOC.CADP01.P1FRETEPC'
    end
    object Tb_Ped01P1VALFRE: TFloatField
      FieldName = 'P1VALFRE'
      Origin = 'SG_ASSOC.CADP01.P1VALFRE'
    end
    object Tb_Ped01P1UFPV: TStringField
      FieldName = 'P1UFPV'
      Origin = 'SG_ASSOC.CADP01.P1UFPV'
      Size = 2
    end
    object Tb_Ped01P1PLACAV: TStringField
      FieldName = 'P1PLACAV'
      Origin = 'SG_ASSOC.CADP01.P1PLACAV'
      Size = 8
    end
    object Tb_Ped01P1BANCO: TFloatField
      FieldName = 'P1BANCO'
      Origin = 'SG_ASSOC.CADP01.P1BANCO'
    end
    object Tb_Ped01P1CODSER: TFloatField
      FieldName = 'P1CODSER'
      Origin = 'SG_ASSOC.CADP01.P1CODSER'
    end
    object Tb_Ped01P1CODLDR: TFloatField
      FieldName = 'P1CODLDR'
      Origin = 'SG_ASSOC.CADP01.P1CODLDR'
    end
    object Tb_Ped01P1PCOMIS: TFloatField
      FieldName = 'P1PCOMIS'
      Origin = 'SG_ASSOC.CADP01.P1PCOMIS'
    end
    object Tb_Ped01P1COMIS: TFloatField
      FieldName = 'P1COMIS'
      Origin = 'SG_ASSOC.CADP01.P1COMIS'
    end
    object Tb_Ped01P1COMIST: TFloatField
      FieldName = 'P1COMIST'
      Origin = 'SG_ASSOC.CADP01.P1COMIST'
    end
    object Tb_Ped01P1COMISS: TFloatField
      FieldName = 'P1COMISS'
      Origin = 'SG_ASSOC.CADP01.P1COMISS'
    end
    object Tb_Ped01P1ORIGEM: TFloatField
      FieldName = 'P1ORIGEM'
      Origin = 'SG_ASSOC.CADP01.P1ORIGEM'
    end
    object Tb_Ped01P1CODTLV: TFloatField
      FieldName = 'P1CODTLV'
      Origin = 'SG_ASSOC.CADP01.P1CODTLV'
    end
    object Tb_Ped01P1BCISSQN: TFloatField
      FieldName = 'P1BCISSQN'
      Origin = 'SG_ASSOC.CADP01.P1BCISSQN'
    end
    object Tb_Ped01P1VISSQN: TFloatField
      FieldName = 'P1VISSQN'
      Origin = 'SG_ASSOC.CADP01.P1VISSQN'
    end
    object Tb_Ped01P1ETIVOL: TFloatField
      FieldName = 'P1ETIVOL'
      Origin = 'SG_ASSOC.CADP01.P1ETIVOL'
    end
    object Tb_Ped01P1CODSEP: TFloatField
      FieldName = 'P1CODSEP'
      Origin = 'SG_ASSOC.CADP01.P1CODSEP'
    end
    object Tb_Ped01P1DATASEP: TDateTimeField
      FieldName = 'P1DATASEP'
      Origin = 'SG_ASSOC.CADP01.P1DATASEP'
    end
    object Tb_Ped01P1HORSEP: TStringField
      FieldName = 'P1HORSEP'
      Origin = 'SG_ASSOC.CADP01.P1HORSEP'
      Size = 10
    end
    object Tb_Ped01P1CODEMB: TFloatField
      FieldName = 'P1CODEMB'
      Origin = 'SG_ASSOC.CADP01.P1CODEMB'
    end
    object Tb_Ped01P1DATAEMB: TDateTimeField
      FieldName = 'P1DATAEMB'
      Origin = 'SG_ASSOC.CADP01.P1DATAEMB'
    end
    object Tb_Ped01P1HOREMB: TStringField
      FieldName = 'P1HOREMB'
      Origin = 'SG_ASSOC.CADP01.P1HOREMB'
      Size = 10
    end
    object Tb_Ped01P1NUMCF: TFloatField
      FieldName = 'P1NUMCF'
      Origin = 'SG_ASSOC.CADP01.P1NUMCF'
    end
    object Tb_Ped01P1DATACF: TDateTimeField
      FieldName = 'P1DATACF'
      Origin = 'SG_ASSOC.CADP01.P1DATACF'
    end
    object Tb_Ped01P1TPPCO: TFloatField
      FieldName = 'P1TPPCO'
      Origin = 'SG_ASSOC.CADP01.P1TPPCO'
    end
    object Tb_Ped01P1SEMCOM: TFloatField
      FieldName = 'P1SEMCOM'
      Origin = 'SG_ASSOC.CADP01.P1SEMCOM'
    end
    object Tb_Ped01P1DESCFIN: TFloatField
      FieldName = 'P1DESCFIN'
      Origin = 'SG_ASSOC.CADP01.P1DESCFIN'
    end
    object Tb_Ped01P1LOTCV: TFloatField
      FieldName = 'P1LOTCV'
      Origin = 'SG_ASSOC.CADP01.P1LOTCV'
    end
    object Tb_Ped01P1LOTCS: TFloatField
      FieldName = 'P1LOTCS'
      Origin = 'SG_ASSOC.CADP01.P1LOTCS'
    end
    object Tb_Ped01P1LOTCT: TFloatField
      FieldName = 'P1LOTCT'
      Origin = 'SG_ASSOC.CADP01.P1LOTCT'
    end
    object Tb_Ped01P1PVTC: TFloatField
      FieldName = 'P1PVTC'
      Origin = 'SG_ASSOC.CADP01.P1PVTC'
    end
    object Tb_Ped01P1PVCOM: TFloatField
      FieldName = 'P1PVCOM'
      Origin = 'SG_ASSOC.CADP01.P1PVCOM'
    end
    object Tb_Ped01P1PVACTD: TFloatField
      FieldName = 'P1PVACTD'
      Origin = 'SG_ASSOC.CADP01.P1PVACTD'
    end
    object Tb_Ped01P1PVACT00: TFloatField
      FieldName = 'P1PVACT00'
      Origin = 'SG_ASSOC.CADP01.P1PVACT00'
    end
    object Tb_Ped01P1PVACT01: TFloatField
      FieldName = 'P1PVACT01'
      Origin = 'SG_ASSOC.CADP01.P1PVACT01'
    end
    object Tb_Ped01P1PVACT99: TFloatField
      FieldName = 'P1PVACT99'
      Origin = 'SG_ASSOC.CADP01.P1PVACT99'
    end
    object Tb_Ped01P1PVTDC: TFloatField
      FieldName = 'P1PVTDC'
      Origin = 'SG_ASSOC.CADP01.P1PVTDC'
    end
    object Tb_Ped01P1PVDES: TFloatField
      FieldName = 'P1PVDES'
      Origin = 'SG_ASSOC.CADP01.P1PVDES'
    end
    object Tb_Ped01P1PVTPD1: TFloatField
      FieldName = 'P1PVTPD1'
      Origin = 'SG_ASSOC.CADP01.P1PVTPD1'
    end
    object Tb_Ped01P1PVDES1: TFloatField
      FieldName = 'P1PVDES1'
      Origin = 'SG_ASSOC.CADP01.P1PVDES1'
    end
    object Tb_Ped01P1PVTPD2: TFloatField
      FieldName = 'P1PVTPD2'
      Origin = 'SG_ASSOC.CADP01.P1PVTPD2'
    end
    object Tb_Ped01P1PVDES2: TFloatField
      FieldName = 'P1PVDES2'
      Origin = 'SG_ASSOC.CADP01.P1PVDES2'
    end
    object Tb_Ped01P1PVTPDESF: TFloatField
      FieldName = 'P1PVTPDESF'
      Origin = 'SG_ASSOC.CADP01.P1PVTPDESF'
    end
    object Tb_Ped01P1PVDESCF: TFloatField
      FieldName = 'P1PVDESCF'
      Origin = 'SG_ASSOC.CADP01.P1PVDESCF'
    end
    object Tb_Ped01P1PVDIASDESCF: TFloatField
      FieldName = 'P1PVDIASDESCF'
      Origin = 'SG_ASSOC.CADP01.P1PVDIASDESCF'
    end
    object Tb_Ped01P1PVDDESCF: TFloatField
      FieldName = 'P1PVDDESCF'
      Origin = 'SG_ASSOC.CADP01.P1PVDDESCF'
    end
    object Tb_Ped01P1TPP: TFloatField
      FieldName = 'P1TPP'
      Origin = 'SG_ASSOC.CADP01.P1TPP'
    end
    object Tb_Ped01P1SITAC: TFloatField
      FieldName = 'P1SITAC'
      Origin = 'SG_ASSOC.CADP01.P1SITAC'
    end
    object Tb_Ped01P1CODECF: TFloatField
      FieldName = 'P1CODECF'
      Origin = 'SG_ASSOC.CADP01.P1CODECF'
    end
    object Tb_Ped01P1VLRACRE: TFloatField
      FieldName = 'P1VLRACRE'
      Origin = 'SG_ASSOC.CADP01.P1VLRACRE'
    end
    object Tb_Ped01P1PEDORI1: TStringField
      FieldName = 'P1PEDORI1'
      Origin = 'SG_ASSOC.CADP01.P1PEDORI1'
      Size = 60
    end
    object Tb_Ped01P1PEDORI2: TStringField
      FieldName = 'P1PEDORI2'
      Origin = 'SG_ASSOC.CADP01.P1PEDORI2'
      Size = 60
    end
    object Tb_Ped01P1MOTIVO: TStringField
      FieldName = 'P1MOTIVO'
      Origin = 'SG_ASSOC.CADP01.P1MOTIVO'
      Size = 60
    end
    object Tb_Ped01P1NUMVIS: TStringField
      FieldName = 'P1NUMVIS'
      Origin = 'SG_ASSOC.CADP01.P1NUMVIS'
    end
    object Tb_Ped01P1DATVIS: TDateTimeField
      FieldName = 'P1DATVIS'
      Origin = 'SG_ASSOC.CADP01.P1DATVIS'
    end
    object Tb_Ped01P1LOTSEQ: TFloatField
      FieldName = 'P1LOTSEQ'
      Origin = 'SG_ASSOC.CADP01.P1LOTSEQ'
    end
    object Tb_Ped01P1FORMACE: TFloatField
      FieldName = 'P1FORMACE'
      Origin = 'SG_ASSOC.CADP01.P1FORMACE'
    end
    object Tb_Ped01P1SITPED: TFloatField
      FieldName = 'P1SITPED'
      Origin = 'SG_ASSOC.CADP01.P1SITPED'
    end
    object Tb_Ped01P1TOTOUT: TFloatField
      FieldName = 'P1TOTOUT'
      Origin = 'SG_ASSOC.CADP01.P1TOTOUT'
    end
    object Tb_Ped01P1TOTDI01: TFloatField
      FieldName = 'P1TOTDI01'
      Origin = 'SG_ASSOC.CADP01.P1TOTDI01'
    end
    object Tb_Ped01P1TOTDI02: TFloatField
      FieldName = 'P1TOTDI02'
      Origin = 'SG_ASSOC.CADP01.P1TOTDI02'
    end
    object Tb_Ped01P1TOTDIVL: TFloatField
      FieldName = 'P1TOTDIVL'
      Origin = 'SG_ASSOC.CADP01.P1TOTDIVL'
    end
    object Tb_Ped01P1CODCV: TFloatField
      FieldName = 'P1CODCV'
      Origin = 'SG_ASSOC.CADP01.P1CODCV'
    end
    object Tb_Ped01P1LOTEDM: TFloatField
      FieldName = 'P1LOTEDM'
      Origin = 'SG_ASSOC.CADP01.P1LOTEDM'
    end
    object Tb_Ped01P1MINUTA: TFloatField
      FieldName = 'P1MINUTA'
      Origin = 'SG_ASSOC.CADP01.P1MINUTA'
    end
    object Tb_Ped01P1COMV02: TFloatField
      FieldName = 'P1COMV02'
      Origin = 'SG_ASSOC.CADP01.P1COMV02'
    end
    object Tb_Ped01P1COMV03: TFloatField
      FieldName = 'P1COMV03'
      Origin = 'SG_ASSOC.CADP01.P1COMV03'
    end
    object Tb_Ped01P1NPEDORI: TFloatField
      FieldName = 'P1NPEDORI'
      Origin = 'SG_ASSOC.CADP01.P1NPEDORI'
    end
    object Tb_Ped01P1LOTCV02: TFloatField
      FieldName = 'P1LOTCV02'
      Origin = 'SG_ASSOC.CADP01.P1LOTCV02'
    end
    object Tb_Ped01P1LOTCV03: TFloatField
      FieldName = 'P1LOTCV03'
      Origin = 'SG_ASSOC.CADP01.P1LOTCV03'
    end
    object Tb_Ped01P1PVCOM02: TFloatField
      FieldName = 'P1PVCOM02'
      Origin = 'SG_ASSOC.CADP01.P1PVCOM02'
    end
    object Tb_Ped01P1PVCOM03: TFloatField
      FieldName = 'P1PVCOM03'
      Origin = 'SG_ASSOC.CADP01.P1PVCOM03'
    end
    object Tb_Ped01P1SITCPR: TFloatField
      FieldName = 'P1SITCPR'
      Origin = 'SG_ASSOC.CADP01.P1SITCPR'
    end
    object Tb_Ped01P1DATDOC: TDateTimeField
      FieldName = 'P1DATDOC'
      Origin = 'SG_ASSOC.CADP01.P1DATDOC'
    end
    object Tb_Ped01P1EMIDOC: TFloatField
      FieldName = 'P1EMIDOC'
      Origin = 'SG_ASSOC.CADP01.P1EMIDOC'
    end
    object Tb_Ped01P1ACRECONV: TFloatField
      FieldName = 'P1ACRECONV'
      Origin = 'SG_ASSOC.CADP01.P1ACRECONV'
    end
    object Tb_Ped01P1ACREGER: TFloatField
      FieldName = 'P1ACREGER'
      Origin = 'SG_ASSOC.CADP01.P1ACREGER'
    end
    object Tb_Ped01P1PACRECONV: TFloatField
      FieldName = 'P1PACRECONV'
      Origin = 'SG_ASSOC.CADP01.P1PACRECONV'
    end
    object Tb_Ped01P1PACREGER: TFloatField
      FieldName = 'P1PACREGER'
      Origin = 'SG_ASSOC.CADP01.P1PACREGER'
    end
    object Tb_Ped01P1CODDEP: TFloatField
      FieldName = 'P1CODDEP'
      Origin = 'SG_ASSOC.CADP01.P1CODDEP'
    end
    object Tb_Ped01P1NAUT: TStringField
      FieldName = 'P1NAUT'
      Origin = 'SG_ASSOC.CADP01.P1NAUT'
      Size = 40
    end
    object Tb_Ped01P1PEDORI: TFloatField
      FieldName = 'P1PEDORI'
      Origin = 'SG_ASSOC.CADP01.P1PEDORI'
    end
    object Tb_Ped01P1CFO1: TStringField
      FieldName = 'P1CFO1'
      Origin = 'SG_ASSOC.CADP01.P1CFO1'
      Size = 4
    end
    object Tb_Ped01P1CFO2: TStringField
      FieldName = 'P1CFO2'
      Origin = 'SG_ASSOC.CADP01.P1CFO2'
      Size = 4
    end
    object Tb_Ped01P1BLQPRM: TFloatField
      FieldName = 'P1BLQPRM'
      Origin = 'SG_ASSOC.CADP01.P1BLQPRM'
    end
    object Tb_Ped01P1TOTDI03: TFloatField
      FieldName = 'P1TOTDI03'
      Origin = 'SG_ASSOC.CADP01.P1TOTDI03'
    end
    object Tb_Ped01P1VALDES01: TFloatField
      FieldName = 'P1VALDES01'
      Origin = 'SG_ASSOC.CADP01.P1VALDES01'
    end
    object Tb_Ped01P1VALDES02: TFloatField
      FieldName = 'P1VALDES02'
      Origin = 'SG_ASSOC.CADP01.P1VALDES02'
    end
    object Tb_Ped01P1TARBAN: TFloatField
      FieldName = 'P1TARBAN'
      Origin = 'SG_ASSOC.CADP01.P1TARBAN'
    end
    object Tb_Ped01P1PVTPD3: TFloatField
      FieldName = 'P1PVTPD3'
      Origin = 'SG_ASSOC.CADP01.P1PVTPD3'
    end
    object Tb_Ped01P1PVDES3: TFloatField
      FieldName = 'P1PVDES3'
      Origin = 'SG_ASSOC.CADP01.P1PVDES3'
    end
    object Tb_Ped01P1VALSEG: TFloatField
      FieldName = 'P1VALSEG'
      Origin = 'SG_ASSOC.CADP01.P1VALSEG'
    end
    object Tb_Ped01P1CFOSER: TStringField
      FieldName = 'P1CFOSER'
      Origin = 'SG_ASSOC.CADP01.P1CFOSER'
      Size = 4
    end
    object Tb_Ped01P1PDESCLIB: TFloatField
      FieldName = 'P1PDESCLIB'
      Origin = 'SG_ASSOC.CADP01.P1PDESCLIB'
    end
    object Tb_Ped01P1PDESCL_USR: TFloatField
      FieldName = 'P1PDESCL_USR'
      Origin = 'SG_ASSOC.CADP01.P1PDESCL_USR'
    end
    object Tb_Ped01P1PROCESSO: TStringField
      FieldName = 'P1PROCESSO'
      Origin = 'SG_ASSOC.CADP01.P1PROCESSO'
      Size = 15
    end
    object Tb_Ped01P1CUPACRE: TFloatField
      FieldName = 'P1CUPACRE'
      Origin = 'SG_ASSOC.CADP01.P1CUPACRE'
    end
    object Tb_Ped01P1CUPDES: TFloatField
      FieldName = 'P1CUPDES'
      Origin = 'SG_ASSOC.CADP01.P1CUPDES'
    end
    object Tb_Ped01P1LEMAT: TFloatField
      FieldName = 'P1LEMAT'
      Origin = 'SG_ASSOC.CADP01.P1LEMAT'
    end
    object Tb_Ped01P1DTACERTO: TDateTimeField
      FieldName = 'P1DTACERTO'
      Origin = 'SG_ASSOC.CADP01.P1DTACERTO'
    end
    object Tb_Ped01P1LTACERTO: TFloatField
      FieldName = 'P1LTACERTO'
      Origin = 'SG_ASSOC.CADP01.P1LTACERTO'
    end
    object Tb_Ped01P1CODASSE: TFloatField
      FieldName = 'P1CODASSE'
      Origin = 'SG_ASSOC.CADP01.P1CODASSE'
    end
    object Tb_Ped01P1COMASSE: TFloatField
      FieldName = 'P1COMASSE'
      Origin = 'SG_ASSOC.CADP01.P1COMASSE'
    end
    object Tb_Ped01P1LOTCASSE: TFloatField
      FieldName = 'P1LOTCASSE'
      Origin = 'SG_ASSOC.CADP01.P1LOTCASSE'
    end
    object Tb_Ped01P1QTDMAN: TFloatField
      FieldName = 'P1QTDMAN'
      Origin = 'SG_ASSOC.CADP01.P1QTDMAN'
    end
    object Tb_Ped01P1CANHOTO: TFloatField
      FieldName = 'P1CANHOTO'
      Origin = 'SG_ASSOC.CADP01.P1CANHOTO'
    end
    object Tb_Ped01P1ICMS_BCFRE: TFloatField
      FieldName = 'P1ICMS_BCFRE'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_BCFRE'
    end
    object Tb_Ped01P1ICMS_ALFRE: TFloatField
      FieldName = 'P1ICMS_ALFRE'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_ALFRE'
    end
    object Tb_Ped01P1ICMS_VLFRE: TFloatField
      FieldName = 'P1ICMS_VLFRE'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_VLFRE'
    end
    object Tb_Ped01P1ICMS_BCSEG: TFloatField
      FieldName = 'P1ICMS_BCSEG'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_BCSEG'
    end
    object Tb_Ped01P1ICMS_ALSEG: TFloatField
      FieldName = 'P1ICMS_ALSEG'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_ALSEG'
    end
    object Tb_Ped01P1ICMS_VLSEG: TFloatField
      FieldName = 'P1ICMS_VLSEG'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_VLSEG'
    end
    object Tb_Ped01P1ICMS_BCOUTD: TFloatField
      FieldName = 'P1ICMS_BCOUTD'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_BCOUTD'
    end
    object Tb_Ped01P1ICMS_ALOUTD: TFloatField
      FieldName = 'P1ICMS_ALOUTD'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_ALOUTD'
    end
    object Tb_Ped01P1ICMS_VLOUTD: TFloatField
      FieldName = 'P1ICMS_VLOUTD'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_VLOUTD'
    end
    object Tb_Ped01P1ICMS_BCIPI: TFloatField
      FieldName = 'P1ICMS_BCIPI'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_BCIPI'
    end
    object Tb_Ped01P1ICMS_ALIPI: TFloatField
      FieldName = 'P1ICMS_ALIPI'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_ALIPI'
    end
    object Tb_Ped01P1ICMS_VLIPI: TFloatField
      FieldName = 'P1ICMS_VLIPI'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_VLIPI'
    end
    object Tb_Ped01P1ESPECIE: TStringField
      FieldName = 'P1ESPECIE'
      Origin = 'SG_ASSOC.CADP01.P1ESPECIE'
    end
    object Tb_Ped01P1CODV04: TFloatField
      FieldName = 'P1CODV04'
      Origin = 'SG_ASSOC.CADP01.P1CODV04'
    end
    object Tb_Ped01P1PROMOCAO: TStringField
      FieldName = 'P1PROMOCAO'
      Origin = 'SG_ASSOC.CADP01.P1PROMOCAO'
      Size = 10
    end
    object Tb_Ped01P1ALIQDEB: TFloatField
      FieldName = 'P1ALIQDEB'
      Origin = 'SG_ASSOC.CADP01.P1ALIQDEB'
    end
    object Tb_Ped01P1COMV04: TFloatField
      FieldName = 'P1COMV04'
      Origin = 'SG_ASSOC.CADP01.P1COMV04'
    end
    object Tb_Ped01P1LOTCV04: TFloatField
      FieldName = 'P1LOTCV04'
      Origin = 'SG_ASSOC.CADP01.P1LOTCV04'
    end
    object Tb_Ped01P1PVCOM04: TFloatField
      FieldName = 'P1PVCOM04'
      Origin = 'SG_ASSOC.CADP01.P1PVCOM04'
    end
    object Tb_Ped01P1TOTCGRU: TFloatField
      FieldName = 'P1TOTCGRU'
      Origin = 'SG_ASSOC.CADP01.P1TOTCGRU'
    end
    object Tb_Ped01P1TOTSGRU: TFloatField
      FieldName = 'P1TOTSGRU'
      Origin = 'SG_ASSOC.CADP01.P1TOTSGRU'
    end
    object Tb_Ped01P1CODPRIOR: TFloatField
      FieldName = 'P1CODPRIOR'
      Origin = 'SG_ASSOC.CADP01.P1CODPRIOR'
    end
    object Tb_Ped01P1DTHRCHEG: TDateTimeField
      FieldName = 'P1DTHRCHEG'
      Origin = 'SG_ASSOC.CADP01.P1DTHRCHEG'
    end
    object Tb_Ped01P1CODBLOQ: TStringField
      FieldName = 'P1CODBLOQ'
      Origin = 'SG_ASSOC.CADP01.P1CODBLOQ'
      Size = 30
    end
    object Tb_Ped01P1CODUSR_LBLOQ: TFloatField
      FieldName = 'P1CODUSR_LBLOQ'
      Origin = 'SG_ASSOC.CADP01.P1CODUSR_LBLOQ'
    end
    object Tb_Ped01P1TOTSERLIQ: TFloatField
      FieldName = 'P1TOTSERLIQ'
      Origin = 'SG_ASSOC.CADP01.P1TOTSERLIQ'
    end
    object Tb_Ped01P1VALENT: TFloatField
      FieldName = 'P1VALENT'
      Origin = 'SG_ASSOC.CADP01.P1VALENT'
    end
    object Tb_Ped01P1PRAZO_ENT: TFloatField
      FieldName = 'P1PRAZO_ENT'
      Origin = 'SG_ASSOC.CADP01.P1PRAZO_ENT'
    end
    object Tb_Ped01P1QTDM3: TFloatField
      FieldName = 'P1QTDM3'
      Origin = 'SG_ASSOC.CADP01.P1QTDM3'
    end
    object Tb_Ped01P1VFRE_CUSENT: TFloatField
      FieldName = 'P1VFRE_CUSENT'
      Origin = 'SG_ASSOC.CADP01.P1VFRE_CUSENT'
    end
    object Tb_Ped01P1COMIS_EXTRA: TFloatField
      FieldName = 'P1COMIS_EXTRA'
      Origin = 'SG_ASSOC.CADP01.P1COMIS_EXTRA'
    end
    object Tb_Ped01P1SEPAMB: TFloatField
      FieldName = 'P1SEPAMB'
      Origin = 'SG_ASSOC.CADP01.P1SEPAMB'
    end
    object Tb_Ped01P1PZOLIB: TFloatField
      FieldName = 'P1PZOLIB'
      Origin = 'SG_ASSOC.CADP01.P1PZOLIB'
    end
    object Tb_Ped01P1PZOLIB_USR: TFloatField
      FieldName = 'P1PZOLIB_USR'
      Origin = 'SG_ASSOC.CADP01.P1PZOLIB_USR'
    end
    object Tb_Ped01P1BLOQPEND: TFloatField
      FieldName = 'P1BLOQPEND'
      Origin = 'SG_ASSOC.CADP01.P1BLOQPEND'
    end
    object Tb_Ped01P1CODBLOQ_LIB: TStringField
      FieldName = 'P1CODBLOQ_LIB'
      Origin = 'SG_ASSOC.CADP01.P1CODBLOQ_LIB'
      Size = 30
    end
    object Tb_Ped01P1ECF_SERIE: TStringField
      FieldName = 'P1ECF_SERIE'
      Origin = 'SG_ASSOC.CADP01.P1ECF_SERIE'
    end
    object Tb_Ped01P1CX_CODCAI: TFloatField
      FieldName = 'P1CX_CODCAI'
      Origin = 'SG_ASSOC.CADP01.P1CX_CODCAI'
    end
    object Tb_Ped01P1CX_LOTMOV: TFloatField
      FieldName = 'P1CX_LOTMOV'
      Origin = 'SG_ASSOC.CADP01.P1CX_LOTMOV'
    end
    object Tb_Ped01P1DUP_PROD: TFloatField
      FieldName = 'P1DUP_PROD'
      Origin = 'SG_ASSOC.CADP01.P1DUP_PROD'
    end
    object Tb_Ped01P1DUP_SERV: TFloatField
      FieldName = 'P1DUP_SERV'
      Origin = 'SG_ASSOC.CADP01.P1DUP_SERV'
    end
    object Tb_Ped01P1INCTB: TFloatField
      FieldName = 'P1INCTB'
      Origin = 'SG_ASSOC.CADP01.P1INCTB'
    end
    object Tb_Ped01P1EMITENTE: TStringField
      FieldName = 'P1EMITENTE'
      Origin = 'SG_ASSOC.CADP01.P1EMITENTE'
      Size = 1
    end
    object Tb_Ped01P1PVACREDESREG: TFloatField
      FieldName = 'P1PVACREDESREG'
      Origin = 'SG_ASSOC.CADP01.P1PVACREDESREG'
    end
    object Tb_Ped01P1PVAJCOMIS: TFloatField
      FieldName = 'P1PVAJCOMIS'
      Origin = 'SG_ASSOC.CADP01.P1PVAJCOMIS'
    end
    object Tb_Ped01P1LOCAL: TFloatField
      FieldName = 'P1LOCAL'
      Origin = 'SG_ASSOC.CADP01.P1LOCAL'
    end
    object Tb_Ped01P1TIPO_ENTSAI: TFloatField
      FieldName = 'P1TIPO_ENTSAI'
      Origin = 'SG_ASSOC.CADP01.P1TIPO_ENTSAI'
    end
    object Tb_Ped01P1TOTPROM: TFloatField
      FieldName = 'P1TOTPROM'
      Origin = 'SG_ASSOC.CADP01.P1TOTPROM'
    end
    object Tb_Ped01P1NOMEREC: TStringField
      FieldName = 'P1NOMEREC'
      Origin = 'SG_ASSOC.CADP01.P1NOMEREC'
      Size = 40
    end
    object Tb_Ped01P1DATHORREC: TDateTimeField
      FieldName = 'P1DATHORREC'
      Origin = 'SG_ASSOC.CADP01.P1DATHORREC'
    end
    object Tb_Ped01P1TOTPIS: TFloatField
      FieldName = 'P1TOTPIS'
      Origin = 'SG_ASSOC.CADP01.P1TOTPIS'
    end
    object Tb_Ped01P1TOTCOFINS: TFloatField
      FieldName = 'P1TOTCOFINS'
      Origin = 'SG_ASSOC.CADP01.P1TOTCOFINS'
    end
    object Tb_Ped01P1RED_BCISSQN: TFloatField
      FieldName = 'P1RED_BCISSQN'
      Origin = 'SG_ASSOC.CADP01.P1RED_BCISSQN'
    end
    object Tb_Ped01P1BCINSS: TFloatField
      FieldName = 'P1BCINSS'
      Origin = 'SG_ASSOC.CADP01.P1BCINSS'
    end
    object Tb_Ped01P1RED_BCINSS: TFloatField
      FieldName = 'P1RED_BCINSS'
      Origin = 'SG_ASSOC.CADP01.P1RED_BCINSS'
    end
    object Tb_Ped01P1VINSS: TFloatField
      FieldName = 'P1VINSS'
      Origin = 'SG_ASSOC.CADP01.P1VINSS'
    end
    object Tb_Ped01P1BCIRRF: TFloatField
      FieldName = 'P1BCIRRF'
      Origin = 'SG_ASSOC.CADP01.P1BCIRRF'
    end
    object Tb_Ped01P1RED_BCIRRF: TFloatField
      FieldName = 'P1RED_BCIRRF'
      Origin = 'SG_ASSOC.CADP01.P1RED_BCIRRF'
    end
    object Tb_Ped01P1VIRRF: TFloatField
      FieldName = 'P1VIRRF'
      Origin = 'SG_ASSOC.CADP01.P1VIRRF'
    end
    object Tb_Ped01P1NFE_ENVXML: TFloatField
      FieldName = 'P1NFE_ENVXML'
      Origin = 'SG_ASSOC.CADP01.P1NFE_ENVXML'
    end
    object Tb_Ped01P1QTDDECPU: TFloatField
      FieldName = 'P1QTDDECPU'
      Origin = 'SG_ASSOC.CADP01.P1QTDDECPU'
    end
    object Tb_Ped01P1DATHOR_REP: TDateTimeField
      FieldName = 'P1DATHOR_REP'
      Origin = 'SG_ASSOC.CADP01.P1DATHOR_REP'
    end
    object Tb_Ped01P1CHAVE_NIVEL: TFloatField
      FieldName = 'P1CHAVE_NIVEL'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE_NIVEL'
    end
    object Tb_Ped01P1DATHOR_UEVE: TDateTimeField
      FieldName = 'P1DATHOR_UEVE'
      Origin = 'SG_ASSOC.CADP01.P1DATHOR_UEVE'
    end
    object Tb_Ped01P1TPEMIS: TFloatField
      FieldName = 'P1TPEMIS'
      Origin = 'SG_ASSOC.CADP01.P1TPEMIS'
    end
    object Tb_Ped01P1DATHOR_ULTEVE: TDateTimeField
      FieldName = 'P1DATHOR_ULTEVE'
      Origin = 'SG_ASSOC.CADP01.P1DATHOR_ULTEVE'
    end
    object Tb_Ped01P1CODUSR_ULTEVE: TFloatField
      FieldName = 'P1CODUSR_ULTEVE'
      Origin = 'SG_ASSOC.CADP01.P1CODUSR_ULTEVE'
    end
    object Tb_Ped01P1COMP_ULTEVE: TStringField
      FieldName = 'P1COMP_ULTEVE'
      Origin = 'SG_ASSOC.CADP01.P1COMP_ULTEVE'
      Size = 30
    end
    object Tb_Ped01P1SEMCOMP: TStringField
      FieldName = 'P1SEMCOMP'
      Origin = 'SG_ASSOC.CADP01.P1SEMCOMP'
    end
    object Tb_Ped01P1ID_NEW: TFloatField
      FieldName = 'P1ID_NEW'
      Origin = 'SG_ASSOC.CADP01.P1ID_NEW'
    end
  end
  object U_Ped01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADP01'
      'set'
      '  P1CODEMP = :P1CODEMP,'
      '  P1CHAVE = :P1CHAVE,'
      '  P1ORDEM = :P1ORDEM,'
      '  P1CODCLI = :P1CODCLI,'
      '  P1CODVEN = :P1CODVEN,'
      '  P1CODV02 = :P1CODV02,'
      '  P1CODV03 = :P1CODV03,'
      '  P1DATAP = :P1DATAP,'
      '  P1DATANF = :P1DATANF,'
      '  P1NUMNF = :P1NUMNF,'
      '  P1SERIE = :P1SERIE,'
      '  P1SUBSER = :P1SUBSER,'
      '  P1MODELO = :P1MODELO,'
      '  P1SUBMOD = :P1SUBMOD,'
      '  P1OBS1 = :P1OBS1,'
      '  P1OBS2 = :P1OBS2,'
      '  P1OBS3 = :P1OBS3,'
      '  P1STATUS = :P1STATUS,'
      '  P1TIPO = :P1TIPO,'
      '  P1TOTALB = :P1TOTALB,'
      '  P1TOTALL = :P1TOTALL,'
      '  P1CODUSR = :P1CODUSR,'
      '  P1HORADIG = :P1HORADIG,'
      '  P1DTMOD = :P1DTMOD,'
      '  P1HRMOD = :P1HRMOD,'
      '  P1USRMOD = :P1USRMOD,'
      '  P1CONF = :P1CONF,'
      '  P1CODCON = :P1CODCON,'
      '  P1DATCON = :P1DATCON,'
      '  P1HORCON = :P1HORCON,'
      '  P1TIPENT = :P1TIPENT,'
      '  P1PREVENT = :P1PREVENT,'
      '  P1HPREVENT = :P1HPREVENT,'
      '  P1CODENT = :P1CODENT,'
      '  P1PRAZO = :P1PRAZO,'
      '  P1DATENT = :P1DATENT,'
      '  P1HORENT = :P1HORENT,'
      '  P1TABPV = :P1TABPV,'
      '  P1CODPV = :P1CODPV,'
      '  P1CUPOM = :P1CUPOM,'
      '  P1BASEN = :P1BASEN,'
      '  P1ICMSN = :P1ICMSN,'
      '  P1REPAS = :P1REPAS,'
      '  P1BASER = :P1BASER,'
      '  P1ICMSR = :P1ICMSR,'
      '  P1BASENP = :P1BASENP,'
      '  P1BASENN = :P1BASENN,'
      '  P1BASENI = :P1BASENI,'
      '  P1ICMSNP = :P1ICMSNP,'
      '  P1ICMSNN = :P1ICMSNN,'
      '  P1ICMSNI = :P1ICMSNI,'
      '  P1BASERP = :P1BASERP,'
      '  P1BASERN = :P1BASERN,'
      '  P1BASERI = :P1BASERI,'
      '  P1ICMSRP = :P1ICMSRP,'
      '  P1ICMSRN = :P1ICMSRN,'
      '  P1ICMSRI = :P1ICMSRI,'
      '  P1BASENRI = :P1BASENRI,'
      '  P1ICMSNRI = :P1ICMSNRI,'
      '  P1BASENRP = :P1BASENRP,'
      '  P1ICMSNRP = :P1ICMSNRP,'
      '  P1BASENRN = :P1BASENRN,'
      '  P1ICMSNRN = :P1ICMSNRN,'
      '  P1IPIINA = :P1IPIINA,'
      '  P1IPIPOS = :P1IPIPOS,'
      '  P1IPINEG = :P1IPINEG,'
      '  P1TOTTRI = :P1TOTTRI,'
      '  P1TOTRET = :P1TOTRET,'
      '  P1TOTISE = :P1TOTISE,'
      '  P1TOTPOS = :P1TOTPOS,'
      '  P1TOTNEG = :P1TOTNEG,'
      '  P1TOTINA = :P1TOTINA,'
      '  P1PISCOFN = :P1PISCOFN,'
      '  P1PISCOFR = :P1PISCOFR,'
      '  P1TOTDES = :P1TOTDES,'
      '  P1TOTUCPR = :P1TOTUCPR,'
      '  P1DESC01 = :P1DESC01,'
      '  P1DESC02 = :P1DESC02,'
      '  P1VLRDES = :P1VLRDES,'
      '  P1PAVDES = :P1PAVDES,'
      '  P1CODTRA = :P1CODTRA,'
      '  P1QTDVOL = :P1QTDVOL,'
      '  P1PESOL = :P1PESOL,'
      '  P1PESOB = :P1PESOB,'
      '  P1FRETEPC = :P1FRETEPC,'
      '  P1VALFRE = :P1VALFRE,'
      '  P1UFPV = :P1UFPV,'
      '  P1PLACAV = :P1PLACAV,'
      '  P1BANCO = :P1BANCO,'
      '  P1CODSER = :P1CODSER,'
      '  P1CODLDR = :P1CODLDR,'
      '  P1PCOMIS = :P1PCOMIS,'
      '  P1COMIS = :P1COMIS,'
      '  P1COMIST = :P1COMIST,'
      '  P1COMISS = :P1COMISS,'
      '  P1ORIGEM = :P1ORIGEM,'
      '  P1CODTLV = :P1CODTLV,'
      '  P1BCISSQN = :P1BCISSQN,'
      '  P1VISSQN = :P1VISSQN,'
      '  P1ETIVOL = :P1ETIVOL,'
      '  P1CODSEP = :P1CODSEP,'
      '  P1DATASEP = :P1DATASEP,'
      '  P1HORSEP = :P1HORSEP,'
      '  P1CODEMB = :P1CODEMB,'
      '  P1DATAEMB = :P1DATAEMB,'
      '  P1HOREMB = :P1HOREMB,'
      '  P1NUMCF = :P1NUMCF,'
      '  P1DATACF = :P1DATACF,'
      '  P1TPPCO = :P1TPPCO,'
      '  P1SEMCOM = :P1SEMCOM,'
      '  P1DESCFIN = :P1DESCFIN,'
      '  P1LOTCV = :P1LOTCV,'
      '  P1LOTCS = :P1LOTCS,'
      '  P1LOTCT = :P1LOTCT,'
      '  P1PVTC = :P1PVTC,'
      '  P1PVCOM = :P1PVCOM,'
      '  P1PVACTD = :P1PVACTD,'
      '  P1PVACT00 = :P1PVACT00,'
      '  P1PVACT01 = :P1PVACT01,'
      '  P1PVACT99 = :P1PVACT99,'
      '  P1PVTDC = :P1PVTDC,'
      '  P1PVDES = :P1PVDES,'
      '  P1PVTPD1 = :P1PVTPD1,'
      '  P1PVDES1 = :P1PVDES1,'
      '  P1PVTPD2 = :P1PVTPD2,'
      '  P1PVDES2 = :P1PVDES2,'
      '  P1PVTPDESF = :P1PVTPDESF,'
      '  P1PVDESCF = :P1PVDESCF,'
      '  P1PVDIASDESCF = :P1PVDIASDESCF,'
      '  P1PVDDESCF = :P1PVDDESCF,'
      '  P1TPP = :P1TPP,'
      '  P1SITAC = :P1SITAC,'
      '  P1CODECF = :P1CODECF,'
      '  P1VLRACRE = :P1VLRACRE,'
      '  P1PEDORI1 = :P1PEDORI1,'
      '  P1PEDORI2 = :P1PEDORI2,'
      '  P1MOTIVO = :P1MOTIVO,'
      '  P1NUMVIS = :P1NUMVIS,'
      '  P1DATVIS = :P1DATVIS,'
      '  P1LOTSEQ = :P1LOTSEQ,'
      '  P1FORMACE = :P1FORMACE,'
      '  P1SITPED = :P1SITPED,'
      '  P1TOTOUT = :P1TOTOUT,'
      '  P1TOTDI01 = :P1TOTDI01,'
      '  P1TOTDI02 = :P1TOTDI02,'
      '  P1TOTDIVL = :P1TOTDIVL,'
      '  P1CODCV = :P1CODCV,'
      '  P1LOTEDM = :P1LOTEDM,'
      '  P1MINUTA = :P1MINUTA,'
      '  P1COMV02 = :P1COMV02,'
      '  P1COMV03 = :P1COMV03,'
      '  P1NPEDORI = :P1NPEDORI,'
      '  P1LOTCV02 = :P1LOTCV02,'
      '  P1LOTCV03 = :P1LOTCV03,'
      '  P1PVCOM02 = :P1PVCOM02,'
      '  P1PVCOM03 = :P1PVCOM03,'
      '  P1SITCPR = :P1SITCPR,'
      '  P1DATDOC = :P1DATDOC,'
      '  P1EMIDOC = :P1EMIDOC,'
      '  P1ACRECONV = :P1ACRECONV,'
      '  P1ACREGER = :P1ACREGER,'
      '  P1PACRECONV = :P1PACRECONV,'
      '  P1PACREGER = :P1PACREGER,'
      '  P1CODDEP = :P1CODDEP,'
      '  P1SEMCOMP = :P1SEMCOMP,'
      '  P1NAUT = :P1NAUT,'
      '  P1PEDORI = :P1PEDORI,'
      '  P1CFO1 = :P1CFO1,'
      '  P1CFO2 = :P1CFO2,'
      '  P1BLQPRM = :P1BLQPRM,'
      '  P1TOTDI03 = :P1TOTDI03,'
      '  P1VALDES01 = :P1VALDES01,'
      '  P1VALDES02 = :P1VALDES02,'
      '  P1TARBAN = :P1TARBAN,'
      '  P1PVTPD3 = :P1PVTPD3,'
      '  P1PVDES3 = :P1PVDES3,'
      '  P1VALSEG = :P1VALSEG,'
      '  P1CFOSER = :P1CFOSER,'
      '  P1PDESCLIB = :P1PDESCLIB,'
      '  P1PDESCL_USR = :P1PDESCL_USR,'
      '  P1PROCESSO = :P1PROCESSO,'
      '  P1CUPACRE = :P1CUPACRE,'
      '  P1CUPDES = :P1CUPDES,'
      '  P1LEMAT = :P1LEMAT,'
      '  P1DTACERTO = :P1DTACERTO,'
      '  P1LTACERTO = :P1LTACERTO,'
      '  P1CODASSE = :P1CODASSE,'
      '  P1COMASSE = :P1COMASSE,'
      '  P1LOTCASSE = :P1LOTCASSE,'
      '  P1QTDMAN = :P1QTDMAN,'
      '  P1CANHOTO = :P1CANHOTO,'
      '  P1ICMS_BCFRE = :P1ICMS_BCFRE,'
      '  P1ICMS_ALFRE = :P1ICMS_ALFRE,'
      '  P1ICMS_VLFRE = :P1ICMS_VLFRE,'
      '  P1ICMS_BCSEG = :P1ICMS_BCSEG,'
      '  P1ICMS_ALSEG = :P1ICMS_ALSEG,'
      '  P1ICMS_VLSEG = :P1ICMS_VLSEG,'
      '  P1ICMS_BCOUTD = :P1ICMS_BCOUTD,'
      '  P1ICMS_ALOUTD = :P1ICMS_ALOUTD,'
      '  P1ICMS_VLOUTD = :P1ICMS_VLOUTD,'
      '  P1ICMS_BCIPI = :P1ICMS_BCIPI,'
      '  P1ICMS_ALIPI = :P1ICMS_ALIPI,'
      '  P1ICMS_VLIPI = :P1ICMS_VLIPI,'
      '  P1ESPECIE = :P1ESPECIE,'
      '  P1CODV04 = :P1CODV04,'
      '  P1PROMOCAO = :P1PROMOCAO,'
      '  P1ALIQDEB = :P1ALIQDEB,'
      '  P1COMV04 = :P1COMV04,'
      '  P1LOTCV04 = :P1LOTCV04,'
      '  P1PVCOM04 = :P1PVCOM04,'
      '  P1TOTCGRU = :P1TOTCGRU,'
      '  P1TOTSGRU = :P1TOTSGRU,'
      '  P1CODPRIOR = :P1CODPRIOR,'
      '  P1DTHRCHEG = :P1DTHRCHEG,'
      '  P1CODBLOQ = :P1CODBLOQ,'
      '  P1CODUSR_LBLOQ = :P1CODUSR_LBLOQ,'
      '  P1TOTSERLIQ = :P1TOTSERLIQ,'
      '  P1VALENT = :P1VALENT,'
      '  P1PRAZO_ENT = :P1PRAZO_ENT,'
      '  P1QTDM3 = :P1QTDM3,'
      '  P1VFRE_CUSENT = :P1VFRE_CUSENT,'
      '  P1COMIS_EXTRA = :P1COMIS_EXTRA,'
      '  P1SEPAMB = :P1SEPAMB,'
      '  P1PZOLIB = :P1PZOLIB,'
      '  P1PZOLIB_USR = :P1PZOLIB_USR,'
      '  P1BLOQPEND = :P1BLOQPEND,'
      '  P1CODBLOQ_LIB = :P1CODBLOQ_LIB,'
      '  P1ECF_SERIE = :P1ECF_SERIE,'
      '  P1CX_CODCAI = :P1CX_CODCAI,'
      '  P1CX_LOTMOV = :P1CX_LOTMOV,'
      '  P1DUP_PROD = :P1DUP_PROD,'
      '  P1DUP_SERV = :P1DUP_SERV,'
      '  P1INCTB = :P1INCTB,'
      '  P1EMITENTE = :P1EMITENTE,'
      '  P1PVACREDESREG = :P1PVACREDESREG,'
      '  P1PVAJCOMIS = :P1PVAJCOMIS,'
      '  P1LOCAL = :P1LOCAL,'
      '  P1TIPO_ENTSAI = :P1TIPO_ENTSAI,'
      '  P1TOTPROM = :P1TOTPROM,'
      '  P1NOMEREC = :P1NOMEREC,'
      '  P1DATHORREC = :P1DATHORREC,'
      '  P1TOTPIS = :P1TOTPIS,'
      '  P1TOTCOFINS = :P1TOTCOFINS,'
      '  P1RED_BCISSQN = :P1RED_BCISSQN,'
      '  P1BCINSS = :P1BCINSS,'
      '  P1RED_BCINSS = :P1RED_BCINSS,'
      '  P1VINSS = :P1VINSS,'
      '  P1BCIRRF = :P1BCIRRF,'
      '  P1RED_BCIRRF = :P1RED_BCIRRF,'
      '  P1VIRRF = :P1VIRRF,'
      '  P1NFE_ENVXML = :P1NFE_ENVXML,'
      '  P1QTDDECPU = :P1QTDDECPU,'
      '  P1DATHOR_REP = :P1DATHOR_REP,'
      '  P1CHAVE_NIVEL = :P1CHAVE_NIVEL,'
      '  P1DATHOR_UEVE = :P1DATHOR_UEVE,'
      '  P1TPEMIS = :P1TPEMIS,'
      '  P1DATHOR_ULTEVE = :P1DATHOR_ULTEVE,'
      '  P1CODUSR_ULTEVE = :P1CODUSR_ULTEVE,'
      '  P1COMP_ULTEVE = :P1COMP_ULTEVE'
      'where'
      '  P1CODEMP = :OLD_P1CODEMP and'
      '  P1CHAVE = :OLD_P1CHAVE and'
      '  P1ORDEM = :OLD_P1ORDEM and'
      '  P1LOTSEQ = :OLD_P1LOTSEQ')
    InsertSQL.Strings = (
      'insert into CADP01'
      '  (P1CODEMP, P1CHAVE, P1ORDEM, P1CODCLI, P1CODVEN, P1CODV02, '
      'P1CODV03, '
      '   P1DATAP, P1DATANF, P1NUMNF, P1SERIE, P1SUBSER, P1MODELO, '
      'P1SUBMOD, P1OBS1, '
      
        '   P1OBS2, P1OBS3, P1STATUS, P1TIPO, P1TOTALB, P1TOTALL, P1CODUS' +
        'R, '
      'P1HORADIG, '
      '   P1DTMOD, P1HRMOD, P1USRMOD, P1CONF, P1CODCON, P1DATCON, '
      'P1HORCON, P1TIPENT, '
      
        '   P1PREVENT, P1HPREVENT, P1CODENT, P1PRAZO, P1DATENT, P1HORENT,' +
        ' '
      'P1TABPV, '
      
        '   P1CODPV, P1CUPOM, P1BASEN, P1ICMSN, P1REPAS, P1BASER, P1ICMSR' +
        ', '
      'P1BASENP, '
      '   P1BASENN, P1BASENI, P1ICMSNP, P1ICMSNN, P1ICMSNI, P1BASERP, '
      'P1BASERN, '
      
        '   P1BASERI, P1ICMSRP, P1ICMSRN, P1ICMSRI, P1BASENRI, P1ICMSNRI,' +
        ' '
      'P1BASENRP, '
      
        '   P1ICMSNRP, P1BASENRN, P1ICMSNRN, P1IPIINA, P1IPIPOS, P1IPINEG' +
        ', '
      'P1TOTTRI, '
      '   P1TOTRET, P1TOTISE, P1TOTPOS, P1TOTNEG, P1TOTINA, P1PISCOFN, '
      'P1PISCOFR, '
      '   P1TOTDES, P1TOTUCPR, P1DESC01, P1DESC02, P1VLRDES, P1PAVDES, '
      'P1CODTRA, '
      '   P1QTDVOL, P1PESOL, P1PESOB, P1FRETEPC, P1VALFRE, P1UFPV, '
      'P1PLACAV, P1BANCO, '
      '   P1CODSER, P1CODLDR, P1PCOMIS, P1COMIS, P1COMIST, P1COMISS, '
      'P1ORIGEM, '
      
        '   P1CODTLV, P1BCISSQN, P1VISSQN, P1ETIVOL, P1CODSEP, P1DATASEP,' +
        ' '
      'P1HORSEP, '
      '   P1CODEMB, P1DATAEMB, P1HOREMB, P1NUMCF, P1DATACF, P1TPPCO, '
      'P1SEMCOM, '
      
        '   P1DESCFIN, P1LOTCV, P1LOTCS, P1LOTCT, P1PVTC, P1PVCOM, P1PVAC' +
        'TD, '
      'P1PVACT00, '
      '   P1PVACT01, P1PVACT99, P1PVTDC, P1PVDES, P1PVTPD1, P1PVDES1, '
      'P1PVTPD2, '
      '   P1PVDES2, P1PVTPDESF, P1PVDESCF, P1PVDIASDESCF, P1PVDDESCF, '
      'P1TPP, P1SITAC, '
      
        '   P1CODECF, P1VLRACRE, P1PEDORI1, P1PEDORI2, P1MOTIVO, P1NUMVIS' +
        ', '
      'P1DATVIS, '
      
        '   P1LOTSEQ, P1FORMACE, P1SITPED, P1TOTOUT, P1TOTDI01, P1TOTDI02' +
        ', '
      'P1TOTDIVL, '
      '   P1CODCV, P1LOTEDM, P1MINUTA, P1COMV02, P1COMV03, P1NPEDORI, '
      'P1LOTCV02, '
      
        '   P1LOTCV03, P1PVCOM02, P1PVCOM03, P1SITCPR, P1DATDOC, P1EMIDOC' +
        ', '
      'P1ACRECONV, '
      '   P1ACREGER, P1PACRECONV, P1PACREGER, P1CODDEP, P1SEMCOMP, '
      'P1NAUT, P1PEDORI, '
      '   P1CFO1, P1CFO2, P1BLQPRM, P1TOTDI03, P1VALDES01, P1VALDES02, '
      'P1TARBAN, '
      '   P1PVTPD3, P1PVDES3, P1VALSEG, P1CFOSER, P1PDESCLIB, '
      'P1PDESCL_USR, P1PROCESSO, '
      '   P1CUPACRE, P1CUPDES, P1LEMAT, P1DTACERTO, P1LTACERTO, '
      'P1CODASSE, P1COMASSE, '
      '   P1LOTCASSE, P1QTDMAN, P1CANHOTO, P1ICMS_BCFRE, P1ICMS_ALFRE, '
      'P1ICMS_VLFRE, '
      '   P1ICMS_BCSEG, P1ICMS_ALSEG, P1ICMS_VLSEG, P1ICMS_BCOUTD, '
      'P1ICMS_ALOUTD, '
      
        '   P1ICMS_VLOUTD, P1ICMS_BCIPI, P1ICMS_ALIPI, P1ICMS_VLIPI, P1ES' +
        'PECIE, '
      
        '   P1CODV04, P1PROMOCAO, P1ALIQDEB, P1COMV04, P1LOTCV04, P1PVCOM' +
        '04, '
      'P1TOTCGRU, '
      '   P1TOTSGRU, P1CODPRIOR, P1DTHRCHEG, P1CODBLOQ, '
      'P1CODUSR_LBLOQ, P1TOTSERLIQ, '
      
        '   P1VALENT, P1PRAZO_ENT, P1QTDM3, P1VFRE_CUSENT, P1COMIS_EXTRA,' +
        ' '
      'P1SEPAMB, '
      
        '   P1PZOLIB, P1PZOLIB_USR, P1BLOQPEND, P1CODBLOQ_LIB, P1ECF_SERI' +
        'E, '
      'P1CX_CODCAI, '
      '   P1CX_LOTMOV, P1DUP_PROD, P1DUP_SERV, P1INCTB, P1EMITENTE, '
      'P1PVACREDESREG, '
      '   P1PVAJCOMIS, P1LOCAL, P1TIPO_ENTSAI, P1TOTPROM, P1NOMEREC, '
      'P1DATHORREC, '
      
        '   P1TOTPIS, P1TOTCOFINS, P1RED_BCISSQN, P1BCINSS, P1RED_BCINSS,' +
        ' '
      'P1VINSS, '
      '   P1BCIRRF, P1RED_BCIRRF, P1VIRRF, P1NFE_ENVXML, P1QTDDECPU, '
      'P1DATHOR_REP, '
      '   P1CHAVE_NIVEL, P1DATHOR_UEVE, P1TPEMIS, P1DATHOR_ULTEVE, '
      'P1CODUSR_ULTEVE, '
      '   P1COMP_ULTEVE)'
      'values'
      
        '  (:P1CODEMP, :P1CHAVE, :P1ORDEM, :P1CODCLI, :P1CODVEN, :P1CODV0' +
        '2, '
      ':P1CODV03, '
      
        '   :P1DATAP, :P1DATANF, :P1NUMNF, :P1SERIE, :P1SUBSER, :P1MODELO' +
        ', '
      ':P1SUBMOD, '
      
        '   :P1OBS1, :P1OBS2, :P1OBS3, :P1STATUS, :P1TIPO, :P1TOTALB, :P1' +
        'TOTALL, '
      
        '   :P1CODUSR, :P1HORADIG, :P1DTMOD, :P1HRMOD, :P1USRMOD, :P1CONF' +
        ', '
      ':P1CODCON, '
      '   :P1DATCON, :P1HORCON, :P1TIPENT, :P1PREVENT, :P1HPREVENT, '
      ':P1CODENT, '
      
        '   :P1PRAZO, :P1DATENT, :P1HORENT, :P1TABPV, :P1CODPV, :P1CUPOM,' +
        ' '
      ':P1BASEN, '
      
        '   :P1ICMSN, :P1REPAS, :P1BASER, :P1ICMSR, :P1BASENP, :P1BASENN,' +
        ' '
      ':P1BASENI, '
      
        '   :P1ICMSNP, :P1ICMSNN, :P1ICMSNI, :P1BASERP, :P1BASERN, :P1BAS' +
        'ERI, '
      ':P1ICMSRP, '
      
        '   :P1ICMSRN, :P1ICMSRI, :P1BASENRI, :P1ICMSNRI, :P1BASENRP, :P1' +
        'ICMSNRP, '
      
        '   :P1BASENRN, :P1ICMSNRN, :P1IPIINA, :P1IPIPOS, :P1IPINEG, :P1T' +
        'OTTRI, '
      
        '   :P1TOTRET, :P1TOTISE, :P1TOTPOS, :P1TOTNEG, :P1TOTINA, :P1PIS' +
        'COFN, '
      ':P1PISCOFR, '
      
        '   :P1TOTDES, :P1TOTUCPR, :P1DESC01, :P1DESC02, :P1VLRDES, :P1PA' +
        'VDES, '
      ':P1CODTRA, '
      
        '   :P1QTDVOL, :P1PESOL, :P1PESOB, :P1FRETEPC, :P1VALFRE, :P1UFPV' +
        ', '
      ':P1PLACAV, '
      
        '   :P1BANCO, :P1CODSER, :P1CODLDR, :P1PCOMIS, :P1COMIS, :P1COMIS' +
        'T, '
      ':P1COMISS, '
      
        '   :P1ORIGEM, :P1CODTLV, :P1BCISSQN, :P1VISSQN, :P1ETIVOL, :P1CO' +
        'DSEP, '
      ':P1DATASEP, '
      
        '   :P1HORSEP, :P1CODEMB, :P1DATAEMB, :P1HOREMB, :P1NUMCF, :P1DAT' +
        'ACF, '
      ':P1TPPCO, '
      
        '   :P1SEMCOM, :P1DESCFIN, :P1LOTCV, :P1LOTCS, :P1LOTCT, :P1PVTC,' +
        ' '
      ':P1PVCOM, '
      
        '   :P1PVACTD, :P1PVACT00, :P1PVACT01, :P1PVACT99, :P1PVTDC, :P1P' +
        'VDES, '
      ':P1PVTPD1, '
      '   :P1PVDES1, :P1PVTPD2, :P1PVDES2, :P1PVTPDESF, :P1PVDESCF, '
      ':P1PVDIASDESCF, '
      
        '   :P1PVDDESCF, :P1TPP, :P1SITAC, :P1CODECF, :P1VLRACRE, :P1PEDO' +
        'RI1, '
      ':P1PEDORI2, '
      
        '   :P1MOTIVO, :P1NUMVIS, :P1DATVIS, :P1LOTSEQ, :P1FORMACE, :P1SI' +
        'TPED, '
      ':P1TOTOUT, '
      
        '   :P1TOTDI01, :P1TOTDI02, :P1TOTDIVL, :P1CODCV, :P1LOTEDM, :P1M' +
        'INUTA, '
      '   :P1COMV02, :P1COMV03, :P1NPEDORI, :P1LOTCV02, :P1LOTCV03, '
      ':P1PVCOM02, '
      '   :P1PVCOM03, :P1SITCPR, :P1DATDOC, :P1EMIDOC, :P1ACRECONV, '
      ':P1ACREGER, '
      '   :P1PACRECONV, :P1PACREGER, :P1CODDEP, :P1SEMCOMP, :P1NAUT, '
      ':P1PEDORI, '
      
        '   :P1CFO1, :P1CFO2, :P1BLQPRM, :P1TOTDI03, :P1VALDES01, :P1VALD' +
        'ES02, '
      ':P1TARBAN, '
      '   :P1PVTPD3, :P1PVDES3, :P1VALSEG, :P1CFOSER, :P1PDESCLIB, '
      ':P1PDESCL_USR, '
      '   :P1PROCESSO, :P1CUPACRE, :P1CUPDES, :P1LEMAT, :P1DTACERTO, '
      ':P1LTACERTO, '
      '   :P1CODASSE, :P1COMASSE, :P1LOTCASSE, :P1QTDMAN, :P1CANHOTO, '
      ':P1ICMS_BCFRE, '
      '   :P1ICMS_ALFRE, :P1ICMS_VLFRE, :P1ICMS_BCSEG, :P1ICMS_ALSEG, '
      ':P1ICMS_VLSEG, '
      
        '   :P1ICMS_BCOUTD, :P1ICMS_ALOUTD, :P1ICMS_VLOUTD, :P1ICMS_BCIPI' +
        ', '
      ':P1ICMS_ALIPI, '
      
        '   :P1ICMS_VLIPI, :P1ESPECIE, :P1CODV04, :P1PROMOCAO, :P1ALIQDEB' +
        ', '
      ':P1COMV04, '
      '   :P1LOTCV04, :P1PVCOM04, :P1TOTCGRU, :P1TOTSGRU, :P1CODPRIOR, '
      ':P1DTHRCHEG, '
      '   :P1CODBLOQ, :P1CODUSR_LBLOQ, :P1TOTSERLIQ, :P1VALENT, '
      ':P1PRAZO_ENT, '
      
        '   :P1QTDM3, :P1VFRE_CUSENT, :P1COMIS_EXTRA, :P1SEPAMB, :P1PZOLI' +
        'B, '
      ':P1PZOLIB_USR, '
      '   :P1BLOQPEND, :P1CODBLOQ_LIB, :P1ECF_SERIE, :P1CX_CODCAI, '
      ':P1CX_LOTMOV, '
      
        '   :P1DUP_PROD, :P1DUP_SERV, :P1INCTB, :P1EMITENTE, :P1PVACREDES' +
        'REG, '
      ':P1PVAJCOMIS, '
      
        '   :P1LOCAL, :P1TIPO_ENTSAI, :P1TOTPROM, :P1NOMEREC, :P1DATHORRE' +
        'C, '
      ':P1TOTPIS, '
      
        '   :P1TOTCOFINS, :P1RED_BCISSQN, :P1BCINSS, :P1RED_BCINSS, :P1VI' +
        'NSS, '
      ':P1BCIRRF, '
      '   :P1RED_BCIRRF, :P1VIRRF, :P1NFE_ENVXML, :P1QTDDECPU, '
      ':P1DATHOR_REP, '
      '   :P1CHAVE_NIVEL, :P1DATHOR_UEVE, :P1TPEMIS, :P1DATHOR_ULTEVE, '
      ':P1CODUSR_ULTEVE, '
      '   :P1COMP_ULTEVE)')
    DeleteSQL.Strings = (
      'delete from CADP01'
      'where'
      '  P1CODEMP = :OLD_P1CODEMP and'
      '  P1CHAVE = :OLD_P1CHAVE and'
      '  P1ORDEM = :OLD_P1ORDEM and'
      '  P1LOTSEQ = :OLD_P1LOTSEQ')
    Left = 568
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADO_Origem
    Left = 444
    Top = 88
  end
  object ADO_Itens: TADOQuery
    Connection = ADOConnection1
    OnCalcFields = ADO_ItensCalcFields
    Parameters = <>
    SQL.Strings = (
      'Select'
      
        'contCOOCupom,CodigoItem,Codigo,Quantidade,ValorTotal,SituacaoTri' +
        'butaria'
      'from ItensPorCupom,itensCadastrados'
      'where codigoItem=IdCodigoItem')
    Left = 432
    Top = 48
    object ADO_Itensaliq: TFloatField
      FieldKind = fkCalculated
      FieldName = 'aliq'
      Calculated = True
    end
    object ADO_ItenscontCOOCupom: TIntegerField
      FieldName = 'contCOOCupom'
    end
    object ADO_ItensCodigoItem: TIntegerField
      FieldName = 'CodigoItem'
    end
    object ADO_ItensCodigo: TWideStringField
      FieldName = 'Codigo'
      Size = 50
    end
    object ADO_ItensQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object ADO_ItensValorTotal: TBCDField
      FieldName = 'ValorTotal'
      Precision = 19
    end
    object ADO_ItensSituacaoTributaria: TIntegerField
      FieldName = 'SituacaoTributaria'
    end
  end
  object Qr_ECF_Aliq: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCAL where CACODEMP is null')
    Left = 468
    Top = 144
    object Qr_ECF_AliqCACODEMP: TFloatField
      FieldName = 'CACODEMP'
      Origin = 'SG_ASSOC.CADCAL.CACODEMP'
    end
    object Qr_ECF_AliqCACODIMP: TFloatField
      FieldName = 'CACODIMP'
      Origin = 'SG_ASSOC.CADCAL.CACODIMP'
    end
    object Qr_ECF_AliqCACODALI: TFloatField
      FieldName = 'CACODALI'
      Origin = 'SG_ASSOC.CADCAL.CACODALI'
    end
    object Qr_ECF_AliqCAALIQ: TFloatField
      FieldName = 'CAALIQ'
      Origin = 'SG_ASSOC.CADCAL.CAALIQ'
    end
  end
  object mem_itens: TRxMemoryData
    FieldDefs = <
      item
        Name = 'ITEM_NUMCUP'
        DataType = ftInteger
      end
      item
        Name = 'ITEM_CODALIQ'
        DataType = ftFloat
      end
      item
        Name = 'ITEM_VALORITEM'
        DataType = ftFloat
      end
      item
        Name = 'ITEM_CODPRO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ITEM_VALDES'
        DataType = ftFloat
      end
      item
        Name = 'ITEM_TOTLIQ'
        DataType = ftFloat
      end
      item
        Name = 'ITEM_QUANTIDADE'
        DataType = ftFloat
      end
      item
        Name = 'mem_itensField13'
      end>
    Left = 456
    Top = 176
    object mem_itensITEM_NUMCUP: TIntegerField
      FieldName = 'ITEM_NUMCUP'
    end
    object mem_itensITEM_VALORITEM: TFloatField
      FieldName = 'ITEM_VALORITEM'
    end
    object mem_itensITEM_CODPRO: TStringField
      FieldName = 'ITEM_CODPRO'
    end
    object mem_itensITEM_VALDES: TFloatField
      FieldName = 'ITEM_VALDES'
    end
    object mem_itensITEM_TOTLIQ: TFloatField
      FieldName = 'ITEM_TOTLIQ'
    end
    object mem_itensITEM_QUANTIDADE: TFloatField
      FieldName = 'ITEM_QUANTIDADE'
    end
    object mem_itensITEM_CODALIQ: TFloatField
      FieldName = 'ITEM_CODALIQ'
    end
  end
  object mem_itensAliqDif: TRxMemoryData
    FieldDefs = <
      item
        Name = 'ITEM_NUMCUP'
        DataType = ftInteger
      end
      item
        Name = 'ITEM_DATCUP'
        DataType = ftDateTime
      end
      item
        Name = 'ITEM_CODALIQ'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'ITEM_VALORITEM'
        DataType = ftFloat
      end
      item
        Name = 'ITEM_CUPOM_ALIQ'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ITEM_CUPOM_VALOR'
        DataType = ftFloat
      end
      item
        Name = 'ITEM_OBS'
        DataType = ftString
        Size = 100
      end>
    Left = 368
    Top = 176
    object mem_itensAliqDifITEM_NUMCUP: TIntegerField
      FieldName = 'ITEM_NUMCUP'
    end
    object mem_itensAliqDifITEM_DATCUP: TDateTimeField
      FieldName = 'ITEM_DATCUP'
    end
    object mem_itensAliqDifITEM_VALORITEM: TFloatField
      FieldName = 'ITEM_VALORITEM'
    end
    object mem_itensAliqDifITEM_CUPOM_ALIQ: TStringField
      FieldName = 'ITEM_CUPOM_ALIQ'
    end
    object mem_itensAliqDifITEM_CUPOM_VALOR: TFloatField
      FieldName = 'ITEM_CUPOM_VALOR'
    end
    object mem_itensAliqDifITEM_CODALIQ: TStringField
      FieldName = 'ITEM_CODALIQ'
      Size = 6
    end
    object mem_itensAliqDifITEM_OBS: TStringField
      FieldName = 'ITEM_OBS'
      Size = 100
    end
  end
  object Src_itensAliqDif: TDataSource
    DataSet = mem_itensAliqDif
    Left = 412
    Top = 192
  end
  object mem_diario: TRxMemoryData
    FieldDefs = <
      item
        Name = 'MD_DATA'
        DataType = ftDateTime
      end
      item
        Name = 'MD_MFD_TOTRET'
        DataType = ftFloat
      end
      item
        Name = 'MD_MFD_TOTTRIB'
        DataType = ftFloat
      end
      item
        Name = 'MD_MP_TOTTRIB'
        DataType = ftFloat
      end
      item
        Name = 'MD_MP_TOTRET'
        DataType = ftFloat
      end>
    Left = 64
    Top = 160
    object mem_diarioMD_DATA: TDateTimeField
      FieldName = 'MD_DATA'
    end
    object mem_diarioMD_MFD_TOTRET: TFloatField
      FieldName = 'MD_MFD_TOTRET'
    end
    object mem_diarioMD_MFD_TOTTRIB: TFloatField
      FieldName = 'MD_MFD_TOTTRIB'
    end
    object mem_diarioMD_MP_TOTTRIB: TFloatField
      FieldName = 'MD_MP_TOTTRIB'
    end
    object mem_diarioMD_MP_TOTRET: TFloatField
      FieldName = 'MD_MP_TOTRET'
    end
  end
  object src_diario: TDataSource
    DataSet = mem_diario
    Left = 108
    Top = 176
  end
end

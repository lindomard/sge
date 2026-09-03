object Frm_RelPedMod02: TFrm_RelPedMod02
  Left = 204
  Top = 174
  Width = 719
  Height = 338
  Caption = 'Frm_RelPedMod02'
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
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 703
    Height = 300
    ActivePage = tsGeral
    Align = alClient
    TabOrder = 0
    object tsGeral: TTabSheet
      Caption = 'Geral'
      object Label1: TLabel
        Left = 22
        Top = 4
        Width = 66
        Height = 13
        Caption = 'Periodo de '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 199
        Top = 3
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
      object Label4: TLabel
        Left = 326
        Top = 4
        Width = 103
        Height = 13
        Caption = 'Pesquisar Pedido por:'
      end
      object Label12: TLabel
        Left = 82
        Top = 114
        Width = 21
        Height = 13
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 65
        Top = 150
        Width = 44
        Height = 13
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edt_datini: TDateEdit
        Left = 88
        Top = 1
        Width = 103
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 0
      end
      object edt_datfin: TDateEdit
        Left = 217
        Top = 1
        Width = 103
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 1
      end
      object CB_TIPOPESQ: TComboBox
        Left = 435
        Top = 1
        Width = 99
        Height = 21
        BevelKind = bkSoft
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 2
        Text = 'Data da Nota'
        Items.Strings = (
          'Data da Nota'
          'Data do Pedido')
      end
      object StaticText4: TStaticText
        Left = 31
        Top = 39
        Width = 70
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cliente:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 3
      end
      object edt_codcli: TEdit
        Left = 105
        Top = 36
        Width = 66
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnExit = edt_codcliExit
        OnKeyPress = edt_codcliKeyPress
      end
      object lbx_codcli: TListBox
        Left = 170
        Top = 36
        Width = 345
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnKeyDown = lbx_codcliKeyDown
      end
      object OMITIR_CLI: TCheckBox
        Left = 110
        Top = 58
        Width = 50
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object StaticText5: TStaticText
        Left = 3
        Top = 77
        Width = 98
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vendedor:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 7
      end
      object edt_codven: TEdit
        Left = 105
        Top = 74
        Width = 66
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
        OnExit = edt_codvenExit
        OnKeyPress = edt_codvenKeyPress
      end
      object lbx_codven: TListBox
        Left = 170
        Top = 74
        Width = 345
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnKeyDown = lbx_codvenKeyDown
      end
      object OMITIR_VEN: TCheckBox
        Left = 110
        Top = 96
        Width = 48
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
      end
      object CODUF: TEdit
        Left = 105
        Top = 112
        Width = 66
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnExit = CODUFExit
        OnKeyDown = CODUFKeyDown
      end
      object lbx_coduf: TListBox
        Left = 170
        Top = 112
        Width = 345
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnKeyDown = lbx_codufKeyDown
      end
      object OMITIR_UF: TCheckBox
        Left = 105
        Top = 131
        Width = 57
        Height = 20
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
      end
      object CODLOC: TEdit
        Left = 105
        Top = 149
        Width = 66
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        OnExit = CODLOCExit
        OnKeyPress = CODLOCKeyPress
      end
      object lbx_codloc: TListBox
        Left = 170
        Top = 150
        Width = 345
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnKeyDown = lbx_codlocKeyDown
      end
      object OMITIR_LOC: TCheckBox
        Left = 106
        Top = 169
        Width = 57
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
      end
      object bbImprimir: TBitBtn
        Left = 5
        Top = 202
        Width = 148
        Height = 36
        Cursor = crHandPoint
        Caption = '&Imprimir'
        TabOrder = 17
        OnClick = bbImprimirClick
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
      object bbSair: TBitBtn
        Left = 465
        Top = 202
        Width = 148
        Height = 36
        Cursor = crHandPoint
        Caption = '&Sair'
        TabOrder = 18
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
      object RG_FILTRO: TRadioGroup
        Left = 532
        Top = 76
        Width = 141
        Height = 58
        Caption = 'Filtrar:'
        Ctl3D = False
        ItemIndex = 2
        Items.Strings = (
          'Sem Justificativa'
          'Com Justificativa'
          'Todos')
        ParentCtl3D = False
        TabOrder = 19
      end
      object cb_excluidos: TCheckBox
        Left = 536
        Top = 144
        Width = 97
        Height = 17
        Caption = 'Listar Excluidos'
        TabOrder = 20
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Tipos de Pedidos'
      ImageIndex = 1
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 695
        Height = 217
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Align = alTop
        Color = clSkyBlue
        Columns = 3
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ItemHeight = 16
        Items.Strings = (
          'Or'#231'amento'
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
          'Venda Normal(Troca de Mercadorias)'
          'Devolu'#231#227'o de Cliente(Troca de Mercadorias)'
          'Transferencias de Mercadorias Entrada'
          'Devolu'#231#227'o de Mercadorias de Terceiros(Consignadas)'
          'Remessa p/Industrializa'#231#227'o'
          'Remessa p/Brinde'
          'Remessa Amostra Gratis'
          'Remessa p/Demonstra'#231#227'o'
          'Remessa p/Conserto'
          'Outras Saidas'
          'Todos')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Style = lbOwnerDrawFixed
        TabOrder = 0
        OnClick = RG_TIPOPEDClick
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 2
      object RLReport1: TRLReport
        Left = 29
        Top = 76
        Width = 794
        Height = 1123
        DataSource = src_ped01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        object RLBand_cab: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 91
          BandType = btHeader
          object RLImage_logo: TRLImage
            Left = 0
            Top = 0
            Width = 105
            Height = 91
            Align = faLeft
            Stretch = True
          end
          object lblcab_empresa: TRLLabel
            Left = -217
            Top = 3
            Width = 929
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object lblcab_obsrel: TRLLabel
            Left = 112
            Top = 44
            Width = 390
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Balancete de Vendas x Produ'#231#227'o'
          end
          object lblcab_periodo: TRLLabel
            Left = 112
            Top = 66
            Width = 393
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Extrato de Produtos'
          end
          object lblcab_dathor_emi: TRLLabel
            Left = 509
            Top = 66
            Width = 205
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 598
            Top = 46
            Width = 81
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'Pagina:'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 681
            Top = 46
            Width = 32
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
          object lblcab_fantasia: TRLLabel
            Left = -217
            Top = 22
            Width = 929
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLGroup1: TRLGroup
          Left = 38
          Top = 129
          Width = 718
          Height = 112
          object rlcab_cabdet: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            BandType = btHeader
            object rlcab_ped_chave: TRLLabel
              Left = 7
              Top = 0
              Width = 40
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Chave'
              Layout = tlCenter
            end
            object rlcab_ped_nomcli: TRLLabel
              Left = 47
              Top = 0
              Width = 214
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Raz'#227'o Social'
              Layout = tlCenter
            end
            object rlcab_ped_cidade: TRLLabel
              Left = 261
              Top = 0
              Width = 134
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Cidade/UF'
              Layout = tlCenter
            end
            object rlcab_ped_data: TRLLabel
              Left = 396
              Top = 0
              Width = 64
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Data'
              Layout = tlCenter
            end
            object rlcab_ped_valor_liq: TRLLabel
              Left = 464
              Top = 0
              Width = 68
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor Pedido'
              Layout = tlCenter
            end
            object rlcab_ped_valor_cus: TRLLabel
              Left = 533
              Top = 0
              Width = 184
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Observa'#231#245'es 3 Motivo'
              Layout = tlCenter
            end
          end
          object RLBand2: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 12
            AutoSize = True
            object rltext_ped_chave: TRLDBText
              Left = 7
              Top = 0
              Width = 40
              Height = 12
              AutoSize = False
              DataField = 'P1CHAVE'
              DataSource = src_ped01
              Holder = rlcab_ped_chave
              SecondHolder = rldet_P1OBS3
              SecondHoldStyle = hsCopyHeight
            end
            object rldet_ped_nomcli: TRLDBText
              Left = 47
              Top = 0
              Width = 214
              Height = 12
              AutoSize = False
              DataField = 'CRAZAO'
              DataSource = src_ped01
              Holder = rlcab_ped_nomcli
              SecondHolder = rldet_P1OBS3
              SecondHoldStyle = hsCopyHeight
            end
            object rldet_ped_cidade: TRLDBText
              Left = 261
              Top = 0
              Width = 134
              Height = 12
              AutoSize = False
              DataField = 'CIDADE_UF'
              DataSource = src_ped01
              Holder = rlcab_ped_cidade
              SecondHolder = rldet_P1OBS3
              SecondHoldStyle = hsCopyHeight
            end
            object rldet_ped_data: TRLDBText
              Left = 396
              Top = 0
              Width = 64
              Height = 12
              AutoSize = False
              DataField = 'P1DATAP'
              DataSource = src_ped01
              Holder = rlcab_ped_data
              SecondHolder = rldet_P1OBS3
              SecondHoldStyle = hsCopyHeight
            end
            object rldet_ped_valor_liq: TRLDBText
              Left = 464
              Top = 0
              Width = 68
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P1TOTALL'
              DataSource = src_ped01
              Holder = rlcab_ped_valor_liq
              SecondHolder = rldet_P1OBS3
              SecondHoldStyle = hsCopyHeight
            end
            object rldet_P1OBS3: TRLDBMemo
              Left = 533
              Top = 0
              Width = 184
              Height = 12
              DataField = 'P1OBS3'
              DataSource = src_ped01
              Holder = rlcab_ped_valor_cus
            end
          end
          object RLcab_ini: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btHeader
            object RLLabel1: TRLLabel
              Left = 6
              Top = 0
              Width = 568
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Pedidos do Periodo'
              Layout = tlCenter
            end
          end
          object RLBand_rod: TRLBand
            Left = 0
            Top = 44
            Width = 718
            Height = 16
            BandType = btSummary
            object rlrod_ped_chave: TRLLabel
              Left = 7
              Top = 0
              Width = 40
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = ' '
              Holder = rlcab_ped_chave
              Layout = tlCenter
            end
            object rlrod_ped_nomcli: TRLLabel
              Left = 47
              Top = 0
              Width = 214
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = '- Total Geral'
              Holder = rlcab_ped_nomcli
              Layout = tlCenter
            end
            object rlrod_ped_cidade: TRLLabel
              Left = 261
              Top = 0
              Width = 134
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = ' '
              Holder = rlcab_ped_cidade
              Layout = tlCenter
            end
            object rlrod_ped_data: TRLLabel
              Left = 396
              Top = 0
              Width = 64
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = ' '
              Holder = rlcab_ped_data
              Layout = tlCenter
            end
            object rlrod_ped_valor_liq: TRLLabel
              Left = 464
              Top = 0
              Width = 68
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = rlcab_ped_valor_liq
              Layout = tlCenter
            end
            object rlrod_ped_valor_cus: TRLLabel
              Left = 533
              Top = 0
              Width = 184
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Holder = rlcab_ped_valor_cus
              Layout = tlCenter
            end
          end
        end
        object rlsumario: TRLBand
          Left = 38
          Top = 241
          Width = 718
          Height = 16
          BandType = btSummary
        end
      end
    end
  end
  object Qr_Ped01: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 404
    Top = 40
    object Qr_Ped01P1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Qr_Ped01P1CODEMP: TFloatField
      FieldName = 'P1CODEMP'
    end
    object Qr_Ped01P1TOTALL: TFloatField
      FieldName = 'P1TOTALL'
    end
    object Qr_Ped01P1CODVEN: TFloatField
      FieldName = 'P1CODVEN'
    end
    object Qr_Ped01P1OBS1: TMemoField
      FieldName = 'P1OBS1'
      BlobType = ftMemo
    end
    object Qr_Ped01P1OBS2: TMemoField
      FieldName = 'P1OBS2'
      BlobType = ftMemo
    end
    object Qr_Ped01P1OBS3: TMemoField
      FieldName = 'P1OBS3'
      BlobType = ftMemo
    end
    object Qr_Ped01CRAZAO: TStringField
      FieldName = 'CRAZAO'
      Size = 100
    end
    object Qr_Ped01CIDADE_UF: TStringField
      FieldName = 'CIDADE_UF'
      Size = 80
    end
    object Qr_Ped01P1DATAP: TDateTimeField
      FieldName = 'P1DATAP'
    end
  end
  object src_ped01: TDataSource
    DataSet = Qr_Ped01
    Left = 452
    Top = 48
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 652
    Top = 64
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 656
    Top = 88
  end
end

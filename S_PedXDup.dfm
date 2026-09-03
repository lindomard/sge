object Frm_PedXDup: TFrm_PedXDup
  Left = 33
  Top = 49
  Width = 718
  Height = 521
  Caption = 'Compara'#231#227'o de Pedidos x Duplicatas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 710
    Height = 490
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Principais'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 41
        Width = 702
        Height = 386
        Align = alClient
        Caption = 'Compara'#231#227'o:'
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 698
          Height = 369
          Align = alClient
          DataSource = Src_PedDup
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'P1DATANF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'P1CODEMP'
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'P1CHAVE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTPED'
              Width = 99
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTDUP'
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'P1TIPO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'P1STATUS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TARBAN'
              Visible = True
            end>
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 702
        Height = 41
        Align = alTop
        TabOrder = 1
        object Label2: TLabel
          Left = 249
          Top = 11
          Width = 67
          Height = 13
          Caption = 'Data Final.:'
        end
        object Label1: TLabel
          Left = 45
          Top = 11
          Width = 74
          Height = 13
          Caption = 'Data Inicial.:'
        end
        object MDT2: TMaskEdit
          Left = 332
          Top = 9
          Width = 92
          Height = 21
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
          OnExit = MDT2Exit
        end
        object MDT1: TMaskEdit
          Left = 120
          Top = 8
          Width = 93
          Height = 21
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          TabOrder = 0
          Text = '  /  /    '
          OnExit = MDT1Exit
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 427
        Width = 702
        Height = 35
        Align = alBottom
        TabOrder = 2
        object BitBtn1: TBitBtn
          Left = 40
          Top = 5
          Width = 169
          Height = 25
          Caption = 'Verificar Agora'
          TabOrder = 0
          OnClick = BitBtn1Click
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
        object bbSair: TBitBtn
          Left = 505
          Top = 5
          Width = 169
          Height = 25
          Caption = '&Sair do Programa'
          TabOrder = 1
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
        object bbExportar: TBitBtn
          Left = 263
          Top = 5
          Width = 169
          Height = 25
          Caption = '&Exportar xls'
          TabOrder = 2
          OnClick = bbExportarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
            7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
            777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
            79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
            7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
            777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
            79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
            CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
          NumGlyphs = 2
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Filtros'
      ImageIndex = 1
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 702
        Height = 230
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Align = alTop
        Color = clSkyBlue
        Columns = 2
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
  end
  object Tb_PedDup: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select max(P1STATUS) as P1STATUS,'
      'max(P1TIPO) as P1TIPO,P1DATANF,P1CODEMP,P1LOTSEQ,P1CHAVE,'
      'sum(p1totall) as totped, sum(p1totall) as totdup'
      ', sum(p1totall) as tarban'
      'from cadp01'
      'where p1codemp=1'
      'and p1chave=01'
      'group by P1DATANF,P1CODEMP,P1LOTSEQ,P1CHAVE')
    Left = 144
    Top = 8
    object Tb_PedDupP1CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'P1CODEMP'
    end
    object Tb_PedDupP1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P1CHAVE'
    end
    object Tb_PedDupTOTPED: TFloatField
      DisplayLabel = 'Total do Pedido'
      FieldName = 'TOTPED'
    end
    object Tb_PedDupTOTDUP: TFloatField
      DisplayLabel = 'Total Duplicata'
      FieldName = 'TOTDUP'
    end
    object Tb_PedDupP1LOTSEQ: TFloatField
      FieldName = 'P1LOTSEQ'
    end
    object Tb_PedDupP1DATANF: TDateTimeField
      DisplayLabel = 'Data NF'
      FieldName = 'P1DATANF'
    end
    object Tb_PedDupP1TIPO: TFloatField
      DisplayLabel = 'Tipo Movimento'
      FieldName = 'P1TIPO'
      Origin = 'SG_ASSOC.CADP01.P1TIPO'
    end
    object Tb_PedDupP1STATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'P1STATUS'
      Origin = 'SG_ASSOC.CADP01.P1STATUS'
    end
    object Tb_PedDupTARBAN: TFloatField
      DisplayLabel = 'Tar.Bancaria'
      FieldName = 'TARBAN'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
  end
  object Src_PedDup: TDataSource
    DataSet = Tb_PedDup
    Left = 184
  end
end

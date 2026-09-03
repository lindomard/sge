object Frm_Farma_SNGPC_Inventario: TFrm_Farma_SNGPC_Inventario
  Left = -61
  Top = 86
  Width = 965
  Height = 547
  Caption = 'Invent'#225'rio Inicial'
  Color = 15790305
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 949
    Height = 509
    ActivePage = tsPrincipal
    Align = alClient
    TabOrder = 0
    object tsPrincipal: TTabSheet
      Caption = 'Principal'
      object gb_itens_inv: TGroupBox
        Left = 0
        Top = 131
        Width = 941
        Height = 350
        Align = alClient
        Caption = 'Itens do Invent'#225'rio:'
        TabOrder = 0
        object DBGrid_invent: TDBGrid
          Left = 2
          Top = 15
          Width = 937
          Height = 333
          Align = alClient
          DataSource = Src_Inv
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnColExit = DBGrid_inventColExit
          OnExit = DBGrid_inventExit
          OnKeyPress = DBGrid_inventKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'EI_CODPRO'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDNOME'
              Width = 459
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDUND'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EI_QTD'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EI_LOTE'
              Width = 140
              Visible = True
            end>
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 42
        Width = 941
        Height = 89
        Align = alTop
        Caption = 'Invent'#225'rios Iniciais Gravados:'
        TabOrder = 1
        object Label1: TLabel
          Left = 212
          Top = 20
          Width = 111
          Height = 13
          Caption = 'Data do Inventario:'
        end
        object CB_DATA_ESTINI: TComboBox
          Left = 328
          Top = 16
          Width = 289
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          OnChange = CB_DATA_ESTINIChange
        end
        object bbIncluir: TBitBtn
          Left = 8
          Top = 58
          Width = 221
          Height = 26
          Caption = '&Incluir Novo'
          TabOrder = 1
          OnClick = bbIncluirClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
            00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
            F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
            0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
            FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
            FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
            0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
            00333377737FFFFF773333303300000003333337337777777333}
          NumGlyphs = 2
        end
        object bbExcluir: TBitBtn
          Left = 230
          Top = 58
          Width = 221
          Height = 26
          Caption = 'Excluir o Selecionado'
          TabOrder = 2
          OnClick = bbExcluirClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333333333333333333FFF33FF333FFF339993370733
            999333777FF37FF377733339993000399933333777F777F77733333399970799
            93333333777F7377733333333999399933333333377737773333333333990993
            3333333333737F73333333333331013333333333333777FF3333333333910193
            333333333337773FF3333333399000993333333337377737FF33333399900099
            93333333773777377FF333399930003999333337773777F777FF339993370733
            9993337773337333777333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
        end
        object bbSair: TBitBtn
          Left = 688
          Top = 58
          Width = 221
          Height = 26
          Caption = 'Sair'
          TabOrder = 3
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
        object bbImprimir: TBitBtn
          Left = 456
          Top = 58
          Width = 221
          Height = 26
          Caption = 'Imprimir'
          TabOrder = 4
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
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 941
        Height = 42
        Align = alTop
        Caption = 'Pesquisar:'
        TabOrder = 2
        object Label2: TLabel
          Left = 11
          Top = 19
          Width = 24
          Height = 13
          Caption = 'Por:'
        end
        object edt_nompro: TEdit
          Left = 223
          Top = 14
          Width = 491
          Height = 21
          TabOrder = 1
          OnChange = edt_nomproChange
        end
        object CB_TPPESQ: TComboBox
          Left = 40
          Top = 14
          Width = 180
          Height = 21
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 0
          Text = 'Descri'#231#227'o'
          Items.Strings = (
            'C'#243'digo'
            'Descri'#231#227'o')
        end
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport_inventario: TRLReport
        Left = 96
        Top = 110
        Width = 794
        Height = 1123
        DataSource = Src_Inv_Impres
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        BeforePrint = RLReport_inventarioBeforePrint
        object RLBand_cabger: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 41
          BandType = btColumnHeader
          object RLCab_RazEmp: TRLLabel
            Left = 0
            Top = 0
            Width = 100
            Height = 16
            Align = faLeftTop
          end
          object RLCab_DathorEmi: TRLLabel
            Left = 607
            Top = 0
            Width = 111
            Height = 16
            Align = faRightTop
          end
          object rlcab_titulo: TRLLabel
            Left = 0
            Top = 18
            Width = 67
            Height = 16
          end
          object rlcab_pag: TRLSystemInfo
            Left = 606
            Top = 21
            Width = 65
            Height = 16
            AutoSize = False
            Info = itPageNumber
            Text = 'P'#225'gina:'
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 673
            Top = 21
            Width = 39
            Height = 16
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
        end
        object RLBand_cabdet: TRLBand
          Left = 38
          Top = 79
          Width = 718
          Height = 16
          BandType = btColumnHeader
          object rlcabdet_codpro: TRLLabel
            Left = 5
            Top = 1
            Width = 50
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object rlcabdet_nompro: TRLLabel
            Left = 55
            Top = 1
            Width = 312
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'Descri'#231#227'o do Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object rlcabdet_qtd: TRLLabel
            Left = 367
            Top = 1
            Width = 84
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'Quantidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object rlcabdet_und: TRLLabel
            Left = 453
            Top = 1
            Width = 48
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'UND'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object rlcabdet_lote: TRLLabel
            Left = 501
            Top = 1
            Width = 106
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'Lote'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object rlcabdet_regms: TRLLabel
            Left = 607
            Top = 1
            Width = 106
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'Registro MS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
        end
        object RLBand_det: TRLBand
          Left = 38
          Top = 95
          Width = 718
          Height = 16
          BeforePrint = RLBand_detBeforePrint
          object rldet_codpro: TRLDBText
            Left = 5
            Top = 0
            Width = 50
            Height = 16
            AutoSize = False
            DataField = 'CODPRO'
            DataSource = Src_Inv_Impres
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_codpro
            Layout = tlCenter
            ParentFont = False
          end
          object rldet_nompro: TRLDBText
            Left = 55
            Top = 0
            Width = 312
            Height = 16
            AutoSize = False
            DataField = 'PDNOME'
            DataSource = Src_Inv_Impres
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_nompro
            Layout = tlCenter
            ParentFont = False
          end
          object rldet_qtd: TRLDBText
            Left = 367
            Top = 0
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QTDINV'
            DataSource = Src_Inv_Impres
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_qtd
            Layout = tlCenter
            ParentFont = False
          end
          object rldet_und: TRLDBText
            Left = 453
            Top = 0
            Width = 48
            Height = 16
            AutoSize = False
            DataField = 'PDUND'
            DataSource = Src_Inv_Impres
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_und
            Layout = tlCenter
            ParentFont = False
          end
          object rldet_lote: TRLDBText
            Left = 501
            Top = 0
            Width = 106
            Height = 16
            AutoSize = False
            DataField = 'LOTE'
            DataSource = Src_Inv_Impres
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_lote
            Layout = tlCenter
            ParentFont = False
          end
          object rldet_regms: TRLDBText
            Left = 607
            Top = 0
            Width = 106
            Height = 16
            AutoSize = False
            DataField = 'PDREGMS'
            DataSource = Src_Inv_Impres
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_regms
            Layout = tlCenter
            ParentFont = False
          end
        end
        object RLBand_rodape: TRLBand
          Left = 38
          Top = 111
          Width = 718
          Height = 16
          BandType = btColumnFooter
        end
        object RLBand1: TRLBand
          Left = 38
          Top = 127
          Width = 718
          Height = 16
          BandType = btSummary
          BeforePrint = RLBand1BeforePrint
          object rlrod_qtdreg: TRLLabel
            Left = 0
            Top = 0
            Width = 45
            Height = 10
            Align = faLeftTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
  end
  object Qr_Inv: TQuery
    CachedUpdates = True
    AfterInsert = Qr_InvAfterInsert
    AfterEdit = Qr_InvAfterEdit
    BeforePost = Qr_InvBeforePost
    AfterPost = Qr_InvAfterPost
    BeforeDelete = Qr_InvBeforeDelete
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select '
      '  PDNOME,PDUND, '
      '  EI_CODEMP,'
      '  EI_DATA,'
      '  EI_CODPRO,'
      '  EI_QTD,'
      '  EI_LOTE from CADPRO,CADSNGPC_ESTINI'
      '  WHERE EI_CODPRO(+)=PDCODPRO'
      '  AND EI_CODEMP(+)=PDCODEMP'
      '  AND PDCODEMP=1'
      '  ORDER BY PDNOME'
      '  ')
    UpdateObject = U_Inv
    Left = 696
    Top = 24
    object Qr_InvPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Size = 120
    end
    object Qr_InvPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Size = 3
    end
    object Qr_InvEI_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'EI_CODEMP'
    end
    object Qr_InvEI_DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'EI_DATA'
    end
    object Qr_InvEI_CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'EI_CODPRO'
    end
    object Qr_InvEI_QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'EI_QTD'
    end
    object Qr_InvEI_LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'EI_LOTE'
    end
  end
  object Src_Inv: TDataSource
    DataSet = Qr_Inv
    Left = 736
    Top = 32
  end
  object U_Inv: TUpdateSQL
    ModifySQL.Strings = (
      'update CADSNGPC_ESTINI'
      'set'
      '  EI_CODEMP = :EI_CODEMP,'
      '  EI_DATA = :EI_DATA,'
      '  EI_CODPRO = :EI_CODPRO,'
      '  EI_QTD = :EI_QTD,'
      '  EI_LOTE = :EI_LOTE'
      'where'
      '  EI_CODEMP = :OLD_EI_CODEMP and'
      '  EI_DATA = :OLD_EI_DATA and'
      '  EI_CODPRO = :OLD_EI_CODPRO and'
      '  EI_LOTE = :OLD_EI_LOTE')
    InsertSQL.Strings = (
      'insert into CADSNGPC_ESTINI'
      '  (EI_CODEMP, EI_DATA, EI_CODPRO, EI_QTD, EI_LOTE)'
      'values'
      '  (:EI_CODEMP, :EI_DATA, :EI_CODPRO, :EI_QTD, :EI_LOTE)')
    DeleteSQL.Strings = (
      'delete from CADSNGPC_ESTINI'
      'where'
      '  EI_CODEMP = :OLD_EI_CODEMP and'
      '  EI_DATA = :OLD_EI_DATA and'
      '  EI_CODPRO = :OLD_EI_CODPRO and'
      '  EI_LOTE = :OLD_EI_LOTE')
    Left = 784
    Top = 32
  end
  object Qr_Inv_Impres: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select PDUND_INSUMO,PDUND_FARMACOTECNICA,PDCLASSE_TERAPEUTICA,LP' +
        'AD('#39'0'#39',14) AS CNPJ, case when PDNIVEL=5 then 2 else 1 end AS TIP' +
        'O_MED_INS, CODPRO,LOTE,PDNOME,PDUND,PDREGMS,SUM(COMPRAS+DEVCLI-(' +
        'PERDAS+SAIDAS) ) AS QTDINV'
      'FROM'
      ''
      '(('
      ''
      
        'Select '#39'PF1'#39' AS ORIGEM, PF2CODPRO AS CODPRO,sum(NVL(PF2L_QTD,PF2' +
        'QTDP)) AS COMPRAS,0 AS DEVCLI,   0 AS PERDAS, 0 AS SAIDAS, NVL(P' +
        'F2L_LOTE,'#39'X'#39') AS LOTE  FROM CADPF1 ,CADFOR,CADPRO,CADPF2,CADPF2_' +
        'LOTES_ORC              where  PF1CODFOR(+)=FCODFOR and  PF2CODPR' +
        'O=PDCODPRO and  (PF2CODEMP=PF1CODEMP) and PF2LOTSEQ=PF1LOTSEQ an' +
        'd PF2CHAVE=PF1CHAVE and  (PF2L_CODEMP(+)=PF2CODEMP) and PF2L_LOT' +
        'SEQ(+)=PF2LOTSEQ and PF2L_CHAVE(+)=PF2CHAVE and PF2L_CODPRO(+)=P' +
        'F2CODPRO and  PF1CODEMP=01 and PF1STATUS<>9  and PF1STATUS=1  an' +
        'd PDSGNPC=1  GROUP BY PF2CODPRO,PF2L_LOTE'
      ' UNION'
      
        ' Select '#39'PED'#39' AS ORIGEM,P2CODPRO AS CODPRO,  0 AS ENTRADA, sum(D' +
        'ECODE(P1TIPO_ENTSAI,1,P2SNGPC_QTDPED, 0)) AS DEVCLI, 0 AS PERDAS' +
        ' , sum(DECODE(P1TIPO_ENTSAI,1,0, NVL(P2SNGPC_QTDPED,P2QTD))) AS ' +
        'SAIDAS, NVL(P2SNGPC_LOTE,'#39'X'#39')  AS LOTE   FROM CADP01 ,CADCLI,CAD' +
        'PRO,CADP02,CADP02_SNGPC              where  CCODCLI(+)=P1CODCLI ' +
        'and  P2CODPRO=PDCODPRO and  (P2CODEMP=P1CODEMP) and P2LOTSEQ=P1L' +
        'OTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ORDEM and  (P2SNGPC_CODE' +
        'MP(+)=P2CODEMP) and P2SNGPC_LOTSEQ(+)=P2LOTSEQ and P2SNGPC_CHAVE' +
        '(+)=P2CHAVE and P2SNGPC_CODPRO(+)=P2CODPRO and  P1STATUS<>9  and' +
        ' P1EMIDOC=1  and PDSGNPC=1     and  P1CODEMP=1  GROUP BY P2CODPR' +
        'O,P2SNGPC_LOTE'
      ' UNION'
      
        ' Select '#39'AJUS'#39' AS ORIGEM,AJCODPRO AS CODPRO, 0 AS ENTRADA, 0 AS ' +
        'DEVCLI, SUM(AJQTD) AS PERDAS, 0 AS SAIDAS,  NVL(AJLOTE,'#39'X'#39') AS L' +
        'OTE FROM CADAJU ,CADPRO              where  AJCODPRO=PDCODPRO an' +
        'd  AJMOTIVO='#39'PERDAS'#39' and AJTIPOM=1  GROUP BY AJCODPRO,AJLOTE'
      
        ')) PEDIDOS,CADPRO WHERE PDCODPRO=PEDIDOS.CODPRO group by PDUND_I' +
        'NSUMO,PDUND_FARMACOTECNICA,PDCLASSE_TERAPEUTICA,case when PDNIVE' +
        'L=5 then 2 else 1 end ,CODPRO,LOTE,PDNOME,PDUND,PDREGMS')
    Left = 204
    Top = 48
    object Qr_Inv_ImpresCODPRO: TFloatField
      FieldName = 'CODPRO'
    end
    object Qr_Inv_ImpresLOTE: TStringField
      FieldName = 'LOTE'
    end
    object Qr_Inv_ImpresPDNOME: TStringField
      FieldName = 'PDNOME'
      Size = 120
    end
    object Qr_Inv_ImpresPDUND: TStringField
      FieldName = 'PDUND'
      Size = 3
    end
    object Qr_Inv_ImpresPDREGMS: TStringField
      FieldName = 'PDREGMS'
    end
    object Qr_Inv_ImpresQTDINV: TFloatField
      FieldName = 'QTDINV'
    end
    object Qr_Inv_ImpresTIPO_MED_INS: TFloatField
      FieldName = 'TIPO_MED_INS'
    end
    object Qr_Inv_ImpresPDCLASSE_TERAPEUTICA: TFloatField
      FieldName = 'PDCLASSE_TERAPEUTICA'
    end
    object Qr_Inv_ImpresPDUND_INSUMO: TFloatField
      FieldName = 'PDUND_INSUMO'
    end
    object Qr_Inv_ImpresPDUND_FARMACOTECNICA: TFloatField
      FieldName = 'PDUND_FARMACOTECNICA'
    end
    object Qr_Inv_ImpresCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
  end
  object Src_Inv_Impres: TDataSource
    DataSet = Qr_Inv_Impres
    Left = 244
    Top = 48
  end
end

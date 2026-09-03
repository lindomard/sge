object Frm_CX_MovDia: TFrm_CX_MovDia
  Left = 192
  Top = 124
  Width = 928
  Height = 480
  Caption = 'Movimento Diario'
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
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 920
    Height = 449
    ActivePage = tsGeral
    Align = alClient
    TabOrder = 0
    TabStop = False
    object tsGeral: TTabSheet
      Caption = 'Filtros'
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 912
        Height = 57
        Align = alTop
        Alignment = taCenter
        Caption = 'Movimento diario do Caixa'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -50
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label37: TLabel
        Left = 115
        Top = 68
        Width = 36
        Height = 13
        Caption = 'Caixa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 35
        Top = 92
        Width = 115
        Height = 13
        Caption = 'Data do Movimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edt_codcai: TEdit
        Left = 154
        Top = 64
        Width = 62
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = edt_codcaiExit
      end
      object edt_caixa: TEdit
        Left = 215
        Top = 64
        Width = 426
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        TabStop = False
        Color = clBtnFace
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
      end
      object edt_datmov: TDateEdit
        Left = 155
        Top = 88
        Width = 121
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 2
      end
      object bbImprimir: TBitBtn
        Left = 5
        Top = 137
        Width = 150
        Height = 21
        Cursor = crHandPoint
        Hint = 'Imprime os T'#237'tulos '#13#10'Selecionados'
        Caption = '&Imprimir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
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
        Left = 741
        Top = 130
        Width = 150
        Height = 25
        Cursor = crHandPoint
        Hint = 'Fecha Este Formul'#225'rio'#13#10'e Volta ao Menu Principal'
        Caption = '&Sair'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
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
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = 16
        Top = 40
        Width = 794
        Height = 1123
        DataSource = src_movdia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        BeforePrint = RLReport1BeforePrint
        object RLBand_CabGer: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 49
          BandType = btColumnHeader
          object rllbl_nomemp: TRLLabel
            Left = 0
            Top = 0
            Width = 81
            Height = 16
            Align = faLeftTop
          end
          object lbl_dathor: TRLLabel
            Left = 658
            Top = 0
            Width = 60
            Height = 16
            Align = faRightTop
          end
          object lbl_titulo: TRLLabel
            Left = 0
            Top = 24
            Width = 449
            Height = 16
            AutoSize = False
          end
          object lbl_data: TRLSystemInfo
            Left = 592
            Top = 24
            Width = 74
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'Pagina:'
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 669
            Top = 24
            Width = 116
            Height = 16
            Info = itLastPageNumber
            Text = '/'
          end
        end
        object RLBand_CabDet: TRLBand
          Left = 38
          Top = 87
          Width = 718
          Height = 16
          BandType = btColumnHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object lbl_nome: TRLLabel
            Left = 6
            Top = 0
            Width = 370
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Descri'#231#227'o do movimento'
            Layout = tlCenter
          end
          object lbl_RECEBIDO: TRLLabel
            Left = 468
            Top = 0
            Width = 80
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Recebido'
            Layout = tlCenter
          end
          object lbl_PAGOS: TRLLabel
            Left = 545
            Top = 0
            Width = 90
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Pagos'
            Layout = tlCenter
          end
          object lbl_saldo: TRLLabel
            Left = 636
            Top = 0
            Width = 82
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Saldo'
            Layout = tlCenter
          end
          object lbl_fpto: TRLLabel
            Left = 380
            Top = 0
            Width = 80
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Forma Pgto'
            Layout = tlCenter
          end
        end
        object RLBand1: TRLBand
          Left = 38
          Top = 103
          Width = 718
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AfterPrint = RLBand1AfterPrint
          object dbe_nome: TRLDBText
            Left = 6
            Top = 0
            Width = 370
            Height = 16
            AutoSize = False
            DataField = 'DESCMOV'
            DataSource = src_movdia
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_nome
            Layout = tlCenter
            ParentFont = False
          end
          object edt_RECEBIDO: TRLDBText
            Left = 468
            Top = 0
            Width = 80
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'RECEBIDO'
            DataSource = src_movdia
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_RECEBIDO
            Layout = tlCenter
            ParentFont = False
          end
          object edt_PAGOS: TRLDBText
            Left = 545
            Top = 0
            Width = 90
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PAGOS'
            DataSource = src_movdia
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_PAGOS
            Layout = tlCenter
            ParentFont = False
          end
          object edt_saldo: TRLDBText
            Left = 636
            Top = 0
            Width = 82
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'ACUMULADO'
            DataSource = src_movdia
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_saldo
            Layout = tlCenter
            ParentFont = False
          end
          object edt_fpto: TRLDBText
            Left = 380
            Top = 0
            Width = 80
            Height = 16
            AutoSize = False
            DataField = 'FORMA'
            DataSource = src_movdia
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_fpto
            Layout = tlCenter
            ParentFont = False
          end
        end
        object RLBand_totais: TRLBand
          Left = 38
          Top = 135
          Width = 718
          Height = 16
          BandType = btSummary
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLBand_totaisBeforePrint
          object lbltot_nome: TRLLabel
            Left = 6
            Top = 0
            Width = 370
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Totais'
            Holder = lbl_nome
            Layout = tlCenter
          end
          object lbltot_fpto: TRLLabel
            Left = 380
            Top = 0
            Width = 80
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = ' '
            Holder = lbl_fpto
            Layout = tlCenter
          end
          object lbltot_RECEBIDO: TRLLabel
            Left = 468
            Top = 0
            Width = 80
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '
            Holder = lbl_RECEBIDO
            Layout = tlCenter
          end
          object lbltot_PAGOS: TRLLabel
            Left = 545
            Top = 0
            Width = 90
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '
            Holder = lbl_PAGOS
            Layout = tlCenter
          end
          object lbltot_saldo: TRLLabel
            Left = 636
            Top = 0
            Width = 82
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '
            Holder = lbl_saldo
            Layout = tlCenter
          end
        end
        object RLBand_rodape: TRLBand
          Left = 38
          Top = 119
          Width = 718
          Height = 16
          BandType = btColumnFooter
        end
      end
    end
  end
  object src_movdia: TDataSource
    DataSet = qr_movdia
    Left = 300
    Top = 32
  end
  object qr_movdia: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select NOME ||'#39' '#39'|| DESCMV ||'#39' '#39'||NUMDOC AS DESCMOV, NUMDOC2 AS ' +
        'FORMA'
      ',RECEBIDO, PAGOS '
      ',SUM( RECEBIDO-PAGOS ) '
      'OVER( ORDER BY RECEBIDO,PAGOS ROWS '
      'BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW ) ACUMULADO'
      '  from '
      '('
      
        'SELECT 00 AS COL,'#39'  '#39' AS NOME,'#39'CAIXA INICIAL'#39' AS DESCMV,'#39' '#39' AS N' +
        'UMDOC,'#39'DINHEIRO'#39' AS NUMDOC2'
      ',0 AS RECEBIDO'
      ',0 AS RECEBER'
      ',0 AS PAGOS'
      ',0 AS PAGAR'
      'FROM DUAL'
      'UNION'
      'Select ROWNUM AS COL,NOME,DESCMV,NUMDOC, NUMDOC2'
      
        ',CASE WHEN NVL(VALORR,0)<>0 AND NATDC='#39'C'#39' THEN VALORR ELSE 0 END' +
        ' AS RECEBIDO'
      
        ',CASE WHEN NVL(VALORR,0)=0 AND NATDC='#39'C'#39' THEN VALORP ELSE 0 END ' +
        'AS RECEBER'
      
        ',CASE WHEN NVL(VALORR,0)<>0 AND NATDC='#39'D'#39' THEN VALORR ELSE 0 END' +
        ' AS PAGOS'
      
        ',CASE WHEN NVL(VALORR,0)=0 AND NATDC='#39'D'#39' THEN VALORP ELSE 0  END' +
        ' AS PAGAR'
      'FROM CADLDR'
      ')')
    Left = 340
    Top = 32
    object qr_movdiaDESCMOV: TStringField
      FieldName = 'DESCMOV'
      Size = 137
    end
    object qr_movdiaFORMA: TStringField
      FieldName = 'FORMA'
      Size = 15
    end
    object qr_movdiaRECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
    end
    object qr_movdiaPAGOS: TFloatField
      FieldName = 'PAGOS'
    end
    object qr_movdiaACUMULADO: TFloatField
      FieldName = 'ACUMULADO'
    end
  end
end

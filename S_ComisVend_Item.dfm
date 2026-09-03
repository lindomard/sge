object Frm_ComisVend_Item: TFrm_ComisVend_Item
  Left = 66
  Top = 188
  Width = 854
  Height = 480
  Caption = 'Comiss'#227'o de Vendas de Vendedores Por '#205'tem'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 846
    Height = 449
    ActivePage = tsImpressao
    Align = alClient
    TabOrder = 0
    object tsImpressao: TTabSheet
      Caption = 'Op'#231#245'es para Impress'#227'o'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 838
        Height = 174
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object lbl_nome: TLabel
          Left = 52
          Top = 15
          Width = 120
          Height = 13
          Caption = 'C'#243'digo do Vendedor:'
        end
        object Label15: TLabel
          Left = 26
          Top = 34
          Width = 146
          Height = 13
          Caption = 'Referente ao Per'#237'odo de:'
        end
        object Label16: TLabel
          Left = 275
          Top = 32
          Width = 8
          Height = 13
          Caption = #224
        end
        object Label6: TLabel
          Left = 32
          Top = 53
          Width = 140
          Height = 13
          Caption = 'Percentual de comiss'#227'o:'
        end
        object Label3: TLabel
          Left = 58
          Top = 70
          Width = 110
          Height = 13
          Caption = 'Titulo do Relat'#243'rio:'
        end
        object Label37: TLabel
          Left = 92
          Top = 104
          Width = 78
          Height = 13
          Caption = 'Banco/Caixa:'
        end
        object edt_codven: TEdit
          Left = 173
          Top = 12
          Width = 85
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnExit = edt_codvenExit
          OnKeyPress = edt_codvenKeyPress
        end
        object edt_nomven: TEdit
          Left = 257
          Top = 12
          Width = 240
          Height = 19
          TabStop = False
          Color = 11796403
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object MDATAI: TMaskEdit
          Left = 173
          Top = 30
          Width = 85
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 2
          Text = '  /  /    '
          OnExit = MDATAIExit
        end
        object MDATAF: TMaskEdit
          Left = 308
          Top = 30
          Width = 85
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 3
          Text = '  /  /    '
          OnExit = MDATAFExit
        end
        object PCOMIS: TEdit
          Left = 173
          Top = 48
          Width = 85
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          OnExit = PCOMISExit
        end
        object OBS1: TEdit
          Left = 173
          Top = 66
          Width = 333
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
        end
        object OBS2: TEdit
          Left = 173
          Top = 84
          Width = 333
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
        end
        object bbSair: TBitBtn
          Left = 522
          Top = 145
          Width = 150
          Height = 25
          Cursor = crHandPoint
          Hint = 'Fecha Este Formul'#225'rio'#13#10'e Volta ao Menu Principal'
          Caption = '&Sair'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
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
          Left = 42
          Top = 144
          Width = 150
          Height = 21
          Cursor = crHandPoint
          Hint = 'Imprime os T'#237'tulos '#13#10'Selecionados'
          Caption = '&Imprimir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
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
        object CODBCO: TEdit
          Left = 173
          Top = 102
          Width = 60
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnExit = CODBCOExit
          OnKeyPress = CODBCOKeyPress
        end
        object lbx_codbco: TListBox
          Left = 232
          Top = 102
          Width = 274
          Height = 38
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnKeyDown = lbx_codbcoKeyDown
        end
        object OMITIR_BCO: TCheckBox
          Left = 173
          Top = 125
          Width = 56
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 174
        Width = 838
        Height = 247
        Align = alClient
        DataSource = Src_ComisVend
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'P1CODEMP'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P1CHAVE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P1TOTALL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P1CODCLI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P1NUMNF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P1NUMCF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDCOMIS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTPED2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tot_outvend'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RAZSOC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'documento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor_comis'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P1DATDOC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P1DATAP'
            Visible = True
          end>
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relat'#243'rio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = 0
        Top = 24
        Width = 794
        Height = 1123
        DataSource = Src_ComisVend
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object rlBand_CabIni: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 42
          BandType = btColumnHeader
          object RLDBText1: TRLDBText
            Left = 8
            Top = 3
            Width = 164
            Height = 16
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object RLSystemInfo_Pag: TRLSystemInfo
            Left = 611
            Top = 1
            Width = 75
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'Pagina:'
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 687
            Top = 1
            Width = 28
            Height = 16
            AutoSize = False
            Info = itPageNumber
            Text = '/'
          end
          object lbl_cabrel: TRLLabel
            Left = 7
            Top = 22
            Width = 146
            Height = 16
            Caption = 'Relatorio de Comiss'#245'es.'
          end
          object lbl_periodo: TRLLabel
            Left = 156
            Top = 22
            Width = 384
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Periodo de 01/05/2010 a 30/05/2010'
          end
          object lbl_dathor: TRLLabel
            Left = 542
            Top = 22
            Width = 172
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Data/Hora: 15/05/2010 15:20'
          end
        end
        object rl_cabobs: TRLBand
          Left = 38
          Top = 80
          Width = 718
          Height = 56
          BandType = btColumnHeader
          object lbl_obsl01: TRLLabel
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taCenter
          end
          object lbl_obsl02: TRLLabel
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taCenter
          end
          object lbl_vendedor: TRLLabel
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taCenter
          end
        end
        object rl_CabDet: TRLBand
          Left = 38
          Top = 136
          Width = 718
          Height = 16
          BandType = btColumnHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object lbl_Chave: TRLLabel
            Left = 4
            Top = 0
            Width = 60
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Chave'
            Layout = tlCenter
          end
          object lbl_documento: TRLLabel
            Left = 68
            Top = 0
            Width = 76
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Documento'
            Layout = tlCenter
          end
          object lbl_nomcli: TRLLabel
            Left = 144
            Top = 0
            Width = 232
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Layout = tlCenter
          end
          object lbl_vlrtot: TRLLabel
            Left = 449
            Top = 0
            Width = 86
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Valor Total'
            Layout = tlCenter
          end
          object lbl_basecomis: TRLLabel
            Left = 538
            Top = 0
            Width = 96
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Base Comiss'#227'o'
            Layout = tlCenter
          end
          object lbl_vlrcomis: TRLLabel
            Left = 635
            Top = 0
            Width = 82
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Vl Comiss'#227'o'
            Layout = tlCenter
          end
          object lbl_data: TRLLabel
            Left = 376
            Top = 0
            Width = 74
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Data Doc.'
            Layout = tlCenter
          end
        end
        object rl_Detalhe: TRLBand
          Left = 38
          Top = 152
          Width = 718
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AfterPrint = rl_DetalheAfterPrint
          object edt_Chave: TRLDBText
            Left = 4
            Top = 0
            Width = 60
            Height = 16
            AutoSize = False
            DataField = 'P1CHAVE'
            DataSource = Src_ComisVend
            Holder = lbl_Chave
            Layout = tlCenter
          end
          object edt_documento: TRLDBText
            Left = 68
            Top = 0
            Width = 76
            Height = 16
            AutoSize = False
            DataField = 'documento'
            DataSource = Src_ComisVend
            Holder = lbl_documento
            Layout = tlCenter
          end
          object edt_nomcli: TRLDBText
            Left = 144
            Top = 0
            Width = 232
            Height = 16
            AutoSize = False
            DataField = 'RAZSOC'
            DataSource = Src_ComisVend
            Holder = lbl_nomcli
            Layout = tlCenter
          end
          object edt_data: TRLDBText
            Left = 376
            Top = 0
            Width = 74
            Height = 16
            AutoSize = False
            DataField = 'datadoc'
            DataSource = Src_ComisVend
            Holder = lbl_data
            Layout = tlCenter
          end
          object edt_vlrtot: TRLDBText
            Left = 449
            Top = 0
            Width = 86
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'P1TOTALL'
            DataSource = Src_ComisVend
            Holder = lbl_vlrtot
            Layout = tlCenter
          end
          object edt_basecomis: TRLDBText
            Left = 538
            Top = 0
            Width = 96
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTPED2'
            DataSource = Src_ComisVend
            Holder = lbl_basecomis
            Layout = tlCenter
          end
          object edt_vlrcomis: TRLDBText
            Left = 635
            Top = 0
            Width = 82
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'valor_comis'
            DataSource = Src_ComisVend
            Holder = lbl_vlrcomis
            Layout = tlCenter
          end
        end
        object rlRodape: TRLBand
          Left = 38
          Top = 184
          Width = 718
          Height = 16
          BandType = btSummary
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = rlRodapeBeforePrint
          object tot_vlrcomis: TRLLabel
            Left = 635
            Top = 0
            Width = 82
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Vl Comiss'#227'o'
            Holder = lbl_vlrcomis
            Layout = tlCenter
          end
          object tot_nomcli: TRLLabel
            Left = 144
            Top = 0
            Width = 232
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Total da Comiss'#227'o:'
            Holder = lbl_nomcli
            Layout = tlCenter
          end
        end
        object RLBand1: TRLBand
          Left = 38
          Top = 168
          Width = 718
          Height = 16
          BandType = btColumnFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
        end
      end
    end
  end
  object Qr_ComisVend: TQuery
    OnCalcFields = Qr_ComisVendCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select P1CODEMP,P1CHAVE,P1ORDEM,P1LOTSEQ, P1CODVEN,P1TOTALL,P1CO' +
        'DCLI'
      ',P1DATDOC,P1DATAP'
      ',CRAZAO AS RAZSOC,P1NUMNF,P1NUMCF'
      ',max(P2CODVEN) VENDCOMIS,sum(P2TOTLIQ) AS TOTPED2'
      'FROM CADP01,CADP02,CADCLI'
      'WHERE P2CODEMP=P1CODEMP'
      'AND P2CHAVE=P1CHAVE'
      'AND P2ORDEM=P1ORDEM'
      'AND P2LOTSEQ=P1LOTSEQ'
      'AND'
      'P1DATAP>='#39'01/11/2010'#39
      ' AND P1DATAP<='#39'01/11/2011'#39
      ' AND ( (P1CODVEN=4 and P2CODVEN=0) OR (P2CODVEN=4))'
      ' and CCODCLI=P1CODCLI'
      
        'GROUP BY P1CODEMP,P1CHAVE,P1ORDEM,P1LOTSEQ, P1CODVEN,P1TOTALL,P1' +
        'CODCLI'
      ',CRAZAO,P1NUMNF,P1NUMCF,P1DATDOC,P1DATAP')
    Left = 252
    Top = 216
    object Qr_ComisVendP1CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'P1CODEMP'
      Origin = 'SG_ASSOC.CADP01.P1CODEMP'
    end
    object Qr_ComisVendP1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Qr_ComisVendP1ORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'P1ORDEM'
      Origin = 'SG_ASSOC.CADP01.P1ORDEM'
    end
    object Qr_ComisVendP1LOTSEQ: TFloatField
      DisplayLabel = 'Lot Seq'
      FieldName = 'P1LOTSEQ'
      Origin = 'SG_ASSOC.CADP01.P1LOTSEQ'
    end
    object Qr_ComisVendP1CODVEN: TFloatField
      DisplayLabel = 'C'#243'd. Vend'
      FieldName = 'P1CODVEN'
      Origin = 'SG_ASSOC.CADP01.P1CODVEN'
    end
    object Qr_ComisVendP1TOTALL: TFloatField
      DisplayLabel = 'Total Liquido'
      FieldName = 'P1TOTALL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Qr_ComisVendP1CODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Qr_ComisVendP1NUMNF: TFloatField
      DisplayLabel = 'N'#250'mero NF'
      FieldName = 'P1NUMNF'
      Origin = 'SG_ASSOC.CADP01.P1NUMNF'
    end
    object Qr_ComisVendP1NUMCF: TFloatField
      DisplayLabel = 'N'#250'mero CF'
      FieldName = 'P1NUMCF'
      Origin = 'SG_ASSOC.CADP01.P1NUMCF'
    end
    object Qr_ComisVendVENDCOMIS: TFloatField
      DisplayLabel = 'Vend.Venda'
      FieldName = 'VENDCOMIS'
      Origin = 'SG_ASSOC.CADP02.P2CODVEN'
    end
    object Qr_ComisVendTOTPED2: TFloatField
      DisplayLabel = 'Total do '#205'tem'
      FieldName = 'TOTPED2'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object Qr_ComisVendtot_outvend: TFloatField
      DisplayLabel = 'Tot.Out.Vend'
      FieldKind = fkCalculated
      FieldName = 'tot_outvend'
      Calculated = True
    end
    object Qr_ComisVendRAZSOC: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'RAZSOC'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 60
    end
    object Qr_ComisVenddocumento: TStringField
      FieldKind = fkCalculated
      FieldName = 'documento'
      Size = 12
      Calculated = True
    end
    object Qr_ComisVendvalor_comis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valor_comis'
      Calculated = True
    end
    object Qr_ComisVendP1DATDOC: TDateTimeField
      FieldName = 'P1DATDOC'
      Origin = 'SG_ASSOC.CADP01.P1DATDOC'
    end
    object Qr_ComisVendP1DATAP: TDateTimeField
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Qr_ComisVenddatadoc: TStringField
      FieldKind = fkCalculated
      FieldName = 'datadoc'
      Size = 10
      Calculated = True
    end
  end
  object Src_ComisVend: TDataSource
    DataSet = Qr_ComisVend
    Left = 572
    Top = 72
  end
end

object Frm_Extrato_Produtos: TFrm_Extrato_Produtos
  Left = 60
  Top = 154
  Width = 1021
  Height = 467
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Extrato de Produtos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1013
    Height = 436
    ActivePage = TsIndividual
    Align = alClient
    TabOrder = 0
    TabStop = False
    object TsIndividual: TTabSheet
      Caption = 'Extrato Individual por Item'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1005
        Height = 112
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 22
          Top = 7
          Width = 110
          Height = 13
          Caption = 'C'#243'digo do Produto:'
          Color = clBtnFace
          ParentColor = False
        end
        object Label2: TLabel
          Left = 273
          Top = 7
          Width = 128
          Height = 13
          Caption = 'Descricao do Produto:'
        end
        object Label3: TLabel
          Left = 57
          Top = 52
          Width = 70
          Height = 13
          Caption = 'Data Inicial:'
          Color = clBtnFace
          ParentColor = False
        end
        object Label4: TLabel
          Left = 225
          Top = 52
          Width = 63
          Height = 13
          Caption = 'Data Final:'
        end
        object Label18: TLabel
          Left = 72
          Top = 28
          Width = 51
          Height = 13
          Caption = 'Estoque:'
        end
        object Label10: TLabel
          Left = 753
          Top = 7
          Width = 37
          Height = 13
          Caption = 'Saldo:'
        end
        object edt_codpro: TEdit
          Left = 136
          Top = 4
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = edt_codproEnter
          OnExit = edt_codproExit
          OnKeyPress = edt_codproKeyPress
        end
        object NOMPRO: TEdit
          Left = 408
          Top = 4
          Width = 333
          Height = 19
          TabStop = False
          Ctl3D = False
          ParentColor = True
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object MDT1: TMaskEdit
          Left = 136
          Top = 50
          Width = 80
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 3
          Text = '  /  /    '
          OnExit = MDT1Exit
        end
        object MDT2: TMaskEdit
          Left = 293
          Top = 50
          Width = 80
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 4
          Text = '  /  /    '
          OnExit = MDT2Exit
        end
        object cb_estoque: TComboBox
          Left = 136
          Top = 24
          Width = 433
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          Text = 'cb_estoque'
        end
        object SALDO: TStaticText
          Left = 800
          Top = 5
          Width = 100
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 5
        end
        object cb_mostrar_sql: TCheckBox
          Left = 624
          Top = 72
          Width = 97
          Height = 17
          Caption = 'Mostrar SQL'
          TabOrder = 6
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 112
        Width = 1005
        Height = 255
        Align = alClient
        DataSource = src_cadest_mov
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'CMP_DATHOR'
            Width = 134
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMP_FILIAL'
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOCAL_ARMAZEM'
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMP_SALDO_ANT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_SAI'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_ENT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMP_SALDO_ATU'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMP_CHAVE'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOCORI'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBSERVACOES'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMP_ITEM'
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMP_DOCORI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMP_ESTNOR'
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 367
        Width = 1005
        Height = 41
        Align = alBottom
        TabOrder = 2
        object bbSair: TBitBtn
          Left = 266
          Top = 2
          Width = 132
          Height = 36
          Cursor = crHandPoint
          Caption = '&Sair'
          TabOrder = 0
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
        object bbAtualizar: TBitBtn
          Left = 1
          Top = 2
          Width = 132
          Height = 36
          Cursor = crHandPoint
          Caption = '&Atualizar'
          TabOrder = 1
          OnClick = bbAtualizarClick
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
      end
    end
  end
  object qr_cadest_mov: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT CMP_FILIAL,CMP_CHAVE_ANO,CMP_CHAVE,CMP_ITEM,CMP_DOCORI,'
      #39'PEDIDO DE VENDA'#39' AS DOCORI,'
      'CMP_CODPRO,CMP_DATHOR'
      ',SUBSTR( (CASE WHEN NVL(CMP_TIPOPROD,0)=0 THEN CMP_OBSERVACAO'
      
        ' WHEN CMP_TIPOPROD=3 THEN '#39'LOTE: '#39' || CMP_LOTE || '#39' '#39' ||  CMP_OB' +
        'SERVACAO'
      
        ' WHEN CMP_TIPOPROD=4 THEN '#39'SERIE: '#39' || CMP_SERIE || '#39' '#39' || CMP_O' +
        'BSERVACAO'
      ' ELSE CMP_OBSERVACAO END ),1,200)AS OBSERVACOES'
      ' ,CMP_ESTNOR'
      ' ,CMP_SALDO_ANT'
      ',DECODE(CMP_ESTNOR,'#39'S'#39',CMP_QTD,0) AS QTD_SAI'
      ',DECODE(CMP_ESTNOR,'#39'E'#39',CMP_QTD,0) AS QTD_ENT'
      ' ,CMP_SALDO_ATU'
      
        ',(SELECT CFNOME FROM CADPRO_FILIAL WHERE CFFILIAL(+)=CMP_FILIAL)' +
        ' AS LOCAL_ARMAZEM'
      ',ROWNUM AS POSICAO'
      'FROM CADMOV_PROD ORDER BY CMP_DATHOR DESC')
    Left = 628
    Top = 304
    object qr_cadest_movCMP_FILIAL: TFloatField
      DisplayLabel = 'Filial'
      FieldName = 'CMP_FILIAL'
    end
    object qr_cadest_movLOCAL_ARMAZEM: TStringField
      DisplayLabel = 'Local Mercadoria'
      FieldName = 'LOCAL_ARMAZEM'
      Size = 60
    end
    object qr_cadest_movCMP_CHAVE_ANO: TFloatField
      DisplayLabel = 'Lot Seq'
      FieldName = 'CMP_CHAVE_ANO'
    end
    object qr_cadest_movCMP_CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'CMP_CHAVE'
    end
    object qr_cadest_movCMP_ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'CMP_ITEM'
    end
    object qr_cadest_movCMP_DOCORI: TFloatField
      DisplayLabel = 'Doc.Origem'
      FieldName = 'CMP_DOCORI'
    end
    object qr_cadest_movCMP_CODPRO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CMP_CODPRO'
    end
    object qr_cadest_movCMP_DATHOR: TDateTimeField
      DisplayLabel = 'Data e Hora Evento'
      FieldName = 'CMP_DATHOR'
    end
    object qr_cadest_movCMP_ESTNOR: TStringField
      DisplayLabel = 'Tipo Mov'
      FieldName = 'CMP_ESTNOR'
      Size = 1
    end
    object qr_cadest_movCMP_SALDO_ANT: TFloatField
      DisplayLabel = 'Saldo Anterior'
      FieldName = 'CMP_SALDO_ANT'
    end
    object qr_cadest_movQTD_SAI: TFloatField
      DisplayLabel = 'Saidas'
      FieldName = 'QTD_SAI'
    end
    object qr_cadest_movQTD_ENT: TFloatField
      DisplayLabel = 'Entradas'
      FieldName = 'QTD_ENT'
    end
    object qr_cadest_movCMP_SALDO_ATU: TFloatField
      DisplayLabel = 'Saldo Atual'
      FieldName = 'CMP_SALDO_ATU'
    end
    object qr_cadest_movPOSICAO: TFloatField
      FieldName = 'POSICAO'
    end
    object qr_cadest_movOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 200
    end
    object qr_cadest_movDOCORI: TStringField
      DisplayLabel = 'Origem do Movimento'
      FieldName = 'DOCORI'
      FixedChar = True
      Size = 15
    end
  end
  object src_cadest_mov: TDataSource
    DataSet = qr_cadest_mov
    Left = 660
    Top = 304
  end
end

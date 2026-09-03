object Frm_Cli_Debitos: TFrm_Cli_Debitos
  Left = 1
  Top = 63
  Width = 789
  Height = 543
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'D'#233'bitos de Clientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GB_TITULOS_LOCAIS: TGroupBox
    Left = 0
    Top = 144
    Width = 781
    Height = 137
    Align = alTop
    Caption = 'Titulos desta Empresa:'
    TabOrder = 0
    object Panel_total: TPanel
      Left = 2
      Top = 116
      Width = 777
      Height = 19
      Align = alBottom
      TabOrder = 0
    end
    object DBGrid_dar_local: TDBGrid
      Left = 2
      Top = 15
      Width = 777
      Height = 101
      Align = alClient
      DataSource = src_dar_local
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid_dar_localDrawColumnCell
      OnDblClick = DBGrid_dar_localDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'numero'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'parcela'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CTDTVCTO'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRDTEMIS'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cobranca'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRVALOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCONTOS'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JUROSMULTA'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALDEB'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALCRE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDO'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SELECIONADO'
          Width = 26
          Visible = True
        end>
    end
  end
  object Panel1_cabecalho: TPanel
    Left = 0
    Top = 0
    Width = 781
    Height = 144
    Align = alTop
    TabOrder = 1
    object lbl_razao: TLabel
      Left = 1
      Top = 1
      Width = 779
      Height = 20
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'lbl_razao'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_ender_comp: TLabel
      Left = 1
      Top = 21
      Width = 779
      Height = 20
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'lbl_razao'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_contato: TLabel
      Left = 1
      Top = 41
      Width = 779
      Height = 20
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'lbl_razao'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_ultcpr: TLabel
      Left = 4
      Top = 84
      Width = 90
      Height = 13
      Caption = #218'ltima Compra.:'
    end
    object lbl_dtucompra: TLabel
      Left = 97
      Top = 85
      Width = 100
      Height = 13
      AutoSize = False
      Color = 8454016
      ParentColor = False
    end
    object Label23: TLabel
      Left = 222
      Top = 84
      Width = 100
      Height = 13
      Caption = 'Primeira Compra.:'
    end
    object lbl_pcompra: TLabel
      Left = 323
      Top = 85
      Width = 100
      Height = 13
      AutoSize = False
      Color = 8454016
      ParentColor = False
    end
    object Label35: TLabel
      Left = 451
      Top = 84
      Width = 82
      Height = 13
      Caption = 'Maior Compra:'
    end
    object lbl_vlrmaiorcompra: TLabel
      Left = 536
      Top = 84
      Width = 100
      Height = 13
      AutoSize = False
      Color = 8454016
      ParentColor = False
    end
    object Label37: TLabel
      Left = 5
      Top = 102
      Width = 244
      Height = 13
      Caption = 'M'#233'dia de Compra Mensal Ultimo 12 Meses:'
    end
    object lbl_medcompramen: TLabel
      Left = 258
      Top = 102
      Width = 80
      Height = 13
      AutoSize = False
      Color = 8454016
      ParentColor = False
    end
    object Label26: TLabel
      Left = 4
      Top = 120
      Width = 100
      Height = 13
      Caption = 'Limite de Cr'#233'dito:'
    end
    object lbl_lcred: TLabel
      Left = 105
      Top = 119
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Color = 8454016
      ParentColor = False
    end
    object Label34: TLabel
      Left = 186
      Top = 119
      Width = 64
      Height = 13
      Caption = 'Disponivel:'
    end
    object lbl_limdisp: TLabel
      Left = 258
      Top = 119
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Color = 8454016
      ParentColor = False
    end
    object BBAPLICAR: TBitBtn
      Left = 350
      Top = 102
      Width = 120
      Height = 30
      Caption = '&Aplicar'
      TabOrder = 0
      OnClick = BBAPLICARClick
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
    object BBSAIR: TBitBtn
      Left = 517
      Top = 102
      Width = 120
      Height = 30
      Caption = '&Sair'
      TabOrder = 1
      OnClick = BBSAIRClick
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
  object PageControl1: TPageControl
    Left = 0
    Top = 286
    Width = 781
    Height = 226
    ActivePage = tsGeral
    Align = alBottom
    TabOrder = 2
    object tsGeral: TTabSheet
      Caption = 'Dados Gerais'
      object GB_OUTRASFILIAIS: TGroupBox
        Left = 0
        Top = 0
        Width = 773
        Height = 137
        Align = alTop
        Caption = 'Titulos de Outras Filiais:'
        TabOrder = 0
        object Panel1: TPanel
          Left = 2
          Top = 114
          Width = 769
          Height = 21
          Align = alBottom
          TabOrder = 0
          object bbOutrasFiliais: TBitBtn
            Left = 3
            Top = -2
            Width = 161
            Height = 22
            Caption = 'Atualizar T'#237'tulos'
            TabOrder = 0
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
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 769
          Height = 99
          Align = alClient
          DataSource = src_dar_local
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'numero'
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'parcela'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CTDTVCTO'
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CRDTEMIS'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cobranca'
              Width = 67
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CRVALOR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTOS'
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'JUROSMULTA'
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALDEB'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALCRE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SALDO'
              Width = 69
              Visible = True
            end>
        end
      end
    end
    object tsFiliais: TTabSheet
      Caption = 'Filiais'
      ImageIndex = 1
      object DBGrid_local_filial: TDBGrid
        Left = 0
        Top = 0
        Width = 773
        Height = 198
        Align = alClient
        DataSource = src_parlcd
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGrid_local_filialDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'LOCAL_FILIAL'
            Width = 661
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SELECIONADO'
            Width = 60
            Visible = True
          end>
      end
    end
  end
  object Query_dar_local: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT CRNUMERO,CRDESD,CRDTEMIS,CRDUP,CRDTVCTO,'
      'CRDTPAG,  CRVALOR,CRJURD,CRVALPAG,CRDESCF, CRDESCD,'
      'CRQTDDM, CRDTDESCF,CRQTDPARC,CRNUMPARC,CRMULTA,'
      'CRNPED,CRORDEM,CRLOTSEQ_CP,  '
      
        'DECODE(BCBANCO,null,'#39'CARTEIRA'#39',0, '#39'CARTEIRA'#39',BCBANCO) AS COBRANC' +
        'A  '
      'FROM CADDAR,CADBCO              where ((BCCODEMP=1))  and  '
      '      (BCCODEMP(+)=CRCODEMP) and BCCODBCO(+)=CRCODBCO '
      'and  CRSTATUS<2 '
      ' and CRCODCLI=0558')
    Left = 512
    Top = 8
    object Query_dar_localCRNUMERO: TFloatField
      FieldName = 'CRNUMERO'
    end
    object Query_dar_localCRDESD: TStringField
      FieldName = 'CRDESD'
      Size = 2
    end
    object Query_dar_localCRDTEMIS: TDateTimeField
      FieldName = 'CRDTEMIS'
    end
    object Query_dar_localCRDUP: TFloatField
      FieldName = 'CRDUP'
    end
    object Query_dar_localCRDTVCTO: TDateTimeField
      FieldName = 'CRDTVCTO'
    end
    object Query_dar_localCRDTPAG: TDateTimeField
      FieldName = 'CRDTPAG'
    end
    object Query_dar_localCRVALOR: TFloatField
      FieldName = 'CRVALOR'
    end
    object Query_dar_localCRJURD: TFloatField
      FieldName = 'CRJURD'
    end
    object Query_dar_localCRVALPAG: TFloatField
      FieldName = 'CRVALPAG'
    end
    object Query_dar_localCRDESCF: TFloatField
      FieldName = 'CRDESCF'
    end
    object Query_dar_localCRDESCD: TFloatField
      FieldName = 'CRDESCD'
    end
    object Query_dar_localCRQTDDM: TFloatField
      FieldName = 'CRQTDDM'
    end
    object Query_dar_localCRDTDESCF: TDateTimeField
      FieldName = 'CRDTDESCF'
    end
    object Query_dar_localCRQTDPARC: TFloatField
      FieldName = 'CRQTDPARC'
    end
    object Query_dar_localCRNUMPARC: TFloatField
      FieldName = 'CRNUMPARC'
    end
    object Query_dar_localCRMULTA: TFloatField
      FieldName = 'CRMULTA'
    end
    object Query_dar_localCRNPED: TFloatField
      FieldName = 'CRNPED'
    end
    object Query_dar_localCRORDEM: TFloatField
      FieldName = 'CRORDEM'
    end
    object Query_dar_localCRLOTSEQ_CP: TFloatField
      FieldName = 'CRLOTSEQ_CP'
    end
    object Query_dar_localCOBRANCA: TStringField
      FieldName = 'COBRANCA'
      Size = 40
    end
  end
  object src_dar_local: TDataSource
    DataSet = mem_caddar_local
    Left = 576
    Top = 17
  end
  object mem_caddar_local: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CRNUMERO'
        DataType = ftFloat
      end
      item
        Name = 'CRDESD'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CRDTEMIS'
        DataType = ftDateTime
      end
      item
        Name = 'CTDTVCTO'
        DataType = ftDateTime
      end
      item
        Name = 'CRDTPAG'
        DataType = ftDateTime
      end
      item
        Name = 'CRVALOR'
        DataType = ftFloat
      end
      item
        Name = 'CRDTDESCF'
        DataType = ftDateTime
      end
      item
        Name = 'parcela'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CRNPED'
        DataType = ftFloat
      end
      item
        Name = 'CRORDEM'
        DataType = ftFloat
      end
      item
        Name = 'CRLOTSEQ_CP'
        DataType = ftFloat
      end
      item
        Name = 'cobranca'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CRDUP'
        DataType = ftFloat
      end
      item
        Name = 'numero'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VALDEB'
        DataType = ftFloat
      end
      item
        Name = 'VALCRE'
        DataType = ftFloat
      end
      item
        Name = 'SALDO'
        DataType = ftFloat
      end
      item
        Name = 'DESCONTOS'
        DataType = ftFloat
      end
      item
        Name = 'JUROSMULTA'
        DataType = ftFloat
      end
      item
        Name = 'SELECIONADO'
        DataType = ftString
        Size = 1
      end>
    Left = 640
    Top = 24
    object mem_caddar_localCRNUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CRNUMERO'
    end
    object mem_caddar_localCRDESD: TStringField
      FieldName = 'CRDESD'
      Size = 2
    end
    object mem_caddar_localCRDTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'CRDTEMIS'
    end
    object mem_caddar_localCTDTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'CTDTVCTO'
    end
    object mem_caddar_localCRDTPAG: TDateTimeField
      FieldName = 'CRDTPAG'
    end
    object mem_caddar_localCRVALOR: TFloatField
      DisplayLabel = 'Valor Original'
      FieldName = 'CRVALOR'
    end
    object mem_caddar_localCRDTDESCF: TDateTimeField
      FieldName = 'CRDTDESCF'
    end
    object mem_caddar_localparcela: TStringField
      DisplayLabel = 'Parc.'
      FieldName = 'parcela'
    end
    object mem_caddar_localCRNPED: TFloatField
      FieldName = 'CRNPED'
    end
    object mem_caddar_localCRORDEM: TFloatField
      FieldName = 'CRORDEM'
    end
    object mem_caddar_localCRLOTSEQ_CP: TFloatField
      FieldName = 'CRLOTSEQ_CP'
    end
    object mem_caddar_localCRDUP: TFloatField
      FieldName = 'CRDUP'
    end
    object mem_caddar_localnumero: TStringField
      FieldName = 'numero'
      Size = 10
    end
    object mem_caddar_localVALDEB: TFloatField
      DisplayLabel = 'D'#233'bito'
      FieldName = 'VALDEB'
    end
    object mem_caddar_localVALCRE: TFloatField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'VALCRE'
    end
    object mem_caddar_localSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
    end
    object mem_caddar_localDESCONTOS: TFloatField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
    end
    object mem_caddar_localJUROSMULTA: TFloatField
      DisplayLabel = 'Juros/Multa'
      FieldName = 'JUROSMULTA'
    end
    object mem_caddar_localcobranca: TStringField
      DisplayLabel = 'Cobran'#231'a'
      FieldName = 'cobranca'
    end
    object mem_caddar_localSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Size = 1
    end
  end
  object mem_caddar_outfil: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CRNUMERO'
        DataType = ftFloat
      end
      item
        Name = 'CRDESD'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CRDTEMIS'
        DataType = ftDateTime
      end
      item
        Name = 'CTDTVCTO'
        DataType = ftDateTime
      end
      item
        Name = 'CRDTPAG'
        DataType = ftDateTime
      end
      item
        Name = 'CRVALOR'
        DataType = ftFloat
      end
      item
        Name = 'CRDTDESCF'
        DataType = ftDateTime
      end
      item
        Name = 'parcela'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CRNPED'
        DataType = ftFloat
      end
      item
        Name = 'CRORDEM'
        DataType = ftFloat
      end
      item
        Name = 'CRLOTSEQ_CP'
        DataType = ftFloat
      end
      item
        Name = 'cobranca'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CRDUP'
        DataType = ftFloat
      end
      item
        Name = 'numero'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VALDEB'
        DataType = ftFloat
      end
      item
        Name = 'VALCRE'
        DataType = ftFloat
      end
      item
        Name = 'SALDO'
        DataType = ftFloat
      end
      item
        Name = 'DESCONTOS'
        DataType = ftFloat
      end
      item
        Name = 'JUROSMULTA'
        DataType = ftFloat
      end>
    Left = 640
    Top = 88
    object FloatField1: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CRNUMERO'
    end
    object StringField1: TStringField
      FieldName = 'CRDESD'
      Size = 2
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'CRDTEMIS'
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'CTDTVCTO'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'CRDTPAG'
    end
    object FloatField2: TFloatField
      DisplayLabel = 'Valor Original'
      FieldName = 'CRVALOR'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'CRDTDESCF'
    end
    object StringField2: TStringField
      DisplayLabel = 'Parc.'
      FieldName = 'parcela'
    end
    object FloatField3: TFloatField
      FieldName = 'CRNPED'
    end
    object FloatField4: TFloatField
      FieldName = 'CRORDEM'
    end
    object FloatField5: TFloatField
      FieldName = 'CRLOTSEQ_CP'
    end
    object FloatField6: TFloatField
      FieldName = 'CRDUP'
    end
    object StringField3: TStringField
      FieldName = 'numero'
      Size = 10
    end
    object FloatField7: TFloatField
      DisplayLabel = 'D'#233'bito'
      FieldName = 'VALDEB'
    end
    object FloatField8: TFloatField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'VALCRE'
    end
    object FloatField9: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
    end
    object FloatField10: TFloatField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
    end
    object FloatField11: TFloatField
      DisplayLabel = 'Juros/Multa'
      FieldName = 'JUROSMULTA'
    end
    object StringField4: TStringField
      DisplayLabel = 'Cobran'#231'a'
      FieldName = 'cobranca'
    end
  end
  object mem_parlcd: TRxMemoryData
    FieldDefs = <
      item
        Name = 'LOCAL_FILIAL'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'SELECIONADO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ORDEM'
        DataType = ftInteger
      end>
    Left = 680
    Top = 96
    object mem_parlcdLOCAL_FILIAL: TStringField
      DisplayLabel = 'Descri'#231#227'o da Filial'
      FieldName = 'LOCAL_FILIAL'
      Size = 100
    end
    object mem_parlcdSELECIONADO: TStringField
      DisplayLabel = 'Conectar'
      FieldName = 'SELECIONADO'
      Size = 1
    end
    object mem_parlcdORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
  end
  object src_parlcd: TDataSource
    DataSet = mem_parlcd
    Left = 704
    Top = 96
  end
end

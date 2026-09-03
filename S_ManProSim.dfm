object Frm_ManProSim: TFrm_ManProSim
  Left = 38
  Top = 18
  Width = 693
  Height = 428
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Manipula'#231#227'o de Produtos Simplificada'
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
    Width = 677
    Height = 349
    ActivePage = tsManipular
    Align = alClient
    Style = tsButtons
    TabOrder = 0
    OnChange = PageControl1Change
    object tsManipular: TTabSheet
      Caption = 'Manipula'#231#227'o'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 669
        Height = 318
        Align = alClient
        Caption = 'Altera'#231#227'o Simplificada'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 292
          Width = 667
          Height = 25
          DataSource = Src_Pro
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel]
          Align = alBottom
          TabOrder = 0
        end
        object DBGrid1: TDBGrid
          Left = 1
          Top = 14
          Width = 667
          Height = 278
          Align = alClient
          DataSource = Src_Pro
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColExit = DBGrid1ColExit
          OnExit = DBGrid1Exit
          OnKeyPress = DBGrid1KeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'PDCODPRO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDCODBAR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDCODBAR_EMBPAD'
              Width = 151
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDNOME'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDNOME2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDMARCA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDCODFOR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDNOMFOR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDCODGRU'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDNOMGRU'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDCODCON'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDNOMCON'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDCODRAM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDCODTIP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDNOMRAM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDNOMTIP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDPRECO1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDPRECO2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDPRECO3'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDPMC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDDESC1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDPRAZO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDDESFIN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDSIT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDUND'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDESTMAX'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDESTMIN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDFRACAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDLISTA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDPCOFAB'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDTABICM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDIPI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDREGMS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDCLAS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDSECAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDEMBPAD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDEMBMUL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDCOMIS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDPESOB'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDPESOL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDDESC2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDDESC3'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDQTDP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDCURVA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDPRECOC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDPCOMC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDUCPR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDEMBPAD2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDCODPROC'
              Visible = True
            end>
        end
      end
    end
    object tsConfiguracao: TTabSheet
      Caption = 'Configura'#231#227'o'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 382
        Width = 689
        Height = 41
        Align = alBottom
        TabOrder = 0
        object bbSalvar: TBitBtn
          Left = 262
          Top = 3
          Width = 165
          Height = 35
          Cursor = crHandPoint
          Caption = '&Salvar Como Padrao'
          TabOrder = 0
          OnClick = bbSalvarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
            00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
            00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
            00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
            0003737FFFFFFFFF7F7330099999999900333777777777777733}
          NumGlyphs = 2
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 689
        Height = 382
        Align = alClient
        Caption = 'Colunas:'
        TabOrder = 1
        object STG1: TStringGrid
          Left = 2
          Top = 15
          Width = 685
          Height = 365
          Align = alClient
          ColCount = 4
          DefaultRowHeight = 15
          RowCount = 25
          FixedRows = 0
          TabOrder = 0
          OnDblClick = STG1DblClick
          OnRowMoved = STG1RowMoved
          ColWidths = (
            383
            74
            64
            64)
          RowHeights = (
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15)
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 349
    Width = 677
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn2: TBitBtn
      Left = 266
      Top = 4
      Width = 165
      Height = 35
      Cursor = crHandPoint
      Caption = 'Sair'
      TabOrder = 0
      OnClick = BitBtn2Click
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
  object Tb_Pro: TQuery
    CachedUpdates = True
    BeforePost = Tb_ProBeforePost
    AfterPost = Tb_ProAfterPost
    BeforeDelete = Tb_ProBeforeDelete
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PDCODPRO,PDCODBAR,PDCODBAR_EMBPAD,PDNOME,PDNOME2,'
      'PDUND,'
      'PDMARCA,PDCODFOR,PDNOMFOR,'
      'PDPRECO1,PDPRECO2,PDPRECO3,'
      'PDPMC,PDDESC1,PDDESC2,PDDESC3,'
      'PDQTDP,PDPRAZO,PDDESFIN,PDSIT,'
      'PDCURVA,'
      'PDCODGRU,PDCODCON,'
      'PDNOMCON,'
      'PDCODRAM,PDNOMRAM,PDCODTIP, PDNOMTIP'
      'PDESTMAX,PDESTMIN,PDFRACAO,'
      'PDLISTA,PDPRECOC,PDPCOMC,PDPCOFAB,'
      'PDTABICM,PDIPI,PDREGMS,PDCLAS,PDSECAO,'
      'PDEMBPAD,PDEMBMUL,PDCOMIS,PDUCPR,'
      'PDEMBPAD2,PDCODPROC,'
      'PDPESOB,PDPESOL'
      'FROM CADPRO')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Pro
    Left = 581
    Top = 217
    object Tb_ProPDCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Tb_ProPDCODBAR: TFloatField
      DisplayLabel = 'C'#243'digo Barras'
      FieldName = 'PDCODBAR'
      Origin = 'SG_ASSOC.CADPRO.PDCODBAR'
    end
    object Tb_ProPDCODBAR_EMBPAD: TStringField
      DisplayLabel = 'Codigo de Barras Cx.Fechada'
      FieldName = 'PDCODBAR_EMBPAD'
      Origin = 'SG_ASSOC.CADPRO.PDCODBAR_EMBPAD'
      Size = 50
    end
    object Tb_ProPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Tb_ProPDNOME2: TStringField
      DisplayLabel = 'Descri'#231#227'o 2(Nome Generico)'
      FieldName = 'PDNOME2'
      Origin = 'SG_ASSOC.CADPRO.PDNOME2'
      Size = 40
    end
    object Tb_ProPDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Tb_ProPDCODFOR: TFloatField
      DisplayLabel = 'Fornecedor'
      FieldName = 'PDCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDCODFOR'
    end
    object Tb_ProPDNOMFOR: TStringField
      DisplayLabel = 'Nome do Fornecedor'
      FieldName = 'PDNOMFOR'
      Origin = 'SG_ASSOC.CADPRO.PDNOMFOR'
      Size = 40
    end
    object Tb_ProPDCODGRU: TFloatField
      DisplayLabel = 'C'#243'd.Grupo'
      FieldName = 'PDCODGRU'
      Origin = 'SG_ASSOC.CADPRO.PDCODGRU'
    end
    object Tb_ProPDNOMGRU: TStringField
      DisplayLabel = 'Nome do Grupo'
      FieldName = 'PDNOMGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMGRU'
      Size = 40
    end
    object Tb_ProPDCODCON: TFloatField
      DisplayLabel = 'C'#243'd.Controle'
      FieldName = 'PDCODCON'
      Origin = 'SG_ASSOC.CADPRO.PDCODCON'
    end
    object Tb_ProPDNOMCON: TStringField
      DisplayLabel = 'Nome do Controle'
      FieldName = 'PDNOMCON'
      Origin = 'SG_ASSOC.CADPRO.PDNOMCON'
      Size = 40
    end
    object Tb_ProPDCODRAM: TFloatField
      DisplayLabel = 'Cod.Ramo'
      FieldName = 'PDCODRAM'
      Origin = 'SG_ASSOC.CADPRO.PDCODRAM'
    end
    object Tb_ProPDNOMRAM: TStringField
      DisplayLabel = 'Nome do Ramo'
      FieldName = 'PDNOMRAM'
      Origin = 'SG_ASSOC.CADPRO.PDNOMRAM'
      Size = 40
    end
    object Tb_ProPDCODTIP: TFloatField
      DisplayLabel = 'C'#243'd.Tipo'
      FieldName = 'PDCODTIP'
      Origin = 'SG_ASSOC.CADPRO.PDCODTIP'
    end
    object Tb_ProPDNOMTIP: TStringField
      DisplayLabel = 'Nome do Tipo'
      FieldName = 'PDNOMTIP'
      Origin = 'SG_ASSOC.CADPRO.PDNOMTIP'
      Size = 40
    end
    object Tb_ProPDPRECO1: TFloatField
      DisplayLabel = 'Pre'#231'o 1'
      FieldName = 'PDPRECO1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Tb_ProPDPRECO2: TFloatField
      DisplayLabel = 'Pre'#231'o 2'
      FieldName = 'PDPRECO2'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO2'
    end
    object Tb_ProPDPRECO3: TFloatField
      DisplayLabel = 'Pre'#231'o 3'
      FieldName = 'PDPRECO3'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO3'
    end
    object Tb_ProPDPMC: TFloatField
      DisplayLabel = 'Pre'#231'o M'#225'ximo'
      FieldName = 'PDPMC'
      Origin = 'SG_ASSOC.CADPRO.PDPMC'
    end
    object Tb_ProPDDESC1: TFloatField
      DisplayLabel = 'Desconto 1'
      FieldName = 'PDDESC1'
      Origin = 'SG_ASSOC.CADPRO.PDDESC1'
    end
    object Tb_ProPDPRAZO: TFloatField
      DisplayLabel = 'Prazo'
      FieldName = 'PDPRAZO'
      Origin = 'SG_ASSOC.CADPRO.PDPRAZO'
    end
    object Tb_ProPDDESFIN: TFloatField
      DisplayLabel = 'Desconto Financeiro'
      FieldName = 'PDDESFIN'
      Origin = 'SG_ASSOC.CADPRO.PDDESFIN'
    end
    object Tb_ProPDSIT: TStringField
      DisplayLabel = 'Sit.Tribut'
      FieldName = 'PDSIT'
      Origin = 'SG_ASSOC.CADPRO.PDSIT'
      Size = 3
    end
    object Tb_ProPDUND: TStringField
      DisplayLabel = 'Und.'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_ProPDESTMAX: TFloatField
      DisplayLabel = 'Est M'#225'ximo'
      FieldName = 'PDESTMAX'
      Origin = 'SG_ASSOC.CADPRO.PDESTMAX'
    end
    object Tb_ProPDESTMIN: TFloatField
      DisplayLabel = 'Est Minimo'
      FieldName = 'PDESTMIN'
      Origin = 'SG_ASSOC.CADPRO.PDESTMIN'
    end
    object Tb_ProPDFRACAO: TFloatField
      DisplayLabel = 'Fra'#231'ao'
      FieldName = 'PDFRACAO'
      Origin = 'SG_ASSOC.CADPRO.PDFRACAO'
    end
    object Tb_ProPDLISTA: TFloatField
      DisplayLabel = 'Lista(0-Ina,1-Pos,2-Neg)'
      FieldName = 'PDLISTA'
      Origin = 'SG_ASSOC.CADPRO.PDLISTA'
    end
    object Tb_ProPDPCOFAB: TFloatField
      DisplayLabel = 'P'#231'o.Fabrica'
      FieldName = 'PDPCOFAB'
      Origin = 'SG_ASSOC.CADPRO.PDPCOFAB'
    end
    object Tb_ProPDTABICM: TStringField
      DisplayLabel = 'Tab.Icms'
      FieldName = 'PDTABICM'
      Origin = 'SG_ASSOC.CADPRO.PDTABICM'
      Size = 1
    end
    object Tb_ProPDIPI: TFloatField
      DisplayLabel = '%IPI'
      FieldName = 'PDIPI'
      Origin = 'SG_ASSOC.CADPRO.PDIPI'
    end
    object Tb_ProPDREGMS: TStringField
      DisplayLabel = 'Reg.Min.Saude'
      FieldName = 'PDREGMS'
      Origin = 'SG_ASSOC.CADPRO.PDREGMS'
    end
    object Tb_ProPDCLAS: TStringField
      DisplayLabel = 'Classificac'#227'o Fiscal'
      FieldName = 'PDCLAS'
      Origin = 'SG_ASSOC.CADPRO.PDCLAS'
    end
    object Tb_ProPDSECAO: TStringField
      DisplayLabel = 'Se'#231#227'o'
      FieldName = 'PDSECAO'
      Origin = 'SG_ASSOC.CADPRO.PDSECAO'
      Size = 10
    end
    object Tb_ProPDEMBPAD: TFloatField
      DisplayLabel = 'Embalagem Padr'#227'o'
      FieldName = 'PDEMBPAD'
      Origin = 'SG_ASSOC.CADPRO.PDEMBPAD'
    end
    object Tb_ProPDEMBMUL: TFloatField
      DisplayLabel = 'Emb.Multipla'
      FieldName = 'PDEMBMUL'
      Origin = 'SG_ASSOC.CADPRO.PDEMBMUL'
    end
    object Tb_ProPDCOMIS: TFloatField
      DisplayLabel = '%Comis'
      FieldName = 'PDCOMIS'
      Origin = 'SG_ASSOC.CADPRO.PDCOMIS'
    end
    object Tb_ProPDPESOL: TFloatField
      DisplayLabel = 'Peso Liq'
      FieldName = 'PDPESOL'
      Origin = 'SG_ASSOC.CADPRO.PDPESOL'
      DisplayFormat = '#,###0.000'
    end
    object Tb_ProPDPESOB: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'PDPESOB'
      Origin = 'SG_ASSOC.CADPRO.PDPESOB'
      DisplayFormat = '#,###0.000'
    end
    object Tb_ProPDDESC2: TFloatField
      DisplayLabel = '%Desc 2'
      FieldName = 'PDDESC2'
      Origin = 'SG_ASSOC.CADPRO.PDDESC2'
    end
    object Tb_ProPDDESC3: TFloatField
      DisplayLabel = '% Desc 3'
      FieldName = 'PDDESC3'
      Origin = 'SG_ASSOC.CADPRO.PDDESC3'
    end
    object Tb_ProPDQTDP: TFloatField
      FieldName = 'PDQTDP'
      Origin = 'SG_ASSOC.CADPRO.PDQTDP'
    end
    object Tb_ProPDCURVA: TStringField
      DisplayLabel = 'Curva'
      FieldName = 'PDCURVA'
      Origin = 'SG_ASSOC.CADPRO.PDCURVA'
      Size = 1
    end
    object Tb_ProPDPRECOC: TFloatField
      DisplayLabel = 'Pre'#231'o Custo'
      FieldName = 'PDPRECOC'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOC'
    end
    object Tb_ProPDPCOMC: TFloatField
      DisplayLabel = 'Pco.Med.Custo'
      FieldName = 'PDPCOMC'
      Origin = 'SG_ASSOC.CADPRO.PDPCOMC'
    end
    object Tb_ProPDUCPR: TFloatField
      DisplayLabel = #218'lt.P'#231'o.Compra'
      FieldName = 'PDUCPR'
      Origin = 'SG_ASSOC.CADPRO.PDUCPR'
    end
    object Tb_ProPDEMBPAD2: TStringField
      DisplayLabel = 'Emb.Pad.2'
      FieldName = 'PDEMBPAD2'
      Origin = 'SG_ASSOC.CADPRO.PDEMBPAD2'
      Size = 12
    end
    object Tb_ProPDCODPROC: TFloatField
      DisplayLabel = 'Cod.Proced'
      FieldName = 'PDCODPROC'
      Origin = 'SG_ASSOC.CADPRO.PDCODPROC'
    end
  end
  object U_Pro: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPRO'
      'set'
      '  PDCODPRO = :PDCODPRO,'
      '  PDCODBAR = :PDCODBAR,'
      '  PDCODBAR_EMBPAD = :PDCODBAR_EMBPAD,'
      '  PDNOME = :PDNOME,'
      '  PDNOME2 = :PDNOME2,'
      '  PDUND = :PDUND,'
      '  PDMARCA = :PDMARCA,'
      '  PDCODFOR = :PDCODFOR,'
      '  PDNOMFOR = :PDNOMFOR,'
      '  PDPRECO1 = :PDPRECO1,'
      '  PDPRECO2 = :PDPRECO2,'
      '  PDPRECO3 = :PDPRECO3,'
      '  PDPMC = :PDPMC,'
      '  PDDESC1 = :PDDESC1,'
      '  PDDESC2 = :PDDESC2,'
      '  PDDESC3 = :PDDESC3,'
      '  PDQTDP = :PDQTDP,'
      '  PDPRAZO = :PDPRAZO,'
      '  PDDESFIN = :PDDESFIN,'
      '  PDSIT = :PDSIT,'
      '  PDCURVA = :PDCURVA,'
      '  PDCODGRU = :PDCODGRU,'
      '  PDCODCON = :PDCODCON,'
      '  PDNOMCON = :PDNOMCON,'
      '  PDCODRAM = :PDCODRAM,'
      '  PDNOMRAM = :PDNOMRAM,'
      '  PDCODTIP = :PDCODTIP,'
      '  PDESTMAX = :PDESTMAX,'
      '  PDESTMIN = :PDESTMIN,'
      '  PDFRACAO = :PDFRACAO,'
      '  PDLISTA = :PDLISTA,'
      '  PDPRECOC = :PDPRECOC,'
      '  PDPCOMC = :PDPCOMC,'
      '  PDPCOFAB = :PDPCOFAB,'
      '  PDTABICM = :PDTABICM,'
      '  PDIPI = :PDIPI,'
      '  PDREGMS = :PDREGMS,'
      '  PDCLAS = :PDCLAS,'
      '  PDSECAO = :PDSECAO,'
      '  PDEMBPAD = :PDEMBPAD,'
      '  PDEMBMUL = :PDEMBMUL,'
      '  PDCOMIS = :PDCOMIS,'
      '  PDUCPR = :PDUCPR,'
      '  PDEMBPAD2 = :PDEMBPAD2,'
      '  PDCODPROC = :PDCODPROC,'
      '  PDPESOB = :PDPESOB,'
      '  PDPESOL = :PDPESOL'
      'where'
      '  PDCODPRO = :OLD_PDCODPRO')
    InsertSQL.Strings = (
      'insert into CADPRO'
      '  (PDCODPRO, PDCODBAR, PDCODBAR_EMBPAD, PDNOME, PDNOME2, '
      'PDUND, PDMARCA, '
      '   PDCODFOR, PDNOMFOR, PDPRECO1, PDPRECO2, PDPRECO3, PDPMC, '
      'PDDESC1, PDDESC2, '
      
        '   PDDESC3, PDQTDP, PDPRAZO, PDDESFIN, PDSIT, PDCURVA, PDCODGRU,' +
        ' '
      'PDCODCON, '
      '   PDNOMCON, PDCODRAM, PDNOMRAM, PDCODTIP, PDESTMAX, PDESTMIN, '
      'PDFRACAO, '
      
        '   PDLISTA, PDPRECOC, PDPCOMC, PDPCOFAB, PDTABICM, PDIPI, PDREGM' +
        'S, '
      'PDCLAS, '
      '   PDSECAO, PDEMBPAD, PDEMBMUL, PDCOMIS, PDUCPR, PDEMBPAD2, '
      'PDCODPROC, '
      '   PDPESOB, PDPESOL)'
      'values'
      '  (:PDCODPRO, :PDCODBAR, :PDCODBAR_EMBPAD, :PDNOME, :PDNOME2, '
      ':PDUND, :PDMARCA, '
      
        '   :PDCODFOR, :PDNOMFOR, :PDPRECO1, :PDPRECO2, :PDPRECO3, :PDPMC' +
        ', '
      ':PDDESC1, '
      
        '   :PDDESC2, :PDDESC3, :PDQTDP, :PDPRAZO, :PDDESFIN, :PDSIT, :PD' +
        'CURVA, '
      '   :PDCODGRU, :PDCODCON, :PDNOMCON, :PDCODRAM, :PDNOMRAM, '
      ':PDCODTIP, :PDESTMAX, '
      
        '   :PDESTMIN, :PDFRACAO, :PDLISTA, :PDPRECOC, :PDPCOMC, :PDPCOFA' +
        'B, '
      ':PDTABICM, '
      '   :PDIPI, :PDREGMS, :PDCLAS, :PDSECAO, :PDEMBPAD, :PDEMBMUL, '
      ':PDCOMIS, '
      '   :PDUCPR, :PDEMBPAD2, :PDCODPROC, :PDPESOB, :PDPESOL)')
    DeleteSQL.Strings = (
      'delete from CADPRO'
      'where'
      '  PDCODPRO = :OLD_PDCODPRO')
    Left = 621
    Top = 222
  end
  object Src_Pro: TDataSource
    DataSet = Tb_Pro
    Left = 653
    Top = 222
  end
end

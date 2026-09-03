object Frm_Compras_Orc_Localizar: TFrm_Compras_Orc_Localizar
  Left = 54
  Top = 102
  Width = 860
  Height = 504
  Caption = 'Or'#231'amentos de Compras(Cota'#231#245'es)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_cabecalho: TPanel
    Left = 0
    Top = 0
    Width = 852
    Height = 140
    Align = alTop
    TabOrder = 0
    object Edit3: TEdit
      Left = 70
      Top = 4
      Width = 103
      Height = 19
      TabStop = False
      Color = 16763283
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = 'Chave Inicial:'
    end
    object edt_chave_ini: TEdit
      Left = 171
      Top = 4
      Width = 83
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      Text = 'edt_chave'
      OnExit = edt_chave_iniExit
    end
    object Edit1: TEdit
      Left = 254
      Top = 4
      Width = 103
      Height = 19
      TabStop = False
      Color = 16763283
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Text = 'Chave Final:'
    end
    object edt_chave_fin: TEdit
      Left = 356
      Top = 4
      Width = 84
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      Text = 'edt_chave'
      OnExit = edt_chave_finExit
    end
    object edt_data_Ini: TDateEdit
      Left = 172
      Top = 22
      Width = 83
      Height = 19
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 5
      OnExit = edt_data_IniExit
    end
    object Edit2: TEdit
      Left = 254
      Top = 22
      Width = 103
      Height = 19
      TabStop = False
      Color = 16763283
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      Text = 'Data Final:'
    end
    object edt_data_fin: TDateEdit
      Left = 357
      Top = 22
      Width = 83
      Height = 19
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 7
    end
    object Edit4: TEdit
      Left = 70
      Top = 40
      Width = 102
      Height = 19
      TabStop = False
      Color = 16763283
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      Text = 'Fornecedor:'
    end
    object edt_codfor: TEdit
      Left = 171
      Top = 40
      Width = 83
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 9
      Text = 'edt_chave'
      OnExit = edt_codforExit
      OnKeyPress = edt_codforKeyPress
    end
    object OMITIR_FOR: TCheckBox
      Left = 173
      Top = 65
      Width = 97
      Height = 17
      Caption = 'Omitir'
      TabOrder = 10
    end
    object lbx_codfor: TListBox
      Left = 254
      Top = 40
      Width = 328
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
      Color = 13828095
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnKeyDown = lbx_codforKeyDown
    end
    object Edit5: TEdit
      Left = 70
      Top = 22
      Width = 102
      Height = 19
      TabStop = False
      Color = 16763283
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      Text = 'Data Inicial:'
    end
    object Edit6: TEdit
      Left = 694
      Top = 2
      Width = 150
      Height = 19
      TabStop = False
      Color = 8454016
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
      Text = 'LISTAR OS PEDIDOS'
    end
    object bbLocalizar: TBitBtn
      Left = 181
      Top = 110
      Width = 190
      Height = 25
      Cursor = crHandPoint
      Caption = '&Localizar'
      TabOrder = 13
      OnClick = bbLocalizarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
    end
    object bb_sair: TBitBtn
      Left = 395
      Top = 110
      Width = 190
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 14
      OnClick = bb_sairClick
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
    object Edit7: TEdit
      Left = 71
      Top = 81
      Width = 102
      Height = 19
      TabStop = False
      Color = 16763283
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
      Text = 'N'#250'mero NF Inicial::'
    end
    object edt_numnf_ini: TEdit
      Left = 172
      Top = 81
      Width = 83
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 16
      Text = 'edt_chave'
      OnExit = edt_numnf_iniExit
    end
    object Edit9: TEdit
      Left = 254
      Top = 81
      Width = 102
      Height = 19
      TabStop = False
      Color = 16763283
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
      Text = 'N'#250'mero NF Final::'
    end
    object edt_numnf_fin: TEdit
      Left = 355
      Top = 81
      Width = 83
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 18
      Text = 'edt_chave'
      OnExit = edt_numnf_finExit
    end
    object rgStatus: TRadioGroup
      Left = 694
      Top = 21
      Width = 149
      Height = 105
      ItemIndex = 2
      Items.Strings = (
        'Pendentes'
        'Confirmados'
        'Todos')
      TabOrder = 19
    end
    object Edit8: TEdit
      Left = 438
      Top = 81
      Width = 51
      Height = 19
      TabStop = False
      Color = 16763283
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 20
      Text = 'Ordem:'
    end
    object CB_ORDEM: TComboBox
      Left = 489
      Top = 81
      Width = 136
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      Sorted = True
      TabOrder = 21
      Text = 'Chave Crescente'
      OnClick = CB_ORDEMClick
      Items.Strings = (
        'Chave Crescente'
        'Chave Decrescente'
        'Codigo Fornecedor'
        'Data Crescente'
        'Data Decrescente'
        'Nome Fornecedor'
        'Numero NF Crescente'
        'Numero NF Descrescente'
        'Valor Crescente'
        'Valor Decrescente')
    end
  end
  object gbPedCab: TGroupBox
    Left = 0
    Top = 140
    Width = 852
    Height = 136
    Align = alTop
    Caption = 'Pedidos Encontrados:'
    TabOrder = 1
    object DBGrid_pforCab: TDBGrid
      Left = 2
      Top = 15
      Width = 848
      Height = 119
      Align = alClient
      DataSource = src_pfor01_orc
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid_pforCabDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'PF1CHAVE'
          Title.Caption = 'Chave'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF1LOTSEQ'
          Title.Caption = 'Lot Seq'
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF1CODFOR'
          Title.Caption = 'C'#243'd.Fornec'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FRAZAO'
          Title.Caption = 'Raz'#227'o Social'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF1DATA'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF1TOTLIQ'
          Title.Caption = 'Total Liquido'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF1NUMNF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF1CODEMP'
          Title.Caption = 'Empresa'
          Width = 52
          Visible = True
        end>
    end
  end
  object gb_itens: TGroupBox
    Left = 0
    Top = 276
    Width = 852
    Height = 156
    Align = alClient
    Caption = 'Itens do Pedido:'
    TabOrder = 2
    object DBGrid_pfordet: TDBGrid
      Left = 2
      Top = 15
      Width = 848
      Height = 139
      Align = alClient
      DataSource = Src_pfor02_orc
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PF2ITEM'
          Title.Caption = 'Item'
          Width = 29
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2CODPRO'
          Title.Caption = 'C'#243'digo'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Title.Caption = 'Descri'#231#227'o dos Produtos'
          Width = 183
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          Title.Caption = 'UND'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2QTDPED'
          Title.Caption = 'Qtd.Pedida'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2PCOUNI'
          Title.Caption = 'P'#231'o.Unit'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2DESC_PERC01'
          Title.Caption = '%Desc.01'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2DESC_PERC02'
          Title.Caption = '%Desc.02'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2DESC_VALOR'
          Title.Caption = 'Desc.Valor'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2DESC_TOTDES'
          Title.Caption = 'Total Desconto'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2CST'
          Title.Caption = 'CST'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2CFOP'
          Title.Caption = 'CFOP'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2IPI_VALOR'
          Title.Caption = 'Valor IPI'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2PIS_VALOR'
          Title.Caption = 'Valor PIS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2COFINS_VALOR'
          Title.Caption = 'Valor Cofins'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2TOTLIQ'
          Title.Caption = 'Tot.Liquido'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2ICMSSN_VALOR'
          Title.Caption = 'ICMS SN'
          Visible = True
        end>
    end
  end
  object Panel_rodape: TPanel
    Left = 0
    Top = 432
    Width = 852
    Height = 41
    Align = alBottom
    TabOrder = 3
    object CB_CHAVEBRANCO: TCheckBox
      Left = 40
      Top = 8
      Width = 345
      Height = 17
      Caption = 'Ao Entrar Deixar Chave em Branco'
      TabOrder = 0
      OnClick = CB_CHAVEBRANCOClick
    end
  end
  object src_pfor01_orc: TDataSource
    DataSet = Tb_Pfor01_Orc
    OnDataChange = src_pfor01_orcDataChange
    Left = 528
    Top = 16
  end
  object Src_pfor02_orc: TDataSource
    DataSet = Tb_Pfor02_Orc
    Left = 528
    Top = 56
  end
  object Tb_Pfor01_Orc: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select PF1CHAVE,PF1LOTSEQ,PF1CODFOR,FRAZAO,'
      '                      PF1DATA,PF1TOTLIQ,PF1CODEMP ,PF1NUMNF'
      '                      FROM CADPF1,CADFOR'
      'where PF1CHAVE=0'
      'AND FCODFOR=PF1CODFOR                      ')
    Left = 472
    Top = 16
    object Tb_Pfor01_OrcPF1CHAVE: TFloatField
      FieldName = 'PF1CHAVE'
      Origin = 'SG_ASSOC.CADPF1.PF1CHAVE'
    end
    object Tb_Pfor01_OrcPF1LOTSEQ: TFloatField
      FieldName = 'PF1LOTSEQ'
      Origin = 'SG_ASSOC.CADPF1.PF1LOTSEQ'
    end
    object Tb_Pfor01_OrcPF1CODFOR: TFloatField
      FieldName = 'PF1CODFOR'
      Origin = 'SG_ASSOC.CADPF1.PF1CODFOR'
    end
    object Tb_Pfor01_OrcFRAZAO: TStringField
      FieldName = 'FRAZAO'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 60
    end
    object Tb_Pfor01_OrcPF1DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'PF1DATA'
      Origin = 'SG_ASSOC.CADPF1.PF1DATA'
    end
    object Tb_Pfor01_OrcPF1TOTLIQ: TFloatField
      FieldName = 'PF1TOTLIQ'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTLIQ'
    end
    object Tb_Pfor01_OrcPF1CODEMP: TFloatField
      FieldName = 'PF1CODEMP'
      Origin = 'SG_ASSOC.CADPF1.PF1CODEMP'
    end
    object Tb_Pfor01_OrcPF1NUMNF: TFloatField
      DisplayLabel = 'N'#250'mero NF'
      FieldName = 'PF1NUMNF'
      Origin = 'SG_ASSOC.CADPF1.PF1NUMNF'
    end
  end
  object Tb_Pfor02_Orc: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select PF2CODEMP,'
      'PF2CHAVE,'
      'PF2LOTSEQ,'
      'PF2ITEM,'
      'PF2CODPRO,'
      'PDNOME,'
      'PDUND,'
      'PF2QTDP AS PF2QTDPED,'
      'PF2PU AS PF2PCOUNI,'
      'PF2DESC01 PF2DESC_PERC01,'
      'PF2DESC02 AS PF2DESC_PERC02,'
      'PF2DESC03 AS PF2DESC_VALOR,'
      'PF2TOTDES AS PF2DESC_TOTDES,'
      'PF2SIT AS PF2CST,'
      'PF2CFO AS PF2CFOP,'
      'PF2IPI AS PF2IPI_VALOR,'
      'PF2PIS_VALOR,'
      'PF2COFINS_VALOR,'
      'PF2TOTLIQ,'
      'PF2ICMSSN_VALOR from  CADPF2,'
      'CADPRO  where PDCODEMP=PF2CODEMP  and PDCODPRO=PF2CODPRO '
      
        ' and PF2CODEMP=101 and PF2CHAVE=999 and PF2LOTSEQ=0 order by PF2' +
        'ITEM'
      '')
    Left = 480
    Top = 48
    object Tb_Pfor02_OrcPF2CODEMP: TFloatField
      FieldName = 'PF2CODEMP'
      Origin = 'SG_ASSOC.CADPF2.PF2CODEMP'
    end
    object Tb_Pfor02_OrcPF2CHAVE: TFloatField
      FieldName = 'PF2CHAVE'
      Origin = 'SG_ASSOC.CADPF2.PF2CHAVE'
    end
    object Tb_Pfor02_OrcPF2LOTSEQ: TFloatField
      FieldName = 'PF2LOTSEQ'
      Origin = 'SG_ASSOC.CADPF2.PF2LOTSEQ'
    end
    object Tb_Pfor02_OrcPF2ITEM: TFloatField
      FieldName = 'PF2ITEM'
      Origin = 'SG_ASSOC.CADPF2.PF2ITEM'
    end
    object Tb_Pfor02_OrcPF2CODPRO: TFloatField
      FieldName = 'PF2CODPRO'
      Origin = 'SG_ASSOC.CADPF2.PF2CODPRO'
    end
    object Tb_Pfor02_OrcPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 120
    end
    object Tb_Pfor02_OrcPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_Pfor02_OrcPF2QTDPED: TFloatField
      FieldName = 'PF2QTDPED'
      Origin = 'SG_ASSOC.CADPF2.PF2QTDP'
    end
    object Tb_Pfor02_OrcPF2PCOUNI: TFloatField
      FieldName = 'PF2PCOUNI'
      Origin = 'SG_ASSOC.CADPF2.PF2PU'
    end
    object Tb_Pfor02_OrcPF2DESC_PERC01: TFloatField
      FieldName = 'PF2DESC_PERC01'
      Origin = 'SG_ASSOC.CADPF2.PF2DESC01'
    end
    object Tb_Pfor02_OrcPF2DESC_PERC02: TFloatField
      FieldName = 'PF2DESC_PERC02'
      Origin = 'SG_ASSOC.CADPF2.PF2DESC02'
    end
    object Tb_Pfor02_OrcPF2DESC_VALOR: TFloatField
      FieldName = 'PF2DESC_VALOR'
      Origin = 'SG_ASSOC.CADPF2.PF2DESC03'
    end
    object Tb_Pfor02_OrcPF2DESC_TOTDES: TFloatField
      FieldName = 'PF2DESC_TOTDES'
      Origin = 'SG_ASSOC.CADPF2.PF2TOTDES'
    end
    object Tb_Pfor02_OrcPF2CST: TStringField
      FieldName = 'PF2CST'
      Origin = 'SG_ASSOC.CADPF2.PF2SIT'
      Size = 3
    end
    object Tb_Pfor02_OrcPF2CFOP: TFloatField
      FieldName = 'PF2CFOP'
      Origin = 'SG_ASSOC.CADPF2.PF2CFO'
    end
    object Tb_Pfor02_OrcPF2IPI_VALOR: TFloatField
      FieldName = 'PF2IPI_VALOR'
      Origin = 'SG_ASSOC.CADPF2.PF2IPI'
    end
    object Tb_Pfor02_OrcPF2PIS_VALOR: TFloatField
      FieldName = 'PF2PIS_VALOR'
      Origin = 'SG_ASSOC.CADPF2.PF2PIS_VALOR'
    end
    object Tb_Pfor02_OrcPF2COFINS_VALOR: TFloatField
      FieldName = 'PF2COFINS_VALOR'
      Origin = 'SG_ASSOC.CADPF2.PF2COFINS_VALOR'
    end
    object Tb_Pfor02_OrcPF2TOTLIQ: TFloatField
      FieldName = 'PF2TOTLIQ'
      Origin = 'SG_ASSOC.CADPF2.PF2TOTLIQ'
    end
    object Tb_Pfor02_OrcPF2ICMSSN_VALOR: TFloatField
      FieldName = 'PF2ICMSSN_VALOR'
      Origin = 'SG_ASSOC.CADPF2.PF2ICMSSN_VALOR'
    end
  end
end

object Frm_DevCli: TFrm_DevCli
  Left = 27
  Top = 130
  Width = 693
  Height = 410
  Caption = 'Rela'#231#227'o de Devolu'#231#245'es'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object panel_cab: TPanel
    Left = 0
    Top = 0
    Width = 677
    Height = 104
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 26
      Top = 11
      Width = 44
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 29
      Top = 35
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
    object Label3: TLabel
      Left = 10
      Top = 60
      Width = 65
      Height = 13
      Caption = 'CNPJ/CPF:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CODCLI: TEdit
      Left = 77
      Top = 9
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = CODCLIExit
    end
    object NOMCLI: TEdit
      Left = 197
      Top = 9
      Width = 481
      Height = 21
      Color = 16744639
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object CIDADE: TEdit
      Left = 77
      Top = 31
      Width = 602
      Height = 21
      Color = 16744639
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object CNPJ: TEdit
      Left = 77
      Top = 53
      Width = 602
      Height = 21
      Color = 16744639
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object bbAtualizar: TBitBtn
      Left = 279
      Top = 76
      Width = 191
      Height = 27
      Cursor = crHandPoint
      Caption = 'Atualizar'
      TabOrder = 4
      OnClick = bbAtualizarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
        03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
        FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
        FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
        3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
        33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
        33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
        33333337FFFFFFF7F33333300000000033333337777777773333}
      NumGlyphs = 2
    end
  end
  object gb_devpen: TGroupBox
    Left = 0
    Top = 104
    Width = 677
    Height = 122
    Align = alClient
    Caption = 'Devolu'#231#245'es Pendentes:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object DBGrid_PedDev: TDBGrid
      Left = 2
      Top = 15
      Width = 673
      Height = 105
      Align = alClient
      DataSource = Src_PedDev
      FixedColor = 12320699
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'CRNUMERO'
          Title.Alignment = taCenter
          Width = 115
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRDESD'
          Title.Alignment = taCenter
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRDTEMIS'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRVALOR'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRVALPAG'
          Title.Alignment = taCenter
          Width = 97
          Visible = True
        end>
    end
  end
  object gb_mercdev: TGroupBox
    Left = 0
    Top = 226
    Width = 677
    Height = 105
    Align = alBottom
    Caption = 'Mercadorias da Devolu'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object DBGrid_MercDev: TDBGrid
      Left = 2
      Top = 15
      Width = 673
      Height = 88
      Align = alClient
      DataSource = Src_MercDev
      FixedColor = 12320699
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'P2CODPRO'
          Title.Alignment = taCenter
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2QTD'
          Title.Alignment = taCenter
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          Title.Alignment = taCenter
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Title.Alignment = taCenter
          Width = 229
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2PRECO'
          Title.Alignment = taCenter
          Width = 134
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2TOTLIQ'
          Title.Alignment = taCenter
          Width = 82
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 331
    Width = 677
    Height = 41
    Align = alBottom
    TabOrder = 3
    object bbSair: TBitBtn
      Left = 240
      Top = 6
      Width = 225
      Height = 30
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = bbSairClick
    end
  end
  object Src_MercDev: TDataSource
    DataSet = Qr_MercDev
    Left = 568
    Top = 48
  end
  object Qr_PedDev: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select CRCODEMP,CRLOTSEQ_CP,CRNPED,CRORDEM,CRCODCLI,CRCODVEN,CRV' +
        'ALOR,CRVALPAG,'
      '          CRDTEMIS,CRNUMERO,CRDESD,'
      '          CRAZAO,CCNPJ,CCPF,CCIDADE,CUF from CADDAR,CADCLI'
      'WHERE CRCODEMP=100'
      'and CCODCLI=CRCODCLI')
    Left = 440
    Top = 72
    object Qr_PedDevCRCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CRCODEMP'
      Origin = 'SG_ASSOC.CADDAR.CRCODEMP'
    end
    object Qr_PedDevCRNPED: TFloatField
      DisplayLabel = 'Chave Ped'
      FieldName = 'CRNPED'
      Origin = 'SG_ASSOC.CADDAR.CRNPED'
    end
    object Qr_PedDevCRORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'CRORDEM'
      Origin = 'SG_ASSOC.CADDAR.CRORDEM'
    end
    object Qr_PedDevCRCODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'CRCODCLI'
      Origin = 'SG_ASSOC.CADDAR.CRCODCLI'
    end
    object Qr_PedDevCRCODVEN: TFloatField
      DisplayLabel = 'C'#243'd.Vend'
      FieldName = 'CRCODVEN'
      Origin = 'SG_ASSOC.CADDAR.CRCODVEN'
    end
    object Qr_PedDevCRVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CRVALOR'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR'
    end
    object Qr_PedDevCRVALPAG: TFloatField
      DisplayLabel = 'Valor ja Pago'
      FieldName = 'CRVALPAG'
      Origin = 'SG_ASSOC.CADDAR.CRVALPAG'
    end
    object Qr_PedDevCRDTEMIS: TDateTimeField
      DisplayLabel = 'Data de Emiss'#227'o'
      FieldName = 'CRDTEMIS'
      Origin = 'SG_ASSOC.CADDAR.CRDTEMIS'
    end
    object Qr_PedDevCRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_PedDevCCNPJ: TFloatField
      DisplayLabel = 'CNPJ'
      FieldName = 'CCNPJ'
      Origin = 'SG_ASSOC.CADCLI.CCNPJ'
    end
    object Qr_PedDevCCPF: TFloatField
      DisplayLabel = 'CPF'
      FieldName = 'CCPF'
      Origin = 'SG_ASSOC.CADCLI.CCPF'
    end
    object Qr_PedDevCCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Qr_PedDevCUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Qr_PedDevCRNUMERO: TFloatField
      DisplayLabel = 'N'#250'mero Titulo'
      FieldName = 'CRNUMERO'
      Origin = 'SG_ASSOC.CADDAR.CRNUMERO'
    end
    object Qr_PedDevCRDESD: TStringField
      DisplayLabel = 'Parcela'
      FieldName = 'CRDESD'
      Origin = 'SG_ASSOC.CADDAR.CRDESD'
      Size = 2
    end
    object Qr_PedDevCRLOTSEQ_CP: TFloatField
      FieldName = 'CRLOTSEQ_CP'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CP'
    end
  end
  object Qr_MercDev: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2CHAVE,P2CODPRO,P2QTD,P2PRECO,P2TOTLIQ,P2TOTDES,'
      'PDNOME,PDUND FROM CADP02,CADPRO'
      'where P2CODEMP=100'
      'and PDCODPRO=P2CODPRO')
    Left = 528
    Top = 48
    object Qr_MercDevP2CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Qr_MercDevP2QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Qr_MercDevP2PRECO: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Qr_MercDevP2TOTLIQ: TFloatField
      DisplayLabel = 'Total L'#237'quido'
      FieldName = 'P2TOTLIQ'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object Qr_MercDevPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_MercDevP2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE'
    end
    object Qr_MercDevP2TOTDES: TFloatField
      DisplayLabel = 'Total dos Descontos'
      FieldName = 'P2TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object Qr_MercDevPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o dos Produtos'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
  end
  object Src_PedDev: TDataSource
    DataSet = Qr_PedDev
    OnDataChange = Src_PedDevDataChange
    Left = 472
    Top = 72
  end
end

object Frm_MedCli: TFrm_MedCli
  Left = 11
  Top = 70
  Width = 795
  Height = 451
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'M'#233'dia de Vendas por Cliente'
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
  object Label1: TLabel
    Left = 3
    Top = 300
    Width = 97
    Height = 13
    Caption = 'Referencia m'#234's.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 151
    Top = 300
    Width = 26
    Height = 13
    Caption = 'ano:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 379
    Top = 299
    Width = 82
    Height = 13
    Caption = 'Pesquisar por:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 30
    Top = 321
    Width = 67
    Height = 13
    Caption = 'Separado por:'
  end
  object Label11: TLabel
    Left = 13
    Top = 344
    Width = 85
    Height = 13
    Caption = 'Ordem Impress'#227'o:'
  end
  object MES: TEdit
    Left = 105
    Top = 296
    Width = 36
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
  end
  object ANO: TEdit
    Left = 182
    Top = 297
    Width = 57
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object bbImprimir: TBitBtn
    Left = 32
    Top = 365
    Width = 128
    Height = 40
    Caption = '&Imprimir'
    TabOrder = 12
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
    Left = 644
    Top = 365
    Width = 128
    Height = 40
    Caption = '&Sair'
    TabOrder = 13
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
  object CB_EmiDoc: TCheckBox
    Left = 256
    Top = 298
    Width = 116
    Height = 17
    Caption = 'So Emitidos Notas'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 3
    OnClick = CB_EmiDocClick
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 787
    Height = 289
    ActivePage = TabSheet3
    Align = alTop
    MultiLine = True
    TabOrder = 0
    TabPosition = tpLeft
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'Filtros Principais'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 752
        Height = 280
        Align = alTop
        Caption = 'Filtrar:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label14: TLabel
          Left = 53
          Top = 75
          Width = 40
          Height = 13
          Caption = 'Produto:'
        end
        object Label3: TLabel
          Left = 57
          Top = 15
          Width = 35
          Height = 13
          Caption = 'Cliente:'
        end
        object Label4: TLabel
          Left = 23
          Top = 134
          Width = 68
          Height = 13
          Caption = 'Grupo Fornec:'
        end
        object Label10: TLabel
          Left = 37
          Top = 192
          Width = 49
          Height = 13
          Caption = 'Vendedor:'
        end
        object CODPRO: TEdit
          Left = 99
          Top = 71
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnExit = CODPROExit
          OnKeyPress = CODPROKeyPress
        end
        object lbx_codpro: TListBox
          Left = 172
          Top = 71
          Width = 563
          Height = 62
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnKeyDown = lbx_codproKeyDown
        end
        object OMITIR_PRO: TCheckBox
          Left = 100
          Top = 94
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object CODCLI: TEdit
          Left = 99
          Top = 10
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = CODCLIExit
          OnKeyPress = CODCLIKeyPress
        end
        object lbx_codcli: TListBox
          Left = 172
          Top = 10
          Width = 563
          Height = 62
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyDown = lbx_codcliKeyDown
        end
        object OMITIR_CLI: TCheckBox
          Left = 99
          Top = 38
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object CODGFOR: TEdit
          Left = 99
          Top = 132
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnExit = CODGFORExit
          OnKeyPress = CODGFORKeyPress
        end
        object OMITIR_GFOR: TCheckBox
          Left = 107
          Top = 153
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
        end
        object lbx_codgfor: TListBox
          Left = 172
          Top = 132
          Width = 563
          Height = 62
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnKeyDown = lbx_codgforKeyDown
        end
        object lbx_codven: TListBox
          Left = 172
          Top = 193
          Width = 563
          Height = 62
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
        object CODVEN: TEdit
          Left = 99
          Top = 194
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnExit = CODVENExit
          OnKeyPress = CODVENKeyPress
        end
        object OMITIR_VEN: TCheckBox
          Left = 99
          Top = 222
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Filtros Segundarios'
      ImageIndex = 2
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 760
        Height = 281
        Align = alTop
        Caption = 'Filtrar:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label6: TLabel
          Left = 61
          Top = 136
          Width = 36
          Height = 13
          Caption = 'Cidade:'
        end
        object Label8: TLabel
          Left = 43
          Top = 15
          Width = 53
          Height = 13
          Caption = 'Supervisor:'
        end
        object Label9: TLabel
          Left = 76
          Top = 76
          Width = 17
          Height = 13
          Caption = 'UF:'
        end
        object Label13: TLabel
          Left = 29
          Top = 192
          Width = 57
          Height = 13
          Caption = 'Fornecedor:'
        end
        object CODLOC: TEdit
          Left = 99
          Top = 132
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnExit = CODLOCExit
          OnKeyPress = CODLOCKeyPress
        end
        object lbx_codloc: TListBox
          Left = 172
          Top = 132
          Width = 563
          Height = 62
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnKeyDown = lbx_codlocKeyDown
        end
        object OMITIR_LOC: TCheckBox
          Left = 100
          Top = 155
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object CODSUP: TEdit
          Left = 99
          Top = 10
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = CODSUPExit
          OnKeyPress = CODSUPKeyPress
        end
        object lbx_codsup: TListBox
          Left = 172
          Top = 10
          Width = 563
          Height = 62
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyDown = lbx_codsupKeyDown
        end
        object OMITIR_SUP: TCheckBox
          Left = 99
          Top = 38
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object CODUF: TEdit
          Left = 99
          Top = 72
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          CharCase = ecUpperCase
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnExit = CODUFExit
          OnKeyDown = CODUFKeyDown
        end
        object lbx_coduf: TListBox
          Left = 172
          Top = 71
          Width = 563
          Height = 62
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnKeyDown = lbx_codufKeyDown
        end
        object OMITIR_UF: TCheckBox
          Left = 99
          Top = 100
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object CODFOR: TEdit
          Left = 99
          Top = 193
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnExit = CODFORExit
          OnKeyPress = CODFORKeyPress
        end
        object lbx_codfor: TListBox
          Left = 172
          Top = 193
          Width = 563
          Height = 62
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnKeyDown = lbx_codforKeyDown
        end
        object OMITIR_FOR: TCheckBox
          Left = 99
          Top = 216
          Width = 69
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Outros Filtros'
      ImageIndex = 2
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 760
        Height = 281
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Align = alClient
        Color = clSkyBlue
        Columns = 3
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ItemHeight = 16
        Items.Strings = (
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
  end
  object CB_FORCAR: TCheckBox
    Left = 605
    Top = 295
    Width = 136
    Height = 17
    Caption = 'Forcar Registros'
    TabOrder = 5
  end
  object CB_TIPOPESQ: TComboBox
    Left = 462
    Top = 296
    Width = 132
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 4
    Text = 'Data da Nota'
    OnExit = CB_TIPOPESQExit
    Items.Strings = (
      'Data da Nota'
      'Data do Pedido')
  end
  object CB_ICMSRET: TCheckBox
    Left = 605
    Top = 310
    Width = 164
    Height = 17
    Caption = 'Incluir Tambem o Icms Retido'
    TabOrder = 8
  end
  object CB_SEPARADO: TComboBox
    Left = 104
    Top = 318
    Width = 178
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 10
    Sorted = True
    TabOrder = 6
    Text = 'Sem Separar'
    Items.Strings = (
      'Bairro'
      'Cidade'
      'Cliente'
      'Estado'
      'Fornecedor'
      'Grupo de Produtos'
      'Marca'
      'Mes/Ano'
      'Ramo/Sub-Grupo'
      'Rede de Cliente'
      'Sem Separar'
      'Tipo de Controle'
      'Vendedor')
  end
  object CB_AVANCPAG: TCheckBox
    Left = 287
    Top = 317
    Width = 101
    Height = 17
    Caption = 'Avan'#231'ar P'#225'gina'
    TabOrder = 7
  end
  object CB_SEMMOV: TCheckBox
    Left = 286
    Top = 341
    Width = 194
    Height = 17
    Caption = 'Emitir sem Movimento'
    Checked = True
    State = cbChecked
    TabOrder = 9
  end
  object CB_ORDEM: TComboBox
    Left = 103
    Top = 339
    Width = 178
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    Sorted = True
    TabOrder = 10
    Text = 'C'#243'digo Cliente'
    Items.Strings = (
      'C'#243'digo Cliente'
      'Nome Cliente'
      'Totais Crescente'
      'Totais Decrescente')
  end
  object CB_REDDESCFIN: TCheckBox
    Left = 473
    Top = 343
    Width = 295
    Height = 17
    Caption = 'Reduzir Descontos Financeiros Pr'#233'-Fixados no Pedido'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    OnClick = CB_EmiDocClick
  end
  object Qr_Ven: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select VNOME AS NOME ,P1CODVEN AS CODIGO,sum(decode(to_char(p1da' +
        'tanf, '#39'yyyymm'#39'),'#39'200301'#39',p1totall,0)) as venmes01,'
      '       VNOME AS GRUPO,'
      
        '                sum(decode(to_char(p1datanf, '#39'yyyymm'#39'),'#39'200302'#39',' +
        'p1totall,0)) as venmes02,'
      
        '                sum(decode(to_char(p1datanf, '#39'yyyymm'#39'),'#39'200303'#39',' +
        'p1totall,0)) as venmes03,'
      
        '                sum(decode(to_char(p1datanf, '#39'yyyymm'#39'),'#39'200303'#39',' +
        'p1semcom,0)) as scommes01,'
      
        '                sum(decode(to_char(p1datanf, '#39'yyyymm'#39'),'#39'200303'#39',' +
        'p1semcom,0)) as scommes02,'
      
        '                sum(decode(to_char(p1datanf, '#39'yyyymm'#39'),'#39'200303'#39',' +
        'p1semcom,0)) as scommes03,'
      
        '                sum(decode(to_char(p1datanf, '#39'yyyymm'#39'),'#39'200303'#39',' +
        'p1valfre,0)) as fremes01,'
      
        '                sum(decode(to_char(p1datanf, '#39'yyyymm'#39'),'#39'200303'#39',' +
        'p1valfre,0)) as fremes02,'
      
        '                sum(decode(to_char(p1datanf, '#39'yyyymm'#39'),'#39'200303'#39',' +
        'p1valfre,0)) as fremes03,'
      
        '                sum(decode(to_char(p1datanf, '#39'yyyymm'#39'),'#39'200303'#39',' +
        'p1icmsr,0)) as icmsrmes01,'
      
        '                sum(decode(to_char(p1datanf, '#39'yyyymm'#39'),'#39'200303'#39',' +
        'p1icmsr,0)) as icmsrmes02,'
      
        '                sum(decode(to_char(p1datanf, '#39'yyyymm'#39'),'#39'200303'#39',' +
        'p1icmsr,0)) as icmsrmes03'
      'from CADP01,CADVEN'
      'where P1CODEMP is null'
      'and VCODEMP=P1CODEMP'
      'and VCODVEN=P1CODVEN'
      'group by VNOME,P1CODVEN')
    Left = 712
    Top = 14
    object Qr_VenNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object Qr_VenCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object Qr_VenVENMES01: TFloatField
      FieldName = 'VENMES01'
    end
    object Qr_VenVENMES02: TFloatField
      FieldName = 'VENMES02'
    end
    object Qr_VenVENMES03: TFloatField
      FieldName = 'VENMES03'
    end
    object Qr_VenSCOMMES01: TFloatField
      FieldName = 'SCOMMES01'
    end
    object Qr_VenSCOMMES02: TFloatField
      FieldName = 'SCOMMES02'
    end
    object Qr_VenSCOMMES03: TFloatField
      FieldName = 'SCOMMES03'
    end
    object Qr_VenFREMES01: TFloatField
      FieldName = 'FREMES01'
    end
    object Qr_VenFREMES02: TFloatField
      FieldName = 'FREMES02'
    end
    object Qr_VenFREMES03: TFloatField
      FieldName = 'FREMES03'
    end
    object Qr_VenICMSRMES01: TFloatField
      FieldName = 'ICMSRMES01'
    end
    object Qr_VenICMSRMES02: TFloatField
      FieldName = 'ICMSRMES02'
    end
    object Qr_VenICMSRMES03: TFloatField
      FieldName = 'ICMSRMES03'
    end
    object Qr_VenGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 40
    end
  end
end

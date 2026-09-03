object Frm_BalProCol: TFrm_BalProCol
  Left = 3
  Top = 1
  Width = 797
  Height = 569
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Balan'#231'o de Produtos c/colunas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 506
    Width = 789
    Height = 32
    Align = alBottom
    TabOrder = 0
    object Label10: TLabel
      Left = 11
      Top = 0
      Width = 11
      Height = 17
      Caption = 'g'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clOlive
      Font.Height = -11
      Font.Name = 'Webdings'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl_coluna01: TLabel
      Left = 22
      Top = 3
      Width = 3
      Height = 13
      Caption = ' '
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clOlive
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 407
      Top = 2
      Width = 11
      Height = 17
      Caption = 'g'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8388672
      Font.Height = -11
      Font.Name = 'Webdings'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl_coluna04: TLabel
      Left = 421
      Top = 5
      Width = 3
      Height = 13
      Caption = ' '
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8388672
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 533
      Top = 3
      Width = 11
      Height = 17
      Caption = 'g'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Webdings'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl_coluna05: TLabel
      Left = 547
      Top = 6
      Width = 3
      Height = 13
      Caption = ' '
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl_coluna02: TLabel
      Left = 151
      Top = 4
      Width = 3
      Height = 13
      Caption = ' '
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label11: TLabel
      Left = 137
      Top = 1
      Width = 11
      Height = 17
      Caption = 'g'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Webdings'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label12: TLabel
      Left = 656
      Top = 4
      Width = 11
      Height = 17
      Caption = 'g'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 33023
      Font.Height = -11
      Font.Name = 'Webdings'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl_coluna06: TLabel
      Left = 670
      Top = 7
      Width = 3
      Height = 13
      Caption = ' '
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 33023
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl_coluna03: TLabel
      Left = 274
      Top = 5
      Width = 3
      Height = 13
      Caption = ' '
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label15: TLabel
      Left = 260
      Top = 2
      Width = 11
      Height = 17
      Caption = 'g'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Webdings'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 789
    Height = 201
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 1
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'Sele'#231#227'o'
      object Label2: TLabel
        Left = 10
        Top = 10
        Width = 63
        Height = 13
        AutoSize = False
        Caption = 'Per'#237'odo.........'
      end
      object Label3: TLabel
        Left = 152
        Top = 10
        Width = 6
        Height = 13
        Caption = #224
      end
      object lbl_nominv: TLabel
        Left = 14
        Top = 72
        Width = 126
        Height = 13
        Caption = 'Nome do Invent'#225'rio Salvo:'
        Visible = False
      end
      object Label1: TLabel
        Left = 560
        Top = 3
        Width = 213
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Oberva'#231#227'o Importante'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object MDT1: TMaskEdit
        Left = 64
        Top = 4
        Width = 81
        Height = 19
        Hint = 
          'Para filtrar t'#237'tulos somente a Partir de '#13#10'uma determinada data ' +
          #13#10'digite a mesma.'
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = '  /  /    '
        OnExit = MDT1Exit
      end
      object MDT2: TMaskEdit
        Left = 169
        Top = 4
        Width = 80
        Height = 19
        Hint = 
          'Para filtrar t'#237'tulos at'#233' '#13#10'uma determinada data '#13#10'digite a mesma' +
          '.'
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = '  /  /    '
        OnExit = MDT2Exit
      end
      object RG_tipocol: TRadioGroup
        Left = 257
        Top = -2
        Width = 266
        Height = 38
        Caption = 'Tipo de Coluna'
        Columns = 3
        Ctl3D = False
        ItemIndex = 2
        Items.Strings = (
          'Diario'
          'Mensal'
          'Anual')
        ParentCtl3D = False
        TabOrder = 2
      end
      object rg_inventario: TRadioGroup
        Left = 10
        Top = 37
        Width = 512
        Height = 29
        Caption = 'Utilizar Qual Invent'#225'rio'
        Columns = 3
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          'Inicial do periodo'
          'Salvo'
          'Nenhum')
        ParentCtl3D = False
        TabOrder = 3
        OnClick = rg_inventarioClick
      end
      object cb_salvo: TComboBox
        Left = 147
        Top = 70
        Width = 376
        Height = 21
        BevelInner = bvNone
        BevelKind = bkSoft
        ItemHeight = 13
        Sorted = True
        TabOrder = 4
        Visible = False
      end
      object bbAplicar: TBitBtn
        Left = 6
        Top = 145
        Width = 127
        Height = 25
        Caption = '&Aplicar'
        TabOrder = 8
        OnClick = bbAplicarClick
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
      object bbImprimir: TBitBtn
        Left = 208
        Top = 144
        Width = 127
        Height = 25
        Caption = '&Imprimir'
        TabOrder = 9
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
        Left = 396
        Top = 144
        Width = 127
        Height = 25
        Caption = '&Sair'
        TabOrder = 10
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
      object Memo1: TMemo
        Left = 560
        Top = 18
        Width = 214
        Height = 89
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Este programa possui apenas 6 '
          'colunas, no caso de haver mais sera '
          'tratado da seguinte maneira: as '
          'cinco primeiras irao sair separadas '
          'ja a sexta vira acumulado os valores '
          'restantes')
        ParentFont = False
        TabOrder = 5
      end
      object RG_TPPRECO: TRadioGroup
        Left = 8
        Top = 95
        Width = 516
        Height = 44
        Caption = 'Listar o Preco:'
        Columns = 3
        Ctl3D = False
        ItemIndex = 4
        Items.Strings = (
          'Venda 1'
          'Venda 2'
          'Venda 3'
          'Custo'
          'Fabrica'
          'PMC')
        ParentCtl3D = False
        TabOrder = 6
      end
      object CB_EmiDoc: TCheckBox
        Left = 529
        Top = 118
        Width = 136
        Height = 17
        Caption = 'So Emitidos Notas'
        Checked = True
        State = cbChecked
        TabOrder = 7
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Filtros'
      ImageIndex = 1
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 781
        Height = 173
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
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 201
    Width = 789
    Height = 305
    Align = alClient
    DataSource = Src_Balanco
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'CODPRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODFOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMPRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTINI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDAS01'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPRAS01'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEVOL01'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'saldo01'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDAS02'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPRAS02'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEVOL02'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'saldo02'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDAS03'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPRAS03'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEVOL03'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'saldo03'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDAS04'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPRAS04'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEVOL04'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'saldo04'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDAS05'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPRAS05'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEVOL05'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'saldo05'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDAS06'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPRAS06'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEVOL06'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'saldo06'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTATU'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOREST'
        Visible = True
      end>
  end
  object Qr_Balanco: TQuery
    OnCalcFields = Qr_BalancoCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from TEMPOR00015')
    Left = 480
    Top = 112
    object Qr_BalancoCODPRO: TFloatField
      DisplayLabel = 'Codigo'
      FieldName = 'CODPRO'
      Origin = 'SG_ASSOC.TEMPOR00015.CODPRO'
    end
    object Qr_BalancoCODFOR: TFloatField
      DisplayLabel = 'Cod.For'
      FieldName = 'CODFOR'
      Origin = 'SG_ASSOC.TEMPOR00015.CODFOR'
    end
    object Qr_BalancoNOMPRO: TStringField
      DisplayLabel = 'Descricao do Produto'
      FieldName = 'NOMPRO'
      Origin = 'SG_ASSOC.TEMPOR00015.NOMPRO'
      Size = 53
    end
    object Qr_BalancoESTINI: TFloatField
      DisplayLabel = 'Est.Inic'
      FieldName = 'ESTINI'
      Origin = 'SG_ASSOC.TEMPOR00015.ESTINI'
    end
    object Qr_BalancoVENDAS01: TFloatField
      DisplayLabel = 'Vendas 01'
      FieldName = 'VENDAS01'
      Origin = 'SG_ASSOC.TEMPOR00015.VENDAS01'
    end
    object Qr_BalancoCOMPRAS01: TFloatField
      DisplayLabel = 'Compras 01'
      FieldName = 'COMPRAS01'
      Origin = 'SG_ASSOC.TEMPOR00015.COMPRAS01'
    end
    object Qr_BalancoDEVOL01: TFloatField
      DisplayLabel = 'Devol 01'
      FieldName = 'DEVOL01'
      Origin = 'SG_ASSOC.TEMPOR00015.DEVOL01'
    end
    object Qr_Balancosaldo01: TFloatField
      DisplayLabel = 'Saldo 01'
      FieldKind = fkCalculated
      FieldName = 'saldo01'
      Calculated = True
    end
    object Qr_BalancoVENDAS02: TFloatField
      DisplayLabel = 'Vendas 02'
      FieldName = 'VENDAS02'
      Origin = 'SG_ASSOC.TEMPOR00015.VENDAS02'
    end
    object Qr_BalancoCOMPRAS02: TFloatField
      DisplayLabel = 'Compras 02'
      FieldName = 'COMPRAS02'
      Origin = 'SG_ASSOC.TEMPOR00015.COMPRAS02'
    end
    object Qr_BalancoDEVOL02: TFloatField
      DisplayLabel = 'Devol 02'
      FieldName = 'DEVOL02'
      Origin = 'SG_ASSOC.TEMPOR00015.DEVOL02'
    end
    object Qr_Balancosaldo02: TFloatField
      DisplayLabel = 'Saldo 02'
      FieldKind = fkCalculated
      FieldName = 'saldo02'
      Calculated = True
    end
    object Qr_BalancoVENDAS03: TFloatField
      DisplayLabel = 'Vendas 03'
      FieldName = 'VENDAS03'
      Origin = 'SG_ASSOC.TEMPOR00015.VENDAS03'
    end
    object Qr_BalancoCOMPRAS03: TFloatField
      DisplayLabel = 'Compras 03'
      FieldName = 'COMPRAS03'
      Origin = 'SG_ASSOC.TEMPOR00015.COMPRAS03'
    end
    object Qr_BalancoDEVOL03: TFloatField
      DisplayLabel = 'Devol 03'
      FieldName = 'DEVOL03'
      Origin = 'SG_ASSOC.TEMPOR00015.DEVOL03'
    end
    object Qr_Balancosaldo03: TFloatField
      DisplayLabel = 'Saldo 03'
      FieldKind = fkCalculated
      FieldName = 'saldo03'
      Calculated = True
    end
    object Qr_BalancoVENDAS04: TFloatField
      DisplayLabel = 'Vendas 04'
      FieldName = 'VENDAS04'
      Origin = 'SG_ASSOC.TEMPOR00015.VENDAS04'
    end
    object Qr_BalancoCOMPRAS04: TFloatField
      DisplayLabel = 'Compras 04'
      FieldName = 'COMPRAS04'
      Origin = 'SG_ASSOC.TEMPOR00015.COMPRAS04'
    end
    object Qr_BalancoDEVOL04: TFloatField
      DisplayLabel = 'Devol 04'
      FieldName = 'DEVOL04'
      Origin = 'SG_ASSOC.TEMPOR00015.DEVOL04'
    end
    object Qr_Balancosaldo04: TFloatField
      DisplayLabel = 'Saldo 04'
      FieldKind = fkCalculated
      FieldName = 'saldo04'
      Calculated = True
    end
    object Qr_BalancoVENDAS05: TFloatField
      DisplayLabel = 'Vendas 05'
      FieldName = 'VENDAS05'
      Origin = 'SG_ASSOC.TEMPOR00015.VENDAS05'
    end
    object Qr_BalancoCOMPRAS05: TFloatField
      DisplayLabel = 'Compras 05'
      FieldName = 'COMPRAS05'
      Origin = 'SG_ASSOC.TEMPOR00015.COMPRAS05'
    end
    object Qr_BalancoDEVOL05: TFloatField
      DisplayLabel = 'Devol 05'
      FieldName = 'DEVOL05'
      Origin = 'SG_ASSOC.TEMPOR00015.DEVOL05'
    end
    object Qr_Balancosaldo05: TFloatField
      DisplayLabel = 'Saldo 05'
      FieldKind = fkCalculated
      FieldName = 'saldo05'
      Calculated = True
    end
    object Qr_BalancoVENDAS06: TFloatField
      DisplayLabel = 'Vendas 06'
      FieldName = 'VENDAS06'
      Origin = 'SG_ASSOC.TEMPOR00015.VENDAS06'
    end
    object Qr_BalancoCOMPRAS06: TFloatField
      DisplayLabel = 'Compras 06'
      FieldName = 'COMPRAS06'
      Origin = 'SG_ASSOC.TEMPOR00015.COMPRAS06'
    end
    object Qr_BalancoDEVOL06: TFloatField
      DisplayLabel = 'Devol 06'
      FieldName = 'DEVOL06'
      Origin = 'SG_ASSOC.TEMPOR00015.DEVOL06'
    end
    object Qr_Balancosaldo06: TFloatField
      DisplayLabel = 'Saldo 06'
      FieldKind = fkCalculated
      FieldName = 'saldo06'
      Calculated = True
    end
    object Qr_BalancoESTATU: TFloatField
      DisplayLabel = 'Est.Atual'
      FieldName = 'ESTATU'
      Origin = 'SG_ASSOC.TEMPOR00015.ESTATU'
    end
    object Qr_BalancoVALOREST: TFloatField
      DisplayLabel = 'Preco Unitario'
      FieldName = 'VALOREST'
      Origin = 'SG_ASSOC.TEMPOR00015.VALOREST'
    end
  end
  object Src_Balanco: TDataSource
    DataSet = Qr_Balanco
    Left = 520
    Top = 104
  end
  object RDprint1: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = True
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    Autor = Deltress
    About = 'RDprint 3.0h - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Rdprint Setup'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    TestarPorta = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumeroPaginaInicial = 1
    PaginaInicial = 1
    PaginaFinal = 9999
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 376
    Top = 288
  end
end

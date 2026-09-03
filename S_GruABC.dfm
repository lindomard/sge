object Frm_GruABC: TFrm_GruABC
  Left = 94
  Top = 110
  Width = 800
  Height = 482
  Caption = 'ABC de Grupo de Produto'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 40
    Top = 321
    Width = 56
    Height = 13
    Caption = 'Per'#237'odo de:'
  end
  object Label4: TLabel
    Left = 224
    Top = 319
    Width = 6
    Height = 13
    Caption = #224
  end
  object lbl_prodserv: TLabel
    Left = 395
    Top = 320
    Width = 73
    Height = 13
    Caption = 'Tipo Pedido:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 792
    Height = 314
    ActivePage = TabSheet2
    Align = alTop
    MultiLine = True
    TabOrder = 0
    TabPosition = tpLeft
    object TabSheet1: TTabSheet
      Caption = 'Filtros Primarios'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 765
        Height = 306
        Align = alClient
        Caption = 'Filtros'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label1: TLabel
          Left = 49
          Top = 15
          Width = 43
          Height = 13
          Caption = ' Produto:'
        end
        object Label5: TLabel
          Left = 33
          Top = 63
          Width = 57
          Height = 13
          Caption = 'Fornecedor:'
        end
        object Label8: TLabel
          Left = 57
          Top = 111
          Width = 29
          Height = 13
          Caption = 'Grupo'
        end
        object Label11: TLabel
          Left = 56
          Top = 143
          Width = 74
          Height = 13
          Alignment = taCenter
          Caption = 'Tipo Produto'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label14: TLabel
          Left = 340
          Top = 143
          Width = 103
          Height = 13
          Alignment = taCenter
          Caption = 'Status do Produto'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label15: TLabel
          Left = 515
          Top = 143
          Width = 75
          Height = 13
          Alignment = taCenter
          Caption = 'E s t o q u e '
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object lbx_codpro: TListBox
          Left = 156
          Top = 15
          Width = 415
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyDown = lbx_codproKeyDown
        end
        object CODPRO: TEdit
          Left = 95
          Top = 15
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnExit = CODPROExit
          OnKeyPress = CODPROKeyPress
          OnMouseMove = CODPROMouseMove
        end
        object OMITIR_PRO: TCheckBox
          Left = 95
          Top = 38
          Width = 54
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnMouseMove = OMITIR_PROMouseMove
        end
        object OMITIR_FOR: TCheckBox
          Left = 96
          Top = 79
          Width = 54
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnMouseMove = OMITIR_FORMouseMove
        end
        object lbx_codfor: TListBox
          Left = 156
          Top = 56
          Width = 415
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnKeyDown = lbx_codforKeyDown
        end
        object CODFOR: TEdit
          Left = 95
          Top = 57
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnExit = CODFORExit
          OnKeyPress = CODFORKeyPress
          OnMouseMove = CODFORMouseMove
        end
        object CODGRU: TEdit
          Left = 95
          Top = 97
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnExit = CODGRUExit
          OnKeyPress = CODGRUKeyPress
          OnMouseMove = CODGRUMouseMove
        end
        object lbx_codgru: TListBox
          Left = 156
          Top = 97
          Width = 415
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnKeyDown = lbx_codgruKeyDown
        end
        object OMITIR_GRU: TCheckBox
          Left = 103
          Top = 125
          Width = 51
          Height = 14
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnMouseMove = OMITIR_GRUMouseMove
        end
        object CLBNivel: TCheckListBox
          Left = 57
          Top = 156
          Width = 278
          Height = 75
          Color = 16776176
          Columns = 2
          ItemHeight = 13
          Items.Strings = (
            'Acabado'
            'Servi'#231'o'
            'Mat'#233'ria Prima Revenda'
            'Produto em Produ'#231'ao'
            'Mat'#233'ria Prima'
            'Insumos'
            'Acessorios'
            'Outros'
            'Todos')
          Style = lbOwnerDrawFixed
          TabOrder = 9
          OnClick = CLBNivelClick
        end
        object CLBStatus: TCheckListBox
          Left = 339
          Top = 156
          Width = 172
          Height = 73
          Color = 16776176
          Columns = 2
          ItemHeight = 13
          Items.Strings = (
            'Ativos'
            'Bloqueados'
            'Inativos'
            'Todos')
          Style = lbOwnerDrawFixed
          TabOrder = 10
          OnClick = CLBStatusClick
        end
        object CLBEstoque: TCheckListBox
          Left = 515
          Top = 156
          Width = 112
          Height = 72
          Color = 16776176
          Columns = 1
          ItemHeight = 13
          Items.Strings = (
            'c/Estoque'
            's/Estoque'
            'Estoque Negativo'
            'Todos')
          Style = lbOwnerDrawFixed
          TabOrder = 11
          OnClick = CLBEstoqueClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Filtros Secundarios'
      ImageIndex = 1
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 765
        Height = 306
        Align = alClient
        Caption = 'Outros Filtros:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label2: TLabel
          Left = 29
          Top = 24
          Width = 64
          Height = 13
          Caption = 'Tipo Produto:'
        end
        object Label7: TLabel
          Left = 26
          Top = 67
          Width = 66
          Height = 13
          Caption = 'Tipo Controle:'
        end
        object Label9: TLabel
          Left = 5
          Top = 110
          Width = 87
          Height = 13
          Caption = 'Ramo/Sub-Grupo:'
        end
        object Label6: TLabel
          Left = 41
          Top = 153
          Width = 49
          Height = 13
          Caption = 'Vendedor:'
        end
        object lbl_codven: TLabel
          Left = 35
          Top = 189
          Width = 55
          Height = 13
          Caption = 'Estado/UF:'
        end
        object CODTIP: TEdit
          Left = 95
          Top = 22
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = CODTIPExit
          OnKeyPress = CODTIPKeyPress
          OnMouseMove = CODTIPMouseMove
        end
        object lbx_codtip: TListBox
          Left = 156
          Top = 22
          Width = 445
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyDown = lbx_codtipKeyDown
        end
        object OMITIR_TPRO: TCheckBox
          Left = 95
          Top = 45
          Width = 54
          Height = 14
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnMouseMove = OMITIR_TPROMouseMove
        end
        object CODCON: TEdit
          Left = 95
          Top = 63
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnExit = CODCONExit
          OnKeyPress = CODCONKeyPress
          OnMouseMove = CODCONMouseMove
        end
        object lbx_codcon: TListBox
          Left = 156
          Top = 63
          Width = 445
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnKeyDown = lbx_codconKeyDown
        end
        object OMITIR_CON: TCheckBox
          Left = 95
          Top = 87
          Width = 54
          Height = 14
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnMouseMove = OMITIR_CONMouseMove
        end
        object CODRAM: TEdit
          Left = 95
          Top = 104
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnExit = CODRAMExit
          OnKeyPress = CODRAMKeyPress
          OnMouseMove = CODRAMMouseMove
        end
        object lbx_codram: TListBox
          Left = 156
          Top = 104
          Width = 445
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnKeyDown = lbx_codramKeyDown
        end
        object OMITIR_RAM: TCheckBox
          Left = 95
          Top = 129
          Width = 51
          Height = 13
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnMouseMove = OMITIR_RAMMouseMove
        end
        object CODVEN: TEdit
          Left = 95
          Top = 145
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnExit = CODVENExit
          OnKeyPress = CODVENKeyPress
          OnMouseMove = CODVENMouseMove
        end
        object lbx_codven: TListBox
          Left = 156
          Top = 145
          Width = 445
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnKeyDown = lbx_codvenKeyDown
        end
        object OMITIR_VEN: TCheckBox
          Left = 95
          Top = 169
          Width = 57
          Height = 13
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          OnMouseMove = OMITIR_VENMouseMove
        end
        object CODUF: TEdit
          Left = 95
          Top = 186
          Width = 64
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
          OnExit = CODUFExit
          OnKeyDown = CODUFKeyDown
          OnMouseMove = CODUFMouseMove
        end
        object lbx_coduf: TListBox
          Left = 156
          Top = 186
          Width = 445
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
          OnKeyDown = lbx_codufKeyDown
        end
        object OMITIR_UF: TCheckBox
          Left = 95
          Top = 208
          Width = 54
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
          OnMouseMove = OMITIR_UFMouseMove
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Tipo de Pedido'
      ImageIndex = 2
      object Label12: TLabel
        Left = 0
        Top = 3
        Width = 69
        Height = 13
        Caption = 'Tipo Pedido'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RG_TIPOPED: TCheckListBox
        Left = -1
        Top = 19
        Width = 755
        Height = 288
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Color = clSkyBlue
        Columns = 2
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ItemHeight = 16
        Items.Strings = (
          'Or'#231'amento'
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
          'Todos')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Style = lbOwnerDrawFixed
        TabOrder = 0
        OnClick = RG_TIPOPEDClick
        OnExit = RG_TIPOPEDExit
      end
    end
  end
  object RG_ORDEM: TRadioGroup
    Left = 23
    Top = 339
    Width = 298
    Height = 51
    Caption = 'Ordem do Relat'#243'rio:'
    Columns = 2
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'Nome &do Tipo'
      '&C'#243'digo do Tipo')
    ParentCtl3D = False
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 10
    Top = 398
    Width = 130
    Height = 40
    Caption = '&Imprimir'
    TabOrder = 2
    OnClick = BitBtn1Click
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
  object BitBtn2: TBitBtn
    Left = 642
    Top = 398
    Width = 130
    Height = 40
    Caption = '&Sair'
    TabOrder = 3
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
  object MDT1: TMaskEdit
    Left = 111
    Top = 318
    Width = 98
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 4
    Text = '  /  /    '
    OnExit = MDT1Exit
  end
  object MDT2: TMaskEdit
    Left = 257
    Top = 318
    Width = 98
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 5
    Text = '  /  /    '
    OnExit = MDT2Exit
  end
  object CB_FORCAR: TCheckBox
    Left = 526
    Top = 318
    Width = 215
    Height = 17
    Caption = 'For'#231'ar todos Registros'
    TabOrder = 6
  end
  object CB_EmiDoc: TCheckBox
    Left = 526
    Top = 335
    Width = 136
    Height = 17
    Caption = 'So Emitidos Notas'
    Checked = True
    State = cbChecked
    TabOrder = 7
  end
  object CB_ICMSRET: TCheckBox
    Left = 527
    Top = 353
    Width = 207
    Height = 17
    Caption = 'Incluir Tambem o Icms Retido'
    TabOrder = 8
  end
  object CB_PRODSERV: TComboBox
    Left = 395
    Top = 336
    Width = 107
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 9
    Text = 'Produtos'
    Items.Strings = (
      'Produtos'
      'Servi'#231'os'
      'Todos')
  end
  object Qr_For: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select PNOM AS NOME, PCODEMP AS CODIGO,sum(P2TOTLIQ-P2DESCRAT) a' +
        's total,'
      'sum(P2ICMSR) as ICMSR from CADP01,CADP02,CADCLI,CADUF where'
      'P1CODEMP=1 and'
      'P2CODEMP=P1CODEMP and'
      'P2CHAVE =P1CHAVE  and'
      'P2ORDEM =P1ORDEM  and'
      'CCODEMP =P1CODEMP and'
      'CCODCLI =P1CODCLI and'
      'PCODEMP =CCODEMP and'
      'PUF     =CUF'
      'group by PNOM,PCODEMP')
    Left = 456
    Top = 24
    object Qr_ForNOME: TStringField
      FieldName = 'NOME'
    end
    object Qr_ForCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object Qr_ForTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object Qr_ForICMSR: TFloatField
      FieldName = 'ICMSR'
    end
  end
end

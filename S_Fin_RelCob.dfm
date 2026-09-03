object Frm_Fin_RelCob: TFrm_Fin_RelCob
  Left = 0
  Top = 3
  Width = 800
  Height = 565
  Caption = 'Relat'#243'rio de Duplicatas a Receber'
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 792
    Height = 254
    Align = alClient
    DataSource = Src_CRec
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CRNUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDESD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipdup'
        Width = 27
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRAZAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtemis'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRVALOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valapagar'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'atraso'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtvcto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VCODVEN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRVALPAG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtpag'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtbx'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDESC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRJUROS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRCODCLI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRLOTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRNPED'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VNOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRCODEMP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRLOTSEQ_LB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRCODBCO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nombco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMGRU'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRCODFPGTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRNOMFPGTO'
        Visible = True
      end>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 254
    Width = 792
    Height = 192
    ActivePage = TabSheet1
    Align = alBottom
    MultiLine = True
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Filtros Primarios'
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 784
        Height = 216
        Align = alTop
        Caption = 'Filtrar:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label22: TLabel
          Left = 28
          Top = 90
          Width = 34
          Height = 13
          Caption = 'Banco:'
        end
        object Label25: TLabel
          Left = 23
          Top = 14
          Width = 35
          Height = 13
          Caption = 'Cliente:'
        end
        object Label26: TLabel
          Left = 13
          Top = 51
          Width = 49
          Height = 13
          Caption = 'Vendedor:'
        end
        object Label7: TLabel
          Left = 5
          Top = 127
          Width = 57
          Height = 13
          Caption = 'Forma Pgto:'
        end
        object CODBCO: TEdit
          Left = 67
          Top = 86
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnExit = CODBCOExit
          OnKeyPress = CODBCOKeyPress
        end
        object lbx_codbco: TListBox
          Left = 140
          Top = 86
          Width = 393
          Height = 38
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnKeyDown = lbx_codbcoKeyDown
        end
        object OMITIR_BCO: TCheckBox
          Left = 67
          Top = 107
          Width = 69
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object CODCLI: TEdit
          Left = 67
          Top = 12
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
          Left = 140
          Top = 12
          Width = 393
          Height = 38
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
          Left = 67
          Top = 33
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object CODVEN: TEdit
          Left = 67
          Top = 50
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnExit = CODVENExit
          OnKeyPress = CODVENKeyPress
        end
        object lbx_codven: TListBox
          Left = 140
          Top = 49
          Width = 393
          Height = 38
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnKeyDown = lbx_codvenKeyDown
        end
        object OMITIR_VEN: TCheckBox
          Left = 67
          Top = 69
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object CLB_TIPODOC: TCheckListBox
          Left = 535
          Top = 31
          Width = 237
          Height = 123
          Cursor = crHandPoint
          Color = 16776176
          Columns = 2
          ItemHeight = 13
          Items.Strings = (
            'Normal'
            'Cheque devolvido'
            'Cheque s/fundos'
            'Juros'
            'Nota promissoria'
            'Nota de credito'
            'Cheques Pre-Datado'
            'Requisi'#231#227'o'
            'Financeira 1'
            'Financeira 2'
            'Financeira 3'
            'Financeira 4'
            'Financeira 5'
            'Financeira 6'
            'Financeira 7'
            'Outros'
            'todos')
          Style = lbOwnerDrawFixed
          TabOrder = 9
          OnClick = CLB_TIPODOCClick
        end
        object StaticText10: TStaticText
          Left = 535
          Top = 14
          Width = 236
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Tipo de Documento'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 10
        end
        object CODFP: TEdit
          Left = 67
          Top = 124
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          TabOrder = 11
          OnExit = CODFPExit
        end
        object OMITIR_FP: TCheckBox
          Left = 69
          Top = 144
          Width = 56
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
        end
        object lbx_codfp: TListBox
          Left = 140
          Top = 123
          Width = 393
          Height = 38
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
          OnKeyDown = lbx_codfpKeyDown
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Filtros Segund'#225'rios'
      ImageIndex = 1
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 784
        Height = 204
        Align = alTop
        Caption = 'filtros Segundarios'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label1: TLabel
          Left = 3
          Top = 17
          Width = 84
          Height = 13
          Caption = 'Rede de Clientes:'
        end
        object Label23: TLabel
          Left = 39
          Top = 55
          Width = 48
          Height = 13
          Caption = 'Conv'#234'nio:'
        end
        object Label4: TLabel
          Left = 52
          Top = 90
          Width = 36
          Height = 13
          Caption = 'Cidade:'
        end
        object CODRED: TEdit
          Left = 91
          Top = 16
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = CODREDExit
          OnKeyPress = CODREDKeyPress
        end
        object lbx_codred: TListBox
          Left = 164
          Top = 16
          Width = 430
          Height = 38
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyDown = lbx_codredKeyDown
        end
        object OMITIR_RED: TCheckBox
          Left = 92
          Top = 35
          Width = 71
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object CODCV: TEdit
          Left = 91
          Top = 53
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnExit = CODCVExit
          OnKeyPress = CODCVKeyPress
        end
        object OMITIR_CV: TCheckBox
          Left = 92
          Top = 72
          Width = 71
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object lbx_codcv: TListBox
          Left = 164
          Top = 53
          Width = 430
          Height = 38
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnKeyDown = lbx_codcvKeyDown
        end
        object CODLOC: TEdit
          Left = 91
          Top = 89
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnExit = CODLOCExit
          OnKeyPress = CODLOCKeyPress
        end
        object lbx_codloc: TListBox
          Left = 164
          Top = 90
          Width = 430
          Height = 38
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
          Left = 92
          Top = 110
          Width = 71
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object StaticText12: TStaticText
          Left = 595
          Top = 18
          Width = 91
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Cobran'#231'a'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 9
        end
        object clb_simples: TCheckListBox
          Left = 595
          Top = 36
          Width = 92
          Height = 44
          Color = 16776176
          Columns = 1
          ItemHeight = 13
          Items.Strings = (
            'Simples'
            'Descontado'
            'Todos')
          Style = lbOwnerDrawFixed
          TabOrder = 10
          OnClick = clb_simplesClick
        end
        object StaticText11: TStaticText
          Left = 686
          Top = 18
          Width = 85
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'T'#237'tulos Em'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 11
        end
        object CLB_TIPOCOB: TCheckListBox
          Left = 686
          Top = 36
          Width = 86
          Height = 70
          Color = 16776176
          Columns = 1
          ItemHeight = 13
          Items.Strings = (
            'Carteira'
            'Banco'
            'Cart'#243'rio'
            'Jur'#237'dica'
            'Todos')
          Style = lbOwnerDrawFixed
          TabOrder = 12
          OnClick = CLB_TIPOCOBClick
        end
        object CB_FORCAR: TCheckBox
          Left = 597
          Top = 110
          Width = 137
          Height = 17
          Caption = 'For'#231'ar todos Registros'
          TabOrder = 13
        end
      end
    end
    object tsTipoPed: TTabSheet
      Caption = 'Tipo de Pedidos'
      ImageIndex = 3
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 784
        Height = 164
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
    object ts_outrosfiltros: TTabSheet
      Caption = 'Outros Filtros'
      ImageIndex = 4
      object Label24: TLabel
        Left = 4
        Top = 11
        Width = 59
        Height = 13
        Caption = 'Televendas:'
      end
      object Label27: TLabel
        Left = 11
        Top = 47
        Width = 53
        Height = 13
        Caption = 'Supervisor:'
      end
      object Label12: TLabel
        Left = 69
        Top = 85
        Width = 68
        Height = 13
        AutoSize = False
        Caption = 'Outros Filtros...'
      end
      object CODTEL: TEdit
        Left = 67
        Top = 7
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODTELExit
        OnKeyPress = CODTELKeyPress
      end
      object lbx_codtel: TListBox
        Left = 140
        Top = 7
        Width = 393
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = lbx_codtelKeyDown
      end
      object OMITIR_TEL: TCheckBox
        Left = 68
        Top = 26
        Width = 57
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object CODSUP: TEdit
        Left = 67
        Top = 44
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODSUPExit
        OnKeyPress = CODSUPKeyPress
      end
      object lbx_codsup: TListBox
        Left = 140
        Top = 44
        Width = 393
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_codsupKeyDown
      end
      object OMITIR_SUP: TCheckBox
        Left = 68
        Top = 64
        Width = 71
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object FILTRO: TEdit
        Left = 140
        Top = 81
        Width = 393
        Height = 19
        Hint = 
          'Permite adicionar outros'#13#10'filtros. Esta op'#231#227'o deve '#13#10'ser aliment' +
          'ada somente'#13#10'se vc realmente souber'#13#10'utiliza-la. Para maiores '#13#10 +
          'esclarecimentos solicite'#13#10'ajuda ao suporte.'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 446
    Width = 792
    Height = 88
    Align = alBottom
    TabOrder = 2
    object Label5: TLabel
      Left = 11
      Top = 63
      Width = 100
      Height = 13
      Caption = 'Ordem de Impress'#227'o:'
    end
    object Label2: TLabel
      Left = 68
      Top = 7
      Width = 43
      Height = 13
      AutoSize = False
      Caption = 'Per'#237'odo:'
    end
    object Label3: TLabel
      Left = 210
      Top = 7
      Width = 6
      Height = 13
      Caption = #224
    end
    object Label6: TLabel
      Left = 5
      Top = 43
      Width = 109
      Height = 13
      AutoSize = False
      Caption = 'Pesquisar por data de:'
      WordWrap = True
    end
    object lbl_cheio: TLabel
      Left = 600
      Top = 8
      Width = 12
      Height = 13
      Caption = '***'
    end
    object lbl_datapgto: TLabel
      Left = 46
      Top = 25
      Width = 63
      Height = 13
      AutoSize = False
      Caption = 'Data p/Pgto:'
      Visible = False
    end
    object bbMedPgVcto: TBitBtn
      Left = 440
      Top = 5
      Width = 150
      Height = 25
      Hint = 'Click aqui para ver'#13#10'as m'#233'dias de pagamentos'#13#10'e vencimentos'
      Caption = 'M'#233'dia de Pgto/Venctos'
      TabOrder = 7
      OnClick = bbMedPgVctoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
    end
    object MDT1: TMaskEdit
      Left = 112
      Top = 3
      Width = 70
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
      Left = 233
      Top = 3
      Width = 70
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
    object bbAplicar: TBitBtn
      Left = 638
      Top = 3
      Width = 150
      Height = 25
      Hint = 'Seleciona so T'#237'tulos'#13#10'de Acordo com as'#13#10'Op'#231#245'es Digitadas'
      Caption = '&Aplicar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
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
    object bbSitCli: TBitBtn
      Left = 440
      Top = 29
      Width = 150
      Height = 25
      Hint = 'Mostra a Situa'#231#227'o de '#13#10'Cr'#233'dito do Cliente'#13#10'Selecionado'
      Caption = '&Situa'#231#227'o de Credito'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = bbSitCliClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0000377777777777777703030303030303037F7F7F7F7F7F7F7F000000000000
        00007777777777777777933393303933337073F37F37F73F3377393393303393
        379037FF7F37F37FF777379793303379793037777337F3777737339933303339
        93303377F3F7F3F77F3733993930393993303377F737F7377FF7399993303399
        999037777337F377777793993330333393307377FF37F3337FF7333993303333
        993033377F37F33377F7333993303333993033377337F3337737333333303333
        33303FFFFFF7FFFFFFF700000000000000007777777777777777030303030303
        03037F7F7F7F7F7F7F7F00000000000000007777777777777777}
      NumGlyphs = 2
    end
    object bbImprimir: TBitBtn
      Left = 638
      Top = 27
      Width = 150
      Height = 25
      Hint = 'Imprime os T'#237'tulos '#13#10'Selecionados'
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
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
    object bbSalvarPadrao: TBitBtn
      Left = 440
      Top = 53
      Width = 150
      Height = 25
      Hint = 'Salva as Op'#231#245'es Digitadas'#13#10'Como Padr'#227'o'
      Caption = '&Salvar Padr'#227'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = bbSalvarPadraoClick
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
    object bbSair: TBitBtn
      Left = 637
      Top = 51
      Width = 150
      Height = 25
      Hint = 'Fecha Este Formul'#225'rio'#13#10'e Volta ao Menu Principal'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
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
    object CB_TPP: TComboBox
      Left = 112
      Top = 39
      Width = 202
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 3
      Text = 'Vencimento'
      Items.Strings = (
        'Emiss'#227'o'
        'Vencimento'
        'Data da Baixa'
        'Data do pgto'
        'Data do Pedido')
    end
    object RGTD: TRadioGroup
      Left = 318
      Top = 1
      Width = 113
      Height = 60
      Hint = 'Filtra duplicatas Pagas, em aberta '#13#10'ou lista todas'
      Caption = 'Listar duplicatas:'
      Color = clBtnFace
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 2
      Items.Strings = (
        '&Todas'
        '&Pagas'
        '&N'#227'o Pagas')
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object DATAPGTO: TMaskEdit
      Left = 112
      Top = 21
      Width = 70
      Height = 19
      Hint = 'Data Prevista para Pagamento'
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Text = '  /  /    '
      Visible = False
      OnExit = DATAPGTOExit
    end
    object cb_ordem: TComboBox
      Left = 112
      Top = 60
      Width = 202
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = 'Data de Vencimento'
      Items.Strings = (
        'Data de Vencimento'
        'Data de Emiss'#227'o'
        'Raz'#227'o Social'
        'Valor Crescente'
        'Valor Descrescente'
        'Data de Baixa'
        'Data de Pagamento'
        'Vendedor+Dt.Vcto'
        'Empresa+Emiss'#227'o'
        'Empresa+Vcto')
    end
    object CB_OBSCLI: TCheckBox
      Left = 319
      Top = 64
      Width = 115
      Height = 17
      Caption = 'Imp Obs do Cliente'
      TabOrder = 6
    end
  end
  object Qr_CRec: TQuery
    OnCalcFields = Qr_CRecCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CRNUMERO, CRDESD, CRDTEMIS, CRDTVCTO,'
      '           CRDTBX, CRDESC, CRJUROS, CRVALOR,CRCODCLI,'
      '           CRAZAO, CDENOM,'
      '           CFONE01,'
      '           COBS01,COBS02,COBS03,COBS04,COBS05,'
      '           CCODLOC,CCIDADE,CUF,'
      '           CCODBAI,CBAIRRO,'
      '           CRLOTE,CRVALPAG,CRDUP,CRDTPAG,'
      '           CRNPED,CRORDEM,CRLOTSEQ_LB,'
      '           CRCODEMP,CRCODBCO,CRSTATUS,CRJURD,'
      '           CRAZAO AS NOMGRU,'
      '           CRCODCC AS CODCCU,'
      '           CRNOMCC AS NOMCCU,'
      '           CRCODFPGTO,CRNOMFPGTO,'
      '           VCODVEN,VNOME,cricmsr,crtotipi,'
      '           CRDESCF,'
      '           CRDTDESCF,CRDESCD,CRMULTA,CRDEVOL'
      '             from CADDAR, CADCLI,CADVEN'
      '          where CRCODEMP is null and'
      '           CCODCLI=CRCODCLI and'
      '           VCODVEN=CRCODVEN')
    Left = 344
    Top = 12
    object Qr_CRecCRNUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CRNUMERO'
      Origin = 'SG_ASSOC.CADDAR.CRNUMERO'
    end
    object Qr_CRecCRDESD: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'CRDESD'
      Origin = 'SG_ASSOC.CADDAR.CRDESD'
      Size = 2
    end
    object Qr_CRecCRDTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'CRDTEMIS'
      Origin = 'SG_ASSOC.CADDAR.CRDTEMIS'
    end
    object Qr_CRecCRDTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'CRDTVCTO'
      Origin = 'SG_ASSOC.CADDAR.CRDTVCTO'
    end
    object Qr_CRecCRDTBX: TDateTimeField
      DisplayLabel = 'Dt.Baixa'
      FieldName = 'CRDTBX'
      Origin = 'SG_ASSOC.CADDAR.CRDTBX'
    end
    object Qr_CRecCRDESC: TFloatField
      DisplayLabel = 'Vlr.Desc.'
      FieldName = 'CRDESC'
      Origin = 'SG_ASSOC.CADDAR.CRDESC'
    end
    object Qr_CRecCRJUROS: TFloatField
      DisplayLabel = 'Vlr.Juros'
      FieldName = 'CRJUROS'
      Origin = 'SG_ASSOC.CADDAR.CRJUROS'
    end
    object Qr_CRecCRVALOR: TFloatField
      DisplayLabel = 'Valor Compra'
      FieldName = 'CRVALOR'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR'
    end
    object Qr_CRecCRCODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'CRCODCLI'
      Origin = 'SG_ASSOC.CADDAR.CRCODCLI'
    end
    object Qr_CRecCRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_CRecCRLOTE: TFloatField
      DisplayLabel = 'Lote Bx'
      FieldName = 'CRLOTE'
      Origin = 'SG_ASSOC.CADDAR.CRLOTE'
    end
    object Qr_CRecVCODVEN: TFloatField
      DisplayLabel = 'Cod.Vend'
      FieldName = 'VCODVEN'
      Origin = 'SG_ASSOC.CADVEN.VCODVEN'
    end
    object Qr_CRecVNOME: TStringField
      DisplayLabel = 'Nome Vendedor'
      FieldName = 'VNOME'
      Origin = 'SG_ASSOC.CADVEN.VNOME'
      Size = 40
    end
    object Qr_CRecCRVALPAG: TFloatField
      DisplayLabel = 'Valor Recebido'
      FieldName = 'CRVALPAG'
      Origin = 'SG_ASSOC.CADDAR.CRVALPAG'
    end
    object Qr_CRecCRDUP: TFloatField
      DisplayLabel = 'Dup'
      FieldName = 'CRDUP'
      Origin = 'SG_ASSOC.CADDAR.CRDUP'
    end
    object Qr_CRecCRDTPAG: TDateTimeField
      DisplayLabel = 'Dt.Pgto'
      FieldName = 'CRDTPAG'
      Origin = 'SG_ASSOC.CADDAR.CRDTPAG'
    end
    object Qr_CRecCRNPED: TFloatField
      DisplayLabel = 'Chave Ped'
      FieldName = 'CRNPED'
      Origin = 'SG_ASSOC.CADDAR.CRNPED'
    end
    object Qr_CRecCRORDEM: TFloatField
      DisplayLabel = 'Ordem Ped'
      FieldName = 'CRORDEM'
      Origin = 'SG_ASSOC.CADDAR.CRORDEM'
    end
    object Qr_CRecCRCODEMP: TFloatField
      DisplayLabel = 'Cod.Emp.'
      FieldName = 'CRCODEMP'
      Origin = 'SG_ASSOC.CADDAR.CRCODEMP'
    end
    object Qr_CRecCRLOTSEQ_LB: TFloatField
      DisplayLabel = 'Lote Seq Bx'
      FieldName = 'CRLOTSEQ_LB'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_LB'
    end
    object Qr_CRecCRCODBCO: TFloatField
      DisplayLabel = 'C'#243'd.Bco'
      FieldName = 'CRCODBCO'
      Origin = 'SG_ASSOC.CADDAR.CRCODBCO'
    end
    object Qr_CRecnombco: TStringField
      DisplayLabel = 'Nome do Banco'
      FieldKind = fkCalculated
      FieldName = 'nombco'
      Size = 40
      Calculated = True
    end
    object Qr_CRecCCODLOC: TFloatField
      FieldName = 'CCODLOC'
      Origin = 'SG_ASSOC.CADCLI.CCODLOC'
    end
    object Qr_CRecCCIDADE: TStringField
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Qr_CRecCUF: TStringField
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Qr_CRecCCODBAI: TFloatField
      FieldName = 'CCODBAI'
      Origin = 'SG_ASSOC.CADCLI.CCODBAI'
    end
    object Qr_CRecCBAIRRO: TStringField
      FieldName = 'CBAIRRO'
      Origin = 'SG_ASSOC.CADCLI.CBAIRRO'
      Size = 30
    end
    object Qr_CRectipdup: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkCalculated
      FieldName = 'tipdup'
      Size = 10
      Calculated = True
    end
    object Qr_CRecdtemis: TStringField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldKind = fkCalculated
      FieldName = 'dtemis'
      Size = 10
      Calculated = True
    end
    object Qr_CRecdtvcto: TStringField
      DisplayLabel = 'Dt.Vcto'
      FieldKind = fkCalculated
      FieldName = 'dtvcto'
      Size = 10
      Calculated = True
    end
    object Qr_CRecdtbx: TStringField
      DisplayLabel = 'Dt.Baixa'
      FieldKind = fkCalculated
      FieldName = 'dtbx'
      Calculated = True
    end
    object Qr_CRecdtpag: TStringField
      DisplayLabel = 'Dt.Pgto.'
      FieldKind = fkCalculated
      FieldName = 'dtpag'
      Size = 10
      Calculated = True
    end
    object Qr_CRecatraso: TFloatField
      DisplayLabel = 'Atraso'
      FieldKind = fkCalculated
      FieldName = 'atraso'
      Calculated = True
    end
    object Qr_CRecCRSTATUS: TFloatField
      FieldName = 'CRSTATUS'
      Origin = 'SG_ASSOC.CADDAR.CRSTATUS'
    end
    object Qr_CRecNOMGRU: TStringField
      FieldName = 'NOMGRU'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_CRecCODCCU: TStringField
      FieldName = 'CODCCU'
      Origin = 'SG_ASSOC.CADDAR.CRCODCC'
      Size = 5
    end
    object Qr_CRecNOMCCU: TStringField
      FieldName = 'NOMCCU'
      Origin = 'SG_ASSOC.CADDAR.CRNOMCC'
      Size = 40
    end
    object Qr_CRecnumdoc: TStringField
      FieldKind = fkCalculated
      FieldName = 'numdoc'
      Size = 9
      Calculated = True
    end
    object Qr_CRecrazao_codigo: TStringField
      FieldKind = fkCalculated
      FieldName = 'razao_codigo'
      Size = 60
      Calculated = True
    end
    object Qr_CRecvalapagar: TFloatField
      DisplayLabel = 'Saldo Devedor'
      FieldKind = fkCalculated
      FieldName = 'valapagar'
      Calculated = True
    end
    object Qr_CRecCRCODFPGTO: TFloatField
      DisplayLabel = 'C'#243'd.Fpgto'
      FieldName = 'CRCODFPGTO'
      Origin = 'SG_ASSOC.CADDAR.CRCODFPGTO'
    end
    object Qr_CRecCRNOMFPGTO: TStringField
      DisplayLabel = 'Nome Fpgto'
      FieldName = 'CRNOMFPGTO'
      Origin = 'SG_ASSOC.CADDAR.CRNOMFPGTO'
      Size = 40
    end
    object Qr_CRecCRJURD: TFloatField
      FieldName = 'CRJURD'
      Origin = 'SG_ASSOC.CADDAR.CRJURD'
    end
    object Qr_CRecCRICMSR: TFloatField
      FieldName = 'CRICMSR'
      Origin = 'SG_ASSOC.CADDAR.CRICMSR'
    end
    object Qr_CRecCRTOTIPI: TFloatField
      FieldName = 'CRTOTIPI'
      Origin = 'SG_ASSOC.CADDAR.CRTOTIPI'
    end
    object Qr_CRecCRDESCF: TFloatField
      FieldName = 'CRDESCF'
      Origin = 'SG_ASSOC.CADDAR.CRDESCF'
    end
    object Qr_CRecCRDTDESCF: TDateTimeField
      FieldName = 'CRDTDESCF'
      Origin = 'SG_ASSOC.CADDAR.CRDTDESCF'
    end
    object Qr_CRecCRDESCD: TFloatField
      FieldName = 'CRDESCD'
      Origin = 'SG_ASSOC.CADDAR.CRDESCD'
    end
    object Qr_CRecCRMULTA: TFloatField
      FieldName = 'CRMULTA'
      Origin = 'SG_ASSOC.CADDAR.CRMULTA'
    end
    object Qr_CRecCRDEVOL: TFloatField
      FieldName = 'CRDEVOL'
      Origin = 'SG_ASSOC.CADDAR.CRDEVOL'
    end
    object Qr_CRecvalorjuros: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valorjuros'
      Calculated = True
    end
    object Qr_CRecCDENOM: TStringField
      FieldName = 'CDENOM'
      Origin = 'SG_ASSOC.CADCLI.CDENOM'
      Size = 40
    end
    object Qr_CRecCFONE01: TStringField
      FieldName = 'CFONE01'
      Origin = 'SG_ASSOC.CADCLI.CFONE01'
      Size = 16
    end
    object Qr_CRecCOBS01: TStringField
      FieldName = 'COBS01'
      Origin = 'SG_ASSOC.CADCLI.COBS01'
      Size = 60
    end
    object Qr_CRecCOBS02: TStringField
      FieldName = 'COBS02'
      Origin = 'SG_ASSOC.CADCLI.COBS02'
      Size = 60
    end
    object Qr_CRecCOBS03: TStringField
      FieldName = 'COBS03'
      Origin = 'SG_ASSOC.CADCLI.COBS03'
      Size = 60
    end
    object Qr_CRecCOBS04: TStringField
      FieldName = 'COBS04'
      Origin = 'SG_ASSOC.CADCLI.COBS04'
      Size = 60
    end
    object Qr_CRecCOBS05: TStringField
      FieldName = 'COBS05'
      Origin = 'SG_ASSOC.CADCLI.COBS05'
      Size = 60
    end
    object Qr_CRecvalormora: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valormora'
      Calculated = True
    end
    object Qr_CRecvalordescfin: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valordescfin'
      Calculated = True
    end
    object Qr_CRecvalordescant: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valordescant'
      Calculated = True
    end
    object Qr_CRectotliqapagar: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totliqapagar'
      Calculated = True
    end
    object Qr_CRecCLOG: TStringField
      FieldName = 'CLOG'
      Size = 60
    end
    object Qr_CRecCNUM: TStringField
      FieldName = 'CNUM'
    end
    object Qr_CRecCCOMPL: TStringField
      FieldName = 'CCOMPL'
      Size = 100
    end
    object Qr_CRecender_compl: TStringField
      FieldKind = fkCalculated
      FieldName = 'ender_compl'
      Size = 300
      Calculated = True
    end
  end
  object Src_CRec: TDataSource
    DataSet = Qr_CRec
    Left = 360
    Top = 96
  end
end

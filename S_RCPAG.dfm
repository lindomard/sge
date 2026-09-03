object Frm_RCPag: TFrm_RCPag
  Left = 247
  Top = 126
  Width = 953
  Height = 546
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Relat'#243'rio de Duplicatas a Pagar'
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 945
    Height = 188
    Align = alClient
    DataSource = Src_Cpag
    FixedColor = 15257808
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'OK'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CANUMERO'
        ReadOnly = True
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADESD'
        ReadOnly = True
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FRAZAO'
        ReadOnly = True
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtvcto'
        ReadOnly = True
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'saldodev'
        ReadOnly = True
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAVALDES'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtdescfin'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAVALOR'
        ReadOnly = True
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAVALPAG'
        ReadOnly = True
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtpag'
        ReadOnly = True
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'atraso'
        ReadOnly = True
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CALOTE'
        ReadOnly = True
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipdup'
        ReadOnly = True
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CACODFOR'
        ReadOnly = True
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CASTATUS'
        ReadOnly = True
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtemis'
        ReadOnly = True
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADUP'
        ReadOnly = True
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CACODEMP'
        ReadOnly = True
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtbx'
        ReadOnly = True
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADESC'
        ReadOnly = True
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAJUROS'
        ReadOnly = True
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAVALOR_ACRES'
        Visible = True
      end>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 188
    Width = 945
    Height = 290
    ActivePage = ts_Principais
    Align = alBottom
    TabOrder = 1
    object ts_Principais: TTabSheet
      Caption = 'Principais'
      object Label5: TLabel
        Left = 7
        Top = 4
        Width = 132
        Height = 13
        Caption = 'C'#243'digo Fornecedor......'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 515
        Top = 3
        Width = 112
        Height = 13
        Alignment = taCenter
        Caption = 'Tipo de Fornecedor'
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 10
        Top = 47
        Width = 68
        Height = 13
        Caption = 'Per'#237'odo de:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label3: TLabel
        Left = 208
        Top = 42
        Width = 6
        Height = 13
        Caption = #224
      end
      object Label1: TLabel
        Left = 516
        Top = 98
        Width = 112
        Height = 13
        Alignment = taCenter
        Caption = 'Tipo de Documento'
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label7: TLabel
        Left = 5
        Top = 118
        Width = 67
        Height = 13
        Caption = 'Separado por:'
      end
      object Label9: TLabel
        Left = 646
        Top = 98
        Width = 85
        Height = 13
        Alignment = taCenter
        Caption = 'Tipo Despesas'
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label12: TLabel
        Left = 672
        Top = 208
        Width = 33
        Height = 13
        Caption = 'Fonte: '
      end
      object CODFOR: TEdit
        Left = 129
        Top = 0
        Width = 74
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CODFORExit
        OnKeyPress = CODFORKeyPress
      end
      object OMITIR_FOR: TCheckBox
        Left = 130
        Top = 21
        Width = 57
        Height = 17
        Hint = 'Se Marcado os C'#243'digos digitados'#13#10'n'#227'o Ser'#227'o Impressos'
        Caption = 'Omitir'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object lbx_codfor: TListBox
        Left = 202
        Top = 0
        Width = 311
        Height = 40
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnKeyDown = lbx_codforKeyDown
      end
      object clb_tipofor: TCheckListBox
        Left = 515
        Top = 18
        Width = 259
        Height = 79
        Color = 16776176
        Columns = 2
        ItemHeight = 13
        Items.Strings = (
          'Mercadorias'
          'Presta'#231#227'o Servi'#231'o'
          'Funcion'#225'rios'
          'Aluguel'
          'Impostos'
          'Pre'#231'os de Mercadorias'
          'Outros'
          'Todos')
        Style = lbOwnerDrawFixed
        TabOrder = 19
        OnClick = clb_tipoforClick
      end
      object MDT1: TMaskEdit
        Left = 129
        Top = 39
        Width = 74
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
        Left = 217
        Top = 39
        Width = 77
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 4
        Text = '  /  /    '
        OnExit = MDT2Exit
      end
      object cb_formapag: TCheckBox
        Left = 303
        Top = 41
        Width = 207
        Height = 17
        Caption = 'Exibir todas datas de pagamento'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 5
      end
      object clb_tipodoc: TCheckListBox
        Left = 515
        Top = 111
        Width = 127
        Height = 134
        Color = 16776176
        Columns = 1
        ItemHeight = 13
        Items.Strings = (
          'Normal'
          'Cheque Devolvido'
          'Cheque S/fundos'
          'Juros'
          'Nota Promissoria'
          'Nota de Credito'
          'Cheques Pre-Datado'
          'Requisi'#231#227'o'
          'Outros'
          'Todos')
        Style = lbOwnerDrawFixed
        TabOrder = 20
        OnClick = clb_tipodocClick
      end
      object CB_VISREL: TCheckBox
        Left = 130
        Top = 59
        Width = 157
        Height = 17
        Hint = 'Se Marcado mostra o '#13#10'relat'#243'rio antes de imprimir'
        Caption = 'Visualizar Antes de Imprimir'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 6
      end
      object CB_MATRICIAL: TCheckBox
        Left = 292
        Top = 59
        Width = 132
        Height = 17
        Hint = 'Se Marcado a impress'#227'o'#13#10'padr'#227'o sera para impressora'#13#10'matricial'
        Caption = 'Impress'#227'o Matricial'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 7
      end
      object CB_SEMBORDA: TCheckBox
        Left = 421
        Top = 56
        Width = 88
        Height = 17
        Hint = 
          'N'#227'o Emitir as Bordas Para'#13#10'Impress'#227'o mais r'#225'pida em'#13#10'impressora ' +
          'matricial'
        Caption = 'Sem Bordas'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = CB_SEMBORDAClick
      end
      object CB_TD: TComboBox
        Left = 3
        Top = 93
        Width = 125
        Height = 21
        BevelKind = bkFlat
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 9
        Text = 'Todas'
        OnExit = CB_TDExit
        Items.Strings = (
          'Todas'
          'Pagas'
          'N'#227'o Pagas')
      end
      object StaticText1: TStaticText
        Left = 3
        Top = 76
        Width = 125
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Listar Duplicatas'
        Color = 8454016
        ParentColor = False
        TabOrder = 10
      end
      object StaticText2: TStaticText
        Left = 131
        Top = 77
        Width = 125
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Pesquisar por'
        Color = 8454016
        ParentColor = False
        TabOrder = 11
      end
      object CB_TPP: TComboBox
        Left = 131
        Top = 95
        Width = 125
        Height = 21
        BevelKind = bkFlat
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 12
        Text = 'Vencimento'
        OnExit = CB_TPPExit
        Items.Strings = (
          'Vencimento'
          'Emiss'#227'o'
          'Data da Baixa'
          'Data &Pagamento'
          'Data da &Inclusao')
      end
      object StaticText3: TStaticText
        Left = 262
        Top = 76
        Width = 125
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Ordem de Impressao'
        Color = 8454016
        ParentColor = False
        TabOrder = 13
      end
      object CB_ORDEM: TComboBox
        Left = 261
        Top = 93
        Width = 125
        Height = 21
        BevelKind = bkFlat
        ItemHeight = 13
        TabOrder = 14
        Text = 'Data de Vencimento'
        OnExit = CB_ORDEMExit
        Items.Strings = (
          'Data de Vencimento'
          'Data de Emiss'#227'o'
          'Raz'#227'o Social'
          'Valor Crescente'
          'Valor Descrescente'
          'Data de Pagamento'
          ''
          '')
      end
      object StaticText4: TStaticText
        Left = 389
        Top = 76
        Width = 125
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Tipo do Relatorio'
        Color = 8454016
        ParentColor = False
        TabOrder = 18
      end
      object CB_TIPOREL: TComboBox
        Left = 389
        Top = 94
        Width = 125
        Height = 21
        BevelKind = bkFlat
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 15
        Text = 'Modelo 01'
        OnClick = CB_TIPORELClick
        OnExit = CB_TIPORELExit
        Items.Strings = (
          'Modelo 01'
          'Modelo 02'
          'Modelo 03'
          'Modelo 04'
          '')
      end
      object gb_totalizacao: TGroupBox
        Left = 0
        Top = 134
        Width = 513
        Height = 123
        Caption = 'Totaliza'#231#227'o:'
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 22
        object Label13: TLabel
          Left = 2
          Top = 40
          Width = 97
          Height = 17
          AutoSize = False
          Caption = 'Em Aberto Venc.'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label17: TLabel
          Left = 2
          Top = 56
          Width = 97
          Height = 17
          AutoSize = False
          Caption = 'Em Aberto A Venc..'
          Color = clSilver
          ParentColor = False
        end
        object Label6: TLabel
          Left = 2
          Top = 88
          Width = 97
          Height = 17
          AutoSize = False
          Caption = 'Total Pagas.............'
          Color = clSilver
          ParentColor = False
        end
        object Label8: TLabel
          Left = 2
          Top = 104
          Width = 97
          Height = 17
          AutoSize = False
          Caption = 'Total Geral.............'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object TOTABRVCT: TStaticText
          Left = 99
          Top = 40
          Width = 70
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
        object TOTABRAVENC: TStaticText
          Left = 99
          Top = 56
          Width = 70
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
        object TOTABR: TStaticText
          Left = 99
          Top = 72
          Width = 70
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 2
        end
        object DEV_VENCREC: TStaticText
          Left = 168
          Top = 40
          Width = 60
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 3
        end
        object SEL_TOTABRAVENC: TStaticText
          Left = 306
          Top = 56
          Width = 70
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 4
        end
        object SEL_TOTABRVCT: TStaticText
          Left = 306
          Top = 40
          Width = 70
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 5
        end
        object DEV_TOTABRAVENC: TStaticText
          Left = 168
          Top = 56
          Width = 60
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 6
        end
        object DEV_TOTABR: TStaticText
          Left = 168
          Top = 72
          Width = 60
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 7
        end
        object SEL_DEV_VENCREC: TStaticText
          Left = 375
          Top = 40
          Width = 60
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 8
        end
        object SEL_DEV_TOTABRAVENC: TStaticText
          Left = 375
          Top = 56
          Width = 60
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 9
        end
        object TOTPAG: TStaticText
          Left = 99
          Top = 88
          Width = 70
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 10
        end
        object DEV_TOTPAG: TStaticText
          Left = 168
          Top = 88
          Width = 60
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 11
        end
        object SEL_TOTABR: TStaticText
          Left = 306
          Top = 72
          Width = 70
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 12
        end
        object SEL_DEV_TOTABR: TStaticText
          Left = 375
          Top = 72
          Width = 60
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 13
        end
        object SEL_TOTPAG: TStaticText
          Left = 306
          Top = 88
          Width = 70
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 14
        end
        object SEL_DEV_TOTPAG: TStaticText
          Left = 375
          Top = 88
          Width = 60
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 15
        end
        object TOTDUPGER: TStaticText
          Left = 99
          Top = 104
          Width = 70
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 16
        end
        object DEV_TOTDUPGER: TStaticText
          Left = 168
          Top = 104
          Width = 60
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 17
        end
        object SEL_TOTDUPGER: TStaticText
          Left = 306
          Top = 104
          Width = 70
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 18
        end
        object SEL_SALDUPGER: TStaticText
          Left = 434
          Top = 104
          Width = 70
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 19
        end
        object SALABRVCT: TStaticText
          Left = 227
          Top = 40
          Width = 70
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 20
        end
        object SEL_SALABRVCT: TStaticText
          Left = 434
          Top = 40
          Width = 70
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 21
        end
        object SALABRAVENC: TStaticText
          Left = 227
          Top = 56
          Width = 70
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 22
        end
        object SEL_SALABRAVENC: TStaticText
          Left = 434
          Top = 56
          Width = 70
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 23
        end
        object SALABR: TStaticText
          Left = 227
          Top = 72
          Width = 70
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 24
        end
        object SEL_SALABR: TStaticText
          Left = 434
          Top = 72
          Width = 70
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 25
        end
        object SEL_SALPAG: TStaticText
          Left = 434
          Top = 88
          Width = 70
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 26
        end
        object SALPAG: TStaticText
          Left = 227
          Top = 88
          Width = 70
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 27
        end
        object SEL_DEV_TOTDUPGER: TStaticText
          Left = 375
          Top = 104
          Width = 60
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 28
        end
        object SALDUPGER: TStaticText
          Left = 227
          Top = 104
          Width = 70
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 29
        end
        object StaticText15: TStaticText
          Left = 2
          Top = 24
          Width = 98
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Selecionados'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 30
        end
        object StaticText16: TStaticText
          Left = 99
          Top = 24
          Width = 70
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Debitos'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 31
        end
        object StaticText17: TStaticText
          Left = 168
          Top = 24
          Width = 60
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Creditos'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 32
        end
        object StaticText18: TStaticText
          Left = 227
          Top = 24
          Width = 70
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Saldo'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 33
        end
        object StaticText19: TStaticText
          Left = 434
          Top = 24
          Width = 70
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Saldo'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 34
        end
        object StaticText20: TStaticText
          Left = 375
          Top = 24
          Width = 60
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Creditos'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 35
        end
        object StaticText21: TStaticText
          Left = 306
          Top = 24
          Width = 70
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Debitos'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 36
        end
        object StaticText22: TStaticText
          Left = 306
          Top = 8
          Width = 198
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Titulos Marcados'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 37
        end
      end
      object CB_SEPAR: TComboBox
        Left = 80
        Top = 115
        Width = 305
        Height = 21
        BevelKind = bkFlat
        ItemHeight = 13
        TabOrder = 16
        Text = 'Sem Separar'
        OnExit = CB_SEPARExit
        Items.Strings = (
          'Bairro'
          'Banco'
          'Cidade'
          'Data de Vencimento'
          'Data de Emiss'#227'o'
          'Raz'#227'o Social'
          'Sem Separar'
          'Tipo de Documento'
          'UF'
          'Grupo de Fornecedores'
          'Mes/Ano Emiss'#227'o'
          'Mes/Ano Vencimento'
          'Forma de Pagamento')
      end
      object CB_IMPOBS: TCheckBox
        Left = 392
        Top = 119
        Width = 116
        Height = 17
        Hint = 'se marcado sera impresso uma linha com a observa'#231#227'o'
        Caption = 'Imprimir Linha Obs'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
        OnClick = CB_SEMBORDAClick
      end
      object CB_TDESP: TCheckListBox
        Left = 644
        Top = 114
        Width = 85
        Height = 49
        Color = 16776176
        Columns = 1
        ItemHeight = 13
        Items.Strings = (
          'Variada'
          'Fixa'
          'Todas')
        Style = lbOwnerDrawFixed
        TabOrder = 21
        OnClick = CB_TDESPClick
      end
      object cb_impparc: TCheckBox
        Left = 518
        Top = 244
        Width = 116
        Height = 17
        Hint = 'se marcado sera impresso uma linha com a observa'#231#227'o'
        Caption = 'Imp Parc'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 23
        OnClick = CB_SEMBORDAClick
      end
      object sbn_fonte: TSpinEdit
        Left = 660
        Top = 226
        Width = 65
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 24
        Value = -7
        OnChange = sbn_fonteChange
        OnClick = sbn_fonteClick
      end
    end
    object ts_Relatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = 69
        Top = -35
        Width = 794
        Height = 945
        DataSource = Src_Cpag
        DefaultFilter = Matricial
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        PageSetup.PaperSize = fpCustom
        PageSetup.PaperWidth = 210.000000000000000000
        PageSetup.PaperHeight = 250.000000000000000000
        ShowProgress = False
        BeforePrint = RLReport1BeforePrint
        object RLBand1: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 50
          BandType = btColumnHeader
          Degrade.Direction = ddVertical
          Degrade.OppositeColor = 6619057
          object RLDBText1: TRLDBText
            Left = 0
            Top = 0
            Width = 164
            Height = 16
            Align = faLeftTop
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object RLLabel1: TRLLabel
            Left = 573
            Top = 1
            Width = 35
            Height = 16
            Caption = 'Data:'
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 632
            Top = 0
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object lbl_titulo02: TRLLabel
            Left = 0
            Top = 17
            Width = 98
            Height = 16
            Caption = 'Contas a Pagar.'
          end
          object lbl_periodo: TRLLabel
            Left = 161
            Top = 17
            Width = 392
            Height = 16
            Alignment = taCenter
            AutoSize = False
          end
          object RLLabel3: TRLLabel
            Left = 572
            Top = 18
            Width = 48
            Height = 16
            Caption = 'P'#225'gina:'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 632
            Top = 17
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
          end
          object lbl_titulo: TRLLabel
            Left = 0
            Top = 34
            Width = 718
            Height = 16
            Align = faClientBottom
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = 'Relat'#243'rio de Contas a Pagar.'
            Color = 16766935
            ParentColor = False
            Transparent = False
          end
        end
        object RLGroup1: TRLGroup
          Left = 38
          Top = 88
          Width = 718
          Height = 103
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          DataFields = 'NOMGRU'
          object RLBand2: TRLBand
            Left = 1
            Top = 0
            Width = 716
            Height = 26
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object db_grupo: TRLDBText
              Left = 0
              Top = 0
              Width = 716
              Height = 25
              Align = faClient
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Color = clWhite
              DataField = 'NOMGRU'
              DataSource = Src_Cpag
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
          end
          object band_cab: TRLBand
            Left = 1
            Top = 26
            Width = 716
            Height = 27
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object lbl_cabNumdoc: TRLMemo
              Left = 1
              Top = 0
              Width = 44
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'N'#250'mero')
            end
            object lbl_cabChave: TRLMemo
              Left = 711
              Top = 0
              Width = 42
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                'Chave')
            end
            object lbl_cabRazSoc: TRLMemo
              Left = 45
              Top = 0
              Width = 180
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Raz'#227'o Social')
            end
            object lbl_cabDtEmis: TRLMemo
              Left = 226
              Top = 0
              Width = 58
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Data de Emiss'#227'o')
            end
            object lbl_cabValDup: TRLMemo
              Left = 284
              Top = 0
              Width = 56
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Valor do Titulo')
            end
            object lbl_cabValPag: TRLMemo
              Left = 340
              Top = 0
              Width = 58
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Valor Pago')
            end
            object lbl_cabArec: TRLMemo
              Left = 398
              Top = 0
              Width = 62
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Valor Em Aberto')
            end
            object lbl_CabDtVcto: TRLMemo
              Left = 460
              Top = 0
              Width = 58
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Data de Vcto.')
            end
            object lbl_cabDatPgto: TRLMemo
              Left = 519
              Top = 0
              Width = 58
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Data de Pgto')
            end
            object lbl_cabDesc: TRLMemo
              Left = 576
              Top = 0
              Width = 48
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Descontos')
            end
            object lbl_CabJuros: TRLMemo
              Left = 624
              Top = 0
              Width = 46
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Juros')
            end
            object lbl_cabdoc: TRLMemo
              Left = 671
              Top = 0
              Width = 40
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Doc'
                '')
            end
          end
          object RLBand4: TRLBand
            Left = 1
            Top = 53
            Width = 716
            Height = 12
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLBand4BeforePrint
            object lbl_numdoc: TRLDBText
              Left = 1
              Top = 0
              Width = 44
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'numero'
              DataSource = Src_Cpag
              Holder = lbl_cabNumdoc
              Layout = tlCenter
            end
            object lbl_Chave: TRLDBText
              Left = 711
              Top = 0
              Width = 42
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'CRNPED'
              Holder = lbl_cabChave
              Layout = tlCenter
            end
            object lbl_RazSoc: TRLDBText
              Left = 45
              Top = 0
              Width = 180
              Height = 12
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'razao_codigo'
              DataSource = Src_Cpag
              Holder = lbl_cabRazSoc
              Layout = tlCenter
            end
            object lbl_DtEmiss: TRLDBText
              Left = 226
              Top = 0
              Width = 58
              Height = 12
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'dtemis'
              DataSource = Src_Cpag
              Holder = lbl_cabDtEmis
              Layout = tlCenter
            end
            object lbl_ValDup: TRLDBText
              Left = 284
              Top = 0
              Width = 56
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'CAVALOR'
              DataSource = Src_Cpag
              Holder = lbl_cabValDup
              Layout = tlCenter
            end
            object lbl_ValPag: TRLDBText
              Left = 340
              Top = 0
              Width = 58
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'CAVALPAG'
              DataSource = Src_Cpag
              Holder = lbl_cabValPag
              Layout = tlCenter
            end
            object lbl_Arec: TRLDBText
              Left = 398
              Top = 0
              Width = 62
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'saldodev'
              DataSource = Src_Cpag
              Holder = lbl_cabArec
              Layout = tlCenter
            end
            object lbl_DtVcto: TRLDBText
              Left = 460
              Top = 0
              Width = 58
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'dtvcto'
              DataSource = Src_Cpag
              Holder = lbl_CabDtVcto
              Layout = tlCenter
            end
            object lbl_DatPgto: TRLDBText
              Left = 519
              Top = 0
              Width = 58
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'dtpag'
              DataSource = Src_Cpag
              Holder = lbl_cabDatPgto
              Layout = tlCenter
            end
            object lbl_Desc: TRLDBText
              Left = 576
              Top = 0
              Width = 48
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'CADESC'
              DataSource = Src_Cpag
              Holder = lbl_cabDesc
              Layout = tlCenter
            end
            object lbl_Juros: TRLDBText
              Left = 624
              Top = 0
              Width = 46
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'CAJUROS'
              DataSource = Src_Cpag
              Holder = lbl_CabJuros
              Layout = tlCenter
            end
            object lbl_doc: TRLDBText
              Left = 671
              Top = 0
              Width = 40
              Height = 12
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'tipdup'
              DataSource = Src_Cpag
              Holder = lbl_cabdoc
              Layout = tlCenter
            end
          end
          object RLBand6: TRLBand
            Left = 1
            Top = 84
            Width = 716
            Height = 15
            BandType = btSummary
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLBand6BeforePrint
            object lblg_numdoc: TRLLabel
              Left = 1
              Top = 0
              Width = 44
              Height = 14
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 
                'Total...........................................................' +
                '.........................................'
              Holder = lbl_cabNumdoc
            end
            object lblg_Chave: TRLLabel
              Left = 711
              Top = 0
              Width = 42
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = ' '
              Holder = lbl_cabChave
            end
            object lblg_RazSoc: TRLLabel
              Left = 45
              Top = 1
              Width = 180
              Height = 14
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Holder = lbl_cabRazSoc
            end
            object lblg_DtEmis: TRLLabel
              Left = 226
              Top = 1
              Width = 58
              Height = 14
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Holder = lbl_cabDtEmis
            end
            object lblg_ValDup: TRLLabel
              Left = 284
              Top = 1
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Holder = lbl_cabValDup
            end
            object lblg_ValPag: TRLLabel
              Left = 340
              Top = 1
              Width = 58
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Holder = lbl_cabValPag
            end
            object lblg_Arec: TRLLabel
              Left = 398
              Top = 1
              Width = 62
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Holder = lbl_cabArec
            end
            object lblg_DtVcto: TRLLabel
              Left = 460
              Top = 1
              Width = 58
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Holder = lbl_CabDtVcto
            end
            object lblg_DatPgto: TRLLabel
              Left = 519
              Top = 1
              Width = 58
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Holder = lbl_cabDatPgto
            end
            object lblg_Desc: TRLLabel
              Left = 576
              Top = 1
              Width = 48
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Holder = lbl_cabDesc
            end
            object lblg_Juros: TRLLabel
              Left = 624
              Top = 1
              Width = 46
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Holder = lbl_CabJuros
            end
            object lblg_doc: TRLLabel
              Left = 671
              Top = 1
              Width = 40
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Holder = lbl_cabdoc
            end
          end
          object rlObs: TRLBand
            Left = 1
            Top = 65
            Width = 716
            Height = 19
            AutoSize = True
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Visible = False
            object RLDBMemo1: TRLDBMemo
              Left = 0
              Top = 1
              Width = 716
              Height = 18
              Align = faClient
              Alignment = taCenter
              DataField = 'OBS'
              DataSource = Src_Cpag
              Layout = tlCenter
            end
          end
        end
        object RLBand3: TRLBand
          Left = 38
          Top = 191
          Width = 718
          Height = 20
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object lbl_rodape: TRLLabel
            Left = 692
            Top = 1
            Width = 26
            Height = 6
            Align = faRightTop
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -5
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 351
            Top = 0
            Width = 39
            Height = 7
            Caption = 'Emitido em'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 410
            Top = 0
            Width = 21
            Height = 7
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 452
            Top = 0
            Width = 10
            Height = 7
            Caption = #224's'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo4: TRLSystemInfo
            Left = 476
            Top = 0
            Width = 21
            Height = 7
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            Info = itHour
            ParentFont = False
          end
        end
        object RL_final: TRLBand
          Left = 38
          Top = 211
          Width = 718
          Height = 16
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          BeforePrint = RL_finalBeforePrint
          object lblt_numdoc: TRLLabel
            Left = 2
            Top = 0
            Width = 44
            Height = 14
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 
              'Total...........................................................' +
              '.........................................'
            Holder = lbl_cabNumdoc
          end
          object lblt_RazSoc: TRLLabel
            Left = 46
            Top = 1
            Width = 180
            Height = 14
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Holder = lbl_cabRazSoc
          end
          object lblt_DtEmis: TRLLabel
            Left = 227
            Top = 1
            Width = 58
            Height = 14
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Holder = lbl_cabDtEmis
          end
          object lblt_ValDup: TRLLabel
            Left = 285
            Top = 1
            Width = 56
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Holder = lbl_cabValDup
          end
          object lblt_ValPag: TRLLabel
            Left = 341
            Top = 1
            Width = 58
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Holder = lbl_cabValPag
          end
          object lblt_Arec: TRLLabel
            Left = 399
            Top = 1
            Width = 62
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Holder = lbl_cabArec
          end
          object lblt_DtVcto: TRLLabel
            Left = 461
            Top = 1
            Width = 58
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Holder = lbl_CabDtVcto
          end
          object lblt_DatPgto: TRLLabel
            Left = 520
            Top = 1
            Width = 58
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Holder = lbl_cabDatPgto
          end
          object lblt_Desc: TRLLabel
            Left = 577
            Top = 1
            Width = 48
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Holder = lbl_cabDesc
          end
          object lblt_Juros: TRLLabel
            Left = 625
            Top = 1
            Width = 46
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Holder = lbl_CabJuros
          end
          object lblt_doc: TRLLabel
            Left = 672
            Top = 1
            Width = 40
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Holder = lbl_cabdoc
          end
          object lblt_Chave: TRLLabel
            Left = 712
            Top = 1
            Width = 42
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = ' '
            Holder = lbl_cabChave
          end
        end
      end
    end
    object tsOutros: TTabSheet
      Caption = 'Outros filtros'
      ImageIndex = 2
      object Label22: TLabel
        Left = 19
        Top = 45
        Width = 65
        Height = 13
        Caption = 'Banco/Caixa:'
      end
      object sbn_coddep: TSpeedButton
        Left = 144
        Top = 78
        Width = 20
        Height = 19
        Flat = True
        Glyph.Data = {
          36060000424D3606000000000000360400002800000020000000100000000100
          08000000000000020000C40E0000C40E00000001000000000000000000008080
          8000000080000080800000800000808000008000000080008000408080004040
          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
          80008000FF004080FF00C0DCC000F0CAA60004040400080808000C0C0C001111
          1100161616001C1C1C002222220029292900555555004D4D4D00424242003939
          3900807CFF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD000000
          330000006600000099000000CC00003300000033330000336600003399000033
          CC000033FF00006600000066330000666600006699000066CC000066FF000099
          00000099330000996600009999000099CC000099FF0000CC000000CC330000CC
          660000CC990000CCCC0000CCFF0000FF660000FF990000FFCC00330000003300
          330033006600330099003300CC003300FF003333000033333300333366003333
          99003333CC003333FF00336600003366330033666600336699003366CC003366
          FF00339900003399330033996600339999003399CC003399FF0033CC000033CC
          330033CC660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FF
          CC0033FFFF00660000006600330066006600660099006600CC006600FF006633
          00006633330066336600663399006633CC006633FF0066660000666633006666
          6600666699006666CC00669900006699330066996600669999006699CC006699
          FF0066CC000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF
          990066FFCC00CC00FF00FF00CC009999000099339900990099009900CC009900
          000099333300990066009933CC009900FF009966000099663300993366009966
          99009966CC009933FF009999330099996600999999009999CC009999FF0099CC
          000099CC330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC
          660099FF990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00
          CC0099330000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC66
          330099666600CC669900CC66CC009966FF00CC990000CC993300CC996600CC99
          9900CC99CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCC
          FF00CCFF0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF00
          6600FF009900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF66
          0000FF663300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF99
          6600FF999900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCC
          CC00FFCCFF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FF
          FF00FF666600FF66FF00FFFF66002100A5005F5F5F0077777700030303030303
          0303030303030303030303030303030303030303030303030303030303030303
          030303030303030303030E0E0E0E0E0E030303030E0E0E0E0E0E000000000003
          0303030300000000000301010101010E0303030301010101010E000E00000003
          03030303000E00000003010E0101010E03030303010E0101010E000E00000003
          03030303000E00000003010E0101010E0E030E0E010E0101010E000000000000
          00030000000000000003010101010101010E010101010101010E00000E000000
          0000000E00000000000301010E0101010101010E01010101010E00000E000000
          0F00000E00000000000301010E0101010F01010E01010101010E00000E000000
          0F00000E00000000000301010E0101010F01010E01010101010E030000000000
          0000000000000000030303010101010101010101010101010E030303000E0000
          0003000E0000000303030303010E0101010E010E0101010E0303030300000000
          00030000000000030303030301010101010E01010101010E0303030303000000
          030303000000030303030303030101010E03030101010E030303030303000E00
          030303000E0003030303030303010E010E0303010E010E030303030303000000
          030303000000030303030303030101010E03030101010E030303030303030303
          0303030303030303030303030303030303030303030303030303}
        NumGlyphs = 2
        OnClick = sbn_coddepClick
      end
      object sbn_codccu: TSpeedButton
        Left = 139
        Top = 116
        Width = 25
        Height = 19
        Flat = True
        Glyph.Data = {
          36060000424D3606000000000000360400002800000020000000100000000100
          08000000000000020000C40E0000C40E00000001000000000000000000008080
          8000000080000080800000800000808000008000000080008000408080004040
          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
          80008000FF004080FF00C0DCC000F0CAA60004040400080808000C0C0C001111
          1100161616001C1C1C002222220029292900555555004D4D4D00424242003939
          3900807CFF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD000000
          330000006600000099000000CC00003300000033330000336600003399000033
          CC000033FF00006600000066330000666600006699000066CC000066FF000099
          00000099330000996600009999000099CC000099FF0000CC000000CC330000CC
          660000CC990000CCCC0000CCFF0000FF660000FF990000FFCC00330000003300
          330033006600330099003300CC003300FF003333000033333300333366003333
          99003333CC003333FF00336600003366330033666600336699003366CC003366
          FF00339900003399330033996600339999003399CC003399FF0033CC000033CC
          330033CC660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FF
          CC0033FFFF00660000006600330066006600660099006600CC006600FF006633
          00006633330066336600663399006633CC006633FF0066660000666633006666
          6600666699006666CC00669900006699330066996600669999006699CC006699
          FF0066CC000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF
          990066FFCC00CC00FF00FF00CC009999000099339900990099009900CC009900
          000099333300990066009933CC009900FF009966000099663300993366009966
          99009966CC009933FF009999330099996600999999009999CC009999FF0099CC
          000099CC330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC
          660099FF990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00
          CC0099330000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC66
          330099666600CC669900CC66CC009966FF00CC990000CC993300CC996600CC99
          9900CC99CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCC
          FF00CCFF0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF00
          6600FF009900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF66
          0000FF663300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF99
          6600FF999900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCC
          CC00FFCCFF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FF
          FF00FF666600FF66FF00FFFF66002100A5005F5F5F0077777700030303030303
          0303030303030303030303030303030303030303030303030303030303030303
          030303030303030303030E0E0E0E0E0E030303030E0E0E0E0E0E000000000003
          0303030300000000000301010101010E0303030301010101010E000E00000003
          03030303000E00000003010E0101010E03030303010E0101010E000E00000003
          03030303000E00000003010E0101010E0E030E0E010E0101010E000000000000
          00030000000000000003010101010101010E010101010101010E00000E000000
          0000000E00000000000301010E0101010101010E01010101010E00000E000000
          0F00000E00000000000301010E0101010F01010E01010101010E00000E000000
          0F00000E00000000000301010E0101010F01010E01010101010E030000000000
          0000000000000000030303010101010101010101010101010E030303000E0000
          0003000E0000000303030303010E0101010E010E0101010E0303030300000000
          00030000000000030303030301010101010E01010101010E0303030303000000
          030303000000030303030303030101010E03030101010E030303030303000E00
          030303000E0003030303030303010E010E0303010E010E030303030303000000
          030303000000030303030303030101010E03030101010E030303030303030303
          0303030303030303030303030303030303030303030303030303}
        NumGlyphs = 2
        OnClick = sbn_codccuClick
      end
      object Label10: TLabel
        Left = 151
        Top = 200
        Width = 6
        Height = 13
        Caption = 'a'
      end
      object Label11: TLabel
        Left = 3
        Top = 8
        Width = 85
        Height = 13
        Caption = 'Banco/Cobran'#231'a:'
      end
      object Label14: TLabel
        Left = 45
        Top = 223
        Width = 57
        Height = 13
        Caption = 'Forma Pgto:'
      end
      object CODBCO: TEdit
        Left = 91
        Top = 41
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODBCOExit
        OnKeyPress = CODBCOKeyPress
      end
      object lbx_codbco: TListBox
        Left = 164
        Top = 41
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
        OnKeyDown = lbx_codbcoKeyDown
      end
      object OMITIR_BCO: TCheckBox
        Left = 91
        Top = 62
        Width = 69
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object StaticText5: TStaticText
        Left = 12
        Top = 78
        Width = 75
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Departamento'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 6
      end
      object edt_coddep: TEdit
        Left = 91
        Top = 78
        Width = 46
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        OnExit = edt_coddepExit
      end
      object lbx_coddep: TListBox
        Left = 164
        Top = 78
        Width = 393
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnKeyDown = lbx_coddepKeyDown
      end
      object OMITIR_DEP: TCheckBox
        Left = 91
        Top = 100
        Width = 53
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
      end
      object StaticText6: TStaticText
        Left = 7
        Top = 117
        Width = 79
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Centro de Custo'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 10
      end
      object edt_codccu: TEdit
        Left = 91
        Top = 116
        Width = 46
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 11
        OnExit = edt_codccuExit
      end
      object OMITIR_CCU: TCheckBox
        Left = 91
        Top = 138
        Width = 51
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
      end
      object lbx_codccu: TListBox
        Left = 164
        Top = 116
        Width = 393
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnKeyDown = lbx_codccuKeyDown
      end
      object StaticText7: TStaticText
        Left = 30
        Top = 154
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Grupo de Fornecedor'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 14
      end
      object CODGFOR: TEdit
        Left = 30
        Top = 170
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 15
        OnExit = CODGFORExit
        OnKeyPress = CODGFORKeyPress
      end
      object OMITIR_GFOR: TCheckBox
        Left = 108
        Top = 173
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
      end
      object lbx_codgfor: TListBox
        Left = 164
        Top = 154
        Width = 393
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
        OnKeyDown = lbx_codgforKeyDown
      end
      object StaticText8: TStaticText
        Left = 11
        Top = 200
        Width = 79
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Numero Inicial..:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 18
      end
      object edt_Nnum: TMaskEdit
        Left = 93
        Top = 198
        Width = 49
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 19
        Text = '0000'
      end
      object edt_Fnum: TMaskEdit
        Left = 164
        Top = 198
        Width = 49
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 20
        Text = '0000'
      end
      object edt_codbco_cob: TEdit
        Left = 91
        Top = 4
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = edt_codbco_cobExit
        OnKeyPress = edt_codbco_cobKeyPress
      end
      object lbx_codbco_cob: TListBox
        Left = 164
        Top = 4
        Width = 393
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnKeyDown = lbx_codbco_cobKeyDown
      end
      object OMITIR_BCO_COB: TCheckBox
        Left = 91
        Top = 24
        Width = 69
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object CODFP: TEdit
        Left = 104
        Top = 222
        Width = 62
        Height = 21
        Hint = 'Digite o C'#243'digo Desejado'
        TabOrder = 21
        OnExit = CODFPExit
        OnKeyPress = CODFPKeyPress
      end
      object lbx_codfp: TListBox
        Left = 165
        Top = 222
        Width = 393
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 22
        OnKeyDown = lbx_codfpKeyDown
      end
      object OMITIR_FP: TCheckBox
        Left = 105
        Top = 242
        Width = 44
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 23
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 478
    Width = 945
    Height = 37
    Align = alBottom
    TabOrder = 2
    object sbSalvarPadrao: TSpeedButton
      Left = 480
      Top = 7
      Width = 144
      Height = 30
      Caption = 'Salvar Padr'#227'o'
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
      OnClick = sbSalvarPadraoClick
    end
    object sbn_gerarplanilha: TSpeedButton
      Left = 628
      Top = 7
      Width = 144
      Height = 30
      Cursor = crHandPoint
      Caption = 'Gerar Planilha'
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
      OnClick = sbn_gerarplanilhaClick
    end
    object bbAplicar: TBitBtn
      Left = 2
      Top = 7
      Width = 144
      Height = 30
      Caption = '&Aplicar'
      TabOrder = 0
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
      Left = 148
      Top = 7
      Width = 144
      Height = 30
      Caption = '&Imprimir'
      TabOrder = 1
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
      Left = 773
      Top = 7
      Width = 144
      Height = 30
      Caption = '&Sair'
      TabOrder = 2
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
    object BBFORMA: TBitBtn
      Left = 325
      Top = 6
      Width = 150
      Height = 30
      Caption = '&Formas de Pagamento'
      TabOrder = 3
      OnClick = BBFORMAClick
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
  end
  object Qr_CPag: TQuery
    CachedUpdates = True
    OnCalcFields = Qr_CPagCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select       '#39' '#39' as OK,'
      '       CANUMERO,'
      '       CADESD,'
      '       CADTEMIS,'
      '       CADTVCTO,'
      '       CADTBX,'
      '       CADTPAG,'
      '       CADESC,'
      '       CAJUROS,'
      '       CAVALOR,'
      '       CACODFOR,'
      '       CAVALPAG,'
      '       CACODEMP,'
      '       CACODCTA,'
      '       FRAZAO AS NOMBCO,'
      '       FRAZAO,'
      '       CALOTE,'
      '       CASTATUS,'
      '       CADUP,'
      '       FRAZAO AS NOMGRU,'
      '       CACODCC AS CODCCU,'
      '       CANOMCC AS NOMCCU'
      '       ,CAOBS AS OBS'
      '       ,CALOTSEQ_LB'
      '       ,CANUMPARC,CAQTDPARC'
      '       ,CAVALDES'
      '       ,CADTDESC'
      '       from CADDAP, CADFOR'
      '       where CACODEMP is null and'
      '       FCODFOR=CACODFOR')
    UpdateObject = U_CPAG
    Left = 336
    Top = 12
    object Qr_CPagCANUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CANUMERO'
      Origin = 'SG_ASSOC.CADDAP.CANUMERO'
    end
    object Qr_CPagCADESD: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'CADESD'
      Origin = 'SG_ASSOC.CADDAP.CADESD'
      Size = 2
    end
    object Qr_CPagCADTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'CADTEMIS'
      Origin = 'SG_ASSOC.CADDAP.CADTEMIS'
    end
    object Qr_CPagCADTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'CADTVCTO'
      Origin = 'SG_ASSOC.CADDAP.CADTVCTO'
    end
    object Qr_CPagCADTBX: TDateTimeField
      DisplayLabel = 'Dt.Baixa'
      FieldName = 'CADTBX'
      Origin = 'SG_ASSOC.CADDAP.CADTBX'
    end
    object Qr_CPagCADESC: TFloatField
      DisplayLabel = 'Desc.'
      FieldName = 'CADESC'
      Origin = 'SG_ASSOC.CADDAP.CADESC'
    end
    object Qr_CPagCAJUROS: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'CAJUROS'
      Origin = 'SG_ASSOC.CADDAP.CAJUROS'
    end
    object Qr_CPagCAVALOR: TFloatField
      DisplayLabel = 'Valor Compra'
      FieldName = 'CAVALOR'
      Origin = 'SG_ASSOC.CADDAP.CAVALOR'
    end
    object Qr_CPagFRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'FRAZAO'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 40
    end
    object Qr_CPagCALOTE: TFloatField
      DisplayLabel = 'Lote'
      FieldName = 'CALOTE'
      Origin = 'SG_ASSOC.CADDAP.CALOTE'
    end
    object Qr_CPagCACODFOR: TFloatField
      DisplayLabel = 'C'#243'd.Fornec.'
      FieldName = 'CACODFOR'
      Origin = 'SG_ASSOC.CADDAP.CACODFOR'
    end
    object Qr_CPagCADTPAG: TDateTimeField
      DisplayLabel = 'Dt.Pgto.'
      FieldName = 'CADTPAG'
      Origin = 'SG_ASSOC.CADDAP.CADTPAG'
    end
    object Qr_CPagCAVALPAG: TFloatField
      DisplayLabel = 'Valor Pago'
      FieldName = 'CAVALPAG'
      Origin = 'SG_ASSOC.CADDAP.CAVALPAG'
    end
    object Qr_CPagCASTATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'CASTATUS'
      Origin = 'SG_ASSOC.CADDAP.CASTATUS'
    end
    object Qr_CPagCADUP: TFloatField
      DisplayLabel = 'Dup.'
      FieldName = 'CADUP'
      Origin = 'SG_ASSOC.CADDAP.CADUP'
    end
    object Qr_CPagCACODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CACODEMP'
      Origin = 'SG_ASSOC.CADDAP.CACODEMP'
    end
    object Qr_CPagdtemis: TStringField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldKind = fkCalculated
      FieldName = 'dtemis'
      Size = 10
      Calculated = True
    end
    object Qr_CPagdtvcto: TStringField
      DisplayLabel = 'Dt.Vcto'
      FieldKind = fkCalculated
      FieldName = 'dtvcto'
      Size = 10
      Calculated = True
    end
    object Qr_CPagdtbx: TStringField
      DisplayLabel = 'Dt.Baixa'
      FieldKind = fkCalculated
      FieldName = 'dtbx'
      Size = 10
      Calculated = True
    end
    object Qr_CPagatraso: TFloatField
      FieldKind = fkCalculated
      FieldName = 'atraso'
      Calculated = True
    end
    object Qr_CPagtipdup: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkCalculated
      FieldName = 'tipdup'
      Calculated = True
    end
    object Qr_CPagdtpag: TStringField
      DisplayLabel = 'Dt.Pgto.'
      FieldKind = fkCalculated
      FieldName = 'dtpag'
      Size = 10
      Calculated = True
    end
    object Qr_CPagsaldodev: TFloatField
      DisplayLabel = 'Saldo Devedor'
      FieldKind = fkCalculated
      FieldName = 'saldodev'
      Calculated = True
    end
    object Qr_CPagrazao_codigo: TStringField
      FieldKind = fkCalculated
      FieldName = 'razao_codigo'
      Size = 50
      Calculated = True
    end
    object Qr_CPagnumero: TStringField
      FieldKind = fkCalculated
      FieldName = 'numero'
      Size = 10
      Calculated = True
    end
    object Qr_CPagCODCCU: TStringField
      FieldName = 'CODCCU'
      Origin = 'SG_ASSOC.CADDAP.CACODCC'
      Size = 5
    end
    object Qr_CPagNOMCCU: TStringField
      FieldName = 'NOMCCU'
      Origin = 'SG_ASSOC.CADDAP.CANOMCC'
      Size = 40
    end
    object Qr_CPagNOMGRU: TStringField
      FieldName = 'NOMGRU'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 40
    end
    object Qr_CPagOK: TStringField
      FieldName = 'OK'
      FixedChar = True
      Size = 1
    end
    object Qr_CPagNOMBCO: TStringField
      FieldName = 'NOMBCO'
      Size = 40
    end
    object Qr_CPagCALOTSEQ_LB: TFloatField
      FieldName = 'CALOTSEQ_LB'
    end
    object Qr_CPagCACODCTA: TFloatField
      FieldName = 'CACODCTA'
    end
    object Qr_CPagnumero_calc: TStringField
      FieldKind = fkCalculated
      FieldName = 'numero_calc'
      Calculated = True
    end
    object Qr_CPagCANUMPARC: TFloatField
      FieldName = 'CANUMPARC'
    end
    object Qr_CPagCAQTDPARC: TFloatField
      FieldName = 'CAQTDPARC'
    end
    object Qr_CPagCAVALDES: TFloatField
      DisplayLabel = 'Desc.Financ.'
      FieldName = 'CAVALDES'
    end
    object Qr_CPagCADTDESC: TDateTimeField
      FieldName = 'CADTDESC'
    end
    object Qr_CPagdtdescfin: TStringField
      DisplayLabel = 'Data Desconto'
      FieldKind = fkCalculated
      FieldName = 'dtdescfin'
      Size = 10
      Calculated = True
    end
    object Qr_CPagOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 3000
    end
    object Qr_CPagCAVALOR_ACRES: TFloatField
      FieldName = 'CAVALOR_ACRES'
    end
    object Qr_CPagPF1NOMFP: TStringField
      FieldName = 'PF1NOMFP'
      Size = 100
    end
    object Qr_CPagCACODFPGTO: TFloatField
      DisplayLabel = 'C'#243'digo Fpgto'
      FieldName = 'CACODFPGTO'
    end
    object Qr_CPagnomfpgto: TStringField
      DisplayLabel = 'Nome Fpgto'
      FieldName = 'nomfpgto'
      Size = 100
    end
  end
  object Src_Cpag: TDataSource
    DataSet = Qr_CPag
    Left = 367
    Top = 14
  end
  object Matricial: TRLDraftFilter
    EjectMethod = ejForceWithCode
    Left = 576
    Top = 48
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 632
    Top = 56
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 680
    Top = 32
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 720
    Top = 40
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 656
    Top = 16
  end
  object U_CPAG: TUpdateSQL
    ModifySQL.Strings = (
      'update CADDAP'
      'set'
      '  CACODEMP = :CACODEMP'
      'where'
      '  CACODEMP = :OLD_CACODEMP and'
      '  CADESD = :OLD_CADESD')
    InsertSQL.Strings = (
      'insert into CADDAP'
      '  (CACODEMP)'
      'values'
      '  (:CACODEMP)')
    DeleteSQL.Strings = (
      'delete from CADDAP'
      'where'
      '  CACODEMP = :OLD_CACODEMP and'
      '  CADESD = :OLD_CADESD')
    Left = 408
    Top = 24
  end
end

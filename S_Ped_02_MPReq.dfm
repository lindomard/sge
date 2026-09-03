object Frm_Ped_02_MPReq: TFrm_Ped_02_MPReq
  Left = 3
  Top = 151
  Width = 798
  Height = 375
  Caption = 'Materias Primas Utilizadas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object panel_digmp: TPanel
    Left = 0
    Top = 65
    Width = 765
    Height = 47
    Align = alBottom
    TabOrder = 0
    object lblmp_codpro: TStaticText
      Left = 0
      Top = 0
      Width = 45
      Height = 30
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'C'#243'digo Produto'
      Color = 12058551
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object edtmp_codpro: TComboEdit
      Left = 0
      Top = 29
      Width = 45
      Height = 19
      Alignment = taRightJustify
      Ctl3D = False
      GlyphKind = gkEllipsis
      ButtonWidth = 0
      NumGlyphs = 1
      ParentCtl3D = False
      TabOrder = 7
      Text = 'edt_codproduto'
      OnEnter = edtmp_codproEnter
      OnExit = edtmp_codproExit
      OnKeyDown = edtmp_codproKeyDown
      OnKeyPress = edtmp_codproKeyPress
    end
    object lblmp_datreq: TStaticText
      Left = 598
      Top = 0
      Width = 69
      Height = 30
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Data Requisi'#231#227'o'
      Color = 12058551
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object edtmp_datreq: TMaskEdit
      Left = 598
      Top = 29
      Width = 70
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 14
      Text = '  /  /    '
    end
    object lblmp_descricao: TStaticText
      Left = 44
      Top = 0
      Width = 234
      Height = 30
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Descri'#231#227'o'
      Color = 12058551
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object edtmp_descricao: TEdit
      Left = 44
      Top = 29
      Width = 234
      Height = 19
      TabStop = False
      Color = cl3DLight
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      Text = 'edt_descricao'
    end
    object lblmp_qtdsol: TStaticText
      Left = 454
      Top = 0
      Width = 49
      Height = 30
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Quant Saida'
      Color = 12058551
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 3
    end
    object edtmp_qtdsol: TCurrencyEdit
      Left = 453
      Top = 29
      Width = 50
      Height = 19
      AutoSize = False
      CheckOnExit = True
      Ctl3D = False
      DisplayFormat = ',0.00;-,0.00'
      ParentCtl3D = False
      TabOrder = 12
      OnExit = edtmp_qtdsolExit
      OnKeyDown = edtmp_qtdsolKeyDown
    end
    object lblmp_preco: TStaticText
      Left = 534
      Top = 0
      Width = 65
      Height = 30
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Pre'#231'o Unit'#225'rio'
      Color = 12058551
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
    object edtmp_preco: TCurrencyEdit
      Left = 534
      Top = 29
      Width = 66
      Height = 19
      AutoSize = False
      CheckOnExit = True
      Ctl3D = False
      DisplayFormat = ',0.00;-,0.00'
      ParentCtl3D = False
      TabOrder = 13
      ZeroEmpty = False
      OnExit = edtmp_precoExit
      OnKeyDown = edtmp_precoKeyDown
    end
    object lblmp_horareq: TStaticText
      Left = 666
      Top = 0
      Width = 40
      Height = 30
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Hora Req'
      Color = 12058551
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 5
    end
    object lblmp_total: TStaticText
      Left = 705
      Top = 0
      Width = 66
      Height = 30
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Valor Total'
      Color = 12058551
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 6
    end
    object edtmp_total: TCurrencyEdit
      Left = 705
      Top = 29
      Width = 66
      Height = 19
      AutoSize = False
      CheckOnExit = True
      Ctl3D = False
      DisplayFormat = ',0.00;-,0.00'
      ParentCtl3D = False
      TabOrder = 16
      OnEnter = edtmp_totalEnter
    end
    object edtmp_horareq: TMaskEdit
      Left = 666
      Top = 29
      Width = 40
      Height = 19
      TabStop = False
      Ctl3D = False
      EditMask = '!00:00;1; '
      MaxLength = 5
      ParentCtl3D = False
      TabOrder = 15
      Text = '  :  '
      OnExit = edtmp_horareqExit
    end
    object lblmp_status: TStaticText
      Left = 770
      Top = 0
      Width = 20
      Height = 30
      Hint = 'Status do Item '#13#10'I-Incluindo'#13#10'A-Alterando'
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'ST'
      Color = 12058551
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 17
    end
    object edtmp_status: TStaticText
      Left = 770
      Top = 28
      Width = 20
      Height = 19
      Hint = 'Status do Item '#13#10'I-Incluindo'#13#10'A-Alterando'
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 18
    end
    object lblmp_lote: TStaticText
      Left = 411
      Top = 0
      Width = 44
      Height = 30
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Lote'
      Color = 12058551
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 19
    end
    object edtmp_lote: TComboEdit
      Left = 411
      Top = 29
      Width = 44
      Height = 19
      Hint = 'Digite o Valor ou Pressione [F3]- p/Consultar'
      Ctl3D = False
      GlyphKind = gkEllipsis
      ButtonWidth = 0
      NumGlyphs = 1
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      Text = 'edtmp_lote'
      OnExit = edtmp_loteExit
      OnKeyDown = edtmp_loteKeyDown
    end
    object edtmp_dtvcto: TMaskEdit
      Left = 598
      Top = 29
      Width = 69
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 11
      Text = '  /  /    '
      Visible = False
      OnExit = edtmp_dtvctoExit
    end
    object lblmp_outinf: TStaticText
      Left = 277
      Top = 0
      Width = 135
      Height = 30
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Outras Informacoes'
      Color = 12058551
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 20
    end
    object edtmp_outinf: TEdit
      Left = 277
      Top = 29
      Width = 135
      Height = 19
      Color = cl3DLight
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 30
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 9
      Text = 'edt_descricao'
      OnKeyDown = edtmp_outinfKeyDown
    end
    object stOutrasQtd: TStaticText
      Left = 502
      Top = 0
      Width = 33
      Height = 48
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '&Outras Qtd'
      Color = 16743870
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 21
      OnClick = stOutrasQtdClick
    end
  end
  object DBGrid_mp: TDBGrid
    Left = 0
    Top = 112
    Width = 765
    Height = 161
    Hint = 
      'Para alterar de um Click Duplo Sobre o Produto, '#13#10'para excluir c' +
      'lick com o bot'#227'o direito do mouse '#13#10'ou pressione a tecla DEL'
    Align = alBottom
    Ctl3D = False
    DataSource = frm_ped_02.src_cadp02_mp
    Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentShowHint = False
    PopupMenu = pop_ExcluirMP
    ReadOnly = True
    ShowHint = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid_mpDblClick
    OnKeyDown = DBGrid_mpKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'P2MP_CODPRO'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MP_NOMPRO'
        Width = 232
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2MP_OUTINF'
        Width = 133
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2MP_LOTE'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2MP_QTDSOL'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'outras_saidas'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2MP_PRECO'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2MP_DATA_SOL'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2MP_HORA_SOL'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALBRU'
        Visible = True
      end>
  end
  object gb_totais: TGroupBox
    Left = 0
    Top = 273
    Width = 765
    Height = 65
    Align = alBottom
    Caption = 'Totais:'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    object lblmp_qtditem: TStaticText
      Left = 0
      Top = 15
      Width = 50
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      Color = 8454143
      ParentColor = False
      TabOrder = 0
    end
    object lbl_qtddev: TStaticText
      Left = 317
      Top = 15
      Width = 50
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      Color = 8454143
      ParentColor = False
      TabOrder = 1
    end
    object lbl_sobra: TStaticText
      Left = 366
      Top = 15
      Width = 50
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      Color = 8454143
      ParentColor = False
      TabOrder = 2
    end
    object lbl_quebra: TStaticText
      Left = 415
      Top = 15
      Width = 50
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      Color = 8454143
      ParentColor = False
      TabOrder = 3
    end
    object lbl_qtdsol: TStaticText
      Left = 268
      Top = 15
      Width = 50
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      Color = 8421440
      ParentColor = False
      TabOrder = 4
    end
    object bbAdquirirFormula: TBitBtn
      Left = 621
      Top = 37
      Width = 135
      Height = 19
      Caption = 'Adquirir da Formula'
      TabOrder = 5
      OnClick = bbAdquirirFormulaClick
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
    object lbl_outret: TStaticText
      Left = 464
      Top = 15
      Width = 50
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      Color = 8454143
      ParentColor = False
      TabOrder = 6
    end
    object lbl_total: TStaticText
      Left = 683
      Top = 15
      Width = 74
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      Color = 8454143
      ParentColor = False
      TabOrder = 7
    end
  end
  object bbGravarMP: TBitBtn
    Left = 696
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Gravar MP'
    TabOrder = 3
    Visible = False
    OnClick = bbGravarMPClick
  end
  object GB_PRODFAT: TGroupBox
    Left = 0
    Top = 0
    Width = 765
    Height = 65
    Align = alTop
    Caption = 'Produto Faturado:'
    Color = 9699327
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    object st_codpro: TStaticText
      Left = 4
      Top = 18
      Width = 60
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'C'#243'digo'
      Color = 16755370
      ParentColor = False
      TabOrder = 0
    end
    object st_descricao: TStaticText
      Left = 63
      Top = 18
      Width = 300
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Descri'#231#227'o do Produto'
      Color = 16755370
      ParentColor = False
      TabOrder = 1
    end
    object st_quantidade: TStaticText
      Left = 445
      Top = 18
      Width = 84
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Quantidade'
      Color = 16755370
      ParentColor = False
      TabOrder = 2
    end
    object st_pcounit: TStaticText
      Left = 528
      Top = 18
      Width = 84
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Pre'#231'o Unit'#225'rio'
      Color = 16755370
      ParentColor = False
      TabOrder = 3
    end
    object st_vltotal: TStaticText
      Left = 611
      Top = 18
      Width = 84
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Valor Total'
      Color = 16755370
      ParentColor = False
      TabOrder = 4
    end
    object txt_codpro: TStaticText
      Left = 4
      Top = 34
      Width = 60
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      TabOrder = 5
    end
    object txt_descricao: TStaticText
      Left = 63
      Top = 34
      Width = 300
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      TabOrder = 6
    end
    object txt_quantidade: TStaticText
      Left = 445
      Top = 34
      Width = 84
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      TabOrder = 8
    end
    object txt_pcounit: TStaticText
      Left = 528
      Top = 34
      Width = 84
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      TabOrder = 9
    end
    object txt_vltotal: TStaticText
      Left = 611
      Top = 34
      Width = 84
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      TabOrder = 10
    end
    object txt_lote: TStaticText
      Left = 362
      Top = 34
      Width = 84
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      TabOrder = 7
    end
    object st_lote: TStaticText
      Left = 362
      Top = 18
      Width = 84
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Lote'
      Color = 16755370
      ParentColor = False
      TabOrder = 11
    end
    object txt_dtvcto: TStaticText
      Left = 682
      Top = 34
      Width = 84
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      TabOrder = 12
      Visible = False
    end
    object txt_complemento: TStaticText
      Left = 690
      Top = 42
      Width = 84
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      TabOrder = 13
      Visible = False
    end
  end
  object pop_ExcluirMP: TPopupMenu
    Left = 543
    Top = 177
    object ExcluirMP: TMenuItem
      Caption = 'Exluir Mat'#233'ria Prima'
      OnClick = ExcluirMPClick
    end
  end
end

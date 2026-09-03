object Frm_Caixa_ConsAuto: TFrm_Caixa_ConsAuto
  Left = 36
  Top = 85
  Width = 1181
  Height = 606
  Caption = 'Concilia'#231#227'o Bancaria Automatica Atraves do Arquivo Bancario OFX'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1173
    Height = 41
    Align = alTop
    Caption = 'Concilia'#231#227'o Bancaria Automatica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -30
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 1173
    Height = 80
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 10
      Top = 8
      Width = 164
      Height = 13
      Caption = 'Nome do Arquivo a Ser Lido:'
    end
    object SpeedButton1: TSpeedButton
      Left = 901
      Top = 5
      Width = 23
      Height = 22
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
      OnClick = SpeedButton1Click
    end
    object Label8: TLabel
      Left = 212
      Top = 49
      Width = 79
      Height = 13
      Caption = 'Listar Contas:'
    end
    object edt_nomarq: TEdit
      Left = 178
      Top = 5
      Width = 705
      Height = 21
      TabOrder = 0
    end
    object bbLer: TBitBtn
      Left = 16
      Top = 44
      Width = 180
      Height = 25
      Caption = 'Ler Agora'
      TabOrder = 1
      OnClick = bbLerClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      NumGlyphs = 2
    end
    object bbSairSemGravar: TBitBtn
      Left = 884
      Top = 44
      Width = 180
      Height = 25
      Caption = 'Sair'
      TabOrder = 2
      OnClick = bbSairSemGravarClick
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
    object cb_listar_contas: TComboBox
      Left = 302
      Top = 44
      Width = 145
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'Todas'
      OnClick = cb_listar_contasClick
      Items.Strings = (
        'Todas'
        'Conciliadas'
        'Pendentes')
    end
    object bbExcluirConciliacao: TBitBtn
      Left = 692
      Top = 44
      Width = 180
      Height = 25
      Caption = 'Excluir Concilia'#231#227'o'
      Enabled = False
      TabOrder = 4
      TabStop = False
      OnClick = bbExcluirConciliacaoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      NumGlyphs = 2
    end
    object bbCriarContaCaixa: TBitBtn
      Left = 503
      Top = 44
      Width = 180
      Height = 25
      Caption = 'Criar Conta Caixa'
      Enabled = False
      TabOrder = 5
      TabStop = False
      OnClick = bbCriarContaCaixaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      NumGlyphs = 2
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 121
    Width = 1173
    Height = 156
    Align = alTop
    Caption = 'Resumo do Arquivo Olx'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 1169
      Height = 139
      Align = alClient
      DataSource = src_extrato
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'HISTORICO'
          Title.Alignment = taCenter
          Width = 149
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_CONTABIL'
          Title.Alignment = taCenter
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO_DOC'
          Title.Alignment = taCenter
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NATUREZA'
          Title.Alignment = taCenter
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO_DOC'
          Title.Alignment = taCenter
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALHE'
          Title.Alignment = taCenter
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BANCO_CODIGO'
          Title.Alignment = taCenter
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HISTORICO'
          Title.Alignment = taCenter
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONTA'
          Title.Alignment = taCenter
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_LANCAMENTO'
          Width = 73
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 277
    Width = 1173
    Height = 298
    Align = alClient
    TabOrder = 3
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 1095
      Height = 296
      Align = alClient
      Caption = 'Contas Caixa Todas'
      TabOrder = 0
      object Panel4: TPanel
        Left = 2
        Top = 15
        Width = 1091
        Height = 58
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 10
          Top = 9
          Width = 70
          Height = 13
          Caption = 'Data Inicial:'
        end
        object Label3: TLabel
          Left = 320
          Top = 11
          Width = 63
          Height = 13
          Caption = 'Data Final:'
        end
        object Label4: TLabel
          Left = 12
          Top = 31
          Width = 90
          Height = 13
          Caption = 'Perc Diferen'#231'a:'
        end
        object Label5: TLabel
          Left = 198
          Top = 30
          Width = 10
          Height = 13
          Caption = '%'
        end
        object Label9: TLabel
          Left = 488
          Top = 32
          Width = 112
          Height = 13
          Caption = 'Apresentar Apenas '
        end
        object Label10: TLabel
          Left = 688
          Top = 32
          Width = 54
          Height = 13
          Caption = 'Registros'
        end
        object edt_datini: TDateEdit
          Left = 89
          Top = 6
          Width = 121
          Height = 21
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 0
          OnExit = edt_datiniExit
        end
        object edt_datfin: TDateEdit
          Left = 390
          Top = 7
          Width = 121
          Height = 21
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 1
          OnExit = edt_datfinExit
        end
        object cb_mesma_natureza: TCheckBox
          Left = 287
          Top = 32
          Width = 116
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Mesma Natureza'
          TabOrder = 2
          OnClick = cb_mesma_naturezaClick
        end
        object edt_perc_difer: TSpinEdit
          Left = 120
          Top = 27
          Width = 89
          Height = 22
          Ctl3D = False
          MaxValue = 0
          MinValue = 0
          ParentCtl3D = False
          TabOrder = 3
          Value = 9999999
          OnChange = edt_perc_diferChange
        end
        object spn_qtdrreg: TSpinEdit
          Left = 604
          Top = 28
          Width = 60
          Height = 22
          Ctl3D = False
          MaxValue = 999999999
          MinValue = 0
          ParentCtl3D = False
          TabOrder = 4
          Value = 50
          OnChange = spn_qtdrregChange
        end
        object cb_mesmo_banco: TCheckBox
          Left = 563
          Top = 5
          Width = 116
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Mesmo Banco'
          Checked = True
          State = cbChecked
          TabOrder = 5
          OnClick = cb_mesmo_bancoClick
        end
        object cb_salvar_sql: TCheckBox
          Left = 932
          Top = 7
          Width = 116
          Height = 17
          Alignment = taLeftJustify
          Caption = 'salvar sql'
          TabOrder = 6
          OnClick = cb_salvar_sqlClick
        end
        object cb_aplicar_sugestao: TCheckBox
          Left = 767
          Top = 7
          Width = 116
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Aplicar Sugest'#227'o'
          TabOrder = 7
          OnClick = cb_aplicar_sugestaoClick
        end
      end
      object DBGrid2: TDBGrid
        Left = 2
        Top = 73
        Width = 1091
        Height = 195
        Align = alClient
        DataSource = src_ldr
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGrid2DrawColumnCell
        OnDblClick = DBGrid2DblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'selecionado'
            Title.Alignment = taCenter
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCMV'
            Title.Alignment = taCenter
            Width = 293
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Alignment = taCenter
            Width = 195
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORR'
            Title.Alignment = taCenter
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PERC_DIFERENCA'
            Title.Alignment = taCenter
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAREAL'
            Title.Alignment = taCenter
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATCONC'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NATDC'
            Title.Alignment = taCenter
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMDOC'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODLDR'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 2
        Top = 268
        Width = 1091
        Height = 26
        Align = alBottom
        TabOrder = 2
        object Label6: TLabel
          Left = 9
          Top = 5
          Width = 107
          Height = 13
          Caption = 'Valor Lancamento:'
        end
        object Label7: TLabel
          Left = 257
          Top = 6
          Width = 83
          Height = 13
          Caption = 'Totais Contas:'
        end
        object lbl_passa_falta: TLabel
          Left = 493
          Top = 7
          Width = 33
          Height = 13
          Caption = 'Falta:'
        end
        object edt_valor_lcto: TEdit
          Left = 120
          Top = 3
          Width = 121
          Height = 19
          TabStop = False
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          Text = '0.00'
        end
        object edt_totcontas: TEdit
          Left = 342
          Top = 3
          Width = 121
          Height = 19
          TabStop = False
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
          Text = '0.00'
        end
        object edt_diferenca: TEdit
          Left = 558
          Top = 3
          Width = 121
          Height = 19
          TabStop = False
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
          Text = '0.00'
        end
        object bbConciliar: TBitBtn
          Left = 686
          Top = 2
          Width = 180
          Height = 25
          Caption = 'Conciliar'
          Enabled = False
          TabOrder = 3
          OnClick = bbConciliarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
            FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
            00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
            F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
            00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
            F033777777777337F73309999990FFF0033377777777FFF77333099999000000
            3333777777777777333333399033333333333337773333333333333903333333
            3333333773333333333333303333333333333337333333333333}
          NumGlyphs = 2
        end
        object edt_sugerido: TEdit
          Left = 864
          Top = 2
          Width = 59
          Height = 19
          TabStop = False
          Color = 8454016
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
          Text = 'Sugerido'
        end
        object edt_conciliado: TEdit
          Left = 923
          Top = 2
          Width = 70
          Height = 19
          TabStop = False
          Color = clBlue
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          Text = 'Conciliado'
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 1096
      Top = 1
      Width = 76
      Height = 296
      Align = alRight
      Caption = 'GroupBox3'
      TabOrder = 1
      Visible = False
      object ListBox1: TListBox
        Left = 2
        Top = 15
        Width = 72
        Height = 279
        Align = alClient
        ItemHeight = 13
        TabOrder = 0
      end
    end
  end
  object opd1: TOpenDialog
    Filter = 'Arquivos OFX|*.ofx'
    Left = 272
    Top = 65528
  end
  object src_extrato: TDataSource
    DataSet = mem_extrato
    OnDataChange = src_extratoDataChange
    Left = 1008
    Top = 33
  end
  object qr_ldr: TQuery
    CachedUpdates = True
    BeforePost = qr_ldrBeforePost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select CODLDR,VALORR,DATAREAL,DATCONC,NATDC,DESCMV,NUMDOC,NUMDOC' +
        '2,TIPO,CODIGO'
      ',NOME, 100 perc_diferenca, '#39'x'#39' as selecionado '
      'FROM CADLDR')
    UpdateObject = u_ldr
    Left = 425
    Top = 434
    object qr_ldrCODLDR: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODLDR'
      Origin = 'SG_ASSOC.CADLDR.CODLDR'
    end
    object qr_ldrVALORR: TFloatField
      DisplayLabel = 'Valor Real'
      FieldName = 'VALORR'
      Origin = 'SG_ASSOC.CADLDR.VALORR'
    end
    object qr_ldrDATAREAL: TDateTimeField
      DisplayLabel = 'Data Real'
      FieldName = 'DATAREAL'
      Origin = 'SG_ASSOC.CADLDR.DATAREAL'
    end
    object qr_ldrDATCONC: TDateTimeField
      DisplayLabel = 'Data Concilia'#231#227'o'
      FieldName = 'DATCONC'
      Origin = 'SG_ASSOC.CADLDR.DATCONC'
    end
    object qr_ldrNATDC: TStringField
      DisplayLabel = 'Nat'
      FieldName = 'NATDC'
      Origin = 'SG_ASSOC.CADLDR.NATDC'
      Size = 1
    end
    object qr_ldrDESCMV: TStringField
      DisplayLabel = 'Descri'#231#227'o Movimento'
      FieldName = 'DESCMV'
      Origin = 'SG_ASSOC.CADLDR.DESCMV'
      Size = 60
    end
    object qr_ldrNUMDOC: TStringField
      DisplayLabel = 'N'#250'mero Doc'
      FieldName = 'NUMDOC'
      Origin = 'SG_ASSOC.CADLDR.NUMDOC'
      Size = 15
    end
    object qr_ldrNUMDOC2: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'NUMDOC2'
      Origin = 'SG_ASSOC.CADLDR.NUMDOC2'
      Size = 15
    end
    object qr_ldrTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = 'SG_ASSOC.CADLDR.TIPO'
      Size = 2
    end
    object qr_ldrCODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'SG_ASSOC.CADLDR.CODIGO'
    end
    object qr_ldrNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'SG_ASSOC.CADLDR.NOME'
      Size = 60
    end
    object qr_ldrselecionado: TStringField
      DisplayLabel = 'Sel'
      FieldName = 'selecionado'
      Size = 1
    end
    object qr_ldrPERC_DIFERENCA: TFloatField
      DisplayLabel = '% Difer'
      FieldName = 'PERC_DIFERENCA'
    end
  end
  object src_ldr: TDataSource
    DataSet = qr_ldr
    Left = 473
    Top = 442
  end
  object u_ldr: TUpdateSQL
    Left = 529
    Top = 446
  end
  object mem_extrato: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 976
    Top = 81
    object mem_extratoHISTORICO: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Size = 200
    end
    object mem_extratoAGENCIA: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Size = 6
    end
    object mem_extratoCONTA: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Size = 12
    end
    object mem_extratoDATA_CONTABIL: TDateField
      DisplayLabel = 'Data Contabil'
      FieldName = 'DATA_CONTABIL'
    end
    object mem_extratoDATA_LANCAMENTO: TDateField
      DisplayLabel = 'Dt.Lcto'
      FieldName = 'DATA_LANCAMENTO'
    end
    object mem_extratoAGENCIA_OCOR: TStringField
      DisplayLabel = 'Agencia Ocor'
      FieldName = 'AGENCIA_OCOR'
      Size = 4
    end
    object mem_extratoCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Size = 5
    end
    object mem_extratoNUMERO_DOC: TStringField
      DisplayLabel = 'N'#250'mero Doc'
      FieldName = 'NUMERO_DOC'
      Size = 23
    end
    object mem_extratoCOD_HISTORICO: TStringField
      DisplayLabel = 'C'#243'd Historico'
      FieldName = 'COD_HISTORICO'
      Size = 3
    end
    object mem_extratoVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
    end
    object mem_extratoNATUREZA: TStringField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Size = 1
    end
    object mem_extratoDETALHE: TStringField
      DisplayLabel = 'Detalhe'
      FieldName = 'DETALHE'
      Size = 300
    end
    object mem_extratoBANCO_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo Bco'
      FieldName = 'BANCO_CODIGO'
    end
    object mem_extratoBANCO_NOME: TStringField
      DisplayLabel = 'Nome do Banco'
      FieldName = 'BANCO_NOME'
      Size = 100
    end
    object mem_extratoCHAVE_ID: TIntegerField
      DisplayLabel = 'Chave ID'
      FieldName = 'CHAVE_ID'
    end
    object mem_extratoID_CADBCO: TIntegerField
      DisplayLabel = 'Id Banco'
      FieldName = 'ID_CADBCO'
    end
    object mem_extratoSTATUS: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
    end
  end
end

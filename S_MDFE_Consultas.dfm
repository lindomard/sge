object Frm_MDFE_Consultas: TFrm_MDFE_Consultas
  Left = 157
  Top = 124
  Width = 1153
  Height = 480
  Caption = 'Consultas MDFE'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gbConsultas: TGroupBox
    Left = 0
    Top = 0
    Width = 1145
    Height = 100
    Align = alTop
    Caption = 'Consultas'
    TabOrder = 0
    object Label62: TLabel
      Left = 749
      Top = 9
      Width = 75
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Periodo de:'
    end
    object Label63: TLabel
      Left = 976
      Top = 11
      Width = 8
      Height = 13
      Caption = #224
    end
    object Label34: TLabel
      Left = 357
      Top = 11
      Width = 103
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Chave Inicial:'
    end
    object Label35: TLabel
      Left = 548
      Top = 13
      Width = 103
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Chave Final:'
    end
    object Label38: TLabel
      Left = 382
      Top = 32
      Width = 108
      Height = 13
      Caption = 'Chave de Acesso::'
    end
    object Label1: TLabel
      Left = 406
      Top = 57
      Width = 57
      Height = 13
      Caption = 'Ambiente:'
    end
    object edt_datini: TDateEdit
      Left = 828
      Top = 8
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 0
    end
    object edt_datfin: TDateEdit
      Left = 1004
      Top = 7
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 1
    end
    object edt_chaveini: TEdit
      Left = 466
      Top = 11
      Width = 77
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object edt_chavefin: TEdit
      Left = 657
      Top = 11
      Width = 77
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
    end
    object CLBStatus: TCheckListBox
      Left = 2
      Top = 15
      Width = 375
      Height = 83
      Align = alLeft
      Color = 16776176
      Columns = 2
      ItemHeight = 13
      Items.Strings = (
        '0-Em Digitacao'
        '1-Gravada'
        '2-Enviando'
        '3-Rejeitada'
        '4-Enviado Ok'
        '5-Encerrando'
        '6-Encerrada'
        '7-Excluido Antes de Encerrar'
        '8-Excluido antes de Enviar'
        '9-Excluido ja Encerrada'
        'Todos')
      Style = lbOwnerDrawFixed
      TabOrder = 4
      OnClick = CLBStatusClick
    end
    object BBnAtu: TBitBtn
      Left = 946
      Top = 29
      Width = 170
      Height = 23
      Cursor = crHandPoint
      Caption = 'Atuali&zar'
      TabOrder = 5
      OnClick = BBnAtuClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object edt_chave: TEdit
      Left = 502
      Top = 31
      Width = 338
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
    end
    object btn_sair: TBitBtn
      Left = 947
      Top = 51
      Width = 170
      Height = 23
      Cursor = crHandPoint
      Hint = 'Fecha Esta Janela'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btn_sairClick
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
    object cb_tpamb: TComboBox
      Left = 469
      Top = 53
      Width = 145
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 8
      Text = 'Producao'
      Items.Strings = (
        'Producao'
        'Homologacao')
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 100
    Width = 1145
    Height = 51
    Align = alTop
    TabOrder = 1
    object bbImprimir: TBitBtn
      Left = 2
      Top = 2
      Width = 170
      Height = 20
      Hint = 'Enviar ao Sefaz'
      Caption = 'Imprimir MDFE'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
    object bbEncerrada: TBitBtn
      Left = 956
      Top = 2
      Width = 150
      Height = 22
      Cursor = crHandPoint
      Caption = 'Encerrar'
      TabOrder = 1
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object bbXMLDFE: TBitBtn
      Left = 232
      Top = 2
      Width = 170
      Height = 22
      Cursor = crHandPoint
      Caption = 'XML MDFE'
      TabOrder = 2
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
    object bbXMLEncerramento: TBitBtn
      Left = 402
      Top = 2
      Width = 170
      Height = 22
      Cursor = crHandPoint
      Caption = 'Encerramento'
      TabOrder = 3
      OnClick = bbXMLEncerramentoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        00333FF777777777773F0000FFFFFFFFFF0377773F3F3F3F3F7308880F0F0F0F
        0FF07F33737373737337088880FFFFFFFFF07F3337FFFFFFFFF7088880000000
        00037F3337777777777308888033330F03337F3337F3FF7F7FFF088880300000
        00007F3337F7777777770FFFF030FFFFFFF07F3FF7F7F3FFFFF708008030F000
        00F07F7737F7F77777F70FFFF030F0AAE0F07F3FF7F7F7F337F708008030F0DA
        D0F07F7737F7F7FFF7F70FFFF030F00000F07F33F7F7F77777370FF9F030FFFF
        FFF07F3737F7FFFFFFF70FFFF030000000007FFFF7F777777777000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbXmlCancelamento: TBitBtn
      Left = 571
      Top = 2
      Width = 170
      Height = 22
      Cursor = crHandPoint
      Caption = 'Excluir MDFE'
      TabOrder = 4
      OnClick = bbXmlCancelamentoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbRenovar: TBitBtn
      Left = 741
      Top = 2
      Width = 170
      Height = 22
      Cursor = crHandPoint
      Caption = 'Renovar as Informa'#231#245'es'
      TabOrder = 5
      OnClick = bbRenovarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF33339993707399933333773337F3777FF3399933000339
        9933377333777F3377F3399333707333993337733337333337FF993333333333
        399377F33333F333377F993333303333399377F33337FF333373993333707333
        333377F333777F333333993333101333333377F333777F3FFFFF993333000399
        999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
        99933773FF777F3F777F339993707399999333773F373F77777F333999999999
        3393333777333777337333333999993333333333377777333333}
      NumGlyphs = 2
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 151
    Width = 1145
    Height = 298
    Align = alClient
    Caption = 'MDFE selecionados:'
    TabOrder = 2
    object Panel2: TPanel
      Left = 2
      Top = 254
      Width = 1141
      Height = 42
      Align = alBottom
      TabOrder = 0
      object st_digitando0: TStaticText
        Left = 6
        Top = 4
        Width = 190
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Digitando'
        Color = clWhite
        ParentColor = False
        TabOrder = 0
      end
      object st_gravada1: TStaticText
        Left = 6
        Top = 20
        Width = 190
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Gravada'
        Color = 12320767
        ParentColor = False
        TabOrder = 1
      end
      object st_enviando2: TStaticText
        Left = 195
        Top = 4
        Width = 190
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Enviando'
        Color = 16762052
        ParentColor = False
        TabOrder = 2
      end
      object st_rejeitada3: TStaticText
        Left = 195
        Top = 20
        Width = 190
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Rejeitada'
        Color = 10206463
        ParentColor = False
        TabOrder = 3
      end
      object st_encerrada6: TStaticText
        Left = 573
        Top = 4
        Width = 190
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Encerrada'
        Color = clBlue
        ParentColor = False
        TabOrder = 4
      end
      object st_excluida_antes_enviar7: TStaticText
        Left = 573
        Top = 19
        Width = 190
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Excluida Antes de Enviar'
        Color = 8388863
        ParentColor = False
        TabOrder = 5
      end
      object st_excluida_antes_encerrar8: TStaticText
        Left = 762
        Top = 4
        Width = 190
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Excluida antes de Encerrar'
        Color = 14002943
        ParentColor = False
        TabOrder = 6
      end
      object st_excluida_ja_encerrada9: TStaticText
        Left = 762
        Top = 19
        Width = 190
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Excluida ja Encerrada'
        Color = clRed
        ParentColor = False
        TabOrder = 7
        Visible = False
      end
      object st_enviado_ok4: TStaticText
        Left = 383
        Top = 4
        Width = 190
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Enviado Ok'
        Color = 16772313
        ParentColor = False
        TabOrder = 8
      end
      object st_encenrrando5: TStaticText
        Left = 383
        Top = 20
        Width = 190
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Encerrando'
        Color = clLime
        ParentColor = False
        TabOrder = 9
      end
    end
    object DBGrid_MDFE: TDBGrid
      Left = 2
      Top = 15
      Width = 1141
      Height = 239
      Align = alClient
      DataSource = Src_MDFE
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid_MDFEDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'MDFE_ID'
          Title.Alignment = taCenter
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MDFE_CHV_MDFE'
          Title.Alignment = taCenter
          Width = 229
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MDFE_VT_PLACA'
          Title.Alignment = taCenter
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MDFE_DHEMI'
          Title.Alignment = taCenter
          Width = 148
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MDFE_VT_TARA'
          Title.Alignment = taCenter
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MDFE_VT_RENAVAN'
          Title.Alignment = taCenter
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MDFE_TOT_QNFE'
          Title.Alignment = taCenter
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MDFE_TOT_VCARGA'
          Title.Alignment = taCenter
          Width = 136
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MDFE_TPAMB'
          Title.Alignment = taCenter
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MDFE_TOT_QCARGA'
          Title.Alignment = taCenter
          Width = 151
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MDFE_NUMERO'
          Title.Alignment = taCenter
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MDFE_VERSAO_XML'
          Title.Alignment = taCenter
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MDFE_MOD'
          Title.Alignment = taCenter
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MDFE_SERIE'
          Title.Alignment = taCenter
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MDFE_DHINIVIAGEM'
          Title.Alignment = taCenter
          Width = 147
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MDFE_TPPROP'
          Title.Alignment = taCenter
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MDFE_MODAL'
          Title.Alignment = taCenter
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MDFE_DHINCLUSAO'
          Title.Alignment = taCenter
          Width = 154
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MDFE_STATUS'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  object tb_MDFE: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select'
      
        'MDFE_VT_PLACA,MDFE_VT_RNTRC,MDFE_CHV_MDFE,MDFE_NUMERO,MDFE_VERSA' +
        'O_XML,MDFE_MOD'
      ',MDFE_DHINCLUSAO,MDFE_TOT_VCARGA,MDFE_TOT_QNFE'
      ',MDFE_TPAMB'
      'from Mdfe_Cadmdfe'
      '')
    Left = 1076
    Top = 8
    object tb_MDFEMDFE_VT_PLACA: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'MDFE_VT_PLACA'
      Size = 7
    end
    object tb_MDFEMDFE_VT_TARA: TFloatField
      DisplayLabel = 'Tara'
      FieldName = 'MDFE_VT_TARA'
    end
    object tb_MDFEMDFE_VT_RENAVAN: TStringField
      DisplayLabel = 'Renavan'
      FieldName = 'MDFE_VT_RENAVAN'
      Size = 11
    end
    object tb_MDFEMDFE_TOT_QNFE: TFloatField
      DisplayLabel = 'Qtde Total de NFe'
      FieldName = 'MDFE_TOT_QNFE'
    end
    object tb_MDFEMDFE_TOT_VCARGA: TFloatField
      DisplayLabel = 'Valor total da Carga'
      FieldName = 'MDFE_TOT_VCARGA'
    end
    object tb_MDFEMDFE_TOT_QCARGA: TFloatField
      DisplayLabel = 'Peso Bruto da Carga / Mercadoria Transportada:'
      FieldName = 'MDFE_TOT_QCARGA'
    end
    object tb_MDFEMDFE_NUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'MDFE_NUMERO'
    end
    object tb_MDFEMDFE_VERSAO_XML: TStringField
      DisplayLabel = 'Vers'#227'o do XML'
      FieldName = 'MDFE_VERSAO_XML'
      Size = 6
    end
    object tb_MDFEMDFE_MOD: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MDFE_MOD'
      Size = 2
    end
    object tb_MDFEMDFE_SERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'MDFE_SERIE'
      Size = 3
    end
    object tb_MDFEMDFE_DHEMI: TDateTimeField
      DisplayLabel = 'Data e Hora da Emiss'#227'o'
      FieldName = 'MDFE_DHEMI'
    end
    object tb_MDFEMDFE_DHINIVIAGEM: TDateTimeField
      DisplayLabel = 'Data e Hora da Viagem'
      FieldName = 'MDFE_DHINIVIAGEM'
    end
    object tb_MDFEMDFE_MODAL: TStringField
      DisplayLabel = 'Modalidade do Transporte'
      FieldName = 'MDFE_MODAL'
      Size = 1
    end
    object tb_MDFEMDFE_ID: TFloatField
      DisplayLabel = 'Chave ID'
      FieldName = 'MDFE_ID'
    end
    object tb_MDFEMDFE_TPPROP: TStringField
      FieldName = 'MDFE_TPPROP'
      Size = 1
    end
    object tb_MDFEMDFE_DHINCLUSAO: TDateTimeField
      DisplayLabel = 'Data/Hora Inclusao'
      FieldName = 'MDFE_DHINCLUSAO'
    end
    object tb_MDFEMDFE_TPAMB: TStringField
      DisplayLabel = 'Ambiente'
      FieldName = 'MDFE_TPAMB'
      Size = 1
    end
    object tb_MDFEMDFE_CHV_MDFE: TStringField
      DisplayLabel = 'Achave de Acesso'
      FieldName = 'MDFE_CHV_MDFE'
      Size = 60
    end
    object tb_MDFEMDFE_STATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'MDFE_STATUS'
    end
    object tb_MDFEMDFE_TOT_QCTE: TFloatField
      FieldName = 'MDFE_TOT_QCTE'
    end
    object tb_MDFEMDFE_PROP_RNTRC: TStringField
      FieldName = 'MDFE_PROP_RNTRC'
      Size = 8
    end
    object tb_MDFEMDFE_ENVIO_NPROT: TStringField
      FieldName = 'MDFE_ENVIO_NPROT'
    end
  end
  object Src_MDFE: TDataSource
    DataSet = tb_MDFE
    Left = 1092
    Top = 40
  end
  object SaveDialog1: TSaveDialog
    Left = 736
    Top = 246
  end
end

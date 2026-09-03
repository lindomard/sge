object Frm_Venda_Pre_DI: TFrm_Venda_Pre_DI
  Left = 330
  Top = 109
  Width = 928
  Height = 572
  Caption = 'Dados do Documento de Importa'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 41
    Align = alTop
    Caption = 'Dados do Documento de Importa'#231#227'o'
    Color = 15794175
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -30
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 912
    Height = 53
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 11
      Top = 9
      Width = 102
      Height = 13
      Caption = 'Chave do Pedido:'
    end
    object Label2: TLabel
      Left = 211
      Top = 9
      Width = 32
      Height = 13
      Caption = 'Data:'
    end
    object Label3: TLabel
      Left = 379
      Top = 9
      Width = 44
      Height = 13
      Caption = 'Cliente:'
    end
    object lbl_produto: TLabel
      Left = 1
      Top = 35
      Width = 910
      Height = 17
      Align = alBottom
      Alignment = taCenter
      Caption = 'Chave do Pedido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edt_chave: TEdit
      Left = 117
      Top = 7
      Width = 79
      Height = 19
      TabStop = False
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object edt_datped: TEdit
      Left = 245
      Top = 7
      Width = 103
      Height = 19
      TabStop = False
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object edt_razao: TEdit
      Left = 425
      Top = 7
      Width = 472
      Height = 19
      TabStop = False
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
  end
  object gb_documentos: TGroupBox
    Left = 0
    Top = 300
    Width = 912
    Height = 109
    Align = alClient
    Caption = 'Documentos:'
    TabOrder = 2
    object DBGrid_ped_di: TDBGrid
      Left = 2
      Top = 15
      Width = 908
      Height = 66
      Align = alClient
      DataSource = src_ped_di
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnExit = DBGrid_ped_diExit
      Columns = <
        item
          Expanded = False
          FieldName = 'PDI_ITEM'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDI_NDI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDI_DDI'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDI_XLOCDESEMB'
          Width = 236
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDI_UFDESEMB'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDI_DDESEMB'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDI_CEXPORTADOR'
          Width = 196
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 2
      Top = 81
      Width = 908
      Height = 26
      Align = alBottom
      TabOrder = 1
      object SAIR: TBitBtn
        Left = 760
        Top = 3
        Width = 135
        Height = 23
        Hint = 'Fecha Esta Janela'
        Caption = '&Sair'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = SAIRClick
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
      object bbExcluir: TBitBtn
        Left = 32
        Top = 1
        Width = 135
        Height = 23
        Hint = 'Fecha Esta Janela'
        Caption = 'Excluir Item'
        ModalResult = 2
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = bbExcluirClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
    end
  end
  object gb_ped_di_adic: TGroupBox
    Left = 0
    Top = 409
    Width = 912
    Height = 125
    Align = alBottom
    Caption = 'Adicoes'
    TabOrder = 3
    object DBGrid_ped_di_adic: TDBGrid
      Left = 2
      Top = 15
      Width = 908
      Height = 82
      Align = alClient
      DataSource = src_ped_di_adic
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnExit = DBGrid_ped_di_adicExit
      Columns = <
        item
          Expanded = False
          FieldName = 'PDIAD_NADICAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDIAD_NSEQADIC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDIAD_CFABRICANTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDIAD_VDESCDI'
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 2
      Top = 97
      Width = 908
      Height = 26
      Align = alBottom
      TabOrder = 1
      object BitBtn1: TBitBtn
        Left = 760
        Top = 3
        Width = 135
        Height = 23
        Hint = 'Fecha Esta Janela'
        Caption = '&Sair'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = SAIRClick
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
      object BitBtn2: TBitBtn
        Left = 32
        Top = 1
        Width = 135
        Height = 23
        Hint = 'Fecha Esta Janela'
        Caption = 'Excluir Item'
        ModalResult = 2
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = bbExcluirClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 94
    Width = 912
    Height = 206
    Align = alTop
    Caption = 'Dados Diversos'
    TabOrder = 4
    object gb_imp_importacao: TGroupBox
      Left = 7
      Top = 16
      Width = 466
      Height = 52
      Caption = 'Imposto de Importa'#231#227'o:'
      Color = 16753828
      Ctl3D = True
      ParentBackground = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 0
      object StaticText35: TStaticText
        Left = 5
        Top = 12
        Width = 40
        Height = 14
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Vlr BC'
        TabOrder = 0
        Transparent = False
      end
      object StaticText42: TStaticText
        Left = 43
        Top = 12
        Width = 63
        Height = 14
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Vl D Adu'
        TabOrder = 1
        Transparent = False
      end
      object StaticText43: TStaticText
        Left = 112
        Top = 12
        Width = 58
        Height = 14
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Vlr.Imp'
        TabOrder = 2
        Transparent = False
      end
      object StaticText44: TStaticText
        Left = 173
        Top = 12
        Width = 42
        Height = 14
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Vlr.IOF'
        TabOrder = 3
        Transparent = False
      end
      object edt_P2IMP_IMP_VBC: TEdit
        Left = 5
        Top = 25
        Width = 40
        Height = 19
        Color = 16753828
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        Text = 'edt_vAFRMM'
      end
      object edt_P2IMP_IMP_VDESPADU: TEdit
        Left = 43
        Top = 25
        Width = 63
        Height = 19
        Color = 16753828
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        Text = 'edt_vAFRMM'
      end
      object edt_P2IMP_IMP_VII: TEdit
        Left = 112
        Top = 25
        Width = 58
        Height = 19
        Color = 16753828
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        Text = 'edt_vAFRMM'
      end
      object edt_P2IMP_IMP_VIOF: TEdit
        Left = 173
        Top = 25
        Width = 42
        Height = 19
        Color = 16753828
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        Text = 'edt_vAFRMM'
      end
    end
    object GroupBox3: TGroupBox
      Left = 196
      Top = 99
      Width = 273
      Height = 90
      Caption = 'Via de Transporte:'
      Color = 12713921
      Ctl3D = True
      ParentBackground = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 1
      object Label7: TLabel
        Left = 9
        Top = 41
        Width = 240
        Height = 26
        Alignment = taCenter
        AutoSize = False
        Caption = 
          'Valor da AFRMM - Adicional ao Frete para'#13#10'Renova'#231#227'o da Marinha M' +
          'ercante'
        Color = 12713921
        ParentColor = False
      end
      object dbcb_pViaTransp: TRxDBComboBox
        Left = 16
        Top = 16
        Width = 249
        Height = 21
        Style = csDropDownList
        DataField = 'PDI_TPVIATRANSP'
        DataSource = src_ped_di
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          '01=Mar'#237'tima;'
          '02=Fluvial;'
          '03=Lacustre;'
          '04=A'#233'rea;'
          '05=Postal'
          '06=Ferrovi'#225'ria;'
          '07=Rodovi'#225'ria;'
          '08=Conduto / Rede Transmiss'#227'o;'
          '09=Meios Pr'#243'prios;'
          '10=Entrada / Sa'#237'da ficta;')
        TabOrder = 0
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10')
        OnClick = dbcb_pViaTranspClick
      end
      object DBE_PDI_VAFRMM: TDBEdit
        Left = 26
        Top = 68
        Width = 193
        Height = 19
        Ctl3D = False
        DataField = 'PDI_VAFRMM'
        DataSource = src_ped_di
        ParentCtl3D = False
        TabOrder = 1
      end
    end
    object GroupBox4: TGroupBox
      Left = 502
      Top = 105
      Width = 273
      Height = 92
      Cursor = crDrag
      Caption = 'Forma de importa'#231#227'o quanto a intermedia'#231#227'o:'
      Color = 13294591
      Ctl3D = True
      ParentBackground = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 2
      object Label8: TLabel
        Left = 9
        Top = 38
        Width = 218
        Height = 27
        Alignment = taCenter
        AutoSize = False
        Caption = 'CNPJ do adquirente ou do encomendante'
        Color = 14680063
        ParentColor = False
        WordWrap = True
      end
      object Label9: TLabel
        Left = 245
        Top = 37
        Width = 19
        Height = 29
        Alignment = taCenter
        AutoSize = False
        Caption = 'UF'
        Color = 15138764
        ParentColor = False
        WordWrap = True
      end
      object RxDBC_PDI_TPINTERMEDIARIO: TRxDBComboBox
        Left = 10
        Top = 16
        Width = 255
        Height = 21
        Style = csDropDownList
        DataField = 'PDI_TPINTERMEDIARIO'
        DataSource = src_ped_di
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          '1=Importa'#231#227'o por conta pr'#243'pria;'
          '2=Importa'#231#227'o por conta e ordem;'
          '3=Importa'#231#227'o por encomenda;')
        TabOrder = 0
        Values.Strings = (
          '1'
          '2'
          '3')
        OnClick = dbcb_pViaTranspClick
      end
      object DBE_PDI_CNPJ: TDBEdit
        Left = 8
        Top = 68
        Width = 217
        Height = 19
        Ctl3D = False
        DataField = 'PDI_CNPJ'
        DataSource = src_ped_di
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBE_PDI_UFTERCEIRO: TDBEdit
        Left = 245
        Top = 66
        Width = 19
        Height = 19
        Ctl3D = False
        DataField = 'PDI_UFTERCEIRO'
        DataSource = src_ped_di
        ParentCtl3D = False
        TabOrder = 2
      end
    end
  end
  object tb_ped_di: TQuery
    CachedUpdates = True
    AfterInsert = tb_ped_diAfterInsert
    AfterEdit = tb_ped_diAfterEdit
    BeforePost = tb_ped_diBeforePost
    AfterPost = tb_ped_diAfterPost
    AfterCancel = tb_ped_diAfterCancel
    BeforeDelete = tb_ped_diBeforeDelete
    AfterDelete = tb_ped_diAfterDelete
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from CADPED_DI')
    UpdateObject = u_ped_di
    Left = 16
    Top = 184
    object tb_ped_diPDI_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'PDI_CODEMP'
      Origin = 'SG_ASSOC.CADPED_DI.PDI_CODEMP'
    end
    object tb_ped_diPDI_CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'PDI_CHAVE'
      Origin = 'SG_ASSOC.CADPED_DI.PDI_CHAVE'
    end
    object tb_ped_diPDI_CHAVE_ANO: TFloatField
      DisplayLabel = 'Ano'
      FieldName = 'PDI_CHAVE_ANO'
      Origin = 'SG_ASSOC.CADPED_DI.PDI_CHAVE_ANO'
    end
    object tb_ped_diPDI_ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'PDI_ITEM'
      Origin = 'SG_ASSOC.CADPED_DI.PDI_ITEM'
    end
    object tb_ped_diPDI_NDI: TStringField
      DisplayLabel = 'Numero Documento'
      FieldName = 'PDI_NDI'
      Origin = 'SG_ASSOC.CADPED_DI.PDI_NDI'
      Size = 12
    end
    object tb_ped_diPDI_DDI: TDateTimeField
      DisplayLabel = 'Data Doc'
      FieldName = 'PDI_DDI'
      Origin = 'SG_ASSOC.CADPED_DI.PDI_DDI'
    end
    object tb_ped_diPDI_XLOCDESEMB: TStringField
      DisplayLabel = 'Local Embargue'
      FieldName = 'PDI_XLOCDESEMB'
      Origin = 'SG_ASSOC.CADPED_DI.PDI_XLOCDESEMB'
      Size = 60
    end
    object tb_ped_diPDI_UFDESEMB: TStringField
      DisplayLabel = 'UF'
      FieldName = 'PDI_UFDESEMB'
      Origin = 'SG_ASSOC.CADPED_DI.PDI_UFDESEMB'
      Size = 2
    end
    object tb_ped_diPDI_CEXPORTADOR: TStringField
      DisplayLabel = 'C'#243'digo Exportador'
      FieldName = 'PDI_CEXPORTADOR'
      Origin = 'SG_ASSOC.CADPED_DI.PDI_CEXPORTADOR'
      Size = 60
    end
    object tb_ped_diPDI_DDESEMB: TDateTimeField
      DisplayLabel = 'Data Desemb Aduan'
      FieldName = 'PDI_DDESEMB'
      Origin = 'SG_ASSOC.CADPED_DI.PDI_DDESEMB'
    end
    object tb_ped_diPDI_CODPRO: TFloatField
      FieldName = 'PDI_CODPRO'
      Origin = 'SG_ASSOC.CADPED_DI.PDI_CODPRO'
    end
    object tb_ped_diPDI_TPVIATRANSP: TFloatField
      FieldName = 'PDI_TPVIATRANSP'
      Origin = 'SG_ASSOC.CADPED_DI.PDI_TPVIATRANSP'
    end
    object tb_ped_diPDI_VAFRMM: TFloatField
      FieldName = 'PDI_VAFRMM'
      Origin = 'SG_ASSOC.CADPED_DI.PDI_VAFRMM'
    end
    object tb_ped_diPDI_TPINTERMEDIARIO: TFloatField
      FieldName = 'PDI_TPINTERMEDIARIO'
      Origin = 'SG_ASSOC.CADPED_DI.PDI_TPINTERMEDIARIO'
    end
    object tb_ped_diPDI_CNPJ: TStringField
      FieldName = 'PDI_CNPJ'
      Origin = 'SG_ASSOC.CADPED_DI.PDI_CNPJ'
      Size = 14
    end
    object tb_ped_diPDI_UFTERCEIRO: TStringField
      FieldName = 'PDI_UFTERCEIRO'
      Origin = 'SG_ASSOC.CADPED_DI.PDI_UFTERCEIRO'
      Size = 2
    end
  end
  object u_ped_di: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPED_DI'
      'set'
      '  PDI_CODEMP = :PDI_CODEMP,'
      '  PDI_CHAVE = :PDI_CHAVE,'
      '  PDI_CHAVE_ANO = :PDI_CHAVE_ANO,'
      '  PDI_ITEM = :PDI_ITEM,'
      '  PDI_NDI = :PDI_NDI,'
      '  PDI_DDI = :PDI_DDI,'
      '  PDI_XLOCDESEMB = :PDI_XLOCDESEMB,'
      '  PDI_UFDESEMB = :PDI_UFDESEMB,'
      '  PDI_CEXPORTADOR = :PDI_CEXPORTADOR,'
      '  PDI_DDESEMB = :PDI_DDESEMB,'
      '  PDI_CODPRO = :PDI_CODPRO,'
      '  PDI_TPVIATRANSP = :PDI_TPVIATRANSP,'
      '  PDI_VAFRMM = :PDI_VAFRMM,'
      '  PDI_TPINTERMEDIARIO = :PDI_TPINTERMEDIARIO,'
      '  PDI_CNPJ = :PDI_CNPJ,'
      '  PDI_UFTERCEIRO = :PDI_UFTERCEIRO'
      'where'
      '  PDI_CODEMP = :OLD_PDI_CODEMP and'
      '  PDI_CHAVE = :OLD_PDI_CHAVE and'
      '  PDI_CHAVE_ANO = :OLD_PDI_CHAVE_ANO and'
      '  PDI_ITEM = :OLD_PDI_ITEM')
    InsertSQL.Strings = (
      'insert into CADPED_DI'
      
        '  (PDI_CODEMP, PDI_CHAVE, PDI_CHAVE_ANO, PDI_ITEM, PDI_NDI, PDI_' +
        'DDI, '
      'PDI_XLOCDESEMB, '
      '   PDI_UFDESEMB, PDI_CEXPORTADOR, PDI_DDESEMB, PDI_CODPRO, '
      'PDI_TPVIATRANSP, '
      '   PDI_VAFRMM, PDI_TPINTERMEDIARIO, PDI_CNPJ, PDI_UFTERCEIRO)'
      'values'
      
        '  (:PDI_CODEMP, :PDI_CHAVE, :PDI_CHAVE_ANO, :PDI_ITEM, :PDI_NDI,' +
        ' '
      ':PDI_DDI, '
      
        '   :PDI_XLOCDESEMB, :PDI_UFDESEMB, :PDI_CEXPORTADOR, :PDI_DDESEM' +
        'B, '
      ':PDI_CODPRO, '
      
        '   :PDI_TPVIATRANSP, :PDI_VAFRMM, :PDI_TPINTERMEDIARIO, :PDI_CNP' +
        'J, '
      ':PDI_UFTERCEIRO)')
    DeleteSQL.Strings = (
      'delete from CADPED_DI'
      'where'
      '  PDI_CODEMP = :OLD_PDI_CODEMP and'
      '  PDI_CHAVE = :OLD_PDI_CHAVE and'
      '  PDI_CHAVE_ANO = :OLD_PDI_CHAVE_ANO and'
      '  PDI_ITEM = :OLD_PDI_ITEM')
    Left = 56
    Top = 187
  end
  object src_ped_di: TDataSource
    DataSet = tb_ped_di
    OnDataChange = src_ped_diDataChange
    Left = 104
    Top = 187
  end
  object tb_ped_di_adic: TQuery
    CachedUpdates = True
    AfterInsert = tb_ped_di_adicAfterInsert
    AfterEdit = tb_ped_di_adicAfterEdit
    BeforePost = tb_ped_di_adicBeforePost
    AfterPost = tb_ped_di_adicAfterPost
    AfterCancel = tb_ped_di_adicAfterCancel
    BeforeDelete = tb_ped_di_adicBeforeDelete
    AfterDelete = tb_ped_di_adicAfterDelete
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from CADPED_DI_ADIC')
    UpdateObject = u_ped_di_adic
    Left = 152
    Top = 176
    object tb_ped_di_adicPDIAD_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'PDIAD_CODEMP'
      Origin = 'SG_ASSOC.CADPED_DI_ADIC.PDIAD_CODEMP'
    end
    object tb_ped_di_adicPDIAD_CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'PDIAD_CHAVE'
      Origin = 'SG_ASSOC.CADPED_DI_ADIC.PDIAD_CHAVE'
    end
    object tb_ped_di_adicPDIAD_CHAVE_ANO: TFloatField
      DisplayLabel = 'Ano'
      FieldName = 'PDIAD_CHAVE_ANO'
      Origin = 'SG_ASSOC.CADPED_DI_ADIC.PDIAD_CHAVE_ANO'
    end
    object tb_ped_di_adicPDIAD_CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo Prod'
      FieldName = 'PDIAD_CODPRO'
      Origin = 'SG_ASSOC.CADPED_DI_ADIC.PDIAD_CODPRO'
    end
    object tb_ped_di_adicPDIAD_ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'PDIAD_ITEM'
      Origin = 'SG_ASSOC.CADPED_DI_ADIC.PDIAD_ITEM'
    end
    object tb_ped_di_adicPDIAD_NADICAO: TFloatField
      DisplayLabel = 'Num Adicao'
      FieldName = 'PDIAD_NADICAO'
      Origin = 'SG_ASSOC.CADPED_DI_ADIC.PDIAD_NADICAO'
    end
    object tb_ped_di_adicPDIAD_NSEQADIC: TFloatField
      DisplayLabel = 'N.Seq.Adicao'
      FieldName = 'PDIAD_NSEQADIC'
      Origin = 'SG_ASSOC.CADPED_DI_ADIC.PDIAD_NSEQADIC'
    end
    object tb_ped_di_adicPDIAD_CFABRICANTE: TStringField
      DisplayLabel = 'C'#243'd.Fabricante'
      FieldName = 'PDIAD_CFABRICANTE'
      Origin = 'SG_ASSOC.CADPED_DI_ADIC.PDIAD_CFABRICANTE'
      Size = 60
    end
    object tb_ped_di_adicPDIAD_VDESCDI: TStringField
      DisplayLabel = 'Vlr.Desc.'
      FieldName = 'PDIAD_VDESCDI'
      Origin = 'SG_ASSOC.CADPED_DI_ADIC.PDIAD_VDESCDI'
      Size = 15
    end
  end
  object u_ped_di_adic: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPED_DI_ADIC'
      'set'
      '  PDIAD_CODEMP = :PDIAD_CODEMP,'
      '  PDIAD_CHAVE = :PDIAD_CHAVE,'
      '  PDIAD_CHAVE_ANO = :PDIAD_CHAVE_ANO,'
      '  PDIAD_CODPRO = :PDIAD_CODPRO,'
      '  PDIAD_ITEM = :PDIAD_ITEM,'
      '  PDIAD_NADICAO = :PDIAD_NADICAO,'
      '  PDIAD_NSEQADIC = :PDIAD_NSEQADIC,'
      '  PDIAD_CFABRICANTE = :PDIAD_CFABRICANTE,'
      '  PDIAD_VDESCDI = :PDIAD_VDESCDI'
      'where'
      '  PDIAD_CODEMP = :OLD_PDIAD_CODEMP and'
      '  PDIAD_CHAVE = :OLD_PDIAD_CHAVE and'
      '  PDIAD_CHAVE_ANO = :OLD_PDIAD_CHAVE_ANO and'
      '  PDIAD_CODPRO = :OLD_PDIAD_CODPRO and'
      '  PDIAD_ITEM = :OLD_PDIAD_ITEM and'
      '  PDIAD_NSEQADIC = :OLD_PDIAD_NSEQADIC')
    InsertSQL.Strings = (
      'insert into CADPED_DI_ADIC'
      '  (PDIAD_CODEMP, PDIAD_CHAVE, PDIAD_CHAVE_ANO, PDIAD_CODPRO, '
      'PDIAD_ITEM, '
      
        '   PDIAD_NADICAO, PDIAD_NSEQADIC, PDIAD_CFABRICANTE, PDIAD_VDESC' +
        'DI)'
      'values'
      
        '  (:PDIAD_CODEMP, :PDIAD_CHAVE, :PDIAD_CHAVE_ANO, :PDIAD_CODPRO,' +
        ' '
      ':PDIAD_ITEM, '
      '   :PDIAD_NADICAO, :PDIAD_NSEQADIC, :PDIAD_CFABRICANTE, '
      ':PDIAD_VDESCDI)')
    DeleteSQL.Strings = (
      'delete from CADPED_DI_ADIC'
      'where'
      '  PDIAD_CODEMP = :OLD_PDIAD_CODEMP and'
      '  PDIAD_CHAVE = :OLD_PDIAD_CHAVE and'
      '  PDIAD_CHAVE_ANO = :OLD_PDIAD_CHAVE_ANO and'
      '  PDIAD_CODPRO = :OLD_PDIAD_CODPRO and'
      '  PDIAD_ITEM = :OLD_PDIAD_ITEM and'
      '  PDIAD_NSEQADIC = :OLD_PDIAD_NSEQADIC')
    Left = 192
    Top = 179
  end
  object src_ped_di_adic: TDataSource
    DataSet = tb_ped_di_adic
    Left = 239
    Top = 179
  end
end

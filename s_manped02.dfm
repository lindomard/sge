object Frm_ManPed02: TFrm_ManPed02
  Left = 214
  Top = 85
  Width = 1120
  Height = 584
  ActiveControl = edt_chave
  Caption = 'Manipular Dados itens'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 1112
    Height = 206
    Align = alClient
    DataSource = Src_Ped02
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'P2ITEM'
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2CODPRO'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nompro'
        Width = 179
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2QTD'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2PRECO'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2IMP_IMP_VII'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2VALIPI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2PIS_VBC'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2COFINS_VBC'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2VALPIS'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2COFINS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2VDESPACESRAT'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2BASEN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2ICMSN'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total_liquido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2ALPIS'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2ALCOFINS'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2CST_IPI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2IPI_VBC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2LOTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2DTVCTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2DESC1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2DESC2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2VALDES'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2SIT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2BASER'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2ICMSR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2PCOTAB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2UCPR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2PCOCUS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2TOTDES'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2DESCRAT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2TABELA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2ALIPI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2BCINR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2ICMSNR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2ISENTAS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2ALIQ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2PCOMIS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2VCOMIS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2DESCM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2CFO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2TOTLIQ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2PDESCF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2VDESCF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2TOTOUT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2PCOMAX'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2QTDDEV'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2PROMOCAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2DESC3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2CFOSUBECF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2ST_IVA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2ST_REDUT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2ST_ICMCRED'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2ST_ICMDEB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2REDUTICM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2CODVEN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2COMPLEMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2PCRED_SN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2PCREDSN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2UND'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2PREPAS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2MODBCST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2LOTCT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2CST_PIS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2CST_COFINS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2CSOSN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2CSOSN_ORI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2ESTNOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2ESTCONS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2ESTTERC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2ESTREV'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2VLRICMS_SN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2DESC_CAB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2VICMSDES'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2DESCPR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2VSEGRAT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2PERCIMPOSTOS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2TIPOPROD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2ALIQICMSDES'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2ALIQAPROXTRIB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2VALAPROXTRIB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2ICMS_ALIPI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2ICMS_BCIPI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2ICMS_VLIPI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2VSEGRAT_BCICMS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2VFRERAT_BCICMS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2VFRERAT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2VDESPACESRAT_BCICMS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2COMPRA_XPED'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2COMPRA_NITEMPED'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2IMP_IMP_ALIQ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2IMP_IMP_VDESDPADU'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2IMP_IMP_VIOF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2IMP_IMP_VBC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2IMP_TPVIATRANSP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2IMP_VAFRMM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2IMP_TPINTERMEDIARIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2IMP_CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2IMP_UFTERCEIRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2IMP_NDRAW'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2EXP_NDRAW'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2EXP_NRE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2EXP_CHNFE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2EXP_QEXPORT'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1112
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 11
      Top = 12
      Width = 70
      Height = 13
      Caption = 'Pesquisar por :'
    end
    object DBNavigator1: TDBNavigator
      Left = 720
      Top = 8
      Width = 196
      Height = 25
      DataSource = Src_Ped02
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel]
      TabOrder = 4
      OnClick = DBNavigator1Click
    end
    object Button2: TButton
      Left = 568
      Top = 8
      Width = 145
      Height = 25
      Caption = 'Atualizar CADP01'
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 392
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Buscar'
      TabOrder = 2
      OnClick = Button1Click
    end
    object edt_chave: TEdit
      Left = 239
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object cb_tipoPesquisa: TComboBox
      Left = 84
      Top = 8
      Width = 145
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Chave'
      Items.Strings = (
        'Chave'
        'Numero NF'
        'Numero CUPOM')
    end
    object CB_NF_IMP: TCheckBox
      Left = 480
      Top = 16
      Width = 97
      Height = 17
      Caption = 'NF Importacao'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 247
    Width = 1112
    Height = 306
    Align = alBottom
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 3
      Top = 5
      Width = 366
      Height = 65
      Caption = 'Outros Campos:'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object StaticText11: TStaticText
        Left = 1
        Top = 14
        Width = 38
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '% Red.Bc'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        Transparent = False
      end
      object StaticText13: TStaticText
        Left = 38
        Top = 14
        Width = 35
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '% ICMS'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        Transparent = False
      end
      object StaticText17: TStaticText
        Left = 72
        Top = 14
        Width = 98
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Modalidade da Base de Calculo ICMS ST'
        Color = 13565951
        ParentColor = False
        TabOrder = 2
        Transparent = False
      end
      object StaticText18: TStaticText
        Left = 169
        Top = 14
        Width = 31
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '% IVA'
        Color = 13565951
        ParentColor = False
        TabOrder = 3
        Transparent = False
      end
      object StaticText24: TStaticText
        Left = 199
        Top = 14
        Width = 52
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'PMC ou Vlr Pauta'
        Color = 13565951
        ParentColor = False
        TabOrder = 4
        Transparent = False
      end
      object StaticText26: TStaticText
        Left = 249
        Top = 14
        Width = 39
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '% Red. BC ST'
        Color = 13565951
        ParentColor = False
        TabOrder = 5
        Transparent = False
      end
      object StaticText19: TStaticText
        Left = 287
        Top = 14
        Width = 38
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '% Icms Deb'
        Color = 13565951
        ParentColor = False
        TabOrder = 6
        Transparent = False
      end
      object StaticText23: TStaticText
        Left = 324
        Top = 14
        Width = 38
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '% Icms Cred'
        Color = 13565951
        ParentColor = False
        TabOrder = 7
        Transparent = False
      end
      object DBE_ICMS_PPRED: TDBEdit
        Left = 2
        Top = 42
        Width = 36
        Height = 19
        Ctl3D = False
        DataField = 'P2BASEN'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 8
      end
      object DBE_ICMS_PERC: TDBEdit
        Left = 37
        Top = 42
        Width = 36
        Height = 19
        Ctl3D = False
        DataField = 'P2ALIQ'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 9
      end
      object rxdbcb_modbcst: TRxDBComboBox
        Left = 72
        Top = 42
        Width = 98
        Height = 21
        Style = csDropDownList
        Color = 8454016
        DataField = 'P2MODBCST'
        DataSource = Src_Ped02
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'P'#231'o.M'#225'x.Consumidor'
          'Lista Negativa'
          'ListaPositiva'
          'Lista neutra'
          'Iva'
          'Pauta')
        TabOrder = 10
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5')
      end
      object DBE_ST_IVA: TDBEdit
        Left = 168
        Top = 42
        Width = 32
        Height = 19
        Ctl3D = False
        DataField = 'P2ST_IVA'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 11
      end
      object DBE_PRECO_MAXCONS: TDBEdit
        Left = 199
        Top = 42
        Width = 51
        Height = 19
        Ctl3D = False
        DataField = 'P2PCOMAX'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 12
      end
      object DBE_ST_REDUT: TDBEdit
        Left = 249
        Top = 42
        Width = 39
        Height = 19
        Ctl3D = False
        DataField = 'P2ST_REDUT'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 13
      end
      object DBEST_ICMSDEB: TDBEdit
        Left = 287
        Top = 42
        Width = 38
        Height = 19
        Ctl3D = False
        DataField = 'P2ST_ICMDEB'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 14
      end
      object DBE_ST_ICMSCRED: TDBEdit
        Left = 324
        Top = 42
        Width = 38
        Height = 19
        Ctl3D = False
        DataField = 'P2ST_ICMCRED'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 15
      end
    end
    object gb_imp_imp: TGroupBox
      Left = 3
      Top = 72
      Width = 227
      Height = 65
      Caption = 'Imposto Importa'#231#227'o:'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      object StaticText3: TStaticText
        Left = 1
        Top = 14
        Width = 62
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Base Calc'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        Transparent = False
      end
      object DBE_P2IMP_IMP_VBC: TDBEdit
        Left = 1
        Top = 42
        Width = 62
        Height = 19
        Ctl3D = False
        DataField = 'P2IMP_IMP_VBC'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 1
      end
      object StaticText4: TStaticText
        Left = 62
        Top = 14
        Width = 50
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Desp Adu'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        Transparent = False
      end
      object DBE_P2IMP_IMP_VDESDPADU: TDBEdit
        Left = 62
        Top = 42
        Width = 50
        Height = 19
        Ctl3D = False
        DataField = 'P2IMP_IMP_VDESDPADU'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 3
      end
      object StaticText5: TStaticText
        Left = 111
        Top = 14
        Width = 60
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Valor Imposto'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        Transparent = False
      end
      object DBE_P2IMP_IMP_VII: TDBEdit
        Left = 111
        Top = 42
        Width = 60
        Height = 19
        Ctl3D = False
        DataField = 'P2IMP_IMP_VII'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 5
      end
      object StaticText6: TStaticText
        Left = 170
        Top = 14
        Width = 55
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Valor IOF'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 6
        Transparent = False
      end
      object DBE_P2IMP_IMP_VIOF: TDBEdit
        Left = 170
        Top = 42
        Width = 55
        Height = 19
        Ctl3D = False
        DataField = 'P2IMP_IMP_VIOF'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 7
      end
    end
    object gb_pis: TGroupBox
      Left = 6
      Top = 138
      Width = 182
      Height = 65
      Caption = 'Pis'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      object StaticText7: TStaticText
        Left = 1
        Top = 14
        Width = 50
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'CST'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        Transparent = False
      end
      object DBE_P2CST_PIS: TDBEdit
        Left = 1
        Top = 42
        Width = 50
        Height = 19
        Ctl3D = False
        DataField = 'P2CST_PIS'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 1
      end
      object StaticText8: TStaticText
        Left = 50
        Top = 14
        Width = 38
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Base Calc'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        Transparent = False
      end
      object DBE_P2PIS_VBC: TDBEdit
        Left = 50
        Top = 42
        Width = 38
        Height = 19
        Ctl3D = False
        DataField = 'P2PIS_VBC'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 3
      end
      object StaticText9: TStaticText
        Left = 87
        Top = 14
        Width = 45
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '%'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        Transparent = False
      end
      object DBE_P2ALPIS: TDBEdit
        Left = 87
        Top = 42
        Width = 45
        Height = 19
        Ctl3D = False
        DataField = 'P2ALPIS'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 5
      end
      object StaticText12: TStaticText
        Left = 131
        Top = 14
        Width = 45
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Valor'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 6
        Transparent = False
      end
      object DBE_P2VALPIS: TDBEdit
        Left = 131
        Top = 42
        Width = 45
        Height = 19
        Ctl3D = False
        DataField = 'P2VALPIS'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 7
      end
    end
    object gb_cofins: TGroupBox
      Left = 196
      Top = 138
      Width = 182
      Height = 65
      Caption = 'Cofins'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      object StaticText14: TStaticText
        Left = 1
        Top = 14
        Width = 50
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'CST'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        Transparent = False
      end
      object DBE_P2CST_COFINS: TDBEdit
        Left = 1
        Top = 42
        Width = 50
        Height = 19
        Ctl3D = False
        DataField = 'P2CST_COFINS'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 1
      end
      object StaticText16: TStaticText
        Left = 50
        Top = 14
        Width = 38
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Base Calc'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        Transparent = False
      end
      object DBE_P2COFINS_VBC: TDBEdit
        Left = 50
        Top = 42
        Width = 38
        Height = 19
        Ctl3D = False
        DataField = 'P2COFINS_VBC'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 3
      end
      object StaticText20: TStaticText
        Left = 87
        Top = 14
        Width = 45
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '%'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        Transparent = False
      end
      object DBE_P2ALCOFINS: TDBEdit
        Left = 87
        Top = 42
        Width = 45
        Height = 19
        Ctl3D = False
        DataField = 'P2ALCOFINS'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 5
      end
      object StaticText21: TStaticText
        Left = 131
        Top = 14
        Width = 45
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Valor'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 6
        Transparent = False
      end
      object DBE_P2COFINS: TDBEdit
        Left = 131
        Top = 42
        Width = 45
        Height = 19
        Ctl3D = False
        DataField = 'P2COFINS'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 7
      end
    end
    object gb_ipi: TGroupBox
      Left = 5
      Top = 210
      Width = 182
      Height = 65
      Caption = 'IPI'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      object StaticText22: TStaticText
        Left = 1
        Top = 14
        Width = 27
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'CST'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        Transparent = False
      end
      object DBE_P2CST_IPI: TDBEdit
        Left = 1
        Top = 42
        Width = 27
        Height = 19
        Ctl3D = False
        DataField = 'P2CST_IPI'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 1
      end
      object StaticText25: TStaticText
        Left = 27
        Top = 14
        Width = 61
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Base Calc'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        Transparent = False
      end
      object DBE_P2IPI_VBC: TDBEdit
        Left = 27
        Top = 42
        Width = 62
        Height = 19
        Ctl3D = False
        DataField = 'P2IPI_VBC'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 3
      end
      object StaticText28: TStaticText
        Left = 87
        Top = 14
        Width = 35
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '%'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        Transparent = False
      end
      object DBE_P2ALIPI: TDBEdit
        Left = 87
        Top = 42
        Width = 35
        Height = 19
        Ctl3D = False
        DataField = 'P2ALIPI'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 5
      end
      object StaticText29: TStaticText
        Left = 120
        Top = 14
        Width = 59
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Valor'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 6
        Transparent = False
      end
      object DBE_P2VALIPI: TDBEdit
        Left = 120
        Top = 42
        Width = 58
        Height = 19
        Ctl3D = False
        DataField = 'P2VALIPI'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 7
      end
    end
    object gb_csosn: TGroupBox
      Left = 515
      Top = 5
      Width = 170
      Height = 65
      Caption = 'Icms Simples Nacional'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      object StaticText15: TStaticText
        Left = 2
        Top = 14
        Width = 36
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'CSOSN'
        Color = 16768959
        ParentColor = False
        TabOrder = 0
        Transparent = False
      end
      object DBE_CSOSN: TDBEdit
        Left = 2
        Top = 42
        Width = 36
        Height = 19
        Ctl3D = False
        DataField = 'P2CSOSN'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 1
      end
      object StaticText10: TStaticText
        Left = 83
        Top = 14
        Width = 41
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '% ICMS SN'
        Color = 16768959
        ParentColor = False
        TabOrder = 2
        Transparent = False
      end
      object DBE_ICMSSN_PERC: TDBEdit
        Left = 83
        Top = 42
        Width = 41
        Height = 19
        Ctl3D = False
        DataField = 'P2VLRICMS_SN'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 3
      end
      object StaticText27: TStaticText
        Left = 37
        Top = 14
        Width = 46
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Base ICMS SN'
        Color = 16768959
        ParentColor = False
        TabOrder = 4
        Transparent = False
      end
      object StaticText30: TStaticText
        Left = 123
        Top = 14
        Width = 41
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Valor '
        Color = 16768959
        ParentColor = False
        TabOrder = 5
        Transparent = False
      end
      object DBE_P2VLRICMS_SN: TDBEdit
        Left = 131
        Top = 42
        Width = 41
        Height = 19
        Ctl3D = False
        DataField = 'P2VLRICMS_SN'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 6
      end
    end
    object gb_comissoes: TGroupBox
      Left = 231
      Top = 71
      Width = 114
      Height = 65
      Caption = 'Comissoes:'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      object StaticText1: TStaticText
        Left = 2
        Top = 14
        Width = 50
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '% Comiss'#227'o'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        Transparent = False
      end
      object StaticText2: TStaticText
        Left = 51
        Top = 14
        Width = 61
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Valor Comiss'#227'o'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        Transparent = False
      end
      object DBE_PCOMIS: TDBEdit
        Left = 1
        Top = 42
        Width = 51
        Height = 19
        Ctl3D = False
        DataField = 'P2PCOMIS'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 2
        OnEnter = DBE_PCOMISEnter
        OnExit = DBE_PCOMISExit
      end
      object DBE_VCOMIS: TDBEdit
        Left = 51
        Top = 42
        Width = 61
        Height = 19
        Ctl3D = False
        DataField = 'P2VCOMIS'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 3
        OnEnter = DBE_VCOMISEnter
        OnExit = DBE_VCOMISExit
      end
    end
    object GB_ICMS_NORMAL: TGroupBox
      Left = 373
      Top = 5
      Width = 136
      Height = 65
      Caption = 'Icms Normal'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      object StaticText31: TStaticText
        Left = 1
        Top = 14
        Width = 50
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Base Calc'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        Transparent = False
      end
      object DBE_P2BASEN: TDBEdit
        Left = 1
        Top = 42
        Width = 50
        Height = 19
        Ctl3D = False
        DataField = 'P2BASEN'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 1
      end
      object StaticText32: TStaticText
        Left = 50
        Top = 14
        Width = 38
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '%'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        Transparent = False
      end
      object DBE_P2ALIQ: TDBEdit
        Left = 50
        Top = 42
        Width = 38
        Height = 19
        Ctl3D = False
        DataField = 'P2ALIQ'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 3
      end
      object StaticText33: TStaticText
        Left = 87
        Top = 14
        Width = 45
        Height = 29
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Valor Imposto'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        Transparent = False
      end
      object DBE_P2ICMSN: TDBEdit
        Left = 87
        Top = 42
        Width = 45
        Height = 19
        Ctl3D = False
        DataField = 'P2ICMSN'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 5
      end
    end
    object GroupBox2: TGroupBox
      Left = 880
      Top = 16
      Width = 225
      Height = 273
      Caption = 'Totais:'
      TabOrder = 8
      object StaticText34: TStaticText
        Left = 1
        Top = 31
        Width = 80
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Valor IPI'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        Transparent = False
      end
      object edt_totipi: TEdit
        Left = 80
        Top = 31
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        Text = 'edt_totipi'
      end
      object StaticText35: TStaticText
        Left = 1
        Top = 66
        Width = 80
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Valor II'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        Transparent = False
      end
      object edt_totii: TEdit
        Left = 80
        Top = 66
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        Text = 'edt_totii'
      end
      object StaticText36: TStaticText
        Left = 1
        Top = 100
        Width = 80
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Valor PIS'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        Transparent = False
      end
      object edt_totpis: TEdit
        Left = 80
        Top = 101
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        Text = 'edt_totpis'
      end
      object edt_totcofins: TEdit
        Left = 80
        Top = 132
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        Text = 'edt_totcofins'
      end
      object StaticText37: TStaticText
        Left = 1
        Top = 132
        Width = 80
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Valor Cofins:'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 7
        Transparent = False
      end
      object StaticText38: TStaticText
        Left = 1
        Top = 183
        Width = 80
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Valor ICMS:'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 8
        Transparent = False
      end
      object edt_valoricms: TEdit
        Left = 80
        Top = 183
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 9
        Text = 'edt_totcofins'
      end
      object StaticText39: TStaticText
        Left = 1
        Top = 149
        Width = 80
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Outras Desp'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 10
        Transparent = False
      end
      object edt_outras_desp: TEdit
        Left = 80
        Top = 149
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 11
        Text = 'edt_totcofins'
      end
      object StaticText40: TStaticText
        Left = 0
        Top = 235
        Width = 80
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Total Liquido:'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 12
        Transparent = False
      end
      object edt_totliq: TEdit
        Left = 80
        Top = 235
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 13
        Text = 'edt_totcofins'
      end
      object StaticText41: TStaticText
        Left = 1
        Top = 166
        Width = 80
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Base ICMS'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 14
        Transparent = False
      end
      object edt_basen: TEdit
        Left = 80
        Top = 166
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 15
        Text = 'edt_totcofins'
      end
      object StaticText42: TStaticText
        Left = 1
        Top = 115
        Width = 80
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Base Cofins'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 16
        Transparent = False
      end
      object edt_cofins_base: TEdit
        Left = 80
        Top = 115
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 17
        Text = 'edt_totcofins'
      end
      object StaticText43: TStaticText
        Left = 1
        Top = 13
        Width = 80
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Base IPI:'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 18
        Transparent = False
      end
      object edt_baseipi: TEdit
        Left = 80
        Top = 13
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 19
        Text = 'edt_totipi'
      end
      object StaticText44: TStaticText
        Left = 1
        Top = 48
        Width = 80
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Base II:'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 20
        Transparent = False
      end
      object edt_base_II: TEdit
        Left = 80
        Top = 48
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 21
        Text = 'edt_totii'
      end
      object StaticText45: TStaticText
        Left = 1
        Top = 83
        Width = 80
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Base PIS:'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 22
        Transparent = False
      end
      object edt_pis_base: TEdit
        Left = 80
        Top = 83
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 23
        Text = 'edt_totii'
      end
      object StaticText46: TStaticText
        Left = 1
        Top = 200
        Width = 80
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Base ICMS Imp'
        Color = 15397375
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -1
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 24
        Transparent = False
      end
      object edt_basen_imp: TEdit
        Left = 80
        Top = 200
        Width = 121
        Height = 19
        Color = 15397375
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 25
        Text = 'edt_totcofins'
      end
      object edt_valoricms_imp: TEdit
        Left = 80
        Top = 217
        Width = 121
        Height = 19
        Color = 15397375
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 26
        Text = 'edt_totcofins'
      end
      object StaticText47: TStaticText
        Left = 1
        Top = 217
        Width = 80
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Valor ICMS Imp:'
        Color = 15397375
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -1
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 27
        Transparent = False
      end
    end
    object BitBtn1: TBitBtn
      Left = 696
      Top = 8
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 9
      OnClick = BitBtn1Click
    end
    object bbArredondar: TBitBtn
      Left = 776
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Arredondar'
      TabOrder = 10
      OnClick = bbArredondarClick
    end
    object gb_difal: TGroupBox
      Left = 383
      Top = 73
      Width = 494
      Height = 207
      Caption = 'Emenda 87  DIFAL:'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 11
      object StaticText48: TStaticText
        Left = 1
        Top = 49
        Width = 416
        Height = 19
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Valor da BC do ICMS na UF de destino'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        Transparent = False
      end
      object DBE_P2VBCUFDEST: TDBEdit
        Left = 414
        Top = 49
        Width = 78
        Height = 19
        Ctl3D = False
        DataField = 'P2VBCUFDEST'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 4
      end
      object StaticText49: TStaticText
        Left = 1
        Top = 13
        Width = 414
        Height = 19
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 
          'Percentual do  ICMS relativo ao Fundo de Combate '#224' Pobreza (FCP)' +
          ' na UF de destino'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        Transparent = False
      end
      object DBE_P2CPUFDEST: TDBEdit
        Left = 414
        Top = 13
        Width = 78
        Height = 19
        Ctl3D = False
        DataField = 'P2CPUFDEST'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 0
      end
      object StaticText50: TStaticText
        Left = 1
        Top = 67
        Width = 414
        Height = 19
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Al'#237'quota interna da UF de destino'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 7
        Transparent = False
      end
      object DBE_P2ICMSUFDEST: TDBEdit
        Left = 414
        Top = 67
        Width = 78
        Height = 19
        Ctl3D = False
        DataField = 'P2ICMSUFDEST'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 6
      end
      object StaticText51: TStaticText
        Left = 1
        Top = 122
        Width = 414
        Height = 19
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Al'#237'quota interestadual das UF envolvidas'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 8
        Transparent = False
      end
      object DBE_P2ICMSINTER: TDBEdit
        Left = 414
        Top = 122
        Width = 78
        Height = 19
        Ctl3D = False
        DataField = 'P2ICMSINTER'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 9
      end
      object StaticText52: TStaticText
        Left = 1
        Top = 140
        Width = 414
        Height = 19
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Percentual provis'#243'rio de partilha do ICMS Interestadual'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 10
        Transparent = False
      end
      object DBE_P2ICMSINTERPART: TDBEdit
        Left = 414
        Top = 140
        Width = 78
        Height = 19
        Ctl3D = False
        DataField = 'P2ICMSINTERPART'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 11
      end
      object StaticText53: TStaticText
        Left = 1
        Top = 31
        Width = 414
        Height = 19
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 
          'Valor do ICMS relativo ao Fundo  de Combate '#224' Pobreza (FCP) da U' +
          'F de destino'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 12
        Transparent = False
      end
      object DBE_P2VFCPUDEST: TDBEdit
        Left = 414
        Top = 31
        Width = 78
        Height = 19
        Ctl3D = False
        DataField = 'P2VFCPUDEST'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 1
      end
      object StaticText54: TStaticText
        Left = 1
        Top = 85
        Width = 414
        Height = 19
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Valor do ICMS Interestadual  para a UF de destino'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 13
        Transparent = False
      end
      object DBE_P2VICMSUFDEST: TDBEdit
        Left = 414
        Top = 85
        Width = 78
        Height = 19
        Ctl3D = False
        DataField = 'P2VICMSUFDEST'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 5
      end
      object StaticText55: TStaticText
        Left = 1
        Top = 158
        Width = 414
        Height = 19
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Valor do ICMS Interestadual para a UF do remetente'
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 14
        Transparent = False
      end
      object DBE_P2VICMSUFREMET: TDBEdit
        Left = 414
        Top = 158
        Width = 78
        Height = 19
        Ctl3D = False
        DataField = 'P2VICMSUFREMET'
        DataSource = Src_Ped02
        ParentCtl3D = False
        TabOrder = 15
      end
    end
  end
  object Tb_Ped02: TQuery
    CachedUpdates = True
    BeforePost = Tb_Ped02BeforePost
    AfterPost = Tb_Ped02AfterPost
    AfterDelete = c
    OnCalcFields = Tb_Ped02CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP02 where'
      'P2CODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Ped02
    Left = 498
    Top = 246
    object Tb_Ped02nompro: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldKind = fkCalculated
      FieldName = 'nompro'
      Size = 200
      Calculated = True
    end
    object Tb_Ped02P2CODEMP: TFloatField
      FieldName = 'P2CODEMP'
      Origin = 'SG_ASSOC.CADP02.P2CODEMP'
    end
    object Tb_Ped02P2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE'
    end
    object Tb_Ped02P2ORDEM: TFloatField
      FieldName = 'P2ORDEM'
      Origin = 'SG_ASSOC.CADP02.P2ORDEM'
    end
    object Tb_Ped02P2ITEM: TFloatField
      DisplayLabel = 'Item'
      FieldName = 'P2ITEM'
      Origin = 'SG_ASSOC.CADP02.P2ITEM'
    end
    object Tb_Ped02P2CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Tb_Ped02P2CODANT: TFloatField
      FieldName = 'P2CODANT'
      Origin = 'SG_ASSOC.CADP02.P2CODANT'
    end
    object Tb_Ped02P2QTD: TFloatField
      DisplayLabel = 'Qtd'
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Tb_Ped02P2LOTE: TStringField
      FieldName = 'P2LOTE'
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object Tb_Ped02P2DTVCTO: TDateTimeField
      FieldName = 'P2DTVCTO'
      Origin = 'SG_ASSOC.CADP02.P2DTVCTO'
    end
    object Tb_Ped02P2DESC1: TFloatField
      FieldName = 'P2DESC1'
      Origin = 'SG_ASSOC.CADP02.P2DESC1'
    end
    object Tb_Ped02P2DESC2: TFloatField
      FieldName = 'P2DESC2'
      Origin = 'SG_ASSOC.CADP02.P2DESC2'
    end
    object Tb_Ped02P2VALDES: TFloatField
      FieldName = 'P2VALDES'
      Origin = 'SG_ASSOC.CADP02.P2VALDES'
    end
    object Tb_Ped02P2SIT: TStringField
      FieldName = 'P2SIT'
      Origin = 'SG_ASSOC.CADP02.P2SIT'
      Size = 3
    end
    object Tb_Ped02P2PRECO: TFloatField
      DisplayLabel = 'P'#231'o.Unit'
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Tb_Ped02P2CODFAB: TFloatField
      FieldName = 'P2CODFAB'
      Origin = 'SG_ASSOC.CADP02.P2CODFAB'
    end
    object Tb_Ped02P2BASEN: TFloatField
      DisplayLabel = 'Bc Icms'
      FieldName = 'P2BASEN'
      Origin = 'SG_ASSOC.CADP02.P2BASEN'
    end
    object Tb_Ped02P2ICMSN: TFloatField
      DisplayLabel = 'Vlr Icms'
      FieldName = 'P2ICMSN'
      Origin = 'SG_ASSOC.CADP02.P2ICMSN'
    end
    object Tb_Ped02P2REPAS: TFloatField
      FieldName = 'P2REPAS'
      Origin = 'SG_ASSOC.CADP02.P2REPAS'
    end
    object Tb_Ped02P2BASER: TFloatField
      FieldName = 'P2BASER'
      Origin = 'SG_ASSOC.CADP02.P2BASER'
    end
    object Tb_Ped02P2ICMSR: TFloatField
      FieldName = 'P2ICMSR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSR'
    end
    object Tb_Ped02P2LISTA: TFloatField
      FieldName = 'P2LISTA'
      Origin = 'SG_ASSOC.CADP02.P2LISTA'
    end
    object Tb_Ped02P2STATUS: TFloatField
      FieldName = 'P2STATUS'
      Origin = 'SG_ASSOC.CADP02.P2STATUS'
    end
    object Tb_Ped02P2PCOTAB: TFloatField
      FieldName = 'P2PCOTAB'
      Origin = 'SG_ASSOC.CADP02.P2PCOTAB'
    end
    object Tb_Ped02P2UCPR: TFloatField
      FieldName = 'P2UCPR'
      Origin = 'SG_ASSOC.CADP02.P2UCPR'
    end
    object Tb_Ped02P2PCOCUS: TFloatField
      FieldName = 'P2PCOCUS'
      Origin = 'SG_ASSOC.CADP02.P2PCOCUS'
    end
    object Tb_Ped02P2TOTDES: TFloatField
      FieldName = 'P2TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object Tb_Ped02P2DESCRAT: TFloatField
      FieldName = 'P2DESCRAT'
      Origin = 'SG_ASSOC.CADP02.P2DESCRAT'
    end
    object Tb_Ped02P2TABELA: TStringField
      FieldName = 'P2TABELA'
      Origin = 'SG_ASSOC.CADP02.P2TABELA'
      Size = 1
    end
    object Tb_Ped02P2ALIPI: TFloatField
      DisplayLabel = '% IPI'
      FieldName = 'P2ALIPI'
      Origin = 'SG_ASSOC.CADP02.P2ALIPI'
    end
    object Tb_Ped02P2VALIPI: TFloatField
      DisplayLabel = 'Vlr.IPI'
      FieldName = 'P2VALIPI'
      Origin = 'SG_ASSOC.CADP02.P2VALIPI'
    end
    object Tb_Ped02P2BCINR: TFloatField
      FieldName = 'P2BCINR'
      Origin = 'SG_ASSOC.CADP02.P2BCINR'
    end
    object Tb_Ped02P2ICMSNR: TFloatField
      FieldName = 'P2ICMSNR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSNR'
    end
    object Tb_Ped02P2ISENTAS: TFloatField
      FieldName = 'P2ISENTAS'
      Origin = 'SG_ASSOC.CADP02.P2ISENTAS'
    end
    object Tb_Ped02P2ALIQ: TFloatField
      FieldName = 'P2ALIQ'
      Origin = 'SG_ASSOC.CADP02.P2ALIQ'
    end
    object Tb_Ped02P2ALIQNR: TFloatField
      FieldName = 'P2ALIQNR'
      Origin = 'SG_ASSOC.CADP02.P2ALIQNR'
    end
    object Tb_Ped02P2PCOMIS: TFloatField
      FieldName = 'P2PCOMIS'
      Origin = 'SG_ASSOC.CADP02.P2PCOMIS'
    end
    object Tb_Ped02P2VCOMIS: TFloatField
      FieldName = 'P2VCOMIS'
      Origin = 'SG_ASSOC.CADP02.P2VCOMIS'
    end
    object Tb_Ped02P2DESCM: TFloatField
      FieldName = 'P2DESCM'
      Origin = 'SG_ASSOC.CADP02.P2DESCM'
    end
    object Tb_Ped02P2CFO: TFloatField
      FieldName = 'P2CFO'
      Origin = 'SG_ASSOC.CADP02.P2CFO'
    end
    object Tb_Ped02P2SEMCOM: TFloatField
      FieldName = 'P2SEMCOM'
      Origin = 'SG_ASSOC.CADP02.P2SEMCOM'
    end
    object Tb_Ped02P2TOTLIQ: TFloatField
      FieldName = 'P2TOTLIQ'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object Tb_Ped02P2PDESCF: TFloatField
      FieldName = 'P2PDESCF'
      Origin = 'SG_ASSOC.CADP02.P2PDESCF'
    end
    object Tb_Ped02P2VDESCF: TFloatField
      FieldName = 'P2VDESCF'
      Origin = 'SG_ASSOC.CADP02.P2VDESCF'
    end
    object Tb_Ped02P2ACRECONV: TFloatField
      FieldName = 'P2ACRECONV'
      Origin = 'SG_ASSOC.CADP02.P2ACRECONV'
    end
    object Tb_Ped02P2ACREGER: TFloatField
      FieldName = 'P2ACREGER'
      Origin = 'SG_ASSOC.CADP02.P2ACREGER'
    end
    object Tb_Ped02P2VCOM02: TFloatField
      FieldName = 'P2VCOM02'
      Origin = 'SG_ASSOC.CADP02.P2VCOM02'
    end
    object Tb_Ped02P2VCOM03: TFloatField
      FieldName = 'P2VCOM03'
      Origin = 'SG_ASSOC.CADP02.P2VCOM03'
    end
    object Tb_Ped02P2TOTOUT: TFloatField
      FieldName = 'P2TOTOUT'
      Origin = 'SG_ASSOC.CADP02.P2TOTOUT'
    end
    object Tb_Ped02P2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
      Origin = 'SG_ASSOC.CADP02.P2LOTSEQ'
    end
    object Tb_Ped02P2PCOMAX: TFloatField
      FieldName = 'P2PCOMAX'
      Origin = 'SG_ASSOC.CADP02.P2PCOMAX'
    end
    object Tb_Ped02P2QTDDEV: TFloatField
      FieldName = 'P2QTDDEV'
      Origin = 'SG_ASSOC.CADP02.P2QTDDEV'
    end
    object Tb_Ped02P2PROMOCAO: TStringField
      FieldName = 'P2PROMOCAO'
      Origin = 'SG_ASSOC.CADP02.P2PROMOCAO'
      Size = 10
    end
    object Tb_Ped02P2DESC3: TFloatField
      FieldName = 'P2DESC3'
      Origin = 'SG_ASSOC.CADP02.P2DESC3'
    end
    object Tb_Ped02P2CODGRU: TFloatField
      FieldName = 'P2CODGRU'
      Origin = 'SG_ASSOC.CADP02.P2CODGRU'
    end
    object Tb_Ped02P2VCOM04: TFloatField
      FieldName = 'P2VCOM04'
      Origin = 'SG_ASSOC.CADP02.P2VCOM04'
    end
    object Tb_Ped02P2ACRERAT: TFloatField
      FieldName = 'P2ACRERAT'
      Origin = 'SG_ASSOC.CADP02.P2ACRERAT'
    end
    object Tb_Ped02P2QTD_ENTREGUE: TFloatField
      FieldName = 'P2QTD_ENTREGUE'
      Origin = 'SG_ASSOC.CADP02.P2QTD_ENTREGUE'
    end
    object Tb_Ped02P2QTD_ENTREGANDO: TFloatField
      FieldName = 'P2QTD_ENTREGANDO'
      Origin = 'SG_ASSOC.CADP02.P2QTD_ENTREGANDO'
    end
    object Tb_Ped02P2AMBIENTE: TStringField
      FieldName = 'P2AMBIENTE'
      Origin = 'SG_ASSOC.CADP02.P2AMBIENTE'
      Size = 30
    end
    object Tb_Ped02P2PCOMIS_EXTRA: TFloatField
      FieldName = 'P2PCOMIS_EXTRA'
      Origin = 'SG_ASSOC.CADP02.P2PCOMIS_EXTRA'
    end
    object Tb_Ped02P2VCOMIS_EXTRA: TFloatField
      FieldName = 'P2VCOMIS_EXTRA'
      Origin = 'SG_ASSOC.CADP02.P2VCOMIS_EXTRA'
    end
    object Tb_Ped02P2STATUS_PED1: TFloatField
      FieldName = 'P2STATUS_PED1'
      Origin = 'SG_ASSOC.CADP02.P2STATUS_PED1'
    end
    object Tb_Ped02P2TIPO: TFloatField
      FieldName = 'P2TIPO'
      Origin = 'SG_ASSOC.CADP02.P2TIPO'
    end
    object Tb_Ped02P2PCOFPG: TFloatField
      FieldName = 'P2PCOFPG'
      Origin = 'SG_ASSOC.CADP02.P2PCOFPG'
    end
    object Tb_Ped02P2CFOSUBECF: TFloatField
      FieldName = 'P2CFOSUBECF'
      Origin = 'SG_ASSOC.CADP02.P2CFOSUBECF'
    end
    object Tb_Ped02P2CODAGRU: TFloatField
      FieldName = 'P2CODAGRU'
      Origin = 'SG_ASSOC.CADP02.P2CODAGRU'
    end
    object Tb_Ped02P2CONSIG: TFloatField
      FieldName = 'P2CONSIG'
      Origin = 'SG_ASSOC.CADP02.P2CONSIG'
    end
    object Tb_Ped02P2PCOM02: TFloatField
      FieldName = 'P2PCOM02'
      Origin = 'SG_ASSOC.CADP02.P2PCOM02'
    end
    object Tb_Ped02P2PCOM03: TFloatField
      FieldName = 'P2PCOM03'
      Origin = 'SG_ASSOC.CADP02.P2PCOM03'
    end
    object Tb_Ped02P2ST_IVA: TFloatField
      FieldName = 'P2ST_IVA'
      Origin = 'SG_ASSOC.CADP02.P2ST_IVA'
    end
    object Tb_Ped02P2ST_REDUT: TFloatField
      FieldName = 'P2ST_REDUT'
      Origin = 'SG_ASSOC.CADP02.P2ST_REDUT'
    end
    object Tb_Ped02P2ST_ICMCRED: TFloatField
      FieldName = 'P2ST_ICMCRED'
      Origin = 'SG_ASSOC.CADP02.P2ST_ICMCRED'
    end
    object Tb_Ped02P2ST_ICMDEB: TFloatField
      FieldName = 'P2ST_ICMDEB'
      Origin = 'SG_ASSOC.CADP02.P2ST_ICMDEB'
    end
    object Tb_Ped02P2REDUTICM: TFloatField
      FieldName = 'P2REDUTICM'
      Origin = 'SG_ASSOC.CADP02.P2REDUTICM'
    end
    object Tb_Ped02P2PRAZO: TFloatField
      FieldName = 'P2PRAZO'
      Origin = 'SG_ASSOC.CADP02.P2PRAZO'
    end
    object Tb_Ped02P2QTD_ATEN: TFloatField
      FieldName = 'P2QTD_ATEN'
      Origin = 'SG_ASSOC.CADP02.P2QTD_ATEN'
    end
    object Tb_Ped02P2ALPIS: TFloatField
      DisplayLabel = '% Pis'
      FieldName = 'P2ALPIS'
      Origin = 'SG_ASSOC.CADP02.P2ALPIS'
    end
    object Tb_Ped02P2VALPIS: TFloatField
      DisplayLabel = 'Vlr.Pis'
      FieldName = 'P2VALPIS'
      Origin = 'SG_ASSOC.CADP02.P2VALPIS'
    end
    object Tb_Ped02P2ALCOFINS: TFloatField
      DisplayLabel = '% Cofins'
      FieldName = 'P2ALCOFINS'
      Origin = 'SG_ASSOC.CADP02.P2ALCOFINS'
    end
    object Tb_Ped02P2COFINS: TFloatField
      DisplayLabel = 'Vlr.Cofins'
      FieldName = 'P2COFINS'
      Origin = 'SG_ASSOC.CADP02.P2COFINS'
    end
    object Tb_Ped02P2CODVEN: TFloatField
      FieldName = 'P2CODVEN'
      Origin = 'SG_ASSOC.CADP02.P2CODVEN'
    end
    object Tb_Ped02P2TIPO_PCO: TFloatField
      FieldName = 'P2TIPO_PCO'
      Origin = 'SG_ASSOC.CADP02.P2TIPO_PCO'
    end
    object Tb_Ped02P2CONS_PROPRIO: TFloatField
      FieldName = 'P2CONS_PROPRIO'
      Origin = 'SG_ASSOC.CADP02.P2CONS_PROPRIO'
    end
    object Tb_Ped02P2COMPLEMENTO: TMemoField
      FieldName = 'P2COMPLEMENTO'
      Origin = 'SG_ASSOC.CADP02.P2COMPLEMENTO'
      BlobType = ftMemo
      Size = 500
    end
    object Tb_Ped02P2CODPRO_ORI: TStringField
      FieldName = 'P2CODPRO_ORI'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO_ORI'
      Size = 15
    end
    object Tb_Ped02P2NOMPRO_ORI: TStringField
      FieldName = 'P2NOMPRO_ORI'
      Origin = 'SG_ASSOC.CADP02.P2NOMPRO_ORI'
      Size = 200
    end
    object Tb_Ped02P2CHAVE_NIVEL: TFloatField
      FieldName = 'P2CHAVE_NIVEL'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE_NIVEL'
    end
    object Tb_Ped02P2PCRED_SN: TFloatField
      FieldName = 'P2PCRED_SN'
      Origin = 'SG_ASSOC.CADP02.P2PCRED_SN'
    end
    object Tb_Ped02P2PCREDSN: TFloatField
      FieldName = 'P2PCREDSN'
      Origin = 'SG_ASSOC.CADP02.P2PCREDSN'
    end
    object Tb_Ped02P2UND: TStringField
      FieldName = 'P2UND'
      Origin = 'SG_ASSOC.CADP02.P2UND'
      Size = 6
    end
    object Tb_Ped02P2PREPAS: TFloatField
      FieldName = 'P2PREPAS'
      Origin = 'SG_ASSOC.CADP02.P2PREPAS'
    end
    object Tb_Ped02P2MODBCST: TFloatField
      FieldName = 'P2MODBCST'
      Origin = 'SG_ASSOC.CADP02.P2MODBCST'
    end
    object Tb_Ped02P2KIT_PRO: TStringField
      FieldName = 'P2KIT_PRO'
      Origin = 'SG_ASSOC.CADP02.P2KIT_PRO'
      Size = 1
    end
    object Tb_Ped02P2LOTCT: TFloatField
      FieldName = 'P2LOTCT'
      Origin = 'SG_ASSOC.CADP02.P2LOTCT'
    end
    object Tb_Ped02P2CST_PIS: TStringField
      FieldName = 'P2CST_PIS'
      Origin = 'SG_ASSOC.CADP02.P2CST_PIS'
      Size = 3
    end
    object Tb_Ped02P2CST_COFINS: TStringField
      FieldName = 'P2CST_COFINS'
      Origin = 'SG_ASSOC.CADP02.P2CST_COFINS'
      Size = 3
    end
    object Tb_Ped02P2CSOSN: TFloatField
      FieldName = 'P2CSOSN'
      Origin = 'SG_ASSOC.CADP02.P2CSOSN'
    end
    object Tb_Ped02P2CSOSN_ORI: TFloatField
      FieldName = 'P2CSOSN_ORI'
      Origin = 'SG_ASSOC.CADP02.P2CSOSN_ORI'
    end
    object Tb_Ped02P2ESTNOR: TStringField
      FieldName = 'P2ESTNOR'
      Origin = 'SG_ASSOC.CADP02.P2ESTNOR'
      Size = 1
    end
    object Tb_Ped02P2ESTCONS: TStringField
      FieldName = 'P2ESTCONS'
      Origin = 'SG_ASSOC.CADP02.P2ESTCONS'
      Size = 1
    end
    object Tb_Ped02P2ESTTERC: TStringField
      FieldName = 'P2ESTTERC'
      Origin = 'SG_ASSOC.CADP02.P2ESTTERC'
      Size = 1
    end
    object Tb_Ped02P2ESTREV: TStringField
      FieldName = 'P2ESTREV'
      Origin = 'SG_ASSOC.CADP02.P2ESTREV'
      Size = 1
    end
    object Tb_Ped02P2VLRICMS_SN: TFloatField
      FieldName = 'P2VLRICMS_SN'
      Origin = 'SG_ASSOC.CADP02.P2VLRICMS_SN'
    end
    object Tb_Ped02P2SITUACAO: TFloatField
      FieldName = 'P2SITUACAO'
      Origin = 'SG_ASSOC.CADP02.P2SITUACAO'
    end
    object Tb_Ped02P2DESC_CAB: TFloatField
      FieldName = 'P2DESC_CAB'
      Origin = 'SG_ASSOC.CADP02.P2DESC_CAB'
    end
    object Tb_Ped02P2CST_IPI: TStringField
      FieldName = 'P2CST_IPI'
      Origin = 'SG_ASSOC.CADP02.P2CST_IPI'
      Size = 3
    end
    object Tb_Ped02P2CONTESP: TFloatField
      FieldName = 'P2CONTESP'
      Origin = 'SG_ASSOC.CADP02.P2CONTESP'
    end
    object Tb_Ped02P2VICMSDES: TFloatField
      FieldName = 'P2VICMSDES'
      Origin = 'SG_ASSOC.CADP02.P2VICMSDES'
    end
    object Tb_Ped02P2DESCPR: TFloatField
      FieldName = 'P2DESCPR'
      Origin = 'SG_ASSOC.CADP02.P2DESCPR'
    end
    object Tb_Ped02P2VSEGRAT: TFloatField
      FieldName = 'P2VSEGRAT'
      Origin = 'SG_ASSOC.CADP02.P2VSEGRAT'
    end
    object Tb_Ped02P2VDESPACESRAT: TFloatField
      DisplayLabel = 'Out Despesas'
      FieldName = 'P2VDESPACESRAT'
      Origin = 'SG_ASSOC.CADP02.P2VDESPACESRAT'
    end
    object Tb_Ped02P2PERCIMPOSTOS: TFloatField
      FieldName = 'P2PERCIMPOSTOS'
      Origin = 'SG_ASSOC.CADP02.P2PERCIMPOSTOS'
    end
    object Tb_Ped02P2TIPOPROD: TFloatField
      FieldName = 'P2TIPOPROD'
      Origin = 'SG_ASSOC.CADP02.P2TIPOPROD'
    end
    object Tb_Ped02P2ALIQICMSDES: TFloatField
      FieldName = 'P2ALIQICMSDES'
      Origin = 'SG_ASSOC.CADP02.P2ALIQICMSDES'
    end
    object Tb_Ped02P2ALIQAPROXTRIB: TFloatField
      FieldName = 'P2ALIQAPROXTRIB'
      Origin = 'SG_ASSOC.CADP02.P2ALIQAPROXTRIB'
    end
    object Tb_Ped02P2VALAPROXTRIB: TFloatField
      FieldName = 'P2VALAPROXTRIB'
      Origin = 'SG_ASSOC.CADP02.P2VALAPROXTRIB'
    end
    object Tb_Ped02P2ICMS_ALIPI: TFloatField
      FieldName = 'P2ICMS_ALIPI'
      Origin = 'SG_ASSOC.CADP02.P2ICMS_ALIPI'
    end
    object Tb_Ped02P2ICMS_BCIPI: TFloatField
      FieldName = 'P2ICMS_BCIPI'
      Origin = 'SG_ASSOC.CADP02.P2ICMS_BCIPI'
    end
    object Tb_Ped02P2ICMS_VLIPI: TFloatField
      FieldName = 'P2ICMS_VLIPI'
      Origin = 'SG_ASSOC.CADP02.P2ICMS_VLIPI'
    end
    object Tb_Ped02P2VSEGRAT_BCICMS: TFloatField
      FieldName = 'P2VSEGRAT_BCICMS'
      Origin = 'SG_ASSOC.CADP02.P2VSEGRAT_BCICMS'
    end
    object Tb_Ped02P2VFRERAT_BCICMS: TFloatField
      FieldName = 'P2VFRERAT_BCICMS'
      Origin = 'SG_ASSOC.CADP02.P2VFRERAT_BCICMS'
    end
    object Tb_Ped02P2VFRERAT: TFloatField
      FieldName = 'P2VFRERAT'
      Origin = 'SG_ASSOC.CADP02.P2VFRERAT'
    end
    object Tb_Ped02P2VDESPACESRAT_BCICMS: TFloatField
      FieldName = 'P2VDESPACESRAT_BCICMS'
      Origin = 'SG_ASSOC.CADP02.P2VDESPACESRAT_BCICMS'
    end
    object Tb_Ped02P2COMPRA_XPED: TStringField
      FieldName = 'P2COMPRA_XPED'
      Origin = 'SG_ASSOC.CADP02.P2COMPRA_XPED'
      Size = 15
    end
    object Tb_Ped02P2COMPRA_NITEMPED: TFloatField
      FieldName = 'P2COMPRA_NITEMPED'
      Origin = 'SG_ASSOC.CADP02.P2COMPRA_NITEMPED'
    end
    object Tb_Ped02P2IMP_IMP_ALIQ: TFloatField
      FieldName = 'P2IMP_IMP_ALIQ'
      Origin = 'SG_ASSOC.CADP02.P2IMP_IMP_ALIQ'
    end
    object Tb_Ped02P2IMP_IMP_VALOR: TFloatField
      FieldName = 'P2IMP_IMP_VALOR'
      Origin = 'SG_ASSOC.CADP02.P2IMP_IMP_VALOR'
    end
    object Tb_Ped02P2IMP_IMP_VDESDPADU: TFloatField
      FieldName = 'P2IMP_IMP_VDESDPADU'
      Origin = 'SG_ASSOC.CADP02.P2IMP_IMP_VDESDPADU'
    end
    object Tb_Ped02P2IMP_IMP_VII: TFloatField
      DisplayLabel = 'Imp.Imp'
      FieldName = 'P2IMP_IMP_VII'
      Origin = 'SG_ASSOC.CADP02.P2IMP_IMP_VII'
    end
    object Tb_Ped02P2IMP_IMP_VIOF: TFloatField
      FieldName = 'P2IMP_IMP_VIOF'
      Origin = 'SG_ASSOC.CADP02.P2IMP_IMP_VIOF'
    end
    object Tb_Ped02P2IMP_IMP_VBC: TFloatField
      FieldName = 'P2IMP_IMP_VBC'
      Origin = 'SG_ASSOC.CADP02.P2IMP_IMP_VBC'
    end
    object Tb_Ped02P2IMP_TPVIATRANSP: TFloatField
      FieldName = 'P2IMP_TPVIATRANSP'
      Origin = 'SG_ASSOC.CADP02.P2IMP_TPVIATRANSP'
    end
    object Tb_Ped02P2IMP_VAFRMM: TFloatField
      FieldName = 'P2IMP_VAFRMM'
      Origin = 'SG_ASSOC.CADP02.P2IMP_VAFRMM'
    end
    object Tb_Ped02P2IMP_TPINTERMEDIARIO: TFloatField
      FieldName = 'P2IMP_TPINTERMEDIARIO'
      Origin = 'SG_ASSOC.CADP02.P2IMP_TPINTERMEDIARIO'
    end
    object Tb_Ped02P2IMP_CNPJ: TStringField
      FieldName = 'P2IMP_CNPJ'
      Origin = 'SG_ASSOC.CADP02.P2IMP_CNPJ'
      Size = 14
    end
    object Tb_Ped02P2IMP_UFTERCEIRO: TStringField
      FieldName = 'P2IMP_UFTERCEIRO'
      Origin = 'SG_ASSOC.CADP02.P2IMP_UFTERCEIRO'
      Size = 2
    end
    object Tb_Ped02P2IMP_NDRAW: TFloatField
      FieldName = 'P2IMP_NDRAW'
      Origin = 'SG_ASSOC.CADP02.P2IMP_NDRAW'
    end
    object Tb_Ped02P2EXP_NDRAW: TFloatField
      FieldName = 'P2EXP_NDRAW'
      Origin = 'SG_ASSOC.CADP02.P2EXP_NDRAW'
    end
    object Tb_Ped02P2EXP_NRE: TFloatField
      FieldName = 'P2EXP_NRE'
      Origin = 'SG_ASSOC.CADP02.P2EXP_NRE'
    end
    object Tb_Ped02P2EXP_CHNFE: TStringField
      FieldName = 'P2EXP_CHNFE'
      Origin = 'SG_ASSOC.CADP02.P2EXP_CHNFE'
      Size = 44
    end
    object Tb_Ped02P2EXP_QEXPORT: TFloatField
      FieldName = 'P2EXP_QEXPORT'
      Origin = 'SG_ASSOC.CADP02.P2EXP_QEXPORT'
    end
    object Tb_Ped02P2IPI_VBC: TFloatField
      DisplayLabel = 'Bc IPI'
      FieldName = 'P2IPI_VBC'
      Origin = 'SG_ASSOC.CADP02.P2IPI_VBC'
    end
    object Tb_Ped02P2PIS_VBC: TFloatField
      DisplayLabel = 'BC Pis'
      FieldName = 'P2PIS_VBC'
      Origin = 'SG_ASSOC.CADP02.P2PIS_VBC'
    end
    object Tb_Ped02P2COFINS_VBC: TFloatField
      DisplayLabel = 'BC Cofins'
      FieldName = 'P2COFINS_VBC'
      Origin = 'SG_ASSOC.CADP02.P2COFINS_VBC'
    end
    object Tb_Ped02total_liquido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total_liquido'
      Calculated = True
    end
    object Tb_Ped02P2IMP_PU_DOLLAR: TFloatField
      FieldName = 'P2IMP_PU_DOLLAR'
      Origin = 'SG_ASSOC.CADP02.P2IMP_PU_DOLLAR'
    end
    object Tb_Ped02P2VBCUFDEST: TFloatField
      FieldName = 'P2VBCUFDEST'
    end
    object Tb_Ped02P2CPUFDEST: TFloatField
      FieldName = 'P2CPUFDEST'
    end
    object Tb_Ped02P2ICMSUFDEST: TFloatField
      FieldName = 'P2ICMSUFDEST'
    end
    object Tb_Ped02P2ICMSINTER: TFloatField
      FieldName = 'P2ICMSINTER'
    end
    object Tb_Ped02P2ICMSINTERPART: TFloatField
      FieldName = 'P2ICMSINTERPART'
    end
    object Tb_Ped02P2VFCPUDEST: TFloatField
      FieldName = 'P2VFCPUDEST'
    end
    object Tb_Ped02P2VICMSUFDEST: TFloatField
      FieldName = 'P2VICMSUFDEST'
    end
    object Tb_Ped02P2VICMSUFREMET: TFloatField
      FieldName = 'P2VICMSUFREMET'
    end
    object Tb_Ped02P2ID_NEW: TFloatField
      FieldName = 'P2ID_NEW'
    end
    object Tb_Ped02P2ID_PED01_NEW: TFloatField
      FieldName = 'P2ID_PED01_NEW'
    end
  end
  object Src_Ped02: TDataSource
    DataSet = Tb_Ped02
    Left = 578
    Top = 254
  end
  object U_Ped02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADP02'
      'set'
      '  P2CODEMP = :P2CODEMP,'
      '  P2LOTSEQ = :P2LOTSEQ,'
      '  P2CHAVE = :P2CHAVE,'
      '  P2ORDEM = :P2ORDEM,'
      '  P2ITEM = :P2ITEM,'
      '  P2CODPRO = :P2CODPRO,'
      '  P2CODANT = :P2CODANT,'
      '  P2QTD = :P2QTD,'
      '  P2QTDDEV = :P2QTDDEV,'
      '  P2LOTE = :P2LOTE,'
      '  P2PROMOCAO = :P2PROMOCAO,'
      '  P2DTVCTO = :P2DTVCTO,'
      '  P2DESC1 = :P2DESC1,'
      '  P2DESC2 = :P2DESC2,'
      '  P2VALDES = :P2VALDES,'
      '  P2PRECO = :P2PRECO,'
      '  P2SIT = :P2SIT,'
      '  P2CODFAB = :P2CODFAB,'
      '  P2BASEN = :P2BASEN,'
      '  P2ICMSN = :P2ICMSN,'
      '  P2REPAS = :P2REPAS,'
      '  P2BASER = :P2BASER,'
      '  P2ICMSR = :P2ICMSR,'
      '  P2LISTA = :P2LISTA,'
      '  P2STATUS = :P2STATUS,'
      '  P2PCOTAB = :P2PCOTAB,'
      '  P2UCPR = :P2UCPR,'
      '  P2PCOCUS = :P2PCOCUS,'
      '  P2PCOMAX = :P2PCOMAX,'
      '  P2TOTDES = :P2TOTDES,'
      '  P2DESCRAT = :P2DESCRAT,'
      '  P2TABELA = :P2TABELA,'
      '  P2VALIPI = :P2VALIPI,'
      '  P2BCINR = :P2BCINR,'
      '  P2ICMSNR = :P2ICMSNR,'
      '  P2ISENTAS = :P2ISENTAS,'
      '  P2TOTOUT = :P2TOTOUT,'
      '  P2PCOMIS = :P2PCOMIS,'
      '  P2VCOMIS = :P2VCOMIS,'
      '  P2VCOM02 = :P2VCOM02,'
      '  P2VCOM03 = :P2VCOM03,'
      '  P2DESCM = :P2DESCM,'
      '  P2CFO = :P2CFO,'
      '  P2SEMCOM = :P2SEMCOM,'
      '  P2TOTLIQ = :P2TOTLIQ,'
      '  P2VDESCF = :P2VDESCF,'
      '  P2ACRECONV = :P2ACRECONV,'
      '  P2ACREGER = :P2ACREGER,'
      '  P2DESC3 = :P2DESC3,'
      '  P2CODGRU = :P2CODGRU,'
      '  P2VCOM04 = :P2VCOM04,'
      '  P2ACRERAT = :P2ACRERAT,'
      '  P2QTD_ENTREGUE = :P2QTD_ENTREGUE,'
      '  P2QTD_ENTREGANDO = :P2QTD_ENTREGANDO,'
      '  P2AMBIENTE = :P2AMBIENTE,'
      '  P2PCOFPG = :P2PCOFPG,'
      '  P2PCOMIS_EXTRA = :P2PCOMIS_EXTRA,'
      '  P2VCOMIS_EXTRA = :P2VCOMIS_EXTRA,'
      '  P2STATUS_PED1 = :P2STATUS_PED1,'
      '  P2TIPO = :P2TIPO,'
      '  P2CFOSUBECF = :P2CFOSUBECF,'
      '  P2CODAGRU = :P2CODAGRU,'
      '  P2CONSIG = :P2CONSIG,'
      '  P2PCOM02 = :P2PCOM02,'
      '  P2PCOM03 = :P2PCOM03,'
      '  P2ST_IVA = :P2ST_IVA,'
      '  P2ST_REDUT = :P2ST_REDUT,'
      '  P2ST_ICMCRED = :P2ST_ICMCRED,'
      '  P2ST_ICMDEB = :P2ST_ICMDEB,'
      '  P2REDUTICM = :P2REDUTICM,'
      '  P2PRAZO = :P2PRAZO,'
      '  P2QTD_ATEN = :P2QTD_ATEN,'
      '  P2ALPIS = :P2ALPIS,'
      '  P2VALPIS = :P2VALPIS,'
      '  P2ALCOFINS = :P2ALCOFINS,'
      '  P2COFINS = :P2COFINS,'
      '  P2COMPLEMENTO = :P2COMPLEMENTO,'
      '  P2CODVEN = :P2CODVEN,'
      '  P2TIPO_PCO = :P2TIPO_PCO,'
      '  P2CONS_PROPRIO = :P2CONS_PROPRIO,'
      '  P2CHAVE_NIVEL = :P2CHAVE_NIVEL,'
      '  P2UND = :P2UND,'
      '  P2CODPRO_ORI = :P2CODPRO_ORI,'
      '  P2NOMPRO_ORI = :P2NOMPRO_ORI,'
      '  P2PERCIMPOSTOS = :P2PERCIMPOSTOS,'
      '  P2CST_PIS = :P2CST_PIS,'
      '  P2CST_IPI = :P2CST_IPI,'
      '  P2CST_COFINS = :P2CST_COFINS,'
      '  P2CSOSN = :P2CSOSN,'
      '  P2CSOSN_ORI = :P2CSOSN_ORI,'
      '  P2CONTESP = :P2CONTESP,'
      '  P2TIPOPROD = :P2TIPOPROD,'
      '  P2ALIQICMSDES = :P2ALIQICMSDES,'
      '  P2VICMSDES = :P2VICMSDES,'
      '  P2ALIQAPROXTRIB = :P2ALIQAPROXTRIB,'
      '  P2VALAPROXTRIB = :P2VALAPROXTRIB,'
      '  P2DESCPR = :P2DESCPR,'
      '  P2PREPAS = :P2PREPAS,'
      '  P2ICMS_ALIPI = :P2ICMS_ALIPI,'
      '  P2ICMS_BCIPI = :P2ICMS_BCIPI,'
      '  P2ICMS_VLIPI = :P2ICMS_VLIPI,'
      '  P2ESTNOR = :P2ESTNOR,'
      '  P2ESTCONS = :P2ESTCONS,'
      '  P2ESTTERC = :P2ESTTERC,'
      '  P2ESTREV = :P2ESTREV,'
      '  P2MODBCST = :P2MODBCST,'
      '  P2PCRED_SN = :P2PCRED_SN,'
      '  P2VLRICMS_SN = :P2VLRICMS_SN,'
      '  P2LOTCT = :P2LOTCT,'
      '  P2PCREDSN = :P2PCREDSN,'
      '  P2SITUACAO = :P2SITUACAO,'
      '  P2DESC_CAB = :P2DESC_CAB,'
      '  P2VSEGRAT = :P2VSEGRAT,'
      '  P2VSEGRAT_BCICMS = :P2VSEGRAT_BCICMS,'
      '  P2VFRERAT_BCICMS = :P2VFRERAT_BCICMS,'
      '  P2VFRERAT = :P2VFRERAT,'
      '  P2VDESPACESRAT = :P2VDESPACESRAT,'
      '  P2VDESPACESRAT_BCICMS = :P2VDESPACESRAT_BCICMS,'
      '  P2COMPRA_XPED = :P2COMPRA_XPED,'
      '  P2COMPRA_NITEMPED = :P2COMPRA_NITEMPED,'
      '  P2KIT_PRO = :P2KIT_PRO,'
      '  P2ALIPI = :P2ALIPI,'
      '  P2ALIQ = :P2ALIQ,'
      '  P2ALIQNR = :P2ALIQNR,'
      '  P2PDESCF = :P2PDESCF,'
      '  P2IMP_IMP_ALIQ = :P2IMP_IMP_ALIQ,'
      '  P2IMP_IMP_VALOR = :P2IMP_IMP_VALOR,'
      '  P2IMP_IMP_VDESDPADU = :P2IMP_IMP_VDESDPADU,'
      '  P2IMP_IMP_VII = :P2IMP_IMP_VII,'
      '  P2IMP_IMP_VIOF = :P2IMP_IMP_VIOF,'
      '  P2IMP_IMP_VBC = :P2IMP_IMP_VBC,'
      '  P2IMP_TPVIATRANSP = :P2IMP_TPVIATRANSP,'
      '  P2IMP_VAFRMM = :P2IMP_VAFRMM,'
      '  P2IMP_TPINTERMEDIARIO = :P2IMP_TPINTERMEDIARIO,'
      '  P2IMP_CNPJ = :P2IMP_CNPJ,'
      '  P2IMP_UFTERCEIRO = :P2IMP_UFTERCEIRO,'
      '  P2IMP_NDRAW = :P2IMP_NDRAW,'
      '  P2EXP_NDRAW = :P2EXP_NDRAW,'
      '  P2EXP_NRE = :P2EXP_NRE,'
      '  P2EXP_CHNFE = :P2EXP_CHNFE,'
      '  P2EXP_QEXPORT = :P2EXP_QEXPORT,'
      '  P2IPI_VBC = :P2IPI_VBC,'
      '  P2PIS_VBC = :P2PIS_VBC,'
      '  P2COFINS_VBC = :P2COFINS_VBC,'
      '  P2IMP_PU_DOLLAR = :P2IMP_PU_DOLLAR'
      ''
      ',P2CPUFDEST=:P2CPUFDEST'
      ',P2VFCPUDEST=:P2VFCPUDEST'
      ',P2VBCUFDEST=:P2VBCUFDEST'
      ',P2ICMSUFDEST=:P2ICMSUFDEST'
      ',P2VICMSUFDEST=:P2VICMSUFDEST'
      ',P2ICMSINTER=:P2ICMSINTER'
      ',P2ICMSINTERPART=:P2ICMSINTERPART'
      ',P2VICMSUFREMET=:P2VICMSUFREMET'
      ''
      ''
      ''
      'where'
      '  P2CODEMP = :OLD_P2CODEMP and'
      '  P2LOTSEQ = :OLD_P2LOTSEQ and'
      '  P2CHAVE = :OLD_P2CHAVE and'
      '  P2ORDEM = :OLD_P2ORDEM and'
      '  P2ITEM = :OLD_P2ITEM and'
      '  P2CODPRO = :OLD_P2CODPRO')
    InsertSQL.Strings = (
      'insert into CADP02'
      '  (P2CODEMP, P2LOTSEQ, P2CHAVE, P2ORDEM, P2ITEM, P2CODPRO, '
      'P2CODANT, P2QTD, '
      '   P2QTDDEV, P2LOTE, P2PROMOCAO, P2DTVCTO, P2DESC1, P2DESC2, '
      'P2VALDES, '
      
        '   P2PRECO, P2SIT, P2CODFAB, P2BASEN, P2ICMSN, P2REPAS, P2BASER,' +
        ' '
      'P2ICMSR, '
      '   P2LISTA, P2STATUS, P2PCOTAB, P2UCPR, P2PCOCUS, P2PCOMAX, '
      'P2TOTDES, P2DESCRAT, '
      '   P2TABELA, P2VALIPI, P2BCINR, P2ICMSNR, P2ISENTAS, P2TOTOUT, '
      'P2PCOMIS, '
      '   P2VCOMIS, P2VCOM02, P2VCOM03, P2DESCM, P2CFO, P2SEMCOM, '
      'P2TOTLIQ, P2VDESCF, '
      
        '   P2ACRECONV, P2ACREGER, P2DESC3, P2CODGRU, P2VCOM04, P2ACRERAT' +
        ', '
      'P2QTD_ENTREGUE, '
      '   P2QTD_ENTREGANDO, P2AMBIENTE, P2PCOFPG, P2PCOMIS_EXTRA, '
      'P2VCOMIS_EXTRA, '
      '   P2STATUS_PED1, P2TIPO, P2CFOSUBECF, P2CODAGRU, P2CONSIG, '
      'P2PCOM02, P2PCOM03, '
      '   P2ST_IVA, P2ST_REDUT, P2ST_ICMCRED, P2ST_ICMDEB, P2REDUTICM, '
      'P2PRAZO, '
      '   P2QTD_ATEN, P2ALPIS, P2VALPIS, P2ALCOFINS, P2COFINS, '
      'P2COMPLEMENTO, '
      '   P2CODVEN, P2TIPO_PCO, P2CONS_PROPRIO, P2CHAVE_NIVEL, P2UND, '
      'P2CODPRO_ORI, '
      
        '   P2NOMPRO_ORI, P2PERCIMPOSTOS, P2CST_PIS, P2CST_IPI, P2CST_COF' +
        'INS, '
      'P2CSOSN, '
      
        '   P2CSOSN_ORI, P2CONTESP, P2TIPOPROD, P2ALIQICMSDES, P2VICMSDES' +
        ', '
      'P2ALIQAPROXTRIB, '
      
        '   P2VALAPROXTRIB, P2DESCPR, P2PREPAS, P2ICMS_ALIPI, P2ICMS_BCIP' +
        'I, '
      'P2ICMS_VLIPI, '
      '   P2ESTNOR, P2ESTCONS, P2ESTTERC, P2ESTREV, P2MODBCST, '
      'P2PCRED_SN, P2VLRICMS_SN, '
      '   P2LOTCT, P2PCREDSN, P2SITUACAO, P2DESC_CAB, P2VSEGRAT, '
      'P2VSEGRAT_BCICMS, '
      '   P2VFRERAT_BCICMS, P2VFRERAT, P2VDESPACESRAT, '
      'P2VDESPACESRAT_BCICMS, '
      
        '   P2COMPRA_XPED, P2COMPRA_NITEMPED, P2KIT_PRO, P2ALIPI, P2ALIQ,' +
        ' '
      'P2ALIQNR, '
      
        '   P2PDESCF, P2IMP_IMP_ALIQ, P2IMP_IMP_VALOR, P2IMP_IMP_VDESDPAD' +
        'U, '
      'P2IMP_IMP_VII, '
      
        '   P2IMP_IMP_VIOF, P2IMP_IMP_VBC, P2IMP_TPVIATRANSP, P2IMP_VAFRM' +
        'M, '
      'P2IMP_TPINTERMEDIARIO, '
      '   P2IMP_CNPJ, P2IMP_UFTERCEIRO, P2IMP_NDRAW, P2EXP_NDRAW, '
      'P2EXP_NRE, P2EXP_CHNFE, '
      '   P2EXP_QEXPORT, P2IPI_VBC, P2PIS_VBC, P2COFINS_VBC, '
      'P2IMP_PU_DOLLAR'
      ',P2CPUFDEST'
      ',P2VFCPUDEST'
      ',P2VBCUFDEST'
      ',P2ICMSUFDEST'
      ',P2VICMSUFDEST'
      ',P2ICMSINTER'
      ',P2ICMSINTERPART'
      ',P2VICMSUFREMET'
      ''
      ''
      ')'
      'values'
      
        '  (:P2CODEMP, :P2LOTSEQ, :P2CHAVE, :P2ORDEM, :P2ITEM, :P2CODPRO,' +
        ' '
      ':P2CODANT, '
      
        '   :P2QTD, :P2QTDDEV, :P2LOTE, :P2PROMOCAO, :P2DTVCTO, :P2DESC1,' +
        ' '
      ':P2DESC2, '
      
        '   :P2VALDES, :P2PRECO, :P2SIT, :P2CODFAB, :P2BASEN, :P2ICMSN, :' +
        'P2REPAS, '
      '   :P2BASER, :P2ICMSR, :P2LISTA, :P2STATUS, :P2PCOTAB, :P2UCPR, '
      ':P2PCOCUS, '
      
        '   :P2PCOMAX, :P2TOTDES, :P2DESCRAT, :P2TABELA, :P2VALIPI, :P2BC' +
        'INR, '
      ':P2ICMSNR, '
      
        '   :P2ISENTAS, :P2TOTOUT, :P2PCOMIS, :P2VCOMIS, :P2VCOM02, :P2VC' +
        'OM03, '
      ':P2DESCM, '
      
        '   :P2CFO, :P2SEMCOM, :P2TOTLIQ, :P2VDESCF, :P2ACRECONV, :P2ACRE' +
        'GER, '
      ':P2DESC3, '
      '   :P2CODGRU, :P2VCOM04, :P2ACRERAT, :P2QTD_ENTREGUE, '
      ':P2QTD_ENTREGANDO, '
      '   :P2AMBIENTE, :P2PCOFPG, :P2PCOMIS_EXTRA, :P2VCOMIS_EXTRA, '
      ':P2STATUS_PED1, '
      
        '   :P2TIPO, :P2CFOSUBECF, :P2CODAGRU, :P2CONSIG, :P2PCOM02, :P2P' +
        'COM03, '
      
        '   :P2ST_IVA, :P2ST_REDUT, :P2ST_ICMCRED, :P2ST_ICMDEB, :P2REDUT' +
        'ICM, '
      ':P2PRAZO, '
      '   :P2QTD_ATEN, :P2ALPIS, :P2VALPIS, :P2ALCOFINS, :P2COFINS, '
      ':P2COMPLEMENTO, '
      
        '   :P2CODVEN, :P2TIPO_PCO, :P2CONS_PROPRIO, :P2CHAVE_NIVEL, :P2U' +
        'ND, '
      ':P2CODPRO_ORI, '
      '   :P2NOMPRO_ORI, :P2PERCIMPOSTOS, :P2CST_PIS, :P2CST_IPI, '
      ':P2CST_COFINS, '
      
        '   :P2CSOSN, :P2CSOSN_ORI, :P2CONTESP, :P2TIPOPROD, :P2ALIQICMSD' +
        'ES, '
      ':P2VICMSDES, '
      '   :P2ALIQAPROXTRIB, :P2VALAPROXTRIB, :P2DESCPR, :P2PREPAS, '
      ':P2ICMS_ALIPI, '
      
        '   :P2ICMS_BCIPI, :P2ICMS_VLIPI, :P2ESTNOR, :P2ESTCONS, :P2ESTTE' +
        'RC, '
      ':P2ESTREV, '
      
        '   :P2MODBCST, :P2PCRED_SN, :P2VLRICMS_SN, :P2LOTCT, :P2PCREDSN,' +
        ' '
      ':P2SITUACAO, '
      
        '   :P2DESC_CAB, :P2VSEGRAT, :P2VSEGRAT_BCICMS, :P2VFRERAT_BCICMS' +
        ', '
      ':P2VFRERAT, '
      '   :P2VDESPACESRAT, :P2VDESPACESRAT_BCICMS, :P2COMPRA_XPED, '
      ':P2COMPRA_NITEMPED, '
      
        '   :P2KIT_PRO, :P2ALIPI, :P2ALIQ, :P2ALIQNR, :P2PDESCF, :P2IMP_I' +
        'MP_ALIQ, '
      '   :P2IMP_IMP_VALOR, :P2IMP_IMP_VDESDPADU, :P2IMP_IMP_VII, '
      ':P2IMP_IMP_VIOF, '
      '   :P2IMP_IMP_VBC, :P2IMP_TPVIATRANSP, :P2IMP_VAFRMM, '
      ':P2IMP_TPINTERMEDIARIO, '
      '   :P2IMP_CNPJ, :P2IMP_UFTERCEIRO, :P2IMP_NDRAW, :P2EXP_NDRAW, '
      ':P2EXP_NRE, '
      
        '   :P2EXP_CHNFE, :P2EXP_QEXPORT, :P2IPI_VBC, :P2PIS_VBC, :P2COFI' +
        'NS_VBC, '
      '   :P2IMP_PU_DOLLAR'
      ',:P2CPUFDEST'
      ',:P2VFCPUDEST'
      ',:P2VBCUFDEST'
      ',:P2ICMSUFDEST'
      ',:P2VICMSUFDEST'
      ',:P2ICMSINTER'
      ',:P2ICMSINTERPART'
      ',:P2VICMSUFREMET'
      ''
      ''
      '   )')
    DeleteSQL.Strings = (
      'delete from CADP02'
      'where'
      '  P2CODEMP = :OLD_P2CODEMP and'
      '  P2LOTSEQ = :OLD_P2LOTSEQ and'
      '  P2CHAVE = :OLD_P2CHAVE and'
      '  P2ORDEM = :OLD_P2ORDEM and'
      '  P2ITEM = :OLD_P2ITEM and'
      '  P2CODPRO = :OLD_P2CODPRO')
    Left = 536
    Top = 248
  end
end

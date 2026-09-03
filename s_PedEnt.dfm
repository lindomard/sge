object Frm_PedEnt: TFrm_PedEnt
  Left = 194
  Top = 222
  Width = 951
  Height = 453
  Caption = 'Relatorio de Previs'#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 943
    Height = 125
    Align = alTop
    Caption = 'Rela'#231#227'o de Entregas'
    TabOrder = 0
    object Label1: TLabel
      Left = 168
      Top = 52
      Width = 24
      Height = 13
      Caption = 'DE..:'
    end
    object Label2: TLabel
      Left = 321
      Top = 52
      Width = 9
      Height = 13
      Caption = #224' '
    end
    object DT1: TDateEdit
      Left = 192
      Top = 48
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object DT2: TDateEdit
      Left = 339
      Top = 48
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object bb_Aplicar: TBitBtn
      Left = 184
      Top = 96
      Width = 75
      Height = 25
      Caption = '&Aplicar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = bb_AplicarClick
    end
    object bb_Imprimir: TBitBtn
      Left = 288
      Top = 96
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = bb_ImprimirClick
    end
    object bb_sair: TBitBtn
      Left = 392
      Top = 96
      Width = 75
      Height = 25
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = bb_sairClick
    end
    object cb_data: TCheckBox
      Left = 225
      Top = 72
      Width = 169
      Height = 17
      Caption = 'Pesquisar pela data da Entrega.'
      TabOrder = 5
    end
    object RG: TRadioGroup
      Left = 552
      Top = 5
      Width = 121
      Height = 62
      Caption = 'Filtrar'
      ItemIndex = 2
      Items.Strings = (
        'Or'#231'amentos'
        'Somente Emitidos'
        'Todos')
      TabOrder = 6
    end
    object rg_entrega: TRadioGroup
      Left = 552
      Top = 66
      Width = 121
      Height = 57
      Caption = 'Filtros Secundarios'
      ItemIndex = 2
      Items.Strings = (
        'Pendentes'
        'Entregues'
        'Todos')
      TabOrder = 7
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 125
    Width = 943
    Height = 297
    Align = alClient
    DataSource = Ds_PEnt
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'P1DATAP'
        Title.Caption = 'DATA DO PEDIDO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1CHAVE'
        Title.Caption = 'CHAVE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRAZAO'
        Title.Caption = 'RAZ'#195'O SOCIAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VNOME'
        Title.Caption = 'VENDEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CBAIRRO'
        Title.Caption = 'BAIRRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CCIDADE'
        Title.Caption = 'CIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1PREVENT'
        Title.Caption = 'DATA PREVISTA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P1HPREVENT'
        Title.Caption = 'HORA PREVISTA'
        Visible = True
      end>
  end
  object RLReport1: TRLReport
    Left = 6
    Top = 240
    Width = 794
    Height = 1123
    Borders.Sides = sdCustom
    Borders.DrawLeft = True
    Borders.DrawTop = True
    Borders.DrawRight = True
    Borders.DrawBottom = True
    DataSource = Ds_PEnt
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PrintDialog = False
    PrintEmpty = False
    Visible = False
    object RLBand2: TRLBand
      Left = 39
      Top = 114
      Width = 716
      Height = 17
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBText2: TRLDBText
        Left = 1
        Top = 0
        Width = 63
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'P1CHAVE'
        DataSource = Ds_PEnt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = chave
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 64
        Top = 0
        Width = 229
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'CRAZAO'
        DataSource = Ds_PEnt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = RAZSOC
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 388
        Top = 0
        Width = 127
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'CBAIRRO'
        DataSource = Ds_PEnt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = telefone
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 605
        Top = 0
        Width = 58
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'P1PREVENT'
        DataSource = Ds_PEnt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = dataent
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 662
        Top = 0
        Width = 54
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'P1HPREVENT'
        DataSource = Ds_PEnt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = horaent
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 515
        Top = 0
        Width = 90
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'CCIDADE'
        DataSource = Ds_PEnt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = totalqtd
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 293
        Top = 0
        Width = 95
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'VNOME'
        DataSource = Ds_PEnt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = RL_VEND
        ParentFont = False
      end
    end
    object rlband_cabger: TRLBand
      Left = 39
      Top = 39
      Width = 716
      Height = 75
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBText1: TRLDBText
        Left = 169
        Top = 1
        Width = 368
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'RAZAO_CAB'
        DataSource = DM1.Src_Emp
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 0
        Width = 39
        Height = 16
        Align = faLeftTop
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 677
        Top = 0
        Width = 39
        Height = 16
        Align = faRightTop
        Info = itHour
      end
      object rlTitulo: TRLLabel
        Left = 1
        Top = 19
        Width = 198
        Height = 16
        Caption = 'Rela'#231#227'o de Entregas de Pedidos.'
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 630
        Top = 16
        Width = 62
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Info = itPageNumber
        Text = 'Pagina:'
      end
      object RLSystemInfo4: TRLSystemInfo
        Left = 694
        Top = 16
        Width = 22
        Height = 16
        AutoSize = False
        Info = itLastPageNumber
        Text = '/'
      end
      object rl_data: TRLLabel
        Left = 0
        Top = 40
        Width = 718
        Height = 16
        Alignment = taCenter
        AutoSize = False
      end
      object chave: TRLLabel
        Left = 1
        Top = 57
        Width = 63
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'CHAVE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RAZSOC: TRLLabel
        Left = 64
        Top = 57
        Width = 229
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'RAZAO SOCIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object telefone: TRLLabel
        Left = 388
        Top = 57
        Width = 127
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'BAIRRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object dataent: TRLLabel
        Left = 605
        Top = 57
        Width = 58
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object horaent: TRLLabel
        Left = 662
        Top = 57
        Width = 54
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'HORA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object totalqtd: TRLLabel
        Left = 515
        Top = 57
        Width = 90
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RL_VEND: TRLLabel
        Left = 293
        Top = 57
        Width = 95
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'VENDEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object Ds_PEnt: TDataSource
    DataSet = TB_PEnt
    Left = 472
    Top = 24
  end
  object TB_PEnt: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'SELECT P1CHAVE, P1DATAP, P1CODCLI, CRAZAO, CFONE01, P1CODVEN, VN' +
        'OME,'
      'TO_CHAR( P1PREVENT,'#39'DD/MM/YYYY'#39') AS  P1PREVENT,'
      'TO_CHAR( P1PREVENT,'#39'HH:mm'#39') AS  P1hPREVENT,'
      ' P1QTDVOL, CBAIRRO, CCIDADE'
      'FROM CADP01, CADCLI, CADVEN'
      'WHERE P1CODTRA>0 AND P1CODCLI(+)=CCODCLI AND VCODVEN(+)=P1CODVEN'
      '')
    Left = 504
    Top = 24
    object TB_PEntP1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
    end
    object TB_PEntP1DATAP: TDateTimeField
      FieldName = 'P1DATAP'
    end
    object TB_PEntP1CODCLI: TFloatField
      FieldName = 'P1CODCLI'
    end
    object TB_PEntCRAZAO: TStringField
      FieldName = 'CRAZAO'
      Size = 60
    end
    object TB_PEntCFONE01: TStringField
      FieldName = 'CFONE01'
      Size = 16
    end
    object TB_PEntP1CODVEN: TFloatField
      FieldName = 'P1CODVEN'
    end
    object TB_PEntVNOME: TStringField
      FieldName = 'VNOME'
      Size = 40
    end
    object TB_PEntP1QTDVOL: TFloatField
      FieldName = 'P1QTDVOL'
    end
    object TB_PEntCBAIRRO: TStringField
      FieldName = 'CBAIRRO'
      Size = 30
    end
    object TB_PEntCCIDADE: TStringField
      FieldName = 'CCIDADE'
      Size = 30
    end
    object TB_PEntP1PREVENT: TStringField
      FieldName = 'P1PREVENT'
      Size = 10
    end
    object TB_PEntP1HPREVENT: TStringField
      FieldName = 'P1HPREVENT'
      Size = 5
    end
  end
end

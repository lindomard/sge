object Frm_AjuInvGra_NovoSemLote: TFrm_AjuInvGra_NovoSemLote
  Left = 298
  Top = 175
  Width = 928
  Height = 480
  Caption = 'Gerar Inventario novo sem lotes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 457
    Top = 0
    Width = 455
    Height = 442
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 35
      Top = 32
      Width = 81
      Height = 13
      Alignment = taRightJustify
      Caption = 'Selecionados:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 53
      Top = 8
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = 'Existentes:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_existentes: TLabel
      Left = 128
      Top = 8
      Width = 50
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'lbl_existentes'
    end
    object lbl_selecionados: TLabel
      Left = 127
      Top = 31
      Width = 50
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'lbl_existentes'
    end
    object Label3: TLabel
      Left = 13
      Top = 128
      Width = 150
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome do Novo Inventario:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 19
      Top = 153
      Width = 145
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data do Novo Inventario:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edt_inventario_novo: TEdit
      Left = 168
      Top = 125
      Width = 201
      Height = 19
      Ctl3D = False
      MaxLength = 30
      ParentCtl3D = False
      TabOrder = 0
    end
    object bbGerarNovo: TBitBtn
      Left = 17
      Top = 198
      Width = 112
      Height = 40
      Caption = 'Gerar Aora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = bbGerarNovoClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 272
      Top = 198
      Width = 95
      Height = 40
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object edt_datainv: TDateEdit
      Left = 168
      Top = 147
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 457
    Height = 442
    Align = alLeft
    Caption = 'Inventario com Lotes:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 41
      Width = 453
      Height = 399
      Align = alClient
      DataSource = Src_InvGra01
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'GERAR'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IGNOMEINV'
          Title.Alignment = taCenter
          Width = 156
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANT'
          Title.Alignment = taCenter
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
          FieldName = 'ITEM'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IGDATAEMI'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IGFILIAL'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomefilial'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IGCODTIP'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 2
      Top = 15
      Width = 453
      Height = 26
      Align = alTop
      TabOrder = 1
      object cb_gerar: TCheckBox
        Left = 24
        Top = 4
        Width = 97
        Height = 17
        Caption = 'Gerar'
        TabOrder = 0
        OnClick = cb_gerarClick
      end
    end
  end
  object Qr_InvGra01: TQuery
    CachedUpdates = True
    BeforeEdit = Qr_InvGra01BeforeEdit
    AfterPost = Qr_InvGra01AfterPost
    DatabaseName = 'SG_ASSOC'
    Filtered = True
    SQL.Strings = (
      'Select  IGNOMEINV,sum(IGQTD) AS QUANT'
      '        ,sum(IGQTD*IGPRECO) AS VALOR'
      '        ,count(*) as ITEM'
      '         from INVGRA_GD where IGCODEMP is null'
      'group by IGNOMEINV')
    UpdateObject = U_InvGra01
    Left = 683
    Top = 22
    object Qr_InvGra01GERAR: TStringField
      FieldName = 'GERAR'
      Size = 1
    end
    object Qr_InvGra01IGNOMEINV: TStringField
      DisplayLabel = 'Nome do Invent'#225'rio'
      FieldName = 'IGNOMEINV'
      Origin = 'SG_ASSOC.INVGRA.IGNOMEINV'
      Size = 30
    end
    object Qr_InvGra01QUANT: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANT'
    end
    object Qr_InvGra01VALOR: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'VALOR'
    end
    object Qr_InvGra01ITEM: TFloatField
      DisplayLabel = 'No.'#205'tens'
      FieldName = 'ITEM'
    end
    object Qr_InvGra01IGDATAEMI: TDateTimeField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'IGDATAEMI'
    end
    object Qr_InvGra01IGFILIAL: TFloatField
      DisplayLabel = 'Local'
      FieldName = 'IGFILIAL'
    end
    object Qr_InvGra01nomefilial: TStringField
      DisplayLabel = 'Nome Local'
      FieldName = 'nomefilial'
      Size = 40
    end
    object Qr_InvGra01IGCODTIP: TFloatField
      DisplayLabel = 'Tipo Produto'
      FieldName = 'IGCODTIP'
    end
  end
  object Src_InvGra01: TDataSource
    DataSet = Qr_InvGra01
    Left = 767
    Top = 30
  end
  object U_InvGra01: TUpdateSQL
    Left = 825
    Top = 24
  end
end

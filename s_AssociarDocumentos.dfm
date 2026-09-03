object Frm_AssociarDocumentos: TFrm_AssociarDocumentos
  Left = 87
  Top = 88
  Width = 1371
  Height = 658
  Caption = 'Associar Documentos Fornecedor'
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
  object lbl_relacionar: TLabel
    Left = 0
    Top = 614
    Width = 1363
    Height = 13
    Align = alBottom
    Alignment = taCenter
    Caption = 'click aqui para vincular  documento x com o fornecedor x'
    OnDblClick = lbl_relacionarDblClick
  end
  object lbl_ver_documento: TLabel
    Left = 0
    Top = 369
    Width = 1363
    Height = 13
    Align = alTop
    Alignment = taCenter
    Caption = 'de um Click duplo para ver em janela'
    OnDblClick = lbl_ver_documentoDblClick
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1363
    Height = 369
    Align = alTop
    Caption = 'Documentos Sem Vinculos'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 903
      Height = 352
      Align = alClient
      DataSource = Src_imagem
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CHAVE_ROWID'
          Title.Alignment = taCenter
          Width = 211
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBSERVACOES'
          Title.Alignment = taCenter
          Width = 222
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_ORIGEM'
          Title.Alignment = taCenter
          Width = 323
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHAVE_ID_NOVA'
          Title.Alignment = taCenter
          Width = 99
          Visible = True
        end>
    end
    object GroupBox3: TGroupBox
      Left = 905
      Top = 15
      Width = 456
      Height = 352
      Align = alRight
      Caption = 'Imagem:'
      TabOrder = 1
      Visible = False
      object Image1: TImage
        Left = 2
        Top = 15
        Width = 452
        Height = 298
        Align = alTop
        AutoSize = True
        Stretch = True
      end
    end
  end
  object gb_cadastro: TGroupBox
    Left = 0
    Top = 428
    Width = 1363
    Height = 186
    Align = alClient
    Caption = 'Fornecedor'
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 1359
      Height = 169
      Align = alClient
      DataSource = src_for
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'FCODFOR'
          Title.Alignment = taCenter
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FRAZAO'
          Title.Alignment = taCenter
          Width = 411
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FDENOM'
          Title.Alignment = taCenter
          Width = 303
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FCGC'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FCIDADE'
          Title.Alignment = taCenter
          Width = 232
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FUF'
          Title.Alignment = taCenter
          Width = 31
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 382
    Width = 1363
    Height = 46
    Align = alTop
    Caption = 'Filtrar Fornecedor:'
    TabOrder = 2
    object Label2: TLabel
      Left = 8
      Top = 20
      Width = 66
      Height = 13
      Caption = 'Raz'#227'o Social:'
    end
    object Label3: TLabel
      Left = 321
      Top = 20
      Width = 43
      Height = 13
      Caption = 'Fantasia:'
    end
    object Label4: TLabel
      Left = 613
      Top = 20
      Width = 30
      Height = 13
      Caption = 'CNPJ:'
    end
    object edt_razao_social: TEdit
      Left = 79
      Top = 16
      Width = 233
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnChange = edt_razao_socialChange
    end
    object edt_fantasia: TEdit
      Left = 370
      Top = 16
      Width = 233
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnChange = edt_razao_socialChange
    end
    object edt_cnpj: TEdit
      Left = 649
      Top = 16
      Width = 128
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object bbFiltrar: TBitBtn
      Left = 779
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 3
      OnClick = bbFiltrarClick
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
    object cb_exibirimagem: TCheckBox
      Left = 1083
      Top = 16
      Width = 246
      Height = 17
      Caption = 'Exibir Nova Imagem ao Navegar'
      TabOrder = 4
      Visible = False
    end
    object cb_exibir_ao_digitar: TCheckBox
      Left = 883
      Top = 16
      Width = 134
      Height = 17
      Caption = 'Exibir ao Digitar'
      TabOrder = 5
    end
  end
  object Tb_Imagem_ado: TADOQuery
    Connection = DM1_ADO.ADOConnection1
    Parameters = <
      item
        Name = 'IDFOR'
        DataType = ftString
        Size = -1
        Value = ''
      end>
    SQL.Strings = (
      
        'Select  FI_SEQ AS SEQUENCIA, FI_ROWID,FI_SEQ,FI_OBS,FI_NOMEoRI f' +
        'rom CADFOR_IMAGEM'
      ' where  FI_ROWID=:IDFOR'
      ' order by FI_SEQ '
      '')
    Left = 208
    Top = 175
    object Tb_Imagem_adoCHAVE_ROWID: TStringField
      DisplayLabel = 'Chave RowId'
      FieldName = 'CHAVE_ROWID'
      Size = 254
    end
    object Tb_Imagem_adoOBSERVACOES: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'OBSERVACOES'
      Size = 254
    end
    object Tb_Imagem_adoNOME_ORIGEM: TStringField
      DisplayLabel = 'Nome Origem'
      FieldName = 'NOME_ORIGEM'
      Size = 254
    end
    object Tb_Imagem_adoCHAVE_ID_NOVA: TFloatField
      DisplayLabel = 'Chave Id Nova'
      FieldName = 'CHAVE_ID_NOVA'
    end
    object Tb_Imagem_adoSEQUENCIA: TFloatField
      FieldName = 'SEQUENCIA'
    end
  end
  object Src_imagem: TDataSource
    DataSet = Tb_Imagem_ado
    OnDataChange = Src_imagemDataChange
    Left = 244
    Top = 168
  end
  object src_for: TDataSource
    DataSet = tb_for
    OnDataChange = src_forDataChange
    Left = 592
    Top = 455
  end
  object tb_for: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT FRAZAO,FDENOM,FCGC,FCIDADE,FUF'
      'FROM CADFOR'
      'ORDER BY FRAZAO')
    Left = 672
    Top = 463
    object tb_forFCODFOR: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'FCODFOR'
    end
    object tb_forFRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'FRAZAO'
      Size = 100
    end
    object tb_forFDENOM: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FDENOM'
      Size = 100
    end
    object tb_forFCGC: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'FCGC'
      Size = 30
    end
    object tb_forFCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'FCIDADE'
      Size = 100
    end
    object tb_forFUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'FUF'
      Size = 2
    end
  end
end

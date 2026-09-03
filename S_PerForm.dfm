object Frm_PerForm: TFrm_PerForm
  Left = 71
  Top = 194
  Width = 635
  Height = 314
  Caption = 'Personalizar Relat'#243'rios'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object STG1: TStringGrid
    Left = 0
    Top = 106
    Width = 627
    Height = 174
    Align = alClient
    ColCount = 4
    DefaultRowHeight = 15
    FixedCols = 0
    TabOrder = 0
    ColWidths = (
      181
      168
      188
      64)
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 627
    Height = 106
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 21
      Top = 16
      Width = 163
      Height = 13
      Caption = 'Formulario a Ser Personalizado......'
    end
    object cb_form: TComboBox
      Left = 185
      Top = 9
      Width = 408
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'Produtos'
        'Clientes'
        'Pedidos de Venda')
    end
    object bbPerForm: TBitBtn
      Left = 7
      Top = 51
      Width = 161
      Height = 40
      Caption = 'Personalizar Agora'
      TabOrder = 1
      OnClick = bbPerFormClick
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
    object bbSair: TBitBtn
      Left = 461
      Top = 53
      Width = 161
      Height = 40
      Caption = '&Sair do Programa'
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
    object bbSalvar: TBitBtn
      Left = 235
      Top = 55
      Width = 161
      Height = 40
      Caption = '&Salvar'
      Enabled = False
      TabOrder = 3
      OnClick = bbSalvarClick
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
    object cb_original: TCheckBox
      Left = 20
      Top = 32
      Width = 177
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Buscar da Configura'#231#227'o Original'
      TabOrder = 4
    end
    object Edit1: TEdit
      Left = 272
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 5
      Text = 'Edit1'
    end
  end
  object Tb_Componentes: TTable
    AfterEdit = Tb_ComponentesAfterEdit
    AfterPost = Tb_ComponentesAfterPost
    AfterCancel = Tb_ComponentesAfterCancel
    DatabaseName = 'C:\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'NomeComp'
        Attributes = [faRequired]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Sequencia'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'Classe'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Tamanho'
        DataType = ftInteger
      end
      item
        Name = 'Height'
        DataType = ftInteger
      end
      item
        Name = 'Top'
        DataType = ftInteger
      end
      item
        Name = 'mLeft'
        DataType = ftInteger
      end
      item
        Name = 'Visivel'
        DataType = ftInteger
      end
      item
        Name = 'Caption'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Parent_Nome'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Align'
        DataType = ftInteger
      end
      item
        Name = 'Alignment'
        DataType = ftInteger
      end
      item
        Name = 'campo_order'
        DataType = ftInteger
      end
      item
        Name = 'campo_index'
        DataType = ftInteger
      end
      item
        Name = 'campo_tabela'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'campo_nome'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'campo_tamanho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'campo_dec'
        DataType = ftInteger
      end
      item
        Name = 'campo_desc'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'font_color'
        DataType = ftInteger
      end
      item
        Name = 'font_height'
        DataType = ftInteger
      end
      item
        Name = 'font_size'
        DataType = ftInteger
      end
      item
        Name = 'font_name'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'font_fsbold'
        DataType = ftInteger
      end
      item
        Name = 'font_fsitalic'
        DataType = ftInteger
      end
      item
        Name = 'font_ftunderline'
        DataType = ftInteger
      end
      item
        Name = 'font_strikeout'
        DataType = ftInteger
      end
      item
        Name = 'codemp'
        DataType = ftInteger
      end
      item
        Name = 'NomeForm'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'bevelinner'
        DataType = ftInteger
      end
      item
        Name = 'bevelKind'
        DataType = ftInteger
      end
      item
        Name = 'bevelOuter'
        DataType = ftInteger
      end
      item
        Name = 'bevelwidth'
        DataType = ftInteger
      end
      item
        Name = 'borderstyle'
        DataType = ftInteger
      end
      item
        Name = 'CharCase'
        DataType = ftInteger
      end
      item
        Name = 'Color'
        DataType = ftInteger
      end
      item
        Name = 'Ctl3D'
        DataType = ftInteger
      end
      item
        Name = 'Enabled'
        DataType = ftInteger
      end
      item
        Name = 'ShowHint'
        DataType = ftInteger
      end
      item
        Name = 'Hint'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <
      item
        Name = 'CADCOMP_NOMECOMP'
        Fields = 'NomeComp;Sequencia'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'CADCOMP_Parent_Nome'
        Fields = 'Parent_Nome;Campo_order;Sequencia'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CADCOMP_Classe'
        Fields = 'Classe'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CADCOMP_Alignment'
        Fields = 'Alignment'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CADCOMP_Tamanho'
        Fields = 'Tamanho'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CADCOMP_Height'
        Fields = 'Height'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CADCOMP_Top'
        Fields = 'Top'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CADCOMP_Left'
        Fields = 'mLeft'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CADCOMP_Visivel'
        Fields = 'Visivel'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CADCOMP_Caption'
        Fields = 'Caption'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CADCOMP_Sequencia'
        Fields = 'Sequencia'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CADCOMP_Align'
        Fields = 'Align'
        Options = [ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'TBCOMP'
    Left = 296
    Top = 72
    object Tb_ComponentesNomeComp: TStringField
      FieldName = 'NomeComp'
      Size = 50
    end
    object Tb_ComponentesSequencia: TIntegerField
      FieldName = 'Sequencia'
    end
    object Tb_ComponentesClasse: TStringField
      FieldName = 'Classe'
      Size = 50
    end
    object Tb_ComponentesTamanho: TIntegerField
      FieldName = 'Tamanho'
    end
    object Tb_ComponentesHeight: TIntegerField
      FieldName = 'Height'
    end
    object Tb_ComponentesTop: TIntegerField
      FieldName = 'Top'
    end
    object Tb_ComponentesVisivel: TIntegerField
      FieldName = 'Visivel'
    end
    object Tb_ComponentesCaption: TStringField
      FieldName = 'Caption'
      Size = 200
    end
    object Tb_ComponentesParent_Nome: TStringField
      FieldName = 'Parent_Nome'
      Size = 100
    end
    object Tb_Componentescampo_tabela: TStringField
      FieldName = 'campo_tabela'
      Size = 50
    end
    object Tb_Componentescampo_nome: TStringField
      FieldName = 'campo_nome'
      Size = 50
    end
    object Tb_Componentescampo_tamanho: TStringField
      FieldName = 'campo_tamanho'
      Size = 10
    end
    object Tb_Componentescampo_dec: TIntegerField
      FieldName = 'campo_dec'
    end
    object Tb_Componentescampo_desc: TStringField
      FieldName = 'campo_desc'
      Size = 200
    end
    object Tb_Componentesfont_color: TIntegerField
      FieldName = 'font_color'
    end
    object Tb_Componentesfont_height: TIntegerField
      FieldName = 'font_height'
    end
    object Tb_Componentesfont_size: TIntegerField
      FieldName = 'font_size'
    end
    object Tb_Componentesfont_name: TStringField
      FieldName = 'font_name'
      Size = 50
    end
    object Tb_Componentesfont_fsbold: TIntegerField
      FieldName = 'font_fsbold'
    end
    object Tb_Componentesfont_fsitalic: TIntegerField
      FieldName = 'font_fsitalic'
    end
    object Tb_Componentesfont_ftunderline: TIntegerField
      FieldName = 'font_ftunderline'
    end
    object Tb_Componentesfont_strikeout: TIntegerField
      FieldName = 'font_strikeout'
    end
    object Tb_Componentescampo_order: TIntegerField
      DisplayLabel = 'Ordem Edi'#231#227'o'
      FieldName = 'campo_order'
    end
    object Tb_Componentescampo_index: TIntegerField
      DisplayLabel = 'Indice Apresenta'#231#227'o'
      FieldName = 'campo_index'
    end
    object Tb_ComponentesmLeft: TIntegerField
      FieldName = 'mLeft'
    end
    object Tb_Componentescodemp: TIntegerField
      FieldName = 'codemp'
    end
    object Tb_ComponentesNomeForm: TStringField
      FieldName = 'NomeForm'
      Size = 50
    end
    object Tb_Componentesbevelinner: TIntegerField
      FieldName = 'bevelinner'
    end
    object Tb_ComponentesbevelKind: TIntegerField
      FieldName = 'bevelKind'
    end
    object Tb_Componentesbevelwidth: TIntegerField
      FieldName = 'bevelwidth'
    end
    object Tb_ComponentesbevelOuter: TIntegerField
      FieldName = 'bevelOuter'
    end
    object Tb_Componentesborderstyle: TIntegerField
      FieldName = 'borderstyle'
    end
    object Tb_ComponentesCharCase: TIntegerField
      FieldName = 'CharCase'
    end
    object Tb_ComponentesColor: TIntegerField
      FieldName = 'Color'
    end
    object Tb_ComponentesCtl3D: TIntegerField
      FieldName = 'Ctl3D'
    end
    object Tb_ComponentesEnabled: TIntegerField
      FieldName = 'Enabled'
    end
    object Tb_ComponentesShowHint: TIntegerField
      FieldName = 'ShowHint'
    end
    object Tb_ComponentesAlign: TIntegerField
      FieldName = 'Align'
    end
    object Tb_ComponentesAlignment: TIntegerField
      FieldName = 'Alignment'
    end
    object Tb_ComponentesHint: TStringField
      FieldName = 'Hint'
      Size = 200
    end
  end
  object Src_Componentes: TDataSource
    DataSet = Tb_Componentes
    Left = 360
    Top = 88
  end
  object Tb_Padrao: TTable
    AfterEdit = Tb_ComponentesAfterEdit
    AfterPost = Tb_ComponentesAfterPost
    AfterCancel = Tb_ComponentesAfterCancel
    DatabaseName = 'C:\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'NomeComp'
        Attributes = [faRequired]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Sequencia'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'Classe'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Tamanho'
        DataType = ftInteger
      end
      item
        Name = 'Height'
        DataType = ftInteger
      end
      item
        Name = 'Top'
        DataType = ftInteger
      end
      item
        Name = 'mLeft'
        DataType = ftInteger
      end
      item
        Name = 'Visivel'
        DataType = ftInteger
      end
      item
        Name = 'Caption'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Parent_Nome'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Align'
        DataType = ftInteger
      end
      item
        Name = 'Alignment'
        DataType = ftInteger
      end
      item
        Name = 'campo_order'
        DataType = ftInteger
      end
      item
        Name = 'campo_index'
        DataType = ftInteger
      end
      item
        Name = 'campo_tabela'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'campo_nome'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'campo_tamanho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'campo_dec'
        DataType = ftInteger
      end
      item
        Name = 'campo_desc'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'font_color'
        DataType = ftInteger
      end
      item
        Name = 'font_height'
        DataType = ftInteger
      end
      item
        Name = 'font_size'
        DataType = ftInteger
      end
      item
        Name = 'font_name'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'font_fsbold'
        DataType = ftInteger
      end
      item
        Name = 'font_fsitalic'
        DataType = ftInteger
      end
      item
        Name = 'font_ftunderline'
        DataType = ftInteger
      end
      item
        Name = 'font_strikeout'
        DataType = ftInteger
      end
      item
        Name = 'codemp'
        DataType = ftInteger
      end
      item
        Name = 'NomeForm'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'bevelinner'
        DataType = ftInteger
      end
      item
        Name = 'bevelKind'
        DataType = ftInteger
      end
      item
        Name = 'bevelOuter'
        DataType = ftInteger
      end
      item
        Name = 'bevelwidth'
        DataType = ftInteger
      end
      item
        Name = 'borderstyle'
        DataType = ftInteger
      end
      item
        Name = 'CharCase'
        DataType = ftInteger
      end
      item
        Name = 'Color'
        DataType = ftInteger
      end
      item
        Name = 'Ctl3D'
        DataType = ftInteger
      end
      item
        Name = 'Enabled'
        DataType = ftInteger
      end
      item
        Name = 'ShowHint'
        DataType = ftInteger
      end
      item
        Name = 'Hint'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <
      item
        Name = 'CADCOMP_NOMECOMP'
        Fields = 'NomeComp;Sequencia'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'CADCOMP_Parent_Nome'
        Fields = 'Parent_Nome;Sequencia'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CADCOMP_Classe'
        Fields = 'Classe'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CADCOMP_Alignment'
        Fields = 'Alignment'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CADCOMP_Tamanho'
        Fields = 'Tamanho'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CADCOMP_Height'
        Fields = 'Height'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CADCOMP_Top'
        Fields = 'Top'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CADCOMP_Left'
        Fields = 'mLeft'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CADCOMP_Visivel'
        Fields = 'Visivel'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CADCOMP_Caption'
        Fields = 'Caption'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CADCOMP_Sequencia'
        Fields = 'Sequencia'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CADCOMP_Align'
        Fields = 'Align'
        Options = [ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'TBCOMP'
    Left = 416
    Top = 64
    object Tb_PadraoNomeComp: TStringField
      FieldName = 'NomeComp'
      Required = True
      Size = 50
    end
    object Tb_PadraoSequencia: TIntegerField
      FieldName = 'Sequencia'
      Required = True
    end
    object Tb_PadraoClasse: TStringField
      FieldName = 'Classe'
      Size = 50
    end
    object Tb_PadraoTamanho: TIntegerField
      FieldName = 'Tamanho'
    end
    object Tb_PadraoHeight: TIntegerField
      FieldName = 'Height'
    end
    object Tb_PadraoTop: TIntegerField
      FieldName = 'Top'
    end
    object Tb_PadraomLeft: TIntegerField
      FieldName = 'mLeft'
    end
    object Tb_PadraoVisivel: TIntegerField
      FieldName = 'Visivel'
    end
    object Tb_PadraoCaption: TStringField
      FieldName = 'Caption'
      Size = 200
    end
    object Tb_PadraoParent_Nome: TStringField
      FieldName = 'Parent_Nome'
      Size = 100
    end
    object Tb_PadraoAlign: TIntegerField
      FieldName = 'Align'
    end
    object Tb_PadraoAlignment: TIntegerField
      FieldName = 'Alignment'
    end
    object Tb_Padraocampo_order: TIntegerField
      FieldName = 'campo_order'
    end
    object Tb_Padraocampo_index: TIntegerField
      FieldName = 'campo_index'
    end
    object Tb_Padraocampo_tabela: TStringField
      FieldName = 'campo_tabela'
      Size = 50
    end
    object Tb_Padraocampo_nome: TStringField
      FieldName = 'campo_nome'
      Size = 50
    end
    object Tb_Padraocampo_tamanho: TStringField
      FieldName = 'campo_tamanho'
      Size = 10
    end
    object Tb_Padraocampo_dec: TIntegerField
      FieldName = 'campo_dec'
    end
    object Tb_Padraocampo_desc: TStringField
      FieldName = 'campo_desc'
      Size = 200
    end
    object Tb_Padraofont_color: TIntegerField
      FieldName = 'font_color'
    end
    object Tb_Padraofont_height: TIntegerField
      FieldName = 'font_height'
    end
    object Tb_Padraofont_size: TIntegerField
      FieldName = 'font_size'
    end
    object Tb_Padraofont_name: TStringField
      FieldName = 'font_name'
      Size = 50
    end
    object Tb_Padraofont_fsbold: TIntegerField
      FieldName = 'font_fsbold'
    end
    object Tb_Padraofont_fsitalic: TIntegerField
      FieldName = 'font_fsitalic'
    end
    object Tb_Padraofont_ftunderline: TIntegerField
      FieldName = 'font_ftunderline'
    end
    object Tb_Padraofont_strikeout: TIntegerField
      FieldName = 'font_strikeout'
    end
    object Tb_Padraocodemp: TIntegerField
      FieldName = 'codemp'
    end
    object Tb_PadraoNomeForm: TStringField
      FieldName = 'NomeForm'
      Size = 50
    end
    object Tb_Padraobevelinner: TIntegerField
      FieldName = 'bevelinner'
    end
    object Tb_PadraobevelKind: TIntegerField
      FieldName = 'bevelKind'
    end
    object Tb_PadraobevelOuter: TIntegerField
      FieldName = 'bevelOuter'
    end
    object Tb_Padraobevelwidth: TIntegerField
      FieldName = 'bevelwidth'
    end
    object Tb_Padraoborderstyle: TIntegerField
      FieldName = 'borderstyle'
    end
    object Tb_PadraoCharCase: TIntegerField
      FieldName = 'CharCase'
    end
    object Tb_PadraoColor: TIntegerField
      FieldName = 'Color'
    end
    object Tb_PadraoCtl3D: TIntegerField
      FieldName = 'Ctl3D'
    end
    object Tb_PadraoEnabled: TIntegerField
      FieldName = 'Enabled'
    end
    object Tb_PadraoShowHint: TIntegerField
      FieldName = 'ShowHint'
    end
    object Tb_PadraoHint: TStringField
      FieldName = 'Hint'
      Size = 200
    end
  end
end

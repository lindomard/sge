object Frm_AjustaComp: TFrm_AjustaComp
  Left = 78
  Top = -3
  Width = 640
  Height = 488
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Ajustar o Componente'
  Color = 15269887
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlue
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 200
    Top = 48
    Width = 32
    Height = 13
    Caption = 'Label5'
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 329
    Width = 632
    Height = 125
    Align = alClient
    Caption = 'Componentes do Formulario'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 628
      Height = 83
      Align = alClient
      DataSource = Frm_PerForm.Src_Componentes
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      OnEnter = DBGrid1Enter
      Columns = <
        item
          Expanded = False
          FieldName = 'NomeComp'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sequencia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Classe'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tamanho'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Height'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Top'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Visivel'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Caption'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Parent_Nome'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'campo_tabela'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'campo_nome'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'campo_tamanho'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'campo_dec'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'campo_desc'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'font_color'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'font_height'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'font_size'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'font_name'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'font_fsbold'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'font_fsitalic'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'font_ftunderline'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'font_strikeout'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'campo_order'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'campo_index'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'mLeft'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'codemp'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeForm'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bevelinner'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bevelKind'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bevelwidth'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bevelOuter'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'borderstyle'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CharCase'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Color'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ctl3D'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Enabled'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ShowHint'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Align'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Alignment'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Hint'
          Width = 64
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 2
      Top = 98
      Width = 628
      Height = 25
      DataSource = Frm_PerForm.Src_Componentes
      Align = alBottom
      TabOrder = 1
      OnClick = DBNavigator1Click
    end
  end
  object rg_pesquisar: TRadioGroup
    Left = 0
    Top = 242
    Width = 632
    Height = 57
    Align = alTop
    Caption = 'Pesquisar por:'
    Columns = 4
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'Nome do Componente'
      'Classe'
      'Tamanho'
      'Height'
      'Top'
      'Left'
      'Visivel'
      'Caption'
      'Sequencia'
      'Parent_Nome'
      'Align'
      'Alignment')
    ParentCtl3D = False
    TabOrder = 1
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 299
    Width = 632
    Height = 30
    Align = alTop
    Caption = 'Descricao:'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    object DESCRICAO: TEdit
      Left = 0
      Top = 15
      Width = 633
      Height = 19
      TabOrder = 0
      OnChange = DESCRICAOChange
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 82
    Width = 632
    Height = 160
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Itens Prinicipais'
      object Label2: TLabel
        Left = 7
        Top = 6
        Width = 81
        Height = 13
        Caption = 'Texto..................'
      end
      object Label1: TLabel
        Left = 7
        Top = 27
        Width = 78
        Height = 13
        Caption = 'Tamanho...........'
      end
      object sbTamMais: TSpeedButton
        Left = 138
        Top = 21
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
        OnClick = sbTamMaisClick
      end
      object sbTamMenos: TSpeedButton
        Left = 161
        Top = 21
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
          333333773337777333333078F8F87033333337F3333337F33333778F8F8F8773
          333337333333373F333307F8F8F8F70333337F33FFFFF37F3333078999998703
          33337F377777337F333307F8F8F8F703333373F3333333733333778F8F8F8773
          333337F3333337F333333078F8F870333333373FF333F7333333330777770333
          333333773FF77333333333370007333333333333777333333333}
        NumGlyphs = 2
        OnClick = sbTamMenosClick
      end
      object Label3: TLabel
        Left = 7
        Top = 49
        Width = 78
        Height = 13
        Caption = 'Altura.................'
      end
      object SBHeigthMais: TSpeedButton
        Left = 138
        Top = 42
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
        OnClick = SBHeigthMaisClick
      end
      object SBHeigthMenos: TSpeedButton
        Left = 161
        Top = 42
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
          333333773337777333333078F8F87033333337F3333337F33333778F8F8F8773
          333337333333373F333307F8F8F8F70333337F33FFFFF37F3333078999998703
          33337F377777337F333307F8F8F8F703333373F3333333733333778F8F8F8773
          333337F3333337F333333078F8F870333333373FF333F7333333330777770333
          333333773FF77333333333370007333333333333777333333333}
        NumGlyphs = 2
        OnClick = SBHeigthMenosClick
      end
      object Label4: TLabel
        Left = 7
        Top = 72
        Width = 78
        Height = 13
        Caption = 'LInha Inicial.......'
      end
      object SBTopMais: TSpeedButton
        Left = 138
        Top = 64
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
        OnClick = SBTopMaisClick
      end
      object SBTopMenos: TSpeedButton
        Left = 161
        Top = 64
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
          333333773337777333333078F8F87033333337F3333337F33333778F8F8F8773
          333337333333373F333307F8F8F8F70333337F33FFFFF37F3333078999998703
          33337F377777337F333307F8F8F8F703333373F3333333733333778F8F8F8773
          333337F3333337F333333078F8F870333333373FF333F7333333330777770333
          333333773FF77333333333370007333333333333777333333333}
        NumGlyphs = 2
        OnClick = SBTopMenosClick
      end
      object Label8: TLabel
        Left = 7
        Top = 92
        Width = 78
        Height = 13
        Caption = 'Coluna Inicial.....'
      end
      object SBLeftMais: TSpeedButton
        Left = 138
        Top = 86
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
        OnClick = SBLeftMaisClick
      end
      object SBLeftMenos: TSpeedButton
        Left = 161
        Top = 86
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
          333333773337777333333078F8F87033333337F3333337F33333778F8F8F8773
          333337333333373F333307F8F8F8F70333337F33FFFFF37F3333078999998703
          33337F377777337F333307F8F8F8F703333373F3333333733333778F8F8F8773
          333337F3333337F333333078F8F870333333373FF333F7333333330777770333
          333333773FF77333333333370007333333333333777333333333}
        NumGlyphs = 2
        OnClick = SBLeftMenosClick
      end
      object lbl_ordedit: TLabel
        Left = 456
        Top = 25
        Width = 104
        Height = 13
        Caption = 'Ordem a ser editado...'
      end
      object lbl_index: TLabel
        Left = 426
        Top = 48
        Width = 132
        Height = 13
        Caption = 'Ordem a ser Apresentado....'
      end
      object lbl_parent: TLabel
        Left = 245
        Top = 68
        Width = 103
        Height = 13
        Caption = 'Parent/Em cima.........'
      end
      object DBE_CAPTION: TDBEdit
        Left = 87
        Top = 1
        Width = 527
        Height = 21
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        Ctl3D = True
        DataField = 'Caption'
        DataSource = Frm_PerForm.Src_Componentes
        ParentCtl3D = False
        TabOrder = 0
        OnChange = DBE_CAPTIONChange
        OnExit = DBE_TamExit
      end
      object DBE_Tam: TDBEdit
        Left = 87
        Top = 23
        Width = 53
        Height = 21
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        Ctl3D = True
        DataField = 'Tamanho'
        DataSource = Frm_PerForm.Src_Componentes
        ParentCtl3D = False
        TabOrder = 1
        OnExit = DBE_TamExit
      end
      object DBE_Height: TDBEdit
        Left = 87
        Top = 45
        Width = 53
        Height = 21
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        Ctl3D = True
        DataField = 'Height'
        DataSource = Frm_PerForm.Src_Componentes
        ParentCtl3D = False
        TabOrder = 2
        OnExit = DBE_TamExit
      end
      object DBE_Top: TDBEdit
        Left = 87
        Top = 66
        Width = 53
        Height = 21
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        Ctl3D = True
        DataField = 'Top'
        DataSource = Frm_PerForm.Src_Componentes
        ParentCtl3D = False
        TabOrder = 3
        OnExit = DBE_TamExit
      end
      object DBE_Left: TDBEdit
        Left = 87
        Top = 88
        Width = 53
        Height = 21
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        Ctl3D = True
        DataField = 'mLeft'
        DataSource = Frm_PerForm.Src_Componentes
        ParentCtl3D = False
        TabOrder = 4
        OnExit = DBE_TamExit
      end
      object DBCB_Visivel: TDBCheckBox
        Left = 243
        Top = 24
        Width = 96
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Manter Visivel'
        DataField = 'Visivel'
        DataSource = Frm_PerForm.Src_Componentes
        TabOrder = 5
        ValueChecked = '0'
        ValueUnchecked = '1'
        OnClick = DBCB_VisivelClick
      end
      object DBE_order: TDBEdit
        Left = 561
        Top = 23
        Width = 53
        Height = 21
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        Ctl3D = True
        DataField = 'campo_order'
        DataSource = Frm_PerForm.Src_Componentes
        ParentCtl3D = False
        TabOrder = 7
        OnExit = DBE_TamExit
      end
      object DBE_Index: TDBEdit
        Left = 562
        Top = 45
        Width = 52
        Height = 21
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        Ctl3D = True
        DataField = 'campo_index'
        DataSource = Frm_PerForm.Src_Componentes
        ParentCtl3D = False
        TabOrder = 8
        OnExit = DBE_TamExit
      end
      object DBCb_parent: TDBComboBox
        Left = 337
        Top = 66
        Width = 277
        Height = 21
        BevelKind = bkSoft
        DataField = 'Parent_Nome'
        DataSource = Frm_PerForm.Src_Componentes
        ItemHeight = 13
        TabOrder = 9
        OnExit = DBCb_parentExit
      end
      object DBCB_Enabled: TDBCheckBox
        Left = 243
        Top = 41
        Width = 97
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Enabled'
        DataField = 'Enabled'
        DataSource = Frm_PerForm.Src_Componentes
        TabOrder = 6
        ValueChecked = '0'
        ValueUnchecked = '1'
        OnClick = DBCB_VisivelClick
      end
    end
    object tsBordas: TTabSheet
      Caption = 'Bordas'
      ImageIndex = 1
      object Label14: TLabel
        Left = 104
        Top = 110
        Width = 28
        Height = 13
        Caption = 'Hint...'
      end
      object RG_BEVELINNER: TDBRadioGroup
        Left = 0
        Top = 1
        Width = 103
        Height = 104
        Caption = 'BevelInner'
        DataField = 'bevelinner'
        DataSource = Frm_PerForm.Src_Componentes
        Items.Strings = (
          'bvLowered'
          'bvNone'
          'bvRaised'
          'bvSpace')
        TabOrder = 0
        Values.Strings = (
          '0'
          '1'
          '2'
          '3')
        OnExit = RG_BEVELINNERExit
      end
      object RG_BEVELKIND: TDBRadioGroup
        Left = 104
        Top = 1
        Width = 103
        Height = 104
        Caption = 'BevelKind'
        DataField = 'bevelKind'
        DataSource = Frm_PerForm.Src_Componentes
        Items.Strings = (
          'bkFlat'
          'bkNone'
          'bkSoft'
          'bkTile')
        TabOrder = 1
        Values.Strings = (
          '0'
          '1'
          '2'
          '3')
        OnExit = RG_BEVELINNERExit
      end
      object RG_BEVELOUTER: TDBRadioGroup
        Left = 207
        Top = 1
        Width = 103
        Height = 104
        Caption = 'BevelOuter'
        DataField = 'bevelOuter'
        DataSource = Frm_PerForm.Src_Componentes
        Items.Strings = (
          'bvLowered'
          'bvNone'
          'bvRaised'
          'bvSpace')
        TabOrder = 2
        Values.Strings = (
          '0'
          '1'
          '2'
          '3')
        OnExit = RG_BEVELINNERExit
      end
      object RG_BORDERSTYLE: TDBRadioGroup
        Left = 312
        Top = 1
        Width = 103
        Height = 104
        Caption = 'BorderStyle'
        DataField = 'borderstyle'
        DataSource = Frm_PerForm.Src_Componentes
        Items.Strings = (
          'bsNone'
          'bsSingle')
        TabOrder = 3
        Values.Strings = (
          '0'
          '1'
          '2'
          '3')
        OnExit = RG_BEVELINNERExit
      end
      object DBCB_Ctl3D: TDBCheckBox
        Left = 419
        Top = 8
        Width = 96
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Ctl3D'
        DataField = 'Ctl3D'
        DataSource = Frm_PerForm.Src_Componentes
        TabOrder = 4
        ValueChecked = '0'
        ValueUnchecked = '1'
        OnExit = RG_BEVELINNERExit
      end
      object DBCB_ShowHint: TDBCheckBox
        Left = 1
        Top = 109
        Width = 96
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Show Hint'
        DataField = 'ShowHint'
        DataSource = Frm_PerForm.Src_Componentes
        TabOrder = 5
        ValueChecked = '0'
        ValueUnchecked = '1'
        OnClick = RG_BEVELINNERClick
      end
      object DBEdit6: TDBEdit
        Left = 137
        Top = 107
        Width = 488
        Height = 21
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        Ctl3D = True
        DataField = 'Hint'
        DataSource = Frm_PerForm.Src_Componentes
        ParentCtl3D = False
        TabOrder = 6
        OnClick = DBE_CAPTIONChange
        OnExit = DBE_TamExit
      end
    end
    object tsOutros: TTabSheet
      Caption = 'Outros'
      ImageIndex = 1
      object lbl_color: TLabel
        Left = 7
        Top = 5
        Width = 97
        Height = 13
        Caption = 'Cor do Componente:'
      end
      object SB_Color: TSpeedButton
        Left = 225
        Top = 1
        Width = 23
        Height = 22
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
        OnClick = SB_ColorClick
      end
      object DBE_Color: TDBEdit
        Left = 105
        Top = 3
        Width = 122
        Height = 21
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        Ctl3D = True
        DataField = 'Color'
        DataSource = Frm_PerForm.Src_Componentes
        ParentCtl3D = False
        TabOrder = 0
        OnExit = DBE_TamExit
      end
      object GB_Fonte: TGroupBox
        Left = 8
        Top = 26
        Width = 329
        Height = 104
        Caption = 'Sobre a Fonte'
        TabOrder = 1
        object Label10: TLabel
          Left = 7
          Top = 41
          Width = 73
          Height = 13
          Caption = 'Cor...................'
        end
        object SBFONTE: TSpeedButton
          Left = 183
          Top = 37
          Width = 23
          Height = 22
          Hint = 'Defini'#231#227'o das Fontes'
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
          ParentShowHint = False
          ShowHint = True
          OnClick = SBFONTEClick
        end
        object Label11: TLabel
          Left = 7
          Top = 60
          Width = 51
          Height = 13
          Caption = 'Tamanho..'
        end
        object Label12: TLabel
          Left = 8
          Top = 17
          Width = 79
          Height = 13
          Caption = 'Nome.................'
        end
        object Label13: TLabel
          Left = 7
          Top = 81
          Width = 59
          Height = 13
          Caption = 'Size.............'
        end
        object DBEdit2: TDBEdit
          Left = 59
          Top = 36
          Width = 97
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkSoft
          Ctl3D = True
          DataField = 'font_color'
          DataSource = Frm_PerForm.Src_Componentes
          ParentCtl3D = False
          TabOrder = 1
          OnExit = DBE_TamExit
        end
        object DBEdit3: TDBEdit
          Left = 59
          Top = 57
          Width = 97
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkSoft
          Ctl3D = True
          DataField = 'font_height'
          DataSource = Frm_PerForm.Src_Componentes
          ParentCtl3D = False
          TabOrder = 2
          OnExit = DBE_TamExit
        end
        object DBEdit4: TDBEdit
          Left = 59
          Top = 15
          Width = 262
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkSoft
          Ctl3D = True
          DataField = 'font_name'
          DataSource = Frm_PerForm.Src_Componentes
          ParentCtl3D = False
          TabOrder = 0
          OnExit = DBE_TamExit
        end
        object DBEdit5: TDBEdit
          Left = 59
          Top = 78
          Width = 97
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkSoft
          Ctl3D = True
          DataField = 'font_size'
          DataSource = Frm_PerForm.Src_Componentes
          ParentCtl3D = False
          TabOrder = 3
          OnExit = DBE_TamExit
        end
        object DBCB_FSBOLD: TDBCheckBox
          Left = 222
          Top = 36
          Width = 97
          Height = 17
          Alignment = taLeftJustify
          Caption = 'fsBold'
          DataField = 'font_fsbold'
          DataSource = Frm_PerForm.Src_Componentes
          TabOrder = 4
          ValueChecked = '0'
          ValueUnchecked = '1'
          OnClick = DBCB_VisivelClick
        end
        object DBCB_ITALIC: TDBCheckBox
          Left = 222
          Top = 52
          Width = 97
          Height = 17
          Alignment = taLeftJustify
          Caption = 'fsItalic'
          DataField = 'font_fsitalic'
          DataSource = Frm_PerForm.Src_Componentes
          TabOrder = 5
          ValueChecked = '0'
          ValueUnchecked = '1'
          OnClick = DBCB_VisivelClick
        end
        object DBCB_FSUNDERLINE: TDBCheckBox
          Left = 222
          Top = 68
          Width = 97
          Height = 17
          Alignment = taLeftJustify
          Caption = 'fsUnderline'
          DataField = 'font_ftunderline'
          DataSource = Frm_PerForm.Src_Componentes
          TabOrder = 6
          ValueChecked = '0'
          ValueUnchecked = '1'
          OnClick = DBCB_VisivelClick
        end
        object DBCB_FSSTRIKEOUT: TDBCheckBox
          Left = 222
          Top = 85
          Width = 97
          Height = 17
          Alignment = taLeftJustify
          Caption = 'fsStrikeOut'
          DataField = 'font_strikeout'
          DataSource = Frm_PerForm.Src_Componentes
          TabOrder = 7
          ValueChecked = '0'
          ValueUnchecked = '1'
          OnClick = DBCB_VisivelClick
        end
      end
      object RG_ALIGNMENT: TDBRadioGroup
        Left = 339
        Top = 26
        Width = 103
        Height = 104
        Caption = 'Texto'
        DataField = 'Alignment'
        DataSource = Frm_PerForm.Src_Componentes
        Items.Strings = (
          'Centralizado'
          'A Esquerda'
          'A Direita')
        TabOrder = 2
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object RG_ALIGN: TDBRadioGroup
        Left = 444
        Top = 26
        Width = 180
        Height = 103
        Caption = 'Texto'
        DataField = 'Align'
        DataSource = Frm_PerForm.Src_Componentes
        Items.Strings = (
          'alBottom(Preencher no Final)'
          'AlClient(Preencher Tudo)'
          'alCustom'
          'alLeft (lado Esquerdo)'
          'alNone (posi'#231'ao padr'#227'o)'
          'alRight(lado Direito)'
          'alTop (prencher no inicio)')
        TabOrder = 3
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6')
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 0
    Width = 632
    Height = 82
    Align = alTop
    TabOrder = 4
    object DBText1: TDBText
      Left = 187
      Top = 9
      Width = 437
      Height = 17
      Alignment = taCenter
      DataField = 'NomeComp'
      DataSource = Frm_PerForm.Src_Componentes
    end
    object DBText2: TDBText
      Left = 191
      Top = 25
      Width = 437
      Height = 17
      Alignment = taCenter
      DataField = 'Caption'
      DataSource = Frm_PerForm.Src_Componentes
    end
    object bbCancelar: TBitBtn
      Left = 271
      Top = 39
      Width = 118
      Height = 38
      Caption = '&Cancelar '
      TabOrder = 0
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
    object bbGravar: TBitBtn
      Left = 393
      Top = 39
      Width = 118
      Height = 38
      Caption = '&Gravar'
      TabOrder = 1
      OnClick = bbGravarClick
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
    object bbSair: TBitBtn
      Left = 511
      Top = 39
      Width = 118
      Height = 38
      Caption = '&Sair'
      TabOrder = 2
      OnClick = bbGravarClick
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
    object RG_APRESENT: TRadioGroup
      Left = 2
      Top = 6
      Width = 185
      Height = 67
      Caption = 'Apresentar Componentes:'
      ItemIndex = 0
      Items.Strings = (
        '&Todos'
        '&Visivel'
        '&N'#227'o Vis'#237'vel(Somente os Finais)')
      TabOrder = 3
      OnEnter = RG_APRESENTEnter
      OnExit = RG_APRESENTExit
    end
  end
  object Src_Componentes: TDataSource
    DataSet = Frm_PerForm.Tb_Componentes
    OnDataChange = Src_ComponentesDataChange
    Left = 208
    Top = 56
  end
  object ColorDialog1: TColorDialog
    Left = 232
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 384
    Top = 16
  end
end

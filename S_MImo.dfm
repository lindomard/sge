inherited Frm_MImo: TFrm_MImo
  Left = 155
  Top = 146
  Height = 284
  Caption = 'Manuten'#231#227'o no Cadastro de Manuten'#231#245'es de Imobilizados'
  FormStyle = fsNormal
  KeyPreview = True
  OldCreateOrder = True
  Visible = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 35
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
  end
  inherited PC1: TPageControl
    Top = 64
    Height = 182
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 80
        Top = 16
        Width = 44
        Height = 13
        Caption = 'C'#243'digo:'
      end
      object Label2: TLabel
        Left = 60
        Top = 37
        Width = 62
        Height = 13
        Caption = 'Descri'#231#227'o:'
      end
      object Label3: TLabel
        Left = 39
        Top = 59
        Width = 82
        Height = 13
        Caption = 'Periodicidade:'
      end
      object Label4: TLabel
        Left = 36
        Top = 79
        Width = 86
        Height = 13
        Caption = 'C'#243'digo Moeda:'
      end
      object Label5: TLabel
        Left = 16
        Top = 102
        Width = 102
        Height = 13
        Caption = 'Valor/Qtd.Moeda:'
      end
      object Label6: TLabel
        Left = 198
        Top = 58
        Width = 45
        Height = 13
        Caption = 'M'#234's(es)'
      end
      object DBEdit1: TDBEdit
        Left = 128
        Top = 13
        Width = 91
        Height = 19
        Ctl3D = False
        DataField = 'MCODMAN'
        DataSource = DM2.Src_MImo
        ParentCtl3D = False
        TabOrder = 0
        OnExit = DBEdit1Exit
      end
      object DBEdit2: TDBEdit
        Left = 128
        Top = 34
        Width = 251
        Height = 19
        Ctl3D = False
        DataField = 'MNOME'
        DataSource = DM2.Src_MImo
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 128
        Top = 55
        Width = 60
        Height = 19
        Ctl3D = False
        DataField = 'MPERIOD'
        DataSource = DM2.Src_MImo
        ParentCtl3D = False
        TabOrder = 2
        OnExit = DBEdit3Exit
      end
      object DBEdit4: TDBEdit
        Left = 128
        Top = 76
        Width = 60
        Height = 19
        Ctl3D = False
        DataField = 'MCODMOE'
        DataSource = DM2.Src_MImo
        ParentCtl3D = False
        TabOrder = 3
        OnExit = DBEdit4Exit
        OnKeyPress = DBEdit4KeyPress
      end
      object DBEdit5: TDBEdit
        Left = 128
        Top = 97
        Width = 90
        Height = 19
        Ctl3D = False
        DataField = 'MVALOR'
        DataSource = DM2.Src_MImo
        ParentCtl3D = False
        TabOrder = 4
        OnKeyPress = DBEdit5KeyPress
      end
      object DBEdit6: TDBEdit
        Left = 198
        Top = 76
        Width = 182
        Height = 19
        Ctl3D = False
        DataField = 'nomemoe'
        DataSource = DM2.Src_MImo
        Enabled = False
        ParentCtl3D = False
        TabOrder = 5
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Height = 154
        DataSource = DM2.Src_MImo
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'MCODMAN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MNOME'
            Width = 169
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MPERIOD'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MCODMOE'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MVALOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomemoe'
            Width = 96
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 0
    Height = 35
    Align = alTop
    Caption = ''
    inherited INCLUIR: TBitBtn
      Left = 2
      Top = 6
      Width = 75
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited ALTERAR: TBitBtn
      Left = 76
      Top = 6
      Width = 75
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited EXCLUIR: TBitBtn
      Left = 150
      Top = 6
      Width = 75
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited GRAVAR: TBitBtn
      Left = 224
      Top = 6
      Width = 75
      Height = 26
      Cursor = crHandPoint
      OnClick = GRAVARClick
      Layout = blGlyphLeft
    end
    inherited CANCELAR: TBitBtn
      Left = 298
      Top = 6
      Width = 75
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    object DBNavigator2: TDBNavigator
      Left = 372
      Top = 6
      Width = 108
      Height = 26
      Cursor = crHandPoint
      DataSource = DM2.Src_MImo
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 5
    end
    object btnSair: TBitBtn
      Left = 480
      Top = 7
      Width = 53
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 6
      OnClick = btnSairClick
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
  end
  inherited GroupBox2: TGroupBox
    Top = 260
    Align = alNone
    Visible = False
    inherited DBNavigator1: TDBNavigator
      Left = -9
      Top = 15
      Width = 264
      DataSource = DM2.Src_MImo
      Visible = False
    end
    inherited SAIR: TBitBtn
      Top = 15
      Visible = False
    end
  end
end

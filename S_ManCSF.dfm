inherited Frm_ManCSF: TFrm_ManCSF
  Left = 237
  Top = 163
  Width = 602
  Height = 377
  Caption = 'Manuten'#231#227'o no Arquivo de Dados do Cliente do Cupom Fiscal'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 37
    Width = 594
    Height = 34
    inherited lbl_emp: TLabel
      Left = 557
      Width = 36
      Height = 32
    end
    inherited Pesquisapor: TLabel
      Top = 11
      Width = 67
    end
    inherited BBnAtu: TBitBtn
      Top = 6
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Top = 8
    end
    inherited Edit1: TMaskEdit
      Top = 8
    end
  end
  inherited PC1: TPageControl
    Top = 71
    Width = 594
    Height = 271
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 22
        Top = 16
        Width = 85
        Height = 13
        Caption = 'Chave do Pedido:'
        FocusControl = DBEdit1
      end
      object Label3: TLabel
        Left = 37
        Top = 36
        Width = 69
        Height = 13
        Caption = 'Razao Social.:'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 36
        Top = 58
        Width = 69
        Height = 13
        Caption = 'Denomina'#231#227'o:'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 54
        Top = 82
        Width = 49
        Height = 13
        Caption = 'Endere'#231'o:'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 71
        Top = 108
        Width = 30
        Height = 13
        Caption = 'Bairro:'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 66
        Top = 130
        Width = 36
        Height = 13
        Caption = 'Cidade:'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 74
        Top = 156
        Width = 27
        Height = 13
        Caption = 'CEP.:'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 277
        Top = 152
        Width = 45
        Height = 13
        Caption = 'Telefone:'
        FocusControl = DBEdit9
      end
      object Label2: TLabel
        Left = 411
        Top = 130
        Width = 36
        Height = 13
        Caption = 'Estado:'
        FocusControl = DBEdit2
      end
      object Label10: TLabel
        Left = 65
        Top = 180
        Width = 33
        Height = 13
        Caption = 'CNPJ.:'
        FocusControl = DBEdit10
      end
      object Label11: TLabel
        Left = 54
        Top = 200
        Width = 46
        Height = 13
        Caption = 'Inscri'#231#227'o:'
        FocusControl = DBEdit11
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 175
        Top = -1
        Width = 185
        Height = 29
        Caption = 'Tipo de Pessoa:'
        Columns = 2
        Ctl3D = False
        DataField = 'CFTIPOC'
        DataSource = DM1.Src_CSF
        Items.Strings = (
          '&F'#237'sica'
          '&Jur'#237'dica')
        ParentCtl3D = False
        TabOrder = 1
        Values.Strings = (
          '0'
          '1')
        OnChange = DBRadioGroup1Change
      end
      object DBEdit3: TDBEdit
        Left = 113
        Top = 33
        Width = 365
        Height = 19
        Ctl3D = False
        DataField = 'CFRAZAO'
        DataSource = DM1.Src_CSF
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 113
        Top = 56
        Width = 365
        Height = 19
        Ctl3D = False
        DataField = 'CFDENOM'
        DataSource = DM1.Src_CSF
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 113
        Top = 80
        Width = 366
        Height = 19
        Ctl3D = False
        DataField = 'CFENDER'
        DataSource = DM1.Src_CSF
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 113
        Top = 102
        Width = 199
        Height = 19
        Ctl3D = False
        DataField = 'CFBAIRRO'
        DataSource = DM1.Src_CSF
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 113
        Top = 125
        Width = 199
        Height = 19
        Ctl3D = False
        DataField = 'CFCIDADE'
        DataSource = DM1.Src_CSF
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 113
        Top = 148
        Width = 104
        Height = 19
        Ctl3D = False
        DataField = 'CFCEP'
        DataSource = DM1.Src_CSF
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 333
        Top = 148
        Width = 144
        Height = 19
        Ctl3D = False
        DataField = 'CFFONE'
        DataSource = DM1.Src_CSF
        ParentCtl3D = False
        TabOrder = 8
      end
      object DBEdit2: TDBEdit
        Left = 447
        Top = 125
        Width = 30
        Height = 19
        Ctl3D = False
        DataField = 'CFUF'
        DataSource = DM1.Src_CSF
        ParentCtl3D = False
        TabOrder = 9
      end
      object DBEdit10: TDBEdit
        Left = 113
        Top = 171
        Width = 152
        Height = 19
        Ctl3D = False
        DataField = 'CFCGC'
        DataSource = DM1.Src_CSF
        ParentCtl3D = False
        TabOrder = 10
      end
      object DBEdit11: TDBEdit
        Left = 113
        Top = 194
        Width = 272
        Height = 19
        Ctl3D = False
        DataField = 'CFIE'
        DataSource = DM1.Src_CSF
        ParentCtl3D = False
        TabOrder = 11
      end
      object DBEdit1: TDBEdit
        Left = 113
        Top = 11
        Width = 57
        Height = 19
        Ctl3D = False
        DataField = 'CFCHAVEP'
        DataSource = DM1.Src_CSF
        ParentCtl3D = False
        TabOrder = 0
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        DataSource = DM1.Src_CSF
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CFCHAVEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFORDEMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFRAZAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFDENOM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFCIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFUF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFCGC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFIE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFFONE'
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 0
    Width = 594
    Height = 37
    Align = alTop
    Caption = ''
    inherited INCLUIR: TBitBtn
      Left = 0
      Top = 6
      Height = 29
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited ALTERAR: TBitBtn
      Left = 63
      Top = 6
      Height = 29
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited EXCLUIR: TBitBtn
      Left = 126
      Top = 6
      Height = 29
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited GRAVAR: TBitBtn
      Left = 189
      Top = 6
      Height = 29
      Cursor = crHandPoint
      OnClick = GRAVARClick
      Layout = blGlyphLeft
    end
    inherited CANCELAR: TBitBtn
      Left = 252
      Top = 6
      Width = 70
      Height = 29
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    object DBNavigator2: TDBNavigator
      Left = 322
      Top = 6
      Width = 192
      Height = 29
      Cursor = crHandPoint
      DataSource = DM1.Src_CSF
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 514
      Top = 6
      Width = 78
      Height = 29
      Cursor = crHandPoint
      Hint = 'Fecha Esta Janela'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
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
  end
  inherited GroupBox2: TGroupBox
    Top = 342
    Width = 594
    Height = 1
    inherited DBNavigator1: TDBNavigator
      Visible = False
    end
    inherited SAIR: TBitBtn
      Visible = False
    end
  end
end

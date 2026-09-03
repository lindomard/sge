inherited Frm_LotMov: TFrm_LotMov
  Left = 175
  Top = 176
  Width = 671
  Height = 487
  Caption = 'Lote de Movimentos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 29
    Width = 663
    Height = 35
    inherited lbl_emp: TLabel
      Left = 618
      Height = 33
    end
    inherited Pesquisapor: TLabel
      Top = 12
    end
    inherited BBnAtu: TBitBtn
      Top = 7
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Top = 9
      Items.Strings = (
        'N'#250'mero do Lote'
        'Data Abertura'
        'Data Encerramento')
    end
    inherited Edit1: TMaskEdit
      Top = 9
      OnExit = Edit1Exit
    end
  end
  inherited PC1: TPageControl
    Top = 64
    Width = 663
    Height = 389
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 92
        Top = 16
        Width = 40
        Height = 13
        Caption = 'Caixa.:'
      end
      object Label2: TLabel
        Left = 37
        Top = 37
        Width = 95
        Height = 13
        Caption = 'N'#250'mero do Lote:'
      end
      object Label3: TLabel
        Left = 48
        Top = 55
        Width = 84
        Height = 13
        Caption = 'Data Abertura:'
      end
      object Label4: TLabel
        Left = 18
        Top = 79
        Width = 114
        Height = 13
        Caption = 'Data Encerramento:'
      end
      object Label5: TLabel
        Left = 91
        Top = 103
        Width = 41
        Height = 13
        Caption = 'Status:'
      end
      object Label6: TLabel
        Left = 33
        Top = 119
        Width = 99
        Height = 13
        Caption = 'Data Reabertura:'
      end
      object Label7: TLabel
        Left = 47
        Top = 143
        Width = 85
        Height = 13
        Caption = 'Saldo Anterior:'
      end
      object Label8: TLabel
        Left = 24
        Top = 165
        Width = 108
        Height = 13
        Caption = 'Total dos Cr'#233'ditos:'
      end
      object Label9: TLabel
        Left = 27
        Top = 187
        Width = 105
        Height = 13
        Caption = 'Total dos D'#233'bitos:'
      end
      object Label10: TLabel
        Left = 62
        Top = 208
        Width = 70
        Height = 13
        Caption = 'Saldo Atual:'
      end
      object Label11: TLabel
        Left = 200
        Top = 98
        Width = 186
        Height = 13
        Caption = '0-Aberto 1-Fechado 2-Reaberto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 136
        Top = 11
        Width = 75
        Height = 19
        Ctl3D = False
        DataField = 'CMCAIXA'
        DataSource = DM1.Src_Mov
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 136
        Top = 32
        Width = 75
        Height = 19
        Ctl3D = False
        DataField = 'CMLOTE'
        DataSource = DM1.Src_Mov
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 136
        Top = 53
        Width = 75
        Height = 19
        Ctl3D = False
        DataField = 'CMDTABERTURA'
        DataSource = DM1.Src_Mov
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 136
        Top = 74
        Width = 75
        Height = 19
        Ctl3D = False
        DataField = 'CMDTENC'
        DataSource = DM1.Src_Mov
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 136
        Top = 96
        Width = 24
        Height = 19
        Ctl3D = False
        DataField = 'CMSTATUS'
        DataSource = DM1.Src_Mov
        Enabled = False
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 136
        Top = 118
        Width = 75
        Height = 19
        Ctl3D = False
        DataField = 'CMDTREABER'
        DataSource = DM1.Src_Mov
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 136
        Top = 139
        Width = 75
        Height = 19
        Ctl3D = False
        DataField = 'CMSALDOANT'
        DataSource = DM1.Src_Mov
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 136
        Top = 160
        Width = 75
        Height = 19
        Ctl3D = False
        DataField = 'CMCREDITO'
        DataSource = DM1.Src_Mov
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 136
        Top = 181
        Width = 75
        Height = 19
        Ctl3D = False
        DataField = 'CMCREDITO'
        DataSource = DM1.Src_Mov
        ParentCtl3D = False
        TabOrder = 8
      end
      object DBEdit10: TDBEdit
        Left = 136
        Top = 203
        Width = 75
        Height = 19
        Ctl3D = False
        DataField = 'CMSALDO'
        DataSource = DM1.Src_Mov
        ParentCtl3D = False
        TabOrder = 9
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 655
        Height = 368
        DataSource = DM1.Src_Mov
        Columns = <
          item
            Expanded = False
            FieldName = 'CMCAIXA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMLOTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMDTABERTURA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMDTENC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMSTATUS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMDTREABER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMSALDOANT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMCREDITO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMDEBITOS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMSALDO'
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 0
    Width = 663
    Height = 29
    Align = alTop
    Caption = ''
    inherited INCLUIR: TBitBtn
      Left = 1
      Top = 1
      Width = 75
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited ALTERAR: TBitBtn
      Left = 75
      Top = 1
      Width = 75
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited EXCLUIR: TBitBtn
      Left = 149
      Top = 1
      Width = 75
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited GRAVAR: TBitBtn
      Left = 223
      Top = 1
      Width = 75
      Height = 26
      Cursor = crHandPoint
      OnClick = GRAVARClick
      Layout = blGlyphLeft
    end
    inherited CANCELAR: TBitBtn
      Left = 297
      Top = 1
      Width = 75
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    object DBNavigator2: TDBNavigator
      Left = 372
      Top = 1
      Width = 224
      Height = 26
      Cursor = crHandPoint
      Hint = 'Navega entre os registros selecionados'
      DataSource = DM1.Src_Mov
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Proximo Registro'
        #218'ltimo Registro')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 595
      Top = 1
      Width = 67
      Height = 26
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
    Top = 589
    Width = 663
    Align = alNone
    Visible = False
    inherited DBNavigator1: TDBNavigator
      Left = 2
      Top = 11
      DataSource = DM1.Src_Mov
    end
    inherited SAIR: TBitBtn
      Left = 249
      Top = 12
    end
  end
end

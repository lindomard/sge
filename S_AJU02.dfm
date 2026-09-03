object Frm_Aju02: TFrm_Aju02
  Left = 150
  Top = 126
  Width = 436
  Height = 340
  ActiveControl = DBEdit2
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Edi'#231#227'o da Ajuda - SGE'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 271
    Width = 428
    Height = 35
    Align = alBottom
    TabOrder = 0
    object SBnSair: TSpeedButton
      Left = 173
      Top = 5
      Width = 24
      Height = 25
      Hint = 'Fechar'
      Flat = True
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
      ParentShowHint = False
      ShowHint = True
      OnClick = SBnSairClick
    end
    object DBNv1: TDBNavigator
      Left = 5
      Top = 5
      Width = 168
      Height = 25
      DataSource = DM4.Src_hlp
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel]
      Flat = True
      Ctl3D = True
      Hints.Strings = (
        'Primeiro registro'
        'Registro anterior'
        'Pr'#243'ximo registro'
        #218'ltimo registro'
        'Inserir registro'
        'Excluir registro'
        'Editar registro'
        'Gravar edi'#231#227'o'
        'Cancelar edi'#231#227'o'
        'Atualizar da rede')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 428
    Height = 271
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 3
    TabOrder = 1
    object Panel4: TPanel
      Left = 5
      Top = 5
      Width = 418
      Height = 63
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 35
        Top = 13
        Width = 58
        Height = 13
        Caption = 'Chave........:'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 35
        Top = 37
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 84
        Top = 37
        Width = 9
        Height = 13
        Caption = '..:'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 97
        Top = 9
        Width = 281
        Height = 21
        DataField = 'AJCHAVE'
        DataSource = DM4.Src_hlp
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 97
        Top = 33
        Width = 281
        Height = 21
        DataField = 'AJDESCR'
        DataSource = DM4.Src_hlp
        TabOrder = 1
      end
    end
    object Panel3: TPanel
      Left = 5
      Top = 68
      Width = 418
      Height = 198
      Align = alClient
      BorderWidth = 3
      TabOrder = 1
      object DBRichEdit1: TDBRichEdit
        Left = 4
        Top = 4
        Width = 410
        Height = 190
        Align = alClient
        DataField = 'AJMEMO'
        DataSource = DM4.Src_hlp
        TabOrder = 0
      end
    end
  end
end

object Frm_Aju01: TFrm_Aju01
  Left = 192
  Top = 107
  Width = 478
  Height = 313
  ActiveControl = Edit1
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Pesquisa da Ajuda - SGE'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 470
    Height = 67
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 370
      Height = 67
      Align = alClient
      TabOrder = 0
      object Label1: TLabel
        Left = 102
        Top = 12
        Width = 106
        Height = 13
        Caption = 'Conte'#250'do a pesquisar:'
      end
      object RgOrdem: TRadioGroup
        Left = 6
        Top = 2
        Width = 89
        Height = 59
        Caption = 'Ordem:'
        ItemIndex = 0
        Items.Strings = (
          '&Descri'#231#227'o'
          '&Chave')
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 102
        Top = 32
        Width = 257
        Height = 21
        TabOrder = 1
      end
    end
    object Panel4: TPanel
      Left = 370
      Top = 0
      Width = 100
      Height = 67
      Align = alRight
      TabOrder = 1
      object BBnAtu: TBitBtn
        Left = 10
        Top = 8
        Width = 80
        Height = 25
        Caption = '&Atualizar'
        TabOrder = 0
        OnClick = BBnAtuClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object BBnFechar: TBitBtn
        Left = 10
        Top = 33
        Width = 80
        Height = 25
        Caption = '&Fechar'
        TabOrder = 1
        OnClick = BBnFecharClick
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 67
    Width = 470
    Height = 212
    Align = alClient
    BorderWidth = 3
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 4
      Top = 4
      Width = 462
      Height = 204
      Align = alClient
      DataSource = DM4.Src_hlp
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'AJCHAVE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AJDESCR'
          Visible = True
        end>
    end
  end
end

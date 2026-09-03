object Frm_DM_Men_Escrever: TFrm_DM_Men_Escrever
  Left = 192
  Top = 124
  Width = 715
  Height = 358
  Caption = 'Escrever Mensagem'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 699
    Height = 41
    Align = alTop
    Caption = 'DIGITA'#199#195'O DE NOVAS MENSAGENS'
    Color = 12713921
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object gb_Mensagem: TGroupBox
    Left = 0
    Top = 41
    Width = 514
    Height = 238
    Align = alClient
    Caption = 'Mensagem:'
    TabOrder = 1
    object edt_mensagem: TRichEdit
      Left = 2
      Top = 15
      Width = 510
      Height = 221
      Align = alClient
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 279
    Width = 699
    Height = 41
    Align = alBottom
    TabOrder = 2
    object bbEnviar: TBitBtn
      Left = 8
      Top = 5
      Width = 129
      Height = 32
      Caption = 'Enviar'
      TabOrder = 0
      OnClick = bbEnviarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
        00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
        00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
        F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
        FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
        0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
        0033333337FFFFFF773333333000000003333333377777777333}
      NumGlyphs = 2
    end
    object bbNova: TBitBtn
      Left = 288
      Top = 5
      Width = 129
      Height = 32
      Caption = 'Nova mensagem'
      TabOrder = 1
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 567
      Top = 8
      Width = 129
      Height = 32
      Caption = 'Sair'
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
  end
  object gbDestinatarios: TGroupBox
    Left = 514
    Top = 41
    Width = 185
    Height = 238
    Align = alRight
    Caption = 'Destinatarios:'
    TabOrder = 3
    object DBGrid_destinatarios: TDBGrid
      Left = 2
      Top = 42
      Width = 181
      Height = 194
      Align = alClient
      DataSource = Src_destinatarios
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = DBGrid_destinatariosKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'DESTINATARIO'
          Width = 153
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 2
      Top = 15
      Width = 181
      Height = 27
      Align = alTop
      TabOrder = 1
      object edt_destinatarios: TEdit
        Left = 0
        Top = 3
        Width = 158
        Height = 21
        PopupMenu = Popup
        TabOrder = 0
        OnExit = edt_destinatariosExit
      end
    end
  end
  object mem_destinatarios: TRxMemoryData
    FieldDefs = <
      item
        Name = 'DESTINATARIO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NOMVEN'
        DataType = ftString
        Size = 40
      end>
    Left = 456
    Top = 209
    object mem_destinatariosNOMVEN: TStringField
      FieldName = 'NOMVEN'
      Size = 40
    end
    object mem_destinatariosDESTINATARIO: TStringField
      DisplayLabel = 'Destinatario'
      FieldName = 'DESTINATARIO'
      Size = 30
    end
  end
  object Src_destinatarios: TDataSource
    DataSet = mem_destinatarios
    Left = 472
    Top = 177
  end
  object XMLDocument1: TXMLDocument
    Left = 288
    Top = 152
    DOMVendorDesc = 'MSXML'
  end
  object Popup: TPopupMenu
    Left = 592
    Top = 24
    object AdicionarTodos1: TMenuItem
      Caption = 'Adicionar Todos'
      OnClick = AdicionarTodos1Click
    end
  end
end

object Frm_Ext_Prod: TFrm_Ext_Prod
  Left = 319
  Top = 234
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o no Cadastro de Informa'#231#245'es Extra de Produto'
  ClientHeight = 333
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tlb_tipo: TToolBar
    Left = 0
    Top = 0
    Width = 560
    Height = 33
    ButtonHeight = 29
    TabOrder = 0
    object btn_incluir: TBitBtn
      Left = 0
      Top = 2
      Width = 94
      Height = 29
      Cursor = crHandPoint
      Caption = '&Novo'
      TabOrder = 0
      OnClick = btn_incluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
    end
    object btn_alterar: TBitBtn
      Left = 94
      Top = 2
      Width = 94
      Height = 29
      Cursor = crHandPoint
      Caption = '&Alterar'
      TabOrder = 1
      OnClick = btn_alterarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object btn_cancelar: TBitBtn
      Left = 188
      Top = 2
      Width = 94
      Height = 29
      Cursor = crHandPoint
      Caption = '&Cancelar'
      TabOrder = 4
      OnClick = btn_cancelarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
    object btn_excluir: TBitBtn
      Left = 282
      Top = 2
      Width = 94
      Height = 29
      Cursor = crHandPoint
      Caption = '&Excluir'
      TabOrder = 2
      OnClick = btn_excluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      NumGlyphs = 2
    end
    object btn_gravar: TBitBtn
      Left = 376
      Top = 2
      Width = 94
      Height = 29
      Cursor = crHandPoint
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 3
      OnClick = btn_gravarClick
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
    object btn_sair: TBitBtn
      Left = 470
      Top = 2
      Width = 98
      Height = 29
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 5
      OnClick = btn_sairClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
  end
  object TPanel
    Left = 0
    Top = 33
    Width = 560
    Height = 5
    Align = alTop
    BevelInner = bvLowered
    Color = clActiveCaption
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 38
    Width = 560
    Height = 35
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object Label1: TLabel
      Left = 5
      Top = 13
      Width = 68
      Height = 13
      Caption = 'Pesquisar Por.'
    end
    object cb_localizar: TComboBox
      Left = 105
      Top = 7
      Width = 102
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'NOME'
      Items.Strings = (
        'NOME'
        'CODIGO')
    end
    object edt_conteudo: TEdit
      Left = 207
      Top = 7
      Width = 260
      Height = 21
      TabOrder = 1
      OnChange = edt_conteudoChange
    end
    object btn_atualizar: TBitBtn
      Left = 469
      Top = 5
      Width = 95
      Height = 25
      Caption = 'Atualizar'
      TabOrder = 2
      OnClick = btn_atualizarClick
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
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 73
    Width = 560
    Height = 260
    ActivePage = TsCadastro
    Align = alClient
    TabOrder = 3
    object TsCadastro: TTabSheet
      Caption = 'Manuten'#231#227'o'
      object Panel_Edicao: TPanel
        Left = 0
        Top = 0
        Width = 552
        Height = 232
        Align = alClient
        BevelInner = bvLowered
        Enabled = False
        TabOrder = 0
        object Label2: TLabel
          Left = 5
          Top = 6
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object Label3: TLabel
          Left = 91
          Top = 6
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object Label4: TLabel
          Left = 38
          Top = 107
          Width = 50
          Height = 13
          Caption = 'Linha 01..:'
        end
        object Label5: TLabel
          Left = 38
          Top = 131
          Width = 50
          Height = 13
          Caption = 'Linha 02..:'
        end
        object Label6: TLabel
          Left = 38
          Top = 155
          Width = 50
          Height = 13
          Caption = 'Linha 03..:'
        end
        object Label7: TLabel
          Left = 38
          Top = 179
          Width = 50
          Height = 13
          Caption = 'Linha 04..:'
        end
        object Label8: TLabel
          Left = 38
          Top = 203
          Width = 50
          Height = 13
          Caption = 'Linha 05..:'
        end
        object edt_codtp: TDBEdit
          Left = 5
          Top = 23
          Width = 82
          Height = 21
          DataField = 'PROEXT_CODEXT'
          DataSource = DM6.Src_Pro_Ext
          Enabled = False
          TabOrder = 0
        end
        object db_ln01: TDBEdit
          Left = 90
          Top = 103
          Width = 371
          Height = 21
          DataField = 'PROEXT_LINHA01'
          DataSource = DM6.Src_Pro_Ext
          MaxLength = 56
          TabOrder = 1
        end
        object db_ln02: TDBEdit
          Left = 90
          Top = 127
          Width = 371
          Height = 21
          DataField = 'PROEXT_LINHA02'
          DataSource = DM6.Src_Pro_Ext
          MaxLength = 56
          TabOrder = 2
        end
        object db_ln03: TDBEdit
          Left = 90
          Top = 151
          Width = 371
          Height = 21
          DataField = 'PROEXT_LINHA03'
          DataSource = DM6.Src_Pro_Ext
          MaxLength = 56
          TabOrder = 3
        end
        object db_ln04: TDBEdit
          Left = 90
          Top = 175
          Width = 371
          Height = 21
          DataField = 'PROEXT_LINHA04'
          DataSource = DM6.Src_Pro_Ext
          MaxLength = 56
          TabOrder = 4
        end
        object db_ln05: TDBEdit
          Left = 90
          Top = 199
          Width = 371
          Height = 21
          DataField = 'PROEXT_LINHA05'
          DataSource = DM6.Src_Pro_Ext
          MaxLength = 56
          TabOrder = 5
        end
        object db_Nome: TDBMemo
          Left = 89
          Top = 23
          Width = 374
          Height = 66
          DataField = 'PROEXT_NOME'
          DataSource = DM6.Src_Pro_Ext
          MaxLength = 100
          ScrollBars = ssVertical
          TabOrder = 6
        end
      end
    end
    object TsLista: TTabSheet
      Caption = 'Lista'
      ImageIndex = 1
      object Grid: TDBGrid
        Left = 0
        Top = 0
        Width = 552
        Height = 232
        Align = alClient
        DataSource = DM6.Src_Pro_Ext
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = GridDblClick
        OnKeyDown = GridKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'PROEXT_CODEXT'
            Title.Caption = 'CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROEXT_NOME'
            Title.Caption = 'NOME DA INFORMA'#199#195'O EXTRA'
            Width = 460
            Visible = True
          end>
      end
    end
  end
end

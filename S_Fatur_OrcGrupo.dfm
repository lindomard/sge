object Frm_Fatur_OrcGrupo: TFrm_Fatur_OrcGrupo
  Left = 158
  Top = 116
  Width = 865
  Height = 598
  ActiveControl = RLReport1
  Caption = 'Emiss'#227'o de Or'#231'amento por Grupo(ambiente)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 857
    Height = 567
    ActivePage = tsRelatorio
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MultiLine = True
    ParentFont = False
    TabOrder = 0
    TabPosition = tpLeft
    TabStop = False
    object tsGeral: TTabSheet
      Caption = 'Pr'#233'-Configura'#231#227'o'
      object Label1: TLabel
        Left = 56
        Top = 7
        Width = 122
        Height = 13
        Caption = 'Chave do Pedido......'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 283
        Top = 6
        Width = 109
        Height = 13
        Caption = 'Data do Pedido.....'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label3: TLabel
        Left = 500
        Top = 6
        Width = 107
        Height = 13
        Caption = 'Valor do Pedido....'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 54
        Top = 24
        Width = 128
        Height = 13
        Caption = 'Cliente......................'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label5: TLabel
        Left = 54
        Top = 44
        Width = 124
        Height = 13
        Caption = 'Cidade.....................'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl_obs: TLabel
        Left = 53
        Top = 66
        Width = 120
        Height = 13
        Caption = 'Outras Observa'#231#245'es:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl_TAMFONCAB: TLabel
        Left = 173
        Top = 221
        Width = 193
        Height = 13
        Caption = 'Tamanho da Fonte do Cabecalho:'
      end
      object sbSalvarPadrao: TSpeedButton
        Left = 453
        Top = 320
        Width = 150
        Height = 25
        Cursor = crHandPoint
        Caption = '&Salvar Padr'#227'o'
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
        OnClick = sbSalvarPadraoClick
      end
      object Label8: TLabel
        Left = 170
        Top = 147
        Width = 230
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Extens'#227'o/Tipo de Impress'#227'o do e-mail'
        Color = 16777181
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl_ordem: TLabel
        Left = 401
        Top = 147
        Width = 291
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Ordem de Impress'#227'o'
        Color = 16777181
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl_TAMFONCABOBS: TLabel
        Left = 173
        Top = 238
        Width = 230
        Height = 13
        Caption = 'Tamanho da Fonte do Titulo Or'#231'amento:'
      end
      object bbVisualiza: TBitBtn
        Left = -1
        Top = 320
        Width = 150
        Height = 25
        Cursor = crHandPoint
        Caption = '&Visualizar Imprenss'#227'o'
        TabOrder = 12
        OnClick = bbVisualizaClick
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
      object CHAVE: TEdit
        Left = 171
        Top = 3
        Width = 85
        Height = 19
        TabStop = False
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object MDATAP: TEdit
        Left = 389
        Top = 3
        Width = 85
        Height = 19
        TabStop = False
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object VALORP: TEdit
        Left = 606
        Top = 3
        Width = 85
        Height = 19
        TabStop = False
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
      object MCLIENTE: TEdit
        Left = 171
        Top = 21
        Width = 520
        Height = 19
        TabStop = False
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object MCIDADE: TEdit
        Left = 171
        Top = 39
        Width = 520
        Height = 19
        TabStop = False
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
      end
      object bbEmail: TBitBtn
        Left = 301
        Top = 320
        Width = 150
        Height = 25
        Cursor = crHandPoint
        Caption = '&Enviar e-mail'
        TabOrder = 11
        OnClick = bbEmailClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333FFFFFFFFF333333300000000
          0333333777777777F33333330888888803333337FFFFFFF7F333333307777777
          0333333777777777F33333330FFFFFFF03333337F3F3FFF7F33333330F9F000F
          03333337F7377737F33333330FFFFFFF03333337F3333337F33333330FFFFFFF
          03333337F3FFFFF7F33333330F40004F03333337F77777F7F33333330F00000F
          03333337F7F337F7F33333330F00000F03333337F7FFF7F7F33333330F40004F
          03333337F7777737F33333330FFFFFFF03333337FFFFFFF7F333333300000000
          0333333777777777333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object BBSAIR: TBitBtn
        Left = 605
        Top = 320
        Width = 150
        Height = 25
        Cursor = crHandPoint
        Hint = 'Sair desta op'#231#227'o'
        Caption = '&Sair'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnClick = BBSAIRClick
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
      object CB_CABPRIMPAG: TCheckBox
        Left = 173
        Top = 186
        Width = 372
        Height = 17
        Caption = 'Cabecalho somente na primeira Pagina'
        TabOrder = 9
      end
      object CB_IMPCABLOG: TCheckBox
        Left = 173
        Top = 202
        Width = 300
        Height = 17
        Caption = 'se haver logotipo imprimir tambem cabecalho'
        Checked = True
        State = cbChecked
        TabOrder = 10
      end
      object TAMFONCAB: TEdit
        Left = 412
        Top = 220
        Width = 36
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
        Text = '-17'
        OnExit = TAMFONCABExit
      end
      object CB_EXTENSAO: TComboBox
        Left = 170
        Top = 162
        Width = 231
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 6
        Text = 'PDF (Acrobat Reader)'
        OnClick = CB_EXTENSAOClick
        OnExit = CB_EXTENSAOExit
        Items.Strings = (
          'HTML(Pagina web)'
          'PDF (Acrobat Reader)'
          'WORD (word)'
          'XLS (excel)'
          'Formato Orcamento Sistema')
      end
      object CB_ORDEM: TComboBox
        Left = 401
        Top = 162
        Width = 292
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 2
        TabOrder = 7
        Text = 'Ordem digita'#231#227'o'
        OnExit = CB_ORDEMExit
        Items.Strings = (
          'Descri'#231#227'o do Produto'
          'Descri'#231#227'o 2(Nome Generico)'
          'Ordem digita'#231#227'o'
          'Codigo do Produto'
          'Marca+Descri'#231#227'o'
          'Lista(Inalterada/Positiva/Negativa)+Descri'#231#227'o'
          'Se'#231#227'o+Descri'#231#227'o')
      end
      object TAMFONCABOBS: TEdit
        Left = 412
        Top = 238
        Width = 36
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 14
        Text = '-30'
        OnExit = TAMFONCABOBSExit
      end
      object CB_DADOSCLI: TCheckBox
        Left = 173
        Top = 253
        Width = 294
        Height = 17
        Caption = 'Dados dos Cliente em Negrito'
        TabOrder = 15
      end
      object chk_bordas: TCheckBox
        Left = 468
        Top = 186
        Width = 181
        Height = 17
        Caption = 'Sem Bordas'
        TabOrder = 16
      end
      object bbImprimir: TBitBtn
        Left = 158
        Top = 320
        Width = 140
        Height = 25
        Cursor = crHandPoint
        Caption = '&Imprimir'
        TabOrder = 17
        OnClick = bbImprimirClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0003377777777777777308888888888888807F33333333333337088888888888
          88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
          8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
          8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
      end
      object Memo_obs: TMemo
        Left = 171
        Top = 56
        Width = 520
        Height = 89
        Ctl3D = False
        Lines.Strings = (
          '')
        ParentCtl3D = False
        TabOrder = 5
      end
      object CB_INF_GERAIS: TCheckBox
        Left = 468
        Top = 203
        Width = 259
        Height = 17
        Caption = 'Imprimir Informa'#231#245'es Gerais'
        TabOrder = 18
        OnClick = CB_INF_GERAISClick
      end
      object cb_descom: TCheckBox
        Left = 468
        Top = 219
        Width = 262
        Height = 17
        Caption = 'Trocar Marca por Descri'#231#227'o Complementar'
        TabOrder = 19
        Visible = False
        OnClick = CB_INF_GERAISClick
      end
      object cb_desger: TCheckBox
        Left = 468
        Top = 235
        Width = 259
        Height = 17
        Caption = 'Trocar Descri'#231#227'o por Nome Generico'
        TabOrder = 20
        OnClick = CB_INF_GERAISClick
      end
      object cb_impmarca: TCheckBox
        Left = 468
        Top = 250
        Width = 109
        Height = 17
        Caption = 'Imprimir Marca'
        Checked = True
        State = cbChecked
        TabOrder = 21
      end
      object cb_TrocaCab: TCheckBox
        Left = 468
        Top = 266
        Width = 149
        Height = 17
        Caption = 'Imprimir Cabe'#231'alho 2'
        TabOrder = 22
      end
      object cb_tagAssinatura: TCheckBox
        Left = 173
        Top = 269
        Width = 263
        Height = 17
        Caption = 'Imprimir Tag de Assinatura'
        TabOrder = 23
      end
      object cb_Lotes: TCheckBox
        Left = 468
        Top = 282
        Width = 149
        Height = 17
        Caption = 'Exibir Lotes'
        TabOrder = 24
      end
      object cb_sepambiente: TCheckBox
        Left = 173
        Top = 285
        Width = 263
        Height = 17
        Caption = 'Separar Ambiente'
        TabOrder = 25
      end
      object cb_tipofrete: TCheckBox
        Left = 174
        Top = 301
        Width = 263
        Height = 17
        Caption = 'Se Orcamento Exibir tipo de Frete'
        Checked = True
        State = cbChecked
        TabOrder = 26
      end
      object cb_normal: TCheckBox
        Left = 292
        Top = 362
        Width = 149
        Height = 17
        Caption = 'Modelo normal'
        TabOrder = 27
        OnClick = cb_normalClick
      end
    end
    object ts_Conf_gerais: TTabSheet
      Caption = 'Observa'#231#245'es Gerais'
      ImageIndex = 1
      object Label6: TLabel
        Left = 56
        Top = 36
        Width = 90
        Height = 13
        Caption = 'Texto Linha 01:'
      end
      object Label7: TLabel
        Left = 56
        Top = 74
        Width = 90
        Height = 13
        Caption = 'Texto Linha 02:'
      end
      object Label9: TLabel
        Left = 56
        Top = 116
        Width = 90
        Height = 13
        Caption = 'Texto Linha 03:'
      end
      object Label10: TLabel
        Left = 56
        Top = 156
        Width = 90
        Height = 13
        Caption = 'Texto Linha 04:'
      end
      object Label11: TLabel
        Left = 56
        Top = 196
        Width = 90
        Height = 13
        Caption = 'Texto Linha 05:'
      end
      object Label12: TLabel
        Left = 56
        Top = 236
        Width = 90
        Height = 13
        Caption = 'Texto Linha 06:'
      end
      object sbt_linhas: TSpeedButton
        Left = 240
        Top = 280
        Width = 233
        Height = 33
        Caption = '&Salvar Texto Padr'#227'o'
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
        OnClick = sbt_linhasClick
      end
      object Label13: TLabel
        Left = 56
        Top = -1
        Width = 65
        Height = 13
        Caption = 'Cabe'#231'alho:'
      end
      object edt_txt_linha01: TEdit
        Left = 56
        Top = 52
        Width = 617
        Height = 21
        TabOrder = 0
      end
      object edt_txt_linha02: TEdit
        Left = 56
        Top = 90
        Width = 617
        Height = 21
        TabOrder = 1
      end
      object edt_txt_linha03: TEdit
        Left = 56
        Top = 132
        Width = 617
        Height = 21
        TabOrder = 2
      end
      object edt_txt_linha04: TEdit
        Left = 56
        Top = 172
        Width = 617
        Height = 21
        TabOrder = 3
      end
      object edt_txt_linha05: TEdit
        Left = 56
        Top = 212
        Width = 617
        Height = 21
        TabOrder = 4
      end
      object edt_txt_linha06: TEdit
        Left = 56
        Top = 252
        Width = 617
        Height = 21
        TabOrder = 5
      end
      object edt_cabecalho: TEdit
        Left = 56
        Top = 15
        Width = 617
        Height = 21
        TabOrder = 6
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = -11
        Top = -254
        Width = 794
        Height = 1123
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = DM2.Src_Cab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Margins.BottomMargin = 20.000000000000000000
        ShowProgress = False
        BeforePrint = RLReport1BeforePrint
        object rl_cabtit: TRLBand
          Left = 39
          Top = 251
          Width = 716
          Height = 38
          AutoSize = True
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -30
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AfterPrint = rl_cabtitAfterPrint
          object lbl_cabchave: TRLLabel
            Left = 488
            Top = 6
            Width = 228
            Height = 31
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CHAVE: 000212'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -25
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblObs: TRLLabel
            Left = 2
            Top = 6
            Width = 478
            Height = 31
            Alignment = taCenter
            AutoSize = False
            Caption = 'OR'#199'AMENTO DE MERCADORIAS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -25
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLSubDetail1: TRLSubDetail
          Left = 39
          Top = 453
          Width = 716
          Height = 76
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataSource = DM2.Src_Cor
          BeforePrint = RLSubDetail1BeforePrint
          object RLGroup1: TRLGroup
            Left = 0
            Top = 0
            Width = 716
            Height = 70
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataFields = 'GRUPO'
            BeforePrint = RLGroup1BeforePrint
            object RLBand2: TRLBand
              Left = 0
              Top = 17
              Width = 716
              Height = 19
              BandType = btHeader
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              object RLcabCodpro: TRLLabel
                Left = 1
                Top = 0
                Width = 64
                Height = 16
                AutoSize = False
                Caption = 'C'#243'digo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object RLCabQtd: TRLLabel
                Left = 65
                Top = 0
                Width = 57
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Qtde.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object RLCabUnd: TRLLabel
                Left = 122
                Top = 0
                Width = 30
                Height = 16
                AutoSize = False
                Caption = 'Und'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object RLCabNome: TRLLabel
                Left = 220
                Top = 0
                Width = 245
                Height = 16
                AutoSize = False
                Caption = 'Descri'#231#227'o dos Produtos'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object RLCabMarca: TRLLabel
                Left = 468
                Top = 0
                Width = 87
                Height = 16
                AutoSize = False
                Caption = 'Marca'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object RLCabPU: TRLLabel
                Left = 555
                Top = 0
                Width = 74
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'P'#231'o.Unit'#225'rio'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object RLCabTotal: TRLLabel
                Left = 629
                Top = 0
                Width = 85
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Valor Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object RLCabGrade: TRLLabel
                Left = 152
                Top = 0
                Width = 67
                Height = 16
                AutoSize = False
                Caption = 'Grade'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
            end
            object rl_cabamb: TRLBand
              Left = 0
              Top = 0
              Width = 716
              Height = 17
              BandType = btHeader
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              object db_cabamb: TRLDBText
                Left = 0
                Top = 0
                Width = 716
                Height = 15
                Align = faTop
                Alignment = taCenter
                DataField = 'GRUPO'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object RLBand4: TRLBand
              Left = 0
              Top = 36
              Width = 716
              Height = 15
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              BeforePrint = RLBand4BeforePrint
              object RLCodPro: TRLDBText
                Left = 1
                Top = 0
                Width = 64
                Height = 13
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'P2CODPRO'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                SecondHolder = RLcabCodpro
              end
              object RLQtd: TRLDBText
                Left = 65
                Top = 0
                Width = 57
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'P2QTD'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLCabQtd
                ParentFont = False
              end
              object RLUnd: TRLDBText
                Left = 122
                Top = 0
                Width = 30
                Height = 13
                Alignment = taCenter
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'PDUND'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLCabUnd
                ParentFont = False
              end
              object RLPU: TRLDBText
                Left = 555
                Top = 0
                Width = 74
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'P2PRECO'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLCabPU
                ParentFont = False
              end
              object RLTotal: TRLDBText
                Left = 629
                Top = 0
                Width = 85
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'total'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLCabTotal
                ParentFont = False
              end
              object RLCabLote: TRLDBText
                Left = 152
                Top = 0
                Width = 67
                Height = 13
                Alignment = taCenter
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'P2LOTE'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLCabGrade
                ParentFont = False
              end
              object RLMarca: TRLDBMemo
                Left = 468
                Top = 0
                Width = 87
                Height = 14
                AutoSize = False
                DataField = 'PDMARCA'
                DataSource = DM2.Src_Cor
                Holder = RLCabMarca
              end
              object RLNome: TRLDBMemo
                Left = 220
                Top = 0
                Width = 245
                Height = 13
                DataField = 'PDNOME'
                DataSource = DM2.Src_Cor
                Holder = RLCabNome
              end
            end
            object RLBand9: TRLBand
              Left = 0
              Top = 51
              Width = 716
              Height = 22
              BandType = btSummary
              BeforePrint = RLBand9BeforePrint
              object RLLabel22: TRLLabel
                Left = 0
                Top = 1
                Width = 716
                Height = 18
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Total: R$'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -15
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Holder = RLMensTotalb
                ParentFont = False
              end
            end
          end
        end
        object RLBand6: TRLBand
          Left = 39
          Top = 955
          Width = 716
          Height = 1
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          BeforePrint = RLBand6BeforePrint
          object RLrodape: TRLLabel
            Left = 0
            Top = 0
            Width = 716
            Height = 7
            Align = faTop
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object rl_cablogo: TRLBand
          Left = 39
          Top = 39
          Width = 716
          Height = 118
          BandType = btHeader
          BeforePrint = rl_cablogoBeforePrint
          object RLImage_cab: TRLImage
            Left = 0
            Top = 0
            Width = 351
            Height = 117
            Stretch = True
          end
          object rldb_razao: TRLDBText
            Left = 352
            Top = 0
            Width = 362
            Height = 22
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlobs: TRLMemo
            Left = 352
            Top = 22
            Width = 362
            Height = 95
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLcabemp: TRLBand
          Left = 39
          Top = 157
          Width = 716
          Height = 94
          BandType = btHeader
          object rldb_fantasia: TRLDBText
            Left = 0
            Top = 0
            Width = 716
            Height = 21
            Align = faTop
            Alignment = taCenter
            DataField = 'FANTASIA_CAB'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -18
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText1: TRLDBText
            Left = 0
            Top = 21
            Width = 716
            Height = 16
            Align = faTop
            Alignment = taCenter
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -14
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbl_cnpj_ie2: TRLLabel
            Left = 0
            Top = 37
            Width = 716
            Height = 16
            Align = faTop
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -14
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText2: TRLDBText
            Left = 0
            Top = 53
            Width = 716
            Height = 16
            Align = faTop
            Alignment = taCenter
            DataField = 'ender'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -14
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rlobs2: TRLMemo
            Left = 0
            Top = 69
            Width = 716
            Height = 16
            Align = faTop
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -14
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLSubDetail2: TRLSubDetail
          Left = 39
          Top = 956
          Width = 716
          Height = 83
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataSource = DM2.Sr_AddExt
          Positioning = btSummary
          Visible = False
          object RLBand1: TRLBand
            Left = 0
            Top = 0
            Width = 716
            Height = 47
            BandType = btHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Visible = False
            object rlDescAdicional: TRLLabel
              Left = 220
              Top = 29
              Width = 309
              Height = 16
              AutoSize = False
              Caption = 'Descri'#231#227'o do Adicional'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object rlValor: TRLLabel
              Left = 531
              Top = 29
              Width = 182
              Height = 16
              AutoSize = False
              Caption = 'Valor do Adicional'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel1: TRLLabel
              Left = 236
              Top = 6
              Width = 213
              Height = 16
              AutoSize = False
              Caption = 'Valores Adicionais do Pedido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel2: TRLLabel
              Left = 528
              Top = 48
              Width = 57
              Height = 15
            end
          end
          object RLBand3: TRLBand
            Left = 0
            Top = 47
            Width = 716
            Height = 16
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLBand3BeforePrint
            object RLDBText8: TRLDBText
              Left = 220
              Top = 1
              Width = 309
              Height = 13
              AutoSize = False
              DataField = 'P1AE_NOME'
              DataSource = DM2.Sr_AddExt
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlDescAdicional
              ParentFont = False
            end
            object RLVALORADD: TRLLabel
              Left = 531
              Top = 0
              Width = 182
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = '1000,00'
              Holder = rlValor
            end
          end
          object RLBand7: TRLBand
            Left = 0
            Top = 63
            Width = 716
            Height = 18
            BandType = btSummary
            BeforePrint = RLBand7BeforePrint
            object RLLabel4: TRLLabel
              Left = 406
              Top = 1
              Width = 123
              Height = 15
              Caption = 'Total dos Adicionais..:'
            end
            object RLTOTALADD: TRLLabel
              Left = 531
              Top = 2
              Width = 182
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = '1000,00'
              Holder = rlValor
            end
          end
        end
        object RLBand8: TRLBand
          Left = 39
          Top = 289
          Width = 716
          Height = 164
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Degrade.OppositeColor = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLLabel3: TRLLabel
            Left = 2
            Top = 3
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Cliente.......'
          end
          object RLDBText5: TRLDBText
            Left = 160
            Top = 3
            Width = 553
            Height = 16
            AutoSize = False
            DataField = 'ecf_razao'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel5: TRLLabel
            Left = 2
            Top = 75
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'CPF/CNPJ..:'
          end
          object db_cnpj: TRLDBText
            Left = 77
            Top = 75
            Width = 337
            Height = 16
            AutoSize = False
            DataField = 'ecf_cgc'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = 2
            Top = 42
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Endere'#231'o...'
          end
          object db_ender: TRLDBText
            Left = 77
            Top = 41
            Width = 338
            Height = 16
            AutoSize = False
            DataField = 'ender_completo'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 437
            Top = 40
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'Bairro.......'
          end
          object db_bairro: TRLDBText
            Left = 505
            Top = 40
            Width = 206
            Height = 16
            AutoSize = False
            DataField = 'ecf_bairro'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel8: TRLLabel
            Left = 2
            Top = 57
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Cidade........'
          end
          object db_cidade: TRLDBText
            Left = 77
            Top = 59
            Width = 337
            Height = 16
            AutoSize = False
            DataField = 'ecf_cidade'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel9: TRLLabel
            Left = 448
            Top = 60
            Width = 25
            Height = 16
            Caption = 'UF:'
          end
          object db_uf: TRLDBText
            Left = 476
            Top = 60
            Width = 24
            Height = 16
            AutoSize = False
            DataField = 'ecf_uf'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 507
            Top = 58
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'CEP...........'
          end
          object db_cep: TRLDBText
            Left = 575
            Top = 58
            Width = 116
            Height = 16
            AutoSize = False
            DataField = 'ecf_cep'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object db_ie: TRLDBText
            Left = 505
            Top = 75
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_ie'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel11: TRLLabel
            Left = 437
            Top = 75
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'IE/RG.......'
          end
          object db_nomcon: TRLDBText
            Left = 77
            Top = 94
            Width = 194
            Height = 16
            AutoSize = False
            DataField = 'CNOMCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel12: TRLLabel
            Left = 2
            Top = 94
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Contato......'
          end
          object db_fonecon: TRLDBText
            Left = 337
            Top = 94
            Width = 166
            Height = 16
            AutoSize = False
            DataField = 'CFONCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object db_fone01: TRLDBText
            Left = 505
            Top = 94
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'CFONE01'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel13: TRLLabel
            Left = 2
            Top = 111
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Vendedor...'
          end
          object db_nomven: TRLDBText
            Left = 77
            Top = 111
            Width = 273
            Height = 16
            AutoSize = False
            DataField = 'nomven'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel14: TRLLabel
            Left = 485
            Top = 111
            Width = 36
            Height = 16
            AutoSize = False
            Caption = 'Data:'
          end
          object db_datped: TRLDBText
            Left = 524
            Top = 111
            Width = 93
            Height = 16
            AutoSize = False
            DataField = 'P1DATAP'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel15: TRLLabel
            Left = 625
            Top = 110
            Width = 31
            Height = 16
            AutoSize = False
            Caption = 'P'#225'g:'
          end
          object RLLabel16: TRLLabel
            Left = 677
            Top = 111
            Width = 10
            Height = 16
            AutoSize = False
            Caption = '/'
          end
          object db_pag: TRLSystemInfo
            Left = 658
            Top = 111
            Width = 20
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itPageNumber
            ParentFont = False
          end
          object db_qtdpag: TRLSystemInfo
            Left = 685
            Top = 111
            Width = 25
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itLastPageNumber
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 297
            Top = 94
            Width = 37
            Height = 16
            Caption = 'Fone:'
          end
          object RLLabel18: TRLLabel
            Left = 4
            Top = 128
            Width = 110
            Height = 16
            AutoSize = False
            Caption = 'Prazo de Entrega:'
          end
          object db_prazoEnt: TRLDBText
            Left = 116
            Top = 128
            Width = 248
            Height = 16
            AutoSize = False
            DataField = 'prazoent'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel19: TRLLabel
            Left = 388
            Top = 129
            Width = 132
            Height = 16
            AutoSize = False
            Caption = 'Validade da Proposta:'
          end
          object db_ValProposta: TRLDBText
            Left = 524
            Top = 129
            Width = 185
            Height = 16
            AutoSize = False
            DataField = 'valpro'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object db_TipoFrete: TRLDBText
            Left = 77
            Top = 147
            Width = 428
            Height = 16
            AutoSize = False
            DataField = 'frete_ciffob'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_tipofrete: TRLLabel
            Left = 3
            Top = 147
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Frete...........'
          end
          object db_fantasia: TRLDBText
            Left = 114
            Top = 21
            Width = 598
            Height = 16
            AutoSize = False
            DataField = 'ecf_fantasia'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel21: TRLLabel
            Left = 4
            Top = 21
            Width = 109
            Height = 16
            AutoSize = False
            Caption = 'Nome Fantasia..:'
          end
          object RLDBText3: TRLDBText
            Left = 77
            Top = 3
            Width = 81
            Height = 16
            AutoSize = False
            DataField = 'P1CODCLI'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand5_totais_ant: TRLBand
          Left = 39
          Top = 623
          Width = 716
          Height = 91
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object lblFormaPgto: TRLLabel
            Left = 2
            Top = 19
            Width = 134
            Height = 16
            AutoSize = False
            Caption = 'Forma de Pagamento:'
          end
          object lbl_planovendas: TRLLabel
            Left = 3
            Top = 2
            Width = 134
            Height = 16
            AutoSize = False
            Caption = 'Plano de Vendas:'
          end
          object lbl_transportadora: TRLLabel
            Left = 2
            Top = 38
            Width = 134
            Height = 16
            AutoSize = False
            Caption = 'Transportadora:'
            Visible = False
          end
          object rlprazos: TRLLabel
            Left = 141
            Top = 2
            Width = 456
            Height = 15
            AutoSize = False
            Caption = 'Prazos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlForma: TRLLabel
            Left = 141
            Top = 20
            Width = 456
            Height = 15
            AutoSize = False
            Caption = 'Forma de Pagamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rl_nomefrete: TRLLabel
            Left = 141
            Top = 39
            Width = 456
            Height = 15
            AutoSize = False
            Caption = 'Tipo de Frete'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rllnObsPed: TRLMemo
            Left = 0
            Top = 61
            Width = 716
            Height = 15
            Align = faBottom
          end
          object rlMemo_Obs: TRLMemo
            Left = 0
            Top = 76
            Width = 716
            Height = 15
            Align = faBottom
          end
        end
        object rl_rodOrcCiente: TRLBand
          Left = 39
          Top = 757
          Width = 716
          Height = 198
          BandType = btSummary
          BeforePrint = rl_rodOrcCienteBeforePrint
          object RLLabel24: TRLLabel
            Left = 3
            Top = 23
            Width = 313
            Height = 16
            AutoSize = False
            Caption = '____________________________________________'
          end
          object RLDBText4: TRLDBText
            Left = 3
            Top = 40
            Width = 314
            Height = 22
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel25: TRLLabel
            Left = 404
            Top = 24
            Width = 313
            Height = 16
            AutoSize = False
            Caption = '____________________________________________'
          end
          object RLLabel26: TRLLabel
            Left = 403
            Top = 68
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'de Acordo:'
          end
          object RLLabel27: TRLLabel
            Left = 403
            Top = 86
            Width = 82
            Height = 16
            AutoSize = False
            Caption = 'Local e Data:'
          end
          object RLLabel28: TRLLabel
            Left = 487
            Top = 86
            Width = 226
            Height = 16
            AutoSize = False
            Caption = '____________________________________________'
          end
          object RLLabel29: TRLLabel
            Left = 402
            Top = 105
            Width = 315
            Height = 16
            AutoSize = False
            Caption = 'Obs: O de acordo dar'#225' a mesma  for'#231'a de pedido.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlRazao: TRLMemo
            Left = 406
            Top = 40
            Width = 306
            Height = 16
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand10: TRLBand
          Left = 39
          Top = 1039
          Width = 716
          Height = 16
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLSystemInfo2: TRLSystemInfo
            Left = 643
            Top = 0
            Width = 73
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Info = itHour
            ParentFont = False
          end
          object RLLabel30: TRLLabel
            Left = 634
            Top = 0
            Width = 6
            Height = 14
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 558
            Top = 0
            Width = 75
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object banner: TRLLabel
            Left = 150
            Top = 1
            Width = 394
            Height = 14
            Caption = 
              #169'Intersys - Sistemas de Gest'#227'o Empresarial - (62) 3247 - 1560 /(' +
              '62) 3247 - 1580'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object rl_obsgeral: TRLBand
          Left = 39
          Top = 714
          Width = 716
          Height = 43
          AutoSize = True
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          BeforePrint = RLBand11BeforePrint
          object m_texto: TRLMemo
            Left = 0
            Top = 18
            Width = 716
            Height = 25
            Alignment = taJustify
          end
          object rl_cabecalho: TRLLabel
            Left = 0
            Top = 0
            Width = 716
            Height = 15
            Align = faClientTop
            Alignment = taCenter
            Caption = 'Cabe'#231'alho'
          end
        end
        object RLBand_totais: TRLBand
          Left = 39
          Top = 529
          Width = 716
          Height = 94
          BandType = btSummary
          object RLMensTotalb: TRLLabel
            Left = 0
            Top = 0
            Width = 716
            Height = 18
            Align = faTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Total Bruto: R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RL_TOTALST: TRLLabel
            Left = 0
            Top = 18
            Width = 716
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Caption = 'ICMS ST: R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = RLMensTotalb
            ParentFont = False
          end
          object RLMensTotdes: TRLLabel
            Left = 0
            Top = 35
            Width = 716
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Caption = 'Desconto: R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = RLMensTotalb
            ParentFont = False
          end
          object lbl_totout: TRLLabel
            Left = 0
            Top = 54
            Width = 716
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Caption = 'Outras Despesas: R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = RLMensTotalb
            ParentFont = False
          end
          object RLMensTotall: TRLLabel
            Left = 0
            Top = 73
            Width = 716
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Caption = 'Total Bruto: R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = RLMensTotalb
            ParentFont = False
          end
        end
      end
    end
    object tsRelatorio2: TTabSheet
      Caption = 'Relatorio 2'
      ImageIndex = 3
      object RLReport2: TRLReport
        Left = -3
        Top = -310
        Width = 794
        Height = 1123
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = DM2.Src_Cab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Margins.BottomMargin = 20.000000000000000000
        ShowProgress = False
        object rl_cabtit2: TRLBand
          Left = 39
          Top = 251
          Width = 716
          Height = 38
          AutoSize = True
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -30
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AfterPrint = rl_cabtitAfterPrint
          object lbl_cabchave2: TRLLabel
            Left = 488
            Top = 6
            Width = 228
            Height = 31
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CHAVE: 000212'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -25
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblObs2: TRLLabel
            Left = 2
            Top = 6
            Width = 478
            Height = 31
            Alignment = taCenter
            AutoSize = False
            Caption = 'OR'#199'AMENTO DE MERCADORIAS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -25
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLSubDetail3: TRLSubDetail
          Left = 39
          Top = 453
          Width = 716
          Height = 55
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataSource = DM2.Src_Cor
          BeforePrint = RLSubDetail1BeforePrint
          object RLGroup2: TRLGroup
            Left = 0
            Top = 0
            Width = 716
            Height = 36
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataFields = 'P2CODPRO'
            BeforePrint = RLGroup1BeforePrint
            object RLBand12: TRLBand
              Left = 0
              Top = 0
              Width = 716
              Height = 19
              BandType = btHeader
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              object RLLabel33: TRLLabel
                Left = 1
                Top = 0
                Width = 64
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'C'#243'digo'
              end
              object RLLabel34: TRLLabel
                Left = 65
                Top = 0
                Width = 58
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Qtde.'
              end
              object RLLabel35: TRLLabel
                Left = 122
                Top = 0
                Width = 30
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Und'
              end
              object RLCabNome2: TRLLabel
                Left = 220
                Top = 0
                Width = 248
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Descri'#231#227'o dos Produtos'
              end
              object RLCabMarca2: TRLLabel
                Left = 468
                Top = 0
                Width = 88
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Marca'
              end
              object RLLabel38: TRLLabel
                Left = 555
                Top = 0
                Width = 74
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'P'#231'o.Unit'#225'rio'
              end
              object RLLabel39: TRLLabel
                Left = 629
                Top = 0
                Width = 86
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Valor Total'
              end
              object RLLabel40: TRLLabel
                Left = 152
                Top = 0
                Width = 68
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Lote'
              end
            end
            object RLBand14: TRLBand
              Left = 0
              Top = 19
              Width = 716
              Height = 16
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              BeforePrint = RLBand4BeforePrint
              object RLDBText10: TRLDBText
                Left = 1
                Top = 1
                Width = 64
                Height = 13
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'P2CODPRO'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                SecondHolder = RLLabel33
              end
              object RLDBText11: TRLDBText
                Left = 65
                Top = 1
                Width = 58
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'P2QTD'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLLabel34
                ParentFont = False
              end
              object RLDBText12: TRLDBText
                Left = 122
                Top = 1
                Width = 30
                Height = 13
                Alignment = taCenter
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'PDUND'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLLabel35
                ParentFont = False
              end
              object RLNome2: TRLDBText
                Left = 220
                Top = 1
                Width = 248
                Height = 13
                AutoSize = False
                DataField = 'PDNOME'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLCabNome2
                ParentFont = False
              end
              object RLDBText14: TRLDBText
                Left = 555
                Top = 1
                Width = 74
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'P2PRECO'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLLabel38
                ParentFont = False
              end
              object RLDBText15: TRLDBText
                Left = 629
                Top = 1
                Width = 86
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'total'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLLabel39
                ParentFont = False
              end
              object RLDBText16: TRLDBText
                Left = 152
                Top = 1
                Width = 68
                Height = 13
                Alignment = taCenter
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'P2LOTE'
                DataSource = DM2.Src_Cor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                Holder = RLLabel40
                ParentFont = False
              end
              object RLMarca2: TRLDBMemo
                Left = 468
                Top = 0
                Width = 88
                Height = 14
                AutoSize = False
                DataField = 'PDMARCA'
                DataSource = DM2.Src_Cor
                Holder = RLCabMarca2
              end
            end
          end
        end
        object RLBand16: TRLBand
          Left = 39
          Top = 884
          Width = 716
          Height = 1
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          BeforePrint = RLBand6BeforePrint
          object RLLabel43: TRLLabel
            Left = 0
            Top = 0
            Width = 716
            Height = 7
            Align = faTop
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object rl_cablogo2: TRLBand
          Left = 39
          Top = 39
          Width = 716
          Height = 118
          BandType = btHeader
          BeforePrint = rl_cablogoBeforePrint
          object RLImage_cab2: TRLImage
            Left = 0
            Top = 0
            Width = 351
            Height = 117
            Stretch = True
          end
          object RLDBText17: TRLDBText
            Left = 352
            Top = 0
            Width = 362
            Height = 22
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLMemo1: TRLMemo
            Left = 352
            Top = 22
            Width = 362
            Height = 95
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLcabemp2: TRLBand
          Left = 39
          Top = 157
          Width = 716
          Height = 94
          BandType = btHeader
          object RLDBText18: TRLDBText
            Left = 0
            Top = 0
            Width = 716
            Height = 21
            Align = faTop
            Alignment = taCenter
            DataField = 'FANTASIA_CAB'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -18
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText22: TRLDBText
            Left = 0
            Top = 21
            Width = 716
            Height = 16
            Align = faTop
            Alignment = taCenter
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -14
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbl_cnpj_ie22: TRLLabel
            Left = 0
            Top = 37
            Width = 716
            Height = 16
            Align = faTop
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -14
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText23: TRLDBText
            Left = 0
            Top = 53
            Width = 716
            Height = 16
            Align = faTop
            Alignment = taCenter
            DataField = 'ender'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -14
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLMemo2: TRLMemo
            Left = 0
            Top = 69
            Width = 716
            Height = 16
            Align = faTop
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -14
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand22: TRLBand
          Left = 39
          Top = 289
          Width = 716
          Height = 164
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Degrade.OppositeColor = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLLabel52: TRLLabel
            Left = 2
            Top = 3
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Cliente.......'
          end
          object RLDBText25: TRLDBText
            Left = 160
            Top = 3
            Width = 553
            Height = 16
            AutoSize = False
            DataField = 'ecf_razao'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel53: TRLLabel
            Left = 2
            Top = 75
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'CPF/CNPJ..:'
          end
          object db_cnpj2: TRLDBText
            Left = 77
            Top = 75
            Width = 337
            Height = 16
            AutoSize = False
            DataField = 'ecf_cgc'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel54: TRLLabel
            Left = 2
            Top = 42
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Endere'#231'o...'
          end
          object db_ender2: TRLDBText
            Left = 77
            Top = 41
            Width = 338
            Height = 16
            AutoSize = False
            DataField = 'ender_completo'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel55: TRLLabel
            Left = 437
            Top = 40
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'Bairro.......'
          end
          object db_bairro2: TRLDBText
            Left = 505
            Top = 40
            Width = 206
            Height = 16
            AutoSize = False
            DataField = 'ecf_bairro'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel56: TRLLabel
            Left = 2
            Top = 57
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Cidade........'
          end
          object db_cidade2: TRLDBText
            Left = 77
            Top = 59
            Width = 337
            Height = 16
            AutoSize = False
            DataField = 'ecf_cidade'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel57: TRLLabel
            Left = 448
            Top = 60
            Width = 25
            Height = 16
            Caption = 'UF:'
          end
          object db_uf2: TRLDBText
            Left = 476
            Top = 60
            Width = 24
            Height = 16
            AutoSize = False
            DataField = 'ecf_uf'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel58: TRLLabel
            Left = 507
            Top = 58
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'CEP...........'
          end
          object db_cep2: TRLDBText
            Left = 575
            Top = 58
            Width = 116
            Height = 16
            AutoSize = False
            DataField = 'ecf_cep'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object db_ie2: TRLDBText
            Left = 505
            Top = 75
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'ecf_ie'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel59: TRLLabel
            Left = 437
            Top = 75
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'IE/RG.......'
          end
          object db_nomcon2: TRLDBText
            Left = 77
            Top = 94
            Width = 194
            Height = 16
            AutoSize = False
            DataField = 'CNOMCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel60: TRLLabel
            Left = 2
            Top = 94
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Contato......'
          end
          object db_fonecon2: TRLDBText
            Left = 337
            Top = 94
            Width = 166
            Height = 16
            AutoSize = False
            DataField = 'CFONCON'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object db_fone012: TRLDBText
            Left = 505
            Top = 94
            Width = 205
            Height = 16
            AutoSize = False
            DataField = 'CFONE01'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel61: TRLLabel
            Left = 2
            Top = 111
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Vendedor...'
          end
          object db_nomven2: TRLDBText
            Left = 77
            Top = 111
            Width = 273
            Height = 16
            AutoSize = False
            DataField = 'nomven'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel62: TRLLabel
            Left = 485
            Top = 111
            Width = 36
            Height = 16
            AutoSize = False
            Caption = 'Data:'
          end
          object db_datped2: TRLDBText
            Left = 524
            Top = 111
            Width = 93
            Height = 16
            AutoSize = False
            DataField = 'P1DATAP'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel63: TRLLabel
            Left = 625
            Top = 110
            Width = 31
            Height = 16
            AutoSize = False
            Caption = 'P'#225'g:'
          end
          object RLLabel64: TRLLabel
            Left = 677
            Top = 111
            Width = 10
            Height = 16
            AutoSize = False
            Caption = '/'
          end
          object db_pag2: TRLSystemInfo
            Left = 658
            Top = 111
            Width = 20
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itPageNumber
            ParentFont = False
          end
          object db_qtdpag2: TRLSystemInfo
            Left = 685
            Top = 111
            Width = 25
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itLastPageNumber
            ParentFont = False
          end
          object RLLabel65: TRLLabel
            Left = 297
            Top = 94
            Width = 37
            Height = 16
            Caption = 'Fone:'
          end
          object RLLabel66: TRLLabel
            Left = 4
            Top = 128
            Width = 110
            Height = 16
            AutoSize = False
            Caption = 'Prazo de Entrega:'
          end
          object db_prazoEnt2: TRLDBText
            Left = 116
            Top = 128
            Width = 248
            Height = 16
            AutoSize = False
            DataField = 'prazoent'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel67: TRLLabel
            Left = 388
            Top = 129
            Width = 132
            Height = 16
            AutoSize = False
            Caption = 'Validade da Proposta:'
          end
          object db_ValProposta2: TRLDBText
            Left = 524
            Top = 129
            Width = 185
            Height = 16
            AutoSize = False
            DataField = 'valpro'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object db_TipoFrete2: TRLDBText
            Left = 77
            Top = 147
            Width = 88
            Height = 16
            AutoSize = False
            DataField = 'frete_ciffob'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel68: TRLLabel
            Left = 3
            Top = 147
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'Frete...........'
          end
          object db_fantasia2: TRLDBText
            Left = 114
            Top = 21
            Width = 598
            Height = 16
            AutoSize = False
            DataField = 'ecf_fantasia'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel69: TRLLabel
            Left = 4
            Top = 21
            Width = 109
            Height = 16
            AutoSize = False
            Caption = 'Nome Fantasia..:'
          end
          object RLDBText42: TRLDBText
            Left = 77
            Top = 3
            Width = 81
            Height = 16
            AutoSize = False
            DataField = 'P1CODCLI'
            DataSource = DM2.Src_Cab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand23: TRLBand
          Left = 39
          Top = 508
          Width = 716
          Height = 163
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          BeforePrint = RLBand23BeforePrint
          object RLMensTotalb2: TRLLabel
            Left = 2
            Top = 2
            Width = 273
            Height = 16
            AutoSize = False
            Caption = 
              'Total Bruto.....................................................' +
              '.................'
          end
          object RLMensTotdes2: TRLLabel
            Left = 2
            Top = 19
            Width = 273
            Height = 15
            AutoSize = False
            Caption = 
              'Desconto........................................................' +
              '................'
          end
          object RLMensTotall2: TRLLabel
            Left = 357
            Top = 19
            Width = 276
            Height = 16
            AutoSize = False
            Caption = 
              'Total Liquido...................................................' +
              '.....................'
          end
          object RLLabel73: TRLLabel
            Left = 2
            Top = 82
            Width = 134
            Height = 16
            AutoSize = False
            Caption = 'Forma de Pagamento:'
          end
          object RLLabel74: TRLLabel
            Left = 3
            Top = 64
            Width = 134
            Height = 16
            AutoSize = False
            Caption = 'Plano de Vendas:'
          end
          object lbl_transportadora2: TRLLabel
            Left = 2
            Top = 101
            Width = 134
            Height = 16
            AutoSize = False
            Caption = 'Transportadora:'
            Visible = False
          end
          object lbl_totout2: TRLLabel
            Left = 1
            Top = 38
            Width = 274
            Height = 16
            AutoSize = False
            Caption = 
              'Total Outras Despesas...........................................' +
              '......'
          end
          object RLTotout2: TRLLabel
            Left = 275
            Top = 38
            Width = 82
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object RL_TOTALST2: TRLLabel
            Left = 357
            Top = 2
            Width = 276
            Height = 16
            AutoSize = False
            Caption = 'Total Valor de Substitui'#231#227'o Tributaria.......................'
          end
          object RLTotalb2: TRLLabel
            Left = 275
            Top = 2
            Width = 82
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object rlprazos2: TRLLabel
            Left = 141
            Top = 64
            Width = 456
            Height = 15
            AutoSize = False
            Caption = 'Prazos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlForma2: TRLLabel
            Left = 141
            Top = 83
            Width = 456
            Height = 15
            AutoSize = False
            Caption = 'Forma de Pagamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rltipo_frete2: TRLLabel
            Left = 141
            Top = 102
            Width = 46
            Height = 15
            AutoSize = False
            Caption = 'Tipo de Frete'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rl_nomefrete2: TRLLabel
            Left = 189
            Top = 101
            Width = 408
            Height = 15
            AutoSize = False
            Caption = 'Tipo de Frete'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLTotdes2: TRLLabel
            Left = 275
            Top = 19
            Width = 82
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
          end
          object RLTotST2: TRLLabel
            Left = 633
            Top = 2
            Width = 82
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object RLTotall2: TRLLabel
            Left = 633
            Top = 19
            Width = 82
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
        end
        object rl_rodOrcCiente2: TRLBand
          Left = 39
          Top = 671
          Width = 716
          Height = 213
          BandType = btSummary
          BeforePrint = rl_rodOrcCienteBeforePrint
          object RLLabel87: TRLLabel
            Left = 3
            Top = 23
            Width = 313
            Height = 16
            AutoSize = False
            Caption = '____________________________________________'
          end
          object RLDBText43: TRLDBText
            Left = 3
            Top = 40
            Width = 314
            Height = 22
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel88: TRLLabel
            Left = 404
            Top = 24
            Width = 313
            Height = 16
            AutoSize = False
            Caption = '____________________________________________'
          end
          object RLLabel89: TRLLabel
            Left = 403
            Top = 68
            Width = 71
            Height = 16
            AutoSize = False
            Caption = 'de Acordo:'
          end
          object RLLabel90: TRLLabel
            Left = 403
            Top = 86
            Width = 82
            Height = 16
            AutoSize = False
            Caption = 'Local e Data:'
          end
          object RLLabel91: TRLLabel
            Left = 487
            Top = 86
            Width = 226
            Height = 16
            AutoSize = False
            Caption = '____________________________________________'
          end
          object RLLabel92: TRLLabel
            Left = 402
            Top = 105
            Width = 315
            Height = 16
            AutoSize = False
            Caption = 'Obs: O de acordo dar'#225' a mesma  for'#231'a de pedido.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel93: TRLLabel
            Left = 404
            Top = 41
            Width = 318
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand25: TRLBand
          Left = 39
          Top = 885
          Width = 716
          Height = 16
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLSystemInfo5: TRLSystemInfo
            Left = 643
            Top = 0
            Width = 73
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Info = itHour
            ParentFont = False
          end
          object RLLabel94: TRLLabel
            Left = 634
            Top = 0
            Width = 6
            Height = 14
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo6: TRLSystemInfo
            Left = 558
            Top = 0
            Width = 75
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel95: TRLLabel
            Left = 150
            Top = 1
            Width = 394
            Height = 14
            Caption = 
              #169'Intersys - Sistemas de Gest'#227'o Empresarial - (62) 3247 - 1560 /(' +
              '62) 3247 - 1580'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
  end
  object Matricial: TRLDraftFilter
    Left = 456
    Top = 15
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 488
    Top = 18
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 525
    Top = 18
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 564
    Top = 19
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    ShowProgress = False
    Left = 602
    Top = 18
  end
end

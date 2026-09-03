object Frm_Min2: TFrm_Min2
  Left = 268
  Top = 174
  Width = 815
  Height = 446
  Caption = 'Minuta de Entrega de Mercadorias'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object panel_dig: TPanel
    Left = 0
    Top = 0
    Width = 702
    Height = 415
    Align = alClient
    TabOrder = 0
    object panel_rodape: TPanel
      Left = 1
      Top = 387
      Width = 700
      Height = 27
      Align = alBottom
      TabOrder = 2
      object DBNavigator1: TDBNavigator
        Left = 6
        Top = 2
        Width = 224
        Height = 21
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 0
      end
      object bbItens_Alterar: TBitBtn
        Left = 230
        Top = 2
        Width = 110
        Height = 21
        Caption = 'Altera&r Itens'
        TabOrder = 1
        OnClick = bbItens_AlterarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
          333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
          C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
          F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
          F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
          00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
          3333333373FF7333333333333000333333333333377733333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object bbItens_excluir: TBitBtn
        Left = 341
        Top = 2
        Width = 110
        Height = 21
        Hint = 'Excluir Pedidos ja existentes'
        Caption = 'E&xcluir Itens'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = bbItens_excluirClick
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
      object bbItens_Cancelar: TBitBtn
        Left = 452
        Top = 2
        Width = 110
        Height = 21
        Hint = 'Limpa a tela CANCELANDO a opera'#231#227'o atual'
        Caption = '&Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = bbItens_CancelarClick
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
    end
    object dbgriditens: TDBGrid
      Left = 1
      Top = 288
      Width = 700
      Height = 99
      Hint = 
        'Para alterar tecle [ENTER] ou de um click DUPLO - Para Excluir P' +
        'ressione [CTRL]+[DEL]'
      Align = alBottom
      Ctl3D = False
      DataSource = Src_Min2
      Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      ParentCtl3D = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = dbgriditensEnter
      OnExit = dbgriditensExit
      OnKeyDown = dbgriditensKeyDown
      OnKeyPress = dbgriditensKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CM2NUMERO'
          Title.Alignment = taCenter
          Title.Color = 12582911
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMCLI'
          Title.Alignment = taCenter
          Title.Color = 12582911
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 204
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2QTDVOL'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Color = 12582911
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2PESOB'
          Title.Alignment = taCenter
          Title.Color = 12582911
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2PESOL'
          Title.Alignment = taCenter
          Title.Color = 12582911
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2VALOR'
          Title.Alignment = taCenter
          Title.Color = 12582911
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2VALFRE'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2QTDUND'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2QTDITENS'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2TIPOPED'
          Width = 26
          Visible = True
        end>
    end
    object panel_cabitens: TPanel
      Left = 1
      Top = 241
      Width = 700
      Height = 47
      Align = alBottom
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object MIN02_PED_CODEMP: TEdit
        Left = 0
        Top = 29
        Width = 32
        Height = 19
        Hint = 'Digite a Chave do Pedido. Para Consultar Pressione <F3>'
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        Visible = False
        OnEnter = MIN02_PED_CODEMPEnter
        OnExit = MIN02_PED_CODEMPExit
      end
      object st_codemp: TStaticText
        Left = 0
        Top = 0
        Width = 32
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'C'#243'd Emp'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        Visible = False
      end
      object st_chave: TStaticText
        Left = 0
        Top = 0
        Width = 79
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Chave &Pedido'
        Color = 16769505
        FocusControl = MIN02_CHAVEPED
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object st_razao: TStaticText
        Left = 78
        Top = 0
        Width = 206
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Raz'#227'o Social'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
      end
      object st_pesob: TStaticText
        Left = 328
        Top = 0
        Width = 60
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Peso Bruto'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 2
      end
      object st_vlrtot: TStaticText
        Left = 446
        Top = 0
        Width = 60
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = ' Valor Total'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 4
      end
      object st_fretecalc: TStaticText
        Left = 387
        Top = 0
        Width = 60
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Peso Liquido'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 5
      end
      object st_qtduni: TStaticText
        Left = 564
        Top = 0
        Width = 37
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Qtd Und'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 6
      end
      object st_tipoent: TStaticText
        Left = 706
        Top = 2
        Width = 57
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Tipo Entrega'
        Color = 16769505
        ParentColor = False
        TabOrder = 7
      end
      object MIN02_CHAVEPED: TEdit
        Left = 0
        Top = 29
        Width = 79
        Height = 19
        Hint = 'Digite a Chave do Pedido. Para Consultar Pressione <F3>'
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnEnter = MIN02_CHAVEPEDEnter
        OnExit = MIN02_CHAVEPEDExit
        OnKeyDown = MIN02_CHAVEPEDKeyDown
      end
      object MIN02_RAZSOC: TEdit
        Left = 78
        Top = 29
        Width = 206
        Height = 19
        Color = 16755413
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
      end
      object MIN02_PESOB: TEdit
        Left = 328
        Top = 29
        Width = 60
        Height = 19
        Color = 16755413
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
      end
      object MIN02_QTDVOL: TEdit
        Left = 283
        Top = 29
        Width = 46
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
        OnEnter = MIN02_QTDVOLEnter
        OnExit = MIN02_QTDVOLExit
      end
      object MIN02_VLRTOT: TEdit
        Left = 446
        Top = 29
        Width = 60
        Height = 19
        Color = 16755413
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 13
      end
      object MIN02_VALFRE: TEdit
        Left = 505
        Top = 29
        Width = 60
        Height = 19
        Color = 16755413
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 14
      end
      object MIN02_QTDUND: TEdit
        Left = 564
        Top = 29
        Width = 37
        Height = 19
        Color = 16755413
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 15
      end
      object C02_TIPO_ENT: TEdit
        Left = 706
        Top = 31
        Width = 57
        Height = 19
        Hint = 'Tipo da Entrega'#13#10'P-Parcial T-Total'
        CharCase = ecUpperCase
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 16
      end
      object st_qtdvol: TStaticText
        Left = 283
        Top = 0
        Width = 46
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Qtd. Vol.'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 17
      end
      object st_qtditens: TStaticText
        Left = 600
        Top = 0
        Width = 36
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Qtd Itens'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 18
      end
      object StaticText1: TStaticText
        Left = 505
        Top = 0
        Width = 60
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Valor do Frete'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 19
      end
      object MIN02_PESOL: TEdit
        Left = 387
        Top = 29
        Width = 60
        Height = 19
        Color = 16755413
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 20
      end
      object MIN02_QTDITENS: TEdit
        Left = 600
        Top = 29
        Width = 36
        Height = 19
        Color = 16755413
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 21
      end
      object ST_TPPED: TStaticText
        Left = 635
        Top = 0
        Width = 28
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Tp Vda'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 22
      end
      object MIN02_TPPED: TEdit
        Left = 635
        Top = 29
        Width = 28
        Height = 19
        Color = 16755413
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 23
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 700
      Height = 212
      ActivePage = tsDadosMinuta
      Align = alTop
      TabOrder = 3
      object tsDadosMinuta: TTabSheet
        Caption = 'Dados Minutas'
        object panel_cabec: TPanel
          Left = 0
          Top = 0
          Width = 692
          Height = 169
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 8
            Top = 6
            Width = 189
            Height = 13
            Caption = 'Chave......................................'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 213
            Top = 5
            Width = 48
            Height = 13
            Caption = 'Data.....'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 9
            Top = 43
            Width = 147
            Height = 13
            Caption = 'Nome do Motorista..........'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 9
            Top = 60
            Width = 188
            Height = 13
            Caption = 'CPF.........................................'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 8
            Top = 79
            Width = 157
            Height = 13
            Caption = 'Identidade........................'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 9
            Top = 25
            Width = 177
            Height = 13
            Caption = 'C'#243'd.Entreg/Transp.................'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 9
            Top = 97
            Width = 143
            Height = 13
            Caption = 'Veiculo.........................'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 454
            Top = 95
            Width = 49
            Height = 13
            Caption = 'Placa...:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 10
            Top = 115
            Width = 144
            Height = 13
            Caption = 'Data Saida....................'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 273
            Top = 113
            Width = 14
            Height = 13
            Caption = 'as'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbnBuscarPend: TSpeedButton
            Left = 586
            Top = 38
            Width = 94
            Height = 55
            Caption = 'Buscar Pendentes'
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
            Layout = blGlyphTop
            NumGlyphs = 2
            OnClick = sbnBuscarPendClick
          end
          object Label8: TLabel
            Left = 454
            Top = 114
            Width = 49
            Height = 13
            Caption = 'km.......:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 10
            Top = 133
            Width = 158
            Height = 13
            Caption = 'Data Chegada...................'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 273
            Top = 131
            Width = 14
            Height = 13
            Caption = 'as'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 454
            Top = 132
            Width = 49
            Height = 13
            Caption = 'km.......:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 9
            Top = 152
            Width = 171
            Height = 13
            Caption = 'N'#250'mero de S'#233'rie...................'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 384
            Top = 150
            Width = 119
            Height = 13
            Caption = 'Temperatura oC......:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_posdata: TLabel
            Left = 597
            Top = 123
            Width = 64
            Height = 13
            Caption = 'Posi'#231#227'o Data'
            Visible = False
          end
          object CHAVE: TEdit
            Left = 151
            Top = 2
            Width = 56
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnExit = CHAVEExit
          end
          object MDATA: TMaskEdit
            Left = 256
            Top = 2
            Width = 84
            Height = 19
            Ctl3D = False
            EditMask = '!99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 1
            Text = '  /  /    '
            OnExit = MDATAExit
          end
          object NOMENT: TEdit
            Left = 151
            Top = 38
            Width = 434
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            OnEnter = NOMENTEnter
            OnExit = NOMENTExit
          end
          object CNPF: TEdit
            Left = 151
            Top = 56
            Width = 434
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
            OnEnter = CNPFEnter
            OnExit = CNPFExit
          end
          object RG: TEdit
            Left = 151
            Top = 74
            Width = 434
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 6
            OnEnter = RGEnter
            OnExit = RGExit
          end
          object CODTRA: TEdit
            Left = 151
            Top = 20
            Width = 56
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            OnEnter = CODTRAEnter
            OnExit = CODTRAExit
            OnKeyPress = CODTRAKeyPress
          end
          object NOMTRA: TEdit
            Left = 206
            Top = 20
            Width = 379
            Height = 19
            Color = 10485711
            Ctl3D = False
            Enabled = False
            ParentCtl3D = False
            TabOrder = 7
          end
          object edt_veiculo: TEdit
            Left = 151
            Top = 92
            Width = 210
            Height = 19
            Ctl3D = False
            MaxLength = 100
            ParentCtl3D = False
            TabOrder = 8
          end
          object edt_veiculo_placa: TEdit
            Left = 514
            Top = 92
            Width = 71
            Height = 19
            Ctl3D = False
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 9
          end
          object edt_dat_saida: TMaskEdit
            Left = 151
            Top = 110
            Width = 84
            Height = 19
            Ctl3D = False
            EditMask = '!99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 10
            Text = '  /  /    '
            OnExit = edt_dat_saidaExit
          end
          object CB_BLOQ: TCheckBox
            Left = 448
            Top = 3
            Width = 97
            Height = 17
            Caption = 'Bloquear Duplicadas'
            Checked = True
            State = cbChecked
            TabOrder = 2
            Visible = False
          end
          object edt_km_saida: TEdit
            Left = 514
            Top = 110
            Width = 71
            Height = 19
            Ctl3D = False
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 12
            OnExit = edt_km_saidaExit
          end
          object edt_dat_chegada: TMaskEdit
            Left = 151
            Top = 128
            Width = 84
            Height = 19
            Ctl3D = False
            EditMask = '!99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 13
            Text = '  /  /    '
            OnExit = edt_dat_chegadaExit
          end
          object edt_km_chegada: TEdit
            Left = 514
            Top = 128
            Width = 71
            Height = 19
            Ctl3D = False
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 15
            OnExit = edt_km_chegadaExit
          end
          object edt_hor_chegada: TMaskEdit
            Left = 293
            Top = 128
            Width = 69
            Height = 19
            Ctl3D = False
            EditMask = '!90:00;1; '
            MaxLength = 5
            ParentCtl3D = False
            TabOrder = 14
            Text = '  :  '
            OnExit = edt_hor_chegadaExit
          end
          object edt_hor_saida: TMaskEdit
            Left = 293
            Top = 110
            Width = 69
            Height = 19
            Ctl3D = False
            EditMask = '!90:00;1; '
            MaxLength = 5
            ParentCtl3D = False
            TabOrder = 11
            Text = '  :  '
            OnExit = edt_hor_saidaExit
          end
          object edt_numserie: TEdit
            Left = 151
            Top = 146
            Width = 145
            Height = 19
            Ctl3D = False
            MaxLength = 20
            ParentCtl3D = False
            TabOrder = 16
          end
          object edt_temp: TEdit
            Left = 514
            Top = 146
            Width = 71
            Height = 19
            Ctl3D = False
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 17
            OnExit = edt_tempExit
          end
          object edt_posdata: TEdit
            Left = 599
            Top = 141
            Width = 65
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 18
            Text = '90'
            Visible = False
          end
        end
      end
      object tsCheckList: TTabSheet
        Caption = 'Check List de Expedi'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ImageIndex = 1
        ParentFont = False
        object lbl_tempamb: TLabel
          Left = 6
          Top = 9
          Width = 566
          Height = 13
          Caption = 
            'A Temperatura ambiente e a unidade do compartimento de carga de ' +
            'veiculo esta em conformidade?'
        end
        object lbl_veiculo_cond_limpeza: TLabel
          Left = 7
          Top = 35
          Width = 384
          Height = 13
          Caption = 'O Ve'#237'culo de transporte est'#225' em condi'#231#245'es adequadas de limpeza?'
        end
        object lbl_recipiente_lacrados: TLabel
          Left = 6
          Top = 58
          Width = 289
          Height = 13
          Caption = 'Todos os recipientes est'#227'o devidamente lacrados?'
        end
        object lbl_dados_prod_condiz_nf: TLabel
          Left = 6
          Top = 82
          Width = 533
          Height = 13
          Caption = 
            'Os dados do produto contida na  Nota Fiscal condiz com as inform' +
            'a'#231#245'es f'#237'sicas dos mesmos?'
        end
        object lbl_recipiente_nao_ident: TLabel
          Left = 5
          Top = 106
          Width = 400
          Height = 13
          Caption = 
            'Existem recipientes n'#227'o identificados ou incorretamente identifi' +
            'cados?'
        end
        object lbl_recipente_danificado: TLabel
          Left = 5
          Top = 129
          Width = 578
          Height = 29
          AutoSize = False
          Caption = 
            'Existe algum recipiente danificado, amassado ou alguma avaria qu' +
            'e possa de alguma forma afetar a qualidade e integridade do prod' +
            'uto recebido?'
          WordWrap = True
        end
        object cb_tempamb: TComboBox
          Left = 580
          Top = 8
          Width = 52
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 0
          Text = 'N'#227'o'
          Items.Strings = (
            'N'#227'o'
            'Sim')
        end
        object cb_veiculo_cond_limpeza: TComboBox
          Left = 580
          Top = 32
          Width = 52
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = 'N'#227'o'
          Items.Strings = (
            'N'#227'o'
            'Sim')
        end
        object cb_recipiente_lacrados: TComboBox
          Left = 580
          Top = 56
          Width = 52
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 2
          Text = 'N'#227'o'
          Items.Strings = (
            'N'#227'o'
            'Sim')
        end
        object cb_dados_prod_condiz_nf: TComboBox
          Left = 580
          Top = 80
          Width = 52
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 3
          Text = 'N'#227'o'
          Items.Strings = (
            'N'#227'o'
            'Sim')
        end
        object cb_recipiente_nao_ident: TComboBox
          Left = 580
          Top = 103
          Width = 52
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 4
          Text = 'N'#227'o'
          Items.Strings = (
            'N'#227'o'
            'Sim')
        end
        object cb_recipente_danificado: TComboBox
          Left = 580
          Top = 126
          Width = 52
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 5
          Text = 'N'#227'o'
          Items.Strings = (
            'N'#227'o'
            'Sim')
        end
      end
    end
  end
  object panel_butoes: TPanel
    Left = 702
    Top = 0
    Width = 105
    Height = 415
    Align = alRight
    TabOrder = 1
    object BBINCLUIR: TBitBtn
      Left = 0
      Top = 4
      Width = 101
      Height = 40
      Hint = 'Inclus'#227'o de Novos Pedidos'
      Caption = '&Incluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BBINCLUIRClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BBLOCALIZAR: TBitBtn
      Left = 2
      Top = 44
      Width = 101
      Height = 40
      Caption = '&Localizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BBLOCALIZARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337FF3333333333330003333333333333777F333333333333080333
        3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
        33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
        B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
        BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
        B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
        3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
        333333333337F33333333333333B333333333333333733333333}
      NumGlyphs = 2
    end
    object BBALTERAR: TBitBtn
      Left = 2
      Top = 84
      Width = 101
      Height = 40
      Caption = '&Alterar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BBALTERARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
        333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
        C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
        F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
        F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
        00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
        3333333373FF7333333333333000333333333333377733333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BBEXCLUIR: TBitBtn
      Left = 2
      Top = 124
      Width = 101
      Height = 40
      Hint = 'Excluir Pedidos ja existentes'
      Caption = '&Excluir'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TabStop = False
      OnClick = BBEXCLUIRClick
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
    object BBGRAVAR: TBitBtn
      Left = 2
      Top = 164
      Width = 101
      Height = 40
      Hint = 'Gravar pedido que esta sendo editado'
      Caption = '&Gravar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      TabStop = False
      OnClick = BBGRAVARClick
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
    object BBLIMPAR: TBitBtn
      Left = 2
      Top = 205
      Width = 101
      Height = 40
      Hint = 'Limpa a tela CANCELANDO a opera'#231#227'o atual'
      Caption = '&Limpar Tela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      TabStop = False
      OnClick = BBLIMPARClick
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
    object BBIMPRIMIR: TBitBtn
      Left = 2
      Top = 245
      Width = 101
      Height = 40
      Hint = 'Imprimir Pedido'
      Caption = '&Imprimir'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = BBIMPRIMIRClick
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
    object BBSAIR: TBitBtn
      Left = 2
      Top = 286
      Width = 101
      Height = 40
      Hint = 'Sair desta op'#231#227'o'
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      TabStop = False
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
    object RG_TIPOREL: TRadioGroup
      Left = 2
      Top = 325
      Width = 100
      Height = 52
      Caption = 'Tipo de Relat'#243'rio'
      ItemIndex = 0
      Items.Strings = (
        'Modelo 01'
        'Modelo 02'
        'Modelo 03')
      TabOrder = 8
    end
    object bbSalvarPadrao: TBitBtn
      Left = 1
      Top = 378
      Width = 101
      Height = 30
      Hint = 'Click aqui para salvar o modelo do relatorio  como padr'#227'o'
      Caption = 'Salvar Padr'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = bbSalvarPadraoClick
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
  end
  object Tb_Min2: TQuery
    CachedUpdates = True
    AfterInsert = Tb_Min2AfterInsert
    BeforeDelete = Tb_Min2BeforeDelete
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT CM2CODEMP'
      ',CM2LOTSEQ'
      ',CM2CODMIN'
      ',CM2SEQ'
      ',CM2TIPO'
      ',CM2LOTSEQ_CP'
      ',CM2NUMERO'
      ',CM2CLIFOR'
      ',CM2CODIGO'
      ',CM2TIPDOC'
      ',CM2NUMDOC'
      ',CM2QTDVOL'
      ',CM2PESOB'
      ',CM2PESOL'
      ',CM2VALOR'
      ',CM2OBS01'
      ',CM2OBS02'
      ',CM2OBS03'
      ',CM2DTCONF'
      ',CM2USRCONF'
      ',CM2PED_CODEMP'
      ',CM2QTDITENS'
      ',CM2QTDUND'
      ',CM2TIPOPED'
      ',CM2CODCLI'
      ',CM2VALFRE'
      ',CM2QTDPAG'
      ',CM2QTDTIT'
      ',CM2CODBCO'
      ',CM2DATANF'
      ',CRAZAO AS NOMCLI'
      ',CCIDADE'
      ',CUF'
      ',CFONE01'
      ' from CADMIN2, CADCLI'
      'where CM2CODEMP=0'
      'AND CM2LOTSEQ=0'
      'AND CM2CODMIN=0'
      'AND CCODCLI=CM2CODCLI')
    UpdateObject = U_MIn2
    Left = 372
    Top = 65535
    object Tb_Min2CM2CODEMP: TFloatField
      FieldName = 'CM2CODEMP'
      Origin = 'SG_ASSOC.CADMIN2.CM2CODEMP'
    end
    object Tb_Min2CM2CODMIN: TFloatField
      FieldName = 'CM2CODMIN'
      Origin = 'SG_ASSOC.CADMIN2.CM2CODMIN'
    end
    object Tb_Min2CM2SEQ: TFloatField
      FieldName = 'CM2SEQ'
      Origin = 'SG_ASSOC.CADMIN2.CM2SEQ'
    end
    object Tb_Min2CM2TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'CM2TIPO'
      Origin = 'SG_ASSOC.CADMIN2.CM2TIPO'
      Size = 2
    end
    object Tb_Min2CM2NUMERO: TFloatField
      DisplayLabel = 'Numero'
      FieldName = 'CM2NUMERO'
      Origin = 'SG_ASSOC.CADMIN2.CM2NUMERO'
    end
    object Tb_Min2CM2VALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CM2VALOR'
      Origin = 'SG_ASSOC.CADMIN2.CM2VALOR'
    end
    object Tb_Min2CM2DTCONF: TDateTimeField
      FieldName = 'CM2DTCONF'
      Origin = 'SG_ASSOC.CADMIN2.CM2DTCONF'
    end
    object Tb_Min2CM2USRCONF: TFloatField
      FieldName = 'CM2USRCONF'
      Origin = 'SG_ASSOC.CADMIN2.CM2USRCONF'
    end
    object Tb_Min2CM2CLIFOR: TStringField
      FieldName = 'CM2CLIFOR'
      Origin = 'SG_ASSOC.CADMIN2.CM2CLIFOR'
      Size = 2
    end
    object Tb_Min2CM2CODIGO: TFloatField
      FieldName = 'CM2CODIGO'
      Origin = 'SG_ASSOC.CADMIN2.CM2CODIGO'
    end
    object Tb_Min2CM2TIPDOC: TStringField
      FieldName = 'CM2TIPDOC'
      Origin = 'SG_ASSOC.CADMIN2.CM2TIPDOC'
      Size = 2
    end
    object Tb_Min2CM2NUMDOC: TFloatField
      FieldName = 'CM2NUMDOC'
      Origin = 'SG_ASSOC.CADMIN2.CM2NUMDOC'
    end
    object Tb_Min2CM2OBS01: TStringField
      FieldName = 'CM2OBS01'
      Origin = 'SG_ASSOC.CADMIN2.CM2OBS01'
      Size = 60
    end
    object Tb_Min2CM2OBS02: TStringField
      FieldName = 'CM2OBS02'
      Origin = 'SG_ASSOC.CADMIN2.CM2OBS02'
      Size = 60
    end
    object Tb_Min2CM2OBS03: TStringField
      FieldName = 'CM2OBS03'
      Origin = 'SG_ASSOC.CADMIN2.CM2OBS03'
      Size = 60
    end
    object Tb_Min2CM2LOTSEQ: TFloatField
      FieldName = 'CM2LOTSEQ'
      Origin = 'SG_ASSOC.CADMIN2.CM2LOTSEQ'
    end
    object Tb_Min2CM2LOTSEQ_CP: TFloatField
      FieldName = 'CM2LOTSEQ_CP'
      Origin = 'SG_ASSOC.CADMIN2.CM2LOTSEQ_CP'
    end
    object Tb_Min2CM2QTDVOL: TFloatField
      DisplayLabel = 'Qtd.Vol'
      FieldName = 'CM2QTDVOL'
      Origin = 'SG_ASSOC.CADMIN2.CM2QTDVOL'
      DisplayFormat = '###'
    end
    object Tb_Min2CM2PESOB: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'CM2PESOB'
      Origin = 'SG_ASSOC.CADMIN2.CM2PESOB'
      DisplayFormat = '###0.000'
    end
    object Tb_Min2CM2PESOL: TFloatField
      DisplayLabel = 'Peso L'#237'q'
      FieldName = 'CM2PESOL'
      Origin = 'SG_ASSOC.CADMIN2.CM2PESOL'
      DisplayFormat = '##0.000'
    end
    object Tb_Min2CM2PED_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CM2PED_CODEMP'
      Origin = 'SG_ASSOC.CADMIN2.CM2PED_CODEMP'
    end
    object Tb_Min2CM2QTDITENS: TFloatField
      FieldName = 'CM2QTDITENS'
      Origin = 'SG_ASSOC.CADMIN2.CM2QTDITENS'
    end
    object Tb_Min2CM2QTDUND: TFloatField
      FieldName = 'CM2QTDUND'
      Origin = 'SG_ASSOC.CADMIN2.CM2QTDUND'
    end
    object Tb_Min2CM2TIPOPED: TFloatField
      FieldName = 'CM2TIPOPED'
      Origin = 'SG_ASSOC.CADMIN2.CM2TIPOPED'
    end
    object Tb_Min2CM2CODCLI: TFloatField
      FieldName = 'CM2CODCLI'
      Origin = 'SG_ASSOC.CADMIN2.CM2CODCLI'
    end
    object Tb_Min2CM2VALFRE: TFloatField
      FieldName = 'CM2VALFRE'
      Origin = 'SG_ASSOC.CADMIN2.CM2VALFRE'
    end
    object Tb_Min2NOMCLI: TStringField
      FieldName = 'NOMCLI'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Tb_Min2CM2QTDPAG: TFloatField
      FieldName = 'CM2QTDPAG'
      Origin = 'SG_ASSOC.CADMIN2.CM2QTDPAG'
    end
    object Tb_Min2CM2CODBCO: TFloatField
      FieldName = 'CM2CODBCO'
      Origin = 'SG_ASSOC.CADMIN2.CM2CODBCO'
    end
    object Tb_Min2CM2DATANF: TDateTimeField
      FieldName = 'CM2DATANF'
      Origin = 'SG_ASSOC.CADMIN2.CM2DATANF'
    end
    object Tb_Min2CCIDADE: TStringField
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Tb_Min2CUF: TStringField
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Tb_Min2CFONE01: TStringField
      FieldName = 'CFONE01'
      Origin = 'SG_ASSOC.CADCLI.CFONE01'
      Size = 16
    end
    object Tb_Min2CM2QTDTIT: TFloatField
      FieldName = 'CM2QTDTIT'
      Origin = 'SG_ASSOC.CADMIN2.CM2QTDTIT'
    end
  end
  object Src_Min2: TDataSource
    DataSet = Tb_Min2
    Left = 404
    Top = 1
  end
  object U_MIn2: TUpdateSQL
    ModifySQL.Strings = (
      'update CADMIN2'
      'set'
      '  CM2CODEMP = :CM2CODEMP,'
      '  CM2LOTSEQ = :CM2LOTSEQ,'
      '  CM2CODMIN = :CM2CODMIN,'
      '  CM2SEQ = :CM2SEQ,'
      '  CM2TIPO = :CM2TIPO,'
      '  CM2LOTSEQ_CP = :CM2LOTSEQ_CP,'
      '  CM2NUMERO = :CM2NUMERO,'
      '  CM2CLIFOR = :CM2CLIFOR,'
      '  CM2CODIGO = :CM2CODIGO,'
      '  CM2TIPDOC = :CM2TIPDOC,'
      '  CM2NUMDOC = :CM2NUMDOC,'
      '  CM2QTDVOL = :CM2QTDVOL,'
      '  CM2PESOB = :CM2PESOB,'
      '  CM2PESOL = :CM2PESOL,'
      '  CM2VALOR = :CM2VALOR,'
      '  CM2OBS01 = :CM2OBS01,'
      '  CM2OBS02 = :CM2OBS02,'
      '  CM2OBS03 = :CM2OBS03,'
      '  CM2DTCONF = :CM2DTCONF,'
      '  CM2USRCONF = :CM2USRCONF,'
      '  CM2PED_CODEMP = :CM2PED_CODEMP,'
      '  CM2QTDITENS = :CM2QTDITENS,'
      '  CM2QTDUND = :CM2QTDUND,'
      '  CM2TIPOPED = :CM2TIPOPED,'
      '  CM2CODCLI = :CM2CODCLI,'
      '  CM2VALFRE = :CM2VALFRE,'
      '  CM2QTDPAG = :CM2QTDPAG,'
      '  CM2QTDTIT = :CM2QTDTIT,'
      '  CM2CODBCO = :CM2CODBCO,'
      '  CM2DATANF = :CM2DATANF,'
      '  NOMCLI = :NOMCLI'
      'where'
      '  CM2CODEMP = :OLD_CM2CODEMP and'
      '  CM2CODMIN = :OLD_CM2CODMIN and'
      '  CM2SEQ = :OLD_CM2SEQ')
    InsertSQL.Strings = (
      'insert into CADMIN2'
      '  (CM2CODEMP, CM2LOTSEQ, CM2CODMIN, CM2SEQ, CM2TIPO, '
      'CM2LOTSEQ_CP, CM2NUMERO, '
      '   CM2CLIFOR, CM2CODIGO, CM2TIPDOC, CM2NUMDOC, CM2QTDVOL, '
      'CM2PESOB, CM2PESOL, '
      
        '   CM2VALOR, CM2OBS01, CM2OBS02, CM2OBS03, CM2DTCONF, CM2USRCONF' +
        ', '
      'CM2PED_CODEMP, '
      '   CM2QTDITENS, CM2QTDUND, CM2TIPOPED, CM2CODCLI, CM2VALFRE, '
      'CM2QTDPAG, '
      '   CM2QTDTIT, CM2CODBCO, CM2DATANF, NOMCLI)'
      'values'
      '  (:CM2CODEMP, :CM2LOTSEQ, :CM2CODMIN, :CM2SEQ, :CM2TIPO, '
      ':CM2LOTSEQ_CP, '
      '   :CM2NUMERO, :CM2CLIFOR, :CM2CODIGO, :CM2TIPDOC, :CM2NUMDOC, '
      ':CM2QTDVOL, '
      
        '   :CM2PESOB, :CM2PESOL, :CM2VALOR, :CM2OBS01, :CM2OBS02, :CM2OB' +
        'S03, '
      ':CM2DTCONF, '
      '   :CM2USRCONF, :CM2PED_CODEMP, :CM2QTDITENS, :CM2QTDUND, '
      ':CM2TIPOPED, '
      '   :CM2CODCLI, :CM2VALFRE, :CM2QTDPAG, :CM2QTDTIT, :CM2CODBCO, '
      ':CM2DATANF, '
      '   :NOMCLI)')
    DeleteSQL.Strings = (
      'delete from CADMIN2'
      'where'
      '  CM2CODEMP = :OLD_CM2CODEMP and'
      '  CM2CODMIN = :OLD_CM2CODMIN and'
      '  CM2SEQ = :OLD_CM2SEQ')
    Left = 436
    Top = 1
  end
end

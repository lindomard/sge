object Frm_ComRV: TFrm_ComRV
  Left = 23
  Top = 87
  Width = 800
  Height = 552
  Caption = 'Relat'#243'rios de comiss'#245'es dos vendedores'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 784
    Height = 463
    ActivePage = TabSheet1
    Align = alClient
    MultiLine = True
    TabOrder = 0
    TabPosition = tpLeft
    object TabSheet1: TTabSheet
      Caption = 'Comiss'#227'o do Recebimento'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 675
        Height = 455
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 0
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 673
          Height = 156
          Align = alTop
          Enabled = False
          TabOrder = 0
          object Label1: TLabel
            Left = 8
            Top = 8
            Width = 165
            Height = 13
            Caption = 'N'#250'mero do lote de comissao:'
          end
          object Label2: TLabel
            Left = 377
            Top = 8
            Width = 32
            Height = 13
            Caption = 'Data:'
          end
          object Label3: TLabel
            Left = 104
            Top = 80
            Width = 66
            Height = 13
            Caption = 'Descri'#231#227'o.:'
          end
          object lbl_nome: TLabel
            Left = 53
            Top = 27
            Width = 120
            Height = 13
            Caption = 'C'#243'digo do Vendedor:'
          end
          object Label15: TLabel
            Left = 27
            Top = 43
            Width = 146
            Height = 13
            Caption = 'Referente ao Per'#237'odo de:'
          end
          object Label16: TLabel
            Left = 275
            Top = 43
            Width = 8
            Height = 13
            Caption = #224
          end
          object Label18: TLabel
            Left = 33
            Top = 62
            Width = 140
            Height = 13
            Caption = 'Percentual de comiss'#227'o:'
          end
          object Label30: TLabel
            Left = 398
            Top = 45
            Width = 100
            Height = 13
            Caption = 'Data p/Pesquisa:'
          end
          object NUMLOT: TEdit
            Left = 173
            Top = 5
            Width = 84
            Height = 19
            Ctl3D = False
            Enabled = False
            ParentCtl3D = False
            TabOrder = 0
          end
          object MDATA: TMaskEdit
            Left = 411
            Top = 6
            Width = 85
            Height = 19
            Ctl3D = False
            EditMask = '!99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 1
            Text = '  /  /    '
            OnExit = MDATAExit
          end
          object OBS1: TEdit
            Left = 173
            Top = 77
            Width = 333
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 6
            OnExit = OBS1Exit
            OnKeyPress = OBS1KeyPress
          end
          object OBS2: TEdit
            Left = 173
            Top = 95
            Width = 333
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 7
            OnExit = OBS2Exit
            OnKeyPress = OBS2KeyPress
          end
          object CODVEN: TEdit
            Left = 173
            Top = 23
            Width = 85
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            OnEnter = CODVENEnter
            OnExit = CODVENExit
            OnKeyPress = CODVENKeyPress
          end
          object NOMVEN: TEdit
            Left = 256
            Top = 23
            Width = 240
            Height = 19
            TabStop = False
            Color = 11796403
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 8
          end
          object MDATAI: TMaskEdit
            Left = 173
            Top = 41
            Width = 84
            Height = 19
            Ctl3D = False
            EditMask = '!99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 3
            Text = '  /  /    '
            OnEnter = MDATAIEnter
            OnExit = MDATAIExit
          end
          object MDATAF: TMaskEdit
            Left = 308
            Top = 41
            Width = 85
            Height = 19
            Ctl3D = False
            EditMask = '!99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 4
            Text = '  /  /    '
            OnEnter = MDATAFEnter
            OnExit = MDATAFExit
          end
          object PCOMIS: TEdit
            Left = 173
            Top = 59
            Width = 84
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
            OnExit = PCOMISExit
            OnKeyPress = PCOMISKeyPress
          end
          object GroupBox2: TGroupBox
            Left = 1
            Top = 117
            Width = 671
            Height = 38
            Align = alBottom
            Caption = 'Valor a Ser Deduzido Por T'#237'tulo:'
            TabOrder = 9
            object Label21: TLabel
              Left = 10
              Top = 18
              Width = 92
              Height = 13
              Caption = 'Tarifa Banc'#225'ria:'
            end
            object Label22: TLabel
              Left = 437
              Top = 17
              Width = 85
              Height = 13
              Caption = 'Outras Tarifas:'
            end
            object TARBAN: TEdit
              Left = 108
              Top = 16
              Width = 95
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              OnEnter = TARBANEnter
              OnExit = TARBANExit
              OnKeyPress = TARBANKeyPress
            end
            object OUTDESP: TEdit
              Left = 535
              Top = 13
              Width = 95
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 1
              OnEnter = OUTDESPEnter
              OnExit = OUTDESPExit
              OnKeyPress = OUTDESPKeyPress
            end
          end
          object cb_tipo_data: TComboBox
            Left = 501
            Top = 43
            Width = 134
            Height = 21
            Ctl3D = True
            ItemHeight = 13
            ItemIndex = 2
            ParentCtl3D = False
            TabOrder = 10
            Text = 'Data da Baixa'
            Items.Strings = (
              'Data documento'
              'Data de Vencimento'
              'Data da Baixa'
              'Data do Pagamento')
          end
        end
        object gb_itens: TGroupBox
          Left = 1
          Top = 157
          Width = 673
          Height = 297
          Align = alClient
          Caption = 'Duplicatas Selecionadas:'
          TabOrder = 1
          object Panel_itens: TPanel
            Left = 2
            Top = 228
            Width = 669
            Height = 44
            Align = alBottom
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object NUMDUP: TEdit
              Left = 1
              Top = 0
              Width = 44
              Height = 19
              Hint = 'Digite aqui o numero do titulo'
              Ctl3D = False
              ParentCtl3D = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnEnter = NUMDUPEnter
              OnExit = NUMDUPExit
              OnKeyPress = NUMDUPKeyPress
            end
            object DESD: TEdit
              Left = 44
              Top = 0
              Width = 19
              Height = 19
              Hint = 'Digite aqui o Desdobramento/Parcela'
              Ctl3D = False
              ParentCtl3D = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              Text = 'CC'
              OnEnter = DESDEnter
              OnExit = DESDExit
            end
            object ITEM_GRAVAR: TBitBtn
              Left = 1
              Top = 20
              Width = 100
              Height = 21
              Caption = 'Grava&r'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 13
              OnClick = ITEM_GRAVARClick
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
            object ITEM_CANCELAR: TBitBtn
              Left = 201
              Top = 20
              Width = 100
              Height = 21
              Caption = '&Cancelar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 14
              OnClick = ITEM_CANCELARClick
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
            object item_excluir: TBitBtn
              Left = 101
              Top = 20
              Width = 100
              Height = 21
              Caption = '&Excluir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 15
              OnClick = item_excluirClick
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
            object NOMCLI: TEdit
              Left = 180
              Top = 0
              Width = 142
              Height = 19
              TabStop = False
              Color = 11796403
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 6
            end
            object VALOR: TEdit
              Left = 445
              Top = 0
              Width = 67
              Height = 19
              TabStop = False
              Color = 11796403
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 9
            end
            object DTBX: TMaskEdit
              Left = 383
              Top = 0
              Width = 63
              Height = 19
              TabStop = False
              Color = 11796403
              Ctl3D = False
              EditMask = '!99/99/9999;1; '
              MaxLength = 10
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 8
              Text = '  /  /    '
            end
            object item_pesquisar: TBitBtn
              Left = 401
              Top = 21
              Width = 100
              Height = 21
              Caption = '&Pesquisar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 16
              OnClick = item_pesquisarClick
              Glyph.Data = {
                42020000424D4202000000000000420000002800000010000000100000000100
                1000030000000002000000000000000000000000000000000000007C0000E003
                00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                1F7C1F7C1F7C000000000000000000001F7C1F7C1F7C1F7C1F7C000000000000
                000000001F7C0000FF7F0000000000001F7C1F7C1F7C1F7C1F7C0000FF7F0000
                000000001F7C0000FF7F0000000000001F7C1F7C1F7C1F7C1F7C0000FF7F0000
                000000001F7C00000000000000000000000000001F7C00000000000000000000
                000000001F7C00000000FF7F000000000000000000000000FF7F000000000000
                000000001F7C00000000FF7F000000000000186300000000FF7F000000000000
                000000001F7C00000000FF7F000000000000186300000000FF7F000000000000
                000000001F7C1F7C000000000000000000000000000000000000000000000000
                00001F7C1F7C1F7C1F7C0000FF7F0000000000001F7C0000FF7F000000000000
                1F7C1F7C1F7C1F7C1F7C000000000000000000001F7C00000000000000000000
                1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C0000000000001F7C
                1F7C1F7C1F7C1F7C1F7C1F7C0000FF7F00001F7C1F7C1F7C0000FF7F00001F7C
                1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C0000000000001F7C
                1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
                1F7C1F7C1F7C}
            end
            object MDTEMIS: TMaskEdit
              Left = 72
              Top = 0
              Width = 63
              Height = 19
              Hint = 'Digite aqui a data de emissao do titulo'
              Ctl3D = False
              EditMask = '!99/99/9999;1; '
              MaxLength = 10
              ParentCtl3D = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              Text = '  /  /    '
              OnEnter = MDTEMISEnter
              OnExit = MDTEMISExit
            end
            object DTVCTO: TMaskEdit
              Left = 321
              Top = 0
              Width = 63
              Height = 19
              TabStop = False
              Color = 11796403
              Ctl3D = False
              EditMask = '!99/99/9999;1; '
              MaxLength = 10
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 7
              Text = '  /  /    '
            end
            object MCODECF: TEdit
              Left = 134
              Top = 0
              Width = 23
              Height = 19
              Hint = 'Digite aqui o ECF que emitiu o Cupom'
              Ctl3D = False
              ParentCtl3D = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              OnEnter = MCODECFEnter
              OnExit = MCODECFExit
            end
            object MCODEMP: TEdit
              Left = 156
              Top = 0
              Width = 25
              Height = 19
              Hint = 'Digite aqui a Empresa do Titulo'
              Ctl3D = False
              ParentCtl3D = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              OnEnter = MCODEMPEnter
              OnExit = MCODEMPExit
              OnKeyPress = NUMDUPKeyPress
            end
            object VALCOM: TEdit
              Left = 511
              Top = 0
              Width = 52
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 10
              OnEnter = VALCOMEnter
              OnExit = VALCOMExit
            end
            object I_TARBAN: TEdit
              Left = 562
              Top = 0
              Width = 52
              Height = 19
              Hint = 
                'Digite aqui o Valor da Tarifa Bancaria a ser deduzida da base de' +
                ' calculo da comiss'#227'o'
              Ctl3D = False
              ParentCtl3D = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 11
              OnEnter = I_TARBANEnter
              OnExit = I_TARBANExit
              OnKeyPress = I_TARBANKeyPress
            end
            object I_OUTDESP: TEdit
              Left = 613
              Top = 0
              Width = 52
              Height = 19
              Hint = 
                'Digite aqui Outras tarifas a serem deduzidas da Base de Calculo ' +
                'da Comissao'
              Ctl3D = False
              ParentCtl3D = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 12
              OnEnter = I_OUTDESPEnter
              OnExit = I_OUTDESPExit
              OnKeyPress = I_OUTDESPKeyPress
            end
            object DUP: TEdit
              Left = 62
              Top = 0
              Width = 11
              Height = 19
              Hint = 'Digite aqui o tipo de duplicata '
              Ctl3D = False
              ParentCtl3D = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnEnter = DUPEnter
              OnExit = DESDExit
            end
            object bbeditar: TBitBtn
              Left = 301
              Top = 21
              Width = 100
              Height = 21
              Caption = 'Editar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 17
              OnClick = bbeditarClick
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
          end
          object STG1: TStringGrid
            Left = 2
            Top = 15
            Width = 669
            Height = 213
            Align = alClient
            ColCount = 30
            DefaultRowHeight = 15
            FixedCols = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
            ParentFont = False
            TabOrder = 1
            OnDrawCell = STG1DrawCell
            ColWidths = (
              41
              16
              11
              61
              22
              21
              141
              61
              61
              65
              52
              48
              43
              64
              64
              64
              64
              64
              64
              64
              64
              64
              64
              64
              64
              64
              64
              64
              64
              64)
          end
          object Panel6: TPanel
            Left = 2
            Top = 272
            Width = 669
            Height = 23
            Align = alBottom
            TabOrder = 2
            object Label19: TLabel
              Left = 14
              Top = 3
              Width = 137
              Height = 13
              Caption = 'Cheques Devolvidos Extorno'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label20: TLabel
              Left = 0
              Top = 0
              Width = 11
              Height = 17
              Caption = 'g'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Webdings'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label23: TLabel
              Left = 373
              Top = 3
              Width = 74
              Height = 13
              Caption = 'Nota de Credito'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clPurple
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label24: TLabel
              Left = 359
              Top = 0
              Width = 11
              Height = 17
              Caption = 'g'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clPurple
              Font.Height = -11
              Font.Name = 'Webdings'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label13: TLabel
              Left = 487
              Top = 3
              Width = 94
              Height = 13
              Caption = 'Outros Documentos'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label14: TLabel
              Left = 473
              Top = 0
              Width = 11
              Height = 17
              Caption = 'g'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'Webdings'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label28: TLabel
              Left = 170
              Top = 1
              Width = 11
              Height = 17
              Caption = 'g'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Webdings'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label29: TLabel
              Left = 184
              Top = 5
              Width = 152
              Height = 13
              Caption = 'Cheques Devolvidos Recebidos'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
          end
        end
      end
      object Panel1: TPanel
        Left = 675
        Top = 0
        Width = 82
        Height = 455
        Align = alRight
        Caption = 'Panel1'
        TabOrder = 1
        object lbl_ordem: TLabel
          Left = 0
          Top = 420
          Width = 77
          Height = 13
          Caption = 'Ordem Impresao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BBINCLUIR: TBitBtn
          Left = 2
          Top = 59
          Width = 80
          Height = 43
          Cursor = crHandPoint
          Hint = 'Inclus'#227'o de Novos Pedidos'
          Caption = '&Incluir'
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
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object BBLOCALIZAR: TBitBtn
          Left = 2
          Top = 101
          Width = 80
          Height = 42
          Cursor = crHandPoint
          Caption = 'Locali&zar'
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
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object BBALTERAR: TBitBtn
          Left = 2
          Top = 142
          Width = 80
          Height = 42
          Cursor = crHandPoint
          Caption = '&Alterar'
          Enabled = False
          TabOrder = 2
          OnClick = BBALTERARClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
            03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
            FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
            FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
            3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
            33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
            33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
            33333337FFFFFFF7F33333300000000033333337777777773333}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object BBEXCLUIR: TBitBtn
          Left = 1
          Top = 226
          Width = 80
          Height = 42
          Cursor = crHandPoint
          Hint = 'Excluir Pedidos ja existentes'
          Caption = '&Excluir'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
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
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object BBGRAVAR: TBitBtn
          Left = 2
          Top = 184
          Width = 80
          Height = 42
          Cursor = crHandPoint
          Hint = 'Gravar pedido que esta sendo editado'
          Caption = '&Gravar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = BBGRAVARClick
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
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object BBLIMPAR: TBitBtn
          Left = 2
          Top = 268
          Width = 80
          Height = 42
          Cursor = crHandPoint
          Hint = 'Limpa a tela CANCELANDO a opera'#231#227'o atual'
          Caption = '&Limpar Tela'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
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
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object BBIMPRIMIR: TBitBtn
          Left = 2
          Top = 310
          Width = 80
          Height = 42
          Cursor = crHandPoint
          Caption = 'Im&primir'
          Enabled = False
          TabOrder = 6
          OnClick = BBIMPRIMIRClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
            8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
            8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
            8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object BBSAIR: TBitBtn
          Left = 1
          Top = 352
          Width = 80
          Height = 42
          Cursor = crHandPoint
          Hint = 'Sair desta op'#231#227'o'
          Caption = '&Sair'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
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
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object RG_TIPOREL: TRadioGroup
          Left = 1
          Top = 1
          Width = 80
          Height = 57
          Align = alTop
          Caption = 'Tipo Relatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 1
          Items.Strings = (
            'Geral'
            'Resumido')
          ParentFont = False
          TabOrder = 8
        end
        object CB_EMIREC: TCheckBox
          Left = 0
          Top = 400
          Width = 82
          Height = 18
          Caption = 'Emite Recibo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object CB_ORDEM: TComboBox
          Left = 0
          Top = 432
          Width = 83
          Height = 21
          Style = csDropDownList
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
          Text = 'Padrao'
          Items.Strings = (
            'Padrao'
            'Razao'
            'Numero'
            'Dt. Vcto')
        end
      end
    end
    object ts_recibo: TTabSheet
      Caption = 'Recibo de Pagamento'
      Enabled = False
      ImageIndex = 1
      object Label4: TLabel
        Left = 0
        Top = 0
        Width = 367
        Height = 45
        Align = alTop
        Alignment = taCenter
        Caption = 'Recibo de Pagamento'
        Color = 65408
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -40
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object gb_creditos: TGroupBox
        Left = 0
        Top = 45
        Width = 757
        Height = 212
        Align = alTop
        Caption = 'Outros Cr'#233'ditos'
        Color = 16745604
        Ctl3D = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 0
        object Label5: TLabel
          Left = 7
          Top = 11
          Width = 58
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Label6: TLabel
          Left = 544
          Top = 9
          Width = 30
          Height = 13
          Caption = 'Valor'
        end
        object MTEXTOC01: TEdit
          Left = 5
          Top = 26
          Width = 492
          Height = 19
          TabOrder = 0
        end
        object MVALC01: TEdit
          Left = 513
          Top = 26
          Width = 105
          Height = 19
          TabOrder = 10
          Text = '0,00'
          OnEnter = MVALC01Enter
          OnExit = MVALC01Exit
        end
        object MTEXTOC02: TEdit
          Left = 5
          Top = 44
          Width = 492
          Height = 19
          TabOrder = 1
        end
        object MTEXTOC03: TEdit
          Left = 5
          Top = 62
          Width = 492
          Height = 19
          TabOrder = 2
        end
        object MTEXTOC04: TEdit
          Left = 5
          Top = 80
          Width = 492
          Height = 19
          TabOrder = 3
        end
        object MTEXTOC05: TEdit
          Left = 5
          Top = 98
          Width = 492
          Height = 19
          TabOrder = 4
        end
        object MTEXTOC06: TEdit
          Left = 5
          Top = 116
          Width = 492
          Height = 19
          TabOrder = 5
        end
        object MTEXTOC07: TEdit
          Left = 5
          Top = 134
          Width = 492
          Height = 19
          TabOrder = 6
        end
        object MTEXTOC08: TEdit
          Left = 5
          Top = 152
          Width = 492
          Height = 19
          TabOrder = 7
        end
        object MTEXTOC09: TEdit
          Left = 5
          Top = 170
          Width = 492
          Height = 19
          TabOrder = 8
        end
        object MTEXTOC10: TEdit
          Left = 5
          Top = 188
          Width = 492
          Height = 19
          TabOrder = 9
        end
        object MVALC02: TEdit
          Left = 513
          Top = 44
          Width = 105
          Height = 19
          TabOrder = 11
          Text = '0,00'
          OnEnter = MVALC02Enter
          OnExit = MVALC02Exit
        end
        object MVALC03: TEdit
          Left = 513
          Top = 62
          Width = 105
          Height = 19
          TabOrder = 12
          Text = '0,00'
          OnEnter = MVALC03Enter
          OnExit = MVALC03Exit
        end
        object MVALC04: TEdit
          Left = 513
          Top = 80
          Width = 105
          Height = 19
          TabOrder = 13
          Text = '0,00'
          OnEnter = MVALC04Enter
          OnExit = MVALC04Exit
        end
        object MVALC08: TEdit
          Left = 513
          Top = 152
          Width = 105
          Height = 19
          TabOrder = 17
          Text = '0,00'
          OnEnter = MVALC08Enter
          OnExit = MVALC08Exit
        end
        object MVALC06: TEdit
          Left = 513
          Top = 116
          Width = 105
          Height = 19
          TabOrder = 15
          Text = '0,00'
          OnEnter = MVALC06Enter
          OnExit = MVALC06Exit
        end
        object MVALC05: TEdit
          Left = 513
          Top = 98
          Width = 105
          Height = 19
          TabOrder = 14
          Text = '0,00'
          OnEnter = MVALC05Enter
          OnExit = MVALC05Exit
        end
        object MVALC07: TEdit
          Left = 513
          Top = 134
          Width = 105
          Height = 19
          TabOrder = 16
          Text = '0,00'
          OnEnter = MVALC07Enter
          OnExit = MVALC07Exit
        end
        object MVALC09: TEdit
          Left = 513
          Top = 170
          Width = 105
          Height = 19
          TabOrder = 18
          Text = '0,00'
          OnEnter = MVALC09Enter
          OnExit = MVALC09Exit
        end
        object MVALC10: TEdit
          Left = 513
          Top = 188
          Width = 105
          Height = 19
          TabOrder = 19
          Text = '0,00'
          OnEnter = MVALC10Enter
          OnExit = MVALC10Exit
        end
        object Memo_cred: TMemo
          Left = 614
          Top = 14
          Width = 142
          Height = 197
          TabStop = False
          Align = alRight
          Alignment = taCenter
          ReadOnly = True
          TabOrder = 20
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 257
        Width = 757
        Height = 212
        Align = alTop
        Caption = 'Outros D'#233'bitos'
        Color = 6184703
        Ctl3D = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 1
        object Label7: TLabel
          Left = 7
          Top = 11
          Width = 58
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Label8: TLabel
          Left = 544
          Top = 9
          Width = 30
          Height = 13
          Caption = 'Valor'
        end
        object MTEXTOD01: TEdit
          Left = 5
          Top = 26
          Width = 492
          Height = 19
          TabOrder = 0
        end
        object MVALD01: TEdit
          Left = 513
          Top = 26
          Width = 105
          Height = 19
          TabOrder = 10
          Text = '0,00'
          OnEnter = MVALD01Enter
          OnExit = MVALD01Exit
        end
        object MTEXTOD02: TEdit
          Left = 5
          Top = 44
          Width = 492
          Height = 19
          TabOrder = 1
        end
        object MTEXTOD03: TEdit
          Left = 5
          Top = 62
          Width = 492
          Height = 19
          TabOrder = 2
        end
        object MTEXTOD04: TEdit
          Left = 5
          Top = 80
          Width = 492
          Height = 19
          TabOrder = 3
        end
        object MTEXTOD05: TEdit
          Left = 5
          Top = 98
          Width = 492
          Height = 19
          TabOrder = 4
        end
        object MTEXTOD06: TEdit
          Left = 5
          Top = 116
          Width = 492
          Height = 19
          TabOrder = 5
        end
        object MTEXTOD07: TEdit
          Left = 5
          Top = 134
          Width = 492
          Height = 19
          TabOrder = 6
        end
        object MTEXTOD08: TEdit
          Left = 5
          Top = 152
          Width = 492
          Height = 19
          TabOrder = 7
        end
        object MTEXTOD09: TEdit
          Left = 5
          Top = 170
          Width = 492
          Height = 19
          TabOrder = 8
        end
        object MTEXTOD10: TEdit
          Left = 5
          Top = 188
          Width = 492
          Height = 19
          TabOrder = 9
        end
        object MVALD02: TEdit
          Left = 513
          Top = 44
          Width = 105
          Height = 19
          TabOrder = 11
          Text = '0,00'
          OnEnter = MVALD02Enter
          OnExit = MVALD02Exit
        end
        object MVALD03: TEdit
          Left = 513
          Top = 62
          Width = 105
          Height = 19
          TabOrder = 12
          Text = '0,00'
          OnEnter = MVALD03Enter
          OnExit = MVALD03Exit
        end
        object MVALD04: TEdit
          Left = 513
          Top = 80
          Width = 105
          Height = 19
          TabOrder = 13
          Text = '0,00'
          OnEnter = MVALD04Enter
          OnExit = MVALD04Exit
        end
        object MVALD08: TEdit
          Left = 513
          Top = 152
          Width = 105
          Height = 19
          TabOrder = 17
          Text = '0,00'
          OnEnter = MVALD08Enter
          OnExit = MVALD08Exit
        end
        object MVALD06: TEdit
          Left = 513
          Top = 116
          Width = 105
          Height = 19
          TabOrder = 15
          Text = '0,00'
          OnEnter = MVALD06Enter
          OnExit = MVALD06Exit
        end
        object MVALD05: TEdit
          Left = 513
          Top = 98
          Width = 105
          Height = 19
          TabOrder = 14
          Text = '0,00'
          OnEnter = MVALD05Enter
          OnExit = MVALD05Exit
        end
        object MVALD07: TEdit
          Left = 513
          Top = 134
          Width = 105
          Height = 19
          TabOrder = 16
          Text = '0,00'
          OnEnter = MVALD07Enter
          OnExit = MVALD07Exit
        end
        object MVALD09: TEdit
          Left = 513
          Top = 170
          Width = 105
          Height = 19
          TabOrder = 18
          Text = '0,00'
          OnEnter = MVALD09Enter
          OnExit = MVALD09Exit
        end
        object MVALD10: TEdit
          Left = 513
          Top = 188
          Width = 105
          Height = 19
          TabOrder = 19
          Text = '0,00'
          OnEnter = MVALD10Enter
          OnExit = MVALD10Exit
        end
        object Memo_deb: TMemo
          Left = 614
          Top = 14
          Width = 142
          Height = 197
          TabStop = False
          Align = alRight
          Alignment = taCenter
          ReadOnly = True
          TabOrder = 20
        end
      end
    end
    object tsConfiguracao: TTabSheet
      Caption = 'Configura'#231#227'o(master)'
      ImageIndex = 2
      object sb_SalvarPadrao_Master: TSpeedButton
        Left = 49
        Top = 169
        Width = 242
        Height = 38
        Hint = 'Salva as configura'#231#245'es como padr'#227'o'
        Caption = 'Sal&var Padr'#227'o'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = sb_SalvarPadrao_MasterClick
      end
      object CB_COMISBCOAB: TCheckBox
        Left = 49
        Top = 88
        Width = 313
        Height = 17
        Caption = 'Aceitar titulos com cobran'#231'a bancaria em aberto'
        TabOrder = 0
      end
      object CB_TITABERTO: TCheckBox
        Left = 49
        Top = 109
        Width = 313
        Height = 17
        Caption = 'Aceitar Qualquer T'#237'tulo em Aberto'
        TabOrder = 1
      end
      object CB_EXTCRED_NC: TCheckBox
        Left = 49
        Top = 131
        Width = 313
        Height = 17
        Caption = 'Extornar Notas de Credito'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 463
    Width = 784
    Height = 51
    Align = alBottom
    BorderStyle = bsSingle
    TabOrder = 1
    object Label11: TLabel
      Left = 8
      Top = 4
      Width = 72
      Height = 13
      Caption = 'Quant. doc.:'
    end
    object Label12: TLabel
      Left = 14
      Top = 25
      Width = 63
      Height = 13
      Caption = 'Total doc.:'
    end
    object Label17: TLabel
      Left = 500
      Top = 7
      Width = 101
      Height = 13
      Caption = 'Total Comiss'#245'es.:'
    end
    object Label25: TLabel
      Left = 176
      Top = 6
      Width = 72
      Height = 13
      Caption = 'Tot.Tx.Bco.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label26: TLabel
      Left = 161
      Top = 25
      Width = 88
      Height = 13
      Caption = 'Tot.Outras Tar:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label27: TLabel
      Left = 518
      Top = 28
      Width = 81
      Height = 13
      Caption = 'Total L'#237'quido:'
    end
    object Label9: TLabel
      Left = 330
      Top = 26
      Width = 92
      Height = 13
      Caption = 'Outros Creditos:'
    end
    object Label10: TLabel
      Left = 332
      Top = 7
      Width = 89
      Height = 13
      Caption = 'Outros Debitos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sb_SalvarPadrao: TSpeedButton
      Left = 682
      Top = 4
      Width = 104
      Height = 40
      Hint = 'Salva as configura'#231#245'es como padr'#227'o'
      Caption = 'Sal&var Padr'#227'o'
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
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sb_SalvarPadraoClick
    end
    object QTDDOC: TStaticText
      Left = 79
      Top = 4
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      TabOrder = 0
    end
    object TOTDOC: TStaticText
      Left = 79
      Top = 22
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      TabOrder = 1
    end
    object TOTCOM: TStaticText
      Left = 600
      Top = 4
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      TabOrder = 2
    end
    object TOTTARBAN: TStaticText
      Left = 248
      Top = 3
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object TOTOUTDESP: TStaticText
      Left = 248
      Top = 23
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object TOTLIQ: TStaticText
      Left = 599
      Top = 25
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      TabOrder = 5
    end
    object TOTOUTCRED: TStaticText
      Left = 420
      Top = 24
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      TabOrder = 6
    end
    object TOTDEBITOS: TStaticText
      Left = 420
      Top = 4
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
  end
  object Qr_CL01: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCL01 where CL1CODEMP is null')
    Left = 552
    Top = 8
    object Qr_CL01CL1CODEMP: TFloatField
      FieldName = 'CL1CODEMP'
      Origin = 'SG_ASSOC.CADCL01.CL1CODEMP'
    end
    object Qr_CL01CL1CHAVE: TFloatField
      FieldName = 'CL1CHAVE'
      Origin = 'SG_ASSOC.CADCL01.CL1CHAVE'
    end
    object Qr_CL01CL1DATA: TDateTimeField
      FieldName = 'CL1DATA'
      Origin = 'SG_ASSOC.CADCL01.CL1DATA'
    end
    object Qr_CL01CL1TIPO: TFloatField
      FieldName = 'CL1TIPO'
      Origin = 'SG_ASSOC.CADCL01.CL1TIPO'
    end
    object Qr_CL01CL1CODIGO: TFloatField
      FieldName = 'CL1CODIGO'
      Origin = 'SG_ASSOC.CADCL01.CL1CODIGO'
    end
    object Qr_CL01CL1DATAI: TDateTimeField
      FieldName = 'CL1DATAI'
      Origin = 'SG_ASSOC.CADCL01.CL1DATAI'
    end
    object Qr_CL01CL1DATAF: TDateTimeField
      FieldName = 'CL1DATAF'
      Origin = 'SG_ASSOC.CADCL01.CL1DATAF'
    end
    object Qr_CL01CL1OBS01: TStringField
      FieldName = 'CL1OBS01'
      Origin = 'SG_ASSOC.CADCL01.CL1OBS01'
      Size = 60
    end
    object Qr_CL01CL1OBS02: TStringField
      FieldName = 'CL1OBS02'
      Origin = 'SG_ASSOC.CADCL01.CL1OBS02'
      Size = 60
    end
    object Qr_CL01CL1PCOMIS: TFloatField
      FieldName = 'CL1PCOMIS'
      Origin = 'SG_ASSOC.CADCL01.CL1PCOMIS'
    end
    object Qr_CL01CL1QTDDOC: TFloatField
      FieldName = 'CL1QTDDOC'
      Origin = 'SG_ASSOC.CADCL01.CL1QTDDOC'
    end
    object Qr_CL01CL1TOTDOC: TFloatField
      FieldName = 'CL1TOTDOC'
      Origin = 'SG_ASSOC.CADCL01.CL1TOTDOC'
    end
    object Qr_CL01CL1TOTCOM: TFloatField
      FieldName = 'CL1TOTCOM'
      Origin = 'SG_ASSOC.CADCL01.CL1TOTCOM'
    end
    object Qr_CL01CL1LOTSEQ: TFloatField
      FieldName = 'CL1LOTSEQ'
      Origin = 'SG_ASSOC.CADCL01.CL1LOTSEQ'
    end
    object Qr_CL01CL1TARBAN: TFloatField
      FieldName = 'CL1TARBAN'
      Origin = 'SG_ASSOC.CADCL01.CL1TARBAN'
    end
    object Qr_CL01CL1OUTDESP: TFloatField
      FieldName = 'CL1OUTDESP'
      Origin = 'SG_ASSOC.CADCL01.CL1OUTDESP'
    end
    object Qr_CL01CL1TOTTARBAN: TFloatField
      FieldName = 'CL1TOTTARBAN'
      Origin = 'SG_ASSOC.CADCL01.CL1TOTTARBAN'
    end
    object Qr_CL01CL1TOTOUTDESP: TFloatField
      FieldName = 'CL1TOTOUTDESP'
      Origin = 'SG_ASSOC.CADCL01.CL1TOTOUTDESP'
    end
  end
  object Qr_CL02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCL02 where CL2CODEMP is null')
    Left = 600
    object Qr_CL02CL2CODEMP: TFloatField
      FieldName = 'CL2CODEMP'
      Origin = 'SG_ASSOC.CADCL02.CL2CODEMP'
    end
    object Qr_CL02CL2CHAVE: TFloatField
      FieldName = 'CL2CHAVE'
      Origin = 'SG_ASSOC.CADCL02.CL2CHAVE'
    end
    object Qr_CL02CL2SEQ: TFloatField
      FieldName = 'CL2SEQ'
      Origin = 'SG_ASSOC.CADCL02.CL2SEQ'
    end
    object Qr_CL02CL2DOC: TFloatField
      FieldName = 'CL2DOC'
      Origin = 'SG_ASSOC.CADCL02.CL2DOC'
    end
    object Qr_CL02CL2NUMERO: TFloatField
      FieldName = 'CL2NUMERO'
      Origin = 'SG_ASSOC.CADCL02.CL2NUMERO'
    end
    object Qr_CL02CL2DESD: TStringField
      FieldName = 'CL2DESD'
      Origin = 'SG_ASSOC.CADCL02.CL2DESD'
      Size = 2
    end
    object Qr_CL02CL2DUP: TFloatField
      FieldName = 'CL2DUP'
      Origin = 'SG_ASSOC.CADCL02.CL2DUP'
    end
    object Qr_CL02CL2CHAVEP: TFloatField
      FieldName = 'CL2CHAVEP'
      Origin = 'SG_ASSOC.CADCL02.CL2CHAVEP'
    end
    object Qr_CL02CL2ORDEMP: TFloatField
      FieldName = 'CL2ORDEMP'
      Origin = 'SG_ASSOC.CADCL02.CL2ORDEMP'
    end
    object Qr_CL02CL2CODEMPD: TFloatField
      FieldName = 'CL2CODEMPD'
      Origin = 'SG_ASSOC.CADCL02.CL2CODEMPD'
    end
    object Qr_CL02CL2VALCOM: TFloatField
      FieldName = 'CL2VALCOM'
      Origin = 'SG_ASSOC.CADCL02.CL2VALCOM'
    end
    object Qr_CL02CL2VALDOC: TFloatField
      FieldName = 'CL2VALDOC'
      Origin = 'SG_ASSOC.CADCL02.CL2VALDOC'
    end
    object Qr_CL02CL2VALFRE: TFloatField
      FieldName = 'CL2VALFRE'
      Origin = 'SG_ASSOC.CADCL02.CL2VALFRE'
    end
    object Qr_CL02CL2VALICMSR: TFloatField
      FieldName = 'CL2VALICMSR'
      Origin = 'SG_ASSOC.CADCL02.CL2VALICMSR'
    end
    object Qr_CL02CL2SEMCOM: TFloatField
      FieldName = 'CL2SEMCOM'
      Origin = 'SG_ASSOC.CADCL02.CL2SEMCOM'
    end
    object Qr_CL02CL2VALACRE: TFloatField
      FieldName = 'CL2VALACRE'
      Origin = 'SG_ASSOC.CADCL02.CL2VALACRE'
    end
    object Qr_CL02CL2VALCTL: TFloatField
      FieldName = 'CL2VALCTL'
      Origin = 'SG_ASSOC.CADCL02.CL2VALCTL'
    end
    object Qr_CL02CL2LOTSEQ: TFloatField
      FieldName = 'CL2LOTSEQ'
      Origin = 'SG_ASSOC.CADCL02.CL2LOTSEQ'
    end
    object Qr_CL02CL2LOTSEQ_DC: TFloatField
      FieldName = 'CL2LOTSEQ_DC'
      Origin = 'SG_ASSOC.CADCL02.CL2LOTSEQ_DC'
    end
    object Qr_CL02CL2DTEMIS: TDateTimeField
      FieldName = 'CL2DTEMIS'
      Origin = 'SG_ASSOC.CADCL02.CL2DTEMIS'
    end
    object Qr_CL02CL2CODECF: TFloatField
      FieldName = 'CL2CODECF'
      Origin = 'SG_ASSOC.CADCL02.CL2CODECF'
    end
    object Qr_CL02CL2DTVCTO: TDateTimeField
      FieldName = 'CL2DTVCTO'
      Origin = 'SG_ASSOC.CADCL02.CL2DTVCTO'
    end
    object Qr_CL02CL2DTBX: TDateTimeField
      FieldName = 'CL2DTBX'
      Origin = 'SG_ASSOC.CADCL02.CL2DTBX'
    end
    object Qr_CL02CL2CODCLI: TFloatField
      FieldName = 'CL2CODCLI'
      Origin = 'SG_ASSOC.CADCL02.CL2CODCLI'
    end
    object Qr_CL02CL2TARBAN: TFloatField
      FieldName = 'CL2TARBAN'
      Origin = 'SG_ASSOC.CADCL02.CL2TARBAN'
    end
    object Qr_CL02CL2OUTDESP: TFloatField
      FieldName = 'CL2OUTDESP'
      Origin = 'SG_ASSOC.CADCL02.CL2OUTDESP'
    end
    object Qr_CL02CL2CODBCO: TFloatField
      FieldName = 'CL2CODBCO'
      Origin = 'SG_ASSOC.CADCL02.CL2CODBCO'
    end
    object Qr_CL02CL2VALDESC: TFloatField
      FieldName = 'CL2VALDESC'
      Origin = 'SG_ASSOC.CADCL02.CL2VALDESC'
    end
    object Qr_CL02CL2DTPAG: TDateTimeField
      FieldName = 'CL2DTPAG'
      Origin = 'SG_ASSOC.CADCL02.CL2DTPAG'
    end
    object Qr_CL02CL2JUROS: TFloatField
      FieldName = 'CL2JUROS'
      Origin = 'SG_ASSOC.CADCL02.CL2JUROS'
    end
    object Qr_CL02CL2JURD: TFloatField
      FieldName = 'CL2JURD'
      Origin = 'SG_ASSOC.CADCL02.CL2JURD'
    end
    object Qr_CL02CL2MULTA: TFloatField
      FieldName = 'CL2MULTA'
      Origin = 'SG_ASSOC.CADCL02.CL2MULTA'
    end
    object Qr_CL02CL2VALREC: TFloatField
      FieldName = 'CL2VALREC'
      Origin = 'SG_ASSOC.CADCL02.CL2VALREC'
    end
    object Qr_CL02CL2LOTSEQ_BX: TFloatField
      FieldName = 'CL2LOTSEQ_BX'
      Origin = 'SG_ASSOC.CADCL02.CL2LOTSEQ_BX'
    end
    object Qr_CL02CL2LOTE_BX: TFloatField
      FieldName = 'CL2LOTE_BX'
      Origin = 'SG_ASSOC.CADCL02.CL2LOTE_BX'
    end
  end
  object Qr_CL03: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCL03 where CL3CODEMP is null')
    Left = 616
    Top = 88
    object Qr_CL03CL3CODEMP: TFloatField
      FieldName = 'CL3CODEMP'
      Origin = 'SG_ASSOC.CADCL03.CL3CODEMP'
    end
    object Qr_CL03CL3LOTSEQ: TFloatField
      FieldName = 'CL3LOTSEQ'
      Origin = 'SG_ASSOC.CADCL03.CL3LOTSEQ'
    end
    object Qr_CL03CL3CHAVE: TFloatField
      FieldName = 'CL3CHAVE'
      Origin = 'SG_ASSOC.CADCL03.CL3CHAVE'
    end
    object Qr_CL03CL3NAT: TFloatField
      FieldName = 'CL3NAT'
      Origin = 'SG_ASSOC.CADCL03.CL3NAT'
    end
    object Qr_CL03CL3ORDEM: TFloatField
      FieldName = 'CL3ORDEM'
      Origin = 'SG_ASSOC.CADCL03.CL3ORDEM'
    end
    object Qr_CL03CL3TEXTO: TStringField
      FieldName = 'CL3TEXTO'
      Origin = 'SG_ASSOC.CADCL03.CL3TEXTO'
      Size = 76
    end
    object Qr_CL03CL3VALOR: TFloatField
      FieldName = 'CL3VALOR'
      Origin = 'SG_ASSOC.CADCL03.CL3VALOR'
    end
  end
end

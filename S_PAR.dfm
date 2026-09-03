object Frm_Par: TFrm_Par
  Left = 279
  Top = 62
  Width = 802
  Height = 627
  Caption = 'Parametros do Sistema'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panel2: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 596
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 792
      Height = 567
      Hint = 'Click aqui para Salvar'
      ActivePage = CB_GRAPEN
      Align = alClient
      MultiLine = True
      Style = tsButtons
      TabOrder = 0
      OnChange = PageControl1Change
      object TS_RESFAT: TTabSheet
        Caption = 'Restri'#231#245'es/Instru'#231#245'es Faturamento'
        object GB_DESCPED: TGroupBox
          Left = 0
          Top = 0
          Width = 784
          Height = 93
          Align = alTop
          Caption = 'Sobre Manipula'#231#245'es dos descontos do Pedido de Vendas:'
          Color = 13303807
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 12615680
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          object G_DESPED: TSpeedButton
            Left = 710
            Top = 9
            Width = 62
            Height = 65
            Hint = 'Click aqui para Salvar'#13#10'as Altera'#231#245'es'
            Caption = 'Salvar'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = G_DESPEDClick
          end
          object CB_MDC01: TCheckBox
            Left = 10
            Top = 12
            Width = 353
            Height = 17
            Caption = 'Permitir Manipular Desc.01 do Cabe'#231'alho'
            TabOrder = 0
            OnClick = CB_MDIVClick
          end
          object CB_MDC02: TCheckBox
            Left = 10
            Top = 27
            Width = 353
            Height = 17
            Caption = 'Permitir Manipular Desc.02 do Cabe'#231'alho'
            TabOrder = 1
            OnClick = CB_MDIVClick
          end
          object CB_MVDC: TCheckBox
            Left = 10
            Top = 42
            Width = 353
            Height = 17
            Caption = 'Permitir Manipular Valor do Desconto do Cabe'#231'alho'
            TabOrder = 2
            OnClick = CB_MDIVClick
          end
          object CB_MDI01: TCheckBox
            Left = 383
            Top = 10
            Width = 312
            Height = 17
            Caption = 'Permitir Manipular Desc.01 do Item do Pedido'
            TabOrder = 5
            OnClick = CB_MDIVClick
          end
          object CB_MDI02: TCheckBox
            Left = 383
            Top = 26
            Width = 321
            Height = 17
            Caption = 'Permitir Manipular Desc.02 do Item do Pedido'
            TabOrder = 6
            OnClick = CB_MDIVClick
          end
          object CB_MDIV: TCheckBox
            Left = 383
            Top = 57
            Width = 325
            Height = 17
            Caption = 'Permitir Manipular Valor do Desconto Item do Pedido'
            TabOrder = 8
            OnClick = CB_MDIVClick
          end
          object CB_VISDFIN: TCheckBox
            Left = 10
            Top = 58
            Width = 353
            Height = 17
            Caption = 'Manter Visivel o Campo de Desconto Financeiro'
            TabOrder = 3
            OnClick = CB_MDIVClick
          end
          object CB_VISCOMI: TCheckBox
            Left = 10
            Top = 73
            Width = 353
            Height = 17
            Caption = 'Manter Visivel o campo de Comiss'#227'o'
            TabOrder = 4
            OnClick = CB_MDIVClick
          end
          object CB_MDI03: TCheckBox
            Left = 383
            Top = 41
            Width = 317
            Height = 17
            Caption = 'Permitir Manipular Desc.03 do Item do Pedido'
            TabOrder = 7
            OnClick = CB_MDIVClick
          end
          object CB_TIPOVALDES: TCheckBox
            Left = 383
            Top = 72
            Width = 325
            Height = 17
            Caption = 'Validar descontos Na Gravacao do Pedido'
            TabOrder = 9
            OnClick = CB_MDIVClick
          end
        end
        object GB_SITCRED: TGroupBox
          Left = 0
          Top = 93
          Width = 784
          Height = 38
          Align = alTop
          Caption = 'Sobre Cr'#233'ditos de Cliente:'
          Color = 13303807
          Ctl3D = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 1
          object Label22: TLabel
            Left = 160
            Top = 7
            Width = 100
            Height = 13
            Caption = 'Permitir atraso de'
            Color = 8454016
            ParentColor = False
          end
          object Label24: TLabel
            Left = 578
            Top = 6
            Width = 123
            Height = 13
            Caption = 'Prz p/Compensar chq'
            Color = 16767152
            ParentColor = False
          end
          object Label23: TLabel
            Left = 651
            Top = 22
            Width = 32
            Height = 13
            Caption = 'dia(s)'
          end
          object G_CREDCLI: TSpeedButton
            Left = 710
            Top = 9
            Width = 63
            Height = 25
            Hint = 'Click aqui para Salvar'#13#10'as Altera'#231#245'es'
            Caption = 'Salvar'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = G_CREDCLIClick
          end
          object Label117: TLabel
            Left = 265
            Top = 6
            Width = 108
            Height = 13
            Caption = 'A Partir da data de'
            Color = 16767152
            ParentColor = False
          end
          object Label118: TLabel
            Left = 213
            Top = 23
            Width = 32
            Height = 13
            Caption = 'dia(s)'
          end
          object Label119: TLabel
            Left = 385
            Top = 7
            Width = 175
            Height = 13
            Caption = 'Bloquear S/Compras a mais de'
            Color = 8454016
            ParentColor = False
          end
          object Label120: TLabel
            Left = 466
            Top = 22
            Width = 32
            Height = 13
            Caption = 'dia(s)'
          end
          object QTDBLQ: TEdit
            Left = 171
            Top = 19
            Width = 37
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnChange = QTDBLQChange
            OnExit = QTDBLQExit
            OnKeyPress = PRZCOMPKeyPress
          end
          object PRZCOMP: TEdit
            Left = 601
            Top = 19
            Width = 36
            Height = 19
            Ctl3D = False
            MaxLength = 4
            ParentCtl3D = False
            TabOrder = 4
            OnChange = PRZCOMPChange
            OnExit = PRZCOMPExit
            OnKeyPress = PRZCOMPKeyPress
          end
          object CB_VERCRE: TCheckBox
            Left = 9
            Top = 20
            Width = 131
            Height = 17
            Caption = 'Verificar Bloqueios'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = CB_VERCREClick
          end
          object CB_TPBLQ: TComboBox
            Left = 263
            Top = 17
            Width = 110
            Height = 21
            BevelKind = bkSoft
            ItemHeight = 13
            ItemIndex = 1
            TabOrder = 2
            Text = 'Vencimento'
            OnClick = CB_TPBLQClick
            OnExit = CB_TPBLQExit
            Items.Strings = (
              'Emiss'#227'o'
              'Vencimento')
          end
          object QTDDBLQCLISEMCPR: TEdit
            Left = 424
            Top = 19
            Width = 37
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            OnChange = QTDDBLQCLISEMCPRChange
            OnExit = QTDDBLQCLISEMCPRExit
            OnKeyPress = PRZCOMPKeyPress
          end
        end
        object GB_RESTDIV: TGroupBox
          Left = 0
          Top = 131
          Width = 784
          Height = 86
          Align = alTop
          Caption = 'Restri'#231#245'es Diversas'
          Color = 13303807
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 12615680
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          object G_RESTDIV: TSpeedButton
            Left = 710
            Top = 10
            Width = 62
            Height = 74
            Hint = 'Click aqui para Salvar'#13#10'as Altera'#231#245'es'
            Caption = 'Salvar'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = G_RESTDIVClick
          end
          object CB_BLQDEVOL: TCheckBox
            Left = 10
            Top = 12
            Width = 342
            Height = 17
            Caption = 'Bloquear Devolu'#231#245'es de Mercadorias Maior que Compra'
            TabOrder = 0
            OnClick = CB_BLQDEVOLClick
          end
          object CB_MANTPCO: TCheckBox
            Left = 10
            Top = 25
            Width = 348
            Height = 17
            Caption = 'Permitir manipular tipo de pre'#231'os na tela de faturamento'
            TabOrder = 1
            OnClick = CB_BLQDEVOLClick
          end
          object CBFATMZ: TCheckBox
            Left = 10
            Top = 38
            Width = 142
            Height = 17
            Caption = 'Faturar sem estoque'
            TabOrder = 2
            OnClick = CBFATMZClick
          end
          object CBGRAPEN: TCheckBox
            Left = 10
            Top = 52
            Width = 339
            Height = 17
            Caption = 'Gravar Pendencias das Mercadorias Sem  estoque'
            TabOrder = 4
            OnClick = CB_BLQDEVOLClick
          end
          object CBFATMZC: TCheckBox
            Left = 10
            Top = 67
            Width = 285
            Height = 17
            Caption = 'Mostrar mensagem quando nao haver estoque'
            TabOrder = 5
            OnClick = CB_BLQDEVOLClick
          end
          object CB_MENPZORC: TCheckBox
            Left = 358
            Top = 11
            Width = 344
            Height = 17
            Caption = 'Mensagem quando nao haver estoque Em OR'#199'AMENTO'
            TabOrder = 6
            OnClick = CB_BLQDEVOLClick
          end
          object CB_AVESTMIN: TCheckBox
            Left = 358
            Top = 26
            Width = 346
            Height = 17
            Caption = 'Avisar se Estoque M'#237'nimo '#233' igual ou menor que Estoque'
            TabOrder = 7
            OnClick = CB_BLQDEVOLClick
          end
          object CB_VISA: TCheckBox
            Left = 358
            Top = 40
            Width = 289
            Height = 17
            Caption = 'Validar alvara da Vigilancia Sanitaria Municipal'
            TabOrder = 8
            OnClick = CB_BLQDEVOLClick
          end
          object CB_ANVISA: TCheckBox
            Left = 358
            Top = 54
            Width = 131
            Height = 17
            Caption = 'Validar Avisa'
            TabOrder = 9
            OnClick = CB_BLQDEVOLClick
          end
          object CB_VENDCLI: TCheckBox
            Left = 358
            Top = 68
            Width = 227
            Height = 17
            Caption = 'Verificar se Cliente '#233' do Vendedor'
            TabOrder = 10
            OnClick = CB_BLQDEVOLClick
          end
          object CBFATMZ_LOCMOV: TCheckBox
            Left = 155
            Top = 37
            Width = 189
            Height = 17
            Caption = 'Bloquear Local(Dep/Prat)'
            Enabled = False
            TabOrder = 3
            OnClick = CB_BLQDEVOLClick
          end
          object CB_CERT_TECNICO: TCheckBox
            Left = 517
            Top = 56
            Width = 178
            Height = 17
            Caption = 'Validar Certificado Tecnico'
            TabOrder = 11
            OnClick = CB_BLQDEVOLClick
          end
        end
        object GB_INSTRUCOES: TGroupBox
          Left = 0
          Top = 217
          Width = 784
          Height = 90
          Align = alTop
          Caption = 'Instru'#231#245'es'
          Color = 13303807
          Ctl3D = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 3
          object Label25: TLabel
            Left = 9
            Top = 12
            Width = 118
            Height = 13
            Caption = '% Acr'#233'sc.p/Venda...'
          end
          object Label27: TLabel
            Left = 202
            Top = 10
            Width = 39
            Height = 13
            Caption = 'T'#237'tulo:'
          end
          object Label26: TLabel
            Left = 296
            Top = 29
            Width = 119
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Vl Frete(Tx Entrega)'
            WordWrap = True
          end
          object Label29: TLabel
            Left = 316
            Top = 73
            Width = 228
            Height = 13
            Caption = 'Prazo M'#225'ximo para Reclama'#231#245'es..........'
          end
          object Label18: TLabel
            Left = 6
            Top = 30
            Width = 161
            Height = 13
            Caption = 'Desc.M'#225'x.p/Tipo  Produtos:'
          end
          object Label19: TLabel
            Left = 205
            Top = 28
            Width = 41
            Height = 13
            Caption = 'Tipo 1:'
            Visible = False
          end
          object G_INSTR: TSpeedButton
            Left = 718
            Top = 44
            Width = 62
            Height = 41
            Hint = 'Click aqui para Salvar'#13#10'as Altera'#231#245'es'
            Caption = 'Salvar'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = G_INSTRClick
          end
          object Label109: TLabel
            Left = 6
            Top = 48
            Width = 173
            Height = 13
            Caption = 'Desc.M'#225'x.p/Cliente Ret(FOB):'
          end
          object Label110: TLabel
            Left = 460
            Top = 10
            Width = 92
            Height = 13
            Caption = 'Tarifa Bancaria:'
          end
          object Label115: TLabel
            Left = 6
            Top = 66
            Width = 194
            Height = 13
            Caption = 'Acr'#233'scimos Max.p/Vda.Pco.Extra:'
          end
          object Label76: TLabel
            Left = 297
            Top = 47
            Width = 119
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Vl Frete por KM:'
            WordWrap = True
          end
          object ACREGER: TEdit
            Left = 126
            Top = 8
            Width = 66
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnChange = ACREGERChange
            OnExit = ACREGERExit
            OnKeyPress = ACREGERKeyPress
          end
          object TITAGER: TEdit
            Left = 248
            Top = 8
            Width = 110
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnChange = TITAGERChange
            OnExit = TITAGERExit
          end
          object VALFRE: TEdit
            Left = 413
            Top = 28
            Width = 58
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 6
            OnChange = VALFREChange
            OnExit = VALFREExit
            OnKeyPress = VALFREKeyPress
          end
          object PMAXREC: TEdit
            Left = 544
            Top = 67
            Width = 151
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 10
            OnChange = PMAXRECChange
            OnKeyPress = PMAXRECKeyPress
          end
          object CB_LOCPEDGRAV: TCheckBox
            Left = 474
            Top = 45
            Width = 248
            Height = 17
            Caption = 'Ap'#243's Gravar o Pedido Deixa-lo Vis'#237'vel'
            TabOrder = 9
            OnClick = CB_INCTBClick
          end
          object CB_LEITORPED: TCheckBox
            Left = 474
            Top = 28
            Width = 269
            Height = 17
            Caption = 'Leitor optico do Pedido de Venda Marcado'
            TabOrder = 8
            OnClick = CB_INCTBClick
          end
          object DESCMP0: TEdit
            Left = 154
            Top = 26
            Width = 50
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            OnChange = DESCMP0Change
            OnExit = DESCMP0Exit
            OnKeyPress = JURMKeyPress
          end
          object DESCMP1: TEdit
            Left = 248
            Top = 26
            Width = 50
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            Visible = False
            OnChange = DESCMP1Change
            OnExit = DESCMP1Exit
            OnKeyPress = JURMKeyPress
          end
          object DESCEXTRA_PEDRET: TEdit
            Left = 179
            Top = 44
            Width = 66
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            OnChange = DESCEXTRA_PEDRETChange
            OnExit = DESCEXTRA_PEDRETExit
            OnKeyPress = VALFREKeyPress
          end
          object RG_INCTB: TComboBox
            Left = 552
            Top = 6
            Width = 215
            Height = 21
            BevelKind = bkSoft
            ItemHeight = 13
            TabOrder = 7
            OnClick = RG_INCTBClick
            OnExit = RG_INCTBExit
            Items.Strings = (
              'N'#227'o Cobra'
              'Cobra e Cacula Impostos'
              'Destaca e soma so na duplicata')
          end
          object ACREMPEXTRA: TEdit
            Left = 200
            Top = 62
            Width = 66
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
            OnChange = ACREMPEXTRAChange
            OnExit = ACREMPEXTRAExit
            OnKeyPress = VALFREKeyPress
          end
          object edt_vl_frete_km: TEdit
            Left = 413
            Top = 46
            Width = 58
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 11
            OnChange = edt_vl_frete_kmChange
            OnExit = VALFREExit
            OnKeyPress = VALFREKeyPress
          end
        end
        object PN_OUTROS: TPanel
          Left = 0
          Top = 307
          Width = 784
          Height = 150
          Align = alClient
          Color = 13303807
          TabOrder = 4
          object Label38: TLabel
            Left = 247
            Top = 46
            Width = 207
            Height = 13
            Caption = 'Se Calc.Arrendondar Quantas Casas'
            Color = 13303807
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object G_GRAVPED: TSpeedButton
            Left = 733
            Top = 7
            Width = 43
            Height = 64
            Hint = 'Click aqui para Salvar'#13#10'as Altera'#231#245'es'
            Caption = 'Salvar'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = G_GRAVPEDClick
          end
          object Label4: TLabel
            Left = 250
            Top = 4
            Width = 239
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = 'Peso dos Volumes'
            Color = 8453888
            ParentColor = False
          end
          object Label10: TLabel
            Left = 3
            Top = 36
            Width = 242
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = 'C'#243'digo Padr'#227'o na Digita'#231#227'o'
            Color = 8453888
            ParentColor = False
          end
          object Label11: TLabel
            Left = 3
            Top = 3
            Width = 242
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = 'Ordem de Grava'#231#227'o do Pedido de Venda'
            Color = 8453888
            ParentColor = False
          end
          object Label70: TLabel
            Left = 11
            Top = 76
            Width = 72
            Height = 13
            Caption = 'Incrementar '
          end
          object Label71: TLabel
            Left = 147
            Top = 77
            Width = 106
            Height = 13
            Caption = 'KG por cada caixa'
          end
          object GroupBox9: TGroupBox
            Left = 493
            Top = 1
            Width = 238
            Height = 90
            Caption = '% a Ser Increm.p/Chegar ao Peso Bruto:'
            Color = 13303807
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
            object Label3: TLabel
              Left = 69
              Top = 71
              Width = 109
              Height = 13
              Caption = 'P/outras Esp'#233'cies:'
            end
            object Label35: TLabel
              Left = 14
              Top = 17
              Width = 165
              Height = 13
              Caption = 'P/Esp'#233'cie do Tipo CAIXA(s):'
            end
            object Label36: TLabel
              Left = 8
              Top = 53
              Width = 171
              Height = 13
              Caption = 'P/Esp'#233'cie do Tipo FARDO(s):'
            end
            object Label37: TLabel
              Left = 3
              Top = 35
              Width = 178
              Height = 13
              Caption = 'P/Esp'#233'cie do Tipo PACOTE(s):'
            end
            object PERCPL: TEdit
              Left = 180
              Top = 69
              Width = 52
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 3
              OnExit = PERCPLExit
              OnKeyPress = JURMKeyPress
            end
            object PERCPLCAIXA: TEdit
              Left = 180
              Top = 15
              Width = 52
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              OnChange = PERCPLCAIXAChange
              OnExit = PERCPLCAIXAExit
              OnKeyPress = JURMKeyPress
            end
            object PERCPLFARDO: TEdit
              Left = 180
              Top = 51
              Width = 52
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 1
              OnChange = PERCPLFARDOChange
              OnExit = PERCPLFARDOExit
              OnKeyPress = JURMKeyPress
            end
            object PERCPLPCT: TEdit
              Left = 180
              Top = 33
              Width = 52
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 2
              OnChange = PERCPLPCTChange
              OnExit = PERCPLPCTExit
              OnKeyPress = JURMKeyPress
            end
          end
          object CB_QTDCASARRED: TComboBox
            Left = 453
            Top = 41
            Width = 38
            Height = 21
            BevelKind = bkSoft
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ItemHeight = 13
            ParentFont = False
            TabOrder = 2
            OnClick = CB_QTDCASARREDClick
            OnExit = CB_QTDCASARREDExit
            Items.Strings = (
              '0'
              '1'
              '2'
              '3')
          end
          object CB_CALCPPRO: TComboBox
            Left = 250
            Top = 18
            Width = 241
            Height = 21
            BevelKind = bkSoft
            ItemHeight = 13
            TabOrder = 1
            Text = 'CB_CALCPPRO'
            OnClick = CB_ORDGPEDClick
            OnExit = CB_CALCPPROExit
            Items.Strings = (
              'Digitado'
              'Calc.Automaticamente bruto/liquido'
              'Calc.Automaticamente liquido'
              'Calc.Automaticamente bruto')
          end
          object CB_CODPROPADFAT: TComboBox
            Left = 3
            Top = 50
            Width = 243
            Height = 21
            BevelKind = bkSoft
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 0
            Text = '0-Proprio C'#243'digo'
            OnClick = CB_CODPROPADFATClick
            OnExit = CB_CODPROPADFATExit
            Items.Strings = (
              '0-Proprio C'#243'digo'
              '1-Codigo Barras'
              '2-Referencia')
          end
          object CB_ORDGPED: TComboBox
            Left = 3
            Top = 17
            Width = 243
            Height = 21
            BevelKind = bkSoft
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 4
            Text = 'Digita'#231#227'o'
            OnClick = CB_ORDGPEDClick
            OnExit = CB_ORDGPEDExit
            Items.Strings = (
              'Digita'#231#227'o'
              'Descri'#231#227'o do Produto'
              'Descricao 2 do Produto'
              'C'#243'digo do Produto'
              'Marca do Produto'
              'Lista (positiva/neg/inal)+Descri'#231#227'o'
              'Se'#231#227'o do Produto + Descri'#231#227'o')
          end
          object CB_COMISS_VENDA: TCheckBox
            Left = 247
            Top = 60
            Width = 245
            Height = 17
            Caption = 'Permite manipular %Comiss'#227'o na Venda'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 12615680
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            OnClick = CB_COMISS_VENDAClick
          end
          object edt_incpeso_caixa: TEdit
            Left = 84
            Top = 73
            Width = 52
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 6
            OnChange = edt_incpeso_caixaChange
            OnExit = edt_incpeso_caixaExit
            OnKeyPress = JURMKeyPress
          end
        end
        object GB_ECF: TGroupBox
          Left = 0
          Top = 457
          Width = 784
          Height = 55
          Align = alBottom
          Caption = 'Sobre CUPOM FISCAL(ECF)[SGE_FRENTE]:'
          Color = 13303807
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 12615680
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          object Label33: TLabel
            Left = 8
            Top = 12
            Width = 318
            Height = 13
            Caption = 'Manter os (Ped/Or'#231') Ativos no CAIXA por Quantos dias:'
          end
          object G_SOBECF: TSpeedButton
            Left = 715
            Top = 6
            Width = 63
            Height = 33
            Hint = 'Click aqui para Salvar'#13#10'as Altera'#231#245'es'
            Caption = 'Salvar'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = G_SOBECFClick
          end
          object DIASORCAT: TEdit
            Left = 339
            Top = 12
            Width = 44
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnChange = DIASORCATChange
            OnExit = DIASORCATExit
          end
          object CB_CAIXASECF: TCheckBox
            Left = 9
            Top = 23
            Width = 269
            Height = 17
            Caption = 'Utilizar Programa Recebimento sem ECF'
            Color = 13303807
            Ctl3D = False
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 1
            OnClick = CB_CAIXASECFClick
          end
          object RG_LSEPCUPOM: TRadioGroup
            Left = 381
            Top = 7
            Width = 333
            Height = 32
            Caption = 'Lista de Separa'#231#227'o Ap'#243's a Emiss'#227'o '
            Columns = 3
            ItemIndex = 0
            Items.Strings = (
              'N'#227'o'
              'Personalizada'
              'Fixa(do sistema)')
            TabOrder = 2
            OnClick = CB_CAIXASECFClick
          end
          object CB_FRENTE_VDANOR: TCheckBox
            Left = 9
            Top = 37
            Width = 186
            Height = 17
            Caption = 'Exibir Apenas Venda Normal'
            Color = 13303807
            Ctl3D = False
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 3
            OnClick = CB_CAIXASECFClick
          end
          object CB_CADPRO_VDAFRENTE: TCheckBox
            Left = 340
            Top = 39
            Width = 414
            Height = 14
            Caption = 'Permitir Cadastrar Produtos no Ato da Venda Programa Mercado'
            Color = 13303807
            Ctl3D = False
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 4
            OnClick = CB_CAIXASECFClick
          end
        end
      end
      object ts_pedfor: TTabSheet
        Caption = 'Pedidos de Compras/Outros'
        ImageIndex = 1
        object GB_MANPF: TGroupBox
          Left = 0
          Top = 0
          Width = 784
          Height = 99
          Align = alTop
          Caption = 'Sobre Manipula'#231#245'es dos descontos do Pedido de Compras:'
          Color = 13303807
          ParentColor = False
          TabOrder = 0
          object G_DESCPF: TSpeedButton
            Left = 713
            Top = 9
            Width = 62
            Height = 65
            Hint = 'Click aqui para Salvar'
            Caption = 'Salvar'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = G_DESCPFClick
          end
          object Label111: TLabel
            Left = 2
            Top = 58
            Width = 370
            Height = 13
            Caption = 'Sobre Atualiza'#231#227'o do Pre'#231'o de Custo da Mercadorias na Entrada'
          end
          object CB_PFDC01: TCheckBox
            Left = 3
            Top = 12
            Width = 353
            Height = 17
            Caption = 'Permitir Manipular Desc.01 do Cabe'#231'alho'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = CB_PFDC01Click
          end
          object CB_PFDC02: TCheckBox
            Left = 3
            Top = 27
            Width = 353
            Height = 17
            Caption = 'Permitir Manipular Desc.02 do Cabe'#231'alho'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = CB_PFDC01Click
          end
          object CB_PFDCVLR: TCheckBox
            Left = 3
            Top = 42
            Width = 353
            Height = 17
            Caption = 'Permitir Manipular Valor do Desconto do Cabe'#231'alho'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = CB_PFDC01Click
          end
          object CB_PFDI01: TCheckBox
            Left = 373
            Top = 10
            Width = 321
            Height = 17
            Caption = 'Permitir Manipular Desc.01 do Item do Pedido'
            TabOrder = 4
            OnClick = CB_PFDC01Click
          end
          object CB_PFDI02: TCheckBox
            Left = 373
            Top = 26
            Width = 322
            Height = 17
            Caption = 'Permitir Manipular Desc.02 do Item do Pedido'
            TabOrder = 5
            OnClick = CB_PFDC01Click
          end
          object CB_PFDIVLR: TCheckBox
            Left = 373
            Top = 57
            Width = 333
            Height = 17
            Caption = 'Permitir Manipular Valor do Desconto to Item do Pedido'
            TabOrder = 7
            OnClick = CB_PFDC01Click
          end
          object CB_PFDI03: TCheckBox
            Left = 373
            Top = 41
            Width = 314
            Height = 17
            Caption = 'Permitir Manipular Desc.03 do Item do Pedido'
            TabOrder = 6
            OnClick = CB_PFDC01Click
          end
          object CB_LEITORPF: TCheckBox
            Left = 374
            Top = 73
            Width = 288
            Height = 17
            Caption = 'Leitor optico do Pedido de Compra Marcado'
            TabOrder = 8
            OnClick = CB_PFDC01Click
          end
          object CB_ATUACUS: TComboBox
            Left = 3
            Top = 72
            Width = 368
            Height = 21
            BevelKind = bkSoft
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 3
            Text = 'N'#227'o Atualizar'
            OnClick = CB_ATUACUSClick
            OnExit = CB_ATUACUSExit
            Items.Strings = (
              'N'#227'o Atualizar'
              'Atualizar o Custo da Mercadoria na digita'#231#227'o do Pedido'
              'Atualizar na Confirma'#231#227'o da Entrada Incluindo Frete')
          end
        end
        object GB_RELCLI: TGroupBox
          Left = 0
          Top = 99
          Width = 784
          Height = 73
          Align = alTop
          Caption = 'Relacionados a Cliente:'
          Color = 13303807
          Ctl3D = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 1
          object G_RELCLI: TSpeedButton
            Left = 711
            Top = 9
            Width = 62
            Height = 52
            Hint = 'Click aqui para Salvar'
            Caption = 'Salvar'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = G_RELCLIClick
          end
          object CB_CRITCNPJ: TCheckBox
            Left = 11
            Top = 14
            Width = 302
            Height = 17
            Caption = 'Criticar CNPJ e CNPF dos cadastros'
            TabOrder = 0
            OnClick = CB_CRITCNPJClick
          end
          object CB_CRITIE: TCheckBox
            Left = 11
            Top = 27
            Width = 260
            Height = 17
            Caption = 'Criticar Inscri'#231#227'o Estadual dos cadastros'
            TabOrder = 1
            OnClick = CB_CRITCNPJClick
          end
          object RG_DUPCNPJ: TRadioGroup
            Left = 281
            Top = 13
            Width = 357
            Height = 32
            Caption = 'Sobre Duplica'#231#245'es do CNPJ/CPNF Permitir?'
            Columns = 3
            ItemIndex = 0
            Items.Strings = (
              '&N'#227'o'
              'Sim &confirmando'
              '&Sim')
            TabOrder = 2
            OnClick = CB_CRITCNPJClick
          end
          object CB_BLOQCNPJ: TCheckBox
            Left = 11
            Top = 41
            Width = 261
            Height = 17
            Caption = 'bloquear Cadastro sem CNPJ ou CPF'
            TabOrder = 3
            OnClick = CB_CRITCNPJClick
          end
          object CB_BLOQCEP: TCheckBox
            Left = 11
            Top = 55
            Width = 265
            Height = 17
            Caption = 'bloquear Cadastro sem o CEP'
            TabOrder = 4
            OnClick = CB_CRITCNPJClick
          end
        end
        object GB_RELPRO: TGroupBox
          Left = 0
          Top = 172
          Width = 784
          Height = 79
          Align = alTop
          Caption = 'Relacionados ao Produto:'
          Color = 13303807
          Ctl3D = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 2
          object lbl_qtddiav01: TLabel
            Left = 7
            Top = 17
            Width = 311
            Height = 13
            Caption = 'Destacar Produtos com Data de Vencimento Inferior a:'
          end
          object lbl_qtddiav02: TLabel
            Left = 395
            Top = 17
            Width = 32
            Height = 13
            Caption = 'dia(s)'
          end
          object G_RELPRO: TSpeedButton
            Left = 711
            Top = 9
            Width = 62
            Height = 65
            Hint = 'Click aqui para Salvar'
            Caption = 'Salvar'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = G_RELPROClick
          end
          object Label34: TLabel
            Left = 9
            Top = 37
            Width = 146
            Height = 13
            Caption = 'Consulta Produto Padrao:'
          end
          object Label61: TLabel
            Left = 426
            Top = 36
            Width = 127
            Height = 13
            Caption = 'Ordem dos Produtos..:'
          end
          object QTDDIAV: TEdit
            Left = 330
            Top = 14
            Width = 58
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnChange = QTDDIAVChange
            OnExit = QTDDIAVExit
          end
          object CB_CONSPROPAD: TComboBox
            Left = 160
            Top = 32
            Width = 265
            Height = 21
            BevelKind = bkSoft
            ItemHeight = 0
            TabOrder = 1
            OnClick = CB_CONSPROPADClick
            OnExit = CB_CONSPROPADExit
          end
          object CB_PROMCADPRO: TCheckBox
            Left = 12
            Top = 56
            Width = 309
            Height = 17
            Caption = 'Apresentar Promo'#231#245'es no Formul'#225'rio de Produtos'
            TabOrder = 2
            OnClick = CB_CONSPROPADClick
          end
          object cb_ordem_pro: TComboBox
            Left = 553
            Top = 31
            Width = 157
            Height = 21
            BevelKind = bkSoft
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 3
            Text = 'Codigo'
            OnClick = cb_ordem_proClick
            OnExit = cb_ordem_proExit
            Items.Strings = (
              'Codigo'
              'Nome'
              'Nome 2')
          end
        end
        object GB_SISTEMA: TGroupBox
          Left = 0
          Top = 311
          Width = 784
          Height = 69
          Align = alTop
          Caption = 'Sistema:'
          Color = 13303807
          Ctl3D = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 3
          object Label28: TLabel
            Left = 7
            Top = 27
            Width = 97
            Height = 13
            Caption = 'Empresa Padr'#227'o:'
          end
          object Label47: TLabel
            Left = 174
            Top = 26
            Width = 57
            Height = 13
            Caption = 'Tamanho:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label48: TLabel
            Left = 339
            Top = 26
            Width = 38
            Height = 13
            Caption = 'Altura:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 173
            Top = 10
            Width = 265
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = 'Logotipo do Menu Principal'
            Color = clMoneyGreen
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object G_SISTEMA: TSpeedButton
            Left = 711
            Top = 9
            Width = 62
            Height = 41
            Hint = 'Click aqui para Salvar'
            Caption = 'Salvar'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = G_SISTEMAClick
          end
          object Label20: TLabel
            Left = 7
            Top = 44
            Width = 220
            Height = 13
            Caption = 'Tempo de espera para efetuar logoff..:'
          end
          object Label21: TLabel
            Left = 304
            Top = 44
            Width = 57
            Height = 13
            Caption = 'Segundos'
          end
          object EMPPRE: TEdit
            Left = 106
            Top = 23
            Width = 54
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnChange = EMPPREChange
            OnExit = EMPPREExit
          end
          object JPGTAM: TEdit
            Left = 232
            Top = 23
            Width = 65
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnChange = JPGTAMChange
            OnExit = JPGTAMExit
          end
          object JPGALT: TEdit
            Left = 385
            Top = 23
            Width = 52
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            OnChange = JPGALTChange
            OnExit = JPGALTExit
          end
          object SEGLOGOFF: TEdit
            Left = 232
            Top = 41
            Width = 65
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            OnChange = SEGLOGOFFChange
            OnExit = SEGLOGOFFExit
          end
        end
        object GB_DIVERSOS: TGroupBox
          Left = 0
          Top = 251
          Width = 784
          Height = 60
          Align = alTop
          Caption = 'Diversos:'
          Color = 13303807
          Ctl3D = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 4
          object G_DIVERSOS: TSpeedButton
            Left = 711
            Top = 8
            Width = 62
            Height = 49
            Hint = 'Click aqui para Salvar'
            Caption = 'Salvar'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = G_DIVERSOSClick
          end
          object CB_MANNOCR: TCheckBox
            Left = 12
            Top = 17
            Width = 436
            Height = 17
            Caption = 
              'Permite Manipular o N'#250'mero de Nota Fiscal de Origem no Cad.Dupli' +
              'cata'
            TabOrder = 0
            OnClick = CB_MANNOCRClick
          end
          object CB_LEITORAJU: TCheckBox
            Left = 12
            Top = 33
            Width = 288
            Height = 17
            Caption = 'Leitor optico do Ajuste de Estoque Marcado'
            TabOrder = 1
            OnClick = CB_MANNOCRClick
          end
        end
        object GB_LOGINVENDEDOR: TGroupBox
          Left = 0
          Top = 380
          Width = 784
          Height = 56
          Align = alTop
          Caption = 'Mensagem na tela de  Login do Vendedor:'
          Color = 13303807
          Ctl3D = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 5
          object G_LOGUSRVEND: TSpeedButton
            Left = 711
            Top = 9
            Width = 62
            Height = 41
            Hint = 'Click aqui para Salvar'
            Caption = 'Salvar'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = G_LOGUSRVENDClick
          end
          object Label108: TLabel
            Left = 4
            Top = 12
            Width = 65
            Height = 13
            Caption = 'Mensagem:'
          end
          object MENS: TEdit
            Left = 4
            Top = 28
            Width = 327
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnChange = MENSChange
            OnExit = MENSExit
          end
          object RG_MTIPO: TRadioGroup
            Left = 427
            Top = 7
            Width = 281
            Height = 43
            Caption = 'Forma de Apresenta'#231#227'o da Mensagem:'
            Columns = 2
            Items.Strings = (
              '&Girando Horizontal'
              '&Piscante'
              '&Fixa'
              '&Nunca Apresentar')
            TabOrder = 2
            OnClick = RG_MTIPOClick
          end
          object bbCorFonteLogUsr: TBitBtn
            Left = 333
            Top = 23
            Width = 93
            Height = 25
            Hint = 'Selecionar a Cor Desejada'
            Caption = 'Cor da Fonte'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = bbCorFonteLogUsrClick
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
        end
      end
      object CB_GRAPEN: TTabSheet
        Caption = '&Notas/Duplicatas'
        ImageIndex = 2
        object GroupBox4: TGroupBox
          Left = 0
          Top = 274
          Width = 784
          Height = 77
          Align = alBottom
          Caption = 'Sobre descontos/juros/multas e Extenso:'
          Color = 13303807
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          object Label13: TLabel
            Left = 9
            Top = 16
            Width = 184
            Height = 13
            Caption = 'Percentual de Juros Mensais.....'
          end
          object Label15: TLabel
            Left = 8
            Top = 34
            Width = 184
            Height = 13
            Caption = 'Percentual de Multa por atraso..'
          end
          object Label16: TLabel
            Left = 258
            Top = 34
            Width = 174
            Height = 13
            Caption = 'Cobrar multa a partir de..........'
          end
          object Label14: TLabel
            Left = 258
            Top = 16
            Width = 174
            Height = 13
            Caption = '% desconto por antecipac'#227'o...'
          end
          object Label17: TLabel
            Left = 486
            Top = 34
            Width = 93
            Height = 13
            Caption = 'dia(s)  de atraso'
          end
          object G_DESCJUR: TSpeedButton
            Left = 390
            Top = 52
            Width = 189
            Height = 22
            Hint = 'Click aqui para Salvar'
            Caption = 'Salvar'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = G_DESCJURClick
          end
          object Label73: TLabel
            Left = 10
            Top = 53
            Width = 132
            Height = 13
            Caption = 'Tipo de Boleto Padr'#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object JURM: TEdit
            Left = 194
            Top = 12
            Width = 60
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnChange = JURMChange
            OnExit = JURMExit
            OnKeyPress = JURMKeyPress
          end
          object MULTA: TEdit
            Left = 194
            Top = 30
            Width = 60
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnChange = MULTAChange
            OnExit = MULTAExit
            OnKeyPress = JURMKeyPress
          end
          object DESCM: TEdit
            Left = 431
            Top = 12
            Width = 82
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            OnChange = DESCMChange
            OnExit = DESCMExit
            OnKeyPress = JURMKeyPress
          end
          object QTDDM: TEdit
            Left = 431
            Top = 30
            Width = 53
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            OnChange = QTDDMChange
            OnKeyPress = NUMNFKeyPress
          end
          object RG_TIPOEXT: TRadioGroup
            Left = 594
            Top = 8
            Width = 180
            Height = 50
            Caption = 'Imprimir Extenso com Letras:'
            Items.Strings = (
              'Min'#250'sculas'
              'Mai'#250'sculas')
            TabOrder = 4
            OnClick = RG_TIPOEXTClick
          end
          object cb_PBOL_PADRAO: TComboBox
            Left = 194
            Top = 51
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 5
            Text = 'Produ'#231#227'o'
            OnChange = cb_PBOL_PADRAOChange
            Items.Strings = (
              'Pre-Impresso'
              'Laser')
          end
        end
        object gb_notasdisponiveis: TGroupBox
          Left = 0
          Top = 0
          Width = 784
          Height = 172
          Align = alTop
          Caption = 'Tipos de Notas Fiscais Disponiveis:'
          TabOrder = 1
          object Label8: TLabel
            Left = 92
            Top = 18
            Width = 41
            Height = 13
            Caption = 'Chave:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label55: TLabel
            Left = 187
            Top = 18
            Width = 24
            Height = 13
            Caption = 'S'#233'rie'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label56: TLabel
            Left = 240
            Top = 18
            Width = 24
            Height = 13
            Caption = 'Mod:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label57: TLabel
            Left = 292
            Top = 18
            Width = 60
            Height = 13
            Caption = 'No. Proxima:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label58: TLabel
            Left = 623
            Top = 20
            Width = 51
            Height = 13
            Caption = 'V'#225'lida At'#233':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label69: TLabel
            Left = 95
            Top = 127
            Width = 65
            Height = 13
            Caption = 'Servidores:'
          end
          object lbl_ambiente_nf_servico: TLabel
            Left = 100
            Top = 150
            Width = 121
            Height = 13
            Caption = 'Ambiente Nf Servico:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object GroupBox2: TGroupBox
            Left = 95
            Top = 38
            Width = 593
            Height = 80
            Caption = 'Observa'#231#245'es a Serem Impressa:'
            TabOrder = 0
            object edtnf_obsl01: TEdit
              Left = 7
              Top = 15
              Width = 582
              Height = 19
              Ctl3D = False
              MaxLength = 60
              ParentCtl3D = False
              TabOrder = 0
            end
            object edtnf_obsl02: TEdit
              Left = 7
              Top = 33
              Width = 582
              Height = 19
              Ctl3D = False
              MaxLength = 60
              ParentCtl3D = False
              TabOrder = 1
            end
            object edtnf_obsl03: TEdit
              Left = 7
              Top = 51
              Width = 582
              Height = 19
              Ctl3D = False
              MaxLength = 60
              ParentCtl3D = False
              TabOrder = 2
            end
          end
          object rg_chave: TRadioGroup
            Left = 2
            Top = 15
            Width = 86
            Height = 155
            Align = alLeft
            Caption = 'Chave:'
            Color = 16750539
            Ctl3D = False
            ItemIndex = 0
            Items.Strings = (
              'S'#233'rie 1'
              'S'#233'rie 2'
              'SCAN'
              'Servico')
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 1
            OnClick = rg_chaveClick
          end
          object bbNFSalvar: TBitBtn
            Left = 690
            Top = 43
            Width = 75
            Height = 76
            Caption = 'Salvar'
            TabOrder = 2
            OnClick = bbNFSalvarClick
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
          end
          object edtnf_chave: TEdit
            Left = 133
            Top = 15
            Width = 51
            Height = 19
            TabStop = False
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object edtnf_serie: TEdit
            Left = 213
            Top = 16
            Width = 25
            Height = 19
            Ctl3D = False
            MaxLength = 3
            ParentCtl3D = False
            TabOrder = 4
          end
          object edtnf_mod: TEdit
            Left = 266
            Top = 17
            Width = 25
            Height = 19
            Ctl3D = False
            MaxLength = 3
            ParentCtl3D = False
            TabOrder = 5
          end
          object edtnf_numnf: TEdit
            Left = 354
            Top = 17
            Width = 55
            Height = 19
            Ctl3D = False
            MaxLength = 9
            ParentCtl3D = False
            TabOrder = 6
            OnExit = edtnf_numnfExit
          end
          object cbnf_tipoform: TCheckBox
            Left = 415
            Top = 18
            Width = 69
            Height = 17
            Caption = 'Eletronica'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnClick = cbnf_tipoformClick
          end
          object cbnf_manNNf: TCheckBox
            Left = 491
            Top = 18
            Width = 128
            Height = 17
            Caption = 'Manipular No.Emiss'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object edtnf_data: TDateEdit
            Left = 678
            Top = 16
            Width = 89
            Height = 21
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            NumGlyphs = 2
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 9
          end
          object edt_nfe_servidor01: TEdit
            Left = 161
            Top = 122
            Width = 25
            Height = 19
            Ctl3D = False
            MaxLength = 9
            ParentCtl3D = False
            TabOrder = 10
            OnExit = edt_nfe_servidor01Exit
          end
          object edt_nfe_servidor02: TEdit
            Left = 185
            Top = 122
            Width = 25
            Height = 19
            Ctl3D = False
            MaxLength = 9
            ParentCtl3D = False
            TabOrder = 11
            OnExit = edt_nfe_servidor02Exit
          end
          object edt_nfe_servidor03: TEdit
            Left = 209
            Top = 122
            Width = 25
            Height = 19
            Ctl3D = False
            MaxLength = 9
            ParentCtl3D = False
            TabOrder = 12
            OnExit = edt_nfe_servidor03Exit
          end
          object cb_horarioverao: TCheckBox
            Left = 239
            Top = 124
            Width = 102
            Height = 17
            Caption = 'Horario de Ver'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
          end
          object cb_Aplicemendaconst87042015: TCheckBox
            Left = 342
            Top = 124
            Width = 311
            Height = 17
            Caption = 'Aplicar emenda constitucional No. 87 de 16 de Abril de 2015'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
          end
          object cb_log_gerar_tag_cbenef: TCheckBox
            Left = 664
            Top = 123
            Width = 211
            Height = 17
            Caption = 'Gerar Tag CBenef'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
          end
          object cb_ambiente_nf_servico: TComboBox
            Left = 228
            Top = 147
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 16
            Text = 'Produ'#231#227'o'
            Visible = False
            OnChange = cb_PBOL_PADRAOChange
            Items.Strings = (
              'Produ'#231#227'o'
              'Homologa'#231#227'o')
          end
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 172
          Width = 784
          Height = 74
          Align = alTop
          Caption = 'Outros Dados Sobre Notas Fiscais:'
          Color = 13303807
          Ctl3D = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 2
          object Label78: TLabel
            Left = 7
            Top = 19
            Width = 144
            Height = 13
            Caption = 'Tipo da Emiss'#227'o da NFE:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label31: TLabel
            Left = 424
            Top = 56
            Width = 198
            Height = 13
            Caption = '% Aproveitamento Cr'#233'dito de Icms:'
          end
          object G_OUTDADNF: TSpeedButton
            Left = 707
            Top = 8
            Width = 62
            Height = 54
            Hint = 'Click aqui para Salvar'
            Caption = 'Salvar'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = G_OUTDADNFClick
          end
          object Label1: TLabel
            Left = 6
            Top = 36
            Width = 80
            Height = 13
            Caption = 'Motivo SCAN:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 51
            Top = 54
            Width = 32
            Height = 13
            Caption = 'Data:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 283
            Top = 54
            Width = 38
            Height = 13
            Caption = 'Horas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CB_TPEMIS: TComboBox
            Left = 154
            Top = 14
            Width = 527
            Height = 21
            BevelKind = bkSoft
            ItemHeight = 13
            TabOrder = 0
            OnClick = CB_TPEMISClick
            Items.Strings = (
              '1  Normal'
              '2   Conting'#234'ncia FS'
              '3  Conting'#234'ncia SCAN'
              '4  Conting'#234'ncia DPEC'
              '5  Conting'#234'ncia FS-DA'
              '6  Conting'#234'ncia SVC-AN'
              '7  Conting'#234'ncia SVC-RS ')
          end
          object PACREDICMS: TEdit
            Left = 625
            Top = 52
            Width = 56
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnChange = PACREDICMSChange
            OnExit = PACREDICMSExit
            OnKeyPress = PACREDICMSKeyPress
          end
          object edtnf_just_cont: TEdit
            Left = 91
            Top = 34
            Width = 590
            Height = 19
            Ctl3D = False
            MaxLength = 250
            ParentCtl3D = False
            TabOrder = 2
            OnChange = edtnf_just_contChange
          end
          object edtnf_data_cont: TDateEdit
            Left = 91
            Top = 52
            Width = 121
            Height = 19
            NumGlyphs = 2
            TabOrder = 3
            OnChange = edtnf_data_contChange
          end
          object edtnf_horas_cont: TMaskEdit
            Left = 336
            Top = 52
            Width = 59
            Height = 19
            EditMask = '!99:99;1; '
            MaxLength = 5
            TabOrder = 4
            Text = '  :  '
            OnChange = edtnf_horas_contChange
          end
        end
        object GB_EnviaEmail: TGroupBox
          Left = 0
          Top = 351
          Width = 784
          Height = 63
          Align = alBottom
          Caption = 'Emiss'#227'o de Email Automatico'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          object Label7: TLabel
            Left = 9
            Top = 17
            Width = 98
            Height = 13
            Caption = 'Servidor SMTP..:'
          end
          object Label12: TLabel
            Left = 305
            Top = 16
            Width = 81
            Height = 13
            Caption = 'Porta SMTP..:'
          end
          object Salvar_Email: TSpeedButton
            Left = 670
            Top = 9
            Width = 100
            Height = 22
            Hint = 'Click aqui para Salvar'
            Caption = 'Salvar'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = Salvar_EmailClick
          end
          object Label9: TLabel
            Left = 16
            Top = 35
            Width = 91
            Height = 13
            Caption = 'Tipo de Login..:'
          end
          object Label30: TLabel
            Left = 200
            Top = 35
            Width = 135
            Height = 13
            Caption = 'Tipo de Autentica'#231#227'o..:'
          end
          object Label59: TLabel
            Left = 450
            Top = 17
            Width = 47
            Height = 13
            Caption = 'E-mail..:'
          end
          object Label60: TLabel
            Left = 448
            Top = 36
            Width = 49
            Height = 13
            Caption = 'Senha..:'
          end
          object sbt_testar: TSpeedButton
            Left = 670
            Top = 32
            Width = 100
            Height = 22
            Hint = 'Click aqui para Salvar'
            Caption = 'Testar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            NumGlyphs = 2
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = sbt_testarClick
          end
          object edt_hostsmtp: TEdit
            Left = 108
            Top = 13
            Width = 197
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnChange = edt_hostsmtpChange
            OnExit = edt_hostsmtpExit
          end
          object edt_portasmtp: TEdit
            Left = 388
            Top = 13
            Width = 53
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            OnChange = edt_portasmtpChange
          end
          object cb_LoginSmtp: TComboBox
            Left = 108
            Top = 32
            Width = 73
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 1
            TabOrder = 3
            Text = 'AtNone'
            OnChange = cb_LoginSmtpChange
            Items.Strings = (
              'AtLogin'
              'AtNone')
          end
          object cb_AutenticacaoSmtp: TComboBox
            Left = 337
            Top = 32
            Width = 106
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 0
            Text = 'Sem SSL'
            OnChange = cb_AutenticacaoSmtpChange
            Items.Strings = (
              'Sem SSL'
              'sslvTLSv1'
              'sslvSSLv2'
              'sslvSSLv23'
              'sslvSSLv3')
          end
          object edt_emailhost: TEdit
            Left = 499
            Top = 13
            Width = 102
            Height = 19
            TabOrder = 4
            OnChange = edt_emailhostChange
          end
          object edt_senhahost: TEdit
            Left = 499
            Top = 33
            Width = 94
            Height = 19
            PasswordChar = '*'
            TabOrder = 5
            OnChange = edt_senhahostChange
          end
        end
        object gb_nfce: TGroupBox
          Left = 0
          Top = 414
          Width = 784
          Height = 98
          Align = alBottom
          Caption = 'Nota Fiscal Consumidor Modelo 65:'
          TabOrder = 4
          object Label72: TLabel
            Left = 19
            Top = 18
            Width = 24
            Height = 13
            Caption = 'S'#233'rie'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label74: TLabel
            Left = 79
            Top = 19
            Width = 47
            Height = 13
            Caption = 'Ambiente:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label75: TLabel
            Left = 280
            Top = 18
            Width = 60
            Height = 13
            Caption = 'No. Proximo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object sbn_nfce_salvar: TSpeedButton
            Left = 600
            Top = 13
            Width = 144
            Height = 22
            Hint = 'Click aqui para Salvar'
            Caption = 'Salvar'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = sbn_nfce_salvarClick
          end
          object edt_nfce_serie: TEdit
            Left = 45
            Top = 16
            Width = 25
            Height = 19
            Ctl3D = False
            MaxLength = 3
            ParentCtl3D = False
            TabOrder = 0
            OnChange = edt_nfce_serieChange
            OnExit = edt_nfce_serieExit
          end
          object cb_nfce_tpamb: TComboBox
            Left = 132
            Top = 16
            Width = 145
            Height = 21
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 1
            Text = 'Produ'#231#227'o'
            OnClick = cb_nfce_tpambClick
            Items.Strings = (
              'Produ'#231#227'o'
              'Homologa'#231#227'o')
          end
          object edt_nfce_numnfce: TEdit
            Left = 346
            Top = 17
            Width = 55
            Height = 19
            Ctl3D = False
            MaxLength = 9
            ParentCtl3D = False
            TabOrder = 2
            OnChange = edt_nfce_numnfceChange
            OnExit = edt_nfce_numnfceExit
          end
          object CB_NFCE_PADRAO: TCheckBox
            Left = 414
            Top = 16
            Width = 195
            Height = 17
            Caption = 'Configura'#231#227'o Padr'#227'o(atual)'
            TabOrder = 3
            OnClick = CB_NFCE_PADRAOClick
          end
          object GroupBox3: TGroupBox
            Left = 2
            Top = 35
            Width = 780
            Height = 61
            Align = alBottom
            Caption = 'Mensagem no Cupom:'
            TabOrder = 4
            object sbn_salvarmensagemcupom: TSpeedButton
              Left = 693
              Top = 12
              Width = 64
              Height = 40
              Hint = 'Click aqui para Salvar'
              Caption = 'Salvar'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
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
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = sbn_salvarmensagemcupomClick
            end
            object edt_nfce_obs_l01: TEdit
              Left = 5
              Top = 15
              Width = 680
              Height = 19
              Ctl3D = False
              MaxLength = 254
              ParentCtl3D = False
              TabOrder = 0
              OnChange = edt_nfce_obs_l01Change
            end
            object edt_nfce_obs_l02: TEdit
              Left = 5
              Top = 33
              Width = 680
              Height = 19
              Ctl3D = False
              MaxLength = 254
              ParentCtl3D = False
              TabOrder = 1
              OnChange = edt_nfce_obs_l02Change
            end
          end
        end
      end
      object tsCaixa: TTabSheet
        Caption = 'Sobre o Caixa'
        ImageIndex = 1
        object Panel1: TPanel
          Left = 0
          Top = 471
          Width = 784
          Height = 41
          Align = alBottom
          TabOrder = 0
          object bbAtualizarCaixa: TBitBtn
            Left = 48
            Top = 8
            Width = 200
            Height = 25
            Caption = 'Atualizar Dados'
            TabOrder = 0
            OnClick = bbAtualizarCaixaClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333FFFFF3333333333000003333333333F777773FF333333008F88800
              33333337733333773F33330FFF8F888F033333733333333373F330DEFFF8F8FE
              D03337F33333333337F330DDEFFFFFEDD0333733333FFF33373F0BBFDE000EDF
              BB037F33337773F3337F0AABB08880BBAA037F3337F3F7F3337F0EEAA08080AA
              EE037F3337F737F3337F0AABB08880BBAA037F33373FF733337F0BBFDE000EDB
              BB0373F333777333337330DDEFFFFFEDD03337F33333333337F330DEF8F8FFFE
              D033373F333333333733330FFF8F8FFF03333373FF33333F733333300FF8F800
              3333333773FFFF77333333333000003333333333377777333333}
            NumGlyphs = 2
          end
          object BitBtn3: TBitBtn
            Left = 294
            Top = 8
            Width = 200
            Height = 25
            Caption = '&Cancelar'
            TabOrder = 1
            OnClick = BitBtn3Click
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
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 784
          Height = 80
          Align = alTop
          Color = 13303807
          TabOrder = 1
          object Label32: TLabel
            Left = 363
            Top = 48
            Width = 62
            Height = 13
            Caption = 'Sigla Lcto:'
          end
          object G_CAIXA: TSpeedButton
            Left = 707
            Top = 9
            Width = 62
            Height = 65
            Hint = 'Click aqui para Salvar'
            Caption = 'Salvar'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = G_CAIXAClick
          end
          object lbl_desbloqcaixa_1: TLabel
            Left = 298
            Top = 20
            Width = 152
            Height = 13
            Caption = 'Bloquear Caixa a partir de '
          end
          object lbl_desbloqcaixa_2: TLabel
            Left = 499
            Top = 19
            Width = 28
            Height = 13
            Caption = 'dias.'
          end
          object CB_CXAUTO: TCheckBox
            Left = 16
            Top = 21
            Width = 241
            Height = 17
            Caption = 'Lan'#231'ar Contas Automaticamente'
            TabOrder = 0
            OnClick = CB_MANDATCXBXClick
          end
          object CB_MANDATCXBX: TCheckBox
            Left = 16
            Top = 1
            Width = 553
            Height = 17
            Caption = 
              'Permitir alterar a data de entrada no caixa ao lan'#231'ar formas de ' +
              'pagamentos'
            TabOrder = 1
            OnClick = CB_MANDATCXBXClick
          end
          object RG_CRDOC: TRadioGroup
            Left = 17
            Top = 37
            Width = 341
            Height = 29
            Caption = 'Ao Lan'#231'ar Titulos a Receber no Caixa Utilizar o N'#250'mero:'
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'Duplicata'
              'Pedido')
            TabOrder = 2
            OnClick = CB_MANDATCXBXClick
          end
          object CRDOCSIG: TEdit
            Left = 430
            Top = 45
            Width = 41
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            OnChange = CRDOCSIGChange
            OnExit = CRDOCSIGExit
            OnKeyPress = CRDOCSIGKeyPress
          end
          object diabloq: TCurrencyEdit
            Left = 450
            Top = 16
            Width = 47
            Height = 21
            AutoSize = False
            DisplayFormat = ',0;,0'
            TabOrder = 4
            OnChange = diabloqChange
          end
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 80
          Width = 784
          Height = 272
          Align = alClient
          Color = 13892862
          DataSource = Src_Par_Ldr
          FixedColor = 15918847
          ReadOnly = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnExit = DBGrid1Exit
          Columns = <
            item
              Expanded = False
              FieldName = 'CDESC_ORI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODDEP'
              Width = 93
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODCC'
              Width = 97
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Visible = True
            end>
        end
        object GroupBox11: TGroupBox
          Left = 0
          Top = 352
          Width = 784
          Height = 119
          Align = alBottom
          TabOrder = 3
          object Label49: TLabel
            Left = 39
            Top = 13
            Width = 161
            Height = 13
            Caption = 'Descricao Original..............'
          end
          object Label50: TLabel
            Left = 39
            Top = 31
            Width = 146
            Height = 13
            Caption = 'Descricao p/Gravacao....'
          end
          object Label51: TLabel
            Left = 39
            Top = 48
            Width = 140
            Height = 13
            Caption = 'Departamento...............'
          end
          object Label52: TLabel
            Left = 39
            Top = 66
            Width = 144
            Height = 13
            Caption = 'Centro de Custo.............'
          end
          object Label53: TLabel
            Left = 483
            Top = 68
            Width = 56
            Height = 13
            Caption = 'Natureza:'
          end
          object DBNavigator1: TDBNavigator
            Left = 2
            Top = 92
            Width = 780
            Height = 25
            DataSource = Src_Par_Ldr
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbEdit, nbPost, nbCancel]
            Align = alBottom
            Hints.Strings = (
              'Primeiro Registro'
              'Registro Anterior'
              'Proximo Registro'
              #218'ltimo Registro'
              'Inserir Novo'
              'Deletar'
              'Alterar'
              'Gravar'
              'Cancelar'
              'Renovar Informacoes')
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object DBEdit1: TDBEdit
            Left = 178
            Top = 10
            Width = 383
            Height = 19
            Color = 14089444
            Ctl3D = False
            DataField = 'CDESC_ORI'
            DataSource = Src_Par_Ldr
            Enabled = False
            ParentCtl3D = False
            TabOrder = 1
          end
          object DBEdit2: TDBEdit
            Left = 178
            Top = 28
            Width = 383
            Height = 19
            Color = 13892862
            Ctl3D = False
            DataField = 'NOME'
            DataSource = Src_Par_Ldr
            ParentCtl3D = False
            TabOrder = 2
          end
          object DBEdit3: TDBEdit
            Left = 178
            Top = 46
            Width = 71
            Height = 19
            Color = 13892862
            Ctl3D = False
            DataField = 'CODDEP'
            DataSource = Src_Par_Ldr
            ParentCtl3D = False
            TabOrder = 3
            OnExit = DBEdit3Exit
            OnKeyDown = DBEdit3KeyDown
          end
          object DBEdit4: TDBEdit
            Left = 248
            Top = 46
            Width = 313
            Height = 19
            Color = 14089444
            Ctl3D = False
            DataField = 'nomdep'
            DataSource = Src_Par_Ldr
            Enabled = False
            ParentCtl3D = False
            TabOrder = 4
          end
          object DBEdit5: TDBEdit
            Left = 178
            Top = 64
            Width = 71
            Height = 19
            Color = 13892862
            Ctl3D = False
            DataField = 'CODCC'
            DataSource = Src_Par_Ldr
            ParentCtl3D = False
            TabOrder = 5
            OnExit = DBEdit5Exit
            OnKeyDown = DBEdit5KeyDown
          end
          object DBEdit6: TDBEdit
            Left = 248
            Top = 64
            Width = 230
            Height = 19
            Color = 14089444
            Ctl3D = False
            DataField = 'nomccu'
            DataSource = Src_Par_Ldr
            Enabled = False
            ParentCtl3D = False
            TabOrder = 6
          end
          object DBEdit7: TDBEdit
            Left = 540
            Top = 64
            Width = 21
            Height = 19
            Color = 14089444
            Ctl3D = False
            DataField = 'natdc_ccu'
            DataSource = Src_Par_Ldr
            Enabled = False
            ParentCtl3D = False
            TabOrder = 7
          end
          object DBEdit8: TDBEdit
            Left = 592
            Top = 14
            Width = 113
            Height = 19
            TabStop = False
            Color = 14089444
            Ctl3D = False
            DataField = 'CDOC'
            DataSource = Src_Par_Ldr
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 8
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Cores Cadastro Produtos'
        ImageIndex = 3
        object lbl_prod00: TLabel
          Left = 105
          Top = 13
          Width = 174
          Height = 13
          Caption = '00 - Mercadoria para Revenda'
        end
        object lbl_prod01: TLabel
          Left = 105
          Top = 40
          Width = 104
          Height = 13
          Caption = '01 - Mat'#233'ria-Prima'
        end
        object lbl_prod02: TLabel
          Left = 105
          Top = 65
          Width = 91
          Height = 13
          Caption = '02 - Embalagem'
        end
        object lbl_prod03: TLabel
          Left = 105
          Top = 92
          Width = 147
          Height = 13
          Caption = '03 - Produto em Processo'
        end
        object lbl_prod04: TLabel
          Left = 105
          Top = 116
          Width = 125
          Height = 13
          Caption = '04 - Produto Acabado'
        end
        object lbl_prod05: TLabel
          Left = 105
          Top = 146
          Width = 92
          Height = 13
          Caption = '05 - Subproduto'
        end
        object lbl_ProdVenc: TLabel
          Left = 105
          Top = 320
          Width = 107
          Height = 13
          Caption = 'Produtos Vencidos'
        end
        object lbl_ProdBloq: TLabel
          Left = 105
          Top = 347
          Width = 121
          Height = 13
          Caption = 'Produtos Bloqueados'
        end
        object lbl_prod06: TLabel
          Left = 105
          Top = 172
          Width = 148
          Height = 13
          Caption = '06 - Produto Intermediario'
        end
        object G_CORES: TSpeedButton
          Left = 387
          Top = 9
          Width = 62
          Height = 65
          Hint = 'Click aqui para Salvar'
          Caption = 'Salvar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
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
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = G_CORESClick
        end
        object lbl_EstMin_Ger: TLabel
          Left = 105
          Top = 406
          Width = 240
          Height = 13
          Caption = 'Estoque Menor ou iGual ao Minimo - Geral'
        end
        object lbl_prod07: TLabel
          Left = 105
          Top = 198
          Width = 182
          Height = 13
          Caption = '07 - Mat'#233'rial de Uso e Consumo'
        end
        object lbl_prod08: TLabel
          Left = 105
          Top = 223
          Width = 123
          Height = 13
          Caption = '08 - Ativo Imobilizado'
        end
        object lbl_prod09: TLabel
          Left = 105
          Top = 248
          Width = 70
          Height = 13
          Caption = '09 - Servi'#231'o'
        end
        object lbl_prod10: TLabel
          Left = 105
          Top = 273
          Width = 114
          Height = 13
          Caption = '10 - Outros Insumos'
        end
        object lbl_prod99: TLabel
          Left = 105
          Top = 298
          Width = 64
          Height = 13
          Caption = '99 - Outras'
        end
        object lbl_rbms_venc: TLabel
          Left = 105
          Top = 372
          Width = 232
          Height = 13
          Caption = 'Registro no Ministerio da Saude Vencido'
        end
        object lbl_prod_semmov_1: TLabel
          Left = 414
          Top = 92
          Width = 203
          Height = 13
          Caption = 'Produtos sem movimento a mais de '
        end
        object lbl_prod_semmov_2: TLabel
          Left = 660
          Top = 91
          Width = 32
          Height = 13
          Caption = ' dias.'
        end
        object lbl_recall: TLabel
          Left = 107
          Top = 432
          Width = 151
          Height = 13
          Caption = 'Possui produtos em Recall'
        end
        object btn_prod00: TBitBtn
          Left = 1
          Top = 7
          Width = 97
          Height = 25
          Hint = 'Selecionar a Cor Desejada'
          Caption = 'Selecionar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btn_prod00Click
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
          NumGlyphs = 2
        end
        object btn_prod01: TBitBtn
          Left = 1
          Top = 33
          Width = 97
          Height = 25
          Hint = 'Selecionar a Cor Desejada'
          Caption = 'Selecionar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btn_prod01Click
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
          NumGlyphs = 2
        end
        object btn_prod02: TBitBtn
          Left = 1
          Top = 59
          Width = 97
          Height = 25
          Hint = 'Selecionar a Cor Desejada'
          Caption = 'Selecionar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btn_prod02Click
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
          NumGlyphs = 2
        end
        object btn_prod03: TBitBtn
          Left = 1
          Top = 85
          Width = 97
          Height = 25
          Hint = 'Selecionar a Cor Desejada'
          Caption = 'Selecionar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = btn_prod03Click
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
          NumGlyphs = 2
        end
        object btn_prod04: TBitBtn
          Left = 1
          Top = 111
          Width = 97
          Height = 25
          Hint = 'Selecionar a Cor Desejada'
          Caption = 'Selecionar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = btn_prod04Click
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
          NumGlyphs = 2
        end
        object btn_prod05: TBitBtn
          Left = 1
          Top = 137
          Width = 97
          Height = 25
          Hint = 'Selecionar a Cor Desejada'
          Caption = 'Selecionar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = btn_prod05Click
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
          NumGlyphs = 2
        end
        object btn_prod06: TBitBtn
          Left = 1
          Top = 163
          Width = 97
          Height = 25
          Hint = 'Selecionar a Cor Desejada'
          Caption = 'Selecionar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = btn_prod06Click
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
          NumGlyphs = 2
        end
        object btn_prodVenc: TBitBtn
          Left = 1
          Top = 315
          Width = 97
          Height = 25
          Hint = 'Selecionar a Cor Desejada'
          Caption = 'Selecionar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = btn_prodVencClick
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
          NumGlyphs = 2
        end
        object btn_prodBloq: TBitBtn
          Left = 1
          Top = 340
          Width = 97
          Height = 25
          Hint = 'Selecionar a Cor Desejada'
          Caption = 'Selecionar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnClick = btn_prodBloqClick
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
          NumGlyphs = 2
        end
        object btn_EstminGer: TBitBtn
          Left = 1
          Top = 398
          Width = 97
          Height = 25
          Hint = 'Selecionar a Cor Desejada'
          Caption = 'Selecionar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnClick = btn_EstminGerClick
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
          NumGlyphs = 2
        end
        object btn_prod07: TBitBtn
          Left = 1
          Top = 189
          Width = 97
          Height = 25
          Hint = 'Selecionar a Cor Desejada'
          Caption = 'Selecionar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnClick = btn_prod07Click
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
          NumGlyphs = 2
        end
        object btn_prod08: TBitBtn
          Left = 1
          Top = 214
          Width = 97
          Height = 25
          Hint = 'Selecionar a Cor Desejada'
          Caption = 'Selecionar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          OnClick = btn_prod08Click
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
          NumGlyphs = 2
        end
        object btn_prod09: TBitBtn
          Left = 1
          Top = 239
          Width = 97
          Height = 25
          Hint = 'Selecionar a Cor Desejada'
          Caption = 'Selecionar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
          OnClick = btn_prod09Click
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
          NumGlyphs = 2
        end
        object btn_prod10: TBitBtn
          Left = 1
          Top = 264
          Width = 97
          Height = 25
          Hint = 'Selecionar a Cor Desejada'
          Caption = 'Selecionar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
          OnClick = btn_prod10Click
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
          NumGlyphs = 2
        end
        object btn_prod99: TBitBtn
          Left = 1
          Top = 289
          Width = 97
          Height = 25
          Hint = 'Selecionar a Cor Desejada'
          Caption = 'Selecionar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
          OnClick = btn_prod99Click
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
          NumGlyphs = 2
        end
        object btn_rbms_venc: TBitBtn
          Left = 1
          Top = 366
          Width = 97
          Height = 25
          Hint = 'Selecionar a Cor Desejada'
          Caption = 'Selecionar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
          OnClick = btn_rbms_vencClick
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
          NumGlyphs = 2
        end
        object btn_SemMov: TBitBtn
          Left = 315
          Top = 84
          Width = 97
          Height = 25
          Hint = 'Selecionar a Cor Desejada'
          Caption = 'Selecionar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
          OnClick = btn_SemMovClick
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
          NumGlyphs = 2
        end
        object edt_SemMov: TMaskEdit
          Left = 619
          Top = 88
          Width = 39
          Height = 21
          EditMask = '!999;1; '
          MaxLength = 3
          TabOrder = 17
          Text = '   '
          OnChange = edt_SemMovChange
        end
        object btn_recall: TBitBtn
          Left = 3
          Top = 424
          Width = 97
          Height = 25
          Hint = 'Selecionar a Cor Desejada'
          Caption = 'Selecionar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 18
          OnClick = btn_recallClick
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
          NumGlyphs = 2
        end
      end
      object ts_Teclas: TTabSheet
        Caption = 'Teclas de Atalho'
        ImageIndex = 4
        object gb_mudaremp: TGroupBox
          Left = 4
          Top = 5
          Width = 310
          Height = 139
          Caption = 'Mudar de Empresa:'
          TabOrder = 0
          object Label39: TLabel
            Left = 9
            Top = 23
            Width = 55
            Height = 13
            Caption = 'Tecla 01:'
          end
          object Label40: TLabel
            Left = 9
            Top = 47
            Width = 55
            Height = 13
            Caption = 'Tecla 02:'
          end
          object Label41: TLabel
            Left = 9
            Top = 70
            Width = 55
            Height = 13
            Caption = 'Tecla 03:'
          end
          object Label42: TLabel
            Left = 9
            Top = 94
            Width = 55
            Height = 13
            Caption = 'Tecla 04:'
          end
          object G_MUDAEMP: TSpeedButton
            Left = 175
            Top = 112
            Width = 111
            Height = 25
            Hint = 'Click aqui para Salvar'
            Caption = 'Salvar'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = G_MUDAEMPClick
          end
          object metecla01: TEdit
            Left = 64
            Top = 17
            Width = 85
            Height = 21
            TabOrder = 0
            OnChange = metecla01Change
            OnKeyDown = metecla01KeyDown
            OnKeyPress = metecla01KeyPress
          end
          object st_tecla01: TStaticText
            Left = 152
            Top = 19
            Width = 69
            Height = 17
            AutoSize = False
            BorderStyle = sbsSunken
            TabOrder = 1
          end
          object metecla02: TEdit
            Left = 64
            Top = 41
            Width = 85
            Height = 21
            TabOrder = 2
            OnChange = metecla02Change
            OnKeyDown = metecla02KeyDown
            OnKeyPress = metecla02KeyPress
          end
          object st_tecla02: TStaticText
            Left = 152
            Top = 43
            Width = 69
            Height = 17
            AutoSize = False
            BorderStyle = sbsSunken
            TabOrder = 3
          end
          object metecla03: TEdit
            Left = 64
            Top = 64
            Width = 85
            Height = 21
            TabOrder = 4
            OnChange = metecla03Change
            OnKeyDown = metecla03KeyDown
            OnKeyPress = metecla03KeyPress
          end
          object st_tecla03: TStaticText
            Left = 152
            Top = 66
            Width = 69
            Height = 17
            AutoSize = False
            BorderStyle = sbsSunken
            TabOrder = 5
          end
          object metecla04: TEdit
            Left = 64
            Top = 88
            Width = 85
            Height = 21
            TabOrder = 6
            OnChange = metecla04Change
            OnKeyDown = metecla04KeyDown
            OnKeyPress = metecla04KeyPress
          end
          object st_tecla04: TStaticText
            Left = 152
            Top = 90
            Width = 69
            Height = 17
            AutoSize = False
            BorderStyle = sbsSunken
            TabOrder = 7
          end
          object mecod01: TStaticText
            Left = 222
            Top = 19
            Width = 69
            Height = 17
            AutoSize = False
            BorderStyle = sbsSunken
            TabOrder = 8
          end
          object mecod02: TStaticText
            Left = 222
            Top = 43
            Width = 69
            Height = 17
            AutoSize = False
            BorderStyle = sbsSunken
            TabOrder = 9
          end
          object mecod03: TStaticText
            Left = 222
            Top = 66
            Width = 69
            Height = 17
            AutoSize = False
            BorderStyle = sbsSunken
            TabOrder = 10
          end
          object mecod04: TStaticText
            Left = 222
            Top = 90
            Width = 69
            Height = 17
            AutoSize = False
            BorderStyle = sbsSunken
            TabOrder = 11
          end
          object bbLimparME: TBitBtn
            Left = 24
            Top = 112
            Width = 111
            Height = 25
            Caption = '&Limpar Teclas'
            TabOrder = 12
            OnClick = bbLimparMEClick
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
        object GroupBox10: TGroupBox
          Left = 4
          Top = 147
          Width = 310
          Height = 141
          Caption = 'Conciliar Empresa:'
          TabOrder = 1
          object Label43: TLabel
            Left = 9
            Top = 23
            Width = 55
            Height = 13
            Caption = 'Tecla 01:'
          end
          object Label44: TLabel
            Left = 9
            Top = 47
            Width = 55
            Height = 13
            Caption = 'Tecla 02:'
          end
          object Label45: TLabel
            Left = 9
            Top = 70
            Width = 55
            Height = 13
            Caption = 'Tecla 03:'
          end
          object Label46: TLabel
            Left = 9
            Top = 94
            Width = 55
            Height = 13
            Caption = 'Tecla 04:'
          end
          object G_COMEMP: TSpeedButton
            Left = 175
            Top = 112
            Width = 111
            Height = 25
            Hint = 'Click aqui para Salvar'
            Caption = 'Salvar'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = G_COMEMPClick
          end
          object cetecla01: TEdit
            Left = 64
            Top = 17
            Width = 85
            Height = 21
            TabOrder = 0
            OnChange = cetecla01Change
            OnKeyDown = cetecla01KeyDown
            OnKeyPress = cetecla01KeyPress
          end
          object st_cetecla01: TStaticText
            Left = 152
            Top = 19
            Width = 69
            Height = 17
            AutoSize = False
            BorderStyle = sbsSunken
            TabOrder = 1
          end
          object cetecla02: TEdit
            Left = 64
            Top = 41
            Width = 85
            Height = 21
            TabOrder = 2
            OnChange = cetecla02Change
            OnKeyDown = cetecla02KeyDown
            OnKeyPress = cetecla02KeyPress
          end
          object st_cetecla02: TStaticText
            Left = 152
            Top = 43
            Width = 69
            Height = 17
            AutoSize = False
            BorderStyle = sbsSunken
            TabOrder = 3
          end
          object cetecla03: TEdit
            Left = 64
            Top = 64
            Width = 85
            Height = 21
            TabOrder = 4
            OnChange = cetecla03Change
            OnKeyDown = cetecla03KeyDown
            OnKeyPress = cetecla03KeyPress
          end
          object st_cetecla03: TStaticText
            Left = 152
            Top = 66
            Width = 69
            Height = 17
            AutoSize = False
            BorderStyle = sbsSunken
            TabOrder = 5
          end
          object cetecla04: TEdit
            Left = 64
            Top = 88
            Width = 85
            Height = 21
            TabOrder = 6
            OnChange = cetecla04Change
            OnKeyDown = cetecla04KeyDown
            OnKeyPress = cetecla04KeyPress
          end
          object st_cetecla04: TStaticText
            Left = 152
            Top = 90
            Width = 69
            Height = 17
            AutoSize = False
            BorderStyle = sbsSunken
            TabOrder = 7
          end
          object cecod01: TStaticText
            Left = 222
            Top = 19
            Width = 69
            Height = 17
            AutoSize = False
            BorderStyle = sbsSunken
            TabOrder = 8
          end
          object cecod02: TStaticText
            Left = 222
            Top = 43
            Width = 69
            Height = 17
            AutoSize = False
            BorderStyle = sbsSunken
            TabOrder = 9
          end
          object cecod03: TStaticText
            Left = 222
            Top = 66
            Width = 69
            Height = 17
            AutoSize = False
            BorderStyle = sbsSunken
            TabOrder = 10
          end
          object cecod04: TStaticText
            Left = 222
            Top = 90
            Width = 69
            Height = 17
            AutoSize = False
            BorderStyle = sbsSunken
            TabOrder = 11
          end
          object bbLimparCE: TBitBtn
            Left = 24
            Top = 112
            Width = 111
            Height = 25
            Caption = '&Limpar Teclas'
            TabOrder = 12
            OnClick = bbLimparCEClick
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
      end
      object Ts_Logo: TTabSheet
        Caption = '&Logotipos do Sistema'
        ImageIndex = 5
        object Label54: TLabel
          Left = 194
          Top = 8
          Width = 58
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object GroupBox12: TGroupBox
          Left = 0
          Top = 0
          Width = 185
          Height = 512
          Align = alLeft
          Caption = 'Chave'
          TabOrder = 0
          object DBGrid2: TDBGrid
            Left = 2
            Top = 15
            Width = 181
            Height = 495
            Align = alClient
            DataSource = Src_LogoSis
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'LSCHAVE'
                Visible = True
              end>
          end
        end
        object DBMemo1: TDBMemo
          Left = 195
          Top = 24
          Width = 474
          Height = 89
          DataField = 'LSDESCRICAO'
          DataSource = Src_LogoSis
          Enabled = False
          TabOrder = 1
        end
        object gb_logo: TGroupBox
          Left = 196
          Top = 122
          Width = 481
          Height = 258
          Caption = 'Logotipo'
          Enabled = False
          TabOrder = 2
          object logosis: TImage
            Left = 2
            Top = 15
            Width = 477
            Height = 180
            Align = alTop
            Stretch = True
          end
          object bbAdquirir: TBitBtn
            Left = 3
            Top = 204
            Width = 207
            Height = 50
            Hint = 'Busca a Imagem'
            Caption = '&Adquirir figuras'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = bbAdquirirClick
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
          object bbExcImagem: TBitBtn
            Left = 266
            Top = 205
            Width = 207
            Height = 50
            Hint = 'Limpa a Imagem'
            Caption = '&Excluir a figura'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = bbExcImagemClick
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
        end
        object BBALTERAR: TBitBtn
          Left = 198
          Top = 383
          Width = 100
          Height = 38
          Cursor = crHandPoint
          Hint = 'Altera o Registro Selecionado'
          Caption = '&Alterar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
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
        object BBGRAVAR: TBitBtn
          Left = 397
          Top = 383
          Width = 100
          Height = 38
          Cursor = crHandPoint
          Hint = 'Grava o Item que Esta Sendo Editado'
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
          Left = 576
          Top = 383
          Width = 100
          Height = 38
          Cursor = crHandPoint
          Hint = 'Cancela a Edi'#231#227'o do Registro Atual'
          Caption = '&Cancelar'
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
        object bbAplicarTodos: TBitBtn
          Left = 326
          Top = 426
          Width = 243
          Height = 25
          Cursor = crHandPoint
          Hint = 'Altera o Registro Selecionado'
          Caption = 'Aplicar em todos'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          TabStop = False
          OnClick = bbAplicarTodosClick
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
      end
      object tsConsultas: TTabSheet
        Caption = 'Locais de Consultas'
        ImageIndex = 8
        object gb_locais_consultas: TGroupBox
          Left = 0
          Top = 0
          Width = 784
          Height = 169
          Align = alTop
          Caption = 'Locais de Consultas:'
          TabOrder = 0
          object dbg_parlcd: TDBGrid
            Left = 2
            Top = 15
            Width = 780
            Height = 152
            Align = alClient
            DataSource = Src_PARLCD
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'descloc'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'endloc'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LCD_ORDEM'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LCD_CODUSR_INC'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LCD_DATHOR_INC'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LCD_CODUSR_ALT'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LCD_DATHOR_ALT'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LCD_TIPSERV'
                Width = 64
                Visible = True
              end>
          end
        end
        object gb_manipula_locais: TGroupBox
          Left = 0
          Top = 169
          Width = 784
          Height = 132
          Align = alTop
          Caption = 'Digita'#231#227'o:'
          TabOrder = 1
          object Label112: TLabel
            Left = 9
            Top = 19
            Width = 182
            Height = 13
            Caption = 'Descri'#231#227'o do Local de Consulta'
          end
          object Label113: TLabel
            Left = 9
            Top = 56
            Width = 179
            Height = 13
            Caption = 'Endere'#231'o do Local de Consulta'
          end
          object Label114: TLabel
            Left = 710
            Top = 18
            Width = 37
            Height = 13
            Caption = 'Ordem'
          end
          object DESCLCD: TEdit
            Left = 8
            Top = 35
            Width = 569
            Height = 21
            TabStop = False
            MaxLength = 100
            ReadOnly = True
            TabOrder = 0
            OnExit = DESCLCDExit
          end
          object ENDLCD: TEdit
            Left = 8
            Top = 72
            Width = 753
            Height = 21
            TabStop = False
            MaxLength = 200
            ReadOnly = True
            TabOrder = 3
            OnExit = ENDLCDExit
          end
          object bbLcd_Incluir: TBitBtn
            Left = 15
            Top = 103
            Width = 93
            Height = 25
            Caption = 'Incluir'
            TabOrder = 4
            OnClick = bbLcd_IncluirClick
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
          object bbLcd_Alterar: TBitBtn
            Left = 154
            Top = 103
            Width = 93
            Height = 25
            Caption = 'Alterar'
            TabOrder = 5
            OnClick = bbLcd_AlterarClick
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
          object bbLcd_Excluir: TBitBtn
            Left = 442
            Top = 102
            Width = 93
            Height = 25
            Caption = 'Excluir'
            TabOrder = 7
            OnClick = bbLcd_ExcluirClick
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
          object bbLcd_Cancelar: TBitBtn
            Left = 595
            Top = 103
            Width = 93
            Height = 25
            Caption = 'Cancelar'
            TabOrder = 8
            OnClick = bbLcd_CancelarClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333333333333333333333333FFF33FF333FFF339993370733
              999333777FF37FF377733339993000399933333777F777F77733333399970799
              93333333777F7377733333333999399933333333377737773333333333990993
              3333333333737F73333333333331013333333333333777FF3333333333910193
              333333333337773FF3333333399000993333333337377737FF33333399900099
              93333333773777377FF333399930003999333337773777F777FF339993370733
              9993337773337333777333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
            NumGlyphs = 2
          end
          object bbLcd_Gravar: TBitBtn
            Left = 287
            Top = 103
            Width = 93
            Height = 25
            Caption = 'Gravar'
            Enabled = False
            TabOrder = 6
            OnClick = bbLcd_GravarClick
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
          object ORDEMLCD: TEdit
            Left = 711
            Top = 35
            Width = 46
            Height = 21
            TabStop = False
            ReadOnly = True
            TabOrder = 2
            OnExit = ORDEMLCDExit
          end
          object RG_TIPSERV: TRadioGroup
            Left = 580
            Top = 8
            Width = 130
            Height = 57
            Caption = 'Tipo Servi'#231'o:'
            Items.Strings = (
              'Consulta'
              'Replica'#231#227'o'
              'Ambos')
            TabOrder = 1
          end
        end
      end
      object Ts_CabNFE: TTabSheet
        Caption = 'Cabe'#231'alho da NFE'
        ImageIndex = 8
        object Label62: TLabel
          Left = 0
          Top = 5
          Width = 62
          Height = 13
          Caption = 'Linha 1 : ='
        end
        object Label63: TLabel
          Left = 0
          Top = 29
          Width = 62
          Height = 13
          Caption = 'Linha 2 : ='
        end
        object Label64: TLabel
          Left = 0
          Top = 53
          Width = 62
          Height = 13
          Caption = 'Linha 3 : ='
        end
        object Label65: TLabel
          Left = 0
          Top = 77
          Width = 62
          Height = 13
          Caption = 'Linha 4 : ='
        end
        object Label66: TLabel
          Left = 0
          Top = 101
          Width = 62
          Height = 13
          Caption = 'Linha 5 : ='
        end
        object Label67: TLabel
          Left = 0
          Top = 125
          Width = 62
          Height = 13
          Caption = 'Linha 6 : ='
        end
        object Label68: TLabel
          Left = 0
          Top = 149
          Width = 62
          Height = 13
          Caption = 'Linha 7 : ='
        end
        object edt_linha01: TEdit
          Left = 64
          Top = 2
          Width = 353
          Height = 21
          TabOrder = 0
        end
        object edt_linha02: TEdit
          Left = 64
          Top = 26
          Width = 353
          Height = 21
          TabOrder = 1
        end
        object edt_linha03: TEdit
          Left = 64
          Top = 50
          Width = 353
          Height = 21
          TabOrder = 2
        end
        object edt_linha04: TEdit
          Left = 64
          Top = 74
          Width = 353
          Height = 21
          TabOrder = 3
        end
        object edt_linha05: TEdit
          Left = 64
          Top = 98
          Width = 353
          Height = 21
          TabOrder = 4
        end
        object edt_linha06: TEdit
          Left = 64
          Top = 122
          Width = 353
          Height = 21
          TabOrder = 5
        end
        object btn_salvar: TButton
          Left = 128
          Top = 170
          Width = 177
          Height = 41
          Caption = '&Salvar Textos'
          TabOrder = 6
          OnClick = btn_salvarClick
        end
        object edt_linha07: TEdit
          Left = 64
          Top = 146
          Width = 353
          Height = 21
          TabOrder = 7
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Retidado'
        ImageIndex = 9
        object GB_DM: TGroupBox
          Left = 0
          Top = 0
          Width = 784
          Height = 73
          Align = alTop
          Caption = 
            'Configura'#231#245'es de Portas de Comunica'#231#227'o para Dispositivos Moveis ' +
            'e Pedidos Eletronicos'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object Label104: TLabel
            Left = 9
            Top = 17
            Width = 244
            Height = 13
            Caption = 'Endere'#231'o IP do Servidor Conex'#227'o Externa:'
          end
          object Label105: TLabel
            Left = 576
            Top = 16
            Width = 97
            Height = 13
            Caption = 'Porta do Modem:'
          end
          object Label106: TLabel
            Left = 9
            Top = 35
            Width = 241
            Height = 13
            Caption = 'Endere'#231'o IP do Servidor Conex'#227'o Interna:'
          end
          object G_DM: TSpeedButton
            Left = 266
            Top = 51
            Width = 189
            Height = 22
            Hint = 'Click aqui para Salvar'
            Caption = 'Salvar'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = G_DMClick
          end
          object MENDIP: TEdit
            Left = 257
            Top = 13
            Width = 312
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnChange = MENDIPChange
            OnExit = MENDIPExit
          end
          object PORTA: TEdit
            Left = 673
            Top = 13
            Width = 96
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnChange = PORTAChange
            OnExit = PORTAExit
            OnKeyPress = JURMKeyPress
          end
          object MENDIP_INTERNO: TEdit
            Left = 257
            Top = 31
            Width = 312
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            OnChange = MENDIP_INTERNOChange
            OnExit = MENDIP_INTERNOExit
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 568
      Width = 792
      Height = 27
      Align = alBottom
      TabOrder = 1
      object SAIR: TBitBtn
        Left = 272
        Top = 3
        Width = 262
        Height = 23
        Caption = '&Sair'
        TabOrder = 0
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
  end
  object ColorDialog1: TColorDialog
    Left = 703
    Top = 344
  end
  object Par_LDR: TQuery
    CachedUpdates = True
    BeforePost = Par_LDRBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Par_LDRCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From PARLDR')
    UpdateObject = U_Par_LDR
    Left = 728
    Top = 56
    object Par_LDRCODEMP: TFloatField
      FieldName = 'CODEMP'
      Origin = 'SG_ASSOC.PARLDR.CODEMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Par_LDRCDOC: TStringField
      FieldName = 'CDOC'
      Origin = 'SG_ASSOC.PARLDR.CDOC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Par_LDRCODCC: TStringField
      DisplayLabel = 'Centro de Custo'
      FieldName = 'CODCC'
      Origin = 'SG_ASSOC.PARLDR.CODCC'
      Size = 6
    end
    object Par_LDRCODDEP: TStringField
      DisplayLabel = 'Depto'
      FieldName = 'CODDEP'
      Origin = 'SG_ASSOC.PARLDR.CODDEP'
      Size = 6
    end
    object Par_LDRNOME: TStringField
      DisplayLabel = 'Descricao a Ser Gravada'
      FieldName = 'NOME'
      Origin = 'SG_ASSOC.PARLDR.NOME'
      Size = 40
    end
    object Par_LDRCDESC_ORI: TStringField
      DisplayLabel = 'Descricao Original'
      FieldName = 'CDESC_ORI'
      Origin = 'SG_ASSOC.PARLDR.CDESC_ORI'
      Size = 40
    end
    object Par_LDRnomdep: TStringField
      DisplayLabel = 'Nome do Departamento'
      FieldKind = fkCalculated
      FieldName = 'nomdep'
      Size = 40
      Calculated = True
    end
    object Par_LDRnomccu: TStringField
      DisplayLabel = 'Nome do Centro de Custo'
      FieldKind = fkCalculated
      FieldName = 'nomccu'
      Size = 40
      Calculated = True
    end
    object Par_LDRnatdc_ccu: TStringField
      DisplayLabel = 'Nat.D-Debito C-Credito'
      FieldKind = fkCalculated
      FieldName = 'natdc_ccu'
      Size = 1
      Calculated = True
    end
  end
  object U_Par_LDR: TUpdateSQL
    ModifySQL.Strings = (
      'update PARLDR'
      'set'
      '  CODEMP = :CODEMP,'
      '  CDOC = :CDOC,'
      '  CODCC = :CODCC,'
      '  CODDEP = :CODDEP,'
      '  NOME = :NOME,'
      '  CDESC_ORI = :CDESC_ORI'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CDOC = :OLD_CDOC')
    InsertSQL.Strings = (
      'insert into PARLDR'
      '  (CODEMP, CDOC, CODCC, CODDEP, NOME, CDESC_ORI)'
      'values'
      '  (:CODEMP, :CDOC, :CODCC, :CODDEP, :NOME, :CDESC_ORI)')
    DeleteSQL.Strings = (
      'delete from PARLDR'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  CDOC = :OLD_CDOC')
    Left = 724
    Top = 200
  end
  object Src_Par_Ldr: TDataSource
    DataSet = Par_LDR
    Left = 672
    Top = 24
  end
  object opd1: TOpenPictureDialog
    Ctl3D = False
    DefaultExt = '*.JPG'
    FileName = 
      'C:\Arquivos de programas\Arquivos comuns\Microsoft Shared\Papel ' +
      'de carta\Plano de fundo Milho.jpg'
    Filter = 'All (*.jpeg; *.jpg)|*.JPEG;*.JPG'
    OptionsEx = [ofExNoPlacesBar]
    Left = 658
    Top = 306
  end
  object Src_LogoSis: TDataSource
    DataSet = Ado_CadLog
    OnDataChange = Src_LogoSisDataChange
    Left = 600
    Top = 232
  end
  object Src_PARLCD: TDataSource
    DataSet = DM6.Tb_ParLCD
    OnDataChange = Src_PARLCDDataChange
    Left = 549
    Top = 213
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=MSDAORA.1;Password=DEZENOVE;User ID=SGE;Data Source=SGE' +
      ';Persist Security Info=True'
    KeepConnection = False
    LoginPrompt = False
    Provider = 'MSDAORA.1'
    Left = 661
    Top = 188
  end
  object Ado_CadLog: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'Select * from CADLOGSIS')
    Left = 661
    Top = 100
    object Ado_CadLogLSCHAVE: TStringField
      FieldName = 'LSCHAVE'
      Size = 30
    end
    object Ado_CadLogLSDESCRICAO: TStringField
      FieldName = 'LSDESCRICAO'
      Size = 300
    end
    object Ado_CadLogLSLOGO: TBlobField
      FieldName = 'LSLOGO'
    end
    object Ado_CadLogLSCODEMP: TFloatField
      FieldName = 'LSCODEMP'
    end
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 653
    Top = 124
  end
end

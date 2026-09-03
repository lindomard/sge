object Frm_LRS: TFrm_LRS
  Left = 59
  Top = 201
  Width = 716
  Height = 494
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Livro Registro de Sa'#237'das'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 708
    Height = 463
    ActivePage = tsGeral
    Align = alClient
    TabOrder = 0
    object tsGeral: TTabSheet
      Caption = 'Geral'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 700
        Height = 200
        Align = alClient
        BorderWidth = 3
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 4
          Top = 4
          Width = 692
          Height = 192
          Align = alClient
          DataSource = DM5.Src_NS
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
              FieldName = 'NSNUMERO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSSERIE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSMODELO'
              Title.Caption = 'Modelo'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSSUBSER'
              Title.Caption = 'S'#250'b-S'#233'rie'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'uf'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cgc'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'inscricao'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSCFO2'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSCFO1'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSTOTNOTA'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSALIQ'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSFRETE'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSTOTISEN'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSCHAVEP'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSORDEMP'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSTOTNOR'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSTOTRET'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSBASEN'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSICMSN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSALIQ2'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSDTEMIS'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSNFCE_DATA'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSNFCE_NUMERO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSNUMCUP'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSDATCUP'
              Width = 64
              Visible = True
            end>
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 200
        Width = 700
        Height = 235
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 604
          Height = 235
          Align = alClient
          TabOrder = 0
          object Label1: TLabel
            Left = 6
            Top = 68
            Width = 83
            Height = 13
            Caption = 'Sigla do Estado..:'
          end
          object Label2: TLabel
            Left = 6
            Top = 90
            Width = 83
            Height = 13
            Caption = 'Data Inicial.........:'
          end
          object Label3: TLabel
            Left = 6
            Top = 114
            Width = 48
            Height = 13
            Caption = 'Data Final'
          end
          object Label5: TLabel
            Left = 58
            Top = 113
            Width = 33
            Height = 13
            Caption = '..........:'
          end
          object Label4: TLabel
            Left = 263
            Top = 68
            Width = 75
            Height = 13
            Caption = 'Livro N'#250'mero...:'
          end
          object Label6: TLabel
            Left = 159
            Top = 69
            Width = 92
            Height = 13
            Caption = 'em branco = Todos'
          end
          object Label7: TLabel
            Left = 210
            Top = 89
            Width = 121
            Height = 13
            Caption = 'N'#250'mero da Pagina Inicial:'
          end
          object Label8: TLabel
            Left = 210
            Top = 111
            Width = 86
            Height = 13
            Caption = 'Imprimir da P'#225'gina'
          end
          object Label9: TLabel
            Left = 347
            Top = 111
            Width = 6
            Height = 13
            Caption = #224
          end
          object Label10: TLabel
            Left = 6
            Top = 131
            Width = 99
            Height = 13
            Caption = 'Dt. Termo. de Abert: '
          end
          object Label11: TLabel
            Left = 185
            Top = 131
            Width = 140
            Height = 13
            Caption = 'Dt. Termo de Encerramento:  '
          end
          object Label12: TLabel
            Left = 5
            Top = 155
            Width = 128
            Height = 13
            Caption = 'Total P'#225'gina para Termos: '
          end
          object Label13: TLabel
            Left = 8
            Top = 10
            Width = 139
            Height = 13
            Caption = 'Nota Especifica............'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 393
            Top = 8
            Width = 31
            Height = 13
            Caption = 'CFOP:'
          end
          object Label15: TLabel
            Left = 16
            Top = 215
            Width = 48
            Height = 13
            Caption = 'Protocolo:'
          end
          object UF: TComboBox
            Left = 105
            Top = 64
            Width = 51
            Height = 21
            Ctl3D = False
            ItemHeight = 13
            ParentCtl3D = False
            TabOrder = 3
            OnKeyPress = UFKeyPress
            Items.Strings = (
              'AC'
              'AL'
              'AM'
              'AP'
              'CE'
              'DF'
              'GO'
              'MA'
              'MG'
              'MS'
              'MT'
              'PA'
              'PE'
              'PI'
              'PR'
              'RJ'
              'RN'
              'RO'
              'RR'
              'RS'
              'SC'
              'SP'
              'TO')
          end
          object LN: TEdit
            Left = 340
            Top = 64
            Width = 55
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 9
            Text = '001'
            OnExit = LNExit
            OnKeyPress = LNKeyPress
          end
          object TIPO: TRadioGroup
            Left = 399
            Top = 88
            Width = 88
            Height = 64
            Caption = 'Tipo Impress'#227'o:'
            Ctl3D = False
            ItemIndex = 0
            Items.Strings = (
              '&Geral'
              '&So Principal'
              'S&o Resumo')
            ParentCtl3D = False
            TabOrder = 7
          end
          object PGI: TEdit
            Left = 334
            Top = 85
            Width = 61
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            Text = '01'
            OnKeyPress = PGIKeyPress
          end
          object PG1: TEdit
            Left = 302
            Top = 107
            Width = 41
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
            OnKeyPress = PG1KeyPress
          end
          object PG2: TEdit
            Left = 357
            Top = 108
            Width = 38
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 6
            OnKeyPress = PG2KeyPress
          end
          object TERMO: TRadioGroup
            Left = 399
            Top = 53
            Width = 89
            Height = 35
            Caption = 'Termo'
            Columns = 2
            Ctl3D = False
            ItemIndex = 1
            Items.Strings = (
              '&Sim'
              '&Nao')
            ParentCtl3D = False
            TabOrder = 8
          end
          object DTTERM1: TMaskEdit
            Left = 106
            Top = 131
            Width = 75
            Height = 19
            Ctl3D = False
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 12
            Text = '  /  /    '
            OnExit = DTTERM1Exit
          end
          object DTTERM2: TMaskEdit
            Left = 320
            Top = 130
            Width = 75
            Height = 19
            Ctl3D = False
            EditMask = '99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 13
            Text = '  /  /    '
            OnExit = DTTERM2Exit
          end
          object TPGTERM: TEdit
            Left = 135
            Top = 152
            Width = 105
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 14
            Text = '0'
          end
          object CB_ICMSROBS: TCheckBox
            Left = 247
            Top = 154
            Width = 253
            Height = 18
            Caption = 'Imprimir o Valor do Icms Retido na Observa'#231#227'o'
            Checked = True
            State = cbChecked
            TabOrder = 15
          end
          object RG_MODELO: TRadioGroup
            Left = 490
            Top = 5
            Width = 95
            Height = 64
            Caption = 'Modelo do Livro:'
            Ctl3D = False
            ItemIndex = 0
            Items.Strings = (
              '&Modelo 01'
              'M&odelo 02'
              'Modelo 03'
              'Modelo 04')
            ParentCtl3D = False
            TabOrder = 16
          end
          object CB_PISCOF: TCheckBox
            Left = 9
            Top = 189
            Width = 152
            Height = 18
            Caption = 'Emitir Coluna do Pis/Cofins'
            TabOrder = 17
          end
          object RG_DOC: TRadioGroup
            Left = 491
            Top = 70
            Width = 95
            Height = 64
            Caption = 'Documentos:'
            Ctl3D = False
            ItemIndex = 0
            Items.Strings = (
              '&Todos'
              '&Notas Fiscais'
              '&Cupom Fiscal'
              'NFCE')
            ParentCtl3D = False
            TabOrder = 18
          end
          object cb_antigo: TCheckBox
            Left = 246
            Top = 171
            Width = 56
            Height = 18
            Caption = 'Antigo'
            TabOrder = 19
          end
          object rg_oper: TRadioGroup
            Left = 7
            Top = 27
            Width = 333
            Height = 35
            Caption = 'Tipo de Opera'#231#227'o:'
            Columns = 3
            Ctl3D = False
            ItemIndex = 2
            Items.Strings = (
              'Estaduais'
              'Interestaduais'
              'Ambas')
            ParentCtl3D = False
            TabOrder = 2
          end
          object CheckBox1: TCheckBox
            Left = 9
            Top = 172
            Width = 204
            Height = 18
            Caption = '&Termos de Abertura com P'#225'gina: 0001'
            Checked = True
            State = cbChecked
            TabOrder = 20
          end
          object NUMNF: TEdit
            Left = 117
            Top = 4
            Width = 121
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
          end
          object RG_NFCANC: TRadioGroup
            Left = 491
            Top = 135
            Width = 95
            Height = 69
            Caption = 'Listar Notas:'
            Ctl3D = False
            ItemIndex = 0
            Items.Strings = (
              'Todas'
              'Normais'
              'Canceladas'
              'Inutilizadas'
              'Denegadas')
            ParentCtl3D = False
            TabOrder = 21
          end
          object CB_RETIDO_SEPAR: TCheckBox
            Left = 246
            Top = 188
            Width = 211
            Height = 18
            Caption = 'ICMS Retido Linha Separada'
            TabOrder = 22
          end
          object MCFOP: TEdit
            Left = 428
            Top = 5
            Width = 58
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
          end
          object CB_USACUPOM: TCheckBox
            Left = 246
            Top = 3
            Width = 141
            Height = 18
            Caption = 'Usar Tabela de Cupom'
            TabOrder = 23
          end
          object bbECFCat52: TBitBtn
            Left = 480
            Top = 215
            Width = 192
            Height = 27
            Caption = 'Comparar ECF com CAT52'
            TabOrder = 24
            Visible = False
            OnClick = bbECFCat52Click
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              0400000000000001000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888FFFFFFFFFF88888000000000008888877777777777F88808888888880
              808887FFFFFFFFFFF7F80000000000000808777777777777787F0888888BBB88
              000878888888FFF8777F08888887778808087FFFFFF777FF7F7F000000000000
              08807777777777777F8708888888888080807FFFFFFFFFF7F7F7800000000008
              080087777777777F7F77880FFFFFFFF08080887888FFFFF7F7F78880F00000F0
              0008888787777787777F8880FFFFFFFF08888887888FFFFF7F8888880F00000F
              08888888787777787F8888880FFFFFFFF08888887888888887F8888880000000
              008888888777777777F888888888888888888888888888888888}
            NumGlyphs = 2
          end
          object MDT1: TDateEdit
            Left = 106
            Top = 88
            Width = 92
            Height = 19
            Ctl3D = False
            NumGlyphs = 2
            ParentCtl3D = False
            TabOrder = 10
            OnExit = MDT1Exit
          end
          object MDT2: TDateEdit
            Left = 106
            Top = 109
            Width = 92
            Height = 19
            Ctl3D = False
            NumGlyphs = 2
            ParentCtl3D = False
            TabOrder = 11
            OnExit = MDT2Exit
          end
          object cb_protocolo: TComboBox
            Left = 73
            Top = 212
            Width = 145
            Height = 21
            ItemHeight = 13
            ItemIndex = 2
            TabOrder = 25
            Text = 'Todas'
            Items.Strings = (
              'Com Protocolo'
              'Sem Protocolo'
              'Todas')
          end
          object bbCompararNFSComXML: TBitBtn
            Left = 248
            Top = 207
            Width = 192
            Height = 27
            Caption = 'Comparar XML x Notas'
            TabOrder = 26
            OnClick = bbCompararNFSComXMLClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              0400000000000001000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888FFFFFFFFFF88888000000000008888877777777777F88808888888880
              808887FFFFFFFFFFF7F80000000000000808777777777777787F0888888BBB88
              000878888888FFF8777F08888887778808087FFFFFF777FF7F7F000000000000
              08807777777777777F8708888888888080807FFFFFFFFFF7F7F7800000000008
              080087777777777F7F77880FFFFFFFF08080887888FFFFF7F7F78880F00000F0
              0008888787777787777F8880FFFFFFFF08888887888FFFFF7F8888880F00000F
              08888888787777787F8888880FFFFFFFF08888887888888887F8888880000000
              008888888777777777F888888888888888888888888888888888}
            NumGlyphs = 2
          end
        end
        object Panel4: TPanel
          Left = 604
          Top = 0
          Width = 96
          Height = 235
          Align = alRight
          TabOrder = 1
          object sbSalvarPadrao: TSpeedButton
            Left = 2
            Top = 54
            Width = 90
            Height = 50
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
            Layout = blGlyphTop
            NumGlyphs = 2
            OnClick = sbSalvarPadraoClick
          end
          object BImprimir: TBitBtn
            Left = 2
            Top = 103
            Width = 90
            Height = 50
            Caption = '&Imprimir'
            TabOrder = 0
            OnClick = BImprimirClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              0400000000000001000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888FFFFFFFFFF88888000000000008888877777777777F88808888888880
              808887FFFFFFFFFFF7F80000000000000808777777777777787F0888888BBB88
              000878888888FFF8777F08888887778808087FFFFFF777FF7F7F000000000000
              08807777777777777F8708888888888080807FFFFFFFFFF7F7F7800000000008
              080087777777777F7F77880FFFFFFFF08080887888FFFFF7F7F78880F00000F0
              0008888787777787777F8880FFFFFFFF08888887888FFFFF7F8888880F00000F
              08888888787777787F8888880FFFFFFFF08888887888888887F8888880000000
              008888888777777777F888888888888888888888888888888888}
            Layout = blGlyphTop
            NumGlyphs = 2
          end
          object BBnFechar: TBitBtn
            Left = 2
            Top = 152
            Width = 90
            Height = 50
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
            Layout = blGlyphTop
            NumGlyphs = 2
          end
          object bbComparar: TBitBtn
            Left = 1
            Top = 3
            Width = 90
            Height = 50
            Caption = '&Comparar c/NFE'
            TabOrder = 2
            OnClick = bbCompararClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              0400000000000001000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888FFFFFFFFFF88888000000000008888877777777777F88808888888880
              808887FFFFFFFFFFF7F80000000000000808777777777777787F0888888BBB88
              000878888888FFF8777F08888887778808087FFFFFF777FF7F7F000000000000
              08807777777777777F8708888888888080807FFFFFFFFFF7F7F7800000000008
              080087777777777F7F77880FFFFFFFF08080887888FFFFF7F7F78880F00000F0
              0008888787777787777F8880FFFFFFFF08888887888FFFFF7F8888880F00000F
              08888888787777787F8888880FFFFFFFF08888887888888887F8888880000000
              008888888777777777F888888888888888888888888888888888}
            Layout = blGlyphTop
            NumGlyphs = 2
          end
          object bbcompredz: TBitBtn
            Left = 16
            Top = 208
            Width = 75
            Height = 25
            Caption = 'Comp Red Z'
            TabOrder = 3
            Visible = False
            OnClick = bbcompredzClick
          end
        end
      end
    end
    object TsRelator: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object rlmod04: TRLReport
        Left = -17
        Top = -6
        Width = 794
        Height = 1123
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = DM5.Src_NS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Visible = False
        object RLBand8: TRLBand
          Left = 39
          Top = 39
          Width = 716
          Height = 83
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLDBText2: TRLDBText
            Left = 0
            Top = 1
            Width = 591
            Height = 16
            AutoSize = False
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object rl_cab: TRLLabel
            Left = 0
            Top = 18
            Width = 581
            Height = 16
            AutoSize = False
            Caption = 
              'Rela'#231#227'o de Notas Fiscais Sinteticas de Saida no Per'#237'odo de 01/10' +
              '/2010 a 31/10/2010'
          end
          object rl_Cliente: TRLLabel
            Left = 202
            Top = 50
            Width = 322
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Cliente'
          end
          object rl_NFECF: TRLLabel
            Left = 1
            Top = 50
            Width = 70
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'N.F. / ECF'
          end
          object rl_pedido: TRLLabel
            Left = 148
            Top = 50
            Width = 54
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Pedido'
          end
          object rl_emissao: TRLLabel
            Left = 71
            Top = 50
            Width = 78
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Dt. Emiss'#227'o'
          end
          object rl_total: TRLLabel
            Left = 523
            Top = 50
            Width = 96
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Total da Nota'
          end
          object rl_tipo: TRLLabel
            Left = 618
            Top = 50
            Width = 98
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Tipo da Nota'
          end
          object RLLabel9: TRLLabel
            Left = 0
            Top = 34
            Width = 720
            Height = 16
            AutoSize = False
            Caption = 
              '================================================================' +
              '========================='
          end
          object RLLabel21: TRLLabel
            Left = 1
            Top = 66
            Width = 720
            Height = 16
            AutoSize = False
            Caption = 
              '================================================================' +
              '========================='
          end
          object RLLabel1: TRLLabel
            Left = 581
            Top = 18
            Width = 68
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Emiss'#227'o..:'
          end
          object RLSystemInfo7: TRLSystemInfo
            Left = 684
            Top = 1
            Width = 31
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itLastPageNumber
          end
          object RLLabel7: TRLLabel
            Left = 676
            Top = 1
            Width = 8
            Height = 16
            Caption = '/'
          end
          object RLSystemInfo5: TRLSystemInfo
            Left = 649
            Top = 1
            Width = 27
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
          end
          object RLLabel6: TRLLabel
            Left = 592
            Top = 1
            Width = 56
            Height = 16
            Caption = 'P'#225'gina..:'
          end
          object RLSystemInfo6: TRLSystemInfo
            Left = 649
            Top = 18
            Width = 67
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
        end
        object RLGroup2: TRLGroup
          Left = 39
          Top = 122
          Width = 716
          Height = 53
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataFields = 'CRCODCLI'
          object RLBand9: TRLBand
            Left = 0
            Top = 0
            Width = 716
            Height = 17
            BandType = btTitle
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object rl_data: TRLLabel
              Left = 23
              Top = 0
              Width = 104
              Height = 16
              Alignment = taCenter
              Caption = 'Dia..: 01/10/2010'
            end
          end
          object RLBand10: TRLBand
            Left = 0
            Top = 17
            Width = 716
            Height = 17
            object RLDBText3: TRLDBText
              Left = 71
              Top = 0
              Width = 78
              Height = 16
              AutoSize = False
              DataField = 'numdoc'
              Holder = rl_emissao
            end
            object RLDBText5: TRLDBText
              Left = 1
              Top = 0
              Width = 70
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'CRNUMERO'
              Holder = rl_NFECF
            end
            object RLDBText6: TRLDBText
              Left = 148
              Top = 0
              Width = 54
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'NSCHAVEP'
              DataSource = DM5.Src_NS
              Holder = rl_pedido
            end
            object RLDBText7: TRLDBText
              Left = 71
              Top = 0
              Width = 78
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'NSDTEMIS'
              DataSource = DM5.Src_NS
              Holder = rl_emissao
            end
            object RLDBText8: TRLDBText
              Left = 202
              Top = 0
              Width = 322
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'CRAZAO'
              DataSource = DM5.Src_NS
              Holder = rl_Cliente
            end
            object RLDBText11: TRLDBText
              Left = 1
              Top = 0
              Width = 70
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'NSNUMERO'
              DataSource = DM5.Src_NS
              Holder = rl_NFECF
            end
            object RLDBText4: TRLDBText
              Left = 523
              Top = 0
              Width = 96
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'NSTOTNOTA'
              DataSource = DM5.Src_NS
              Holder = rl_total
            end
            object RLDBText9: TRLDBText
              Left = 618
              Top = 0
              Width = 98
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'NSCFO1'
              DataSource = DM5.Src_NS
              Holder = rl_tipo
            end
          end
          object RLDBText15: TRLDBText
            Left = 618
            Top = 35
            Width = 98
            Height = 16
            AutoSize = False
            Holder = rl_tipo
          end
          object RLBand11: TRLBand
            Left = 0
            Top = 34
            Width = 716
            Height = 18
            BandType = btSummary
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            object RLLabel11: TRLLabel
              Left = 322
              Top = 1
              Width = 224
              Height = 16
              AutoSize = False
              Caption = 'Total do Dia 07/10/2010'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object TotGAberto: TRLLabel
              Left = 546
              Top = 1
              Width = 169
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = '999.999.999,99'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
        object RLBand12: TRLBand
          Left = 39
          Top = 175
          Width = 716
          Height = 16
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Borders.FixedTop = True
          object rl_banner: TRLLabel
            Left = -7
            Top = 0
            Width = 716
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object tsCompar: TTabSheet
      Caption = 'Comparacoes'
      ImageIndex = 2
      object Memo_comparacoes: TMemo
        Left = 0
        Top = 0
        Width = 700
        Height = 435
        Align = alClient
        Lines.Strings = (
          'Memo_comparacoes')
        TabOrder = 0
      end
    end
    object tsEcfCat52: TTabSheet
      Caption = 'Compara'#231#245'es ECF x CAT52'
      ImageIndex = 3
      object Panel5: TPanel
        Left = 0
        Top = 387
        Width = 692
        Height = 41
        Align = alBottom
        TabOrder = 0
      end
      object DBGrid_ecfcart52: TDBGrid
        Left = 0
        Top = 0
        Width = 692
        Height = 387
        Align = alClient
        DataSource = src_ecfcat52
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ecf_datacup'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ecf_numcup'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ecf_totliq'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ecf_item'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ecf_codpro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ecf_pu'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ecf_qtd'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ecf_totdes'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ecf_totacre'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ecf_sitaliq'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ecf_basen'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ecf_icmsn'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ecf_codecf'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ecf_totcupliq'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ecf_cancelado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cat52_codpro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cat52_pu'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cat52_qtd'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cat52_totdes'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cat52_totacre'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cat52_sitaliq'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cat52_basen'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cat52_icmsn'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cat52_totliqcup'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cat52_cancelado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cat52_nompro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cat52_und'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cat52_totliq'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cat52_decpu'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cat52_decqtd'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cat52_ger_peracre'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cat52_ger_valacre'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cat52_ger_perdes'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cat52_ger_valdes'
            Visible = True
          end>
      end
    end
  end
  object temp: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select ccodemp,cicmsnor,cicmstp from cadcli')
    Left = 312
    Top = 96
  end
  object temp1: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 200
    Top = 96
  end
  object temp2: TQuery
    DatabaseName = '\SGE\TEMP'
    Left = 376
    Top = 96
  end
  object mem_ecfcat52: TRxMemoryData
    FieldDefs = <>
    Left = 452
    Top = 144
    object mem_ecfcat52ecf_datacup: TDateField
      FieldName = 'ecf_datacup'
    end
    object mem_ecfcat52ecf_numcup: TIntegerField
      FieldName = 'ecf_numcup'
    end
    object mem_ecfcat52ecf_totliq: TFloatField
      FieldName = 'ecf_totliq'
    end
    object mem_ecfcat52ecf_item: TIntegerField
      FieldName = 'ecf_item'
    end
    object mem_ecfcat52ecf_codpro: TStringField
      FieldName = 'ecf_codpro'
      Size = 14
    end
    object mem_ecfcat52ecf_pu: TFloatField
      FieldName = 'ecf_pu'
    end
    object mem_ecfcat52ecf_qtd: TFloatField
      FieldName = 'ecf_qtd'
    end
    object mem_ecfcat52ecf_totdes: TFloatField
      FieldName = 'ecf_totdes'
    end
    object mem_ecfcat52ecf_totacre: TFloatField
      FieldName = 'ecf_totacre'
    end
    object mem_ecfcat52ecf_sitaliq: TStringField
      FieldName = 'ecf_sitaliq'
      Size = 7
    end
    object mem_ecfcat52ecf_basen: TFloatField
      FieldName = 'ecf_basen'
    end
    object mem_ecfcat52ecf_icmsn: TFloatField
      FieldName = 'ecf_icmsn'
    end
    object mem_ecfcat52ecf_codecf: TIntegerField
      FieldName = 'ecf_codecf'
    end
    object mem_ecfcat52ecf_totcupliq: TFloatField
      FieldName = 'ecf_totcupliq'
    end
    object mem_ecfcat52ecf_cancelado: TStringField
      FieldName = 'ecf_cancelado'
      Size = 1
    end
    object mem_ecfcat52cat52_codpro: TStringField
      FieldName = 'cat52_codpro'
      Size = 14
    end
    object mem_ecfcat52cat52_pu: TFloatField
      FieldName = 'cat52_pu'
    end
    object mem_ecfcat52cat52_qtd: TFloatField
      FieldName = 'cat52_qtd'
    end
    object mem_ecfcat52cat52_totdes: TFloatField
      FieldName = 'cat52_totdes'
    end
    object mem_ecfcat52cat52_totacre: TFloatField
      FieldName = 'cat52_totacre'
    end
    object mem_ecfcat52cat52_sitaliq: TStringField
      FieldName = 'cat52_sitaliq'
      Size = 7
    end
    object mem_ecfcat52cat52_basen: TFloatField
      FieldName = 'cat52_basen'
    end
    object mem_ecfcat52cat52_icmsn: TFloatField
      FieldName = 'cat52_icmsn'
    end
    object mem_ecfcat52cat52_totliqcup: TFloatField
      FieldName = 'cat52_totliqcup'
    end
    object mem_ecfcat52cat52_cancelado: TStringField
      FieldName = 'cat52_cancelado'
      Size = 1
    end
    object mem_ecfcat52cat52_nompro: TStringField
      FieldName = 'cat52_nompro'
      Size = 100
    end
    object mem_ecfcat52cat52_und: TStringField
      FieldName = 'cat52_und'
      Size = 3
    end
    object mem_ecfcat52cat52_totliq: TFloatField
      FieldName = 'cat52_totliq'
    end
    object mem_ecfcat52cat52_decpu: TIntegerField
      FieldName = 'cat52_decpu'
    end
    object mem_ecfcat52cat52_decqtd: TIntegerField
      FieldName = 'cat52_decqtd'
    end
    object mem_ecfcat52cat52_ger_peracre: TFloatField
      FieldName = 'cat52_ger_peracre'
    end
    object mem_ecfcat52cat52_ger_valacre: TFloatField
      FieldName = 'cat52_ger_valacre'
    end
    object mem_ecfcat52cat52_ger_perdes: TFloatField
      FieldName = 'cat52_ger_perdes'
    end
    object mem_ecfcat52cat52_ger_valdes: TFloatField
      FieldName = 'cat52_ger_valdes'
    end
  end
  object src_ecfcat52: TDataSource
    DataSet = mem_ecfcat52
    Left = 504
    Top = 160
  end
end

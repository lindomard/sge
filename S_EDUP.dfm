object Frm_EDUP: TFrm_EDUP
  Left = 294
  Top = 162
  Width = 945
  Height = 513
  Caption = 'Emiss'#227'o de Duplicatas'
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 937
    Height = 482
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'Geral'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 929
        Height = 239
        Align = alClient
        DataSource = Src_Dup
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
            FieldName = 'CRNUMERO'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRDESD'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRAZAO'
            Title.Caption = 'Raz'#227'o Social'
            Width = 195
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRVALOR'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRCODVEN'
            Title.Caption = 'C'#243'd.Vend'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRDTEMIS'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRDTVCTO'
            Title.Caption = 'Dt.Vcto'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BCBANCO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRDESCF'
            Title.Caption = 'Vlr.Desc.Fin'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRDTDESCF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRJURD'
            Title.Caption = 'Juros Dia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRCODBCO'
            Title.Caption = 'Cod.Bco'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLOG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CBAIRRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CCIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CCEP'
            Title.Caption = 'Cep'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CCNPJ'
            Title.Caption = 'CNPJ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CCPF'
            Title.Caption = 'CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIE'
            Title.Caption = 'IE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRG'
            Title.Caption = 'RG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VNOME'
            Title.Caption = 'Nome Vendedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRCODCLI'
            Title.Caption = 'Cod.Cliente'
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 239
        Width = 929
        Height = 215
        Align = alBottom
        TabOrder = 1
        object Label1: TLabel
          Left = 19
          Top = 22
          Width = 97
          Height = 13
          Caption = 'Duplicata Inicial:'
        end
        object Label2: TLabel
          Left = 390
          Top = 23
          Width = 124
          Height = 13
          Caption = 'Somente as Parcelas:'
        end
        object Label3: TLabel
          Left = 205
          Top = 25
          Width = 90
          Height = 13
          Caption = 'Duplicata Final:'
        end
        object Label4: TLabel
          Left = 68
          Top = 42
          Width = 44
          Height = 13
          Caption = 'Cliente:'
        end
        object lbl_nf: TLabel
          Left = 452
          Top = 86
          Width = 81
          Height = 13
          Caption = 'Notas Fiscais:'
          Visible = False
        end
        object SB_SalvarPadrao: TSpeedButton
          Left = 425
          Top = 172
          Width = 120
          Height = 40
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
          OnClick = SB_SalvarPadraoClick
        end
        object Label5: TLabel
          Left = 14
          Top = 4
          Width = 133
          Height = 13
          Caption = 'Data inicial.................'
        end
        object Label6: TLabel
          Left = 205
          Top = 5
          Width = 123
          Height = 13
          Caption = 'Data Final................'
        end
        object Label7: TLabel
          Left = 68
          Top = 60
          Width = 41
          Height = 13
          Caption = 'Banco:'
        end
        object Label8: TLabel
          Left = 524
          Top = 58
          Width = 143
          Height = 13
          Caption = '0-Carteira, Branco Todos'
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label9: TLabel
          Left = 521
          Top = 114
          Width = 116
          Height = 13
          Caption = 'Ordem de Impress'#227'o'
        end
        object lbl_qtdvias: TLabel
          Left = 706
          Top = 111
          Width = 112
          Height = 13
          Caption = 'Quantidade de Vias'
        end
        object NUMDUPI: TEdit
          Left = 118
          Top = 20
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnChange = NUMDUPIChange
          OnExit = NUMDUPIExit
        end
        object PARC: TEdit
          Left = 523
          Top = 20
          Width = 32
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
        end
        object bbSair: TBitBtn
          Left = 544
          Top = 172
          Width = 120
          Height = 40
          Caption = '&Sair'
          TabOrder = 19
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
        object RG_TIPO: TRadioGroup
          Left = 15
          Top = 103
          Width = 298
          Height = 29
          Caption = 'Tipo de Duplicata:'
          Columns = 2
          ItemIndex = 1
          Items.Strings = (
            '&Laser/Jato Tinta'
            '&Personalizada')
          TabOrder = 9
          OnClick = RG_TIPOClick
          OnExit = RG_TIPOClick
        end
        object NUMDUPF: TEdit
          Left = 305
          Top = 20
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnExit = NUMDUPFExit
        end
        object Edit1: TEdit
          Left = 556
          Top = 18
          Width = 121
          Height = 21
          Ctl3D = True
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 10
          Text = 'Em branco Todas'
        end
        object bbEmitir: TBitBtn
          Left = 120
          Top = 172
          Width = 120
          Height = 40
          Caption = '&Emitir Duplicata'
          TabOrder = 18
          OnClick = bbEmitirClick
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
          NumGlyphs = 2
        end
        object CB_SOMAR: TCheckBox
          Left = 17
          Top = 85
          Width = 427
          Height = 17
          Caption = 
            'Somar Duplicatas de um mesmo cliente e Emitir  Apenas Uma Duplic' +
            'ata'
          TabOrder = 7
          Visible = False
          OnClick = CB_SOMARClick
          OnExit = CB_SOMARExit
        end
        object CB_PEND: TCheckBox
          Left = 17
          Top = 139
          Width = 200
          Height = 17
          Caption = 'Emitir Somente as Pendentes'
          Checked = True
          State = cbChecked
          TabOrder = 11
          OnClick = CB_SOMARClick
        end
        object bbAplicar: TBitBtn
          Left = 2
          Top = 172
          Width = 120
          Height = 40
          Caption = '&Aplicar'
          TabOrder = 17
          OnClick = bbAplicarClick
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
        object CODCLI: TEdit
          Left = 118
          Top = 38
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          OnChange = NUMDUPIChange
          OnExit = CODCLIExit
          OnKeyPress = CODCLIKeyPress
        end
        object NOMCLI: TEdit
          Left = 197
          Top = 38
          Width = 361
          Height = 19
          Color = 16759773
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 12
          Text = 'Todos...'
        end
        object NUMNF: TEdit
          Left = 540
          Top = 81
          Width = 153
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
          Visible = False
          OnExit = NUMNFExit
          OnKeyPress = NUMNFKeyPress
        end
        object cb_vis: TCheckBox
          Left = 318
          Top = 111
          Width = 184
          Height = 18
          Caption = 'Visualizar antes de Imprimir'
          Checked = True
          State = cbChecked
          TabOrder = 14
          Visible = False
        end
        object MDT1: TMaskEdit
          Left = 118
          Top = 2
          Width = 80
          Height = 19
          Hint = 'Digite a Data Inicial'#13#10'a Ser Emitida'
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Text = '  /  /    '
          OnExit = MDT1Exit
        end
        object MDT2: TMaskEdit
          Left = 305
          Top = 2
          Width = 80
          Height = 19
          Hint = 'Digite a Data de Emiss'#227'o '#13#10'M'#225'xima para Impress'#227'o'
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Text = '  /  /    '
          OnExit = MDT2Exit
        end
        object CODBCO: TEdit
          Left = 118
          Top = 56
          Width = 80
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
          Text = '0'
          OnChange = NUMDUPIChange
          OnExit = CODBCOExit
          OnKeyPress = CODBCOKeyPress
        end
        object NOMBCO: TEdit
          Left = 197
          Top = 56
          Width = 321
          Height = 19
          Color = 16759773
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 13
          Text = 'Carteira'
        end
        object CB_VENDAS: TCheckBox
          Left = 233
          Top = 140
          Width = 200
          Height = 17
          Caption = 'Somente das Vendas'
          Checked = True
          State = cbChecked
          TabOrder = 15
          OnClick = CB_SOMARClick
        end
        object CB_ORDEM: TComboBox
          Left = 521
          Top = 132
          Width = 176
          Height = 21
          BevelKind = bkSoft
          ItemHeight = 13
          ItemIndex = 5
          TabOrder = 16
          Text = 'Vendedor'
          Items.Strings = (
            'Cidade'
            'Data de Emiss'#227'o'
            'Data de Vencimento'
            'N'#250'mero do T'#237'tulo'
            'Raz'#227'o Social'
            'Vendedor'
            '')
        end
        object bbNTPromissoria: TBitBtn
          Left = 264
          Top = 175
          Width = 120
          Height = 40
          Caption = '&Emitir Promissoria'
          TabOrder = 20
          OnClick = bbNTPromissoriaClick
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
          NumGlyphs = 2
        end
        object edt_qtdvias: TSpinEdit
          Left = 705
          Top = 131
          Width = 121
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 21
          Value = 1
        end
      end
    end
    object tsPromissoria: TTabSheet
      Caption = 'Nota Promissoria'
      ImageIndex = 1
    end
  end
  object Src_Dup: TDataSource
    DataSet = DM2.Tb_Dar
    Left = 424
    Top = 32
  end
end

object Frm_Comodato: TFrm_Comodato
  Left = 14
  Top = 51
  Width = 771
  Height = 467
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Emiss'#227'o de Recibo de Comodato'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 763
    Height = 436
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Impressao do Recibo'
      object Label7: TLabel
        Left = 0
        Top = 0
        Width = 755
        Height = 29
        Align = alTop
        Alignment = taCenter
        Caption = 'PEDIDOS EM COMODATO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -25
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Panel1: TPanel
        Left = 0
        Top = 275
        Width = 755
        Height = 133
        Align = alBottom
        TabOrder = 0
        object Label9: TLabel
          Left = 27
          Top = 6
          Width = 78
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Data Inicial'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Label8: TLabel
          Left = 195
          Top = 5
          Width = 78
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Data Final'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Label10: TLabel
          Left = 20
          Top = 43
          Width = 86
          Height = 13
          Caption = 'C'#243'digo do Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 27
          Top = 24
          Width = 78
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Pedido Inicial'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Label12: TLabel
          Left = 196
          Top = 22
          Width = 78
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Pedido Final'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object bbImprimir: TBitBtn
          Left = 281
          Top = 86
          Width = 157
          Height = 40
          Caption = '&Imprimir'
          TabOrder = 8
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
        object bbSair: TBitBtn
          Left = 571
          Top = 86
          Width = 157
          Height = 40
          Caption = '&Sair'
          TabOrder = 9
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
        object MDT1: TMaskEdit
          Left = 108
          Top = 4
          Width = 78
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 0
          Text = '  /  /    '
          OnExit = MDT1Exit
        end
        object MDT2: TMaskEdit
          Left = 279
          Top = 4
          Width = 78
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 1
          Text = '  /  /    '
          OnExit = MDT2Exit
        end
        object CODCLI: TEdit
          Left = 108
          Top = 40
          Width = 59
          Height = 19
          Hint = 'Informe Codigo do Cliente ou'#13#10'digite o nome p/consultar'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnExit = CODCLIExit
          OnKeyPress = CODCLIKeyPress
        end
        object lbx_codcli: TListBox
          Left = 166
          Top = 40
          Width = 460
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnKeyDown = lbx_codcliKeyDown
        end
        object OMITIR_CLI: TCheckBox
          Left = 108
          Top = 62
          Width = 51
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object NUMINI: TEdit
          Left = 108
          Top = 22
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          OnExit = NUMINIExit
        end
        object NUMFIN: TEdit
          Left = 279
          Top = 22
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          OnExit = NUMFINExit
        end
        object bbAplicar: TBitBtn
          Left = 1
          Top = 86
          Width = 157
          Height = 40
          Caption = '&Aplicar Sele'#231#227'o'
          TabOrder = 7
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
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 29
        Width = 755
        Height = 246
        Align = alClient
        DataSource = Src_Comodato
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'P1CHAVE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P1NUMNF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRAZAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLOG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFONE01'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CCNPJ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CBAIRRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CCEP'
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
            FieldName = 'P1CODVEN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VNOME'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Configura'#231#227'o'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 755
        Height = 281
        Align = alTop
        Caption = 'Dados do Recibo'
        TabOrder = 0
        object Panel2: TPanel
          Left = 2
          Top = 15
          Width = 751
          Height = 41
          Align = alTop
          TabOrder = 0
          object sbFonteCab: TSpeedButton
            Left = 9
            Top = 11
            Width = 146
            Height = 22
            Hint = 'Seleciona a fonte'
            Caption = 'Ajustar Fonte'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
              1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
              1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
              193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
              11155557F755F777777555000755033305555577755F75F77F55555555503335
              0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
              05555757F75F75557F5505000333555505557F777FF755557F55000000355557
              07557777777F55557F5555000005555707555577777FF5557F55553000075557
              0755557F7777FFF5755555335000005555555577577777555555}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = sbFonteCabClick
          end
          object sbSalvarPadrao: TSpeedButton
            Left = 492
            Top = 19
            Width = 150
            Height = 22
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
          object CB_REPETIR: TCheckBox
            Left = 226
            Top = 16
            Width = 260
            Height = 17
            Caption = 'Repetir Emissao na Mesma Folha'
            Checked = True
            State = cbChecked
            TabOrder = 0
          end
        end
        object Texto: TRichEdit
          Left = 2
          Top = 56
          Width = 751
          Height = 223
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Lines.Strings = (
            '                         <<<<<< C O M O D A T O >>>>>>'
            ''
            ''
            ''
            ''
            'Empresa...: [LEG040]'
            'CNPJ......: [LEG041]'
            'Endereco..: [LEG043] Bairro: [LEG044]'
            'Cidade....: [LEG045]-[LEG046] CEP: [LEG008]'
            ''
            'Vendedor..: [LEG012]'
            'Motorista.: ___________________________________'
            ''
            
              '            Comunicamos que este expositor pertence a [LEG040] e' +
              ' podera ser'
            
              'utilizado somente para expor MERCADORIAS AUTORIZADAS PELA MESMA,' +
              ' ficando assim'
            
              'acordado que o mesmo sera recolhido pela empresa, sem a necessid' +
              'ade de previo'
            
              'aviso, caso esteja sendo utilizado para expor outro tipo de prod' +
              'uto.'
            ''
            'Raz'#227'o Social: [LEG003].'
            'C.N.P.J.....: [LEG006] Telefone: [LEG005]'
            'Endere'#231'o....: [LEG004] Bairro: [LEG007]'
            'Cidade......: [LEG009]-[LEG010] CEP: [LEG008]'
            ''
            
              'Em ____/____/_____         _____________________________________' +
              '_______'
            
              '                           Estou ciente e assino, comprometendo-' +
              'me'
            '                           a cumprir o que esta incrito acima.'
            ''
            'Comodato Inicial....: _________________________________'
            ''
            'Troca de Expositor..: _________________________________'
            ''
            'Expositor Devolvido.: _________________________________'
            '')
          ParentFont = False
          TabOrder = 1
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Legenda'
      ImageIndex = 2
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 755
        Height = 408
        Align = alClient
        Caption = 'Legenda'
        TabOrder = 0
        object Label2: TLabel
          Left = 16
          Top = 40
          Width = 130
          Height = 13
          Caption = '[LEG001]-Chave do Pedido'
        end
        object Label1: TLabel
          Left = 16
          Top = 56
          Width = 156
          Height = 13
          Caption = '[LEG002]-Numero da Nota Fiscal'
        end
        object Label3: TLabel
          Left = 16
          Top = 74
          Width = 111
          Height = 13
          Caption = '[LEG003]-Raz'#227'o Social'
        end
        object Label4: TLabel
          Left = 16
          Top = 91
          Width = 94
          Height = 13
          Caption = '[LEG004]-Endere'#231'o'
        end
        object Label5: TLabel
          Left = 16
          Top = 108
          Width = 105
          Height = 13
          Caption = '[LEG005]-Telefone 01'
        end
        object Label6: TLabel
          Left = 16
          Top = 127
          Width = 75
          Height = 13
          Caption = '[LEG006]-CNPJ'
        end
        object Label13: TLabel
          Left = 16
          Top = 145
          Width = 75
          Height = 13
          Caption = '[LEG007]-Bairro'
        end
        object Label14: TLabel
          Left = 16
          Top = 161
          Width = 69
          Height = 13
          Caption = '[LEG008]-CEP'
        end
        object Label15: TLabel
          Left = 16
          Top = 179
          Width = 81
          Height = 13
          Caption = '[LEG009]-Cidade'
        end
        object Label16: TLabel
          Left = 16
          Top = 196
          Width = 62
          Height = 13
          Caption = '[LEG010]-UF'
        end
        object Label17: TLabel
          Left = 16
          Top = 230
          Width = 140
          Height = 13
          Caption = '[LEG012]-Nome do Vendedor'
        end
        object Label18: TLabel
          Left = 16
          Top = 213
          Width = 130
          Height = 13
          Caption = '[LEG011]-C'#243'digo Vendedor'
        end
        object Label19: TLabel
          Left = 17
          Top = 247
          Width = 122
          Height = 13
          Caption = '[LEG013]-Data do Pedido'
        end
        object Label20: TLabel
          Left = 17
          Top = 265
          Width = 142
          Height = 13
          Caption = '[LEG014]-Data da Nota Fiscal'
        end
        object Label21: TLabel
          Left = 17
          Top = 282
          Width = 98
          Height = 13
          Caption = '[LEG015]-Data Atual'
        end
        object Label22: TLabel
          Left = 17
          Top = 299
          Width = 130
          Height = 13
          Caption = '[LEG016]-Data por Extenso'
        end
        object Label23: TLabel
          Left = 16
          Top = 21
          Width = 201
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Dados do Sacado'
          Color = 8421440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Label24: TLabel
          Left = 251
          Top = 21
          Width = 201
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Dados do Emitente'
          Color = clPurple
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Label25: TLabel
          Left = 251
          Top = 40
          Width = 111
          Height = 13
          Caption = '[LEG040]-Razao Social'
        end
        object Label26: TLabel
          Left = 251
          Top = 56
          Width = 75
          Height = 13
          Caption = '[LEG041]-CNPJ'
        end
        object Label27: TLabel
          Left = 251
          Top = 74
          Width = 135
          Height = 13
          Caption = '[LEG042]-Inscri'#231#227'o Estadual'
        end
        object Label28: TLabel
          Left = 251
          Top = 91
          Width = 94
          Height = 13
          Caption = '[LEG043]-Endere'#231'o'
        end
        object Label29: TLabel
          Left = 251
          Top = 108
          Width = 75
          Height = 13
          Caption = '[LEG044]-Bairro'
        end
        object Label30: TLabel
          Left = 252
          Top = 125
          Width = 81
          Height = 13
          Caption = '[LEG045]-Cidade'
        end
        object Label31: TLabel
          Left = 252
          Top = 142
          Width = 62
          Height = 13
          Caption = '[LEG046]-UF'
        end
        object Label32: TLabel
          Left = 252
          Top = 158
          Width = 69
          Height = 13
          Caption = '[LEG047]-CEP'
        end
        object texto_impres: TRichEdit
          Left = 2
          Top = 317
          Width = 751
          Height = 89
          Align = alBottom
          Lines.Strings = (
            'texto_impres')
          TabOrder = 0
        end
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 3
      object RLReport1: TRLReport
        Left = 8
        Top = 0
        Width = 794
        Height = 1123
        DataSource = Src_Comodato
        DefaultFilter = matricial
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        object r_band_copia1: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 500
          AutoExpand = False
          BeforePrint = r_band_copia1BeforePrint
          object RLRichText2: TRLRichText
            Left = 20
            Top = -2
            Width = 684
            Height = 18
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            Lines.Strings = (
              
                '123456789 123456789 123456789 123456789 123456789 123456789 1234' +
                '56789 123456789'
              '')
            ParentFont = False
          end
        end
        object rlband_copia2: TRLBand
          Left = 38
          Top = 538
          Width = 718
          Height = 500
          AutoExpand = False
          object RLRichText1: TRLRichText
            Left = 20
            Top = -2
            Width = 684
            Height = 18
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            Lines.Strings = (
              
                '123456789 123456789 123456789 123456789 123456789 123456789 1234' +
                '56789 123456789'
              '')
            ParentFont = False
          end
        end
      end
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 520
    Top = 40
  end
  object matricial: TRLDraftFilter
    Left = 376
    Top = 256
  end
  object Src_Relatorio: TDataSource
    DataSet = DM1.Query5
    Left = 568
    Top = 80
  end
  object Src_Comodato: TDataSource
    DataSet = Qr_Comodato
    Left = 648
    Top = 32
  end
  object Qr_Comodato: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P1CHAVE,P1NUMNF,CRAZAO,CLOG,CFONE01,'
      '       CCNPJ,CBAIRRO,CCEP,CCIDADE,CUF,P1DATAP,P1DATANF,'
      '       P1CODVEN,VNOME FROM CADP01,CADCLI,CADVEN'
      '       WHERE CCODCLI=P1CODCLI'
      '       AND VCODVEN=P1CODVEN'
      '       AND P1CODEMP=0   '
      '          ')
    Left = 624
    Top = 56
    object Qr_ComodatoP1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Qr_ComodatoP1NUMNF: TFloatField
      DisplayLabel = 'Numero NF'
      FieldName = 'P1NUMNF'
      Origin = 'SG_ASSOC.CADP01.P1NUMNF'
    end
    object Qr_ComodatoCRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_ComodatoCLOG: TStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'CLOG'
      Origin = 'SG_ASSOC.CADCLI.CLOG'
      Size = 60
    end
    object Qr_ComodatoCFONE01: TStringField
      DisplayLabel = 'Fone 01'
      FieldName = 'CFONE01'
      Origin = 'SG_ASSOC.CADCLI.CFONE01'
      Size = 16
    end
    object Qr_ComodatoCCNPJ: TFloatField
      DisplayLabel = 'CNPJ'
      FieldName = 'CCNPJ'
      Origin = 'SG_ASSOC.CADCLI.CCNPJ'
    end
    object Qr_ComodatoCBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CBAIRRO'
      Origin = 'SG_ASSOC.CADCLI.CBAIRRO'
      Size = 30
    end
    object Qr_ComodatoCCEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'CCEP'
      Origin = 'SG_ASSOC.CADCLI.CCEP'
      Size = 9
    end
    object Qr_ComodatoCCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Qr_ComodatoCUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Qr_ComodatoP1CODVEN: TFloatField
      DisplayLabel = 'Vendedor'
      FieldName = 'P1CODVEN'
      Origin = 'SG_ASSOC.CADP01.P1CODVEN'
    end
    object Qr_ComodatoVNOME: TStringField
      DisplayLabel = 'Nome do Vendedor'
      FieldName = 'VNOME'
      Origin = 'SG_ASSOC.CADVEN.VNOME'
      Size = 40
    end
    object Qr_ComodatoP1DATAP: TDateTimeField
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Qr_ComodatoP1DATANF: TDateTimeField
      FieldName = 'P1DATANF'
      Origin = 'SG_ASSOC.CADP01.P1DATANF'
    end
  end
end

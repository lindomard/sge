object Frm_Farma_SNGPC: TFrm_Farma_SNGPC
  Left = 157
  Top = 116
  Width = 971
  Height = 562
  Caption = 'SNGPC Para Farmacia e Drogarias'
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 955
    Height = 483
    ActivePage = tsPrincipal
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    object tsPrincipal: TTabSheet
      Caption = 'Principal'
      object Label47: TLabel
        Left = 46
        Top = 9
        Width = 100
        Height = 13
        Caption = 'Inventario Inicial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 103
        Top = 56
        Width = 50
        Height = 13
        Caption = 'Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 273
        Top = 58
        Width = 8
        Height = 13
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 48
        Top = 83
        Width = 102
        Height = 13
        Caption = 'Pasta de Destino:'
      end
      object sbnConsultar: TSpeedButton
        Left = 642
        Top = 77
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = sbnConsultarClick
      end
      object sbnCriarPasta: TSpeedButton
        Left = 667
        Top = 78
        Width = 147
        Height = 22
        Caption = 'Criar Pastas'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330FFFFF
          FFF03333337F3FFFF3F73333330F0000F0F03333337F777737373333330FFFFF
          FFF033FFFF7FFF33FFF77000000007F00000377777777FF777770BBBBBBBB0F0
          FF037777777777F7F3730B77777BB0F0F0337777777777F7F7330B7FFFFFB0F0
          0333777F333377F77F330B7FFFFFB0009333777F333377777FF30B7FFFFFB039
          9933777F333377F777FF0B7FFFFFB0999993777F33337777777F0B7FFFFFB999
          9999777F3333777777770B7FFFFFB0399933777FFFFF77F777F3070077007039
          99337777777777F777F30B770077B039993377FFFFFF77F777330BB7007BB999
          93337777FF777777733370000000073333333777777773333333}
        NumGlyphs = 2
        OnClick = sbnCriarPastaClick
      end
      object Label4: TLabel
        Left = 55
        Top = 104
        Width = 39
        Height = 13
        Caption = 'Grupo:'
      end
      object lbl_datainventario: TLabel
        Left = 424
        Top = 57
        Width = 102
        Height = 13
        Caption = 'lbl_datainventario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label3: TLabel
        Left = 40
        Top = 33
        Width = 111
        Height = 13
        Caption = 'Data do Inventario:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CB_INVENTARIO: TComboBox
        Left = 155
        Top = 5
        Width = 530
        Height = 21
        BevelKind = bkSoft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
        OnClick = CB_INVENTARIOClick
      end
      object edt_datini: TDateEdit
        Left = 155
        Top = 54
        Width = 102
        Height = 21
        NumGlyphs = 2
        TabOrder = 3
        Text = '01/01/2010'
        OnExit = edt_datiniExit
      end
      object edt_datfin: TDateEdit
        Left = 300
        Top = 53
        Width = 102
        Height = 21
        NumGlyphs = 2
        TabOrder = 4
        Text = '23/04/2013'
        OnExit = edt_datfinExit
      end
      object edt_caminho: TEdit
        Left = 154
        Top = 79
        Width = 481
        Height = 21
        TabOrder = 5
        Text = 'C:\SGE\SNGPC'
      end
      object CB_EsteInventario: TCheckBox
        Left = 696
        Top = 8
        Width = 145
        Height = 17
        Caption = 'Utilizar Este Inventario'
        TabOrder = 1
      end
      object CODGRU: TEdit
        Left = 93
        Top = 103
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnExit = CODGRUExit
        OnKeyPress = CODGRUKeyPress
      end
      object lbx_codgru: TListBox
        Left = 154
        Top = 103
        Width = 336
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnKeyDown = lbx_codgruKeyDown
      end
      object OMITIR_GRU: TCheckBox
        Left = 94
        Top = 123
        Width = 56
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
      object rg_tipoXML: TRadioGroup
        Left = 528
        Top = 123
        Width = 185
        Height = 105
        Caption = 'Tipo do XML'
        ItemIndex = 1
        Items.Strings = (
          'Inventario'
          'Entradas e Saidas'
          'Entradas'
          'Saidas')
        TabOrder = 9
      end
      object edt_datinv: TDateEdit
        Left = 155
        Top = 29
        Width = 102
        Height = 21
        NumGlyphs = 2
        TabOrder = 2
        Text = '23/04/2013'
        OnExit = edt_datfinExit
      end
      object GroupBox1: TGroupBox
        Left = 112
        Top = 304
        Width = 657
        Height = 128
        Caption = 'Dados para Login:'
        TabOrder = 10
        object Label6: TLabel
          Left = 9
          Top = 19
          Width = 89
          Height = 13
          Caption = 'Usuario/E-Mail:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 55
          Top = 42
          Width = 41
          Height = 13
          Caption = 'Senha:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object sbnMostrarSenha: TSpeedButton
          Left = 584
          Top = 38
          Width = 22
          Height = 22
          OnClick = sbnMostrarSenhaClick
        end
        object Label8: TLabel
          Left = 41
          Top = 85
          Width = 48
          Height = 13
          Caption = 'Arquivo:'
        end
        object Label9: TLabel
          Left = 21
          Top = 108
          Width = 71
          Height = 13
          Caption = 'Chave MD5:'
        end
        object lbl_qtdcar: TLabel
          Left = 583
          Top = 104
          Width = 57
          Height = 13
          Caption = 'lbl_qtdcar'
        end
        object sbnAdicionar: TSpeedButton
          Left = 585
          Top = 79
          Width = 22
          Height = 22
          OnClick = sbnAdicionarClick
        end
        object sbnHomogacao: TSpeedButton
          Left = 585
          Top = 15
          Width = 22
          Height = 22
          OnClick = sbnHomogacaoClick
        end
        object edt_usuario_email: TEdit
          Left = 102
          Top = 16
          Width = 481
          Height = 21
          TabOrder = 0
          Text = 'lindomar_dc@hotmail.com'
        end
        object edt_senha: TEdit
          Left = 102
          Top = 39
          Width = 481
          Height = 21
          PasswordChar = '*'
          TabOrder = 1
          Text = '12345678'
        end
        object cb_ambiente: TCheckBox
          Left = 48
          Top = 64
          Width = 97
          Height = 17
          Caption = 'Homologa'#231#227'o'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
        object edt_nomearq: TEdit
          Left = 102
          Top = 80
          Width = 481
          Height = 21
          TabOrder = 3
        end
        object edt_chavemd5: TEdit
          Left = 102
          Top = 103
          Width = 481
          Height = 21
          TabOrder = 4
          OnChange = edt_chavemd5Change
        end
      end
      object GroupBox4: TGroupBox
        Left = 776
        Top = 107
        Width = 248
        Height = 345
        Caption = 'Resposta:'
        TabOrder = 11
        object Memo1: TMemo
          Left = 2
          Top = 15
          Width = 244
          Height = 328
          Align = alClient
          Lines.Strings = (
            'Memo1')
          TabOrder = 0
        end
      end
    end
    object tsOutros: TTabSheet
      Caption = 'Outros'
      ImageIndex = 1
      object rl_erros: TRichEdit
        Left = 0
        Top = 0
        Width = 947
        Height = 455
        Align = alClient
        Lines.Strings = (
          'rl_erros')
        TabOrder = 0
      end
    end
    object tsInventario: TTabSheet
      Caption = 'Inventario'
      ImageIndex = 2
    end
    object tsEntradas: TTabSheet
      Caption = 'Entradas'
      ImageIndex = 3
    end
    object tsSaidas: TTabSheet
      Caption = 'Saidas'
      ImageIndex = 4
    end
    object tsRelInv: TTabSheet
      Caption = 'Relatorio Inventario'
      ImageIndex = 5
      object RLReport_inventario: TRLReport
        Left = 48
        Top = 56
        Width = 794
        Height = 1123
        DataSource = Src_Inv_Impres
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        BeforePrint = RLReport_inventarioBeforePrint
        object RLBand_cabger: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 41
          BandType = btColumnHeader
          object RLCab_RazEmp: TRLLabel
            Left = 0
            Top = 0
            Width = 100
            Height = 16
            Align = faLeftTop
          end
          object RLCab_DathorEmi: TRLLabel
            Left = 607
            Top = 0
            Width = 111
            Height = 16
            Align = faRightTop
          end
          object rlcab_titulo: TRLLabel
            Left = 0
            Top = 18
            Width = 67
            Height = 16
          end
          object rlcab_pag: TRLSystemInfo
            Left = 606
            Top = 21
            Width = 65
            Height = 16
            AutoSize = False
            Info = itPageNumber
            Text = 'P'#225'gina:'
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 673
            Top = 21
            Width = 39
            Height = 16
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
        end
        object RLBand_cabdet: TRLBand
          Left = 38
          Top = 79
          Width = 718
          Height = 16
          BandType = btColumnHeader
          object rlcabdet_codpro: TRLLabel
            Left = 5
            Top = 1
            Width = 50
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object rlcabdet_nompro: TRLLabel
            Left = 55
            Top = 1
            Width = 312
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'Descri'#231#227'o do Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object rlcabdet_qtd: TRLLabel
            Left = 367
            Top = 1
            Width = 84
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'Quantidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object rlcabdet_und: TRLLabel
            Left = 453
            Top = 1
            Width = 48
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'UND'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object rlcabdet_lote: TRLLabel
            Left = 501
            Top = 1
            Width = 106
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'Lote'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object rlcabdet_regms: TRLLabel
            Left = 607
            Top = 1
            Width = 106
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'Registro MS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
        end
        object RLBand_det: TRLBand
          Left = 38
          Top = 95
          Width = 718
          Height = 16
          BeforePrint = RLBand_detBeforePrint
          object rldet_codpro: TRLDBText
            Left = 5
            Top = 0
            Width = 50
            Height = 16
            AutoSize = False
            DataField = 'CODPRO'
            DataSource = Src_Inv_Impres
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_codpro
            Layout = tlCenter
            ParentFont = False
          end
          object rldet_nompro: TRLDBText
            Left = 55
            Top = 0
            Width = 312
            Height = 16
            AutoSize = False
            DataField = 'PDNOME'
            DataSource = Src_Inv_Impres
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_nompro
            Layout = tlCenter
            ParentFont = False
          end
          object rldet_qtd: TRLDBText
            Left = 367
            Top = 0
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QTDINV'
            DataSource = Src_Inv_Impres
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_qtd
            Layout = tlCenter
            ParentFont = False
          end
          object rldet_und: TRLDBText
            Left = 453
            Top = 0
            Width = 48
            Height = 16
            AutoSize = False
            DataField = 'PDUND'
            DataSource = Src_Inv_Impres
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_und
            Layout = tlCenter
            ParentFont = False
          end
          object rldet_lote: TRLDBText
            Left = 501
            Top = 0
            Width = 106
            Height = 16
            AutoSize = False
            DataField = 'LOTE'
            DataSource = Src_Inv_Impres
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_lote
            Layout = tlCenter
            ParentFont = False
          end
          object rldet_regms: TRLDBText
            Left = 607
            Top = 0
            Width = 106
            Height = 16
            AutoSize = False
            DataField = 'PDREGMS'
            DataSource = Src_Inv_Impres
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Holder = rlcabdet_regms
            Layout = tlCenter
            ParentFont = False
          end
        end
        object RLBand_rodape: TRLBand
          Left = 38
          Top = 111
          Width = 718
          Height = 16
          BandType = btColumnFooter
        end
        object RLBand1: TRLBand
          Left = 38
          Top = 127
          Width = 718
          Height = 16
          BandType = btSummary
          BeforePrint = RLBand1BeforePrint
          object rlrod_qtdreg: TRLLabel
            Left = 0
            Top = 0
            Width = 45
            Height = 10
            Align = faLeftTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
    object tsBal_Analitico: TTabSheet
      Caption = 'Balanco Analitico'
      ImageIndex = 6
      object RLReport_bal_anal: TRLReport
        Left = 32
        Top = 44
        Width = 794
        Height = 1123
        DataSource = Src_Bal_Analitico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        BeforePrint = RLReport_bal_analBeforePrint
        object rlba_cabger: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 41
          BandType = btColumnHeader
          object rlbacab_razemp: TRLLabel
            Left = 0
            Top = 0
            Width = 96
            Height = 16
            Align = faLeftTop
          end
          object rlbacab_dathoremi: TRLLabel
            Left = 608
            Top = 0
            Width = 110
            Height = 16
            Align = faRightTop
          end
          object rlbacab_titulo: TRLLabel
            Left = 0
            Top = 18
            Width = 81
            Height = 16
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 606
            Top = 21
            Width = 65
            Height = 16
            AutoSize = False
            Info = itPageNumber
            Text = 'P'#225'gina:'
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 673
            Top = 21
            Width = 39
            Height = 16
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
        end
        object rlba_rodape: TRLBand
          Left = 38
          Top = 143
          Width = 718
          Height = 16
          BandType = btColumnFooter
        end
        object RLBand6: TRLBand
          Left = 38
          Top = 159
          Width = 718
          Height = 16
          BandType = btSummary
          BeforePrint = RLBand6BeforePrint
          object rlba_qtdreg: TRLLabel
            Left = 0
            Top = 0
            Width = 42
            Height = 10
            Align = faLeftTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object rlba_group: TRLGroup
          Left = 38
          Top = 79
          Width = 718
          Height = 64
          DataFields = 'GRUPO'
          object RLBa_cabgru: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 17
            BandType = btColumnHeader
            object RLLabel1: TRLLabel
              Left = 5
              Top = 1
              Width = 43
              Height = 13
              Caption = 'Produto:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLDBText7: TRLDBText
              Left = 58
              Top = 1
              Width = 70
              Height = 14
              AutoSize = False
              DataField = 'CODPRO'
              DataSource = Src_Bal_Analitico
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLDBText8: TRLDBText
              Left = 131
              Top = 1
              Width = 334
              Height = 14
              AutoSize = False
              DataField = 'PDNOME'
              DataSource = Src_Bal_Analitico
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLLabel2: TRLLabel
              Left = 565
              Top = 2
              Width = 27
              Height = 13
              Caption = 'Lote:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLDBText9: TRLDBText
              Left = 607
              Top = 1
              Width = 103
              Height = 14
              AutoSize = False
              DataField = 'LOTE'
              DataSource = Src_Bal_Analitico
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
          end
          object rlba_cabdet: TRLBand
            Left = 0
            Top = 17
            Width = 718
            Height = 16
            BandType = btColumnHeader
            object rlbacabdet_doc: TRLLabel
              Left = 5
              Top = 1
              Width = 56
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Documento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object rlbacabdet_razsoc: TRLLabel
              Left = 62
              Top = 1
              Width = 288
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Razao Social'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object rlbacabdet_entrada: TRLLabel
              Left = 443
              Top = 1
              Width = 90
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Entrada'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object rlbacabdet_saida: TRLLabel
              Left = 532
              Top = 1
              Width = 90
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Saida'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object rlbacabdet_saldo: TRLLabel
              Left = 625
              Top = 1
              Width = 90
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Saldo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object rlbacabdet_data: TRLLabel
              Left = 352
              Top = 1
              Width = 90
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Data'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
          end
          object rlba_det: TRLBand
            Left = 0
            Top = 33
            Width = 718
            Height = 16
            BeforePrint = rlba_detBeforePrint
            object rlbadet_doc: TRLDBText
              Left = 5
              Top = 0
              Width = 56
              Height = 16
              AutoSize = False
              DataField = 'NUMDOC'
              DataSource = Src_Bal_Analitico
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlbacabdet_doc
              Layout = tlCenter
              ParentFont = False
            end
            object rlbadet_razsoc: TRLDBText
              Left = 62
              Top = 0
              Width = 288
              Height = 16
              AutoSize = False
              DataField = 'RAZSOC'
              DataSource = Src_Bal_Analitico
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlbacabdet_razsoc
              Layout = tlCenter
              ParentFont = False
            end
            object rlbadet_data: TRLDBText
              Left = 352
              Top = 0
              Width = 90
              Height = 16
              Alignment = taCenter
              AutoSize = False
              DataField = 'DATDOC'
              DataSource = Src_Bal_Analitico
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlbacabdet_data
              Layout = tlCenter
              ParentFont = False
            end
            object rlbadet_entrada: TRLDBText
              Left = 443
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'TOTENT'
              DataSource = Src_Bal_Analitico
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlbacabdet_entrada
              Layout = tlCenter
              ParentFont = False
            end
            object rlbadet_saida: TRLDBText
              Left = 532
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'TOTSAI'
              DataSource = Src_Bal_Analitico
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlbacabdet_saida
              Layout = tlCenter
              ParentFont = False
            end
            object rlbadet_saldo: TRLLabel
              Left = 625
              Top = 1
              Width = 90
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Saldo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlbacabdet_saldo
              Layout = tlCenter
              ParentFont = False
            end
          end
        end
      end
    end
    object tsEnviados: TTabSheet
      Caption = 'Itens ja Enviados'
      ImageIndex = 7
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 689
        Height = 455
        Align = alLeft
        Caption = 'Itens Enviados Ordem decrescente?'
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 685
          Height = 438
          Align = alClient
          DataSource = SrcNGPCEnviados
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'SE_DATA'
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SE_HASH_IDENTIFICACAO'
              Width = 262
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SE_TIPOARQ'
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SE_DATAINI'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SE_DATAFIN'
              Visible = True
            end>
        end
      end
      object GroupBox3: TGroupBox
        Left = 689
        Top = 0
        Width = 258
        Height = 455
        Align = alClient
        Caption = 'Arquivo XML'
        TabOrder = 1
        object RichEdit_texto: TRichEdit
          Left = 2
          Top = 15
          Width = 254
          Height = 438
          Align = alClient
          Lines.Strings = (
            'RichEdit_texto')
          TabOrder = 0
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 483
    Width = 955
    Height = 41
    Align = alBottom
    TabOrder = 1
    object bbGerar: TBitBtn
      Left = 7
      Top = 7
      Width = 160
      Height = 25
      Caption = 'Gerar Agora'
      TabOrder = 0
      OnClick = bbGerarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 869
      Top = 6
      Width = 160
      Height = 25
      Caption = 'Sair'
      TabOrder = 1
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
    object bbImprimir: TBitBtn
      Left = 167
      Top = 7
      Width = 160
      Height = 25
      Caption = 'Imprimir Estoque Inicial'
      TabOrder = 2
      OnClick = bbImprimirClick
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
    object bbImpBal_Analitico: TBitBtn
      Left = 326
      Top = 6
      Width = 160
      Height = 25
      Caption = 'Imprimir Analitico'
      TabOrder = 3
      OnClick = bbImpBal_AnaliticoClick
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
    object bbEnviarDireto: TBitBtn
      Left = 550
      Top = 6
      Width = 160
      Height = 26
      Caption = 'Envio Direto'
      TabOrder = 4
      OnClick = bbEnviarDiretoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbConsultaEnviados: TBitBtn
      Left = 709
      Top = 6
      Width = 160
      Height = 25
      Caption = 'Consulta Enviados'
      TabOrder = 5
      OnClick = bbConsultaEnviadosClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object Qr_Inv: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 300
    Top = 104
  end
  object Qr_Perdas: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 452
    Top = 112
  end
  object Qr_Inv_Impres: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select PDUND_INSUMO,PDUND_FARMACOTECNICA,PDCLASSE_TERAPEUTICA,LP' +
        'AD('#39'0'#39',14) AS CNPJ, case when PDNIVEL=5 then 2 else 1 end AS TIP' +
        'O_MED_INS, CODPRO,LOTE,PDNOME,PDUND,PDREGMS,SUM(COMPRAS+DEVCLI-(' +
        'PERDAS+SAIDAS) ) AS QTDINV'
      'FROM'
      ''
      '(('
      ''
      
        'Select '#39'PF1'#39' AS ORIGEM, PF2CODPRO AS CODPRO,sum(NVL(PF2L_QTD,PF2' +
        'QTDP)) AS COMPRAS,0 AS DEVCLI,   0 AS PERDAS, 0 AS SAIDAS, NVL(P' +
        'F2L_LOTE,'#39'X'#39') AS LOTE  FROM CADPF1 ,CADFOR,CADPRO,CADPF2,CADPF2_' +
        'LOTES_ORC              where  PF1CODFOR(+)=FCODFOR and  PF2CODPR' +
        'O=PDCODPRO and  (PF2CODEMP=PF1CODEMP) and PF2LOTSEQ=PF1LOTSEQ an' +
        'd PF2CHAVE=PF1CHAVE and  (PF2L_CODEMP(+)=PF2CODEMP) and PF2L_LOT' +
        'SEQ(+)=PF2LOTSEQ and PF2L_CHAVE(+)=PF2CHAVE and PF2L_CODPRO(+)=P' +
        'F2CODPRO and  PF1CODEMP=01 and PF1STATUS<>9  and PF1STATUS=1  an' +
        'd PDSGNPC=1  GROUP BY PF2CODPRO,PF2L_LOTE'
      ' UNION'
      
        ' Select '#39'PED'#39' AS ORIGEM,P2CODPRO AS CODPRO,  0 AS ENTRADA, sum(D' +
        'ECODE(P1TIPO_ENTSAI,1,P2SNGPC_QTDPED, 0)) AS DEVCLI, 0 AS PERDAS' +
        ' , sum(DECODE(P1TIPO_ENTSAI,1,0, NVL(P2SNGPC_QTDPED,P2QTD))) AS ' +
        'SAIDAS, NVL(P2SNGPC_LOTE,'#39'X'#39')  AS LOTE   FROM CADP01 ,CADCLI,CAD' +
        'PRO,CADP02,CADP02_SNGPC              where  CCODCLI(+)=P1CODCLI ' +
        'and  P2CODPRO=PDCODPRO and  (P2CODEMP=P1CODEMP) and P2LOTSEQ=P1L' +
        'OTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ORDEM and  (P2SNGPC_CODE' +
        'MP(+)=P2CODEMP) and P2SNGPC_LOTSEQ(+)=P2LOTSEQ and P2SNGPC_CHAVE' +
        '(+)=P2CHAVE and P2SNGPC_CODPRO(+)=P2CODPRO and  P1STATUS<>9  and' +
        ' P1EMIDOC=1  and PDSGNPC=1     and  P1CODEMP=1  GROUP BY P2CODPR' +
        'O,P2SNGPC_LOTE'
      ' UNION'
      
        ' Select '#39'AJUS'#39' AS ORIGEM,AJCODPRO AS CODPRO, 0 AS ENTRADA, 0 AS ' +
        'DEVCLI, SUM(AJQTD) AS PERDAS, 0 AS SAIDAS,  NVL(AJLOTE,'#39'X'#39') AS L' +
        'OTE FROM CADAJU ,CADPRO              where  AJCODPRO=PDCODPRO an' +
        'd  AJMOTIVO='#39'PERDAS'#39' and AJTIPOM=1  GROUP BY AJCODPRO,AJLOTE'
      
        ')) PEDIDOS,CADPRO WHERE PDCODPRO=PEDIDOS.CODPRO group by PDUND_I' +
        'NSUMO,PDUND_FARMACOTECNICA,PDCLASSE_TERAPEUTICA,case when PDNIVE' +
        'L=5 then 2 else 1 end ,CODPRO,LOTE,PDNOME,PDUND,PDREGMS')
    Left = 204
    Top = 48
    object Qr_Inv_ImpresCODPRO: TFloatField
      FieldName = 'CODPRO'
    end
    object Qr_Inv_ImpresLOTE: TStringField
      FieldName = 'LOTE'
    end
    object Qr_Inv_ImpresPDNOME: TStringField
      FieldName = 'PDNOME'
      Size = 120
    end
    object Qr_Inv_ImpresPDUND: TStringField
      FieldName = 'PDUND'
      Size = 3
    end
    object Qr_Inv_ImpresPDREGMS: TStringField
      FieldName = 'PDREGMS'
    end
    object Qr_Inv_ImpresQTDINV: TFloatField
      FieldName = 'QTDINV'
    end
    object Qr_Inv_ImpresTIPO_MED_INS: TFloatField
      FieldName = 'TIPO_MED_INS'
    end
    object Qr_Inv_ImpresPDCLASSE_TERAPEUTICA: TFloatField
      FieldName = 'PDCLASSE_TERAPEUTICA'
    end
    object Qr_Inv_ImpresPDUND_INSUMO: TFloatField
      FieldName = 'PDUND_INSUMO'
    end
    object Qr_Inv_ImpresPDUND_FARMACOTECNICA: TFloatField
      FieldName = 'PDUND_FARMACOTECNICA'
    end
    object Qr_Inv_ImpresCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
  end
  object Src_Inv_Impres: TDataSource
    DataSet = Qr_Inv_Impres
    Left = 244
    Top = 48
  end
  object Qr_Bal_Analitico: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select TIPOMOV,RAZSOC,TO_DATE(DATDOC) AS  DATDOC,NUMDOC,CODPRO,L' +
        'OTE'
      ',CODPRO || LOTE AS GRUPO,PDNOME '
      ''
      ','
      'SUM('
      'DECODE(TIPOMOV,'#39'00-ESTINI'#39','
      '(NVL(COMPRAS,0)+NVL(DEVCLI,0))'
      '- (NVL(PERDAS,0)+NVL(SAIDAS,0))'
      ', NVL(COMPRAS,0)+NVL(DEVCLI,0))) AS TOTENT'
      ''
      ', SUM('
      'DECODE(TIPOMOV,'#39'00-ESTINI'#39',0,'
      ' NVL(PERDAS,0)+NVL(SAIDAS,0)))  AS TOTSAI'
      ''
      '  from '
      ' ('
      
        'Select '#39'PF1'#39' AS ORIGEM, '#39'ESTINI'#39' AS TIPOMOV, '#39'ESTOQUE INICIAL'#39' a' +
        's RAZSOC, SYSDATE AS DATDOC, '#39' '#39' as NUMDOC, PF2CODPRO AS CODPRO,' +
        'sum(NVL(PF2L_QTD,PF2QTDP)) AS COMPRAS,0 AS DEVCLI,   0 AS PERDAS' +
        ', 0 AS SAIDAS, NVL(PF2L_LOTE,'#39'X'#39') AS LOTE  FROM CADPF1 ,CADFOR,C' +
        'ADPRO,CADPF2,CADPF2_LOTES_ORC              where  PF1CODFOR(+)=F' +
        'CODFOR and  PF2CODPRO=PDCODPRO and  (PF2CODEMP=PF1CODEMP) and PF' +
        '2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE and  (PF2L_CODEMP(+)=PF2' +
        'CODEMP) and PF2L_LOTSEQ(+)=PF2LOTSEQ and PF2L_CHAVE(+)=PF2CHAVE ' +
        'and PF2L_CODPRO(+)=PF2CODPRO and  PF1CODEMP=01 and PF1STATUS<>9 ' +
        ' and PF1STATUS=1  and PDSGNPC=1 '
      ' and PF1DATAENT<=SYSDATE'
      ' GROUP BY PF2CODPRO,PF2L_LOTE '
      ' UNION '
      
        ' Select '#39'PED'#39' AS ORIGEM, '#39'ESTINI'#39' AS TIPOMOV, '#39'ESTOQUE INICIAL'#39' ' +
        'as RAZSOC, SYSDATE AS DATDOC, '#39' '#39' as NUMDOC,  P2CODPRO AS CODPRO' +
        ',  0 AS ENTRADA, sum(DECODE(P1TIPO_ENTSAI,1,P2SNGPC_QTDPED, 0)) ' +
        'AS DEVCLI, 0 AS PERDAS , sum(DECODE(P1TIPO_ENTSAI,1,0, NVL(P2SNG' +
        'PC_QTDPED,P2QTD))) AS SAIDAS, NVL(P2SNGPC_LOTE,'#39'X'#39')  AS LOTE   F' +
        'ROM CADP01 ,CADCLI,CADPRO,CADP02,CADP02_SNGPC              where' +
        '  CCODCLI(+)=P1CODCLI and  P2CODPRO=PDCODPRO and  (P2CODEMP=P1CO' +
        'DEMP) and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1OR' +
        'DEM and  (P2SNGPC_CODEMP(+)=P2CODEMP) and P2SNGPC_LOTSEQ(+)=P2LO' +
        'TSEQ and P2SNGPC_CHAVE(+)=P2CHAVE and P2SNGPC_CODPRO(+)=P2CODPRO' +
        ' and  P1STATUS<>9  and P1EMIDOC=1  and PDSGNPC=1     and  P1CODE' +
        'MP=1 '
      ' and P1DATDOC<=SYSDATE'
      ' GROUP BY P2CODPRO,P2SNGPC_LOTE '
      ' UNION '
      
        ' Select '#39'AJUS'#39' AS ORIGEM, '#39'ESTINI'#39' AS TIPOMOV, '#39'ESTOQUE INICIAL'#39 +
        ' as RAZSOC,'
      ' SYSDATE AS DATDOC, '#39' '#39' as NUMDOC,'
      
        '   AJCODPRO AS CODPRO, 0 AS ENTRADA, 0 AS DEVCLI, SUM(AJQTD) AS ' +
        'PERDAS, 0 AS SAIDAS,  NVL(AJLOTE,'#39'X'#39') AS LOTE FROM '
      
        ' CADAJU ,CADPRO              where  AJCODPRO=PDCODPRO and  AJMOT' +
        'IVO='#39'PERDAS'#39' and AJTIPOM=1 and PDSGNPC=1 '
      ' and AJDATA<=SYSDATE'
      ' GROUP BY AJCODPRO,AJLOTE '
      ' UNION '
      
        'Select '#39'PF1'#39' AS ORIGEM, '#39'01-COMPRAS'#39' AS TIPOMOV,  FRAZAO as RAZS' +
        'OC,  PF1DATAENT AS DATDOC, '#39'NF-'#39' || PF1NUMNF as NUMDOC, PF2CODPR' +
        'O AS CODPRO,sum(NVL(PF2L_QTD,PF2QTDP)) AS COMPRAS,0 AS DEVCLI,  ' +
        ' 0 AS PERDAS, 0 AS SAIDAS, NVL(PF2L_LOTE,'#39'X'#39') AS LOTE  FROM CADP' +
        'F1 ,CADFOR,CADPRO,CADPF2,CADPF2_LOTES_ORC              where  PF' +
        '1CODFOR(+)=FCODFOR and  PF2CODPRO=PDCODPRO and  (PF2CODEMP=PF1CO' +
        'DEMP) and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE and  (PF2L_C' +
        'ODEMP(+)=PF2CODEMP) and PF2L_LOTSEQ(+)=PF2LOTSEQ and PF2L_CHAVE(' +
        '+)=PF2CHAVE and PF2L_CODPRO(+)=PF2CODPRO and  PF1CODEMP=01 and P' +
        'F1STATUS<>9  and PF1STATUS=1  and PDSGNPC=1 '
      ' and PF1DATAENT<=SYSDATE'
      
        ' GROUP BY PF2CODPRO,PF2L_LOTE,FRAZAO,PF1DATAENT,'#39'NF-'#39' || PF1NUMN' +
        'F '
      ' UNION '
      
        ' Select '#39'PED'#39' AS ORIGEM, '#39'02-PEDVEN'#39' AS TIPOMOV, CRAZAO as RAZSO' +
        'C, P1DATDOC AS DATDOC,  CASE WHEN P1NUMCF>0 THEN '#39'CF-'#39' || P1NUMC' +
        'F  ELSE '#39'NF-'#39' || P1NUMNF END as NUMDOC,  P2CODPRO AS CODPRO,  0 ' +
        'AS ENTRADA, sum(DECODE(P1TIPO_ENTSAI,1,P2SNGPC_QTDPED, 0)) AS DE' +
        'VCLI, 0 AS PERDAS , sum(DECODE(P1TIPO_ENTSAI,1,0, NVL(P2SNGPC_QT' +
        'DPED,P2QTD))) AS SAIDAS, NVL(P2SNGPC_LOTE,'#39'X'#39')  AS LOTE   FROM C' +
        'ADP01 ,CADCLI,CADPRO,CADP02,CADP02_SNGPC              where  CCO' +
        'DCLI(+)=P1CODCLI and  P2CODPRO=PDCODPRO and  (P2CODEMP=P1CODEMP)' +
        ' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ORDEM a' +
        'nd  (P2SNGPC_CODEMP(+)=P2CODEMP) and P2SNGPC_LOTSEQ(+)=P2LOTSEQ ' +
        'and P2SNGPC_CHAVE(+)=P2CHAVE and P2SNGPC_CODPRO(+)=P2CODPRO and ' +
        ' P1STATUS<>9  and P1EMIDOC=1  and PDSGNPC=1     and  P1CODEMP=1 '
      ' and P1DATDOC<=SYSDATE'
      
        ' GROUP BY P2CODPRO,P2SNGPC_LOTE,CRAZAO,P1DATDOC,  CASE WHEN P1NU' +
        'MCF>0 THEN '#39'CF-'#39' || P1NUMCF  ELSE '#39'NF-'#39' || P1NUMNF END '
      ' UNION '
      
        ' Select '#39'AJUS'#39' AS ORIGEM, '#39'03-AJUSTE'#39' AS TIPOMOV, '#39'AJUSTES POR P' +
        'ERDAS'#39' as RAZSOC, AJDATA AS DATDOC, '#39'CHAVE'#39' || AJSEQ as NUMDOC, ' +
        ' AJCODPRO AS CODPRO, 0 AS ENTRADA, 0 AS DEVCLI, SUM(AJQTD) AS PE' +
        'RDAS, 0 AS SAIDAS,  NVL(AJLOTE,'#39'X'#39') AS LOTE FROM CADAJU ,CADPRO ' +
        '             where  AJCODPRO=PDCODPRO and  AJMOTIVO='#39'PERDAS'#39' and' +
        ' AJTIPOM=1 and PDSGNPC=1 '
      ' and AJDATA<=SYSDATE'
      ' GROUP BY AJCODPRO,AJLOTE,AJDATA, '#39'CHAVE'#39' || AJSEQ '
      ') vendas,CADPRO'
      'WHERE PDCODPRO=CODPRO'
      
        'GROUP BY TIPOMOV,RAZSOC,TO_DATE(DATDOC),NUMDOC,CODPRO,LOTE,PDNOM' +
        'E'
      'ORDER BY PDNOME,CODPRO,LOTE,TIPOMOV')
    Left = 548
    Top = 80
    object Qr_Bal_AnaliticoTIPOMOV: TStringField
      FieldName = 'TIPOMOV'
      Size = 10
    end
    object Qr_Bal_AnaliticoRAZSOC: TStringField
      FieldName = 'RAZSOC'
      Size = 60
    end
    object Qr_Bal_AnaliticoDATDOC: TDateTimeField
      FieldName = 'DATDOC'
    end
    object Qr_Bal_AnaliticoNUMDOC: TStringField
      FieldName = 'NUMDOC'
      Size = 45
    end
    object Qr_Bal_AnaliticoCODPRO: TFloatField
      FieldName = 'CODPRO'
    end
    object Qr_Bal_AnaliticoLOTE: TStringField
      FieldName = 'LOTE'
    end
    object Qr_Bal_AnaliticoGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 60
    end
    object Qr_Bal_AnaliticoPDNOME: TStringField
      FieldName = 'PDNOME'
      Size = 120
    end
    object Qr_Bal_AnaliticoTOTENT: TFloatField
      FieldName = 'TOTENT'
    end
    object Qr_Bal_AnaliticoTOTSAI: TFloatField
      FieldName = 'TOTSAI'
    end
  end
  object Src_Bal_Analitico: TDataSource
    DataSet = Qr_Bal_Analitico
    Left = 620
    Top = 64
  end
  object HTTPRIO1: THTTPRIO
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = False
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 468
    Top = 160
  end
  object OpenDialog1: TOpenDialog
    Left = 440
    Top = 176
  end
  object AdoSNGPCEnviados: TADOQuery
    Connection = DM1_ADO.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from '
      '('
      
        'SELECT SE_DATA,SE_HASH_IDENTIFICACAO,SE_TIPOARQ,SE_DATAINI,SE_DA' +
        'TAFIN,SE_NOMEORIGINAL FROM CADSNGPC_EVENTO'
      
        'group by SE_DATA,SE_HASH_IDENTIFICACAO,SE_TIPOARQ,SE_DATAINI,SE_' +
        'DATAFIN,SE_NOMEORIGINAL'
      'order by SE_DATA DESC'
      ') where rownum<400'
      '')
    Left = 524
    Top = 280
    object AdoSNGPCEnviadosSE_DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'SE_DATA'
    end
    object AdoSNGPCEnviadosSE_HASH_IDENTIFICACAO: TStringField
      DisplayLabel = 'Hash Identificacao'
      FieldName = 'SE_HASH_IDENTIFICACAO'
      Size = 100
    end
    object AdoSNGPCEnviadosSE_TIPOARQ: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'SE_TIPOARQ'
      Size = 100
    end
    object AdoSNGPCEnviadosSE_DATAINI: TDateTimeField
      DisplayLabel = 'Data Inicio'
      FieldName = 'SE_DATAINI'
    end
    object AdoSNGPCEnviadosSE_DATAFIN: TDateTimeField
      DisplayLabel = 'Data Termino'
      FieldName = 'SE_DATAFIN'
    end
    object AdoSNGPCEnviadosSE_NOMEORIGINAL: TStringField
      FieldName = 'SE_NOMEORIGINAL'
      Size = 100
    end
  end
  object SrcNGPCEnviados: TDataSource
    DataSet = AdoSNGPCEnviados
    OnDataChange = SrcNGPCEnviadosDataChange
    Left = 572
    Top = 280
  end
end

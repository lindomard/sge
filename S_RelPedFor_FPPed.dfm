object Frm_RelPedFor_FPPed: TFrm_RelPedFor_FPPed
  Left = 421
  Top = 163
  Width = 837
  Height = 514
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Relat'#243'rio de Pedidos c/Formas de Pagamentos'
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
  object Label4: TLabel
    Left = 41
    Top = 331
    Width = 49
    Height = 13
    AutoSize = False
    Caption = 'Per'#237'odo:'
  end
  object Label5: TLabel
    Left = 223
    Top = 329
    Width = 8
    Height = 13
    Caption = #224
  end
  object Label2: TLabel
    Left = 9
    Top = 356
    Width = 81
    Height = 13
    Caption = 'Separado por:'
  end
  object sbSalvarPadrao: TSpeedButton
    Left = 322
    Top = 408
    Width = 140
    Height = 40
    Caption = 'Salvar Padr'#227'o'
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
  object CB_SEMBORDA: TCheckBox
    Left = 573
    Top = 329
    Width = 90
    Height = 17
    Hint = 
      'N'#227'o Emitir as Bordas Para'#13#10'Impress'#227'o mais r'#225'pida em'#13#10'impressora ' +
      'matricial'
    Caption = 'Sem Bordas'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = CB_SEMBORDAClick
  end
  object cb_agrupar: TComboBox
    Left = 96
    Top = 350
    Width = 247
    Height = 21
    BevelKind = bkSoft
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
    OnClick = cb_agruparClick
    Items.Strings = (
      'Ano'
      'Mes'
      'Cidade'
      'Fornecedor - Raz'#227'o Social'
      'Fornecedor - Nome Fantasia'
      'Estado'
      'Forma de Pagamento'
      'Sem Separar'
      'C'#243'digo Caixa')
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 821
    Height = 285
    ActivePage = TabSheet1
    Align = alTop
    Style = tsButtons
    TabOrder = 0
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'Filtros Primarios'
      object StaticText4: TStaticText
        Left = 6
        Top = 2
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Fornecedor'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 3
      end
      object edt_codfor: TEdit
        Left = 6
        Top = 19
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        TabOrder = 0
        OnExit = edt_codforExit
        OnKeyPress = edt_codforKeyPress
      end
      object OMITIR_FOR: TCheckBox
        Left = 87
        Top = 22
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object lbx_codfor: TListBox
        Left = 143
        Top = 1
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnKeyDown = lbx_codforKeyDown
      end
      object st_forma: TStaticText
        Left = 6
        Top = 168
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Forma de Pagamento'
        Color = 16772332
        ParentColor = False
        TabOrder = 4
      end
      object lbx_codfp: TListBox
        Left = 143
        Top = 167
        Width = 440
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnKeyDown = lbx_codfpKeyDown
      end
      object OMITIR_FP: TCheckBox
        Left = 87
        Top = 186
        Width = 56
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object CODFP: TEdit
        Left = 6
        Top = 186
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        TabOrder = 7
        OnExit = CODFPExit
        OnKeyPress = CODFPKeyPress
      end
      object StaticText2: TStaticText
        Left = 6
        Top = 210
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Caixa'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 8
      end
      object CODBCO: TEdit
        Left = 6
        Top = 227
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        TabOrder = 9
        OnExit = CODBCOExit
        OnKeyPress = CODBCOKeyPress
      end
      object OMITIR_BCO: TCheckBox
        Left = 87
        Top = 230
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
      end
      object lbx_codbco: TListBox
        Left = 143
        Top = 209
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnKeyDown = lbx_codbcoKeyDown
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 2
      object RLReport1: TRLReport
        Left = -9
        Top = -48
        Width = 794
        Height = 945
        DataSource = Src_LDR
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.TopMargin = 3.000000000000000000
        Margins.BottomMargin = 0.000000000000000000
        PageSetup.PaperSize = fpCustom
        PageSetup.PaperWidth = 210.000000000000000000
        PageSetup.PaperHeight = 250.000000000000000000
        ShowProgress = False
        Visible = False
        BeforePrint = RLReport1BeforePrint
        object RLBand1: TRLBand
          Left = 38
          Top = 11
          Width = 718
          Height = 50
          BandType = btColumnHeader
          Degrade.Direction = ddVertical
          Degrade.OppositeColor = 6619057
          object RLDBText1: TRLDBText
            Left = 0
            Top = 0
            Width = 82
            Height = 16
            Align = faLeftTop
            DataField = 'RAZAO_CAB'
          end
          object RLLabel1: TRLLabel
            Left = 573
            Top = 1
            Width = 35
            Height = 16
            Caption = 'Data:'
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 632
            Top = 0
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object lbl_titulo02: TRLLabel
            Left = 0
            Top = 17
            Width = 262
            Height = 16
            Caption = 'Relat'#243'rio de Pedidos c/Forma de pagamento'
          end
          object lbl_periodo: TRLLabel
            Left = 161
            Top = 17
            Width = 392
            Height = 16
            Alignment = taCenter
            AutoSize = False
          end
          object RLLabel3: TRLLabel
            Left = 572
            Top = 18
            Width = 48
            Height = 16
            Caption = 'P'#225'gina:'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 632
            Top = 17
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
          end
          object lbl_titulo: TRLLabel
            Left = 0
            Top = 34
            Width = 718
            Height = 16
            Align = faClientBottom
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = 'Relat'#243'rio de Pedidos c/forma de Pagamento'
            Color = 16766935
            ParentColor = False
            Transparent = False
          end
        end
        object RLGroup1: TRLGroup
          Left = 38
          Top = 61
          Width = 718
          Height = 98
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          DataFields = 'NOMGRU'
          object RLBand_cabgru: TRLBand
            Left = 1
            Top = 0
            Width = 716
            Height = 15
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object db_grupo: TRLDBText
              Left = 0
              Top = 0
              Width = 716
              Height = 14
              Align = faClient
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Color = clWhite
              DataField = 'NOMGRU'
              DataSource = Src_LDR
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
          end
          object band_cab: TRLBand
            Left = 1
            Top = 15
            Width = 716
            Height = 32
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object lbl_cabchave: TRLMemo
              Left = 2
              Top = 0
              Width = 38
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Chave'
                'Pedido')
              ParentFont = False
            end
            object lbl_cabcliente: TRLMemo
              Left = 79
              Top = 0
              Width = 260
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Cliente')
              ParentFont = False
            end
            object lbl_cabtotliq: TRLMemo
              Left = 371
              Top = 0
              Width = 46
              Height = 29
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Total Liquido')
              ParentFont = False
            end
            object lbl_cabdatap: TRLMemo
              Left = 40
              Top = 0
              Width = 38
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Data do'
                'Pedido')
              ParentFont = False
            end
            object lbl_cabcodfp: TRLMemo
              Left = 421
              Top = 0
              Width = 34
              Height = 29
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'C'#243'd'
                'FP')
              ParentFont = False
            end
            object lbl_cabnomfp: TRLMemo
              Left = 456
              Top = 0
              Width = 162
              Height = 29
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Forma de Pgto')
              ParentFont = False
            end
            object lbl_cabfpgto: TRLMemo
              Left = 663
              Top = 0
              Width = 52
              Height = 29
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Valor Forma')
              ParentFont = False
            end
            object lbl_cabdtfp: TRLMemo
              Left = 619
              Top = 0
              Width = 44
              Height = 29
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Data')
              ParentFont = False
            end
            object lbl_codcai: TRLMemo
              Left = 339
              Top = 2
              Width = 32
              Height = 29
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'C'#243'd'
                'Caixa')
              ParentFont = False
              Visible = False
            end
          end
          object rlgrupo_chave: TRLGroup
            Left = 1
            Top = 47
            Width = 716
            Height = 32
            DataFields = 'PF1CHAVE'
            object RLBand_detail: TRLBand
              Left = 0
              Top = 0
              Width = 716
              Height = 13
              BeforePrint = RLBand_detailBeforePrint
              object lbl_nomfp: TRLDBText
                Left = 456
                Top = 0
                Width = 162
                Height = 12
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'PF1VNOMFP'
                DataSource = Src_LDR
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_cabnomfp
                Layout = tlCenter
                ParentFont = False
              end
              object lbl_fpgto: TRLDBText
                Left = 663
                Top = 0
                Width = 52
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'PF1VVALOR'
                DataSource = Src_LDR
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_cabfpgto
                Layout = tlCenter
                ParentFont = False
              end
              object lbl_dtfp: TRLDBText
                Left = 619
                Top = 0
                Width = 44
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'PF1VDATAV'
                DataSource = Src_LDR
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_cabdtfp
                Layout = tlCenter
                ParentFont = False
              end
              object lbl_codfp: TRLDBText
                Left = 421
                Top = 0
                Width = 34
                Height = 12
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'PFPFORMA'
                DataSource = Src_LDR
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_cabcodfp
                Layout = tlCenter
                ParentFont = False
              end
              object rldet_codcai: TRLDBText
                Left = 339
                Top = 1
                Width = 32
                Height = 12
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'CAIXA'
                DataSource = Src_LDR
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_codcai
                Layout = tlCenter
                ParentFont = False
                Visible = False
              end
              object lbl_chave: TRLLabel
                Left = 2
                Top = 0
                Width = 38
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_cabchave
                Layout = tlCenter
                ParentFont = False
              end
              object lbl_datap: TRLLabel
                Left = 40
                Top = 0
                Width = 38
                Height = 12
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_cabdatap
                Layout = tlCenter
                ParentFont = False
              end
              object lbl_cliente: TRLLabel
                Left = 79
                Top = 0
                Width = 260
                Height = 12
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_cabcliente
                Layout = tlCenter
                ParentFont = False
              end
              object lbl_totliq: TRLLabel
                Left = 371
                Top = 0
                Width = 46
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_cabtotliq
                Layout = tlCenter
                ParentFont = False
              end
            end
            object rl_bandtotPed: TRLBand
              Left = 0
              Top = 13
              Width = 716
              Height = 13
              BandType = btSummary
              BeforePrint = rl_bandtotPedBeforePrint
              object lbl_totPfpgto: TRLLabel
                Left = 663
                Top = -2
                Width = 52
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Caption = ' '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_fpgto
                Layout = tlCenter
                ParentFont = False
              end
              object lbl_TotPchave: TRLLabel
                Left = 2
                Top = 0
                Width = 38
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                Caption = 'Total.....'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_cabchave
                Layout = tlCenter
                ParentFont = False
              end
              object lbl_TotPdatap: TRLLabel
                Left = 40
                Top = 0
                Width = 38
                Height = 12
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                Caption = ' '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_cabdatap
                Layout = tlCenter
                ParentFont = False
              end
              object lbl_TotPcliente: TRLLabel
                Left = 79
                Top = 0
                Width = 260
                Height = 12
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                Caption = ' '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_cabcliente
                Layout = tlCenter
                ParentFont = False
              end
              object lbl_TotPtotliq: TRLLabel
                Left = 371
                Top = 0
                Width = 46
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                Caption = ' '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_cabtotliq
                Layout = tlCenter
                ParentFont = False
              end
              object lbl_TotPcodfp: TRLLabel
                Left = 421
                Top = 0
                Width = 34
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                Caption = ' '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_cabcodfp
                Layout = tlCenter
                ParentFont = False
              end
              object lbl_TotPnomfp: TRLLabel
                Left = 456
                Top = 0
                Width = 162
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                Caption = ' '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_cabnomfp
                Layout = tlCenter
                ParentFont = False
              end
              object lbl_TotPdtfp: TRLLabel
                Left = 619
                Top = 0
                Width = 44
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                Caption = ' '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_cabdtfp
                Layout = tlCenter
                ParentFont = False
              end
              object rltot_codcai: TRLLabel
                Left = 339
                Top = 1
                Width = 32
                Height = 12
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                Caption = ' '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_codcai
                Layout = tlCenter
                ParentFont = False
              end
            end
          end
          object rl_bandtot: TRLBand
            Left = 1
            Top = 79
            Width = 716
            Height = 13
            BandType = btSummary
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            BeforePrint = rl_bandtotBeforePrint
            object lbl_TotGchave: TRLLabel
              Left = 2
              Top = 0
              Width = 38
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'Total do Grupo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cabchave
              Layout = tlCenter
              ParentFont = False
            end
            object lbl_TotGdatap: TRLLabel
              Left = 40
              Top = 0
              Width = 38
              Height = 12
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cabdatap
              Layout = tlCenter
              ParentFont = False
            end
            object lbl_TotGcliente: TRLLabel
              Left = 79
              Top = 0
              Width = 260
              Height = 12
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cabcliente
              Layout = tlCenter
              ParentFont = False
            end
            object lbl_TotGtotliq: TRLLabel
              Left = 371
              Top = 0
              Width = 46
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cabtotliq
              Layout = tlCenter
              ParentFont = False
            end
            object lbl_TotGcodfp: TRLLabel
              Left = 421
              Top = 0
              Width = 34
              Height = 18
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cabcodfp
              Layout = tlCenter
              ParentFont = False
            end
            object lbl_TotGnomfp: TRLLabel
              Left = 456
              Top = 0
              Width = 162
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cabnomfp
              Layout = tlCenter
              ParentFont = False
            end
            object lbl_TotGdtfp: TRLLabel
              Left = 619
              Top = 0
              Width = 44
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cabdtfp
              Layout = tlCenter
              ParentFont = False
            end
            object lbl_totgfpgto: TRLLabel
              Left = 663
              Top = 0
              Width = 52
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_fpgto
              Layout = tlCenter
              ParentFont = False
            end
          end
        end
        object rlTotalGer: TRLBand
          Left = 38
          Top = 168
          Width = 718
          Height = 14
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          object lbl_totfpgto: TRLLabel
            Left = 664
            Top = 0
            Width = 52
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_fpgto
            ParentFont = False
          end
          object lbl_totchave: TRLLabel
            Left = 3
            Top = 0
            Width = 38
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Total Geral'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabchave
            ParentFont = False
          end
          object lbl_totdatap: TRLLabel
            Left = 41
            Top = 0
            Width = 38
            Height = 12
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabdatap
            ParentFont = False
          end
          object lbl_totcliente: TRLLabel
            Left = 80
            Top = 0
            Width = 260
            Height = 12
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabcliente
            ParentFont = False
          end
          object lbl_tottotliq: TRLLabel
            Left = 372
            Top = 0
            Width = 46
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabtotliq
            ParentFont = False
          end
          object lbl_totcodfp: TRLLabel
            Left = 422
            Top = 0
            Width = 34
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabcodfp
            ParentFont = False
          end
          object lbl_totnomfp: TRLLabel
            Left = 457
            Top = 0
            Width = 162
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabnomfp
            ParentFont = False
          end
          object lbl_totdtfp: TRLLabel
            Left = 620
            Top = 0
            Width = 44
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_cabdtfp
            ParentFont = False
          end
        end
        object RLBand3: TRLBand
          Left = 38
          Top = 159
          Width = 718
          Height = 9
          BandType = btColumnFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object lbl_rodape: TRLLabel
            Left = 692
            Top = 0
            Width = 26
            Height = 6
            Align = faRightTop
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -5
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLSubDetail1: TRLSubDetail
          Left = 38
          Top = 182
          Width = 718
          Height = 64
          DataSource = src_resumo
          Positioning = btSummary
          object RLBand7: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btSummary
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Filtros Segundarios'
      ImageIndex = 1
      object sbn_coddep: TSpeedButton
        Left = 56
        Top = 103
        Width = 25
        Height = 19
        Flat = True
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
        OnClick = sbn_coddepClick
      end
      object StaticText6: TStaticText
        Left = 8
        Top = 127
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Cidade'
        Color = 16772332
        ParentColor = False
        TabOrder = 0
      end
      object CODLOC: TEdit
        Left = 8
        Top = 145
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        TabOrder = 5
        OnExit = CODLOCExit
        OnKeyPress = CODLOCKeyPress
      end
      object OMITIR_LOC: TCheckBox
        Left = 86
        Top = 146
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object lbx_codloc: TListBox
        Left = 145
        Top = 126
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnKeyDown = lbx_codlocKeyDown
      end
      object StaticText9: TStaticText
        Left = 9
        Top = 84
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Estado'
        Color = 16772332
        ParentColor = False
        TabOrder = 1
      end
      object CODUF: TEdit
        Left = 9
        Top = 102
        Width = 43
        Height = 21
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        TabOrder = 2
        OnExit = CODUFExit
      end
      object OMITIR_UF: TCheckBox
        Left = 87
        Top = 103
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object lbx_coduf: TListBox
        Left = 146
        Top = 83
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_codufKeyDown
      end
      object CB_FORCAR: TCheckBox
        Left = 18
        Top = 225
        Width = 215
        Height = 17
        Caption = 'For'#231'ar todos Registros'
        TabOrder = 8
      end
      object lbx_codusr_cx: TListBox
        Left = 145
        Top = 172
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnKeyDown = lbx_codusr_cxKeyDown
      end
      object OMITIR_USR_CX: TCheckBox
        Left = 89
        Top = 194
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
      end
      object StaticText10: TStaticText
        Left = 8
        Top = 173
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Usu'#225'rio/Cx.'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 11
      end
      object edt_codusr_cx: TEdit
        Left = 7
        Top = 191
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        TabOrder = 12
        OnExit = edt_codusr_cxExit
        OnKeyPress = edt_codusr_cxKeyPress
      end
    end
  end
  object MDT1: TMaskEdit
    Left = 96
    Top = 327
    Width = 80
    Height = 21
    Hint = 
      'Para filtrar t'#237'tulos somente a Partir de '#13#10'uma determinada data ' +
      #13#10'digite a mesma.'
    BevelOuter = bvNone
    BevelKind = bkSoft
    Ctl3D = True
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Text = '  /  /    '
  end
  object MDT2: TMaskEdit
    Left = 262
    Top = 327
    Width = 81
    Height = 21
    Hint = 
      'Para filtrar t'#237'tulos at'#233' '#13#10'uma determinada data '#13#10'digite a mesma' +
      '.'
    BevelOuter = bvNone
    BevelKind = bkSoft
    Ctl3D = True
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Text = '  /  /    '
  end
  object bbImprimir: TBitBtn
    Left = 3
    Top = 408
    Width = 140
    Height = 40
    Caption = '&Imprimir'
    TabOrder = 7
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
  object bbSair: TBitBtn
    Left = 631
    Top = 407
    Width = 140
    Height = 40
    Caption = '&Sair'
    TabOrder = 8
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
  object CB_VISREL: TCheckBox
    Left = 573
    Top = 358
    Width = 186
    Height = 17
    Hint = 'Se Marcado mostra o '#13#10'relat'#243'rio antes de imprimir'
    Caption = 'Visualizar Antes de Imprimir'
    Checked = True
    ParentShowHint = False
    ShowHint = True
    State = cbChecked
    TabOrder = 6
  end
  object RG_FILTRO: TRadioGroup
    Left = 352
    Top = 319
    Width = 108
    Height = 51
    Caption = 'Emitir Somente:'
    Ctl3D = False
    ItemIndex = 2
    Items.Strings = (
      '&Pendentes'
      '&Confirmados'
      '&Todos')
    ParentCtl3D = False
    TabOrder = 4
  end
  object rg_tpdata: TRadioGroup
    Left = 464
    Top = 319
    Width = 108
    Height = 51
    Caption = 'Por Data..:'
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'Pedido'
      'Nota')
    ParentCtl3D = False
    TabOrder = 9
  end
  object Qr_LDR: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  0 AS  PFPSEQ'
      ', TO_CHAR(PF1VCODFP) AS PFPFORMA'
      ',PF1VNOMFP'
      ',PF1VVALOR'
      ',PF1VDATAV'
      ',PF1STATUS'
      ',PF1CODEMP'
      ',0 AS P1TIPO'
      ',PF1CHAVE'
      ''
      ',PF1CODFOR'
      ',PF1DATANF'
      ',0 AS P1CUPACRE'
      ',0 AS P1CUPDES,'
      '(PF1TOTLIQ) AS P1TOTALL'
      ', FPCP.FPLOTE'
      ',0 AS CAIXA'
      ',PF1TOTDES'
      ',PF1TOTBRU'
      ',PF1OBS'
      ',FRAZAO'
      ',FDENOM'
      ',PF1VNOMFP as NOMGRU'
      ''
      ' from CADPF1,CADFOR,CADPF1V, FPCP, CADDAP, FPCPDUP'
      ' where PF1CODEMP=1'
      ' and FCODFOR=PF1CODFOR'
      ' and PF1VCHAVE=PF1CHAVE'
      ' and PF1VLOTSEQ=PF1LOTSEQ'
      ' and CACHAVEP=PF1CHAVE'
      ' AND CACODEMP=PF1CODEMP'
      ' and FPCPDUP.FPNUMERO=CANUMERO'
      ' and FPCPDUP.FPDESD=CADESD'
      ' and FPCPDUP.FPCODEMP=CACODEMP'
      ' and FPCP.FPCODEMP=FPCPDUP.FPCODEMP'
      ' and FPCP.FPLOTE=FPCPDUP.FPLOTE'
      '  ')
    Left = 552
    Top = 78
    object Qr_LDRPFPSEQ: TFloatField
      FieldName = 'PFPSEQ'
    end
    object Qr_LDRPFPFORMA: TStringField
      FieldName = 'PFPFORMA'
      Size = 40
    end
    object Qr_LDRPF1VNOMFP: TStringField
      FieldName = 'PF1VNOMFP'
      Size = 30
    end
    object Qr_LDRPF1VVALOR: TFloatField
      FieldName = 'PF1VVALOR'
    end
    object Qr_LDRPF1VDATAV: TDateTimeField
      FieldName = 'PF1VDATAV'
    end
    object Qr_LDRPF1STATUS: TFloatField
      FieldName = 'PF1STATUS'
    end
    object Qr_LDRPF1CODEMP: TFloatField
      FieldName = 'PF1CODEMP'
    end
    object Qr_LDRP1TIPO: TFloatField
      FieldName = 'P1TIPO'
    end
    object Qr_LDRPF1CHAVE: TFloatField
      FieldName = 'PF1CHAVE'
    end
    object Qr_LDRPF1CODFOR: TFloatField
      FieldName = 'PF1CODFOR'
    end
    object Qr_LDRPF1DATANF: TDateTimeField
      FieldName = 'PF1DATANF'
    end
    object Qr_LDRP1CUPACRE: TFloatField
      FieldName = 'P1CUPACRE'
    end
    object Qr_LDRP1CUPDES: TFloatField
      FieldName = 'P1CUPDES'
    end
    object Qr_LDRP1TOTALL: TFloatField
      FieldName = 'P1TOTALL'
    end
    object Qr_LDRFPLOTE: TFloatField
      FieldName = 'FPLOTE'
    end
    object Qr_LDRCAIXA: TFloatField
      FieldName = 'CAIXA'
    end
    object Qr_LDRPF1TOTDES: TFloatField
      FieldName = 'PF1TOTDES'
    end
    object Qr_LDRPF1TOTBRU: TFloatField
      FieldName = 'PF1TOTBRU'
    end
    object Qr_LDRPF1OBS: TMemoField
      FieldName = 'PF1OBS'
      BlobType = ftMemo
      Size = 300
    end
    object Qr_LDRFRAZAO: TStringField
      FieldName = 'FRAZAO'
      Size = 60
    end
    object Qr_LDRFDENOM: TStringField
      FieldName = 'FDENOM'
      Size = 40
    end
    object Qr_LDRNOMGRU: TStringField
      FieldName = 'NOMGRU'
      Size = 30
    end
  end
  object Src_LDR: TDataSource
    DataSet = Qr_LDR
    Left = 568
    Top = 65528
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 664
    Top = 16
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 672
    Top = 208
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 728
    Top = 16
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 536
    Top = 5
  end
  object matricial: TRLDraftFilter
    Left = 700
    Top = 19
  end
  object cds_resumo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 747
    Top = 115
    Data = {
      560000009619E0BD010000001800000003000000000003000000560009726573
      5F666F726D610100490000000100055749445448020002001E000576616C6F72
      0800040000000000077174645F70656404000100000000000000}
    object cds_resumores_forma: TStringField
      FieldName = 'res_forma'
      Size = 30
    end
    object cds_resumovalor: TFloatField
      FieldName = 'valor'
    end
    object cds_resumoqtd_ped: TIntegerField
      FieldName = 'qtd_ped'
    end
  end
  object src_resumo: TDataSource
    DataSet = cds_resumo
    Left = 771
    Top = 115
  end
end

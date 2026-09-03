object Frm_Rel_For: TFrm_Rel_For
  Left = 454
  Top = 201
  Width = 746
  Height = 364
  Caption = 'Relat'#243'rio de Fornecedores'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 24
    Top = 264
    Width = 81
    Height = 13
    Caption = 'Separado por:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 738
    Height = 257
    ActivePage = TabSheet2
    Align = alTop
    MultiLine = True
    TabOrder = 0
    TabPosition = tpLeft
    object TabSheet1: TTabSheet
      Caption = 'Principais'
      object Label5: TLabel
        Left = 70
        Top = 13
        Width = 73
        Height = 13
        Caption = 'Fornecedor.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 98
        Top = 92
        Width = 44
        Height = 13
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 77
        Top = 54
        Width = 66
        Height = 13
        Caption = 'Estado/UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 8
        Top = 189
        Width = 133
        Height = 13
        AutoSize = False
        Caption = 'Fornecedor Qualificado'
        Color = 8454016
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label3: TLabel
        Left = 150
        Top = 190
        Width = 185
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Entre o Per'#237'odo de'
        Color = 8454016
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 238
        Top = 209
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
      object Label6: TLabel
        Left = 7
        Top = 133
        Width = 138
        Height = 13
        Caption = 'Grupo de Fornecedores:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CODFOR: TEdit
        Left = 148
        Top = 10
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODFORExit
        OnKeyPress = CODFORKeyPress
      end
      object lbx_codfor: TListBox
        Left = 209
        Top = 10
        Width = 445
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = lbx_codforKeyDown
      end
      object OMITIR_FOR: TCheckBox
        Left = 147
        Top = 32
        Width = 53
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object CODLOC: TEdit
        Left = 148
        Top = 92
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnExit = CODLOCExit
        OnKeyPress = CODLOCKeyPress
      end
      object lbx_codloc: TListBox
        Left = 209
        Top = 92
        Width = 445
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnKeyDown = lbx_codlocKeyDown
      end
      object OMITIR_LOC: TCheckBox
        Left = 149
        Top = 114
        Width = 57
        Height = 17
        Caption = 'Omitir'
        TabOrder = 7
      end
      object CODUF: TEdit
        Left = 148
        Top = 51
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODUFExit
        OnKeyDown = CODUFKeyDown
      end
      object lbx_coduf: TListBox
        Left = 209
        Top = 51
        Width = 445
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_codufKeyDown
      end
      object OMITIR_UF: TCheckBox
        Left = 148
        Top = 72
        Width = 45
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object CB_CODBLOQ: TComboBox
        Left = 9
        Top = 205
        Width = 127
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 2
        TabOrder = 9
        Text = 'Todos'
        Items.Strings = (
          'Sim'
          'N'#227'o'
          'Todos')
      end
      object MDT1: TMaskEdit
        Left = 150
        Top = 205
        Width = 81
        Height = 19
        Hint = 
          'Para filtrar t'#237'tulos somente a Partir de '#13#10'uma determinada data ' +
          #13#10'digite a mesma.'
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        Text = '  /  /    '
        OnExit = MDT1Exit
      end
      object MDT2: TMaskEdit
        Left = 255
        Top = 205
        Width = 80
        Height = 19
        Hint = 
          'Para filtrar t'#237'tulos at'#233' '#13#10'uma determinada data '#13#10'digite a mesma' +
          '.'
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        Text = '  /  /    '
        OnExit = MDT2Exit
      end
      object CB_INFQUALIF: TCheckBox
        Left = 352
        Top = 190
        Width = 228
        Height = 17
        Caption = 'Exibir Informa'#231#245'es da qualifica'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object CODGFOR: TEdit
        Left = 148
        Top = 133
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 13
        OnExit = CODGFORExit
        OnKeyPress = CODGFORKeyPress
      end
      object lbx_codgfor: TListBox
        Left = 209
        Top = 133
        Width = 445
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        OnKeyDown = lbx_codgforKeyDown
      end
      object OMITIR_GFOR: TCheckBox
        Left = 149
        Top = 155
        Width = 57
        Height = 17
        Caption = 'Omitir'
        TabOrder = 15
      end
      object CB_BORDAS: TCheckBox
        Left = 352
        Top = 208
        Width = 228
        Height = 17
        Caption = 'Com Bordas'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 16
        OnClick = CB_BORDASClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Outros'
      ImageIndex = 1
      object StaticText10: TStaticText
        Left = 14
        Top = 2
        Width = 142
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Status'
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object CLBStatus: TCheckListBox
        Left = 13
        Top = 22
        Width = 143
        Height = 122
        Color = 16776176
        Columns = 1
        Ctl3D = False
        ItemHeight = 13
        Items.Strings = (
          'Ativo'
          'Bloq.Temp'
          'Bloq.Def.'
          'Novo'
          'Observa'#231#227'o'
          'Todos')
        ParentCtl3D = False
        Style = lbOwnerDrawFixed
        TabOrder = 1
        OnClick = CLBStatusClick
      end
      object StaticText1: TStaticText
        Left = 166
        Top = 2
        Width = 142
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Tipo de Fornecedor'
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 2
      end
      object clbTipoFornecedor: TCheckListBox
        Left = 165
        Top = 22
        Width = 143
        Height = 122
        Color = 16776176
        Columns = 1
        Ctl3D = False
        ItemHeight = 13
        Items.Strings = (
          'Mercadorias'
          'Presta'#231#227'o Servi'#231'o'
          'Funcion'#225'rios'
          'Aluguel'
          'Impostos'
          'Pre'#231'os de Mercadorias'
          'Outros'
          'Todos')
        ParentCtl3D = False
        Style = lbOwnerDrawFixed
        TabOrder = 3
        OnClick = clbTipoFornecedorClick
      end
      object StaticText2: TStaticText
        Left = 326
        Top = 2
        Width = 142
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Tipo de Despesas'
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 4
      end
      object clbtipoDesp: TCheckListBox
        Left = 325
        Top = 22
        Width = 143
        Height = 122
        Color = 16776176
        Columns = 1
        Ctl3D = False
        ItemHeight = 13
        Items.Strings = (
          'Variada'
          'Fixa'
          'Todos')
        ParentCtl3D = False
        Style = lbOwnerDrawFixed
        TabOrder = 5
        OnClick = clbtipoDespClick
      end
      object StaticText3: TStaticText
        Left = 478
        Top = 2
        Width = 142
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Regime Tributario'
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 6
      end
      object clb_crt: TCheckListBox
        Left = 477
        Top = 22
        Width = 143
        Height = 122
        Color = 16776176
        Columns = 1
        Ctl3D = False
        ItemHeight = 13
        Items.Strings = (
          'Indefinido'
          'Simples Nacional'
          'Simples Nacional Excesso de sublimite de receita bruta'
          'Regime Normal'
          'Todos')
        ParentCtl3D = False
        Style = lbOwnerDrawFixed
        TabOrder = 7
        OnClick = clb_crtClick
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'tsRelatorio'
      ImageIndex = 2
      object RLReport1: TRLReport
        Left = 1
        Top = -1
        Width = 794
        Height = 1123
        DataSource = Src_For
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        BeforePrint = RLReport1BeforePrint
        object rlband_cabger: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 39
          BandType = btColumnHeader
          object RLDBText1: TRLDBText
            Left = 169
            Top = 0
            Width = 368
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 0
            Top = 0
            Width = 39
            Height = 16
            Align = faLeftTop
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 679
            Top = 0
            Width = 39
            Height = 16
            Align = faRightTop
            Info = itHour
          end
          object rlTitulo: TRLLabel
            Left = 1
            Top = 19
            Width = 156
            Height = 16
            Caption = 'Rela'#231#227'o de Fornecedores.'
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 630
            Top = 16
            Width = 62
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'Pagina:'
          end
          object RLSystemInfo4: TRLSystemInfo
            Left = 694
            Top = 16
            Width = 22
            Height = 16
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
        end
        object RLBand_filtros: TRLBand
          Left = 38
          Top = 77
          Width = 718
          Height = 22
          BandType = btColumnHeader
          object filtros: TRLMemo
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taCenter
          end
        end
        object rlRodape: TRLBand
          Left = 38
          Top = 218
          Width = 718
          Height = 16
          BandType = btSummary
          BeforePrint = rlRodapeBeforePrint
          object rlobsger: TRLLabel
            Left = 0
            Top = 0
            Width = 28
            Height = 7
            Align = faLeftTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand_rodpag: TRLBand
          Left = 38
          Top = 202
          Width = 718
          Height = 16
          BandType = btColumnFooter
        end
        object RLGroup1: TRLGroup
          Left = 38
          Top = 99
          Width = 718
          Height = 103
          DataFields = 'NOMGRU'
          object rlband_grupo01: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 17
            BandType = btHeader
            object RLDBText2: TRLDBText
              Left = 0
              Top = 0
              Width = 718
              Height = 16
              Align = faTop
              Alignment = taCenter
              AutoSize = False
              DataField = 'NOMGRU'
              DataSource = Src_For
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object rlCabDet: TRLBand
            Left = 0
            Top = 17
            Width = 718
            Height = 13
            BandType = btColumnHeader
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object lbl_cadcod: TRLLabel
              Left = 1
              Top = 0
              Width = 45
              Height = 11
              AutoSize = False
              Caption = 'C'#243'digo'
            end
            object lbl_razsoc: TRLLabel
              Left = 46
              Top = 0
              Width = 290
              Height = 11
              AutoSize = False
              Caption = 'Raz'#227'o Social'
            end
            object lbl_cidade: TRLLabel
              Left = 336
              Top = 0
              Width = 161
              Height = 11
              AutoSize = False
              Caption = 'Cidade/UF'
            end
            object lbl_cabfone: TRLLabel
              Left = 496
              Top = 0
              Width = 88
              Height = 11
              AutoSize = False
              Caption = 'Telefone'
            end
            object lbl_cabstatus: TRLLabel
              Left = 584
              Top = 0
              Width = 133
              Height = 11
              AutoSize = False
              Caption = 'Status'
            end
          end
          object rlBand_Group: TRLGroup
            Left = 0
            Top = 30
            Width = 718
            Height = 58
            DataFields = 'FCODFOR'
            object RLBand_cabdet: TRLBand
              Left = 0
              Top = 0
              Width = 718
              Height = 16
              BandType = btColumnHeader
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              BeforePrint = RLBand_cabdetBeforePrint
              object lbl_detCodPro: TRLDBText
                Left = 1
                Top = 0
                Width = 45
                Height = 13
                AutoSize = False
                DataField = 'FCODFOR'
                DataSource = Src_For
              end
              object lbl_detrazsoc: TRLDBText
                Left = 46
                Top = 1
                Width = 290
                Height = 13
                AutoSize = False
                DataField = 'FRAZAO'
                DataSource = Src_For
              end
              object lbl_detcidade: TRLDBText
                Left = 336
                Top = 1
                Width = 161
                Height = 13
                AutoSize = False
                DataField = 'CIDADE_UF'
                DataSource = Src_For
              end
              object lbl_detcabfone: TRLDBText
                Left = 496
                Top = 1
                Width = 88
                Height = 13
                AutoSize = False
                DataField = 'FFONE'
                DataSource = Src_For
              end
              object lbl_detstatus: TRLDBText
                Left = 584
                Top = 1
                Width = 133
                Height = 13
                AutoSize = False
                DataField = 'status'
                DataSource = Src_For
              end
            end
            object RLBand_detstatus: TRLBand
              Left = 0
              Top = 16
              Width = 718
              Height = 16
              object RLLabel1: TRLLabel
                Left = 4
                Top = -1
                Width = 51
                Height = 16
                Caption = 'EVento:'
              end
              object RLDBText4: TRLDBText
                Left = 54
                Top = -1
                Width = 71
                Height = 16
                DataField = 'status_bloq'
                DataSource = Src_For
              end
            end
            object RLBand_detmot: TRLBand
              Left = 0
              Top = 32
              Width = 718
              Height = 16
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              object RLDBMemo1: TRLDBMemo
                Left = 0
                Top = 0
                Width = 718
                Height = 13
                Align = faTop
                Alignment = taCenter
                DataField = 'FB_MOTIVO'
                DataSource = Src_For
              end
            end
          end
        end
      end
    end
  end
  object bbImprimir: TBitBtn
    Left = 493
    Top = 289
    Width = 110
    Height = 26
    Cursor = crHandPoint
    Hint = 'Imprime os T'#237'tulos '#13#10'Selecionados'
    Caption = '&Imprimir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
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
    Left = 612
    Top = 289
    Width = 110
    Height = 26
    Cursor = crHandPoint
    Hint = 'Fecha Este Formul'#225'rio'#13#10'e Volta ao Menu Principal'
    Caption = '&Sair'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
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
  object CB_SEPAR: TComboBox
    Left = 113
    Top = 261
    Width = 329
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    TabOrder = 3
    Text = 'Sem Separar'
    Items.Strings = (
      'Bairro'
      'Cidade'
      'Estado'
      'Grupo de Fornecedor'
      'Regime Tributario'
      'Sem Separar')
  end
  object Qr_For: TQuery
    OnCalcFields = Qr_ForCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select FCODFOR,FRAZAO,FDENOM,FCIDADE,FUF,FCGC,FIE'
      ',FFONE,FFAX'
      ', FCIDADE ||'#39'-'#39'|| FUF AS CIDADE_UF'
      ', FCODBLOQ , FMOTBLOQ, FDATHOR_BLOQ'
      ',FB_CODFOR,'
      'FB_BLOQUEIO,FB_MOTIVO,FB_DATHOR'
      ',FB_SEQ,FB_CODUSR'
      ',FRAZAO AS NOMGRU'
      ',FCRT'
      ',FRAZAO AS FCRT_NOME'
      'from CADFOR,CADFOR_BLOQ'
      'where FB_CODFOR(+)=FCODFOR'
      'order by FRAZAO,FCODFOR')
    Left = 671
    Top = 212
    object Qr_ForFCODFOR: TFloatField
      FieldName = 'FCODFOR'
      Origin = 'SG_ASSOC.CADFOR.FCODFOR'
    end
    object Qr_ForFRAZAO: TStringField
      FieldName = 'FRAZAO'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 40
    end
    object Qr_ForFDENOM: TStringField
      FieldName = 'FDENOM'
      Origin = 'SG_ASSOC.CADFOR.FDENOM'
      Size = 40
    end
    object Qr_ForFCIDADE: TStringField
      FieldName = 'FCIDADE'
      Origin = 'SG_ASSOC.CADFOR.FCIDADE'
      Size = 30
    end
    object Qr_ForFUF: TStringField
      FieldName = 'FUF'
      Origin = 'SG_ASSOC.CADFOR.FUF'
      Size = 2
    end
    object Qr_ForFIE: TStringField
      FieldName = 'FIE'
      Origin = 'SG_ASSOC.CADFOR.FIE'
    end
    object Qr_ForFFONE: TStringField
      FieldName = 'FFONE'
      Origin = 'SG_ASSOC.CADFOR.FFONE'
      Size = 18
    end
    object Qr_ForFFAX: TStringField
      FieldName = 'FFAX'
      Origin = 'SG_ASSOC.CADFOR.FFAX'
      Size = 18
    end
    object Qr_ForCIDADE_UF: TStringField
      FieldName = 'CIDADE_UF'
      Origin = 'SG_ASSOC.CADFOR.FCIDADE'
      Size = 33
    end
    object Qr_Forstatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'status'
      Size = 30
      Calculated = True
    end
    object Qr_ForFCODBLOQ: TFloatField
      FieldName = 'FCODBLOQ'
      Origin = 'SG_ASSOC.CADFOR.FCODBLOQ'
    end
    object Qr_ForFDATHOR_BLOQ: TDateTimeField
      FieldName = 'FDATHOR_BLOQ'
      Origin = 'SG_ASSOC.CADFOR.FDATHOR_BLOQ'
    end
    object Qr_ForFB_CODFOR: TFloatField
      FieldName = 'FB_CODFOR'
    end
    object Qr_ForFB_BLOQUEIO: TFloatField
      FieldName = 'FB_BLOQUEIO'
    end
    object Qr_ForFB_MOTIVO: TStringField
      FieldName = 'FB_MOTIVO'
      Size = 50
    end
    object Qr_ForFB_DATHOR: TDateTimeField
      FieldName = 'FB_DATHOR'
    end
    object Qr_ForFB_SEQ: TFloatField
      FieldName = 'FB_SEQ'
    end
    object Qr_ForFB_CODUSR: TFloatField
      FieldName = 'FB_CODUSR'
    end
    object Qr_Forstatus_bloq: TStringField
      FieldKind = fkCalculated
      FieldName = 'status_bloq'
      Size = 60
      Calculated = True
    end
    object Qr_ForFMOTBLOQ: TStringField
      FieldName = 'FMOTBLOQ'
      Size = 50
    end
    object Qr_ForNOMGRU: TStringField
      FieldName = 'NOMGRU'
      Size = 40
    end
    object Qr_ForFCGC: TStringField
      FieldName = 'FCGC'
      Size = 14
    end
    object Qr_ForFCRT: TFloatField
      FieldName = 'FCRT'
    end
    object Qr_ForFCRT_NOME: TStringField
      FieldName = 'FCRT_NOME'
      Size = 60
    end
  end
  object Src_For: TDataSource
    DataSet = Qr_For
    Left = 703
    Top = 212
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 613
    Top = 214
  end
end

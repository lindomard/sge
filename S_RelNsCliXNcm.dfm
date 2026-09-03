object Frm_RelNsCliXNcm: TFrm_RelNsCliXNcm
  Left = 7
  Top = 146
  BorderStyle = bsSingle
  Caption = 'Re.l. de Notas de Saida por Cliente x Classifica'#231#227'o Fiscal'
  ClientHeight = 390
  ClientWidth = 981
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 16
    Top = 312
    Width = 42
    Height = 13
    Caption = 'Periodo :'
  end
  object Label6: TLabel
    Left = 192
    Top = 312
    Width = 6
    Height = 13
    Caption = 'a'
  end
  object lblNotas: TLabel
    Left = 16
    Top = 280
    Width = 66
    Height = 13
    Caption = 'Notas Fiscais:'
  end
  object Label1: TLabel
    Left = 152
    Top = 280
    Width = 6
    Height = 13
    Caption = 'a'
  end
  object lblClass: TLabel
    Left = 238
    Top = 281
    Width = 103
    Height = 13
    Caption = 'NCM come'#231'ados por:'
  end
  object lbl_separado: TLabel
    Left = 475
    Top = 281
    Width = 67
    Height = 13
    Caption = 'Separado por:'
    Visible = False
  end
  object Label9: TLabel
    Left = 731
    Top = 284
    Width = 79
    Height = 13
    Caption = 'Ordem Imress'#227'o:'
    Visible = False
  end
  object DtIni: TDateEdit
    Left = 64
    Top = 309
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 6
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 981
    Height = 273
    ActivePage = TabSheet1
    Align = alTop
    MultiLine = True
    TabOrder = 0
    TabPosition = tpLeft
    object TabSheet1: TTabSheet
      Caption = 'Filtros Primarios'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 954
        Height = 265
        Align = alClient
        Caption = 'Filtros'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label5: TLabel
          Left = 19
          Top = 16
          Width = 86
          Height = 13
          Caption = 'C'#243'digo do Cliente:'
        end
        object Label12: TLabel
          Left = 88
          Top = 98
          Width = 17
          Height = 13
          Caption = 'UF:'
        end
        object Label10: TLabel
          Left = 69
          Top = 139
          Width = 36
          Height = 13
          Caption = 'Cidade:'
        end
        object Label2: TLabel
          Left = 78
          Top = 180
          Width = 27
          Height = 13
          Caption = 'NCM:'
        end
        object Label3: TLabel
          Left = 74
          Top = 221
          Width = 31
          Height = 13
          Caption = 'CFOP:'
        end
        object Label7: TLabel
          Left = 651
          Top = 44
          Width = 63
          Height = 13
          Caption = 'Documentos:'
        end
        object Label8: TLabel
          Left = 651
          Top = 76
          Width = 45
          Height = 13
          Caption = 'Situacao:'
        end
        object CODCLI: TEdit
          Left = 108
          Top = 13
          Width = 59
          Height = 19
          Hint = 'Informe Codigo do Cliente ou'#13#10'digite o nome p/consultar'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = CODCLIExit
          OnKeyPress = CODCLIKeyPress
        end
        object OMITIR_CLI: TCheckBox
          Left = 113
          Top = 34
          Width = 51
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object lbx_codcli: TListBox
          Left = 166
          Top = 13
          Width = 460
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnKeyDown = lbx_codcliKeyDown
        end
        object StaticText7: TStaticText
          Left = 3
          Top = 56
          Width = 102
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Rede de Clientes:'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 3
        end
        object CODRED: TEdit
          Left = 108
          Top = 54
          Width = 59
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          OnExit = CODREDExit
          OnKeyPress = CODREDKeyPress
        end
        object lbx_codred: TListBox
          Left = 166
          Top = 54
          Width = 460
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnKeyDown = lbx_codredKeyDown
        end
        object OMITIR_RED: TCheckBox
          Left = 113
          Top = 75
          Width = 51
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object CODLOC: TEdit
          Left = 108
          Top = 136
          Width = 59
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnExit = CODLOCExit
          OnKeyPress = CODLOCKeyPress
        end
        object lbx_codloc: TListBox
          Left = 166
          Top = 136
          Width = 460
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
        object lbx_coduf: TListBox
          Left = 166
          Top = 95
          Width = 460
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnKeyDown = lbx_codufKeyDown
        end
        object CODUF: TEdit
          Left = 108
          Top = 95
          Width = 59
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          CharCase = ecUpperCase
          MaxLength = 2
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnExit = CODUFExit
          OnKeyDown = CODUFKeyDown
        end
        object OMITIR_UF: TCheckBox
          Left = 113
          Top = 116
          Width = 51
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
        end
        object OMITIR_LOC: TCheckBox
          Left = 113
          Top = 157
          Width = 51
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
        end
        object CODNCM: TEdit
          Left = 108
          Top = 177
          Width = 59
          Height = 19
          Hint = 'Informe Codigo do Vendedor ou'#13#10'digite o nome p/ Consultar'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
          OnExit = CODNCMExit
          OnKeyPress = CODNCMKeyPress
        end
        object lbx_codncm: TListBox
          Left = 166
          Top = 177
          Width = 460
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
          OnKeyDown = lbx_codncmKeyDown
        end
        object lbx_codcfo: TListBox
          Left = 166
          Top = 218
          Width = 460
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
          OnKeyDown = lbx_codcfoKeyDown
        end
        object CODCFO: TEdit
          Left = 108
          Top = 218
          Width = 59
          Height = 19
          Hint = 'Informe Codigo do Vendedor ou'#13#10'digite o nome p/ Consultar'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
          OnExit = CODCFOExit
          OnKeyPress = CODCFOKeyPress
        end
        object OMITIR_CFO: TCheckBox
          Left = 113
          Top = 239
          Width = 51
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 17
        end
        object OMITIR_NCM: TCheckBox
          Left = 113
          Top = 199
          Width = 51
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 18
        end
        object RG_DOC: TComboBox
          Left = 728
          Top = 44
          Width = 178
          Height = 21
          BevelKind = bkSoft
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 4
          Sorted = True
          TabOrder = 19
          Text = 'Todos'
          Items.Strings = (
            'Cupom Fiscal'
            'NFCE'
            'Notas Fiscais Produtos'
            'Notas Fiscais Servicos'
            'Todos')
        end
        object RG_NFCANC: TComboBox
          Left = 728
          Top = 76
          Width = 178
          Height = 21
          BevelKind = bkSoft
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 4
          Sorted = True
          TabOrder = 20
          Text = 'Todas'
          Items.Strings = (
            'Canceladas'
            'Denegadas'
            'Inutilizadas'
            'Normais'
            'Todas')
        end
      end
    end
    object tsTipoPed: TTabSheet
      Caption = 'Tipos de Pedidos'
      ImageIndex = 2
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 954
        Height = 265
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Align = alClient
        Color = clSkyBlue
        Columns = 3
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ItemHeight = 16
        Items.Strings = (
          'Or'#231'amento'
          'Venda Normal'
          'Simples Remessa'
          'Devolu'#231#227'o a Fornecedor'
          'Remessa p/Troca'
          'Transferencia de Mercadorias'
          'Remessa p/Beneficiamento'
          'Remessa p/Venda(Vda.Fora do Estab.)'
          'Devolu'#231#227'o Cliente(Entrada) Normal'
          'Emprestimo de Mercadorias'
          'Nota Complementar'
          'Remessa Para Consigna'#231#245'es'
          'Devolu'#231#227'o Mercadoria Consigna'#231#245'es'
          'Devolu'#231#227'o Remessa p/Venda(Vda.Fora do Estab.)'
          'Venda Mercadoria Consignada'
          'Venda Remessa p/Venda(Vda.Fora do Estabel.)'
          'Venda Normal(Troca de Mercadorias)'
          'Devolu'#231#227'o de Cliente(Troca de Mercadorias)'
          'Transferencias de Mercadorias Entrada'
          'Devolu'#231#227'o de Mercadorias de Terceiros(Consignadas)'
          'Remessa p/Industrializa'#231#227'o'
          'Remessa p/Brinde'
          'Remessa Amostra Gratis'
          'Remessa p/Demonstra'#231#227'o'
          'Remessa p/Conserto'
          'Outras Saidas'
          'Todos')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Style = lbOwnerDrawFixed
        TabOrder = 0
      end
    end
    object TsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 3
      object RLReport1: TRLReport
        Left = 88
        Top = -16
        Width = 794
        Height = 1123
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = Src_Rel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        PrintEmpty = False
        ShowProgress = False
        BeforePrint = RLReport1BeforePrint
        object RLBand1: TRLBand
          Left = 39
          Top = 39
          Width = 716
          Height = 52
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLDBText1: TRLDBText
            Left = 0
            Top = 0
            Width = 164
            Height = 16
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object RLLabel1: TRLLabel
            Left = 584
            Top = 0
            Width = 44
            Height = 16
            Caption = 'Pagina'
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 632
            Top = 0
            Width = 37
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
          end
          object RLLabel2: TRLLabel
            Left = 670
            Top = 0
            Width = 9
            Height = 16
            AutoSize = False
            Caption = '/'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 680
            Top = 0
            Width = 37
            Height = 16
            AutoSize = False
            Info = itLastPageNumber
          end
          object lbl_titulo: TRLLabel
            Left = 0
            Top = 17
            Width = 266
            Height = 16
            Caption = 'Re.l. de Notas Sacado x Classifica'#231#227'o Fiscal'
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 658
            Top = 17
            Width = 60
            Height = 16
            Alignment = taRightJustify
            Info = itFullDate
          end
          object rlPeriodo: TRLLabel
            Left = 0
            Top = 34
            Width = 125
            Height = 16
            Caption = 'Periodo do Relatorio:'
          end
          object RLSystemInfo4: TRLSystemInfo
            Left = 679
            Top = 33
            Width = 39
            Height = 16
            Alignment = taRightJustify
            Info = itHour
          end
        end
        object RLGroup_separado: TRLGroup
          Left = 39
          Top = 91
          Width = 716
          Height = 134
          DataFields = 'SEPARADO'
          object RLGroup1: TRLGroup
            Left = 0
            Top = 16
            Width = 716
            Height = 75
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            DataFields = 'NSNUMERO'
            object RLBand2: TRLBand
              Left = 0
              Top = 0
              Width = 716
              Height = 36
              BandType = btTitle
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              object RLLabel5: TRLLabel
                Left = 3
                Top = 3
                Width = 44
                Height = 14
                Caption = 'Cliente..:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Layout = tlCenter
                ParentFont = False
              end
              object RLDBText2: TRLDBText
                Left = 44
                Top = 2
                Width = 326
                Height = 16
                AutoSize = False
                DataField = 'CodRazao'
                DataSource = Src_Rel
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Layout = tlCenter
                ParentFont = False
              end
              object lbl_cab_PDCODNCM: TRLLabel
                Left = 2
                Top = 19
                Width = 66
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Cl. Fiscal'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Layout = tlCenter
                ParentFont = False
              end
              object rlNome: TRLLabel
                Left = 124
                Top = 19
                Width = 252
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Nome do Produto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Layout = tlCenter
                ParentFont = False
              end
              object rlQtd: TRLLabel
                Left = 376
                Top = 19
                Width = 46
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Qtde'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Layout = tlCenter
                ParentFont = False
              end
              object rlValorNF: TRLLabel
                Left = 633
                Top = 19
                Width = 82
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Valor Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Layout = tlCenter
                ParentFont = False
              end
              object lbl_CFOP: TRLLabel
                Left = 600
                Top = 19
                Width = 30
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'CFOP'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Layout = tlCenter
                ParentFont = False
              end
              object RLLabel4: TRLLabel
                Left = 370
                Top = 3
                Width = 59
                Height = 14
                Caption = 'Numero NF:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Layout = tlCenter
                ParentFont = False
              end
              object RLDBText9: TRLDBText
                Left = 431
                Top = 2
                Width = 40
                Height = 16
                AutoSize = False
                DataField = 'NSNUMERO'
                DataSource = Src_Rel
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Layout = tlCenter
                ParentFont = False
              end
              object RLLabel6: TRLLabel
                Left = 474
                Top = 3
                Width = 44
                Height = 14
                Caption = 'Data NF:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Layout = tlCenter
                ParentFont = False
              end
              object RLDBText10: TRLDBText
                Left = 517
                Top = 2
                Width = 66
                Height = 16
                AutoSize = False
                DataField = 'NSDTEMIS'
                DataSource = Src_Rel
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Layout = tlCenter
                ParentFont = False
              end
              object LBL_CODPRO: TRLLabel
                Left = 67
                Top = 19
                Width = 58
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'C'#243'digo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Layout = tlCenter
                ParentFont = False
              end
              object RLLabel7: TRLLabel
                Left = 586
                Top = 3
                Width = 46
                Height = 14
                Caption = 'Emitente:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Layout = tlCenter
                ParentFont = False
              end
              object RLDBText8: TRLDBText
                Left = 633
                Top = 1
                Width = 19
                Height = 16
                AutoSize = False
                DataField = 'EMITENTE'
                DataSource = Src_Rel
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Layout = tlCenter
                ParentFont = False
              end
              object lbl_modelo: TRLLabel
                Left = 654
                Top = 3
                Width = 40
                Height = 14
                Caption = 'Modelo:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Layout = tlCenter
                ParentFont = False
              end
              object lbl_mod: TRLLabel
                Left = 694
                Top = 3
                Width = 21
                Height = 14
                AutoSize = False
                Caption = 'Modelo:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Layout = tlCenter
                ParentFont = False
              end
              object rlcab_P2PRECO: TRLLabel
                Left = 423
                Top = 19
                Width = 62
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'P'#231'o.Unitario'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Layout = tlCenter
                ParentFont = False
              end
              object rlcab_P2TOTDES: TRLLabel
                Left = 485
                Top = 19
                Width = 56
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Desconto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Layout = tlCenter
                ParentFont = False
              end
              object rlcab_OUTROS_VALORES: TRLLabel
                Left = 540
                Top = 19
                Width = 56
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = 'Acrescimos'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Layout = tlCenter
                ParentFont = False
              end
            end
            object RLBand3: TRLBand
              Left = 0
              Top = 36
              Width = 716
              Height = 17
              AfterPrint = RLBand3AfterPrint
              object lbl_det_PDCODNCM: TRLDBText
                Left = 2
                Top = 0
                Width = 66
                Height = 16
                AutoSize = False
                DataField = 'PDCODNCM'
                DataSource = Src_Rel
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_cab_PDCODNCM
                Layout = tlCenter
                ParentFont = False
              end
              object RLDBText4: TRLDBText
                Left = 124
                Top = 0
                Width = 252
                Height = 16
                AutoSize = False
                DataField = 'PDNOME'
                DataSource = Src_Rel
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = rlNome
                Layout = tlCenter
                ParentFont = False
              end
              object lbl_det_P2QTD: TRLDBText
                Left = 376
                Top = 0
                Width = 46
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'P2QTD'
                DataSource = Src_Rel
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = rlQtd
                Layout = tlCenter
                ParentFont = False
              end
              object RLDBText6: TRLDBText
                Left = 633
                Top = 0
                Width = 82
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'TOTAL'
                DataSource = Src_Rel
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = rlValorNF
                Layout = tlCenter
                ParentFont = False
              end
              object edt_CFOP: TRLDBText
                Left = 600
                Top = 0
                Width = 30
                Height = 16
                Alignment = taCenter
                AutoSize = False
                DataField = 'CFOP'
                DataSource = Src_Rel
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_CFOP
                Layout = tlCenter
                ParentFont = False
              end
              object EDT_CODPRO: TRLDBText
                Left = 67
                Top = 1
                Width = 58
                Height = 16
                AutoSize = False
                DataField = 'CODPRO'
                DataSource = Src_Rel
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = LBL_CODPRO
                Layout = tlCenter
                ParentFont = False
              end
              object rldet_P2PRECO: TRLDBText
                Left = 423
                Top = 1
                Width = 62
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'P2PRECO'
                DataSource = Src_Rel
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = rlcab_P2PRECO
                Layout = tlCenter
                ParentFont = False
              end
              object rldet_P2TOTDES: TRLDBText
                Left = 485
                Top = 1
                Width = 56
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'P2TOTDES'
                DataSource = Src_Rel
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = rlcab_P2TOTDES
                Layout = tlCenter
                ParentFont = False
              end
              object RLDBText3: TRLDBText
                Left = 540
                Top = 0
                Width = 56
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'OUTROS_VALORES'
                DataSource = Src_Rel
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = rlcab_OUTROS_VALORES
                Layout = tlCenter
                ParentFont = False
              end
            end
            object RLBand5: TRLBand
              Left = 0
              Top = 53
              Width = 716
              Height = 16
              BandType = btSummary
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = False
              Borders.DrawBottom = False
              BeforePrint = RLBand5BeforePrint
              object lbl_gru_PDCODNCM: TRLLabel
                Left = 2
                Top = 0
                Width = 66
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Cl. Fiscal'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_cab_PDCODNCM
                Layout = tlCenter
                ParentFont = False
              end
              object rlgruL_CODPRO: TRLLabel
                Left = 67
                Top = 0
                Width = 58
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'C'#243'digo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = LBL_CODPRO
                Layout = tlCenter
                ParentFont = False
              end
              object rlgru_Nome: TRLLabel
                Left = 124
                Top = 0
                Width = 252
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Nome do Produto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = rlNome
                Layout = tlCenter
                ParentFont = False
              end
              object rlgru_Qtd: TRLLabel
                Left = 376
                Top = 0
                Width = 46
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = ' '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = rlQtd
                Layout = tlCenter
                ParentFont = False
              end
              object rlgru_CFOP: TRLLabel
                Left = 600
                Top = 0
                Width = 30
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = ' '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = lbl_CFOP
                Layout = tlCenter
                ParentFont = False
              end
              object rlgru_ValorNF: TRLLabel
                Left = 633
                Top = 0
                Width = 82
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Valor Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = rlValorNF
                Layout = tlCenter
                ParentFont = False
              end
              object rlgru_P2PRECO: TRLLabel
                Left = 423
                Top = 0
                Width = 62
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = '  '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = rlcab_P2PRECO
                Layout = tlCenter
                ParentFont = False
              end
              object rlgru_P2TOTDES: TRLLabel
                Left = 485
                Top = 0
                Width = 56
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = ' '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = rlcab_P2TOTDES
                Layout = tlCenter
                ParentFont = False
              end
              object rgru_OUTROS_VALORES: TRLLabel
                Left = 540
                Top = 0
                Width = 56
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = ' '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Holder = rlcab_OUTROS_VALORES
                Layout = tlCenter
                ParentFont = False
              end
            end
          end
          object RLBand_separado: TRLBand
            Left = 0
            Top = 0
            Width = 716
            Height = 16
            BandType = btHeader
            object RLDBText7: TRLDBText
              Left = 0
              Top = 0
              Width = 716
              Height = 16
              Align = faClient
              Alignment = taCenter
              DataField = 'SEPARADO'
              DataSource = Src_Rel
            end
          end
          object RLBand4: TRLBand
            Left = 0
            Top = 91
            Width = 716
            Height = 16
            BandType = btSummary
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            BeforePrint = RLBand4BeforePrint
            object lbl_sum_PDCODNCM: TRLLabel
              Left = 2
              Top = 0
              Width = 66
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Cl. Fiscal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cab_PDCODNCM
              Layout = tlCenter
              ParentFont = False
            end
            object lbl_sum_CODPRO: TRLLabel
              Left = 67
              Top = 0
              Width = 58
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'C'#243'digo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = LBL_CODPRO
              Layout = tlCenter
              ParentFont = False
            end
            object lbl_sum_PDNOME: TRLLabel
              Left = 124
              Top = 0
              Width = 252
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Nome do Produto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlNome
              Layout = tlCenter
              ParentFont = False
            end
            object lbl_sum_P2QTD: TRLLabel
              Left = 376
              Top = 0
              Width = 46
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlQtd
              Layout = tlCenter
              ParentFont = False
            end
            object lbl_sum_CFOP: TRLLabel
              Left = 600
              Top = 0
              Width = 30
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_CFOP
              Layout = tlCenter
              ParentFont = False
            end
            object lbl_sum_TOTAL: TRLLabel
              Left = 633
              Top = 0
              Width = 82
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Valor Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlValorNF
              Layout = tlCenter
              ParentFont = False
            end
            object rlrod_P2PRECO: TRLLabel
              Left = 423
              Top = 0
              Width = 62
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = '  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlcab_P2PRECO
              Layout = tlCenter
              ParentFont = False
            end
            object rlrod_P2TOTDES: TRLLabel
              Left = 485
              Top = 0
              Width = 56
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlcab_P2TOTDES
              Layout = tlCenter
              ParentFont = False
            end
            object rger_OUTROS_VALORES: TRLLabel
              Left = 540
              Top = -1
              Width = 56
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Holder = rlcab_OUTROS_VALORES
              Layout = tlCenter
              ParentFont = False
            end
          end
        end
      end
    end
  end
  object DtFim: TDateEdit
    Left = 208
    Top = 309
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 7
  end
  object nfIni: TCurrencyEdit
    Left = 85
    Top = 277
    Width = 60
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '00000;-00000'
    TabOrder = 1
  end
  object nfFim: TCurrencyEdit
    Left = 164
    Top = 277
    Width = 60
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '00000;-00000'
    TabOrder = 2
  end
  object edt_ncm: TEdit
    Left = 343
    Top = 278
    Width = 121
    Height = 21
    MaxLength = 8
    TabOrder = 3
  end
  object BImprimir: TBitBtn
    Left = 490
    Top = 335
    Width = 90
    Height = 50
    Caption = '&Imprimir'
    TabOrder = 9
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
    Left = 583
    Top = 334
    Width = 90
    Height = 50
    Caption = '&Fechar'
    TabOrder = 10
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
  object RG_TIPODOCS: TRadioGroup
    Left = 355
    Top = 310
    Width = 95
    Height = 64
    Caption = 'Tipo das Notas'
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      '&Todas'
      '&Entradas'
      '&Saidas')
    ParentCtl3D = False
    TabOrder = 8
  end
  object CB_SEPARADO: TComboBox
    Left = 551
    Top = 279
    Width = 178
    Height = 21
    BevelKind = bkSoft
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 3
    Sorted = True
    TabOrder = 4
    Text = 'Sem Separar'
    Items.Strings = (
      'Cidade'
      'Estado'
      'Sacado'
      'Sem Separar')
  end
  object cb_ordem: TComboBox
    Left = 819
    Top = 277
    Width = 153
    Height = 21
    BevelKind = bkSoft
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    Sorted = True
    TabOrder = 5
    Text = 'Data da Nota'
    Items.Strings = (
      'Data da Nota'
      'Numero da Nota')
  end
  object cb_salvar_sql: TCheckBox
    Left = 872
    Top = 352
    Width = 97
    Height = 17
    Caption = 'salvar sql'
    TabOrder = 11
  end
  object StaticText4: TStaticText
    Left = 690
    Top = 306
    Width = 92
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Tipo Notas'
    Color = 16776176
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 12
    Visible = False
  end
  object CLB_TipoNota: TCheckListBox
    Left = 690
    Top = 324
    Width = 91
    Height = 60
    Color = 16776176
    Ctl3D = False
    ItemHeight = 13
    Items.Strings = (
      'Nfe'
      'Nfce'
      'Nfse'
      'Todos')
    ParentCtl3D = False
    TabOrder = 13
    Visible = False
  end
  object Qry_Rel: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select nf.*, CCODCLI || crazao  as codrazao'
      'from'
      '('
      
        'select P2CODPRO AS CODPRO,pdcodncm, crazao, ccodcli, pdnome, p2q' +
        'td, p2totliq+p2icmsr as Total, nsdtemis, nsnumero'
      ',RPAD('#39'.'#39',60,'#39'.'#39') as separado'
      ','#39'Propria '#39' as emitente'
      ', cuf as uf'
      ', ccodloc as codloc'
      ', P2CFO as  cfop'
      ', ccidade as cidade'
      ''
      ''
      ' from ('
      
        'select nsnumero, nschavep, nscodcli, nsdtemis from cadns where n' +
        'sdtemis>'#39'01/01/2010'#39
      'and nscodemp<100 and nsnumero>0 ), cadcli, cadp02, cadpro'
      
        'where nscodcli=ccodcli and p2chave=nschavep and pdcodpro=p2codpr' +
        'o'
      'union'
      ''
      
        'select PF2CODPRO AS CODPRO,pdcodncm, frazao as crazao, fcodfor a' +
        's ccodcli, pdnome, pf2qtdp as p2qtd, nvl(pf2totliq,0)+nvl(pf2icm' +
        'sr,0) as Total, nedtemis as nsdtemis'
      ', nenumero as nsnumero'
      ',fuf as separado'
      ','#39'Terceiros '#39' as emitente'
      ''
      ', fuf as uf'
      ', fcodloc as codloc'
      ', PF2CFO as  cfop'
      ', fcidade as cidade'
      ''
      ' from ('
      
        'select nenumero, nechavep, necodfor, nedtemis from cadne where n' +
        'edtemis>'#39'01/01/2010'#39
      'and necodemp<100 and nenumero>0 ), cadfor, cadpf2, cadpro'
      
        'where necodfor=fcodfor and pf2chave=nechavep and pdcodpro=pf2cod' +
        'pro'
      ' ) nf')
    Left = 40
    Top = 88
    object Qry_RelCCODCLI: TFloatField
      FieldName = 'CCODCLI'
    end
    object Qry_RelCRAZAO: TStringField
      FieldName = 'CRAZAO'
      Size = 60
    end
    object Qry_RelPDNOME: TStringField
      FieldName = 'PDNOME'
      Size = 120
    end
    object Qry_RelPDCODNCM: TStringField
      FieldName = 'PDCODNCM'
      Size = 10
    end
    object Qry_RelP2QTD: TFloatField
      FieldName = 'P2QTD'
    end
    object Qry_RelTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '#,##0.00'
    end
    object Qry_RelNSDTEMIS: TDateTimeField
      FieldName = 'NSDTEMIS'
    end
    object Qry_RelNSNUMERO: TFloatField
      FieldName = 'NSNUMERO'
    end
    object Qry_RelEMITENTE: TStringField
      FieldName = 'EMITENTE'
      Size = 10
    end
    object Qry_RelCODRAZAO: TStringField
      FieldName = 'CODRAZAO'
      Size = 100
    end
    object Qry_RelUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Qry_RelCODLOC: TFloatField
      FieldName = 'CODLOC'
    end
    object Qry_RelCFOP: TFloatField
      FieldName = 'CFOP'
    end
    object Qry_RelCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object Qry_RelCODPRO: TFloatField
      FieldName = 'CODPRO'
    end
    object Qry_RelSEPARADO: TStringField
      FieldName = 'SEPARADO'
      Size = 60
    end
    object Qry_RelCOD_MOD: TStringField
      FieldName = 'COD_MOD'
      Size = 3
    end
    object Qry_RelP2PRECO: TFloatField
      FieldName = 'P2PRECO'
    end
    object Qry_RelP2TOTDES: TFloatField
      FieldName = 'P2TOTDES'
    end
    object Qry_RelOUTROS_VALORES: TFloatField
      FieldName = 'OUTROS_VALORES'
    end
  end
  object Src_Rel: TDataSource
    DataSet = Qry_Rel
    Left = 232
    Top = 72
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 431
    Top = 28
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 447
    Top = 204
  end
end

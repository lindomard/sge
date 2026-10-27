inherited Frm_UF: TFrm_UF
  Left = 94
  Top = 106
  Width = 1084
  Height = 582
  Caption = 'Manuten'#231#227'o no Cadastro de Estado'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 30
    Width = 1076
    Height = 45
    BevelInner = bvLowered
    inherited lbl_emp: TLabel
      Left = 1030
      Top = 2
      Height = 41
    end
    inherited Pesquisapor: TLabel
      Top = 21
    end
    inherited BBnAtu: TBitBtn
      Top = 12
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Top = 15
      Items.Strings = (
        'Sigla'
        'Nome')
    end
    inherited Edit1: TMaskEdit
      Top = 14
      OnChange = Edit1Change
    end
    object bbExportarCadUFTrib: TBitBtn
      Left = 512
      Top = 14
      Width = 113
      Height = 25
      Caption = 'Exportar CadUF-Trib'
      TabOrder = 3
      OnClick = bbExportarCadUFTribClick
    end
    object bbExpCadUfTpPed: TBitBtn
      Left = 627
      Top = 14
      Width = 146
      Height = 25
      Caption = 'Exportar CadUF-TPPed'
      TabOrder = 4
      OnClick = bbExpCadUfTpPedClick
    end
    object bbExpDifal: TBitBtn
      Left = 774
      Top = 13
      Width = 146
      Height = 25
      Caption = 'Exportar Difal'
      TabOrder = 5
    end
    object bbExpTipoPedido: TBitBtn
      Left = 921
      Top = 13
      Width = 146
      Height = 25
      Caption = 'Exportar Tipos Pedido'
      TabOrder = 6
    end
  end
  inherited PC1: TPageControl
    Top = 75
    Width = 1076
    Height = 467
    Align = alTop
    inherited tsCad: TTabSheet
      object Label2: TLabel
        Left = 69
        Top = 5
        Width = 37
        Height = 13
        Caption = 'Nome:'
        FocusControl = DBEdit2
      end
      object Label1: TLabel
        Left = 3
        Top = 4
        Width = 33
        Height = 13
        Caption = 'Sigla:'
        FocusControl = DBEdit1
      end
      object pc_compl: TPageControl
        Left = 0
        Top = 348
        Width = 1068
        Height = 91
        ActivePage = ts_NFE
        Align = alBottom
        TabOrder = 3
        TabStop = False
        object ts_NFE: TTabSheet
          Caption = 'Campos Obrigatorios(NF Eletronica)'
          object Label55: TLabel
            Left = -1
            Top = 3
            Width = 199
            Height = 13
            Caption = 'Codigo do Estado Junto ao (IBGE):'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_linkcidade: TLabel
            Left = 270
            Top = 3
            Width = 203
            Height = 13
            Hint = 'Click aqui para acessar '#13#10'o site do IBGE'
            Caption = 'http://www.ibge.com.br/estadosat/'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHighlight
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = lbl_linkcidadeClick
          end
          object Label56: TLabel
            Left = -1
            Top = 21
            Width = 199
            Height = 13
            Caption = 'Codigo da Regiao (IBGE).............:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBE_coduf: TDBEdit
            Left = 200
            Top = 0
            Width = 57
            Height = 19
            Ctl3D = False
            DataField = 'PCODUF_IBGE'
            DataSource = DM1.Src_UF
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object DBE_codreg: TDBEdit
            Left = 200
            Top = 18
            Width = 57
            Height = 19
            Ctl3D = False
            DataField = 'PCODREG_IBGE'
            DataSource = DM1.Src_UF
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnKeyPress = DBE_codregKeyPress
          end
          object DBEdit96: TDBEdit
            Left = 256
            Top = 18
            Width = 305
            Height = 19
            Ctl3D = False
            DataField = 'nomreg'
            DataSource = DM1.Src_UF
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
        end
        object ts_prodtrib: TTabSheet
          Caption = 'Produtos/Mercadorias Tributadas'
          object db_icmsfrete: TDBCheckBox
            Left = 350
            Top = 0
            Width = 248
            Height = 17
            Caption = 'Calcular ICMS Normal sobre Frete'
            Ctl3D = False
            DataField = 'PICMSFRETE'
            DataSource = DM1.Src_UF
            Enabled = False
            ParentCtl3D = False
            TabOrder = 3
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object db_icmsnor: TDBCheckBox
            Left = 3
            Top = 0
            Width = 243
            Height = 17
            Caption = 'Calcular Icms Para Produtos Tributados'
            Ctl3D = False
            DataField = 'PICMSNOR'
            DataSource = DM1.Src_UF
            Enabled = False
            ParentCtl3D = False
            TabOrder = 0
            ValueChecked = '0'
            ValueUnchecked = '1'
          end
          object db_bicms: TDBCheckBox
            Left = 3
            Top = 16
            Width = 243
            Height = 17
            Caption = 'Calcular Icms Normal Produtos Retidos'
            Ctl3D = False
            DataField = 'PBICMS'
            DataSource = DM1.Src_UF
            Enabled = False
            ParentCtl3D = False
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object db_septab: TDBCheckBox
            Left = 3
            Top = 31
            Width = 227
            Height = 17
            Caption = 'Separar produtos por al'#237'quotas'
            Ctl3D = False
            DataField = 'PSEPTAB'
            DataSource = DM1.Src_UF
            Enabled = False
            ParentCtl3D = False
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object db_icmsseg: TDBCheckBox
            Left = 350
            Top = 16
            Width = 290
            Height = 17
            Caption = 'Calcular ICMS Normal sobre o Valor do Seguro'
            Ctl3D = False
            DataField = 'PICMSSEGURO'
            DataSource = DM1.Src_UF
            Enabled = False
            ParentCtl3D = False
            TabOrder = 4
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object db_icmsoutdesp: TDBCheckBox
            Left = 350
            Top = 32
            Width = 290
            Height = 17
            Caption = 'Calcular ICMS Normal sobre o Outras Despesas'
            Ctl3D = False
            DataField = 'PICMSOUTDESP'
            DataSource = DM1.Src_UF
            Enabled = False
            ParentCtl3D = False
            TabOrder = 5
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object db_icmsipi: TDBCheckBox
            Left = 350
            Top = 48
            Width = 290
            Height = 17
            Caption = 'Calcular ICMS Normal sobre o IPI'
            Ctl3D = False
            DataField = 'PICMSIPI'
            DataSource = DM1.Src_UF
            Enabled = False
            ParentCtl3D = False
            TabOrder = 6
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object BitBtn1: TBitBtn
            Left = 652
            Top = 38
            Width = 125
            Height = 21
            Caption = 'proxima tela'
            TabOrder = 7
            OnClick = BitBtn1Click
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
              300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
              330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
              333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
              339977FF777777773377000BFB03333333337773FF733333333F333000333333
              3300333777333333337733333333333333003333333333333377333333333333
              333333333333333333FF33333333333330003333333333333777333333333333
              3000333333333333377733333333333333333333333333333333}
            NumGlyphs = 2
          end
          object dbcb_REDICMSNOR_BC_PISCOFINS: TDBCheckBox
            Left = 5
            Top = 47
            Width = 300
            Height = 17
            Caption = 'Deduzir Valor do Icms na Base de Pis e Cofins'
            Ctl3D = False
            DataField = 'PREDICMSNOR_BC_PISCOFINS'
            DataSource = DM1.Src_UF
            Enabled = False
            ParentCtl3D = False
            TabOrder = 8
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object ts_dadfisc: TTabSheet
          Caption = 'Dados para Entregas Fiscais'
          ImageIndex = 3
          TabVisible = False
          object Label3: TLabel
            Left = 8
            Top = 4
            Width = 39
            Height = 13
            Caption = #211'rg'#227'o:'
            FocusControl = DBE_orgao
          end
          object Label5: TLabel
            Left = 8
            Top = 25
            Width = 42
            Height = 13
            Caption = 'Ender.:'
            FocusControl = dbe_ender
          end
          object Label7: TLabel
            Left = 8
            Top = 44
            Width = 41
            Height = 13
            Caption = 'Banco:'
            FocusControl = DBE_banco
          end
          object Label4: TLabel
            Left = 284
            Top = 5
            Width = 95
            Height = 13
            Caption = 'Depart./Divis'#227'o:'
            FocusControl = DBE_Dep
          end
          object Label6: TLabel
            Left = 284
            Top = 26
            Width = 44
            Height = 13
            Caption = 'Cidade:'
            FocusControl = DBE_cidade
          end
          object Label15: TLabel
            Left = 285
            Top = 45
            Width = 156
            Height = 13
            Caption = 'Inscri'#231#227'o Substituto na UF:'
            FocusControl = DBE_iesub
          end
          object Label8: TLabel
            Left = 604
            Top = 21
            Width = 87
            Height = 13
            Caption = 'C'#243'digo Estado:'
            FocusControl = dbe_cuf
          end
          object DBE_orgao: TDBEdit
            Left = 54
            Top = 3
            Width = 222
            Height = 19
            Ctl3D = False
            DataField = 'PORG'
            DataSource = DM1.Src_UF
            Enabled = False
            ParentCtl3D = False
            TabOrder = 0
          end
          object dbe_ender: TDBEdit
            Left = 54
            Top = 21
            Width = 222
            Height = 19
            Ctl3D = False
            DataField = 'PEND'
            DataSource = DM1.Src_UF
            Enabled = False
            ParentCtl3D = False
            TabOrder = 1
          end
          object DBE_banco: TDBEdit
            Left = 54
            Top = 39
            Width = 222
            Height = 19
            Ctl3D = False
            DataField = 'PBAN'
            DataSource = DM1.Src_UF
            Enabled = False
            ParentCtl3D = False
            TabOrder = 2
          end
          object DBE_Dep: TDBEdit
            Left = 385
            Top = 3
            Width = 209
            Height = 19
            Ctl3D = False
            DataField = 'PDEP'
            DataSource = DM1.Src_UF
            Enabled = False
            ParentCtl3D = False
            TabOrder = 3
          end
          object DBE_cidade: TDBEdit
            Left = 385
            Top = 21
            Width = 209
            Height = 19
            Ctl3D = False
            DataField = 'PCID'
            DataSource = DM1.Src_UF
            Enabled = False
            ParentCtl3D = False
            TabOrder = 4
          end
          object DBE_iesub: TDBEdit
            Left = 454
            Top = 39
            Width = 140
            Height = 19
            Ctl3D = False
            DataField = 'PIESUB'
            DataSource = DM1.Src_UF
            Enabled = False
            ParentCtl3D = False
            TabOrder = 5
          end
          object dbe_cuf: TDBEdit
            Left = 700
            Top = 18
            Width = 35
            Height = 19
            Ctl3D = False
            DataField = 'PCUF'
            DataSource = DM1.Src_UF
            Enabled = False
            ParentCtl3D = False
            TabOrder = 6
          end
          object BitBtn2: TBitBtn
            Left = 606
            Top = 41
            Width = 125
            Height = 21
            Caption = 'proxima tela'
            TabOrder = 7
            OnClick = BitBtn2Click
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
              300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
              330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
              333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
              339977FF777777773377000BFB03333333337773FF733333333F333000333333
              3300333777333333337733333333333333003333333333333377333333333333
              333333333333333333FF33333333333330003333333333333777333333333333
              3000333333333333377733333333333333333333333333333333}
            NumGlyphs = 2
          end
        end
        object ts_precosprat: TTabSheet
          Caption = 'Pre'#231'os Praticados'
          ImageIndex = 4
          object TIPOPC: TDBRadioGroup
            Left = 0
            Top = -2
            Width = 316
            Height = 65
            Caption = ' Padr'#227'o Tipo de Pre'#231'o '
            Color = 16763594
            Ctl3D = False
            DataField = 'PTIPOPC'
            DataSource = DM1.Src_UF
            Enabled = False
            Items.Strings = (
              'Pre'#231'o do &Cadastro de Produto'
              'Pre'#231'o &Anterior do Cadastro Produto'
              'Pre'#231'o &Extra (digitado)'
              'Pre'#231'o &L'#237'quido (Pre'#231'o Menos Descontos)')
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 0
            Values.Strings = (
              '0'
              '1'
              '2'
              '3')
          end
          object TIPOPCO: TDBRadioGroup
            Left = 328
            Top = 2
            Width = 318
            Height = 61
            Caption = 'Tabela de Pre'#231'o Padrao do Cadastro de Produtos'
            Color = 16763594
            Ctl3D = False
            DataField = 'PTIPOPCO'
            DataSource = DM1.Src_UF
            Enabled = False
            Items.Strings = (
              'P'#231'o Venda &1'
              'P'#231'o Venda &2'
              'P'#231'o Venda &3')
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 1
            Values.Strings = (
              '1'
              '2'
              '3'
              '4')
          end
          object BitBtn3: TBitBtn
            Left = 648
            Top = 41
            Width = 116
            Height = 21
            Caption = 'proxima tela'
            TabOrder = 2
            OnClick = BitBtn3Click
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
              300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
              330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
              333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
              339977FF777777773377000BFB03333333337773FF733333333F333000333333
              3300333777333333337733333333333333003333333333333377333333333333
              333333333333333333FF33333333333330003333333333333777333333333333
              3000333333333333377733333333333333333333333333333333}
            NumGlyphs = 2
          end
        end
        object ts_servicos: TTabSheet
          Caption = 'Servi'#231'os'
          ImageIndex = 5
          object Label13: TLabel
            Left = 14
            Top = 6
            Width = 169
            Height = 13
            Caption = 'CFOP Presta'#231#227'o de Servi'#231'os:'
          end
          object Label92: TLabel
            Left = 54
            Top = 24
            Width = 126
            Height = 13
            Caption = '% Al'#237'quota de ISSQN:'
          end
          object Label53: TLabel
            Left = 246
            Top = 5
            Width = 115
            Height = 13
            Caption = 'CFOP P/Deolu'#231#245'es:'
          end
          object DBE_IMP_SER: TDBCheckBox
            Left = 238
            Top = 21
            Width = 184
            Height = 17
            Caption = 'N'#227'o Calcular Impostos'
            DataField = 'PCIMP_SER'
            DataSource = DM1.Src_UF
            Enabled = False
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBE_CFOSER: TDBEdit
            Left = 183
            Top = 3
            Width = 51
            Height = 19
            Ctl3D = False
            DataField = 'PCFOSER'
            DataSource = DM1.Src_UF
            Enabled = False
            ParentCtl3D = False
            TabOrder = 0
          end
          object DBEdit46: TDBEdit
            Left = 183
            Top = 21
            Width = 51
            Height = 19
            Ctl3D = False
            DataField = 'PALISSQN'
            DataSource = DM1.Src_UF
            ParentCtl3D = False
            TabOrder = 1
          end
          object DBE_CFOSER_DEV: TDBEdit
            Left = 415
            Top = 5
            Width = 51
            Height = 19
            Ctl3D = False
            DataField = 'PCFOSER_DEV'
            DataSource = DM1.Src_UF
            Enabled = False
            ParentCtl3D = False
            TabOrder = 3
          end
        end
      end
      object pc_cfopaliq: TPageControl
        Left = 0
        Top = 54
        Width = 1068
        Height = 294
        ActivePage = ts_difal
        Align = alBottom
        Style = tsButtons
        TabOrder = 2
        object ts_Cfop: TTabSheet
          Caption = 
            '(CFOP) P/Emiss'#227'o de Documentos Fiscais para Produtos ou Mercador' +
            'ias:'
          object Label16: TLabel
            Left = 624
            Top = 2
            Width = 58
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = 'Normal'
            Color = 16776176
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label17: TLabel
            Left = 686
            Top = 0
            Width = 58
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = 'SIMP NAC'
            Color = 16776176
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMenuHighlight
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object bbaliqredut: TBitBtn
            Left = 644
            Top = 243
            Width = 125
            Height = 20
            Caption = 'proxima tela'
            TabOrder = 0
            Visible = False
            OnClick = bbaliqredutClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
              300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
              330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
              333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
              339977FF777777773377000BFB03333333337773FF733333333F333000333333
              3300333777333333337733333333333333003333333333333377333333333333
              333333333333333333FF33333333333330003333333333333777333333333333
              3000333333333333377733333333333333333333333333333333}
            NumGlyphs = 2
          end
          object GroupBox3: TGroupBox
            Left = 0
            Top = 0
            Width = 1060
            Height = 148
            Align = alClient
            Caption = 'Tipo de Pedidos:'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            object DBGrid2: TDBGrid
              Left = 1
              Top = 14
              Width = 1058
              Height = 133
              Align = alClient
              Ctl3D = True
              DataSource = DM2.Src_UF_TPPED
              ParentCtl3D = False
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
                  FieldName = 'UFTP_CODTPPED'
                  Width = 68
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TPNOME'
                  Width = 637
                  Visible = True
                end>
            end
          end
          object GB_DENTRO: TGroupBox
            Left = 0
            Top = 148
            Width = 1060
            Height = 115
            Align = alBottom
            Caption = 'CFOPs Para Movimenta'#231#227'o Dentro do Estado:'
            Ctl3D = False
            Enabled = False
            ParentCtl3D = False
            TabOrder = 2
            OnExit = GB_DENTROExit
            object Label9: TLabel
              Left = 11
              Top = 50
              Width = 164
              Height = 13
              Caption = 'Produtos c/Substitui'#231#227'o Tributaria:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 76
              Top = 68
              Width = 98
              Height = 13
              Caption = 'Produtos Tributados:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 92
              Top = 83
              Width = 82
              Height = 13
              Caption = 'Produtos Isentos:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label51: TLabel
              Left = 409
              Top = 98
              Width = 105
              Height = 13
              Caption = 'Pedido de Origem:'
            end
            object txt_DENTRO_CFOP_RV_ST: TEdit
              Left = 180
              Top = 43
              Width = 113
              Height = 19
              Color = 14737602
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 5
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnEnter = txt_DENTRO_CFOP_RV_STEnter
              OnExit = txt_DENTRO_CFOP_RV_STExit
              OnKeyPress = txt_DENTRO_CFOP_RV_STKeyPress
            end
            object txt_DENTRO_SUBST_CFOP_ST: TEdit
              Left = 404
              Top = 43
              Width = 113
              Height = 19
              Color = 14737602
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4227072
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 5
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 9
              OnEnter = txt_DENTRO_SUBST_CFOP_STEnter
              OnExit = txt_DENTRO_SUBST_CFOP_STExit
              OnKeyPress = txt_DENTRO_CFOP_RV_STKeyPress
            end
            object txt_DENTRO_CFOP_RV_TRIB: TEdit
              Left = 180
              Top = 61
              Width = 113
              Height = 19
              Color = 14737602
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 5
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              OnEnter = txt_DENTRO_CFOP_RV_TRIBEnter
              OnExit = txt_DENTRO_CFOP_RV_TRIBExit
              OnKeyPress = txt_DENTRO_CFOP_RV_STKeyPress
            end
            object txt_DENTRO_SUBST_CFOP_TRIB: TEdit
              Left = 404
              Top = 61
              Width = 113
              Height = 19
              Color = 14737602
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4227072
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 5
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 10
              OnEnter = txt_DENTRO_SUBST_CFOP_TRIBEnter
              OnExit = txt_DENTRO_SUBST_CFOP_TRIBExit
              OnKeyPress = txt_DENTRO_CFOP_RV_STKeyPress
            end
            object txt_DENTRO_CFOP_RV_ISENT: TEdit
              Left = 180
              Top = 79
              Width = 113
              Height = 19
              Color = 14737602
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 5
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
              OnEnter = txt_DENTRO_CFOP_RV_ISENTEnter
              OnExit = txt_DENTRO_CFOP_RV_ISENTExit
              OnKeyPress = txt_DENTRO_CFOP_RV_STKeyPress
            end
            object txt_DENTRO_SUBST_CFOP_ISENT: TEdit
              Left = 404
              Top = 79
              Width = 113
              Height = 19
              Color = 14737602
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4227072
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 5
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 11
              OnEnter = txt_DENTRO_SUBST_CFOP_ISENTEnter
              OnExit = txt_DENTRO_SUBST_CFOP_ISENTExit
              OnKeyPress = txt_DENTRO_CFOP_RV_STKeyPress
            end
            object StaticText1: TStaticText
              Left = 180
              Top = 24
              Width = 113
              Height = 20
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Mercadoria Revenda'
              Color = 14737602
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 12
            end
            object StaticText2: TStaticText
              Left = 634
              Top = 16
              Width = 113
              Height = 28
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Consumir Final'
              Color = 9830399
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 13
            end
            object txt_DENTRO_CFOP_RVCP_ST: TEdit
              Left = 634
              Top = 43
              Width = 113
              Height = 19
              Color = 9830399
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 5
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
              OnExit = txt_DENTRO_CFOP_RVCP_STExit
              OnKeyPress = txt_DENTRO_CFOP_RV_STKeyPress
            end
            object txt_DENTRO_CFOP_RVCP_TRIB: TEdit
              Left = 634
              Top = 61
              Width = 113
              Height = 19
              Color = 9830399
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 5
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
              OnExit = txt_DENTRO_CFOP_RVCP_TRIBExit
              OnKeyPress = txt_DENTRO_CFOP_RV_STKeyPress
            end
            object txt_DENTRO_CFOP_RVCP_ISENT: TEdit
              Left = 634
              Top = 79
              Width = 113
              Height = 19
              Color = 9830399
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 5
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 5
              OnEnter = txt_DENTRO_CFOP_RVCP_ISENTEnter
              OnExit = txt_DENTRO_CFOP_RVCP_ISENTExit
              OnKeyPress = txt_DENTRO_CFOP_RV_STKeyPress
            end
            object StaticText3: TStaticText
              Left = 292
              Top = 24
              Width = 113
              Height = 20
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Industrializada'
              Color = 9830399
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 14
            end
            object txt_DENTRO_CFOP_CF_ST: TEdit
              Left = 292
              Top = 43
              Width = 113
              Height = 19
              Color = 9830399
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 5
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 6
              OnEnter = txt_DENTRO_CFOP_CF_STEnter
              OnExit = txt_DENTRO_CFOP_CF_STExit
              OnKeyPress = txt_DENTRO_CFOP_RV_STKeyPress
            end
            object txt_DENTRO_CFOP_CF_TRIB: TEdit
              Left = 292
              Top = 61
              Width = 113
              Height = 19
              Color = 9830399
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 5
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 7
              OnEnter = txt_DENTRO_CFOP_CF_TRIBEnter
              OnExit = txt_DENTRO_CFOP_CF_TRIBExit
              OnKeyPress = txt_DENTRO_CFOP_RV_STKeyPress
            end
            object txt_DENTRO_CFOP_CF_ISENT: TEdit
              Left = 292
              Top = 79
              Width = 113
              Height = 19
              Color = 9830399
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 5
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 8
              OnEnter = txt_DENTRO_CFOP_CF_ISENTEnter
              OnExit = txt_DENTRO_CFOP_CF_ISENTExit
              OnKeyPress = txt_DENTRO_CFOP_RV_STKeyPress
            end
            object StaticText4: TStaticText
              Left = 404
              Top = 24
              Width = 113
              Height = 20
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'NF c/CF (cupom fiscal)'
              Color = 14737602
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 15
            end
            object CB_CALCIMP_RV_DENTRO: TCheckBox
              Left = 180
              Top = 98
              Width = 113
              Height = 16
              Caption = 'Calcula Impostos'
              Checked = True
              Color = 14737602
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              State = cbChecked
              TabOrder = 16
              OnClick = CB_CALCIMP_RV_DENTROClick
            end
            object CB_CALCIMP_RVCP_DENTRO: TCheckBox
              Left = 635
              Top = 98
              Width = 113
              Height = 16
              Caption = 'Calcula Impostos'
              Checked = True
              Color = 9830399
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              State = cbChecked
              TabOrder = 17
              OnClick = CB_CALCIMP_RV_DENTROClick
            end
            object CB_CALCIMP_CF_DENTRO: TCheckBox
              Left = 292
              Top = 98
              Width = 113
              Height = 16
              Caption = 'Calcula Impostos'
              Checked = True
              Color = 9830399
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              State = cbChecked
              TabOrder = 18
              OnClick = CB_CALCIMP_RV_DENTROClick
            end
            object cb_PREQUER_PEDORI: TComboBox
              Left = 512
              Top = 96
              Width = 145
              Height = 21
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 19
              Text = 'N'#227'o'
              OnClick = cb_PREQUER_PEDORIClick
              Items.Strings = (
                'N'#227'o'
                'Pedido de Compras'
                'Pedido de Vendas')
            end
          end
        end
        object ts_AliqRedut: TTabSheet
          Caption = 'Al'#237'quotas/Redutores'
          Enabled = False
          ImageIndex = 1
          object Label91: TLabel
            Left = 0
            Top = 213
            Width = 140
            Height = 13
            Caption = 'Al'#237'quota Repasse ICMS:'
          end
          object Label63: TLabel
            Left = 1
            Top = 229
            Width = 141
            Height = 13
            Caption = 'Percentual de Comiss'#227'o:'
          end
          object Label12: TLabel
            Left = 756
            Top = 2
            Width = 58
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = 'Normal'
            Color = 16776176
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label14: TLabel
            Left = 818
            Top = 0
            Width = 58
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = 'SIMP NAC'
            Color = 16776176
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMenuHighlight
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label18: TLabel
            Left = 561
            Top = 1
            Width = 60
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = 'Normal'
            Color = 16776176
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label19: TLabel
            Left = 622
            Top = -1
            Width = 60
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = 'SIMP NAC'
            Color = 16776176
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMenuHighlight
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label50: TLabel
            Left = 1
            Top = 250
            Width = 147
            Height = 13
            Caption = 'C'#243'digo do Beneficio NFE:'
          end
          object gb_icmsnormal: TGroupBox
            Left = 1
            Top = -1
            Width = 472
            Height = 208
            Caption = 'Al'#237'quotas/Redutores p/Produtos Tributados'
            Color = 15132390
            Ctl3D = False
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 0
            object Label27: TLabel
              Left = 7
              Top = 15
              Width = 101
              Height = 27
              Alignment = taCenter
              AutoSize = False
              Caption = 'Produtos da Tabela de Icms'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              WordWrap = True
            end
            object Label25: TLabel
              Left = 110
              Top = 14
              Width = 55
              Height = 27
              Alignment = taCenter
              AutoSize = False
              Caption = 'Al'#237'quota de Icms'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              WordWrap = True
            end
            object Label26: TLabel
              Left = 160
              Top = 14
              Width = 55
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Caption = 'Red BC Revenda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              WordWrap = True
            end
            object Label24: TLabel
              Left = 7
              Top = 42
              Width = 101
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Tabela A:'
              Color = 16776176
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label28: TLabel
              Left = 7
              Top = 60
              Width = 101
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Tabela B:'
              Color = 13828095
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label29: TLabel
              Left = 7
              Top = 78
              Width = 101
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Tabela C:'
              Color = 16776176
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label30: TLabel
              Left = 7
              Top = 96
              Width = 101
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Tabela D:'
              Color = 13828095
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label31: TLabel
              Left = 7
              Top = 114
              Width = 101
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Tabela E:'
              Color = 16776176
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label32: TLabel
              Left = 7
              Top = 132
              Width = 101
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Tabela F:'
              Color = 13828095
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label33: TLabel
              Left = 7
              Top = 150
              Width = 101
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Tabela G:'
              Color = 16776176
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label34: TLabel
              Left = 7
              Top = 168
              Width = 101
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Tabela H:'
              Color = 13828095
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label35: TLabel
              Left = 7
              Top = 186
              Width = 101
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Tabela I:'
              Color = 16776176
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label20: TLabel
              Left = 281
              Top = 14
              Width = 60
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Caption = '% Comb Pobreza'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              WordWrap = True
            end
            object Label23: TLabel
              Left = 215
              Top = 14
              Width = 60
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Caption = 'Red BC Cons Final'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              WordWrap = True
            end
            object Label52: TLabel
              Left = 340
              Top = 14
              Width = 60
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Caption = '% CBS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              WordWrap = True
            end
            object Label54: TLabel
              Left = 399
              Top = 14
              Width = 60
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Caption = '% IBS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              WordWrap = True
            end
            object DBEdit3: TDBEdit
              Left = 110
              Top = 42
              Width = 55
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PICMSA'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 0
            end
            object DBE_PREDUTNA: TDBEdit
              Left = 160
              Top = 42
              Width = 55
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PREDUTNA'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 1
            end
            object DBEdit5: TDBEdit
              Left = 110
              Top = 60
              Width = 55
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PICMSB'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
            end
            object DBE_PREDUTNB: TDBEdit
              Left = 160
              Top = 60
              Width = 55
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PREDUTNB'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
            end
            object DBEdit7: TDBEdit
              Left = 110
              Top = 78
              Width = 55
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PICMSNC'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 4
            end
            object DBE_PREDUTNC: TDBEdit
              Left = 160
              Top = 78
              Width = 55
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PREDUTNC'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 5
            end
            object DBEdit15: TDBEdit
              Left = 110
              Top = 96
              Width = 55
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PICMSND'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 6
            end
            object DBE_PREDUTND: TDBEdit
              Left = 160
              Top = 96
              Width = 55
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PREDUTND'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 7
            end
            object DBEdit48: TDBEdit
              Left = 110
              Top = 114
              Width = 55
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PICMSNE'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 8
            end
            object DBE_PREDUTNE: TDBEdit
              Left = 160
              Top = 114
              Width = 55
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PREDUTNE'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 9
            end
            object DBEdit50: TDBEdit
              Left = 110
              Top = 132
              Width = 55
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PICMSNF'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 10
            end
            object DBE_PREDUTNF: TDBEdit
              Left = 160
              Top = 132
              Width = 55
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PREDUTNF'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 11
            end
            object DBEdit52: TDBEdit
              Left = 110
              Top = 150
              Width = 55
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PICMSNG'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 12
            end
            object DBE_PREDUTNG: TDBEdit
              Left = 160
              Top = 150
              Width = 55
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PREDUTNG'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 13
            end
            object DBEdit54: TDBEdit
              Left = 110
              Top = 168
              Width = 55
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PICMSNH'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 14
            end
            object DBE_PREDUTNH: TDBEdit
              Left = 160
              Top = 168
              Width = 55
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PREDUTNH'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 15
            end
            object DBEdit56: TDBEdit
              Left = 110
              Top = 186
              Width = 55
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PICMSNI'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 16
            end
            object DBEd_PREDUTNI: TDBEdit
              Left = 160
              Top = 186
              Width = 55
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PREDUTNI'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 17
            end
            object DBE_PALIQ_CBA: TDBEdit
              Left = 281
              Top = 42
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PALIQ_CBA'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 18
            end
            object DBE_PALIQ_CBB: TDBEdit
              Left = 281
              Top = 60
              Width = 60
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PALIQ_CBB'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 19
            end
            object DBE_PALIQ_CBC: TDBEdit
              Left = 281
              Top = 78
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PALIQ_CBC'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 20
            end
            object DBE_PALIQ_CBD: TDBEdit
              Left = 281
              Top = 96
              Width = 60
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PALIQ_CBD'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 21
            end
            object DBE_PALIQ_CBE: TDBEdit
              Left = 281
              Top = 114
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PALIQ_CBE'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 22
            end
            object DBE_PALIQ_CBF: TDBEdit
              Left = 281
              Top = 132
              Width = 60
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PALIQ_CBF'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 23
            end
            object DBE_PALIQ_CBG: TDBEdit
              Left = 281
              Top = 150
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PALIQ_CBG'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 24
            end
            object DBE_PALIQ_CBH: TDBEdit
              Left = 281
              Top = 168
              Width = 60
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PALIQ_CBH'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 25
            end
            object DBE_PALIQ_CBI: TDBEdit
              Left = 281
              Top = 186
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PALIQ_CBI'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 26
            end
            object DBE_PREDUTNA_CF: TDBEdit
              Left = 215
              Top = 42
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PREDUTNA_CF'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 27
            end
            object DBE_PREDUTNB_CF: TDBEdit
              Left = 215
              Top = 60
              Width = 60
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PREDUTNB_CF'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 28
            end
            object DBE_PREDUTNC_CF: TDBEdit
              Left = 215
              Top = 78
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PREDUTNC_CF'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 29
            end
            object DBE_PREDUTND_CF: TDBEdit
              Left = 215
              Top = 96
              Width = 60
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PREDUTND_CF'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 30
            end
            object DBE_PREDUTNE_CF: TDBEdit
              Left = 215
              Top = 114
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PREDUTNE_CF'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 31
            end
            object DBE_PREDUTNF_CF: TDBEdit
              Left = 215
              Top = 132
              Width = 60
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PREDUTNF_CF'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 32
            end
            object DBE_PREDUTNG_CF: TDBEdit
              Left = 215
              Top = 150
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PREDUTNG_CF'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 33
            end
            object DBE_PREDUTNH_CF: TDBEdit
              Left = 215
              Top = 168
              Width = 60
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PREDUTNH_CF'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 34
            end
            object DBE_PREDUTNI_CF: TDBEdit
              Left = 215
              Top = 186
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PREDUTNI_CF'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 35
            end
            object DBE_PCBS_ALIQ: TDBEdit
              Left = 340
              Top = 42
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PCBS_ALIQA'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 36
            end
            object DBE_PCBS_ALIQB: TDBEdit
              Left = 340
              Top = 60
              Width = 60
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PCBS_ALIQB'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 37
            end
            object DBE_PCBS_ALIQC: TDBEdit
              Left = 340
              Top = 78
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PCBS_ALIQC'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 38
            end
            object DBE_PCBS_ALIQD: TDBEdit
              Left = 340
              Top = 96
              Width = 60
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PCBS_ALIQD'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 39
            end
            object DBE_PCBS_ALIQE: TDBEdit
              Left = 340
              Top = 114
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PCBS_ALIQE'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 40
            end
            object DBE_PCBS_ALIQF: TDBEdit
              Left = 340
              Top = 132
              Width = 60
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PCBS_ALIQF'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 41
            end
            object DBE_PCBS_ALIQG: TDBEdit
              Left = 340
              Top = 150
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PCBS_ALIQG'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 42
            end
            object DBE_PCBS_ALIQH: TDBEdit
              Left = 340
              Top = 168
              Width = 60
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PCBS_ALIQH'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 43
            end
            object DBE_PCBS_ALIQI: TDBEdit
              Left = 340
              Top = 186
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PCBS_ALIQI'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 44
            end
            object PIBS_ALIQA: TDBEdit
              Left = 399
              Top = 42
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PIBS_ALIQA'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 45
            end
            object PIBS_ALIQB: TDBEdit
              Left = 399
              Top = 60
              Width = 60
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PIBS_ALIQB'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 46
            end
            object PIBS_ALIQC: TDBEdit
              Left = 399
              Top = 78
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PIBS_ALIQC'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 47
            end
            object PIBS_ALIQD: TDBEdit
              Left = 399
              Top = 96
              Width = 60
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PIBS_ALIQD'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 48
            end
            object PIBS_ALIQE: TDBEdit
              Left = 399
              Top = 114
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PIBS_ALIQE'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 49
            end
            object PIBS_ALIQF: TDBEdit
              Left = 399
              Top = 132
              Width = 60
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PIBS_ALIQF'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 50
            end
            object PIBS_ALIQG: TDBEdit
              Left = 399
              Top = 150
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PIBS_ALIQG'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 51
            end
            object PIBS_ALIQH: TDBEdit
              Left = 399
              Top = 168
              Width = 60
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PIBS_ALIQH'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 52
            end
            object PIBS_ALIQI: TDBEdit
              Left = 399
              Top = 186
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PIBS_ALIQI'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 53
            end
          end
          object gb_aliqSt: TGroupBox
            Left = 477
            Top = 18
            Width = 205
            Height = 55
            Caption = 'Al'#237'q.p/Produtos Sub.Tributaria:'
            Color = 16763594
            Ctl3D = False
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 3
            object Label36: TLabel
              Left = 3
              Top = 14
              Width = 81
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'ICMS Cr'#233'dito:'
              Color = 16776176
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label37: TLabel
              Left = 3
              Top = 32
              Width = 81
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'ICMS D'#233'bito:'
              Color = 13828095
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object DBEdit16: TDBEdit
              Left = 84
              Top = 13
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PICMSC'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 0
            end
            object DBEdit17: TDBEdit
              Left = 84
              Top = 31
              Width = 60
              Height = 19
              Ctl3D = False
              DataField = 'PICMSD'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 1
            end
            object DBEdit26: TDBEdit
              Left = 143
              Top = 13
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PICMSC_SN'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 2
            end
            object DBEdit27: TDBEdit
              Left = 143
              Top = 31
              Width = 60
              Height = 19
              Ctl3D = False
              DataField = 'PICMSD_SN'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 3
            end
          end
          object gb_iva: TGroupBox
            Left = 478
            Top = 74
            Width = 204
            Height = 72
            Caption = 'IVA P/Produto/Mercadoria Lista:'
            Color = 16763594
            Ctl3D = False
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 4
            object Label38: TLabel
              Left = 3
              Top = 16
              Width = 80
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Positiva:'
              Color = 16776176
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label39: TLabel
              Left = 3
              Top = 34
              Width = 80
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Negativa:'
              Color = 13828095
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label40: TLabel
              Left = 3
              Top = 52
              Width = 80
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Inalterada:'
              Color = 16776176
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object DBEdit18: TDBEdit
              Left = 84
              Top = 14
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PIVAPOS'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 0
            end
            object DBEdit41: TDBEdit
              Left = 84
              Top = 32
              Width = 60
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PIVANEG'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 1
            end
            object DBEdit42: TDBEdit
              Left = 85
              Top = 50
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PIVAINA'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 2
            end
            object DBEdit28: TDBEdit
              Left = 143
              Top = 14
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PIVAPOS_SN'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 3
            end
            object DBEdit29: TDBEdit
              Left = 143
              Top = 32
              Width = 60
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PIVANEG_SN'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 4
            end
            object DBEdit30: TDBEdit
              Left = 143
              Top = 50
              Width = 60
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PIVAINA_SN'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 5
            end
          end
          object dbcb_pmc: TDBCheckBox
            Left = 479
            Top = 146
            Width = 203
            Height = 17
            Hint = 
              'Se Marcado Calcula a Base de Icms Substitui'#231#227'o Tribut'#225'ria'#13#10'sob o' +
              ' PMC(Pre'#231'o M'#225'ximo Consumidor) do Produto'
            Caption = 'Base ST pelo P.M.C.Produto'
            Color = 16763594
            Ctl3D = False
            DataField = 'PTIPCAL'
            DataSource = DM1.Src_UF
            ParentColor = False
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dbcb_subvlrliq: TDBCheckBox
            Left = 479
            Top = 163
            Width = 207
            Height = 17
            Hint = 
              'Se marcado ao calcular o icms de d'#233'bito '#13#10'da Substitui'#231#227'o Tribut' +
              #225'ria ser'#225' sob o valor'#13#10'l'#237'quido'
            Caption = 'Calc.ST(d'#233'bito)sob total l'#237'quido'
            Color = 16763594
            Ctl3D = False
            DataField = 'PCALCRET'
            DataSource = DM1.Src_UF
            ParentColor = False
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object gb_redutst: TGroupBox
            Left = 688
            Top = 18
            Width = 210
            Height = 185
            Caption = 'Redutor Base Calc.Icms ST:'
            Color = 16763594
            Ctl3D = False
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 7
            object Label41: TLabel
              Left = 10
              Top = 16
              Width = 60
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Tabela A:'
              Color = 16776176
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label42: TLabel
              Left = 10
              Top = 35
              Width = 60
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Tabela B:'
              Color = 13828095
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label43: TLabel
              Left = 10
              Top = 53
              Width = 60
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Tabela C:'
              Color = 16776176
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label44: TLabel
              Left = 10
              Top = 71
              Width = 60
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Tabela D:'
              Color = 13828095
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label45: TLabel
              Left = 10
              Top = 89
              Width = 60
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Tabela E:'
              Color = 16776176
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label46: TLabel
              Left = 10
              Top = 107
              Width = 60
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Tabela F:'
              Color = 13828095
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label47: TLabel
              Left = 10
              Top = 125
              Width = 60
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Tabela G:'
              Color = 16776176
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label48: TLabel
              Left = 10
              Top = 143
              Width = 60
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Tabela H:'
              Color = 13828095
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label49: TLabel
              Left = 10
              Top = 161
              Width = 60
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Tabela I:'
              Color = 16776176
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object DBEdit13: TDBEdit
              Left = 71
              Top = 16
              Width = 58
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PREDUTRA'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit19: TDBEdit
              Left = 71
              Top = 34
              Width = 58
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PREDUTRB'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit43: TDBEdit
              Left = 71
              Top = 52
              Width = 58
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PREDUTRC'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit44: TDBEdit
              Left = 71
              Top = 70
              Width = 58
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PREDUTRD'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
            end
            object DBEdit57: TDBEdit
              Left = 71
              Top = 88
              Width = 58
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PREDUTRE'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
            end
            object DBEdit58: TDBEdit
              Left = 71
              Top = 106
              Width = 58
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PREDUTRF'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 5
            end
            object DBEdit70: TDBEdit
              Left = 71
              Top = 124
              Width = 58
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PREDUTRG'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 6
            end
            object DBEdit71: TDBEdit
              Left = 71
              Top = 142
              Width = 58
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PREDUTRH'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 7
            end
            object DBEdit72: TDBEdit
              Left = 71
              Top = 160
              Width = 58
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PREDUTRI'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 8
            end
            object DBEdit9: TDBEdit
              Left = 132
              Top = 16
              Width = 58
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PREDUTRA_SN'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMenuHighlight
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 9
            end
            object DBEdit10: TDBEdit
              Left = 132
              Top = 34
              Width = 58
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PREDUTRB_SN'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMenuHighlight
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 10
            end
            object DBEdit11: TDBEdit
              Left = 132
              Top = 52
              Width = 58
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PREDUTRC_SN'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMenuHighlight
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 11
            end
            object DBEdit12: TDBEdit
              Left = 132
              Top = 70
              Width = 58
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PREDUTRD_SN'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMenuHighlight
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 12
            end
            object DBEdit14: TDBEdit
              Left = 132
              Top = 88
              Width = 58
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PREDUTRE_SN'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMenuHighlight
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 13
            end
            object DBEdit20: TDBEdit
              Left = 132
              Top = 106
              Width = 58
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PREDUTRF_SN'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMenuHighlight
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 14
            end
            object DBEdit21: TDBEdit
              Left = 132
              Top = 124
              Width = 58
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PREDUTRG_SN'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMenuHighlight
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 15
            end
            object DBEdit24: TDBEdit
              Left = 132
              Top = 142
              Width = 58
              Height = 19
              Color = 13828095
              Ctl3D = False
              DataField = 'PREDUTRH_SN'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMenuHighlight
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 16
            end
            object DBEdit25: TDBEdit
              Left = 132
              Top = 160
              Width = 58
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PREDUTRI_SN'
              DataSource = DM1.Src_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMenuHighlight
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 17
            end
          end
          object DBE_repas: TDBEdit
            Left = 148
            Top = 209
            Width = 69
            Height = 19
            Ctl3D = False
            DataField = 'PREPAS'
            DataSource = DM1.Src_UF
            ParentCtl3D = False
            TabOrder = 1
          end
          object gb_obsnf: TGroupBox
            Left = 356
            Top = 204
            Width = 542
            Height = 58
            Caption = 'Liminar/Observa'#231#245'es NF.:'
            Color = 15132390
            Ctl3D = False
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 8
            object DBEdit22: TDBEdit
              Left = 5
              Top = 14
              Width = 396
              Height = 19
              Ctl3D = False
              DataField = 'PLIMINA1'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 0
            end
            object DBEdit23: TDBEdit
              Left = 5
              Top = 32
              Width = 396
              Height = 19
              Ctl3D = False
              DataField = 'PLIMINA2'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 1
            end
          end
          object dbe_comis: TDBEdit
            Left = 148
            Top = 227
            Width = 69
            Height = 19
            Ctl3D = False
            DataField = 'PCOMIS'
            DataSource = DM1.Src_UF
            ParentCtl3D = False
            TabOrder = 2
          end
        end
        object tsCst: TTabSheet
          Caption = 'CST por Classifica'#231#227'o Fiscal'
          ImageIndex = 2
          TabVisible = False
          object sbInserir: TSpeedButton
            Left = 362
            Top = 6
            Width = 195
            Height = 22
            Caption = 'Inserir do Cadastro de Produtos'
            OnClick = sbInserirClick
          end
          object GroupBox1: TGroupBox
            Left = 0
            Top = 0
            Width = 361
            Height = 263
            Align = alLeft
            Caption = 'CSF por Classfica'#231#227'o Fiscal'
            TabOrder = 0
            object DBNvg_CSTCF: TDBNavigator
              Left = 2
              Top = 236
              Width = 357
              Height = 25
              DataSource = Src_CLFISCAL_UF
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
              Align = alBottom
              TabOrder = 0
            end
            object DBGrid_CSTCF: TDBGrid
              Left = 2
              Top = 15
              Width = 357
              Height = 221
              Align = alClient
              DataSource = Src_CLFISCAL_UF
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              OnExit = DBGrid_CSTCFExit
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CFCLAS_FISCAL'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CFCST_RV'
                  Width = 84
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CFCST_CF'
                  Width = 101
                  Visible = True
                end>
            end
          end
        end
        object ts_difal: TTabSheet
          Caption = 'Difal'
          Enabled = False
          ImageIndex = 3
          object GroupBox4: TGroupBox
            Left = 462
            Top = 72
            Width = 131
            Height = 55
            Caption = 'Icms Partilha'
            Color = 16763594
            Ctl3D = False
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 0
            object Label21: TLabel
              Left = 3
              Top = 14
              Width = 81
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'ICMS Origem:'
              Color = 16776176
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label22: TLabel
              Left = 3
              Top = 32
              Width = 81
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'ICMS Destino:'
              Color = 13828095
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object DBEdit31: TDBEdit
              Left = 84
              Top = 13
              Width = 42
              Height = 19
              Color = 16776176
              Ctl3D = False
              DataField = 'PICMSPART_CRED'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 0
            end
            object DBEdit32: TDBEdit
              Left = 84
              Top = 31
              Width = 41
              Height = 19
              Ctl3D = False
              DataField = 'PICMSPART_DEB'
              DataSource = DM1.Src_UF
              ParentCtl3D = False
              TabOrder = 1
            end
          end
          object DBCheckBox1: TDBCheckBox
            Left = 459
            Top = 8
            Width = 203
            Height = 17
            Hint = 
              'Se Marcado Calcula a Base de Icms Substitui'#231#227'o Tribut'#225'ria'#13#10'sob o' +
              ' PMC(Pre'#231'o M'#225'ximo Consumidor) do Produto'
            Caption = 'Gerar Tag Difal'
            Color = 16763594
            Ctl3D = False
            DataField = 'PGERARDIFAL'
            DataSource = DM1.Src_UF
            ParentColor = False
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object GroupBox5: TGroupBox
            Left = 0
            Top = 0
            Width = 201
            Height = 263
            Align = alLeft
            Caption = 'Exceto NCM'
            TabOrder = 2
            object DBGrid2_cbenef: TDBGrid
              Left = 2
              Top = 15
              Width = 197
              Height = 214
              Align = alTop
              DataSource = src_CADUF_EXCETONCM
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'DEUF_CODNCM'
                  Visible = True
                end>
            end
            object bbExluirCbenef: TBitBtn
              Left = 25
              Top = 233
              Width = 153
              Height = 25
              Caption = 'Exluir Codigo'
              TabOrder = 1
              OnClick = bbExluirCbenefClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333FF33333333333330003333333333333777333333333333
                300033FFFFFF3333377739999993333333333777777F3333333F399999933333
                3300377777733333337733333333333333003333333333333377333333333333
                3333333333333333333F333333333333330033333F33333333773333C3333333
                330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
                993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
                333333377F33333333FF3333C333333330003333733333333777333333333333
                3000333333333333377733333333333333333333333333333333}
              NumGlyphs = 2
            end
          end
        end
        object tsSubstituicaoTriibutaria: TTabSheet
          Caption = 'Situa'#231#227'o Tributaria'
          ImageIndex = 4
          object GroupBox6: TGroupBox
            Left = 0
            Top = 0
            Width = 1060
            Height = 263
            Align = alClient
            Caption = 'Dados Substitui'#231#227'o Tributaria'
            TabOrder = 0
            object DBGrid3: TDBGrid
              Left = 2
              Top = 15
              Width = 1056
              Height = 246
              Align = alClient
              DataSource = src_uf_st
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'UF_ST_TABELA'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UF_ST_ICMSCRED_NOR'
                  Title.Alignment = taCenter
                  Width = 85
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UF_ST_ICMSDEB_NOR'
                  Title.Alignment = taCenter
                  Width = 83
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UF_ST_IVA_POS_NOR'
                  Title.Alignment = taCenter
                  Width = 95
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UF_ST_IVA_NEG_NOR'
                  Title.Alignment = taCenter
                  Width = 91
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UF_ST_IVA_INA_NOR'
                  Title.Alignment = taCenter
                  Width = 79
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UF_ST_ICMSCRED_SN'
                  Title.Alignment = taCenter
                  Width = 93
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UF_ST_ICMSDEB_SN'
                  Title.Alignment = taCenter
                  Width = 98
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UF_ST_IVA_POS_SN'
                  Title.Alignment = taCenter
                  Width = 101
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UF_ST_IVA_NEG_SN'
                  Title.Alignment = taCenter
                  Width = 85
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UF_ST_IVA_INA_SN'
                  Title.Alignment = taCenter
                  Width = 91
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UF_ST_SOB_LIQ'
                  Title.Alignment = taCenter
                  Width = 81
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UF_ST_MOD_BCST'
                  Title.Alignment = taCenter
                  Width = 81
                  Visible = True
                end>
            end
          end
        end
      end
      object DBEdit2: TDBEdit
        Left = 111
        Top = 0
        Width = 217
        Height = 19
        Ctl3D = False
        DataField = 'PNOM'
        DataSource = DM1.Src_UF
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 37
        Top = 0
        Width = 29
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'PUF'
        DataSource = DM1.Src_UF
        Enabled = False
        ParentCtl3D = False
        TabOrder = 0
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 1068
        Height = 439
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'PUF'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PNOM'
            Width = 365
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 553
    Width = 785
    Height = 35
    Align = alNone
    Visible = False
    inherited INCLUIR: TBitBtn
      Top = 13
      Width = 130
      Height = 23
      Layout = blGlyphLeft
    end
    inherited ALTERAR: TBitBtn
      Left = 134
      Top = 13
      Width = 130
      Height = 23
      Layout = blGlyphLeft
    end
    inherited EXCLUIR: TBitBtn
      Left = 394
      Top = 13
      Width = 130
      Height = 23
      Layout = blGlyphLeft
    end
    inherited GRAVAR: TBitBtn
      Left = 264
      Top = 13
      Width = 130
      Height = 23
      OnClick = GRAVARClick
      Layout = blGlyphLeft
    end
    inherited CANCELAR: TBitBtn
      Left = 524
      Top = 13
      Width = 130
      Height = 23
      Layout = blGlyphLeft
    end
    object bbBloqueios: TBitBtn
      Left = 654
      Top = 13
      Width = 130
      Height = 23
      Hint = 'Aniversariantes'
      Caption = '&Bloqueios'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bbBloqueiosClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 588
    Width = 785
    Height = 37
    Align = alNone
    Visible = False
    inherited DBNavigator1: TDBNavigator
      Left = 4
      Top = 13
      Width = 520
      Height = 23
    end
    inherited SAIR: TBitBtn
      Left = 524
      Top = 13
      Width = 130
      Height = 23
      Layout = blGlyphLeft
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1076
    Height = 30
    ButtonHeight = 25
    Caption = 'ToolBar1'
    TabOrder = 4
    object btn_novo: TBitBtn
      Left = 0
      Top = 2
      Width = 105
      Height = 25
      Cursor = crHandPoint
      Hint = 'Inclus'#227'o de novos registros'
      Caption = '&Novo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = INCLUIRClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
    end
    object btn_alterar: TBitBtn
      Left = 105
      Top = 2
      Width = 105
      Height = 25
      Cursor = crHandPoint
      Hint = 'Permite alterar o registro atual'
      Caption = '&Alterar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = ALTERARClick
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
    object btn_cancelar: TBitBtn
      Left = 210
      Top = 2
      Width = 105
      Height = 25
      Cursor = crHandPoint
      Hint = 'Cancela a opera'#231#227'o atual'
      Caption = 'Cance&lar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = CANCELARClick
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
    object btn_excluir: TBitBtn
      Left = 315
      Top = 2
      Width = 105
      Height = 25
      Cursor = crHandPoint
      Hint = 'Exclus'#227'o do registro atual'
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = EXCLUIRClick
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
    object btn_gravar: TBitBtn
      Left = 420
      Top = 2
      Width = 105
      Height = 25
      Cursor = crHandPoint
      Hint = 'Grava o registro atual'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = GRAVARClick
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
    object DBNavigator2: TDBNavigator
      Left = 525
      Top = 2
      Width = 152
      Height = 25
      Cursor = crHandPoint
      Hint = 'Navega entre os registros selecionados'
      DataSource = DM1.Src_UF
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Proximo Registro'
        #218'ltimo Registro')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object BitBtn10: TBitBtn
      Left = 677
      Top = 2
      Width = 105
      Height = 25
      Cursor = crHandPoint
      Hint = 'Fecha Esta Janela'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
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
    object bbExpCadUf: TBitBtn
      Left = 782
      Top = 2
      Width = 113
      Height = 25
      Caption = 'Exportar CadUF'
      TabOrder = 7
      OnClick = bbExpCadUfClick
    end
  end
  object Tb_CLFISCAL_UF: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_CLFISCAL_UFBeforeInsert
    AfterInsert = Tb_CLFISCAL_UFAfterInsert
    BeforeEdit = Tb_CLFISCAL_UFBeforeEdit
    AfterEdit = Tb_CLFISCAL_UFAfterEdit
    BeforePost = Tb_CLFISCAL_UFBeforePost
    AfterCancel = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from '
      'CADCLFISCAL_UF')
    UpdateObject = U_CLFISCAL_UF
    Left = 488
    Top = 80
    object Tb_CLFISCAL_UFCFCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CFCODEMP'
      Origin = 'SG_ASSOC.CADCLFISCAL_UF.CFCODEMP'
    end
    object Tb_CLFISCAL_UFCFUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CFUF'
      Origin = 'SG_ASSOC.CADCLFISCAL_UF.CFUF'
      Size = 2
    end
    object Tb_CLFISCAL_UFCFCLAS_FISCAL: TStringField
      DisplayLabel = 'Classifica'#231#227'o Fiscal'
      FieldName = 'CFCLAS_FISCAL'
      Origin = 'SG_ASSOC.CADCLFISCAL_UF.CFCLAS_FISCAL'
    end
    object Tb_CLFISCAL_UFCFCST_RV: TStringField
      DisplayLabel = 'CST Revenda'
      FieldName = 'CFCST_RV'
      Origin = 'SG_ASSOC.CADCLFISCAL_UF.CFCST_RV'
    end
    object Tb_CLFISCAL_UFCFCST_CF: TStringField
      DisplayLabel = 'CST Cons.Final'
      FieldName = 'CFCST_CF'
      Origin = 'SG_ASSOC.CADCLFISCAL_UF.CFCST_CF'
    end
    object Tb_CLFISCAL_UFCFCODUSR_INC: TFloatField
      FieldName = 'CFCODUSR_INC'
      Origin = 'SG_ASSOC.CADCLFISCAL_UF.CFCODUSR_INC'
    end
    object Tb_CLFISCAL_UFCFDATHOR_INC: TDateTimeField
      FieldName = 'CFDATHOR_INC'
      Origin = 'SG_ASSOC.CADCLFISCAL_UF.CFDATHOR_INC'
    end
    object Tb_CLFISCAL_UFCFCODUSR_ALT: TFloatField
      FieldName = 'CFCODUSR_ALT'
      Origin = 'SG_ASSOC.CADCLFISCAL_UF.CFCODUSR_ALT'
    end
    object Tb_CLFISCAL_UFCFDATHOR_ALT: TDateTimeField
      FieldName = 'CFDATHOR_ALT'
      Origin = 'SG_ASSOC.CADCLFISCAL_UF.CFDATHOR_ALT'
    end
  end
  object U_CLFISCAL_UF: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCLFISCAL_UF'
      'set'
      '  CFCODEMP = :CFCODEMP,'
      '  CFUF = :CFUF,'
      '  CFCLAS_FISCAL = :CFCLAS_FISCAL,'
      '  CFCST_RV = :CFCST_RV,'
      '  CFCST_CF = :CFCST_CF,'
      '  CFCODUSR_INC = :CFCODUSR_INC,'
      '  CFDATHOR_INC = :CFDATHOR_INC,'
      '  CFCODUSR_ALT = :CFCODUSR_ALT,'
      '  CFDATHOR_ALT = :CFDATHOR_ALT'
      'where'
      '  CFCODEMP = :OLD_CFCODEMP and'
      '  CFUF = :OLD_CFUF and'
      '  CFCLAS_FISCAL = :OLD_CFCLAS_FISCAL')
    InsertSQL.Strings = (
      'insert into CADCLFISCAL_UF'
      
        '  (CFCODEMP, CFUF, CFCLAS_FISCAL, CFCST_RV, CFCST_CF, CFCODUSR_I' +
        'NC, '
      'CFDATHOR_INC, '
      '   CFCODUSR_ALT, CFDATHOR_ALT)'
      'values'
      '  (:CFCODEMP, :CFUF, :CFCLAS_FISCAL, :CFCST_RV, :CFCST_CF, '
      ':CFCODUSR_INC, '
      '   :CFDATHOR_INC, :CFCODUSR_ALT, :CFDATHOR_ALT)')
    DeleteSQL.Strings = (
      'delete from CADCLFISCAL_UF'
      'where'
      '  CFCODEMP = :OLD_CFCODEMP and'
      '  CFUF = :OLD_CFUF and'
      '  CFCLAS_FISCAL = :OLD_CFCLAS_FISCAL')
    Left = 511
    Top = 80
  end
  object Src_CLFISCAL_UF: TDataSource
    DataSet = Tb_CLFISCAL_UF
    Left = 533
    Top = 81
  end
  object Src_UF: TDataSource
    DataSet = DM1.Tb_UF
    OnDataChange = Src_UFDataChange
    Left = 512
    Top = 16
  end
  object Src_CadUF_TPPED: TDataSource
    DataSet = DM2.Tb_UF_TPPED
    OnDataChange = Src_CadUF_TPPEDDataChange
    Left = 616
  end
  object cds_CADUF_EXCETONCM: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cds_CADUF_EXCETONCMAfterInsert
    BeforePost = cds_CADUF_EXCETONCMBeforePost
    AfterPost = cds_CADUF_EXCETONCMAfterPost
    AfterDelete = cds_CADUF_EXCETONCMAfterDelete
    Left = 284
    Top = 245
    object cds_CADUF_EXCETONCMDEUF_SIGLA: TStringField
      FieldName = 'DEUF_SIGLA'
      Size = 2
    end
    object cds_CADUF_EXCETONCMDEUF_CODNCM: TStringField
      DisplayLabel = 'C'#243'digo NCM'
      FieldName = 'DEUF_CODNCM'
    end
  end
  object src_CADUF_EXCETONCM: TDataSource
    DataSet = cds_CADUF_EXCETONCM
    Left = 316
    Top = 245
  end
  object cds_novo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 316
    Top = 293
    object cds_novoDEUF_SIGLA: TStringField
      FieldName = 'DEUF_SIGLA'
      Size = 2
    end
    object cds_novoDEUF_CODNCM: TStringField
      FieldName = 'DEUF_CODNCM'
    end
  end
  object Tb_uf_st: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from '
      'CADUF_ST')
    UpdateObject = U_UF_ST
    Left = 720
    Top = 88
    object Tb_uf_stUF_ST_CODEMP: TFloatField
      FieldName = 'UF_ST_CODEMP'
    end
    object Tb_uf_stUF_ST_UF: TStringField
      FieldName = 'UF_ST_UF'
      Size = 2
    end
    object Tb_uf_stUF_ST_TABELA: TStringField
      DisplayLabel = 'Tab'
      FieldName = 'UF_ST_TABELA'
      Size = 1
    end
    object Tb_uf_stUF_ST_ICMSCRED_NOR: TFloatField
      DisplayLabel = 'Icms Cred Nor'
      FieldName = 'UF_ST_ICMSCRED_NOR'
    end
    object Tb_uf_stUF_ST_ICMSCRED_SN: TFloatField
      DisplayLabel = 'Icms Cred SN'
      FieldName = 'UF_ST_ICMSCRED_SN'
    end
    object Tb_uf_stUF_ST_ICMSDEB_NOR: TFloatField
      DisplayLabel = 'Icms Deb Nor'
      FieldName = 'UF_ST_ICMSDEB_NOR'
    end
    object Tb_uf_stUF_ST_ICMSDEB_SN: TFloatField
      DisplayLabel = 'Icms Deb SN'
      FieldName = 'UF_ST_ICMSDEB_SN'
    end
    object Tb_uf_stUF_ST_MOD_BCST: TFloatField
      DisplayLabel = 'Mod bc St'
      FieldName = 'UF_ST_MOD_BCST'
    end
    object Tb_uf_stUF_ST_SOB_LIQ: TFloatField
      DisplayLabel = 'St Sob Liq'
      FieldName = 'UF_ST_SOB_LIQ'
    end
    object Tb_uf_stUF_ST_IVA_POS_NOR: TFloatField
      DisplayLabel = 'Iva Pos Nor'
      FieldName = 'UF_ST_IVA_POS_NOR'
    end
    object Tb_uf_stUF_ST_IVA_NEG_NOR: TFloatField
      DisplayLabel = 'Iva Neg Nor'
      FieldName = 'UF_ST_IVA_NEG_NOR'
    end
    object Tb_uf_stUF_ST_IVA_INA_NOR: TFloatField
      DisplayLabel = 'Iva Ina Nor'
      FieldName = 'UF_ST_IVA_INA_NOR'
    end
    object Tb_uf_stUF_ST_IVA_POS_SN: TFloatField
      DisplayLabel = 'Iva Pos SN'
      FieldName = 'UF_ST_IVA_POS_SN'
    end
    object Tb_uf_stUF_ST_IVA_NEG_SN: TFloatField
      DisplayLabel = 'Iva Neg SN'
      FieldName = 'UF_ST_IVA_NEG_SN'
    end
    object Tb_uf_stUF_ST_IVA_INA_SN: TFloatField
      DisplayLabel = 'Iva Ina SN'
      FieldName = 'UF_ST_IVA_INA_SN'
    end
  end
  object U_UF_ST: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCLFISCAL_UF'
      'set'
      '  CFCODEMP = :CFCODEMP,'
      '  CFUF = :CFUF,'
      '  CFCLAS_FISCAL = :CFCLAS_FISCAL,'
      '  CFCST_RV = :CFCST_RV,'
      '  CFCST_CF = :CFCST_CF,'
      '  CFCODUSR_INC = :CFCODUSR_INC,'
      '  CFDATHOR_INC = :CFDATHOR_INC,'
      '  CFCODUSR_ALT = :CFCODUSR_ALT,'
      '  CFDATHOR_ALT = :CFDATHOR_ALT'
      'where'
      '  CFCODEMP = :OLD_CFCODEMP and'
      '  CFUF = :OLD_CFUF and'
      '  CFCLAS_FISCAL = :OLD_CFCLAS_FISCAL')
    InsertSQL.Strings = (
      'insert into CADUF_ST'
      
        '  (UF_ST_CODEMP, UF_ST_UF, UF_ST_UF, UF_ST_ICMSCRED_NOR, UF_ST_I' +
        'CMSCRED_SN, UF_ST_ICMSDEB_NOR,'
      'UF_ST_ICMSDEB_SN,'
      
        '   UF_ST_IVA_POS, UF_ST_IVA_NEG,UF_ST_IVA_INA,UF_ST_MOD_BCST,UF_' +
        'ST_SOB_LIQ)'
      'values'
      
        '  (:UF_ST_CODEMP, :UF_ST_UF, :UF_ST_UF, :UF_ST_ICMSCRED_NOR, :UF' +
        '_ST_ICMSCRED_SN, :UF_ST_ICMSDEB_NOR,'
      ':UF_ST_ICMSDEB_SN,'
      
        '   :UF_ST_IVA_POS, :UF_ST_IVA_NEG,:UF_ST_IVA_INA,:UF_ST_MOD_BCST' +
        ',:UF_ST_SOB_LIQ)'
      '')
    DeleteSQL.Strings = (
      'delete from CADUF_ST'
      'where'
      '  UF_ST_CODEMP= :OLD_UF_ST_CODEMP and'
      '  UF_ST_UF = :OLD_UF_ST_UF and'
      '  UF_ST_TABELA = :OLD_UF_ST_TABELA')
    Left = 743
    Top = 88
  end
  object src_uf_st: TDataSource
    DataSet = Tb_uf_st
    Left = 773
    Top = 89
  end
end

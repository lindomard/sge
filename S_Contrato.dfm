inherited Frm_Contrato: TFrm_Contrato
  Left = 71
  Top = 72
  Width = 1042
  Height = 595
  Caption = 'Manuten'#231#227'o no Cadastro de Contrato de Presta'#231#227'o Servi'#231'o'
  Font.Style = []
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1034
    inherited lbl_emp: TLabel
      Left = 997
      Width = 36
    end
    inherited Pesquisapor: TLabel
      Width = 67
    end
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Items.Strings = (
        'C'#243'digo do Cliente'
        'Data do Contrato'
        'Data do Vencimento'
        'Valor'
        'Razao Social'
        'Denomina'#231#227'o')
    end
    inherited Edit1: TMaskEdit
      OnExit = Edit1Exit
    end
  end
  inherited PC1: TPageControl
    Width = 1034
    Height = 294
    Align = alTop
    inherited tsCad: TTabSheet
      Enabled = True
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 86
        Height = 13
        Caption = 'C'#243'digo do Cliente:'
      end
      object Label2: TLabel
        Left = 59
        Top = 35
        Width = 34
        Height = 13
        Caption = 'Chave:'
      end
      object Label3: TLabel
        Left = 201
        Top = 33
        Width = 84
        Height = 13
        Caption = 'Data do Contrato:'
      end
      object Label4: TLabel
        Left = 445
        Top = 34
        Width = 50
        Height = 13
        Caption = 'V'#225'lido at'#233':'
      end
      object DBT_obsvenc01: TDBText
        Left = 152
        Top = 102
        Width = 456
        Height = 17
        Alignment = taCenter
        Color = 13290239
        DataField = 'obsvenc'
        DataSource = Src_CSer01
        ParentColor = False
      end
      object Label7: TLabel
        Left = 12
        Top = 83
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'N'#250'mero da Proposta:'
      end
      object Label8: TLabel
        Left = 12
        Top = 118
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Rerpresentante Legal:'
      end
      object Label9: TLabel
        Left = 12
        Top = 137
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CPF:'
      end
      object Label10: TLabel
        Left = 383
        Top = 137
        Width = 75
        Height = 13
        Caption = 'RG(Identidade):'
      end
      object Label5: TLabel
        Left = 255
        Top = 84
        Width = 27
        Height = 13
        Caption = 'Valor:'
      end
      object Label6: TLabel
        Left = 369
        Top = 84
        Width = 28
        Height = 13
        Caption = 'Desc:'
      end
      object Label11: TLabel
        Left = 486
        Top = 84
        Width = 37
        Height = 13
        Caption = 'Liquido:'
      end
      object Label12: TLabel
        Left = 452
        Top = 118
        Width = 27
        Height = 13
        Caption = 'Sexo:'
      end
      object lbl_CS_DIAV: TLabel
        Left = 12
        Top = 101
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Dia Vcto:'
      end
      object Label13: TLabel
        Left = 12
        Top = 155
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Servi'#231'o Master:'
      end
      object DBE_CS_CODCLI: TDBEdit
        Left = 98
        Top = 12
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'CS_CODCLI'
        DataSource = Src_CSer01
        ParentCtl3D = False
        TabOrder = 0
        OnEnter = DBE_CS_CODCLIEnter
        OnExit = DBE_CS_CODCLIExit
        OnKeyPress = DBE_CS_CODCLIKeyPress
      end
      object DBE_razsoc: TDBEdit
        Left = 161
        Top = 12
        Width = 448
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'razsoc'
        DataSource = Src_CSer01
        ParentColor = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBE_CS_CHAVE: TDBEdit
        Left = 98
        Top = 30
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'CS_CHAVE'
        DataSource = Src_CSer01
        ParentCtl3D = False
        TabOrder = 2
        OnEnter = DBE_CS_CHAVEEnter
        OnExit = DBE_CS_CHAVEExit
      end
      object DBRG_CS_TIPO: TDBRadioGroup
        Left = 9
        Top = 50
        Width = 600
        Height = 32
        Caption = 'Tipo de Contrato:'
        Columns = 6
        Ctl3D = False
        DataField = 'CS_TIPO'
        DataSource = Src_CSer01
        Items.Strings = (
          '0-P/Serv/Visita'
          '1-Mensal'
          '2-Trimestre'
          '3-Semestre'
          '4-Anual'
          '5-Outros')
        ParentCtl3D = False
        TabOrder = 5
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5')
        OnClick = DBRG_CS_TIPOClick
      end
      object gb_CS_FORMAPAG: TGroupBox
        Left = 8
        Top = 170
        Width = 297
        Height = 97
        Caption = 'Servi'#231'o de Implanta'#231#227'o (Condi'#231#245'es de Pagamento):'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 17
        object DBMemo_FORMAPAG: TDBMemo
          Left = 1
          Top = 14
          Width = 295
          Height = 82
          Align = alClient
          DataField = 'CS_FORMAPAG'
          DataSource = Src_CSer01
          TabOrder = 0
        end
      end
      object DBE_CS_NUMPROPOSTA: TDBEdit
        Left = 117
        Top = 81
        Width = 88
        Height = 19
        Ctl3D = False
        DataField = 'CS_NUMPROPOSTA'
        DataSource = Src_CSer01
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBE_REPLEGAL: TDBEdit
        Left = 117
        Top = 116
        Width = 326
        Height = 19
        Ctl3D = False
        DataField = 'CS_REPLEGAL'
        DataSource = Src_CSer01
        ParentCtl3D = False
        TabOrder = 11
      end
      object DBE_CS_REPLEGAL_CPF: TDBEdit
        Left = 117
        Top = 134
        Width = 140
        Height = 19
        Ctl3D = False
        DataField = 'CS_REPLEGAL_CPF'
        DataSource = Src_CSer01
        ParentCtl3D = False
        TabOrder = 13
        OnExit = DBE_CS_REPLEGAL_CPFExit
      end
      object DBE_CS_REPLEGAL_RG: TDBEdit
        Left = 452
        Top = 134
        Width = 149
        Height = 19
        Ctl3D = False
        DataField = 'CS_REPLEGAL_RG'
        DataSource = Src_CSer01
        ParentCtl3D = False
        TabOrder = 14
      end
      object gb_CS_PRAZOENT: TGroupBox
        Left = 305
        Top = 170
        Width = 306
        Height = 97
        Caption = 'Prazo de Entrega:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 18
        object DBMemo_PRAZOENT: TDBMemo
          Left = 1
          Top = 14
          Width = 304
          Height = 82
          Align = alClient
          DataField = 'CS_PRAZOENT'
          DataSource = Src_CSer01
          TabOrder = 0
        end
      end
      object DBE_CS_DATCON: TDBDateEdit
        Left = 293
        Top = 30
        Width = 109
        Height = 21
        DataField = 'CS_DATCON'
        DataSource = Src_CSer01
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBE_CS_DATVAL: TDBDateEdit
        Left = 501
        Top = 30
        Width = 109
        Height = 21
        DataField = 'CS_DATVAL'
        DataSource = Src_CSer01
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBE_TOTAL_VALOR_CONT: TDBEdit
        Left = 286
        Top = 81
        Width = 80
        Height = 19
        Color = 12189695
        Ctl3D = False
        DataField = 'TOTAL_VALOR_CONT'
        DataSource = Src_CSer01
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 7
      end
      object DBE_TOTAL_VALOR_CONT_DESC: TDBEdit
        Left = 399
        Top = 81
        Width = 79
        Height = 19
        Color = 12189695
        Ctl3D = False
        DataField = 'TOTAL_VALOR_CONT_DESC'
        DataSource = Src_CSer01
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 8
      end
      object DBE_TOTAL_VALOR_LIQUIDO: TDBEdit
        Left = 528
        Top = 81
        Width = 81
        Height = 19
        Color = 12189695
        Ctl3D = False
        DataField = 'TOTAL_VALOR_LIQUIDO'
        DataSource = Src_CSer01
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 9
      end
      object RxDBCB_CS_REPLEGAL_SEXO: TRxDBComboBox
        Left = 482
        Top = 114
        Width = 128
        Height = 21
        Ctl3D = False
        DataField = 'CS_REPLEGAL_SEXO'
        DataSource = Src_CSer01
        EnableValues = False
        ItemHeight = 13
        Items.Strings = (
          'Feminino'
          'Masculino')
        ParentCtl3D = False
        TabOrder = 12
        Values.Strings = (
          'F'
          'M')
      end
      object DBE_CS_DIAV: TDBEdit
        Left = 117
        Top = 99
        Width = 33
        Height = 19
        Ctl3D = False
        DataField = 'CS_DIAV'
        DataSource = Src_CSer01
        ParentCtl3D = False
        TabOrder = 10
      end
      object GroupBox1: TGroupBox
        Left = 788
        Top = 0
        Width = 238
        Height = 266
        Align = alRight
        Caption = 'Documento Digitalizado:'
        TabOrder = 19
        object DBGrid3: TDBGrid
          Left = 2
          Top = 15
          Width = 234
          Height = 215
          Align = alClient
          DataSource = Src_CSer01_imagem
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGrid3DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'CSI_OBS'
              Width = 123
              Visible = True
            end>
        end
        object Panel5: TPanel
          Left = 2
          Top = 230
          Width = 234
          Height = 34
          Align = alBottom
          TabOrder = 1
          object sbn_nova: TSpeedButton
            Left = 3
            Top = 0
            Width = 56
            Height = 33
            Caption = 'Novo'
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
            OnClick = sbn_novaClick
          end
          object sbn_alterar: TSpeedButton
            Left = 58
            Top = 0
            Width = 60
            Height = 33
            Caption = 'Alterar'
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
            Layout = blGlyphTop
            NumGlyphs = 2
            OnClick = sbn_alterarClick
          end
          object sbnRenomear: TSpeedButton
            Left = 117
            Top = 1
            Width = 60
            Height = 33
            Caption = 'Renomear'
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
            Layout = blGlyphTop
            NumGlyphs = 2
            OnClick = sbnRenomearClick
          end
          object sbn_excluir: TSpeedButton
            Left = 176
            Top = 1
            Width = 56
            Height = 33
            Caption = 'excluir'
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
            OnClick = sbn_excluirClick
          end
        end
      end
      object DBE_CS_CODSER: TDBEdit
        Left = 117
        Top = 152
        Width = 60
        Height = 19
        Ctl3D = False
        DataField = 'CS_CODSER'
        DataSource = Src_CSer01
        ParentCtl3D = False
        TabOrder = 15
        OnExit = DBE_CS_CODSERExit
        OnKeyPress = DBE_CS_CODSERKeyPress
      end
      object DBE_PDNOME: TDBEdit
        Left = 176
        Top = 152
        Width = 425
        Height = 19
        TabStop = False
        Color = 13290239
        Ctl3D = False
        DataField = 'PDNOME'
        DataSource = Src_CSer01
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 16
        OnExit = DBE_CS_REPLEGAL_CPFExit
      end
      object GroupBox3: TGroupBox
        Left = 615
        Top = 72
        Width = 164
        Height = 193
        Caption = 'Sobre Faturamento:'
        TabOrder = 20
        object Label14: TLabel
          Left = 8
          Top = 17
          Width = 68
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Banco:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 8
          Top = 56
          Width = 68
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Empresa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 5
          Top = 96
          Width = 50
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Tipo NF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 4
          Top = 132
          Width = 153
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Data Inicio:'
          Color = 16764108
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBE_CS_CODBCO_PREF: TDBEdit
          Left = 91
          Top = 15
          Width = 68
          Height = 19
          Ctl3D = False
          DataField = 'CS_CODBCO_PREF'
          DataSource = Src_CSer01
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBE_nombco_pref: TDBEdit
          Left = 2
          Top = 33
          Width = 157
          Height = 19
          TabStop = False
          Color = 13290239
          Ctl3D = False
          DataField = 'nombco_pref'
          DataSource = Src_CSer01
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
          OnExit = DBE_CS_REPLEGAL_CPFExit
        end
        object DBE_CS_CODEMP_PREF: TDBEdit
          Left = 91
          Top = 53
          Width = 68
          Height = 19
          Ctl3D = False
          DataField = 'CS_CODEMP_PREF'
          DataSource = Src_CSer01
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBE_nomemp_pref: TDBEdit
          Left = 2
          Top = 71
          Width = 156
          Height = 19
          TabStop = False
          Color = 13290239
          Ctl3D = False
          DataField = 'nomemp_pref'
          DataSource = Src_CSer01
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
          OnExit = DBE_CS_REPLEGAL_CPFExit
        end
        object dbcb_CS_TIPO_DOCUMENTO: TDBComboBox
          Left = 60
          Top = 93
          Width = 98
          Height = 21
          DataField = 'CS_TIPO_DOCUMENTO'
          DataSource = Src_CSer01
          ItemHeight = 13
          Items.Strings = (
            'SERIE1'
            'SERIE2'
            'SERVICO')
          TabOrder = 4
        end
        object DBE_CS_DTINICIO_EMISSAO: TDBDateEdit
          Left = 31
          Top = 146
          Width = 109
          Height = 21
          DataField = 'CS_DTINICIO_EMISSAO'
          DataSource = Src_CSer01
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 5
        end
      end
    end
    inherited tsTab: TTabSheet
      ImageIndex = 2
      inherited DBGrid1: TDBGrid
        Width = 1018
        Height = 266
        DataSource = Src_CSer01
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CS_CODCLI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CS_CHAVE'
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'razsoc'
            Width = 244
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CS_DATCON'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CS_STATUS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CS_STATUS'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CS_CHAVE'
            Visible = True
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      ImageIndex = 3
      object RE_relatorio: TMemo
        Left = 0
        Top = 0
        Width = 1026
        Height = 266
        Align = alClient
        Lines.Strings = (
          'RE_relatorio')
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 4
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 1018
        Height = 266
        Align = alClient
        DataSource = src_grade
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 458
    Width = 1034
    inherited INCLUIR: TBitBtn
      Width = 100
    end
    inherited ALTERAR: TBitBtn
      Left = 103
      Width = 100
    end
    inherited EXCLUIR: TBitBtn
      Left = 202
      Width = 100
    end
    inherited GRAVAR: TBitBtn
      Left = 301
      Width = 100
      OnClick = GRAVARClick
    end
    inherited CANCELAR: TBitBtn
      Left = 400
      Width = 100
    end
    object bbImpProposta: TBitBtn
      Left = 503
      Top = 12
      Width = 121
      Height = 20
      Cursor = crHandPoint
      Hint = 'Imprimir'
      Caption = 'Imprimir Proposta'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = bbImpPropostaClick
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
    object bbImprimir: TBitBtn
      Left = 503
      Top = 31
      Width = 121
      Height = 20
      Cursor = crHandPoint
      Hint = 'Imprimir'
      Caption = 'Imprimir Contrato'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
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
  end
  inherited GroupBox2: TGroupBox
    Top = 511
    Width = 1034
    inherited DBNavigator1: TDBNavigator
      Left = 3
      Width = 400
      DataSource = Src_CSer01
    end
    inherited SAIR: TBitBtn
      Left = 402
      Width = 100
    end
    object bbConfProposta: TBitBtn
      Left = 501
      Top = 12
      Width = 125
      Height = 21
      Hint = 'Cancela a opera'#231#227'o atual'
      Caption = 'Configurar Proposa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bbConfPropostaClick
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
    object bbConfigurar: TBitBtn
      Left = 501
      Top = 32
      Width = 125
      Height = 21
      Hint = 'Cancela a opera'#231#227'o atual'
      Caption = 'Configurar Contrato'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bbConfigurarClick
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
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 323
    Width = 1034
    Height = 135
    ActivePage = tsServicos
    Align = alClient
    TabOrder = 4
    object tsServicos: TTabSheet
      Caption = 'Servi'#231'os Contratados'
      object DBGrid_cserv01_serv: TDBGrid
        Left = 0
        Top = 0
        Width = 1026
        Height = 107
        Align = alClient
        DataSource = src_cserv01_serv
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnColExit = DBGrid_cserv01_servColExit
        OnEnter = DBGrid_cserv01_servEnter
        OnExit = DBGrid_cserv01_servExit
        OnKeyPress = DBGrid_cserv01_servKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'CSS_CODSERV'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME'
            ReadOnly = True
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSS_CODIND'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MNOME'
            ReadOnly = True
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSS_UNDSERV'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSS_VALORLIC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSS_QTDSERV'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSS_QTDEST'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSS_QTDHOR_TREINO'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSS_DATCONT'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSS_PERCINDEX'
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INT_VALORCONT'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSS_PDESCFIN'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INT_VALORCONT_DESCFIN'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSS_DTLDESCFIN'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INT_VALORCONT_LIQUIDO'
            Width = 70
            Visible = True
          end>
      end
    end
    object tsProdutos: TTabSheet
      Caption = 'Produtos'
      ImageIndex = 1
      object DBGrid_Merc: TDBGrid
        Left = 0
        Top = 0
        Width = 1046
        Height = 100
        Align = alClient
        DataSource = Src_cserv01_Merc
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnColExit = DBGrid_cserv01_servColExit
        OnExit = DBGrid_cserv01_servExit
        OnKeyPress = DBGrid_cserv01_servKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'CSM_ORDEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSM_CODPRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME'
            Width = 444
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDUND'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSM_QTD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSM_PU'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Visible = True
          end>
      end
    end
  end
  object Src_CSer01: TDataSource
    DataSet = Tb_CSer01
    OnDataChange = Src_CSer01DataChange
    Left = 672
    Top = 80
  end
  object src_cserv01_serv: TDataSource
    DataSet = qr_cserv01_serv
    Left = 512
    Top = 371
  end
  object qr_cserv01_serv: TQuery
    CachedUpdates = True
    AfterInsert = qr_cserv01_servAfterInsert
    BeforeEdit = qr_cserv01_servBeforeEdit
    BeforePost = qr_cserv01_servBeforePost
    BeforeDelete = qr_cserv01_servBeforeDelete
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CADCSER01_SERV.*,PDNOME,MNOME,MSIMBOLO'
      
        ',case when  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=MC' +
        'ODMOE and IDATA<=TO_DATE(SYSDATE) )'
      
        ' is null then (SELECT min(IVLRCOMCPR) from CADIND where ICODMOE=' +
        'MCODMOE and IDATA>TO_DATE(SYSDATE) )'
      
        ' else  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=MCODMOE' +
        ' and IDATA<=TO_DATE(SYSDATE) ) end'
      ' as valor_index'
      ', CSS_PERCINDEX AS INT_VALORCONT'
      ', CSS_PERCINDEX AS INT_VALORCONT_DESCFIN'
      ', CSS_PERCINDEX AS INT_VALORCONT_LIQUIDO'
      ''
      'from CADCSER01_SERV,CADMOE,CADPRO'
      'where CSS_CODSERV=PDCODPRO'
      'AND MCODMOE(+)=CSS_CODIND'
      '')
    UpdateObject = U_cserv01_serv
    Left = 768
    Top = 35
    object qr_cserv01_servCSS_CODEMP: TFloatField
      DisplayLabel = 'C'#243'd Emp'
      FieldName = 'CSS_CODEMP'
      Origin = 'SG_ASSOC.CADCSER01_SERV.CSS_CODEMP'
    end
    object qr_cserv01_servCSS_CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'CSS_CHAVE'
      Origin = 'SG_ASSOC.CADCSER01_SERV.CSS_CHAVE'
    end
    object qr_cserv01_servCSS_ORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'CSS_ORDEM'
      Origin = 'SG_ASSOC.CADCSER01_SERV.CSS_ORDEM'
    end
    object qr_cserv01_servCSS_CODIND: TFloatField
      DisplayLabel = 'C'#243'd Index'
      FieldName = 'CSS_CODIND'
      Origin = 'SG_ASSOC.CADCSER01_SERV.CSS_CODIND'
    end
    object qr_cserv01_servCSS_CODSERV: TFloatField
      DisplayLabel = 'C'#243'd Servi'#231'o'
      FieldName = 'CSS_CODSERV'
      Origin = 'SG_ASSOC.CADCSER01_SERV.CSS_CODSERV'
    end
    object qr_cserv01_servCSS_PDESCFIN: TFloatField
      DisplayLabel = '% Desc. Fin'
      FieldName = 'CSS_PDESCFIN'
      Origin = 'SG_ASSOC.CADCSER01_SERV.CSS_PDESCFIN'
    end
    object qr_cserv01_servCSS_DATCONT: TDateTimeField
      DisplayLabel = 'Data Contrato'
      FieldName = 'CSS_DATCONT'
      Origin = 'SG_ASSOC.CADCSER01_SERV.CSS_DATCONT'
    end
    object qr_cserv01_servCSS_DTLDESCFIN: TDateTimeField
      DisplayLabel = 'Dt.Lim D.Fin'
      FieldName = 'CSS_DTLDESCFIN'
      Origin = 'SG_ASSOC.CADCSER01_SERV.CSS_DTLDESCFIN'
    end
    object qr_cserv01_servPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Servi'#231'o'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 120
    end
    object qr_cserv01_servCSS_PERCINDEX: TFloatField
      DisplayLabel = '% Index'
      FieldName = 'CSS_PERCINDEX'
      Origin = 'SG_ASSOC.CADCSER01_SERV.CSS_PERCINDEX'
    end
    object qr_cserv01_servMNOME: TStringField
      DisplayLabel = 'Indexador'
      FieldName = 'MNOME'
      Size = 30
    end
    object qr_cserv01_servMSIMBOLO: TStringField
      FieldName = 'MSIMBOLO'
      Size = 5
    end
    object qr_cserv01_servVALOR_INDEX: TFloatField
      FieldName = 'VALOR_INDEX'
    end
    object qr_cserv01_servCSS_CODCLI: TFloatField
      FieldName = 'CSS_CODCLI'
    end
    object qr_cserv01_servCSS_QTDSERV: TFloatField
      DisplayLabel = 'Servidores'
      FieldName = 'CSS_QTDSERV'
    end
    object qr_cserv01_servCSS_UNDSERV: TStringField
      DisplayLabel = 'Tipo Unidade'
      FieldName = 'CSS_UNDSERV'
    end
    object qr_cserv01_servCSS_QTDEST: TFloatField
      DisplayLabel = 'Esta'#231#245'es'
      FieldName = 'CSS_QTDEST'
    end
    object qr_cserv01_servCSS_VALORLIC: TFloatField
      DisplayLabel = 'Valor Licen'#231'a'
      FieldName = 'CSS_VALORLIC'
    end
    object qr_cserv01_servINT_VALORCONT: TFloatField
      DisplayLabel = 'Valor Cont'
      FieldName = 'INT_VALORCONT'
    end
    object qr_cserv01_servINT_VALORCONT_DESCFIN: TFloatField
      DisplayLabel = 'Desc.Fin'
      FieldName = 'INT_VALORCONT_DESCFIN'
    end
    object qr_cserv01_servINT_VALORCONT_LIQUIDO: TFloatField
      DisplayLabel = 'Total Liquido'
      FieldName = 'INT_VALORCONT_LIQUIDO'
    end
    object qr_cserv01_servCSS_QTDHOR_TREINO: TFloatField
      DisplayLabel = 'horas Treino'
      FieldName = 'CSS_QTDHOR_TREINO'
    end
  end
  object U_cserv01_serv: TUpdateSQL
    ModifySQL.Strings = (
      'update CADIND'
      'set'
      '  CSS_CODEMP = :CSS_CODEMP,'
      '  CSS_CHAVE = :CSS_CHAVE,'
      '  CSS_ORDEM = :CSS_ORDEM,'
      '  CSS_CODSERV = :CSS_CODSERV,'
      '  CSS_PDESCFIN = :CSS_PDESCFIN,'
      '  CSS_DATCONT = :CSS_DATCONT,'
      '  CSS_DTLDESCFIN = :CSS_DTLDESCFIN,'
      '  CSS_CODIND = :CSS_CODIND,'
      '  CSS_PERCINDEX = :CSS_PERCINDEX,'
      '  CSS_CODCLI = :CSS_CODCLI,'
      '  CSS_QTDSERV = :CSS_QTDSERV,'
      '  CSS_UNDSERV = :CSS_UNDSERV,'
      '  CSS_QTDEST = :CSS_QTDEST,'
      '  CSS_VALORLIC = :CSS_VALORLIC,'
      '  CSS_QTDHOR_TREINO = :CSS_QTDHOR_TREINO'
      'where'
      '  CSS_CODEMP = :OLD_CSS_CODEMP and'
      '  CSS_CHAVE = :OLD_CSS_CHAVE and'
      '  CSS_ORDEM = :OLD_CSS_ORDEM and'
      '  CSS_CODSERV = :OLD_CSS_CODSERV')
    InsertSQL.Strings = (
      'insert into CADIND'
      '  (CSS_CODEMP, CSS_CHAVE, CSS_ORDEM, CSS_CODSERV, CSS_PDESCFIN, '
      'CSS_DATCONT, '
      '   CSS_DTLDESCFIN, CSS_CODIND, CSS_PERCINDEX, CSS_CODCLI, '
      'CSS_QTDSERV, '
      '   CSS_UNDSERV, CSS_QTDEST, CSS_VALORLIC, CSS_QTDHOR_TREINO)'
      'values'
      '  (:CSS_CODEMP, :CSS_CHAVE, :CSS_ORDEM, :CSS_CODSERV, '
      ':CSS_PDESCFIN, :CSS_DATCONT, '
      '   :CSS_DTLDESCFIN, :CSS_CODIND, :CSS_PERCINDEX, :CSS_CODCLI, '
      ':CSS_QTDSERV, '
      '   :CSS_UNDSERV, :CSS_QTDEST, :CSS_VALORLIC, :CSS_QTDHOR_TREINO)')
    DeleteSQL.Strings = (
      'delete from CADIND'
      'where'
      '  CSS_CODEMP = :OLD_CSS_CODEMP and'
      '  CSS_CHAVE = :OLD_CSS_CHAVE and'
      '  CSS_ORDEM = :OLD_CSS_ORDEM and'
      '  CSS_CODSERV = :OLD_CSS_CODSERV')
    Left = 796
    Top = 35
  end
  object Tb_CSer01: TQuery
    CachedUpdates = True
    BeforePost = Tb_CSer01BeforePost
    AfterPost = c
    BeforeCancel = Tb_CSer01BeforeCancel
    AfterCancel = c
    AfterDelete = c
    OnCalcFields = Tb_CSer01CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CADCSER01.*,PDNOME,CRAZAO,CCEP'
      ',NVL( ('
      'select'
      
        ' sum(round((VALOR_INDEX*CSS_PERCINDEX),2))        as Total_valor' +
        '_cont'
      ' from ('
      'Select CSS_PERCINDEX ,case when  (SELECT max(IVLRCOMCPR)'
      
        'from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE)' +
        ' )   is null then'
      
        '(SELECT min(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODIND and' +
        ' IDATA>TO_DATE(SYSDATE) )'
      
        'else  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODI' +
        'ND and IDATA<=TO_DATE(SYSDATE) ) end'
      
        ' as valor_index  from CADCSER01_SERV  where CSS_CODCLI=CS_CODCLI' +
        '  AND CSS_CHAVE=CS_CHAVE'
      'and CSS_CODEMP=CS_CODEMP'
      ' )  ),0) AS TOTAL_VALOR_CONT'
      ''
      ',NVL( ('
      'select'
      
        'sum(round( (round((VALOR_INDEX*CSS_PERCINDEX),2)*CSS_PDESCFIN/10' +
        '0),2))     as Total_valor_cont_desc'
      ' from ('
      
        'Select CSS_PERCINDEX,CSS_PDESCFIN ,case when  (SELECT max(IVLRCO' +
        'MCPR)'
      
        'from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE)' +
        ' )   is null then'
      
        '(SELECT min(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODIND and' +
        ' IDATA>TO_DATE(SYSDATE) )'
      
        'else  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODI' +
        'ND and IDATA<=TO_DATE(SYSDATE) ) end'
      
        ' as valor_index  from CADCSER01_SERV  where CSS_CODCLI=CS_CODCLI' +
        '  AND CSS_CHAVE=CS_CHAVE'
      'and CSS_CODEMP=CS_CODEMP'
      ' )  ),0) AS TOTAL_VALOR_CONT_desc'
      ''
      ',NVL( ('
      'select'
      
        'sum(round((VALOR_INDEX*CSS_PERCINDEX),2)-round( (round((VALOR_IN' +
        'DEX*CSS_PERCINDEX),2)*CSS_PDESCFIN/100),2))'
      '    as Total_valor_liq'
      ' from ('
      
        'Select CSS_PERCINDEX,CSS_PDESCFIN ,case when  (SELECT max(IVLRCO' +
        'MCPR)'
      
        'from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE)' +
        ' )   is null then'
      
        '(SELECT min(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODIND and' +
        ' IDATA>TO_DATE(SYSDATE) )'
      
        'else  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODI' +
        'ND and IDATA<=TO_DATE(SYSDATE) ) end'
      
        ' as valor_index  from CADCSER01_SERV  where CSS_CODCLI=CS_CODCLI' +
        '  AND CSS_CHAVE=CS_CHAVE'
      'and CSS_CODEMP=CS_CODEMP'
      ' )  ),0) AS TOTAL_VALOR_liquido'
      
        ',nvl( (select sum(nvl(CSS_VALORLIC,0)) from CADCSER01_SERV where' +
        ' CSS_CODCLI=CS_CODCLI  '
      
        ' AND CSS_CHAVE=CS_CHAVE and CSS_CODEMP=CS_CODEMP),0) AS TOTAL_LI' +
        'C'
      ''
      ' from CADCSER01,CADPRO,CADCLI where PDCODPRO=CS_CODSER'
      'AND CCODCLI=CS_CODCLI'
      ''
      '')
    UpdateObject = U_CSer01
    Left = 618
    Top = 82
    object Tb_CSer01CS_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CS_CODEMP'
      Origin = 'SG_ASSOC.CADCSER01.CS_CODEMP'
    end
    object Tb_CSer01CS_CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'CS_CHAVE'
      Origin = 'SG_ASSOC.CADCSER01.CS_CHAVE'
    end
    object Tb_CSer01CS_DATCON: TDateTimeField
      DisplayLabel = 'Data Contrato'
      FieldName = 'CS_DATCON'
      Origin = 'SG_ASSOC.CADCSER01.CS_DATCON'
    end
    object Tb_CSer01CS_CODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'CS_CODCLI'
      Origin = 'SG_ASSOC.CADCSER01.CS_CODCLI'
    end
    object Tb_CSer01CS_DATVAL: TDateTimeField
      DisplayLabel = 'Data Validade'
      FieldName = 'CS_DATVAL'
      Origin = 'SG_ASSOC.CADCSER01.CS_DATVAL'
    end
    object Tb_CSer01CS_TIPO: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'CS_TIPO'
      Origin = 'SG_ASSOC.CADCSER01.CS_TIPO'
    end
    object Tb_CSer01CS_STATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'CS_STATUS'
      Origin = 'SG_ASSOC.CADCSER01.CS_STATUS'
    end
    object Tb_CSer01razsoc: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldKind = fkCalculated
      FieldName = 'razsoc'
      Size = 53
      Calculated = True
    end
    object Tb_CSer01CS_DIAV: TFloatField
      FieldName = 'CS_DIAV'
      Origin = 'SG_ASSOC.CADCSER01.CS_DIAV'
    end
    object Tb_CSer01CS_MESV: TFloatField
      FieldName = 'CS_MESV'
      Origin = 'SG_ASSOC.CADCSER01.CS_MESV'
    end
    object Tb_CSer01CS_CODUSR_INC: TFloatField
      FieldName = 'CS_CODUSR_INC'
      Origin = 'SG_ASSOC.CADCSER01.CS_CODUSR_INC'
    end
    object Tb_CSer01CS_NOMUSR_INC: TStringField
      FieldName = 'CS_NOMUSR_INC'
      Origin = 'SG_ASSOC.CADCSER01.CS_NOMUSR_INC'
      Size = 40
    end
    object Tb_CSer01CS_DATHOR_INC: TDateTimeField
      FieldName = 'CS_DATHOR_INC'
      Origin = 'SG_ASSOC.CADCSER01.CS_DATHOR_INC'
    end
    object Tb_CSer01CS_CODUSR_ALT: TFloatField
      FieldName = 'CS_CODUSR_ALT'
      Origin = 'SG_ASSOC.CADCSER01.CS_CODUSR_ALT'
    end
    object Tb_CSer01CS_NOMUSR_ALT: TStringField
      FieldName = 'CS_NOMUSR_ALT'
      Origin = 'SG_ASSOC.CADCSER01.CS_NOMUSR_ALT'
      Size = 40
    end
    object Tb_CSer01CS_DATHOR_ALT: TDateTimeField
      FieldName = 'CS_DATHOR_ALT'
      Origin = 'SG_ASSOC.CADCSER01.CS_DATHOR_ALT'
    end
    object Tb_CSer01CS_NUMPROPOSTA: TStringField
      FieldName = 'CS_NUMPROPOSTA'
    end
    object Tb_CSer01CS_REPLEGAL: TStringField
      FieldName = 'CS_REPLEGAL'
      Size = 60
    end
    object Tb_CSer01CS_REPLEGAL_CPF: TStringField
      FieldName = 'CS_REPLEGAL_CPF'
      Size = 14
    end
    object Tb_CSer01CS_REPLEGAL_SEXO: TStringField
      FieldName = 'CS_REPLEGAL_SEXO'
      Size = 1
    end
    object Tb_CSer01CS_REPLEGAL_RG: TStringField
      FieldName = 'CS_REPLEGAL_RG'
      Size = 60
    end
    object Tb_CSer01CS_PRAZOENT: TMemoField
      FieldName = 'CS_PRAZOENT'
      Origin = 'SG_ASSOC.CADCSER01.CS_PRAZOENT'
      BlobType = ftMemo
      Size = 4000
    end
    object Tb_CSer01CS_FORMAPAG: TMemoField
      FieldName = 'CS_FORMAPAG'
      Origin = 'SG_ASSOC.CADCSER01.CS_FORMAPAG'
      BlobType = ftMemo
      Size = 3000
    end
    object Tb_CSer01TOTAL_VALOR_CONT: TFloatField
      FieldName = 'TOTAL_VALOR_CONT'
    end
    object Tb_CSer01TOTAL_VALOR_CONT_DESC: TFloatField
      FieldName = 'TOTAL_VALOR_CONT_DESC'
    end
    object Tb_CSer01TOTAL_VALOR_LIQUIDO: TFloatField
      FieldName = 'TOTAL_VALOR_LIQUIDO'
    end
    object Tb_CSer01obsvenc: TStringField
      FieldKind = fkCalculated
      FieldName = 'obsvenc'
      Size = 300
      Calculated = True
    end
    object Tb_CSer01CS_CODSER: TFloatField
      FieldName = 'CS_CODSER'
    end
    object Tb_CSer01PDNOME: TStringField
      FieldName = 'PDNOME'
      Size = 120
    end
    object Tb_CSer01CRAZAO: TStringField
      FieldName = 'CRAZAO'
      Size = 60
    end
    object Tb_CSer01CCEP: TStringField
      FieldName = 'CCEP'
      Size = 9
    end
    object Tb_CSer01CS_DTINICIO_EMISSAO: TDateTimeField
      FieldName = 'CS_DTINICIO_EMISSAO'
    end
    object Tb_CSer01CS_CODBCO_PREF: TFloatField
      FieldName = 'CS_CODBCO_PREF'
    end
    object Tb_CSer01CS_TIPO_DOCUMENTO: TStringField
      FieldName = 'CS_TIPO_DOCUMENTO'
    end
    object Tb_CSer01CS_CODEMP_PREF: TFloatField
      FieldName = 'CS_CODEMP_PREF'
    end
    object Tb_CSer01nombco_pref: TStringField
      FieldName = 'nombco_pref'
      Size = 60
    end
    object Tb_CSer01nomemp_pref: TStringField
      FieldName = 'nomemp_pref'
      Size = 100
    end
  end
  object U_CSer01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCSER01'
      'set'
      '  CS_CODEMP = :CS_CODEMP,'
      '  CS_CODCLI = :CS_CODCLI,'
      '  CS_CHAVE = :CS_CHAVE,'
      '  CS_DATCON = :CS_DATCON,'
      '  CS_DATVAL = :CS_DATVAL,'
      '  CS_TIPO = :CS_TIPO,'
      '  CS_DIAV = :CS_DIAV,'
      '  CS_MESV = :CS_MESV,'
      '  CS_STATUS = :CS_STATUS,'
      '  CS_CODUSR_INC = :CS_CODUSR_INC,'
      '  CS_CODSER = :CS_CODSER,'
      '  CS_NOMUSR_INC = :CS_NOMUSR_INC,'
      '  CS_DATHOR_INC = :CS_DATHOR_INC,'
      '  CS_CODUSR_ALT = :CS_CODUSR_ALT,'
      '  CS_NOMUSR_ALT = :CS_NOMUSR_ALT,'
      '  CS_DATHOR_ALT = :CS_DATHOR_ALT,'
      '  CS_FORMAPAG = :CS_FORMAPAG,'
      '  CS_NUMPROPOSTA = :CS_NUMPROPOSTA,'
      '  CS_REPLEGAL = :CS_REPLEGAL,'
      '  CS_REPLEGAL_SEXO = :CS_REPLEGAL_SEXO,'
      '  CS_REPLEGAL_CPF = :CS_REPLEGAL_CPF,'
      '  CS_REPLEGAL_RG = :CS_REPLEGAL_RG,'
      '  CS_PRAZOENT = :CS_PRAZOENT'
      ',CS_DTINICIO_EMISSAO = :CS_DTINICIO_EMISSAO'
      ',CS_CODBCO_PREF = :CS_CODBCO_PREF'
      ',CS_TIPO_DOCUMENTO = :CS_TIPO_DOCUMENTO'
      ',CS_CODEMP_PREF = :CS_CODEMP_PREF'
      ''
      'where'
      '  CS_CODEMP = :OLD_CS_CODEMP and'
      '  CS_CODCLI = :OLD_CS_CODCLI and'
      '  CS_CHAVE = :OLD_CS_CHAVE')
    InsertSQL.Strings = (
      'insert into CADCSER01'
      
        '  (CS_CODEMP, CS_CODCLI, CS_CHAVE, CS_DATCON, CS_DATVAL, CS_TIPO' +
        ', '
      'CS_DIAV, '
      '   CS_MESV, CS_STATUS, CS_CODUSR_INC, CS_CODSER, CS_NOMUSR_INC, '
      'CS_DATHOR_INC, '
      '   CS_CODUSR_ALT, CS_NOMUSR_ALT, CS_DATHOR_ALT, CS_FORMAPAG, '
      'CS_NUMPROPOSTA, '
      '   CS_REPLEGAL, CS_REPLEGAL_SEXO, CS_REPLEGAL_CPF, '
      'CS_REPLEGAL_RG, CS_PRAZOENT'
      ',CS_DTINICIO_EMISSAO'
      ',CS_CODBCO_PREF'
      ',CS_TIPO_DOCUMENTO'
      ',CS_CODEMP_PREF'
      ')'
      'values'
      '  (:CS_CODEMP, :CS_CODCLI, :CS_CHAVE, :CS_DATCON, :CS_DATVAL,'
      ':CS_TIPO,'
      '   :CS_DIAV, :CS_MESV, :CS_STATUS, :CS_CODUSR_INC, :CS_CODSER,'
      ':CS_NOMUSR_INC,'
      
        '   :CS_DATHOR_INC, :CS_CODUSR_ALT, :CS_NOMUSR_ALT, :CS_DATHOR_AL' +
        'T,'
      ':CS_FORMAPAG,'
      '   :CS_NUMPROPOSTA, :CS_REPLEGAL, :CS_REPLEGAL_SEXO,'
      ':CS_REPLEGAL_CPF,'
      '   :CS_REPLEGAL_RG, :CS_PRAZOENT'
      ',:CS_DTINICIO_EMISSAO'
      ',:CS_CODBCO_PREF'
      ',:CS_TIPO_DOCUMENTO'
      ',:CS_CODEMP_PREF'
      '   )')
    DeleteSQL.Strings = (
      'delete from CADCSER01'
      'where'
      '  CS_CODEMP = :OLD_CS_CODEMP and'
      '  CS_CODCLI = :OLD_CS_CODCLI and'
      '  CS_CHAVE = :OLD_CS_CHAVE')
    Left = 646
    Top = 82
  end
  object ReplaceDialog1: TReplaceDialog
    Left = 352
    Top = 88
  end
  object RxMemoryData1: TRxMemoryData
    FieldDefs = <>
    Left = 804
    Top = 77
  end
  object src_grade: TDataSource
    Left = 972
    Top = 85
  end
  object mem_grade: TRxMemoryData
    FieldDefs = <>
    Left = 996
    Top = 85
  end
  object WordApp: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 416
    Top = 24
  end
  object WordDoc: TWordDocument
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 472
    Top = 24
  end
  object Tb_CSer01_imagem: TADOQuery
    Connection = DM1_ADO.ADOConnection1
    Parameters = <
      item
        Name = 'CODEMP'
        DataType = ftString
        Size = -1
        Value = ''
      end
      item
        Name = 'CODCLI'
        DataType = ftString
        Size = -1
        Value = ''
      end
      item
        Name = 'CHAVE'
        DataType = ftString
        Size = -1
        Value = ''
      end>
    SQL.Strings = (
      'Select * from CADCSER01_IMAGEM'
      ' where CSI_CODEMP=:CODEMP'
      ' and CSI_CODCLI=:CODCLI'
      ' and CSI_CHAVE=:CHAVE'
      ' order by CSI_SEQ '
      '')
    Left = 872
    Top = 263
    object Tb_CSer01_imagemCSI_CODEMP: TBCDField
      FieldName = 'CSI_CODEMP'
      Precision = 10
      Size = 0
    end
    object Tb_CSer01_imagemCSI_CODCLI: TFloatField
      FieldName = 'CSI_CODCLI'
    end
    object Tb_CSer01_imagemCSI_CHAVE: TFloatField
      FieldName = 'CSI_CHAVE'
    end
    object Tb_CSer01_imagemCSI_SEQ: TFloatField
      FieldName = 'CSI_SEQ'
    end
    object Tb_CSer01_imagemCSI_OBS: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'CSI_OBS'
      Size = 150
    end
    object Tb_CSer01_imagemCSI_IMAGEM: TBlobField
      FieldName = 'CSI_IMAGEM'
    end
    object Tb_CSer01_imagemCSI_NOMEORI: TStringField
      FieldName = 'CSI_NOMEORI'
      Size = 254
    end
  end
  object Src_CSer01_imagem: TDataSource
    DataSet = Tb_CSer01_imagem
    Left = 852
    Top = 248
  end
  object qr_cserv01_Merc: TQuery
    CachedUpdates = True
    AfterInsert = qr_cserv01_MercAfterInsert
    BeforeEdit = qr_cserv01_MercBeforeEdit
    BeforePost = qr_cserv01_MercBeforePost
    BeforeDelete = qr_cserv01_MercBeforeDelete
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CSM_CODEMP,CSM_CHAVE,CSM_CODCLI,CSM_ORDEM'
      
        '       ,CSM_CODPRO,PDNOME,PDUND,CSM_QTD,CSM_PU,ROUND(CSM_QTD*CSM' +
        '_PU,2) AS TOTAL'
      ' from CADCSER01_MERC,CADPRO'
      'WHERE PDCODPRO=CSM_CODPRO'
      ''
      '')
    UpdateObject = U_cserv01_Merc
    Left = 776
    Top = 67
    object qr_cserv01_MercCSM_CODEMP: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CSM_CODEMP'
    end
    object qr_cserv01_MercCSM_CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'CSM_CHAVE'
    end
    object qr_cserv01_MercCSM_CODCLI: TFloatField
      DisplayLabel = 'C'#243'd Cliente'
      FieldName = 'CSM_CODCLI'
    end
    object qr_cserv01_MercCSM_ORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'CSM_ORDEM'
    end
    object qr_cserv01_MercCSM_CODPRO: TFloatField
      DisplayLabel = 'C'#243'd Prod'
      FieldName = 'CSM_CODPRO'
    end
    object qr_cserv01_MercPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Size = 120
    end
    object qr_cserv01_MercPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Size = 3
    end
    object qr_cserv01_MercCSM_QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'CSM_QTD'
    end
    object qr_cserv01_MercCSM_PU: TFloatField
      DisplayLabel = 'Pco.Unit'#225'rio'
      FieldName = 'CSM_PU'
    end
    object qr_cserv01_MercTOTAL: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'TOTAL'
    end
  end
  object U_cserv01_Merc: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCSER01_MERC'
      'set'
      '  CSM_CODEMP = :CSM_CODEMP,'
      '  CSM_CHAVE = :CSM_CHAVE,'
      '  CSM_CODCLI = :CSM_CODCLI,'
      '  CSM_ORDEM = :CSM_ORDEM,'
      '  CSM_CODPRO = :CSM_CODPRO,'
      '  CSM_QTD = :CSM_QTD,'
      '  CSM_PU = :CSM_PU'
      'where'
      '  CSM_CODEMP = :OLD_CSM_CODEMP and'
      '  CSM_CHAVE = :OLD_CSM_CHAVE and'
      '  CSM_CODCLI = :OLD_CSM_CODCLI and'
      '  CSM_CODPRO = :OLD_CSM_CODPRO')
    InsertSQL.Strings = (
      'insert into CADCSER01_MERC'
      '  (CSM_CODEMP, CSM_CHAVE, CSM_CODCLI, CSM_ORDEM, CSM_CODPRO, '
      'CSM_QTD, CSM_PU)'
      'values'
      
        '  (:CSM_CODEMP, :CSM_CHAVE, :CSM_CODCLI, :CSM_ORDEM, :CSM_CODPRO' +
        ', '
      ':CSM_QTD, '
      '   :CSM_PU)')
    DeleteSQL.Strings = (
      'delete from CADCSER01_MERC'
      'where'
      '  CSM_CODEMP = :OLD_CSM_CODEMP and'
      '  CSM_CHAVE = :OLD_CSM_CHAVE and'
      '  CSM_CODCLI = :OLD_CSM_CODCLI and'
      '  CSM_CODPRO = :OLD_CSM_CODPRO')
    Left = 804
    Top = 67
  end
  object Src_cserv01_Merc: TDataSource
    DataSet = qr_cserv01_Merc
    Left = 832
    Top = 75
  end
end

object Frm_Caucao_Extorno: TFrm_Caucao_Extorno
  Left = 71
  Top = 139
  Width = 1375
  Height = 540
  Caption = 'Extorno de Titulo Caucionado'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1367
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 1365
      Height = 34
      Align = alTop
      Alignment = taCenter
      Caption = 'Extorno de Titulos Caucionados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -30
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 1367
    Height = 468
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Dados Gerais'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 1359
        Height = 440
        Align = alClient
        Caption = 'Titulos:'
        TabOrder = 0
        object DBGrid_extorno: TDBGrid
          Left = 2
          Top = 52
          Width = 1355
          Height = 386
          Align = alClient
          DataSource = src_caucao_extorno
          Options = [dgEditing, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
              FieldName = 'numero'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'desd'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dup'
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TCD_ID_TIT'
              Width = 57
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome_cliente'
              Width = 307
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dt_vcto'
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'parcela'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_deb'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'conta_debito'
              Width = 139
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_cred'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'conta_credito'
              Width = 134
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 2
          Top = 15
          Width = 1355
          Height = 37
          Align = alTop
          TabOrder = 1
          object StaticText1: TStaticText
            Left = 13
            Top = 2
            Width = 71
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'N'#250'mero'
            TabOrder = 0
          end
          object edt_numero: TEdit
            Left = 13
            Top = 18
            Width = 71
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            Text = 'edt_numero'
            OnExit = edt_numeroExit
          end
          object StaticText2: TStaticText
            Left = 83
            Top = 2
            Width = 32
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Desd'
            TabOrder = 2
          end
          object edt_desd: TEdit
            Left = 83
            Top = 18
            Width = 32
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            Text = 'edt_numero'
            OnExit = edt_desdExit
          end
          object StaticText3: TStaticText
            Left = 114
            Top = 2
            Width = 30
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Dup'
            TabOrder = 4
          end
          object edt_dup: TEdit
            Left = 114
            Top = 18
            Width = 30
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
            Text = 'edt_numero'
            OnExit = edt_dupExit
          end
          object StaticText4: TStaticText
            Left = 143
            Top = 2
            Width = 60
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Id Titulo'
            TabOrder = 6
          end
          object edt_id_titulo: TEdit
            Left = 143
            Top = 18
            Width = 60
            Height = 19
            TabStop = False
            Color = 11796403
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 7
            Text = 'edt_numero'
          end
          object StaticText6: TStaticText
            Left = 509
            Top = 2
            Width = 82
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Valor'
            TabOrder = 8
          end
          object StaticText7: TStaticText
            Left = 590
            Top = 2
            Width = 80
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Data de Vcto'
            TabOrder = 9
          end
          object edt_dt_vcto: TEdit
            Left = 590
            Top = 18
            Width = 80
            Height = 19
            TabStop = False
            Color = 11796403
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 10
            Text = 'edt_numero'
          end
          object StaticText8: TStaticText
            Left = 669
            Top = 2
            Width = 64
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Parcela'
            TabOrder = 11
          end
          object edt_parcela: TEdit
            Left = 669
            Top = 18
            Width = 64
            Height = 19
            TabStop = False
            Color = 11796403
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 12
            Text = 'edt_numero'
          end
          object StaticText9: TStaticText
            Left = 732
            Top = 2
            Width = 76
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Valor Debito'
            TabOrder = 13
          end
          object edt_valor_debito: TEdit
            Left = 732
            Top = 18
            Width = 76
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 14
            Text = '0.00'
          end
          object StaticText10: TStaticText
            Left = 807
            Top = 2
            Width = 140
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Conta Debito'
            TabOrder = 15
          end
          object edt_conta_debito: TEdit
            Left = 807
            Top = 18
            Width = 140
            Height = 19
            TabStop = False
            Color = 11796403
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 16
            Text = '0.00'
          end
          object StaticText11: TStaticText
            Left = 946
            Top = 2
            Width = 76
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Vlr Cred/Prev'
            TabOrder = 17
          end
          object edt_valor_cred_prev: TEdit
            Left = 946
            Top = 18
            Width = 76
            Height = 19
            TabStop = False
            Color = 11796403
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 18
            Text = '0.00'
          end
          object StaticText12: TStaticText
            Left = 1021
            Top = 2
            Width = 137
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Conta Credito Previsto'
            TabOrder = 19
          end
          object edt_conta_cred_prev: TEdit
            Left = 1021
            Top = 18
            Width = 137
            Height = 19
            TabStop = False
            Color = 11796403
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 20
            Text = '0.00'
          end
          object StaticText5: TStaticText
            Left = 202
            Top = 2
            Width = 308
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Nome do Cliente:'
            TabOrder = 21
          end
          object edt_nome_cli: TEdit
            Left = 202
            Top = 18
            Width = 308
            Height = 19
            TabStop = False
            Color = 11796403
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 22
            Text = 'edt_numero'
          end
          object edt_valor: TEdit
            Left = 509
            Top = 18
            Width = 82
            Height = 19
            TabStop = False
            Color = 11796403
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 23
            Text = 'edt_numero'
          end
          object SAIR: TBitBtn
            Left = 1256
            Top = 8
            Width = 97
            Height = 22
            Caption = 'Sair'
            TabOrder = 24
            TabStop = False
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
          object sbn_extornar: TBitBtn
            Left = 1161
            Top = 10
            Width = 93
            Height = 22
            Caption = 'Extornar'
            TabOrder = 25
            OnClick = sbn_extornarClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333FFFFF3333333333000003333333333F777773FF333333008877700
              33333337733FFF773F33330887000777033333733F777FFF73F330880F9F9F07
              703337F37733377FF7F33080F00000F07033373733777337F73F087F0091100F
              77037F3737333737FF7F08090919110907037F737F3333737F7F0F0F0999910F
              07037F737F3333737F7F0F090F99190908037F737FF33373737F0F7F00FF900F
              780373F737FFF737F3733080F00000F0803337F73377733737F330F80F9F9F08
              8033373F773337733733330F8700078803333373FF77733F733333300FFF8800
              3333333773FFFF77333333333000003333333333377777333333}
            NumGlyphs = 2
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Configura'#231#245'es'
      ImageIndex = 1
      object sbt_salva_conf: TSpeedButton
        Left = 375
        Top = 122
        Width = 194
        Height = 22
        Hint = 'Salvar Configura'#231#227'o'
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
        OnClick = sbt_salva_confClick
      end
      object GroupBox_deb: TGroupBox
        Left = 0
        Top = 0
        Width = 1359
        Height = 60
        Align = alTop
        Caption = 'Dados Para D'#233'bitos:'
        TabOrder = 0
        object Label11: TLabel
          Left = 13
          Top = 18
          Width = 70
          Height = 13
          Caption = 'Departamento:'
        end
        object Label12: TLabel
          Left = 483
          Top = 18
          Width = 79
          Height = 13
          Caption = 'Centro de Custo:'
        end
        object Label13: TLabel
          Left = 12
          Top = 37
          Width = 121
          Height = 13
          Caption = 'Descri'#231#227'o do Movimento:'
        end
        object edt_coddep_deb: TEdit
          Left = 87
          Top = 16
          Width = 59
          Height = 19
          Hint = 'Pressione F3 para consultar'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = edt_coddep_debExit
          OnKeyDown = edt_coddep_debKeyDown
        end
        object edt_nomdep_deb: TEdit
          Left = 145
          Top = 16
          Width = 300
          Height = 19
          TabStop = False
          Color = 11796403
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object edt_codccu_deb: TEdit
          Left = 569
          Top = 16
          Width = 59
          Height = 19
          Hint = 'Pressione F3 para consultar'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnExit = edt_codccu_debExit
          OnKeyDown = edt_codccu_debKeyDown
        end
        object edt_nomccu_deb: TEdit
          Left = 627
          Top = 16
          Width = 270
          Height = 19
          TabStop = False
          Color = 11796403
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object edt_natdc_deb: TEdit
          Left = 896
          Top = 16
          Width = 23
          Height = 19
          TabStop = False
          Color = 11796403
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object edt_descmv_deb: TEdit
          Left = 145
          Top = 34
          Width = 774
          Height = 19
          Hint = 'Pressione F2 para consultar'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
      end
      object GroupBox_cred: TGroupBox
        Left = 0
        Top = 60
        Width = 1359
        Height = 58
        Align = alTop
        Caption = 'Dados Para Cr'#233'dito:'
        TabOrder = 1
        object Label9: TLabel
          Left = 13
          Top = 18
          Width = 70
          Height = 13
          Caption = 'Departamento:'
        end
        object Label10: TLabel
          Left = 483
          Top = 18
          Width = 79
          Height = 13
          Caption = 'Centro de Custo:'
        end
        object Label14: TLabel
          Left = 12
          Top = 37
          Width = 121
          Height = 13
          Caption = 'Descri'#231#227'o do Movimento:'
        end
        object edt_coddep_cred: TEdit
          Left = 87
          Top = 16
          Width = 59
          Height = 19
          Hint = 'Pressione F3 para consultar'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = edt_coddep_credExit
          OnKeyDown = edt_coddep_credKeyDown
        end
        object edt_nomdep_cred: TEdit
          Left = 145
          Top = 16
          Width = 300
          Height = 19
          TabStop = False
          Color = 11796403
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object edt_codccu_cred: TEdit
          Left = 569
          Top = 16
          Width = 59
          Height = 19
          Hint = 'Pressione F3 para consultar'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnExit = edt_codccu_credExit
          OnKeyDown = edt_codccu_credKeyDown
        end
        object edt_nomccu_cred: TEdit
          Left = 627
          Top = 16
          Width = 270
          Height = 19
          TabStop = False
          Color = 11796403
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object edt_natdc_cred: TEdit
          Left = 896
          Top = 16
          Width = 23
          Height = 19
          TabStop = False
          Color = 11796403
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object edt_descmv_cred: TEdit
          Left = 145
          Top = 34
          Width = 774
          Height = 19
          Hint = 'Pressione F2 para consultar'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
      end
    end
  end
  object cds_caucao_extorno: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 560
    Top = 205
    object cds_caucao_extornonumero: TFloatField
      DisplayLabel = 'Numero'
      FieldName = 'numero'
    end
    object cds_caucao_extornodesd: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'desd'
      Size = 2
    end
    object cds_caucao_extornodup: TIntegerField
      DisplayLabel = 'Dup'
      FieldName = 'dup'
    end
    object cds_caucao_extornoTCD_ID_TIT: TFloatField
      DisplayLabel = 'Chave Id do Titulo'
      FieldName = 'TCD_ID_TIT'
    end
    object cds_caucao_extornonome_cliente: TStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'nome_cliente'
      Size = 100
    end
    object cds_caucao_extornovalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
    end
    object cds_caucao_extornodt_vcto: TDateTimeField
      DisplayLabel = 'Dt Vcto'
      FieldName = 'dt_vcto'
    end
    object cds_caucao_extornoparcela: TStringField
      DisplayLabel = 'Parcela'
      FieldName = 'parcela'
      Size = 10
    end
    object cds_caucao_extornovalor_deb: TFloatField
      FieldName = 'valor_deb'
    end
    object cds_caucao_extornoconta_debito: TStringField
      FieldName = 'conta_debito'
      Size = 100
    end
    object cds_caucao_extornovalor_cred: TFloatField
      FieldName = 'valor_cred'
    end
    object cds_caucao_extornoconta_credito: TStringField
      FieldName = 'conta_credito'
      Size = 100
    end
    object cds_caucao_extornoTCE_CHAVE_ID_REMESSA: TFloatField
      FieldName = 'TCE_CHAVE_ID_REMESSA'
    end
    object cds_caucao_extornoTCE_CODCAI_DEBITO: TFloatField
      FieldName = 'TCE_CODCAI_DEBITO'
    end
    object cds_caucao_extornoTCE_ID_LDR_DEBITO: TFloatField
      FieldName = 'TCE_ID_LDR_DEBITO'
    end
    object cds_caucao_extornoTCE_VALOR_DEBITO: TFloatField
      FieldName = 'TCE_VALOR_DEBITO'
    end
    object cds_caucao_extornoTCE_CODCAI_CREDITO: TFloatField
      FieldName = 'TCE_CODCAI_CREDITO'
    end
    object cds_caucao_extornoTCE_ID_LDR_CREDITO: TFloatField
      FieldName = 'TCE_ID_LDR_CREDITO'
    end
    object cds_caucao_extornoTCE_VALOR_CREDITO: TFloatField
      FieldName = 'TCE_VALOR_CREDITO'
    end
  end
  object src_caucao_extorno: TDataSource
    DataSet = cds_caucao_extorno
    Left = 640
    Top = 131
  end
end

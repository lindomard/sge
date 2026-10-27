object Frm_Venda_PayGo: TFrm_Venda_PayGo
  Left = 245
  Top = 75
  Width = 1271
  Height = 651
  Caption = 'PDV - Checkout & TEF PayGo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1263
    Height = 620
    ActivePage = tsVendas
    Align = alClient
    TabOrder = 0
    object tsVendas: TTabSheet
      Caption = '  Vendas e Pagamentos  '
      object gb_fechar_venda: TGroupBox
        Left = 8
        Top = 8
        Width = 320
        Height = 570
        Caption = ' Dados da Venda '
        TabOrder = 0
        object Label3: TLabel
          Left = 16
          Top = 28
          Width = 49
          Height = 15
          Caption = 'Venda ID:'
        end
        object Label9: TLabel
          Left = 101
          Top = 28
          Width = 88
          Height = 15
          Caption = 'Total Venda (R$):'
        end
        object Label5: TLabel
          Left = 16
          Top = 80
          Width = 70
          Height = 15
          Caption = 'Observa'#231#245'es:'
        end
        object Label1: TLabel
          Left = 16
          Top = 156
          Width = 94
          Height = 15
          Caption = 'Valor Parcela (R$):'
        end
        object Label2: TLabel
          Left = 168
          Top = 156
          Width = 117
          Height = 15
          Caption = 'Forma de Pagamento:'
        end
        object Label10: TLabel
          Left = 16
          Top = 460
          Width = 115
          Height = 15
          Caption = 'C'#243'digoo Autoriza'#231#227'o:'
        end
        object Label16: TLabel
          Left = 200
          Top = 30
          Width = 72
          Height = 15
          Caption = 'Total Tef (R$):'
        end
        object bbEnviarVenda: TButton
          Left = 16
          Top = 216
          Width = 288
          Height = 32
          Caption = 'Enviar Pagamento (TEF)'
          TabOrder = 0
          OnClick = bbEnviarVendaClick
        end
        object bbConfirmarVenda: TButton
          Left = 16
          Top = 256
          Width = 288
          Height = 32
          Caption = 'Confirmar Venda'
          TabOrder = 1
          Visible = False
          OnClick = bbConfirmarVendaClick
        end
        object bbNaoConfirmar: TButton
          Left = 16
          Top = 296
          Width = 288
          Height = 32
          Caption = 'N'#227'o Confirmar Transa'#231#227'o'
          TabOrder = 2
          Visible = False
          OnClick = bbNaoConfirmarClick
        end
        object bbCancelar: TButton
          Left = 16
          Top = 336
          Width = 288
          Height = 32
          Caption = 'Cancelar / Estornar Venda'
          TabOrder = 3
          OnClick = bbCancelarClick
        end
        object edt_autorizacao: TEdit
          Left = 16
          Top = 480
          Width = 288
          Height = 23
          TabOrder = 4
        end
        object DBE_chaveId: TDBEdit
          Left = 17
          Top = 48
          Width = 86
          Height = 23
          Color = clBtnFace
          DataField = 'chaveId'
          DataSource = DM_CDS.src_pedido_cab
          Enabled = False
          TabOrder = 5
        end
        object DBE_valor_pedido: TDBEdit
          Left = 103
          Top = 49
          Width = 86
          Height = 23
          Color = clBtnFace
          DataField = 'valor_pedido'
          DataSource = DM_CDS.src_pedido_cab
          Enabled = False
          TabOrder = 6
        end
        object DBE_valor_tef: TDBEdit
          Left = 195
          Top = 49
          Width = 86
          Height = 23
          Color = clBtnFace
          DataField = 'valor_tef'
          DataSource = DM_CDS.src_pedido_cab
          Enabled = False
          TabOrder = 7
        end
        object DBMemo3: TDBMemo
          Left = 20
          Top = 97
          Width = 262
          Height = 43
          Color = clBtnFace
          DataField = 'observacao'
          DataSource = DM_CDS.src_pedido_cab
          Enabled = False
          TabOrder = 8
        end
        object DBEd_valor: TDBEdit
          Left = 20
          Top = 175
          Width = 102
          Height = 23
          Color = clBtnFace
          DataField = 'valor'
          DataSource = DM_CDS.src_pedido_formas
          Enabled = False
          TabOrder = 9
        end
        object DBE_forma_pgto: TDBEdit
          Left = 164
          Top = 175
          Width = 102
          Height = 23
          Color = clBtnFace
          DataField = 'forma_pgto'
          DataSource = DM_CDS.src_pedido_formas
          Enabled = False
          TabOrder = 10
        end
        object bbFechar: TButton
          Left = 15
          Top = 392
          Width = 288
          Height = 32
          Caption = 'Fechar Janela/Sair'
          TabOrder = 11
          OnClick = bbFecharClick
        end
      end
      object GroupBox1: TGroupBox
        Left = 336
        Top = 8
        Width = 507
        Height = 570
        Caption = ' Formas de Pagamento do Pedido '
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 2
          Top = 17
          Width = 503
          Height = 441
          Align = alClient
          DataSource = DM_CDS.src_pedido_formas
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'chave_id'
              Title.Alignment = taCenter
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'transacao'
              Title.Alignment = taCenter
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'forma_pgto'
              Title.Alignment = taCenter
              Width = 112
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor'
              Title.Alignment = taCenter
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'situacao_venda'
              Title.Alignment = taCenter
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'chave_id_cab'
              Title.Alignment = taCenter
              Width = 80
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 2
          Top = 458
          Width = 503
          Height = 110
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object Label7: TLabel
            Left = 12
            Top = 48
            Width = 48
            Height = 15
            Caption = 'Total TEF'
          end
          object Label8: TLabel
            Left = 167
            Top = 49
            Width = 52
            Height = 15
            Caption = 'Recebido:'
          end
          object Label17: TLabel
            Left = 326
            Top = 49
            Width = 48
            Height = 15
            Caption = 'Restante:'
          end
          object edt_valor_tef_tot: TDBEdit
            Left = 14
            Top = 71
            Width = 150
            Height = 23
            Color = clBtnFace
            DataField = 'valor_tef'
            DataSource = DM_CDS.src_pedido_cab
            Enabled = False
            TabOrder = 0
          end
          object DBE_valor_tef_recebido: TDBEdit
            Left = 165
            Top = 72
            Width = 150
            Height = 23
            Color = clBtnFace
            DataField = 'valor_tef_recebido'
            DataSource = DM_CDS.src_pedido_cab
            Enabled = False
            TabOrder = 1
          end
          object DBE_valor_tef_restante: TDBEdit
            Left = 324
            Top = 72
            Width = 150
            Height = 23
            Color = clBtnFace
            DataField = 'valor_tef_restante'
            DataSource = DM_CDS.src_pedido_cab
            Enabled = False
            TabOrder = 2
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 872
        Top = 8
        Width = 338
        Height = 570
        Caption = ' Comprovante / Retorno TEF '
        TabOrder = 2
        object Memo_result: TMemo
          Left = 2
          Top = 17
          Width = 334
          Height = 287
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object GroupBox9: TGroupBox
          Left = 2
          Top = 304
          Width = 334
          Height = 264
          Align = alBottom
          Caption = 'Retorno Cart'#227'o:'
          TabOrder = 1
          object DBMemo4: TDBMemo
            Left = 2
            Top = 17
            Width = 330
            Height = 245
            Align = alClient
            DataField = 'comprovante'
            DataSource = DM_CDS.src_pedido_formas
            TabOrder = 0
          end
        end
      end
    end
    object tsConfiguracaoTef: TTabSheet
      Caption = '  Configura'#231#245'es TEF  '
      ImageIndex = 1
      object bbFuncoesAdm: TButton
        Left = 16
        Top = 16
        Width = 200
        Height = 35
        Caption = 'Fun'#231#245'es Administrativas PayGo'
        TabOrder = 0
        OnClick = bbFuncoesAdmClick
      end
      object GroupBox7: TGroupBox
        Left = 16
        Top = 64
        Width = 420
        Height = 220
        Caption = ' Parametros TEF PayGo '
        TabOrder = 1
        object Label13: TLabel
          Left = 16
          Top = 68
          Width = 104
          Height = 15
          Caption = 'Qtd Vias Impress'#227'o:'
        end
        object Label14: TLabel
          Left = 16
          Top = 108
          Width = 115
          Height = 15
          Caption = 'Tempo Espera TEF (s):'
        end
        object Label15: TLabel
          Left = 216
          Top = 108
          Width = 115
          Height = 15
          Caption = 'Tempo Espera STS (s):'
        end
        object cb_tef_via_reduzido: TCheckBox
          Left = 16
          Top = 32
          Width = 180
          Height = 20
          Caption = 'Imprimir Via Reduzida'
          TabOrder = 0
        end
        object edt_tef_qtd_vias: TSpinEdit
          Left = 140
          Top = 64
          Width = 60
          Height = 24
          MaxValue = 10
          MinValue = 1
          TabOrder = 1
          Value = 2
        end
        object edt_tempo_espera_tef: TSpinEdit
          Left = 140
          Top = 104
          Width = 60
          Height = 24
          MaxValue = 300
          MinValue = 0
          TabOrder = 2
          Value = 30
        end
        object edt_tempo_espera_sts: TSpinEdit
          Left = 340
          Top = 104
          Width = 60
          Height = 24
          MaxValue = 300
          MinValue = 0
          TabOrder = 3
          Value = 30
        end
        object bbConfigTefSalvar: TButton
          Left = 16
          Top = 156
          Width = 180
          Height = 35
          Caption = 'Salvar Configura'#231#245'es'
          TabOrder = 4
          OnClick = bbConfigTefSalvarClick
        end
      end
    end
    object tsReceb: TTabSheet
      Caption = '  Hist'#243'rico de Recebimentos  '
      ImageIndex = 2
      object GroupBox3: TGroupBox
        Left = 280
        Top = 8
        Width = 780
        Height = 570
        Caption = ' Transa'#231#245'es Registradas '
        TabOrder = 0
        object DBGrid2: TDBGrid
          Left = 2
          Top = 17
          Width = 776
          Height = 351
          Align = alClient
          DataSource = DM_CDS.src_receb
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'transacao'
              Title.Alignment = taCenter
              Width = 146
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'status_calculado'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nomeRede'
              Title.Alignment = taCenter
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSU'
              Title.Alignment = taCenter
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'codigoAutorizacao'
              Title.Alignment = taCenter
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'chaveId'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'identificador_venda'
              Title.Alignment = taCenter
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vendaId'
              Title.Alignment = taCenter
              Visible = True
            end>
        end
        object GroupBox4: TGroupBox
          Left = 2
          Top = 368
          Width = 776
          Height = 100
          Align = alBottom
          Caption = ' Comprovante Lojista/Cliente '
          TabOrder = 1
          object DBMemo1: TDBMemo
            Left = 2
            Top = 17
            Width = 772
            Height = 81
            Align = alClient
            DataField = 'comprovante'
            DataSource = DM_CDS.src_receb
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Consolas'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel1: TPanel
          Left = 2
          Top = 468
          Width = 776
          Height = 100
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object Label4: TLabel
            Left = 12
            Top = 48
            Width = 71
            Height = 15
            Caption = 'Total Formas:'
          end
          object Label6: TLabel
            Left = 192
            Top = 48
            Width = 48
            Height = 15
            Caption = 'Restante:'
          end
          object Edit1: TEdit
            Left = 12
            Top = 68
            Width = 170
            Height = 23
            Color = clBtnFace
            Enabled = False
            TabOrder = 0
            Text = '20,00'
          end
          object Edit2: TEdit
            Left = 192
            Top = 68
            Width = 170
            Height = 23
            Color = clBtnFace
            Enabled = False
            TabOrder = 1
            Text = '0,00'
          end
        end
      end
      object bbAtualizarRecbto: TButton
        Left = 12
        Top = 18
        Width = 250
        Height = 35
        Caption = 'Atualizar Lista de Recebimentos'
        TabOrder = 1
        OnClick = bbAtualizarRecbtoClick
      end
      object bbStatusVenda: TButton
        Left = 12
        Top = 60
        Width = 250
        Height = 35
        Caption = 'Consultar Status da Venda'
        TabOrder = 2
        Visible = False
      end
      object GroupBox8: TGroupBox
        Left = 12
        Top = 108
        Width = 250
        Height = 470
        Caption = ' Log de Envio TEF '
        TabOrder = 3
        object Memo_enviado: TMemo
          Left = 2
          Top = 17
          Width = 246
          Height = 451
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object tsSeqTef: TTabSheet
      Caption = '  Sequ'#234'nciaTEF  '
      ImageIndex = 3
      object GroupBox5: TGroupBox
        Left = 280
        Top = 8
        Width = 780
        Height = 570
        Caption = ' Controle de Sequ'#234'ncia TEF '
        TabOrder = 0
        object DBGrid3: TDBGrid
          Left = 2
          Top = 17
          Width = 776
          Height = 351
          Align = alClient
          DataSource = DM_CDS.src_seq_tef
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
        object GroupBox6: TGroupBox
          Left = 2
          Top = 368
          Width = 776
          Height = 100
          Align = alBottom
          Caption = ' Dados do Comprovante '
          TabOrder = 1
          object DBMemo2: TDBMemo
            Left = 2
            Top = 17
            Width = 772
            Height = 81
            Align = alClient
            DataField = 'comprovante'
            DataSource = DM_CDS.src_receb
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Consolas'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel3: TPanel
          Left = 2
          Top = 468
          Width = 776
          Height = 100
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object Label11: TLabel
            Left = 12
            Top = 48
            Width = 71
            Height = 15
            Caption = 'Total Formas:'
          end
          object Label12: TLabel
            Left = 192
            Top = 48
            Width = 48
            Height = 15
            Caption = 'Restante:'
          end
          object Edit3: TEdit
            Left = 12
            Top = 68
            Width = 170
            Height = 23
            Color = clBtnFace
            Enabled = False
            TabOrder = 0
            Text = '20,00'
          end
          object Edit4: TEdit
            Left = 192
            Top = 68
            Width = 170
            Height = 23
            Color = clBtnFace
            Enabled = False
            TabOrder = 1
            Text = '0,00'
          end
        end
      end
      object Button6: TButton
        Left = 12
        Top = 18
        Width = 250
        Height = 35
        Caption = 'Carregar Sequ'#234'ncia TEF'
        TabOrder = 1
        OnClick = Button6Click
      end
    end
    object tsConfiigPos: TTabSheet
      Caption = 'Confirua'#231#245'es POS'
      ImageIndex = 4
      object GroupBox10: TGroupBox
        Left = 16
        Top = 16
        Width = 625
        Height = 457
        Caption = 'Configura'#231#227'o POS:'
        TabOrder = 0
        object Label18: TLabel
          Left = 8
          Top = 59
          Width = 90
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Id da Empresa:'
        end
        object Label19: TLabel
          Left = 8
          Top = 158
          Width = 90
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Client Id:'
        end
        object Label20: TLabel
          Left = 8
          Top = 206
          Width = 90
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Token Api:'
        end
        object Label21: TLabel
          Left = 7
          Top = 87
          Width = 90
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Provider:'
        end
        object Label22: TLabel
          Left = 8
          Top = 110
          Width = 90
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Terminal Id:'
        end
        object Label23: TLabel
          Left = 7
          Top = 134
          Width = 90
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Apelido:'
        end
        object Label24: TLabel
          Left = 8
          Top = 182
          Width = 90
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'merchantId:'
        end
        object Label25: TLabel
          Left = 9
          Top = 231
          Width = 90
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ambiente:'
        end
        object Label26: TLabel
          Left = 5
          Top = 36
          Width = 90
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'URL:'
        end
        object edt_cfg_pos_id_empresa: TSpinEdit
          Left = 100
          Top = 59
          Width = 60
          Height = 21
          Ctl3D = False
          MaxValue = 10
          MinValue = 1
          ParentCtl3D = False
          TabOrder = 0
          Value = 1
        end
        object edt_cfg_pos_client_id: TEdit
          Left = 100
          Top = 157
          Width = 400
          Height = 21
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 1
          Text = 'CLIENT_ID_REAL'
        end
        object edt_cfg_pos_token_api: TEdit
          Left = 100
          Top = 205
          Width = 400
          Height = 21
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 2
          Text = 'ACCESS_TOKEN_REAL'
        end
        object edt_cfg_pos_provider: TEdit
          Left = 100
          Top = 86
          Width = 400
          Height = 21
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 3
          Text = 'CIELO'
        end
        object edt_cfg_pos_terminal_id: TEdit
          Left = 100
          Top = 109
          Width = 400
          Height = 21
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 4
          Text = 'CIELO_SMART_01'
        end
        object edt_cfg_pos_apelido: TEdit
          Left = 100
          Top = 133
          Width = 400
          Height = 21
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 5
          Text = 'Cielo Smart 01'
        end
        object edt_cfg_pos_merchantId: TEdit
          Left = 100
          Top = 181
          Width = 400
          Height = 21
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 6
          Text = 'MERCHANT_ID_REAL'
        end
        object edt_cfg_pos_ambiente: TEdit
          Left = 100
          Top = 230
          Width = 400
          Height = 21
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 7
          Text = 'SANDBOX'
        end
        object cb_cfg_pos_ativo: TCheckBox
          Left = 33
          Top = 255
          Width = 80
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Ativo:'
          TabOrder = 8
        end
        object bbPosCfgSalvar: TButton
          Left = 120
          Top = 287
          Width = 180
          Height = 35
          Caption = 'Salvar Configura'#231#245'es'
          TabOrder = 9
          OnClick = bbPosCfgSalvarClick
        end
        object edt_cfg_pos_url: TEdit
          Left = 98
          Top = 35
          Width = 400
          Height = 21
          Ctl3D = False
          MaxLength = 254
          ParentCtl3D = False
          TabOrder = 10
          Text = 'http://177.70.11.222:8083/'
        end
      end
      object GroupBox11: TGroupBox
        Left = 656
        Top = 218
        Width = 449
        Height = 305
        Caption = 'Retorno:'
        TabOrder = 1
        object Memo_retorno: TMemo
          Left = 2
          Top = 17
          Width = 445
          Height = 286
          Align = alClient
          Lines.Strings = (
            'Memo_retorno')
          TabOrder = 0
        end
      end
      object GroupBox12: TGroupBox
        Left = 664
        Top = 11
        Width = 449
        Height = 189
        Caption = 'Enviado:'
        TabOrder = 2
        object Memo_pos_enviado: TMemo
          Left = 2
          Top = 17
          Width = 445
          Height = 170
          Align = alClient
          Lines.Strings = (
            'Memo_retorno')
          TabOrder = 0
        end
      end
    end
  end
end

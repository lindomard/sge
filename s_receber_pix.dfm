object Frm_Receber_pix: TFrm_Receber_pix
  Left = 192
  Top = 117
  Width = 1126
  Height = 621
  Caption = 'Receber Pix'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_consulta_txid: TLabel
    Left = 24
    Top = 472
    Width = 78
    Height = 13
    Caption = 'lbl_consulta_txid'
  end
  object lbl_timer2: TLabel
    Left = 24
    Top = 575
    Width = 78
    Height = 13
    Caption = 'lbl_consulta_txid'
  end
  object lbl_timer2_inicio: TLabel
    Left = 200
    Top = 553
    Width = 78
    Height = 13
    Caption = 'lbl_consulta_txid'
  end
  object Label18: TLabel
    Left = 16
    Top = 527
    Width = 92
    Height = 13
    Caption = 'intervalo segundos:'
  end
  object lbl_espera: TLabel
    Left = 23
    Top = 492
    Width = 78
    Height = 13
    Caption = 'lbl_consulta_txid'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1118
    Height = 41
    Align = alTop
    Caption = 'Receber Pix'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 1118
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 104
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Conta:'
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 82
    Width = 1118
    Height = 358
    ActivePage = tsReceber
    Align = alTop
    TabOrder = 2
    object tsReceber: TTabSheet
      Caption = 'Receber'
      object GroupBox1: TGroupBox
        Left = 842
        Top = 0
        Width = 268
        Height = 254
        Align = alRight
        Caption = 'Qr Code:'
        TabOrder = 0
        object PaintBox1: TPaintBox
          Left = 11
          Top = 18
          Width = 249
          Height = 225
          Visible = False
          OnPaint = PaintBox1Paint
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 601
        Height = 254
        Align = alLeft
        Caption = 'Dados do Pix:'
        TabOrder = 1
        object Label10: TLabel
          Left = 2
          Top = 15
          Width = 85
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Chave Pix:'
        end
        object Label13: TLabel
          Left = 2
          Top = 39
          Width = 85
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Tx Id:'
        end
        object Label14: TLabel
          Left = 2
          Top = 63
          Width = 85
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Expira'#231#227'o:'
        end
        object Label15: TLabel
          Left = 2
          Top = 87
          Width = 85
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor do Pix:'
        end
        object Label16: TLabel
          Left = 2
          Top = 108
          Width = 85
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Tipo do Servi'#231'o:'
        end
        object Label17: TLabel
          Left = 352
          Top = 224
          Width = 38
          Height = 13
          Caption = 'Label17'
        end
        object cb_receber_chave_pix: TComboBox
          Left = 92
          Top = 11
          Width = 201
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          Text = 'cb_chave_pix'
          OnChange = cb_receber_chave_pixChange
        end
        object edt_txid: TEdit
          Left = 92
          Top = 37
          Width = 405
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
        end
        object spn_tamfonteobsnfe: TSpinEdit
          Left = 93
          Top = 59
          Width = 81
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 2
          Value = 0
        end
        object edt_valor_pix: TEdit
          Left = 92
          Top = 85
          Width = 205
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnChange = edt_valor_pixChange
          OnExit = edt_valor_pixExit
        end
        object edt_tipo_servico: TEdit
          Left = 92
          Top = 106
          Width = 405
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
        end
        object bbGerarQrCode: TBitBtn
          Left = 38
          Top = 155
          Width = 173
          Height = 25
          Caption = 'Gerar Qr Code'
          Enabled = False
          TabOrder = 5
          OnClick = bbGerarQrCodeClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337333733373
            3373337F3F7F3F7F3F7F33737373737373733F7F7F7F7F7F7F7F770000000000
            00007777777777777777330333333C333333337FFF3337F3333F370993333C33
            3399377773F337F33377330339333C3339333F7FF7FFF7FFF7FF770777977C77
            97777777777777777777330333933C339333337F3373F7F37333370333393C39
            3333377F333737F7333333033333999333333F7FFFFF777FFFFF770777777C77
            77777777777777777777330333333C330333337F333337FF7FF3370333333C00
            003C377F333337777737330333333C3303333F7FFFFFF7FF7FFF770777777777
            7777777777777777777733333333333333333333333333333333}
          NumGlyphs = 2
        end
        object bbSair: TBitBtn
          Left = 246
          Top = 148
          Width = 173
          Height = 25
          Caption = 'Sair'
          TabOrder = 6
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
        object BitBtn1: TBitBtn
          Left = 464
          Top = 184
          Width = 91
          Height = 25
          Caption = 'Habilitar Socket'
          TabOrder = 7
          OnClick = BitBtn1Click
        end
        object bbCancelarEspera: TBitBtn
          Left = 46
          Top = 187
          Width = 173
          Height = 25
          Caption = 'Cancelar Espera'
          Enabled = False
          TabOrder = 8
          OnClick = bbCancelarEsperaClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337333733373
            3373337F3F7F3F7F3F7F33737373737373733F7F7F7F7F7F7F7F770000000000
            00007777777777777777330333333C333333337FFF3337F3333F370993333C33
            3399377773F337F33377330339333C3339333F7FF7FFF7FFF7FF770777977C77
            97777777777777777777330333933C339333337F3373F7F37333370333393C39
            3333377F333737F7333333033333999333333F7FFFFF777FFFFF770777777C77
            77777777777777777777330333333C330333337F333337FF7FF3370333333C00
            003C377F333337777737330333333C3303333F7FFFFFF7FF7FFF770777777777
            7777777777777777777733333333333333333333333333333333}
          NumGlyphs = 2
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 254
        Width = 1110
        Height = 76
        Align = alBottom
        Caption = 'Copiar e Colar:'
        TabOrder = 2
        object Label12: TLabel
          Left = 1065
          Top = 15
          Width = 43
          Height = 59
          Align = alRight
          Alignment = taCenter
          AutoSize = False
          Caption = 'Copiar Chave Pix'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          WordWrap = True
          OnClick = DBMemo_copia_e_colaClick
        end
        object DBMemo_copia_e_cola: TDBMemo
          Left = 2
          Top = 15
          Width = 1063
          Height = 59
          Align = alClient
          DataField = 'pixCopiaECola'
          DataSource = src_receber
          ReadOnly = True
          TabOrder = 0
          OnClick = DBMemo_copia_e_colaClick
        end
      end
    end
    object tsCredenciais: TTabSheet
      Caption = 'Credenciais'
      ImageIndex = 1
      object Label2: TLabel
        Left = 0
        Top = 25
        Width = 127
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Developer Key:'
      end
      object Label3: TLabel
        Left = 0
        Top = 45
        Width = 127
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Client Id:'
      end
      object Label4: TLabel
        Left = 0
        Top = 66
        Width = 127
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Client Secret:'
      end
      object Label5: TLabel
        Left = 0
        Top = 88
        Width = 127
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Certificado Pasta/Arquivo:'
      end
      object Label6: TLabel
        Left = 0
        Top = 109
        Width = 127
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Senha do Certificado:'
      end
      object Label7: TLabel
        Left = 0
        Top = 6
        Width = 127
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Developer Key:'
      end
      object edt_developer_key: TEdit
        Left = 140
        Top = 25
        Width = 868
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        Text = 'b6cf40eccc18cbd58614c9ca5930a3b7'
      end
      object edt_client_id: TEdit
        Left = 140
        Top = 45
        Width = 868
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        Text = 
          'eyJpZCI6IjAwZjg0MDYtZmYiLCJjb2RpZ29QdWJsaWNhZG9yIjowLCJjb2RpZ29T' +
          'b2Z0d2FyZSI6ODQzMTksInNlcXVlbmNpYWxJbnN0YWxhY2FvIjoyfQ'
      end
      object edt_client_secret: TEdit
        Left = 140
        Top = 66
        Width = 868
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        Text = 
          'eyJpZCI6ImMxZDlkOTYtM2IyNi00ZGQwLWFiNzMtYzk0NDA1YWQ1Y2EwZTA2NCIs' +
          'ImNvZGlnb1B1YmxpY2Fkb3IiOjAsImNvZGlnb1NvZnR3YXJlIjo4NDMxOSwic2Vx' +
          'dWVuY2lhbEluc3RhbGFjYW8iOjIsInNlcXVlbmNpYWxDcmVkZW5jaWFsIjoxLCJh' +
          'bWJpZW50ZSI6InByb2R1Y2FvIiwiaWF0IjoxNzI1NjU0NTQ2OTMyfQ'
      end
      object edt_certificado: TEdit
        Left = 140
        Top = 88
        Width = 868
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        Text = 
          'C:\sge\PIX\BANCO DO BRASIL\INTERSYS CERTIFICADO 2024 SENHA 12345' +
          '6.pfx'
      end
      object edt_cert_password: TEdit
        Left = 140
        Top = 109
        Width = 868
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 4
        Text = '123456'
      end
      object bbCredenciaisSalvar: TBitBtn
        Left = 344
        Top = 144
        Width = 257
        Height = 25
        Caption = 'Salvar'
        TabOrder = 5
        OnClick = bbCredenciaisSalvarClick
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
      object Button1: TButton
        Left = 720
        Top = 152
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 6
      end
      object edt_id: TEdit
        Left = 140
        Top = 5
        Width = 76
        Height = 19
        TabStop = False
        Color = 15456472
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 7
        Text = 'b6cf40eccc18cbd58614c9ca5930a3b7'
      end
    end
    object tsWebhook: TTabSheet
      Caption = 'Webhooks'
      ImageIndex = 2
      object DBGrid_receber_pix: TDBGrid
        Left = 0
        Top = 0
        Width = 1110
        Height = 271
        Align = alClient
        DataSource = src_webhook
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
            FieldName = 'id'
            Title.Alignment = taCenter
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Alignment = taCenter
            Width = 202
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'chave'
            Title.Alignment = taCenter
            Width = 164
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dathor_criacao'
            Title.Alignment = taCenter
            Width = 134
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'url'
            Title.Alignment = taCenter
            Width = 332
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codBanco'
            Title.Alignment = taCenter
            Width = 69
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 271
        Width = 1110
        Height = 59
        Align = alBottom
        TabOrder = 1
        object Label8: TLabel
          Left = 6
          Top = 32
          Width = 51
          Height = 13
          Caption = 'Chave Pix:'
        end
        object Label9: TLabel
          Left = 278
          Top = 33
          Width = 25
          Height = 13
          Caption = 'URL:'
        end
        object bbExcluir: TBitBtn
          Left = 365
          Top = 0
          Width = 193
          Height = 25
          Caption = 'Excluir Selecionado'
          Enabled = False
          TabOrder = 0
          OnClick = bbExcluirClick
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
        object edt_url: TEdit
          Left = 312
          Top = 29
          Width = 633
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnChange = cb_chave_pixChange
        end
        object bbIncluir: TBitBtn
          Left = 948
          Top = 23
          Width = 76
          Height = 25
          Caption = 'Incluir'
          Enabled = False
          TabOrder = 2
          OnClick = bbIncluirClick
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
          NumGlyphs = 2
        end
        object cb_chave_pix: TComboBox
          Left = 65
          Top = 26
          Width = 201
          Height = 21
          ItemHeight = 13
          TabOrder = 3
          Text = 'cb_chave_pix'
          OnChange = cb_chave_pixChange
        end
      end
    end
    object tsCertificados: TTabSheet
      Caption = 'Certificados'
      ImageIndex = 3
      object DBGrid_certificado: TDBGrid
        Left = 0
        Top = 0
        Width = 1028
        Height = 274
        Align = alClient
        DataSource = src_certificados
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
            FieldName = 'id'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomeCertificado'
            Title.Alignment = taCenter
            Width = 175
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'conteudoCertificado'
            Title.Alignment = taCenter
            Width = 717
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 274
        Width = 1028
        Height = 56
        Align = alBottom
        TabOrder = 1
        object Label11: TLabel
          Left = 6
          Top = 33
          Width = 99
          Height = 13
          Caption = 'Nome do Certificado:'
        end
        object bbExcluirCertificado: TBitBtn
          Left = 365
          Top = 0
          Width = 193
          Height = 25
          Caption = 'Excluir Selecionado'
          Enabled = False
          TabOrder = 0
          OnClick = bbExcluirCertificadoClick
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
        object edt_nome_certificado: TEdit
          Left = 108
          Top = 29
          Width = 767
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnChange = edt_nome_certificadoChange
        end
        object bbPesquisarCertificado: TBitBtn
          Left = 882
          Top = 25
          Width = 137
          Height = 25
          Caption = 'Procurar Ceritificado'
          Enabled = False
          TabOrder = 2
          OnClick = bbPesquisarCertificadoClick
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
          NumGlyphs = 2
        end
      end
    end
  end
  object bbConsultarTxId: TBitBtn
    Left = 22
    Top = 443
    Width = 173
    Height = 25
    Caption = 'Consultar TxId'
    TabOrder = 3
    OnClick = bbConsultarTxIdClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337333733373
      3373337F3F7F3F7F3F7F33737373737373733F7F7F7F7F7F7F7F770000000000
      00007777777777777777330333333C333333337FFF3337F3333F370993333C33
      3399377773F337F33377330339333C3339333F7FF7FFF7FFF7FF770777977C77
      97777777777777777777330333933C339333337F3373F7F37333370333393C39
      3333377F333737F7333333033333999333333F7FFFFF777FFFFF770777777C77
      77777777777777777777330333333C330333337F333337FF7FF3370333333C00
      003C377F333337777737330333333C3303333F7FFFFFF7FF7FFF770777777777
      7777777777777777777733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object Panel5: TPanel
    Left = 450
    Top = 440
    Width = 668
    Height = 150
    Align = alRight
    TabOrder = 4
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 666
      Height = 148
      Align = alClient
      DataSource = src_retorno_recebimento
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'criacao'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'expiracao'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'txid'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'revisao'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cnpj'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'status'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'original'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'chave'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'solicitacaoPagador'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pixCopiaECola'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'endToEndId'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'horario'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'infoPagador'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end>
    end
  end
  object BitBtn2: TBitBtn
    Left = 22
    Top = 547
    Width = 173
    Height = 25
    Caption = 'Timer 2'
    TabOrder = 5
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337333733373
      3373337F3F7F3F7F3F7F33737373737373733F7F7F7F7F7F7F7F770000000000
      00007777777777777777330333333C333333337FFF3337F3333F370993333C33
      3399377773F337F33377330339333C3339333F7FF7FFF7FFF7FF770777977C77
      97777777777777777777330333933C339333337F3373F7F37333370333393C39
      3333377F333737F7333333033333999333333F7FFFFF777FFFFF770777777C77
      77777777777777777777330333333C330333337F333337FF7FF3370333333C00
      003C377F333337777737330333333C3303333F7FFFFFF7FF7FFF770777777777
      7777777777777777777733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object SpinEdit1: TSpinEdit
    Left = 113
    Top = 522
    Width = 81
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 6
    Value = 5
  end
  object src_webhook: TDataSource
    DataSet = cds_webhook
    OnDataChange = src_webhookDataChange
    Left = 324
    Top = 122
  end
  object cds_webhook: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 364
    Top = 122
    object cds_webhookid: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'id'
    end
    object cds_webhooknome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 254
    end
    object cds_webhookchave: TStringField
      DisplayLabel = 'Cahve'
      FieldName = 'chave'
      Size = 254
    end
    object cds_webhookdathor_criacao: TDateTimeField
      DisplayLabel = 'Data e Hora da Cria'#231#227'o'
      FieldName = 'dathor_criacao'
    end
    object cds_webhookurl: TStringField
      DisplayLabel = 'URL'
      FieldName = 'url'
      Size = 254
    end
    object cds_webhookcodBanco: TStringField
      DisplayLabel = 'C'#243'd Bco'
      FieldName = 'codBanco'
      Size = 4
    end
  end
  object src_certificados: TDataSource
    DataSet = cds_certificados
    OnDataChange = src_certificadosDataChange
    Left = 660
    Top = 122
  end
  object cds_certificados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 700
    Top = 122
    object cds_certificadosid: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'id'
    end
    object cds_certificadosconteudoCertificado: TStringField
      DisplayLabel = 'Conteudo do Certificado'
      FieldName = 'conteudoCertificado'
      Size = 254
    end
    object cds_certificadosnomeCertificado: TStringField
      DisplayLabel = 'Nome do Certificado'
      FieldName = 'nomeCertificado'
      Size = 254
    end
  end
  object opd1: TOpenDialog
    Left = 876
    Top = 340
  end
  object src_receber: TDataSource
    DataSet = cds_receber
    OnDataChange = src_webhookDataChange
    Left = 508
    Top = 258
  end
  object cds_receber: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 548
    Top = 258
    object cds_recebercriacao: TDateTimeField
      FieldName = 'criacao'
    end
    object cds_receberexpiracao: TIntegerField
      FieldName = 'expiracao'
    end
    object cds_recebertxid: TStringField
      FieldName = 'txid'
      Size = 255
    end
    object cds_receberrevisao: TIntegerField
      FieldName = 'revisao'
    end
    object cds_recebercnpj: TStringField
      FieldName = 'cnpj'
    end
    object cds_recebernome: TStringField
      FieldName = 'nome'
      Size = 255
    end
    object cds_receberstatus: TStringField
      FieldName = 'status'
      Size = 50
    end
    object cds_receberoriginal: TFloatField
      FieldName = 'original'
    end
    object cds_receberchave: TStringField
      FieldName = 'chave'
      Size = 255
    end
    object cds_recebersolicitacaoPagador: TStringField
      FieldName = 'solicitacaoPagador'
      Size = 254
    end
    object cds_receberpixCopiaECola: TStringField
      FieldName = 'pixCopiaECola'
      Size = 254
    end
    object cds_receberendToEndId: TStringField
      FieldName = 'endToEndId'
      Size = 254
    end
    object cds_receberhorario: TDateTimeField
      FieldName = 'horario'
    end
    object cds_receberinfoPagador: TStringField
      FieldName = 'infoPagador'
      Size = 254
    end
  end
  object ClientSocket1: TClientSocket
    Active = False
    Address = 'ws://localhost:8080/ws/callback'
    ClientType = ctNonBlocking
    Host = 'localhost'
    Port = 8080
    OnRead = ClientSocket1Read
    Left = 616
    Top = 192
  end
  object Timer_webSocket: TTimer
    Enabled = False
    OnTimer = Timer_webSocketTimer
    Left = 644
    Top = 290
  end
  object cds_retorno_recebimento: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 616
    Top = 258
    object cds_retorno_recebimentocriacao: TDateTimeField
      FieldName = 'criacao'
    end
    object cds_retorno_recebimentoexpiracao: TIntegerField
      FieldName = 'expiracao'
    end
    object cds_retorno_recebimentotxid: TStringField
      FieldName = 'txid'
      Size = 255
    end
    object cds_retorno_recebimentorevisao: TIntegerField
      FieldName = 'revisao'
    end
    object cds_retorno_recebimentocnpj: TStringField
      FieldName = 'cnpj'
    end
    object cds_retorno_recebimentonome: TStringField
      FieldName = 'nome'
      Size = 255
    end
    object cds_retorno_recebimentostatus: TStringField
      FieldName = 'status'
      Size = 50
    end
    object cds_retorno_recebimentooriginal: TFloatField
      FieldName = 'original'
    end
    object cds_retorno_recebimentochave: TStringField
      FieldName = 'chave'
      Size = 255
    end
    object cds_retorno_recebimentosolicitacaoPagador: TStringField
      FieldName = 'solicitacaoPagador'
      Size = 254
    end
    object cds_retorno_recebimentopixCopiaECola: TStringField
      FieldName = 'pixCopiaECola'
      Size = 254
    end
    object cds_retorno_recebimentoendToEndId: TStringField
      FieldName = 'endToEndId'
      Size = 254
    end
    object cds_retorno_recebimentohorario: TDateTimeField
      FieldName = 'horario'
    end
    object cds_retorno_recebimentoinfoPagador: TStringField
      FieldName = 'infoPagador'
      Size = 254
    end
  end
  object src_retorno_recebimento: TDataSource
    DataSet = cds_retorno_recebimento
    OnDataChange = src_webhookDataChange
    Left = 676
    Top = 266
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 292
    Top = 490
  end
end

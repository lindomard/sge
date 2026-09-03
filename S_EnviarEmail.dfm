object Frm_EnviarEmail: TFrm_EnviarEmail
  Left = 389
  Top = 104
  Width = 864
  Height = 632
  Caption = 'Enviar Email'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 856
    Height = 601
    ActivePage = tsGeral
    Align = alClient
    TabOrder = 0
    object tsGeral: TTabSheet
      Caption = 'Geral'
      object Label1: TLabel
        Left = 5
        Top = 100
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Destinat'#225'rio:'
      end
      object Label2: TLabel
        Left = 5
        Top = 254
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Assunto'
      end
      object Label4: TLabel
        Left = 5
        Top = 9
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nome Remetente..:'
      end
      object Label5: TLabel
        Left = 5
        Top = 30
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Email do Remetente..:'
      end
      object Label3: TLabel
        Left = 5
        Top = 56
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Copia para:'
      end
      object lbl_tipo: TLabel
        Left = 114
        Top = 72
        Width = 78
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Tipo'
        Color = 12615808
        ParentColor = False
      end
      object lbl_codigo: TLabel
        Left = 192
        Top = 72
        Width = 63
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'C'#243'digo'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label11: TLabel
        Left = 256
        Top = 71
        Width = 252
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Raz'#227'o Social'
        Color = 12615808
        ParentColor = False
      end
      object Label12: TLabel
        Left = 509
        Top = 72
        Width = 147
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'E-Mail'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label13: TLabel
        Left = 658
        Top = 72
        Width = 122
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'WhatsApp'
        Color = 12615808
        ParentColor = False
      end
      object EdtAssunto: TEdit
        Left = 113
        Top = 250
        Width = 395
        Height = 21
        Hint = 'Digite o Assunto'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object bbAnexar: TBitBtn
        Left = 460
        Top = 486
        Width = 47
        Height = 53
        Hint = 'Anexar Arquivo a Ser Enviado '#13#10'para o(s) Destinat'#225'rio(s)'
        Caption = 'Anexar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = bbAnexarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555555555555555555555555555555555555555555555555555555555555
          555555555555555555555555555555555555555FFFFFFFFFF555550000000000
          55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
          B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
          000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
          555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
          55555575FFF75555555555700007555555555557777555555555555555555555
          5555555555555555555555555555555555555555555555555555}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object bbEnviar: TBitBtn
        Left = 14
        Top = 541
        Width = 130
        Height = 32
        Hint = 'Envia E-Mail direto Utilizando uma'#13#10'Conta de Servidor E-Mail'
        Caption = 'Enviar Direto'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = bbEnviarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0000377777777777777703030303030303037F7F7F7F7F7F7F7F000000000000
          00007777777777777777933393303933337073F37F37F73F3377393393303393
          379037FF7F37F37FF777379793303379793037777337F3777737339933303339
          93303377F3F7F3F77F3733993930393993303377F737F7377FF7399993303399
          999037777337F377777793993330333393307377FF37F3337FF7333993303333
          993033377F37F33377F7333993303333993033377337F3337737333333303333
          33303FFFFFF7FFFFFFF700000000000000007777777777777777030303030303
          03037F7F7F7F7F7F7F7F00000000000000007777777777777777}
        NumGlyphs = 2
      end
      object bbFechar: TBitBtn
        Left = 544
        Top = 533
        Width = 130
        Height = 32
        Hint = 'Fechar Esta Janela'
        Caption = 'Fechar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = bbFecharClick
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
      object bbOutLook: TBitBtn
        Left = 702
        Top = 461
        Width = 130
        Height = 32
        Hint = 
          'Enviar o(s) e-Mail utilizando de '#13#10'uma conta criada pelo outlook' +
          '.'#13#10'Esta op'#231#227'o requer confirma'#231#227'o'#13#10'para cada e-mail enviado'
        Caption = 'Enviar Pelo OutLook'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        Visible = False
        OnClick = bbOutLookClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
          03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
          FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
          FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
          3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
          33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
          33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
          33333337FFFFFFF7F33333300000000033333337777777773333}
        NumGlyphs = 2
      end
      object edt_remetente: TEdit
        Left = 113
        Top = 6
        Width = 396
        Height = 21
        TabOrder = 5
      end
      object edt_emailremetente: TEdit
        Left = 113
        Top = 27
        Width = 396
        Height = 21
        TabOrder = 6
      end
      object bbSalvar: TBitBtn
        Left = 8
        Top = 104
        Width = 30
        Height = 31
        Hint = 'Salvar Padr'#227'o'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        TabStop = False
        OnClick = bbSalvarClick
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
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 279
        Width = 500
        Height = 201
        Caption = 'Mensagem'
        TabOrder = 8
        object mmMensagem: TMemo
          Left = 2
          Top = 15
          Width = 496
          Height = 184
          Hint = 'Mensagem a ser enviada'
          Align = alClient
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 480
        Width = 449
        Height = 58
        Caption = 'Anexos'
        TabOrder = 9
        object lbxAnexos: TListBox
          Left = 2
          Top = 15
          Width = 445
          Height = 41
          Hint = 
            'Anexos Selecionados para '#13#10'Acompanhar o E-Mail.'#13#10'Pressione [Del]' +
            '-Para Excluir'#13#10'item selecionado'
          AutoComplete = False
          Align = alClient
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyDown = lbxAnexosKeyDown
        end
      end
      object bbLimpar: TBitBtn
        Left = 40
        Top = 104
        Width = 30
        Height = 31
        Hint = 'Salvar Padr'#227'o'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        TabStop = False
        Visible = False
        OnClick = bbLimparClick
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
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object edt_copiapara: TEdit
        Left = 114
        Top = 50
        Width = 396
        Height = 21
        TabOrder = 11
        OnExit = edt_copiaparaExit
      end
      object GroupBox3: TGroupBox
        Left = 525
        Top = 287
        Width = 150
        Height = 196
        Caption = 'Dados Conex'#227'o/remetente:'
        TabOrder = 19
        OnExit = GroupBox3Exit
        object Label6: TLabel
          Left = 3
          Top = 16
          Width = 67
          Height = 13
          Caption = 'Tipo de Conta'
        end
        object Label7: TLabel
          Left = -1
          Top = 64
          Width = 39
          Height = 13
          Caption = 'Usuario:'
        end
        object Label8: TLabel
          Left = 4
          Top = 105
          Width = 34
          Height = 13
          Caption = 'Senha:'
        end
        object Label9: TLabel
          Left = 2
          Top = 153
          Width = 28
          Height = 13
          Caption = 'Porta:'
        end
        object sbnsenha: TSpeedButton
          Left = 80
          Top = 148
          Width = 23
          Height = 22
          OnClick = sbnsenhaClick
        end
        object edt_hostname: TEdit
          Left = 3
          Top = 35
          Width = 121
          Height = 21
          TabStop = False
          ReadOnly = True
          TabOrder = 0
          Text = 'gmail'
        end
        object edt_username: TEdit
          Left = 3
          Top = 83
          Width = 142
          Height = 21
          TabOrder = 1
          Text = 'Lindomar_dc@hotmail.com'
          OnExit = edt_usernameExit
        end
        object edt_senha: TEdit
          Left = 5
          Top = 124
          Width = 142
          Height = 21
          PasswordChar = '*'
          TabOrder = 2
          Text = '45964596'
        end
        object edt_porta: TEdit
          Left = 3
          Top = 172
          Width = 142
          Height = 21
          TabOrder = 3
          Text = '25'
        end
      end
      object bbEnviarNovo: TBitBtn
        Left = 534
        Top = 484
        Width = 130
        Height = 40
        Hint = 
          'Enviar o(s) e-Mail utilizando de '#13#10'uma conta criada pelo outlook' +
          '.'#13#10'Esta op'#231#227'o requer confirma'#231#227'o'#13#10'para cada e-mail enviado'
        Caption = 'Envia Novo'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 20
        OnClick = bbEnviarNovoClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
          03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
          FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
          FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
          3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
          33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
          33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
          33333337FFFFFFF7F33333300000000033333337777777773333}
        NumGlyphs = 2
      end
      object lv_Para: TListView
        Left = 112
        Top = 115
        Width = 716
        Height = 129
        Hint = 
          'Para Excluir o Item Click no Campo Codigo e Pressione DEL, '#13#10'par' +
          'a editar o registro  de um duplo click em cima do codigo'
        Columns = <
          item
            Caption = 'C'#243'digo'
            Width = 60
          end
          item
            Alignment = taCenter
            Caption = 'Raz'#227'o Social'
            Width = 334
          end
          item
            Alignment = taCenter
            Caption = 'E-Mail'
            Width = 150
          end
          item
            Alignment = taCenter
            Caption = 'WhatsApp'
            Width = 120
          end>
        ParentShowHint = False
        ShowHint = True
        TabOrder = 21
        ViewStyle = vsReport
        OnDblClick = lv_ParaDblClick
        OnKeyDown = lv_ParaKeyDown
      end
      object cb_tipo: TComboBox
        Left = 113
        Top = 88
        Width = 82
        Height = 21
        ItemHeight = 13
        TabOrder = 13
        Text = 'Cliente'
        OnClick = cb_tipoClick
        Items.Strings = (
          'Cliente'
          'Contato Cliente'
          'Contato Fornecedor'
          'Fornecedor'
          'Digitado')
      end
      object edt_codigo: TEdit
        Left = 193
        Top = 88
        Width = 63
        Height = 21
        TabOrder = 14
        OnExit = edt_codigoExit
        OnKeyPress = edt_codigoKeyPress
      end
      object edt_nome: TEdit
        Left = 255
        Top = 87
        Width = 253
        Height = 21
        Color = 12615808
        TabOrder = 15
      end
      object cb_whatsApp: TCheckBox
        Left = 520
        Top = 40
        Width = 169
        Height = 17
        Caption = 'Enviar no WhatsApp Tambem'
        TabOrder = 12
      end
      object edt_email: TEdit
        Left = 510
        Top = 88
        Width = 146
        Height = 21
        Color = clMoneyGreen
        TabOrder = 16
      end
      object edt_whatsapp: TEdit
        Left = 657
        Top = 88
        Width = 123
        Height = 21
        Color = 12615808
        TabOrder = 17
        OnExit = edt_whatsappExit
      end
      object bbAdicionar: TBitBtn
        Left = 781
        Top = 87
        Width = 46
        Height = 24
        Hint = 'Adicionar Para Envio'
        Caption = 'Add'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
        OnClick = bbAdicionarClick
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
      object bbSalvarWhatsApp: TBitBtn
        Left = 687
        Top = 33
        Width = 30
        Height = 31
        Hint = 'Salvar Padr'#227'o'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 22
        TabStop = False
        OnClick = bbSalvarWhatsAppClick
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
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object bbOutlookNovo: TBitBtn
        Left = 318
        Top = 541
        Width = 130
        Height = 32
        Hint = 
          'Enviar o(s) e-Mail utilizando de '#13#10'uma conta criada pelo outlook' +
          '.'#13#10'Esta op'#231#227'o requer confirma'#231#227'o'#13#10'para cada e-mail enviado'
        Caption = 'Enviar Pelo OutLook'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 23
        OnClick = bbOutlookNovoClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
          03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
          FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
          FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
          3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
          33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
          33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
          33333337FFFFFFF7F33333300000000033333337777777773333}
        NumGlyphs = 2
      end
    end
    object tsConfiguracao: TTabSheet
      Caption = 'Configura'#231#227'o'
      ImageIndex = 1
      object Label10: TLabel
        Left = 24
        Top = 24
        Width = 179
        Height = 13
        Caption = 'Nome e Pasta do Aplicativo de Envio:'
      end
      object sbn_buscaraplicativo: TSpeedButton
        Left = 608
        Top = 40
        Width = 23
        Height = 22
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
        OnClick = sbn_buscaraplicativoClick
      end
      object edt_aplicativo: TEdit
        Left = 24
        Top = 40
        Width = 577
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = edt_aplicativoExit
      end
    end
  end
  object OdAnexos: TOpenDialog
    Left = 256
    Top = 216
  end
  object IdMessage: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    From.Address = 'lindomar_dc@hotmail.com'
    From.Name = 'Lindomar Divino Cordeiro'
    From.Text = 'Lindomar Divino Cordeiro <lindomar_dc@hotmail.com>'
    Recipients = <>
    ReplyTo = <>
    Left = 160
    Top = 216
  end
  object IdSSLIOHandlerSocket1: TIdSSLIOHandlerSocket
    SSLOptions.Method = sslvSSLv2
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 224
    Top = 216
  end
  object IdSMTP1: TIdSMTP
    MaxLineAction = maException
    ReadTimeout = 0
    Port = 25
    AuthenticationType = atNone
    Left = 168
    Top = 280
  end
end

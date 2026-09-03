object Frm_NFE_XmlCliente: TFrm_NFE_XmlCliente
  Left = 203
  Top = 114
  BorderStyle = bsSingle
  Caption = 'Gerar XML para Cliente'
  ClientHeight = 297
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 779
    Height = 297
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Principal'
      object Label1: TLabel
        Left = 40
        Top = 20
        Width = 70
        Height = 13
        Caption = 'Data Inicial:'
      end
      object Label2: TLabel
        Left = 248
        Top = 20
        Width = 63
        Height = 13
        Caption = 'Data Final:'
      end
      object Label3: TLabel
        Left = 38
        Top = 44
        Width = 70
        Height = 13
        Caption = 'Nota Inicial:'
      end
      object Label4: TLabel
        Left = 246
        Top = 44
        Width = 63
        Height = 13
        Caption = 'Nota Final:'
      end
      object Label5: TLabel
        Left = 6
        Top = 132
        Width = 102
        Height = 13
        Caption = 'Pasta de Destino:'
      end
      object sbnConsultar: TSpeedButton
        Left = 600
        Top = 126
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = sbnConsultarClick
      end
      object sbnCriarPasta: TSpeedButton
        Left = 216
        Top = 180
        Width = 201
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
      object Label6: TLabel
        Left = 9
        Top = 157
        Width = 116
        Height = 13
        Caption = 'E-mail do Contador.:'
      end
      object Label7: TLabel
        Left = 53
        Top = 89
        Width = 58
        Height = 13
        Caption = 'Clientes..:'
      end
      object Label8: TLabel
        Left = 448
        Top = 20
        Width = 59
        Height = 13
        Caption = 'Tipo XML:'
      end
      object edt_numnfini: TEdit
        Left = 112
        Top = 41
        Width = 121
        Height = 21
        TabOrder = 0
        OnExit = edt_numnfiniExit
      end
      object edt_numnffin: TEdit
        Left = 320
        Top = 41
        Width = 121
        Height = 21
        TabOrder = 1
        OnExit = edt_numnffinExit
      end
      object edt_caminho: TEdit
        Left = 112
        Top = 128
        Width = 481
        Height = 21
        TabOrder = 2
        Text = 'C:\SGE\NFE'
      end
      object bbExportar: TBitBtn
        Left = 65
        Top = 219
        Width = 182
        Height = 25
        Caption = 'Gerar Agora'
        TabOrder = 3
        OnClick = bbExportarClick
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
        Left = 435
        Top = 219
        Width = 182
        Height = 25
        Caption = 'Sair'
        TabOrder = 4
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
      object edt_dtini: TDateEdit
        Left = 112
        Top = 16
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 5
        OnExit = edt_dtiniExit
      end
      object edt_dtfim: TDateEdit
        Left = 320
        Top = 16
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 6
        OnExit = edt_dtfimExit
      end
      object bbEmail: TBitBtn
        Left = 249
        Top = 219
        Width = 182
        Height = 25
        Caption = '&Enviar por Email'
        TabOrder = 7
        OnClick = bbEmailClick
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
      object edt_email: TEdit
        Left = 128
        Top = 152
        Width = 464
        Height = 21
        ReadOnly = True
        TabOrder = 8
      end
      object cb_varrernfe: TCheckBox
        Left = 440
        Top = 184
        Width = 185
        Height = 17
        Caption = 'Antes Varer Intersys_nfe'
        TabOrder = 9
      end
      object CODCLI: TEdit
        Left = 112
        Top = 86
        Width = 81
        Height = 21
        TabOrder = 10
        OnExit = CODCLIExit
        OnKeyPress = CODCLIKeyPress
      end
      object lbx_codcli: TListBox
        Left = 194
        Top = 85
        Width = 398
        Height = 43
        Color = 16776176
        ItemHeight = 13
        TabOrder = 11
        OnKeyDown = lbx_codcliKeyDown
      end
      object OMITIR_CLI: TCheckBox
        Left = 132
        Top = 109
        Width = 51
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
      end
      object cb_Gerar2: TCheckBox
        Left = 24
        Top = 184
        Width = 185
        Height = 17
        Caption = 'Gerar com chave de acesso'
        TabOrder = 13
      end
      object cb_tipoxml: TComboBox
        Left = 512
        Top = 16
        Width = 114
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 14
        Text = 'NFe'
        Items.Strings = (
          'NFe'
          'NFCe')
      end
      object cb_xml_inutilizacao: TCheckBox
        Left = 447
        Top = 40
        Width = 122
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Xml Inutiliza'#231#227'o:'
        TabOrder = 15
        Visible = False
      end
      object cb_xml_cancelamento: TCheckBox
        Left = 447
        Top = 59
        Width = 122
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Xml Cancelamento:'
        TabOrder = 16
        Visible = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Filtros por Tipo de Pedido'
      ImageIndex = 1
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 771
        Height = 269
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
        OnClick = RG_TIPOPEDClick
      end
    end
  end
end

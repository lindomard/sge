object Frm_RPed2: TFrm_RPed2
  Left = 279
  Top = 114
  Width = 638
  Height = 381
  Caption = 'Relatorio de Vendas Analitico  por Convenio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 630
    Height = 292
    ActivePage = tsFiltros
    Align = alTop
    TabOrder = 0
    object tsFiltros: TTabSheet
      Caption = 'Filtros Primarios'
      object Label1: TLabel
        Left = 20
        Top = 7
        Width = 54
        Height = 13
        Caption = 'Periodo de '
      end
      object Label2: TLabel
        Left = 154
        Top = 8
        Width = 6
        Height = 13
        Caption = #224
      end
      object Label7: TLabel
        Left = 8
        Top = 26
        Width = 66
        Height = 13
        Caption = 'Pedido Inicial:'
      end
      object Label8: TLabel
        Left = 167
        Top = 26
        Width = 61
        Height = 13
        Caption = 'Pedido Final:'
      end
      object Label3: TLabel
        Left = 15
        Top = 45
        Width = 58
        Height = 13
        Caption = 'Convenio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_codcli: TLabel
        Left = 29
        Top = 79
        Width = 44
        Height = 13
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_codven: TLabel
        Left = 15
        Top = 124
        Width = 59
        Height = 13
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 5
        Top = 190
        Width = 66
        Height = 13
        Caption = 'Observa'#231#245'es:'
      end
      object Label9: TLabel
        Left = 7
        Top = 207
        Width = 67
        Height = 13
        Caption = 'Separado por:'
      end
      object Label4: TLabel
        Left = 6
        Top = 232
        Width = 56
        Height = 13
        Caption = 'Tipo dados:'
      end
      object MDT1: TMaskEdit
        Left = 78
        Top = 4
        Width = 66
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 0
        Text = '  /  /    '
        OnExit = MDT1Exit
      end
      object MDT2: TMaskEdit
        Left = 175
        Top = 4
        Width = 66
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 1
        Text = '  /  /    '
        OnExit = MDT2Exit
      end
      object MPEDI: TEdit
        Left = 78
        Top = 22
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        OnKeyPress = MPEDFKeyPress
      end
      object MPEDF: TEdit
        Left = 240
        Top = 22
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        OnExit = MPEDFExit
        OnKeyPress = MPEDFKeyPress
      end
      object CODCON: TEdit
        Left = 78
        Top = 40
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnExit = CODCONExit
        OnKeyPress = CODCONKeyPress
      end
      object lbx_codcon: TListBox
        Left = 143
        Top = 40
        Width = 439
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnKeyDown = lbx_codconKeyDown
      end
      object OMITIR_CON: TCheckBox
        Left = 80
        Top = 62
        Width = 53
        Height = 17
        Caption = 'Omitir'
        TabOrder = 6
      end
      object CODCLI: TEdit
        Left = 79
        Top = 81
        Width = 65
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnExit = CODCLIExit
        OnKeyPress = CODCLIKeyPress
      end
      object lbx_codcli: TListBox
        Left = 143
        Top = 81
        Width = 439
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnKeyDown = lbx_codcliKeyDown
      end
      object OMITIR_CLI: TCheckBox
        Left = 80
        Top = 103
        Width = 50
        Height = 13
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
      end
      object CODVEN: TEdit
        Left = 80
        Top = 122
        Width = 64
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
      end
      object lbx_codven: TListBox
        Left = 143
        Top = 122
        Width = 439
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnKeyDown = lbx_codvenKeyDown
      end
      object OMITIR_VEN: TCheckBox
        Left = 82
        Top = 143
        Width = 56
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
      end
      object CB_ORC: TCheckBox
        Left = 29
        Top = 167
        Width = 180
        Height = 17
        Caption = 'Listar Tamb'#233'm os Or'#231'amentos'
        TabOrder = 13
        Visible = False
      end
      object CB_PAGOS: TCheckBox
        Left = 220
        Top = 167
        Width = 221
        Height = 17
        Caption = 'Filtrar Somente em Abertos(N'#227'o Pagos)'
        TabOrder = 14
      end
      object OBS: TEdit
        Left = 78
        Top = 187
        Width = 367
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 15
      end
      object CB_SEPARADO: TComboBox
        Left = 78
        Top = 207
        Width = 145
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 16
        Text = 'Conv'#234'nio'
        Items.Strings = (
          'Conv'#234'nio'
          'Televendas'
          'Vendedor')
      end
      object RG_FILTRO: TRadioGroup
        Left = 487
        Top = 170
        Width = 79
        Height = 55
        Caption = 'Filtrar:'
        Ctl3D = False
        ItemIndex = 2
        Items.Strings = (
          '&Pendentes'
          '&Emitidos'
          '&Todos')
        ParentCtl3D = False
        TabOrder = 17
      end
      object cb_mascara: TCheckBox
        Left = 229
        Top = 208
        Width = 180
        Height = 17
        Caption = 'Mascarar Valores *****'
        TabOrder = 18
      end
      object cb_tipoped: TComboBox
        Left = 77
        Top = 232
        Width = 145
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 19
        Text = 'Produtos'
        Items.Strings = (
          'Produtos'
          'Servicos'
          'Todos')
      end
    end
    object tsOutrosFiltros: TTabSheet
      Caption = 'Outros Filtros'
      ImageIndex = 1
      object lbl_loc: TLabel
        Left = 36
        Top = 6
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
      object Label24: TLabel
        Left = 8
        Top = 51
        Width = 71
        Height = 13
        Caption = 'Televendas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CODLOC: TEdit
        Left = 83
        Top = 6
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CODLOCExit
        OnKeyPress = CODLOCKeyPress
      end
      object lbx_codloc: TListBox
        Left = 144
        Top = 6
        Width = 474
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = lbx_codlocKeyDown
      end
      object OMITIR_LOC: TCheckBox
        Left = 83
        Top = 28
        Width = 57
        Height = 17
        Caption = 'Omitir'
        TabOrder = 2
      end
      object CODTEL: TEdit
        Left = 83
        Top = 47
        Width = 62
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODTELExit
        OnKeyPress = CODTELKeyPress
      end
      object lbx_codtel: TListBox
        Left = 144
        Top = 47
        Width = 474
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_codtelKeyDown
      end
      object OMITIR_TEL: TCheckBox
        Left = 87
        Top = 67
        Width = 55
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Tipo de Pedidos'
      ImageIndex = 2
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 622
        Height = 168
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Align = alTop
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
  object bbImprimir: TBitBtn
    Left = 47
    Top = 300
    Width = 150
    Height = 35
    Cursor = crHandPoint
    Caption = '&Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
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
    Left = 455
    Top = 300
    Width = 150
    Height = 35
    Cursor = crHandPoint
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
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
  object bb_exportar: TBitBtn
    Left = 222
    Top = 300
    Width = 150
    Height = 35
    Caption = '&Exportar Relatorio'
    TabOrder = 3
    OnClick = bb_exportarClick
    Glyph.Data = {
      36080000424D3608000000000000360400002800000020000000200000000100
      08000000000000040000C40E0000C40E00000001000000010000000000000368
      03000E5F1400091E18001C771D000C271E00203A260012342800194C29002541
      2C00096C2F00194432000E6B32003187340011733600204E38001B6B39001979
      3B00217E3F002B6541002C8746003F93460039724B004A964C00348C4E00395E
      5000489B530038975400407A5600425E5800568259003E9E590054A459004680
      5C00569A5D0044A35E004A6A5F004C876100609963005BAA640050756500548E
      660063AC680057966A0067B06E005E9B71006CB6740062B2750065A076006BA6
      7B0072BB7B006B977D0070AA800072BA830075AF85007BC1850075A0860081AA
      8D0081BC900088C792008AB7950094C79C009DD0A700A8C2A800AAD6B200BADE
      C000C4E5CA00CDDACD00D2E4D200CCE9D200D5E5D500D8E7D800D9E8D900DAE9
      DA00DCEADB00DEEBDE00DFECDF00E0EEE000E3EBE300E2EEE300E4EFE400E6F0
      E600E8F1E800EAF2E900EBF3EB00EDF5ED00EFF6EF00F1F7F100F3F8F300F5F9
      F500F6FAF500F6FAF600F8FAF800F9FBFA00FAFDFA00FBFEFB00FDFEFD00FEFF
      FE00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000626262626262
      6262626262626262626262626262626262626262626262626262626262626262
      626262626262626262626262626262626262626262626262626262621C0F0F0F
      0F0F0F0B0B0B0B0B0B070707070707050505050503030303626262621C272323
      23231F1F1F1B1B1B181814141412121211110E0E0E0C0A03626262621C273328
      282828282828242424242424241D1D1D1D1D1D1D1D1D0C0362626262212F3352
      5251504F4F4D4C4B4A4A49484747464646444444441D0E0362626262212F3353
      525251504F4F4D4C4B4A4A494847474646464444441D0E0562626262212F3354
      53525251504F4F4D4C4B4A4A4948474746464644441D0E056262626225353355
      5453525251504F4F4D4C4B4A4A49484747464646441D11056262626225353355
      555453525251504F4F4D4C402609060606060606461D11056262626225373856
      1709090909090909090908020D0D0E1013131906461D120562626262293A3857
      170E0E1010131319191901043B2E141412120147461D120762626262293B3858
      49172E32322E2C272001153E2E15181414013D47471D120762626262293D3858
      5849172E32322A2001153E2C1A1A151801083F4847241407626262622B3D3859
      585849172E2C2001153E2E20201A1A011412024948241407626262622B3E395A
      595858491720011540322020202001161E291E4A49241407626262622D3E395B
      5A595858490415403727272020163F4F4D4C4B4A4A241807626262622D40395C
      5B5A59583D17413B2A2A27201E01434F4F4D4C4B4A24180B626262622D40395D
      5C5B5A3D1A413D2E2C2A271E221E01434F4F4D4C4B241B0B626262623040395E
      5D5C3D20423D32322E2A1E2C2E201E01434F4F4D4C281B0B626262623041395E
      5E3D27423B3737322C1E2C32322E201E01434F4F4D281B0B6262626231413C5F
      3D2C423E3B373732263F262E32322E201E01434F4F281F0B6262626231413C60
      2E423E3B3B3B3526475843262E32322E201E01504F281F0B6262626231423C61
      2E2E2C2A2A26264E59585843262626291E1E1E5150281F0F6262626234423C62
      61605F5E5E5D5C5B5A59585857565555545352525128230F6262626234423C62
      6261605F5E5E5D5C5B5A595858575655555453525228230F6262626234453C62
      626261605F5E5E5D5C5B5A5958585756555554535228230F626262623645393C
      3C3C3C3C3C3C39393939393838383838383333333333230F6262626236454545
      4242424141414040403E3E3D3D3B3A3735352F2F2F27270F6262626236363634
      34343131313030302D2D2D2B2929292525252121211C1C1C6262626262626262
      6262626262626262626262626262626262626262626262626262626262626262
      6262626262626262626262626262626262626262626262626262}
  end
  object Qr_Ped: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select CVRAZAO,CRAZAO,cfone01,P1CODCLI,P1CHAVE,P1CODEMP,P1ORDEM,' +
        'P1TIPO_ENTSAI,        P1TOTALB,(P1TOTALL-nvl( (select sum(P2STOT' +
        'LIQ) from cadp02s where P2SCODEMP=P1CODEMP and P2SCHAVE=P1CHAVE ' +
        'and P2SORDEM=P1ORDEM AND P2SLOTSEQ=P1LOTSEQ),0)) as P1TOTALL,P1V' +
        'ALFRE,        P1ACRECONV,P1ACREGER,        P1DATAP,P1DATDOC,P1CO' +
        'DCV,        P1NAUT,CCIDADE,CUF,(P1TOTALL-nvl( (select sum(P2STOT' +
        'LIQ) from cadp02s where P2SCODEMP=P1CODEMP and P2SCHAVE=P1CHAVE ' +
        'and P2SORDEM=P1ORDEM AND P2SLOTSEQ=P1LOTSEQ),0))  AS TOTAPAG, '
      
        #39' Convenio: '#39' || CVRAZAO || '#39'-'#39' || TO_CHAR(CVCODCV)  AS GRUPOREL' +
        ' '
      
        ',P2CODPRO AS PROD_CODPRO,P2ITEM AS PROD_ITEM,P2QTD AS PROD_QTD,P' +
        '2PRECO AS PROD_PRECO'
      ',P2TOTDES AS PROD_TOTDES'
      ',PRODUTOS.PDUND AS PROD_UND,PRODUTOS.PDNOME AS PROD_NOME'
      
        ',P2SCODPRO AS SERV_CODPRO,P2SITEM AS SERV_ITEM,P2SQTD AS SERV_QT' +
        'D,P2SPRECO AS SERV_PRECO  '
      ',P2STOTDES AS SERV_TOTDES'
      
        '                        ,SERVICOS.PDUND AS SERV_UND,SERVICOS.PDN' +
        'OME AS SERV_NOME'
      ' from CADP01, CADCLI ,CADCV'
      ' ,CADP02'
      ' ,CADPRO PRODUTOS'
      ' ,CADP02S'
      ' ,CADPRO SERVICOS'
      ' '
      
        ' where P1STATUS<8   and CCODCLI=P1CODCLI  and ((P1CODEMP=1))    ' +
        '    and  CVCODCV(+)=P1CODCV'
      
        ' and P1DATAP > TO_DATE('#39'31/10/2020 23:59:59'#39', '#39'DD/MM/YYYY HH24:M' +
        'I:SS'#39')'
      
        ' and P1DATAP < TO_DATE('#39'09/11/2022 00:00:00'#39', '#39'DD/MM/YYYY HH24:M' +
        'I:SS'#39')'
      ' and  P1TIPO  IN (1,9)'
      ' '
      'AND  PRODUTOS.PDCODPRO(+)=P2CODPRO and  P2CODEMP(+)=P1CODEMP '
      '                  and P2CHAVE(+)=P1CHAVE '
      '                  and P2LOTSEQ(+)=P1LOTSEQ'
      ''
      'AND  SERVICOS.PDCODPRO(+)=P2SCODPRO and  P2SCODEMP(+)=P1CODEMP '
      '                  and P2SCHAVE(+)=P1CHAVE '
      '                  and P2SLOTSEQ(+)=P1LOTSEQ'
      ''
      ' '
      
        ' Order by  GRUPOREL,CRAZAO,P1CODCLI,P1CHAVE,P1ORDEM,P1TIPO_ENTSA' +
        'I'
      '')
    Left = 302
    Top = 44
    object Qr_PedP1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Qr_PedP1ORDEM: TFloatField
      FieldName = 'P1ORDEM'
      Origin = 'SG_ASSOC.CADP01.P1ORDEM'
    end
    object Qr_PedP1CODCLI: TFloatField
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Qr_PedP1TOTALB: TFloatField
      FieldName = 'P1TOTALB'
      Origin = 'SG_ASSOC.CADP01.P1TOTALB'
    end
    object Qr_PedP1TOTALL: TFloatField
      FieldName = 'P1TOTALL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Qr_PedP1VALFRE: TFloatField
      FieldName = 'P1VALFRE'
      Origin = 'SG_ASSOC.CADP01.P1VALFRE'
    end
    object Qr_PedP1ACRECONV: TFloatField
      FieldName = 'P1ACRECONV'
      Origin = 'SG_ASSOC.CADP01.P1ACRECONV'
    end
    object Qr_PedP1ACREGER: TFloatField
      FieldName = 'P1ACREGER'
      Origin = 'SG_ASSOC.CADP01.P1ACREGER'
    end
    object Qr_PedP1DATAP: TDateTimeField
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Qr_PedP1DATDOC: TDateTimeField
      FieldName = 'P1DATDOC'
      Origin = 'SG_ASSOC.CADP01.P1DATDOC'
    end
    object Qr_PedP1NAUT: TStringField
      FieldName = 'P1NAUT'
      Origin = 'SG_ASSOC.CADP01.P1NAUT'
      Size = 40
    end
    object Qr_PedCRAZAO: TStringField
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_PedCCIDADE: TStringField
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Qr_PedCUF: TStringField
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Qr_PedCVRAZAO: TStringField
      FieldName = 'CVRAZAO'
      Origin = 'SG_ASSOC.CADCV.CVRAZAO'
      Size = 30
    end
    object Qr_PedTOTAPAG: TFloatField
      FieldName = 'TOTAPAG'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Qr_PedP1CODCV: TFloatField
      FieldName = 'P1CODCV'
      Origin = 'SG_ASSOC.CADP01.P1CODCV'
    end
    object Qr_PedP1TIPO_ENTSAI: TFloatField
      FieldName = 'P1TIPO_ENTSAI'
      Origin = 'SG_ASSOC.CADP01.P1TIPO_ENTSAI'
    end
    object Qr_PedGRUPOREL: TStringField
      FieldName = 'GRUPOREL'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_PedCFONE01: TStringField
      FieldName = 'CFONE01'
      Origin = 'SG_ASSOC.CADCLI.CFONE01'
      Size = 16
    end
    object Qr_PedP1CODEMP: TFloatField
      FieldName = 'P1CODEMP'
    end
    object Qr_PedPROD_CODPRO: TFloatField
      FieldName = 'PROD_CODPRO'
    end
    object Qr_PedPROD_ITEM: TFloatField
      FieldName = 'PROD_ITEM'
    end
    object Qr_PedPROD_QTD: TFloatField
      FieldName = 'PROD_QTD'
    end
    object Qr_PedPROD_PRECO: TFloatField
      FieldName = 'PROD_PRECO'
    end
    object Qr_PedPROD_TOTDES: TFloatField
      FieldName = 'PROD_TOTDES'
    end
    object Qr_PedPROD_UND: TStringField
      FieldName = 'PROD_UND'
      Size = 3
    end
    object Qr_PedPROD_NOME: TStringField
      FieldName = 'PROD_NOME'
      Size = 120
    end
    object Qr_PedSERV_CODPRO: TFloatField
      FieldName = 'SERV_CODPRO'
    end
    object Qr_PedSERV_ITEM: TFloatField
      FieldName = 'SERV_ITEM'
    end
    object Qr_PedSERV_QTD: TFloatField
      FieldName = 'SERV_QTD'
    end
    object Qr_PedSERV_PRECO: TFloatField
      FieldName = 'SERV_PRECO'
    end
    object Qr_PedSERV_TOTDES: TFloatField
      FieldName = 'SERV_TOTDES'
    end
    object Qr_PedSERV_UND: TStringField
      FieldName = 'SERV_UND'
      Size = 3
    end
    object Qr_PedSERV_NOME: TStringField
      FieldName = 'SERV_NOME'
      Size = 120
    end
  end
  object src_Ped: TDataSource
    DataSet = Qr_Ped
    Left = 340
    Top = 48
  end
end

object Frm_RelNFS: TFrm_RelNFS
  Left = 79
  Top = 163
  Width = 885
  Height = 455
  Caption = 'Relat'#243'rio de Notas Fiscais de Sa'#237'das'
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
  object Label2: TLabel
    Left = 73
    Top = 21
    Width = 41
    Height = 13
    Caption = 'Per'#237'odo:'
  end
  object Label3: TLabel
    Left = 212
    Top = 20
    Width = 6
    Height = 13
    Caption = #224
  end
  object Label5: TLabel
    Left = 317
    Top = 207
    Width = 83
    Height = 13
    Caption = 'Quantos Clientes:'
  end
  object Label6: TLabel
    Left = 318
    Top = 228
    Width = 88
    Height = 13
    Caption = 'Quantos Produtos:'
  end
  object Label7: TLabel
    Left = 37
    Top = 37
    Width = 86
    Height = 13
    Caption = 'C'#243'digo do Cliente:'
  end
  object Label1: TLabel
    Left = 22
    Top = 80
    Width = 100
    Height = 13
    Caption = 'C'#243'digo do Vendedor:'
  end
  object Label12: TLabel
    Left = 102
    Top = 120
    Width = 17
    Height = 13
    Caption = 'UF:'
  end
  object Label4: TLabel
    Left = 128
    Top = 256
    Width = 48
    Height = 13
    Caption = 'Protocolo:'
  end
  object MDT1: TMaskEdit
    Left = 125
    Top = 18
    Width = 81
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
    Left = 231
    Top = 18
    Width = 81
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 1
    Text = '  /  /    '
    OnExit = MDT2Exit
  end
  object CB_Ana: TCheckBox
    Left = 125
    Top = 187
    Width = 97
    Height = 17
    Caption = 'Anal'#237'tico'
    TabOrder = 11
  end
  object bbImprimir: TBitBtn
    Left = 105
    Top = 345
    Width = 161
    Height = 46
    Caption = '&Imprimir'
    TabOrder = 23
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
    Left = 519
    Top = 344
    Width = 161
    Height = 46
    Caption = '&Sair'
    TabOrder = 24
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
  object CB_CLIENTES: TCheckBox
    Left = 125
    Top = 205
    Width = 179
    Height = 17
    Caption = 'Maiores Compras por Clientes'
    TabOrder = 12
  end
  object CB_PRODUTOS: TCheckBox
    Left = 125
    Top = 221
    Width = 164
    Height = 17
    Caption = 'Produtos mais vendidos'
    TabOrder = 14
  end
  object QTDCLI: TEdit
    Left = 408
    Top = 203
    Width = 54
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 13
    OnExit = QTDCLIExit
  end
  object QTDPRO: TEdit
    Left = 409
    Top = 224
    Width = 54
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 15
    OnExit = QTDPROExit
  end
  object RG_NFCANC: TRadioGroup
    Left = 473
    Top = 186
    Width = 94
    Height = 65
    Caption = 'Listar Notas:'
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      '0-Todas'
      '1-Normais'
      '2-Canceladas'
      '3-Inutilizadas'
      '4-Denegadas')
    ParentCtl3D = False
    TabOrder = 16
  end
  object CODCLI: TEdit
    Left = 125
    Top = 36
    Width = 59
    Height = 19
    Hint = 'Informe Codigo do Cliente ou'#13#10'digite o nome p/consultar'
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnExit = CODCLIExit
    OnKeyPress = CODCLIKeyPress
  end
  object lbx_codcli: TListBox
    Left = 183
    Top = 36
    Width = 500
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnKeyDown = lbx_codcliKeyDown
  end
  object OMITIR_CLI: TCheckBox
    Left = 125
    Top = 58
    Width = 51
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object CODVEN: TEdit
    Left = 125
    Top = 77
    Width = 59
    Height = 19
    Hint = 'Informe Codigo do Vendedor ou'#13#10'digite o nome p/ Consultar'
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnExit = CODVENExit
    OnKeyPress = CODVENKeyPress
  end
  object lbx_codven: TListBox
    Left = 183
    Top = 77
    Width = 500
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnKeyDown = lbx_codvenKeyDown
  end
  object OMITIR_VEN: TCheckBox
    Left = 127
    Top = 100
    Width = 51
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
  end
  object CODUF: TEdit
    Left = 125
    Top = 118
    Width = 60
    Height = 19
    Hint = 'Digite o C'#243'digo a Ser Filtrado'
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnExit = CODUFExit
    OnKeyDown = CODUFKeyDown
  end
  object lbx_coduf: TListBox
    Left = 183
    Top = 118
    Width = 500
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
  object OMITIR_UF: TCheckBox
    Left = 126
    Top = 138
    Width = 50
    Height = 17
    Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
  end
  object RG_IE: TRadioGroup
    Left = 88
    Top = 304
    Width = 401
    Height = 39
    Caption = 'Sobre Inscri'#231#227'o Estadual'
    Columns = 3
    ItemIndex = 2
    Items.Strings = (
      'Com Inscri'#231#227'o '
      'Sem Inscri'#231#227'o '
      'Todos')
    TabOrder = 17
  end
  object rg_notas: TRadioGroup
    Left = 577
    Top = 186
    Width = 94
    Height = 65
    Caption = 'Listar Notas:'
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'Todas'
      'Entradas'
      'Saidas')
    ParentCtl3D = False
    TabOrder = 18
  end
  object RG_LOCAL_OPERACAO: TRadioGroup
    Left = 673
    Top = 186
    Width = 104
    Height = 65
    Caption = 'Local da Opera'#231#227'o:'
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'Todas'
      'Estadual'
      'Interestadual'
      'Internacional')
    ParentCtl3D = False
    TabOrder = 19
  end
  object rg_ecf: TRadioGroup
    Left = 505
    Top = 306
    Width = 256
    Height = 31
    Caption = 'ECF:'
    Columns = 3
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'Todas'
      'com ecf'
      'sem ecf')
    ParentCtl3D = False
    TabOrder = 20
    Visible = False
  end
  object bbComparar: TBitBtn
    Left = 305
    Top = 345
    Width = 161
    Height = 46
    Caption = 'Comparar a Planilha'
    TabOrder = 21
    OnClick = bbCompararClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00559999999995
      5555557777777775F5555559999999505555555777777757FFF5555555555550
      0955555555555FF7775F55555555995501955555555577557F75555555555555
      01995555555555557F5755555555555501905555555555557F57555555555555
      0F905555555555557FF75555555555500005555555555557777555555555550F
      F05555555555557F57F5555555555008F05555555555F775F755555555570000
      05555555555775577555555555700007555555555F755F775555555570000755
      55555555775F77555555555700075555555555F75F7755555555570007555555
      5555577F77555555555500075555555555557777555555555555}
    NumGlyphs = 2
  end
  object cb_protocolo: TComboBox
    Left = 208
    Top = 256
    Width = 145
    Height = 21
    ItemHeight = 13
    ItemIndex = 2
    TabOrder = 22
    Text = 'Todas'
    Items.Strings = (
      'Com Protocolo'
      'Sem Protocolo'
      'Todas')
  end
  object StaticText4: TStaticText
    Left = 690
    Top = 94
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
    TabOrder = 25
  end
  object CLB_TipoNota: TCheckListBox
    Left = 690
    Top = 112
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
    TabOrder = 26
    OnClick = CLB_TipoNotaClick
  end
  object cb_salvarsql: TCheckBox
    Left = 728
    Top = 376
    Width = 97
    Height = 17
    Caption = 'Salvar SQl'
    TabOrder = 27
    Visible = False
  end
  object Qr_NFS: TQuery
    OnCalcFields = Qr_NFSCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select NSNUMERO,NSSERIE,NSDTEMIS,NSCODCLI,NSCFO1,NSCFO2,'
      
        'NSTOTNOTA,NSBASEN,NSICMSN,(NSBASERP+NSBASERI+NSBASERN) AS BASERE' +
        'T,'
      '(NSICMSRP+NSICMSRN+NSICMSRI) AS ICMSRET,NSTOTISEN,'
      'NSSTATUS,NSCHAVEP,NSORDEMP,NSTOTNOR,'
      'NSTOTOUT,NSCODEMP, NSLOTSEQ_CP, CRAZAO,CUF'
      ',NSCFO1 as CFO1 ,NSCFO2 as CFO2'
      'from CADNS,CADCLI'
      'where NSCODEMP is null'
      'and CCODEMP=NSCODEMP'
      'and CCODCLI=NSCODCLI')
    Left = 264
    Top = 184
    object Qr_NFSNSNUMERO: TFloatField
      FieldName = 'NSNUMERO'
      Origin = 'SG_ASSOC.CADNS.NSNUMERO'
    end
    object Qr_NFSNSSERIE: TStringField
      FieldName = 'NSSERIE'
      Origin = 'SG_ASSOC.CADNS.NSSERIE'
      Size = 6
    end
    object Qr_NFSNSDTEMIS: TDateTimeField
      FieldName = 'NSDTEMIS'
      Origin = 'SG_ASSOC.CADNS.NSDTEMIS'
    end
    object Qr_NFSNSCODCLI: TFloatField
      FieldName = 'NSCODCLI'
      Origin = 'SG_ASSOC.CADNS.NSCODCLI'
    end
    object Qr_NFSNSCFO1: TStringField
      FieldName = 'NSCFO1'
      Origin = 'SG_ASSOC.CADNS.NSCFO1'
      Size = 4
    end
    object Qr_NFSNSCFO2: TStringField
      FieldName = 'NSCFO2'
      Origin = 'SG_ASSOC.CADNS.NSCFO2'
      Size = 4
    end
    object Qr_NFSNSTOTNOTA: TFloatField
      FieldName = 'NSTOTNOTA'
      Origin = 'SG_ASSOC.CADNS.NSTOTNOTA'
    end
    object Qr_NFSNSBASEN: TFloatField
      FieldName = 'NSBASEN'
      Origin = 'SG_ASSOC.CADNS.NSBASEN'
    end
    object Qr_NFSNSICMSN: TFloatField
      FieldName = 'NSICMSN'
      Origin = 'SG_ASSOC.CADNS.NSICMSN'
    end
    object Qr_NFSBASERET: TFloatField
      FieldName = 'BASERET'
      Origin = 'SG_ASSOC.CADNS.NSBASERP'
    end
    object Qr_NFSICMSRET: TFloatField
      FieldName = 'ICMSRET'
      Origin = 'SG_ASSOC.CADNS.NSICMSRP'
    end
    object Qr_NFSNSTOTISEN: TFloatField
      FieldName = 'NSTOTISEN'
      Origin = 'SG_ASSOC.CADNS.NSTOTISEN'
    end
    object Qr_NFSNSTOTOUT: TFloatField
      FieldName = 'NSTOTOUT'
      Origin = 'SG_ASSOC.CADNS.NSTOTOUT'
    end
    object Qr_NFSCRAZAO: TStringField
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_NFSCUF: TStringField
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Qr_NFSNSSTATUS: TFloatField
      FieldName = 'NSSTATUS'
      Origin = 'SG_ASSOC.CADNS.NSSTATUS'
    end
    object Qr_NFSNSCODEMP: TFloatField
      FieldName = 'NSCODEMP'
      Origin = 'SG_ASSOC.CADNS.NSCODEMP'
    end
    object Qr_NFSNSCHAVEP: TFloatField
      FieldName = 'NSCHAVEP'
      Origin = 'SG_ASSOC.CADNS.NSCHAVEP'
    end
    object Qr_NFSNSORDEMP: TFloatField
      FieldName = 'NSORDEMP'
      Origin = 'SG_ASSOC.CADNS.NSORDEMP'
    end
    object Qr_NFSNSLOTSEQ_CP: TFloatField
      FieldName = 'NSLOTSEQ_CP'
      Origin = 'SG_ASSOC.CADNS.NSLOTSEQ_CP'
    end
    object Qr_NFSoutras: TFloatField
      FieldKind = fkCalculated
      FieldName = 'outras'
      Calculated = True
    end
    object Qr_NFSNSTOTNOR: TFloatField
      FieldName = 'NSTOTNOR'
      Origin = 'SG_ASSOC.CADNS.NSTOTNOR'
    end
    object Qr_NFSNSNFSERV_NUMNF: TFloatField
      FieldName = 'NSNFSERV_NUMNF'
    end
    object Qr_NFSNSNFSERV_NUMNF_RPS: TFloatField
      FieldName = 'NSNFSERV_NUMNF_RPS'
    end
    object Qr_NFSNSNFCE_NUMERO: TFloatField
      FieldName = 'NSNFCE_NUMERO'
    end
    object Qr_NFSNSNUMCUP: TFloatField
      FieldName = 'NSNUMCUP'
    end
    object Qr_NFSNUMDOC: TFloatField
      FieldName = 'NUMDOC'
    end
    object Qr_NFSNSNFCF: TFloatField
      FieldName = 'NSNFCF'
    end
    object Qr_NFSDATDOC: TDateTimeField
      FieldName = 'DATDOC'
    end
  end
  object Qr_PedMer: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2CHAVE,P2ORDEM,P2CODPRO,'
      'P2PRECO,P2QTD,P2BASEN,P2ICMSN,'
      'P2BASER,P2ICMSR,P2TOTDES,P2TOTLIQ,PDNOME,PDMARCA,PDUND'
      'from CADP02,CADPRO where '
      'PDCODEMP=P2CODEMP and '
      'PDCODPRO=P2CODPRO'
      'and P2CODEMP is null')
    Left = 312
    Top = 174
    object Qr_PedMerP2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE'
    end
    object Qr_PedMerP2ORDEM: TFloatField
      FieldName = 'P2ORDEM'
      Origin = 'SG_ASSOC.CADP02.P2ORDEM'
    end
    object Qr_PedMerP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Qr_PedMerP2PRECO: TFloatField
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Qr_PedMerP2QTD: TFloatField
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Qr_PedMerP2BASEN: TFloatField
      FieldName = 'P2BASEN'
      Origin = 'SG_ASSOC.CADP02.P2BASEN'
    end
    object Qr_PedMerP2ICMSN: TFloatField
      FieldName = 'P2ICMSN'
      Origin = 'SG_ASSOC.CADP02.P2ICMSN'
    end
    object Qr_PedMerP2BASER: TFloatField
      FieldName = 'P2BASER'
      Origin = 'SG_ASSOC.CADP02.P2BASER'
    end
    object Qr_PedMerP2ICMSR: TFloatField
      FieldName = 'P2ICMSR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSR'
    end
    object Qr_PedMerP2TOTDES: TFloatField
      FieldName = 'P2TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object Qr_PedMerP2TOTLIQ: TFloatField
      FieldName = 'P2TOTLIQ'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object Qr_PedMerPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_PedMerPDMARCA: TStringField
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Qr_PedMerPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
  end
  object Qr_PedSer: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2SCHAVE,P2SORDEM,P2SCODPRO,'
      'P2SPRECO,P2SQTD,P2SBCISSQN,P2SVISSQN,'
      'P2STOTDES,PDNOME,PDMARCA,PDUND'
      'from CADP02S,CADPRO where'
      'PDCODEMP=P2SCODEMP and'
      'PDCODPRO=P2SCODPRO'
      'and P2SCODEMP is null')
    Left = 349
    Top = 175
    object Qr_PedSerP2SCHAVE: TFloatField
      FieldName = 'P2SCHAVE'
      Origin = 'SG_ASSOC.CADP02S.P2SCHAVE'
    end
    object Qr_PedSerP2SORDEM: TFloatField
      FieldName = 'P2SORDEM'
      Origin = 'SG_ASSOC.CADP02S.P2SORDEM'
    end
    object Qr_PedSerP2SCODPRO: TFloatField
      FieldName = 'P2SCODPRO'
      Origin = 'SG_ASSOC.CADP02S.P2SCODPRO'
    end
    object Qr_PedSerP2SPRECO: TFloatField
      FieldName = 'P2SPRECO'
      Origin = 'SG_ASSOC.CADP02S.P2SPRECO'
    end
    object Qr_PedSerP2SQTD: TFloatField
      FieldName = 'P2SQTD'
      Origin = 'SG_ASSOC.CADP02S.P2SQTD'
    end
    object Qr_PedSerP2SBCISSQN: TFloatField
      FieldName = 'P2SBCISSQN'
      Origin = 'SG_ASSOC.CADP02S.P2SBCISSQN'
    end
    object Qr_PedSerP2SVISSQN: TFloatField
      FieldName = 'P2SVISSQN'
      Origin = 'SG_ASSOC.CADP02S.P2SVISSQN'
    end
    object Qr_PedSerP2STOTDES: TFloatField
      FieldName = 'P2STOTDES'
      Origin = 'SG_ASSOC.CADP02S.P2STOTDES'
    end
    object Qr_PedSerPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_PedSerPDMARCA: TStringField
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Qr_PedSerPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
  end
  object Qr_Compras_Cli: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CRAZAO AS NOME ,P1CODCLI AS CODIGO, CCNPJ as CNPJ,'
      '       sum(p1totall) as total,'
      '       sum(p1semcom) as semcom,'
      '       sum(P1VALFRE) as frete,'
      '       sum(P1ICMSR) as ICMSR from CADP01,CADCLI'
      '       where P1STATUS<>9 and P1CODEMP is null'
      '       and CCODEMP=P1CODEMP '
      '       and CCODCLI=P1CODCLI'
      '       and P1EMIDOC=1'
      '       and P1TIPO<>0 and P1TIPO<>8'
      'group by CRAZAO,P1CODCLI,CCNPJ'
      '')
    Left = 456
    Top = 32
    object Qr_Compras_CliNOME: TStringField
      FieldName = 'NOME'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_Compras_CliCODIGO: TFloatField
      FieldName = 'CODIGO'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Qr_Compras_CliTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Qr_Compras_CliSEMCOM: TFloatField
      FieldName = 'SEMCOM'
      Origin = 'SG_ASSOC.CADP01.P1SEMCOM'
    end
    object Qr_Compras_CliFRETE: TFloatField
      FieldName = 'FRETE'
      Origin = 'SG_ASSOC.CADP01.P1VALFRE'
    end
    object Qr_Compras_CliICMSR: TFloatField
      FieldName = 'ICMSR'
      Origin = 'SG_ASSOC.CADP01.P1ICMSR'
    end
    object Qr_Compras_CliCNPJ: TFloatField
      FieldName = 'CNPJ'
      Origin = 'SG_ASSOC.CADCLI.CCNPJ'
    end
  end
  object Qr_Vendas_Pro: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PDNOME, P2CODPRO,PDCLAS,sum(P2TOTLIQ)  as total'
      '       from CADP01,CADP02,CADPRO'
      '       where P1STATUS<>9 and P1CODEMP is null'
      '       and P2CODEMP=P1CODEMP'
      
        '       and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1O' +
        'RDEM'
      '       and PDCODEMP=P2CODEMP'
      '       and PDCODPRO=P2CODPRO'
      '       and P1EMIDOC=1'
      '       and P1TIPO<>0 and P1TIPO<>8'
      '       Group by PDNOME,P2CODPRO,PDCLAS'
      '')
    Left = 456
    Top = 166
    object Qr_Vendas_ProPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_Vendas_ProP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Qr_Vendas_ProPDCLAS: TStringField
      FieldName = 'PDCLAS'
      Origin = 'SG_ASSOC.CADPRO.PDCLAS'
    end
    object Qr_Vendas_ProTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
  end
  object Opd1: TOpenDialog
    Left = 728
    Top = 40
  end
end

object Frm_ChqCP: TFrm_ChqCP
  Left = 151
  Top = 82
  Width = 581
  Height = 347
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Relatorio de Cheques Emitidos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 573
    Height = 272
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 37
      Top = 14
      Width = 66
      Height = 13
      Caption = 'Periodo de '
    end
    object Label2: TLabel
      Left = 254
      Top = 35
      Width = 8
      Height = 13
      Caption = #224
    end
    object Label3: TLabel
      Left = 76
      Top = 33
      Width = 69
      Height = 13
      Caption = 'Fornecedor:'
    end
    object Label4: TLabel
      Left = 40
      Top = 160
      Width = 116
      Height = 13
      Caption = 'Ordem de Impress'#227'o'
    end
    object MDT1: TMaskEdit
      Left = 149
      Top = 8
      Width = 100
      Height = 19
      Hint = 'Infome a Data Inicial'#13#10'para Pesquisa'
      Color = 13041663
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 272
      Top = 8
      Width = 100
      Height = 19
      Hint = 'Infome a Data Final'#13#10'para Pesquisa'
      Color = 13041663
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object CODFOR: TEdit
      Left = 149
      Top = 29
      Width = 67
      Height = 19
      Hint = 
        'Digite o C'#243'digo do fornecedor Desejado'#13#10'para Consultar comece a ' +
        'digitar o'#13#10'nome do Mesmo. '#13#10'Deixe em Branco para Geral(todos)'
      Color = 13041663
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnExit = CODFORExit
      OnKeyPress = CODFORKeyPress
    end
    object NOMFOR: TEdit
      Left = 215
      Top = 29
      Width = 309
      Height = 19
      Color = 16761312
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 3
      Text = 'Todos...'
    end
    object RG_TIPO: TRadioGroup
      Left = 37
      Top = 53
      Width = 164
      Height = 77
      Hint = 
        'Para filtrar Somente '#13#10'Cheques em Aberto '#13#10'ou Pagos Selecione '#13#10 +
        'a Op'#231#227'o Desejada'
      Caption = 'Listar os cheques do tipo:'
      Ctl3D = False
      ItemIndex = 1
      Items.Strings = (
        'Todos'
        '&Em Abertos'
        '&Baixados')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object RG_TPREL: TRadioGroup
      Left = 363
      Top = 53
      Width = 162
      Height = 77
      Hint = 'Selecione qual a data '#13#10'a ser pesquisada'
      Caption = 'Pesquisar por data de'
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        '&Deposito'
        '&Lan'#231'amento'
        '&Baixa')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object RG_DEPOSITO: TRadioGroup
      Left = 200
      Top = 53
      Width = 164
      Height = 77
      Hint = 
        'Para filtrar Somente '#13#10'Cheques em Aberto '#13#10'ou Pagos Selecione '#13#10 +
        'a Op'#231#227'o Desejada'
      Caption = 'Cheques do tipo'
      Ctl3D = False
      ItemIndex = 2
      Items.Strings = (
        'p/Deposito'
        'Cheque Balcao'
        'Todos')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Visible = False
    end
    object CB_OMITIRDIA: TCheckBox
      Left = 38
      Top = 134
      Width = 275
      Height = 17
      Caption = 'Omitir Cheques Imediatos'
      TabOrder = 7
    end
    object CB_ORDEM: TComboBox
      Left = 40
      Top = 176
      Width = 177
      Height = 21
      BevelKind = bkFlat
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 8
      Text = 'Dt.Deposito+Emitente'
      Items.Strings = (
        'Dt.Deposito+Emitente'
        'Dt.Deposito+Raz'#227'o Social'
        'Dt.Emiss'#227'o+Emitente'
        'Dt.Emiss'#227'o+Raz'#227'o Social'
        'Dt.Baixa+Emitente'
        'Dt.Baixa+Raz'#227'o Social'
        'Valor Crescente'
        'Valor Decrescente'
        'Raz'#227'o Social+Dt.Deposito'
        'Emitente+Dt.Deposito'
        'Lan'#231'amento')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 272
    Width = 573
    Height = 41
    Align = alBottom
    TabOrder = 1
    object sb_SalvarPadrao: TSpeedButton
      Left = 217
      Top = 1
      Width = 150
      Height = 40
      Hint = 'Salva as configura'#231#245'es como padr'#227'o'
      Caption = '&Salvar Padr'#227'o'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = sb_SalvarPadraoClick
    end
    object bbImprimir: TBitBtn
      Left = 0
      Top = 1
      Width = 150
      Height = 40
      Hint = 
        'Click aqui para imprimir'#13#10'de acordo com os parametros'#13#10'digitados' +
        '. Antes de Imprimir'#13#10'vc poder'#225' visualizar'
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
      Left = 422
      Top = 0
      Width = 150
      Height = 40
      Hint = 'Click aqui para Fechar esta janela'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
  end
  object Qr_Chq: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CHNUMERO,CHBANCO,CHSERIE, CHCODFOR,'
      '       CHEMIT, CHCPF, CHRG, CHCC, CHDTNAS,'
      '       CHVALOR, CHDTEMIS, CHDTDEP, CHAGENCIA,CHDTBX,'
      '       CHLOTE, CHTIPO, CHCOMP,FRAZAO'
      '       from CADCHCP, CADFOR where'
      '       CHCODEMP is null and'
      '       FCODEMP=CHCODEMP and'
      '       FCODFOR=CHCODFOR')
    Left = 64
    Top = 6
    object Qr_ChqCHNUMERO: TFloatField
      FieldName = 'CHNUMERO'
      Origin = 'SG_ASSOC.CADCHQ.CHNUMERO'
    end
    object Qr_ChqCHBANCO: TFloatField
      FieldName = 'CHBANCO'
      Origin = 'SG_ASSOC.CADCHQ.CHBANCO'
    end
    object Qr_ChqCHSERIE: TStringField
      FieldName = 'CHSERIE'
      Origin = 'SG_ASSOC.CADCHQ.CHSERIE'
    end
    object Qr_ChqCHEMIT: TStringField
      FieldName = 'CHEMIT'
      Origin = 'SG_ASSOC.CADCHQ.CHEMIT'
      Size = 40
    end
    object Qr_ChqCHCPF: TFloatField
      FieldName = 'CHCPF'
      Origin = 'SG_ASSOC.CADCHQ.CHCPF'
    end
    object Qr_ChqCHRG: TStringField
      FieldName = 'CHRG'
      Origin = 'SG_ASSOC.CADCHQ.CHRG'
      Size = 40
    end
    object Qr_ChqCHCC: TStringField
      FieldName = 'CHCC'
      Origin = 'SG_ASSOC.CADCHQ.CHCC'
    end
    object Qr_ChqCHDTNAS: TDateTimeField
      FieldName = 'CHDTNAS'
      Origin = 'SG_ASSOC.CADCHQ.CHDTNAS'
    end
    object Qr_ChqCHVALOR: TFloatField
      FieldName = 'CHVALOR'
      Origin = 'SG_ASSOC.CADCHQ.CHVALOR'
    end
    object Qr_ChqCHDTEMIS: TDateTimeField
      FieldName = 'CHDTEMIS'
      Origin = 'SG_ASSOC.CADCHQ.CHDTEMIS'
    end
    object Qr_ChqCHDTDEP: TDateTimeField
      FieldName = 'CHDTDEP'
      Origin = 'SG_ASSOC.CADCHQ.CHDTDEP'
    end
    object Qr_ChqCHAGENCIA: TStringField
      FieldName = 'CHAGENCIA'
      Origin = 'SG_ASSOC.CADCHQ.CHAGENCIA'
      Size = 10
    end
    object Qr_ChqCHLOTE: TFloatField
      FieldName = 'CHLOTE'
      Origin = 'SG_ASSOC.CADCHQ.CHLOTE'
    end
    object Qr_ChqCHTIPO: TFloatField
      FieldName = 'CHTIPO'
      Origin = 'SG_ASSOC.CADCHQ.CHTIPO'
    end
    object Qr_ChqCHCOMP: TStringField
      FieldName = 'CHCOMP'
      Origin = 'SG_ASSOC.CADCHQ.CHCOMP'
      Size = 4
    end
    object Qr_ChqCHDTBX: TDateTimeField
      FieldName = 'CHDTBX'
      Origin = 'SG_ASSOC.CADCHQ.CHDTBX'
    end
    object Qr_ChqCHCODFOR: TFloatField
      FieldName = 'CHCODFOR'
      Origin = 'SG_ASSOC.CADCHCP.CHCODFOR'
    end
    object Qr_ChqFRAZAO: TStringField
      FieldName = 'FRAZAO'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 40
    end
  end
end

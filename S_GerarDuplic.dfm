object Frm_GerarDuplic: TFrm_GerarDuplic
  Left = 148
  Top = 109
  Width = 653
  Height = 459
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Gerar Duplicatas de Contas a Receber'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 7
    Top = 7
    Width = 63
    Height = 13
    AutoSize = False
    Caption = 'Per'#237'odo.........'
  end
  object Label3: TLabel
    Left = 149
    Top = 7
    Width = 6
    Height = 13
    Caption = #224
  end
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 36
    Height = 13
    Caption = 'Pedido:'
  end
  object MDT1: TMaskEdit
    Left = 61
    Top = 3
    Width = 81
    Height = 19
    Hint = 
      'Para filtrar t'#237'tulos somente a Partir de '#13#10'uma determinada data ' +
      #13#10'digite a mesma.'
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
    Left = 166
    Top = 3
    Width = 80
    Height = 19
    Hint = 
      'Para filtrar t'#237'tulos at'#233' '#13#10'uma determinada data '#13#10'digite a mesma' +
      '.'
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
  object bbGerar: TBitBtn
    Left = 16
    Top = 62
    Width = 150
    Height = 25
    Caption = 'Gerar Agora'
    TabOrder = 3
    OnClick = bbGerarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
  end
  object bbSair: TBitBtn
    Left = 202
    Top = 62
    Width = 150
    Height = 25
    Hint = 'Fecha Este Formul'#225'rio'#13#10'e Volta ao Menu Principal'
    Caption = '&Sair'
    ParentShowHint = False
    ShowHint = True
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
  object bbTransfChq: TBitBtn
    Left = 37
    Top = 123
    Width = 150
    Height = 25
    Caption = 'Transferir Cheques'
    TabOrder = 5
    OnClick = bbTransfChqClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
  end
  object CHAVE: TEdit
    Left = 62
    Top = 25
    Width = 121
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    OnExit = CHAVEExit
  end
  object Qr_PedFP: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select PFPCODEMP,'
      '       PFPLOTSEQ,'
      '       PFPCHAVE,'
      '       PFPSEQ,'
      '       PFPVINCULO,'
      '       PFPFORMA,'
      '       PFPNOMFOR,'
      '       PFPDATA,'
      '       PFPNUMDOC,'
      '       PFPBANCO,'
      '       PFPSERIE,'
      '       PFPVALOR,'
      '       PFPCC,'
      '       PFPCOMP,'
      '       PFPAGENCIA,'
      '       PFPEMITENTE,'
      '       PFPCNPF,'
      '       PFPRG,'
      '       PFPDTNAS'
      '       ,PFPFPGTO'
      '       from CADPFP where PFPCODEMP is null'
      '')
    Left = 317
    Top = 7
    object Qr_PedFPPFPCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'PFPCODEMP'
      Origin = 'SG_ASSOC.CADPFP.PFPCODEMP'
    end
    object Qr_PedFPPFPLOTSEQ: TFloatField
      DisplayLabel = 'Lote Sequencia'
      FieldName = 'PFPLOTSEQ'
      Origin = 'SG_ASSOC.CADPFP.PFPLOTSEQ'
    end
    object Qr_PedFPPFPCHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'PFPCHAVE'
      Origin = 'SG_ASSOC.CADPFP.PFPCHAVE'
    end
    object Qr_PedFPPFPSEQ: TFloatField
      DisplayLabel = 'Sequencia'
      FieldName = 'PFPSEQ'
      Origin = 'SG_ASSOC.CADPFP.PFPSEQ'
    end
    object Qr_PedFPPFPFORMA: TFloatField
      DisplayLabel = 'Forma Pgto'
      FieldName = 'PFPFORMA'
      Origin = 'SG_ASSOC.CADPFP.PFPFORMA'
    end
    object Qr_PedFPPFPNUMDOC: TStringField
      DisplayLabel = 'N'#250'mero doc'
      FieldName = 'PFPNUMDOC'
      Origin = 'SG_ASSOC.CADPFP.PFPNUMDOC'
    end
    object Qr_PedFPPFPBANCO: TFloatField
      DisplayLabel = 'Banco'
      FieldName = 'PFPBANCO'
      Origin = 'SG_ASSOC.CADPFP.PFPBANCO'
    end
    object Qr_PedFPPFPSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'PFPSERIE'
      Origin = 'SG_ASSOC.CADPFP.PFPSERIE'
    end
    object Qr_PedFPPFPVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'PFPVALOR'
      Origin = 'SG_ASSOC.CADPFP.PFPVALOR'
    end
    object Qr_PedFPPFPCC: TStringField
      DisplayLabel = 'Conta Corrente'
      FieldName = 'PFPCC'
      Origin = 'SG_ASSOC.CADPFP.PFPCC'
    end
    object Qr_PedFPPFPCOMP: TStringField
      DisplayLabel = 'Compensa'#231#227'o'
      FieldName = 'PFPCOMP'
      Origin = 'SG_ASSOC.CADPFP.PFPCOMP'
      Size = 5
    end
    object Qr_PedFPPFPAGENCIA: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'PFPAGENCIA'
      Origin = 'SG_ASSOC.CADPFP.PFPAGENCIA'
      Size = 8
    end
    object Qr_PedFPPFPEMITENTE: TStringField
      DisplayLabel = 'Emitente'
      FieldName = 'PFPEMITENTE'
      Origin = 'SG_ASSOC.CADPFP.PFPEMITENTE'
      Size = 40
    end
    object Qr_PedFPPFPDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'PFPDATA'
      Origin = 'SG_ASSOC.CADPFP.PFPDATA'
    end
    object Qr_PedFPnombco: TStringField
      DisplayLabel = 'Nome do Banco'
      FieldKind = fkCalculated
      FieldName = 'nombco'
      Size = 40
      Calculated = True
    end
    object Qr_PedFPPFPNOMFOR: TStringField
      FieldName = 'PFPNOMFOR'
      Origin = 'SG_ASSOC.CADPFP.PFPNOMFOR'
    end
    object Qr_PedFPPFPCNPF: TFloatField
      FieldName = 'PFPCNPF'
      Origin = 'SG_ASSOC.CADPFP.PFPCNPF'
    end
    object Qr_PedFPPFPRG: TStringField
      FieldName = 'PFPRG'
      Origin = 'SG_ASSOC.CADPFP.PFPRG'
      Size = 50
    end
    object Qr_PedFPPFPDTNAS: TDateTimeField
      FieldName = 'PFPDTNAS'
      Origin = 'SG_ASSOC.CADPFP.PFPDTNAS'
    end
    object Qr_PedFPmdatabco: TDateField
      FieldKind = fkCalculated
      FieldName = 'mdatabco'
      Calculated = True
    end
    object Qr_PedFPPFPVINCULO: TFloatField
      FieldName = 'PFPVINCULO'
      Origin = 'SG_ASSOC.CADPFP.PFPVINCULO'
    end
    object Qr_PedFPPFPFPGTO: TFloatField
      FieldName = 'PFPFPGTO'
      Origin = 'SG_ASSOC.CADPFP.PFPFPGTO'
    end
  end
end

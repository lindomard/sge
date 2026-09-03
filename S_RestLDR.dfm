object Frm_RestLDR: TFrm_RestLDR
  Left = 192
  Top = 110
  Width = 544
  Height = 375
  Caption = 'Restaurar arquivos do Fluxo de Caixa Perdido devido ha erros'
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
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 536
    Height = 100
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 
      'Crit'#233'rito para Restaurar lan'#231'amentos perdidos: Primeiro  mostra ' +
      'a sele'#231#227'o dos registros que est'#227'o perdidos ap'#243's isso pede para q' +
      'ue se confirme, quando confirmado os registros ir'#227'o voltar ao ba' +
      'nco de dados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsItalic]
    ParentFont = False
    WordWrap = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 303
    Width = 536
    Height = 41
    Align = alBottom
    TabOrder = 0
    object bbSelecionar: TBitBtn
      Left = 1
      Top = 2
      Width = 145
      Height = 38
      Caption = 'Selecionar Registros'
      TabOrder = 0
      OnClick = bbSelecionarClick
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
    object bbRestaurar: TBitBtn
      Left = 200
      Top = 3
      Width = 145
      Height = 38
      Caption = 'Restaurar os Registros'
      TabOrder = 1
      OnClick = bbRestaurarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
        007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
        7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
        99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 389
      Top = 3
      Width = 145
      Height = 38
      Caption = 'Fechar'
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
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 133
    Width = 536
    Height = 170
    Align = alClient
    Caption = 'Registros N'#227'o Encontrados no Caixa:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 532
      Height = 153
      Align = alClient
      DataSource = Src_Dar
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CRNUMERO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRDESD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRCODCLI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRDTEMIS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRDTVCTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRDTPAG'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRDTBX'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRNPED'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRORDEM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRVALPAG'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRCODLDR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRVALOR'
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 100
    Width = 536
    Height = 33
    Align = alTop
    Caption = 'Filtrar:'
    TabOrder = 2
    object Label3: TLabel
      Left = 226
      Top = 12
      Width = 6
      Height = 13
      Caption = #224
    end
    object Label2: TLabel
      Left = 70
      Top = 12
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object MDT2: TMaskEdit
      Left = 245
      Top = 9
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
    object MDT1: TMaskEdit
      Left = 138
      Top = 9
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
  end
  object Qr_Dar: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select CRCODEMP,CRNUMERO,CRDESD,CRCODCLI,CRDTEMIS,CRDTVCTO,CRDTP' +
        'AG,'
      'CRDTBX,CRNPED,CRORDEM,CRVALOR,CRVALPAG,CRCODLDR,CRCODCAI'
      'FROM CADDAR,CADLDR'
      'WHERE CRCODLDR>0 AND CRNPED>0 AND'
      'CODLDR(+)=CRCODLDR'
      'AND CODLDR is null')
    Left = 192
    Top = 56
    object Qr_DarCRNUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CRNUMERO'
    end
    object Qr_DarCRDESD: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'CRDESD'
      Size = 2
    end
    object Qr_DarCRCODCLI: TFloatField
      DisplayLabel = 'Cod.Cliente'
      FieldName = 'CRCODCLI'
    end
    object Qr_DarCRDTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'CRDTEMIS'
    end
    object Qr_DarCRDTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'CRDTVCTO'
    end
    object Qr_DarCRDTPAG: TDateTimeField
      DisplayLabel = 'Dt.Pgto'
      FieldName = 'CRDTPAG'
    end
    object Qr_DarCRDTBX: TDateTimeField
      DisplayLabel = 'Dt.Baixa'
      FieldName = 'CRDTBX'
    end
    object Qr_DarCRNPED: TFloatField
      DisplayLabel = 'N'#250'm.Ped.'
      FieldName = 'CRNPED'
    end
    object Qr_DarCRORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'CRORDEM'
    end
    object Qr_DarCRVALPAG: TFloatField
      DisplayLabel = 'Valor Pago'
      FieldName = 'CRVALPAG'
    end
    object Qr_DarCRCODLDR: TFloatField
      DisplayLabel = 'Codigo LDR'
      FieldName = 'CRCODLDR'
    end
    object Qr_DarCRVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CRVALOR'
    end
    object Qr_DarCRCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CRCODEMP'
    end
  end
  object Src_Dar: TDataSource
    DataSet = Qr_Dar
    Left = 232
    Top = 48
  end
end

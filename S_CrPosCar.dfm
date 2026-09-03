object Frm_CrPosCar: TFrm_CrPosCar
  Left = 74
  Top = 0
  Width = 662
  Height = 489
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Posicao das Carteiras(Contas a Receber)'
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 654
    Height = 417
    ActivePage = tsFiltros
    Align = alClient
    TabOrder = 0
    TabStop = False
    object tsFiltros: TTabSheet
      Caption = 'Filtros'
      object Label2: TLabel
        Left = 40
        Top = 317
        Width = 67
        Height = 13
        Caption = 'Separado por:'
      end
      object Label25: TLabel
        Left = 67
        Top = 14
        Width = 35
        Height = 13
        Caption = 'Cliente:'
      end
      object Label26: TLabel
        Left = 57
        Top = 51
        Width = 49
        Height = 13
        Caption = 'Vendedor:'
      end
      object Label22: TLabel
        Left = 72
        Top = 90
        Width = 34
        Height = 13
        Caption = 'Banco:'
      end
      object Label1: TLabel
        Left = 23
        Top = 124
        Width = 84
        Height = 13
        Caption = 'Rede de Clientes:'
      end
      object Label23: TLabel
        Left = 59
        Top = 162
        Width = 48
        Height = 13
        Caption = 'Conv'#234'nio:'
      end
      object Label4: TLabel
        Left = 72
        Top = 197
        Width = 36
        Height = 13
        Caption = 'Cidade:'
      end
      object Label24: TLabel
        Left = 48
        Top = 238
        Width = 59
        Height = 13
        Caption = 'Televendas:'
      end
      object Label27: TLabel
        Left = 55
        Top = 274
        Width = 53
        Height = 13
        Caption = 'Supervisor:'
      end
      object Label3: TLabel
        Left = 57
        Top = 339
        Width = 63
        Height = 13
        AutoSize = False
        Caption = 'Per'#237'odo.........'
      end
      object Label5: TLabel
        Left = 199
        Top = 339
        Width = 6
        Height = 13
        Caption = #224
      end
      object CB_SEPAR: TComboBox
        Left = 111
        Top = 312
        Width = 329
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 4
        TabOrder = 0
        Text = 'Cliente'
        Items.Strings = (
          'Ano'
          'Bairro'
          'Banco'
          'Cidade'
          'Cliente'
          'Convenio'
          'Estado'
          'M'#234's'
          'Rede de Clientes'
          'Supervisor'
          'Televendas'
          'Tipo de Pedido'
          'Vendedor')
      end
      object CODCLI: TEdit
        Left = 111
        Top = 12
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnExit = CODCLIExit
        OnKeyPress = CODCLIKeyPress
      end
      object lbx_codcli: TListBox
        Left = 184
        Top = 12
        Width = 400
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnKeyDown = lbx_codcliKeyDown
      end
      object OMITIR_CLI: TCheckBox
        Left = 111
        Top = 33
        Width = 57
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object CODVEN: TEdit
        Left = 111
        Top = 50
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
      end
      object lbx_codven: TListBox
        Left = 184
        Top = 49
        Width = 400
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnKeyDown = lbx_codvenKeyDown
      end
      object OMITIR_VEN: TCheckBox
        Left = 111
        Top = 69
        Width = 57
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object CODBCO: TEdit
        Left = 111
        Top = 86
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnExit = CODBCOExit
        OnKeyPress = CODBCOKeyPress
      end
      object lbx_codbco: TListBox
        Left = 184
        Top = 86
        Width = 400
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnKeyDown = lbx_codbcoKeyDown
      end
      object OMITIR_BCO: TCheckBox
        Left = 111
        Top = 107
        Width = 69
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
      end
      object CODRED: TEdit
        Left = 111
        Top = 123
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnExit = CODREDExit
        OnKeyPress = CODREDKeyPress
      end
      object lbx_codred: TListBox
        Left = 184
        Top = 123
        Width = 400
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnKeyDown = lbx_codredKeyDown
      end
      object OMITIR_RED: TCheckBox
        Left = 112
        Top = 142
        Width = 71
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
      end
      object CODCV: TEdit
        Left = 111
        Top = 160
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnExit = CODCVExit
        OnKeyPress = CODCVKeyPress
      end
      object lbx_codcv: TListBox
        Left = 184
        Top = 160
        Width = 400
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        OnKeyDown = lbx_codcvKeyDown
      end
      object OMITIR_CV: TCheckBox
        Left = 112
        Top = 179
        Width = 71
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
      end
      object CODLOC: TEdit
        Left = 111
        Top = 196
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
        OnExit = CODLOCExit
        OnKeyPress = CODLOCKeyPress
      end
      object lbx_codloc: TListBox
        Left = 184
        Top = 197
        Width = 400
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
        OnKeyDown = lbx_codlocKeyDown
      end
      object OMITIR_LOC: TCheckBox
        Left = 112
        Top = 217
        Width = 71
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
      end
      object CODTEL: TEdit
        Left = 111
        Top = 234
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
        OnExit = CODTELExit
        OnKeyPress = CODTELKeyPress
      end
      object lbx_codtel: TListBox
        Left = 184
        Top = 234
        Width = 400
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 20
        OnKeyDown = lbx_codtelKeyDown
      end
      object OMITIR_TEL: TCheckBox
        Left = 112
        Top = 253
        Width = 57
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 21
      end
      object CODSUP: TEdit
        Left = 111
        Top = 271
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 22
        OnExit = CODSUPExit
        OnKeyPress = CODSUPKeyPress
      end
      object lbx_codsup: TListBox
        Left = 184
        Top = 271
        Width = 400
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 23
        OnKeyDown = lbx_codsupKeyDown
      end
      object OMITIR_SUP: TCheckBox
        Left = 112
        Top = 291
        Width = 71
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 24
      end
      object MDT1: TMaskEdit
        Left = 111
        Top = 335
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
        TabOrder = 25
        Text = '  /  /    '
        OnExit = MDT1Exit
      end
      object MDT2: TMaskEdit
        Left = 216
        Top = 335
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
        TabOrder = 26
        Text = '  /  /    '
        OnExit = MDT2Exit
      end
    end
    object tsOutros: TTabSheet
      Caption = 'tsOutros'
      ImageIndex = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 417
    Width = 654
    Height = 41
    Align = alBottom
    TabOrder = 1
    object bbSair: TBitBtn
      Left = 504
      Top = 1
      Width = 148
      Height = 38
      Hint = 'Fecha Este Formul'#225'rio'#13#10'e Volta ao Menu Principal'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
    object bbImprimir: TBitBtn
      Left = 8
      Top = 1
      Width = 148
      Height = 38
      Hint = 'Imprime os T'#237'tulos '#13#10'Selecionados'
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
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
  end
  object Qr_PosCar: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select '
      'CRAZAO AS NOMGRU,'
      'SUM('
      
        '  CASE WHEN (CRDTVCTO <= SYSDATE) THEN (CRVALOR-(CRVALPAG-CRJURO' +
        'S+CRDESC))'
      '     ELSE 0'
      '    END) TOTVENC'
      ', '
      'SUM('
      '  CASE WHEN (CRDTVCTO <= SYSDATE) THEN 0'
      '     ELSE (CRVALOR-(CRVALPAG-CRJUROS+CRDESC))'
      '    END) TOTAVENC'
      ',SUM(CRVALPAG) AS TOTPAG    '
      ',DECODE(MAX(CRSTATUS),2,0,'
      '       MAX(SYSDATE-CRDTVCTO)) AS MAIORATRASO'
      'from caddar,cadcli'
      'where ccodcli=crcodcli'
      'and crstatus=9'
      'GROUP BY CRAZAO,CRCODCLI')
    Left = 508
    Top = 384
    object Qr_PosCarNOMGRU: TStringField
      FieldName = 'NOMGRU'
      Size = 40
    end
    object Qr_PosCarTOTVENC: TFloatField
      FieldName = 'TOTVENC'
    end
    object Qr_PosCarTOTAVENC: TFloatField
      FieldName = 'TOTAVENC'
    end
    object Qr_PosCarTOTPAG: TFloatField
      FieldName = 'TOTPAG'
    end
    object Qr_PosCarMAIORATRASO: TFloatField
      FieldName = 'MAIORATRASO'
    end
  end
end

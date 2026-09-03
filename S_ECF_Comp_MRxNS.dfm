object Frm_ECF_Comp_MRxNS: TFrm_ECF_Comp_MRxNS
  Left = 48
  Top = 141
  Width = 746
  Height = 497
  Caption = 'Comparar Mapa Resumo em Rela'#231#227'o ao Arquivo de Notas de Sa'#237'das'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_cab: TPanel
    Left = 0
    Top = 0
    Width = 738
    Height = 41
    Align = alTop
    Caption = 'Data da Redu'#231#227'o Z: 10/05/2009'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object gb_maparesumo: TGroupBox
    Left = 0
    Top = 41
    Width = 325
    Height = 223
    Caption = 'Mapa Resumo:'
    Color = 10944511
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 61
      Top = 16
      Width = 126
      Height = 13
      Caption = 'Total da Venda Bruta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 48
      Top = 37
      Width = 139
      Height = 13
      Caption = 'Total da Venda L'#237'quida:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 3
      Top = 57
      Width = 184
      Height = 13
      Caption = 'Totais das  Vendas Canceladas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 55
      Top = 77
      Width = 132
      Height = 13
      Caption = 'Totais dos Acr'#233'scimos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 59
      Top = 97
      Width = 128
      Height = 13
      Caption = 'Totais dos Descontos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 93
      Top = 117
      Width = 94
      Height = 13
      Caption = 'Total do ISSQN:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 78
      Top = 137
      Width = 109
      Height = 13
      Caption = 'Totais das Isentas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 69
      Top = 157
      Width = 118
      Height = 13
      Caption = 'Valor N'#227'o Incidente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 66
      Top = 177
      Width = 121
      Height = 13
      Caption = 'Total c/Substitui'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 119
      Top = 195
      Width = 65
      Height = 13
      Caption = 'Tributadas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ecf_totvda_bruta: TCurrencyEdit
      Left = 191
      Top = 12
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object ecf_totvda_liq: TCurrencyEdit
      Left = 191
      Top = 32
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object ecf_totvda_canc: TCurrencyEdit
      Left = 191
      Top = 52
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object ecf_totacres: TCurrencyEdit
      Left = 191
      Top = 72
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
    end
    object ecf_totdes: TCurrencyEdit
      Left = 191
      Top = 92
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
    end
    object ecf_totissqn: TCurrencyEdit
      Left = 191
      Top = 112
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
    end
    object ecf_totisentas: TCurrencyEdit
      Left = 191
      Top = 132
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
    end
    object ecf_totNaoInc: TCurrencyEdit
      Left = 191
      Top = 152
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
    end
    object ecf_totsubstTrib: TCurrencyEdit
      Left = 191
      Top = 172
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
    end
    object ecf_tottrib: TCurrencyEdit
      Left = 191
      Top = 192
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 9
    end
  end
  object GroupBox1: TGroupBox
    Left = 323
    Top = 41
    Width = 134
    Height = 223
    Caption = 'Notas de Saidas:'
    Color = 13041606
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object ns_totvda_bruta: TCurrencyEdit
      Left = 5
      Top = 12
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object ns_totvda_liq: TCurrencyEdit
      Left = 5
      Top = 32
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object ns_totvda_canc: TCurrencyEdit
      Left = 5
      Top = 52
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object ns_totacres: TCurrencyEdit
      Left = 5
      Top = 72
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
    end
    object ns_totdes: TCurrencyEdit
      Left = 5
      Top = 92
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
    end
    object ns_totissqn: TCurrencyEdit
      Left = 5
      Top = 112
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
    end
    object ns_totisentas: TCurrencyEdit
      Left = 5
      Top = 132
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
    end
    object ns_totNaoInc: TCurrencyEdit
      Left = 5
      Top = 152
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
    end
    object ns_totsubstTrib: TCurrencyEdit
      Left = 5
      Top = 172
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
    end
    object ns_tottrib: TCurrencyEdit
      Left = 5
      Top = 192
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 9
    end
  end
  object gb_totaliq: TGroupBox
    Left = 2
    Top = 276
    Width = 618
    Height = 169
    Caption = 'Totais por al'#237'quotas:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 614
      Height = 152
      Align = alClient
      DataSource = DataSource1
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'OBSERV'
          Width = 138
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALIQ'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_MR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESPACO'
          Title.Caption = '     '
          Width = 22
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_NS'
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESPACO2'
          Width = 11
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'difer'
          Width = 121
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 455
    Top = 41
    Width = 166
    Height = 223
    Caption = 'Diferen'#231'as:'
    Color = 8421631
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    object sbSub060p010: TSpeedButton
      Left = 126
      Top = 171
      Width = 37
      Height = 22
      Hint = 'Click aqui p/ Substituir Situacao p/000'
      Caption = 'S000'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbSub060p010Click
    end
    object sbSub000p060: TSpeedButton
      Left = 125
      Top = 192
      Width = 37
      Height = 22
      Hint = 'Click aqui p/ Substituir Situacao p/060'
      Caption = 'S060'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbSub000p060Click
    end
    object sbSub040p010: TSpeedButton
      Left = 126
      Top = 134
      Width = 37
      Height = 22
      Hint = 'Click aqui p/ Substituir Situacao p/000'
      Caption = 'S000'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbSub040p010Click
    end
    object dif_totvda_bruta: TCurrencyEdit
      Left = 5
      Top = 12
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = dif_totvda_brutaExit
    end
    object dif_totvda_liq: TCurrencyEdit
      Left = 5
      Top = 32
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object dif_totvda_canc: TCurrencyEdit
      Left = 5
      Top = 52
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object dif_totacres: TCurrencyEdit
      Left = 5
      Top = 72
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
    end
    object dif_totdes: TCurrencyEdit
      Left = 5
      Top = 92
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
    end
    object dif_totissqn: TCurrencyEdit
      Left = 5
      Top = 112
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
    end
    object dif_totisentas: TCurrencyEdit
      Left = 5
      Top = 132
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
    end
    object dif_totNaoInc: TCurrencyEdit
      Left = 5
      Top = 152
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
    end
    object dif_totsubstTrib: TCurrencyEdit
      Left = 5
      Top = 172
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
    end
    object dif_tottrib: TCurrencyEdit
      Left = 5
      Top = 192
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 9
    end
  end
  object bbSair: TBitBtn
    Left = 622
    Top = 149
    Width = 75
    Height = 48
    Caption = 'Sair'
    TabOrder = 5
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
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object bbConfirma: TBitBtn
    Left = 622
    Top = 214
    Width = 75
    Height = 48
    Caption = 'Aceitar valores'
    TabOrder = 6
    OnClick = bbConfirmaClick
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
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object bbIsentTrib: TBitBtn
    Left = 222
    Top = 260
    Width = 197
    Height = 22
    Caption = 'Isentos p/Tributados'
    TabOrder = 7
    Visible = False
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
  object bbIsentosRet: TBitBtn
    Left = 422
    Top = 260
    Width = 197
    Height = 22
    Caption = 'Isentos p/Retido'
    TabOrder = 8
    Visible = False
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
  object mem_MRxNS: TRxMemoryData
    FieldDefs = <
      item
        Name = 'OBSERV'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ALIQ'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_MR'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_NS'
        DataType = ftFloat
      end
      item
        Name = 'CFOP'
        DataType = ftFloat
      end
      item
        Name = 'ESPACO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ESPACO2'
        DataType = ftString
        Size = 20
      end>
    OnCalcFields = mem_MRxNSCalcFields
    Left = 296
    Top = 32
    object mem_MRxNSOBSERV: TStringField
      DisplayLabel = 'Oberva'#231#245'es'
      FieldName = 'OBSERV'
      Size = 30
    end
    object mem_MRxNSALIQ: TFloatField
      DisplayLabel = 'Al'#237'q'
      FieldName = 'ALIQ'
    end
    object mem_MRxNSVALOR_MR: TFloatField
      DisplayLabel = 'Valor Mapa Resumo'
      FieldName = 'VALOR_MR'
    end
    object mem_MRxNSVALOR_NS: TFloatField
      DisplayLabel = 'Notas de Saidas'
      FieldName = 'VALOR_NS'
    end
    object mem_MRxNSESPACO: TStringField
      FieldName = 'ESPACO'
    end
    object mem_MRxNSESPACO2: TStringField
      DisplayLabel = '  '
      FieldName = 'ESPACO2'
    end
    object mem_MRxNSdifer: TFloatField
      DisplayLabel = 'Diferen'#231'a'
      FieldKind = fkCalculated
      FieldName = 'difer'
      Calculated = True
    end
  end
  object DataSource1: TDataSource
    DataSet = mem_MRxNS
    Left = 368
    Top = 16
  end
end

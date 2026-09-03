object Frm_GerDup: TFrm_GerDup
  Left = 164
  Top = 149
  Width = 563
  Height = 302
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Ajustar Titulos Inexistentes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 555
    Height = 271
    ActivePage = tsNovo
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Metodo Anterior Por Chave do Pedido:'
      object lbl_lotseq: TLabel
        Left = 32
        Top = 15
        Width = 56
        Height = 13
        Caption = 'Lote Seq:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 6
        Top = 37
        Width = 85
        Height = 13
        Caption = 'Chave do Pedido:'
      end
      object Label3: TLabel
        Left = 193
        Top = 36
        Width = 77
        Height = 13
        Caption = 'Data do Pedido:'
      end
      object Label4: TLabel
        Left = 382
        Top = 38
        Width = 27
        Height = 13
        Caption = 'Valor:'
      end
      object Label5: TLabel
        Left = 9
        Top = 61
        Width = 38
        Height = 13
        Caption = 'Cliente.:'
      end
      object edt_lotseq: TEdit
        Left = 93
        Top = 12
        Width = 69
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
      object CHAVEPED: TEdit
        Left = 93
        Top = 34
        Width = 80
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnEnter = CHAVEPEDEnter
        OnExit = CHAVEPEDExit
      end
      object DATAP: TEdit
        Left = 277
        Top = 34
        Width = 92
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 2
      end
      object VALOR: TEdit
        Left = 418
        Top = 33
        Width = 105
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 3
      end
      object CLIENTE: TEdit
        Left = 91
        Top = 56
        Width = 432
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 4
      end
      object bbAjustar: TBitBtn
        Left = 2
        Top = 87
        Width = 148
        Height = 43
        Caption = '&Ajustar Agora'
        TabOrder = 5
        OnClick = bbAjustarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
          333333333F777773FF333333008888800333333377333F3773F3333077870787
          7033333733337F33373F3308888707888803337F33337F33337F330777880887
          7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
          7703337F33377733337FB3088888888888033373FFFFFFFFFF733B3000000000
          0033333777777777773333BBBB3333080333333333F3337F7F33BBBB707BB308
          03333333373F337F7F3333BB08033308033333337F7F337F7F333B3B08033308
          033333337F73FF737F33B33B778000877333333373F777337333333B30888880
          33333333373FFFF73333333B3300000333333333337777733333}
        NumGlyphs = 2
      end
      object bbSair: TBitBtn
        Left = 388
        Top = 88
        Width = 148
        Height = 43
        Caption = '&Sair'
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
    end
    object tsNovo: TTabSheet
      Caption = 'M'#233'todo Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object Label2: TLabel
        Left = 32
        Top = 58
        Width = 56
        Height = 13
        Caption = 'Lote Seq:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 6
        Top = 80
        Width = 85
        Height = 13
        Caption = 'Chave do Pedido:'
      end
      object Label7: TLabel
        Left = 193
        Top = 79
        Width = 77
        Height = 13
        Caption = 'Data do Pedido:'
      end
      object Label8: TLabel
        Left = 382
        Top = 81
        Width = 27
        Height = 13
        Caption = 'Valor:'
      end
      object Label9: TLabel
        Left = 9
        Top = 104
        Width = 38
        Height = 13
        Caption = 'Cliente.:'
      end
      object Label10: TLabel
        Left = 104
        Top = 147
        Width = 127
        Height = 13
        Caption = 'Arquivo do Tipo CSV: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label11: TLabel
        Left = 237
        Top = 147
        Width = 165
        Height = 13
        Caption = 'Codemp;lotseq;chave;ordem;'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label12: TLabel
        Left = 14
        Top = 131
        Width = 76
        Height = 13
        Caption = 'Arquivo CSV:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object sbnbuscar: TSpeedButton
        Left = 500
        Top = 122
        Width = 23
        Height = 22
        Caption = '...'
        Visible = False
        OnClick = sbnbuscarClick
      end
      object Label13: TLabel
        Left = 32
        Top = 8
        Width = 54
        Height = 13
        Caption = 'Periodo de:'
      end
      object Label14: TLabel
        Left = 232
        Top = 8
        Width = 6
        Height = 13
        Caption = #224
      end
      object edtnv_lotseq: TEdit
        Left = 93
        Top = 55
        Width = 69
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
      end
      object edtnv_chave: TEdit
        Left = 93
        Top = 77
        Width = 80
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnEnter = edtnv_chaveEnter
        OnExit = edtnv_chaveExit
      end
      object edtnv_datped: TEdit
        Left = 277
        Top = 77
        Width = 92
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 5
      end
      object edtnv_valor: TEdit
        Left = 418
        Top = 76
        Width = 105
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 6
      end
      object edtnv_cliente: TEdit
        Left = 91
        Top = 99
        Width = 432
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 7
      end
      object bbnv_ajustar: TBitBtn
        Left = 10
        Top = 170
        Width = 148
        Height = 43
        Caption = '&Ajustar Agora'
        TabOrder = 9
        OnClick = bbnv_ajustarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
          333333333F777773FF333333008888800333333377333F3773F3333077870787
          7033333733337F33373F3308888707888803337F33337F33337F330777880887
          7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
          7703337F33377733337FB3088888888888033373FFFFFFFFFF733B3000000000
          0033333777777777773333BBBB3333080333333333F3337F7F33BBBB707BB308
          03333333373F337F7F3333BB08033308033333337F7F337F7F333B3B08033308
          033333337F73FF737F33B33B778000877333333373F777337333333B30888880
          33333333373FFFF73333333B3300000333333333337777733333}
        NumGlyphs = 2
      end
      object bbnv_sair: TBitBtn
        Left = 388
        Top = 171
        Width = 148
        Height = 43
        Caption = '&Sair'
        TabOrder = 10
        OnClick = bbnv_sairClick
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
      object edtnv_arqcsv: TEdit
        Left = 93
        Top = 123
        Width = 406
        Height = 21
        TabOrder = 8
        Visible = False
      end
      object edt_datini: TDateEdit
        Left = 95
        Top = 4
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
        OnExit = edt_datiniExit
      end
      object edt_datfin: TDateEdit
        Left = 255
        Top = 4
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
        OnExit = edt_datfinExit
      end
      object CB_VERINEXISTENTES: TCheckBox
        Left = 96
        Top = 32
        Width = 201
        Height = 17
        Caption = 'Verificar somente os inexistentes'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
    end
    object tsAtuPed: TTabSheet
      Caption = 'Atualizar Pedido'
      ImageIndex = 2
      object Label15: TLabel
        Left = 6
        Top = 37
        Width = 85
        Height = 13
        Caption = 'Chave do Pedido:'
      end
      object Label16: TLabel
        Left = 193
        Top = 36
        Width = 77
        Height = 13
        Caption = 'Data do Pedido:'
      end
      object Label17: TLabel
        Left = 382
        Top = 38
        Width = 27
        Height = 13
        Caption = 'Valor:'
      end
      object Label18: TLabel
        Left = 52
        Top = 59
        Width = 38
        Height = 13
        Caption = 'Cliente.:'
      end
      object Label19: TLabel
        Left = 29
        Top = 78
        Width = 60
        Height = 13
        Caption = 'Tipo Pedido:'
      end
      object Label20: TLabel
        Left = 208
        Top = 78
        Width = 33
        Height = 13
        Caption = 'Status:'
      end
      object Label21: TLabel
        Left = 314
        Top = 78
        Width = 65
        Height = 13
        Caption = 'S'#233'rie do ECF:'
      end
      object Label22: TLabel
        Left = 9
        Top = 101
        Width = 77
        Height = 13
        Caption = 'Data do Cupom:'
      end
      object Label23: TLabel
        Left = 289
        Top = 96
        Width = 90
        Height = 13
        Caption = 'N'#250'mero do cupom:'
      end
      object atped_chave: TEdit
        Left = 93
        Top = 34
        Width = 80
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnEnter = atped_chaveEnter
        OnExit = atped_chaveExit
      end
      object atped_dtped: TEdit
        Left = 277
        Top = 34
        Width = 92
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 1
      end
      object atped_valor: TEdit
        Left = 418
        Top = 33
        Width = 105
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 2
      end
      object atped_nomcli: TEdit
        Left = 93
        Top = 56
        Width = 432
        Height = 19
        Ctl3D = False
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 3
      end
      object atped_tipo: TEdit
        Left = 93
        Top = 77
        Width = 28
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
      end
      object atped_status: TEdit
        Left = 245
        Top = 77
        Width = 28
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
      end
      object atped_serieecf: TEdit
        Left = 390
        Top = 77
        Width = 135
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
      end
      object atped_ajustar: TBitBtn
        Left = 10
        Top = 147
        Width = 148
        Height = 43
        Caption = '&Ajustar Agora'
        TabOrder = 7
        OnClick = atped_ajustarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
          333333333F777773FF333333008888800333333377333F3773F3333077870787
          7033333733337F33373F3308888707888803337F33337F33337F330777880887
          7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
          7703337F33377733337FB3088888888888033373FFFFFFFFFF733B3000000000
          0033333777777777773333BBBB3333080333333333F3337F7F33BBBB707BB308
          03333333373F337F7F3333BB08033308033333337F7F337F7F333B3B08033308
          033333337F73FF737F33B33B778000877333333373F777337333333B30888880
          33333333373FFFF73333333B3300000333333333337777733333}
        NumGlyphs = 2
      end
      object atped_sair: TBitBtn
        Left = 388
        Top = 148
        Width = 148
        Height = 43
        Caption = '&Sair'
        TabOrder = 8
        OnClick = atped_sairClick
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
      object atped_datacf: TDateEdit
        Left = 94
        Top = 98
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 9
      end
      object atped_numcup: TEdit
        Left = 390
        Top = 95
        Width = 135
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 10
      end
    end
    object tsCompras: TTabSheet
      Caption = 'Compras'
      ImageIndex = 3
      object Label24: TLabel
        Left = 4
        Top = 63
        Width = 85
        Height = 13
        Caption = 'Chave do Pedido:'
      end
      object Label25: TLabel
        Left = 34
        Top = 15
        Width = 56
        Height = 13
        Caption = 'Lote Seq:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 182
        Top = 63
        Width = 6
        Height = 13
        Caption = 'a'
      end
      object Label27: TLabel
        Left = 35
        Top = 40
        Width = 54
        Height = 13
        Caption = 'Periodo de:'
      end
      object Label28: TLabel
        Left = 229
        Top = 40
        Width = 6
        Height = 13
        Caption = #224
      end
      object EdtChaveIniCpr: TEdit
        Left = 92
        Top = 60
        Width = 80
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        OnEnter = CHAVEPEDEnter
        OnExit = CHAVEPEDExit
      end
      object EdtLotSeqCpr: TEdit
        Left = 93
        Top = 12
        Width = 69
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        Text = '0'
      end
      object EdtChaveFimCpr: TEdit
        Left = 198
        Top = 60
        Width = 80
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnEnter = CHAVEPEDEnter
        OnExit = CHAVEPEDExit
      end
      object bbAjuCompras: TBitBtn
        Left = 106
        Top = 91
        Width = 148
        Height = 43
        Caption = '&Ajustar Agora'
        TabOrder = 5
        OnClick = bbAjuComprasClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
          333333333F777773FF333333008888800333333377333F3773F3333077870787
          7033333733337F33373F3308888707888803337F33337F33337F330777880887
          7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
          7703337F33377733337FB3088888888888033373FFFFFFFFFF733B3000000000
          0033333777777777773333BBBB3333080333333333F3337F7F33BBBB707BB308
          03333333373F337F7F3333BB08033308033333337F7F337F7F333B3B08033308
          033333337F73FF737F33B33B778000877333333373F777337333333B30888880
          33333333373FFFF73333333B3300000333333333337777733333}
        NumGlyphs = 2
      end
      object edtDtFimCpr: TDateEdit
        Left = 252
        Top = 36
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 2
        OnExit = edt_datfinExit
      end
      object edtDtIniCpr: TDateEdit
        Left = 92
        Top = 36
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
        OnExit = edt_datiniExit
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 488
    Top = 16
  end
  object opd1: TOpenDialog
    Filter = '*.CSV|Arquivos CSV|*.TXT|Arquivos TXT|*.*|Todos os Arquivos'
    Left = 444
    Top = 24
  end
  object Query2: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 488
    Top = 48
  end
end

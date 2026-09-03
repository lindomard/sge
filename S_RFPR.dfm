object Frm_RFPR: TFrm_RFPR
  Left = 248
  Top = 181
  Width = 518
  Height = 315
  Caption = 'Resumo por Formas de Pagamentos de Titulos Recebidos'
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
  object Label1: TLabel
    Left = 59
    Top = 35
    Width = 68
    Height = 13
    Caption = 'Per'#237'odo de:'
  end
  object Label2: TLabel
    Left = 244
    Top = 36
    Width = 8
    Height = 13
    Caption = #224
  end
  object Label4: TLabel
    Left = 65
    Top = 53
    Width = 61
    Height = 13
    Caption = 'NR Inicial:'
  end
  object Label5: TLabel
    Left = 223
    Top = 54
    Width = 54
    Height = 13
    Caption = 'NR Final:'
  end
  object sb_SalvarPadrao: TSpeedButton
    Left = 167
    Top = 219
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
  object Label24: TLabel
    Left = 45
    Top = 72
    Width = 78
    Height = 13
    Caption = 'Banco/Caixa:'
  end
  object Label6: TLabel
    Left = 53
    Top = 108
    Width = 68
    Height = 13
    Caption = 'Usu'#225'rio/Cx:'
  end
  object MDT1: TMaskEdit
    Left = 132
    Top = 32
    Width = 80
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
    Left = 284
    Top = 32
    Width = 80
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 1
    Text = '  /  /    '
    OnExit = MDT2Exit
  end
  object SAIR: TBitBtn
    Left = 327
    Top = 219
    Width = 150
    Height = 40
    Caption = '&Sair'
    TabOrder = 13
    OnClick = SAIRClick
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
  object IMPRIMIR: TBitBtn
    Left = 8
    Top = 219
    Width = 150
    Height = 40
    Caption = '&Imprimir'
    TabOrder = 12
    OnClick = IMPRIMIRClick
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
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object NRI: TEdit
    Left = 132
    Top = 50
    Width = 80
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    OnExit = NRIExit
  end
  object NRF: TEdit
    Left = 284
    Top = 50
    Width = 80
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    OnExit = NRFExit
  end
  object CB_INIBIRCHQP: TCheckBox
    Left = 80
    Top = 153
    Width = 252
    Height = 17
    Caption = 'Inibir Cheques Pre-Datados do dia'
    TabOrder = 4
  end
  object CB_DEVOL: TCheckBox
    Left = 81
    Top = 173
    Width = 288
    Height = 17
    Caption = 'Deduzir Pgto. de Creditos em Dinheiro'
    TabOrder = 5
  end
  object edt_codbco: TEdit
    Left = 132
    Top = 68
    Width = 58
    Height = 19
    Hint = 'Digite o C'#243'digo a Ser Filtrado'
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnExit = edt_codbcoExit
    OnKeyPress = edt_codbcoKeyPress
  end
  object lbx_codbco: TListBox
    Left = 189
    Top = 68
    Width = 308
    Height = 38
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnKeyDown = lbx_codbcoKeyDown
  end
  object OMITIR_BCO: TCheckBox
    Left = 132
    Top = 89
    Width = 55
    Height = 17
    Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
  end
  object edt_codusr_cx: TEdit
    Left = 132
    Top = 106
    Width = 58
    Height = 19
    Hint = 'Digite o C'#243'digo a Ser Filtrado'
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnExit = edt_codusr_cxExit
    OnKeyPress = edt_codusr_cxKeyPress
  end
  object lbx_codusr_cx: TListBox
    Left = 189
    Top = 105
    Width = 308
    Height = 38
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnKeyDown = lbx_codusr_cxKeyDown
  end
  object OMITIR_USR_CX: TCheckBox
    Left = 133
    Top = 128
    Width = 56
    Height = 17
    Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
  end
  object Qr_FP: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select fpforma,fpdesc,CADFP.fptipo,sum(fpvalor) as TOTAL from FP' +
        'CR,CADFP '
      'where FPCODIGO=FPFORMA'
      'group by fpforma,fpdesc,CADFP.fptipo')
    Left = 16
    Top = 16
    object Qr_FPFPFORMA: TFloatField
      FieldName = 'FPFORMA'
    end
    object Qr_FPFPDESC: TStringField
      FieldName = 'FPDESC'
      Size = 15
    end
    object Qr_FPTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object Qr_FPFPTIPO: TFloatField
      FieldName = 'FPTIPO'
      Origin = 'SG_ASSOC.CADFP.FPTIPO'
    end
  end
end

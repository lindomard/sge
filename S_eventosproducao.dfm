object frm_eventosproducao: Tfrm_eventosproducao
  Left = 192
  Top = 107
  AutoSize = True
  BorderStyle = bsSingle
  Caption = 'Relatorio de Eventos de Produ'#231#227'o'
  ClientHeight = 552
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 682
    Height = 68
    Align = alTop
    Alignment = taCenter
    Caption = 
      'Relat'#243'rio de Mat'#233'rias Primas Utilizadas no Processo de Fabrica'#231#227 +
      'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -30
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label8: TLabel
    Left = 63
    Top = 171
    Width = 82
    Height = 13
    Caption = 'Materia Prima:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 144
    Top = 96
    Width = 62
    Height = 13
    Caption = 'Data Inicial..:'
  end
  object Label3: TLabel
    Left = 333
    Top = 95
    Width = 57
    Height = 13
    Caption = 'Data Final..:'
  end
  object Label4: TLabel
    Left = 42
    Top = 212
    Width = 103
    Height = 13
    Caption = 'Produto Acabedo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 85
    Top = 251
    Width = 5
    Height = 13
    Caption = ':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 40
    Top = 252
    Width = 105
    Height = 13
    Caption = 'Grupo de Produto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 49
    Top = 292
    Width = 96
    Height = 13
    Caption = 'Tipo do Produto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 13
    Top = 332
    Width = 131
    Height = 13
    Caption = 'Sub Grupo de Produto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 400
    Width = 665
    Height = 152
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DateEdit1: TDateEdit
    Left = 208
    Top = 92
    Width = 121
    Height = 21
    Color = clWhite
    NumGlyphs = 2
    TabOrder = 1
  end
  object DateEdit2: TDateEdit
    Left = 391
    Top = 91
    Width = 121
    Height = 21
    Color = clWhite
    NumGlyphs = 2
    TabOrder = 2
  end
  object cb_somentes: TCheckBox
    Left = 127
    Top = 128
    Width = 121
    Height = 17
    Caption = 'Somente Confirmadas'
    TabOrder = 3
  end
  object bb_Aplicar_e_Imprimir: TButton
    Left = 271
    Top = 123
    Width = 161
    Height = 25
    Caption = '&Aplicar e Imprimir'
    TabOrder = 4
  end
  object cb_omitir1: TCheckBox
    Left = 151
    Top = 195
    Width = 71
    Height = 17
    Caption = 'Omitir'
    TabOrder = 5
  end
  object CODMAT: TEdit
    Left = 151
    Top = 171
    Width = 74
    Height = 21
    Color = clWhite
    TabOrder = 6
    OnExit = CODMATExit
    OnKeyPress = CODMATKeyPress
  end
  object lbx_CODMAT: TListBox
    Left = 224
    Top = 171
    Width = 392
    Height = 44
    Color = 16776176
    ItemHeight = 13
    TabOrder = 7
    OnKeyDown = lbx_CODMATKeyDown
  end
  object CheckBox1: TCheckBox
    Left = 151
    Top = 238
    Width = 71
    Height = 17
    Caption = 'Omitir'
    TabOrder = 8
  end
  object CODPRO: TEdit
    Left = 151
    Top = 214
    Width = 74
    Height = 21
    Color = clWhite
    TabOrder = 9
    OnExit = CODPROExit
    OnKeyPress = CODPROKeyPress
  end
  object lbx_CODPRO: TListBox
    Left = 224
    Top = 214
    Width = 392
    Height = 44
    Color = 16776176
    ItemHeight = 13
    TabOrder = 10
    OnKeyDown = lbx_CODPROKeyDown
  end
  object ListBox2: TListBox
    Left = 224
    Top = 254
    Width = 392
    Height = 44
    Color = 16776176
    ItemHeight = 13
    TabOrder = 11
  end
  object Edit2: TEdit
    Left = 151
    Top = 254
    Width = 74
    Height = 21
    Color = clWhite
    TabOrder = 12
  end
  object CheckBox2: TCheckBox
    Left = 151
    Top = 278
    Width = 71
    Height = 17
    Caption = 'Omitir'
    TabOrder = 13
  end
  object Edit3: TEdit
    Left = 151
    Top = 294
    Width = 74
    Height = 21
    Color = clWhite
    TabOrder = 14
  end
  object ListBox3: TListBox
    Left = 224
    Top = 294
    Width = 392
    Height = 44
    Color = 16776176
    ItemHeight = 13
    TabOrder = 15
  end
  object CheckBox3: TCheckBox
    Left = 151
    Top = 318
    Width = 71
    Height = 17
    Caption = 'Omitir'
    TabOrder = 16
  end
  object Edit4: TEdit
    Left = 151
    Top = 334
    Width = 74
    Height = 21
    Color = clWhite
    TabOrder = 17
  end
  object ListBox4: TListBox
    Left = 224
    Top = 334
    Width = 392
    Height = 44
    Color = 16776176
    ItemHeight = 13
    TabOrder = 18
  end
  object CheckBox4: TCheckBox
    Left = 151
    Top = 358
    Width = 71
    Height = 17
    Caption = 'Omitir'
    TabOrder = 19
  end
end

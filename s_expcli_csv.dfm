object Frm_ExpCli_CSV: TFrm_ExpCli_CSV
  Left = 185
  Top = 226
  BorderStyle = bsSingle
  Caption = 'Exportar Clientes '
  ClientHeight = 86
  ClientWidth = 588
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_salva: TLabel
    Left = 8
    Top = 56
    Width = 59
    Height = 13
    Caption = 'Salvar em ..:'
  end
  object Label1: TLabel
    Left = 120
    Top = 8
    Width = 359
    Height = 24
    Caption = 'Exporta'#231#227'o de e-mails de clientes em CSV'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object edt_narquivo: TFilenameEdit
    Left = 78
    Top = 54
    Width = 339
    Height = 21
    DialogKind = dkSave
    Filter = 'Arquivo de dados separados por virgula|*.csv'
    InitialDir = 'c:\sge'
    NumGlyphs = 1
    TabOrder = 0
    Text = 'c:\sge\email.csv'
  end
  object btn_salvar: TButton
    Left = 426
    Top = 51
    Width = 75
    Height = 25
    Caption = '&Salvar'
    TabOrder = 1
    OnClick = btn_salvarClick
  end
  object btn_sair: TButton
    Left = 506
    Top = 51
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 2
    OnClick = btn_sairClick
  end
end

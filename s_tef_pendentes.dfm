object Frm_tef_pendentes: TFrm_tef_pendentes
  Left = 224
  Top = 313
  Width = 1044
  Height = 198
  BorderIcons = []
  Caption = 'Transa'#231#245'es Pendentes de Confirma'#231#227'o'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 1036
    Height = 57
    Align = alTop
    Alignment = taCenter
    Caption = 'Transa'#231#245'es Pendentes de Confirma'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -50
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl_notifica: TLabel
    Left = 0
    Top = 57
    Width = 1036
    Height = 17
    Align = alTop
    Alignment = taCenter
    Caption = 
      'Foi encontrado uma venda no valor de r$3000,00 do cliente fulano' +
      ' de tal de 13/06/2015 as 13:30. Pedido 2526 Valor total do Pedid' +
      'o 5500,00'
    WordWrap = True
  end
  object bbConcluir: TBitBtn
    Left = 112
    Top = 132
    Width = 281
    Height = 25
    Caption = 'Concluir Transa'#231#227'o'
    TabOrder = 0
    OnClick = bbConcluirClick
  end
  object bbCancellar: TBitBtn
    Left = 616
    Top = 132
    Width = 281
    Height = 25
    Caption = 'Cancelar a Transa'#231#227'o'
    TabOrder = 1
    OnClick = bbCancellarClick
  end
end

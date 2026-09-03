object Frm_LMF: TFrm_LMF
  Left = 227
  Top = 100
  ActiveControl = op1
  BorderStyle = bsToolWindow
  Caption = 'Leitura de Mem'#243'ria F'#237'sica'
  ClientHeight = 186
  ClientWidth = 358
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 71
    Top = 112
    Width = 41
    Height = 13
    Caption = 'Per'#237'odo:'
  end
  object Label2: TLabel
    Left = 200
    Top = 112
    Width = 6
    Height = 13
    Caption = 'a'
  end
  object op1: TRadioGroup
    Left = 13
    Top = 10
    Width = 333
    Height = 85
    Caption = 'Op'#231#245'es para Impress'#227'o do Relat'#243'rio:'
    ItemIndex = 0
    Items.Strings = (
      '&0 - Por datas para impress'#227'o'
      '&1 - Por datas para recebimento via interface serial'
      '&2 - Por intervalo de redu'#231#245'es e para impress'#227'o'
      
        '&3 - Por intervalo de redu'#231#245'es e recebimento via interface seria' +
        'l')
    TabOrder = 0
    OnClick = op1Click
  end
  object MDT1: TMaskEdit
    Left = 119
    Top = 108
    Width = 75
    Height = 19
    Ctl3D = False
    EditMask = '99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 1
    Text = '  /  /    '
  end
  object MDT2: TMaskEdit
    Left = 211
    Top = 108
    Width = 75
    Height = 19
    Ctl3D = False
    EditMask = '99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 2
    Text = '  /  /    '
  end
  object INT1: TEdit
    Left = 119
    Top = 108
    Width = 75
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    Visible = False
    OnExit = INT1Exit
    OnKeyPress = INT2KeyPress
  end
  object INT2: TEdit
    Left = 211
    Top = 108
    Width = 75
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    Visible = False
    OnExit = INT2Exit
    OnKeyPress = INT2KeyPress
  end
  object BnOk: TButton
    Left = 104
    Top = 144
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 5
    OnClick = BnOkClick
  end
  object BnCancela: TButton
    Left = 179
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Cancela'
    TabOrder = 6
    OnClick = BnCancelaClick
  end
end

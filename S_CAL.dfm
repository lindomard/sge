object Frm_Cal: TFrm_Cal
  Left = 181
  Top = 114
  ActiveControl = MDT1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = 'Calend'#225'rio'
  ClientHeight = 280
  ClientWidth = 201
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 201
    Height = 164
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 3
    TabOrder = 0
    object MC1: TMonthCalendar
      Left = 5
      Top = 5
      Width = 191
      Height = 154
      Align = alClient
      Date = 36915.805763159730000000
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 164
    Width = 201
    Height = 116
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 12
      Top = 11
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object Label2: TLabel
      Left = 12
      Top = 59
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object Label3: TLabel
      Left = 12
      Top = 35
      Width = 98
      Height = 13
      Caption = 'Dias para C'#225'lculo....:'
    end
    object Label4: TLabel
      Left = 62
      Top = 59
      Width = 48
      Height = 13
      Caption = '...............:'
    end
    object Label5: TLabel
      Left = 65
      Top = 11
      Width = 45
      Height = 13
      Caption = '..............:'
    end
    object MDT1: TMaskEdit
      Left = 114
      Top = 7
      Width = 75
      Height = 21
      EditMask = '99/99/9999;1; '
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object MDT2: TMaskEdit
      Left = 114
      Top = 55
      Width = 75
      Height = 21
      EditMask = '99/99/9999;1; '
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
    end
    object DIAS: TEdit
      Left = 114
      Top = 31
      Width = 75
      Height = 21
      TabOrder = 1
      OnKeyPress = DIASKeyPress
    end
    object BBnDias: TBitBtn
      Left = 11
      Top = 83
      Width = 89
      Height = 25
      Caption = '&Dias entre datas'
      TabOrder = 3
      OnClick = BBnDiasClick
    end
    object BBnData: TBitBtn
      Left = 100
      Top = 83
      Width = 89
      Height = 25
      Caption = 'D&ata inicial+dias'
      TabOrder = 4
      OnClick = BBnDataClick
    end
  end
end

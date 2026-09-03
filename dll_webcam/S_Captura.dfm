object Frm_Captura: TFrm_Captura
  Left = 0
  Top = 0
  Caption = 'Frm_Captura'
  ClientHeight = 558
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_Left: TPanel
    Left = 0
    Top = 0
    Width = 609
    Height = 558
    Align = alLeft
    TabOrder = 0
    inline Frame_Video1: TFrame1
      Left = 1
      Top = 1
      Width = 607
      Height = 556
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 607
      ExplicitHeight = 556
      inherited Panel_Top: TPanel
        Width = 607
        ExplicitWidth = 607
        DesignSize = (
          607
          104)
        inherited SpeedButton_RunVideo: TSpeedButton
          OnClick = Frame_Video1SpeedButton_RunVideoClick
        end
        inherited SpeedButton_Pause: TSpeedButton
          OnClick = Frame_Video1SpeedButton_PauseClick
        end
        inherited SpeedButton_Stop: TSpeedButton
          OnClick = Frame_Video1SpeedButton_StopClick
        end
        inherited SpeedButton_VidSettings: TSpeedButton
          OnClick = Frame_Video1SpeedButton_VidSettingsClick
        end
        inherited SpeedButton_VidSize: TSpeedButton
          OnClick = Frame_Video1SpeedButton_VidSizeClick
        end
        inherited Bevel1: TBevel
          Width = 488
          ExplicitWidth = 256
        end
        inherited ComboBox_Cams: TComboBox
          Left = 17
          Top = 13
          ExplicitLeft = 17
          ExplicitTop = 13
        end
        inherited ComboBox1: TComboBox
          Left = 221
          Top = 59
          ExplicitLeft = 221
          ExplicitTop = 59
        end
        inherited bbSair: TBitBtn
          OnClick = Frame_Video1bbSairClick
        end
        inherited bbCancelar: TBitBtn
          OnClick = Frame_Video1bbCancelarClick
        end
      end
      inherited Panel1: TPanel
        Left = 369
        Height = 452
        ExplicitLeft = 369
        ExplicitHeight = 452
        inherited sbn_tirar: TSpeedButton
          OnClick = Frame_Video1sbn_tirarClick
        end
        inherited Image_foto: TImage
          Top = 136
          ExplicitLeft = 6
          ExplicitTop = 136
        end
      end
      inherited Panel_Bottom: TPanel
        Width = 369
        Height = 452
        ExplicitWidth = 369
        ExplicitHeight = 452
        inherited PaintBox_Video: TPaintBox
          Left = 21
          Top = 43
          Width = 314
          Height = 382
          ExplicitLeft = 21
          ExplicitTop = 43
          ExplicitWidth = 314
          ExplicitHeight = 382
        end
      end
    end
  end
  object Timer_executa: TTimer
    Enabled = False
    OnTimer = Timer_executaTimer
    Left = 528
    Top = 8
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 280
    Top = 48
  end
end

object Frm_Pgb: TFrm_Pgb
  Left = 192
  Top = 107
  Width = 542
  Height = 222
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Progresso do Processamento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clRed
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 534
    Height = 188
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 532
      Height = 59
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object GB_ATUAL: TGroupBox
      Left = 1
      Top = 123
      Width = 532
      Height = 64
      Align = alBottom
      Caption = 'Progresso Tabela Atual:'
      TabOrder = 0
      object Gauge1: TGauge
        Left = 2
        Top = 15
        Width = 528
        Height = 47
        Align = alClient
        Progress = 0
      end
    end
    object GB_GERAL: TGroupBox
      Left = 1
      Top = 60
      Width = 532
      Height = 63
      Align = alBottom
      Caption = 'Progresso de todas as tabelas:'
      TabOrder = 1
      Visible = False
      object Gauge2: TGauge
        Left = 2
        Top = 15
        Width = 528
        Height = 46
        Align = alClient
        Progress = 0
      end
    end
  end
end

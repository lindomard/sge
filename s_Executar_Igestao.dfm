object Frm_Executar_Igestao: TFrm_Executar_Igestao
  Left = 192
  Top = 124
  Width = 870
  Height = 480
  Caption = 'Frm_Executar_Igestao'
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 401
    Width = 854
    Height = 41
    Align = alBottom
    TabOrder = 0
    object Label1: TLabel
      Left = 153
      Top = 13
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label2: TLabel
      Left = 584
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Label2'
    end
    object BitBtn1: TBitBtn
      Left = 40
      Top = 8
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object edt_nome: TEdit
      Left = 208
      Top = 8
      Width = 257
      Height = 21
      TabOrder = 1
      Text = 'IGESTAO_CLIENT.EXE'
    end
    object BitBtn2: TBitBtn
      Left = 496
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Qtd Versao'
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 624
      Top = 8
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 3
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 712
      Top = 8
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 4
      OnClick = BitBtn4Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 401
    Align = alClient
    TabOrder = 1
  end
  object Timer_saida: TTimer
    Enabled = False
    Left = 248
    Top = 88
  end
end

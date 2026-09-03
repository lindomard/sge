object Frm_Liberar_Resp: TFrm_Liberar_Resp
  Left = 197
  Top = 114
  Width = 584
  Height = 375
  Caption = 'Libera'#231#227'o de Senhas Internas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_resp: TLabel
    Left = 0
    Top = 0
    Width = 576
    Height = 86
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'O Pedido de Libera'#231#227'o de Senha foi Negado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -30
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 86
    Width = 576
    Height = 154
    Align = alClient
    Caption = 'Motivo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object DBMemo1: TDBMemo
      Left = 2
      Top = 15
      Width = 572
      Height = 137
      Align = alClient
      DataField = 'LSTEXTORESP'
      DataSource = DM4.Src_LSen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 240
    Width = 576
    Height = 60
    Align = alBottom
    Caption = 'Outras Informa'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 37
      Top = 18
      Width = 119
      Height = 13
      Caption = 'Usu'#225'rio que Avaliou:'
    end
    object Label3: TLabel
      Left = 10
      Top = 37
      Width = 147
      Height = 13
      Caption = 'Data e hora da Resposta:'
    end
    object DBEdit1: TDBEdit
      Left = 160
      Top = 14
      Width = 66
      Height = 19
      Ctl3D = False
      DataField = 'LSCODUSRLIB'
      DataSource = DM4.Src_LSen
      Enabled = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 160
      Top = 32
      Width = 152
      Height = 19
      Ctl3D = False
      DataField = 'LSDATALIB'
      DataSource = DM4.Src_LSen
      Enabled = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object NOMUSR: TEdit
      Left = 225
      Top = 14
      Width = 340
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 300
    Width = 576
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 207
      Top = 3
      Width = 141
      Height = 33
      TabOrder = 0
      Kind = bkOK
    end
  end
end

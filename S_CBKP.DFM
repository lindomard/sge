object Frm_CBKP: TFrm_CBKP
  Left = 45
  Top = 217
  Width = 689
  Height = 147
  Caption = 'Caminhos para Backups'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 681
    Height = 120
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 20
      Width = 202
      Height = 13
      Caption = 'Destino do Backup....................................:'
    end
    object Label2: TLabel
      Left = 14
      Top = 69
      Width = 206
      Height = 13
      Caption = 'Caminho/Nome do Arquivo de Exportação.:'
    end
    object Label3: TLabel
      Left = 140
      Top = 44
      Width = 252
      Height = 13
      Caption = 'Exemplo: C:\, C:\BKP\, \\TERMINAL\C\BKP\, etc...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 138
      Top = 92
      Width = 262
      Height = 13
      Caption = 'Exemplo: C:\EXP.EXE, C:\ORACLE\EXP80.EXE, etc...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DEST: TEdit
      Left = 224
      Top = 16
      Width = 443
      Height = 21
      TabOrder = 0
      OnChange = DESTChange
    end
    object ORIGEM: TEdit
      Left = 224
      Top = 64
      Width = 443
      Height = 21
      TabOrder = 1
      OnChange = ORIGEMChange
    end
  end
end

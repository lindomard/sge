object Frm_Conexao: TFrm_Conexao
  Left = 190
  Top = 138
  Width = 544
  Height = 431
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Conex'#227'o com Pocket'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDefault
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 528
    Height = 105
    Align = alTop
    Caption = 'Defini'#231#245'es para Transferencias de Arquivos'
    TabOrder = 0
    object Label2: TLabel
      Left = 12
      Top = 22
      Width = 178
      Height = 13
      Caption = 'Enviar Documentos A partir de:'
    end
    object MDT1: TMaskEdit
      Left = 193
      Top = 19
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 0
      Text = '  /  /    '
    end
    object CB_TPENV: TCheckBox
      Left = 12
      Top = 39
      Width = 257
      Height = 19
      Caption = 'Enviar tamb'#233'm os t'#237'tulos ja recebidos'
      TabOrder = 1
    end
    object CB_PROANT: TCheckBox
      Left = 12
      Top = 57
      Width = 317
      Height = 19
      Caption = 'Enviar Produtos dos Pedidos anteriores'
      TabOrder = 2
    end
    object CB_RETORNO: TCheckBox
      Left = 13
      Top = 73
      Width = 317
      Height = 19
      Caption = 'Aguardar Processar e Enviar arquivo de Retorno'
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 105
    Width = 528
    Height = 105
    Align = alTop
    Caption = 'Conex'#245'es Anteriores:'
    TabOrder = 1
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 210
    Width = 528
    Height = 105
    Align = alTop
    Caption = 'Conex'#227'o Atual:'
    TabOrder = 2
    object Panel1: TPanel
      Left = 2
      Top = 15
      Width = 524
      Height = 41
      Align = alTop
      BorderStyle = bsSingle
      TabOrder = 0
    end
  end
end

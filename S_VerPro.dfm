object Frm_VerPro: TFrm_VerPro
  Left = 5
  Top = 55
  Width = 777
  Height = 434
  Caption = 'Rela'#231#227'o dos Produtos do Pedido'
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 769
    Height = 112
    Align = alTop
    Caption = 'Dados do Pedido:'
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 16
      Width = 85
      Height = 13
      Caption = 'Chave do Pedido:'
    end
    object Label2: TLabel
      Left = 221
      Top = 18
      Width = 77
      Height = 13
      Caption = 'Data do Pedido:'
    end
    object Label3: TLabel
      Left = 422
      Top = 17
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
    end
    object Label4: TLabel
      Left = 10
      Top = 40
      Width = 38
      Height = 13
      Caption = 'Cliente.:'
    end
    object Label5: TLabel
      Left = 10
      Top = 63
      Width = 55
      Height = 13
      Caption = 'Total Bruto:'
    end
    object Label6: TLabel
      Left = 249
      Top = 63
      Width = 101
      Height = 13
      Caption = 'Total dos Descontos:'
    end
    object Label7: TLabel
      Left = 506
      Top = 63
      Width = 72
      Height = 13
      Caption = 'Valor do Frete.:'
    end
    object Label8: TLabel
      Left = 10
      Top = 86
      Width = 91
      Height = 13
      Caption = 'Outros Acr'#233'scimos:'
    end
    object Label9: TLabel
      Left = 507
      Top = 86
      Width = 66
      Height = 13
      Caption = 'Total L'#237'quido:'
    end
    object DBEdit1: TDBEdit
      Left = 118
      Top = 12
      Width = 90
      Height = 21
      DataField = 'P1CHAVE'
      DataSource = DM1.Src_Ped01
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 324
      Top = 13
      Width = 90
      Height = 21
      DataField = 'P1DATAP'
      DataSource = DM1.Src_Ped01
      Enabled = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 485
      Top = 13
      Width = 90
      Height = 21
      DataField = 'P1CODVEN'
      DataSource = DM1.Src_Ped01
      Enabled = False
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 118
      Top = 36
      Width = 90
      Height = 21
      DataField = 'P1CODCLI'
      DataSource = DM1.Src_Ped01
      Enabled = False
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 211
      Top = 37
      Width = 278
      Height = 21
      DataField = 'nomcli'
      DataSource = DM1.Src_Ped01
      Enabled = False
      TabOrder = 4
    end
    object NOMECLI: TEdit
      Left = 491
      Top = 37
      Width = 266
      Height = 21
      Enabled = False
      TabOrder = 5
      Text = 'NOMECLI'
    end
    object DBEdit6: TDBEdit
      Left = 118
      Top = 59
      Width = 126
      Height = 21
      DataField = 'P1TOTALL'
      DataSource = DM1.Src_Ped01
      Enabled = False
      TabOrder = 6
    end
    object DBEdit7: TDBEdit
      Left = 375
      Top = 59
      Width = 126
      Height = 21
      DataField = 'P1TOTDES'
      DataSource = DM1.Src_Ped01
      Enabled = False
      TabOrder = 7
    end
    object DBEdit8: TDBEdit
      Left = 632
      Top = 59
      Width = 126
      Height = 21
      DataField = 'P1VALFRE'
      DataSource = DM1.Src_Ped01
      Enabled = False
      TabOrder = 8
    end
    object DBEdit9: TDBEdit
      Left = 118
      Top = 82
      Width = 126
      Height = 21
      DataField = 'P1VLRACRE'
      DataSource = DM1.Src_Ped01
      Enabled = False
      TabOrder = 9
    end
    object DBEdit10: TDBEdit
      Left = 633
      Top = 82
      Width = 126
      Height = 21
      DataField = 'P1VLRACRE'
      DataSource = DM1.Src_Ped01
      Enabled = False
      TabOrder = 10
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 112
    Width = 769
    Height = 247
    Align = alClient
    Caption = 'Produtos do Pedido:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 765
      Height = 230
      Align = alClient
      DataSource = DM1.Src_Ped02
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'P2ORDEM'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2ITEM'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2CODPRO'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2QTD'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'und'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nompro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2PRECO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2SIT'
          Width = 21
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2BASEN'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2ICMSN'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2TOTDES'
          Title.Caption = 'Descontos'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2ALIQ'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2CFO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2LOTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2DTVCTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2TOTLIQ'
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 359
    Width = 769
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 248
      Top = 8
      Width = 193
      Height = 25
      Caption = '&Sair'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
  end
end

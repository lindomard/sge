object Frm_ReeCupom: TFrm_ReeCupom
  Left = 0
  Top = 114
  Width = 792
  Height = 375
  Caption = 'Reemiss'#227'o de Cupom Fiscal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 674
    Top = 0
    Width = 110
    Height = 341
    Align = alRight
    Caption = 'A'#231#227'o:'
    TabOrder = 0
    object bbSair: TBitBtn
      Left = 3
      Top = 146
      Width = 103
      Height = 65
      Caption = '&Sair'
      TabOrder = 0
      OnClick = bbSairClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbEmitirCupom: TBitBtn
      Left = 3
      Top = 17
      Width = 103
      Height = 65
      Caption = '&Emitir Cupom'
      TabOrder = 1
      OnClick = bbEmitirCupomClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbReemitir: TBitBtn
      Left = 3
      Top = 81
      Width = 103
      Height = 65
      Caption = '&Ver Produtos'
      TabOrder = 2
      OnClick = bbReemitirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 674
    Height = 341
    Align = alClient
    Caption = 'Pedidos Pendentes:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 670
      Height = 241
      Align = alClient
      DataSource = Frm_Receb.Src_Ped
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'P1CHAVE'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1CODCLI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomcli'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1DATAP'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1TOTALL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomtip'
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1CODVEN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1TOTALB'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1TOTDES'
          Visible = True
        end>
    end
    object GroupBox3: TGroupBox
      Left = 2
      Top = 256
      Width = 670
      Height = 83
      Align = alBottom
      Caption = 'Pedido Selecionado.:'
      TabOrder = 1
      object Label1: TLabel
        Left = 7
        Top = 15
        Width = 45
        Height = 13
        Caption = 'Chave.:'
      end
      object Label2: TLabel
        Left = 177
        Top = 16
        Width = 36
        Height = 13
        Caption = 'Data.:'
      end
      object Label4: TLabel
        Left = 6
        Top = 36
        Width = 68
        Height = 13
        Caption = 'Total Bruto:'
      end
      object Label5: TLabel
        Left = 176
        Top = 36
        Width = 65
        Height = 13
        Caption = 'Descontos:'
      end
      object Label6: TLabel
        Left = 429
        Top = 38
        Width = 81
        Height = 13
        Caption = 'Total L'#237'quido:'
      end
      object Label7: TLabel
        Left = 429
        Top = 17
        Width = 85
        Height = 13
        Caption = 'C'#243'd.Vendedor:'
      end
      object Label8: TLabel
        Left = 6
        Top = 57
        Width = 48
        Height = 13
        Caption = 'Cliente.:'
      end
      object Label9: TLabel
        Left = 429
        Top = 59
        Width = 73
        Height = 13
        Caption = 'Tipo Pedido:'
      end
      object DBEdit1: TDBEdit
        Left = 78
        Top = 13
        Width = 80
        Height = 19
        Ctl3D = False
        DataField = 'P1CHAVE'
        DataSource = Frm_Receb.Src_Ped
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 248
        Top = 14
        Width = 80
        Height = 19
        Ctl3D = False
        DataField = 'P1DATAP'
        DataSource = Frm_Receb.Src_Ped
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 78
        Top = 34
        Width = 80
        Height = 19
        Ctl3D = False
        DataField = 'P1TOTALB'
        DataSource = Frm_Receb.Src_Ped
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 248
        Top = 35
        Width = 80
        Height = 19
        Ctl3D = False
        DataField = 'P1TOTDES'
        DataSource = Frm_Receb.Src_Ped
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 519
        Top = 35
        Width = 80
        Height = 19
        Ctl3D = False
        DataField = 'P1TOTALL'
        DataSource = Frm_Receb.Src_Ped
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 519
        Top = 14
        Width = 80
        Height = 19
        Ctl3D = False
        DataField = 'P1CODVEN'
        DataSource = Frm_Receb.Src_Ped
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 78
        Top = 55
        Width = 80
        Height = 19
        Ctl3D = False
        DataField = 'P1CODCLI'
        DataSource = Frm_Receb.Src_Ped
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 163
        Top = 56
        Width = 258
        Height = 19
        Ctl3D = False
        DataField = 'nomcli'
        DataSource = Frm_Receb.Src_Ped
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 519
        Top = 56
        Width = 144
        Height = 19
        Ctl3D = False
        DataField = 'nomtip'
        DataSource = Frm_Receb.Src_Ped
        ParentCtl3D = False
        TabOrder = 8
      end
    end
  end
end

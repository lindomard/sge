object Frm_Cancelar_Fechamento: TFrm_Cancelar_Fechamento
  Left = 0
  Top = 3
  Width = 792
  Height = 486
  Caption = 'Reemiss'#227'o de Cupom Fiscal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 666
    Top = 0
    Width = 110
    Height = 448
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
    Width = 666
    Height = 448
    Align = alClient
    Caption = 'Pedidos Pendentes:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 61
      Width = 662
      Height = 197
      Align = alClient
      DataSource = DM2.Src_Ped01
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
          FieldName = 'P1ORDEM'
          Width = 45
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
          Width = 264
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
      Top = 258
      Width = 662
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
        DataSource = DM2.Src_Ped01
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
        DataSource = DM2.Src_Ped01
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
        DataSource = DM2.Src_Ped01
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
        DataSource = DM2.Src_Ped01
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
        DataSource = DM2.Src_Ped01
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
        DataSource = DM2.Src_Ped01
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
        DataSource = DM2.Src_Ped01
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
        DataSource = DM2.Src_Ped01
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
        DataSource = DM2.Src_Ped01
        ParentCtl3D = False
        TabOrder = 8
      end
    end
    object gb_formas: TGroupBox
      Left = 2
      Top = 341
      Width = 662
      Height = 105
      Align = alBottom
      Caption = 'Formas dos Pagamentos'
      TabOrder = 2
      Visible = False
      object DBGrid2: TDBGrid
        Left = 2
        Top = 15
        Width = 658
        Height = 88
        Align = alClient
        DataSource = DM1.Src_PedFP
        FixedColor = 9830399
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'PFPSEQ'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPFORMA'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPNOMFOR'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPVALOR'
            Title.Alignment = taCenter
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPNUMDOC'
            Title.Alignment = taCenter
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPBANCO'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPSERIE'
            Title.Alignment = taCenter
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPCC'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPCOMP'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPAGENCIA'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPEMITENTE'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPDATA'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nombco'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
    object GroupBox4: TGroupBox
      Left = 2
      Top = 15
      Width = 662
      Height = 46
      Align = alTop
      Caption = 'Pesquisar:'
      TabOrder = 3
      object Label10: TLabel
        Left = 8
        Top = 20
        Width = 43
        Height = 13
        Caption = 'Campo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 208
        Top = 20
        Width = 59
        Height = 13
        Caption = 'Conteudo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CB_PESQ: TComboBox
        Left = 56
        Top = 17
        Width = 145
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = 'Chave'
        Items.Strings = (
          'Chave'
          'Ordem'
          'Data'
          'Codigo Cliente'
          'Nome Cliente'
          'Valor')
      end
      object CONTEUDO: TEdit
        Left = 270
        Top = 17
        Width = 233
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
      end
      object bbatucons: TBitBtn
        Left = 525
        Top = 13
        Width = 113
        Height = 25
        Caption = 'Atuali&zar'
        TabOrder = 2
        OnClick = bbatuconsClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555555555555555555555555555555555555555FF55555555555559055555
          55555555577FF5555555555599905555555555557777F5555555555599905555
          555555557777FF5555555559999905555555555777777F555555559999990555
          5555557777777FF5555557990599905555555777757777F55555790555599055
          55557775555777FF5555555555599905555555555557777F5555555555559905
          555555555555777FF5555555555559905555555555555777FF55555555555579
          05555555555555777FF5555555555557905555555555555777FF555555555555
          5990555555555555577755555555555555555555555555555555}
        NumGlyphs = 2
      end
    end
  end
  object Src_Ped: TDataSource
    DataSet = DM2.Tb_Ped02
    OnDataChange = Src_PedDataChange
    Left = 496
    Top = 88
  end
end

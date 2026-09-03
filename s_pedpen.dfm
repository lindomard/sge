object Frm_pedpen: TFrm_pedpen
  Left = 113
  Top = 185
  BorderStyle = bsSingle
  Caption = 'Rela'#231#227'o de produtos em consigna'#231#227'o com devolu'#231#227'o pendente'
  ClientHeight = 245
  ClientWidth = 679
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 679
    Height = 245
    ActivePage = ts_filtro1
    Align = alClient
    MultiLine = True
    TabOrder = 0
    TabPosition = tpLeft
    object ts_filtro1: TTabSheet
      Caption = 'Filtros Primarios'
      object lbl_cli: TLabel
        Left = 13
        Top = 8
        Width = 48
        Height = 13
        Caption = 'CLIENTE:'
      end
      object lbl_prod: TLabel
        Left = 6
        Top = 53
        Width = 57
        Height = 13
        Caption = 'PRODUTO:'
      end
      object lbl_uf: TLabel
        Left = 45
        Top = 143
        Width = 17
        Height = 13
        Caption = 'UF:'
      end
      object lbl_cid: TLabel
        Left = 20
        Top = 98
        Width = 43
        Height = 13
        Caption = 'CIDADE:'
      end
      object lb_ped: TLabel
        Left = 7
        Top = 191
        Width = 58
        Height = 13
        Caption = 'PERIODO..:'
      end
      object Label6: TLabel
        Left = 162
        Top = 190
        Width = 6
        Height = 13
        Caption = #224
      end
      object Label7: TLabel
        Left = 23
        Top = 215
        Width = 42
        Height = 13
        Caption = 'CHAVE.:'
      end
      object Label2: TLabel
        Left = 162
        Top = 215
        Width = 6
        Height = 13
        Caption = #224
      end
      object Label1: TLabel
        Left = 280
        Top = 192
        Width = 91
        Height = 13
        Caption = 'Filtrar por data de..:'
      end
      object edt_cli: TEdit
        Left = 64
        Top = 5
        Width = 47
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = edt_cliExit
        OnKeyPress = edt_cliKeyPress
        OnMouseMove = edt_cliMouseMove
      end
      object edt_prod: TEdit
        Left = 66
        Top = 50
        Width = 45
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnExit = edt_prodExit
        OnKeyPress = edt_prodKeyPress
        OnMouseMove = edt_prodMouseMove
      end
      object edt_cid: TEdit
        Left = 66
        Top = 95
        Width = 45
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        OnExit = edt_cidExit
        OnKeyPress = edt_cidKeyPress
        OnMouseMove = edt_cidMouseMove
      end
      object edt_uf: TEdit
        Left = 65
        Top = 140
        Width = 46
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        OnExit = edt_ufExit
        OnKeyDown = edt_ufKeyDown
        OnMouseMove = edt_ufMouseMove
      end
      object lb_cli: TListBox
        Left = 110
        Top = 5
        Width = 540
        Height = 42
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 4
        OnKeyDown = lb_cliKeyDown
      end
      object lb_prod: TListBox
        Left = 110
        Top = 50
        Width = 540
        Height = 42
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 5
        OnKeyDown = lb_prodKeyDown
      end
      object lb_cid: TListBox
        Left = 110
        Top = 95
        Width = 540
        Height = 42
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 6
        OnKeyDown = lb_cidKeyDown
      end
      object lb_uf: TListBox
        Left = 110
        Top = 140
        Width = 540
        Height = 44
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 7
        OnKeyDown = lb_ufKeyDown
      end
      object cb_omitir_cli: TCheckBox
        Left = 64
        Top = 25
        Width = 44
        Height = 17
        Caption = 'omitir'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
        OnMouseMove = cb_omitir_cliMouseMove
      end
      object cb_omitir_prod: TCheckBox
        Left = 66
        Top = 70
        Width = 44
        Height = 17
        Caption = 'omitir'
        TabOrder = 9
        OnMouseMove = cb_omitir_prodMouseMove
      end
      object cb_omitir_cid: TCheckBox
        Left = 67
        Top = 115
        Width = 42
        Height = 17
        Caption = 'omitir'
        TabOrder = 10
        OnMouseMove = cb_omitir_cidMouseMove
      end
      object cb_omitir_uf: TCheckBox
        Left = 66
        Top = 160
        Width = 44
        Height = 17
        Caption = 'omitir'
        TabOrder = 11
        OnMouseMove = cb_omitir_ufMouseMove
      end
      object dtinicial: TDateEdit
        Left = 67
        Top = 187
        Width = 90
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 12
      end
      object dtfinal: TDateEdit
        Left = 177
        Top = 187
        Width = 90
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 13
      end
      object edt_chaveini: TEdit
        Left = 67
        Top = 212
        Width = 90
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 14
      end
      object edt_chavefin: TEdit
        Left = 177
        Top = 212
        Width = 90
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 15
      end
      object bit_visu: TBitBtn
        Left = 524
        Top = 195
        Width = 95
        Height = 30
        Caption = 'VISUALIZAR'
        TabOrder = 16
        OnClick = bit_visuClick
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDEDECFCFCFF6F6F6FF
          FFFFFFFFFFFFFFFFD0D5D88E91948D91948E92948E92948E92948E92948E9294
          8E92948E92948E92948F92948F92938F92938F9394909394919493A29F958982
          7A5E5E5E616161F1F1F1FFFFFFDAD5D3C99678EFCAB1EDC8AFEDC8B0ECC8B1EC
          C9B2EBC9B3EBC8B3EAC8B5EAC8B5E7C6B5E5C4B5E3C2B5E0C0B5DEBEB4DDBDB2
          F5CCB12F58FA5293E4FEEEDE636364D5D5D5FFFFFFD1A083FFFFF0FFFFF8FFFF
          F9FFFFFDFFFFFFFFFFFFFFFFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF3666FF3996FF66DCFF77B2E593897FD2D2D3FFFFFFE7CAB9
          FFFFF35E5A556E6A636E69646E6B665E5B58FFFFFF5E5C5A6E6B696E6C696E6C
          6A6E6D6B6D6C6C6D6C6BA19E992150EF3D9AFF71DCFF4CACFF1657FF9E9A98FF
          FFFFFFFFFFE6C8B6FFFEECC2B9ACC9C1B6C9C2B7C9C2B9C2BBB3FFFFFFC0BCB5
          C8C4BECECBC6CECDCCCECCCCCECDCAD4D2CF6E6E862B88EC73E0FF4AA9FF225F
          FFEBC6B9939592FFFFFFFFFFFFE7CAB7FFFEEBC2B9ACC9C2B5C9C1B7C9C2B8C9
          C3BABFBAB2D2CDC6D0D0D08C929B8C88818C89828C929BAFB0B3AEAAA5C2CDC7
          3094F41953F7FFFFFFE0BEB1909394FFFFFFFFFFFFE9CBB7FFFFF25E5A546E68
          626E6A636E69656D6A657B777290949A9C8F7CF6CC88F5CD8CF1CA8DF8CE8EA1
          94828B9096C3BEB9606990908C8CFFFFFFDEBEB4909394FFFFFFFFFFFFEBCCB9
          FFF6E3FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFF7F4F1A09481FFDB99F1D19AF0CF
          97F0CC8EEFCF9BFFDA9FA09583A7A9ABF4F2EDFFFFFFFFFFFFE0C0B5909394FF
          FFFFFFFFFFECCEB9FFFFEF5E5A536E69626E69626C68627A7771878B92F1D296
          F4DCAAE5CE9DE6CD9DE3C895F0CE94EFD09FFED79A8F949EFFFFFFFFFDFBFFFF
          FFE3C2B48F9394FFFFFFFFFFFFEECFBAFFFCE8C2B9AAC9C0B2C9C0B4C8C0B4DA
          D5CD9C988EFBE2B0F6E4BBF1E2BAF1DDB2EED9A8F1D7A4EECD91FBD9A2908C89
          FFFFFFFFFFFFFFFFFFE5C4B58F9394FFFFFFFFFFFFEFD1BBFFFBE6C2B7AAC9C0
          B2C9C0B3C8BFB2DAD4CBA09C94FFF0C3F8EED3F5ECCBF3E8C2F1DFB5F0D9AAED
          CF9AF7D39996928DD2D0CEB9B6B2FFFFFFE8C6B58F9294FFFFFFFFFFFFF0D2BC
          FFFFEC5E59526E68606E69616C67617A766F95979CFFF3CAF5F4E6FAFBF7F0E8
          CBEDE1BCEEDAACEBD09CF1CF949CA0A87573705D5B59FFFFFFEAC8B48F9294FF
          FFFFFFFFFFF1D3BDFFF3DDFFFFF7FFFFF9FFFFF5FFFFF6FFFFFEFFFFFCAAA797
          FFFFF4FFFFF6FEF9E0FBEFCBF7E2B5FFE5A89B9080EBE9E8FFFFFFFFFFFFFFFF
          F9EBC8B48F9294FFFFFFFFFFFFF3D5BDFFFFE95E5A51666158BEB4A6BEB5A865
          605977726BB6B7BBA6A596FAF2CFFFF7D2F7E3B5F4D9A69B93818B8D93C2BDB6
          FFFEF5FFF9EFFFFEF6EBC9B28F9294FFFFFFFFFFFFF5D7BFFFF9E0C2B7A6C5BB
          AAEBDFCDEBE0CEC5BCAFC3BAACCBC2B5ECE7E4A4A5A79F9C9699978E979A9FDA
          D8D5C6BFB7E6DFD5FFFFF8FFFFF4FFFDF4ECC9B28F9295FFFFFFFFFFFFF6D8C0
          FFF7DBC2B6A6C9BEACC5BBABC5BBADC5BCADEBE1D0EAE0D0C2B9ACCBC3B9CCC7
          BFCDC8C1CCC6BCC0B8AFFFFFFDBEB7AEC2BCB3BAB4ACFFFFF9ECC8B18F9295FF
          FFFFFFFFFFF7D9C1FFFCDE5E59506E675E6E675E6E685F666159BEB4A6BEB5A7
          66625B6E69616E68616E69626E6A635E5B55FFFFFF5E5B566E69645E5B57FFFF
          FEECC8B08F9295FFFFFFFFFFFFF9DBC2FFECCCFFFFE9FFFFEFFFFFF4FFFFF5FF
          FFF6FFFFF1FFFFF3FFFFFBFFFFFCFFFFF0FFFFFEFFFFFFFFFFFFFFFFF3FFFFFF
          FFFFFFFFFFFFFFFAEEEDC8B08E9295FFFFFFFFFFFFFADDC3FFF8D45E574D6E66
          5A6E675C6E675E6E675E6E685E6E685F6E68605E5A52FFFFFB5E5A536E69616E
          69626E69616E69626E68625E5B54FFFFF8EDC8AE8E9295FFFFFFFFFFFFFCE0C8
          FFEFC5BAAB93C2B39CC2B49FC2B5A2C2B6A5C2B6A6C2B7A7C2B7A7BAB0A2FFFF
          EBBAB0A3C2B8AAC2B9ABC2B9ABC2B9ACC2B9ACBAB1A5FFFFEFEFCAB08D9193FF
          FFFFFFFFFFFBCA9BFFF6E3FFEFC5FFF1CEFFF3D1FFF4D6FFF7DAFFF8DFFFF9E2
          FFFAE3FFFBE4FFF3DFFFFBE7FFFCE8FFFCE8FFFCE9FFFDEAFFFDEAFFFEEBFFFD
          EFC99779D0D5D8FFFFFFFFFFFFFEF9F3FACB9BFCE0C7FADDC3F8DBC2F7DAC1F6
          D8C0F5D7BEF3D5BDF1D3BDF0D2BCEFD1BBEDCFBAECCEBAEBCCB8E9CBB8E7C9B7
          E6C8B6E7CABAD1A082DBD6D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object cb_tpdata: TComboBox
        Left = 372
        Top = 187
        Width = 101
        Height = 21
        Ctl3D = False
        ItemHeight = 13
        ItemIndex = 0
        ParentCtl3D = False
        TabOrder = 17
        Text = 'Data da NF'
        Items.Strings = (
          'Data da NF'
          'Data do Pedido')
      end
    end
    object ts_relatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = 8
        Top = 0
        Width = 794
        Height = 1123
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        BeforePrint = RLReport1BeforePrint
        object RLBand1: TRLBand
          Left = 39
          Top = 39
          Width = 716
          Height = 59
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLLabel1: TRLLabel
            Left = 209
            Top = 37
            Width = 297
            Height = 16
            Caption = 'Relatorio de Remessa p/ Consigna'#231#245'es pendentes'
          end
          object RLAngleLabel1: TRLAngleLabel
            Left = 0
            Top = 0
            Width = 64
            Height = 16
            Caption = 'Empresa.:'
          end
          object RLAngleLabel2: TRLAngleLabel
            Left = 0
            Top = 16
            Width = 67
            Height = 16
            Caption = 'Endere'#231'o.:'
          end
          object RLDBText7: TRLDBText
            Left = 66
            Top = 0
            Width = 110
            Height = 16
            DataField = 'FANTASIA'
            DataSource = DM1.Src_Emp
          end
          object RLDBText8: TRLDBText
            Left = 69
            Top = 16
            Width = 36
            Height = 16
            DataField = 'ender'
            DataSource = DM1.Src_Emp
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 656
            Top = 38
            Width = 60
            Height = 16
            Alignment = taRightJustify
            Info = itFullDate
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 674
            Top = 0
            Width = 87
            Height = 16
            Info = itPageNumber
          end
          object RLLabel3: TRLLabel
            Left = 690
            Top = 0
            Width = 8
            Height = 16
            Caption = '/'
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 604
            Top = 0
            Width = 112
            Height = 16
            Alignment = taRightJustify
            Info = itLastPageNumber
          end
          object RLLabel5: TRLLabel
            Left = 616
            Top = 0
            Width = 56
            Height = 16
            Alignment = taRightJustify
            Caption = 'Pagina..:'
          end
        end
        object RLGroup1: TRLGroup
          Left = 39
          Top = 114
          Width = 716
          Height = 60
          DataFields = 'CLIENTE'
          object RLBand2: TRLBand
            Left = 0
            Top = 41
            Width = 716
            Height = 18
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLDBText2: TRLDBText
              Left = -1
              Top = 1
              Width = 96
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'P2CHAVE'
              DataSource = DataSource1
              Holder = rl_chave
            end
            object RLDBText3: TRLDBText
              Left = 94
              Top = 1
              Width = 108
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'P1DATANF'
              DataSource = DataSource1
              Holder = rl_dtemis
            end
            object RLDBText4: TRLDBText
              Left = 202
              Top = 1
              Width = 76
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'P2CODPRO'
              DataSource = DataSource1
              Holder = rl_codpro
            end
            object RLDBText5: TRLDBText
              Left = 278
              Top = 1
              Width = 378
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'PDNOME'
              DataSource = DataSource1
              Holder = rl_nome
            end
            object RLDBText6: TRLDBText
              Left = 656
              Top = 1
              Width = 61
              Height = 16
              AutoSize = False
              DataField = 'QTD'
              DataSource = DataSource1
              Holder = rl_qtd
            end
          end
          object RLBand3: TRLBand
            Left = 0
            Top = 0
            Width = 716
            Height = 41
            BandType = btTitle
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLLabel2: TRLLabel
              Left = 1
              Top = 2
              Width = 69
              Height = 16
              Caption = 'CLIENTE..:'
            end
            object RLDBText1: TRLDBText
              Left = 72
              Top = 2
              Width = 57
              Height = 16
              DataField = 'CLIENTE'
              DataSource = DataSource1
            end
            object rl_chave: TRLLabel
              Left = -1
              Top = 24
              Width = 96
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'CHAVE'
            end
            object rl_codpro: TRLLabel
              Left = 202
              Top = 24
              Width = 76
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'CODIGO'
            end
            object rl_nome: TRLLabel
              Left = 278
              Top = 24
              Width = 378
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'NOME'
            end
            object rl_qtd: TRLLabel
              Left = 656
              Top = 24
              Width = 61
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'Qtd. Pen.'
            end
            object rl_dtemis: TRLLabel
              Left = 94
              Top = 24
              Width = 108
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'DATA EMISS'#195'O'
            end
          end
        end
        object RLBand4: TRLBand
          Left = 39
          Top = 98
          Width = 716
          Height = 16
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object MEMO: TRLMemo
            Left = 192
            Top = 0
            Width = 377
            Height = 16
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 80
            Top = 0
            Width = 110
            Height = 16
            Caption = 'FILTRADO POR..:'
          end
        end
        object RLBand5: TRLBand
          Left = 39
          Top = 174
          Width = 716
          Height = 16
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          BeforePrint = RLBand5BeforePrint
          object lbl_patrocinio: TRLLabel
            Left = -2
            Top = 0
            Width = 524
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'In'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLSystemInfo4: TRLSystemInfo
            Left = 521
            Top = 0
            Width = 196
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Info = itFullDate
            Transparent = False
          end
        end
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select P2CODEMP, P1DATANF,P2CHAVE, P2CODPRO, PDNOME, (P2QTD-P2QT' +
        'DDEV) as QTD, CCODCLI||CRAZAO  AS CLIENTE'
      ' from CADP02, CADP01, CADPRO, CADCLI')
    Left = 311
    Top = 212
    object Query1P2CODEMP: TFloatField
      FieldName = 'P2CODEMP'
      Origin = 'SG_ASSOC.CADP02.P2CODEMP'
    end
    object Query1P2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE'
    end
    object Query1P2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Query1PDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 120
    end
    object Query1QTD: TFloatField
      FieldName = 'QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Query1CLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'SG_ASSOC.CADCLI.CCODCLI'
      Size = 100
    end
    object Query1P1DATANF: TDateTimeField
      FieldName = 'P1DATANF'
      Origin = 'SG_ASSOC.CADP01.P1DATANF'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 359
    Top = 212
  end
end

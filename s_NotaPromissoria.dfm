object Frm_NotaPromissoria: TFrm_NotaPromissoria
  Left = 156
  Top = 107
  Width = 872
  Height = 440
  Caption = 'Frm_NotaPromissoria'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 856
    Height = 402
    ActivePage = tsNotaPromissoria
    Align = alClient
    TabOrder = 0
    object tsGeral: TTabSheet
      Caption = 'Geral'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 848
        Height = 176
        Align = alClient
        DataSource = src_ntPromissoria
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMERO'
            Title.Alignment = taCenter
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRAZAO'
            Title.Alignment = taCenter
            Width = 280
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRVALOR'
            Title.Alignment = taCenter
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRDTEMIS'
            Title.Alignment = taCenter
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRDTVCTO'
            Title.Alignment = taCenter
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Title.Alignment = taCenter
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 176
        Width = 848
        Height = 198
        Align = alBottom
        Alignment = taRightJustify
        TabOrder = 1
        object Label1: TLabel
          Left = 15
          Top = 10
          Width = 80
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Data Inicial:'
        end
        object Label2: TLabel
          Left = 199
          Top = 12
          Width = 80
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Data Final:'
        end
        object Label3: TLabel
          Left = 392
          Top = 12
          Width = 80
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Pesquisa por:'
        end
        object Label4: TLabel
          Left = 15
          Top = 28
          Width = 80
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'N'#250'mero Inicial:'
        end
        object Label5: TLabel
          Left = 203
          Top = 30
          Width = 80
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'N'#250'mero Final:'
        end
        object Label6: TLabel
          Left = 433
          Top = 30
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = 'Parcela:'
        end
        object Label7: TLabel
          Left = 15
          Top = 51
          Width = 80
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Fornecedor:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object bbAplicar: TBitBtn
          Left = 2
          Top = 142
          Width = 120
          Height = 40
          Caption = '&Aplicar'
          TabOrder = 0
          OnClick = bbAplicarClick
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
        object bbNTPromissoria: TBitBtn
          Left = 264
          Top = 142
          Width = 120
          Height = 40
          Caption = '&Emitir Promissoria'
          TabOrder = 1
          OnClick = bbNTPromissoriaClick
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
          NumGlyphs = 2
        end
        object bbSair: TBitBtn
          Left = 544
          Top = 142
          Width = 120
          Height = 40
          Caption = '&Sair'
          TabOrder = 2
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
          NumGlyphs = 2
        end
        object edt_datini: TDateEdit
          Left = 99
          Top = 6
          Width = 96
          Height = 21
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 3
          OnExit = edt_datiniExit
        end
        object edt_datfin: TDateEdit
          Left = 288
          Top = 8
          Width = 96
          Height = 21
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 4
        end
        object cb_datapesq: TComboBox
          Left = 480
          Top = 8
          Width = 108
          Height = 21
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 5
          Text = 'Vencimento'
          Items.Strings = (
            'Emissao'
            'Vencimento')
        end
        object edt_numini: TEdit
          Left = 99
          Top = 26
          Width = 95
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
          OnExit = edt_numiniExit
        end
        object edt_numfin: TEdit
          Left = 288
          Top = 28
          Width = 95
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          OnExit = edt_numfinExit
        end
        object edt_parc: TEdit
          Left = 481
          Top = 28
          Width = 32
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
        end
        object Edit1: TEdit
          Left = 513
          Top = 27
          Width = 121
          Height = 21
          Ctl3D = True
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 9
          Text = 'Em branco Todas'
        end
        object CODFOR: TEdit
          Left = 99
          Top = 46
          Width = 95
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 10
          OnExit = CODFORExit
          OnKeyPress = CODFORKeyPress
        end
        object lbx_codfor: TListBox
          Left = 192
          Top = 46
          Width = 311
          Height = 40
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          OnKeyDown = lbx_codforKeyDown
        end
        object OMITIR_FOR: TCheckBox
          Left = 101
          Top = 68
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos digitados'#13#10'n'#227'o Ser'#227'o Impressos'
          Caption = 'Omitir'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
        end
      end
    end
    object tsNotaPromissoria: TTabSheet
      Caption = 'Nota Promissoria'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = 16
        Top = 3
        Width = 794
        Height = 1123
        DataSource = src_ntPromissoria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLDetailGrid1: TRLDetailGrid
          Left = 38
          Top = 38
          Width = 718
          Height = 323
          Degrade.Direction = ddVertical
          Degrade.OppositeColor = 11206655
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLDraw8: TRLDraw
            Left = 77
            Top = 180
            Width = 255
            Height = 123
          end
          object RLDraw7: TRLDraw
            Left = 77
            Top = 136
            Width = 494
            Height = 39
          end
          object RLDraw6: TRLDraw
            Left = 159
            Top = 101
            Width = 537
            Height = 31
          end
          object lbl_capt_aval: TRLAngleLabel
            Left = 0
            Top = 0
            Width = 12
            Height = 311
            Align = faLeft
            Alignment = taCenter
            Angle = 90.000000000000000000
            AutoSize = False
            Caption = 'AVALISTA(S)'
            Layout = tlCenter
          end
          object lbl_cap_assin_aval: TRLAngleLabel
            Left = 12
            Top = 0
            Width = 12
            Height = 311
            Align = faLeft
            Alignment = taCenter
            Angle = 90.000000000000000000
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Layout = tlCenter
          end
          object lbl_aval_cnpjcpf01: TRLAngleLabel
            Left = 24
            Top = 0
            Width = 12
            Height = 311
            Align = faLeft
            Alignment = taCenter
            Angle = 90.000000000000000000
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = '  CNPJ/CPF:'
            Layout = tlBottom
          end
          object lbl_aval_cnpjcpf02: TRLAngleLabel
            Left = 36
            Top = 0
            Width = 12
            Height = 311
            Align = faLeft
            Alignment = taCenter
            Angle = 90.000000000000000000
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Borders.Color = clWhite
            Caption = ' CNPJ/CPF:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlBottom
            ParentFont = False
          end
          object RLDraw1: TRLDraw
            Left = 79
            Top = 6
            Width = 268
            Height = 40
          end
          object RLDraw2: TRLDraw
            Left = 355
            Top = 6
            Width = 154
            Height = 40
          end
          object RLDraw3: TRLDraw
            Left = 516
            Top = 6
            Width = 181
            Height = 40
          end
          object RLDraw4: TRLDraw
            Left = 76
            Top = 101
            Width = 76
            Height = 31
          end
          object RLLabel1: TRLLabel
            Left = 78
            Top = 103
            Width = 70
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Ou '#224' sua ordem'
          end
          object RLLabel2: TRLLabel
            Left = 77
            Top = 115
            Width = 72
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'A QUANTIA DE'
          end
          object RLDBMemo1: TRLDBMemo
            Left = 79
            Top = 47
            Width = 618
            Height = 25
            AutoSize = False
            DataField = 'texto_aos'
            DataSource = src_ntPromissoria
          end
          object RLDBText1: TRLDBText
            Left = 79
            Top = 84
            Width = 618
            Height = 16
            AutoSize = False
            DataField = 'texto_nominal'
            DataSource = src_ntPromissoria
          end
          object RLDBMemo2: TRLDBMemo
            Left = 160
            Top = 106
            Width = 530
            Height = 25
            AutoSize = False
            DataField = 'texto_quantia'
            DataSource = src_ntPromissoria
          end
          object RLDBMemo3: TRLDBMemo
            Left = 81
            Top = 139
            Width = 487
            Height = 34
            AutoSize = False
            DataField = 'TextoNormal'
            DataSource = src_ntPromissoria
          end
          object RLDraw5: TRLDraw
            Left = 578
            Top = 137
            Width = 118
            Height = 38
          end
          object RLLabel3: TRLLabel
            Left = 583
            Top = 141
            Width = 108
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'EM MOEDA CORRENTE'
          end
          object RLLabel4: TRLLabel
            Left = 583
            Top = 158
            Width = 108
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'DESTE PAIS'
          end
          object RLLabel5: TRLLabel
            Left = 80
            Top = 7
            Width = 266
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'VENCIMENTO'
            Color = 4194368
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLLabel6: TRLLabel
            Left = 356
            Top = 7
            Width = 152
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'N'#218'MERO'
            Color = 4194368
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLLabel7: TRLLabel
            Left = 516
            Top = 7
            Width = 180
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'VALOR DA NOTA PROMISS'#211'RIA'
            Color = 4194368
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLLabel8: TRLLabel
            Left = 78
            Top = 200
            Width = 250
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Pag'#225'vel em'
            Color = 13303754
            ParentColor = False
            Transparent = False
          end
          object RLDBt_cidade_pagavel: TRLDBText
            Left = 78
            Top = 185
            Width = 250
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Color = 13303754
            DataField = 'cidade_pagavel'
            DataSource = src_ntPromissoria
            ParentColor = False
            Transparent = False
          end
          object RLDBT_emitente: TRLDBText
            Left = 78
            Top = 214
            Width = 250
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'emitente'
            DataSource = src_ntPromissoria
          end
          object RLLabel9: TRLLabel
            Left = 78
            Top = 229
            Width = 250
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Emitente'
          end
          object RLDBT_cnpj_cpf_emitente: TRLDBText
            Left = 78
            Top = 243
            Width = 250
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Color = 13303754
            DataField = 'cnpj_cpf_emitente'
            DataSource = src_ntPromissoria
            ParentColor = False
            Transparent = False
          end
          object RLLabel10: TRLLabel
            Left = 78
            Top = 258
            Width = 250
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'CNPJ/CPF'
            Color = 13303754
            ParentColor = False
            Transparent = False
          end
          object RLLabel11: TRLLabel
            Left = 78
            Top = 286
            Width = 250
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Endere'#231'o'
          end
          object RLDBText2: TRLDBText
            Left = 78
            Top = 271
            Width = 250
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'endereco_emitente'
            DataSource = src_ntPromissoria
          end
          object RLDBT_cidade_data: TRLDBText
            Left = 375
            Top = 184
            Width = 320
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'cidade_data'
            DataSource = src_ntPromissoria
          end
          object RLDBT_CRAZAO: TRLDBText
            Left = 375
            Top = 240
            Width = 320
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            DataField = 'nome_devedor'
            DataSource = src_ntPromissoria
          end
          object RLDBT_cpf_cnpj_destinatario: TRLDBText
            Left = 375
            Top = 276
            Width = 320
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'cpf_cnpj_destinatario'
            DataSource = src_ntPromissoria
          end
          object RLLabel12: TRLLabel
            Left = 375
            Top = 289
            Width = 320
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'CPF/CNPJ'
          end
          object RLDBT_data_mes_ano: TRLDBText
            Left = 85
            Top = 23
            Width = 258
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'data_mes_ano'
            DataSource = src_ntPromissoria
          end
          object RLDBText3: TRLDBText
            Left = 357
            Top = 23
            Width = 148
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'NUMERO'
            DataSource = src_ntPromissoria
          end
          object RLDBText4: TRLDBText
            Left = 546
            Top = 23
            Width = 148
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'CRVALOR'
            DataSource = src_ntPromissoria
          end
          object RLDBText5: TRLDBText
            Left = 0
            Top = 311
            Width = 718
            Height = 12
            Align = faBottom
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'texto_branco'
            DataSource = src_ntPromissoria
          end
        end
      end
    end
  end
  object Qr_NtPromissoria: TQuery
    OnCalcFields = Qr_NtPromissoriaCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select CRDTVCTO,CRDTEMIS,CRNUMERO || '#39'-'#39' || CRDESD AS NUMERO, CR' +
        'VALOR'
      ',CRAZAO'
      ',TO_CHAR(CCNPJ) AS CCNPJ'
      ',TO_CHAR(CCPF) AS CCPF'
      ','#39'P'#39' AS ORIGEM'
      ',CLOG AS ENDERECO'
      ',CCIDADE AS CIDADE'
      ',CUF AS UF'
      'from CADDAR,CADCLI'
      'where CCODCLI=CRCODCLI'
      '')
    Left = 484
    Top = 96
    object Qr_NtPromissoriaCRDTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'CRDTVCTO'
      Origin = 'SG_ASSOC.CADDAR.CRDTVCTO'
    end
    object Qr_NtPromissoriaCRVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CRVALOR'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR'
    end
    object Qr_NtPromissoriaCRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 60
    end
    object Qr_NtPromissoriaNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = 'SG_ASSOC.CADDAR.CRNUMERO'
      Size = 45
    end
    object Qr_NtPromissoriatexto_aos: TStringField
      FieldKind = fkCalculated
      FieldName = 'texto_aos'
      Size = 700
      Calculated = True
    end
    object Qr_NtPromissoriatexto_nominal: TStringField
      FieldKind = fkCalculated
      FieldName = 'texto_nominal'
      Size = 500
      Calculated = True
    end
    object Qr_NtPromissoriatexto_quantia: TStringField
      FieldKind = fkCalculated
      FieldName = 'texto_quantia'
      Size = 500
      Calculated = True
    end
    object Qr_NtPromissoriatexto_moeda: TStringField
      FieldKind = fkCalculated
      FieldName = 'texto_moeda'
      Size = 500
      Calculated = True
    end
    object Qr_NtPromissoriacidade_pagavel: TStringField
      FieldKind = fkCalculated
      FieldName = 'cidade_pagavel'
      Size = 100
      Calculated = True
    end
    object Qr_NtPromissoriaemitente: TStringField
      FieldKind = fkCalculated
      FieldName = 'emitente'
      Size = 100
      Calculated = True
    end
    object Qr_NtPromissoriacnpj_cpf_emitente: TStringField
      FieldKind = fkCalculated
      FieldName = 'cnpj_cpf_emitente'
      Calculated = True
    end
    object Qr_NtPromissoriaendereco_emitente: TStringField
      FieldKind = fkCalculated
      FieldName = 'endereco_emitente'
      Size = 200
      Calculated = True
    end
    object Qr_NtPromissoriacidade_data: TStringField
      FieldKind = fkCalculated
      FieldName = 'cidade_data'
      Size = 300
      Calculated = True
    end
    object Qr_NtPromissoriacpf_cnpj_destinatario: TStringField
      FieldKind = fkCalculated
      FieldName = 'cpf_cnpj_destinatario'
      Calculated = True
    end
    object Qr_NtPromissoriadata_mes_ano: TStringField
      FieldKind = fkCalculated
      FieldName = 'data_mes_ano'
      Size = 100
      Calculated = True
    end
    object Qr_NtPromissoriaTextoNormal: TStringField
      FieldKind = fkCalculated
      FieldName = 'TextoNormal'
      Size = 500
      Calculated = True
    end
    object Qr_NtPromissoriatexto_branco: TStringField
      FieldKind = fkCalculated
      FieldName = 'texto_branco'
      Size = 500
      Calculated = True
    end
    object Qr_NtPromissoriaORIGEM: TStringField
      FieldName = 'ORIGEM'
      FixedChar = True
      Size = 1
    end
    object Qr_NtPromissorianome_devedor: TStringField
      FieldKind = fkCalculated
      FieldName = 'nome_devedor'
      Size = 100
      Calculated = True
    end
    object Qr_NtPromissoriaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object Qr_NtPromissoriaCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Size = 30
    end
    object Qr_NtPromissoriaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Qr_NtPromissoriaCCNPJ: TStringField
      FieldName = 'CCNPJ'
      Size = 40
    end
    object Qr_NtPromissoriaCCPF: TStringField
      FieldName = 'CCPF'
      Size = 40
    end
    object Qr_NtPromissoriaCRDTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emissao'
      FieldName = 'CRDTEMIS'
    end
  end
  object src_ntPromissoria: TDataSource
    DataSet = Qr_NtPromissoria
    Left = 536
    Top = 96
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 596
    Top = 112
  end
end

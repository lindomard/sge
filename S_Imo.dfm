inherited Frm_Imo: TFrm_Imo
  Left = 161
  Top = 121
  Width = 769
  Height = 485
  Caption = 'Manuten'#231#227'o no Cadastro de Imobilizados'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 34
    Width = 753
    inherited lbl_emp: TLabel
      Left = 708
    end
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
  end
  inherited PC1: TPageControl
    Top = 63
    Width = 753
    Height = 384
    ActivePage = tsCad
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 54
        Top = 6
        Width = 44
        Height = 13
        Caption = 'C'#243'digo:'
      end
      object Label2: TLabel
        Left = 60
        Top = 28
        Width = 37
        Height = 13
        Caption = 'Nome:'
      end
      object Label3: TLabel
        Left = 431
        Top = 29
        Width = 40
        Height = 13
        Caption = 'Marca:'
      end
      object Label4: TLabel
        Left = 52
        Top = 50
        Width = 46
        Height = 13
        Caption = 'Modelo:'
      end
      object Label5: TLabel
        Left = 373
        Top = 50
        Width = 99
        Height = 13
        Caption = 'N'#250'mero de S'#233'rie:'
      end
      object Label14: TLabel
        Left = 15
        Top = 178
        Width = 86
        Height = 13
        Caption = '%Deprecia'#231#227'o:'
      end
      object Label15: TLabel
        Left = 173
        Top = 177
        Width = 42
        Height = 13
        Caption = 'Ao m'#234's'
      end
      object Label16: TLabel
        Left = 64
        Top = 196
        Width = 41
        Height = 13
        Caption = 'Status:'
      end
      object Label17: TLabel
        Left = 138
        Top = 197
        Width = 263
        Height = 13
        Caption = '0-Normal 1-Em Manut 2-Vendido 3-Depreciado'
      end
      object Label18: TLabel
        Left = 444
        Top = 197
        Width = 90
        Height = 13
        Caption = 'Data da Venda:'
      end
      object Label19: TLabel
        Left = 633
        Top = 197
        Width = 34
        Height = 13
        Caption = 'Valor:'
      end
      object Label20: TLabel
        Left = 23
        Top = 218
        Width = 79
        Height = 13
        Caption = 'Observa'#231#245'es:'
      end
      object Label22: TLabel
        Left = 52
        Top = 301
        Width = 49
        Height = 13
        Caption = 'Produto:'
      end
      object DBEdit1: TDBEdit
        Left = 104
        Top = 3
        Width = 121
        Height = 19
        Ctl3D = False
        DataField = 'IM1CODIMO'
        DataSource = DM2.Src_Imo01
        ParentCtl3D = False
        TabOrder = 0
        OnExit = DBEdit1Exit
      end
      object DBEdit2: TDBEdit
        Left = 104
        Top = 25
        Width = 266
        Height = 19
        Ctl3D = False
        DataField = 'IM1NOME'
        DataSource = DM2.Src_Imo01
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 475
        Top = 26
        Width = 269
        Height = 19
        Ctl3D = False
        DataField = 'IM1MARCA'
        DataSource = DM2.Src_Imo01
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 104
        Top = 47
        Width = 266
        Height = 19
        Ctl3D = False
        DataField = 'IM1MODELO'
        DataSource = DM2.Src_Imo01
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 475
        Top = 47
        Width = 269
        Height = 19
        Ctl3D = False
        DataField = 'IM1SERIE'
        DataSource = DM2.Src_Imo01
        ParentCtl3D = False
        TabOrder = 4
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 67
        Width = 747
        Height = 105
        Caption = 'Sobre a Aquisi'#231#227'o:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        object Label6: TLabel
          Left = 4
          Top = 18
          Width = 91
          Height = 13
          Caption = 'Data Aquisi'#231#227'o:'
        end
        object Label7: TLabel
          Left = 200
          Top = 18
          Width = 69
          Height = 13
          Caption = 'C'#243'd.Moeda:'
        end
        object Label8: TLabel
          Left = 605
          Top = 17
          Width = 34
          Height = 13
          Caption = 'Valor:'
        end
        object Label9: TLabel
          Left = 38
          Top = 38
          Width = 53
          Height = 13
          Caption = 'Empresa:'
        end
        object Label10: TLabel
          Left = 5
          Top = 59
          Width = 94
          Height = 13
          Caption = 'Pessoa Contato:'
        end
        object Label11: TLabel
          Left = 512
          Top = 59
          Width = 55
          Height = 13
          Caption = 'Telefone:'
        end
        object Label12: TLabel
          Left = 43
          Top = 80
          Width = 53
          Height = 13
          Caption = 'Garantia:'
        end
        object Label13: TLabel
          Left = 160
          Top = 81
          Width = 45
          Height = 13
          Caption = 'M'#234's(es)'
        end
        object db_dtcompra: TDBEdit
          Left = 104
          Top = 15
          Width = 91
          Height = 19
          Ctl3D = False
          DataField = 'datacompra'
          DataSource = DM2.Src_Imo01
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit7: TDBEdit
          Left = 272
          Top = 15
          Width = 56
          Height = 19
          Ctl3D = False
          DataField = 'IM1CODIND'
          DataSource = DM2.Src_Imo01
          ParentCtl3D = False
          TabOrder = 2
          OnExit = DBEdit7Exit
          OnKeyPress = DBEdit7KeyPress
        end
        object DBEdit8: TDBEdit
          Left = 329
          Top = 15
          Width = 269
          Height = 19
          Ctl3D = False
          DataField = 'nomemoe'
          DataSource = DM2.Src_Imo01
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBEdit9: TDBEdit
          Left = 640
          Top = 14
          Width = 91
          Height = 19
          Ctl3D = False
          DataField = 'IM1VALORCPR'
          DataSource = DM2.Src_Imo01
          ParentCtl3D = False
          TabOrder = 4
          OnKeyPress = DBEdit14KeyPress
        end
        object DBEdit10: TDBEdit
          Left = 103
          Top = 36
          Width = 309
          Height = 19
          Ctl3D = False
          DataField = 'IM1LOCAQ'
          DataSource = DM2.Src_Imo01
          ParentCtl3D = False
          TabOrder = 5
        end
        object DBEdit11: TDBEdit
          Left = 103
          Top = 57
          Width = 309
          Height = 19
          Ctl3D = False
          DataField = 'IM1CONTAQ'
          DataSource = DM2.Src_Imo01
          ParentCtl3D = False
          TabOrder = 6
        end
        object DBEdit12: TDBEdit
          Left = 577
          Top = 57
          Width = 153
          Height = 19
          Ctl3D = False
          DataField = 'IM1FONEC1'
          DataSource = DM2.Src_Imo01
          ParentCtl3D = False
          TabOrder = 7
        end
        object DBEdit13: TDBEdit
          Left = 103
          Top = 78
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'IM1GARANTIA'
          DataSource = DM2.Src_Imo01
          ParentCtl3D = False
          TabOrder = 8
        end
        object MDTCOMPRA: TMaskEdit
          Left = 103
          Top = 14
          Width = 92
          Height = 19
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
          Visible = False
        end
      end
      object DBEdit14: TDBEdit
        Left = 108
        Top = 175
        Width = 59
        Height = 19
        Ctl3D = False
        DataField = 'IM1PERCDEP'
        DataSource = DM2.Src_Imo01
        ParentCtl3D = False
        TabOrder = 6
        OnKeyPress = DBEdit14KeyPress
      end
      object DBEdit15: TDBEdit
        Left = 108
        Top = 195
        Width = 21
        Height = 19
        Ctl3D = False
        DataField = 'IM1STATUS'
        DataSource = DM2.Src_Imo01
        ParentCtl3D = False
        TabOrder = 7
      end
      object db_dtvenda: TDBEdit
        Left = 536
        Top = 195
        Width = 83
        Height = 19
        Ctl3D = False
        DataField = 'datavenda'
        DataSource = DM2.Src_Imo01
        ParentCtl3D = False
        TabOrder = 8
      end
      object DBEdit17: TDBEdit
        Left = 667
        Top = 195
        Width = 83
        Height = 19
        Ctl3D = False
        DataField = 'IM1VLRVEND'
        DataSource = DM2.Src_Imo01
        ParentCtl3D = False
        TabOrder = 10
        OnKeyPress = DBEdit14KeyPress
      end
      object DBEdit18: TDBEdit
        Left = 108
        Top = 216
        Width = 412
        Height = 19
        Ctl3D = False
        DataField = 'IM1OBS01'
        DataSource = DM2.Src_Imo01
        ParentCtl3D = False
        TabOrder = 11
      end
      object DBEdit19: TDBEdit
        Left = 108
        Top = 237
        Width = 412
        Height = 19
        Ctl3D = False
        DataField = 'IM1OBS02'
        DataSource = DM2.Src_Imo01
        ParentCtl3D = False
        TabOrder = 12
      end
      object DBEdit20: TDBEdit
        Left = 108
        Top = 258
        Width = 412
        Height = 19
        Ctl3D = False
        DataField = 'IM1OBS03'
        DataSource = DM2.Src_Imo01
        ParentCtl3D = False
        TabOrder = 13
      end
      object DBEdit21: TDBEdit
        Left = 108
        Top = 279
        Width = 412
        Height = 19
        Ctl3D = False
        DataField = 'IM1OBS04'
        DataSource = DM2.Src_Imo01
        ParentCtl3D = False
        TabOrder = 14
      end
      object MDTVDA: TMaskEdit
        Left = 536
        Top = 195
        Width = 84
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 9
        Text = '  /  /    '
        Visible = False
      end
      object GroupBox3: TGroupBox
        Left = 534
        Top = 215
        Width = 203
        Height = 145
        Caption = 'Foto:'
        TabOrder = 15
        Visible = False
        object logosis: TImage
          Left = 2
          Top = 15
          Width = 199
          Height = 99
          Align = alTop
          Stretch = True
        end
        object sbnAdquirir: TSpeedButton
          Left = 3
          Top = 117
          Width = 88
          Height = 25
          Caption = '&Adquirir'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            033333FFFF77777773F330000077777770333777773FFFFFF733077777000000
            03337F3F3F777777733F0797A770003333007F737337773F3377077777778803
            30807F333333337FF73707888887880007707F3FFFF333777F37070000878807
            07807F777733337F7F3707888887880808807F333333337F7F37077777778800
            08807F333FFF337773F7088800088803308073FF777FFF733737300008000033
            33003777737777333377333080333333333333F7373333333333300803333333
            33333773733333333333088033333333333373F7F33333333333308033333333
            3333373733333333333333033333333333333373333333333333}
          NumGlyphs = 2
          OnClick = sbnAdquirirClick
        end
        object SBn_Excluir: TSpeedButton
          Left = 113
          Top = 116
          Width = 88
          Height = 25
          Caption = 'Excluir'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
            33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
            993337777F777F3377F3393999707333993337F77737333337FF993399933333
            399377F3777FF333377F993339903333399377F33737FF33377F993333707333
            399377F333377FF3377F993333101933399377F333777FFF377F993333000993
            399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
            99333773FF777F777733339993707339933333773FF7FFF77333333999999999
            3333333777333777333333333999993333333333377777333333}
          NumGlyphs = 2
          OnClick = SBn_ExcluirClick
        end
      end
      object DBEdit6: TDBEdit
        Left = 108
        Top = 299
        Width = 65
        Height = 19
        Ctl3D = False
        DataField = 'IM1CODPRO'
        DataSource = DM2.Src_Imo01
        ParentCtl3D = False
        TabOrder = 16
        OnExit = DBEdit6Exit
        OnKeyPress = DBEdit6KeyPress
      end
      object DBE_nomepro: TDBEdit
        Left = 174
        Top = 299
        Width = 345
        Height = 19
        Ctl3D = False
        DataField = 'nomepro'
        DataSource = DM2.Src_Imo01
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 17
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 745
        Height = 356
        DataSource = DM2.Src_Imo01
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'IM1CODIMO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IM1NOME'
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IM1OBS01'
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IM1OBS02'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IM1OBS03'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IM1OBS04'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IM1MARCA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IM1MODELO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IM1SERIE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IM1DATAAQ'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IM1CODIND'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IM1VALORCPR'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IM1PERCDEP'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IM1LOCAQ'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IM1CONTAQ'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IM1FONEC1'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IM1STATUS'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IM1DATAVDA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IM1VLRVEND'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomemoe'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IM1GARANTIA'
            Width = 64
            Visible = True
          end>
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'tsRelatorio'
      ImageIndex = 2
      object RLReport1: TRLReport
        Left = 0
        Top = 8
        Width = 1123
        Height = 794
        DataSource = Src_Imob
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        PageSetup.Orientation = poLandscape
        ShowProgress = False
        object RLDetailGrid1: TRLDetailGrid
          Left = 38
          Top = 38
          Width = 1047
          Height = 121
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          ColCount = 3
          ColSpacing = 3.000000000000000000
          BeforePrint = RLDetailGrid1BeforePrint
          object RLPanel2: TRLPanel
            Left = 0
            Top = 0
            Width = 342
            Height = 106
            Align = faTop
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            object foto_imob: TRLImage
              Left = 243
              Top = 1
              Width = 98
              Height = 104
              Align = faRight
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Stretch = True
            end
            object RLPanel1: TRLPanel
              Left = 1
              Top = 1
              Width = 242
              Height = 104
              Align = faClient
              object RLDBText1: TRLDBText
                Left = 0
                Top = 0
                Width = 242
                Height = 16
                Align = faTop
                Alignment = taCenter
                DataField = 'IM1NOME'
                DataSource = Src_Imob
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLDBText3: TRLDBText
                Left = 0
                Top = 16
                Width = 242
                Height = 16
                Align = faTop
                Alignment = taCenter
                DataField = 'IM1MODELO'
                DataSource = Src_Imob
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object RLDBText2: TRLDBText
                Left = 0
                Top = 32
                Width = 242
                Height = 16
                Align = faTop
                Alignment = taCenter
                DataField = 'IM1MARCA'
                DataSource = Src_Imob
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object RLDBText4: TRLDBText
                Left = 0
                Top = 48
                Width = 242
                Height = 16
                Align = faTop
                Alignment = taCenter
                DataField = 'IM1CODIMO'
                DataSource = Src_Imob
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object RLDBBarcode1: TRLDBBarcode
                Left = 0
                Top = 64
                Width = 242
                Height = 40
                Align = faClient
                Alignment = taCenter
                AutoSize = False
                DataField = 'codbarra'
                DataSource = Src_Imob
                Margins.LeftMargin = 1.000000000000000000
                Margins.RightMargin = 1.000000000000000000
              end
            end
          end
        end
      end
    end
    object tsEtiquetas: TTabSheet
      Caption = 'Emiss'#227'o de Etiquetas'
      ImageIndex = 3
      object Label21: TLabel
        Left = 24
        Top = 56
        Width = 70
        Height = 13
        Caption = 'Quantidade:'
      end
      object CB_FILTRO: TCheckBox
        Left = 24
        Top = 24
        Width = 217
        Height = 17
        Caption = 'Imprimir Somente Selecionado'
        TabOrder = 0
      end
      object bbEtiqueta: TBitBtn
        Left = 31
        Top = 166
        Width = 109
        Height = 36
        Hint = 'Click aqui para Emitir Etiqueta'
        Caption = 'Imp Etiqueta'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = bbEtiquetaClick
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
      object QTDETI: TEdit
        Left = 102
        Top = 50
        Width = 52
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        Text = '1'
        OnExit = QTDETIExit
      end
    end
    object tsImagem: TTabSheet
      Caption = 'Imagem'
      ImageIndex = 4
      object GroupBox5: TGroupBox
        Left = 507
        Top = 0
        Width = 238
        Height = 356
        Align = alRight
        Caption = 'Documento Digitalizado:'
        TabOrder = 0
        object DBGrid3: TDBGrid
          Left = 2
          Top = 15
          Width = 234
          Height = 305
          Align = alClient
          DataSource = Src_Dap_imagem
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDblClick = DBGrid3DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'II_OBS'
              Width = 168
              Visible = True
            end>
        end
        object Panel5: TPanel
          Left = 2
          Top = 320
          Width = 234
          Height = 34
          Align = alBottom
          TabOrder = 1
          object sbn_nova: TSpeedButton
            Left = 2
            Top = 0
            Width = 51
            Height = 33
            Caption = 'Novo'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333333FF33333333FF333993333333300033377F3333333777333993333333
              300033F77FFF3333377739999993333333333777777F3333333F399999933333
              33003777777333333377333993333333330033377F3333333377333993333333
              3333333773333333333F333333333333330033333333F33333773333333C3333
              330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
              993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
              333333333337733333FF3333333C333330003333333733333777333333333333
              3000333333333333377733333333333333333333333333333333}
            Layout = blGlyphTop
            NumGlyphs = 2
            OnClick = sbn_novaClick
          end
          object sbn_alterar: TSpeedButton
            Left = 58
            Top = 0
            Width = 60
            Height = 33
            Caption = 'Alterar'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
              000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
              00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
              F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
              0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
              FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
              FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
              0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
              00333377737FFFFF773333303300000003333337337777777333}
            Layout = blGlyphTop
            NumGlyphs = 2
            OnClick = sbn_alterarClick
          end
          object sbnRenomear: TSpeedButton
            Left = 117
            Top = 1
            Width = 60
            Height = 33
            Caption = 'Renomear'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
              00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
              00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
              F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
              F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
              F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
              FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
              0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
              0033333337FFFFFF773333333000000003333333377777777333}
            Layout = blGlyphTop
            NumGlyphs = 2
            OnClick = sbnRenomearClick
          end
          object SpeedButton1: TSpeedButton
            Left = 176
            Top = 1
            Width = 56
            Height = 33
            Caption = 'excluir'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
              33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
              993337777F777F3377F3393999707333993337F77737333337FF993399933333
              399377F3777FF333377F993339903333399377F33737FF33377F993333707333
              399377F333377FF3377F993333101933399377F333777FFF377F993333000993
              399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
              99333773FF777F777733339993707339933333773FF7FFF77333333999999999
              3333333777333777333333333999993333333333377777333333}
            Layout = blGlyphTop
            NumGlyphs = 2
            OnClick = SpeedButton1Click
          end
        end
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 0
    Width = 753
    Height = 34
    Align = alTop
    Caption = ''
    inherited INCLUIR: TBitBtn
      Left = 1
      Top = 7
      Width = 100
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited ALTERAR: TBitBtn
      Left = 100
      Top = 7
      Width = 100
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited EXCLUIR: TBitBtn
      Left = 199
      Top = 7
      Width = 100
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited GRAVAR: TBitBtn
      Left = 298
      Top = 7
      Width = 100
      Height = 26
      Cursor = crHandPoint
      OnClick = GRAVARClick
      Layout = blGlyphLeft
    end
    inherited CANCELAR: TBitBtn
      Left = 397
      Top = 7
      Width = 100
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    object DBNavigator2: TDBNavigator
      Left = 496
      Top = 8
      Width = 184
      Height = 25
      Cursor = crHandPoint
      DataSource = DM2.Src_Imo01
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 5
    end
    object btn_sair: TBitBtn
      Left = 679
      Top = 8
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 6
      OnClick = btn_sairClick
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
  inherited GroupBox2: TGroupBox
    Top = 481
    Width = 761
    Align = alNone
    Visible = False
    inherited DBNavigator1: TDBNavigator
      Top = 14
      Width = 432
      Visible = False
    end
    inherited SAIR: TBitBtn
      Left = 438
      Top = 15
      Width = 110
      Visible = False
    end
  end
  object Src_Imob: TDataSource
    DataSet = Qr_Imo
    Left = 580
    Top = 53
  end
  object Qr_Imo: TQuery
    OnCalcFields = Qr_ImoCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADIMO01')
    Left = 620
    Top = 53
    object Qr_ImoIM1CODEMP: TFloatField
      FieldName = 'IM1CODEMP'
      Origin = 'SG_ASSOC.CADIMO01.IM1CODEMP'
    end
    object Qr_ImoIM1CODIMO: TFloatField
      FieldName = 'IM1CODIMO'
      Origin = 'SG_ASSOC.CADIMO01.IM1CODIMO'
    end
    object Qr_ImoIM1NOME: TStringField
      FieldName = 'IM1NOME'
      Origin = 'SG_ASSOC.CADIMO01.IM1NOME'
      Size = 40
    end
    object Qr_ImoIM1MARCA: TStringField
      FieldName = 'IM1MARCA'
      Origin = 'SG_ASSOC.CADIMO01.IM1MARCA'
      Size = 40
    end
    object Qr_ImoIM1MODELO: TStringField
      FieldName = 'IM1MODELO'
      Origin = 'SG_ASSOC.CADIMO01.IM1MODELO'
      Size = 40
    end
    object Qr_ImoIM1SERIE: TStringField
      FieldName = 'IM1SERIE'
      Origin = 'SG_ASSOC.CADIMO01.IM1SERIE'
      Size = 40
    end
    object Qr_ImoIM1DATAAQ: TDateTimeField
      FieldName = 'IM1DATAAQ'
      Origin = 'SG_ASSOC.CADIMO01.IM1DATAAQ'
    end
    object Qr_ImoIM1CODIND: TFloatField
      FieldName = 'IM1CODIND'
      Origin = 'SG_ASSOC.CADIMO01.IM1CODIND'
    end
    object Qr_ImoIM1GARANTIA: TFloatField
      FieldName = 'IM1GARANTIA'
      Origin = 'SG_ASSOC.CADIMO01.IM1GARANTIA'
    end
    object Qr_ImoIM1VALORCPR: TFloatField
      FieldName = 'IM1VALORCPR'
      Origin = 'SG_ASSOC.CADIMO01.IM1VALORCPR'
    end
    object Qr_ImoIM1PERCDEP: TFloatField
      FieldName = 'IM1PERCDEP'
      Origin = 'SG_ASSOC.CADIMO01.IM1PERCDEP'
    end
    object Qr_ImoIM1LOCAQ: TStringField
      FieldName = 'IM1LOCAQ'
      Origin = 'SG_ASSOC.CADIMO01.IM1LOCAQ'
      Size = 40
    end
    object Qr_ImoIM1CONTAQ: TStringField
      FieldName = 'IM1CONTAQ'
      Origin = 'SG_ASSOC.CADIMO01.IM1CONTAQ'
      Size = 40
    end
    object Qr_ImoIM1FONEC1: TStringField
      FieldName = 'IM1FONEC1'
      Origin = 'SG_ASSOC.CADIMO01.IM1FONEC1'
    end
    object Qr_ImoIM1OBS01: TStringField
      FieldName = 'IM1OBS01'
      Origin = 'SG_ASSOC.CADIMO01.IM1OBS01'
      Size = 60
    end
    object Qr_ImoIM1OBS02: TStringField
      FieldName = 'IM1OBS02'
      Origin = 'SG_ASSOC.CADIMO01.IM1OBS02'
      Size = 60
    end
    object Qr_ImoIM1OBS03: TStringField
      FieldName = 'IM1OBS03'
      Origin = 'SG_ASSOC.CADIMO01.IM1OBS03'
      Size = 60
    end
    object Qr_ImoIM1OBS04: TStringField
      FieldName = 'IM1OBS04'
      Origin = 'SG_ASSOC.CADIMO01.IM1OBS04'
      Size = 60
    end
    object Qr_ImoIM1STATUS: TFloatField
      FieldName = 'IM1STATUS'
      Origin = 'SG_ASSOC.CADIMO01.IM1STATUS'
    end
    object Qr_ImoIM1DATAVDA: TDateTimeField
      FieldName = 'IM1DATAVDA'
      Origin = 'SG_ASSOC.CADIMO01.IM1DATAVDA'
    end
    object Qr_ImoIM1VLRVEND: TFloatField
      FieldName = 'IM1VLRVEND'
      Origin = 'SG_ASSOC.CADIMO01.IM1VLRVEND'
    end
    object Qr_Imocodbarra: TStringField
      FieldKind = fkCalculated
      FieldName = 'codbarra'
      Size = 10
      Calculated = True
    end
    object Qr_ImoIM1FOTO: TBlobField
      FieldName = 'IM1FOTO'
      Origin = 'SG_ASSOC.CADIMO01.IM1FOTO'
      Size = 1
    end
    object Qr_ImoIM1CODPRO: TStringField
      FieldName = 'IM1CODPRO'
      Origin = 'SG_ASSOC.CADIMO01.IM1CODPRO'
    end
  end
  object opd1: TOpenPictureDialog
    DefaultExt = '*.JPG'
    FileName = 
      'C:\Arquivos de programas\Arquivos comuns\Microsoft Shared\Papel ' +
      'de carta\Plano de fundo Milho.jpg'
    Filter = 'All (*.jpeg; *.jpg)|*.JPEG;*.JPG'
    Left = 360
    Top = 16
  end
  object Src_Imo_Fig: TDataSource
    DataSet = DM2.Tb_Imo01
    OnDataChange = Src_Imo_FigDataChange
    Left = 464
    Top = 56
  end
  object Tb_Imo_imagem: TADOQuery
    Connection = DM1_ADO.ADOConnection1
    Parameters = <
      item
        Name = 'ROWID'
        DataType = ftString
        Size = -1
        Value = ''
      end>
    SQL.Strings = (
      'Select * from CADIMO01_IMAGEM'
      ' where  II_ROWID=:ROWID'
      ' order by II_SEQ '
      '')
    Left = 208
    Top = 167
    object Tb_Imo_imagemII_ROWID: TStringField
      FieldName = 'II_ROWID'
      Size = 50
    end
    object Tb_Imo_imagemII_SEQ: TFloatField
      FieldName = 'II_SEQ'
    end
    object Tb_Imo_imagemII_OBS: TStringField
      DisplayLabel = 'Nome da Imagem'
      FieldName = 'II_OBS'
      Size = 150
    end
    object Tb_Imo_imagemII_IMAGEM: TBlobField
      FieldName = 'II_IMAGEM'
    end
    object Tb_Imo_imagemII_NOMEORI: TStringField
      FieldName = 'II_NOMEORI'
      Size = 254
    end
  end
  object Src_Dap_imagem: TDataSource
    DataSet = Tb_Imo_imagem
    Left = 244
    Top = 168
  end
end

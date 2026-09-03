inherited Frm_MRECF: TFrm_MRECF
  Left = 73
  Top = 115
  Width = 798
  Height = 488
  Caption = 'Relat'#243'rio das Redu'#231#245'es Z'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 782
    inherited lbl_emp: TLabel
      Left = 737
    end
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      OnExit = CAMPOExit
      Items.Strings = (
        'Data'
        'Impressora')
    end
    inherited Edit1: TMaskEdit
      Width = 180
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      Text = '  /  /    '
    end
  end
  inherited PC1: TPageControl
    Width = 782
    Height = 334
    ActivePage = tsRedZxCADNS
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 11
        Width = 143
        Height = 13
        Caption = 'C'#243'digo da Impressora.....'
      end
      object Label2: TLabel
        Left = 8
        Top = 31
        Width = 144
        Height = 13
        Caption = 'Data.............................'
      end
      object Label3: TLabel
        Left = 9
        Top = 51
        Width = 145
        Height = 13
        Caption = 'Contador de Redu'#231#227'o.....'
      end
      object Label4: TLabel
        Left = 9
        Top = 70
        Width = 137
        Height = 13
        Caption = 'Cont.Opera'#231#227'o Inicio....'
      end
      object Label5: TLabel
        Left = 11
        Top = 112
        Width = 134
        Height = 13
        Caption = 'Venda Bruta do dia .....'
      end
      object Label6: TLabel
        Left = 523
        Top = 31
        Width = 137
        Height = 13
        Caption = 'Valor Venda L'#237'quida.....'
      end
      object Label7: TLabel
        Left = 11
        Top = 133
        Width = 141
        Height = 13
        Caption = 'Vendas Canceladas.......'
      end
      object Label8: TLabel
        Left = 258
        Top = 30
        Width = 137
        Height = 13
        Caption = 'Acr'#233'scimos..................'
      end
      object Label9: TLabel
        Left = 525
        Top = 51
        Width = 137
        Height = 13
        Caption = 'Descontos...................'
      end
      object Label10: TLabel
        Left = 258
        Top = 51
        Width = 138
        Height = 13
        Caption = 'Valor do ISSQN............'
      end
      object Label11: TLabel
        Left = 524
        Top = 72
        Width = 142
        Height = 13
        Caption = 'Isentas.........................'
      end
      object Label12: TLabel
        Left = 259
        Top = 72
        Width = 137
        Height = 13
        Caption = 'N'#227'o Incidente..............'
      end
      object Label13: TLabel
        Left = 525
        Top = 93
        Width = 137
        Height = 13
        Caption = 'Substiui'#231#227'o Tribut'#225'ria...'
      end
      object Label14: TLabel
        Left = 258
        Top = 113
        Width = 138
        Height = 13
        Caption = 'Modelo do documento...'
      end
      object Label15: TLabel
        Left = 260
        Top = 132
        Width = 141
        Height = 13
        Caption = 'Cont.Opera'#231#227'o Final......'
      end
      object Label16: TLabel
        Left = 9
        Top = 91
        Width = 140
        Height = 13
        Caption = 'Contador de Reinicio.....'
      end
      object Label17: TLabel
        Left = 258
        Top = 90
        Width = 135
        Height = 13
        Caption = 'Vda Bruta Acumulada...'
      end
      object Label18: TLabel
        Left = 525
        Top = 114
        Width = 134
        Height = 13
        Caption = 'Vda.Liq.Acumulada......'
      end
      object DBEdit1: TDBEdit
        Left = 144
        Top = 6
        Width = 53
        Height = 19
        Ctl3D = False
        DataField = 'CMCODIMP'
        DataSource = DM1.Src_MI01
        ParentCtl3D = False
        TabOrder = 0
        OnExit = DBEdit1Exit
      end
      object DBEdit2: TDBEdit
        Left = 196
        Top = 6
        Width = 296
        Height = 19
        TabStop = False
        Color = 16777124
        Ctl3D = False
        DataField = 'nomeimp'
        DataSource = DM1.Src_MI01
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 145
        Top = 26
        Width = 86
        Height = 19
        Ctl3D = False
        DataField = 'CMDATA'
        DataSource = DM1.Src_MI01
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 146
        Top = 46
        Width = 52
        Height = 19
        Ctl3D = False
        DataField = 'CMCONRED'
        DataSource = DM1.Src_MI01
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 146
        Top = 67
        Width = 52
        Height = 19
        Ctl3D = False
        DataField = 'CMCOO'
        DataSource = DM1.Src_MI01
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 146
        Top = 108
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'CMVDABRUT'
        DataSource = DM1.Src_MI01
        ParentCtl3D = False
        TabOrder = 8
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit7: TDBEdit
        Left = 658
        Top = 27
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'CMVDALIQ'
        DataSource = DM1.Src_MI01
        ParentCtl3D = False
        TabOrder = 9
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit8: TDBEdit
        Left = 146
        Top = 129
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'CMCUPCAN'
        DataSource = DM1.Src_MI01
        ParentCtl3D = False
        TabOrder = 10
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit9: TDBEdit
        Left = 393
        Top = 26
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'CMACRECUP'
        DataSource = DM1.Src_MI01
        ParentCtl3D = False
        TabOrder = 11
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit10: TDBEdit
        Left = 660
        Top = 47
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'CMDESCUP'
        DataSource = DM1.Src_MI01
        ParentCtl3D = False
        TabOrder = 12
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit11: TDBEdit
        Left = 393
        Top = 47
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'CMISSCUP'
        DataSource = DM1.Src_MI01
        ParentCtl3D = False
        TabOrder = 13
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit12: TDBEdit
        Left = 659
        Top = 68
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'CMISENTAS'
        DataSource = DM1.Src_MI01
        ParentCtl3D = False
        TabOrder = 14
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit13: TDBEdit
        Left = 393
        Top = 68
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'CMNAOINC'
        DataSource = DM1.Src_MI01
        ParentCtl3D = False
        TabOrder = 15
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit14: TDBEdit
        Left = 660
        Top = 89
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'CMSUBTRI'
        DataSource = DM1.Src_MI01
        ParentCtl3D = False
        TabOrder = 16
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit15: TDBEdit
        Left = 393
        Top = 109
        Width = 52
        Height = 19
        Ctl3D = False
        DataField = 'CMMODDOC'
        DataSource = DM1.Src_MI01
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBEdit16: TDBEdit
        Left = 393
        Top = 129
        Width = 52
        Height = 19
        Ctl3D = False
        DataField = 'CMCOO_FINAL'
        DataSource = DM1.Src_MI01
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBEdit17: TDBEdit
        Left = 146
        Top = 88
        Width = 52
        Height = 19
        Ctl3D = False
        DataField = 'CMCRO'
        DataSource = DM1.Src_MI01
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBEdit18: TDBEdit
        Left = 393
        Top = 89
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'CMVDABACUM'
        DataSource = DM1.Src_MI01
        ParentCtl3D = False
        TabOrder = 17
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit19: TDBEdit
        Left = 660
        Top = 110
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'CMVDALACUM'
        DataSource = DM1.Src_MI01
        ParentCtl3D = False
        TabOrder = 18
        OnKeyPress = DBEdit6KeyPress
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 171
        Width = 774
        Height = 135
        Align = alBottom
        Caption = 'Totais por Al'#237'quotas:'
        TabOrder = 19
        object DBNavigator2: TDBNavigator
          Left = 2
          Top = 108
          Width = 770
          Height = 25
          DataSource = DM1.Src_MI02
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Align = alBottom
          TabOrder = 0
        end
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 770
          Height = 93
          Align = alClient
          DataSource = DM1.Src_MI02
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnColExit = DBGrid2ColExit
          OnKeyPress = DBGrid2KeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'CM2ALIQ'
              Width = 188
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CM2VALOR'
              Width = 170
              Visible = True
            end>
        end
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 774
        Height = 306
        DataSource = DM1.Src_MI01
        Columns = <
          item
            Expanded = False
            FieldName = 'CMCODIMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMCODEMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMDATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMCONRED'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMCOO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMVDABRUT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMVDALIQ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMCUPCAN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMACRECUP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMDESCUP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMISSCUP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMISENTAS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMNAOINC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMSUBTRI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomeimp'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMORDEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMMODDOC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMSERIE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMCOO_FINAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMCRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMVDABACUM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMVDALACUM'
            Visible = True
          end>
      end
    end
    object tsRedZxCADNS: TTabSheet
      Caption = 'Verificar Redu'#231#227'o por Intervalo'
      ImageIndex = 2
      object Label19: TLabel
        Left = 8
        Top = 16
        Width = 70
        Height = 13
        Caption = 'Data Inicial:'
      end
      object Label20: TLabel
        Left = 184
        Top = 16
        Width = 94
        Height = 13
        Caption = 'Data Data Final:'
      end
      object edt_dtini: TMaskEdit
        Left = 82
        Top = 12
        Width = 92
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 0
        Text = '  /  /    '
        OnExit = edt_dtiniExit
      end
      object edt_dtfin: TMaskEdit
        Left = 281
        Top = 12
        Width = 92
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 1
        Text = '  /  /    '
        OnExit = edt_dtfinExit
      end
      object bbComparar: TBitBtn
        Left = 385
        Top = 9
        Width = 364
        Height = 22
        Caption = 'Comparar Mapa x Notas'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = bbCompararClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333FFFFFFFFF333333300000000
          0333333777777777F33333330888888803333337FFFFFFF7F333333307777777
          0333333777777777F33333330FFFFFFF03333337F3F3FFF7F33333330F9F000F
          03333337F7377737F33333330FFFFFFF03333337F3333337F33333330FFFFFFF
          03333337F3FFFFF7F33333330F40004F03333337F77777F7F33333330F00000F
          03333337F7F337F7F33333330F00000F03333337F7FFF7F7F33333330F40004F
          03333337F7777737F33333330FFFFFFF03333337FFFFFFF7F333333300000000
          0333333777777777333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object gb_resumo: TGroupBox
        Left = 0
        Top = 45
        Width = 774
        Height = 261
        Align = alBottom
        Caption = 'Resumo:'
        TabOrder = 3
        object DBGrid__ecfxcadns: TDBGrid
          Left = 2
          Top = 15
          Width = 770
          Height = 244
          Align = alClient
          DataSource = Src__ecfxcadns
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = DBGrid__ecfxcadnsDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'DATAREDUZ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dif_totsubstTrib'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dif_tottrib'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dif_totvda_liq'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dif_totvda_canc'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dif_totvda_bruta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dif_totacres'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dif_totdes'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dif_totissqn'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dif_totisentas'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dif_totNaoInc'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ecf_totvda_bruta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ecf_totvda_liq'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ecf_totvda_canc'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ecf_totacres'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ecf_totdes'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ecf_totissqn'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ecf_totisentas'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ecf_totNaoInc'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ecf_totsubstTrib'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ecf_tottrib'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ns_totvda_bruta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ns_totvda_liq'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ns_totvda_canc'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ns_totacres'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ns_totdes'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ns_totissqn'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ns_totisentas'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ns_totNaoInc'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ns_totsubstTrib'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ns_tottrib'
              Visible = True
            end>
        end
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 363
    Width = 782
    Height = 39
    inherited INCLUIR: TBitBtn
      Width = 75
      Height = 25
      Layout = blGlyphLeft
    end
    inherited ALTERAR: TBitBtn
      Left = 79
      Width = 75
      Height = 25
      Layout = blGlyphLeft
    end
    inherited EXCLUIR: TBitBtn
      Left = 153
      Width = 75
      Height = 25
      Layout = blGlyphLeft
    end
    inherited GRAVAR: TBitBtn
      Left = 228
      Width = 75
      Height = 25
      OnClick = GRAVARClick
      Layout = blGlyphLeft
    end
    inherited CANCELAR: TBitBtn
      Left = 304
      Width = 75
      Height = 25
      Layout = blGlyphLeft
    end
    object IMPRIMIR: TBitBtn
      Left = 379
      Top = 15
      Width = 197
      Height = 23
      Hint = 'Cancela a opera'#231#227'o atual'
      Caption = '&Imprimir Mapa Resumo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = IMPRIMIRClick
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
    object bbCompararMapaXNotas: TBitBtn
      Left = 577
      Top = 17
      Width = 197
      Height = 22
      Caption = 'Comparar Mapa x Notas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = bbCompararMapaXNotasClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333FFFFFFFFF333333300000000
        0333333777777777F33333330888888803333337FFFFFFF7F333333307777777
        0333333777777777F33333330FFFFFFF03333337F3F3FFF7F33333330F9F000F
        03333337F7377737F33333330FFFFFFF03333337F3333337F33333330FFFFFFF
        03333337F3FFFFF7F33333330F40004F03333337F77777F7F33333330F00000F
        03333337F7F337F7F33333330F00000F03333337F7FFF7F7F33333330F40004F
        03333337F7777737F33333330FFFFFFF03333337FFFFFFF7F333333300000000
        0333333777777777333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 402
    Width = 782
    Height = 48
    object Label21: TLabel [0]
      Left = 530
      Top = 21
      Width = 75
      Height = 13
      Caption = 'Retirar 5405:'
    end
    inherited DBNavigator1: TDBNavigator
      Height = 22
      DataSource = DM1.Src_MI01
    end
    inherited SAIR: TBitBtn
      Height = 22
      Layout = blGlyphLeft
    end
    object CAPTURAR: TBitBtn
      Left = 317
      Top = 17
      Width = 200
      Height = 22
      Hint = 'Cancela a opera'#231#227'o atual'
      Caption = '&Capturar Redu'#231#245'es Anteriores'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = CAPTURARClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000C6C6C6000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000C6C6C6000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
        0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object edt_ret5405: TCurrencyEdit
      Left = 608
      Top = 16
      Width = 73
      Height = 21
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 3
    end
    object bbRetirar: TBitBtn
      Left = 690
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Retirar'
      TabOrder = 4
      OnClick = bbRetirarClick
    end
  end
  object Src__ecfxcadns: TDataSource
    DataSet = mem_ecfxcadns
    Left = 452
    Top = 117
  end
  object mem_ecfxcadns: TRxMemoryData
    FieldDefs = <
      item
        Name = 'ecf_totvda_bruta'
        DataType = ftFloat
      end
      item
        Name = 'ecf_totvda_liq'
        DataType = ftFloat
      end
      item
        Name = 'ecf_totvda_canc'
        DataType = ftFloat
      end
      item
        Name = 'ecf_totacres'
        DataType = ftFloat
      end
      item
        Name = 'ecf_totdes'
        DataType = ftFloat
      end
      item
        Name = 'ecf_totissqn'
        DataType = ftFloat
      end
      item
        Name = 'ecf_totisentas'
        DataType = ftFloat
      end
      item
        Name = 'ecf_totNaoInc'
        DataType = ftFloat
      end
      item
        Name = 'ecf_totsubstTrib'
        DataType = ftFloat
      end
      item
        Name = 'ecf_tottrib'
        DataType = ftFloat
      end
      item
        Name = 'ns_totvda_bruta'
        DataType = ftFloat
      end
      item
        Name = 'ns_totvda_liq'
        DataType = ftFloat
      end
      item
        Name = 'ns_totvda_canc'
        DataType = ftFloat
      end
      item
        Name = 'ns_totacres'
        DataType = ftFloat
      end
      item
        Name = 'ns_totdes'
        DataType = ftFloat
      end
      item
        Name = 'ns_totissqn'
        DataType = ftFloat
      end
      item
        Name = 'ns_totisentas'
        DataType = ftFloat
      end
      item
        Name = 'ns_totNaoInc'
        DataType = ftFloat
      end
      item
        Name = 'ns_totsubstTrib'
        DataType = ftFloat
      end
      item
        Name = 'ns_tottrib'
        DataType = ftFloat
      end
      item
        Name = 'dif_totvda_bruta'
        DataType = ftFloat
      end
      item
        Name = 'dif_totvda_liq'
        DataType = ftFloat
      end
      item
        Name = 'dif_totvda_canc'
        DataType = ftFloat
      end
      item
        Name = 'dif_totacres'
        DataType = ftFloat
      end
      item
        Name = 'dif_totdes'
        DataType = ftFloat
      end
      item
        Name = 'dif_totissqn'
        DataType = ftFloat
      end
      item
        Name = 'dif_totisentas'
        DataType = ftFloat
      end
      item
        Name = 'dif_totNaoInc'
        DataType = ftFloat
      end
      item
        Name = 'dif_totsubstTrib'
        DataType = ftFloat
      end
      item
        Name = 'dif_tottrib'
        DataType = ftFloat
      end
      item
        Name = 'DATAREDUZ'
        DataType = ftDateTime
      end>
    Left = 492
    Top = 125
    object mem_ecfxcadnsecf_totvda_bruta: TFloatField
      DisplayLabel = 'Venda Bruta'
      FieldName = 'ecf_totvda_bruta'
    end
    object mem_ecfxcadnsecf_totvda_liq: TFloatField
      DisplayLabel = 'Venda Liquida'
      FieldName = 'ecf_totvda_liq'
    end
    object mem_ecfxcadnsecf_totvda_canc: TFloatField
      DisplayLabel = 'Venda Cancelada'
      FieldName = 'ecf_totvda_canc'
    end
    object mem_ecfxcadnsecf_totacres: TFloatField
      DisplayLabel = 'Acrescimos'
      FieldName = 'ecf_totacres'
    end
    object mem_ecfxcadnsecf_totdes: TFloatField
      DisplayLabel = 'Descontos'
      FieldName = 'ecf_totdes'
    end
    object mem_ecfxcadnsecf_totissqn: TFloatField
      DisplayLabel = 'Valor ISSQN'
      FieldName = 'ecf_totissqn'
    end
    object mem_ecfxcadnsecf_totisentas: TFloatField
      DisplayLabel = 'Valor Isentas'
      FieldName = 'ecf_totisentas'
    end
    object mem_ecfxcadnsecf_totNaoInc: TFloatField
      DisplayLabel = 'Total Nao Inc'
      FieldName = 'ecf_totNaoInc'
    end
    object mem_ecfxcadnsecf_totsubstTrib: TFloatField
      DisplayLabel = 'Total Sub.Trib'
      FieldName = 'ecf_totsubstTrib'
    end
    object mem_ecfxcadnsecf_tottrib: TFloatField
      DisplayLabel = 'Total Trib'
      FieldName = 'ecf_tottrib'
    end
    object mem_ecfxcadnsns_totvda_bruta: TFloatField
      DisplayLabel = 'Venda bruta'
      FieldName = 'ns_totvda_bruta'
    end
    object mem_ecfxcadnsns_totvda_liq: TFloatField
      DisplayLabel = 'Venda Liquida'
      FieldName = 'ns_totvda_liq'
    end
    object mem_ecfxcadnsns_totvda_canc: TFloatField
      DisplayLabel = 'Venda Cancelada'
      FieldName = 'ns_totvda_canc'
    end
    object mem_ecfxcadnsns_totacres: TFloatField
      DisplayLabel = 'Total Acres'
      FieldName = 'ns_totacres'
    end
    object mem_ecfxcadnsns_totdes: TFloatField
      DisplayLabel = 'Total Desc.'
      FieldName = 'ns_totdes'
    end
    object mem_ecfxcadnsns_totissqn: TFloatField
      DisplayLabel = 'Total ISSQN'
      FieldName = 'ns_totissqn'
    end
    object mem_ecfxcadnsns_totisentas: TFloatField
      DisplayLabel = 'Total Isentas'
      FieldName = 'ns_totisentas'
    end
    object mem_ecfxcadnsns_totNaoInc: TFloatField
      DisplayLabel = 'Total N'#227'o Inc.'
      FieldName = 'ns_totNaoInc'
    end
    object mem_ecfxcadnsns_totsubstTrib: TFloatField
      DisplayLabel = 'Total Sub.Trib'
      FieldName = 'ns_totsubstTrib'
    end
    object mem_ecfxcadnsns_tottrib: TFloatField
      DisplayLabel = 'Total Trib'
      FieldName = 'ns_tottrib'
    end
    object mem_ecfxcadnsdif_totvda_bruta: TFloatField
      DisplayLabel = 'Venda Bruta'
      FieldName = 'dif_totvda_bruta'
    end
    object mem_ecfxcadnsdif_totvda_liq: TFloatField
      DisplayLabel = 'Venda Liquida'
      FieldName = 'dif_totvda_liq'
    end
    object mem_ecfxcadnsdif_totvda_canc: TFloatField
      DisplayLabel = 'Venda Canc'
      FieldName = 'dif_totvda_canc'
    end
    object mem_ecfxcadnsdif_totacres: TFloatField
      DisplayLabel = 'Total Acres'
      FieldName = 'dif_totacres'
    end
    object mem_ecfxcadnsdif_totdes: TFloatField
      DisplayLabel = 'Total Desc.'
      FieldName = 'dif_totdes'
    end
    object mem_ecfxcadnsdif_totissqn: TFloatField
      DisplayLabel = 'Total ISSQN'
      FieldName = 'dif_totissqn'
    end
    object mem_ecfxcadnsdif_totisentas: TFloatField
      DisplayLabel = 'Total Isentas'
      FieldName = 'dif_totisentas'
    end
    object mem_ecfxcadnsdif_totNaoInc: TFloatField
      DisplayLabel = 'Total N'#227'o Inc.'
      FieldName = 'dif_totNaoInc'
    end
    object mem_ecfxcadnsdif_totsubstTrib: TFloatField
      DisplayLabel = 'Total Sub.Trib.'
      FieldName = 'dif_totsubstTrib'
    end
    object mem_ecfxcadnsdif_tottrib: TFloatField
      DisplayLabel = 'Total Tributado'
      FieldName = 'dif_tottrib'
    end
    object mem_ecfxcadnsDATAREDUZ: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATAREDUZ'
    end
  end
  object U_Ped02_Isentas: TUpdateSQL
    ModifySQL.Strings = (
      'update CADP02'
      'set'
      '  P2CODEMP = :P2CODEMP,'
      '  P2LOTSEQ = :P2LOTSEQ,'
      '  P2CHAVE = :P2CHAVE,'
      '  P2ORDEM = :P2ORDEM,'
      '  P2ITEM = :P2ITEM,'
      '  P2CODPRO = :P2CODPRO,'
      '  P2CODANT = :P2CODANT,'
      '  P2CODAGRU = :P2CODAGRU,'
      '  P2CONSIG = :P2CONSIG,'
      '  P2QTD = :P2QTD,'
      '  P2QTD_ATEN = :P2QTD_ATEN,'
      '  P2QTDDEV = :P2QTDDEV,'
      '  P2QTD_ENTREGUE = :P2QTD_ENTREGUE,'
      '  P2QTD_ENTREGANDO = :P2QTD_ENTREGANDO,'
      '  P2AMBIENTE = :P2AMBIENTE,'
      '  P2LOTE = :P2LOTE,'
      '  P2PROMOCAO = :P2PROMOCAO,'
      '  P2DTVCTO = :P2DTVCTO,'
      '  P2DESC1 = :P2DESC1,'
      '  P2DESC2 = :P2DESC2,'
      '  P2DESC3 = :P2DESC3,'
      '  P2VALDES = :P2VALDES,'
      '  P2PRECO = :P2PRECO,'
      '  P2SIT = :P2SIT,'
      '  P2CODFAB = :P2CODFAB,'
      '  P2CODGRU = :P2CODGRU,'
      '  P2BASEN = :P2BASEN,'
      '  P2ICMSN = :P2ICMSN,'
      '  P2REPAS = :P2REPAS,'
      '  P2BASER = :P2BASER,'
      '  P2ICMSR = :P2ICMSR,'
      '  P2LISTA = :P2LISTA,'
      '  P2STATUS = :P2STATUS,'
      '  P2PCOTAB = :P2PCOTAB,'
      '  P2PCOFPG = :P2PCOFPG,'
      '  P2UCPR = :P2UCPR,'
      '  P2PCOCUS = :P2PCOCUS,'
      '  P2PCOMAX = :P2PCOMAX,'
      '  P2TOTDES = :P2TOTDES,'
      '  P2DESCRAT = :P2DESCRAT,'
      '  P2ACRERAT = :P2ACRERAT,'
      '  P2TABELA = :P2TABELA,'
      '  P2ALIPI = :P2ALIPI,'
      '  P2VALIPI = :P2VALIPI,'
      '  P2BCINR = :P2BCINR,'
      '  P2ICMSNR = :P2ICMSNR,'
      '  P2ISENTAS = :P2ISENTAS,'
      '  P2TOTOUT = :P2TOTOUT,'
      '  P2ALIQ = :P2ALIQ,'
      '  P2ALIQNR = :P2ALIQNR,'
      '  P2PCOMIS = :P2PCOMIS,'
      '  P2VCOMIS = :P2VCOMIS,'
      '  P2PCOMIS_EXTRA = :P2PCOMIS_EXTRA,'
      '  P2VCOMIS_EXTRA = :P2VCOMIS_EXTRA,'
      '  P2PCOM02 = :P2PCOM02,'
      '  P2VCOM02 = :P2VCOM02,'
      '  P2VCOM03 = :P2VCOM03,'
      '  P2PCOM03 = :P2PCOM03,'
      '  P2VCOM04 = :P2VCOM04,'
      '  P2DESCM = :P2DESCM,'
      '  P2CFO = :P2CFO,'
      '  P2CFOSUBECF = :P2CFOSUBECF,'
      '  P2SEMCOM = :P2SEMCOM,'
      '  P2TOTLIQ = :P2TOTLIQ,'
      '  P2PDESCF = :P2PDESCF,'
      '  P2VDESCF = :P2VDESCF,'
      '  P2ACRECONV = :P2ACRECONV,'
      '  P2ACREGER = :P2ACREGER,'
      '  P2STATUS_PED1 = :P2STATUS_PED1,'
      '  P2TIPO = :P2TIPO,'
      '  P2ST_IVA = :P2ST_IVA,'
      '  P2ST_REDUT = :P2ST_REDUT,'
      '  P2ST_ICMCRED = :P2ST_ICMCRED,'
      '  P2ST_ICMDEB = :P2ST_ICMDEB,'
      '  P2REDUTICM = :P2REDUTICM,'
      '  P2PRAZO = :P2PRAZO,'
      '  P2ALPIS = :P2ALPIS,'
      '  P2VALPIS = :P2VALPIS,'
      '  P2ALCOFINS = :P2ALCOFINS,'
      '  P2COFINS = :P2COFINS,'
      '  P2CODVEN = :P2CODVEN,'
      '  P2COMPLEMENTO = :P2COMPLEMENTO,'
      '  P2TIPO_PCO = :P2TIPO_PCO,'
      '  P2CONS_PROPRIO = :P2CONS_PROPRIO,'
      '  P2CODPRO_ORI = :P2CODPRO_ORI,'
      '  P2NOMPRO_ORI = :P2NOMPRO_ORI,'
      '  P2CHAVE_NIVEL = :P2CHAVE_NIVEL,'
      '  P2PCRED_SN = :P2PCRED_SN,'
      '  P2PCREDSN = :P2PCREDSN'
      'where'
      '  P2CODEMP = :OLD_P2CODEMP and'
      '  P2LOTSEQ = :OLD_P2LOTSEQ and'
      '  P2CHAVE = :OLD_P2CHAVE and'
      '  P2ORDEM = :OLD_P2ORDEM and'
      '  P2ITEM = :OLD_P2ITEM')
    InsertSQL.Strings = (
      'insert into CADP02'
      
        '  (P2CODEMP, P2LOTSEQ, P2CHAVE, P2ORDEM, P2ITEM, P2CODPRO, P2COD' +
        'ANT, P2CODAGRU, '
      
        '   P2CONSIG, P2QTD, P2QTD_ATEN, P2QTDDEV, P2QTD_ENTREGUE, P2QTD_' +
        'ENTREGANDO, '
      
        '   P2AMBIENTE, P2LOTE, P2PROMOCAO, P2DTVCTO, P2DESC1, P2DESC2, P' +
        '2DESC3, '
      
        '   P2VALDES, P2PRECO, P2SIT, P2CODFAB, P2CODGRU, P2BASEN, P2ICMS' +
        'N, P2REPAS, '
      
        '   P2BASER, P2ICMSR, P2LISTA, P2STATUS, P2PCOTAB, P2PCOFPG, P2UC' +
        'PR, P2PCOCUS, '
      
        '   P2PCOMAX, P2TOTDES, P2DESCRAT, P2ACRERAT, P2TABELA, P2ALIPI, ' +
        'P2VALIPI, '
      
        '   P2BCINR, P2ICMSNR, P2ISENTAS, P2TOTOUT, P2ALIQ, P2ALIQNR, P2P' +
        'COMIS, '
      
        '   P2VCOMIS, P2PCOMIS_EXTRA, P2VCOMIS_EXTRA, P2PCOM02, P2VCOM02,' +
        ' P2VCOM03, '
      
        '   P2PCOM03, P2VCOM04, P2DESCM, P2CFO, P2CFOSUBECF, P2SEMCOM, P2' +
        'TOTLIQ, '
      
        '   P2PDESCF, P2VDESCF, P2ACRECONV, P2ACREGER, P2STATUS_PED1, P2T' +
        'IPO, P2ST_IVA, '
      
        '   P2ST_REDUT, P2ST_ICMCRED, P2ST_ICMDEB, P2REDUTICM, P2PRAZO, P' +
        '2ALPIS, '
      
        '   P2VALPIS, P2ALCOFINS, P2COFINS, P2CODVEN, P2COMPLEMENTO, P2TI' +
        'PO_PCO, '
      
        '   P2CONS_PROPRIO, P2CODPRO_ORI, P2NOMPRO_ORI, P2CHAVE_NIVEL, P2' +
        'PCRED_SN, '
      '   P2PCREDSN)'
      'values'
      
        '  (:P2CODEMP, :P2LOTSEQ, :P2CHAVE, :P2ORDEM, :P2ITEM, :P2CODPRO,' +
        ' :P2CODANT, '
      
        '   :P2CODAGRU, :P2CONSIG, :P2QTD, :P2QTD_ATEN, :P2QTDDEV, :P2QTD' +
        '_ENTREGUE, '
      
        '   :P2QTD_ENTREGANDO, :P2AMBIENTE, :P2LOTE, :P2PROMOCAO, :P2DTVC' +
        'TO, :P2DESC1, '
      
        '   :P2DESC2, :P2DESC3, :P2VALDES, :P2PRECO, :P2SIT, :P2CODFAB, :' +
        'P2CODGRU, '
      
        '   :P2BASEN, :P2ICMSN, :P2REPAS, :P2BASER, :P2ICMSR, :P2LISTA, :' +
        'P2STATUS, '
      
        '   :P2PCOTAB, :P2PCOFPG, :P2UCPR, :P2PCOCUS, :P2PCOMAX, :P2TOTDE' +
        'S, :P2DESCRAT, '
      
        '   :P2ACRERAT, :P2TABELA, :P2ALIPI, :P2VALIPI, :P2BCINR, :P2ICMS' +
        'NR, :P2ISENTAS, '
      
        '   :P2TOTOUT, :P2ALIQ, :P2ALIQNR, :P2PCOMIS, :P2VCOMIS, :P2PCOMI' +
        'S_EXTRA, '
      
        '   :P2VCOMIS_EXTRA, :P2PCOM02, :P2VCOM02, :P2VCOM03, :P2PCOM03, ' +
        ':P2VCOM04, '
      
        '   :P2DESCM, :P2CFO, :P2CFOSUBECF, :P2SEMCOM, :P2TOTLIQ, :P2PDES' +
        'CF, :P2VDESCF, '
      
        '   :P2ACRECONV, :P2ACREGER, :P2STATUS_PED1, :P2TIPO, :P2ST_IVA, ' +
        ':P2ST_REDUT, '
      
        '   :P2ST_ICMCRED, :P2ST_ICMDEB, :P2REDUTICM, :P2PRAZO, :P2ALPIS,' +
        ' :P2VALPIS, '
      
        '   :P2ALCOFINS, :P2COFINS, :P2CODVEN, :P2COMPLEMENTO, :P2TIPO_PC' +
        'O, :P2CONS_PROPRIO, '
      
        '   :P2CODPRO_ORI, :P2NOMPRO_ORI, :P2CHAVE_NIVEL, :P2PCRED_SN, :P' +
        '2PCREDSN)')
    DeleteSQL.Strings = (
      'delete from CADP02'
      'where'
      '  P2CODEMP = :OLD_P2CODEMP and'
      '  P2LOTSEQ = :OLD_P2LOTSEQ and'
      '  P2CHAVE = :OLD_P2CHAVE and'
      '  P2ORDEM = :OLD_P2ORDEM and'
      '  P2ITEM = :OLD_P2ITEM')
    Left = 588
    Top = 189
  end
  object Tb_Ped02_Isentas: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP02'
      'where  P2CODEMP=:CODEMP'
      'and P2LOTSEQ=:LOTSEQ'
      'and P2CHAVE=:CHAVE'
      'and P2ORDEM=:ORDEM'
      'and  ('
      '(substr(P2SIT,2,1)='#39'4'#39')'
      'or (P2BASEN=0) and (SUBSTR(P2SIT,2,1)='#39'0'#39'))')
    UpdateObject = U_Ped02_Isentas
    Left = 540
    Top = 189
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'LOTSEQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'ORDEM'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_Ped02_IsentasP2CODEMP: TFloatField
      FieldName = 'P2CODEMP'
      Origin = 'SG_ASSOC.CADP02.P2CODEMP'
    end
    object Tb_Ped02_IsentasP2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
      Origin = 'SG_ASSOC.CADP02.P2LOTSEQ'
    end
    object Tb_Ped02_IsentasP2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE'
    end
    object Tb_Ped02_IsentasP2ORDEM: TFloatField
      FieldName = 'P2ORDEM'
      Origin = 'SG_ASSOC.CADP02.P2ORDEM'
    end
    object Tb_Ped02_IsentasP2ITEM: TFloatField
      FieldName = 'P2ITEM'
      Origin = 'SG_ASSOC.CADP02.P2ITEM'
    end
    object Tb_Ped02_IsentasP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Tb_Ped02_IsentasP2CODANT: TFloatField
      FieldName = 'P2CODANT'
      Origin = 'SG_ASSOC.CADP02.P2CODANT'
    end
    object Tb_Ped02_IsentasP2CODAGRU: TFloatField
      FieldName = 'P2CODAGRU'
      Origin = 'SG_ASSOC.CADP02.P2CODAGRU'
    end
    object Tb_Ped02_IsentasP2CONSIG: TFloatField
      FieldName = 'P2CONSIG'
      Origin = 'SG_ASSOC.CADP02.P2CONSIG'
    end
    object Tb_Ped02_IsentasP2QTD: TFloatField
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Tb_Ped02_IsentasP2QTD_ATEN: TFloatField
      FieldName = 'P2QTD_ATEN'
      Origin = 'SG_ASSOC.CADP02.P2QTD_ATEN'
    end
    object Tb_Ped02_IsentasP2QTDDEV: TFloatField
      FieldName = 'P2QTDDEV'
      Origin = 'SG_ASSOC.CADP02.P2QTDDEV'
    end
    object Tb_Ped02_IsentasP2QTD_ENTREGUE: TFloatField
      FieldName = 'P2QTD_ENTREGUE'
      Origin = 'SG_ASSOC.CADP02.P2QTD_ENTREGUE'
    end
    object Tb_Ped02_IsentasP2QTD_ENTREGANDO: TFloatField
      FieldName = 'P2QTD_ENTREGANDO'
      Origin = 'SG_ASSOC.CADP02.P2QTD_ENTREGANDO'
    end
    object Tb_Ped02_IsentasP2AMBIENTE: TStringField
      FieldName = 'P2AMBIENTE'
      Origin = 'SG_ASSOC.CADP02.P2AMBIENTE'
      Size = 30
    end
    object Tb_Ped02_IsentasP2LOTE: TStringField
      FieldName = 'P2LOTE'
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object Tb_Ped02_IsentasP2PROMOCAO: TStringField
      FieldName = 'P2PROMOCAO'
      Origin = 'SG_ASSOC.CADP02.P2PROMOCAO'
      Size = 10
    end
    object Tb_Ped02_IsentasP2DTVCTO: TDateTimeField
      FieldName = 'P2DTVCTO'
      Origin = 'SG_ASSOC.CADP02.P2DTVCTO'
    end
    object Tb_Ped02_IsentasP2DESC1: TFloatField
      FieldName = 'P2DESC1'
      Origin = 'SG_ASSOC.CADP02.P2DESC1'
    end
    object Tb_Ped02_IsentasP2DESC2: TFloatField
      FieldName = 'P2DESC2'
      Origin = 'SG_ASSOC.CADP02.P2DESC2'
    end
    object Tb_Ped02_IsentasP2DESC3: TFloatField
      FieldName = 'P2DESC3'
      Origin = 'SG_ASSOC.CADP02.P2DESC3'
    end
    object Tb_Ped02_IsentasP2VALDES: TFloatField
      FieldName = 'P2VALDES'
      Origin = 'SG_ASSOC.CADP02.P2VALDES'
    end
    object Tb_Ped02_IsentasP2PRECO: TFloatField
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Tb_Ped02_IsentasP2SIT: TStringField
      FieldName = 'P2SIT'
      Origin = 'SG_ASSOC.CADP02.P2SIT'
      Size = 3
    end
    object Tb_Ped02_IsentasP2CODFAB: TFloatField
      FieldName = 'P2CODFAB'
      Origin = 'SG_ASSOC.CADP02.P2CODFAB'
    end
    object Tb_Ped02_IsentasP2CODGRU: TFloatField
      FieldName = 'P2CODGRU'
      Origin = 'SG_ASSOC.CADP02.P2CODGRU'
    end
    object Tb_Ped02_IsentasP2BASEN: TFloatField
      FieldName = 'P2BASEN'
      Origin = 'SG_ASSOC.CADP02.P2BASEN'
    end
    object Tb_Ped02_IsentasP2ICMSN: TFloatField
      FieldName = 'P2ICMSN'
      Origin = 'SG_ASSOC.CADP02.P2ICMSN'
    end
    object Tb_Ped02_IsentasP2REPAS: TFloatField
      FieldName = 'P2REPAS'
      Origin = 'SG_ASSOC.CADP02.P2REPAS'
    end
    object Tb_Ped02_IsentasP2BASER: TFloatField
      FieldName = 'P2BASER'
      Origin = 'SG_ASSOC.CADP02.P2BASER'
    end
    object Tb_Ped02_IsentasP2ICMSR: TFloatField
      FieldName = 'P2ICMSR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSR'
    end
    object Tb_Ped02_IsentasP2LISTA: TFloatField
      FieldName = 'P2LISTA'
      Origin = 'SG_ASSOC.CADP02.P2LISTA'
    end
    object Tb_Ped02_IsentasP2STATUS: TFloatField
      FieldName = 'P2STATUS'
      Origin = 'SG_ASSOC.CADP02.P2STATUS'
    end
    object Tb_Ped02_IsentasP2PCOTAB: TFloatField
      FieldName = 'P2PCOTAB'
      Origin = 'SG_ASSOC.CADP02.P2PCOTAB'
    end
    object Tb_Ped02_IsentasP2PCOFPG: TFloatField
      FieldName = 'P2PCOFPG'
      Origin = 'SG_ASSOC.CADP02.P2PCOFPG'
    end
    object Tb_Ped02_IsentasP2UCPR: TFloatField
      FieldName = 'P2UCPR'
      Origin = 'SG_ASSOC.CADP02.P2UCPR'
    end
    object Tb_Ped02_IsentasP2PCOCUS: TFloatField
      FieldName = 'P2PCOCUS'
      Origin = 'SG_ASSOC.CADP02.P2PCOCUS'
    end
    object Tb_Ped02_IsentasP2PCOMAX: TFloatField
      FieldName = 'P2PCOMAX'
      Origin = 'SG_ASSOC.CADP02.P2PCOMAX'
    end
    object Tb_Ped02_IsentasP2TOTDES: TFloatField
      FieldName = 'P2TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object Tb_Ped02_IsentasP2DESCRAT: TFloatField
      FieldName = 'P2DESCRAT'
      Origin = 'SG_ASSOC.CADP02.P2DESCRAT'
    end
    object Tb_Ped02_IsentasP2ACRERAT: TFloatField
      FieldName = 'P2ACRERAT'
      Origin = 'SG_ASSOC.CADP02.P2ACRERAT'
    end
    object Tb_Ped02_IsentasP2TABELA: TStringField
      FieldName = 'P2TABELA'
      Origin = 'SG_ASSOC.CADP02.P2TABELA'
      Size = 1
    end
    object Tb_Ped02_IsentasP2ALIPI: TFloatField
      FieldName = 'P2ALIPI'
      Origin = 'SG_ASSOC.CADP02.P2ALIPI'
    end
    object Tb_Ped02_IsentasP2VALIPI: TFloatField
      FieldName = 'P2VALIPI'
      Origin = 'SG_ASSOC.CADP02.P2VALIPI'
    end
    object Tb_Ped02_IsentasP2BCINR: TFloatField
      FieldName = 'P2BCINR'
      Origin = 'SG_ASSOC.CADP02.P2BCINR'
    end
    object Tb_Ped02_IsentasP2ICMSNR: TFloatField
      FieldName = 'P2ICMSNR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSNR'
    end
    object Tb_Ped02_IsentasP2ISENTAS: TFloatField
      FieldName = 'P2ISENTAS'
      Origin = 'SG_ASSOC.CADP02.P2ISENTAS'
    end
    object Tb_Ped02_IsentasP2TOTOUT: TFloatField
      FieldName = 'P2TOTOUT'
      Origin = 'SG_ASSOC.CADP02.P2TOTOUT'
    end
    object Tb_Ped02_IsentasP2ALIQ: TFloatField
      FieldName = 'P2ALIQ'
      Origin = 'SG_ASSOC.CADP02.P2ALIQ'
    end
    object Tb_Ped02_IsentasP2ALIQNR: TFloatField
      FieldName = 'P2ALIQNR'
      Origin = 'SG_ASSOC.CADP02.P2ALIQNR'
    end
    object Tb_Ped02_IsentasP2PCOMIS: TFloatField
      FieldName = 'P2PCOMIS'
      Origin = 'SG_ASSOC.CADP02.P2PCOMIS'
    end
    object Tb_Ped02_IsentasP2VCOMIS: TFloatField
      FieldName = 'P2VCOMIS'
      Origin = 'SG_ASSOC.CADP02.P2VCOMIS'
    end
    object Tb_Ped02_IsentasP2PCOMIS_EXTRA: TFloatField
      FieldName = 'P2PCOMIS_EXTRA'
      Origin = 'SG_ASSOC.CADP02.P2PCOMIS_EXTRA'
    end
    object Tb_Ped02_IsentasP2VCOMIS_EXTRA: TFloatField
      FieldName = 'P2VCOMIS_EXTRA'
      Origin = 'SG_ASSOC.CADP02.P2VCOMIS_EXTRA'
    end
    object Tb_Ped02_IsentasP2PCOM02: TFloatField
      FieldName = 'P2PCOM02'
      Origin = 'SG_ASSOC.CADP02.P2PCOM02'
    end
    object Tb_Ped02_IsentasP2VCOM02: TFloatField
      FieldName = 'P2VCOM02'
      Origin = 'SG_ASSOC.CADP02.P2VCOM02'
    end
    object Tb_Ped02_IsentasP2VCOM03: TFloatField
      FieldName = 'P2VCOM03'
      Origin = 'SG_ASSOC.CADP02.P2VCOM03'
    end
    object Tb_Ped02_IsentasP2PCOM03: TFloatField
      FieldName = 'P2PCOM03'
      Origin = 'SG_ASSOC.CADP02.P2PCOM03'
    end
    object Tb_Ped02_IsentasP2VCOM04: TFloatField
      FieldName = 'P2VCOM04'
      Origin = 'SG_ASSOC.CADP02.P2VCOM04'
    end
    object Tb_Ped02_IsentasP2DESCM: TFloatField
      FieldName = 'P2DESCM'
      Origin = 'SG_ASSOC.CADP02.P2DESCM'
    end
    object Tb_Ped02_IsentasP2CFO: TFloatField
      FieldName = 'P2CFO'
      Origin = 'SG_ASSOC.CADP02.P2CFO'
    end
    object Tb_Ped02_IsentasP2CFOSUBECF: TFloatField
      FieldName = 'P2CFOSUBECF'
      Origin = 'SG_ASSOC.CADP02.P2CFOSUBECF'
    end
    object Tb_Ped02_IsentasP2SEMCOM: TFloatField
      FieldName = 'P2SEMCOM'
      Origin = 'SG_ASSOC.CADP02.P2SEMCOM'
    end
    object Tb_Ped02_IsentasP2TOTLIQ: TFloatField
      FieldName = 'P2TOTLIQ'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object Tb_Ped02_IsentasP2PDESCF: TFloatField
      FieldName = 'P2PDESCF'
      Origin = 'SG_ASSOC.CADP02.P2PDESCF'
    end
    object Tb_Ped02_IsentasP2VDESCF: TFloatField
      FieldName = 'P2VDESCF'
      Origin = 'SG_ASSOC.CADP02.P2VDESCF'
    end
    object Tb_Ped02_IsentasP2ACRECONV: TFloatField
      FieldName = 'P2ACRECONV'
      Origin = 'SG_ASSOC.CADP02.P2ACRECONV'
    end
    object Tb_Ped02_IsentasP2ACREGER: TFloatField
      FieldName = 'P2ACREGER'
      Origin = 'SG_ASSOC.CADP02.P2ACREGER'
    end
    object Tb_Ped02_IsentasP2STATUS_PED1: TFloatField
      FieldName = 'P2STATUS_PED1'
      Origin = 'SG_ASSOC.CADP02.P2STATUS_PED1'
    end
    object Tb_Ped02_IsentasP2TIPO: TFloatField
      FieldName = 'P2TIPO'
      Origin = 'SG_ASSOC.CADP02.P2TIPO'
    end
    object Tb_Ped02_IsentasP2ST_IVA: TFloatField
      FieldName = 'P2ST_IVA'
      Origin = 'SG_ASSOC.CADP02.P2ST_IVA'
    end
    object Tb_Ped02_IsentasP2ST_REDUT: TFloatField
      FieldName = 'P2ST_REDUT'
      Origin = 'SG_ASSOC.CADP02.P2ST_REDUT'
    end
    object Tb_Ped02_IsentasP2ST_ICMCRED: TFloatField
      FieldName = 'P2ST_ICMCRED'
      Origin = 'SG_ASSOC.CADP02.P2ST_ICMCRED'
    end
    object Tb_Ped02_IsentasP2ST_ICMDEB: TFloatField
      FieldName = 'P2ST_ICMDEB'
      Origin = 'SG_ASSOC.CADP02.P2ST_ICMDEB'
    end
    object Tb_Ped02_IsentasP2REDUTICM: TFloatField
      FieldName = 'P2REDUTICM'
      Origin = 'SG_ASSOC.CADP02.P2REDUTICM'
    end
    object Tb_Ped02_IsentasP2PRAZO: TFloatField
      FieldName = 'P2PRAZO'
      Origin = 'SG_ASSOC.CADP02.P2PRAZO'
    end
    object Tb_Ped02_IsentasP2ALPIS: TFloatField
      FieldName = 'P2ALPIS'
      Origin = 'SG_ASSOC.CADP02.P2ALPIS'
    end
    object Tb_Ped02_IsentasP2VALPIS: TFloatField
      FieldName = 'P2VALPIS'
      Origin = 'SG_ASSOC.CADP02.P2VALPIS'
    end
    object Tb_Ped02_IsentasP2ALCOFINS: TFloatField
      FieldName = 'P2ALCOFINS'
      Origin = 'SG_ASSOC.CADP02.P2ALCOFINS'
    end
    object Tb_Ped02_IsentasP2COFINS: TFloatField
      FieldName = 'P2COFINS'
      Origin = 'SG_ASSOC.CADP02.P2COFINS'
    end
    object Tb_Ped02_IsentasP2CODVEN: TFloatField
      FieldName = 'P2CODVEN'
      Origin = 'SG_ASSOC.CADP02.P2CODVEN'
    end
    object Tb_Ped02_IsentasP2TIPO_PCO: TFloatField
      FieldName = 'P2TIPO_PCO'
      Origin = 'SG_ASSOC.CADP02.P2TIPO_PCO'
    end
    object Tb_Ped02_IsentasP2CONS_PROPRIO: TFloatField
      FieldName = 'P2CONS_PROPRIO'
      Origin = 'SG_ASSOC.CADP02.P2CONS_PROPRIO'
    end
    object Tb_Ped02_IsentasP2CODPRO_ORI: TStringField
      FieldName = 'P2CODPRO_ORI'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO_ORI'
      Size = 14
    end
    object Tb_Ped02_IsentasP2NOMPRO_ORI: TStringField
      FieldName = 'P2NOMPRO_ORI'
      Origin = 'SG_ASSOC.CADP02.P2NOMPRO_ORI'
      Size = 200
    end
    object Tb_Ped02_IsentasP2CHAVE_NIVEL: TFloatField
      FieldName = 'P2CHAVE_NIVEL'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE_NIVEL'
    end
    object Tb_Ped02_IsentasP2PCRED_SN: TFloatField
      FieldName = 'P2PCRED_SN'
      Origin = 'SG_ASSOC.CADP02.P2PCRED_SN'
    end
    object Tb_Ped02_IsentasP2PCREDSN: TFloatField
      FieldName = 'P2PCREDSN'
      Origin = 'SG_ASSOC.CADP02.P2PCREDSN'
    end
    object Tb_Ped02_IsentasP2COMPLEMENTO: TMemoField
      FieldName = 'P2COMPLEMENTO'
      BlobType = ftMemo
      Size = 500
    end
    object Tb_Ped02_IsentasP2DESCPR: TFloatField
      FieldName = 'P2DESCPR'
    end
  end
  object Tb_Ped02_Trib: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP02'
      'where  P2CODEMP=:CODEMP'
      'and P2LOTSEQ=:LOTSEQ'
      'and P2CHAVE=:CHAVE'
      'and P2ORDEM=:ORDEM'
      'and (substr(P2SIT,2,1)<>'#39'1'#39' and  substr(P2SIT,2,1)<>'#39'6'#39' ) '
      'and P2BASEN<>0')
    UpdateObject = U_Ped02_trib
    Left = 540
    Top = 229
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'LOTSEQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'ORDEM'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_Ped02_TribP2CODEMP: TFloatField
      FieldName = 'P2CODEMP'
      Origin = 'SG_ASSOC.CADP02.P2CODEMP'
    end
    object Tb_Ped02_TribP2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
      Origin = 'SG_ASSOC.CADP02.P2LOTSEQ'
    end
    object Tb_Ped02_TribP2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE'
    end
    object Tb_Ped02_TribP2ORDEM: TFloatField
      FieldName = 'P2ORDEM'
      Origin = 'SG_ASSOC.CADP02.P2ORDEM'
    end
    object Tb_Ped02_TribP2ITEM: TFloatField
      FieldName = 'P2ITEM'
      Origin = 'SG_ASSOC.CADP02.P2ITEM'
    end
    object Tb_Ped02_TribP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Tb_Ped02_TribP2CODANT: TFloatField
      FieldName = 'P2CODANT'
      Origin = 'SG_ASSOC.CADP02.P2CODANT'
    end
    object Tb_Ped02_TribP2CODAGRU: TFloatField
      FieldName = 'P2CODAGRU'
      Origin = 'SG_ASSOC.CADP02.P2CODAGRU'
    end
    object Tb_Ped02_TribP2CONSIG: TFloatField
      FieldName = 'P2CONSIG'
      Origin = 'SG_ASSOC.CADP02.P2CONSIG'
    end
    object Tb_Ped02_TribP2QTD: TFloatField
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Tb_Ped02_TribP2QTD_ATEN: TFloatField
      FieldName = 'P2QTD_ATEN'
      Origin = 'SG_ASSOC.CADP02.P2QTD_ATEN'
    end
    object Tb_Ped02_TribP2QTDDEV: TFloatField
      FieldName = 'P2QTDDEV'
      Origin = 'SG_ASSOC.CADP02.P2QTDDEV'
    end
    object Tb_Ped02_TribP2QTD_ENTREGUE: TFloatField
      FieldName = 'P2QTD_ENTREGUE'
      Origin = 'SG_ASSOC.CADP02.P2QTD_ENTREGUE'
    end
    object Tb_Ped02_TribP2QTD_ENTREGANDO: TFloatField
      FieldName = 'P2QTD_ENTREGANDO'
      Origin = 'SG_ASSOC.CADP02.P2QTD_ENTREGANDO'
    end
    object Tb_Ped02_TribP2AMBIENTE: TStringField
      FieldName = 'P2AMBIENTE'
      Origin = 'SG_ASSOC.CADP02.P2AMBIENTE'
      Size = 30
    end
    object Tb_Ped02_TribP2LOTE: TStringField
      FieldName = 'P2LOTE'
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object Tb_Ped02_TribP2PROMOCAO: TStringField
      FieldName = 'P2PROMOCAO'
      Origin = 'SG_ASSOC.CADP02.P2PROMOCAO'
      Size = 10
    end
    object Tb_Ped02_TribP2DTVCTO: TDateTimeField
      FieldName = 'P2DTVCTO'
      Origin = 'SG_ASSOC.CADP02.P2DTVCTO'
    end
    object Tb_Ped02_TribP2DESC1: TFloatField
      FieldName = 'P2DESC1'
      Origin = 'SG_ASSOC.CADP02.P2DESC1'
    end
    object Tb_Ped02_TribP2DESC2: TFloatField
      FieldName = 'P2DESC2'
      Origin = 'SG_ASSOC.CADP02.P2DESC2'
    end
    object Tb_Ped02_TribP2DESC3: TFloatField
      FieldName = 'P2DESC3'
      Origin = 'SG_ASSOC.CADP02.P2DESC3'
    end
    object Tb_Ped02_TribP2VALDES: TFloatField
      FieldName = 'P2VALDES'
      Origin = 'SG_ASSOC.CADP02.P2VALDES'
    end
    object Tb_Ped02_TribP2PRECO: TFloatField
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Tb_Ped02_TribP2SIT: TStringField
      FieldName = 'P2SIT'
      Origin = 'SG_ASSOC.CADP02.P2SIT'
      Size = 3
    end
    object Tb_Ped02_TribP2CODFAB: TFloatField
      FieldName = 'P2CODFAB'
      Origin = 'SG_ASSOC.CADP02.P2CODFAB'
    end
    object Tb_Ped02_TribP2CODGRU: TFloatField
      FieldName = 'P2CODGRU'
      Origin = 'SG_ASSOC.CADP02.P2CODGRU'
    end
    object Tb_Ped02_TribP2BASEN: TFloatField
      FieldName = 'P2BASEN'
      Origin = 'SG_ASSOC.CADP02.P2BASEN'
    end
    object Tb_Ped02_TribP2ICMSN: TFloatField
      FieldName = 'P2ICMSN'
      Origin = 'SG_ASSOC.CADP02.P2ICMSN'
    end
    object Tb_Ped02_TribP2REPAS: TFloatField
      FieldName = 'P2REPAS'
      Origin = 'SG_ASSOC.CADP02.P2REPAS'
    end
    object Tb_Ped02_TribP2BASER: TFloatField
      FieldName = 'P2BASER'
      Origin = 'SG_ASSOC.CADP02.P2BASER'
    end
    object Tb_Ped02_TribP2ICMSR: TFloatField
      FieldName = 'P2ICMSR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSR'
    end
    object Tb_Ped02_TribP2LISTA: TFloatField
      FieldName = 'P2LISTA'
      Origin = 'SG_ASSOC.CADP02.P2LISTA'
    end
    object Tb_Ped02_TribP2STATUS: TFloatField
      FieldName = 'P2STATUS'
      Origin = 'SG_ASSOC.CADP02.P2STATUS'
    end
    object Tb_Ped02_TribP2PCOTAB: TFloatField
      FieldName = 'P2PCOTAB'
      Origin = 'SG_ASSOC.CADP02.P2PCOTAB'
    end
    object Tb_Ped02_TribP2PCOFPG: TFloatField
      FieldName = 'P2PCOFPG'
      Origin = 'SG_ASSOC.CADP02.P2PCOFPG'
    end
    object Tb_Ped02_TribP2UCPR: TFloatField
      FieldName = 'P2UCPR'
      Origin = 'SG_ASSOC.CADP02.P2UCPR'
    end
    object Tb_Ped02_TribP2PCOCUS: TFloatField
      FieldName = 'P2PCOCUS'
      Origin = 'SG_ASSOC.CADP02.P2PCOCUS'
    end
    object Tb_Ped02_TribP2PCOMAX: TFloatField
      FieldName = 'P2PCOMAX'
      Origin = 'SG_ASSOC.CADP02.P2PCOMAX'
    end
    object Tb_Ped02_TribP2TOTDES: TFloatField
      FieldName = 'P2TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object Tb_Ped02_TribP2DESCRAT: TFloatField
      FieldName = 'P2DESCRAT'
      Origin = 'SG_ASSOC.CADP02.P2DESCRAT'
    end
    object Tb_Ped02_TribP2ACRERAT: TFloatField
      FieldName = 'P2ACRERAT'
      Origin = 'SG_ASSOC.CADP02.P2ACRERAT'
    end
    object Tb_Ped02_TribP2TABELA: TStringField
      FieldName = 'P2TABELA'
      Origin = 'SG_ASSOC.CADP02.P2TABELA'
      Size = 1
    end
    object Tb_Ped02_TribP2ALIPI: TFloatField
      FieldName = 'P2ALIPI'
      Origin = 'SG_ASSOC.CADP02.P2ALIPI'
    end
    object Tb_Ped02_TribP2VALIPI: TFloatField
      FieldName = 'P2VALIPI'
      Origin = 'SG_ASSOC.CADP02.P2VALIPI'
    end
    object Tb_Ped02_TribP2BCINR: TFloatField
      FieldName = 'P2BCINR'
      Origin = 'SG_ASSOC.CADP02.P2BCINR'
    end
    object Tb_Ped02_TribP2ICMSNR: TFloatField
      FieldName = 'P2ICMSNR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSNR'
    end
    object Tb_Ped02_TribP2ISENTAS: TFloatField
      FieldName = 'P2ISENTAS'
      Origin = 'SG_ASSOC.CADP02.P2ISENTAS'
    end
    object Tb_Ped02_TribP2TOTOUT: TFloatField
      FieldName = 'P2TOTOUT'
      Origin = 'SG_ASSOC.CADP02.P2TOTOUT'
    end
    object Tb_Ped02_TribP2ALIQ: TFloatField
      FieldName = 'P2ALIQ'
      Origin = 'SG_ASSOC.CADP02.P2ALIQ'
    end
    object Tb_Ped02_TribP2ALIQNR: TFloatField
      FieldName = 'P2ALIQNR'
      Origin = 'SG_ASSOC.CADP02.P2ALIQNR'
    end
    object Tb_Ped02_TribP2PCOMIS: TFloatField
      FieldName = 'P2PCOMIS'
      Origin = 'SG_ASSOC.CADP02.P2PCOMIS'
    end
    object Tb_Ped02_TribP2VCOMIS: TFloatField
      FieldName = 'P2VCOMIS'
      Origin = 'SG_ASSOC.CADP02.P2VCOMIS'
    end
    object Tb_Ped02_TribP2PCOMIS_EXTRA: TFloatField
      FieldName = 'P2PCOMIS_EXTRA'
      Origin = 'SG_ASSOC.CADP02.P2PCOMIS_EXTRA'
    end
    object Tb_Ped02_TribP2VCOMIS_EXTRA: TFloatField
      FieldName = 'P2VCOMIS_EXTRA'
      Origin = 'SG_ASSOC.CADP02.P2VCOMIS_EXTRA'
    end
    object Tb_Ped02_TribP2PCOM02: TFloatField
      FieldName = 'P2PCOM02'
      Origin = 'SG_ASSOC.CADP02.P2PCOM02'
    end
    object Tb_Ped02_TribP2VCOM02: TFloatField
      FieldName = 'P2VCOM02'
      Origin = 'SG_ASSOC.CADP02.P2VCOM02'
    end
    object Tb_Ped02_TribP2VCOM03: TFloatField
      FieldName = 'P2VCOM03'
      Origin = 'SG_ASSOC.CADP02.P2VCOM03'
    end
    object Tb_Ped02_TribP2PCOM03: TFloatField
      FieldName = 'P2PCOM03'
      Origin = 'SG_ASSOC.CADP02.P2PCOM03'
    end
    object Tb_Ped02_TribP2VCOM04: TFloatField
      FieldName = 'P2VCOM04'
      Origin = 'SG_ASSOC.CADP02.P2VCOM04'
    end
    object Tb_Ped02_TribP2DESCM: TFloatField
      FieldName = 'P2DESCM'
      Origin = 'SG_ASSOC.CADP02.P2DESCM'
    end
    object Tb_Ped02_TribP2CFO: TFloatField
      FieldName = 'P2CFO'
      Origin = 'SG_ASSOC.CADP02.P2CFO'
    end
    object Tb_Ped02_TribP2CFOSUBECF: TFloatField
      FieldName = 'P2CFOSUBECF'
      Origin = 'SG_ASSOC.CADP02.P2CFOSUBECF'
    end
    object Tb_Ped02_TribP2SEMCOM: TFloatField
      FieldName = 'P2SEMCOM'
      Origin = 'SG_ASSOC.CADP02.P2SEMCOM'
    end
    object Tb_Ped02_TribP2TOTLIQ: TFloatField
      FieldName = 'P2TOTLIQ'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object Tb_Ped02_TribP2PDESCF: TFloatField
      FieldName = 'P2PDESCF'
      Origin = 'SG_ASSOC.CADP02.P2PDESCF'
    end
    object Tb_Ped02_TribP2VDESCF: TFloatField
      FieldName = 'P2VDESCF'
      Origin = 'SG_ASSOC.CADP02.P2VDESCF'
    end
    object Tb_Ped02_TribP2ACRECONV: TFloatField
      FieldName = 'P2ACRECONV'
      Origin = 'SG_ASSOC.CADP02.P2ACRECONV'
    end
    object Tb_Ped02_TribP2ACREGER: TFloatField
      FieldName = 'P2ACREGER'
      Origin = 'SG_ASSOC.CADP02.P2ACREGER'
    end
    object Tb_Ped02_TribP2STATUS_PED1: TFloatField
      FieldName = 'P2STATUS_PED1'
      Origin = 'SG_ASSOC.CADP02.P2STATUS_PED1'
    end
    object Tb_Ped02_TribP2TIPO: TFloatField
      FieldName = 'P2TIPO'
      Origin = 'SG_ASSOC.CADP02.P2TIPO'
    end
    object Tb_Ped02_TribP2ST_IVA: TFloatField
      FieldName = 'P2ST_IVA'
      Origin = 'SG_ASSOC.CADP02.P2ST_IVA'
    end
    object Tb_Ped02_TribP2ST_REDUT: TFloatField
      FieldName = 'P2ST_REDUT'
      Origin = 'SG_ASSOC.CADP02.P2ST_REDUT'
    end
    object Tb_Ped02_TribP2ST_ICMCRED: TFloatField
      FieldName = 'P2ST_ICMCRED'
      Origin = 'SG_ASSOC.CADP02.P2ST_ICMCRED'
    end
    object Tb_Ped02_TribP2ST_ICMDEB: TFloatField
      FieldName = 'P2ST_ICMDEB'
      Origin = 'SG_ASSOC.CADP02.P2ST_ICMDEB'
    end
    object Tb_Ped02_TribP2REDUTICM: TFloatField
      FieldName = 'P2REDUTICM'
      Origin = 'SG_ASSOC.CADP02.P2REDUTICM'
    end
    object Tb_Ped02_TribP2PRAZO: TFloatField
      FieldName = 'P2PRAZO'
      Origin = 'SG_ASSOC.CADP02.P2PRAZO'
    end
    object Tb_Ped02_TribP2ALPIS: TFloatField
      FieldName = 'P2ALPIS'
      Origin = 'SG_ASSOC.CADP02.P2ALPIS'
    end
    object Tb_Ped02_TribP2VALPIS: TFloatField
      FieldName = 'P2VALPIS'
      Origin = 'SG_ASSOC.CADP02.P2VALPIS'
    end
    object Tb_Ped02_TribP2ALCOFINS: TFloatField
      FieldName = 'P2ALCOFINS'
      Origin = 'SG_ASSOC.CADP02.P2ALCOFINS'
    end
    object Tb_Ped02_TribP2COFINS: TFloatField
      FieldName = 'P2COFINS'
      Origin = 'SG_ASSOC.CADP02.P2COFINS'
    end
    object Tb_Ped02_TribP2CODVEN: TFloatField
      FieldName = 'P2CODVEN'
      Origin = 'SG_ASSOC.CADP02.P2CODVEN'
    end
    object Tb_Ped02_TribP2TIPO_PCO: TFloatField
      FieldName = 'P2TIPO_PCO'
      Origin = 'SG_ASSOC.CADP02.P2TIPO_PCO'
    end
    object Tb_Ped02_TribP2CONS_PROPRIO: TFloatField
      FieldName = 'P2CONS_PROPRIO'
      Origin = 'SG_ASSOC.CADP02.P2CONS_PROPRIO'
    end
    object Tb_Ped02_TribP2CODPRO_ORI: TStringField
      FieldName = 'P2CODPRO_ORI'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO_ORI'
      Size = 14
    end
    object Tb_Ped02_TribP2NOMPRO_ORI: TStringField
      FieldName = 'P2NOMPRO_ORI'
      Origin = 'SG_ASSOC.CADP02.P2NOMPRO_ORI'
      Size = 200
    end
    object Tb_Ped02_TribP2CHAVE_NIVEL: TFloatField
      FieldName = 'P2CHAVE_NIVEL'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE_NIVEL'
    end
    object Tb_Ped02_TribP2PCRED_SN: TFloatField
      FieldName = 'P2PCRED_SN'
      Origin = 'SG_ASSOC.CADP02.P2PCRED_SN'
    end
    object Tb_Ped02_TribP2PCREDSN: TFloatField
      FieldName = 'P2PCREDSN'
      Origin = 'SG_ASSOC.CADP02.P2PCREDSN'
    end
    object Tb_Ped02_TribP2COMPLEMENTO: TMemoField
      FieldName = 'P2COMPLEMENTO'
      BlobType = ftMemo
      Size = 500
    end
    object Tb_Ped02_TribP2DESCPR: TFloatField
      FieldName = 'P2DESCPR'
    end
  end
  object U_Ped02_trib: TUpdateSQL
    ModifySQL.Strings = (
      'update CADP02'
      'set'
      '  P2CODEMP = :P2CODEMP,'
      '  P2LOTSEQ = :P2LOTSEQ,'
      '  P2CHAVE = :P2CHAVE,'
      '  P2ORDEM = :P2ORDEM,'
      '  P2ITEM = :P2ITEM,'
      '  P2CODPRO = :P2CODPRO,'
      '  P2CODANT = :P2CODANT,'
      '  P2CODAGRU = :P2CODAGRU,'
      '  P2CONSIG = :P2CONSIG,'
      '  P2QTD = :P2QTD,'
      '  P2QTD_ATEN = :P2QTD_ATEN,'
      '  P2QTDDEV = :P2QTDDEV,'
      '  P2QTD_ENTREGUE = :P2QTD_ENTREGUE,'
      '  P2QTD_ENTREGANDO = :P2QTD_ENTREGANDO,'
      '  P2AMBIENTE = :P2AMBIENTE,'
      '  P2LOTE = :P2LOTE,'
      '  P2PROMOCAO = :P2PROMOCAO,'
      '  P2DTVCTO = :P2DTVCTO,'
      '  P2DESC1 = :P2DESC1,'
      '  P2DESC2 = :P2DESC2,'
      '  P2DESC3 = :P2DESC3,'
      '  P2VALDES = :P2VALDES,'
      '  P2PRECO = :P2PRECO,'
      '  P2SIT = :P2SIT,'
      '  P2CODFAB = :P2CODFAB,'
      '  P2CODGRU = :P2CODGRU,'
      '  P2BASEN = :P2BASEN,'
      '  P2ICMSN = :P2ICMSN,'
      '  P2REPAS = :P2REPAS,'
      '  P2BASER = :P2BASER,'
      '  P2ICMSR = :P2ICMSR,'
      '  P2LISTA = :P2LISTA,'
      '  P2STATUS = :P2STATUS,'
      '  P2PCOTAB = :P2PCOTAB,'
      '  P2PCOFPG = :P2PCOFPG,'
      '  P2UCPR = :P2UCPR,'
      '  P2PCOCUS = :P2PCOCUS,'
      '  P2PCOMAX = :P2PCOMAX,'
      '  P2TOTDES = :P2TOTDES,'
      '  P2DESCRAT = :P2DESCRAT,'
      '  P2ACRERAT = :P2ACRERAT,'
      '  P2TABELA = :P2TABELA,'
      '  P2ALIPI = :P2ALIPI,'
      '  P2VALIPI = :P2VALIPI,'
      '  P2BCINR = :P2BCINR,'
      '  P2ICMSNR = :P2ICMSNR,'
      '  P2ISENTAS = :P2ISENTAS,'
      '  P2TOTOUT = :P2TOTOUT,'
      '  P2ALIQ = :P2ALIQ,'
      '  P2ALIQNR = :P2ALIQNR,'
      '  P2PCOMIS = :P2PCOMIS,'
      '  P2VCOMIS = :P2VCOMIS,'
      '  P2PCOMIS_EXTRA = :P2PCOMIS_EXTRA,'
      '  P2VCOMIS_EXTRA = :P2VCOMIS_EXTRA,'
      '  P2PCOM02 = :P2PCOM02,'
      '  P2VCOM02 = :P2VCOM02,'
      '  P2VCOM03 = :P2VCOM03,'
      '  P2PCOM03 = :P2PCOM03,'
      '  P2VCOM04 = :P2VCOM04,'
      '  P2DESCM = :P2DESCM,'
      '  P2CFO = :P2CFO,'
      '  P2CFOSUBECF = :P2CFOSUBECF,'
      '  P2SEMCOM = :P2SEMCOM,'
      '  P2TOTLIQ = :P2TOTLIQ,'
      '  P2PDESCF = :P2PDESCF,'
      '  P2VDESCF = :P2VDESCF,'
      '  P2ACRECONV = :P2ACRECONV,'
      '  P2ACREGER = :P2ACREGER,'
      '  P2STATUS_PED1 = :P2STATUS_PED1,'
      '  P2TIPO = :P2TIPO,'
      '  P2ST_IVA = :P2ST_IVA,'
      '  P2ST_REDUT = :P2ST_REDUT,'
      '  P2ST_ICMCRED = :P2ST_ICMCRED,'
      '  P2ST_ICMDEB = :P2ST_ICMDEB,'
      '  P2REDUTICM = :P2REDUTICM,'
      '  P2PRAZO = :P2PRAZO,'
      '  P2ALPIS = :P2ALPIS,'
      '  P2VALPIS = :P2VALPIS,'
      '  P2ALCOFINS = :P2ALCOFINS,'
      '  P2COFINS = :P2COFINS,'
      '  P2CODVEN = :P2CODVEN,'
      '  P2COMPLEMENTO = :P2COMPLEMENTO,'
      '  P2TIPO_PCO = :P2TIPO_PCO,'
      '  P2CONS_PROPRIO = :P2CONS_PROPRIO,'
      '  P2CODPRO_ORI = :P2CODPRO_ORI,'
      '  P2NOMPRO_ORI = :P2NOMPRO_ORI,'
      '  P2CHAVE_NIVEL = :P2CHAVE_NIVEL,'
      '  P2PCRED_SN = :P2PCRED_SN,'
      '  P2PCREDSN = :P2PCREDSN'
      'where'
      '  P2CODEMP = :OLD_P2CODEMP and'
      '  P2LOTSEQ = :OLD_P2LOTSEQ and'
      '  P2CHAVE = :OLD_P2CHAVE and'
      '  P2ORDEM = :OLD_P2ORDEM and'
      '  P2ITEM = :OLD_P2ITEM')
    InsertSQL.Strings = (
      'insert into CADP02'
      '  (P2CODEMP, P2LOTSEQ, P2CHAVE, P2ORDEM, P2ITEM, P2CODPRO, '
      'P2CODANT, P2CODAGRU, '
      '   P2CONSIG, P2QTD, P2QTD_ATEN, P2QTDDEV, P2QTD_ENTREGUE, '
      'P2QTD_ENTREGANDO, '
      '   P2AMBIENTE, P2LOTE, P2PROMOCAO, P2DTVCTO, P2DESC1, P2DESC2, '
      'P2DESC3, '
      
        '   P2VALDES, P2PRECO, P2SIT, P2CODFAB, P2CODGRU, P2BASEN, P2ICMS' +
        'N, '
      'P2REPAS, '
      
        '   P2BASER, P2ICMSR, P2LISTA, P2STATUS, P2PCOTAB, P2PCOFPG, P2UC' +
        'PR, '
      'P2PCOCUS, '
      '   P2PCOMAX, P2TOTDES, P2DESCRAT, P2ACRERAT, P2TABELA, P2ALIPI, '
      'P2VALIPI, '
      
        '   P2BCINR, P2ICMSNR, P2ISENTAS, P2TOTOUT, P2ALIQ, P2ALIQNR, P2P' +
        'COMIS, '
      
        '   P2VCOMIS, P2PCOMIS_EXTRA, P2VCOMIS_EXTRA, P2PCOM02, P2VCOM02,' +
        ' '
      'P2VCOM03, '
      '   P2PCOM03, P2VCOM04, P2DESCM, P2CFO, P2CFOSUBECF, P2SEMCOM, '
      'P2TOTLIQ, '
      '   P2PDESCF, P2VDESCF, P2ACRECONV, P2ACREGER, P2STATUS_PED1, '
      'P2TIPO, P2ST_IVA, '
      '   P2ST_REDUT, P2ST_ICMCRED, P2ST_ICMDEB, P2REDUTICM, P2PRAZO, '
      'P2ALPIS, '
      '   P2VALPIS, P2ALCOFINS, P2COFINS, P2CODVEN, P2COMPLEMENTO, '
      'P2TIPO_PCO, '
      '   P2CONS_PROPRIO, P2CODPRO_ORI, P2NOMPRO_ORI, P2CHAVE_NIVEL, '
      'P2PCRED_SN, '
      '   P2PCREDSN)'
      'values'
      
        '  (:P2CODEMP, :P2LOTSEQ, :P2CHAVE, :P2ORDEM, :P2ITEM, :P2CODPRO,' +
        ' '
      ':P2CODANT, '
      '   :P2CODAGRU, :P2CONSIG, :P2QTD, :P2QTD_ATEN, :P2QTDDEV, '
      ':P2QTD_ENTREGUE, '
      
        '   :P2QTD_ENTREGANDO, :P2AMBIENTE, :P2LOTE, :P2PROMOCAO, :P2DTVC' +
        'TO, '
      ':P2DESC1, '
      '   :P2DESC2, :P2DESC3, :P2VALDES, :P2PRECO, :P2SIT, :P2CODFAB, '
      ':P2CODGRU, '
      
        '   :P2BASEN, :P2ICMSN, :P2REPAS, :P2BASER, :P2ICMSR, :P2LISTA, :' +
        'P2STATUS, '
      
        '   :P2PCOTAB, :P2PCOFPG, :P2UCPR, :P2PCOCUS, :P2PCOMAX, :P2TOTDE' +
        'S, '
      ':P2DESCRAT, '
      
        '   :P2ACRERAT, :P2TABELA, :P2ALIPI, :P2VALIPI, :P2BCINR, :P2ICMS' +
        'NR, '
      ':P2ISENTAS, '
      '   :P2TOTOUT, :P2ALIQ, :P2ALIQNR, :P2PCOMIS, :P2VCOMIS, '
      ':P2PCOMIS_EXTRA, '
      '   :P2VCOMIS_EXTRA, :P2PCOM02, :P2VCOM02, :P2VCOM03, :P2PCOM03, '
      ':P2VCOM04, '
      
        '   :P2DESCM, :P2CFO, :P2CFOSUBECF, :P2SEMCOM, :P2TOTLIQ, :P2PDES' +
        'CF, '
      ':P2VDESCF, '
      '   :P2ACRECONV, :P2ACREGER, :P2STATUS_PED1, :P2TIPO, :P2ST_IVA, '
      ':P2ST_REDUT, '
      
        '   :P2ST_ICMCRED, :P2ST_ICMDEB, :P2REDUTICM, :P2PRAZO, :P2ALPIS,' +
        ' '
      ':P2VALPIS, '
      
        '   :P2ALCOFINS, :P2COFINS, :P2CODVEN, :P2COMPLEMENTO, :P2TIPO_PC' +
        'O, '
      ':P2CONS_PROPRIO, '
      '   :P2CODPRO_ORI, :P2NOMPRO_ORI, :P2CHAVE_NIVEL, :P2PCRED_SN, '
      ':P2PCREDSN)')
    DeleteSQL.Strings = (
      'delete from CADP02'
      'where'
      '  P2CODEMP = :OLD_P2CODEMP and'
      '  P2LOTSEQ = :OLD_P2LOTSEQ and'
      '  P2CHAVE = :OLD_P2CHAVE and'
      '  P2ORDEM = :OLD_P2ORDEM and'
      '  P2ITEM = :OLD_P2ITEM')
    Left = 588
    Top = 229
  end
  object Tb_Ped02_SubSt: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP02'
      'where  P2CODEMP=:CODEMP'
      'and P2LOTSEQ=:LOTSEQ'
      'and P2CHAVE=:CHAVE'
      'and P2ORDEM=:ORDEM'
      'and  ('
      '(substr(P2SIT,2,1)='#39'1'#39' or  substr(P2SIT,2,1)='#39'6'#39' ) )')
    UpdateObject = U_Ped02_SubSt
    Left = 540
    Top = 261
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'LOTSEQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'ORDEM'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_Ped02_SubStP2CODEMP: TFloatField
      FieldName = 'P2CODEMP'
    end
    object Tb_Ped02_SubStP2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
    end
    object Tb_Ped02_SubStP2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
    end
    object Tb_Ped02_SubStP2ORDEM: TFloatField
      FieldName = 'P2ORDEM'
    end
    object Tb_Ped02_SubStP2ITEM: TFloatField
      FieldName = 'P2ITEM'
    end
    object Tb_Ped02_SubStP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
    end
    object Tb_Ped02_SubStP2CODANT: TFloatField
      FieldName = 'P2CODANT'
    end
    object Tb_Ped02_SubStP2CODAGRU: TFloatField
      FieldName = 'P2CODAGRU'
    end
    object Tb_Ped02_SubStP2CONSIG: TFloatField
      FieldName = 'P2CONSIG'
    end
    object Tb_Ped02_SubStP2QTD: TFloatField
      FieldName = 'P2QTD'
    end
    object Tb_Ped02_SubStP2QTD_ATEN: TFloatField
      FieldName = 'P2QTD_ATEN'
    end
    object Tb_Ped02_SubStP2QTDDEV: TFloatField
      FieldName = 'P2QTDDEV'
    end
    object Tb_Ped02_SubStP2QTD_ENTREGUE: TFloatField
      FieldName = 'P2QTD_ENTREGUE'
    end
    object Tb_Ped02_SubStP2QTD_ENTREGANDO: TFloatField
      FieldName = 'P2QTD_ENTREGANDO'
    end
    object Tb_Ped02_SubStP2AMBIENTE: TStringField
      FieldName = 'P2AMBIENTE'
      Size = 30
    end
    object Tb_Ped02_SubStP2LOTE: TStringField
      FieldName = 'P2LOTE'
    end
    object Tb_Ped02_SubStP2PROMOCAO: TStringField
      FieldName = 'P2PROMOCAO'
      Size = 10
    end
    object Tb_Ped02_SubStP2DTVCTO: TDateTimeField
      FieldName = 'P2DTVCTO'
    end
    object Tb_Ped02_SubStP2DESC1: TFloatField
      FieldName = 'P2DESC1'
    end
    object Tb_Ped02_SubStP2DESC2: TFloatField
      FieldName = 'P2DESC2'
    end
    object Tb_Ped02_SubStP2DESC3: TFloatField
      FieldName = 'P2DESC3'
    end
    object Tb_Ped02_SubStP2VALDES: TFloatField
      FieldName = 'P2VALDES'
    end
    object Tb_Ped02_SubStP2PRECO: TFloatField
      FieldName = 'P2PRECO'
    end
    object Tb_Ped02_SubStP2SIT: TStringField
      FieldName = 'P2SIT'
      Size = 3
    end
    object Tb_Ped02_SubStP2CODFAB: TFloatField
      FieldName = 'P2CODFAB'
    end
    object Tb_Ped02_SubStP2CODGRU: TFloatField
      FieldName = 'P2CODGRU'
    end
    object Tb_Ped02_SubStP2BASEN: TFloatField
      FieldName = 'P2BASEN'
    end
    object Tb_Ped02_SubStP2ICMSN: TFloatField
      FieldName = 'P2ICMSN'
    end
    object Tb_Ped02_SubStP2REPAS: TFloatField
      FieldName = 'P2REPAS'
    end
    object Tb_Ped02_SubStP2BASER: TFloatField
      FieldName = 'P2BASER'
    end
    object Tb_Ped02_SubStP2ICMSR: TFloatField
      FieldName = 'P2ICMSR'
    end
    object Tb_Ped02_SubStP2LISTA: TFloatField
      FieldName = 'P2LISTA'
    end
    object Tb_Ped02_SubStP2STATUS: TFloatField
      FieldName = 'P2STATUS'
    end
    object Tb_Ped02_SubStP2PCOTAB: TFloatField
      FieldName = 'P2PCOTAB'
    end
    object Tb_Ped02_SubStP2PCOFPG: TFloatField
      FieldName = 'P2PCOFPG'
    end
    object Tb_Ped02_SubStP2UCPR: TFloatField
      FieldName = 'P2UCPR'
    end
    object Tb_Ped02_SubStP2PCOCUS: TFloatField
      FieldName = 'P2PCOCUS'
    end
    object Tb_Ped02_SubStP2PCOMAX: TFloatField
      FieldName = 'P2PCOMAX'
    end
    object Tb_Ped02_SubStP2TOTDES: TFloatField
      FieldName = 'P2TOTDES'
    end
    object Tb_Ped02_SubStP2DESCRAT: TFloatField
      FieldName = 'P2DESCRAT'
    end
    object Tb_Ped02_SubStP2ACRERAT: TFloatField
      FieldName = 'P2ACRERAT'
    end
    object Tb_Ped02_SubStP2TABELA: TStringField
      FieldName = 'P2TABELA'
      Size = 1
    end
    object Tb_Ped02_SubStP2ALIPI: TFloatField
      FieldName = 'P2ALIPI'
    end
    object Tb_Ped02_SubStP2VALIPI: TFloatField
      FieldName = 'P2VALIPI'
    end
    object Tb_Ped02_SubStP2BCINR: TFloatField
      FieldName = 'P2BCINR'
    end
    object Tb_Ped02_SubStP2ICMSNR: TFloatField
      FieldName = 'P2ICMSNR'
    end
    object Tb_Ped02_SubStP2ISENTAS: TFloatField
      FieldName = 'P2ISENTAS'
    end
    object Tb_Ped02_SubStP2TOTOUT: TFloatField
      FieldName = 'P2TOTOUT'
    end
    object Tb_Ped02_SubStP2ALIQ: TFloatField
      FieldName = 'P2ALIQ'
    end
    object Tb_Ped02_SubStP2ALIQNR: TFloatField
      FieldName = 'P2ALIQNR'
    end
    object Tb_Ped02_SubStP2PCOMIS: TFloatField
      FieldName = 'P2PCOMIS'
    end
    object Tb_Ped02_SubStP2VCOMIS: TFloatField
      FieldName = 'P2VCOMIS'
    end
    object Tb_Ped02_SubStP2PCOMIS_EXTRA: TFloatField
      FieldName = 'P2PCOMIS_EXTRA'
    end
    object Tb_Ped02_SubStP2VCOMIS_EXTRA: TFloatField
      FieldName = 'P2VCOMIS_EXTRA'
    end
    object Tb_Ped02_SubStP2PCOM02: TFloatField
      FieldName = 'P2PCOM02'
    end
    object Tb_Ped02_SubStP2VCOM02: TFloatField
      FieldName = 'P2VCOM02'
    end
    object Tb_Ped02_SubStP2VCOM03: TFloatField
      FieldName = 'P2VCOM03'
    end
    object Tb_Ped02_SubStP2PCOM03: TFloatField
      FieldName = 'P2PCOM03'
    end
    object Tb_Ped02_SubStP2VCOM04: TFloatField
      FieldName = 'P2VCOM04'
    end
    object Tb_Ped02_SubStP2DESCM: TFloatField
      FieldName = 'P2DESCM'
    end
    object Tb_Ped02_SubStP2CFO: TFloatField
      FieldName = 'P2CFO'
    end
    object Tb_Ped02_SubStP2CFOSUBECF: TFloatField
      FieldName = 'P2CFOSUBECF'
    end
    object Tb_Ped02_SubStP2SEMCOM: TFloatField
      FieldName = 'P2SEMCOM'
    end
    object Tb_Ped02_SubStP2TOTLIQ: TFloatField
      FieldName = 'P2TOTLIQ'
    end
    object Tb_Ped02_SubStP2PDESCF: TFloatField
      FieldName = 'P2PDESCF'
    end
    object Tb_Ped02_SubStP2VDESCF: TFloatField
      FieldName = 'P2VDESCF'
    end
    object Tb_Ped02_SubStP2ACRECONV: TFloatField
      FieldName = 'P2ACRECONV'
    end
    object Tb_Ped02_SubStP2ACREGER: TFloatField
      FieldName = 'P2ACREGER'
    end
    object Tb_Ped02_SubStP2STATUS_PED1: TFloatField
      FieldName = 'P2STATUS_PED1'
    end
    object Tb_Ped02_SubStP2TIPO: TFloatField
      FieldName = 'P2TIPO'
    end
    object Tb_Ped02_SubStP2ST_IVA: TFloatField
      FieldName = 'P2ST_IVA'
    end
    object Tb_Ped02_SubStP2ST_REDUT: TFloatField
      FieldName = 'P2ST_REDUT'
    end
    object Tb_Ped02_SubStP2ST_ICMCRED: TFloatField
      FieldName = 'P2ST_ICMCRED'
    end
    object Tb_Ped02_SubStP2ST_ICMDEB: TFloatField
      FieldName = 'P2ST_ICMDEB'
    end
    object Tb_Ped02_SubStP2REDUTICM: TFloatField
      FieldName = 'P2REDUTICM'
    end
    object Tb_Ped02_SubStP2PRAZO: TFloatField
      FieldName = 'P2PRAZO'
    end
    object Tb_Ped02_SubStP2ALPIS: TFloatField
      FieldName = 'P2ALPIS'
    end
    object Tb_Ped02_SubStP2VALPIS: TFloatField
      FieldName = 'P2VALPIS'
    end
    object Tb_Ped02_SubStP2ALCOFINS: TFloatField
      FieldName = 'P2ALCOFINS'
    end
    object Tb_Ped02_SubStP2COFINS: TFloatField
      FieldName = 'P2COFINS'
    end
    object Tb_Ped02_SubStP2CODVEN: TFloatField
      FieldName = 'P2CODVEN'
    end
    object Tb_Ped02_SubStP2TIPO_PCO: TFloatField
      FieldName = 'P2TIPO_PCO'
    end
    object Tb_Ped02_SubStP2CONS_PROPRIO: TFloatField
      FieldName = 'P2CONS_PROPRIO'
    end
    object Tb_Ped02_SubStP2CODPRO_ORI: TStringField
      FieldName = 'P2CODPRO_ORI'
      Size = 14
    end
    object Tb_Ped02_SubStP2NOMPRO_ORI: TStringField
      FieldName = 'P2NOMPRO_ORI'
      Size = 200
    end
    object Tb_Ped02_SubStP2CHAVE_NIVEL: TFloatField
      FieldName = 'P2CHAVE_NIVEL'
    end
    object Tb_Ped02_SubStP2PCRED_SN: TFloatField
      FieldName = 'P2PCRED_SN'
    end
    object Tb_Ped02_SubStP2PCREDSN: TFloatField
      FieldName = 'P2PCREDSN'
    end
    object Tb_Ped02_SubStP2COMPLEMENTO: TMemoField
      FieldName = 'P2COMPLEMENTO'
      BlobType = ftMemo
      Size = 500
    end
    object Tb_Ped02_SubStP2DESCPR: TFloatField
      FieldName = 'P2DESCPR'
    end
  end
  object U_Ped02_SubSt: TUpdateSQL
    ModifySQL.Strings = (
      'update CADP02'
      'set'
      '  P2CODEMP = :P2CODEMP,'
      '  P2LOTSEQ = :P2LOTSEQ,'
      '  P2CHAVE = :P2CHAVE,'
      '  P2ORDEM = :P2ORDEM,'
      '  P2ITEM = :P2ITEM,'
      '  P2CODPRO = :P2CODPRO,'
      '  P2CODANT = :P2CODANT,'
      '  P2CODAGRU = :P2CODAGRU,'
      '  P2CONSIG = :P2CONSIG,'
      '  P2QTD = :P2QTD,'
      '  P2QTD_ATEN = :P2QTD_ATEN,'
      '  P2QTDDEV = :P2QTDDEV,'
      '  P2QTD_ENTREGUE = :P2QTD_ENTREGUE,'
      '  P2QTD_ENTREGANDO = :P2QTD_ENTREGANDO,'
      '  P2AMBIENTE = :P2AMBIENTE,'
      '  P2LOTE = :P2LOTE,'
      '  P2PROMOCAO = :P2PROMOCAO,'
      '  P2DTVCTO = :P2DTVCTO,'
      '  P2DESC1 = :P2DESC1,'
      '  P2DESC2 = :P2DESC2,'
      '  P2DESC3 = :P2DESC3,'
      '  P2VALDES = :P2VALDES,'
      '  P2PRECO = :P2PRECO,'
      '  P2SIT = :P2SIT,'
      '  P2CODFAB = :P2CODFAB,'
      '  P2CODGRU = :P2CODGRU,'
      '  P2BASEN = :P2BASEN,'
      '  P2ICMSN = :P2ICMSN,'
      '  P2REPAS = :P2REPAS,'
      '  P2BASER = :P2BASER,'
      '  P2ICMSR = :P2ICMSR,'
      '  P2LISTA = :P2LISTA,'
      '  P2STATUS = :P2STATUS,'
      '  P2PCOTAB = :P2PCOTAB,'
      '  P2PCOFPG = :P2PCOFPG,'
      '  P2UCPR = :P2UCPR,'
      '  P2PCOCUS = :P2PCOCUS,'
      '  P2PCOMAX = :P2PCOMAX,'
      '  P2TOTDES = :P2TOTDES,'
      '  P2DESCRAT = :P2DESCRAT,'
      '  P2ACRERAT = :P2ACRERAT,'
      '  P2TABELA = :P2TABELA,'
      '  P2ALIPI = :P2ALIPI,'
      '  P2VALIPI = :P2VALIPI,'
      '  P2BCINR = :P2BCINR,'
      '  P2ICMSNR = :P2ICMSNR,'
      '  P2ISENTAS = :P2ISENTAS,'
      '  P2TOTOUT = :P2TOTOUT,'
      '  P2ALIQ = :P2ALIQ,'
      '  P2ALIQNR = :P2ALIQNR,'
      '  P2PCOMIS = :P2PCOMIS,'
      '  P2VCOMIS = :P2VCOMIS,'
      '  P2PCOMIS_EXTRA = :P2PCOMIS_EXTRA,'
      '  P2VCOMIS_EXTRA = :P2VCOMIS_EXTRA,'
      '  P2PCOM02 = :P2PCOM02,'
      '  P2VCOM02 = :P2VCOM02,'
      '  P2VCOM03 = :P2VCOM03,'
      '  P2PCOM03 = :P2PCOM03,'
      '  P2VCOM04 = :P2VCOM04,'
      '  P2DESCM = :P2DESCM,'
      '  P2CFO = :P2CFO,'
      '  P2CFOSUBECF = :P2CFOSUBECF,'
      '  P2SEMCOM = :P2SEMCOM,'
      '  P2TOTLIQ = :P2TOTLIQ,'
      '  P2PDESCF = :P2PDESCF,'
      '  P2VDESCF = :P2VDESCF,'
      '  P2ACRECONV = :P2ACRECONV,'
      '  P2ACREGER = :P2ACREGER,'
      '  P2STATUS_PED1 = :P2STATUS_PED1,'
      '  P2TIPO = :P2TIPO,'
      '  P2ST_IVA = :P2ST_IVA,'
      '  P2ST_REDUT = :P2ST_REDUT,'
      '  P2ST_ICMCRED = :P2ST_ICMCRED,'
      '  P2ST_ICMDEB = :P2ST_ICMDEB,'
      '  P2REDUTICM = :P2REDUTICM,'
      '  P2PRAZO = :P2PRAZO,'
      '  P2ALPIS = :P2ALPIS,'
      '  P2VALPIS = :P2VALPIS,'
      '  P2ALCOFINS = :P2ALCOFINS,'
      '  P2COFINS = :P2COFINS,'
      '  P2CODVEN = :P2CODVEN,'
      '  P2COMPLEMENTO = :P2COMPLEMENTO,'
      '  P2TIPO_PCO = :P2TIPO_PCO,'
      '  P2CONS_PROPRIO = :P2CONS_PROPRIO,'
      '  P2CODPRO_ORI = :P2CODPRO_ORI,'
      '  P2NOMPRO_ORI = :P2NOMPRO_ORI,'
      '  P2CHAVE_NIVEL = :P2CHAVE_NIVEL,'
      '  P2PCRED_SN = :P2PCRED_SN,'
      '  P2PCREDSN = :P2PCREDSN'
      'where'
      '  P2CODEMP = :OLD_P2CODEMP and'
      '  P2LOTSEQ = :OLD_P2LOTSEQ and'
      '  P2CHAVE = :OLD_P2CHAVE and'
      '  P2ORDEM = :OLD_P2ORDEM and'
      '  P2ITEM = :OLD_P2ITEM')
    InsertSQL.Strings = (
      'insert into CADP02'
      
        '  (P2CODEMP, P2LOTSEQ, P2CHAVE, P2ORDEM, P2ITEM, P2CODPRO, P2COD' +
        'ANT, P2CODAGRU, '
      
        '   P2CONSIG, P2QTD, P2QTD_ATEN, P2QTDDEV, P2QTD_ENTREGUE, P2QTD_' +
        'ENTREGANDO, '
      
        '   P2AMBIENTE, P2LOTE, P2PROMOCAO, P2DTVCTO, P2DESC1, P2DESC2, P' +
        '2DESC3, '
      
        '   P2VALDES, P2PRECO, P2SIT, P2CODFAB, P2CODGRU, P2BASEN, P2ICMS' +
        'N, P2REPAS, '
      
        '   P2BASER, P2ICMSR, P2LISTA, P2STATUS, P2PCOTAB, P2PCOFPG, P2UC' +
        'PR, P2PCOCUS, '
      
        '   P2PCOMAX, P2TOTDES, P2DESCRAT, P2ACRERAT, P2TABELA, P2ALIPI, ' +
        'P2VALIPI, '
      
        '   P2BCINR, P2ICMSNR, P2ISENTAS, P2TOTOUT, P2ALIQ, P2ALIQNR, P2P' +
        'COMIS, '
      
        '   P2VCOMIS, P2PCOMIS_EXTRA, P2VCOMIS_EXTRA, P2PCOM02, P2VCOM02,' +
        ' P2VCOM03, '
      
        '   P2PCOM03, P2VCOM04, P2DESCM, P2CFO, P2CFOSUBECF, P2SEMCOM, P2' +
        'TOTLIQ, '
      
        '   P2PDESCF, P2VDESCF, P2ACRECONV, P2ACREGER, P2STATUS_PED1, P2T' +
        'IPO, P2ST_IVA, '
      
        '   P2ST_REDUT, P2ST_ICMCRED, P2ST_ICMDEB, P2REDUTICM, P2PRAZO, P' +
        '2ALPIS, '
      
        '   P2VALPIS, P2ALCOFINS, P2COFINS, P2CODVEN, P2COMPLEMENTO, P2TI' +
        'PO_PCO, '
      
        '   P2CONS_PROPRIO, P2CODPRO_ORI, P2NOMPRO_ORI, P2CHAVE_NIVEL, P2' +
        'PCRED_SN, '
      '   P2PCREDSN)'
      'values'
      
        '  (:P2CODEMP, :P2LOTSEQ, :P2CHAVE, :P2ORDEM, :P2ITEM, :P2CODPRO,' +
        ' :P2CODANT, '
      
        '   :P2CODAGRU, :P2CONSIG, :P2QTD, :P2QTD_ATEN, :P2QTDDEV, :P2QTD' +
        '_ENTREGUE, '
      
        '   :P2QTD_ENTREGANDO, :P2AMBIENTE, :P2LOTE, :P2PROMOCAO, :P2DTVC' +
        'TO, :P2DESC1, '
      
        '   :P2DESC2, :P2DESC3, :P2VALDES, :P2PRECO, :P2SIT, :P2CODFAB, :' +
        'P2CODGRU, '
      
        '   :P2BASEN, :P2ICMSN, :P2REPAS, :P2BASER, :P2ICMSR, :P2LISTA, :' +
        'P2STATUS, '
      
        '   :P2PCOTAB, :P2PCOFPG, :P2UCPR, :P2PCOCUS, :P2PCOMAX, :P2TOTDE' +
        'S, :P2DESCRAT, '
      
        '   :P2ACRERAT, :P2TABELA, :P2ALIPI, :P2VALIPI, :P2BCINR, :P2ICMS' +
        'NR, :P2ISENTAS, '
      
        '   :P2TOTOUT, :P2ALIQ, :P2ALIQNR, :P2PCOMIS, :P2VCOMIS, :P2PCOMI' +
        'S_EXTRA, '
      
        '   :P2VCOMIS_EXTRA, :P2PCOM02, :P2VCOM02, :P2VCOM03, :P2PCOM03, ' +
        ':P2VCOM04, '
      
        '   :P2DESCM, :P2CFO, :P2CFOSUBECF, :P2SEMCOM, :P2TOTLIQ, :P2PDES' +
        'CF, :P2VDESCF, '
      
        '   :P2ACRECONV, :P2ACREGER, :P2STATUS_PED1, :P2TIPO, :P2ST_IVA, ' +
        ':P2ST_REDUT, '
      
        '   :P2ST_ICMCRED, :P2ST_ICMDEB, :P2REDUTICM, :P2PRAZO, :P2ALPIS,' +
        ' :P2VALPIS, '
      
        '   :P2ALCOFINS, :P2COFINS, :P2CODVEN, :P2COMPLEMENTO, :P2TIPO_PC' +
        'O, :P2CONS_PROPRIO, '
      
        '   :P2CODPRO_ORI, :P2NOMPRO_ORI, :P2CHAVE_NIVEL, :P2PCRED_SN, :P' +
        '2PCREDSN)')
    DeleteSQL.Strings = (
      'delete from CADP02'
      'where'
      '  P2CODEMP = :OLD_P2CODEMP and'
      '  P2LOTSEQ = :OLD_P2LOTSEQ and'
      '  P2CHAVE = :OLD_P2CHAVE and'
      '  P2ORDEM = :OLD_P2ORDEM and'
      '  P2ITEM = :OLD_P2ITEM')
    Left = 588
    Top = 261
  end
end

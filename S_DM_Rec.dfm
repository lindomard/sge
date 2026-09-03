object Frm_DM_Rec: TFrm_DM_Rec
  Left = 23
  Top = 19
  Width = 766
  Height = 467
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Recebimentos do Dispositivo M'#243'vel'
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
    Width = 758
    Height = 57
    Align = alTop
    Caption = 'Filtros:'
    TabOrder = 0
    OnEnter = GroupBox1Enter
    object Label1: TLabel
      Left = 9
      Top = 15
      Width = 24
      Height = 13
      Caption = 'Tipo:'
    end
    object Label2: TLabel
      Left = 113
      Top = 17
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label3: TLabel
      Left = 11
      Top = 39
      Width = 22
      Height = 13
      Caption = 'NR.:'
    end
    object Label4: TLabel
      Left = 124
      Top = 39
      Width = 24
      Height = 13
      Caption = 'Lote:'
    end
    object CB_TIPO: TComboBox
      Left = 37
      Top = 12
      Width = 68
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Todos'
      OnExit = CB_TIPOExit
      Items.Strings = (
        'Todos'
        'VD'
        'SP'
        'TD')
    end
    object CODIGO: TEdit
      Left = 154
      Top = 14
      Width = 68
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnExit = CODIGOExit
      OnKeyPress = CODIGOKeyPress
    end
    object NOME: TEdit
      Left = 232
      Top = 14
      Width = 332
      Height = 19
      Color = clBtnFace
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object NR: TEdit
      Left = 36
      Top = 35
      Width = 69
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnExit = NRExit
    end
    object LOTE: TEdit
      Left = 153
      Top = 35
      Width = 69
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = LOTEExit
    end
    object bbAtualizar: TBitBtn
      Left = 576
      Top = 9
      Width = 133
      Height = 22
      Caption = '&Atualizar'
      TabOrder = 5
      OnClick = bbAtualizarClick
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
    object bbSair: TBitBtn
      Left = 576
      Top = 31
      Width = 133
      Height = 22
      Caption = '&Sair'
      TabOrder = 6
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 405
    Width = 758
    Height = 28
    Align = alBottom
    TabOrder = 1
    OnEnter = GroupBox1Enter
    object bbImprimir: TBitBtn
      Left = 20
      Top = 0
      Width = 107
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = bbImprimirClick
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
    object bbBaixar: TBitBtn
      Left = 596
      Top = 0
      Width = 107
      Height = 25
      Caption = '&Efetuar baixas'
      TabOrder = 1
      OnClick = bbBaixarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F777773FF333333008F88800
        33333337733333773F33330FFF8F888F033333733333333373F330DEFFF8F8FE
        D03337F33333333337F330DDEFFFFFEDD0333733333FFF33373F0BBFDE000EDF
        BB037F33337773F3337F0AABB08880BBAA037F3337F3F7F3337F0EEAA08080AA
        EE037F3337F737F3337F0AABB08880BBAA037F33373FF733337F0BBFDE000EDB
        BB0373F333777333337330DDEFFFFFEDD03337F33333333337F330DEF8F8FFFE
        D033373F333333333733330FFF8F8FFF03333373FF33333F733333300FF8F800
        3333333773FFFF77333333333000003333333333377777333333}
      NumGlyphs = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 57
    Width = 241
    Height = 348
    Align = alLeft
    Caption = 'Recebimentos Pendentes:'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 237
      Height = 290
      Align = alClient
      DataSource = Src_Rec
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = GroupBox1Enter
      Columns = <
        item
          Expanded = False
          FieldName = 'DPTPOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DPCODIGO'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DPLOTE'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DPNR'
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 2
      Top = 305
      Width = 237
      Height = 41
      Align = alBottom
      TabOrder = 1
      OnEnter = GroupBox1Enter
      object bbExcluir: TBitBtn
        Left = 47
        Top = 3
        Width = 134
        Height = 37
        Caption = '&Excluir'
        TabOrder = 0
        OnClick = bbExcluirClick
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
      end
    end
  end
  object Panel2: TPanel
    Left = 241
    Top = 57
    Width = 517
    Height = 348
    Align = alClient
    TabOrder = 3
    object GroupBox3: TGroupBox
      Left = 1
      Top = 1
      Width = 515
      Height = 155
      Align = alTop
      Caption = 'T'#237'tulos Recebidos:'
      TabOrder = 0
      object GroupBox5: TGroupBox
        Left = 2
        Top = 79
        Width = 511
        Height = 74
        Align = alBottom
        Caption = 'Editar dados do Documento Recebido:'
        TabOrder = 0
        object Label5: TLabel
          Left = 4
          Top = 15
          Width = 40
          Height = 13
          Caption = 'N'#250'mero:'
        end
        object Label6: TLabel
          Left = 105
          Top = 14
          Width = 28
          Height = 13
          Caption = 'Desd:'
        end
        object Label7: TLabel
          Left = 167
          Top = 12
          Width = 23
          Height = 13
          Caption = 'Dup:'
        end
        object Label8: TLabel
          Left = 225
          Top = 13
          Width = 24
          Height = 13
          Caption = 'Tipo:'
        end
        object Label9: TLabel
          Left = 294
          Top = 12
          Width = 19
          Height = 13
          Caption = 'NR:'
        end
        object Label10: TLabel
          Left = 12
          Top = 35
          Width = 27
          Height = 13
          Caption = 'Valor:'
        end
        object Label11: TLabel
          Left = 186
          Top = 37
          Width = 28
          Height = 13
          Caption = 'Juros:'
        end
        object Label12: TLabel
          Left = 354
          Top = 36
          Width = 49
          Height = 13
          Caption = 'Desconto:'
        end
        object Label13: TLabel
          Left = 366
          Top = 13
          Width = 56
          Height = 13
          Caption = 'Dt.Emiss'#227'o:'
        end
        object DBEdit1: TDBEdit
          Left = 45
          Top = 12
          Width = 56
          Height = 19
          Ctl3D = False
          DataField = 'DPNUMERO'
          DataSource = DM2.Src_DupRec
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 134
          Top = 11
          Width = 28
          Height = 19
          Ctl3D = False
          DataField = 'DPDESD'
          DataSource = DM2.Src_DupRec
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 192
          Top = 11
          Width = 25
          Height = 19
          Ctl3D = False
          DataField = 'DPDUP'
          DataSource = DM2.Src_DupRec
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 252
          Top = 11
          Width = 34
          Height = 19
          Ctl3D = False
          DataField = 'DPTIPO'
          DataSource = DM2.Src_DupRec
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 316
          Top = 10
          Width = 46
          Height = 19
          Ctl3D = False
          DataField = 'DPNR'
          DataSource = DM2.Src_DupRec
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 45
          Top = 32
          Width = 97
          Height = 19
          Ctl3D = False
          DataField = 'DPVALOR'
          DataSource = DM2.Src_DupRec
          ParentCtl3D = False
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 216
          Top = 32
          Width = 97
          Height = 19
          Ctl3D = False
          DataField = 'DPJUROS'
          DataSource = DM2.Src_DupRec
          ParentCtl3D = False
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 411
          Top = 32
          Width = 97
          Height = 19
          Ctl3D = False
          DataField = 'DPDESC'
          DataSource = DM2.Src_DupRec
          ParentCtl3D = False
          TabOrder = 7
        end
        object DBNavigator1: TDBNavigator
          Left = 2
          Top = 53
          Width = 507
          Height = 19
          DataSource = DM2.Src_DupRec
          Align = alBottom
          TabOrder = 8
        end
        object dtemis: TMaskEdit
          Left = 424
          Top = 10
          Width = 81
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 9
          Text = '  /  /    '
          Visible = False
        end
      end
      object DBGrid2: TDBGrid
        Left = 2
        Top = 15
        Width = 511
        Height = 64
        Align = alClient
        DataSource = DM2.Src_DupRec
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnEnter = GroupBox1Enter
        Columns = <
          item
            Expanded = False
            FieldName = 'DPNUMERO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DPDESD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DPDUP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DPCODCLI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DPCODVEN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtemis'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DPVALOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DPJUROS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DPDESC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DPTIPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DPLOTENV'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DPORIGEM'
            Visible = True
          end>
      end
    end
    object GroupBox4: TGroupBox
      Left = 1
      Top = 156
      Width = 515
      Height = 191
      Align = alClient
      Caption = 'Documentos Recebidos:'
      TabOrder = 1
      object GroupBox6: TGroupBox
        Left = 2
        Top = 73
        Width = 511
        Height = 116
        Align = alBottom
        Caption = 'Editar dados do Recebimento:'
        TabOrder = 0
        object Label14: TLabel
          Left = 6
          Top = 17
          Width = 57
          Height = 13
          Caption = 'Forma Pgto:'
        end
        object Label15: TLabel
          Left = 216
          Top = 16
          Width = 27
          Height = 13
          Caption = 'Valor:'
        end
        object Label16: TLabel
          Left = 4
          Top = 38
          Width = 40
          Height = 13
          Caption = 'N'#250'mero:'
        end
        object Label17: TLabel
          Left = 104
          Top = 39
          Width = 34
          Height = 13
          Caption = 'Banco:'
        end
        object Label18: TLabel
          Left = 210
          Top = 39
          Width = 27
          Height = 13
          Caption = 'S'#233'rie:'
        end
        object Label19: TLabel
          Left = 311
          Top = 39
          Width = 42
          Height = 13
          Caption = 'Agencia:'
        end
        object Label20: TLabel
          Left = 417
          Top = 38
          Width = 33
          Height = 13
          Caption = 'Comp.:'
        end
        object Label21: TLabel
          Left = 18
          Top = 57
          Width = 25
          Height = 13
          Caption = 'C/C.:'
        end
        object Label22: TLabel
          Left = 162
          Top = 58
          Width = 70
          Height = 13
          Caption = 'Inscri'#231#227'o/RG.:'
        end
        object Label23: TLabel
          Left = 350
          Top = 59
          Width = 73
          Height = 13
          Caption = 'Dt.Nascimento:'
        end
        object Label24: TLabel
          Left = 369
          Top = 15
          Width = 52
          Height = 13
          Caption = 'Data Dep.:'
        end
        object Label25: TLabel
          Left = -1
          Top = 77
          Width = 44
          Height = 13
          Caption = 'Emitente:'
        end
        object DBEdit10: TDBEdit
          Left = 247
          Top = 14
          Width = 97
          Height = 19
          Ctl3D = False
          DataField = 'DRVALOR'
          DataSource = DM2.Src_DupDRec
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit11: TDBEdit
          Left = 45
          Top = 35
          Width = 56
          Height = 19
          Ctl3D = False
          DataField = 'DRNUMERO'
          DataSource = DM2.Src_DupDRec
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBEdit12: TDBEdit
          Left = 145
          Top = 35
          Width = 56
          Height = 19
          Ctl3D = False
          DataField = 'DRBANCO'
          DataSource = DM2.Src_DupDRec
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBEdit13: TDBEdit
          Left = 247
          Top = 35
          Width = 56
          Height = 19
          Ctl3D = False
          DataField = 'DRSERIE'
          DataSource = DM2.Src_DupDRec
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBEdit14: TDBEdit
          Left = 358
          Top = 36
          Width = 56
          Height = 19
          Ctl3D = False
          DataField = 'DRAGENCIA'
          DataSource = DM2.Src_DupDRec
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBEdit15: TDBEdit
          Left = 452
          Top = 35
          Width = 56
          Height = 19
          Ctl3D = False
          DataField = 'DRCOMP'
          DataSource = DM2.Src_DupDRec
          ParentCtl3D = False
          TabOrder = 5
        end
        object DBEdit16: TDBEdit
          Left = 45
          Top = 55
          Width = 109
          Height = 19
          Ctl3D = False
          DataField = 'DRCC'
          DataSource = DM2.Src_DupDRec
          ParentCtl3D = False
          TabOrder = 6
        end
        object DBEdit17: TDBEdit
          Left = 236
          Top = 55
          Width = 109
          Height = 19
          Ctl3D = False
          DataField = 'DRCC'
          DataSource = DM2.Src_DupDRec
          ParentCtl3D = False
          TabOrder = 7
        end
        object DBEdit20: TDBEdit
          Left = 45
          Top = 75
          Width = 381
          Height = 19
          Ctl3D = False
          DataField = 'DREMIT'
          DataSource = DM2.Src_DupDRec
          ParentCtl3D = False
          TabOrder = 8
        end
        object DBNavigator2: TDBNavigator
          Left = 2
          Top = 95
          Width = 507
          Height = 19
          DataSource = DM2.Src_DupDRec
          Align = alBottom
          TabOrder = 9
          BeforeAction = DBNavigator2BeforeAction
        end
        object cb_forma: TComboBox
          Left = 66
          Top = 13
          Width = 141
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 10
          Text = 'Dinheiro'
          Items.Strings = (
            'Dinheiro'
            'Chq.A Vista'
            'Chq.Pre-Dat'
            'Ordem Pgto.'
            'Dep.C/C'
            'Cartao')
        end
        object data: TMaskEdit
          Left = 426
          Top = 11
          Width = 81
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 11
          Text = '  /  /    '
        end
        object dtnas: TMaskEdit
          Left = 424
          Top = 55
          Width = 81
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 12
          Text = '  /  /    '
        end
      end
      object DBGrid3: TDBGrid
        Left = 2
        Top = 15
        Width = 511
        Height = 58
        Align = alClient
        DataSource = DM2.Src_DupDRec
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnEnter = GroupBox1Enter
        Columns = <
          item
            Expanded = False
            FieldName = 'DRVALOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DRFORMA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DRNUMERO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DRSERIE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DRCC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DRCOMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DRAGENCIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DREMIT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DRRG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DRCGC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtnas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DRTIPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DRLOTENV'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DRORIGEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DRBANCO'
            Visible = True
          end>
      end
    end
  end
  object Src_Rec: TDataSource
    DataSet = Qr_Rec
    OnDataChange = Src_RecDataChange
    Left = 384
    Top = 32
  end
  object Qr_Rec: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select DPTPOR,DPCODIGO,DPLOTE,DPNR'
      'from CADDUPREC'
      'group by DPTPOR,DPCODIGO,DPLOTE,DPNR'
      '')
    Left = 415
    Top = 33
    object Qr_RecDPTPOR: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'DPTPOR'
      Origin = 'SG_ASSOC.CADDUPREC.DPTPOR'
      Size = 2
    end
    object Qr_RecDPCODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'DPCODIGO'
      Origin = 'SG_ASSOC.CADDUPREC.DPCODIGO'
    end
    object Qr_RecDPLOTE: TFloatField
      DisplayLabel = 'Lote'
      FieldName = 'DPLOTE'
      Origin = 'SG_ASSOC.CADDUPREC.DPLOTE'
    end
    object Qr_RecDPNR: TFloatField
      DisplayLabel = 'NR'
      FieldName = 'DPNR'
      Origin = 'SG_ASSOC.CADDUPREC.DPNR'
    end
  end
  object Src_DupRec: TDataSource
    DataSet = DM2.Tb_DupRec
    OnDataChange = Src_DupRecDataChange
    Left = 464
    Top = 40
  end
  object Src_DupDRec: TDataSource
    DataSet = DM2.Tb_DupDRec
    OnDataChange = Src_DupDRecDataChange
    Left = 584
    Top = 24
  end
end

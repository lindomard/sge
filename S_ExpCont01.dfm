object Frm_ExpCont01: TFrm_ExpCont01
  Left = 51
  Top = 42
  Width = 749
  Height = 528
  Caption = 'Gerador de Arquivos para Contabilidade 01'
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 733
    Height = 490
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Principal'
      object Panel3: TPanel
        Left = 0
        Top = 412
        Width = 725
        Height = 50
        Align = alBottom
        TabOrder = 0
        object sbSalvarPadrao: TSpeedButton
          Left = 287
          Top = 7
          Width = 169
          Height = 39
          Caption = '&Salvar Padr'#227'o'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
            00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
            00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
            00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
            0003737FFFFFFFFF7F7330099999999900333777777777777733}
          NumGlyphs = 2
          OnClick = sbSalvarPadraoClick
        end
        object bbSair: TBitBtn
          Left = 570
          Top = 7
          Width = 169
          Height = 39
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
          NumGlyphs = 2
        end
        object BitBtn1: TBitBtn
          Left = 20
          Top = 7
          Width = 169
          Height = 39
          Caption = '&Gerar'
          TabOrder = 1
          OnClick = BitBtn1Click
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
      object Panel4: TPanel
        Left = 0
        Top = 315
        Width = 725
        Height = 97
        Align = alBottom
        TabOrder = 1
        object Label1: TLabel
          Left = 16
          Top = 12
          Width = 56
          Height = 13
          Caption = 'Per'#237'odo de '
        end
        object Label2: TLabel
          Left = 151
          Top = 12
          Width = 6
          Height = 13
          Caption = 'a'
        end
        object Label3: TLabel
          Left = 16
          Top = 35
          Width = 54
          Height = 13
          Caption = 'Estado......:'
        end
        object Label4: TLabel
          Left = 15
          Top = 57
          Width = 76
          Height = 13
          Caption = 'Nome da Pasta:'
        end
        object SB01: TSpeedButton
          Left = 686
          Top = 51
          Width = 23
          Height = 19
          Hint = 'Definir Caminho'
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SB01Click
        end
        object Label5: TLabel
          Left = 14
          Top = 74
          Width = 85
          Height = 13
          Caption = 'Nome do Arquivo:'
        end
        object MDT1: TMaskEdit
          Left = 77
          Top = 8
          Width = 72
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 0
          Text = '  /  /    '
        end
        object MDT2: TMaskEdit
          Left = 160
          Top = 8
          Width = 72
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 1
          Text = '  /  /    '
        end
        object RGTNF: TRadioGroup
          Left = 236
          Top = 0
          Width = 213
          Height = 29
          Caption = 'Tipo de Notas:'
          Columns = 3
          Ctl3D = False
          ItemIndex = 0
          Items.Strings = (
            '&Geral'
            '&Sa'#237'das'
            '&Entradas')
          ParentCtl3D = False
          TabOrder = 2
        end
        object UF: TEdit
          Left = 77
          Top = 30
          Width = 36
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnExit = UFExit
          OnKeyDown = UFKeyDown
        end
        object NOMUF: TEdit
          Left = 122
          Top = 30
          Width = 327
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 4
          Text = 'Todos...'
        end
        object MPASTA: TEdit
          Left = 102
          Top = 52
          Width = 584
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          Text = 'C:\SGE\'
        end
        object RG_DOC: TRadioGroup
          Left = 452
          Top = -2
          Width = 133
          Height = 52
          Caption = 'Documentos:'
          Ctl3D = False
          ItemIndex = 0
          Items.Strings = (
            '&Todos'
            '&Notas Fiscais'
            '&Cupom Fiscal'
            'NFCE')
          ParentCtl3D = False
          TabOrder = 6
        end
        object NARQ: TEdit
          Left = 102
          Top = 72
          Width = 482
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          Text = 'EXP01.TXT'
        end
        object RG_MODELO: TRadioGroup
          Left = 588
          Top = -2
          Width = 133
          Height = 52
          Caption = 'Modelo:'
          Ctl3D = False
          ItemIndex = 1
          Items.Strings = (
            'Modelo 01'
            'Modelo 02(Apsen)')
          ParentCtl3D = False
          TabOrder = 8
        end
        object NUMNF: TEdit
          Left = 582
          Top = 72
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 9
          Visible = False
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 152
        Width = 725
        Height = 163
        Align = alBottom
        TabOrder = 2
        object DBGrid2: TDBGrid
          Left = 1
          Top = 1
          Width = 723
          Height = 161
          Align = alClient
          DataSource = DM5.Src_NE
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'cgc'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'uf'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NECODEMP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NECODFOR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NENUMERO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NESERIE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NECFO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NEDTENT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NEDTEMIS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NESUBSER'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NEBASEN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NEICMSN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NEBASER'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NEICMSR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NEFRETE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NESEG'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NEOUTRAS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NEIPI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETOTMER'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETOTNOT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETOTDES'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETOTPOS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETOTNEG'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETOTINA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NECHAVEP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NEALIQ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETIPO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CFCODEMP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FCICMSR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FICMSN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FALIQ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FIVAPOS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FIVANEG'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FIVAINA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FRBCIR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FRBICN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FICMSC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FICMSD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FTIPOF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FTDESP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FDIAE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FDIAV'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FFREQ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FTIPOI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FTCALC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NEMODELO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'inscricao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CFCODCFO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CFCFOENT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FBAIRRO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FCIDADE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FUF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FSTATUS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NECODUSR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NEDTALT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NEHRALT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NESTATUS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CFNOME'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FCODEMP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FCODFOR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FRAZAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FDENOM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FNLOG'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FNUM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FCOMPL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FCODBAI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FCODLOC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FCEP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FCGC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FIE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FEMAIL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FDTCAD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FCONT01'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FFONEC01'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FCONT02'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FFONEC02'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FCONT03'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FFONEC03'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FFONE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FFAX'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FOBS1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FOBS2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FCODEFO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FCOMIS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FCODCCD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FCODCCC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FCODDEPD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FCODDEPC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FDESCMVD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FDESCMVC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FCODUSR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FDTALT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FHRALT'
              Visible = True
            end>
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 725
        Height = 152
        Align = alClient
        TabOrder = 3
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 723
          Height = 150
          Align = alClient
          DataSource = DM5.Src_NS
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'NSTIPO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSNUMERO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSSERIE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSCODCLI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSDTEMIS'
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSCFO1'
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSCFO2'
              Width = 41
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSCNPJ'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSIE'
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSTOTNOTA'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'uf'
              Width = 26
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cgc'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'inscricao'
              Visible = True
            end>
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Codigos Complementares por Nota de Saida'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 32
        Top = 0
        Width = 265
        Height = 217
        Caption = 'Codigos Complementares'
        TabOrder = 0
        object STG_CFOP_COMP: TStringGrid
          Left = 2
          Top = 15
          Width = 261
          Height = 125
          Align = alClient
          ColCount = 3
          DefaultRowHeight = 15
          FixedCols = 0
          RowCount = 6
          ScrollBars = ssVertical
          TabOrder = 0
          OnDrawCell = STG_CFOP_COMPDrawCell
          ColWidths = (
            67
            66
            66)
        end
        object Panel5: TPanel
          Left = 2
          Top = 166
          Width = 261
          Height = 25
          Align = alBottom
          TabOrder = 1
          object bbEditar: TBitBtn
            Left = 1
            Top = 0
            Width = 70
            Height = 25
            Caption = 'Editar'
            TabOrder = 0
            OnClick = bbEditarClick
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
            NumGlyphs = 2
          end
          object bbCancelar: TBitBtn
            Left = 70
            Top = 0
            Width = 68
            Height = 25
            Caption = 'Cancelar'
            TabOrder = 2
            OnClick = bbCancelarClick
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
          object bbExcluir: TBitBtn
            Left = 137
            Top = 0
            Width = 70
            Height = 25
            Caption = 'Excluir'
            TabOrder = 1
            OnClick = bbExcluirClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333333333333333333333333FFF33FF333FFF339993370733
              999333777FF37FF377733339993000399933333777F777F77733333399970799
              93333333777F7377733333333999399933333333377737773333333333990993
              3333333333737F73333333333331013333333333333777FF3333333333910193
              333333333337773FF3333333399000993333333337377737FF33333399900099
              93333333773777377FF333399930003999333337773777F777FF339993370733
              9993337773337333777333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
            NumGlyphs = 2
          end
        end
        object Panel6: TPanel
          Left = 2
          Top = 191
          Width = 261
          Height = 24
          Align = alBottom
          TabOrder = 2
          object SpeedButton1: TSpeedButton
            Left = 0
            Top = 2
            Width = 207
            Height = 22
            Caption = 'Salvar Padrao'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
              00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
              00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
              00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
              00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
              00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
              00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
              0003737FFFFFFFFF7F7330099999999900333777777777777733}
            NumGlyphs = 2
            OnClick = SpeedButton1Click
          end
        end
        object Panel7: TPanel
          Left = 2
          Top = 140
          Width = 261
          Height = 26
          Align = alBottom
          TabOrder = 3
          object lbl_sit: TLabel
            Left = 208
            Top = 6
            Width = 43
            Height = 13
            Caption = 'Incluindo'
          end
          object txt_cfop: TEdit
            Left = 1
            Top = 3
            Width = 69
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnEnter = txt_cfopEnter
            OnExit = txt_cfopExit
          end
          object txt_aliq: TEdit
            Left = 69
            Top = 3
            Width = 69
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnExit = txt_aliqExit
          end
          object txt_codcomp: TEdit
            Left = 137
            Top = 3
            Width = 69
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            OnExit = txt_codcompExit
          end
        end
      end
    end
  end
  object Qr_Tempor: TQuery
    DatabaseName = '\TEMP'
    Left = 560
    Top = 24
  end
end

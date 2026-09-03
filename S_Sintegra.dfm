object Frm_Sintegra: TFrm_Sintegra
  Left = 0
  Top = 0
  Width = 960
  Height = 570
  Caption = 'Gerador do Arquivo Magn'#233'tico (SINTEGRA)'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 952
    Height = 190
    Align = alClient
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 950
      Height = 188
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
        end
        item
          Expanded = False
          FieldName = 'NSNUMCUP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NSNFCE_NUMERO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NSNFCE_DATA'
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 190
    Width = 952
    Height = 92
    Align = alBottom
    TabOrder = 3
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 950
      Height = 90
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
  object Panel3: TPanel
    Left = 0
    Top = 482
    Width = 952
    Height = 57
    Align = alBottom
    TabOrder = 1
    object bbSair: TBitBtn
      Left = 597
      Top = 21
      Width = 169
      Height = 34
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
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
    object bbLayout: TBitBtn
      Left = 311
      Top = 21
      Width = 169
      Height = 34
      Hint = 'Mostrar as Informa'#231#245'es'#13#10'do Layout'
      Caption = '&Informa'#231#245'es do Layout'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbLayoutClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
    object bbGerarSintegra: TBitBtn
      Left = 7
      Top = 20
      Width = 169
      Height = 34
      Hint = 'Gera o arquivo do Sintegra'
      Caption = '&Gerar Arquivo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bbGerarSintegraClick
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
    Top = 282
    Width = 952
    Height = 200
    Align = alBottom
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 56
      Height = 13
      Caption = 'Per'#237'odo de '
    end
    object Label2: TLabel
      Left = 153
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
    object Label5: TLabel
      Left = 14
      Top = 74
      Width = 85
      Height = 13
      Caption = 'Nome do Arquivo:'
    end
    object Label13: TLabel
      Left = 424
      Top = 78
      Width = 26
      Height = 13
      Caption = 'Nota:'
    end
    object lbl_inventar: TLabel
      Left = 163
      Top = 94
      Width = 81
      Height = 13
      Caption = 'Nome Invent'#225'rio:'
      Visible = False
    end
    object Label6: TLabel
      Left = 67
      Top = 120
      Width = 51
      Height = 13
      Caption = 'Finalidade:'
    end
    object Label7: TLabel
      Left = 8
      Top = 139
      Width = 111
      Height = 13
      Caption = 'Natureza da Opera'#231#227'o:'
    end
    object Label8: TLabel
      Left = 69
      Top = 161
      Width = 48
      Height = 13
      Caption = 'Conv'#234'nio:'
    end
    object Label15: TLabel
      Left = 816
      Top = 91
      Width = 48
      Height = 13
      Caption = 'Protocolo:'
    end
    object MDT1: TMaskEdit
      Left = 77
      Top = 8
      Width = 72
      Height = 19
      Hint = 'Data Inicial '#13#10'a Ser Gerado'
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 160
      Top = 9
      Width = 72
      Height = 19
      Hint = 'Data Final para '#13#10'Gera'#231#227'o do Arquivo'
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object RGTNF: TRadioGroup
      Left = 236
      Top = 0
      Width = 213
      Height = 29
      Hint = 'Filtra Somente Notas '#13#10'de Entradas e/ou deSaidas'
      Caption = 'Tipo de Notas:'
      Columns = 3
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        '&Geral'
        '&Sa'#237'das'
        '&Entradas')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object UF: TEdit
      Left = 77
      Top = 30
      Width = 36
      Height = 19
      Hint = 'Sigla do Estado a Ser Gerado '#13#10'ou Branco para todos'
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnExit = UFExit
      OnKeyDown = UFKeyDown
    end
    object NARQ: TEdit
      Left = 102
      Top = 72
      Width = 305
      Height = 19
      Hint = 'Nome do Arquivo '#13#10'a Ser Gerado'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Text = 'SINT09.01'
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
      TabOrder = 5
      Text = 'Todos...'
    end
    object MPASTA: TEdit
      Left = 102
      Top = 52
      Width = 482
      Height = 19
      Hint = 'Nome da Pasta onde sera Gerado o Arquivo'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Text = 'C:\SGE\'
    end
    object RG_DOC: TRadioGroup
      Left = 452
      Top = -2
      Width = 133
      Height = 52
      Hint = 'Tipo de Documentos Pode ser '#13#10'Notas e/ou Cupom Fiscal'
      Caption = 'Documentos:'
      Ctl3D = False
      ItemIndex = 1
      Items.Strings = (
        '&Todos'
        '&Notas Fiscais'
        '&Cupom Fiscal'
        'NFCE')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object rg_oper: TRadioGroup
      Left = 588
      Top = 0
      Width = 182
      Height = 57
      Hint = 'Tipo da Opera'#231#227'o Pode Ser '#13#10'Estaduais e/ou Interestaduais'
      Caption = 'Tipo de Opera'#231#227'o:'
      Ctl3D = False
      ItemIndex = 2
      Items.Strings = (
        'Estaduais'
        'Interestaduais'
        'Ambas')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object NUMNF: TEdit
      Left = 462
      Top = 72
      Width = 121
      Height = 19
      Hint = 'Para Filtrar Somente um '#13#10'Determinado N'#250'mero de Nota'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
    end
    object CB_TIPO74: TCheckBox
      Left = 14
      Top = 93
      Width = 143
      Height = 17
      Hint = 'Gerar o Registro do '#13#10'tipo 74 Invent'#225'rio'
      Caption = 'Gerar Tipo 74 - Invent'#225'rio'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = CB_TIPO74Click
    end
    object CB_NOMEINV: TComboBox
      Left = 251
      Top = 91
      Width = 302
      Height = 21
      Hint = 'Nome do Invent'#225'rio'#13#10'Gravado'
      BevelKind = bkSoft
      ItemHeight = 13
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      Text = 'CB_NOMEINV'
      Visible = False
      OnExit = CB_NOMEINVExit
    end
    object CB_FINALIDADE: TComboBox
      Left = 119
      Top = 120
      Width = 435
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 12
      Text = '1 Normal'
      Items.Strings = (
        '1 Normal'
        
          '2 Retifica'#231#227'o total de arquivo: substitui'#231#227'o total de informa'#231#245'e' +
          's prestadas pelo contribuinte referentes a este per'#237'odo'
        
          '3 Retifica'#231#227'o aditiva de arquivo: acr'#233'scimo de informa'#231#227'o n'#227'o in' +
          'clu'#237'da em arquivos j'#225' apresentados'
        
          '4 Retifica'#231#227'o corretiva de arquivo: substitui'#231#227'o de informa'#231#227'o r' +
          'elativa a documento j'#225' informado'
        '5 Desfazimento')
    end
    object CB_CODNATOP: TComboBox
      Left = 119
      Top = 139
      Width = 435
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 13
      Text = '3 Totalidade das opera'#231#245'es do informante '
      Items.Strings = (
        
          '1 Interestaduais somente opera'#231#245'es sujeitas ao regime de Substit' +
          'ui'#231#227'o Tribut'#225'ria '
        
          '2 Interestaduais - opera'#231#245'es com ou sem Substitui'#231#227'o Tribut'#225'ria ' +
          ' '
        '3 Totalidade das opera'#231#245'es do informante ')
    end
    object CB_CONVENIO: TComboBox
      Left = 119
      Top = 161
      Width = 435
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 14
      Text = 'Conv'#234'nio(76/03) jan a dez 2004'
      Items.Strings = (
        'Conv'#234'nio 31/99 at'#233' 12/2002'
        'Conv'#234'nios 69 e 142/02 jan a dez 2003'
        'Conv'#234'nio(76/03) jan a dez 2004'
        'Recente XX/04 a partir de 2005')
    end
    object gb_registros: TGroupBox
      Left = 584
      Top = 73
      Width = 185
      Height = 115
      Caption = 'Gerar Registros:'
      TabOrder = 15
      object CLBRegistros: TCheckListBox
        Left = 2
        Top = 15
        Width = 181
        Height = 98
        Align = alClient
        Color = 16776176
        Columns = 3
        ItemHeight = 13
        Items.Strings = (
          '10'
          '11'
          '50'
          '51'
          '53'
          '54'
          '55'
          '60'
          '61'
          '70'
          '71'
          '74'
          '75'
          '90'
          'Todos')
        Style = lbOwnerDrawFixed
        TabOrder = 0
        OnClick = CLBRegistrosClick
      end
    end
    object CB_IPIICMS: TCheckBox
      Left = 347
      Top = 181
      Width = 209
      Height = 17
      Caption = 'Inv'#233's de IPI Escrever ICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      Visible = False
    end
    object CB_USACUPOM: TCheckBox
      Left = 124
      Top = 181
      Width = 141
      Height = 18
      Caption = 'Usar Tabela de Cupom'
      TabOrder = 17
    end
    object RG_NFCANC: TRadioGroup
      Left = 779
      Top = 3
      Width = 95
      Height = 69
      Caption = 'Listar Notas:'
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'Todas'
        'Normais'
        'Canceladas'
        'Inutilizadas')
      ParentCtl3D = False
      TabOrder = 18
    end
    object cb_protocolo: TComboBox
      Left = 777
      Top = 115
      Width = 145
      Height = 21
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 19
      Text = 'Todas'
      Items.Strings = (
        'Com Protocolo'
        'Sem Protocolo'
        'Todas')
    end
  end
  object Qr_Tempor: TQuery
    DatabaseName = '\SGE\TEMP'
    Left = 560
    Top = 24
  end
end

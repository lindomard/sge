object Frm_RCRec: TFrm_RCRec
  Left = 105
  Top = 5
  Width = 942
  Height = 641
  Caption = 'Relat'#243'rio de Duplicatas a Receber'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 934
    Height = 224
    Align = alClient
    DataSource = Src_CRec
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CRNUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDESD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipdup'
        Width = 27
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRAZAO'
        Width = 205
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtemis'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRVALOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valapagar'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'atraso'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'multa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valorjuros'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtvcto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VCODVEN'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRVALPAG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtpag'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtbx'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDESC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRJUROS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRCODCLI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRLOTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VNOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRCODEMP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRLOTSEQ_LB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRCODBCO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nombco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMGRU'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRCODFPGTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRNOMFPGTO'
        Visible = True
      end>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 224
    Width = 934
    Height = 245
    ActivePage = TabSheet1
    Align = alBottom
    MultiLine = True
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Filtros Primarios'
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 926
        Height = 216
        Align = alTop
        Caption = 'Filtrar:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label22: TLabel
          Left = 5
          Top = 85
          Width = 73
          Height = 13
          Caption = 'Cobran'#231'a/Bco:'
        end
        object Label25: TLabel
          Left = 40
          Top = 14
          Width = 35
          Height = 13
          Caption = 'Cliente:'
        end
        object Label26: TLabel
          Left = 28
          Top = 51
          Width = 49
          Height = 13
          Caption = 'Vendedor:'
        end
        object lbl_chqpre: TLabel
          Left = 535
          Top = 155
          Width = 163
          Height = 17
          AutoSize = False
          Caption = 'Cheques Pr'#233'-Datados a Partir de'
          Color = 16776176
          ParentColor = False
          Visible = False
          WordWrap = True
        end
        object Label7: TLabel
          Left = 20
          Top = 124
          Width = 57
          Height = 13
          Caption = 'Forma Pgto:'
        end
        object Label37: TLabel
          Left = 12
          Top = 158
          Width = 65
          Height = 13
          Caption = 'Banco/Caixa:'
        end
        object CODCOB: TEdit
          Left = 79
          Top = 86
          Width = 62
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnExit = CODCOBExit
          OnKeyPress = CODCOBKeyPress
        end
        object lbx_codcob: TListBox
          Left = 140
          Top = 86
          Width = 393
          Height = 38
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnKeyDown = lbx_codcobKeyDown
        end
        object OMITIR_COB: TCheckBox
          Left = 79
          Top = 106
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object CODCLI: TEdit
          Left = 79
          Top = 12
          Width = 62
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = CODCLIExit
          OnKeyPress = CODCLIKeyPress
        end
        object lbx_codcli: TListBox
          Left = 140
          Top = 12
          Width = 393
          Height = 38
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyDown = lbx_codcliKeyDown
        end
        object OMITIR_CLI: TCheckBox
          Left = 79
          Top = 33
          Width = 45
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object CODVEN: TEdit
          Left = 79
          Top = 50
          Width = 62
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnExit = CODVENExit
          OnKeyPress = CODVENKeyPress
        end
        object lbx_codven: TListBox
          Left = 140
          Top = 49
          Width = 393
          Height = 38
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnKeyDown = lbx_codvenKeyDown
        end
        object OMITIR_VEN: TCheckBox
          Left = 79
          Top = 69
          Width = 45
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object CLB_TIPODOC: TCheckListBox
          Left = 535
          Top = 31
          Width = 237
          Height = 123
          Cursor = crHandPoint
          Color = 16776176
          Columns = 2
          ItemHeight = 13
          Items.Strings = (
            'Normal'
            'Cheque devolvido'
            'Cheque s/fundos'
            'Juros'
            'Nota promissoria'
            'Nota de credito'
            'Cheques Pre-Datado'
            'Requisi'#231#227'o'
            'Financeira 1'
            'Financeira 2'
            'Financeira 3'
            'Financeira 4'
            'Financeira 5'
            'Financeira 6'
            'Financeira 7'
            'Outros'
            'todos')
          Style = lbOwnerDrawFixed
          TabOrder = 9
          OnClick = CLB_TIPODOCClick
        end
        object StaticText10: TStaticText
          Left = 535
          Top = 14
          Width = 236
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Tipo de Documento'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 10
        end
        object DTCHQP: TMaskEdit
          Left = 697
          Top = 153
          Width = 75
          Height = 19
          Color = 16776176
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          Text = '  /  /    '
          Visible = False
          OnExit = DTCHQPExit
        end
        object CODFP: TEdit
          Left = 79
          Top = 123
          Width = 62
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          TabOrder = 12
          OnExit = CODFPExit
          OnKeyPress = CODFPKeyPress
        end
        object OMITIR_FP: TCheckBox
          Left = 80
          Top = 143
          Width = 44
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
        end
        object lbx_codfp: TListBox
          Left = 140
          Top = 123
          Width = 393
          Height = 38
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
          OnKeyDown = lbx_codfpKeyDown
        end
        object CB_FORCAR: TCheckBox
          Left = 533
          Top = 198
          Width = 215
          Height = 17
          Caption = 'For'#231'ar todos Registros'
          TabOrder = 15
        end
        object CB_OMITIRDIA: TCheckBox
          Left = 534
          Top = 184
          Width = 275
          Height = 17
          Caption = 'Omitir Lan'#231'amentos do dia'
          TabOrder = 16
          Visible = False
        end
        object CB_CONSUMIDOR: TCheckBox
          Left = 534
          Top = 171
          Width = 230
          Height = 17
          Hint = 
            'N'#227'o Emitir as Bordas Para'#13#10'Impress'#227'o mais r'#225'pida em'#13#10'impressora ' +
            'matricial'
          Caption = 'Se Consumidor Procurar Nome'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 17
          OnClick = CB_SEMBORDAClick
        end
        object CODBCO: TEdit
          Left = 79
          Top = 159
          Width = 62
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 18
          OnExit = CODBCOExit
          OnKeyPress = CODBCOKeyPress
        end
        object lbx_codbco: TListBox
          Left = 140
          Top = 159
          Width = 393
          Height = 38
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 19
          OnKeyDown = lbx_codbcoKeyDown
        end
        object OMITIR_BCO: TCheckBox
          Left = 80
          Top = 181
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 20
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Filtros Segund'#225'rios'
      ImageIndex = 1
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 926
        Height = 204
        Align = alTop
        Caption = 'filtros Segundarios'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label1: TLabel
          Left = 3
          Top = 17
          Width = 84
          Height = 13
          Caption = 'Rede de Clientes:'
        end
        object Label23: TLabel
          Left = 39
          Top = 55
          Width = 48
          Height = 13
          Caption = 'Conv'#234'nio:'
        end
        object Label4: TLabel
          Left = 52
          Top = 91
          Width = 36
          Height = 13
          Caption = 'Cidade:'
        end
        object Label40: TLabel
          Left = 4
          Top = 128
          Width = 85
          Height = 13
          Caption = 'Centro de Custo..:'
        end
        object Label41: TLabel
          Left = 14
          Top = 165
          Width = 76
          Height = 13
          Caption = 'Departamento..:'
        end
        object sbn_codcc: TSpeedButton
          Left = 140
          Top = 126
          Width = 25
          Height = 19
          Flat = True
          Glyph.Data = {
            36060000424D3606000000000000360400002800000020000000100000000100
            08000000000000020000C40E0000C40E00000001000000000000000000008080
            8000000080000080800000800000808000008000000080008000408080004040
            0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
            FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
            80008000FF004080FF00C0DCC000F0CAA60004040400080808000C0C0C001111
            1100161616001C1C1C002222220029292900555555004D4D4D00424242003939
            3900807CFF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD000000
            330000006600000099000000CC00003300000033330000336600003399000033
            CC000033FF00006600000066330000666600006699000066CC000066FF000099
            00000099330000996600009999000099CC000099FF0000CC000000CC330000CC
            660000CC990000CCCC0000CCFF0000FF660000FF990000FFCC00330000003300
            330033006600330099003300CC003300FF003333000033333300333366003333
            99003333CC003333FF00336600003366330033666600336699003366CC003366
            FF00339900003399330033996600339999003399CC003399FF0033CC000033CC
            330033CC660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FF
            CC0033FFFF00660000006600330066006600660099006600CC006600FF006633
            00006633330066336600663399006633CC006633FF0066660000666633006666
            6600666699006666CC00669900006699330066996600669999006699CC006699
            FF0066CC000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF
            990066FFCC00CC00FF00FF00CC009999000099339900990099009900CC009900
            000099333300990066009933CC009900FF009966000099663300993366009966
            99009966CC009933FF009999330099996600999999009999CC009999FF0099CC
            000099CC330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC
            660099FF990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00
            CC0099330000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC66
            330099666600CC669900CC66CC009966FF00CC990000CC993300CC996600CC99
            9900CC99CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCC
            FF00CCFF0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF00
            6600FF009900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF66
            0000FF663300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF99
            6600FF999900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCC
            CC00FFCCFF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FF
            FF00FF666600FF66FF00FFFF66002100A5005F5F5F0077777700030303030303
            0303030303030303030303030303030303030303030303030303030303030303
            030303030303030303030E0E0E0E0E0E030303030E0E0E0E0E0E000000000003
            0303030300000000000301010101010E0303030301010101010E000E00000003
            03030303000E00000003010E0101010E03030303010E0101010E000E00000003
            03030303000E00000003010E0101010E0E030E0E010E0101010E000000000000
            00030000000000000003010101010101010E010101010101010E00000E000000
            0000000E00000000000301010E0101010101010E01010101010E00000E000000
            0F00000E00000000000301010E0101010F01010E01010101010E00000E000000
            0F00000E00000000000301010E0101010F01010E01010101010E030000000000
            0000000000000000030303010101010101010101010101010E030303000E0000
            0003000E0000000303030303010E0101010E010E0101010E0303030300000000
            00030000000000030303030301010101010E01010101010E0303030303000000
            030303000000030303030303030101010E03030101010E030303030303000E00
            030303000E0003030303030303010E010E0303010E010E030303030303000000
            030303000000030303030303030101010E03030101010E030303030303030303
            0303030303030303030303030303030303030303030303030303}
          NumGlyphs = 2
          OnClick = sbn_codccClick
        end
        object sbc_coddep: TSpeedButton
          Left = 139
          Top = 164
          Width = 25
          Height = 19
          Flat = True
          Glyph.Data = {
            36060000424D3606000000000000360400002800000020000000100000000100
            08000000000000020000C40E0000C40E00000001000000000000000000008080
            8000000080000080800000800000808000008000000080008000408080004040
            0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
            FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
            80008000FF004080FF00C0DCC000F0CAA60004040400080808000C0C0C001111
            1100161616001C1C1C002222220029292900555555004D4D4D00424242003939
            3900807CFF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD000000
            330000006600000099000000CC00003300000033330000336600003399000033
            CC000033FF00006600000066330000666600006699000066CC000066FF000099
            00000099330000996600009999000099CC000099FF0000CC000000CC330000CC
            660000CC990000CCCC0000CCFF0000FF660000FF990000FFCC00330000003300
            330033006600330099003300CC003300FF003333000033333300333366003333
            99003333CC003333FF00336600003366330033666600336699003366CC003366
            FF00339900003399330033996600339999003399CC003399FF0033CC000033CC
            330033CC660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FF
            CC0033FFFF00660000006600330066006600660099006600CC006600FF006633
            00006633330066336600663399006633CC006633FF0066660000666633006666
            6600666699006666CC00669900006699330066996600669999006699CC006699
            FF0066CC000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF
            990066FFCC00CC00FF00FF00CC009999000099339900990099009900CC009900
            000099333300990066009933CC009900FF009966000099663300993366009966
            99009966CC009933FF009999330099996600999999009999CC009999FF0099CC
            000099CC330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC
            660099FF990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00
            CC0099330000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC66
            330099666600CC669900CC66CC009966FF00CC990000CC993300CC996600CC99
            9900CC99CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCC
            FF00CCFF0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF00
            6600FF009900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF66
            0000FF663300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF99
            6600FF999900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCC
            CC00FFCCFF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FF
            FF00FF666600FF66FF00FFFF66002100A5005F5F5F0077777700030303030303
            0303030303030303030303030303030303030303030303030303030303030303
            030303030303030303030E0E0E0E0E0E030303030E0E0E0E0E0E000000000003
            0303030300000000000301010101010E0303030301010101010E000E00000003
            03030303000E00000003010E0101010E03030303010E0101010E000E00000003
            03030303000E00000003010E0101010E0E030E0E010E0101010E000000000000
            00030000000000000003010101010101010E010101010101010E00000E000000
            0000000E00000000000301010E0101010101010E01010101010E00000E000000
            0F00000E00000000000301010E0101010F01010E01010101010E00000E000000
            0F00000E00000000000301010E0101010F01010E01010101010E030000000000
            0000000000000000030303010101010101010101010101010E030303000E0000
            0003000E0000000303030303010E0101010E010E0101010E0303030300000000
            00030000000000030303030301010101010E01010101010E0303030303000000
            030303000000030303030303030101010E03030101010E030303030303000E00
            030303000E0003030303030303010E010E0303010E010E030303030303000000
            030303000000030303030303030101010E03030101010E030303030303030303
            0303030303030303030303030303030303030303030303030303}
          NumGlyphs = 2
          OnClick = sbc_coddepClick
        end
        object CODRED: TEdit
          Left = 91
          Top = 16
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = CODREDExit
          OnKeyPress = CODREDKeyPress
        end
        object lbx_codred: TListBox
          Left = 164
          Top = 16
          Width = 430
          Height = 38
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyDown = lbx_codredKeyDown
        end
        object OMITIR_RED: TCheckBox
          Left = 92
          Top = 35
          Width = 71
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object CODCV: TEdit
          Left = 91
          Top = 53
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnExit = CODCVExit
          OnKeyPress = CODCVKeyPress
        end
        object OMITIR_CV: TCheckBox
          Left = 92
          Top = 72
          Width = 71
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object lbx_codcv: TListBox
          Left = 164
          Top = 53
          Width = 430
          Height = 37
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnKeyDown = lbx_codcvKeyDown
        end
        object CODLOC: TEdit
          Left = 91
          Top = 89
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnExit = CODLOCExit
          OnKeyPress = CODLOCKeyPress
        end
        object lbx_codloc: TListBox
          Left = 164
          Top = 89
          Width = 430
          Height = 38
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnKeyDown = lbx_codlocKeyDown
        end
        object OMITIR_LOC: TCheckBox
          Left = 92
          Top = 110
          Width = 71
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object StaticText12: TStaticText
          Left = 595
          Top = 18
          Width = 91
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Cobran'#231'a'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 9
          Visible = False
        end
        object clb_simples: TCheckListBox
          Left = 595
          Top = 36
          Width = 92
          Height = 41
          Color = 16776176
          Columns = 1
          ItemHeight = 13
          Items.Strings = (
            'Simples'
            'Descontado'
            'Todos')
          Style = lbOwnerDrawFixed
          TabOrder = 10
          Visible = False
          OnClick = clb_simplesClick
        end
        object StaticText11: TStaticText
          Left = 686
          Top = 18
          Width = 85
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'T'#237'tulos Em'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 11
        end
        object CLB_TIPOCOB: TCheckListBox
          Left = 686
          Top = 36
          Width = 86
          Height = 70
          Color = 16776176
          Columns = 1
          ItemHeight = 13
          Items.Strings = (
            'Carteira'
            'Banco'
            'Cart'#243'rio'
            'Jur'#237'dica'
            'Todos')
          Style = lbOwnerDrawFixed
          TabOrder = 12
          OnClick = CLB_TIPOCOBClick
        end
        object StaticText1: TStaticText
          Left = 596
          Top = 78
          Width = 91
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Protesto'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 13
        end
        object clb_protesto: TCheckListBox
          Left = 596
          Top = 99
          Width = 92
          Height = 41
          Color = 16776176
          Columns = 1
          ItemHeight = 13
          Items.Strings = (
            'Sem Protesto'
            'Protestados'
            'Todos')
          Style = lbOwnerDrawFixed
          TabOrder = 14
          OnClick = clb_protestoClick
        end
        object codcc: TEdit
          Left = 91
          Top = 126
          Width = 52
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
          OnExit = codccExit
          OnKeyPress = CODLOCKeyPress
        end
        object lbx_codcc: TListBox
          Left = 164
          Top = 126
          Width = 430
          Height = 38
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
          OnKeyDown = lbx_codccKeyDown
        end
        object OMITIR_CC: TCheckBox
          Left = 92
          Top = 147
          Width = 71
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 17
        end
        object coddep: TEdit
          Left = 91
          Top = 163
          Width = 52
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 18
          OnExit = coddepExit
        end
        object lbx_coddep: TListBox
          Left = 164
          Top = 163
          Width = 430
          Height = 38
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 19
          OnKeyDown = lbx_coddepKeyDown
        end
        object OMITIR_DEP: TCheckBox
          Left = 92
          Top = 184
          Width = 71
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 20
        end
      end
    end
    object ts_outrosfiltros: TTabSheet
      Caption = 'Outros Filtros'
      ImageIndex = 2
      object Label24: TLabel
        Left = 4
        Top = 11
        Width = 59
        Height = 13
        Caption = 'Televendas:'
      end
      object Label27: TLabel
        Left = 11
        Top = 47
        Width = 53
        Height = 13
        Caption = 'Supervisor:'
      end
      object Label12: TLabel
        Left = 69
        Top = 85
        Width = 68
        Height = 13
        AutoSize = False
        Caption = 'Outros Filtros...'
      end
      object Label34: TLabel
        Left = 15
        Top = 104
        Width = 48
        Height = 13
        Caption = 'Assessor.:'
      end
      object Label39: TLabel
        Left = 4
        Top = 141
        Width = 59
        Height = 13
        Caption = 'Usuario/Cx.:'
      end
      object CODTEL: TEdit
        Left = 67
        Top = 7
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODTELExit
        OnKeyPress = CODTELKeyPress
      end
      object lbx_codtel: TListBox
        Left = 140
        Top = 7
        Width = 393
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = lbx_codtelKeyDown
      end
      object OMITIR_TEL: TCheckBox
        Left = 68
        Top = 26
        Width = 57
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object CODSUP: TEdit
        Left = 67
        Top = 44
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODSUPExit
        OnKeyPress = CODSUPKeyPress
      end
      object lbx_codsup: TListBox
        Left = 140
        Top = 44
        Width = 393
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_codsupKeyDown
      end
      object OMITIR_SUP: TCheckBox
        Left = 68
        Top = 64
        Width = 71
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object FILTRO: TEdit
        Left = 140
        Top = 81
        Width = 393
        Height = 19
        Hint = 
          'Permite adicionar outros'#13#10'filtros. Esta op'#231#227'o deve '#13#10'ser aliment' +
          'ada somente'#13#10'se vc realmente souber'#13#10'utiliza-la. Para maiores '#13#10 +
          'esclarecimentos solicite'#13#10'ajuda ao suporte.'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object CLB_STATUSCLI: TCheckListBox
        Left = 650
        Top = 22
        Width = 126
        Height = 153
        Color = 16776176
        Columns = 1
        ItemHeight = 13
        Items.Strings = (
          'Ativo'
          'Bloq.Temp'
          'Bloq.Def.'
          'Novo'
          ''
          ''
          ''
          'Observa'#231#227'o'
          'Todos')
        Style = lbOwnerDrawFixed
        TabOrder = 12
        OnClick = CLB_STATUSCLIClick
      end
      object StaticText2: TStaticText
        Left = 650
        Top = 4
        Width = 125
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Situa'#231#227'o do Cliente'
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 7
      end
      object CODASSE: TEdit
        Left = 68
        Top = 99
        Width = 73
        Height = 19
        Hint = 'Informe Codigo do Vendedor ou'#13#10'digite o nome p/ Consultar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnExit = CODASSEExit
        OnKeyPress = CODASSEKeyPress
      end
      object lbx_codasse: TListBox
        Left = 140
        Top = 99
        Width = 393
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnKeyDown = lbx_codasseKeyDown
      end
      object OMITIR_ASS: TCheckBox
        Left = 70
        Top = 121
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
      end
      object StaticText3: TStaticText
        Left = 535
        Top = 4
        Width = 110
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Status do Cliente'
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 13
      end
      object CLB_STATUS: TCheckListBox
        Left = 535
        Top = 22
        Width = 111
        Height = 154
        Color = 16776176
        Columns = 1
        ItemHeight = 13
        Items.Strings = (
          '0-Normal'
          '1-Normal'
          '2-Normal'
          '3-Normal'
          '4-Normal'
          '5-Normal'
          '6-Normal'
          '7-Bloqueado'
          '8-Observa'#231#227'o'
          '9-Inativo'
          'Todos')
        Style = lbOwnerDrawFixed
        TabOrder = 11
        OnClick = CLB_STATUSClick
      end
      object gb_lote_rem: TGroupBox
        Left = 545
        Top = 178
        Width = 203
        Height = 39
        Caption = 'Se Importado:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 14
        object Label35: TLabel
          Left = 7
          Top = 20
          Width = 24
          Height = 13
          Caption = 'Lote:'
        end
        object Label36: TLabel
          Left = 112
          Top = 19
          Width = 6
          Height = 13
          Caption = 'a'
        end
        object lotrem_ini: TEdit
          Left = 33
          Top = 16
          Width = 73
          Height = 19
          Hint = 'Informe Codigo do Vendedor ou'#13#10'digite o nome p/ Consultar'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = lotrem_iniExit
        end
        object lotrem_fim: TEdit
          Left = 128
          Top = 16
          Width = 73
          Height = 19
          Hint = 'Informe Codigo do Vendedor ou'#13#10'digite o nome p/ Consultar'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnExit = lotrem_fimExit
        end
      end
      object edt_codusr_cx: TEdit
        Left = 67
        Top = 140
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnExit = edt_codusr_cxExit
        OnKeyPress = edt_codusr_cxKeyPress
      end
      object lbx_codusr_cx: TListBox
        Left = 140
        Top = 140
        Width = 393
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
        OnKeyDown = lbx_codusr_cxKeyDown
      end
      object OMITIR_USR_CX: TCheckBox
        Left = 68
        Top = 159
        Width = 57
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
      end
      object StaticText4: TStaticText
        Left = 1
        Top = 178
        Width = 63
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Regiao'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 18
      end
      object EDT_CODREG: TEdit
        Left = 67
        Top = 176
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 19
        OnExit = EDT_CODREGExit
        OnKeyPress = EDT_CODREGKeyPress
      end
      object lbx_CODREG: TListBox
        Left = 140
        Top = 176
        Width = 394
        Height = 40
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 20
        OnKeyDown = lbx_CODREGKeyDown
      end
      object OMITIR_CODREG: TCheckBox
        Left = 67
        Top = 197
        Width = 53
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 21
      end
    end
    object tsTipoPed: TTabSheet
      Caption = 'Tipo de Pedidos'
      ImageIndex = 3
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 926
        Height = 217
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Align = alClient
        Color = clSkyBlue
        Columns = 3
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ItemHeight = 16
        Items.Strings = (
          'Venda Normal'
          'Simples Remessa'
          'Devolu'#231#227'o a Fornecedor'
          'Remessa p/Troca'
          'Transferencia de Mercadorias'
          'Remessa p/Beneficiamento'
          'Remessa p/Venda(Vda.Fora do Estab.)'
          'Devolu'#231#227'o Cliente(Entrada) Normal'
          'Emprestimo de Mercadorias'
          'Nota Complementar'
          'Remessa Para Consigna'#231#245'es'
          'Devolu'#231#227'o Mercadoria Consigna'#231#245'es'
          'Devolu'#231#227'o Remessa p/Venda(Vda.Fora do Estab.)'
          'Venda Mercadoria Consignada'
          'Venda Remessa p/Venda(Vda.Fora do Estabel.)'
          'Venda Normal(Troca de Mercadorias)'
          'Devolu'#231#227'o de Cliente(Troca de Mercadorias)'
          'Transferencias de Mercadorias Entrada'
          'Devolu'#231#227'o de Mercadorias de Terceiros(Consignadas)'
          'Remessa p/Industrializa'#231#227'o'
          'Remessa p/Brinde'
          'Remessa Amostra Gratis'
          'Remessa p/Demonstra'#231#227'o'
          'Remessa p/Conserto'
          'Outras Saidas'
          'Todos')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Style = lbOwnerDrawFixed
        TabOrder = 0
        OnClick = RG_TIPOPEDClick
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 4
      object RLReport1: TRLReport
        Left = 24
        Top = 39
        Width = 794
        Height = 945
        DataSource = Src_CRec
        DefaultFilter = Matricial
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.LeftMargin = 5.000000000000000000
        Margins.TopMargin = 5.000000000000000000
        Margins.RightMargin = 5.000000000000000000
        Margins.BottomMargin = 5.000000000000000000
        PageSetup.PaperSize = fpCustom
        PageSetup.PaperWidth = 210.000000000000000000
        PageSetup.PaperHeight = 250.000000000000000000
        BeforePrint = RLReport1BeforePrint
        object RLBand1: TRLBand
          Left = 19
          Top = 19
          Width = 756
          Height = 50
          BandType = btColumnHeader
          Degrade.Direction = ddVertical
          Degrade.OppositeColor = 6619057
          object RLDBText1: TRLDBText
            Left = 0
            Top = 0
            Width = 164
            Height = 16
            Align = faLeftTop
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object RLLabel1: TRLLabel
            Left = 573
            Top = 1
            Width = 35
            Height = 16
            Caption = 'Data:'
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 632
            Top = 0
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object lbl_titulo02: TRLLabel
            Left = 0
            Top = 17
            Width = 112
            Height = 16
            Caption = 'Contas a Receber.'
          end
          object RLLabel3: TRLLabel
            Left = 572
            Top = 18
            Width = 48
            Height = 16
            Caption = 'P'#225'gina:'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 632
            Top = 17
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
          end
          object lbl_titulo: TRLLabel
            Left = 0
            Top = 34
            Width = 756
            Height = 16
            Align = faClientBottom
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = 'Relat'#243'rio de Contas a Receber.'
            Color = 16766935
            ParentColor = False
            Transparent = False
          end
        end
        object RLGroup1: TRLGroup
          Left = 19
          Top = 91
          Width = 756
          Height = 82
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          DataFields = 'NOMGRU'
          AfterPrint = RLGroup1AfterPrint
          object RLBand2: TRLBand
            Left = 1
            Top = 0
            Width = 754
            Height = 26
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object db_grupo: TRLDBText
              Left = 0
              Top = 0
              Width = 754
              Height = 25
              Align = faClient
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Color = clWhite
              DataField = 'NOMGRU'
              DataSource = Src_CRec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
          end
          object band_cab: TRLBand
            Left = 1
            Top = 26
            Width = 754
            Height = 27
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            object lbl_cabNumdoc: TRLMemo
              Left = 1
              Top = 0
              Width = 64
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'N'#250'mero')
              ParentFont = False
            end
            object lbl_cabChave: TRLMemo
              Left = 711
              Top = 0
              Width = 42
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Chave')
              ParentFont = False
            end
            object lbl_cabRazSoc: TRLMemo
              Left = 70
              Top = 0
              Width = 146
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Raz'#227'o Social')
              ParentFont = False
            end
            object lbl_cabDtEmis: TRLMemo
              Left = 222
              Top = 0
              Width = 56
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Data de Emiss'#227'o')
              ParentFont = False
            end
            object lbl_cabValDup: TRLMemo
              Left = 278
              Top = 0
              Width = 54
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Valor do Titulo')
              ParentFont = False
            end
            object lbl_cabValPag: TRLMemo
              Left = 335
              Top = 0
              Width = 52
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Valor Pago')
              ParentFont = False
            end
            object lbl_cabArec: TRLMemo
              Left = 389
              Top = 0
              Width = 54
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Valor Em Aberto')
              ParentFont = False
            end
            object lbl_CabDtVcto: TRLMemo
              Left = 449
              Top = 0
              Width = 54
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Data de Vcto.')
              ParentFont = False
            end
            object lbl_cabDatPgto: TRLMemo
              Left = 506
              Top = 0
              Width = 54
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Data de Pgto')
              ParentFont = False
            end
            object lbl_cabDesc: TRLMemo
              Left = 559
              Top = 1
              Width = 50
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Descontos')
              ParentFont = False
            end
            object lbl_CabJuros: TRLMemo
              Left = 609
              Top = 0
              Width = 48
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Juros')
              ParentFont = False
            end
            object lbl_cabdoc: TRLMemo
              Left = 657
              Top = 1
              Width = 58
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Documento'
                '')
              ParentFont = False
            end
          end
          object RLBand4: TRLBand
            Left = 1
            Top = 53
            Width = 754
            Height = 12
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLBand4BeforePrint
            object lbl_numdoc: TRLDBText
              Left = 1
              Top = 0
              Width = 64
              Height = 8
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'numdoc'
              DataSource = Src_CRec
              Holder = lbl_cabNumdoc
              Layout = tlCenter
            end
            object lbl_Chave: TRLDBText
              Left = 711
              Top = -1
              Width = 42
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'CRNPED'
              DataSource = Src_CRec
              Holder = lbl_cabChave
              Layout = tlCenter
              Visible = False
            end
            object lbl_RazSoc: TRLDBText
              Left = 70
              Top = 0
              Width = 146
              Height = 12
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'razao_codigo'
              DataSource = Src_CRec
              Holder = lbl_cabRazSoc
              Layout = tlCenter
            end
            object lbl_DtEmiss: TRLDBText
              Left = 222
              Top = 0
              Width = 56
              Height = 12
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'dtemis'
              DataSource = Src_CRec
              Holder = lbl_cabDtEmis
              Layout = tlCenter
            end
            object lbl_ValDup: TRLDBText
              Left = 278
              Top = 0
              Width = 54
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'CRVALOR'
              DataSource = Src_CRec
              Holder = lbl_cabValDup
              Layout = tlCenter
            end
            object lbl_ValPag: TRLDBText
              Left = 335
              Top = 0
              Width = 52
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'CRVALPAG'
              DataSource = Src_CRec
              Holder = lbl_cabValPag
              Layout = tlCenter
            end
            object lbl_Arec: TRLDBText
              Left = 389
              Top = 0
              Width = 54
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'valapagar'
              DataSource = Src_CRec
              Holder = lbl_cabArec
              Layout = tlCenter
            end
            object lbl_DtVcto: TRLDBText
              Left = 449
              Top = 0
              Width = 54
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'dtvcto'
              DataSource = Src_CRec
              Holder = lbl_CabDtVcto
              Layout = tlCenter
            end
            object lbl_DatPgto: TRLDBText
              Left = 506
              Top = 0
              Width = 54
              Height = 10
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'dtpag'
              DataSource = Src_CRec
              Holder = lbl_cabDatPgto
              Layout = tlCenter
            end
            object lbl_Desc: TRLDBText
              Left = 559
              Top = 0
              Width = 50
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'CRDESC'
              DataSource = Src_CRec
              Holder = lbl_cabDesc
              Layout = tlCenter
            end
            object lbl_Juros: TRLDBText
              Left = 609
              Top = 0
              Width = 48
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'CRJUROS'
              DataSource = Src_CRec
              Holder = lbl_CabJuros
              Layout = tlCenter
            end
            object lbl_doc: TRLDBText
              Left = 657
              Top = -1
              Width = 58
              Height = 12
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'tipdup'
              DataSource = Src_CRec
              Holder = lbl_cabdoc
              Layout = tlCenter
            end
          end
          object RLBand6: TRLBand
            Left = 1
            Top = 65
            Width = 754
            Height = 15
            BandType = btSummary
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLBand6BeforePrint
            object lblg_Chave: TRLLabel
              Left = 711
              Top = 0
              Width = 42
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cabChave
              ParentFont = False
            end
            object lblg_RazSoc: TRLLabel
              Left = 2
              Top = 1
              Width = 64
              Height = 14
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'Total..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblg_ValDup: TRLLabel
              Left = 70
              Top = 1
              Width = 146
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabRazSoc
              ParentFont = False
            end
            object lblg_ValPag: TRLLabel
              Left = 278
              Top = 1
              Width = 54
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabValDup
              ParentFont = False
            end
            object lblg_Arec: TRLLabel
              Left = 389
              Top = 1
              Width = 54
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabArec
              ParentFont = False
            end
            object lblg_Desc: TRLLabel
              Left = 559
              Top = 1
              Width = 50
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabDesc
              ParentFont = False
            end
            object lblg_Juros: TRLLabel
              Left = 609
              Top = 1
              Width = 48
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_CabJuros
              ParentFont = False
            end
            object lblg_doc: TRLLabel
              Left = 657
              Top = 1
              Width = 58
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabdoc
              ParentFont = False
            end
            object RLLabel14: TRLLabel
              Left = 222
              Top = 2
              Width = 56
              Height = 12
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'Pagos..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabDtEmis
              ParentFont = False
            end
            object RLLabel15: TRLLabel
              Left = 335
              Top = 2
              Width = 52
              Height = 12
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'Em Aberto..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabValPag
              ParentFont = False
            end
            object RLLabel13: TRLLabel
              Left = 506
              Top = 1
              Width = 54
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabDatPgto
              ParentFont = False
            end
            object RLLabel18: TRLLabel
              Left = 449
              Top = 1
              Width = 54
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_CabDtVcto
              ParentFont = False
            end
          end
        end
        object RLBand3: TRLBand
          Left = 19
          Top = 173
          Width = 756
          Height = 20
          BandType = btColumnFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Visible = False
          object lbl_rodape: TRLLabel
            Left = 730
            Top = 1
            Width = 26
            Height = 6
            Align = faRightTop
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -5
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 351
            Top = 0
            Width = 39
            Height = 7
            Caption = 'Emitido em'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 410
            Top = 0
            Width = 21
            Height = 7
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 452
            Top = 0
            Width = 10
            Height = 7
            Caption = #224's'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo4: TRLSystemInfo
            Left = 476
            Top = 0
            Width = 21
            Height = 7
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            Info = itHour
            ParentFont = False
          end
        end
        object RLBand5: TRLBand
          Left = 19
          Top = 193
          Width = 756
          Height = 16
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          BeforePrint = RLBand5BeforePrint
          object lblt_ValDup: TRLLabel
            Left = 71
            Top = 2
            Width = 146
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabRazSoc
            ParentFont = False
          end
          object lblt_ValPag: TRLLabel
            Left = 279
            Top = 2
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabValDup
            ParentFont = False
          end
          object lblt_Arec: TRLLabel
            Left = 390
            Top = 2
            Width = 54
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabArec
            ParentFont = False
          end
          object lblt_Desc: TRLLabel
            Left = 560
            Top = 1
            Width = 50
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabDesc
            ParentFont = False
          end
          object lblt_Juros: TRLLabel
            Left = 610
            Top = 1
            Width = 48
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_CabJuros
            ParentFont = False
          end
          object RLLabel8: TRLLabel
            Left = 223
            Top = 2
            Width = 56
            Height = 12
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Pagos..:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabDtEmis
            ParentFont = False
          end
          object RLLabel12: TRLLabel
            Left = 336
            Top = 2
            Width = 52
            Height = 12
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Em Aberto..:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabValPag
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 2
            Top = 1
            Width = 64
            Height = 14
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Total..:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 507
            Top = 1
            Width = 54
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabDatPgto
            ParentFont = False
          end
          object RLLabel19: TRLLabel
            Left = 450
            Top = 1
            Width = 54
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_CabDtVcto
            ParentFont = False
          end
        end
        object RLBand7: TRLBand
          Left = 19
          Top = 69
          Width = 756
          Height = 22
          BandType = btColumnHeader
          object filtros: TRLMemo
            Left = 0
            Top = 0
            Width = 756
            Height = 16
            Align = faTop
            Alignment = taCenter
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Legenda das Cores do Grid'
      ImageIndex = 5
      object Label10: TLabel
        Left = 92
        Top = 45
        Width = 126
        Height = 13
        Caption = 'Cobran'#231'a Juridica/Cartorio'
      end
      object Label11: TLabel
        Left = 12
        Top = 66
        Width = 77
        Height = 17
        Caption = 'ggggggg'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 15461355
        Font.Height = -11
        Font.Name = 'Webdings'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label18: TLabel
        Left = 94
        Top = 68
        Width = 104
        Height = 13
        Caption = 'Cheques Pr'#233'-Datados'
      end
      object Label8: TLabel
        Left = 8
        Top = 24
        Width = 76
        Height = 13
        Caption = 'Titulo em Atraso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 10
        Top = 5
        Width = 61
        Height = 13
        Caption = 'Baixa Parcial'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label29: TLabel
        Left = 98
        Top = 87
        Width = 80
        Height = 13
        Caption = 'Titulo Protestado'
      end
      object Label9: TLabel
        Left = 10
        Top = 43
        Width = 77
        Height = 17
        Caption = 'ggggggg'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 14548923
        Font.Height = -11
        Font.Name = 'Webdings'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label30: TLabel
        Left = 11
        Top = 82
        Width = 77
        Height = 17
        Caption = 'ggggggg'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 33023
        Font.Height = -11
        Font.Name = 'Webdings'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object STG_TOTCAR: TStringGrid
        Left = 136
        Top = 136
        Width = 320
        Height = 120
        ColCount = 4
        DefaultRowHeight = 15
        FixedCols = 0
        FixedRows = 0
        TabOrder = 0
        Visible = False
      end
    end
    object ts_new: TTabSheet
      Caption = 'Relatorio Novo'
      ImageIndex = 6
      object rlmod06: TRLReport
        Left = 23
        Top = -18
        Width = 1123
        Height = 794
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = Src_CRec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        PageSetup.Orientation = poLandscape
        BeforePrint = rlmod06BeforePrint
        object RLBand8: TRLBand
          Left = 39
          Top = 39
          Width = 1045
          Height = 51
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLLabel6: TRLLabel
            Left = 921
            Top = 1
            Width = 56
            Height = 16
            Caption = 'P'#225'gina..:'
          end
          object RLSystemInfo5: TRLSystemInfo
            Left = 978
            Top = 1
            Width = 27
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
          end
          object RLDBText2: TRLDBText
            Left = 0
            Top = 1
            Width = 921
            Height = 16
            AutoSize = False
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object RLSystemInfo6: TRLSystemInfo
            Left = 977
            Top = 17
            Width = 67
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object RLLabel5: TRLLabel
            Left = 851
            Top = 17
            Width = 125
            Height = 16
            AutoSize = False
            Caption = 'Data de Impress'#227'o..:'
          end
          object rl_cab: TRLLabel
            Left = 0
            Top = 17
            Width = 851
            Height = 16
            AutoSize = False
            Caption = 'Rela'#231#227'o Analitica de T'#237'tulos a Receber'
          end
          object rl_periodo: TRLLabel
            Left = 0
            Top = 33
            Width = 919
            Height = 16
            AutoSize = False
            Caption = 'Per'#237'odo..: 01/01/1900 at'#233' 01/01/1900.'
          end
          object rl_status: TRLLabel
            Left = 919
            Top = 33
            Width = 125
            Height = 16
            AutoSize = False
            Caption = 'Status ..: Em Aberto'
          end
          object RLLabel7: TRLLabel
            Left = 1005
            Top = 1
            Width = 8
            Height = 16
            Caption = '/'
          end
          object RLSystemInfo7: TRLSystemInfo
            Left = 1013
            Top = 1
            Width = 31
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itLastPageNumber
          end
        end
        object RLGRUPO: TRLGroup
          Left = 39
          Top = 90
          Width = 1045
          Height = 155
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataFields = 'NOMGRU'
          object RLBand9: TRLBand
            Left = 0
            Top = 0
            Width = 1045
            Height = 108
            BandType = btTitle
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            BeforePrint = RLBand9BeforePrint
            object rl_nomgrupo: TRLLabel
              Left = 3
              Top = 49
              Width = 508
              Height = 16
              Caption = 
                'Cliente..: 19 - CISA-CONS. INTERM. DE SAUDE DO ARAGUAIA / 04.505' +
                '.882/0001-13'
            end
            object RLLabel21: TRLLabel
              Left = 1
              Top = 33
              Width = 1043
              Height = 16
              AutoSize = False
              Caption = 
                '================================================================' +
                '================================================================' +
                '=='
            end
            object LBLGRUPO: TRLLabel
              Left = 0
              Top = 17
              Width = 299
              Height = 16
              AutoSize = False
              Caption = 'VENDEDOR'
            end
            object RLLabel9: TRLLabel
              Left = 1
              Top = 1
              Width = 1044
              Height = 16
              AutoSize = False
              Caption = 
                '================================================================' +
                '================================================================' +
                '=='
            end
            object rl_documento: TRLLabel
              Left = 299
              Top = 17
              Width = 103
              Height = 16
              AutoSize = False
              Caption = 'Documento'
            end
            object rl_nf: TRLLabel
              Left = 436
              Top = 17
              Width = 59
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'N.F.'
            end
            object rl_tipo: TRLLabel
              Left = 402
              Top = 17
              Width = 34
              Height = 16
              AutoSize = False
              Caption = 'Tipo'
            end
            object rl_pedido: TRLLabel
              Left = 495
              Top = 17
              Width = 53
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Pedido'
            end
            object rl_emissao: TRLLabel
              Left = 548
              Top = 17
              Width = 77
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Emiss'#227'o'
            end
            object rl_vencimento: TRLLabel
              Left = 625
              Top = 17
              Width = 77
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Vencimento'
            end
            object rl_total: TRLLabel
              Left = 702
              Top = 17
              Width = 102
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Valor Total'
            end
            object rl_juros: TRLLabel
              Left = 804
              Top = 17
              Width = 53
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Juros'
            end
            object rl_aberto: TRLLabel
              Left = 937
              Top = 17
              Width = 107
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Total em Aberto'
            end
            object rl_entrada: TRLLabel
              Left = 857
              Top = 17
              Width = 80
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Entrada'
            end
            object lbl_endereco: TRLLabel
              Left = 6
              Top = 67
              Width = 1024
              Height = 34
              Alignment = taCenter
              AutoSize = False
              Caption = 
                'Cliente..: 19 - CISA-CONS. INTERM. DE SAUDE DO ARAGUAIA / 04.505' +
                '.882/0001-13'
              Layout = tlCenter
            end
          end
          object RLBand10: TRLBand
            Left = 0
            Top = 108
            Width = 1045
            Height = 17
            BeforePrint = RLBand10BeforePrint
            object RLDBText3: TRLDBText
              Left = 299
              Top = 0
              Width = 103
              Height = 16
              AutoSize = False
              DataField = 'numdoc'
              DataSource = Src_CRec
              Holder = rl_documento
            end
            object RLDBText4: TRLDBText
              Left = 402
              Top = 0
              Width = 34
              Height = 16
              AutoSize = False
              DataField = 'tipdup'
              DataSource = Src_CRec
              Holder = rl_tipo
            end
            object RLDBText5: TRLDBText
              Left = 436
              Top = 0
              Width = 59
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'CRNUMERO'
              DataSource = Src_CRec
              Holder = rl_nf
            end
            object RLDBText6: TRLDBText
              Left = 495
              Top = 0
              Width = 53
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'CRNPED'
              DataSource = Src_CRec
              Holder = rl_pedido
            end
            object RLDBText7: TRLDBText
              Left = 548
              Top = 0
              Width = 77
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'dtemis'
              DataSource = Src_CRec
              Holder = rl_emissao
            end
            object RLDBText8: TRLDBText
              Left = 857
              Top = 0
              Width = 80
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'CRVALPAG'
              DataSource = Src_CRec
              Holder = rl_entrada
            end
            object RLDBText9: TRLDBText
              Left = 804
              Top = 0
              Width = 53
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'valorjuros'
              DataSource = Src_CRec
              Holder = rl_juros
            end
            object RLDBText10: TRLDBText
              Left = 702
              Top = 0
              Width = 102
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'CRVALOR'
              DataSource = Src_CRec
              Holder = rl_total
            end
            object RLDBText11: TRLDBText
              Left = 625
              Top = 0
              Width = 77
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'dtvcto'
              DataSource = Src_CRec
              Holder = rl_vencimento
            end
            object RLDBText12: TRLDBText
              Left = 937
              Top = 0
              Width = 107
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'valapagar'
              DataSource = Src_CRec
              Holder = rl_aberto
            end
            object RLVALGRUPO: TRLDBText
              Left = 0
              Top = 0
              Width = 299
              Height = 16
              AutoSize = False
              DataField = 'CRAZAO'
              DataSource = Src_CRec
              Holder = LBLGRUPO
            end
          end
          object RLBand11: TRLBand
            Left = 0
            Top = 125
            Width = 1045
            Height = 36
            BandType = btSummary
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            AfterPrint = RLBand11AfterPrint
            BeforePrint = RLBand11BeforePrint
            object RLLabel10: TRLLabel
              Left = 297
              Top = 3
              Width = 106
              Height = 16
              AutoSize = False
              Caption = 'Total do Cliente..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel11: TRLLabel
              Left = 322
              Top = 19
              Width = 81
              Height = 16
              AutoSize = False
              Caption = 'Acumulado..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object TotTit: TRLLabel
              Left = 702
              Top = 3
              Width = 102
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = '999.999.999,99'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = rl_total
              ParentFont = False
            end
            object TotJur: TRLLabel
              Left = 804
              Top = 3
              Width = 53
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = '9.999,99'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = rl_juros
              ParentFont = False
            end
            object TotEnt: TRLLabel
              Left = 857
              Top = 3
              Width = 80
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = '9999.999,99'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = rl_entrada
              ParentFont = False
            end
            object TotAPag: TRLLabel
              Left = 937
              Top = 3
              Width = 107
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = '999.999.999,99'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = rl_aberto
              ParentFont = False
            end
            object TotGAberto: TRLLabel
              Left = 795
              Top = 19
              Width = 249
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = '999.999.999,99'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object TotTitGeral: TRLLabel
              Left = 404
              Top = 19
              Width = 123
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = '999.999.999,99'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
        object RLBand12: TRLBand
          Left = 39
          Top = 245
          Width = 1045
          Height = 16
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Borders.FixedTop = True
          BeforePrint = RLBand12BeforePrint
          object rl_banner: TRLLabel
            Left = 1
            Top = 0
            Width = 716
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object ts_total: TTabSheet
      Caption = 'Totaliza'#231#227'o'
      ImageIndex = 7
      object GroupBox1: TGroupBox
        Left = 0
        Top = 148
        Width = 926
        Height = 69
        Align = alBottom
        Caption = 'Totaliza'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label13: TLabel
          Left = 6
          Top = 15
          Width = 135
          Height = 17
          AutoSize = False
          Caption = 'Em Aberto Vencidas............'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label17: TLabel
          Left = 5
          Top = 31
          Width = 139
          Height = 17
          AutoSize = False
          Caption = 'Em Aberto A Vencer............'
          Color = clSilver
          ParentColor = False
        end
        object Label15: TLabel
          Left = 263
          Top = 15
          Width = 138
          Height = 17
          AutoSize = False
          Caption = 'Chq.Pr'#233'-Datado.........'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label14: TLabel
          Left = 263
          Top = 31
          Width = 138
          Height = 17
          AutoSize = False
          Caption = 'Total Pago......................'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label19: TLabel
          Left = 263
          Top = 47
          Width = 138
          Height = 17
          AutoSize = False
          Caption = 'Desc.Fin.Concedido..,'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label20: TLabel
          Left = 532
          Top = 15
          Width = 133
          Height = 17
          AutoSize = False
          Caption = 'Devolu'#231#245'es Rec..............'
          Color = clCaptionText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label21: TLabel
          Left = 532
          Top = 31
          Width = 133
          Height = 17
          AutoSize = False
          Caption = 'Juros Recebidos......'
          Color = clSilver
          ParentColor = False
        end
        object Label16: TLabel
          Left = 532
          Top = 47
          Width = 133
          Height = 17
          AutoSize = False
          Caption = 'Total Geral.............'
          Color = clCaptionText
          ParentColor = False
        end
        object TOTABRVCT: TStaticText
          Left = 141
          Top = 15
          Width = 76
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
        object TOTABRAVENC: TStaticText
          Left = 141
          Top = 31
          Width = 76
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
        object TOTABR: TStaticText
          Left = 141
          Top = 47
          Width = 76
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object TOTCHQP: TStaticText
          Left = 400
          Top = 15
          Width = 76
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 3
        end
        object TOTPAG: TStaticText
          Left = 400
          Top = 31
          Width = 76
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 4
        end
        object DESCFIN: TStaticText
          Left = 400
          Top = 47
          Width = 76
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 5
        end
        object DEVOL: TStaticText
          Left = 665
          Top = 15
          Width = 76
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clCaptionText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 6
        end
        object JUROS: TStaticText
          Left = 665
          Top = 31
          Width = 76
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 7
        end
        object TOTGER: TStaticText
          Left = 665
          Top = 47
          Width = 76
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00'
          Color = clCaptionText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 8
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 469
    Width = 934
    Height = 141
    Align = alBottom
    TabOrder = 2
    object Label5: TLabel
      Left = 9
      Top = 66
      Width = 298
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Separado por:'
      Color = 9961367
      ParentColor = False
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 7
      Top = 7
      Width = 63
      Height = 13
      AutoSize = False
      Caption = 'Per'#237'odo.........'
    end
    object Label3: TLabel
      Left = 149
      Top = 7
      Width = 6
      Height = 13
      Caption = #224
    end
    object Label6: TLabel
      Left = 278
      Top = 6
      Width = 116
      Height = 13
      AutoSize = False
      Caption = 'Pesquisar por data de:'
      WordWrap = True
    end
    object lbl_cheio: TLabel
      Left = 608
      Top = 8
      Width = 12
      Height = 13
      Caption = '***'
    end
    object lbl_datapgto: TLabel
      Left = 322
      Top = 103
      Width = 63
      Height = 13
      AutoSize = False
      Caption = 'Data p/Pgto:'
      Visible = False
    end
    object Label31: TLabel
      Left = 9
      Top = 26
      Width = 195
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'Ordem de Impress'#227'o'
      Color = 9961367
      ParentColor = False
      Layout = tlCenter
      WordWrap = True
    end
    object Label32: TLabel
      Left = 207
      Top = 27
      Width = 116
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'Listar Somente'
      Color = 9961367
      ParentColor = False
      Layout = tlCenter
      WordWrap = True
    end
    object Label33: TLabel
      Left = 326
      Top = 28
      Width = 116
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'Tipo do Relatorio'
      Color = 9961367
      ParentColor = False
      Layout = tlCenter
      WordWrap = True
    end
    object Label38: TLabel
      Left = 538
      Top = 28
      Width = 89
      Height = 13
      Caption = 'Nota de Origem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sbSalvarPadrao: TSpeedButton
      Left = 776
      Top = 72
      Width = 150
      Height = 21
      Cursor = crHandPoint
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
    object sbn_gerarplanilha: TSpeedButton
      Left = 484
      Top = 98
      Width = 150
      Height = 21
      Cursor = crHandPoint
      Caption = 'Gerar Planilha Mod01'
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
      OnClick = sbn_gerarplanilhaClick
    end
    object sbn_gerarplanilhaMod02: TSpeedButton
      Left = 776
      Top = 93
      Width = 150
      Height = 21
      Cursor = crHandPoint
      Caption = 'Gerar Planilha Mod02'
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
      OnClick = sbn_gerarplanilhaClick
    end
    object Label42: TLabel
      Left = 646
      Top = 51
      Width = 116
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'Tipos dos Titulos'
      Color = 9961367
      ParentColor = False
      Layout = tlCenter
      WordWrap = True
    end
    object bbFpgto: TBitBtn
      Left = 776
      Top = 71
      Width = 150
      Height = 22
      Cursor = crHandPoint
      Hint = 
        'Mostra a Forma de Pagamento'#13#10'do T'#237'tulo Selecionado'#13#10'(que Esta na' +
        ' Posi'#231#227'o da Lista)'
      Caption = 'Forma de Pagamento'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
      Visible = False
      OnClick = bbFpgtoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
        0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
        B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
        FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
        FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
        FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
        0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
        0555555555777777755555555555555555555555555555555555}
      NumGlyphs = 2
    end
    object CB_CARTEIRA: TCheckBox
      Left = 195
      Top = 123
      Width = 132
      Height = 17
      Hint = 'Se Marcado a impress'#227'o'#13#10'padr'#227'o sera para impressora'#13#10'matricial'
      Caption = 'Somente para Carteira'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 17
      Visible = False
      OnClick = CB_MATRICIALClick
    end
    object cb_separado: TComboBox
      Left = 9
      Top = 82
      Width = 194
      Height = 21
      BevelKind = bkSoft
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 14
      TabOrder = 8
      Text = 'Sem Separar'
      Items.Strings = (
        'Ano da Emiss'#227'o'
        'Ano do Vencimento'
        'Banco'
        'Cidade'
        'Cliente'
        'Convenio'
        'Data de Emiss'#227'o'
        'Data de Pagamento'
        'Data de Vencimento'
        'Estado'
        'Forma de Pagamento'
        'M'#234's da Emiss'#227'o'
        'M'#234's do Vencimento'
        'Rede de Clientes'
        'Sem Separar'
        'Supervisor'
        'Televendas'
        'Tipo de Cobran'#231'a'
        'Tipo de Pedido'
        'Tipo do Documento'
        'Vendedor'
        'NF de Origem')
    end
    object MDT1: TMaskEdit
      Left = 61
      Top = 3
      Width = 81
      Height = 19
      Hint = 
        'Para filtrar t'#237'tulos somente a Partir de '#13#10'uma determinada data ' +
        #13#10'digite a mesma.'
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
      Left = 166
      Top = 3
      Width = 80
      Height = 19
      Hint = 
        'Para filtrar t'#237'tulos at'#233' '#13#10'uma determinada data '#13#10'digite a mesma' +
        '.'
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
    object bbAplicar: TBitBtn
      Left = 777
      Top = 4
      Width = 150
      Height = 24
      Cursor = crHandPoint
      Hint = 'Seleciona so T'#237'tulos'#13#10'de Acordo com as'#13#10'Op'#231#245'es Digitadas'
      Caption = '&Aplicar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 19
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
    object bbSitCli: TBitBtn
      Left = 777
      Top = 27
      Width = 150
      Height = 23
      Cursor = crHandPoint
      Hint = 'Mostra a Situa'#231#227'o de '#13#10'Cr'#233'dito do Cliente'#13#10'Selecionado'
      Caption = '&Situa'#231#227'o de Credito'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
      OnClick = bbSitCliClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0000377777777777777703030303030303037F7F7F7F7F7F7F7F000000000000
        00007777777777777777933393303933337073F37F37F73F3377393393303393
        379037FF7F37F37FF777379793303379793037777337F3777737339933303339
        93303377F3F7F3F77F3733993930393993303377F737F7377FF7399993303399
        999037777337F377777793993330333393307377FF37F3337FF7333993303333
        993033377F37F33377F7333993303333993033377337F3337737333333303333
        33303FFFFFF7FFFFFFF700000000000000007777777777777777030303030303
        03037F7F7F7F7F7F7F7F00000000000000007777777777777777}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 777
      Top = 114
      Width = 150
      Height = 25
      Cursor = crHandPoint
      Hint = 'Fecha Este Formul'#225'rio'#13#10'e Volta ao Menu Principal'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 21
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
    object cb_tpp: TComboBox
      Left = 401
      Top = 2
      Width = 194
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      TabOrder = 2
      Text = 'Emiss'#227'o'
      OnExit = cb_tppExit
      Items.Strings = (
        'Emiss'#227'o'
        'Vencimento'
        'Data da Baixa'
        'Data do pgto'
        'Data do Pedido')
    end
    object CB_MATRICIAL: TCheckBox
      Left = 188
      Top = 123
      Width = 132
      Height = 17
      Hint = 'Se Marcado a impress'#227'o'#13#10'padr'#227'o sera para impressora'#13#10'matricial'
      Caption = 'Impress'#227'o Matricial'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 13
      OnClick = CB_MATRICIALClick
    end
    object CB_VISREL: TCheckBox
      Left = 303
      Top = 122
      Width = 157
      Height = 17
      Hint = 'Se Marcado mostra o '#13#10'relat'#243'rio antes de imprimir'
      Caption = 'Visualizar Antes de Imprimir'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 14
    end
    object cb_formapag: TCheckBox
      Left = 8
      Top = 122
      Width = 181
      Height = 17
      Hint = 
        'Esta op'#231'ao quando marcada'#13#10'lista as formas de pagamento'#13#10'ap'#243's a ' +
        'impress'#227'o do t'#237'tulo'
      Caption = 'Exibir todas datas de pagamento'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
    end
    object CB_SEMBORDA: TCheckBox
      Left = 314
      Top = 67
      Width = 81
      Height = 17
      Hint = 
        'N'#227'o Emitir as Bordas Para'#13#10'Impress'#227'o mais r'#225'pida em'#13#10'impressora ' +
        'matricial'
      Caption = 'Sem Bordas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = CB_SEMBORDAClick
    end
    object bbMedPgVcto: TBitBtn
      Left = 455
      Top = 119
      Width = 175
      Height = 20
      Cursor = crHandPoint
      Hint = 'Click aqui para ver'#13#10'as m'#233'dias de pagamentos'#13#10'e vencimentos'
      Caption = 'M'#233'dia de Pagamento/Venctos'
      TabOrder = 18
      OnClick = bbMedPgVctoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
    end
    object DATAPGTO: TMaskEdit
      Left = 393
      Top = 99
      Width = 68
      Height = 19
      Hint = 'Data Prevista para Pagamento'
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      Text = '  /  /    '
      Visible = False
      OnExit = DATAPGTOExit
    end
    object CBORDEM: TComboBox
      Left = 9
      Top = 44
      Width = 195
      Height = 21
      BevelKind = bkSoft
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'Data de Vencimento'
      OnExit = cb_tppExit
      Items.Strings = (
        'Data de Vencimento'
        'Data de Emiss'#227'o'
        'Raz'#227'o Social'
        'Valor Crescente'
        'Valor Descrescente'
        'Data de Baixa'
        'Data de Pagamento'
        'Vendedor+Dt.Vcto'
        'Empresa+Emiss'#227'o'
        'Empresa+Vcto'
        'Chave do Pedido'
        'Numero da Duplicata')
    end
    object CBTD: TComboBox
      Left = 207
      Top = 45
      Width = 116
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 4
      Text = 'N'#227'o Pagas'
      OnExit = cb_tppExit
      Items.Strings = (
        'Todas'
        'Pagas'
        'N'#227'o Pagas')
    end
    object CB_TIPOREL: TComboBox
      Left = 326
      Top = 46
      Width = 116
      Height = 21
      BevelKind = bkSoft
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = 'Modelo 01'
      OnChange = CB_TIPORELChange
      OnClick = CB_TIPORELClick
      OnExit = cb_tppExit
      Items.Strings = (
        'Modelo 01'
        'Modelo 02'
        'Modelo 03'
        'Modelo 04'
        'Modelo 05'
        'Modelo 06 Novo')
    end
    object CB_AVANCPAG: TCheckBox
      Left = 204
      Top = 82
      Width = 103
      Height = 17
      Caption = 'Avan'#231'ar Pagina'
      Color = 9961367
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = CB_SEMBORDAClick
    end
    object CB_INIBIR_DEVOL: TCheckBox
      Left = 314
      Top = 82
      Width = 328
      Height = 17
      Hint = 
        'Se Marcado os pedidos que foram devolvido as'#13#10'mercadorias n'#227'o ir' +
        'am aparecer no relatorio'
      Caption = 'Inibir os Pedidos que Possui Devolu'#231#227'o(mesmo que seja Parcial)'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
    object bbImprimir: TBitBtn
      Left = 777
      Top = 49
      Width = 150
      Height = 21
      Cursor = crHandPoint
      Hint = 'Imprime os T'#237'tulos '#13#10'Selecionados'
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 20
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
    object NOTA_ORIGEM: TEdit
      Left = 536
      Top = 50
      Width = 94
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
    end
    object cb_RazSocNomFan: TCheckBox
      Left = 8
      Top = 106
      Width = 225
      Height = 17
      Hint = 
        'Esta op'#231'ao quando marcada'#13#10'lista as formas de pagamento'#13#10'ap'#243's a ' +
        'impress'#227'o do t'#237'tulo'
      Caption = 'Substituir Raz'#227'o Social por Nome Fantasia'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 22
    end
    object cb_totaisLiquido: TCheckBox
      Left = 450
      Top = 51
      Width = 81
      Height = 17
      Hint = 
        'N'#227'o Emitir as Bordas Para'#13#10'Impress'#227'o mais r'#225'pida em'#13#10'impressora ' +
        'matricial'
      Caption = 'Totais Liquido'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 23
      Visible = False
      OnClick = CB_SEMBORDAClick
    end
    object bb_exportar: TBitBtn
      Left = 634
      Top = 5
      Width = 143
      Height = 43
      Caption = '&Exportar Relatorio'
      TabOrder = 24
      OnClick = bb_exportarClick
      Glyph.Data = {
        36080000424D3608000000000000360400002800000020000000200000000100
        08000000000000040000C40E0000C40E00000001000000010000000000000368
        03000E5F1400091E18001C771D000C271E00203A260012342800194C29002541
        2C00096C2F00194432000E6B32003187340011733600204E38001B6B39001979
        3B00217E3F002B6541002C8746003F93460039724B004A964C00348C4E00395E
        5000489B530038975400407A5600425E5800568259003E9E590054A459004680
        5C00569A5D0044A35E004A6A5F004C876100609963005BAA640050756500548E
        660063AC680057966A0067B06E005E9B71006CB6740062B2750065A076006BA6
        7B0072BB7B006B977D0070AA800072BA830075AF85007BC1850075A0860081AA
        8D0081BC900088C792008AB7950094C79C009DD0A700A8C2A800AAD6B200BADE
        C000C4E5CA00CDDACD00D2E4D200CCE9D200D5E5D500D8E7D800D9E8D900DAE9
        DA00DCEADB00DEEBDE00DFECDF00E0EEE000E3EBE300E2EEE300E4EFE400E6F0
        E600E8F1E800EAF2E900EBF3EB00EDF5ED00EFF6EF00F1F7F100F3F8F300F5F9
        F500F6FAF500F6FAF600F8FAF800F9FBFA00FAFDFA00FBFEFB00FDFEFD00FEFF
        FE00FFFFFF000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000626262626262
        6262626262626262626262626262626262626262626262626262626262626262
        626262626262626262626262626262626262626262626262626262621C0F0F0F
        0F0F0F0B0B0B0B0B0B070707070707050505050503030303626262621C272323
        23231F1F1F1B1B1B181814141412121211110E0E0E0C0A03626262621C273328
        282828282828242424242424241D1D1D1D1D1D1D1D1D0C0362626262212F3352
        5251504F4F4D4C4B4A4A49484747464646444444441D0E0362626262212F3353
        525251504F4F4D4C4B4A4A494847474646464444441D0E0562626262212F3354
        53525251504F4F4D4C4B4A4A4948474746464644441D0E056262626225353355
        5453525251504F4F4D4C4B4A4A49484747464646441D11056262626225353355
        555453525251504F4F4D4C402609060606060606461D11056262626225373856
        1709090909090909090908020D0D0E1013131906461D120562626262293A3857
        170E0E1010131319191901043B2E141412120147461D120762626262293B3858
        49172E32322E2C272001153E2E15181414013D47471D120762626262293D3858
        5849172E32322A2001153E2C1A1A151801083F4847241407626262622B3D3859
        585849172E2C2001153E2E20201A1A011412024948241407626262622B3E395A
        595858491720011540322020202001161E291E4A49241407626262622D3E395B
        5A595858490415403727272020163F4F4D4C4B4A4A241807626262622D40395C
        5B5A59583D17413B2A2A27201E01434F4F4D4C4B4A24180B626262622D40395D
        5C5B5A3D1A413D2E2C2A271E221E01434F4F4D4C4B241B0B626262623040395E
        5D5C3D20423D32322E2A1E2C2E201E01434F4F4D4C281B0B626262623041395E
        5E3D27423B3737322C1E2C32322E201E01434F4F4D281B0B6262626231413C5F
        3D2C423E3B373732263F262E32322E201E01434F4F281F0B6262626231413C60
        2E423E3B3B3B3526475843262E32322E201E01504F281F0B6262626231423C61
        2E2E2C2A2A26264E59585843262626291E1E1E5150281F0F6262626234423C62
        61605F5E5E5D5C5B5A59585857565555545352525128230F6262626234423C62
        6261605F5E5E5D5C5B5A595858575655555453525228230F6262626234453C62
        626261605F5E5E5D5C5B5A5958585756555554535228230F626262623645393C
        3C3C3C3C3C3C39393939393838383838383333333333230F6262626236454545
        4242424141414040403E3E3D3D3B3A3735352F2F2F27270F6262626236363634
        34343131313030302D2D2D2B2929292525252121211C1C1C6262626262626262
        6262626262626262626262626262626262626262626262626262626262626262
        6262626262626262626262626262626262626262626262626262}
    end
    object cb_caucao: TComboBox
      Left = 646
      Top = 69
      Width = 116
      Height = 21
      BevelKind = bkSoft
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 25
      OnChange = CB_TIPORELChange
      OnClick = CB_TIPORELClick
      OnExit = cb_tppExit
      Items.Strings = (
        'Todos'
        'Caucionados'
        'N'#227'o Caucionados')
    end
  end
  object Qr_CRec: TQuery
    OnCalcFields = Qr_CRecCalcFields
    DatabaseName = 'SG_ASSOC'
    DataSource = DM1.DS_TPDRE
    SQL.Strings = (
      'Select CRNUMERO, CRDESD, CRDTEMIS, CRDTVCTO,'
      '           CRDTBX, CRDESC, CRJUROS, CRVALOR,CRCODCLI,'
      '           CRAZAO,CFONE01,'
      '           CCODLOC,CCIDADE,CUF,'
      '           CCODBAI,CBAIRRO,'
      '           CRLOTE,CRVALPAG,CRDUP,CRDTPAG,'
      '           CRNPED,CRORDEM,CRLOTSEQ_LB,'
      '           CRCODEMP,CRCODBCO,CRSTATUS,CRJURD,'
      '           CRAZAO AS NOMGRU,'
      '           CRCODCC AS CODCCU,'
      '           CRNOMCC AS NOMCCU,'
      '           CRCODFPGTO,CRNOMFPGTO,'
      '           VCODVEN,VNOME,cricmsr,crtotipi,'
      '           CRDESCF,'
      '           CRTITPROT,'
      '           CRDTDESCF,CRDESCD,CRMULTA,CRDEVOL,CRTCB'
      '           ,CRNUMPARC,CRQTDPARC,CRNFACUM'
      '             from CADDAR, CADCLI,CADVEN'
      '          where CRCODEMP is null and'
      '           CCODCLI=CRCODCLI and'
      '           VCODVEN=CRCODVEN')
    Left = 416
    Top = 148
    object Qr_CRecCRNUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CRNUMERO'
      Origin = 'SG_ASSOC.CADDAR.CRNUMERO'
    end
    object Qr_CRecCRDESD: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'CRDESD'
      Origin = 'SG_ASSOC.CADDAR.CRDESD'
      Size = 2
    end
    object Qr_CRecCRDTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'CRDTEMIS'
      Origin = 'SG_ASSOC.CADDAR.CRDTEMIS'
    end
    object Qr_CRecCRDTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'CRDTVCTO'
      Origin = 'SG_ASSOC.CADDAR.CRDTVCTO'
    end
    object Qr_CRecCRDTBX: TDateTimeField
      DisplayLabel = 'Dt.Baixa'
      FieldName = 'CRDTBX'
      Origin = 'SG_ASSOC.CADDAR.CRDTBX'
    end
    object Qr_CRecCRDESC: TFloatField
      DisplayLabel = 'Vlr.Desc.'
      FieldName = 'CRDESC'
      Origin = 'SG_ASSOC.CADDAR.CRDESC'
    end
    object Qr_CRecCRJUROS: TFloatField
      DisplayLabel = 'Vlr.Juros'
      FieldName = 'CRJUROS'
      Origin = 'SG_ASSOC.CADDAR.CRJUROS'
    end
    object Qr_CRecCRVALOR: TFloatField
      DisplayLabel = 'Valor Compra'
      FieldName = 'CRVALOR'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR'
    end
    object Qr_CRecCRCODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'CRCODCLI'
      Origin = 'SG_ASSOC.CADDAR.CRCODCLI'
    end
    object Qr_CRecCRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_CRecCRLOTE: TFloatField
      DisplayLabel = 'Lote Bx'
      FieldName = 'CRLOTE'
      Origin = 'SG_ASSOC.CADDAR.CRLOTE'
    end
    object Qr_CRecVCODVEN: TFloatField
      DisplayLabel = 'Cod.Vend'
      FieldName = 'VCODVEN'
      Origin = 'SG_ASSOC.CADVEN.VCODVEN'
    end
    object Qr_CRecVNOME: TStringField
      DisplayLabel = 'Nome Vendedor'
      FieldName = 'VNOME'
      Origin = 'SG_ASSOC.CADVEN.VNOME'
      Size = 40
    end
    object Qr_CRecCRVALPAG: TFloatField
      DisplayLabel = 'Valor Recebido'
      FieldName = 'CRVALPAG'
      Origin = 'SG_ASSOC.CADDAR.CRVALPAG'
    end
    object Qr_CRecCRDUP: TFloatField
      DisplayLabel = 'Dup'
      FieldName = 'CRDUP'
      Origin = 'SG_ASSOC.CADDAR.CRDUP'
    end
    object Qr_CRecCRDTPAG: TDateTimeField
      DisplayLabel = 'Dt.Pgto'
      FieldName = 'CRDTPAG'
      Origin = 'SG_ASSOC.CADDAR.CRDTPAG'
    end
    object Qr_CRecCRNPED: TFloatField
      DisplayLabel = 'Chave Ped'
      FieldName = 'CRNPED'
      Origin = 'SG_ASSOC.CADDAR.CRNPED'
    end
    object Qr_CRecCRORDEM: TFloatField
      DisplayLabel = 'Ordem Ped'
      FieldName = 'CRORDEM'
      Origin = 'SG_ASSOC.CADDAR.CRORDEM'
    end
    object Qr_CRecCRCODEMP: TFloatField
      DisplayLabel = 'Cod.Emp.'
      FieldName = 'CRCODEMP'
      Origin = 'SG_ASSOC.CADDAR.CRCODEMP'
    end
    object Qr_CRecCRLOTSEQ_LB: TFloatField
      DisplayLabel = 'Lote Seq Bx'
      FieldName = 'CRLOTSEQ_LB'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_LB'
    end
    object Qr_CRecCRCODBCO: TFloatField
      DisplayLabel = 'C'#243'd.Bco'
      FieldName = 'CRCODBCO'
      Origin = 'SG_ASSOC.CADDAR.CRCODBCO'
    end
    object Qr_CRecnombco: TStringField
      DisplayLabel = 'Nome do Banco'
      FieldName = 'nombco'
      Size = 40
    end
    object Qr_CRecCCODLOC: TFloatField
      FieldName = 'CCODLOC'
      Origin = 'SG_ASSOC.CADCLI.CCODLOC'
    end
    object Qr_CRecCCIDADE: TStringField
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Qr_CRecCUF: TStringField
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Qr_CRecCCODBAI: TFloatField
      FieldName = 'CCODBAI'
      Origin = 'SG_ASSOC.CADCLI.CCODBAI'
    end
    object Qr_CRecCBAIRRO: TStringField
      FieldName = 'CBAIRRO'
      Origin = 'SG_ASSOC.CADCLI.CBAIRRO'
      Size = 30
    end
    object Qr_CRectipdup: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tipdup'
      Size = 10
    end
    object Qr_CRecdtemis: TStringField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'dtemis'
      Size = 10
    end
    object Qr_CRecdtvcto: TStringField
      DisplayLabel = 'Data Vcto'
      FieldName = 'dtvcto'
      Size = 10
    end
    object Qr_CRecdtbx: TStringField
      DisplayLabel = 'Data Baixa'
      FieldName = 'dtbx'
    end
    object Qr_CRecdtpag: TStringField
      DisplayLabel = 'Data Pgto.'
      FieldName = 'dtpag'
      Size = 10
    end
    object Qr_CRecatraso: TFloatField
      DisplayLabel = 'Qtd Atraso'
      FieldName = 'atraso'
    end
    object Qr_CRecCRSTATUS: TFloatField
      FieldName = 'CRSTATUS'
      Origin = 'SG_ASSOC.CADDAR.CRSTATUS'
    end
    object Qr_CRecNOMGRU: TStringField
      FieldName = 'NOMGRU'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_CRecCODCCU: TStringField
      FieldName = 'CODCCU'
      Origin = 'SG_ASSOC.CADDAR.CRCODCC'
      Size = 5
    end
    object Qr_CRecNOMCCU: TStringField
      FieldName = 'NOMCCU'
      Origin = 'SG_ASSOC.CADDAR.CRNOMCC'
      Size = 40
    end
    object Qr_CRecnumdoc: TStringField
      FieldName = 'numdoc'
      Size = 9
    end
    object Qr_CRecrazao_codigo: TStringField
      FieldName = 'razao_codigo'
      Size = 60
    end
    object Qr_CRecvalapagar: TFloatField
      DisplayLabel = 'Saldo Devedor'
      FieldName = 'valapagar'
    end
    object Qr_CRecCRCODFPGTO: TFloatField
      DisplayLabel = 'C'#243'd.Fpgto'
      FieldName = 'CRCODFPGTO'
      Origin = 'SG_ASSOC.CADDAR.CRCODFPGTO'
    end
    object Qr_CRecCRNOMFPGTO: TStringField
      DisplayLabel = 'Nome Fpgto'
      FieldName = 'CRNOMFPGTO'
      Origin = 'SG_ASSOC.CADDAR.CRNOMFPGTO'
      Size = 40
    end
    object Qr_CRecCRJURD: TFloatField
      FieldName = 'CRJURD'
      Origin = 'SG_ASSOC.CADDAR.CRJURD'
    end
    object Qr_CRecCRICMSR: TFloatField
      FieldName = 'CRICMSR'
      Origin = 'SG_ASSOC.CADDAR.CRICMSR'
    end
    object Qr_CRecCRTOTIPI: TFloatField
      FieldName = 'CRTOTIPI'
      Origin = 'SG_ASSOC.CADDAR.CRTOTIPI'
    end
    object Qr_CRecCRDESCF: TFloatField
      FieldName = 'CRDESCF'
      Origin = 'SG_ASSOC.CADDAR.CRDESCF'
    end
    object Qr_CRecCRDTDESCF: TDateTimeField
      FieldName = 'CRDTDESCF'
      Origin = 'SG_ASSOC.CADDAR.CRDTDESCF'
    end
    object Qr_CRecCRDESCD: TFloatField
      FieldName = 'CRDESCD'
      Origin = 'SG_ASSOC.CADDAR.CRDESCD'
    end
    object Qr_CRecCRMULTA: TFloatField
      FieldName = 'CRMULTA'
      Origin = 'SG_ASSOC.CADDAR.CRMULTA'
    end
    object Qr_CRecCRDEVOL: TFloatField
      FieldName = 'CRDEVOL'
      Origin = 'SG_ASSOC.CADDAR.CRDEVOL'
    end
    object Qr_CRecvalorjuros: TFloatField
      DisplayLabel = 'Valor Juros'
      FieldName = 'valorjuros'
    end
    object Qr_CRecCRTCB: TFloatField
      FieldName = 'CRTCB'
      Origin = 'SG_ASSOC.CADDAR.CRTCB'
    end
    object Qr_CRecCRTITPROT: TFloatField
      FieldName = 'CRTITPROT'
      Origin = 'SG_ASSOC.CADDAR.CRTITPROT'
    end
    object Qr_CRecCRNUMPARC: TFloatField
      FieldName = 'CRNUMPARC'
      Origin = 'SG_ASSOC.CADDAR.CRNUMPARC'
    end
    object Qr_CRecCRQTDPARC: TFloatField
      FieldName = 'CRQTDPARC'
      Origin = 'SG_ASSOC.CADDAR.CRQTDPARC'
    end
    object Qr_CRecnumero_calc: TStringField
      FieldName = 'numero_calc'
      Size = 15
    end
    object Qr_CRecCRNFACUM: TStringField
      FieldName = 'CRNFACUM'
      Origin = 'SG_ASSOC.CADDAR.CRNFACUM'
      Size = 100
    end
    object Qr_CRecCFONE01: TStringField
      FieldName = 'CFONE01'
      Origin = 'SG_ASSOC.CADCLI.CFONE01'
      Size = 16
    end
    object Qr_CRecmulta: TFloatField
      Alignment = taCenter
      DisplayLabel = 'Multa'
      FieldName = 'multa'
    end
    object Qr_CRecCRQTDDM: TFloatField
      FieldName = 'CRQTDDM'
    end
    object Qr_CRecjurosemulta: TFloatField
      FieldName = 'jurosemulta'
    end
    object Qr_CRecender: TStringField
      FieldName = 'ender'
      Size = 254
    end
    object Qr_CReccemail: TStringField
      FieldName = 'cemail'
      Size = 254
    end
    object Qr_CRecCCEP: TStringField
      FieldName = 'CCEP'
      Size = 10
    end
    object Qr_CRecCCNPJ: TFloatField
      FieldName = 'CCNPJ'
    end
    object Qr_CRecCCPF: TFloatField
      FieldName = 'CCPF'
    end
    object Qr_CRecVCPF: TFloatField
      FieldName = 'VCPF'
    end
  end
  object Src_CRec: TDataSource
    DataSet = Qr_CRec
    Left = 360
    Top = 96
  end
  object Matricial: TRLDraftFilter
    EjectMethod = ejForceWithCode
    Left = 576
    Top = 48
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 632
    Top = 56
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 656
    Top = 16
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 720
    Top = 40
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 680
    Top = 32
  end
  object SaveDialog1: TSaveDialog
    Left = 466
    Top = 286
  end
end

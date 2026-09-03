object Frm_BDev_For: TFrm_BDev_For
  Left = 26
  Top = 193
  Width = 759
  Height = 179
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Baixa de Devolu'#231#227'o de Mercadorias'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 236
    Top = 47
    Width = 159
    Height = 13
    Caption = 'Informe o N'#250'mero do Titulo:'
  end
  object Label2: TLabel
    Left = 468
    Top = 46
    Width = 7
    Height = 13
    Caption = '/'
  end
  object Label22: TLabel
    Left = 368
    Top = 11
    Width = 27
    Height = 13
    Caption = 'NR.:'
  end
  object Label3: TLabel
    Left = 265
    Top = 29
    Width = 130
    Height = 13
    Caption = 'C'#243'digo do Fornecedor:'
  end
  object Label4: TLabel
    Left = 295
    Top = 66
    Width = 100
    Height = 13
    Caption = 'Data de Emiss'#227'o:'
  end
  object Label5: TLabel
    Left = 303
    Top = 83
    Width = 90
    Height = 13
    Caption = 'Valor do T'#237'tulo:'
  end
  object NUMERO: TEdit
    Left = 398
    Top = 44
    Width = 65
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    OnExit = NUMEROExit
    OnKeyPress = NUMEROKeyPress
  end
  object edt_nomfor: TEdit
    Left = 462
    Top = 26
    Width = 280
    Height = 19
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 2
  end
  object bbBaixar: TBitBtn
    Left = 224
    Top = 113
    Width = 150
    Height = 25
    Caption = '&Baixar'
    TabOrder = 6
    OnClick = bbBaixarClick
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
    Left = 554
    Top = 109
    Width = 150
    Height = 25
    Caption = '&Sair'
    TabOrder = 7
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
  object DESD: TEdit
    Left = 477
    Top = 44
    Width = 33
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    Text = 'A'
    OnExit = DESDExit
  end
  object NR: TEdit
    Left = 398
    Top = 8
    Width = 97
    Height = 19
    Hint = 'N'#250'mero da Nota de Recebimento'
    Ctl3D = False
    Enabled = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object edt_codfor: TEdit
    Left = 398
    Top = 26
    Width = 65
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    OnEnter = edt_codforEnter
    OnExit = edt_codforExit
    OnKeyPress = edt_codforKeyPress
  end
  object edt_dtemis: TMaskEdit
    Left = 398
    Top = 62
    Width = 97
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 5
    Text = '  /  /    '
    OnEnter = edt_dtemisEnter
  end
  object gb_nc: TGroupBox
    Left = 0
    Top = 0
    Width = 225
    Height = 148
    Align = alLeft
    Caption = 'Notas de Cr'#233'ditos Encontrada:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    object DBGrid_nc: TDBGrid
      Left = 2
      Top = 15
      Width = 221
      Height = 131
      Align = alClient
      DataSource = src_nc
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid_ncDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CANUMERO'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CADTVCTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMABERTO'
          Width = 70
          Visible = True
        end>
    end
  end
  object edt_valor: TCurrencyEdit
    Left = 398
    Top = 80
    Width = 98
    Height = 19
    AutoSize = False
    Color = 8454143
    Ctl3D = False
    DisplayFormat = '0.00'
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 9
  end
  object src_nc: TDataSource
    DataSet = Query_nc
    Left = 208
    Top = 16
  end
  object Query_nc: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CACODEMP,CANUMERO,CADESD,CAVALOR,'
      'CACODFOR,CADTEMIS,CADTVCTO,CAVALPAG,'
      'CAVALOR-CAVALPAG AS EMABERTO,CADUP'
      'from CADDAP')
    Left = 240
    Top = 24
    object Query_ncCANUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CANUMERO'
      Origin = 'SG_ASSOC.CADDAP.CANUMERO'
    end
    object Query_ncCADESD: TStringField
      DisplayLabel = 'Parc'
      FieldName = 'CADESD'
      Origin = 'SG_ASSOC.CADDAP.CADESD'
      Size = 2
    end
    object Query_ncCAVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CAVALOR'
      Origin = 'SG_ASSOC.CADDAP.CAVALOR'
    end
    object Query_ncCACODFOR: TFloatField
      DisplayLabel = 'C'#243'd.Fornec'
      FieldName = 'CACODFOR'
      Origin = 'SG_ASSOC.CADDAP.CACODFOR'
    end
    object Query_ncCADTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'CADTEMIS'
      Origin = 'SG_ASSOC.CADDAP.CADTEMIS'
    end
    object Query_ncCADTVCTO: TDateTimeField
      DisplayLabel = 'Dt_Vcto'
      FieldName = 'CADTVCTO'
      Origin = 'SG_ASSOC.CADDAP.CADTVCTO'
    end
    object Query_ncCAVALPAG: TFloatField
      DisplayLabel = 'Valor Pago'
      FieldName = 'CAVALPAG'
      Origin = 'SG_ASSOC.CADDAP.CAVALPAG'
    end
    object Query_ncEMABERTO: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'EMABERTO'
      Origin = 'SG_ASSOC.CADDAP.CAVALOR'
    end
    object Query_ncCACODEMP: TFloatField
      FieldName = 'CACODEMP'
      Origin = 'SG_ASSOC.CADDAP.CACODEMP'
    end
    object Query_ncCADUP: TFloatField
      FieldName = 'CADUP'
      Origin = 'SG_ASSOC.CADDAP.CADUP'
    end
  end
end

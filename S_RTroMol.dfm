object Frm_RTroMol: TFrm_RTroMol
  Left = 255
  Top = 155
  Width = 676
  Height = 505
  Caption = 'Relatorio Ordem de Servico Para Troca de Molde...'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object regua: TGauge
    Left = 0
    Top = 449
    Width = 667
    Height = 24
    ForeColor = clNavy
    Progress = 0
  end
  object Label1: TLabel
    Left = 5
    Top = 16
    Width = 104
    Height = 13
    Caption = 'Empresa.....................'
  end
  object Label2: TLabel
    Left = 6
    Top = 143
    Width = 102
    Height = 13
    Caption = 'Data Troca................'
  end
  object Label3: TLabel
    Left = 210
    Top = 141
    Width = 43
    Height = 13
    Caption = 'Ate .......:'
  end
  object Label6: TLabel
    Left = 5
    Top = 36
    Width = 105
    Height = 13
    Caption = 'Cod. Gerente..............'
  end
  object Label7: TLabel
    Left = 5
    Top = 54
    Width = 104
    Height = 13
    Caption = 'Cod. Encarregado......'
  end
  object Label8: TLabel
    Left = 4
    Top = 72
    Width = 102
    Height = 13
    Caption = 'Tipo Mol.Entrada.......'
  end
  object Label9: TLabel
    Left = 4
    Top = 89
    Width = 107
    Height = 13
    Caption = 'Tipo Mol. Saida...........'
  end
  object Label10: TLabel
    Left = 272
    Top = 201
    Width = 5
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 254
    Top = 423
    Width = 75
    Height = 25
    Caption = '&Impressao'
    TabOrder = 19
    OnClick = BitBtn1Click
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
  object BitBtn2: TBitBtn
    Left = 330
    Top = 423
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 20
    OnClick = BitBtn2Click
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
  object z: TDBGrid
    Left = 4
    Top = 219
    Width = 639
    Height = 201
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = zCellClick
    OnDrawColumnCell = zDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'OK'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCODEMP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCODTROMOL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOBSESTSAI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TDATAENT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'THORAENTINI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TMINUENTTOFIN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TDATASAI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'THORASAIINI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TMINUSAIFIN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCODSIT1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCODSIT2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCODSIT3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCODSIT4'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCODSIT5'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCODSIT6'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCODSIT7'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCODSIT8'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCODSIT9'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCODSIT10'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCODMOLDE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCODIMO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCODMOLSAI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCODENCAR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCODGEREN'
        Visible = True
      end>
  end
  object empresa: TEdit
    Left = 107
    Top = 10
    Width = 91
    Height = 19
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
  end
  object dataini: TMaskEdit
    Left = 107
    Top = 136
    Width = 91
    Height = 19
    Ctl3D = False
    EditMask = '99/99/9999;1; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 10
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 9
    Text = '  /  /    '
    OnExit = datainiExit
  end
  object datafin: TMaskEdit
    Left = 244
    Top = 136
    Width = 91
    Height = 19
    Ctl3D = False
    EditMask = '99/99/9999;1; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 10
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 10
    Text = '  /  /    '
    OnExit = datafinExit
  end
  object fecha_aberto: TCheckBox
    Left = 4
    Top = 167
    Width = 237
    Height = 17
    Caption = 'Ordem Para Troca Em - Aberto ou Fechado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = fecha_abertoClick
  end
  object nome_emp: TEdit
    Left = 244
    Top = 10
    Width = 381
    Height = 19
    TabStop = False
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 12
  end
  object cod_gerente: TEdit
    Left = 107
    Top = 28
    Width = 91
    Height = 19
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
  end
  object nome_gerente: TEdit
    Left = 244
    Top = 28
    Width = 381
    Height = 19
    TabStop = False
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
  end
  object cod_encarregado: TEdit
    Left = 107
    Top = 46
    Width = 91
    Height = 19
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
  end
  object nome_encarregado: TEdit
    Left = 244
    Top = 46
    Width = 381
    Height = 19
    TabStop = False
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
  end
  object tmolentrada: TEdit
    Left = 107
    Top = 64
    Width = 91
    Height = 19
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
  end
  object tmolsaida: TEdit
    Left = 107
    Top = 82
    Width = 91
    Height = 19
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 7
  end
  object nome_molentrada: TEdit
    Left = 244
    Top = 64
    Width = 381
    Height = 19
    TabStop = False
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 6
  end
  object nome_molsaida: TEdit
    Left = 244
    Top = 82
    Width = 381
    Height = 19
    TabStop = False
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 8
  end
  object BUT_GERENTE: TBitBtn
    Left = 198
    Top = 28
    Width = 46
    Height = 19
    TabOrder = 14
    TabStop = False
    OnClick = BUT_GERENTEClick
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
  end
  object BUT_ENCARREGADO: TBitBtn
    Left = 198
    Top = 47
    Width = 46
    Height = 18
    TabOrder = 15
    TabStop = False
    OnClick = BUT_ENCARREGADOClick
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
  end
  object BUT_MOLENTRADA: TBitBtn
    Left = 198
    Top = 65
    Width = 46
    Height = 18
    TabOrder = 16
    TabStop = False
    OnClick = BUT_MOLENTRADAClick
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
  end
  object BUT_MOLSAIDA: TBitBtn
    Left = 198
    Top = 83
    Width = 46
    Height = 18
    TabOrder = 17
    TabStop = False
    OnClick = BUT_MOLSAIDAClick
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
  end
  object Panel1: TPanel
    Left = 128
    Top = 224
    Width = 404
    Height = 185
    TabOrder = 18
    Visible = False
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 402
      Height = 183
      Align = alClient
      DataSource = DSTEMP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
    end
  end
  object BitBtn3: TBitBtn
    Left = 6
    Top = 192
    Width = 209
    Height = 25
    Caption = '&Visualizar Parametros...'
    TabOrder = 21
    OnClick = BitBtn3Click
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
  end
  object DSTEMP: TDataSource
    DataSet = TEMP
    Left = 24
    Top = 336
  end
  object TEMP: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 20
    Top = 280
  end
  object TROMOL: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select'
      'TCODEMP'
      ',TCODTROMOL'
      ',TOBSESTSAI'
      ',TDATAENT'
      ',THORAENTINI'
      ',TMINUENTTOFIN'
      ',TDATASAI'
      ',THORASAIINI'
      ',TMINUSAIFIN'
      ',TCODSIT1'
      ',TCODSIT2'
      ',TCODSIT3'
      ',TCODSIT4'
      ',TCODSIT5'
      ',TCODSIT6'
      ',TCODSIT7'
      ',TCODSIT8'
      ',TCODSIT9'
      ',TCODSIT10'
      ',TCODMOLDE'
      ',TCODIMO'
      ',TCODMOLSAI'
      ',TCODENCAR'
      ',TCODGEREN'
      ','#39' '#39' OK'
      'from cadtromol')
    UpdateObject = UpdateSQL1
    Left = 569
    Top = 312
    object TROMOLTCODEMP: TFloatField
      FieldName = 'TCODEMP'
    end
    object TROMOLTCODTROMOL: TFloatField
      FieldName = 'TCODTROMOL'
    end
    object TROMOLTOBSESTSAI: TStringField
      FieldName = 'TOBSESTSAI'
      Size = 50
    end
    object TROMOLTDATAENT: TDateTimeField
      FieldName = 'TDATAENT'
    end
    object TROMOLTHORAENTINI: TStringField
      FieldName = 'THORAENTINI'
      Size = 2
    end
    object TROMOLTMINUENTTOFIN: TStringField
      FieldName = 'TMINUENTTOFIN'
      Size = 2
    end
    object TROMOLTDATASAI: TDateTimeField
      FieldName = 'TDATASAI'
    end
    object TROMOLTHORASAIINI: TStringField
      FieldName = 'THORASAIINI'
      Size = 2
    end
    object TROMOLTMINUSAIFIN: TStringField
      FieldName = 'TMINUSAIFIN'
      Size = 2
    end
    object TROMOLTCODSIT1: TStringField
      FieldName = 'TCODSIT1'
      Size = 50
    end
    object TROMOLTCODSIT2: TStringField
      FieldName = 'TCODSIT2'
      Size = 50
    end
    object TROMOLTCODSIT3: TStringField
      FieldName = 'TCODSIT3'
      Size = 50
    end
    object TROMOLTCODSIT4: TStringField
      FieldName = 'TCODSIT4'
      Size = 50
    end
    object TROMOLTCODSIT5: TStringField
      FieldName = 'TCODSIT5'
      Size = 50
    end
    object TROMOLTCODSIT6: TStringField
      FieldName = 'TCODSIT6'
      Size = 50
    end
    object TROMOLTCODSIT7: TStringField
      FieldName = 'TCODSIT7'
      Size = 50
    end
    object TROMOLTCODSIT8: TStringField
      FieldName = 'TCODSIT8'
      Size = 50
    end
    object TROMOLTCODSIT9: TStringField
      FieldName = 'TCODSIT9'
      Size = 50
    end
    object TROMOLTCODSIT10: TStringField
      FieldName = 'TCODSIT10'
      Size = 50
    end
    object TROMOLTCODMOLDE: TFloatField
      FieldName = 'TCODMOLDE'
    end
    object TROMOLTCODIMO: TFloatField
      FieldName = 'TCODIMO'
    end
    object TROMOLTCODMOLSAI: TFloatField
      FieldName = 'TCODMOLSAI'
    end
    object TROMOLTCODENCAR: TFloatField
      FieldName = 'TCODENCAR'
    end
    object TROMOLTCODGEREN: TFloatField
      FieldName = 'TCODGEREN'
    end
    object TROMOLOK: TStringField
      FieldName = 'OK'
      FixedChar = True
      Size = 1
    end
  end
  object SITUACAO: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select scodsitmaq,snomsitmaq from cadsitmaq')
    Left = 86
    Top = 344
    object SITUACAOSCODSITMAQ: TFloatField
      FieldName = 'SCODSITMAQ'
      Origin = 'SG_ASSOC.CADSITMAQ.SCODSITMAQ'
    end
    object SITUACAOSNOMSITMAQ: TStringField
      FieldName = 'SNOMSITMAQ'
      Origin = 'SG_ASSOC.CADSITMAQ.SNOMSITMAQ'
      Size = 40
    end
  end
  object DataSource1: TDataSource
    DataSet = TROMOL
    Left = 568
    Top = 264
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update cadtromol'
      'set'
      '  OK = :OK'
      'where'
      '  TCODEMP = :OLD_TCODEMP and'
      '  TCODTROMOL = :OLD_TCODTROMOL')
    InsertSQL.Strings = (
      'insert into cadtromol'
      '  (OK)'
      'values'
      '  (:OK)')
    DeleteSQL.Strings = (
      'delete from cadtromol'
      'where'
      '  TCODEMP = :OLD_TCODEMP and'
      '  TCODTROMOL = :OLD_TCODTROMOL')
    Left = 568
    Top = 368
  end
end

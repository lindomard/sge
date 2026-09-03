object Frm_RelPro: TFrm_RelPro
  Left = 10
  Top = 36
  Width = 792
  Height = 510
  Caption = 'Relacionamento de Produtos'
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
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 784
    Height = 173
    Align = alTop
    Caption = 'Produtos sem Relacionamento'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 780
      Height = 156
      Align = alClient
      DataSource = DM2.Src_AjPco
      FixedColor = 13696509
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'APCODFOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APLOTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APDATA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APCODPRO_FOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APCODBAR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APNOME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APAPRES'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APCODFAB'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APNOMFAB'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APUND'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APEMBMUL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APPCOFAB'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APPCOMAX'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APPCOVDA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APPCOFAB_CX'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APPCOMAX_CX'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APDTVIG'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APCODGRU'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APNOMGRU'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APCODCON'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APNOMCON'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APCODRAM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APNOMRAM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APCODTIP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APNOMTIP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APLISTA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APIPI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APREGMS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APCLAS'
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 173
    Width = 784
    Height = 107
    Align = alTop
    Caption = 'Produtos c/Descri'#231#245'es Semelhantes'
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 780
      Height = 90
      Align = alClient
      DataSource = DM1.Src_Pro
      FixedColor = 13696509
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PDCODPRO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDCODBAR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDMARCA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDCODFOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDPRECO1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDPMC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDCX_PVDA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDCX_PFAB'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDCX_PMAX'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDSIT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDCODGRU'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDCODCON'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDCODRAM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDCODTIP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDESTMAX'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDESTMIN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDLISTA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDPCOFAB'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDIPI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDREGMS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDCLAS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDEMBMUL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOMFOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOMGRU'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOMCON'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOMRAM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOMTIP'
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 427
    Width = 784
    Height = 49
    Align = alBottom
    TabOrder = 2
    object StaticText13: TStaticText
      Left = 6
      Top = 1
      Width = 76
      Height = 21
      AutoSize = False
      BevelKind = bkSoft
      BorderStyle = sbsSunken
      Caption = 'Pesquisar:'
      TabOrder = 0
    end
    object NOMPRO: TEdit
      Left = 82
      Top = 2
      Width = 294
      Height = 21
      BevelKind = bkSoft
      TabOrder = 1
    end
    object bbRelacionar: TBitBtn
      Left = 6
      Top = 24
      Width = 368
      Height = 24
      Caption = 'Relacionar quando c'#243'digo de barras forem iguais'
      TabOrder = 2
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000000
        055557777777777775F508888888888880557F5FFFFFFFFFF75F080000000000
        88057577777777775F755080FFFFFF05088057F7FFFFFF7575F70000000000F0
        F08077777777775757F70FFFFFFFFF0F008075F5FF5FF57577F750F00F00FFF0
        F08057F775775557F7F750FFFFFFFFF0F08057FF5555555757F7000FFFFFFFFF
        0000777FF5FFFFF577770900F00000F000907F775777775777F7090FFFFFFFFF
        00907F7F555555557757000FFFFFFFFF0F00777F5FFF5FF57F77550F000F00FF
        0F05557F777577557F7F550FFFFFFFFF0005557F555FFFFF7775550FFF000000
        05555575FF777777755555500055555555555557775555555555}
      NumGlyphs = 2
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 339
    Width = 784
    Height = 58
    Align = alTop
    Caption = 'Produto Semelhante'
    Color = 16768494
    ParentColor = False
    TabOrder = 3
    object DBEdit7: TDBEdit
      Left = 550
      Top = 13
      Width = 207
      Height = 21
      BevelKind = bkSoft
      Color = 13696509
      DataField = 'PDNOME'
      DataSource = DM1.Src_Pro
      Enabled = False
      TabOrder = 0
    end
    object DBEdit8: TDBEdit
      Left = 550
      Top = 34
      Width = 207
      Height = 21
      BevelKind = bkSoft
      Color = 13696509
      DataField = 'PDCODBAR'
      DataSource = DM1.Src_Pro
      Enabled = False
      TabOrder = 1
    end
    object StaticText7: TStaticText
      Left = 474
      Top = 34
      Width = 76
      Height = 21
      AutoSize = False
      BevelKind = bkSoft
      BorderStyle = sbsSunken
      Caption = 'C'#243'digo Barras:'
      TabOrder = 2
    end
    object StaticText8: TStaticText
      Left = 474
      Top = 13
      Width = 76
      Height = 21
      AutoSize = False
      BevelKind = bkSoft
      BorderStyle = sbsSunken
      Caption = 'Industria:'
      TabOrder = 3
    end
    object DBEdit9: TDBEdit
      Left = 415
      Top = 14
      Width = 48
      Height = 21
      BevelKind = bkSoft
      Color = 13696509
      DataField = 'PDUND'
      DataSource = DM1.Src_Pro
      Enabled = False
      TabOrder = 4
    end
    object StaticText9: TStaticText
      Left = 376
      Top = 14
      Width = 39
      Height = 21
      AutoSize = False
      BevelKind = bkSoft
      BorderStyle = sbsSunken
      Caption = 'Und:'
      TabOrder = 5
    end
    object DBEdit10: TDBEdit
      Left = 82
      Top = 14
      Width = 293
      Height = 21
      BevelKind = bkSoft
      Color = 13696509
      DataField = 'PDNOME'
      DataSource = DM1.Src_Pro
      Enabled = False
      TabOrder = 6
    end
    object DBEdit11: TDBEdit
      Left = 274
      Top = 34
      Width = 101
      Height = 21
      BevelKind = bkSoft
      Color = 13696509
      DataField = 'PDPMC'
      DataSource = DM1.Src_Pro
      Enabled = False
      TabOrder = 7
    end
    object StaticText10: TStaticText
      Left = 199
      Top = 34
      Width = 76
      Height = 21
      AutoSize = False
      BevelKind = bkSoft
      BorderStyle = sbsSunken
      Caption = 'Pre'#231'o M'#225'ximo:'
      TabOrder = 8
    end
    object DBEdit12: TDBEdit
      Left = 82
      Top = 34
      Width = 101
      Height = 21
      BevelKind = bkSoft
      Color = 13696509
      DataField = 'PDPCOFAB'
      DataSource = DM1.Src_Pro
      Enabled = False
      TabOrder = 9
    end
    object StaticText11: TStaticText
      Left = 8
      Top = 14
      Width = 76
      Height = 21
      AutoSize = False
      BevelKind = bkSoft
      BorderStyle = sbsSunken
      Caption = 'Descri'#231#227'o:'
      TabOrder = 10
    end
    object StaticText12: TStaticText
      Left = 8
      Top = 34
      Width = 76
      Height = 21
      AutoSize = False
      BevelKind = bkSoft
      BorderStyle = sbsSunken
      Caption = 'Pre'#231'o F'#225'brica:'
      TabOrder = 11
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 280
    Width = 784
    Height = 59
    Align = alTop
    Caption = 'Produto Sem Relacionamento'
    TabOrder = 4
    object StaticText1: TStaticText
      Left = 8
      Top = 14
      Width = 76
      Height = 21
      AutoSize = False
      BevelKind = bkSoft
      BorderStyle = sbsSunken
      Caption = 'Descri'#231#227'o:'
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 82
      Top = 14
      Width = 293
      Height = 21
      BevelKind = bkSoft
      Color = 13696509
      DataField = 'APNOME'
      DataSource = DM2.Src_AjPco
      Enabled = False
      TabOrder = 1
    end
    object StaticText2: TStaticText
      Left = 474
      Top = 13
      Width = 76
      Height = 21
      AutoSize = False
      BevelKind = bkSoft
      BorderStyle = sbsSunken
      Caption = 'Industria:'
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 551
      Top = 13
      Width = 207
      Height = 21
      BevelKind = bkSoft
      Color = 13696509
      DataField = 'APNOMFAB'
      DataSource = DM2.Src_AjPco
      Enabled = False
      TabOrder = 3
    end
    object StaticText3: TStaticText
      Left = 376
      Top = 14
      Width = 39
      Height = 21
      AutoSize = False
      BevelKind = bkSoft
      BorderStyle = sbsSunken
      Caption = 'Und:'
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 415
      Top = 14
      Width = 48
      Height = 21
      BevelKind = bkSoft
      Color = 13696509
      DataField = 'APUND'
      DataSource = DM2.Src_AjPco
      Enabled = False
      TabOrder = 5
    end
    object StaticText4: TStaticText
      Left = 8
      Top = 34
      Width = 76
      Height = 21
      AutoSize = False
      BevelKind = bkSoft
      BorderStyle = sbsSunken
      Caption = 'Pre'#231'o F'#225'brica:'
      TabOrder = 6
    end
    object DBEdit4: TDBEdit
      Left = 82
      Top = 34
      Width = 101
      Height = 21
      BevelKind = bkSoft
      Color = 13696509
      DataField = 'APPCOFAB'
      DataSource = DM2.Src_AjPco
      Enabled = False
      TabOrder = 7
    end
    object StaticText5: TStaticText
      Left = 199
      Top = 34
      Width = 76
      Height = 21
      AutoSize = False
      BevelKind = bkSoft
      BorderStyle = sbsSunken
      Caption = 'Pre'#231'o M'#225'ximo:'
      TabOrder = 8
    end
    object DBEdit5: TDBEdit
      Left = 274
      Top = 34
      Width = 101
      Height = 21
      BevelKind = bkSoft
      Color = 13696509
      DataField = 'APPCOMAX'
      DataSource = DM2.Src_AjPco
      Enabled = False
      TabOrder = 9
    end
    object StaticText6: TStaticText
      Left = 474
      Top = 34
      Width = 76
      Height = 21
      AutoSize = False
      BevelKind = bkSoft
      BorderStyle = sbsSunken
      Caption = 'C'#243'digo Barras:'
      TabOrder = 10
    end
    object DBEdit6: TDBEdit
      Left = 550
      Top = 34
      Width = 207
      Height = 21
      BevelKind = bkSoft
      Color = 13696509
      DataField = 'APCODBAR'
      DataSource = DM2.Src_AjPco
      Enabled = False
      TabOrder = 11
    end
  end
end

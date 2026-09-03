object Frm_PromVal: TFrm_PromVal
  Left = 196
  Top = 114
  Width = 267
  Height = 373
  BorderIcons = [biSystemMenu]
  Caption = 'Promo'#231#227'o('#245'es) v'#225'lida(s)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 259
    Height = 162
    Align = alClient
    DataSource = Src_PPR
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'PPPROMOCAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PPPRIOR'
        Width = 89
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 162
    Width = 259
    Height = 177
    Align = alBottom
    TabOrder = 1
    object Bevel1: TBevel
      Left = 2
      Top = 135
      Width = 253
      Height = 2
    end
    object Label1: TLabel
      Left = 1
      Top = 10
      Width = 114
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pre'#231'o Venda.........:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 2
      Top = 28
      Width = 113
      Height = 13
      Alignment = taRightJustify
      Caption = 'Desconto 01.........:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 2
      Top = 46
      Width = 113
      Height = 13
      Alignment = taRightJustify
      Caption = 'Desconto 02.........:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 2
      Top = 63
      Width = 113
      Height = 13
      Alignment = taRightJustify
      Caption = 'Desconto 03.........:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 2
      Top = 80
      Width = 113
      Height = 13
      Alignment = taRightJustify
      Caption = 'Desc.Financeiro....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 1
      Top = 100
      Width = 114
      Height = 13
      Alignment = taRightJustify
      Caption = 'Comiss'#227'o..............:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 2
      Top = 120
      Width = 113
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade Minima:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PCOVDA: TEdit
      Left = 116
      Top = 5
      Width = 114
      Height = 20
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = '           0,00'
    end
    object DESC01: TEdit
      Left = 116
      Top = 24
      Width = 63
      Height = 20
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Text = '   0,00%'
    end
    object DESC02: TEdit
      Left = 116
      Top = 42
      Width = 63
      Height = 20
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Text = '   0,00%'
    end
    object DESC03: TEdit
      Left = 116
      Top = 60
      Width = 63
      Height = 20
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = '   0,00%'
    end
    object DESCFIN: TEdit
      Left = 116
      Top = 78
      Width = 63
      Height = 20
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      Text = '   0,00%'
    end
    object COMIS: TEdit
      Left = 116
      Top = 96
      Width = 63
      Height = 20
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      Text = '   0,00%'
    end
    object bbConfirmar: TBitBtn
      Left = 8
      Top = 144
      Width = 95
      Height = 25
      Caption = 'Confirma'
      TabOrder = 7
      OnClick = bbConfirmarClick
      Kind = bkOK
    end
    object bbSemProm: TBitBtn
      Left = 149
      Top = 145
      Width = 95
      Height = 25
      Cancel = True
      Caption = '&Sem Promo'#231#227'o'
      Default = True
      ModalResult = 2
      TabOrder = 8
      OnClick = bbSemPromClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object QTDMIN: TEdit
      Left = 116
      Top = 115
      Width = 114
      Height = 20
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      Text = '           0,00'
    end
  end
  object Src_PPR: TDataSource
    DataSet = DM2.Qr_PPR
    OnDataChange = Src_PPRDataChange
    Left = 104
    Top = 40
  end
end

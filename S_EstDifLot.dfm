object Frm_EstDifLot: TFrm_EstDifLot
  Left = 15
  Top = 91
  Width = 722
  Height = 384
  Caption = 'Estoque Diferente do Lote'
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 706
    Height = 234
    Align = alClient
    DataSource = Src_EstLot
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
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDNOME'
        Width = 264
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDMARCA'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDUND'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTLOT'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODEMP'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FILIAL'
        Width = 30
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 234
    Width = 706
    Height = 112
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 160
      Top = 13
      Width = 61
      Height = 13
      Caption = 'So o C'#243'digo:'
    end
    object lbl_grade: TLabel
      Left = 375
      Top = 13
      Width = 32
      Height = 13
      Caption = 'Grade:'
    end
    object RG_ESTOQUE: TRadioGroup
      Left = 4
      Top = 0
      Width = 143
      Height = 92
      Caption = 'Estoque a Ser Verificado:'
      ItemIndex = 0
      Items.Strings = (
        'Normal'
        'Terceiros'
        'Em Revenda'
        'Consignado'
        'Estoque Prateleira'
        'Estoque Deposito'
        'Estoque em Reparo')
      TabOrder = 0
      Visible = False
    end
    object bbAplicar: TBitBtn
      Left = 147
      Top = 56
      Width = 110
      Height = 34
      Caption = '&Aplicar'
      TabOrder = 1
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
    object bbImprimir: TBitBtn
      Left = 259
      Top = 56
      Width = 110
      Height = 34
      Caption = '&Imprimir'
      TabOrder = 2
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
    object bbEstLot: TBitBtn
      Left = 375
      Top = 56
      Width = 110
      Height = 34
      Caption = '&Estoque Igual Lote'
      TabOrder = 3
      OnClick = bbEstLotClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
        007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
        7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
        99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 594
      Top = 56
      Width = 110
      Height = 34
      Caption = '&Sair'
      TabOrder = 4
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
    object bbloteestoque: TBitBtn
      Left = 487
      Top = 56
      Width = 110
      Height = 34
      Caption = 'Lote igual ao estoque'
      TabOrder = 5
      Visible = False
      OnClick = bbloteestoqueClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
        007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
        7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
        99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
    object CODPRO: TEdit
      Left = 228
      Top = 7
      Width = 142
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
    end
    object GRADE: TEdit
      Left = 412
      Top = 7
      Width = 82
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
    end
  end
  object RLReport1: TRLReport
    Left = 8
    Top = 340
    Width = 794
    Height = 1123
    DataSource = Src_EstLot
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Visible = False
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 35
      BandType = btColumnHeader
      Degrade.Direction = ddVertical
      Degrade.OppositeColor = clGreen
      object RLLabel1: TRLLabel
        Left = 171
        Top = 9
        Width = 375
        Height = 17
        Align = faCenter
        Caption = 'Relatorio de Produtos com Estoque Diferentes dos Lotes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 73
      Width = 718
      Height = 34
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLLabel2: TRLLabel
        Left = 3
        Top = 21
        Width = 78
        Height = 11
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 80
        Top = 21
        Width = 248
        Height = 11
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        Caption = 'Descricao do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 327
        Top = 21
        Width = 154
        Height = 11
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        Caption = 'Descricao do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 481
        Top = 21
        Width = 40
        Height = 11
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        Caption = 'Und'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 520
        Top = 21
        Width = 66
        Height = 11
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        Caption = 'Lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 586
        Top = 21
        Width = 66
        Height = 11
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        Caption = 'Cadastro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 651
        Top = 21
        Width = 66
        Height = 11
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Diferenca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 520
        Top = 10
        Width = 134
        Height = 11
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        Caption = 'Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 107
      Width = 718
      Height = 12
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
      object RLDBText1: TRLDBText
        Left = 3
        Top = 0
        Width = 77
        Height = 10
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        DataField = 'PDCODPRO'
        DataSource = Src_EstLot
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 80
        Top = 0
        Width = 247
        Height = 10
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        DataField = 'PDNOME'
        DataSource = Src_EstLot
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 328
        Top = 0
        Width = 154
        Height = 10
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        DataField = 'PDMARCA'
        DataSource = Src_EstLot
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 481
        Top = 0
        Width = 39
        Height = 10
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        DataField = 'PDUND'
        DataSource = Src_EstLot
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 520
        Top = -1
        Width = 66
        Height = 10
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        DataField = 'ESTLOT'
        DataSource = Src_EstLot
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 586
        Top = 0
        Width = 66
        Height = 10
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        DataField = 'ESTOQUE'
        DataSource = Src_EstLot
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 651
        Top = -1
        Width = 66
        Height = 10
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'ESTOQUE'
        DataSource = Src_EstLot
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -10
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 119
      Width = 718
      Height = 16
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object lbl_dathora: TRLLabel
        Left = 0
        Top = 1
        Width = 71
        Height = 10
        Align = faLeftTop
        Caption = 'Relatorio emitido em'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbl_pagina: TRLLabel
        Left = 643
        Top = 1
        Width = 28
        Height = 10
        Alignment = taRightJustify
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 671
        Top = 1
        Width = 17
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 689
        Top = 1
        Width = 6
        Height = 10
        AutoSize = False
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 696
        Top = 1
        Width = 19
        Height = 10
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = itLastPageNumber
        ParentFont = False
      end
    end
  end
  object Src_EstLot: TDataSource
    DataSet = Qr_estLot
    Left = 552
    Top = 32
  end
  object Qr_estLot: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'SELECT sum(NVL(CLQTD,0)) AS ESTLOT, sum(NVL(PDSALDO,0)) AS ESTOQ' +
        'UE '
      ' ,PDCODPRO,PDNOME,PDMARCA,PDUND '
      ' FROM CADLGC,CADPRO '
      ' where CLCODPRO(+)=PDCODPRO '
      'group by PDCODPRO,PDNOME,PDMARCA,PDUND,NVL(PDSALDO,0)')
    Left = 584
    Top = 32
    object Qr_estLotESTLOT: TFloatField
      DisplayLabel = 'Est Lote'
      FieldName = 'ESTLOT'
    end
    object Qr_estLotESTOQUE: TFloatField
      DisplayLabel = 'Est.Cadest'
      FieldName = 'ESTOQUE'
    end
    object Qr_estLotPDCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PDCODPRO'
    end
    object Qr_estLotPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Size = 120
    end
    object Qr_estLotPDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Size = 40
    end
    object Qr_estLotPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Size = 3
    end
    object Qr_estLotCODEMP: TFloatField
      DisplayLabel = 'Cod Emp'
      FieldName = 'CODEMP'
    end
    object Qr_estLotFILIAL: TFloatField
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
  end
end

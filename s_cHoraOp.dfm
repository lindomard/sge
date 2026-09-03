object Frm_cHoraOp: TFrm_cHoraOp
  Left = 238
  Top = 128
  Width = 957
  Height = 480
  Caption = 'Custo de Hora / Opera'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 941
    Height = 135
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 47
      Width = 170
      Height = 20
      Caption = 'Coeficiente de Burden..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 1
      Top = 1
      Width = 939
      Height = 37
      Align = alTop
      Alignment = taCenter
      Caption = 'MAPA DE LOCALIZA'#199#195'O DE CUSTOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 307
      Top = 47
      Width = 133
      Height = 20
      Caption = 'Horas Produtivas..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edt_vBurden: TEdit
      Left = 183
      Top = 43
      Width = 121
      Height = 28
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 1
      Top = 77
      Width = 939
      Height = 57
      Align = alBottom
      TabOrder = 3
      object Label4: TLabel
        Left = 208
        Top = 1
        Width = 79
        Height = 55
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'N'#186' DE '#13#10'FUNCION'#193'RIO'
        Layout = tlCenter
      end
      object Label3: TLabel
        Left = 1
        Top = 1
        Width = 128
        Height = 55
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'OPERA'#199#195'O'
        Layout = tlCenter
      end
      object Label5: TLabel
        Left = 366
        Top = 1
        Width = 79
        Height = 55
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'ENCARGOS'#13#10'SOCIAIS'
        Layout = tlCenter
      end
      object Label6: TLabel
        Left = 129
        Top = 1
        Width = 79
        Height = 55
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'VALOR DO'#13#10'EQUIPAMENTO'
        Layout = tlCenter
      end
      object Label7: TLabel
        Left = 287
        Top = 1
        Width = 79
        Height = 55
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'M.O.'#13#10'DIRETA'
        Layout = tlCenter
      end
      object Label10: TLabel
        Left = 445
        Top = 1
        Width = 79
        Height = 55
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'SOMA'#13#10'M.O. DIRETA'#13#10'ENCARGOS'
        Layout = tlCenter
      end
      object Label11: TLabel
        Left = 603
        Top = 1
        Width = 79
        Height = 55
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'CUSTO '#13#10'HORA'#13#10'M.O. '#13#10'DIRETA'
        Layout = tlCenter
      end
      object Label12: TLabel
        Left = 524
        Top = 1
        Width = 79
        Height = 55
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'HORAS'#13#10'PRODUTIVAS'
        Layout = tlCenter
      end
      object Label13: TLabel
        Left = 682
        Top = 1
        Width = 79
        Height = 55
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'CUSTO '#13#10'HORA'#13#10'BURDEN'
        Layout = tlCenter
      end
      object Label14: TLabel
        Left = 761
        Top = 1
        Width = 79
        Height = 55
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'DEPRECIA'#199#195'O'#13#10'/HORA'
        Layout = tlCenter
      end
      object Label8: TLabel
        Left = 840
        Top = 1
        Width = 79
        Height = 55
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'CUSTO HORA'#13#10'TOTAL'
        Layout = tlCenter
      end
    end
    object btn_Imprimir: TBitBtn
      Left = 858
      Top = 48
      Width = 81
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 2
      OnClick = btn_ImprimirClick
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
    object edt_horas: TEdit
      Left = 442
      Top = 43
      Width = 121
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 1
      Text = '170'
      OnExit = edt_horasExit
      OnKeyPress = edt_horasKeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 135
    Width = 941
    Height = 307
    Align = alClient
    DataSource = DataSource1
    Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'OPERACAO'
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VAL_EQUIP'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_FUNCIONARIO'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MO_DIRETA'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENC_SOCIAIS'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SM_MO_ENC'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA_PROD'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CH_MO_DI'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CH_X_BURDEN'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEP_P_HORA'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C_HORA_TOTAL'
        Width = 75
        Visible = True
      end>
  end
  object RLReport1: TRLReport
    Left = 16
    Top = 160
    Width = 1123
    Height = 794
    Borders.Sides = sdCustom
    Borders.DrawLeft = True
    Borders.DrawTop = True
    Borders.DrawRight = True
    Borders.DrawBottom = True
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    ShowProgress = False
    Visible = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 39
      Top = 39
      Width = 1045
      Height = 129
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object rl_Operacao: TRLLabel
        Left = 0
        Top = 80
        Width = 182
        Height = 48
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'OPERA'#199#195'O'
        Layout = tlCenter
      end
      object rl_MOD: TRLLabel
        Left = 333
        Top = 80
        Width = 100
        Height = 48
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'M'#227'o-Obra Direta'
        Layout = tlCenter
      end
      object rl_ES: TRLLabel
        Left = 433
        Top = 80
        Width = 104
        Height = 48
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'Encargos Sociais'
        Layout = tlCenter
      end
      object rl_soma_MOD_ES: TRLLabel
        Left = 537
        Top = 80
        Width = 106
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'Soma'
        Layout = tlCenter
      end
      object RLLabel5: TRLLabel
        Left = 537
        Top = 96
        Width = 106
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'M'#227'o-Obra Direta'
        Holder = rl_soma_MOD_ES
        Layout = tlCenter
      end
      object RLLabel6: TRLLabel
        Left = 537
        Top = 112
        Width = 106
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'Encargos Sociais'
        Holder = rl_soma_MOD_ES
        Layout = tlCenter
      end
      object rl_valEqui: TRLLabel
        Left = 181
        Top = 80
        Width = 82
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'Valor do'
        Layout = tlCenter
      end
      object RLLabel8: TRLLabel
        Left = 181
        Top = 104
        Width = 82
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'Equipamento'
        Holder = rl_valEqui
        Layout = tlCenter
      end
      object rl_Horas: TRLLabel
        Left = 642
        Top = 80
        Width = 62
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'Horas'
        Layout = tlCenter
      end
      object RLLabel2: TRLLabel
        Left = 642
        Top = 104
        Width = 62
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'Produtivas'
        Holder = rl_Horas
        Layout = tlCenter
      end
      object rl_ch_mod: TRLLabel
        Left = 704
        Top = 80
        Width = 100
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'Custo Hora'
        Layout = tlCenter
      end
      object RLLabel3: TRLLabel
        Left = 704
        Top = 104
        Width = 100
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'M'#227'o-Obra Direta'
        Holder = rl_ch_mod
        Layout = tlCenter
      end
      object rl_nFun: TRLLabel
        Left = 263
        Top = 80
        Width = 70
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'N'#186' de'
        Layout = tlCenter
      end
      object RLLabel4: TRLLabel
        Left = 263
        Top = 104
        Width = 70
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'Funcionario'
        Holder = rl_nFun
        Layout = tlCenter
      end
      object rl_ch_burden: TRLLabel
        Left = 804
        Top = 80
        Width = 76
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'Custo Hora'
        Layout = tlCenter
      end
      object RLLabel9: TRLLabel
        Left = 804
        Top = 104
        Width = 76
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'Burden'
        Holder = rl_ch_burden
        Layout = tlCenter
      end
      object rl_Deprec: TRLLabel
        Left = 880
        Top = 80
        Width = 94
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'Deprecia'#231#227'o'
        Layout = tlCenter
      end
      object RLLabel11: TRLLabel
        Left = 880
        Top = 104
        Width = 94
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'por Hora'
        Holder = rl_Deprec
        Layout = tlCenter
      end
      object rl_chT: TRLLabel
        Left = 974
        Top = 80
        Width = 72
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Custo Hora'
        Layout = tlCenter
      end
      object RLLabel13: TRLLabel
        Left = 974
        Top = 104
        Width = 72
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Total'
        Holder = rl_chT
        Layout = tlCenter
      end
      object RLAngleLabel1: TRLAngleLabel
        Left = 0
        Top = 0
        Width = 64
        Height = 16
        Caption = 'Empresa.:'
      end
      object RLDBText12: TRLDBText
        Left = 66
        Top = 0
        Width = 110
        Height = 16
        DataField = 'FANTASIA'
        DataSource = DM1.Src_Emp
      end
      object RLDBText13: TRLDBText
        Left = 69
        Top = 16
        Width = 36
        Height = 16
        DataField = 'ender'
        DataSource = DM1.Src_Emp
      end
      object RLAngleLabel2: TRLAngleLabel
        Left = 0
        Top = 16
        Width = 67
        Height = 16
        Caption = 'Endere'#231'o.:'
      end
      object RLLabel1: TRLLabel
        Left = 361
        Top = 37
        Width = 175
        Height = 16
        Caption = 'CUSTO HORA / OPERACAO'
      end
      object RLLabel7: TRLLabel
        Left = 946
        Top = 0
        Width = 56
        Height = 16
        Alignment = taRightJustify
        Caption = 'Pagina..:'
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 934
        Top = 0
        Width = 112
        Height = 16
        Alignment = taRightJustify
        Info = itLastPageNumber
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 984
        Top = 64
        Width = 60
        Height = 16
        Alignment = taRightJustify
        Info = itFullDate
      end
      object RLLabel10: TRLLabel
        Left = 1020
        Top = 0
        Width = 8
        Height = 16
        Caption = '/'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 1004
        Top = 0
        Width = 87
        Height = 16
        Info = itPageNumber
      end
      object RLLabel12: TRLLabel
        Left = -1
        Top = 58
        Width = 184
        Height = 22
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'BURDEN'
      end
      object RLDB_coefburden: TRLDBText
        Left = 181
        Top = 58
        Width = 82
        Height = 22
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
      end
    end
    object RLBand2: TRLBand
      Left = 39
      Top = 168
      Width = 1045
      Height = 17
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBText1: TRLDBText
        Left = 0
        Top = 0
        Width = 182
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'OPERACAO'
        DataSource = DataSource1
        Holder = rl_Operacao
      end
      object RLDBText2: TRLDBText
        Left = 181
        Top = 0
        Width = 82
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'VAL_EQUIP'
        DataSource = DataSource1
        Holder = rl_valEqui
      end
      object RLDBText3: TRLDBText
        Left = 263
        Top = 0
        Width = 70
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'N_FUNCIONARIO'
        DataSource = DataSource1
        Holder = rl_nFun
      end
      object RLDBText4: TRLDBText
        Left = 333
        Top = 0
        Width = 100
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'MO_DIRETA'
        DataSource = DataSource1
        Holder = rl_MOD
      end
      object RLDBText5: TRLDBText
        Left = 433
        Top = 0
        Width = 104
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'ENC_SOCIAIS'
        DataSource = DataSource1
        Holder = rl_ES
      end
      object RLDBText6: TRLDBText
        Left = 537
        Top = 0
        Width = 106
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'SM_MO_ENC'
        DataSource = DataSource1
        Holder = rl_soma_MOD_ES
      end
      object RLDBText7: TRLDBText
        Left = 642
        Top = 0
        Width = 62
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'HORA_PROD'
        DataSource = DataSource1
        Holder = rl_Horas
      end
      object RLDBText8: TRLDBText
        Left = 704
        Top = 0
        Width = 100
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'CH_MO_DI'
        DataSource = DataSource1
        Holder = rl_ch_mod
      end
      object RLDBText9: TRLDBText
        Left = 804
        Top = 0
        Width = 76
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'CH_X_BURDEN'
        DataSource = DataSource1
        Holder = rl_ch_burden
      end
      object RLDBText10: TRLDBText
        Left = 880
        Top = 0
        Width = 94
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'DEP_P_HORA'
        DataSource = DataSource1
        Holder = rl_Deprec
      end
      object RLDBText11: TRLDBText
        Left = 974
        Top = 0
        Width = 72
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'C_HORA_TOTAL'
        DataSource = DataSource1
        Holder = rl_chT
      end
    end
    object RLBand5: TRLBand
      Left = 39
      Top = 185
      Width = 1045
      Height = 16
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      BeforePrint = RLBand5BeforePrint
      object lbl_patrocinio: TRLLabel
        Left = 0
        Top = 0
        Width = 770
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'In'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLSystemInfo4: TRLSystemInfo
        Left = 768
        Top = 0
        Width = 278
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Info = itFullDate
        Transparent = False
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 608
    Top = 40
  end
  object RxMemoryData1: TRxMemoryData
    FieldDefs = <>
    Left = 312
    Top = 200
    object RxMemoryData1OPERACAO: TStringField
      FieldName = 'OPERACAO'
      Size = 60
    end
    object RxMemoryData1VAL_EQUIP: TFloatField
      FieldName = 'VAL_EQUIP'
      DisplayFormat = '#,##0.00'
    end
    object RxMemoryData1N_FUNCIONARIO: TFloatField
      FieldName = 'N_FUNCIONARIO'
    end
    object RxMemoryData1MO_DIRETA: TFloatField
      FieldName = 'MO_DIRETA'
      DisplayFormat = '#,##0.00'
    end
    object RxMemoryData1ENC_SOCIAIS: TFloatField
      FieldName = 'ENC_SOCIAIS'
      DisplayFormat = '#,##0.00'
    end
    object RxMemoryData1SM_MO_ENC: TFloatField
      FieldName = 'SM_MO_ENC'
      DisplayFormat = '#,##0.00'
    end
    object RxMemoryData1HORA_PROD: TFloatField
      FieldName = 'HORA_PROD'
    end
    object RxMemoryData1CH_MO_DI: TFloatField
      FieldName = 'CH_MO_DI'
      DisplayFormat = '#,##0.00'
    end
    object RxMemoryData1CH_X_BURDEN: TFloatField
      FieldName = 'CH_X_BURDEN'
      DisplayFormat = '#,##0.00'
    end
    object RxMemoryData1DEP_P_HORA: TFloatField
      FieldName = 'DEP_P_HORA'
      DisplayFormat = '#,##0.00'
    end
    object RxMemoryData1C_HORA_TOTAL: TFloatField
      FieldName = 'C_HORA_TOTAL'
      DisplayFormat = '#,##0.00'
    end
  end
  object DataSource1: TDataSource
    DataSet = RxMemoryData1
    Left = 344
    Top = 200
  end
end
